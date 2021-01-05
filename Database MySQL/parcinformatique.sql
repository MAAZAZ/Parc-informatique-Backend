-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 10 nov. 2020 à 18:23
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `parcinformatique`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add service', 6, 'add_service'),
(22, 'Can change service', 6, 'change_service'),
(23, 'Can delete service', 6, 'delete_service'),
(24, 'Can view service', 6, 'view_service'),
(25, 'Can add user', 7, 'add_agent'),
(26, 'Can change user', 7, 'change_agent'),
(27, 'Can delete user', 7, 'delete_agent'),
(28, 'Can view user', 7, 'view_agent'),
(29, 'Can add caracteristique', 8, 'add_caracteristique'),
(30, 'Can change caracteristique', 8, 'change_caracteristique'),
(31, 'Can delete caracteristique', 8, 'delete_caracteristique'),
(32, 'Can view caracteristique', 8, 'view_caracteristique'),
(33, 'Can add contrat', 9, 'add_contrat'),
(34, 'Can change contrat', 9, 'change_contrat'),
(35, 'Can delete contrat', 9, 'delete_contrat'),
(36, 'Can view contrat', 9, 'view_contrat'),
(37, 'Can add marque', 10, 'add_marque'),
(38, 'Can change marque', 10, 'change_marque'),
(39, 'Can delete marque', 10, 'delete_marque'),
(40, 'Can view marque', 10, 'view_marque'),
(41, 'Can add tier', 11, 'add_tier'),
(42, 'Can change tier', 11, 'change_tier'),
(43, 'Can delete tier', 11, 'delete_tier'),
(44, 'Can view tier', 11, 'view_tier'),
(45, 'Can add type', 12, 'add_type'),
(46, 'Can change type', 12, 'change_type'),
(47, 'Can delete type', 12, 'delete_type'),
(48, 'Can view type', 12, 'view_type'),
(49, 'Can add logiciel', 13, 'add_logiciel'),
(50, 'Can change logiciel', 13, 'change_logiciel'),
(51, 'Can delete logiciel', 13, 'delete_logiciel'),
(52, 'Can view logiciel', 13, 'view_logiciel'),
(53, 'Can add materiel', 14, 'add_materiel'),
(54, 'Can change materiel', 14, 'change_materiel'),
(55, 'Can delete materiel', 14, 'delete_materiel'),
(56, 'Can view materiel', 14, 'view_materiel'),
(57, 'Can add produit', 15, 'add_produit'),
(58, 'Can change produit', 15, 'change_produit'),
(59, 'Can delete produit', 15, 'delete_produit'),
(60, 'Can view produit', 15, 'view_produit'),
(61, 'Can add contrat_produit', 16, 'add_contrat_produit'),
(62, 'Can change contrat_produit', 16, 'change_contrat_produit'),
(63, 'Can delete contrat_produit', 16, 'delete_contrat_produit'),
(64, 'Can view contrat_produit', 16, 'view_contrat_produit'),
(65, 'Can add intervention', 17, 'add_intervention'),
(66, 'Can change intervention', 17, 'change_intervention'),
(67, 'Can delete intervention', 17, 'delete_intervention'),
(68, 'Can view intervention', 17, 'view_intervention'),
(69, 'Can add reclamation', 18, 'add_reclamation'),
(70, 'Can change reclamation', 18, 'change_reclamation'),
(71, 'Can delete reclamation', 18, 'delete_reclamation'),
(72, 'Can view reclamation', 18, 'view_reclamation'),
(73, 'Can add intervention_externe', 19, 'add_intervention_externe'),
(74, 'Can change intervention_externe', 19, 'change_intervention_externe'),
(75, 'Can delete intervention_externe', 19, 'delete_intervention_externe'),
(76, 'Can view intervention_externe', 19, 'view_intervention_externe'),
(77, 'Can add intervention_interne', 20, 'add_intervention_interne'),
(78, 'Can change intervention_interne', 20, 'change_intervention_interne'),
(79, 'Can delete intervention_interne', 20, 'delete_intervention_interne'),
(80, 'Can view intervention_interne', 20, 'view_intervention_interne'),
(81, 'Can add panne', 21, 'add_panne'),
(82, 'Can change panne', 21, 'change_panne'),
(83, 'Can delete panne', 21, 'delete_panne'),
(84, 'Can view panne', 21, 'view_panne'),
(85, 'Can add piece', 22, 'add_piece'),
(86, 'Can change piece', 22, 'change_piece'),
(87, 'Can delete piece', 22, 'delete_piece'),
(88, 'Can view piece', 22, 'view_piece'),
(89, 'Can add reparation', 23, 'add_reparation'),
(90, 'Can change reparation', 23, 'change_reparation'),
(91, 'Can delete reparation', 23, 'delete_reparation'),
(92, 'Can view reparation', 23, 'view_reparation');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-10-28 21:42:34.096054', '1', 'ZAKARIA MAAZAZ', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Matricule\", \"Adresse Email\", \"Telephone\", \"Role\", \"Specialite\"]}}]', 7, 1),
(2, '2020-10-28 21:44:56.269138', '1', 'Service de l’équipement rural', 1, '[{\"added\": {}}]', 6, 1),
(3, '2020-10-28 22:24:47.467862', '2', 'Service de gestion des réseaux d’irrigation et du drainage', 1, '[{\"added\": {}}]', 6, 1),
(4, '2020-10-28 22:25:09.504515', '3', 'Service de la production agricole', 1, '[{\"added\": {}}]', 6, 1),
(5, '2020-10-28 22:25:24.751023', '4', 'Service de vulgarisation et organisation professionnelle', 1, '[{\"added\": {}}]', 6, 1),
(6, '2020-10-28 22:25:52.789084', '5', 'Service de l’élevage', 1, '[{\"added\": {}}]', 6, 1),
(7, '2020-10-28 22:26:11.347619', '6', 'Service administratif et financier', 1, '[{\"added\": {}}]', 6, 1),
(8, '2020-10-28 22:26:21.983929', '7', 'Service de la planification et des programmes', 1, '[{\"added\": {}}]', 6, 1),
(9, '2020-10-28 22:26:35.771882', '8', 'Service du matériel', 1, '[{\"added\": {}}]', 6, 1),
(10, '2020-10-28 22:27:06.341575', '1', 'ZAKARIA MAAZAZ', 2, '[{\"changed\": {\"fields\": [\"Service\"]}}]', 7, 1),
(11, '2020-10-28 23:06:05.006922', '1', 'Sté OMEGA SUD', 1, '[{\"added\": {}}]', 11, 1),
(12, '2020-10-28 23:06:29.562553', '1', 'MAAZAZ ZAKARIA', 1, '[{\"added\": {}}]', 20, 1),
(13, '2020-10-29 13:33:36.759010', '1', 'HP', 1, '[{\"added\": {}}]', 10, 1),
(14, '2020-10-29 13:33:46.181118', '2', 'Dell', 1, '[{\"added\": {}}]', 10, 1),
(15, '2020-10-29 13:34:03.188450', '3', 'EPSON', 1, '[{\"added\": {}}]', 10, 1),
(16, '2020-10-29 13:34:14.541489', '4', 'MICROSOFT', 1, '[{\"added\": {}}]', 10, 1),
(17, '2020-10-29 13:35:15.370287', '1', 'Logiciel : Pack Microsoft Office', 1, '[{\"added\": {}}]', 13, 1),
(18, '2020-10-29 13:35:37.411656', '2', 'Materiel : Serveurs', 1, '[{\"added\": {}}]', 14, 1),
(19, '2020-10-29 13:35:53.395539', '3', 'Materiel : Ordinateurs de bureau', 1, '[{\"added\": {}}]', 14, 1),
(20, '2020-10-29 13:36:03.780957', '4', 'Materiel : Ordinateurs portables', 1, '[{\"added\": {}}]', 14, 1),
(21, '2020-10-29 13:36:24.973543', '5', 'Materiel : Imprimantes a laser monochrome A4', 1, '[{\"added\": {}}]', 14, 1),
(22, '2020-10-29 13:36:55.184177', '6', 'Materiel : Imprimantes a laser multifonction monochrome A4', 1, '[{\"added\": {}}]', 14, 1),
(23, '2020-10-29 13:37:30.163077', '7', 'Materiel : Imprimantes a laser couleur A4', 1, '[{\"added\": {}}]', 14, 1),
(24, '2020-10-29 13:37:40.239360', '8', 'Materiel : Imprimantes a laser couleur A3', 1, '[{\"added\": {}}]', 14, 1),
(25, '2020-10-29 13:37:47.155056', '9', 'Materiel : Traceurs', 1, '[{\"added\": {}}]', 14, 1),
(26, '2020-10-29 13:38:54.160946', '10', 'Materiel : Scanners', 1, '[{\"added\": {}}]', 14, 1),
(27, '2020-10-29 13:39:54.862776', '1', 'HP PROLIANT DL 380 G5 5355', 1, '[{\"added\": {}}]', 15, 1),
(28, '2020-10-29 13:40:14.663842', '2', 'HP PROLIANT DL 380 G9', 1, '[{\"added\": {}}]', 15, 1),
(29, '2020-10-29 13:40:38.140627', '3', 'DELL POWER EDGE R630', 1, '[{\"added\": {}}]', 15, 1),
(30, '2020-10-29 13:40:59.285247', '4', 'HP PROLIANT 350 P G8', 1, '[{\"added\": {}}]', 15, 1),
(31, '2020-10-29 13:41:24.856147', '5', 'HP PRODESK 600 G3', 1, '[{\"added\": {}}]', 15, 1),
(32, '2020-10-29 13:41:46.940487', '6', 'HP COMPAQ 8200 ELITE SEF', 1, '[{\"added\": {}}]', 15, 1),
(33, '2020-10-29 13:42:17.436034', '7', 'HP COMPAQ 8100 ELITE SFF', 1, '[{\"added\": {}}]', 15, 1),
(34, '2020-10-29 13:42:45.516559', '6', 'HP COMPAQ 8200 ELITE SFF', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 15, 1),
(35, '2020-10-29 13:43:07.326516', '8', 'HP PRODESK 600 G2 SFF', 1, '[{\"added\": {}}]', 15, 1),
(36, '2020-10-29 13:43:28.626336', '9', 'HP COMPAQ 6300 PRO', 1, '[{\"added\": {}}]', 15, 1),
(37, '2020-10-29 13:43:38.042154', '9', 'HP COMPAQ 6300 PRO', 2, '[{\"changed\": {\"fields\": [\"Quantite totale\"]}}]', 15, 1),
(38, '2020-10-29 13:45:22.583455', '10', 'HP COMPAQ 8200 ELITE CMT', 1, '[{\"added\": {}}]', 15, 1),
(39, '2020-10-29 13:46:23.865066', '11', 'HP COMPAQ 8300 ELITE', 1, '[{\"added\": {}}]', 15, 1),
(40, '2020-10-29 13:47:44.808281', '12', 'HP COMPAQ 8300 ELITE', 1, '[{\"added\": {}}]', 15, 1),
(41, '2020-10-29 13:48:12.223445', '12', 'HP COMPAQ 8000 ELITE', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 15, 1),
(42, '2020-10-29 13:48:32.283544', '13', 'HP DC7900', 1, '[{\"added\": {}}]', 15, 1),
(43, '2020-10-29 13:48:56.201662', '14', 'HP PRODESK 400 G4 MT', 1, '[{\"added\": {}}]', 15, 1),
(44, '2020-10-29 13:49:23.660529', '15', 'HP PRODESK 490 G3', 1, '[{\"added\": {}}]', 15, 1),
(45, '2020-10-29 13:49:41.649851', '16', 'HP COMPAQ DX7400', 1, '[{\"added\": {}}]', 15, 1),
(46, '2020-10-29 13:50:10.704865', '17', 'HP PRO 3500', 1, '[{\"added\": {}}]', 15, 1),
(47, '2020-10-29 13:50:26.811095', '18', 'HP PRO ONE 400 G2 (tout en un)', 1, '[{\"added\": {}}]', 15, 1),
(48, '2020-10-29 13:50:45.412568', '19', 'HP PAVILLION 24 B202NK (tout en un)', 1, '[{\"added\": {}}]', 15, 1),
(49, '2020-10-29 13:50:57.225706', '20', 'HP Z640 MT (station de travail)', 1, '[{\"added\": {}}]', 15, 1),
(50, '2020-10-29 13:51:33.833049', '21', 'HP PROBOOK 450-G5', 1, '[{\"added\": {}}]', 15, 1),
(51, '2020-10-29 13:51:52.712553', '22', 'HP PROBOOK 450-G4', 1, '[{\"added\": {}}]', 15, 1),
(52, '2020-10-29 13:52:24.960664', '23', 'HP PROBOOK 450-G3', 1, '[{\"added\": {}}]', 15, 1),
(53, '2020-10-29 13:52:39.646468', '24', 'HP ELITEBOOK 820 G4', 1, '[{\"added\": {}}]', 15, 1),
(54, '2020-10-29 13:53:29.287913', '25', 'HP LASERJET M402DN', 1, '[{\"added\": {}}]', 15, 1),
(55, '2020-10-29 13:53:49.082098', '26', 'HP LASERJET P2055D', 1, '[{\"added\": {}}]', 15, 1),
(56, '2020-10-29 13:54:06.399838', '27', 'HP LASERJET PRO 400', 1, '[{\"added\": {}}]', 15, 1),
(57, '2020-10-29 13:54:32.980641', '28', 'HP 1000 SERIES', 1, '[{\"added\": {}}]', 15, 1),
(58, '2020-10-29 13:55:01.090215', '29', 'HP LASERJET 2420', 1, '[{\"added\": {}}]', 15, 1),
(59, '2020-10-29 13:55:15.293968', '30', 'HP LASERJET 2015', 1, '[{\"added\": {}}]', 15, 1),
(60, '2020-10-29 13:55:32.891615', '31', 'HP LASERJET P3005', 1, '[{\"added\": {}}]', 15, 1),
(61, '2020-10-29 13:56:03.483223', '32', 'HP LASERJET PRO M426 FDW', 1, '[{\"added\": {}}]', 15, 1),
(62, '2020-10-29 13:56:21.168408', '33', 'PRO 500 MFP M521 DW', 1, '[{\"added\": {}}]', 15, 1),
(63, '2020-10-29 13:56:43.425344', '34', 'HP LASERJET ENTREPRISE M553DN', 1, '[{\"added\": {}}]', 15, 1),
(64, '2020-10-29 13:57:03.289573', '35', 'HP LASERJET COLOR M651DN', 1, '[{\"added\": {}}]', 15, 1),
(65, '2020-10-29 13:57:23.678494', '36', 'HP LASERJET COLOR CP3525N', 1, '[{\"added\": {}}]', 15, 1),
(66, '2020-10-29 13:57:42.621285', '37', 'HP LASERJET COLOR CP6015N', 1, '[{\"added\": {}}]', 15, 1),
(67, '2020-10-29 13:58:02.821413', '38', 'HP DESINGJET T520', 1, '[{\"added\": {}}]', 15, 1),
(68, '2020-10-29 13:58:18.735338', '39', 'HP DESINGJET T1100', 1, '[{\"added\": {}}]', 15, 1),
(69, '2020-10-29 13:58:33.906204', '40', 'HP DESINGJET T1530', 1, '[{\"added\": {}}]', 15, 1),
(70, '2020-10-29 13:59:06.120109', '41', 'EPSON SCANJET 5590', 1, '[{\"added\": {}}]', 15, 1),
(71, '2020-10-29 14:01:43.335804', '2', 'DELL', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 10, 1),
(72, '2020-10-29 17:40:15.167730', '2', 'Reclamation N°2', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 18, 1),
(73, '2020-10-29 17:45:11.142032', '1', 'HP PROLIANT DL 380 G5 5355', 2, '[{\"changed\": {\"fields\": [\"Quantite totale\"]}}]', 15, 1),
(74, '2020-10-29 17:59:27.545003', '1', 'HP', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 10, 1),
(75, '2020-10-29 18:00:19.018101', '1', 'HP', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 10, 1),
(76, '2020-10-29 18:09:16.405564', '2', 'Samir Sadiki', 1, '[{\"added\": {}}]', 7, 1),
(77, '2020-10-29 18:12:29.624807', '3', 'Karim Yamani', 1, '[{\"added\": {}}]', 7, 1),
(78, '2020-10-29 18:13:28.264450', '3', 'Yamani Karim', 1, '[{\"added\": {}}]', 20, 1),
(79, '2020-10-29 19:26:26.606459', '2', 'Samir Sadiki', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 7, 1),
(80, '2020-10-29 19:26:33.637486', '3', 'Karim Yamani', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 7, 1),
(81, '2020-10-30 13:51:57.690109', '4', 'Reclamation N°4', 3, '', 18, 1),
(82, '2020-10-30 14:02:24.956655', '5', 'Reclamation N°5', 3, '', 18, 1),
(83, '2020-10-30 19:11:47.538018', '1', '4GB DDR3-1333', 1, '[{\"added\": {}}]', 8, 1),
(84, '2020-10-30 19:12:46.090617', '2', 'Network card, PCI Express, Gigabit Ethernet, 1x RJ45', 1, '[{\"added\": {}}]', 8, 1),
(85, '2020-10-30 19:13:06.754268', '3', '6GB DDR3 1333MHz', 1, '[{\"added\": {}}]', 8, 1),
(86, '2020-10-30 19:13:27.627804', '4', 'Disque Dur 500 Go HDD', 1, '[{\"added\": {}}]', 8, 1),
(87, '2020-10-30 19:13:32.731246', '5', 'Disque Dur 1 TB HDD', 1, '[{\"added\": {}}]', 8, 1),
(88, '2020-10-30 19:13:39.695053', '6', 'Disque Dur SAS 300Go', 1, '[{\"added\": {}}]', 8, 1),
(89, '2020-10-30 19:14:55.804803', '1', '4GB DDR3 1333MHz', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(90, '2020-10-30 19:15:07.832506', '7', 'i5-7200U de fréquence 3,10 GHz', 1, '[{\"added\": {}}]', 8, 1),
(91, '2020-10-30 19:15:23.091875', '8', 'Core i5 8250U - 1.6 GHz', 1, '[{\"added\": {}}]', 8, 1),
(92, '2020-10-30 19:17:11.848477', '9', 'SSD 128 GO', 1, '[{\"added\": {}}]', 8, 1),
(93, '2020-10-30 19:17:21.035076', '10', 'LED FULL HD WI-FI', 1, '[{\"added\": {}}]', 8, 1),
(94, '2020-10-30 19:17:28.978598', '11', 'AC/BLUETOOTH WEBCAM', 1, '[{\"added\": {}}]', 8, 1),
(95, '2020-10-30 19:17:39.463525', '12', 'WINDOWS 10 PROFESSIONNEL 64 BITS', 1, '[{\"added\": {}}]', 8, 1),
(96, '2020-10-30 19:18:55.175529', '8', 'Core i5 8250U - 1.6 GHz  (Quad-Core 1.6 GHz / 3.4 GHz Turbo - Cache 6 Mo)', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(97, '2020-10-30 19:19:17.284915', '13', '8 Go de mémoire DDR4 2400 MHz', 1, '[{\"added\": {}}]', 8, 1),
(98, '2020-10-30 19:19:27.176004', '14', 'Ecran anti-reflets de 15.6\" avec résolution Full HD (1920 x 1080)', 1, '[{\"added\": {}}]', 8, 1),
(99, '2020-10-30 19:19:42.203672', '9', 'SSD M.2 SATA de 128 Go', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(100, '2020-10-30 19:19:56.310719', '10', 'LED FULL HD WI-FI HDMI', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(101, '2020-10-30 19:20:13.719779', '15', 'Webcam HD 720p', 1, '[{\"added\": {}}]', 8, 1),
(102, '2020-10-30 19:20:18.814135', '16', 'Haut-parleurs intégrés avec technologie HP Audio Boost', 1, '[{\"added\": {}}]', 8, 1),
(103, '2020-10-30 19:20:31.170698', '17', 'Dalle IPS : couleurs lumineuses et angles de vision larges', 1, '[{\"added\": {}}]', 8, 1),
(104, '2020-10-30 19:21:07.952492', '5', 'Disque Dur 1 TB HDD (5400 RPM)', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(105, '2020-10-30 19:21:13.065598', '21', 'HP PROBOOK 450-G5', 2, '[{\"changed\": {\"fields\": [\"Caracteristiques\"]}}]', 15, 1),
(106, '2020-10-30 19:21:54.767773', '7', 'Intel Core i7-7500U (Dual-Core 2.7 GHz / 3.5 GHz Turbo - Cache 4 Mo)', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(107, '2020-10-30 19:22:10.668986', '18', 'NVIDIA GeForce 930MX avec 2 Go de mémoire GDDR3', 1, '[{\"added\": {}}]', 8, 1),
(108, '2020-10-30 19:22:23.697390', '19', 'Graveur DVD multiformats', 1, '[{\"added\": {}}]', 8, 1),
(109, '2020-10-30 19:22:33.681257', '20', 'Clavier chiclet résistant aux projections d\'eau', 1, '[{\"added\": {}}]', 8, 1),
(110, '2020-10-30 19:22:54.005943', '21', 'Batterie de 14 heures d\'autonomie (selon l\'utilisation)', 1, '[{\"added\": {}}]', 8, 1),
(111, '2020-10-30 19:23:08.671775', '22', 'Lecteur d\'empreinte digitale intégré', 1, '[{\"added\": {}}]', 8, 1),
(112, '2020-10-30 19:23:13.340364', '23', 'Windows 10 Famille 64 bits', 1, '[{\"added\": {}}]', 8, 1),
(113, '2020-10-30 19:24:43.765362', '22', 'HP PROBOOK 450-G4', 2, '[{\"changed\": {\"fields\": [\"Caracteristiques\"]}}]', 15, 1),
(114, '2020-10-30 19:24:58.022457', '21', 'HP PROBOOK 450-G5', 2, '[{\"changed\": {\"fields\": [\"Caracteristiques\"]}}]', 15, 1),
(115, '2020-10-30 19:25:34.833665', '24', 'Processeur Intel Core i5-6200U (Dual-Core 2.3 GHz / 2.8 GHz Turbo - Cache 3 Mo)', 1, '[{\"added\": {}}]', 8, 1),
(116, '2020-10-30 19:25:57.517657', '25', '4 Go de mémoire DDR4 (1x 4 Go - 2 slots)', 1, '[{\"added\": {}}]', 8, 1),
(117, '2020-10-30 19:26:10.178992', '4', 'Disque Dur 500 Go HDD (7200 RPM)', 2, '[{\"changed\": {\"fields\": [\"Libelle\"]}}]', 8, 1),
(118, '2020-10-30 19:26:31.042167', '26', 'Batterie de 9 heures d\'autonomie (selon l\'utilisation)', 1, '[{\"added\": {}}]', 8, 1),
(119, '2020-10-30 19:26:38.452686', '27', 'Adaptateur secteur \"intelligent\" 45 W', 1, '[{\"added\": {}}]', 8, 1),
(120, '2020-10-30 19:28:18.490090', '23', 'HP PROBOOK 450-G3', 2, '[{\"changed\": {\"fields\": [\"Caracteristiques\"]}}]', 15, 1),
(121, '2020-10-30 19:30:34.121878', '28', '8 GB SDRAM DDR4 2133 MHz', 1, '[{\"added\": {}}]', 8, 1),
(122, '2020-10-30 19:30:46.281476', '29', '256 GB SSD HP Z Turbo Drive PCIe', 1, '[{\"added\": {}}]', 8, 1),
(123, '2020-10-30 19:30:56.130485', '30', 'Ultra-plat FHD UWVA anti-reflets, rétroéclairage LED', 1, '[{\"added\": {}}]', 8, 1),
(124, '2020-10-30 19:32:19.020520', '24', 'HP ELITEBOOK 820 G4', 2, '[{\"changed\": {\"fields\": [\"Caracteristiques\"]}}]', 15, 1),
(125, '2020-10-31 20:27:08.934649', '3', 'Microsoft Maroc', 3, '', 11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'GUtilisateur', 'service'),
(7, 'GUtilisateur', 'agent'),
(8, 'GProduit', 'caracteristique'),
(9, 'GProduit', 'contrat'),
(10, 'GProduit', 'marque'),
(11, 'GProduit', 'tier'),
(12, 'GProduit', 'type'),
(13, 'GProduit', 'logiciel'),
(14, 'GProduit', 'materiel'),
(15, 'GProduit', 'produit'),
(16, 'GProduit', 'contrat_produit'),
(17, 'GInterventionReclamation', 'intervention'),
(18, 'GInterventionReclamation', 'reclamation'),
(19, 'GInterventionReclamation', 'intervention_externe'),
(20, 'GInterventionReclamation', 'intervention_interne'),
(21, 'GPanneReparation', 'panne'),
(22, 'GPanneReparation', 'piece'),
(23, 'GPanneReparation', 'reparation');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-28 21:35:48.321823'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-10-28 21:35:48.548888'),
(3, 'auth', '0001_initial', '2020-10-28 21:35:48.857711'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-10-28 21:35:50.025784'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-10-28 21:35:50.064680'),
(6, 'auth', '0004_alter_user_username_opts', '2020-10-28 21:35:50.078643'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-10-28 21:35:50.087621'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-10-28 21:35:50.105570'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-10-28 21:35:50.118536'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-10-28 21:35:50.136490'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-10-28 21:35:50.157433'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-10-28 21:35:50.420078'),
(13, 'auth', '0011_update_proxy_permissions', '2020-10-28 21:35:50.427060'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2020-10-28 21:35:50.433044'),
(15, 'GUtilisateur', '0001_initial', '2020-10-28 21:35:50.845185'),
(16, 'GProduit', '0001_initial', '2020-10-28 21:35:53.126366'),
(17, 'GInterventionReclamation', '0001_initial', '2020-10-28 21:35:55.416245'),
(18, 'GInterventionReclamation', '0002_auto_20201026_1955', '2020-10-28 21:35:56.003056'),
(19, 'GInterventionReclamation', '0003_auto_20201026_2222', '2020-10-28 21:35:56.404251'),
(20, 'GPanneReparation', '0001_initial', '2020-10-28 21:35:57.241113'),
(21, 'admin', '0001_initial', '2020-10-28 21:35:58.761275'),
(22, 'admin', '0002_logentry_remove_auto_add', '2020-10-28 21:35:59.103507'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-28 21:35:59.127442'),
(24, 'sessions', '0001_initial', '2020-10-28 21:35:59.181297'),
(25, 'GProduit', '0002_contrat_prix_total', '2020-10-31 16:43:43.581774'),
(26, 'GPanneReparation', '0002_auto_20201031_2225', '2020-10-31 21:31:21.237191'),
(27, 'GPanneReparation', '0003_auto_20201031_2302', '2020-10-31 22:02:36.538049'),
(28, 'GPanneReparation', '0004_auto_20201031_2303', '2020-10-31 22:03:29.848747');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ivfrv012uxkyzk17cftlmdlrmiiyrkg', '.eJxVjEsOAiEQBe_C2hBo_i7dewbS0CijBpJhZmW8uyGZhW5fVb03i7hvNe6jrHEhdmaSnX63hPlZ2gT0wHbvPPe2rUviU-EHHfzaqbwuh_t3UHHUWRufrCEgoUgYj0rkkgpgSDopS9Kh8AWDJqWDAiNAypt1UiN46Qgc-3wB4Vo3Kw:1kXtCa:ihzwSsKrvRbQAxF5esgV9vTgRbYBDMQglcj2gdQ0-fE', '2020-11-11 21:41:52.935853'),
('au4uxbmkaz4xjdvb4dgpqrdfzozvso5k', '.eJxVjEsOAiEQBe_C2hBo_i7dewbS0CijBpJhZmW8uyGZhW5fVb03i7hvNe6jrHEhdmaSnX63hPlZ2gT0wHbvPPe2rUviU-EHHfzaqbwuh_t3UHHUWRufrCEgoUgYj0rkkgpgSDopS9Kh8AWDJqWDAiNAypt1UiN46Qgc-3wB4Vo3Kw:1kYDYg:aElVmHu3Sva2LppphdOLUK6KddH66odNHvz5JYmk2PU', '2020-11-12 19:26:02.495164');

-- --------------------------------------------------------

--
-- Structure de la table `ginterventionreclamation_intervention`
--

DROP TABLE IF EXISTS `ginterventionreclamation_intervention`;
CREATE TABLE IF NOT EXISTS `ginterventionreclamation_intervention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `GInterventionReclamation_in_polymorphic_ctype_id_78175cc1` (`polymorphic_ctype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ginterventionreclamation_intervention`
--

INSERT INTO `ginterventionreclamation_intervention` (`id`, `polymorphic_ctype_id`) VALUES
(1, 20),
(2, 19),
(3, 20);

-- --------------------------------------------------------

--
-- Structure de la table `ginterventionreclamation_intervention_externe`
--

DROP TABLE IF EXISTS `ginterventionreclamation_intervention_externe`;
CREATE TABLE IF NOT EXISTS `ginterventionreclamation_intervention_externe` (
  `intervention_ptr_id` int(11) NOT NULL,
  `prestataire_id` int(11) NOT NULL,
  PRIMARY KEY (`intervention_ptr_id`),
  KEY `GInterventionReclamation_in_prestataire_id_7d35d81b` (`prestataire_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ginterventionreclamation_intervention_externe`
--

INSERT INTO `ginterventionreclamation_intervention_externe` (`intervention_ptr_id`, `prestataire_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ginterventionreclamation_intervention_interne`
--

DROP TABLE IF EXISTS `ginterventionreclamation_intervention_interne`;
CREATE TABLE IF NOT EXISTS `ginterventionreclamation_intervention_interne` (
  `intervention_ptr_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`intervention_ptr_id`),
  KEY `GInterventionReclamation_intervention_interne_agent_id_63ac6a92` (`agent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ginterventionreclamation_intervention_interne`
--

INSERT INTO `ginterventionreclamation_intervention_interne` (`intervention_ptr_id`, `agent_id`) VALUES
(1, 1),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ginterventionreclamation_reclamation`
--

DROP TABLE IF EXISTS `ginterventionreclamation_reclamation`;
CREATE TABLE IF NOT EXISTS `ginterventionreclamation_reclamation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `etat` varchar(1) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GInterventionReclamation_reclamation_agent_id_18e83d90` (`agent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ginterventionreclamation_reclamation`
--

INSERT INTO `ginterventionreclamation_reclamation` (`id`, `date`, `etat`, `description`, `agent_id`) VALUES
(1, '2020-10-29 16:59:39.978197', '2', 'Problème de fonctionnement de l\'ordinateur de bureau : modèle  HP PRODESK 600 G3.', 1),
(2, '2020-10-29 17:39:34.867325', '1', 'Réparation et maintenance quadrimestre des serveurs.', 1),
(3, '2020-10-29 18:10:06.507101', '2', 'Les deux imprimantes de type HP LASERJET M402DN ne marchent pas.', 2),
(6, '2020-10-30 14:03:31.034915', '1', 'Problème du fonctionnement de l\'imprimante \"HP LASERJET P3005\".', 2);

-- --------------------------------------------------------

--
-- Structure de la table `gpannereparation_panne`
--

DROP TABLE IF EXISTS `gpannereparation_panne`;
CREATE TABLE IF NOT EXISTS `gpannereparation_panne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `quantite` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `reclamation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GPanneReparation_panne_produit_id_36ec259a` (`produit_id`),
  KEY `GPanneReparation_panne_reclamation_id_eb54bcc2` (`reclamation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gpannereparation_panne`
--

INSERT INTO `gpannereparation_panne` (`id`, `date`, `quantite`, `produit_id`, `reclamation_id`) VALUES
(1, '2020-10-29 17:00:04.204341', 1, 5, 1),
(2, '2020-10-29 17:40:38.452500', 2, 1, 2),
(3, '2020-10-29 17:40:46.435978', 2, 2, 2),
(4, '2020-10-29 17:40:53.369683', 2, 3, 2),
(5, '2020-10-29 17:40:59.134443', 1, 4, 2),
(6, '2020-10-29 18:10:33.527597', 2, 25, 3),
(7, '2020-10-31 18:38:58.271126', 1, 31, 6);

-- --------------------------------------------------------

--
-- Structure de la table `gpannereparation_piece`
--

DROP TABLE IF EXISTS `gpannereparation_piece`;
CREATE TABLE IF NOT EXISTS `gpannereparation_piece` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8_bin NOT NULL,
  `libelle` varchar(255) COLLATE utf8_bin NOT NULL,
  `prix_unitaire` double NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gpannereparation_piece`
--

INSERT INTO `gpannereparation_piece` (`id`, `reference`, `libelle`, `prix_unitaire`, `image`) VALUES
(1, 'P00000', 'Boîte d\'alimentation ATX-600W', 500, 'pieces/Boîte_dalimentation_ATX-600W_None.jpg'),
(2, 'P00001', 'Manchon De Film De Fusion pour HP LaserJet Pro M402DN', 150, 'pieces/Manchon_De_Film_De_Fusion_pour_HP_LaserJet_Pro_M402DN_None.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `gpannereparation_reparation`
--

DROP TABLE IF EXISTS `gpannereparation_reparation`;
CREATE TABLE IF NOT EXISTS `gpannereparation_reparation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_debut` date NOT NULL,
  `date_fin` date DEFAULT NULL,
  `motif` longtext COLLATE utf8_bin,
  `intervention_id` int(11) NOT NULL,
  `panne_concerne_id` int(11) NOT NULL,
  `prix_total` double NOT NULL,
  `tva` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GPanneReparation_reparation_intervention_id_9d63c19e` (`intervention_id`),
  KEY `GPanneReparation_reparation_panne_concerne_id_491b371b` (`panne_concerne_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gpannereparation_reparation`
--

INSERT INTO `gpannereparation_reparation` (`id`, `date_debut`, `date_fin`, `motif`, `intervention_id`, `panne_concerne_id`, `prix_total`, `tva`) VALUES
(1, '2020-10-29', '2020-10-29', 'Boite d\'alimentation endommagée.', 1, 1, 500, 0),
(2, '2020-10-29', NULL, '', 2, 2, 0, 0),
(3, '2020-10-29', NULL, NULL, 2, 3, 0, 0),
(4, '2020-10-29', NULL, NULL, 2, 4, 0, 0),
(5, '2020-10-29', NULL, NULL, 2, 5, 0, 0),
(6, '2020-10-29', '2020-10-29', 'Fourniture et changement de la manche de film de fusion.', 3, 6, 150, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gpannereparation_reparation_pieces`
--

DROP TABLE IF EXISTS `gpannereparation_reparation_pieces`;
CREATE TABLE IF NOT EXISTS `gpannereparation_reparation_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reparation_id` int(11) NOT NULL,
  `piece_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GPanneReparation_reparat_reparation_id_piece_id_8484c1f6_uniq` (`reparation_id`,`piece_id`),
  KEY `GPanneReparation_reparation_pieces_reparation_id_b5707441` (`reparation_id`),
  KEY `GPanneReparation_reparation_pieces_piece_id_7d9c4425` (`piece_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gpannereparation_reparation_pieces`
--

INSERT INTO `gpannereparation_reparation_pieces` (`id`, `reparation_id`, `piece_id`) VALUES
(1, 1, 1),
(2, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_caracteristique`
--

DROP TABLE IF EXISTS `gproduit_caracteristique`;
CREATE TABLE IF NOT EXISTS `gproduit_caracteristique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_caracteristique`
--

INSERT INTO `gproduit_caracteristique` (`id`, `libelle`) VALUES
(1, '4GB DDR3 1333MHz'),
(2, 'Network card, PCI Express, Gigabit Ethernet, 1x RJ45'),
(3, '6GB DDR3 1333MHz'),
(4, 'Disque Dur 500 Go HDD (7200 RPM)'),
(5, 'Disque Dur 1 TB HDD (5400 RPM)'),
(6, 'Disque Dur SAS 300Go'),
(7, 'Intel Core i7-7500U (Dual-Core 2.7 GHz / 3.5 GHz Turbo - Cache 4 Mo)'),
(8, 'Core i5 8250U - 1.6 GHz  (Quad-Core 1.6 GHz / 3.4 GHz Turbo - Cache 6 Mo)'),
(9, 'SSD M.2 SATA de 128 Go'),
(10, 'LED FULL HD WI-FI HDMI'),
(11, 'AC/BLUETOOTH WEBCAM'),
(12, 'WINDOWS 10 PROFESSIONNEL 64 BITS'),
(13, '8 Go de mémoire DDR4 2400 MHz'),
(14, 'Ecran anti-reflets de 15.6\" avec résolution Full HD (1920 x 1080)'),
(15, 'Webcam HD 720p'),
(16, 'Haut-parleurs intégrés avec technologie HP Audio Boost'),
(17, 'Dalle IPS : couleurs lumineuses et angles de vision larges'),
(18, 'NVIDIA GeForce 930MX avec 2 Go de mémoire GDDR3'),
(19, 'Graveur DVD multiformats'),
(20, 'Clavier chiclet résistant aux projections d\'eau'),
(21, 'Batterie de 14 heures d\'autonomie (selon l\'utilisation)'),
(22, 'Lecteur d\'empreinte digitale intégré'),
(23, 'Windows 10 Famille 64 bits'),
(24, 'Processeur Intel Core i5-6200U (Dual-Core 2.3 GHz / 2.8 GHz Turbo - Cache 3 Mo)'),
(25, '4 Go de mémoire DDR4 (1x 4 Go - 2 slots)'),
(26, 'Batterie de 9 heures d\'autonomie (selon l\'utilisation)'),
(27, 'Adaptateur secteur \"intelligent\" 45 W'),
(28, '8 GB SDRAM DDR4 2133 MHz'),
(29, '256 GB SSD HP Z Turbo Drive PCIe'),
(30, 'Ultra-plat FHD UWVA anti-reflets, rétroéclairage LED');

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_contrat`
--

DROP TABLE IF EXISTS `gproduit_contrat`;
CREATE TABLE IF NOT EXISTS `gproduit_contrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(1) COLLATE utf8_bin NOT NULL,
  `date_signe_contrat` date NOT NULL,
  `date_fin_contrat` date NOT NULL,
  `fournisseur_id` int(11) NOT NULL,
  `prix_total` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `GProduit_contrat_fournisseur_id_f164b664` (`fournisseur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_contrat`
--

INSERT INTO `gproduit_contrat` (`id`, `reference`, `type`, `date_signe_contrat`, `date_fin_contrat`, `fournisseur_id`, `prix_total`) VALUES
(1, 'C000001', '1', '2019-09-18', '2022-09-18', 1, 0),
(2, 'C000002', '0', '2018-10-31', '2022-10-31', 2, 50000);

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_contrat_produit`
--

DROP TABLE IF EXISTS `gproduit_contrat_produit`;
CREATE TABLE IF NOT EXISTS `gproduit_contrat_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prix_unitaire` double NOT NULL,
  `quantite` int(10) UNSIGNED NOT NULL,
  `contrat_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GProduit_contrat_produit_contrat_id_ad6519df` (`contrat_id`),
  KEY `GProduit_contrat_produit_produit_id_e78d2bb1` (`produit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_contrat_produit`
--

INSERT INTO `gproduit_contrat_produit` (`id`, `prix_unitaire`, `quantite`, `contrat_id`, `produit_id`) VALUES
(1, 0, 2, 1, 1),
(2, 0, 2, 1, 3),
(3, 0, 2, 1, 2),
(4, 0, 1, 1, 4),
(5, 10000, 5, 2, 42);

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_logiciel`
--

DROP TABLE IF EXISTS `gproduit_logiciel`;
CREATE TABLE IF NOT EXISTS `gproduit_logiciel` (
  `type_ptr_id` int(11) NOT NULL,
  `version` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `date_installation` date NOT NULL,
  PRIMARY KEY (`type_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_logiciel`
--

INSERT INTO `gproduit_logiciel` (`type_ptr_id`, `version`, `description`, `date_installation`) VALUES
(1, '2016', 'Microsoft Office est une suite bureautique propriété de la société Microsoft fonctionnant avec les plates-formes fixes et mobiles. Elle s\'installe sur ordinateur et fournit une suite de logiciels comme : Word, Excel, PowerPoint, OneNote, Outlook, Access et/ou Publisher selon les suites choisies.', '2016-10-29');

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_marque`
--

DROP TABLE IF EXISTS `gproduit_marque`;
CREATE TABLE IF NOT EXISTS `gproduit_marque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_bin NOT NULL,
  `logo` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_marque`
--

INSERT INTO `gproduit_marque` (`id`, `designation`, `logo`) VALUES
(1, 'HP', 'marques/HP_1.png'),
(2, 'DELL', 'marques/Dell_None.jpg'),
(3, 'EPSON', 'marques/EPSON_None.png'),
(4, 'MICROSOFT', 'marques/MICROSOFT_None.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_materiel`
--

DROP TABLE IF EXISTS `gproduit_materiel`;
CREATE TABLE IF NOT EXISTS `gproduit_materiel` (
  `type_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`type_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_materiel`
--

INSERT INTO `gproduit_materiel` (`type_ptr_id`) VALUES
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_produit`
--

DROP TABLE IF EXISTS `gproduit_produit`;
CREATE TABLE IF NOT EXISTS `gproduit_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(255) COLLATE utf8_bin NOT NULL,
  `designation` varchar(255) COLLATE utf8_bin NOT NULL,
  `quantite_totale` int(10) UNSIGNED NOT NULL,
  `marque_id` int(11) NOT NULL,
  `type_produit_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `GProduit_produit_marque_id_d1e138f1` (`marque_id`),
  KEY `GProduit_produit_type_produit_id_a40302f6` (`type_produit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_produit`
--

INSERT INTO `gproduit_produit` (`id`, `reference`, `designation`, `quantite_totale`, `marque_id`, `type_produit_id`) VALUES
(1, 'H100000', 'HP PROLIANT DL 380 G5 5355', 2, 1, 2),
(2, 'H100001', 'HP PROLIANT DL 380 G9', 2, 1, 2),
(3, 'H100002', 'DELL POWER EDGE R630', 2, 2, 2),
(4, 'H100003', 'HP PROLIANT 350 P G8', 1, 1, 2),
(5, 'H100004', 'HP PRODESK 600 G3', 25, 1, 3),
(6, 'H100005', 'HP COMPAQ 8200 ELITE SFF', 16, 1, 3),
(7, 'H100006', 'HP COMPAQ 8100 ELITE SFF', 15, 1, 3),
(8, 'H100007', 'HP PRODESK 600 G2 SFF', 9, 1, 3),
(9, 'H100008', 'HP COMPAQ 6300 PRO', 8, 1, 3),
(10, 'H100009', 'HP COMPAQ 8200 ELITE CMT', 7, 1, 3),
(11, 'H100010', 'HP COMPAQ 8300 ELITE', 7, 1, 3),
(12, 'H100011', 'HP COMPAQ 8000 ELITE', 6, 1, 3),
(13, 'H100012', 'HP DC7900', 6, 1, 3),
(14, 'H100013', 'HP PRODESK 400 G4 MT', 5, 1, 3),
(15, 'H100014', 'HP PRODESK 490 G3', 5, 1, 3),
(16, 'H100015', 'HP COMPAQ DX7400', 4, 1, 3),
(17, 'H100016', 'HP PRO 3500', 1, 1, 3),
(18, 'H100017', 'HP PRO ONE 400 G2 (tout en un)', 10, 1, 3),
(19, 'H100018', 'HP PAVILLION 24 B202NK (tout en un)', 1, 1, 3),
(20, 'H100019', 'HP Z640 MT (station de travail)', 1, 1, 3),
(21, 'H100020', 'HP PROBOOK 450-G5', 12, 1, 4),
(22, 'H100021', 'HP PROBOOK 450-G4', 0, 1, 4),
(23, 'H100022', 'HP PROBOOK 450-G3', 4, 1, 4),
(24, 'H100023', 'HP ELITEBOOK 820 G4', 2, 1, 4),
(25, 'H100024', 'HP LASERJET M402DN', 48, 1, 5),
(26, 'H100025', 'HP LASERJET P2055D', 24, 1, 5),
(27, 'H100026', 'HP LASERJET PRO 400', 12, 1, 5),
(28, 'H100027', 'HP 1000 SERIES', 2, 1, 5),
(29, 'H100028', 'HP LASERJET 2420', 5, 1, 5),
(30, 'H100029', 'HP LASERJET 2015', 2, 1, 5),
(31, 'H100030', 'HP LASERJET P3005', 7, 1, 5),
(32, 'H100031', 'HP LASERJET PRO M426 FDW', 3, 1, 6),
(33, 'H100032', 'PRO 500 MFP M521 DW', 3, 1, 6),
(34, 'H100033', 'HP LASERJET ENTREPRISE M553DN', 12, 1, 7),
(35, 'H100034', 'HP LASERJET COLOR M651DN', 1, 1, 7),
(36, 'H100035', 'HP LASERJET COLOR CP3525N', 4, 1, 7),
(37, 'H100036', 'HP LASERJET COLOR CP6015N', 1, 1, 8),
(38, 'H100037', 'HP DESINGJET T520', 1, 1, 9),
(39, 'H100038', 'HP DESINGJET T1100', 1, 1, 9),
(40, 'H100039', 'HP DESINGJET T1530', 1, 1, 9),
(41, 'H100040', 'EPSON SCANJET 5590', 3, 3, 10),
(42, 'H100041', 'Microsoft Office', 5, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_produit_caracteristiques`
--

DROP TABLE IF EXISTS `gproduit_produit_caracteristiques`;
CREATE TABLE IF NOT EXISTS `gproduit_produit_caracteristiques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produit_id` int(11) NOT NULL,
  `caracteristique_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GProduit_produit_caracte_produit_id_caracteristiq_0e7eb092_uniq` (`produit_id`,`caracteristique_id`),
  KEY `GProduit_produit_caracteristiques_produit_id_87f24e33` (`produit_id`),
  KEY `GProduit_produit_caracteristiques_caracteristique_id_e13bcf2b` (`caracteristique_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_produit_caracteristiques`
--

INSERT INTO `gproduit_produit_caracteristiques` (`id`, `produit_id`, `caracteristique_id`) VALUES
(1, 21, 5),
(2, 21, 8),
(3, 21, 9),
(4, 21, 10),
(5, 21, 11),
(6, 21, 12),
(7, 21, 13),
(8, 21, 14),
(9, 21, 15),
(10, 21, 16),
(11, 21, 17),
(12, 22, 2),
(13, 22, 5),
(14, 22, 7),
(15, 22, 10),
(16, 22, 11),
(17, 22, 13),
(18, 22, 14),
(19, 22, 15),
(20, 22, 16),
(21, 22, 18),
(22, 22, 19),
(23, 22, 20),
(24, 22, 21),
(25, 22, 22),
(26, 22, 23),
(27, 21, 2),
(28, 23, 2),
(29, 23, 10),
(30, 23, 11),
(31, 23, 14),
(32, 23, 15),
(33, 23, 16),
(34, 23, 19),
(35, 23, 20),
(36, 23, 23),
(37, 23, 24),
(38, 23, 25),
(39, 23, 26),
(40, 23, 27),
(41, 24, 2),
(42, 24, 7),
(43, 24, 10),
(44, 24, 11),
(45, 24, 12),
(46, 24, 14),
(47, 24, 15),
(48, 24, 16),
(49, 24, 28),
(50, 24, 29),
(51, 24, 30);

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_tier`
--

DROP TABLE IF EXISTS `gproduit_tier`;
CREATE TABLE IF NOT EXISTS `gproduit_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(255) COLLATE utf8_bin NOT NULL,
  `specialite` varchar(255) COLLATE utf8_bin NOT NULL,
  `logo` varchar(100) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(255) COLLATE utf8_bin NOT NULL,
  `mail` varchar(254) COLLATE utf8_bin NOT NULL,
  `adresse` longtext COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_tier`
--

INSERT INTO `gproduit_tier` (`id`, `raison_sociale`, `specialite`, `logo`, `telephone`, `mail`, `adresse`) VALUES
(1, 'Sté OMEGA SUD', 'Bureautique - Informatique - Papeterie - Travaux Divers - Maintenance et Réparation', 'tiers/Sté_OMEGA_SUD_None.png', '+212661207834', 'omegasud@gmail.com', '87 RUE MY YOUSSEF ERRACHIDIA - Maroc'),
(2, 'Microsoft Maroc', 'Développement et vendre des systèmes d’exploitation, des logiciels et des produits matériels dérivés.', 'tiers/Microsoft_Maroc_None_ADfHDLJ.png', '+212522956150', 'msnafweb@microsoft.com', 'Twin Center, Tour A, 15eme Etage, Bd Zerktouni - Maarif - El Maarif (AR), CASABLANCA');

-- --------------------------------------------------------

--
-- Structure de la table `gproduit_type`
--

DROP TABLE IF EXISTS `gproduit_type`;
CREATE TABLE IF NOT EXISTS `gproduit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gproduit_type`
--

INSERT INTO `gproduit_type` (`id`, `libelle`, `image`) VALUES
(1, 'Pack Microsoft Office', 'categories/Pack_Microsoft_Office_None.png'),
(2, 'Serveurs', 'categories/Serveurs_None.jpg'),
(3, 'Ordinateurs de bureau', 'categories/Ordinateurs_de_bureau_None.jpg'),
(4, 'Ordinateurs portables', 'categories/Ordinateurs_portables_None.jpg'),
(5, 'Imprimantes a laser monochrome A4', 'categories/Imprimantes_a_laser_monochrome_A4_None.jpg'),
(6, 'Imprimantes a laser multifonction monochrome A4', 'categories/Imprimantes_a_laser_multifonction_monochrome_A4_None.jpg'),
(7, 'Imprimantes a laser couleur A4', 'categories/Imprimantes_a_laser_couleur_A4_None.jpg'),
(8, 'Imprimantes a laser couleur A3', 'categories/Imprimantes_a_laser_couleur_A3_None.jpg'),
(9, 'Traceurs', 'categories/Traceurs_None.jpg'),
(10, 'Scanners', 'categories/Scanners_None.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `gutilisateur_agent`
--

DROP TABLE IF EXISTS `gutilisateur_agent`;
CREATE TABLE IF NOT EXISTS `gutilisateur_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `matricule` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(1) COLLATE utf8_bin NOT NULL,
  `specialite` varchar(255) COLLATE utf8_bin NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `GUtilisateur_agent_service_id_1217af6b` (`service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gutilisateur_agent`
--

INSERT INTO `gutilisateur_agent` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `matricule`, `email`, `telephone`, `role`, `specialite`, `service_id`) VALUES
(1, 'pbkdf2_sha256$216000$zu1vmo0jeTpp$5SVmz4tR0b7Ohd6tgYy8anKZPWEczL1cGlttWZh9J9o=', '2020-10-29 19:26:02.482235', 1, 'ZAKARIA', 'MAAZAZ', 1, 1, '2020-10-28 21:41:16.000000', 'admin', 'H123456', 'maazaz.zakaria@gmail.com', '+212766041305', '0', 'Administrateur systèmes et réseaux', 7),
(2, 'pbkdf2_sha256$216000$zu1vmo0jeTpp$5SVmz4tR0b7Ohd6tgYy8anKZPWEczL1cGlttWZh9J9o=', '2020-10-29 18:08:16.000000', 0, 'Samir', 'Sadiki', 1, 1, '2020-10-29 18:08:12.000000', 'samir-sadiki', 'H123455', 'Sadiki.samir@gmail.com', '+212697495651', '2', 'Agent Comptable', 7),
(3, 'pbkdf2_sha256$216000$zu1vmo0jeTpp$5SVmz4tR0b7Ohd6tgYy8anKZPWEczL1cGlttWZh9J9o=', '2020-10-29 18:11:04.000000', 0, 'Karim', 'Yamani', 1, 1, '2020-10-29 18:11:01.000000', 'karim-yamani', 'H123450', 'yamani.karim@outlook.fr', '+212636041402', '1', 'Technicien spécialisé en maintenance informatique', 7);

-- --------------------------------------------------------

--
-- Structure de la table `gutilisateur_agent_groups`
--

DROP TABLE IF EXISTS `gutilisateur_agent_groups`;
CREATE TABLE IF NOT EXISTS `gutilisateur_agent_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GUtilisateur_agent_groups_agent_id_group_id_fb1717e8_uniq` (`agent_id`,`group_id`),
  KEY `GUtilisateur_agent_groups_agent_id_4c86d12c` (`agent_id`),
  KEY `GUtilisateur_agent_groups_group_id_17925924` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `gutilisateur_agent_user_permissions`
--

DROP TABLE IF EXISTS `gutilisateur_agent_user_permissions`;
CREATE TABLE IF NOT EXISTS `gutilisateur_agent_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `GUtilisateur_agent_user__agent_id_permission_id_30a1b1f3_uniq` (`agent_id`,`permission_id`),
  KEY `GUtilisateur_agent_user_permissions_agent_id_96671a08` (`agent_id`),
  KEY `GUtilisateur_agent_user_permissions_permission_id_5b790415` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `gutilisateur_service`
--

DROP TABLE IF EXISTS `gutilisateur_service`;
CREATE TABLE IF NOT EXISTS `gutilisateur_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_service` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `gutilisateur_service`
--

INSERT INTO `gutilisateur_service` (`id`, `nom_service`) VALUES
(1, 'Service de l’équipement rural'),
(2, 'Service de gestion des réseaux d’irrigation et du drainage'),
(3, 'Service de la production agricole'),
(4, 'Service de vulgarisation et organisation professionnelle'),
(5, 'Service de l’élevage'),
(6, 'Service administratif et financier'),
(7, 'Service de la planification et des programmes'),
(8, 'Service du matériel');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
