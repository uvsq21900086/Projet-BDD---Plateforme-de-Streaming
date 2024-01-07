------------------------------------------------------------------

/* TABLE ABONNEMENT */

------------------------------------------------------------------

/* TABLE CLIENT */

-- TRIGGER POUR CREE UN USER CLIENT
CREATE OR REPLACE TRIGGER CREATE_USER BEFORE
	INSERT ON CLIENT FOR EACH ROW
BEGIN
	EXECUTE IMMEDIATE 'CREATE USER '
	                  || :NEW.ADRESSEMAIL
	                  || ' IDENTIFIED BY '
	                  || :NEW.MOTDEPASSECLIENT;
	EXECUTE IMMEDIATE 'GRANT CLIENT_USER TO '
	                  || :NEW.ADRESSEMAIL;
END;
/

-- TRIGGER POUR GERER LES UPDATE CLIENT
CREATE OR REPLACE TRIGGER BEFORE_UPDATE_CLIENT BEFORE
	UPDATE ON CLIENT FOR EACH ROW
BEGIN
 -- Vérifier si l'utilisateur a le rôle CLIENT_USER
	IF IS_ROLE_ENABLED('CLIENT_USER') THEN
 -- Autoriser la mise à jour uniquement si l'adresse e-mail correspond à l'utilisateur
		IF :OLD.ADRESSEMAIL <> USER THEN
			RAISE_APPLICATION_ERROR(-20000, 'Vous n''êtes pas autorisé à mettre à jour cette ligne.');
		END IF;
 -- Autoriser la mise à jour de certaines colonnes
		:NEW.NOMCLIENT := NVL(:NEW.NOMCLIENT, :OLD.NOMCLIENT);
		:NEW.MOTDEPASSECLIENT := NVL(:NEW.MOTDEPASSECLIENT, :OLD.MOTDEPASSECLIENT);
		:NEW.AGECLIENT := NVL(:NEW.AGECLIENT, :OLD.AGECLIENT);
		:NEW.DATEINSCRIPTION := NVL(:NEW.DATEINSCRIPTION, :OLD.DATEINSCRIPTION);
		:NEW.IBAN := :NEW.IBAN;
		:NEW.TYPEABONNEMENT := NVL(:NEW.TYPEABONNEMENT, :OLD.TYPEABONNEMENT);
 -- Interdire la mise à jour de certaines colonnes
		:NEW.IDCLIENT := :OLD.IDCLIENT;
		:NEW.DATEPRELEVEMENT := :OLD.DATEPRELEVEMENT;
	END IF;
END;
/

-- TRIGGER POUR UPDATE UN USER CLIENT
CREATE OR REPLACE TRIGGER UPDATE_USER BEFORE
	UPDATE ON CLIENT FOR EACH ROW
BEGIN
	IF :NEW.ADRESSEMAIL <> :OLD.ADRESSEMAIL THEN
		EXECUTE IMMEDIATE 'ALTER USER '
		                  || :OLD.ADRESSEMAIL
		                  || ' RENAME TO '
		                  || :NEW.ADRESSEMAIL;
	END IF;

	IF :NEW.MOTDEPASSECLIENT <> :OLD.MOTDEPASSECLIENT THEN
		EXECUTE IMMEDIATE 'ALTER USER '
		                  || :NEW.ADRESSEMAIL
		                  || ' IDENTIFIED BY '
		                  || :NEW.MOTDEPASSECLIENT;
	END IF;
END;
/

-- trigger pour vérifier que l'âge d'un client est supérieur à 18 ans
CREATE OR REPLACE TRIGGER AGE_CLI BEFORE
	INSERT OR
		UPDATE ON CLIENT FOR EACH ROW
	BEGIN
		IF :NEW.AGECLIENT > SYSDATE - NUMTOYMINTERVAL(18, 'year') THEN
			RAISE_APPLICATION_ERROR(-20010, 'Lâge dun client doit être supérieur à 18 ans.');
		END IF;
	END;
/

-- séquence ClientID
CREATE SEQUENCE ID_CLI
INCREMENT BY 1
START WITH 1;

-- trigger pour la séquence ClientID
CREATE OR REPLACE TRIGGER NOUVEAU_CLI BEFORE
	INSERT ON CLIENT FOR EACH ROW
BEGIN
	:NEW.IDCLIENT := ID_CLI.NEXTVAL;
END;
/

-- procédure pour supprimer un client, ses profils et les historiques si le compte est inactif depuis 12 mois, ou pour mettre à jour la date de prélèvement
CREATE OR REPLACE PROCEDURE DATE_PRELEV(
	ID_CLI IN CLIENT.IDCLIENT%TYPE
) IS
	D CLIENT.DATEPRELEVEMENT%TYPE;
BEGIN
	SELECT
		DATEPRELEVEMENT INTO D
	FROM
		CLIENT
	WHERE
		IDCLIENT = ID_CLI;
	IF ADD_MONTHS(D, 12) <= SYSDATE THEN
		DELETE FROM CLIENT
		WHERE
			IDCLIENT = ID_CLI;
	END IF;

	IF ADD_MONTHS(D, 1) = SYSDATE THEN
		UPDATE CLIENT
		SET
			DATEPRELEVEMENT = SYSDATE
		WHERE
			IDCLIENT = ID_CLI;
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE PROFIL */

-- TRIGGER POUR CREE UN USER PROFIL
CREATE OR REPLACE TRIGGER CREATE_PROFIL BEFORE
	INSERT ON PROFIL FOR EACH ROW
BEGIN
	EXECUTE IMMEDIATE 'CREATE USER '
	                  || :NEW.PSEUDO
	                  || ' IDENTIFIED BY '
	                  || :NEW.MOTDEPASSEPROFIL;
	EXECUTE IMMEDIATE 'GRANT PROFIL_USER TO '
	                  || :NEW.PSEUDO;
END;
/

-- TRIGGER POUR GERER LES UPDATE PROFILE
CREATE OR REPLACE TRIGGER BEFORE_UPDATE_CLIENT BEFORE
	UPDATE ON PROFIL FOR EACH ROW
BEGIN
 -- Vérifier si l'utilisateur a le rôle CLIENT_USER
	IF IS_ROLE_ENABLED('PROFIL_USER') THEN
 -- Autoriser la mise à jour uniquement si l'adresse e-mail correspond à l'utilisateur
		IF :OLD.PSEUDO <> USER THEN
			RAISE_APPLICATION_ERROR(-20000, 'Vous n''êtes pas autorisé à mettre à jour cette ligne.');
		END IF;
 -- Autoriser la mise à jour de certaines colonnes
		:NEW.PSEUDO := NVL(:NEW.PSEUDO, :OLD.PSEUDO);
		:NEW.PHOTO := :NEW.PHOTO;
		:NEW.MOTDEPASSEPROFIL := :NEW.MOTDEPASSEPROFIL;
		:NEW.AGEPROFIL := NVL(:NEW.AGEPROFIL, :OLD.AGEPROFIL);
		:NEW.TYPEPROFIL := NVL(:NEW.TYPEPROFIL, :OLD.TYPEPROFIL);
		:NEW.LANGUE := NVL(:NEW.LANGUE, :OLD.LANGUE);
		:NEW.SOUSTITRES := NVL(:NEW.SOUSTITRES, :OLD.SOUSTITRES);
 -- Interdire la mise à jour de certaines colonnes
		:NEW.IDCLIENT := :OLD.IDCLIENT;
		:NEW.IDPROFIL := :OLD.IDPROFIL;
	END IF;
END;
/

-- TRIGGER POUR UPDATE UN USER PROFIL
CREATE OR REPLACE TRIGGER UPDATE_PROFIL BEFORE
	UPDATE ON PROFIL FOR EACH ROW
BEGIN
	IF :NEW.PSEUDO <> :OLD.PSEUDO THEN
		EXECUTE IMMEDIATE 'ALTER USER '
		                  || :OLD.PSEUDO
		                  || ' RENAME TO '
		                  || :NEW.PSEUDO;
	END IF;

	IF :NEW.MOTDEPASSEPROFIL <> :OLD.MOTDEPASSEPROFIL THEN
		EXECUTE IMMEDIATE 'ALTER USER '
		                  || :NEW.PSEUDO
		                  || ' IDENTIFIED BY '
		                  || :NEW.MOTDEPASSEPROFIL;
	END IF;
END;
/

-- trigger pour vérifier que l'âge d'un profil est compris entre 1 et 122 ans
CREATE OR REPLACE TRIGGER AGE_PROF BEFORE
	INSERT OR
		UPDATE ON PROFIL FOR EACH ROW
	BEGIN
		IF :NEW.AGEPROFIL > SYSDATE - NUMTOYMINTERVAL(1, 'year') OR :NEW.AGEPROFIL < SYSDATE - NUMTOYMINTERVAL(122, 'year') THEN
			RAISE_APPLICATION_ERROR(-20020, 'Lâge dun profil doit être compris entre 1 an et 122 ans.');
		END IF;
	END;
/

-- trigger pour vérifier que le nombre de profils ne dépasse pas le nombre maximum autorisé par l'abonnement
CREATE OR REPLACE TRIGGER NB_PROFILS BEFORE
	INSERT ON PROFIL FOR EACH ROW
DECLARE
	N INT;
	T CLIENT.TYPEABONNEMENT%TYPE;
BEGIN
	SELECT
		COUNT(*) INTO N
	FROM
		PROFIL
	WHERE
		IDCLIENT = :NEW.IDCLIENT;
	SELECT
		TYPEABONNEMENT INTO T
	FROM
		CLIENT
	WHERE
		IDCLIENT = :NEW.IDCLIENT;
	IF T IN ('Essentiel', 'Etudiant') AND N >= 1 THEN
		RAISE_APPLICATION_ERROR(-20001, 'Impossible de créer un nouveau profil : 1 profil maximum autorisé pour le type dabonnement.');
	END IF;

	IF T = 'Standard' AND N >= 2 THEN
		RAISE_APPLICATION_ERROR(-20002, 'Impossible de créer un nouveau profil : 2 profils maximum autorisés pour le type dabonnement.');
	END IF;

	IF T = 'Famille' AND N >= 4 THEN
		RAISE_APPLICATION_ERROR(-20003, 'Impossible de créer un nouveau profil : 4 profils maximum autorisés pour le type dabonnement.');
	END IF;
END;
/

-- trigger pour vérifier qu'il y a bien un profil Adulte associé au compte client avant de créer un profil Enfant
CREATE OR REPLACE TRIGGER PROFIL_ENF BEFORE
	INSERT ON PROFIL FOR EACH ROW
DECLARE
	P INT;
BEGIN
	IF :NEW.TYPEPROFIL = 'Enfant' THEN
		SELECT
			COUNT(*) INTO P
		FROM
			PROFIL
		WHERE
			IDCLIENT = :NEW.IDCLIENT
			AND TYPEPROFIL = 'Adulte';
		IF P = 0 THEN
			RAISE_APPLICATION_ERROR(-20004, 'Impossible de créer un nouveau profil enfant : 1 profil adulte minimum est requis.');
		END IF;
	END IF;
END;
/

-- trigger pour vérifier qu'il y a bien toujours un profil Adulte associé au compte client s'il y a un profil Enfant avant de supprimer un autre profil Adulte
CREATE OR REPLACE TRIGGER SUPPR_ADULTE BEFORE
	DELETE ON PROFIL FOR EACH ROW
DECLARE
	A INT;
	E INT;
BEGIN
	SELECT
		COUNT(*) INTO E
	FROM
		PROFIL
	WHERE
		IDCLIENT = :OLD.IDCLIENT
		AND TYPEPROFIL = 'Enfant';
	IF :OLD.TYPEPROFIL = 'Adulte' AND E > 0 THEN
		SELECT
			COUNT(*) INTO A
		FROM
			PROFIL
		WHERE
			IDCLIENT = :OLD.IDCLIENT
			AND TYPEPROFIL = 'Adulte';
		IF A = 0 THEN
			RAISE_APPLICATION_ERROR(-20005, 'Impossible de supprimer le profil Adulte : 1 profil Adulte minimum est requis.');
		END IF;
	END IF;
END;
/

-- séquence IDProfil
CREATE SEQUENCE ID_PROF
START WITH 1
INCREMENT BY 1;

-- trigger pour la séquence IDProfil -- ON EST PAS SURS DE CA
CREATE OR REPLACE TRIGGER NOUVEAU_PROF BEFORE
	INSERT ON PROFIL FOR EACH ROW
BEGIN
	:NEW.IDPROFIL := ID_PROF.NEXTVAL;
END;
/

-- trigger pour vérifier que le MotDePasseProfil est conforme
CREATE OR REPLACE TRIGGER MDP_PROFIL BEFORE
	INSERT ON PROFIL FOR EACH ROW
BEGIN
	IF (:NEW.MOTDEPASSEPROFIL IS NOT NULL) AND (LENGTHB(:NEW.MOTDEPASSEPROFIL) != 4
	OR (VALIDATE_CONVERSION(:NEW.MOTDEPASSEPROFIL AS NUMBER) = 0)) THEN
		RAISE_APPLICATION_ERROR(-20006, 'Le mot de passe saisi nest pas conforme : veuillez entrer un code à 4 chiffres.');
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE CONTENU */

-- trigger pour vérifier que selon le type de contenu, les bonnes colonnes d'un tuple sont remplies
CREATE OR REPLACE TRIGGER TYPE_CONTENU BEFORE
	INSERT ON CONTENU FOR EACH ROW
BEGIN
	IF :NEW.TYPECONTENU = 'Film' AND (:NEW.DATESORTIEFILM IS NULL
	OR :NEW.DUREEFILM IS NULL) THEN
		RAISE_APPLICATION_ERROR(-20007, 'Si le contenu est un film, veuillez renseigner les champs DateSortieFilm et DureeFilm.');
	END IF;

	IF :NEW.TYPECONTENU = 'Série' AND :NEW.ANNEESERIE IS NULL THEN
		RAISE_APPLICATION_ERROR(-20008, 'Si le contenu est une série, veuillez renseigner le champs AnneeSerie.');
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE EPISODE */

-- trigger pour vérifier qu'un épisode n'est pas associé à un contenu de type Film
CREATE OR REPLACE TRIGGER INSERT_EP BEFORE
	INSERT ON EPISODE FOR EACH ROW
DECLARE
	T CONTENU.TYPECONTENU%TYPE;
BEGIN
	SELECT
		TYPECONTENU INTO T
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF T = 'Film' THEN
		RAISE_APPLICATION_ERROR(-20009, 'Impossible dajouter un épisode à un film : le contenu doit être une série.');
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE PROFESSIONNEL */

-- trigger pour vérifier que l'âge d'un professionnel est compris entre 1 et 122 ans
CREATE OR REPLACE TRIGGER AGE_PRO BEFORE
	INSERT OR
		UPDATE ON PROFESSIONNEL FOR EACH ROW
	BEGIN
		IF :NEW.AGEPRO > SYSDATE - NUMTOYMINTERVAL(1, 'year') OR :NEW.AGEPRO < SYSDATE - NUMTOYMINTERVAL(122, 'year') THEN
			RAISE_APPLICATION_ERROR(-20020, 'Lâge dun professionnel doit être compris entre 1 an et 122 ans.');
		END IF;
	END;
/

------------------------------------------------------------------

/* TABLE CATEGORIE */

------------------------------------------------------------------
------------------------------------------------------------------

/* TABLE LECTUREFILM */

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
CREATE OR REPLACE TRIGGER FILM BEFORE
	INSERT ON LECTUREFILM FOR EACH ROW
DECLARE
	T CONTENU.TYPECONTENU%TYPE;
BEGIN
	SELECT
		TYPECONTENU INTO T
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF T = 'Série' THEN
		RAISE_APPLICATION_ERROR(-20011, 'Ce contenu est une série : à insérer dans la table LectureEP.');
	END IF;
END;
/

-- trigger pour mettre à jour la colonne SousTitres en fonction de la valeur dans LectureFilm
CREATE OR REPLACE TRIGGER SOUSTITRES_FILM AFTER
	INSERT OR
		UPDATE ON LECTUREFILM FOR EACH ROW
	BEGIN
		UPDATE PROFIL
		SET
			SOUSTITRES = :NEW.SOUSTITRES
		WHERE
			IDCLIENT = :NEW.IDCLIENT
			AND IDPROFIL = :NEW.IDPROFIL;
	END;
/

-- trigger pour vérifier qu'un profil Enfant ne visionne pas de film dont la classification est inadaptée
CREATE OR REPLACE TRIGGER LECTENF_FILM BEFORE
	INSERT ON LECTUREFILM FOR EACH ROW
DECLARE
	T  PROFIL.TYPEPROFIL%TYPE;
	CL CONTENU.CLASSIFICATION%TYPE;
BEGIN
	SELECT
		TYPEPROFIL INTO T
	FROM
		PROFIL
	WHERE
		IDCLIENT = :NEW.IDCLIENT
		AND IDPROFIL = :NEW.IDPROFIL;
	SELECT
		CLASSIFICATION INTO CL
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF T = 'Enfant' AND CL NOT IN ('Tous publics', '-10 ans', '-12 ans') THEN
		RAISE_APPLICATION_ERROR(-20012, 'Impossible pour ce profil de regarder ce film : classification inadaptée.');
	END IF;
END;
/

-- trigger pour vérifier que le profil d'un compte Essentiel ne visionne pas de contenu payant
CREATE OR REPLACE TRIGGER DISPO_FILM BEFORE
	INSERT ON LECTUREFILM FOR EACH ROW
DECLARE
	A ABONNEMENT.TYPEABONNEMENT%TYPE;
	D CONTENU.DISPONIBILITE%TYPE;
BEGIN
	SELECT
		TYPEABONNEMENT INTO A
	FROM
		CLIENT
	WHERE
		IDCLIENT = :NEW.IDCLIENT;
	SELECT
		DISPONIBILITE INTO D
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF A = 'Essentiel' AND D = 'Payant' THEN
		RAISE_APPLICATION_ERROR(-20013, 'Impossible de lire ce film avec labonnement Essentiel.');
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE LECTUREEP */

-- trigger pour vérifier que le contenu visionné n'est pas un film
CREATE OR REPLACE TRIGGER EPISODE BEFORE
	INSERT ON LECTUREEP FOR EACH ROW
DECLARE
	T CONTENU.TYPECONTENU%TYPE;
BEGIN
	SELECT
		TYPECONTENU INTO T
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF T = 'Film' THEN
		RAISE_APPLICATION_ERROR(-20021, 'Ce contenu est une film : à insérer dans la table LectureFilm.');
	END IF;
END;
/

-- trigger pour mettre à jour la colonne SousTitres en fonction de la valeur dans LectureEP
CREATE OR REPLACE TRIGGER SOUSTITRES_EP AFTER
	INSERT OR
		UPDATE ON LECTUREEP FOR EACH ROW
	BEGIN
		UPDATE PROFIL
		SET
			SOUSTITRES = :NEW.SOUSTITRES
		WHERE
			IDCLIENT = :NEW.IDCLIENT
			AND IDPROFIL = :NEW.IDPROFIL;
	END;
/

-- trigger pour vérifier qu'un profil Enfant ne visionne pas un épisode d'une série dont la classification est inadaptée
CREATE OR REPLACE TRIGGER LECTENF_EP BEFORE
	INSERT ON LECTUREEP FOR EACH ROW
DECLARE
	T  PROFIL.TYPEPROFIL%TYPE;
	CL CONTENU.CLASSIFICATION%TYPE;
BEGIN
	SELECT
		TYPEPROFIL INTO T
	FROM
		PROFIL
	WHERE
		IDCLIENT = :NEW.IDCLIENT
		AND IDPROFIL = :NEW.IDPROFIL;
	SELECT
		CLASSIFICATION INTO CL
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF T = 'Enfant' AND CL NOT IN ('Tous publics', '-10 ans', '-12 ans') THEN
		RAISE_APPLICATION_ERROR(-20022, 'Impossible pour ce profil de regarder cet épisode : classification inadaptée.');
	END IF;
END;
/

-- trigger pour vérifier que le profil d'un compte Essentiel ne visionne pas de contenu payant
CREATE OR REPLACE TRIGGER DISPO_EP BEFORE
	INSERT ON LECTUREEP FOR EACH ROW
DECLARE
	A ABONNEMENT.TYPEABONNEMENT%TYPE;
	D CONTENU.DISPONIBILITE%TYPE;
BEGIN
	SELECT
		TYPEABONNEMENT INTO A
	FROM
		CLIENT
	WHERE
		IDCLIENT = :NEW.IDCLIENT;
	SELECT
		DISPONIBILITE INTO D
	FROM
		CONTENU
	WHERE
		IDCONTENU = :NEW.IDCONTENU;
	IF A = 'Essentiel' AND D = 'Payant' THEN
		RAISE_APPLICATION_ERROR(-20023, 'Impossible de lire cet épisode avec labonnement Essentiel.');
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE AVIS */

-- trigger pour vérifier qu'un profil Enfant ne peut pas écrire d'avis
CREATE OR REPLACE TRIGGER AVIS_ENF BEFORE
	INSERT ON AVIS FOR EACH ROW
DECLARE
	T PROFIL.TYPEPROFIL%TYPE;
BEGIN
	SELECT
		TYPEPROFIL INTO T
	FROM
		PROFIL
	WHERE
		IDCLIENT = :NEW.IDCLIENT
		AND IDPROFIL = :NEW.IDPROFIL;
	IF T = 'Enfant' THEN
		RAISE_APPLICATION_ERROR(-20031, 'Impossible pour ce profil décrire un avis ou de donner un note : profil de type enfant.');
	END IF;
END;
/

------------------------------------------------------------------

/* TABLE PARTICIPE */

------------------------------------------------------------------

/* TABLE DEFINIT */