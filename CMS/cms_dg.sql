-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 25 mars 2018 à 18:58
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cms_dg`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Mot_de_passe` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`Id`, `Nom`, `Mot_de_passe`) VALUES
(1, 'Degust', '$2y$10$oH9p9eiYQ7tVhV899WXBA.7Qc7ApeN/fLilQLCEPEmGffjAT/A30S'),
(2, 'ggc', '$2y$10$4svx3sLI6OP8YCEeDhuls.0zA3XXWuFCJtPjMhPicqBIqqpmyQ67m'),
(3, 'Degustateur', '$2y$10$O2Bpn3zegaq8HYCACaqvS.GGI8t0M/dWNx4enAoYBeXG3w5GNDq4a'),
(4, 'dgcreation', '$2y$10$e.CbSjovA0XhCPFPeFL3C.0ltC/.qYhRq.L.ftr93jU/wb9DJs8a.'),
(5, 'Test', '$2y$10$KslFvgvCTPOZJnYLLgMvY.ukVqDPsKRKPXuZtY2ztxLk5Mgz92D2K'),
(6, 'Pingouin', '$2y$10$lCHCOn59I34x3l.JosZk4.Iq6h3Yp3rP72.RI9Qo162/sK21yTWRS');

-- --------------------------------------------------------

--
-- Structure de la table `table_actuel`
--

DROP TABLE IF EXISTS `table_actuel`;
CREATE TABLE IF NOT EXISTS `table_actuel` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT,
  `Id_admin` smallint(6) DEFAULT NULL,
  `Page` varchar(255) NOT NULL,
  `Numero_zone` smallint(6) NOT NULL,
  `Texte` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `table_actuel`
--

INSERT INTO `table_actuel` (`Id`, `Id_admin`, `Page`, `Numero_zone`, `Texte`) VALUES
(1, 1, 'index', 1, '819 346-4748<br />2222 King Estrrrrrrrdsdaasdasdasdasdasdasdsad'),
(2, 1, 'index', 2, 'Un sous-titre de base'),
(3, 1, 'index', 3, '<p class=\"moyenne\">Ce n\'est pas par hasard que les propri&eacute;taires ont choisi le nom de leur &eacute;tablissement. Le terme \"Cantine Moderne\" d&eacute;crit parfaitement l\'ambiance d&eacute;contract&eacute;e que souhaitent cr&eacute;er les propri&eacute;taires soient un lieu rassembleur, accessible, accueillant et sans pr&eacute;tention.</p>\n<p class=\"moyenne\">Que ce soit pour d&eacute;jeuners, d&icirc;ners, soupers ou m&ecirc;me pour d&eacute;guster &agrave; la maison, le D&eacute;gustateur vous offre une cuisine familiale de qualit&eacute;e,savoureuse et pr&eacute;par&eacute;e avec soin.</p>\n<p class=\"moyenne\">Le D&eacute;gustateur est le genre de lieu ou il est bon de se retrouver entre amis pour y d&eacute;guster une poutine surprenante, des Hamburgers revisit&eacute;s et surout sa g&eacute;n&eacute;reuse pizza. Ici tout est fait maison avec le souci du d&eacute;tail...On s\'y sent comme chez soi!</p>\n<p class=\"moyenne\">Red&eacute;couvrer le plaisir de d&eacute;guster!</p>'),
(4, 1, 'index', 4, 'Un pied de page basic'),
(47, 3, 'index', 1, '819 346-4748<br />2222 King Est'),
(48, 3, 'index', 2, 'D&eacute;gustateur'),
(49, 3, 'index', 3, '<p class=\"moyenne\">Ce n\'est pas par hasard que les propri&eacute;taires ont choisi le nom de leur &eacute;tablissement. Le terme \"Cantine Moderne\" d&eacute;crit parfaitement l\'ambiance d&eacute;contract&eacute;e que souhaitent cr&eacute;er les propri&eacute;taires soient un lieu rassembleur, accessible, accueillant et sans pr&eacute;tention.</p>\n<p class=\"moyenne\">Que ce soit pour d&eacute;jeuners, d&icirc;ners, soupers ou m&ecirc;me pour d&eacute;guster &agrave; la maison, le D&eacute;gustateur vous offre une cuisine familiale de qualit&eacute;e,savoureuse et pr&eacute;par&eacute;e avec soin.</p>\n<p class=\"moyenne\">Le D&eacute;gustateur est le genre de lieu ou il est bon de se retrouver entre amis pour y d&eacute;guster une poutine surprenante, des Hamburgers revisit&eacute;s et surout sa g&eacute;n&eacute;reuse pizza. Ici tout est fait maison avec le souci du d&eacute;tail...On s\'y sent comme chez soi!</p>\n<p class=\"moyenne\">Red&eacute;couvrer le plaisir de d&eacute;guster!</p>'),
(50, 3, 'index', 4, 'Heures d\'ouvertures:'),
(51, 3, 'index', 5, '<li>Lundi-Jeudi: <span class=\"petite\">6h00 &agrave; 20h00</span></li>\n<li>Vendredi: <span class=\"petite\">6h00 &agrave; 21h00</span></li>\n<li>Samedi: <span class=\"petite\">6h00 &agrave; 20h00</span></li>\n<li>Dimanche: <span class=\"petite\">7h00 &agrave; 20h00</span></li>'),
(52, 3, 'index', 6, 'Promotions'),
(53, 3, 'index', 7, '<p id=\"mce_8\" class=\"grande\">Moyenne Garnie<br />Frites + Rondelles<br />4 Canettes<br />25,95$</p>'),
(54, 3, 'index', 8, 'Heures de livraisons:'),
(55, 3, 'index', 9, '<li>11h &agrave; 14h</li>\n<li>16h &agrave; la fermeture</li>'),
(56, 3, 'index', 10, 'Minimum 9$ avant taxes'),
(57, 3, 'index', 11, 'Nouveau'),
(58, 3, 'index', 12, 'Crevettes<br />+<br />C&ocirc;tes lev&eacute;es'),
(59, 3, 'index', 13, 'Menu livraison et comptoir'),
(60, 3, 'index', 14, 'menu plus &eacute;labor&eacute; en salle &agrave; manger'),
(61, 3, 'index', 15, '*prix sujet &agrave; changement sans pr&eacute;avis'),
(62, 3, 'index', 16, '2222 King Est<br />Sherbrooke<br />819 346-4748'),
(63, 3, 'index', 17, 'Suivez-nous sur<br /><a title=\"Notre page facebook\" href=\"https://www.facebook.com/cantine.moderne/\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icone_facebook.png\" alt=\"icone facebook\" /></a>'),
(64, 3, 'Historique', 1, '819 346-4748<br />2222 King Est'),
(65, 3, 'Historique', 2, 'Historique'),
(66, 3, 'Historique', 3, '<!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">1981-1989</strong> Ouverture du premier restaurant D&eacute;gustateur (coin Quatre-Saisons et 12e avenue &agrave; Sherbrooke) par Marcel &amp; Mario Gagn&eacute;. Ce restaurant est ouvert 24h.</p>\n<p class=\"moyenne\"><strong class=\"grande\">1985</strong> M. Mario Gagn&eacute; d&eacute;cide d&rsquo;ouvrir le Petit D&eacute;gustateur situ&eacute; sur la King Est, ce nom lui vient surtout du fait qu&rsquo;il n&rsquo;&eacute;tait pas ouvert 24h. &Agrave; la fin des ann&eacute;es 1980, M. Marcel Gagn&eacute; d&eacute;cide de fermer le premier restaurant pour partir un autre projet. Le restaurant le Petit D&eacute;gustateur lui reste ouvert sous la direction de M. Mario Gagn&eacute; jusqu&rsquo;au 30 septembre 2010.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2004</strong> Michel Gagn&eacute; (Fils de Marcel et fr&egrave;re de Mario) Ouvre le D&eacute;gustateur Express sur la rue Belv&eacute;d&egrave;re. Ce nouveau resto se concentre sur les commandes au comptoir et la livraison.</p>'),
(67, 3, 'Historique', 4, '<!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">2010</strong> &Agrave; la fin de 2010, Michel Gagn&eacute; prend la rel&egrave;ve du Petit D&eacute;gustateur. Apr&egrave;s quelques mois de r&eacute;novation, son statut passe de cantine &agrave; restaurant familiale. Toujours en gardant le cachet de l&rsquo;entreprise, le nouveau look et le nouveau menu lui donne un nouveau regain.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2012</strong> Ouverture de celui situ&eacute; &agrave; Bromptonville. &Ocirc; Petit D&eacute;gustateur restera dans la famille Gagn&eacute; jusqu&rsquo;en 2015.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2014</strong> C&rsquo;est le d&eacute;but du service de livraison sur la rue King !</p>'),
(68, 3, 'Historique', 5, '<!-- Bloc p --><!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">2016 &agrave; aujourd&rsquo;hui</strong> Achat de l&rsquo;entreprise familiale qui &eacute;tait alors supervis&eacute; par Jonathan Gagn&eacute; (fils de Michel) Les nouveaux propri&eacute;taires&nbsp;: Patrick Faucher et sa conjointe Nadia Lemay ont su garder les racines construites par la famille Gagn&eacute;, Nouvel image, changement de logo et implantation du concept &laquo;&nbsp;Cantine Moderne&nbsp;&raquo;. Ce petit resto de quartier se d&eacute;marque par sa nourriture maison ainsi que son accueil chaleureux.</p>'),
(69, 3, 'Historique', 6, '2222 King este<br />Sherbrooke<br />819 346-4748'),
(70, 3, 'Historique', 7, 'Suivez-nous sur<br /><a title=\"Notre page facebook\" href=\"https://www.facebook.com/cantine.moderne/\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icone_facebook.png\" alt=\"icone facebook\" /></a>'),
(71, 4, 'index', 1, 'DGcr&eacute;ationWeb'),
(72, 4, 'index', 2, 'Cr&eacute;ation de sites web'),
(73, 4, 'index', 3, 'DGcr&eacute;ationweb est une entreprise de conception de sites internet principalement orient&eacute;e vers les PME. Que ce soit le prix ou encore le CMS, tout est pens&eacute; pour satisfaire ces derni&egrave;res au maximum. J\'ai d&eacute;cid&eacute; de cr&eacute;er cette compagnie parce que j\'adore le Web, mais &eacute;galement pour aider les autres petites entreprises &agrave; se tailler une place sur internet sans toutefois avoir &agrave; d&eacute;bourser des milliers de dollars et sans avoir &agrave; se casser la t&ecirc;te. Alors, que se soit pour un site de type vitrine, pour un site de commerce en ligne ou simplement parce que vous avez des questions, n\'h&eacute;sitez pas &agrave; me contactez en m\'&eacute;crivant ou en m\'appelant, il me fera un plaisir de vous r&eacute;pondre!'),
(74, 4, 'index', 4, 'Les avantages de chosir DGcr&eacute;ationWeb aaaaah!'),
(75, 4, 'index', 5, 'Voici les 3 principaux avantages de me choisir.'),
(76, 4, 'index', 6, 'Pourquoi me choisir?'),
(77, 4, 'index', 7, 'En me choisissant pour faire la cr&eacute;ation de votre site internet, vous choisissez un passion&eacute; du web voulant donner le meilleur de lui-m&ecirc;me pour que les premiers pas de votre entreprise sur le web soient parfaits. En plus de chosir quelqu\'un qui aura votre projet &agrave; coeur, vous b&eacute;n&eacute;ficierai de nombreux avantages qui vous permetterons en autres d\'&eacute;conomiser tout en &eacute;tant ind&eacute;pendant.'),
(78, 4, 'index', 8, 'N\'h&eacute;sitez pas &agrave; <a class=\"lien_important\" title=\"Page me contactez\" href=\"contactez.php\">m\'&eacute;crire/m\'appeller</a> pour toutes questions!<br />En me choisissant, vous &ecirc;tes gagnants! RA'),
(79, 4, 'index', 9, '&Agrave; propos de moi'),
(80, 4, 'index', 10, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; <em>mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.jasldkhsadlsdlhaljsdhlsadjhdlashdlajhdasha</em>'),
(81, 4, 'index', 11, 'WOW'),
(82, 4, 'index', 12, 'Me contactez'),
(83, 4, 'index', 13, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(84, 4, 'contactez', 1, 'DGcr&eacute;ationWeb'),
(85, 4, 'contactez', 2, 'Les infos'),
(86, 4, 'contactez', 3, 'Pour toutes informations suppl&eacute;mentaires, veuillez me contacter au num&eacute;ro suivant <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a> ou par courriel &agrave; l\'adresse courriel suivante: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a>'),
(87, 4, 'contactez', 4, 'Mon horaire'),
(88, 4, 'contactez', 5, 'Vous pouvez me contacter:'),
(89, 4, 'contactez', 6, '<li>Lundi: 17h30-20h30</li>\n<li>Mardi: 9h00-12h00 / 18h30-20h30</li>\n<li>Mercredi: 19h00-20h30</li>\n<li>Jeudi: 13h00-20h30</li>\n<li>Vendredi: 12h00-21h00</li>\n<li>Samedi: 9h00-21h00</li>\n<li>Nouvelle heure: 8h00 &agrave; 10h00</li>'),
(90, 4, 'contactez', 7, 'Magique!'),
(91, 4, 'contactez', 8, '&Agrave; propos de moi'),
(92, 4, 'contactez', 9, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.'),
(93, 4, 'contactez', 10, 'Mes certificats'),
(94, 4, 'contactez', 11, 'Me contactez'),
(95, 4, 'contactez', 12, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"page me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(96, 4, 'etape', 1, 'DGcr&eacute;ationWeb'),
(97, 4, 'etape', 2, 'Voici les &eacute;tapes n&eacute;cessaires &agrave; la cr&eacute;ation de votre site webs'),
(98, 4, 'etape', 3, 'Pour toutes questions &agrave; propos de celles-ci, n\'h&eacute;sitez pas &agrave; m\'&eacute;crire!'),
(99, 4, 'etape', 4, '&Agrave; propos de moi'),
(100, 4, 'etape', 5, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio. Wow!'),
(101, 4, 'etape', 6, 'Mes certificats'),
(102, 4, 'etape', 7, 'Me contactez'),
(103, 4, 'etape', 8, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(104, 5, 'index', 1, NULL),
(105, 5, 'index', 2, NULL),
(106, 5, 'index', 3, NULL),
(107, 6, 'index', 1, NULL),
(108, 6, 'index', 2, NULL),
(109, 6, 'index', 3, NULL),
(110, 6, 'index', 4, NULL),
(111, 6, 'index', 5, NULL),
(112, 6, 'index', 6, NULL),
(113, 6, 'index', 7, NULL),
(114, 6, 'index', 8, NULL),
(115, 6, 'index', 9, NULL),
(116, 6, 'index', 10, NULL),
(117, 6, 'index', 11, NULL),
(118, 6, 'index', 12, NULL),
(119, 6, 'index', 13, NULL),
(120, 6, 'index', 14, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_backup`
--

DROP TABLE IF EXISTS `table_backup`;
CREATE TABLE IF NOT EXISTS `table_backup` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT,
  `Id_admin` smallint(6) DEFAULT NULL,
  `Page` varchar(255) NOT NULL,
  `Numero_zone` smallint(6) NOT NULL,
  `Texte` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `table_backup`
--

INSERT INTO `table_backup` (`Id`, `Id_admin`, `Page`, `Numero_zone`, `Texte`) VALUES
(1, 1, 'index', 1, '819 346-4748<br />2222 King Estrrrrrrr'),
(2, 1, 'index', 2, 'Un sous-titre de base'),
(3, 1, 'index', 3, '<p class=\"moyenne\">Ce n\'est pas par hasard que les propri&eacute;taires ont choisi le nom de leur &eacute;tablissement. Le terme \"Cantine Moderne\" d&eacute;crit parfaitement l\'ambiance d&eacute;contract&eacute;e que souhaitent cr&eacute;er les propri&eacute;taires soient un lieu rassembleur, accessible, accueillant et sans pr&eacute;tention.</p>\n<p class=\"moyenne\">Que ce soit pour d&eacute;jeuners, d&icirc;ners, soupers ou m&ecirc;me pour d&eacute;guster &agrave; la maison, le D&eacute;gustateur vous offre une cuisine familiale de qualit&eacute;e,savoureuse et pr&eacute;par&eacute;e avec soin.</p>\n<p class=\"moyenne\">Le D&eacute;gustateur est le genre de lieu ou il est bon de se retrouver entre amis pour y d&eacute;guster une poutine surprenante, des Hamburgers revisit&eacute;s et surout sa g&eacute;n&eacute;reuse pizza. Ici tout est fait maison avec le souci du d&eacute;tail...On s\'y sent comme chez soi!</p>\n<p class=\"moyenne\">Red&eacute;couvrer le plaisir de d&eacute;guster!</p>'),
(4, 1, 'index', 4, 'Un pied de page basic'),
(44, 3, 'index', 1, '819 346-4748<br />2222 King Est'),
(45, 3, 'index', 2, 'D&eacute;gustateur'),
(46, 3, 'index', 3, '<p class=\"moyenne\">Ce n\'est pas par hasard que les propri&eacute;taires ont choisi le nom de leur &eacute;tablissement. Le terme \"Cantine Moderne\" d&eacute;crit parfaitement l\'ambiance d&eacute;contract&eacute;e que souhaitent cr&eacute;er les propri&eacute;taires soient un lieu rassembleur, accessible, accueillant et sans pr&eacute;tention.</p>\n<p class=\"moyenne\">Que ce soit pour d&eacute;jeuners, d&icirc;ners, soupers ou m&ecirc;me pour d&eacute;guster &agrave; la maison, le D&eacute;gustateur vous offre une cuisine familiale de qualit&eacute;e,savoureuse et pr&eacute;par&eacute;e avec soin.</p>\n<p class=\"moyenne\">Le D&eacute;gustateur est le genre de lieu ou il est bon de se retrouver entre amis pour y d&eacute;guster une poutine surprenante, des Hamburgers revisit&eacute;s et surout sa g&eacute;n&eacute;reuse pizza. Ici tout est fait maison avec le souci du d&eacute;tail...On s\'y sent comme chez soi!</p>\n<p class=\"moyenne\">Red&eacute;couvrer le plaisir de d&eacute;guster!</p>\n<p class=\"moyenne\">&nbsp;</p>\n<p class=\"moyenne\">&nbsp;</p>\n<p class=\"moyenne\">wow!</p>'),
(47, 3, 'index', 4, 'Heures d\'ouvertures:'),
(48, 3, 'index', 5, '<li>Lundi-Jeudi: <span class=\"petite\">6h00 &agrave; 20h00</span></li>\n<li>Vendredi: <span class=\"petite\">6h00 &agrave; 21h00</span></li>\n<li>Samedi: <span class=\"petite\">6h00 &agrave; 20h00</span></li>\n<li>Dimanche: <span class=\"petite\">7h00 &agrave; 20h00</span></li>'),
(49, 3, 'index', 6, 'Promotions'),
(50, 3, 'index', 7, '<p id=\"mce_8\" class=\"grande\">Moyenne Garnie<br />Frites + Rondelles<br />4 Canettes<br />25,95$</p>'),
(51, 3, 'index', 8, 'Heures de livraisons:'),
(52, 3, 'index', 9, '<li>11h &agrave; 14h</li>\n<li>16h &agrave; la fermeture</li>'),
(53, 3, 'index', 10, 'Minimum 9$ avant taxes'),
(54, 3, 'index', 11, 'Nouveau'),
(55, 3, 'index', 12, 'Crevettes<br />+<br />C&ocirc;tes lev&eacute;es'),
(56, 3, 'index', 13, 'Menu livraison et comptoir'),
(57, 3, 'index', 14, 'menu plus &eacute;labor&eacute; en salle &agrave; manger'),
(58, 3, 'index', 15, '*prix sujet &agrave; changement sans pr&eacute;avis'),
(59, 3, 'index', 16, '2222 King Est<br />Sherbrooke<br />819 346-4748'),
(60, 3, 'index', 17, 'Suivez-nous sur<br /><a title=\"Notre page facebook\" href=\"https://www.facebook.com/cantine.moderne/\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icone_facebook.png\" alt=\"icone facebook\" /></a>'),
(61, 3, 'Historique', 1, '819 346-4748<br />2222 King Est'),
(62, 3, 'Historique', 2, 'Historique'),
(63, 3, 'Historique', 3, '<p>&nbsp;</p>\n<!-- Bloc p -->\n<p>&nbsp;</p>\n<!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">1981-1989</strong> Ouverture du premier restaurant D&eacute;gustateur (coin Quatre-Saisons et 12e avenue &agrave; Sherbrooke) par Marcel &amp; Mario Gagn&eacute;. Ce restaurant est ouvert 24h.</p>\n<p class=\"moyenne\"><strong class=\"grande\">1985</strong> M. Mario Gagn&eacute; d&eacute;cide d&rsquo;ouvrir le Petit D&eacute;gustateur situ&eacute; sur la King Est, ce nom lui vient surtout du fait qu&rsquo;il n&rsquo;&eacute;tait pas ouvert 24h. &Agrave; la fin des ann&eacute;es 1980, M. Marcel Gagn&eacute; d&eacute;cide de fermer le premier restaurant pour partir un autre projet. Le restaurant le Petit D&eacute;gustateur lui reste ouvert sous la direction de M. Mario Gagn&eacute; jusqu&rsquo;au 30 septembre 2010.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2004</strong> Michel Gagn&eacute; (Fils de Marcel et fr&egrave;re de Mario) Ouvre le D&eacute;gustateur Express sur la rue Belv&eacute;d&egrave;re. Ce nouveau resto se concentre sur les commandes au comptoir et la livraison.</p>'),
(64, 3, 'Historique', 4, '<!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">2010</strong> &Agrave; la fin de 2010, Michel Gagn&eacute; prend la rel&egrave;ve du Petit D&eacute;gustateur. Apr&egrave;s quelques mois de r&eacute;novation, son statut passe de cantine &agrave; restaurant familiale. Toujours en gardant le cachet de l&rsquo;entreprise, le nouveau look et le nouveau menu lui donne un nouveau regain.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2012</strong> Ouverture de celui situ&eacute; &agrave; Bromptonville. &Ocirc; Petit D&eacute;gustateur restera dans la famille Gagn&eacute; jusqu&rsquo;en 2015.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2014</strong> C&rsquo;est le d&eacute;but du service de livraison sur la rue King !</p>'),
(65, 3, 'Historique', 5, '<!-- Bloc p --><!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">2016 &agrave; aujourd&rsquo;hui</strong> Achat de l&rsquo;entreprise familiale qui &eacute;tait alors supervis&eacute; par Jonathan Gagn&eacute; (fils de Michel) Les nouveaux propri&eacute;taires&nbsp;: Patrick Faucher et sa conjointe Nadia Lemay ont su garder les racines construites par la famille Gagn&eacute;, Nouvel image, changement de logo et implantation du concept &laquo;&nbsp;Cantine Moderne&nbsp;&raquo;. Ce petit resto de quartier se d&eacute;marque par sa nourriture maison ainsi que son accueil chaleureux.</p>'),
(66, 3, 'Historique', 6, '2222 King este<br />Sherbrooke<br />819 346-4748'),
(67, 3, 'Historique', 7, 'Suivez-nous sur<br /><a title=\"Notre page facebook\" href=\"https://www.facebook.com/cantine.moderne/\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icone_facebook.png\" alt=\"icone facebook\" /></a>'),
(68, 4, 'index', 1, 'DGcr&eacute;ationWeb'),
(69, 4, 'index', 2, 'Cr&eacute;ation de sites web'),
(70, 4, 'index', 3, 'DGcr&eacute;ationweb est une entreprise de conception de sites internet principalement orient&eacute;e vers les PME. Que ce soit le prix ou encore le CMS, tout est pens&eacute; pour satisfaire ces derni&egrave;res au maximum. J\'ai d&eacute;cid&eacute; de cr&eacute;er cette compagnie parce que j\'adore le Web, mais &eacute;galement pour aider les autres petites entreprises &agrave; se tailler une place sur internet sans toutefois avoir &agrave; d&eacute;bourser des milliers de dollars et sans avoir &agrave; se casser la t&ecirc;te. Alors, que se soit pour un site de type vitrine, pour un site de commerce en ligne ou simplement parce que vous avez des questions, n\'h&eacute;sitez pas &agrave; me contactez en m\'&eacute;crivant ou en m\'appelant, il me fera un plaisir de vous r&eacute;pondre!'),
(71, 4, 'index', 4, 'Les avantages de chosir DGcr&eacute;ationWeb aaaaah!'),
(72, 4, 'index', 5, 'Voici les 3 principaux avantages de me choisir.'),
(73, 4, 'index', 6, 'Pourquoi me choisir?'),
(74, 4, 'index', 7, 'En me choisissant pour faire la cr&eacute;ation de votre site internet, vous choisissez un passion&eacute; du web voulant donner le meilleur de lui-m&ecirc;me pour que les premiers pas de votre entreprise sur le web soient parfaits. En plus de chosir quelqu\'un qui aura votre projet &agrave; coeur, vous b&eacute;n&eacute;ficierai de nombreux avantages qui vous permetterons en autres d\'&eacute;conomiser tout en &eacute;tant ind&eacute;pendant.'),
(75, 4, 'index', 8, 'N\'h&eacute;sitez pas &agrave; <a class=\"lien_important\" title=\"Page me contactez\" href=\"contactez.php\">m\'&eacute;crire/m\'appeller</a> pour toutes questions!<br />En me choisissant, vous &ecirc;tes gagnants! RA'),
(76, 4, 'index', 9, '&Agrave; propos de moi'),
(77, 4, 'index', 10, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; <em>mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.jasldkhsadlsdlhaljsdhlsadjhdlashdlajhdasha</em>'),
(78, 4, 'index', 11, 'WOW'),
(79, 4, 'index', 12, 'Me contactez'),
(80, 4, 'index', 13, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(81, 4, 'contactez', 1, 'DGcr&eacute;ationWeb'),
(82, 4, 'contactez', 2, 'Les infos'),
(83, 4, 'contactez', 3, 'Pour toutes informations suppl&eacute;mentaires, veuillez me contacter au num&eacute;ro suivant <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a> ou par courriel &agrave; l\'adresse courriel suivante: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a>'),
(84, 4, 'contactez', 4, 'Mon horaire'),
(85, 4, 'contactez', 5, 'Vous pouvez me contacter:'),
(86, 4, 'contactez', 6, '<li>Lundi: 17h30-20h30</li>\n<li>Mardi: 9h00-12h00 / 18h30-20h30</li>\n<li>Mercredi: 19h00-20h30</li>\n<li>Jeudi: 13h00-20h30</li>\n<li>Vendredi: 12h00-21h00</li>\n<li>Samedi: 9h00-21h00</li>\n<li>Nouvelle heure: 8h00 &agrave; 10h00</li>'),
(87, 4, 'contactez', 7, NULL),
(88, 4, 'contactez', 8, '&Agrave; propos de moi'),
(89, 4, 'contactez', 9, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.'),
(90, 4, 'contactez', 10, 'Mes certificats'),
(91, 4, 'contactez', 11, 'Me contactez'),
(92, 4, 'contactez', 12, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"page me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(93, 4, 'etape', 1, 'DGcr&eacute;ationWeb'),
(94, 4, 'etape', 2, 'Voici les &eacute;tapes n&eacute;cessaires &agrave; la cr&eacute;ation de votre site webs'),
(95, 4, 'etape', 3, 'Pour toutes questions &agrave; propos de celles-ci, n\'h&eacute;sitez pas &agrave; m\'&eacute;crire!'),
(96, 4, 'etape', 4, '&Agrave; propos de moi'),
(97, 4, 'etape', 5, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.'),
(98, 4, 'etape', 6, 'Mes certificats'),
(99, 4, 'etape', 7, 'Me contactez'),
(100, 4, 'etape', 8, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(101, 5, 'index', 1, NULL),
(102, 5, 'index', 2, NULL),
(103, 5, 'index', 3, NULL),
(104, 6, 'index', 1, NULL),
(105, 6, 'index', 2, NULL),
(106, 6, 'index', 3, NULL),
(107, 6, 'index', 4, NULL),
(108, 6, 'index', 5, NULL),
(109, 6, 'index', 6, NULL),
(110, 6, 'index', 7, NULL),
(111, 6, 'index', 8, NULL),
(112, 6, 'index', 9, NULL),
(113, 6, 'index', 10, NULL),
(114, 6, 'index', 11, NULL),
(115, 6, 'index', 12, NULL),
(116, 6, 'index', 13, NULL),
(117, 6, 'index', 14, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_temporaire`
--

DROP TABLE IF EXISTS `table_temporaire`;
CREATE TABLE IF NOT EXISTS `table_temporaire` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT,
  `Id_admin` smallint(6) DEFAULT NULL,
  `Page` varchar(255) NOT NULL,
  `Numero_zone` smallint(6) NOT NULL,
  `Texte` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `table_temporaire`
--

INSERT INTO `table_temporaire` (`Id`, `Id_admin`, `Page`, `Numero_zone`, `Texte`) VALUES
(1, 1, 'index', 1, '819 346-4748<br />2222 King Estrrrrrrr'),
(2, 1, 'index', 2, 'Un sous-titre de base'),
(3, 1, 'index', 3, '<p class=\"moyenne\">Ce n\'est pas par hasard que les propri&eacute;taires ont choisi le nom de leur &eacute;tablissement. Le terme \"Cantine Moderne\" d&eacute;crit parfaitement l\'ambiance d&eacute;contract&eacute;e que souhaitent cr&eacute;er les propri&eacute;taires soient un lieu rassembleur, accessible, accueillant et sans pr&eacute;tention.</p>\n<p class=\"moyenne\">Que ce soit pour d&eacute;jeuners, d&icirc;ners, soupers ou m&ecirc;me pour d&eacute;guster &agrave; la maison, le D&eacute;gustateur vous offre une cuisine familiale de qualit&eacute;e,savoureuse et pr&eacute;par&eacute;e avec soin.</p>\n<p class=\"moyenne\">Le D&eacute;gustateur est le genre de lieu ou il est bon de se retrouver entre amis pour y d&eacute;guster une poutine surprenante, des Hamburgers revisit&eacute;s et surout sa g&eacute;n&eacute;reuse pizza. Ici tout est fait maison avec le souci du d&eacute;tail...On s\'y sent comme chez soi!</p>\n<p class=\"moyenne\">Red&eacute;couvrer le plaisir de d&eacute;guster!</p>'),
(4, 1, 'index', 4, 'Un pied de page basic'),
(45, 3, 'index', 1, '819 346-4748<br />2222 King Est'),
(46, 3, 'index', 2, 'D&eacute;gustateur'),
(47, 3, 'index', 3, '<p class=\"moyenne\">Ce n\'est pas par hasard que les propri&eacute;taires ont choisi le nom de leur &eacute;tablissement. Le terme \"Cantine Moderne\" d&eacute;crit parfaitement l\'ambiance d&eacute;contract&eacute;e que souhaitent cr&eacute;er les propri&eacute;taires soient un lieu rassembleur, accessible, accueillant et sans pr&eacute;tention.</p>\n<p class=\"moyenne\">Que ce soit pour d&eacute;jeuners, d&icirc;ners, soupers ou m&ecirc;me pour d&eacute;guster &agrave; la maison, le D&eacute;gustateur vous offre une cuisine familiale de qualit&eacute;e,savoureuse et pr&eacute;par&eacute;e avec soin.</p>\n<p class=\"moyenne\">Le D&eacute;gustateur est le genre de lieu ou il est bon de se retrouver entre amis pour y d&eacute;guster une poutine surprenante, des Hamburgers revisit&eacute;s et surout sa g&eacute;n&eacute;reuse pizza. Ici tout est fait maison avec le souci du d&eacute;tail...On s\'y sent comme chez soi!</p>\n<p class=\"moyenne\">Red&eacute;couvrer le plaisir de d&eacute;guster!</p>'),
(48, 3, 'index', 4, 'Heures d\'ouvertures:'),
(49, 3, 'index', 5, '<li>Lundi-Jeudi: <span class=\"petite\">6h00 &agrave; 20h00</span></li>\n<li>Vendredi: <span class=\"petite\">6h00 &agrave; 21h00</span></li>\n<li>Samedi: <span class=\"petite\">6h00 &agrave; 20h00</span></li>\n<li>Dimanche: <span class=\"petite\">7h00 &agrave; 20h00</span></li>'),
(50, 3, 'index', 6, 'Promotions'),
(51, 3, 'index', 7, '<p id=\"mce_8\" class=\"grande\">Moyenne Garnie<br />Frites + Rondelles<br />4 Canettes<br />25,95$</p>'),
(52, 3, 'index', 8, 'Heures de livraisons:'),
(53, 3, 'index', 9, '<li>11h &agrave; 14h</li>\n<li>16h &agrave; la fermeture</li>'),
(54, 3, 'index', 10, 'Minimum 9$ avant taxes'),
(55, 3, 'index', 11, 'Nouveau'),
(56, 3, 'index', 12, 'Crevettes<br />+<br />C&ocirc;tes lev&eacute;es'),
(57, 3, 'index', 13, 'Menu livraison et comptoir'),
(58, 3, 'index', 14, 'menu plus &eacute;labor&eacute; en salle &agrave; manger'),
(59, 3, 'index', 15, '*prix sujet &agrave; changement sans pr&eacute;avis'),
(60, 3, 'index', 16, '2222 King Est<br />Sherbrooke<br />819 346-4748'),
(61, 3, 'index', 17, 'Suivez-nous sur<br /><a title=\"Notre page facebook\" href=\"https://www.facebook.com/cantine.moderne/\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icone_facebook.png\" alt=\"icone facebook\" /></a>'),
(62, 3, 'Historique', 1, '819 346-4748<br />2222 King Est'),
(63, 3, 'Historique', 2, 'Historique'),
(64, 3, 'Historique', 3, '<!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">1981-1989</strong> Ouverture du premier restaurant D&eacute;gustateur (coin Quatre-Saisons et 12e avenue &agrave; Sherbrooke) par Marcel &amp; Mario Gagn&eacute;. Ce restaurant est ouvert 24h.</p>\n<p class=\"moyenne\"><strong class=\"grande\">1985</strong> M. Mario Gagn&eacute; d&eacute;cide d&rsquo;ouvrir le Petit D&eacute;gustateur situ&eacute; sur la King Est, ce nom lui vient surtout du fait qu&rsquo;il n&rsquo;&eacute;tait pas ouvert 24h. &Agrave; la fin des ann&eacute;es 1980, M. Marcel Gagn&eacute; d&eacute;cide de fermer le premier restaurant pour partir un autre projet. Le restaurant le Petit D&eacute;gustateur lui reste ouvert sous la direction de M. Mario Gagn&eacute; jusqu&rsquo;au 30 septembre 2010.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2004</strong> Michel Gagn&eacute; (Fils de Marcel et fr&egrave;re de Mario) Ouvre le D&eacute;gustateur Express sur la rue Belv&eacute;d&egrave;re. Ce nouveau resto se concentre sur les commandes au comptoir et la livraison.</p>'),
(65, 3, 'Historique', 4, '<!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">2010</strong> &Agrave; la fin de 2010, Michel Gagn&eacute; prend la rel&egrave;ve du Petit D&eacute;gustateur. Apr&egrave;s quelques mois de r&eacute;novation, son statut passe de cantine &agrave; restaurant familiale. Toujours en gardant le cachet de l&rsquo;entreprise, le nouveau look et le nouveau menu lui donne un nouveau regain.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2012</strong> Ouverture de celui situ&eacute; &agrave; Bromptonville. &Ocirc; Petit D&eacute;gustateur restera dans la famille Gagn&eacute; jusqu&rsquo;en 2015.</p>\n<p class=\"moyenne\"><strong class=\"grande\">2014</strong> C&rsquo;est le d&eacute;but du service de livraison sur la rue King !</p>'),
(66, 3, 'Historique', 5, '<!-- Bloc p --><!-- Bloc p --><!-- Bloc p -->\n<p class=\"moyenne\"><strong class=\"grande\">2016 &agrave; aujourd&rsquo;hui</strong> Achat de l&rsquo;entreprise familiale qui &eacute;tait alors supervis&eacute; par Jonathan Gagn&eacute; (fils de Michel) Les nouveaux propri&eacute;taires&nbsp;: Patrick Faucher et sa conjointe Nadia Lemay ont su garder les racines construites par la famille Gagn&eacute;, Nouvel image, changement de logo et implantation du concept &laquo;&nbsp;Cantine Moderne&nbsp;&raquo;. Ce petit resto de quartier se d&eacute;marque par sa nourriture maison ainsi que son accueil chaleureux.</p>'),
(67, 3, 'Historique', 6, '2222 King este<br />Sherbrooke<br />819 346-4748'),
(68, 3, 'Historique', 7, 'Suivez-nous sur<br /><a title=\"Notre page facebook\" href=\"https://www.facebook.com/cantine.moderne/\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icone_facebook.png\" alt=\"icone facebook\" /></a>'),
(69, 4, 'index', 1, 'DGcr&eacute;ationWeb'),
(70, 4, 'index', 2, 'Cr&eacute;ation de sites web'),
(71, 4, 'index', 3, 'DGcr&eacute;ationweb est une entreprise de conception de sites internet principalement orient&eacute;e vers les PME. Que ce soit le prix ou encore le CMS, tout est pens&eacute; pour satisfaire ces derni&egrave;res au maximum. J\'ai d&eacute;cid&eacute; de cr&eacute;er cette compagnie parce que j\'adore le Web, mais &eacute;galement pour aider les autres petites entreprises &agrave; se tailler une place sur internet sans toutefois avoir &agrave; d&eacute;bourser des milliers de dollars et sans avoir &agrave; se casser la t&ecirc;te. Alors, que se soit pour un site de type vitrine, pour un site de commerce en ligne ou simplement parce que vous avez des questions, n\'h&eacute;sitez pas &agrave; me contactez en m\'&eacute;crivant ou en m\'appelant, il me fera un plaisir de vous r&eacute;pondre!'),
(72, 4, 'index', 4, 'Les avantages de chosir DGcr&eacute;ationWeb aaaaah!'),
(73, 4, 'index', 5, 'Voici les 3 principaux avantages de me choisir.'),
(74, 4, 'index', 6, 'Pourquoi me choisir?'),
(75, 4, 'index', 7, 'En me choisissant pour faire la cr&eacute;ation de votre site internet, vous choisissez un passion&eacute; du web voulant donner le meilleur de lui-m&ecirc;me pour que les premiers pas de votre entreprise sur le web soient parfaits. En plus de chosir quelqu\'un qui aura votre projet &agrave; coeur, vous b&eacute;n&eacute;ficierai de nombreux avantages qui vous permetterons en autres d\'&eacute;conomiser tout en &eacute;tant ind&eacute;pendant.'),
(76, 4, 'index', 8, 'N\'h&eacute;sitez pas &agrave; <a class=\"lien_important\" title=\"Page me contactez\" href=\"contactez.php\">m\'&eacute;crire/m\'appeller</a> pour toutes questions!<br />En me choisissant, vous &ecirc;tes gagnants! RA'),
(77, 4, 'index', 9, '&Agrave; propos de moi'),
(78, 4, 'index', 10, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; <em>mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.jasldkhsadlsdlhaljsdhlsadjhdlashdlajhdasha</em>'),
(79, 4, 'index', 11, 'WOW'),
(80, 4, 'index', 12, 'Me contactez'),
(81, 4, 'index', 13, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(82, 4, 'contactez', 1, 'DGcr&eacute;ationWeb'),
(83, 4, 'contactez', 2, 'Les infos'),
(84, 4, 'contactez', 3, 'Pour toutes informations suppl&eacute;mentaires, veuillez me contacter au num&eacute;ro suivant <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a> ou par courriel &agrave; l\'adresse courriel suivante: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a>'),
(85, 4, 'contactez', 4, 'Mon horaire'),
(86, 4, 'contactez', 5, 'Vous pouvez me contacter:'),
(87, 4, 'contactez', 6, '<li>Lundi: 17h30-20h30</li>\n<li>Mardi: 9h00-12h00 / 18h30-20h30</li>\n<li>Mercredi: 19h00-20h30</li>\n<li>Jeudi: 13h00-20h30</li>\n<li>Vendredi: 12h00-21h00</li>\n<li>Samedi: 9h00-21h00</li>\n<li>Nouvelle heure: 8h00 &agrave; 10h00</li>'),
(88, 4, 'contactez', 7, 'Magique!'),
(89, 4, 'contactez', 8, '&Agrave; propos de moi'),
(90, 4, 'contactez', 9, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio.'),
(91, 4, 'contactez', 10, 'Mes certificats'),
(92, 4, 'contactez', 11, 'Me contactez'),
(93, 4, 'contactez', 12, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"page me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(94, 4, 'etape', 1, 'DGcr&eacute;ationWeb'),
(95, 4, 'etape', 2, 'Voici les &eacute;tapes n&eacute;cessaires &agrave; la cr&eacute;ation de votre site webs'),
(96, 4, 'etape', 3, 'Pour toutes questions &agrave; propos de celles-ci, n\'h&eacute;sitez pas &agrave; m\'&eacute;crire!'),
(97, 4, 'etape', 4, '&Agrave; propos de moi'),
(98, 4, 'etape', 5, 'Je suis un jeune entrepreneur passionn&eacute; du web. Ayant commenc&eacute; mon apprentissage dans ce domaine depuis d&eacute;j&agrave; quelques ann&eacute;es, je poss&egrave;de d&eacute;sormais des comp&eacute;tences que je souhaite mettre &agrave; votre disposition. Mon but est simple: offrir un site web de qualit&eacute; &agrave; bas prix tout en b&acirc;tissant mon portfolio. Wow!'),
(99, 4, 'etape', 6, 'Mes certificats'),
(100, 4, 'etape', 7, 'Me contactez'),
(101, 4, 'etape', 8, 'T&eacute;l&eacute;phone: <a title=\"M\'appeler\" href=\"tel:819-566-0752\">819-566-0752</a><br />Courriel: <a title=\"Me contactez\" href=\"mailto:gaulindavidweb@gmail.com\">gaulindavidweb@gmail.com</a><br />Il est &eacute;galement possible de me contacter via <a title=\"Vers le formulaire de contact\" href=\"contactez.php\">le formulaire de contact</a>'),
(102, 5, 'index', 1, NULL),
(103, 5, 'index', 2, NULL),
(104, 5, 'index', 3, NULL),
(105, 6, 'index', 1, NULL),
(106, 6, 'index', 2, NULL),
(107, 6, 'index', 3, NULL),
(108, 6, 'index', 4, NULL),
(109, 6, 'index', 5, NULL),
(110, 6, 'index', 6, NULL),
(111, 6, 'index', 7, NULL),
(112, 6, 'index', 8, NULL),
(113, 6, 'index', 9, NULL),
(114, 6, 'index', 10, NULL),
(115, 6, 'index', 11, NULL),
(116, 6, 'index', 12, NULL),
(117, 6, 'index', 13, NULL),
(118, 6, 'index', 14, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
