/* DROITS D'ACCES ET USERS */

-- afficher les informations d'un compte client
CREATE OR REPLACE PROCEDURE afficher_compte(id_cli in Client.IDClient%type) IS
    v_IDClient			Client.IDClient%TYPE;
    v_NomClient			Client.NomClient%TYPE;
    v_MotDePasse		Client.MotDePasseClient%TYPE;
    v_Age 				Client.AgeClient%TYPE;
    v_AdresseMail 		Client.AdresseMail%TYPE;
    v_DateInscription 	Client.DateInscription%TYPE;
    v_IBAN 				Client.IBAN%TYPE;
    v_DatePrelevement 	Client.DatePrelevement%TYPE;
    v_TypeAbonnement 	Client.TypeAbonnement%TYPE;
BEGIN
    SELECT IDCLIENT, NOMCLIENT, MOTDEPASSECLIENT, AGECLIENT, ADRESSEMAIL, DATEINSCRIPTION, IBAN, DATEPRELEVEMENT, TYPEABONNEMENT
    INTO v_IDClient, v_NomClient, v_MotDePasse, v_Age, v_AdresseMail, v_DateInscription, v_IBAN, v_DatePrelevement, v_TypeAbonnement
    FROM Client c
    WHERE IDClient = id_cli;
END;
/

-- execute afficher_compte(IDClient);

-- package pour afficher les informations d'un profil et son historique
CREATE OR REPLACE PACKAGE info_profil IS
	PROCEDURE afficher_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type);
	PROCEDURE historique_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type);
END info_profil;

CREATE OR REPLACE PACKAGE BODY info_profil IS

PROCEDURE afficher_profil(id_cli in Client.IDClient%type, id_prof in Profil.IDProfil%type) IS
BEGIN
	SELECT *
	FROM Profil
	WHERE IDClient = id_cli AND IDProfil = id_prof;
END;

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

END info_profil;
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