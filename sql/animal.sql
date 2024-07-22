-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 juil. 2024 à 17:32
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `arcadia`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `rapport_veterinaire_id` int(11) DEFAULT NULL,
  `race_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `habitat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `prenom`, `rapport_veterinaire_id`, `race_id`, `image_id`, `habitat_id`) VALUES
(2, 'Ozzy', 1, 1, NULL, 1),
(6, 'Lila', 5, 2, NULL, 1),
(8, 'Hathi', 7, 3, NULL, 1),
(10, 'Simba', 9, 4, NULL, 1),
(13, 'Judy', 12, 5, NULL, 1),
(14, 'Felix', 13, 6, NULL, 1),
(16, 'Bagheera', 15, 7, NULL, 2),
(17, 'Lungri', 16, 8, NULL, 2),
(20, 'Tigu', 20, 9, NULL, 2),
(24, 'Kumi', 24, 10, NULL, 2),
(26, 'Akela', 26, 11, NULL, 2),
(29, 'Cronos', 29, 12, NULL, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rapport_veterinaire_id` (`rapport_veterinaire_id`),
  ADD KEY `race_id` (`race_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `habitat_id` (`habitat_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`rapport_veterinaire_id`) REFERENCES `rapport_veterinaire` (`id`),
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`),
  ADD CONSTRAINT `animal_ibfk_3` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `animal_ibfk_4` FOREIGN KEY (`habitat_id`) REFERENCES `habitat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
