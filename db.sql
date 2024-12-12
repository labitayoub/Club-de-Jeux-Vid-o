-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 08:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club_de_jeux_vidéo`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnement`
--

CREATE TABLE `abonnement` (
  `Id` int(11) NOT NULL,
  `Date_debut` date NOT NULL,
  `Date_fin` date NOT NULL,
  `Type_abonnement` enum('Annuel','Mensuel','Aucun') NOT NULL,
  `membre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abonnement`
--

INSERT INTO `abonnement` (`Id`, `Date_debut`, `Date_fin`, `Type_abonnement`, `membre_id`) VALUES
(1, '2023-01-01', '2023-12-31', 'Annuel', NULL),
(2, '2023-02-01', '2023-02-28', 'Mensuel', NULL),
(3, '2023-03-15', '2024-03-14', 'Annuel', NULL),
(4, '2023-04-10', '2023-05-09', 'Mensuel', NULL),
(5, '2023-05-01', '2023-05-31', 'Mensuel', NULL),
(6, '2023-06-01', '2024-05-31', 'Annuel', NULL),
(7, '2023-07-01', '2023-07-31', 'Mensuel', NULL),
(8, '2023-08-01', '2024-07-31', 'Annuel', NULL),
(9, '2023-09-15', '2023-10-14', 'Mensuel', NULL),
(10, '2023-10-01', '2024-09-30', 'Annuel', NULL),
(11, '2023-11-01', '2023-12-01', 'Mensuel', NULL),
(12, '2023-11-05', '2024-11-04', 'Annuel', NULL),
(13, '2023-11-10', '2023-12-10', 'Mensuel', NULL),
(14, '2023-11-15', '2023-12-15', 'Mensuel', NULL),
(15, '2023-11-20', '2024-11-19', 'Annuel', NULL),
(16, '2023-11-25', '2023-12-25', 'Mensuel', NULL),
(17, '2023-12-01', '2024-12-01', 'Annuel', NULL),
(18, '2023-12-05', '2024-12-05', 'Annuel', NULL),
(19, '2023-12-10', '2023-12-31', 'Mensuel', NULL),
(20, '2023-12-15', '2024-12-15', 'Annuel', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emprunter`
--

CREATE TABLE `emprunter` (
  `id` int(11) NOT NULL,
  `date_emprunter` date NOT NULL,
  `date_retour_prevue` date DEFAULT NULL,
  `date_retour_reelle` date DEFAULT NULL,
  `id_membre` int(11) DEFAULT NULL,
  `id_jeu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emprunter`
--

INSERT INTO `emprunter` (`id`, `date_emprunter`, `date_retour_prevue`, `date_retour_reelle`, `id_membre`, `id_jeu`) VALUES
(31, '2023-01-05', '2023-01-20', '2023-01-18', 1, 2),
(32, '2023-01-10', '2023-01-25', NULL, 2, 3),
(33, '2023-02-01', '2023-02-15', '2023-02-14', 3, 1),
(34, '2023-02-15', '2023-03-01', '2023-02-28', 4, 4),
(35, '2023-03-01', '2023-03-15', NULL, 5, 5),
(36, '2023-03-10', '2023-03-25', '2023-03-24', 6, 2),
(37, '2023-04-01', '2023-04-15', '2023-04-13', 7, 3),
(38, '2023-04-10', '2023-04-25', NULL, 8, 1),
(39, '2023-05-01', '2023-05-15', '2023-05-14', 9, 4),
(40, '2023-05-10', '2023-05-25', NULL, 10, 5),
(41, '2023-11-02', '2023-11-12', '2023-11-10', 11, 11),
(42, '2023-11-06', '2023-11-20', NULL, 12, 12),
(43, '2023-11-11', '2023-11-21', '2023-11-20', 13, 13),
(44, '2023-11-16', '2023-11-30', NULL, 14, 14),
(45, '2023-11-21', '2023-12-01', '2023-11-30', 15, 15),
(46, '2023-11-26', '2023-12-06', '2023-12-05', 16, 16),
(47, '2023-12-02', '2023-12-12', NULL, 17, 17),
(48, '2023-12-06', '2023-12-20', NULL, 18, 18),
(49, '2023-12-11', '2023-12-21', '2023-12-20', 19, 19),
(50, '2023-12-16', '2023-12-26', NULL, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `jeu`
--

CREATE TABLE `jeu` (
  `Id` int(11) NOT NULL,
  `Titre` varchar(30) NOT NULL,
  `Studio_Developpement` varchar(30) DEFAULT NULL,
  `Date_Sortie` date DEFAULT NULL,
  `Genre` varchar(10) DEFAULT NULL,
  `Multijoueur` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeu`
--

INSERT INTO `jeu` (`Id`, `Titre`, `Studio_Developpement`, `Date_Sortie`, `Genre`, `Multijoueur`) VALUES
(1, 'The Last Adventure', 'Studio Alpha', '2020-03-15', 'Aventure', 1),
(2, 'Racing Xtreme', 'Speed Studios', '2019-11-20', 'Course', 0),
(3, 'Galaxy Wars', 'Cosmos Games', '2021-05-05', 'Science-fi', 1),
(4, 'Mystic Quest', 'Fantasy Co.', '2022-01-12', 'RPG', 0),
(5, 'Battle Royale X', 'Action Unlimited', '2018-07-22', 'Action', 1),
(6, 'Puzzle Master', 'BrainWorks', '2020-10-10', 'Puzzle', 0),
(7, 'Zombie Survival', 'Horror Games Inc.', '2019-03-01', 'Horreur', 1),
(8, 'Space Explorer', 'Cosmos Games', '2021-06-20', 'Science-fi', 0),
(9, 'Football Stars', 'Sports Studio', '2020-09-15', 'Sport', 1),
(10, 'Island Builder', 'Creative Minds', '2019-12-05', 'Simulation', 0),
(11, 'Stealth Mission', 'Stealth Studios', '2021-03-12', 'Action', 1),
(12, 'RPG Master', 'Fantasy Co.', '2020-06-01', 'RPG', 0),
(13, 'Zombie World', 'Horror Games Inc.', '2019-09-15', 'Horreur', 1),
(14, 'Adventure Island', 'Creative Minds', '2022-02-28', 'Aventure', 0),
(15, 'Puzzle Legends', 'BrainWorks', '2021-07-20', 'Puzzle', 1),
(16, 'Racing Elite', 'Speed Studios', '2020-11-30', 'Course', 1),
(17, 'Battle Champions', 'Action Unlimited', '2022-08-05', 'Action', 1),
(18, 'Football Pro League', 'Sports Studio', '2021-01-10', 'Sport', 1),
(19, 'Galaxy Defense', 'Cosmos Games', '2022-12-01', 'Science-fi', 0),
(20, 'Island Creator', 'Creative Minds', '2020-10-15', 'Simulation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

CREATE TABLE `membre` (
  `Id` int(11) NOT NULL,
  `Pseudo` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Date_Inscription` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membre`
--

INSERT INTO `membre` (`Id`, `Pseudo`, `Email`, `Date_Inscription`) VALUES
(1, 'PlayerOne', 'playerone@example.com', '2023-01-01'),
(2, 'GamerGal', 'gamergal@example.com', '2023-02-15'),
(3, 'Speedster', 'speedster@example.com', '2023-03-10'),
(4, 'RPGKing', 'rpgking@example.com', '2023-04-05'),
(5, 'PuzzleMaster', 'puzzlemaster@example.com', '2023-05-20'),
(6, 'ZombieSlayer', 'zombieslayer@example.com', '2023-06-01'),
(7, 'SpaceExplorer', 'spaceexplorer@example.com', '2023-07-18'),
(8, 'FootballStar', 'footballstar@example.com', '2023-08-12'),
(9, 'IslandBuilder', 'islandbuilder@example.com', '2023-09-07'),
(10, 'MysticMage', 'mysticmage@example.com', '2023-10-25'),
(11, 'ProGamer', 'progamer@example.com', '2023-11-01'),
(12, 'CasualPlayer', 'casualplayer@example.com', '2023-11-05'),
(13, 'Strategist', 'strategist@example.com', '2023-11-10'),
(14, 'ShooterKing', 'shooterking@example.com', '2023-11-15'),
(15, 'SpeedDemon', 'speeddemon@example.com', '2023-11-20'),
(16, 'ActionHero', 'actionhero@example.com', '2023-11-25'),
(17, 'HorrorFan', 'horrorfan@example.com', '2023-12-01'),
(18, 'FantasyPro', 'fantasypro@example.com', '2023-12-05'),
(19, 'PuzzleSolver', 'puzzlesolver@example.com', '2023-12-10'),
(20, 'SimMaster', 'simmaster@example.com', '2023-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `participer`
--

CREATE TABLE `participer` (
  `id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `rang_final` int(11) DEFAULT NULL,
  `id_membre` int(11) NOT NULL,
  `id_tournoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participer`
--

INSERT INTO `participer` (`id`, `score`, `rang_final`, `id_membre`, `id_tournoi`) VALUES
(1, 1500, 1, 1, 1),
(2, 1200, 2, 2, 1),
(3, 1100, 3, 3, 1),
(4, 2500, 1, 4, 2),
(5, 2000, 2, 5, 2),
(6, 1700, 3, 6, 2),
(7, 3200, 1, 7, 3),
(8, 2800, 2, 8, 3),
(9, 2500, 3, 9, 3),
(10, 1800, 1, 10, 4),
(11, 1800, 1, 11, 11),
(12, 1700, 2, 12, 12),
(13, 1600, 3, 13, 13),
(14, 2500, 1, 14, 14),
(15, 2300, 2, 15, 15),
(16, 2200, 3, 16, 16),
(17, 3000, 1, 17, 17),
(18, 2900, 2, 18, 18),
(19, 2800, 3, 19, 19),
(20, 2700, 1, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tournoi`
--

CREATE TABLE `tournoi` (
  `Id` int(11) NOT NULL,
  `Nom_tournoi` varchar(20) NOT NULL,
  `Date_tournoi` date NOT NULL,
  `recompenses` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tournoi`
--

INSERT INTO `tournoi` (`Id`, `Nom_tournoi`, `Date_tournoi`, `recompenses`) VALUES
(1, 'Tournoi Aventure 202', '2023-01-15', '500€'),
(2, 'Championnat Racing', '2023-02-20', '300€'),
(3, 'Galaxy Battle', '2023-03-10', '700€'),
(4, 'Mystic RPG Cup', '2023-04-05', '1,000€'),
(5, 'Battle Royale Pro', '2023-05-25', '800€'),
(6, 'Puzzle Challenge', '2023-06-15', '200€'),
(7, 'Zombie Survival Cont', '2023-07-10', '600€'),
(8, 'Space Explorers Show', '2023-08-20', '750€'),
(9, 'Football Stars Cup', '2023-09-12', '500€'),
(10, 'Island Builders Cham', '2023-10-30', '400€'),
(11, 'Stealth Battle', '2023-11-15', '600€'),
(12, 'Fantasy RPG Showdown', '2023-11-20', '800€'),
(13, 'Zombie Apocalypse', '2023-11-25', '900€'),
(14, 'Island Adventure Tou', '2023-11-30', '1,000€'),
(15, 'Puzzle Masters Cup', '2023-12-05', '500€'),
(16, 'Elite Racers Champio', '2023-12-10', '700€'),
(17, 'Battle Royale Finale', '2023-12-15', '1,200€'),
(18, 'Football Pro Cup', '2023-12-20', '600€'),
(19, 'Galaxy Defenders Tou', '2023-12-25', '750€'),
(20, 'Creative Islands Cha', '2023-12-30', '400€');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_abonnement_membre` (`membre_id`);

--
-- Indexes for table `emprunter`
--
ALTER TABLE `emprunter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_jeu` (`id_jeu`);

--
-- Indexes for table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_tournoi` (`id_tournoi`);

--
-- Indexes for table `tournoi`
--
ALTER TABLE `tournoi`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `emprunter`
--
ALTER TABLE `emprunter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `membre`
--
ALTER TABLE `membre`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `participer`
--
ALTER TABLE `participer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tournoi`
--
ALTER TABLE `tournoi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD CONSTRAINT `fk_abonnement_membre` FOREIGN KEY (`membre_id`) REFERENCES `membre` (`Id`);

--
-- Constraints for table `emprunter`
--
ALTER TABLE `emprunter`
  ADD CONSTRAINT `emprunter_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`Id`),
  ADD CONSTRAINT `emprunter_ibfk_2` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`Id`);

--
-- Constraints for table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`Id`),
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`id_tournoi`) REFERENCES `tournoi` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


