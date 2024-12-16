SELECT pseudo, email, date_inscription FROM membre;

SELECT titre, genre, studio_developpement FROM jeu;

SELECT * FROM tournoi WHERE nom_tournoi = 'Tournoi Aventure 202';

SELECT membre.pseudo, jeu.titre
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
JOIN jeu ON emprunter.id_jeu = jeu.Id
WHERE emprunter.date_retour_reelle IS NULL;

SELECT membre.pseudo, jeu.titre, jeu.studio_developpement
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
JOIN jeu ON emprunter.id_jeu = jeu.Id;

SELECT membre.pseudo, tournoi.nom_tournoi, participer.rang_final
FROM participer
JOIN membre ON participer.id_membre = membre.Id
JOIN tournoi ON participer.id_tournoi = tournoi.Id;

SELECT membre.pseudo, abonnement.type_abonnement
FROM abonnement
JOIN membre ON abonnement.membre_id = membre.Id
WHERE abonnement.type_abonnement = 'Annuel';

SELECT jeu.titre, jeu.studio_developpement
FROM emprunter
JOIN jeu ON emprunter.id_jeu = jeu.Id
JOIN membre ON emprunter.id_membre = membre.Id
WHERE membre.pseudo = 'PlayerOne';

SELECT genre, COUNT(*) AS total_games
FROM jeu
GROUP BY genre;

SELECT tournoi.nom_tournoi, COUNT(*) AS total_participants
FROM participer
JOIN tournoi ON participer.id_tournoi = tournoi.Id
GROUP BY tournoi.nom_tournoi
ORDER BY total_participants DESC
LIMIT 1;

SELECT membre.pseudo, COUNT(*) AS total_emprunts
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
GROUP BY membre.pseudo;

SELECT titre
FROM jeu
WHERE Date_Sortie > '2015-01-01'
ORDER BY titre;

SELECT membre.pseudo
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
WHERE emprunter.date_retour_reelle IS NULL;

SELECT *
FROM tournoi
WHERE date_tournoi BETWEEN '2023-01-01' AND '2023-12-31';

SELECT membre.pseudo, COUNT(*) AS emprunts_actifs
FROM emprunter
JOIN membre ON emprunter.id_membre = membre.Id
WHERE emprunter.date_retour_reelle IS NULL
GROUP BY membre.pseudo
HAVING emprunts_actifs > 1;