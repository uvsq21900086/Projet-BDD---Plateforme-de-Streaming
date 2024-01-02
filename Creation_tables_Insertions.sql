DROP VIEW VIDEOS;
DROP VIEW SERIES;
DROP VIEW FILMS;
DROP TABLE DEFINIT;
DROP TABLE AVIS;
DROP TABLE LECTUREEP;
DROP TRIGGER FILM;
DROP TABLE LECTUREFILM;
DROP TRIGGER type_contenu;
DROP TABLE Professionnel;
DROP TABLE EPISODE;
DROP TABLE CONTENU;
DROP TABLE CATEGORIE;
DROP TRIGGER mdp_profil;
DROP TRIGGER nouveau_prof;
DROP TRIGGER suppr_adulte;
DROP TRIGGER profil_enf;
DROP TRIGGER nb_profils;
DROP TRIGGER trg_check_AgeProfil;
DROP TABLE PROFIL;
DROP SEQUENCE Profil_Sequence;
DROP TRIGGER nouveau_cli;
DROP SEQUENCE ID_CLI;
DROP TRIGGER trg_check_AgeClient;
DROP TABLE CLIENT;
DROP TABLE ABONNEMENT;

/* TABLE ABONNEMENT */

-- création de la table
CREATE TABLE Abonnement (
TypeAbonnement VARCHAR(9) PRIMARY KEY,
Tarif NUMBER(4,2) NOT NULL
);
/

-- insertion des données
INSERT INTO Abonnement VALUES ('Essentiel', 0.00);
INSERT INTO Abonnement VALUES ('Etudiant', 5.99);
INSERT INTO Abonnement VALUES ('Standard', 9.49);
INSERT INTO Abonnement VALUES ('Famille', 14.99);
/
------------------------------------------------------------------

/* TABLE CLIENT */

-- création de la table
CREATE TABLE Client (
IDClient NUMBER PRIMARY KEY,
NomClient VARCHAR(60) NOT NULL,
MotDePasseClient VARCHAR(30) NOT NULL,
AgeClient DATE NOT NULL,
AdresseMail VARCHAR(320) NOT NULL,
DateInscription DATE NOT NULL,
IBAN CHAR(33),
DatePrelevement DATE,
TypeAbonnement VARCHAR(9) NOT NULL REFERENCES Abonnement(TypeAbonnement)
);
/

CREATE OR REPLACE TRIGGER trg_check_AgeClient
BEFORE INSERT OR UPDATE ON CLIENT
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.AgeClient < TO_DATE('01-JAN-1900', 'DD-MON-YYYY') OR :NEW.AgeClient > SYSDATE - INTERVAL '18' YEAR THEN
        RAISE_APPLICATION_ERROR(-20001, 'La date de naissance doit être entre le 01-JAN-1900 et il y a 18 ans.');
    END IF;
END;

/

-- séquence ClientID
CREATE SEQUENCE id_cli
increment by 1
start with 1;

-- trigger pour la séquence ClientID
CREATE OR REPLACE TRIGGER nouveau_cli 
before insert on Client for each row
BEGIN
    :new.IDClient := id_cli.nextval;
END;
/

-- procédure pour supprimer un client, ses profils et les historiques si le compte est inactif depuis 12 mois
/*
CREATE OR REPLACE PROCEDURE inactivite_client(id in Client.IDClient%type) IS
BEGIN
	if date dernier prelevement remonte à 12 mois ou plus, supprimer le compte
END;
        -- ===> A FAIRE
*/

------------------------------------------------------------------

/* TABLE PROFIL */
-- création de la table
CREATE TABLE Profil (
IDClient NUMBER REFERENCES Client(IDClient) ON DELETE CASCADE,
IDProfil NUMBER, --=> sequence
Pseudo VARCHAR(20) NOT NULL,
Photo BLOB,
MotDePasseProfil CHAR(4),
AgeProfil DATE NOT NULL,
TypeProfil VARCHAR(6) NOT NULL CHECK(TypeProfil in ('Enfant', 'Adulte')),
Langue VARCHAR(25) NOT NULL,
SousTitres NUMBER(1) DEFAULT 0 NOT NULL CHECK(SousTitres BETWEEN 0 AND 1),
PRIMARY KEY (IDClient, IDProfil)
);
/
    
CREATE OR REPLACE TRIGGER trg_check_AgeProfil
BEFORE INSERT OR UPDATE ON profil
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.AgeProfil < TO_DATE('01-JAN-1900', 'DD-MON-YYYY') OR :NEW.AgeProfil > SYSDATE - INTERVAL '1' YEAR THEN
        RAISE_APPLICATION_ERROR(-20001, 'La date de naissance doit être entre le 01-JAN-1900 et il y a 1 an.');
    END IF;
END;
/
-- trigger pour vérifier que le nombre de profils ne dépasse pas le nombre maximum autorisé par l'abonnement
CREATE OR REPLACE TRIGGER nb_profils 
before insert on Profil for each row
DECLARE
	n	int;
	t    Client.TypeAbonnement%type;
BEGIN
	select count(*) into n
	from Profil
	where IDClient = :new.IDClient;

	select TypeAbonnement into t
    from Client
    where IDClient = :new.IDClient;
	
	IF t in ('Essentiel', 'Etudiant') AND n >= 1
    	THEN raise_application_error(-20001, 'Impossible de créer un nouveau profil : 1 profil maximum autorisé pour le type dabonnement.');
    END IF;
	IF t = 'Standard' AND n >= 2
		THEN raise_application_error(-20002, 'Impossible de créer un nouveau profil : 2 profils maximum autorisés pour le type dabonnement.');
	END IF;
	IF t = 'Famille' AND n >=4
		THEN raise_application_error(-20003, 'Impossible de créer un nouveau profil : 4 profils maximum autorisés pour le type dabonnement.');
	END IF;
END;
/

-- trigger pour vérifier qu'il y a bien un profil Adulte associé au compte client avant de créer un profil Enfant
CREATE OR REPLACE TRIGGER profil_enf 
before insert on Profil for each row
DECLARE
	p	int;
BEGIN
	IF :new.TypeProfil = 'Enfant' THEN
		select count(*) into p
		from Profil
		where IDClient = :new.IDClient
		and TypeProfil = 'Adulte';

		IF p = 0
			THEN raise_application_error(-20004, 'Impossible de créer un nouveau profil enfant : 1 profil adulte minimum est requis.');
		END IF;
	END IF;
END;
/

-- trigger pour vérifier qu'il y a bien toujours un profil Adulte associé au compte client s'il y a un profil Enfant avant de supprimer un autre profil Adulte 
CREATE OR REPLACE TRIGGER suppr_adulte 
before delete on Profil for each row
DECLARE
	a	int;
	e	int;
BEGIN
	select count(*) into e
	from Profil
	where IDClient = :old.IDClient
	and TypeProfil = 'Enfant';
	  
	IF :old.TypeProfil = 'Adulte' and e > 0 THEN
		select count(*) into a
		from Profil
		where IDClient = :old.IDClient
		and TypeProfil = 'Adulte';
		
		IF a = 0
			THEN raise_application_error(-20005, 'Impossible de supprimer le profil Adulte : 1 profil Adulte minimum est requis.');
			  	  
		END IF;
	END IF;
END;
/


CREATE SEQUENCE Profil_Sequence 
    START WITH 1 
    INCREMENT BY 1;

-- trigger pour la séquence IDProfil
CREATE OR REPLACE TRIGGER nouveau_prof 
before insert on Profil for each row
BEGIN
	:new.IDProfil := Profil_Sequence.nextval;
END;
/

-- trigger pour vérifier que le MotDePasseProfil est conforme
CREATE OR REPLACE TRIGGER mdp_profil 
before insert on Profil for each row
BEGIN
	IF :new.MotDePasseProfil IS NOT NULL
    AND (LENGTHB(:new.MotDePasseProfil) != 4 
    OR NVL(TO_NUMBER(:new.MotDePasseProfil), 0) = 0)
		THEN raise_application_error(-20006, 'Le mot de passe saisi nest pas conforme : veuillez entrer un code à 4 chiffres.');
	END IF;
END;
/
------------------------------------------------------------------

/* TABLE CONTENU */

-- création de la table
CREATE TABLE Contenu (
IDContenu NUMBER PRIMARY KEY,
TitreContenu VARCHAR(60) NOT NULL,
Classification VARCHAR(12) NOT NULL CHECK (Classification in ('Tous publics', '-10 ans', '-12 ans', '-16 ans', '-18 ans')),
Description VARCHAR(200),
Disponibilite VARCHAR(7) NOT NULL CHECK (Disponibilite in ('Gratuit', 'Payant')),
LangueOrigine VARCHAR(25) NOT NULL,
TypeContenu VARCHAR(5) NOT NULL CHECK (TypeContenu in ('Film', 'Série')),
DateSortieFilm DATE,
DureeFilm NUMBER(3),
AnneeSerie NUMBER(4)
);
/

-- trigger pour vérifier que selon le type de contenu, les bonnes colonnes d'un tuple sont remplies
CREATE OR REPLACE TRIGGER type_contenu 
before insert on Contenu for each row
BEGIN
	IF :new.TypeContenu = 'Film' AND (:new.DateSortieFilm IS NULL OR :new.DureeFilm IS NULL)
		THEN raise_application_error(-20007, 'Si le contenu est un film, veuillez renseigner les champs DateSortieFilm et DureeFilm.');
	END IF;
	IF :new.TypeContenu = 'Série' AND :new.AnneeSerie IS NULL
		THEN raise_application_error(-20008, 'Si le contenu est une série, veuillez renseigner le champs AnneeSerie.');
	END IF;
END;
/
------------------------------------------------------------------

/* TABLE EPISODE */

-- création de la table
CREATE TABLE Episode (
IDContenu NUMBER REFERENCES Contenu(IDContenu),
NumSaison NUMBER(2),
NumEpisode NUMBER(3),
TitreEpisode VARCHAR(60) NOT NULL,
DureeEpisode NUMBER(3) NOT NULL,
DateSortieEpisode DATE NOT NULL,
PRIMARY KEY (IDContenu, NumSaison, NumEpisode)
);
/

-- trigger pour vérifier qu'un épisode n'est pas associé à un contenu de type Film
CREATE OR REPLACE TRIGGER insert_ep before insert on Episode for each row
DECLARE
	t	Contenu.TypeContenu%type;
BEGIN
	select TypeContenu into t
	from Contenu
	where IDContenu = :new.IDContenu;
	IF t = 'Film'
		THEN raise_application_error(-20009, 'Impossible dajouter un épisode à un film : le contenu doit être une série.');
	END IF;
END;
/
------------------------------------------------------------------

/* TABLE PROFESSIONNEL */

-- création de la table
CREATE TABLE Professionnel (
IDPro NUMBER PRIMARY KEY,
NomPro VARCHAR(30) NOT NULL,
PrenomPro VARCHAR(30) NOT NULL,
Nationalite VARCHAR(25),
AgePro DATE
);
/

CREATE OR REPLACE TRIGGER trg_check_AgePro
BEFORE INSERT OR UPDATE ON Professionnel
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.AgePro < TO_DATE('01-JAN-1900', 'DD-MON-YYYY') OR :NEW.AgePro > SYSDATE - INTERVAL '1' YEAR THEN
        RAISE_APPLICATION_ERROR(-20001, 'La date de naissance doit être entre le 01-JAN-1900 et il y a 1 an.');
    END IF;
END;
/
------------------------------------------------------------------

/* TABLE CATEGORIE */

-- création de la table
CREATE TABLE Categorie (
NomCategorie VARCHAR(30) PRIMARY KEY
);
/

-- insertion des données
INSERT INTO CATEGORIE VALUES ('Action');
INSERT INTO CATEGORIE VALUES ('Anime');
INSERT INTO CATEGORIE VALUES ('Asie');
INSERT INTO CATEGORIE VALUES ('Aventure');
INSERT INTO CATEGORIE VALUES ('Comédie');
INSERT INTO CATEGORIE VALUES ('Court-métrage');
INSERT INTO CATEGORIE VALUES ('Cuisine et voyages');
INSERT INTO CATEGORIE VALUES ('Documentaire');
INSERT INTO CATEGORIE VALUES ('Drame');
INSERT INTO CATEGORIE VALUES ('Droit');
INSERT INTO CATEGORIE VALUES ('Emotions');
INSERT INTO CATEGORIE VALUES ('Fantastique');
INSERT INTO CATEGORIE VALUES ('Guerre');
INSERT INTO CATEGORIE VALUES ('Histoire');
INSERT INTO CATEGORIE VALUES ('Horreur');
INSERT INTO CATEGORIE VALUES ('Indépendant');
INSERT INTO CATEGORIE VALUES ('Jeunesse et Famille');
INSERT INTO CATEGORIE VALUES ('LGBTQ+');
INSERT INTO CATEGORIE VALUES ('Médical');
INSERT INTO CATEGORIE VALUES ('Musique et Comédie musicale');
INSERT INTO CATEGORIE VALUES ('Policier');
INSERT INTO CATEGORIE VALUES ('Primé');
INSERT INTO CATEGORIE VALUES ('Psychologique');
INSERT INTO CATEGORIE VALUES ('Romance');
INSERT INTO CATEGORIE VALUES ('Sciences et nature');
INSERT INTO CATEGORIE VALUES ('Science-fiction');
INSERT INTO CATEGORIE VALUES ('Sport');
INSERT INTO CATEGORIE VALUES ('Stand-up et talk-show');
INSERT INTO CATEGORIE VALUES ('Téléréalité');
INSERT INTO CATEGORIE VALUES ('Thriller');
/
        -- ==> est-ce qu'il y a moyen de faire une boucle sur une liste ??
------------------------------------------------------------------
------------------------------------------------------------------

/* TABLE LECTUREFILM */

-- création de la table
CREATE TABLE LectureFilm ( 
    IDClient NUMBER REFERENCES Client(IDClient) ON DELETE CASCADE, 
    IDProfil NUMBER, 
    IDContenu NUMBER REFERENCES Contenu(IDContenu) ON DELETE CASCADE, 
    DateLecture DATE,		    
    TempsDebut DATE NOT NULL,	
    TempsFin DATE NOT NULL,		
    Langue VARCHAR(25) NOT NULL, 
    SousTitres NUMBER(1) NOT NULL CHECK (SousTitres BETWEEN 0 AND 1), 
    PRIMARY KEY (IDClient, IDProfil, IDContenu, DateLecture),
    FOREIGN KEY (IDClient, IDProfil) REFERENCES Profil(IDClient, IDProfil) ON DELETE CASCADE
);
/

/*
le profil 1 du compte 123 a regardé le film 1234 le 01/01/24 à midi (l'heure de la session est pas retenue)
123	1	1234	01-jan-2024	00:00:00	01:43:15	FR	1

maintenant qu'est-ce qu'il se passe si le soir je veux re-regarder le film ??
- on crée un nouveau row mais dans ce cas les clés primaires seront les mêmes donc il faudra ajouter un attribut 'nombre de fois rewatched' pour savoir combien de fois un profil a regardé le contenu pour avoir une indication du nombre d'heure de watch d'un profil
sauf que si on regarde le film en 2 fois, ça fera comme si on avait regardé le film 2 fois alors qu'on l'a regardé qu'une fois, donc il faudrait faire en sorte que les minutes ne s'overlap pas et CEST COMPLIQUE SA MERE
- on réécrit les minutes par dessus les anciennes
donc si je regarde une moitié de film le matin et l'autre l'après midi, dans lecturefilm on aura que la trace de la 2e moitié
tandis que si on regarde la première moitié un jour et l'autre moitié le lendemain, on aura les 2
*/

-- trigger pour vérifier que le contenu visionné n'est pas un épisode de série
CREATE OR REPLACE TRIGGER film 
before insert on LectureFilm FOR EACH ROW
DECLARE
	t	Contenu.TypeContenu%type;
BEGIN
	select TypeContenu into t
	from Contenu
	where IDContenu = :new.IdContenu;
	IF t = 'Série'
		THEN raise_application_error(-20011, 'Ce contenu est une série : à insérer dans la table LectureEP.');
	END IF;
END;
/

-- trigger pour mettre à jour la colonne SousTitres en fonction de la valeur dans LectureFilm
CREATE OR REPLACE TRIGGER soustitres_film 
after insert or update on LectureFilm FOR EACH ROW
BEGIN
	UPDATE Profil
	SET SousTitres = :new.SousTitres
	WHERE IDClient = :new.IDClient AND IDProfil = :new.IDProfil;
END;
/

-- trigger pour vérifier qu'un profil Enfant ne visionne pas de film dont la classification est inadaptée
CREATE OR REPLACE TRIGGER lectenf_film 
before insert on LectureFilm FOR EACH ROW
DECLARE
	t	Profil.TypeProfil%type;
	cl	Contenu.Classification%type;
BEGIN
	select TypeProfil into t
	from Profil
	where IDClient = :new.IDClient
	and IDProfil = :new.IDProfil;
	
	select Classification into cl
	from Contenu
	where IDContenu = :new.IDContenu;

	IF t = 'Enfant' AND cl not in ('Tous publics', '-10 ans', '-12 ans')
		THEN raise_application_error(-20012, 'Impossible pour ce profil de regarder ce film : classification inadaptée.');
	END IF;
END;
/

-- trigger pour vérifier que le profil d'un compte Essentiel ne visionne pas de contenu payant
CREATE OR REPLACE TRIGGER dispo_film 
before insert on LectureFilm FOR EACH ROW
DECLARE
	a	Abonnement.TypeAbonnement%type;
	d	Contenu.Disponibilite%type;
BEGIN
	select TypeAbonnement into a
	from Client
	where IDClient = :new.IDClient;
	
	select Disponibilite into d
	from Contenu
	where IDContenu = :new.IDContenu;

	IF a = 'Essentiel' AND d = 'Payant'
		THEN raise_application_error(-20013, 'Impossible de lire ce film avec labonnement Essentiel.');
	END IF;
END;
/
------------------------------------------------------------------

/* TABLE LECTUREEP */

-- création de la table
CREATE TABLE LectureEP (
IDClient NUMBER REFERENCES Client(IDClient) ON DELETE CASCADE,
IDProfil NUMBER,
IDContenu NUMBER REFERENCES Contenu(IDContenu),
NumSaison NUMBER(2),
NumEpisode NUMBER(3),
DateLecture DATE,
TempsDebut DATE NOT NULL,
TempsFin DATE NOT NULL,
Langue VARCHAR(25) NOT NULL,
SousTitres NUMBER(1) NOT NULL CHECK (SousTitres between 0 and 1),
PRIMARY KEY (IDClient, IDProfil, IDContenu, NumSaison, NumEpisode, DateLecture),
FOREIGN KEY (IDClient, IDProfil) REFERENCES Profil(IDClient, IDProfil) ON DELETE CASCADE,
FOREIGN KEY (IDContenu, NumSaison, NumEpisode) REFERENCES Episode(IDContenu, NumSaison, NumEpisode) ON DELETE CASCADE
);
/

-- trigger pour vérifier que le contenu visionné n'est pas un film
CREATE OR REPLACE TRIGGER episode 
before insert on LectureEP for each row
DECLARE
	t	Contenu.TypeContenu%type;
BEGIN
	select TypeContenu into t
	from Contenu
	where IDContenu = :new.IDContenu;
	IF t = 'Film'
		THEN raise_application_error(-20021, 'Ce contenu est une film : à insérer dans la table LectureFilm.');
	END IF;
END;
/

-- trigger pour mettre à jour la colonne SousTitres en fonction de la valeur dans LectureEP
CREATE OR REPLACE TRIGGER soustitres_ep 
after insert or update on LectureEP for each row
BEGIN
	UPDATE Profil
	SET SousTitres = :new.SousTitres
	WHERE IDClient = :new.IDClient AND IDProfil = :new.IDProfil;
END;
/

-- trigger pour vérifier qu'un profil Enfant ne visionne pas un épisode d'une série dont la classification est inadaptée
CREATE OR REPLACE TRIGGER lectenf_ep 
before insert on LectureEP for each row
DECLARE
	t	Profil.TypeProfil%type;
	cl	Contenu.Classification%type;
BEGIN
	select TypeProfil into t
	from Profil
	where IDClient = :new.IDClient
	and IDProfil = :new.IDProfil;
	
	select Classification into cl
	from Contenu
	where IDContenu = :new.IDContenu;

	IF t = 'Enfant' AND cl not in ('Tous publics', '-10 ans', '-12 ans')
		THEN raise_application_error(-20022, 'Impossible pour ce profil de regarder cet épisode : classification inadaptée.');
	END IF;
END;
/

-- trigger pour vérifier que le profil d'un compte Essentiel ne visionne pas de contenu payant
CREATE OR REPLACE TRIGGER dispo_ep 
before insert on LectureEP for each row
DECLARE
	a	Abonnement.TypeAbonnement%type;
	d	Contenu.Disponibilite%type;
BEGIN
	select TypeAbonnement into a
	from Client
	where IDClient = :new.IDClient;
	
	select Disponibilite into d
	from Contenu
	where IDContenu = :new.IDContenu;

	IF a = 'Essentiel' AND d = 'Payant'
		THEN raise_application_error(-20023, 'Impossible de lire cet épisode avec labonnement Essentiel.');
	END IF;
END;
/
------------------------------------------------------------------

/* TABLE AVIS */

-- création de la table
CREATE TABLE Avis (
IDClient NUMBER REFERENCES Client(IDClient) ON DELETE CASCADE,
IDProfil NUMBER,
IDContenu NUMBER REFERENCES Contenu(IDContenu),
Note NUMBER(2) CHECK (note between 1 and 10),
Commentaire VARCHAR(1000),
PRIMARY KEY (IDClient, IDProfil, IDContenu),
FOREIGN KEY (IDClient, IDProfil) REFERENCES Profil(IDClient, IDProfil) ON DELETE CASCADE
);
/

-- trigger pour vérifier qu'un profil Enfant ne peut pas écrire d'avis
CREATE OR REPLACE TRIGGER avis_enf 
before insert on Avis FOR EACH ROW
DECLARE
	t	Profil.TypeProfil%type;
BEGIN
	select TypeProfil into t
	from Profil
	where IDClient = :new.IDClient
	and IDProfil = :new.IDProfil;
	IF t = 'Enfant'
		THEN raise_application_error(-20031, 'Impossible pour ce profil décrire un avis ou de donner un note : profil de type enfant.');
	END IF;
END;
/

-- trigger pour modifier un avis
CREATE OR REPLACE TRIGGER modif_avis 
before insert on Avis FOR EACH ROW
BEGIN
		-- ==> A FAIRE
END;
------------------------------------------------------------------

/* TABLE PARTICIPE */

-- création de la table
CREATE TABLE Participe (
IDContenu NUMBER REFERENCES Contenu(IDContenu),
IDPro NUMBER REFERENCES Professionnel(IDPro),
Profession VARCHAR(11) NOT NULL CHECK (Profession in ('Réalisateur', 'Acteur')),
Role VARCHAR(10) NOT NULL CHECK (Role in ('Principal', 'Secondaire')),
PRIMARY KEY (IDContenu, IDPro, Profession)
);
/
------------------------------------------------------------------

/* TABLE DEFINIT */

-- création de la table
CREATE TABLE Definit (
IDContenu NUMBER REFERENCES Contenu(IDContenu),
NomCategorie VARCHAR(30) REFERENCES Categorie(NomCategorie),
PRIMARY KEY (IDContenu, NomCategorie)
);
/
------------------------------------------------------------------
------------------------------------------------------------------

/* VUES */

-- vue des contenus de type Film
CREATE VIEW Films AS
SELECT *
FROM Contenu
WHERE TypeContenu = 'Film';
/

-- vue des contenus de type Série
CREATE VIEW Series AS
SELECT *
FROM Contenu
WHERE TypeContenu = 'Série';
/

-- vue des films et des épisodes
CREATE VIEW Videos (IDContenu, DateSortie, Titre, NumSaison, NumEpisode, TitreEpisode) AS
SELECT IDContenu, DateSortieFilm, TitreContenu, NULL, NULL, NULL
FROM Films
UNION
SELECT e.IDContenu, e.DateSortieEpisode, s.TitreContenu, e.NumSaison, e.NumEpisode, e.TitreEpisode
FROM Episode e, Series s
WHERE e.IDContenu = s.IDContenu;
/
------------------------------------------------------------------

/* DROITS D'ACCES ET USERS */

-- afficher les informations d'un compte client
CREATE OR REPLACE PROCEDURE afficher_compte(id_cli in Client.IDClient%type) IS
BEGIN
	SELECT *
	FROM Client
	WHERE IDClient = id_cli;
END;
/
execute afficher_compte(IDClient);
/

-- package pour afficher les informations d'un profil et son historique
CREATE OR REPLACE PACKAGE info_profil IS
	PROCEDURE afficher_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type);
	PROCEDURE historique_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type);
END info_profil;
/

CREATE OR REPLACE PACKAGE BODY info_profil IS

PROCEDURE afficher_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type) IS
BEGIN
	SELECT *
	FROM Profil
	WHERE IDClient = id_cli AND IDProfil = id_prof;
END;
/

PROCEDURE historique_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type) IS
BEGIN
	CREATE VIEW Historique(TempsDebut, Titre, NumSaison, NumEpisode, TitreEpisode) AS

	SELECT l1.TempsDebut, v.Titre, NULL, NULL, NULL
	FROM LectureFilm l1, Videos v
	WHERE l1.IDContenu = v.IDContenu
	AND l1.IDClient = id_cli AND l1.IDProfil = id_prof
	UNION
	SELECT l2.TempsDebut, v.Titre, v.NumSaison, v.NumEpisode, v.TitreEpisode
	FROM LectureEP l2, Videos v
	WHERE l2.IDContenu = v.IDContenu
	AND l2.IDClient = id_cli AND l2.IDProfil = id_prof
	ORDER BY DateLecture DESC;
END;


/

    /*
execute afficher_profil(IDClient, IDProfil);
execute historique_profil(IDClient, IDProfil);
ou ??
BEGIN 
info_profil.afficher_profil(*IDClient*, *IDProfil*);
info_profil.historique_profil(*IDClient*, *IDProfil*);
end ;

/

ou

sql > exec info_profil.afficher_profil(*IDClient*, *IDProfil*);
*/
		-- ==> VOIR TRIGGER POUR IMPOSSIBILITE DE MODIFIER LES ID ET TOUT

/* 
créer 3 users :
- admin (nous)
- compte
- profil
*/

/*
sql loader
>> sqlload username/motdepasse fichier.ctl
*/
