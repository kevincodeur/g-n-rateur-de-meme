-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 06 Décembre 2018 à 16:11
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `generateurmeme`
--

-- --------------------------------------------------------

--
-- Structure de la table `filesupload`
--

CREATE TABLE `filesupload` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `file_url_modif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `filesupload`
--

INSERT INTO `filesupload` (`id`, `name`, `file_url`, `file_url_modif`) VALUES
(252, 'meme_15.jpg', 'assets/imgupload/meme_15.jpg', 'assets/imgupload/mememodif-meme_15.jpg'),
(253, 'meme_69.jpg', 'assets/imgupload/meme_69.jpg', 'assets/imgupload/mememodif-meme_69.jpg'),
(254, '2cf9b2ed185014be2eb9be77727083bf.jpg', 'assets/imgupload/2cf9b2ed185014be2eb9be77727083bf.jpg', 'assets/imgupload/mememodif-2cf9b2ed185014be2eb9be77727083bf.jpg'),
(255, '0a325a04dbd10ff926adf72c956e9827.jpg', 'assets/imgupload/0a325a04dbd10ff926adf72c956e9827.jpg', 'assets/imgupload/mememodif-0a325a04dbd10ff926adf72c956e9827.jpg'),
(256, 'b1f8473e9ea8ceb5942935080a4b223c.jpg', 'assets/imgupload/b1f8473e9ea8ceb5942935080a4b223c.jpg', 'assets/imgupload/mememodif-b1f8473e9ea8ceb5942935080a4b223c.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id`, `img`) VALUES
(1, 'meme_1'),
(2, 'meme_2'),
(3, 'meme_3'),
(4, 'meme_4'),
(5, 'meme_5'),
(6, 'meme_6'),
(7, 'meme_7'),
(8, 'meme_8'),
(9, 'meme_9'),
(10, 'meme_10'),
(11, 'meme_11'),
(12, 'meme_12'),
(13, 'meme_13'),
(14, 'meme_14'),
(15, 'meme_15'),
(16, 'meme_16'),
(17, 'meme_17'),
(18, 'meme_18'),
(19, 'meme_19'),
(20, 'meme_20'),
(21, 'meme_21'),
(22, 'meme_22'),
(23, 'meme_23'),
(24, 'meme_24'),
(25, 'meme_25'),
(26, 'meme_26'),
(27, 'meme_27'),
(28, 'meme_28'),
(29, 'meme_29'),
(30, 'meme_30'),
(31, 'meme_31'),
(32, 'meme_32'),
(33, 'meme_33'),
(34, 'meme_34'),
(35, 'meme_35'),
(36, 'meme_36'),
(37, 'meme_37'),
(38, 'meme_38'),
(39, 'meme_39'),
(40, 'meme_40'),
(41, 'meme_41'),
(42, 'meme_42'),
(43, 'meme_43'),
(44, 'meme_44'),
(45, 'meme_45'),
(46, 'meme_46'),
(47, 'meme_47'),
(48, 'meme_48'),
(49, 'meme_49'),
(50, 'meme_50'),
(51, 'meme_51'),
(52, 'meme_52'),
(53, 'meme_53'),
(54, 'meme_54'),
(55, 'meme_55'),
(56, 'meme_56'),
(57, 'meme_57'),
(58, 'meme_58'),
(59, 'meme_59'),
(60, 'meme_60'),
(61, 'meme_61'),
(62, 'meme_62'),
(63, 'meme_63'),
(64, 'meme_64'),
(65, 'meme_65'),
(66, 'meme_66'),
(67, 'meme_67'),
(68, 'meme_68'),
(69, 'meme_69'),
(70, 'meme_70'),
(71, 'meme_71'),
(72, 'meme_72'),
(73, 'meme_73'),
(74, 'meme_74'),
(75, 'meme_75'),
(76, 'meme_76'),
(77, 'meme_77'),
(78, 'meme_78'),
(79, 'meme_79'),
(80, 'meme_80'),
(81, 'meme_81'),
(82, 'meme_82'),
(83, 'meme_83'),
(84, 'meme_84'),
(85, 'meme_85'),
(86, 'meme_86'),
(87, 'meme_87'),
(88, 'meme_88'),
(89, 'meme_89'),
(90, 'meme_90'),
(91, 'meme_91'),
(92, 'meme_92'),
(93, 'meme_93'),
(94, 'meme_94'),
(95, 'meme_95'),
(96, 'meme_96'),
(97, 'meme_97'),
(98, 'meme_98'),
(99, 'meme_99'),
(100, 'meme_100');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `filesupload`
--
ALTER TABLE `filesupload`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `filesupload`
--
ALTER TABLE `filesupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
