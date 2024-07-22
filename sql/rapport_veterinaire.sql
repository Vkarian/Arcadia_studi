-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 juil. 2024 à 17:36
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
-- Structure de la table `rapport_veterinaire`
--

CREATE TABLE `rapport_veterinaire` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `etat` varchar(50) NOT NULL,
  `alimentation` varchar(50) NOT NULL,
  `utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rapport_veterinaire`
--

INSERT INTO `rapport_veterinaire` (`id`, `date`, `etat`, `alimentation`, `utilisateur_id`) VALUES
(1, '2023-12-23', 'Bon', 'Herbivore', 11),
(5, '2023-12-26', 'Enceinte', 'Herbivore', 12),
(7, '2023-12-27', 'Bon', 'Herbivore', 12),
(9, '2024-01-04', 'Bon', 'Carnivore', 13),
(12, '2024-01-11', 'Enceinte', 'Herbivore', 12),
(13, '2024-01-16', 'Bon', 'Carnivore', 12),
(15, '2024-01-21', 'Bon', 'Carnivore', 13),
(16, '2024-02-03', 'Bon', 'Carnivore', 12),
(20, '2024-03-20', 'Malade', 'Herbivore', 12),
(24, '2024-05-03', 'Bon', 'Herbivore', 12),
(25, '2024-06-22', 'Bon', 'Carnivore', 11),
(26, '2024-06-23', 'Bon', 'Carnivore', 13),
(29, '2024-07-20', 'Malade', 'Carnivore', 11);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  ADD CONSTRAINT `rapport_veterinaire_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
