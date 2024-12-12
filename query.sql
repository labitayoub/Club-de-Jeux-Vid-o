SELECT pseudo, email, date_inscription FROM membre;

SELECT titre, genre, studio_developpement FROM jeu;

SELECT * FROM tournoi WHERE nom_tournoi = 'Tournoi_Aliens';

SELECT membre.pseudo, jeu.titre
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
JOIN jeu ON emprunter.id_jeu = jeu.Id
WHERE emprunter.date_retour_reelle IS NULL;

SELECT membre.pseudo, jeu.titre, jeu.studio_developpement
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
JOIN jeu ON emprunter.id_jeu = jeu.Id;
