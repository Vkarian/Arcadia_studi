-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 juil. 2024 à 00:27
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

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `commentaire` varchar(250) NOT NULL,
  `isVisible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `pseudo`, `commentaire`, `isVisible`) VALUES
(1, 'Mala32', 'Zoo merveilleux, le personnel est fantastique et les animaux sont bien traités.', NULL),
(2, 'Domi45', 'Experience incroyable. Les habitats sont magnifiques, surtout la savane qui offre une grande liberté aux animaux.', NULL),
(3, 'Vaka63', 'L\'un des plus beaux zoo au monde !', NULL),
(4, 'Jojo07', 'Superbe ! L\'une des meilleurs experiences de ma vie, je recommande.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `habitat`
--

CREATE TABLE `habitat` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `habitat`
--

INSERT INTO `habitat` (`id`, `nom`, `description`, `image_id`) VALUES
(1, 'La Savane', 'Voyager au cœur de l\'Afrique. Abordant les thématiques des écosystème des savanes, de la desertification et de la raréfaction de l\'eau, découvre y ses espèces emblématique.', NULL),
(2, 'La Forêt', 'Découvrez des étendues d\'arbres, des sentiers et la cascade menant au lac dans la forêt, zone principale du zoo.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image_data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id`, `label`) VALUES
(1, 'Zèbre des plaines'),
(2, 'Girafe Massaï'),
(3, 'Elephant d\'Afrique'),
(4, 'Lion d\'Afrique'),
(5, 'Hippopotame amphibie'),
(6, 'Guépard d\'Afrique'),
(7, 'Panthère noire'),
(8, 'Tigre de Sibérie'),
(9, 'Gorille des plaine de l\'ouest'),
(10, 'Chimpanzé pygmée'),
(11, 'Loup à crinière'),
(12, 'Crocodile américain');

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

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `label`) VALUES
(1, 'Administrateur'),
(2, 'Employer'),
(3, 'Vétérinaire');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `nom`, `description`) VALUES
(1, 'Visite de la Savane', 'Visite guidé durant environ 1h pour découvrir la savane et ses animaux.'),
(2, 'Visite de la Forêt', 'Visite guidé durant environ 45min pour découvrir la forêt et ses animaux.'),
(3, 'Le petit train', 'Visite du zoo durant environ 1h20 en parcourant les deux habitats.'),
(4, 'Parking', 'Parking gratuit réservé au visiteur. le stationnement des camping-car n\'est pas autorisé.'),
(5, 'Le Resto\'Zoo', 'Restaurant au bord de l\'eau en plein safari offrant des plats fait maison.'),
(6, 'Le Savana Snack', 'Une petite faim ? Le snack vous accueille pour un pause café, goûter et même déjeuner.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `password`, `nom`, `role_id`) VALUES
(11, 'stellaa@mail.fr', '36301410-975', 'Stella Adams', 3),
(12, 'connorl@mail.fr', '36301410-520', 'Connor Lamy', 3),
(13, 'jasonh@mail.fr', '36301410-748', 'Jason Hamilton', 3),
(16, 'josem@mail.fr', '36301410-159', 'José Mora', 1),
(17, 'jodiem@mail.fr', '36301410-458', 'Jodie Muller', 2),
(18, 'novaf@mail.fr', '36301410-549', 'Nova Forbes', 2),
(19, 'lennyc@mail.fr', '36301410-319', 'Lenny Carter', 2);

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
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `habitat`
--
ALTER TABLE `habitat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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

--
-- Contraintes pour la table `habitat`
--
ALTER TABLE `habitat`
  ADD CONSTRAINT `habitat_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Contraintes pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  ADD CONSTRAINT `rapport_veterinaire_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
