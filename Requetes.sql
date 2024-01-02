-- 1
SELECT c.TitreContenu
FROM Contenu c, Professionnel pr, Participe pa
WHERE pr.NomPro = 'Norris' AND pr.PrenomPro = 'Chuck' AND pa.Profession = 'Acteur'
AND pa.IDContenu = c.IDContenu AND pr.IDPro = pa.IDPro;
/

-- 3 PAS FINIE
SELECT p.NomPro, p.PrenomPro

FROM Professionnel p, Participe pa1, Participe pa2

WHERE pa1.Profession = 'Acteur' AND pa2.Profession = 'Réalisateur'
				AND pa2.Role = 'Principal'

AND pa1.IDContenu = pa2.IDContenu
AND pa1.IDpro = p.IDPro

HAVING COUNT(DISTINCT ) = 1;

-- 5
SELECT COUNT(*)
FROM Client
WHERE TypeAbonnement = 'Etudiant';
/

-- 9
/* moyenne d'age des gens qui ont regardé tous les films ou séries  keira knightley a joué ou a réalisé
personne (table profil) telle qu'il n'existe pas de contenu dans lequel keira est (tables contenu/participe) tel que la personne a pas vu (tables lecturefilm, lectureep) */

SELECT AVG(AgeProfil)
FROM Profil p
WHERE NOT EXISTS (select pa.IDContenu
		from Participe pa, Professionnel pr
		where pr.NomPro = 'Knightley' and pr.PrenomPro = 'Keira'
		and pa.IDPro = pr.IDPro
		and not exists (select *
				from LectureFilm f, LectureEP e
				where f.IDContenu = pa.IDContenu and e.IDContenu = pa.IDContenu
				and f.IDClient = p.IDClient and e.IDClient = p.IDClient
				and f.IDProfil = p.IDProfil and e.IDProfil = p.IDProfil));
/

-- 10
-- - on regarde toutes les séries qu'un profil a déjà regardé (au moins un épisode)
-- - on regarde si parmi les épisoes de ces séries il y en a dont la date de sortie est supérieure à sysdate
-- - on met tous ces épisodes dans une table avec le titre de la série, le numsaison, le numepisode, le titre de l'épisode et la date de sortie de l'épisode

-- 12
SELECT a.IDClient, a.IDProfil, cl.TypeAbonnement, COUNT(cl.TypeAbonnement)
FROM Avis a, Participe pa, Professionnel pr, Client cl
WHERE pr.Nom = 'Dwayne The Rock' AND pr.Prenom = 'Johnson'
AND pa.Profession = 'Acteur' AND pa.Role = 'Principal'
AND a.IDContenu = pr.IDContenu AND pa.IDPro = pr.IDPro
AND a.IDClient = cl.IDClient
GROUP BY cl.TypeAbonnement;
/

-- 13
SELECT temp1.Famille, temp2.Standard
FROM (select p.IDClient, p.IDProfil (count(p.IDProfil)/count(distinct p.IDClient)) into Famille
	from Client c, Profil p
	where c.TypeAbonnement = 'Famille' and p.TypeProfil = 'Enfant'
	and c.IDClient = p.IDClient) temp 1,
(select p.IDClient, p.IDProfil (count(p.IDProfil)/count(distinct p.IDClient)) into Standard
	from Client c, Profil p
	where c.TypeAbonnement = 'Standard' and p.TypeProfil = 'Enfant'
	and c.IDClient = p.IDClient) temp2;
/ 

-- 14
/* la conception permet pas de savoir si on épisode a été regardé 2 fois, sauf si c'est 2 jours différents donc on va group by et rassembler les mêmes épisodes */

CREATE OR REPLACE FUNCTION nbepisode_profil (id_cli IN Profil.IDProfil%type, id_prof IN Profil.IDProfil%type) RETURN NUMBER IS
n	NUMBER
BEGIN
	SELECT COUNT(*) INTO n
	FROM LectureEP
	WHERE IDClient = id_cli AND IDProfil = id_prof
	GROUP BY IDContenu, NumSaison, NumEpisode;
	RETURN n;
END;
/

-- 15
SELECT AVG(pr.Age)
FROM Participe pa, Professionnel pr, Films f
WHERE f.TitreContenu = 'Avengers' AND pa.Profession = 'Acteur'
AND pa.IDPro = pr.IDPro AND pa.IDContenu = f.IDContenu;
/

-- 17
SELECT COUNT(pa.IDPro)
FROM Participe pa, Films f
WHERE f.TitreContenu = 'Equalizer 3' AND pa.Profession = 'Acteur' AND pa.Role = 'Secondaire'
AND pa.IDContenu = f.IDContenu;
/

-- 18
personne (table profil) telle qu'il n'existe pas de film (vue film) tel que la personne a pas vu (table lecturefilm)

SELECT IDClient, IDProfil, Pseudo
FROM Profil
WHERE NOT EXISTS (select *
		from Films
		where not exists (select *
				from LectureFilm
				where LectureFilm.IDClient = Profil.IDClient
				and LectureFilm.IDProfil = Profil.IDProfil
				and LectureFilm.IDContenu = Films.IDContenu));
/

-- 19
/* -> reformulation de la question parce qu'elle est con :
quels sont les comptes avec abonnement étudiant dont le profil a noté plus de 30 films ? */

SELECT a.IDClient, COUNT(a.IDContenu)
FROM Avis a, Client c, Films f
WHERE c.TypeAbonnement = 'Etudiant'
AND a.IDClient = c.IDClient AND a.IDContenu = f.IDContenu
GROUP BY a.IDClient
HAVING COUNT(a.IDContenu) >= 30;
/

-- 23
SELECT f.TitreContenu, COUNT(DISTINCT l.IDContenu)
FROM LectureFilm l, Films f
WHERE l.DateRegarde LIKE '%-jul-2023'
AND l.IDContenu = f.IDContenu
GROUP BY l.IDContenu;
/

-- 25
SELECT co.TitreContenu, a.Commentaire
FROM Client cl, Profil p, Avis a, Contenu co
WHERE cl.NomClient = 'Amallah' AND p.Pseudo = 'Third-Cannon'
AND cl.IDClient = p.IDClient AND p.IDClient = a.IDClient AND p.IDProfil = a.IDProfil
AND a.IDContenu = co.IDContenu;
/

-- REVOIR TOUS LES COUNT() PARCE QUE JE COMPRENDS PLUS COMMENT CA S'UTILISE










