-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 06:21 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gold_fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogue`
--

CREATE TABLE `catalogue` (
  `id` int(11) NOT NULL,
  `image_big` varchar(255) NOT NULL,
  `image_1` varchar(255) NOT NULL,
  `image_2` varchar(255) NOT NULL,
  `image_3` varchar(255) NOT NULL,
  `image_4` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `genre` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `visited` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalogue`
--

INSERT INTO `catalogue` (`id`, `image_big`, `image_1`, `image_2`, `image_3`, `image_4`, `designation`, `description`, `genre`, `age`, `visited`) VALUES
(1, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 1', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(2, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 2', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Fille', 9, 0),
(3, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 3', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 12, 0),
(4, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 4', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 3, 0),
(5, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 5', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Fille', 1, 0),
(6, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 6', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(7, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 7', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 6, 0),
(8, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 8', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Fille', 6, 0),
(9, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 9', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(10, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 10', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(11, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 11', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(12, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 12', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(13, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 13', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Fille', 1, 0),
(14, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 14', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(15, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 15', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 3, 0),
(16, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 16', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(17, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 17', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 3, 0),
(18, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 18', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Fille', 1, 0),
(19, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 19', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 1, 0),
(20, '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 'article 20', 'Caramels tootsie roll carrot cake sugar plum. Sweet roll jelly bear claw liquorice. Gingerbread lollipop dragée cake. Pie topping jelly-o. Fruitcake dragée candy canes tootsie roll. Pastry jelly-o cupcake. Bonbon brownie soufflé muffin.\r\n\r\nSweet roll soufflé oat cake apple pie croissant. Pie gummi bears jujubes cake lemon drops gummi bears croissant macaroon pie. Fruitcake tootsie roll chocolate cake Carrot cake cake bear claw jujubes topping cake apple pie. Jujubes gummi bears soufflé candy canes topping gummi bears cake soufflé cake. Cotton candy soufflé sugar plum pastry sweet roll..', 'Garçon', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `nom_societe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `id_personne`, `nom_societe`) VALUES
(2, 40, 'societe 2'),
(3, 41, 'societe');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL,
  `ordre_de_fabrique` date NOT NULL,
  `prix_unitaire` float(10,3) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `id_client`, `model`, `quantite`, `ordre_de_fabrique`, `prix_unitaire`, `date_creation`) VALUES
(3, 3, 'test', 10, '2021-04-13', 2000.000, '2021-04-20 14:31:15'),
(5, 3, 'azer', 23, '2021-06-16', 23.000, '2021-06-01 03:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `num_tel` varchar(8) NOT NULL,
  `role` enum('ADMIN','SECRETAIRE','PERSONNEL','CLIENT') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `num_tel`, `role`) VALUES
(1, 'admin', 'admin', '23568919', 'ADMIN'),
(2, 'test', 'test', '23568910', 'SECRETAIRE'),
(33, 'randa', 'amari', '25369874', 'PERSONNEL'),
(34, 'sonia', 'meny', '20563258', 'PERSONNEL'),
(35, 'mohamed', 'essid', '53907717', 'PERSONNEL'),
(36, 'manel', 'meddeb', '54362148', 'PERSONNEL'),
(37, 'yassine', 'bsd', '40896235', 'PERSONNEL'),
(40, 'client', 'client', '50742015', 'CLIENT'),
(41, 'client', 'client', '23044011', 'CLIENT'),
(42, 'a', 'a', '20333666', 'PERSONNEL');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `num_cin` varchar(8) NOT NULL,
  `num_cnss` varchar(20) NOT NULL,
  `login` varchar(120) NOT NULL,
  `mot_de_passe` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`id`, `id_personne`, `num_cin`, `num_cnss`, `login`, `mot_de_passe`) VALUES
(1, 1, '12345678', '12345678', 'admin@gmail.com', 'sha256$kb29SYnv$6bbc9e5f78e5b55d8588804afc014c505fe23a2afa89352fcb9c4af8dc14dfc2'),
(2, 2, '12345677', '12345677', 'secretaire@gmail.com', 'sha256$ONfNhkBQ$4302ba6ad815d7e677fccca3e0d9f9604bfb2cc53ac4a7f65602eb8aab49373d'),
(28, 33, '12369874', '36251478', '', ''),
(29, 34, '12963587', '13256987', '', ''),
(30, 35, '12858564', '16357159', '', ''),
(31, 36, '11985426', '12074369', '', ''),
(32, 37, '11473692', '10789326', '', ''),
(33, 42, '01234568', '14589653', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `personnel_presence`
--

CREATE TABLE `personnel_presence` (
  `id` int(11) NOT NULL,
  `id_presence` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `heure_d_entree` time NOT NULL,
  `heure_de_sortie` time NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_presence`
--

INSERT INTO `personnel_presence` (`id`, `id_presence`, `id_personnel`, `heure_d_entree`, `heure_de_sortie`, `date_creation`) VALUES
(16, 10, 31, '13:49:20', '00:00:00', '2021-05-26 12:49:20'),
(17, 11, 31, '13:49:20', '00:00:00', '2021-05-26 12:49:20'),
(18, 12, 31, '13:49:20', '00:00:00', '2021-05-26 12:49:20'),
(19, 13, 31, '13:49:20', '00:00:00', '2021-05-26 12:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `personnel_rendement`
--

CREATE TABLE `personnel_rendement` (
  `id` int(11) NOT NULL,
  `id_rendement` int(11) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `temps_model` int(11) NOT NULL,
  `entree` decimal(10,2) NOT NULL,
  `sortie` decimal(10,2) NOT NULL,
  `rendement` decimal(10,2) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_rendement`
--

INSERT INTO `personnel_rendement` (`id`, `id_rendement`, `id_personnel`, `heure_debut`, `heure_fin`, `temps_model`, `entree`, `sortie`, `rendement`, `date_creation`) VALUES
(16, 7, 28, '08:00:00', '09:00:00', 7, '100.00', '50.00', '10.00', '2021-05-26 11:32:50'),
(17, 7, 31, '08:00:00', '09:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(18, 7, 28, '09:00:00', '10:00:00', 7, '100.00', '50.00', '5.00', '2021-05-26 11:32:50'),
(19, 7, 31, '09:00:00', '10:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(20, 7, 28, '10:00:00', '11:00:00', 7, '100.00', '50.00', '18.00', '2021-05-26 11:32:50'),
(21, 7, 31, '10:00:00', '11:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(22, 7, 28, '11:00:00', '12:00:00', 7, '100.00', '50.00', '11.00', '2021-05-26 11:32:50'),
(23, 7, 31, '11:00:00', '12:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(24, 7, 28, '13:00:00', '14:00:00', 7, '100.00', '50.00', '14.00', '2021-05-26 11:32:50'),
(25, 7, 31, '13:00:00', '14:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(26, 7, 28, '14:00:00', '15:00:00', 7, '100.00', '50.00', '20.00', '2021-05-26 11:32:50'),
(27, 7, 31, '14:00:00', '15:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(28, 7, 28, '15:00:00', '16:00:00', 7, '100.00', '50.00', '5.00', '2021-05-26 11:32:50'),
(29, 7, 31, '15:00:00', '16:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(30, 7, 28, '16:00:00', '17:00:00', 7, '100.00', '50.00', '13.00', '2021-05-26 11:32:50'),
(31, 7, 31, '16:00:00', '17:00:00', 7, '100.00', '70.00', '7.50', '2021-05-26 11:34:18'),
(32, 7, 28, '17:00:00', '18:00:00', 7, '100.00', '50.00', '5.00', '2021-05-26 11:32:50'),
(33, 7, 31, '17:00:00', '18:00:00', 7, '100.00', '70.00', '17.50', '2021-05-26 11:34:18'),
(34, 8, 31, '09:00:00', '10:00:00', 12, '2.00', '5.00', '0.31', '2021-06-01 04:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `presence`
--

CREATE TABLE `presence` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presence`
--

INSERT INTO `presence` (`id`, `date`) VALUES
(10, '2021-05-26'),
(11, '2021-05-25'),
(12, '2021-05-24'),
(13, '2021-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `rendement`
--

CREATE TABLE `rendement` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `rendement_totale` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rendement`
--

INSERT INTO `rendement` (`id`, `date`, `rendement_totale`) VALUES
(7, '2021-05-26', '12.50'),
(8, '2021-06-01', '0.31');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `code_a_barre` varchar(20) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL,
  `categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `code_a_barre`, `nom_produit`, `quantite`, `categorie`) VALUES
(1, '6954941712901', 'search', 3, 'categorie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Indexes for table `personnel_presence`
--
ALTER TABLE `personnel_presence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_presence` (`id_presence`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Indexes for table `personnel_rendement`
--
ALTER TABLE `personnel_rendement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rendement` (`id_rendement`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Indexes for table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rendement`
--
ALTER TABLE `rendement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogue`
--
ALTER TABLE `catalogue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personnel_presence`
--
ALTER TABLE `personnel_presence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personnel_rendement`
--
ALTER TABLE `personnel_rendement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `presence`
--
ALTER TABLE `presence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rendement`
--
ALTER TABLE `rendement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personnel_presence`
--
ALTER TABLE `personnel_presence`
  ADD CONSTRAINT `personnel_presence_ibfk_1` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personnel_presence_ibfk_2` FOREIGN KEY (`id_presence`) REFERENCES `presence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personnel_rendement`
--
ALTER TABLE `personnel_rendement`
  ADD CONSTRAINT `personnel_rendement_ibfk_1` FOREIGN KEY (`id_rendement`) REFERENCES `rendement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `personnel_rendement_ibfk_2` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
