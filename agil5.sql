-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2022 at 05:54 AM
-- Server version: 5.7.31
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agil5`
--

-- --------------------------------------------------------

--
-- Table structure for table `gouvernerat`
--

DROP TABLE IF EXISTS `gouvernerat`;
CREATE TABLE IF NOT EXISTS `gouvernerat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gouvernerat`
--

INSERT INTO `gouvernerat` (`id`, `code`, `nom`) VALUES
(11, 70, 'Bizerte'),
(9, 11, 'Ben arous'),
(12, 20, 'Ariana'),
(13, 90, 'Beja'),
(14, 60, 'Gabes'),
(15, 21, 'Gafsa'),
(16, 81, 'Jandouba'),
(17, 31, 'Kairouan'),
(18, 12, 'Kasserine'),
(19, 42, 'Kebili'),
(20, 20, 'Manouba'),
(21, 71, 'Kef'),
(22, 51, 'Mahdia'),
(23, 41, 'Mednine'),
(24, 50, 'Monastir'),
(25, 80, 'Nabeul'),
(26, 30, 'Sfax'),
(27, 91, 'Sidi Bouzid'),
(28, 61, 'Siliana'),
(29, 40, 'Sousse'),
(30, 32, 'Tataouine'),
(31, 22, 'Tozeur'),
(32, 10, 'Tunis'),
(33, 11, 'Zaghouan');

-- --------------------------------------------------------

--
-- Table structure for table `servicee`
--

DROP TABLE IF EXISTS `servicee`;
CREATE TABLE IF NOT EXISTS `servicee` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nom` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servicee`
--

INSERT INTO `servicee` (`id`, `nom`) VALUES
(2, 'cafeteria'),
(3, 'lavage'),
(4, '24h/24h'),
(5, 'restaurant'),
(6, 'carte petroliere'),
(7, 'gasoil 50'),
(8, 'petrole bleu'),
(9, 'gaz bouteil'),
(10, 'GPL'),
(11, 'vidange'),
(12, 'melange 2T'),
(13, 'gasoil'),
(14, 'lubrifiants'),
(15, 'pneumatique'),
(16, 'diagnostique');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE IF NOT EXISTS `station` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `gouv` varchar(11) DEFAULT NULL,
  `ss` varchar(40) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `localite` varchar(30) DEFAULT NULL,
  `longitude` varchar(9) DEFAULT NULL,
  `latitude` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `gouv`, `ss`, `adresse`, `localite`, `longitude`, `latitude`) VALUES
(1, 'Ariana', 'ARIANA', 'Av. HABIB BOURGUIBA', 'ARIANA', '10.186004', '36.853462'),
(2, 'Ariana', 'MNIHLA', 'CENTRE VILLE MNIHLA', 'MNIHLA', '10.117053', '36.841229'),
(3, 'Ariana', 'SIDI AMOR BOUKHTIOUA', 'ROUTE DE RAOUED KM 10', 'S. A. BOUKHTIOUA', '10.178474', '36.937992'),
(4, 'Ariana', 'ARIANA', 'AVENUE FETHI ZOUHIR', 'ARIANA', '10.185726', '36.876612'),
(5, 'Ariana', 'CEBELET BEN AMMAR', 'ROUTE DE BIZERTE GP8', 'CEBELET BEN AMMAR', '10.109773', '36.906927'),
(6, 'Ariana', 'ENNASR 1', 'AV. JALLOULI', 'RIADH ENNASR', '10.165912', '36.859347'),
(7, 'Beja', 'BEJA', 'CENTRE VILLE', 'BEJA', '9.189568', '36.726887'),
(8, 'Beja', 'MEDJEZ EL BAB', 'CENTRE VILLE', 'MEDJEZ EL BAB', '9.612007', '36.648651'),
(9, 'Beja', 'GRIAAT PK 29 ( DIRECTION MEDJEZ EL BAB )', 'AUTOROUTE A3 PK 29 DIRECTION MEDJEZ EL BAB', 'GRIAAT', '9.792091', '36.655355'),
(10, 'Beja', 'GRIAAT pk 29 DIRECTION TUNIS', 'AUTOROUTE A3 pk29 DIRECTION TUNIS', 'GRIAAT', '9.791982', '36.653606'),
(11, 'Beja', 'GUEBELLAT', 'ROUTE DE BOUARADA', 'GUEBELLAT', '9.662602', '36.534112'),
(12, 'Beja', 'SIDI SMAIL', 'CENTRE VILLE', 'SIDI SMAIL', '9.109417', '36.599919'),
(13, 'Beja', 'SLOUGHIA', 'CENTRE VILLE', 'SLOUGHIA', '9.505850', '36.577876'),
(14, 'Beja', 'AMDOUN', 'ROUTE DE AIN DRAHAM', 'AMDOUN', '9.076396', '36.762864'),
(15, 'Beja', 'IDENE', 'ROUTE MEDJEZ EL BAB', 'IDENE', '9.671217', '36.649179'),
(16, 'Ben Arous', 'BIR EL KASAA ', 'MARCHE DE GROS', 'BIR EL KASAA ', '10.222910', '36.724006'),
(17, 'Ben Arous', 'BORJ CEDRIA', 'BORJ CEDRIA', 'BORJ CEDRIA', '10.397928', '36.702905'),
(18, 'Ben Arous', 'FOUCHANA', 'CENTRE VILLE', 'FOUCHANA', '10.164848', '36.693158'),
(19, 'Ben Arous', 'BOU MHEL', 'CENTRE VILLE', 'BOU MHEL', '10.309033', '36.735098'),
(20, 'Ben Arous', 'BEN AROUS (MC 34)', 'MC34 - YASMINET', 'BEN AROUS', '10.240038', '36.739284'),
(21, 'Ben Arous', 'RADES PORT', 'PORT DE RADES ', 'RADES', '10.279186', '36.801960'),
(22, 'Ben Arous', 'EL MOUROUJ', 'MOROUJ 3', 'EL MOUROUJ', '10.210451', '36.729299'),
(23, 'Ben Arous', 'HAMMAM LIF', 'GP1 HAMMAM LIF ', 'HAMMAM LIF', '10.348798', '36.722769'),
(24, 'Bizerte', 'BIZERTE', 'CENTRE VILLE', 'BIZERTE', '9.872611', '37.272829'),
(25, 'Bizerte', 'ZARZOUNA', 'ROUTE DE TUNIS', 'ZARZOUNA', '9.889922', '37.262454'),
(26, 'Bizerte', 'MENZEL BOURGUIBA', 'CENTRE VILLE', 'MENZEL BOURGUIBA', '9.793115', '37.153784'),
(27, 'Bizerte', 'MATEUR', 'CENTRE VILLE', 'MATEUR', '9.674961', '37.038156'),
(28, 'Bizerte', 'GHAR EL MELH', 'ROUTE DE TUNIS', 'GHAR EL MELH', '10.138212', '37.161824'),
(29, 'Bizerte', 'RAS DJEBEL', 'ROUTE DE BIZERTE', 'RAS DJEBEL', '10.098062', '37.224194'),
(30, 'Bizerte', 'KHETMINE', 'ROUTE DE BIZERTE', 'KHETMINE', '9.982435', '37.150263'),
(31, 'Bizerte', 'SEJNANE', 'ROUTE DE TABARKA', 'SEJNANE', '9.231010', '37.056805'),
(32, 'Gabès', 'GABES GP1', 'GABES GP 1 VERS GHANNOUCHE', 'GABES', '10.086190', '33.883839'),
(33, 'Gabès', 'TEBOULBOU', 'CENTRE VILLE', 'TEBOULBOU', '10.120423', '33.835583'),
(34, 'Gabès', 'MENZEL EL HABIB', 'CENTRE VILLE', 'MENZEL EL HABIB', '9.595223', '34.231366'),
(35, 'Gabès', ' KETTANA', 'ROUTE DE MEDENINE GP1', ' KETTANA', '10.205446', '33.757029'),
(36, 'Gabès', 'OUEDHREF', 'CENTRE VILLE', 'OUEDHREF', '9.975200', '33.982609'),
(37, 'Gabès', 'MARETH', 'ROUTE DE MEDENINE', 'MARETH', '10.282813', '33.637490'),
(38, 'Gabès', 'GABES VILLE ', 'CENTRE VILLE ', 'GABES VILLE ', '10.093996', '33.887885'),
(39, 'Gabès', 'GHANNOUCHE', 'ZONE INDUSTRIELLE', 'GHANNOUCHE', '10.073756', '33.899050'),
(40, 'Gabès', 'EL HAMMA', 'CENTRE VILLE ', 'EL HAMMA', '9.811010', '33.896234'),
(41, 'Gafsa', 'EL GUETTAR', 'CENTRE VILLE ', 'EL GUETTAR', '8.950014', '34.339058'),
(42, 'Gafsa', 'METLAOUI', 'CENTRE VILLE ', 'METLAOUI', '8.401687', '34.316011'),
(43, 'Gafsa', 'GAFSA VILLE', 'CENTRE VILLE', 'GAFSA VILLE', '8.792322', '34.414980'),
(44, 'Gafsa', 'SIDI AICH', 'CENTRE VILLE', 'SIDI AICH', '8.783114', '34.731545'),
(45, 'Gafsa', 'MOULARES', 'CENTRE VILLE', 'MOULARES', '8.270247', '34.491612'),
(46, 'Gafsa', 'GAFSA ROUTE DE TOZEUR', 'ROUTE DE TOZEUR', 'GAFSA', '8.762754', '34.422703'),
(47, 'Jendouba', 'OUCHTATA', 'ROUTE DE TABARKA GP7', 'OUCHTATA', '8.986109', '36.959628'),
(48, 'Jendouba', 'JENDOUBA VILLE', 'CENTRE VILLE', 'JENDOUBA', '8.787436', '36.503780'),
(49, 'Jendouba', 'TABARKA', 'ROUTE DE AIN DRAHAM', 'TABARKA', '8.759338', '36.946075'),
(50, 'Jendouba', 'JENDOUBA GP17', 'ROUTE DE AIN DRAHAM', 'JENDOUBA', '8.755193', '36.518532'),
(51, 'Jendouba', 'BALTA', 'BALTA', 'BALTA', '8.929547', '36.700158'),
(52, 'Jendouba', 'BOUSSALEM', 'BOUSSALEM', 'BOUSSALEM', '8.980596', '36.613866'),
(53, 'Kairouan', 'HAJEB EL AYOUN ', 'ROUTE DE KAIROUAN', 'HAJEB EL AYOUN ', '9.517888', '35.402329'),
(54, 'Kairouan', 'EL ALAA', 'CENTRE VILLE', 'EL ALAA', '9.562377', '35.618686'),
(55, 'Kairouan', 'HAFFOUZ', 'CENTRE VILLE', 'HAFFOUZ', '9.669131', '35.638578'),
(56, 'Kairouan', 'KAIROUAN', 'CENTRE VILLE', 'KAIROUAN', '10.094479', '35.674179'),
(57, 'Kairouan', 'S.A.BOU HADJILA', 'ROUTE GP2', 'S.A.BOU HADJILA', '10.047623', '35.388565'),
(58, 'Kairouan', 'NASRALLAH', 'MC 98', 'NASRALLAH', '9.840092', '35.344217'),
(59, 'Kairouan', 'EL BATEN', 'ROUTE GP3', 'EL BATEN', '10.000110', '35.712659'),
(60, 'Kairouan', 'MENZEL MEHIRI', 'ROUTE DE KAIROUAN MC98', 'MENZEL MEHIRI', '9.854299', '35.426992'),
(61, 'Kairouan', 'CHERARDA', 'CHERARDA GP2 ROUTE KAIROUAN', 'CHERARDA', '10.033807', '35.112898'),
(62, 'Kasserine', 'KASSERINE', 'CENTRE VILLE', 'KASSERINE', '8.819557', '35.168204'),
(63, 'Kasserine', 'FERIANA', 'CENTRE VILLE', 'FERIANA', '8.570283', '34.947754'),
(64, 'Kasserine', 'THALA', 'CENTRE VILLE', 'THALA', '8.669227', '35.578240'),
(65, 'Kasserine', 'M.BEL ABBES', 'CENTRE VILLE', 'M.BEL ABBES', '8.522113', '34.747496'),
(66, 'Kasserine', 'FOUSSANA', 'CENTRE VILLE', 'FOUSSANA', '8.630080', '35.352770'),
(67, 'Kasserine', 'SIDI SHIL', 'CENTRE VILLE', 'SIDI SHIL', '8.732769', '35.630899'),
(68, 'Kasserine', 'SBEITLA', 'CENTRE VILLE', 'SBEITLA', '9.130929', '35.230268'),
(69, 'Kasserine', 'EL AYOUN', 'CENTRE VILLE', 'EL AYOUN', '8.886212', '35.538929'),
(70, 'Kasserine', 'SBIBA', 'CENTRE VILLE', 'SBIBA', '9.074414', '35.549716'),
(71, 'Kebili', 'KEBILI', 'CENTRE VILLE', 'KEBILI', '8.974633', '33.716297'),
(72, 'Kebili', 'DOUZ', 'ROUTE DE KEBILI', 'DOUZ', '9.022988', '33.474843'),
(73, 'Kebili', 'ROUTE EL MANSOURA', 'ROUTE EL MANSOURA', 'KEBILI', '8.955396', '33.714961'),
(74, 'Kebili', 'SOUK LAHAD', 'SOUK LAHAD', 'SOUK LAHAD', NULL, NULL),
(75, 'Kebili', 'EL FAOUAR', 'EL FAOUAR', 'KEBILI', '8.686351', '33.361762'),
(76, 'Kef', 'DAHMANI', 'CENTRE VILLE', 'DAHMANI', '8.830930', '35.945687'),
(77, 'Kef', 'LE KEF', 'CENTRE VILLE', 'LE KEF', '8.705172', '36.170026'),
(78, 'Kef', 'LE SERS', 'CENTRE VILLE', 'LE SERS', '9.021843', '36.072087'),
(79, 'Kef', 'SAKIET S.YOUSSEF', 'ROUTE DU KEF', 'SAKIET S.YOUSSEF', '8.357239', '36.215737'),
(80, 'Kef', 'DJERISSA', 'CENTRE VILLE', 'DJERISSA', '8.630530', '35.844825'),
(81, 'Kef', 'TOUIREF', 'ROUTE DE JENDOUBA', 'TOUIREF', '8.590646', '36.342648'),
(82, 'Kef', 'EL KSOUR', 'EL KSOUR', 'DAHMANI', '8.895929', '35.889729'),
(83, 'Mahdia', 'SOUASSI', 'CENTRE VILLE', 'SOUASSI', '10.552357', '35.347376'),
(84, 'Mahdia', 'OULED CHAMEKH', 'CENTRE VILLE', 'OULED CHAMEKH', '10.320308', '35.489010'),
(85, 'Mahdia', 'MENZEL HACHED', 'CENTRE VILLE', 'MENZEL HACHED', '10.279477', '35.184344'),
(86, 'Mahdia', 'SIDI ALOUENE', 'CENTRE VILLE', 'SIDI ALOUENE', '10.931969', '35.381117'),
(87, 'Mahdia', 'REJICHE', 'ROUTE DE MAHDIA', 'REJICHE', '11.046364', '35.474104'),
(88, 'Mahdia', 'KSOUR ESSEF (ROUTE D\'EL DJEM)', 'ROUTE D\'EL DJEM', 'KSOUR ESSEF', '10.976846', '35.414393'),
(89, 'Mahdia', 'EL DJEM', 'ROUTE DE M\'SAKEN', 'EL DJEM', '10.696304', '35.313573'),
(90, 'Mahdia', 'CHEBBA', 'ROUTE DE KSOUR ESSEF', 'CHEBBA', '11.084878', '35.249818'),
(91, 'Mahdia', 'MELLOULECH', 'ROUTE DE CHEBBA', 'MELLOULECH', '11.039367', '35.167468'),
(92, 'Mahdia', 'KSOUR ESSEF ( ROUTE DE SFAX)', 'ROUTE MC 82', 'KSOUR ESSEF ', '11.000955', '35.408935'),
(93, 'Manouba', 'DEN DEN', 'CENTRE VILLE', 'DEN DEN', '10.117274', '36.803350'),
(94, 'Manouba', 'BORJ EL AMRI', 'ROUTE GP5', 'BORJ EL AMRI', '9.877787', '36.711525'),
(95, 'Manouba', 'KSAR SAID', 'ROUTE DE OUED ELLIL', 'KSAR SAID', '10.102916', '36.816429'),
(96, 'Medenine', 'MEDENINE', 'CENTRE VILLE', 'MEDENINE', '10.486968', '33.348752'),
(97, 'Medenine', 'BEN GUERDANE', 'CENTRE VILLE', 'BEN GUERDANE', '11.217315', '33.140028'),
(98, 'Medenine', 'HOUMT SOUK', 'CENTRE VILLE', 'DJERBA', '10.858800', '33.872056'),
(99, 'Medenine', 'HASSI AMOR', 'CENTRE VILLE', 'HASSI AMOR', '10.614902', '33.363933'),
(100, 'Medenine', 'JORF DJERBA', 'ROUTE DE GABES', 'JORF DJERBA', '10.731705', '33.697262'),
(101, 'Medenine', 'EL KANTARA ZARZIS', 'ROUTE DE JERBA', 'EL KANTARA ZARZIS', '10.947892', '33.627252'),
(102, 'Medenine', 'ZARZIS', 'CENTRE VILLE', 'ZARZIS', '11.092181', '33.498091'),
(103, 'Medenine', 'SEDGHIANE', 'DJERBA SEDGHIANE', 'DJERBA', '10.933331', '33.839084'),
(104, 'Monastir', 'MONASTIR', 'CENTRE VILLE', 'MONASTIR', '10.827747', '35.771356'),
(105, 'Monastir', 'BEMBLA', 'CENTRE VILLE', 'BEMBLA', '10.791877', '35.692583'),
(106, 'Monastir', 'KSAR HELAL', 'ROUTE BEMBLA - MOKNINE', 'KSAR HELAL', '10.874314', '35.661039'),
(107, 'Monastir', 'MOKNINE', 'CENTRE VILLE', 'MOKNINE', '10.896202', '35.637485'),
(108, 'Monastir', 'JEMMAL', 'ROUTE DE ZARMEDINE', 'JEMMAL', '10.752559', '35.610616'),
(109, 'Monastir', 'TOUZA', 'ROUTE MOKNINE-JEMMEL', 'TOUZA', '10.819285', '35.630465'),
(110, 'Monastir', 'OUERDANINE', 'ROUTE DE M\'SAKEN', 'OUERDANINE', '10.667566', '35.715180'),
(111, 'Monastir', 'SIDI BENNOUR', 'ROUTE DE MAHDIA', 'SIDI BENNOUR', '10.915396', '35.532920'),
(112, 'Nabeul', 'NABEUL', 'CENTRE VILLE', 'NABEUL', '10.730737', '36.457619'),
(113, 'Nabeul', 'AZMOUR', 'CENTRE VILLE', 'AZMOUR', '11.007963', '36.923968'),
(114, 'Nabeul', 'GROMBALIA', 'CENTRE VILLE', 'GROMBALIA', '10.499663', '36.598350'),
(115, 'Nabeul', 'KORBA', 'CENTRE VILLE', 'KORBA', '10.858336', '36.572840'),
(116, 'Nabeul', 'SOLIMAN', 'ROUTE DE BENI KHALLED', 'SOLIMAN', '10.514692', '36.690180'),
(117, 'Nabeul', 'MAAMOURA', 'CENTRE VILLE', 'MAAMOURA', '10.801129', '36.473330'),
(118, 'Nabeul', 'EL MRAZKA', 'ROUTE DE NABEUL', 'HAMMAMET', '10.673052', '36.426981'),
(119, 'Nabeul', 'TOZOGHRANE', 'ROUTE DE HAOUARIA', 'TOZOGHRANE', '10.848693', '36.896692'),
(120, 'Nabeul', 'DAR ALLOUCHE ', 'CENTRE VILLE', 'DAR ALLOUCHE ', '11.048776', '36.971651'),
(121, 'Nabeul', 'DOUELA', 'POINT DE RAVITAILLEMENT ROUTIER DOUALA', 'NABEUL', '10.612144', '36.827632'),
(122, 'Nabeul', 'BOUARGOUB', 'ROUTE DE GROMBALIA', 'BOUARGOUB', '10.558321', '36.522571'),
(123, 'Nabeul', 'BENI KHALLED ', 'CENTRE VILLE', 'BENI KHALLED ', '10.589514', '36.653068'),
(124, 'Nabeul', 'MENZEL SALEM', 'ROUTE DE HAOUARIA', 'MENZEL SALEM', '10.973224', '37.032534'),
(125, 'Nabeul', 'MENZEL TEMIME', 'ROUTE DE KELIBIA', 'MENZEL TEMIME', '11.001235', '36.783179'),
(126, 'Sfax', 'SKHIRA', 'ROUTE DE GABES', 'SKHIRA', '10.069507', '34.298917'),
(127, 'Sfax', 'GHRAIBA', 'CENTRE VILLE', 'GHRAIBA', '10.211459', '34.493360'),
(128, 'Sfax', 'BIR ALI BEN KHELIFA', 'ROUTE DE SKHIRA', 'BIR ALI BEN KHELIFA', '10.093529', '34.739416'),
(129, 'Sfax', 'KERKENNAH', 'ERRAMLA', 'KERKENNAH', '11.203380', '34.705836'),
(130, 'Sfax', 'MENZEL CHAKER', 'ROUTE GP13 KM 45', 'MENZEL CHAKER', '10.371581', '34.969740'),
(131, 'Sfax', 'SFAX GP1', 'ROUTE DE TUNIS KM 1', 'SFAX', '10.762053', '34.753496'),
(132, 'Sfax', 'TENIOUR', 'ROUTE DE TUNIS KM 0.5', 'SFAX', '10.759861', '34.747318'),
(133, 'Sfax', 'PIC-VILLE', 'PIC-VILLE', 'SFAX', '10.751826', '34.733933'),
(134, 'Sfax', 'JEBENIANA', 'ROUTE DE MAHDIA', 'JEBENIANA', '10.906735', '35.021178'),
(135, 'Sfax', 'PORT DE SFAX', 'PORT DE SFAX', 'SFAX', '10.756548', '34.725641'),
(136, 'Sfax', 'CITE EL MOEZ', 'ROUTE DE GABES', 'SFAX', '10.703757', '34.684178'),
(137, 'Sfax', 'MAHRES', 'CENTRE VILLE', 'MAHRES', '10.496507', '34.521475'),
(138, 'Sfax', 'EL HANCHA', 'ROUTE DE TUNIS GP1', 'EL HANCHA', '10.733535', '35.145373'),
(139, 'Sfax', 'POUDRIERE SFAX 2', 'ZONE INDUSTRIELLE POUDRIERE', 'SFAX', '10.778943', '34.759868'),
(140, 'Sfax', 'POUDRIERE GPL ', ' POUDRIERE', ' POUDRIERE', '10.778655', '34.759484'),
(141, 'Sfax', 'AGAREB', 'ROUTE DE BIR ALI BEN KHLIFA GP14', 'AGAREB', '10.515321', '34.730203'),
(142, 'Sfax', 'SIDI MANSOUR', 'SIDI MANSOUR', 'SFAX', '10.787721', '34.756615'),
(143, 'Sfax', 'CITE EL HABIB', 'CITE EL HABIB', 'SFAX', '10.724730', '34.713888'),
(144, 'Sidi Bouzid', 'SIDI BOUZID', 'CENTRE VILLE', 'SIDI BOUZID', '9.491990', '35.039053'),
(145, 'Sidi Bouzid', 'JELMA', 'CENTRE VILLE', 'JELMA', '9.418229', '35.269856'),
(146, 'Sidi Bouzid', 'BEN AOUN', 'ROUTE DE GAFSA', 'BEN AOUN', '9.142879', '34.850111'),
(147, 'Sidi Bouzid', 'OULED HAFFOUZ', 'ROUTE DE SFAX', 'OULED HAFFOUZ', '9.669132', '35.638574'),
(148, 'Sidi Bouzid', 'SOUK JEDID', 'ROUTE DE MEKNASSI', 'SOUK JEDID', '9.560152', '34.934223'),
(149, 'Sidi Bouzid', 'REGUEB', 'ROUTE DE SFAX', 'REGUEB', '9.796318', '34.861066'),
(150, 'Sidi Bouzid', 'MEKNASSY', 'CENTRE VILLE', 'MEKNASSY', '9.617538', '34.608744'),
(151, 'Sidi Bouzid', 'CEBBELET OULED ASKAR', 'CEBBELET OULED ASKAR', 'SIDI BOUZID', '9.284225', '35.175697'),
(152, 'Siliana', 'ROUHIA', 'CENTRE VILLE', 'ROUHIA', '9.057125', '35.646706'),
(153, 'Siliana', 'SILIANA', 'CENTRE VILLE', 'SILIANA', '9.374530', '36.083756'),
(154, 'Siliana', 'GAAFOUR', 'ROUTE BOUARADA', 'GAAFOUR', '9.327547', '36.332690'),
(155, 'Siliana', 'BARGOU', 'CENTRE VILLE', 'BARGOU', '9.569742', '36.093635'),
(156, 'Siliana', 'BOUARADA', 'ROUTE D\'EL FAHS', 'BOUARADA', '9.630012', '36.351596'),
(157, 'Siliana', 'MAKTAR', 'CENTRE VILLE', 'MAKTAR', '9.203055', '35.855406'),
(158, 'Sousse', 'SOUSSE MOHAMED ALI', 'AV. MOHAMED ALI', 'SOUSSE', '10.640512', '35.822955'),
(159, 'Sousse', 'DAR BEL OUAER', 'ROUTE KAIROUAN', 'DAR BEL OUAER', '10.327015', '36.041066'),
(160, 'Sousse', 'BEL AOUM', 'ROUTE KONDAR', 'BEL AOUM', '10.401457', '35.902599'),
(161, 'Sousse', 'KONDAR', 'CENTRE VILLE', 'KONDAR', '10.300063', '35.932220'),
(162, 'Sousse', 'SOUSSE REPUBLIQUE', 'AV. REPUBLIQUE', 'SOUSSE', '10.633222', '35.831487'),
(163, 'Sousse', 'M\'SAKEN ', 'CENTRE VILLE', 'M\'SAKEN ', '10.574112', '35.732382'),
(164, 'Sousse', 'KALAA EL KEBIRA', 'CENTRE VILLE', 'KALAA EL KEBIRA', '10.550723', '35.869034'),
(165, 'Sousse', 'SIDI BOUALI', 'ROUTE SOUSSE GP1', 'SIDI BOUALI', '10.462899', '35.963223'),
(166, 'Sousse', 'KANTAOUI', 'ZONE TOURISTIQUE', 'KANTAOUI', '10.596505', '35.886673'),
(167, 'Sousse', 'HAMMAM SOUSSE', 'CENTRE VILLE', 'HAMMAM SOUSSE', '10.597621', '35.858809'),
(168, 'Sousse', 'SIDI KHELIFA', ' AUTOROUTE A1 PK72', 'SIDI KHLIFA', '10.425772', '36.247465'),
(169, 'Sousse', 'SIDI EL HENI', 'CENTRE VILLE', 'SIDI EL HENI', '10.304792', '35.680782'),
(170, 'Sousse', 'SAHLOUL', 'SAHLOUL', 'HAMMAM SOUSSE', '10.594874', '35.843863'),
(171, 'Sousse', 'SOUK EL AHAD', 'SOUK EL AHAD - ROUTE MSAKEN ', 'SOUSSE', '10.628718', '35.813833'),
(172, 'Tataouine', 'TATAOUINE VILLE', 'CENTRE VILLE', 'TATAOUINE ', '10.450658', '32.931642'),
(173, 'Tataouine', 'BIR LAHMAR', 'ROUTE DE TATAOUINE', 'BIR LAHMAR', '10.442723', '33.177564'),
(174, 'Tataouine', 'REMADA', 'ROUTE DE TATAOUINE', 'REMADA', '10.398559', '32.319943'),
(175, 'Tataouine', 'SMAR', 'ROUTE DE TATAOUINE', 'SMAR', '10.811979', '33.006290'),
(176, 'Tataouine', 'NOUVELLE TATAOUINE', 'ROUTE DE MEDENINE', 'NOUVELLE TATAOUINE', '10.460758', '32.968707'),
(177, 'Tozeur', 'TOZEUR', 'CENTRE VILLE', 'TOZEUR ', '8.136207', '33.923771'),
(178, 'Tozeur', 'DEGACHE', 'ROUTE DE TOZEUR', 'DEGACHE', '8.208058', '33.978124'),
(179, 'Tozeur', 'ROUTE DE GAFSA ', 'ROUTE DE GAFSA ', 'TOZEUR', '8.141658', '33.936988'),
(180, 'Tozeur', 'NAFTA', 'ROUTE DE TOZEUR', 'NAFTA', '7.895107', '33.873760'),
(181, 'Tunis', 'AV.REPUBLIQUE', 'AV.REPUBLIQUE', 'TUNIS', '10.188331', '36.800018'),
(182, 'Tunis', 'LA GOULETTE', 'CENTRE VILLE', 'LA GOULETTE', '10.308082', '36.821180'),
(183, 'Tunis', 'AV.BOUGATFA', 'Av.BOUGATFA - BARDO', 'TUNIS', '10.150718', '36.811884'),
(184, 'Tunis', 'AV.HEDI SAIDI', 'AV.HEDI SAIDI', 'TUNIS', '10.167655', '36.813425'),
(185, 'Tunis', 'AV.CARTHAGE', 'AV.CARTHAGE', 'TUNIS', '10.183053', '36.790398'),
(186, 'Tunis', 'SIDI BOUSAID', 'CENTRE VILLE', 'SIDI BOUSAID', '10.341823', '36.871561'),
(187, 'Tunis', 'AV.MOHAMED V', 'AV.MOHAMED V', 'TUNIS', '10.182881', '36.817844'),
(188, 'Tunis', 'SORTIE SUD Z4', 'SORTIE SUD Z4', ' TUNIS', '10.192339', '36.786749'),
(189, 'Tunis', 'ENTREE SUD', 'ENTREE SUD (VIA AUTOROUTE)', 'TUNIS', '10.204851', '36.752451'),
(190, 'Tunis', 'BERGES DU LAC', 'ROUTE DE LA MARSA GP9', 'TUNIS', '10.222129', '36.834513'),
(191, 'Tunis', 'CITE OLYMPIQUE', 'CITE OLYMPIQUE', 'TUNIS', '10.194920', '36.839866'),
(192, 'Tunis', 'EZZOUHOUR', 'BOULEVARD MOHAMED BOUAZIZI-CITE EZZOUHOUR', 'TUNIS', '10.119466', '36.794426'),
(193, 'Tunis', 'GAMMARTH', 'ROUTE DE RAOUED', 'GAMMARTH', '10.293901', '36.896132'),
(194, 'Tunis', 'DJEBEL JELLOUD', 'ROUTE DE BEN AROUS', 'DJEBEL JELLOUD', '10.202877', '36.772518'),
(195, 'Tunis', 'AL AOUINA', 'DAR FADHAL', 'AL AOUINA', '10.257061', '36.854476'),
(196, 'Zaghouan', 'ZAGHOUAN', 'CENTRE VILLE', 'ZAGHOUAN ', '10.142097', '36.403668'),
(197, 'Zaghouan', 'EL FAHS ', 'CENTRE VILLE', 'EL FAHS ', '9.904977', '36.377395'),
(198, 'Zaghouan', 'BIR M\'CHERGA', 'ROUTE GP3', 'BIR M\'CHERGA', '9.957376', '36.511977'),
(199, 'Zaghouan', 'HAMMAM ZRIBA', 'ROUTE MC 28', 'HAMMAM ZRIBA', '10.215483', '36.360960'),
(200, 'Zaghouan', 'ENNADHOUR', 'ROUTE D\'ENFIDHA', 'ENNADHOUR', '10.061099', '36.113775'),
(201, 'Monastir', 'BORJINE', 'AUTOROUTE A1 PK 156 DIRECTION TUNIS', 'BORJINE (MOUNASTIR)', '10.614714', '35.567281'),
(202, 'Mahdia', 'PK192 EL JEM', 'AUTOROUTE A1 PK 192 DIRECTION SFAX', 'EL JEM (MAHDIA)', '10.650333', '35.258456'),
(203, 'Sidi Bouzid', 'MENZEL BOUZAIENE', 'MENZEL BOUZAIENE', 'MENZEL BOUZAIENE (SIDI BOUZID)', '9.414017', '34.573108'),
(204, 'Sfax', 'EL BDERNA', 'CENTRE VILLE', 'EL BDERNA (SFAX)', '10.841384', '34.871713'),
(205, 'Sfax', 'BOUJARBOUA', 'CENTRE VILLE', 'BOUJARBOUA (SFAX)', '10.656295', '35.028344'),
(206, 'Tozeur', 'HAZOUA', 'CENTRE VILLE', 'HAZOUA (TOZEUR)', '7.612003', '33.743777'),
(207, 'Kebili', 'KEBELI GPL', 'KEBELI', 'KEBELI', '8.955398', '33.714965'),
(208, 'Ben Arous', 'MORNAG', 'CENTRE VILLE', 'MORNAG (BEN AROUS)', '10.305117', '36.692188');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `roles` json DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `code` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `age`, `email`, `profession`, `roles`, `password`, `code`) VALUES
(1, 'Nadia Ouanness', 22, 'seif@gmail.com', 'ingenieur informatique GL', '[\"ROLE_USER\"]', '$2a$12$KzZULkejqWy6JPZGAaSEDOG4xQkQFZhCjx2ZwMFpZBIoTCOY1EFeq', 9768);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
