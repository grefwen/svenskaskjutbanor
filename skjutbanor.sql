-- MySQL dump 10.13  Distrib 5.1.47, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: shooting
-- ------------------------------------------------------
-- Server version	5.1.47

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AllowedDicipline`
--

DROP TABLE IF EXISTS `AllowedDicipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AllowedDicipline` (
  `RangeID` bigint(20) NOT NULL,
  `DiciplineID` bigint(20) NOT NULL,
  PRIMARY KEY (`RangeID`,`DiciplineID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllowedDicipline`
--

LOCK TABLES `AllowedDicipline` WRITE;
/*!40000 ALTER TABLE `AllowedDicipline` DISABLE KEYS */;
INSERT INTO `AllowedDicipline` VALUES (0,0),(1,0),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,9),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(6,2),(7,7),(7,10),(8,1),(8,2),(9,11),(9,12),(9,25),(9,31),(9,32),(9,33),(9,34),(10,36),(10,37),(11,3),(11,4),(11,5),(11,6),(12,3),(12,4),(12,5),(12,6),(12,7);
/*!40000 ALTER TABLE `AllowedDicipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Club`
--

DROP TABLE IF EXISTS `Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Club` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Website` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Club`
--

LOCK TABLES `Club` WRITE;
/*!40000 ALTER TABLE `Club` DISABLE KEYS */;
INSERT INTO `Club` VALUES (1,'Jämjö Sportskytteklubb','http://www.jamjospk.se/'),(2,'KFIK Pistol','http://www3.idrottonline.se/default.aspx?id=270201'),(3,'Ringamåla Skytteförening','http://www.rskf.se/'),(4,'Karlshamns UPSK','http://www3.idrottonline.se/default.aspx?id=80867'),(5,'Kalmar Pistolklubb','http://gripen.mine.nu/kpk/'),(6,'Aspö Skytteförening','http://www.asposkf.se/'),(7,'KA2 Skytteförening','http://www3.idrottonline.se/default.aspx?id=323024'),(8,'Kalmar Skyttegille','http://hem.passagen.se/kalmar_skyttegillehemsid/'),(9,'Kalmarbygdens Jägare','http://www.kbjskogstorp.se/'),(10,'Johannishus PSK','http://www.johannishuspsk.se/'),(11,'Öckerö Skytteförening','http://www2.idrottonline.se/default.aspx?id=287746'),(12,'Vårgårda PSK','http://www.vargardapsk.se/'),(13,'Ängelholms Pistolskytteklubb','http://hem.fyristorg.com/epk/'),(14,'Lunds Pistolklubb','http://www.lundspk.se/'),(15,'Landskrona Pistolklubb','http://www.landskronapk.se/'),(16,'Kristianstads Pistolklubb','http://www.kristianstadspk.se/'),(17,'PK Eken',NULL),(18,'Olofströms Pistolskytteklubb','http://www.olofstromspk.se/'),(19,'Halmstads SPSK','http://www5.idrottonline.se/default.aspx?id=569742'),(20,'Västbo Pistolklubb','http://www.vastbopk.se/'),(21,'Göteborgs Pistol och Sportskytteklubb','http://www5.idrottonline.se/default.aspx?id=364375'),(22,'Polisens IF',NULL),(23,'Telegrafverket PSF','http://www5.idrottonline.se/default.aspx?id=23031'),(24,'Örgryte PK','http://www.orgrytepk.com/'),(25,'FOK Borås','http://www.fokboras.nu/'),(26,'Ulricehamns Pistolklubb','http://www.ulricehamnspk.se/'),(27,'Trollhättans PK','http://www.trollskytte.com/'),(28,'Södra Dals PSF','http://www.sdpsf.se/'),(29,'Hammars PSK',NULL),(30,'Överby PK','http://www.klubben.se/overbypk/start.html'),(31,'Laxå PSK',NULL),(32,'Fjugesta PSK',NULL),(33,'Salems Pistolklubb','http://www.salemspk.org/'),(34,'Hemvärnets Stridsskola','http://hvss.hemvarnet.se/'),(35,'Örebro Pistol och Sportskytteklubb','http://www.opssk.se/'),(36,'Älvenäs PSK','http://www.laget.se/Alvenas_PK/'),(37,'Lövsta SKF','http://www.lovstaskytte.se/'),(38,'Karlstads Pistol och Sportskytteklubb','http://www.kpsk.se/'),(39,'Edsvalla SKF',NULL),(40,'Scheele SSK',NULL),(41,'Frövi-Lindesberg Pistolskyttar','http://www.frovilindesbergps.nu/'),(42,'Ramsbergs PSK','http://www.ramsbergspsk.org/'),(43,'Hällefors Pistolskytteklubb','http://hem.passagen.se/helpsk/'),(44,'Sköllersta SKF',NULL),(45,'SJ SK Hallsberg','http://www.hallsbergpk.se/'),(46,'Sunne PK',NULL),(47,'Hagfors-Uddeholms Pistolskytteklubb','http://www.hupk.se/'),(48,'Kumla Sportskyttar','http://www.kumlasportskyttar.se/'),(49,'Handens Pistolskytteklubb','http://www.hpsk.se/'),(50,'Östhammars PK','http://www.opk.se/'),(51,'Borlänge Pistolklubb','http://hem.passagen.se/pistolklubben/'),(52,'Falu Sport och Pistolskytteklubb','http://www5.idrottonline.se/default.aspx?id=329574'),(53,'Gävle Pistolskytteklubb','http://www.gavlepistol.se/'),(54,'Sandvikens PSK','http://www4.idrottonline.se/default.aspx?id=274338'),(55,'Ockelbo PSK','http://www4.idrottonline.se/default.aspx?id=476872'),(56,'Orsa Pistolskytteklubb','http://www.orsapsk.com/'),(57,'Älvdalens Pistolklubb','http://www2.idrottonline.se/AlvdalensPK-Sportskytte/'),(58,'Söderhamns PSK',NULL),(59,'Bollnäs Pistolskytteklubb','http://www.bollnaspistolskytteklubb.se/'),(60,'Rotebergs SK','http://www4.idrottonline.se/default.aspx?id=361714'),(61,'Forsa Pistolklubb','http://hem.passagen.se/forsapk/'),(62,'Ljusdals PSK',NULL),(63,'Piteå Pistolklubb','http://ppk.pite.org/'),(64,'PSKF Magnus Stenbock','http://www.magnusstenbock.com/'),(65,'Nybro Pistolskytteklubb','http://www.nybropk.se/'),(66,'Skepplanda Sportskyttar','http://www.skepplandasportskyttar.se/'),(67,'Gagnef-Mockfjärds Pistolskytteklubb','http://gmpsk.se/'),(68,'Emmaboda Jaktskytteklubb','http://emmabodajaktskytteklubb.blogspot.com/'),(69,'Uppsala Sportskytteklubb','http://www.usk.se/'),(70,'Uppsalapolisens PSK','http://www.uppk.se/'),(71,'Luleå Pistolklubb','http://www.luleapk.org/'),(72,'Vallebygdens PK','http://www.vpsf.se/'),(73,'Härlanda PK','http://www.harlandapk.se'),(74,'Malmö Pistolklubb','http://www.malmopk.org/'),(75,'Växjö Pistolklubb','http://www.klubben.se/vaxjopk/1770-start.html'),(76,'Växjö Skyttegille','http://www2.idrottonline.se/default.aspx?id=398820'),(77,'Mörrums Skyttegille','http://www3.idrottonline.se/default.aspx?id=317184'),(78,'Emmaboda Skytteförening','http://www1.idrottonline.se/EmmabodaSkF-Skyttesport/'),(79,'Malmö-Lunds Skyttegille','http://www.mlsg.se/'),(80,'Tyresö Skytteförening','http://www.tyresoskf.nu/'),(81,'Luftvärnets Befälsutbildningsförbund','http://www.eldh.se/cms/'),(82,'Nyköpings Pistolklubb','http://www.npk.n.nu/'),(83,'Jönköpings Pistolklubb','http://www.jonkopingspk.se/'),(84,'Sävsjö Pistolklubb','http://savsjopk.atspace.com/'),(85,'Örebro Jaktskytteklubb','http://www.orebrojaktskytteklubb.se/'),(86,'Össeby-Garns Skytteförening','http://www.osseby-skytte.se/'),(87,'Östergötlands Östra Jaktklubb',NULL),(88,'Norrköpings Jaktskytteklubb','http://www.klubben.se/njsk/start.html'),(89,'Börringe Jaktskytteklubb','http://www.borringejsk.com/'),(90,'Gefleortens Jaktskytteklubb','http://gefleortens-jsk.se/'),(91,'Madesjö-Nybro Skytteförening','http://www4.idrottonline.se/default.aspx?id=351518'),(92,'Flerohopps Sportskytteklubb',NULL),(93,'Värnamo Skytteförening','http://www2.idrottonline.se/default.aspx?id=308096'),(94,'Gullabo Skytteförening','http://www.gullaboskytte.se/'),(95,'Torsås Skyttegymnasium','http://www.korr.se/om-skolan/elitidrott/skyttegymnasium'),(96,'Fliseryds Jaktskytteklubb','http://www.jagareforbundet.se/kalmar/Default.asp?pageid=28162'),(97,'Högsby Jaktskytteklubb','http://hjsk.zoomin.se/'),(98,'Kalmar Jaktskytteklubb','http://www.kalmarjsk.se/'),(99,'Nordölands Jaktvårdsförening','http://hem.passagen.se/nordolandsjvf/'),(100,'Målillaortens Jaktskytteklubb',NULL),(101,'Karlskrona Jaktskytteklubb','http://www3.idrottonline.se/default.aspx?id=642641'),(102,'Bräkne-Hoby Jaktskytteförening','http://www.bhjsk.se/'),(103,'Hagby Skytteförening','http://www3.idrottonline.se/default.aspx?id=562590'),(104,'Rödeby Jakt och Sportskytteförening','http://hem.passagen.se/rodeby.jossf/'),(105,'Västerviks Skyttegille','http://www2.idrottonline.se/default.aspx?id=357836'),(106,'Västerviks Pistolskytteförening','Västerviks Jaktskytteklubb'),(107,'Vena Skytteförening','http://www3.idrottonline.se/templates/Page.aspx?id=403915'),(108,'Västerviks Jaktskytteklubb','http://hem.passagen.se/fritte_11/rubriken.htm'),(109,'Lyckeby Skytteförening','http://www3.idrottonline.se/default.aspx?id=523305'),(110,'Ronneby F17 PSK','http://www4.idrottonline.se/default.aspx?id=317956'),(111,'Lönsboda PSK','http://www.lonsbodapsk.com/'),(112,'Sjöormens PK','http://www2.idrottonline.se/default.aspx?id=126470'),(113,'PK Elbogen','http://www.pk-elbogen.se/'),(114,'Umeå PK','http://www.umepk.nu/'),(115,'Örnsköldsviks PK','http://www.klubben.se/ovikpk/'),(116,'Kiruna PSF','http://www.kirunapsf.webb.se/'),(117,'Katarina PSF','http://www.katarinapsf.se/'),(118,'Ålems Skytteförening','http://www.alemsskf.se/'),(119,'Mönsterås Skytteförening','http://www6.idrottonline.se/MonsterasSF-Sportskytte/'),(120,'Hisingen Göteborg jaktvårdskrets','http://www.hisingensjvk.com/'),(121,'Hallands Skytteförbund','http://www.hallandsskytte.se/index.php?group=HSKFB&page=news'),(122,'Falkenbergs Skytteförening','http://biphome.spray.se/falkenberg/'),(123,'Varbergs Pistolklubb','http://www.varbergspk.com/'),(124,'Järlövs Skjutskola','http://www.jarlov.com/'),(125,'Kungsbacka FBU','http://www.forsvarsutbildarna.se:8080/kungsbacka/'),(126,'Tingsryds SKF','http://www.tingsrydsskf.se/'),(127,'Boden Pistol','http://www.bodenpistol.se/'),(128,'Gustavsberg Pistolskytteklubb','http://www.gpk.nu/'),(129,'Göteborgs Dynamiska Skyttar','http://www.goteborgsdynamiska.se/'),(130,'IPSC Växjö','http://www.ipscvaxjo.info/'),(131,'Kullens PK','http://www.kullenspk.se/'),(132,'Nordmarkens PSK','http://www.npsk.se/'),(133,'Ormen Skytteförening','http://www.ormen.se/'),(134,'Rosersberg Pistolklubb','http://www.rpk.se/'),(135,'S:t Eskils Skyttar','http://www.steskilsskyttar.se/'),(143,'Torups Pistolklubb','http://www.torupspistolklubb.org/'),(137,'Kubikenborgs Skytteförening','http://www.skyttealliansen.se/kuben.htm'),(138,'Njurunda Sportskytteklubb','http://www.nssk.com/'),(139,'Sunds Skytteförening',NULL),(140,'Sundsvalls Pistolskytteklubb','http://www.sundsvallspk.se/'),(141,'Sundsvalls Skytteförening',NULL),(142,'Sundsvalls Sportskytteklubb','http://www.s-ssk.se/'),(144,'Tysslinge Skytteklubb','http://www.tysslinge-skytteklubb.nu/'),(145,'Valdemarsviks Pistolskytteklubb','http://www.vpsk.se/'),(146,'Västjämtens Pistolskytteklubb','http://www.vjpk.de/'),(147,'Svegs Pistolskytteklubb','http://www2.herjedalen.se/forening/svegs-psk/'),(148,'Strömsunds SSK','http://stromsundsssk.bloggsida.se/');
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClubGovernance`
--

DROP TABLE IF EXISTS `ClubGovernance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClubGovernance` (
  `OrganizatonID` bigint(20) NOT NULL,
  `ClubID` bigint(20) NOT NULL,
  PRIMARY KEY (`OrganizatonID`,`ClubID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClubGovernance`
--

LOCK TABLES `ClubGovernance` WRITE;
/*!40000 ALTER TABLE `ClubGovernance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClubGovernance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dicipline`
--

DROP TABLE IF EXISTS `Dicipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dicipline` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dicipline`
--

LOCK TABLES `Dicipline` WRITE;
/*!40000 ALTER TABLE `Dicipline` DISABLE KEYS */;
INSERT INTO `Dicipline` VALUES (1,'Luftpistol'),(2,'Luftgevär 10m'),(3,'Standardpistol'),(4,'Snabbpistol'),(5,'Grovpistol'),(6,'Sportpistol'),(7,'Fripistol'),(8,'Running Target 10m'),(9,'Falling Target'),(10,'Korthållsgevär 50m'),(11,'Skeet'),(12,'Trap'),(13,'Fältskjutning'),(14,'Magnumfältskjutning'),(15,'Precisionsskjutning'),(16,'Snabbskjutning'),(17,'Nationell helmatch'),(18,'Militär snabbmatch'),(19,'Skidskytte'),(20,'Springskytte'),(21,'Luftpistolskjutning'),(22,'Gevär 300m'),(23,'Standardgevär 300m'),(24,'Gevär 50m'),(25,'Dubbel Trap'),(26,'10 m Running Target'),(27,'Gevär 6,5mm'),(28,'Fältskytte 6,5mm'),(29,'K-Pist'),(30,'AK'),(31,'Nordisk Trap'),(32,'Nationell Skeet'),(33,'Sporting'),(34,'DTL'),(35,'Snabbluftpistol'),(36,'Viltmål 50m'),(37,'Viltmål 80m'),(38,'Kulkombination'),(39,'Jaktkombination'),(40,'Enkel Jägarkombination'),(41,'Öppna divisionen'),(42,'Standard divisionen'),(43,'Modifierade divisionen'),(44,'Produktions divisionen'),(45,'');
/*!40000 ALTER TABLE `Dicipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiciplineGovernance`
--

DROP TABLE IF EXISTS `DiciplineGovernance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DiciplineGovernance` (
  `OrganizatonID` bigint(20) NOT NULL,
  `DiciplineID` bigint(20) NOT NULL,
  PRIMARY KEY (`OrganizatonID`,`DiciplineID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiciplineGovernance`
--

LOCK TABLES `DiciplineGovernance` WRITE;
/*!40000 ALTER TABLE `DiciplineGovernance` DISABLE KEYS */;
INSERT INTO `DiciplineGovernance` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(10,8),(10,9),(10,10),(10,11),(10,12),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,13),(11,14),(11,15),(11,16),(11,17),(11,18),(11,21),(14,41),(14,42),(14,43),(14,44);
/*!40000 ALTER TABLE `DiciplineGovernance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Location` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LocationTypeID` bigint(20) NOT NULL,
  `ParentID` bigint(20) DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Description` text COLLATE utf8_swedish_ci,
  `Filepath` varchar(255) COLLATE utf8_swedish_ci DEFAULT 'images/',
  `Filename` varchar(255) COLLATE utf8_swedish_ci DEFAULT 'flag_unknown.jpg',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=341 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (104,3,NULL,'Sverige',NULL,NULL,NULL),(105,6,104,'Götaland',NULL,NULL,NULL),(106,6,104,'Svealand',NULL,NULL,NULL),(107,6,104,'Norrland',NULL,NULL,NULL),(108,7,105,'Blekinge',NULL,NULL,NULL),(109,12,108,'Karlskrona kommun',NULL,NULL,NULL),(110,13,109,'Karlskrona',NULL,NULL,NULL),(111,13,109,'Jämjö',NULL,NULL,NULL),(112,7,105,'Småland',NULL,NULL,NULL),(113,12,112,'Sävsjö kommun',NULL,NULL,NULL),(114,13,113,'Sävsjö',NULL,NULL,NULL),(115,13,116,'Trelleborg',NULL,NULL,NULL),(116,12,117,'Trelleborgs kommun',NULL,NULL,NULL),(117,7,105,'Skåne',NULL,NULL,NULL),(118,13,119,'Ringamåla',NULL,NULL,NULL),(119,12,108,'Karlshamns kommun',NULL,NULL,NULL),(120,13,121,'Kalmar',NULL,NULL,NULL),(121,12,112,'Kalmar kommun',NULL,NULL,NULL),(122,13,111,'Ekeryd',NULL,NULL,NULL),(123,12,117,'Lunds kommun',NULL,NULL,NULL),(124,13,123,'Lund',NULL,NULL,NULL),(125,12,117,'Malmö kommun',NULL,NULL,NULL),(126,13,125,'Malmö',NULL,NULL,NULL),(136,12,117,'Ängelholms kommun',NULL,NULL,NULL),(137,13,136,'Ängelholm',NULL,NULL,NULL),(138,12,117,'Landskrona kommun',NULL,NULL,NULL),(139,13,138,'Landskrona',NULL,NULL,NULL),(140,12,117,'Kristianstads kommun',NULL,NULL,NULL),(141,13,140,'Kristianstad',NULL,NULL,NULL),(142,13,119,'Karlshamn',NULL,NULL,NULL),(143,12,108,'Olofströms kommun',NULL,NULL,NULL),(144,13,143,'Olofström',NULL,NULL,NULL),(145,7,105,'Halland',NULL,NULL,NULL),(146,12,145,'Halmstads kommun',NULL,NULL,NULL),(147,13,146,'Halmstad',NULL,NULL,NULL),(148,12,112,'Alvesta kommun',NULL,NULL,NULL),(149,13,148,'Alvesta',NULL,NULL,NULL),(150,12,112,'Gislaveds kommun',NULL,NULL,NULL),(151,13,150,'Gislaved',NULL,NULL,NULL),(152,12,112,'Vimmerby kommun',NULL,NULL,NULL),(153,13,152,'Vimmerby',NULL,NULL,NULL),(154,7,105,'Västergötland',NULL,NULL,NULL),(155,12,154,'Göteborgs kommun',NULL,NULL,NULL),(156,13,155,'Göteborg',NULL,NULL,NULL),(157,12,154,'Borås kommun',NULL,NULL,NULL),(158,13,157,'Borås',NULL,NULL,NULL),(159,12,154,'Ulricehamns kommun',NULL,NULL,NULL),(160,13,159,'Ulricehamn',NULL,NULL,NULL),(161,12,112,'Västerviks kommun',NULL,NULL,NULL),(162,13,161,'Överum',NULL,NULL,NULL),(163,12,154,'Vårgårda kommun',NULL,NULL,NULL),(164,13,163,'Vårgårda',NULL,NULL,NULL),(165,12,154,'Tidaholms kommun',NULL,NULL,NULL),(166,13,165,'Tidaholm',NULL,NULL,NULL),(167,12,154,'Trollhättans kommun',NULL,NULL,NULL),(168,13,167,'Trollhättan',NULL,NULL,NULL),(169,12,154,'Skövde kommun',NULL,NULL,NULL),(170,13,169,'Skövde',NULL,NULL,NULL),(171,7,105,'Bohuslän',NULL,NULL,NULL),(172,12,171,'Uddevalla kommun',NULL,NULL,NULL),(173,13,172,'Uddevalla',NULL,NULL,NULL),(174,12,154,'Skara kommun',NULL,NULL,NULL),(175,13,174,'Skara',NULL,NULL,NULL),(176,12,154,'Vänersborgs kommun',NULL,NULL,NULL),(177,13,176,'Vänersborg',NULL,NULL,NULL),(178,7,106,'Närke',NULL,NULL,NULL),(179,12,178,'Askersunds kommun',NULL,NULL,NULL),(180,13,179,'Askersund',NULL,NULL,NULL),(181,12,154,'Strömstads kommun',NULL,NULL,NULL),(182,13,181,'Strömstad',NULL,NULL,NULL),(183,12,178,'Laxå kommun',NULL,NULL,NULL),(184,13,183,'Laxå',NULL,NULL,NULL),(185,12,178,'Lekebergs kommun',NULL,NULL,NULL),(186,13,185,'Fjugesta',NULL,NULL,NULL),(187,12,106,'Salems kommun',NULL,NULL,NULL),(188,13,187,'Salem',NULL,NULL,NULL),(189,12,178,'Örebro kommun',NULL,NULL,NULL),(190,13,189,'Örebro',NULL,NULL,NULL),(191,12,196,'Stockholms kommun',NULL,NULL,NULL),(192,13,191,'Stockholm',NULL,NULL,NULL),(193,7,106,'Värmland',NULL,NULL,NULL),(194,12,193,'Karlstads kommun',NULL,NULL,NULL),(195,13,194,'Karlstad',NULL,NULL,NULL),(196,7,106,'Södermanland',NULL,NULL,NULL),(197,7,106,'Västmanland',NULL,NULL,NULL),(198,12,197,'Köpings kommun',NULL,NULL,NULL),(199,13,198,'Köping',NULL,NULL,NULL),(200,7,106,'Uppland',NULL,NULL,NULL),(201,12,200,'Upplands Väsbys kommun',NULL,NULL,NULL),(202,13,201,'Upplands Väsby',NULL,NULL,NULL),(203,12,200,'Enköpings kommun',NULL,NULL,NULL),(204,13,203,'Enköping',NULL,NULL,NULL),(205,12,197,'Lindesbergs kommun',NULL,NULL,NULL),(206,13,205,'Lindesberg',NULL,NULL,NULL),(207,12,197,'Hällefors kommun',NULL,NULL,NULL),(208,13,207,'Hällefors',NULL,NULL,NULL),(209,12,178,'Hallsbergs kommun',NULL,NULL,NULL),(210,13,209,'Hallsberg',NULL,NULL,NULL),(211,12,178,'Kumla kommun',NULL,NULL,NULL),(212,13,211,'Kumla',NULL,NULL,NULL),(213,12,193,'Sunne kommun',NULL,NULL,NULL),(214,13,213,'Sunne',NULL,NULL,NULL),(215,12,200,'Uppsala kommun',NULL,NULL,NULL),(216,13,215,'Uppsala',NULL,NULL,NULL),(217,12,193,'Hagfors kommun',NULL,NULL,NULL),(218,13,217,'Hagfors',NULL,NULL,NULL),(219,12,196,'Haninge kommun',NULL,NULL,NULL),(220,13,219,'Handen',NULL,NULL,NULL),(221,12,200,'Östhammars kommun',NULL,NULL,NULL),(222,13,221,'Östhammar',NULL,NULL,NULL),(223,7,106,'Dalarna',NULL,NULL,NULL),(224,12,223,'Hedemora kommun',NULL,NULL,NULL),(225,13,224,'Hedemora',NULL,NULL,NULL),(226,12,223,'Borlänge kommun',NULL,NULL,NULL),(227,13,226,'Borlänge',NULL,NULL,NULL),(228,12,223,'Faluns kommun',NULL,'images/','flag_unknown.jpg'),(229,13,228,'Falun',NULL,'images/','flag_unknown.jpg'),(230,7,107,'Gästrikland',NULL,'images/','flag_unknown.jpg'),(231,12,230,'Gävle kommun',NULL,'images/','flag_unknown.jpg'),(232,13,231,'Gävle',NULL,'images/','flag_unknown.jpg'),(233,12,230,'Sandvikens kommun',NULL,'images/','flag_unknown.jpg'),(234,13,233,'Sandviken',NULL,'images/','flag_unknown.jpg'),(235,7,106,'Värmland',NULL,'images/','flag_unknown.jpg'),(236,12,235,'Torsby kommun',NULL,'images/','flag_unknown.jpg'),(237,13,236,'Torsby',NULL,'images/','flag_unknown.jpg'),(238,12,230,'Ockelbo kommun',NULL,'images/','flag_unknown.jpg'),(239,13,238,'Ockelbo',NULL,'images/','flag_unknown.jpg'),(240,12,223,'Orsa kommun',NULL,'images/','flag_unknown.jpg'),(241,13,240,'Orsa',NULL,'images/','flag_unknown.jpg'),(242,12,223,'Älvdalens kommun',NULL,'images/','flag_unknown.jpg'),(243,13,242,'Älvdalen',NULL,'images/','flag_unknown.jpg'),(244,7,107,'Hälsingland',NULL,'images/','flag_unknown.jpg'),(245,12,244,'Söderhamns kommun',NULL,'images/','flag_unknown.jpg'),(246,13,245,'Söderhamn',NULL,'images/','flag_unknown.jpg'),(247,12,244,'Bollnäs kommun',NULL,'images/','flag_unknown.jpg'),(248,13,247,'Bollnäs',NULL,'images/','flag_unknown.jpg'),(249,12,244,'Ovanåkers kommun',NULL,'images/','flag_unknown.jpg'),(250,13,249,'Ovanåker',NULL,'images/','flag_unknown.jpg'),(251,12,244,'Hudiksvalls kommun',NULL,'images/','flag_unknown.jpg'),(252,13,251,'Hudiksvall',NULL,'images/','flag_unknown.jpg'),(253,12,244,'Ljusdals kommun',NULL,'images/','flag_unknown.jpg'),(254,13,253,'Ljusdal',NULL,'images/','flag_unknown.jpg'),(255,7,107,'Medelpad',NULL,'images/','flag_unknown.jpg'),(256,12,255,'Sundsvalls kommun',NULL,'images/','flag_unknown.jpg'),(257,13,256,'Sundsvall',NULL,'images/','flag_unknown.jpg'),(258,7,107,'Norrbotten',NULL,'images/','flag_unknown.jpg'),(259,12,258,'Piteå kommun',NULL,'images/','flag_unknown.jpg'),(260,13,259,'Piteå',NULL,'images/','flag_unknown.jpg'),(261,12,258,'Luleå kommun',NULL,'images/','flag_unknown.jpg'),(262,13,261,'Luleå',NULL,'images/','flag_unknown.jpg'),(263,12,108,'Ronneby kommun',NULL,NULL,NULL),(264,13,263,'Johannishus',NULL,NULL,NULL),(265,13,161,'Ankarsrum',NULL,NULL,NULL),(266,13,121,'Tokebo',NULL,NULL,NULL),(267,12,117,'Helsingborgs kommun',NULL,NULL,NULL),(268,13,267,'Helsingborg',NULL,NULL,NULL),(269,12,106,'Ale kommun',NULL,NULL,NULL),(270,13,269,'Hålanda',NULL,NULL,NULL),(271,12,112,'Nybro kommun',NULL,NULL,NULL),(272,13,271,'Nybro',NULL,NULL,NULL),(273,7,106,'Bohuslän',NULL,'images/','flag_unknown.jpg'),(274,12,273,'Öckerö kommun',NULL,'images/','flag_unknown.jpg'),(275,14,274,'Hönö',NULL,'images/','flag_unknown.jpg'),(276,13,109,'Fågelmara',NULL,'images/','flag_unknown.jpg'),(277,12,223,'Gagnefs kommun',NULL,NULL,NULL),(278,13,277,'Gagnef',NULL,NULL,NULL),(279,12,112,'Emmaboda kommun',NULL,NULL,NULL),(280,13,279,'Emmaboda',NULL,NULL,NULL),(281,12,112,'Växjö kommun',NULL,NULL,NULL),(282,13,281,'Växjö',NULL,NULL,NULL),(283,12,196,'Tyresö kommun',NULL,'images/','flag_unknown.jpg'),(284,13,283,'Tyresö',NULL,'images/','flag_unknown.jpg'),(285,12,196,'Botkyrka kommun',NULL,'images/','flag_unknown.jpg'),(286,13,285,'Botkyrka',NULL,'images/','flag_unknown.jpg'),(287,12,196,'Nyköpings kommun',NULL,'images/','flag_unknown.jpg'),(288,13,287,'Nyköping',NULL,'images/','flag_unknown.jpg'),(289,12,112,'Jönköpings kommun',NULL,NULL,NULL),(290,13,289,'Jönköping',NULL,NULL,NULL),(291,12,200,'Vallentuna kommun',NULL,NULL,NULL),(292,13,291,'Brottby',NULL,NULL,NULL),(293,7,105,'Östergötland',NULL,NULL,NULL),(294,12,293,'Norrköpings kommun',NULL,NULL,NULL),(295,13,294,'Norrköping',NULL,NULL,NULL),(296,12,117,'Svedala kommun',NULL,NULL,NULL),(297,13,296,'Börringe',NULL,NULL,NULL),(298,13,299,'Värnamo',NULL,'images/','flag_unknown.jpg'),(299,12,112,'Värnamo kommun',NULL,'images/','flag_unknown.jpg'),(300,12,112,'Torsås kommun',NULL,'images/','flag_unknown.jpg'),(301,13,300,'Petamåla',NULL,'images/','flag_unknown.jpg'),(302,12,108,'Ronneby kommun',NULL,'images/','flag_unknown.jpg'),(303,13,302,'Ronneby',NULL,'images/','flag_unknown.jpg'),(304,12,117,'Osby kommun',NULL,'images/','flag_unknown.jpg'),(305,13,304,'Lönsboda',NULL,'images/','flag_unknown.jpg'),(306,13,109,'Tjurkö',NULL,'images/','flag_unknown.jpg'),(307,13,109,'Aspö',NULL,'images/','flag_unknown.jpg'),(308,12,107,'Umeå kommun',NULL,NULL,NULL),(309,13,308,'Umeå',NULL,NULL,NULL),(310,12,112,'Mönsterås kommun',NULL,NULL,NULL),(311,13,310,'Brotorp',NULL,NULL,NULL),(312,12,310,'Mönsterås',NULL,NULL,NULL),(313,12,105,'Varbergs kommun',NULL,'images/','flag_unknown.jpg'),(314,13,313,'Dagsås',NULL,'images/','flag_unknown.jpg'),(315,13,313,'Varberg',NULL,'images/','flag_unknown.jpg'),(316,12,313,'Järlöv',NULL,'images/','flag_unknown.jpg'),(317,13,155,'Askim',NULL,'images/','flag_unknown.jpg'),(318,12,107,'Bodens kommun',NULL,'images/','flag_unknown.jpg'),(319,13,318,'Boden',NULL,'images/','flag_unknown.jpg'),(320,12,200,'Värmdö kommun',NULL,'images/','flag_unknown.jpg'),(321,13,320,'Mölnvik',NULL,'images/','flag_unknown.jpg'),(322,12,117,'Höganäs kommun',NULL,'images/','flag_unknown.jpg'),(323,13,322,'Höganäs',NULL,'images/','flag_unknown.jpg'),(324,12,106,'Eskilstuna kommun',NULL,'images/','flag_unknown.jpg'),(325,13,324,'Eskilstuna',NULL,'images/','flag_unknown.jpg'),(326,12,117,'Ystads kommun',NULL,'images/','flag_unknown.jpg'),(327,13,326,'Ystad',NULL,'images/','flag_unknown.jpg'),(328,12,200,'Sigtuna kommun',NULL,'images/','flag_unknown.jpg'),(329,13,328,'Rosersberg',NULL,'images/','flag_unknown.jpg'),(330,12,145,'Hylte kommun',NULL,'images/','flag_unknown.jpg'),(331,13,330,'Torup',NULL,'images/','flag_unknown.jpg'),(332,13,189,'Latorp',NULL,'images/','flag_unknown.jpg'),(333,12,293,'Valdemarsviks kommun',NULL,'images/','flag_unknown.jpg'),(334,13,333,'Valdemarsvik',NULL,'images/','flag_unknown.jpg'),(335,7,107,'Jämtland',NULL,'images/','flag_unknown.jpg'),(336,12,335,'Åre kommun',NULL,'images/','flag_unknown.jpg'),(337,13,336,'Järpen',NULL,'images/','flag_unknown.jpg'),(338,7,107,'Härjedalen',NULL,'images/','flag_unknown.jpg'),(339,12,338,'Härjedalens kommun',NULL,'images/','flag_unknown.jpg'),(340,13,339,'Sveg',NULL,'images/','flag_unknown.jpg');
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LocationType`
--

DROP TABLE IF EXISTS `LocationType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LocationType` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Description` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocationType`
--

LOCK TABLES `LocationType` WRITE;
/*!40000 ALTER TABLE `LocationType` DISABLE KEYS */;
INSERT INTO `LocationType` VALUES (3,'Land',NULL),(6,'Landsdel',NULL),(7,'Landskap',NULL),(12,'Kommun',NULL),(14,'Ö',NULL),(13,'Stad',NULL);
/*!40000 ALTER TABLE `LocationType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Website` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
INSERT INTO `Organization` VALUES (10,'Svenska Skyttesportförbundet','http://iof3.idrottonline.se/default.aspx?id=98'),(11,'Svenska Pistolskytteförbundet','http://www.pistolskytteforbundet.se/'),(12,'Svenska Jägareförbundet','http://www.jagareforbundet.se/'),(13,'Svenska Svartkruts Skytte Federationen','http://www.sssf.net/'),(14,'IPSC Sverige','http://www.ipsc.se/'),(15,'Svenska Bågskytteförbundet','http://iof1.idrottonline.se/default.aspx?id=281');
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Range`
--

DROP TABLE IF EXISTS `Range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Range` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `LocationID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Range`
--

LOCK TABLES `Range` WRITE;
/*!40000 ALTER TABLE `Range` DISABLE KEYS */;
/*!40000 ALTER TABLE `Range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RangeHomeclub`
--

DROP TABLE IF EXISTS `RangeHomeclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RangeHomeclub` (
  `RangeID` bigint(20) NOT NULL,
  `ClubID` bigint(20) NOT NULL,
  PRIMARY KEY (`RangeID`,`ClubID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RangeHomeclub`
--

LOCK TABLES `RangeHomeclub` WRITE;
/*!40000 ALTER TABLE `RangeHomeclub` DISABLE KEYS */;
INSERT INTO `RangeHomeclub` VALUES (0,0),(1,1),(2,2),(2,6),(2,7),(2,109),(3,83),(3,84),(5,3),(5,4),(6,5),(6,8),(7,1),(8,1),(9,1),(10,1),(11,5),(12,5),(13,8),(13,9),(14,9),(15,74),(15,113),(18,13),(21,14),(22,15),(24,16),(26,17),(26,77),(28,18),(30,19),(34,20),(39,21),(41,22),(42,23),(42,73),(42,129),(43,24),(44,25),(45,26),(47,12),(49,27),(52,72),(54,28),(55,29),(56,30),(57,31),(60,32),(61,33),(62,34),(63,35),(66,36),(68,37),(69,38),(70,39),(72,40),(74,41),(76,42),(77,42),(79,43),(80,44),(81,45),(82,46),(83,69),(84,69),(84,70),(85,47),(87,48),(88,49),(90,50),(94,51),(95,52),(96,53),(97,54),(100,55),(101,56),(102,57),(103,58),(104,59),(105,60),(106,61),(107,62),(108,142),(109,63),(110,71),(111,71),(113,10),(119,98),(132,64),(133,64),(134,66),(135,65),(136,11),(137,67),(138,52),(139,52),(140,68),(141,68),(142,69),(143,75),(143,76),(143,130),(144,75),(145,79),(146,79),(147,79),(149,79),(150,79),(151,79),(152,79),(153,80),(154,80),(155,81),(155,117),(156,82),(158,135),(159,83),(160,84),(161,85),(162,86),(163,87),(163,88),(164,89),(165,90),(166,91),(166,92),(177,98),(184,93),(185,93),(186,93),(187,94),(187,95),(188,94),(188,95),(189,94),(193,110),(194,110),(195,111),(196,111),(197,113),(198,113),(200,6),(201,114),(202,81),(203,117),(204,118),(205,118),(206,118),(207,119),(209,119),(210,120),(211,121),(212,123),(216,127),(217,128),(218,131),(222,134),(223,135),(224,137),(224,138),(224,140),(224,142),(225,137),(225,138),(225,140),(225,142),(226,137),(226,138),(226,140),(226,142),(227,137),(227,138),(227,140),(227,142),(228,137),(228,139),(228,141),(229,137),(229,138),(229,139),(229,140),(229,141),(229,142),(230,137),(230,138),(230,140),(230,142),(231,143),(232,143),(233,144),(234,145),(235,146),(236,147);
/*!40000 ALTER TABLE `RangeHomeclub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RangeType`
--

DROP TABLE IF EXISTS `RangeType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RangeType` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Description` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RangeType`
--

LOCK TABLES `RangeType` WRITE;
/*!40000 ALTER TABLE `RangeType` DISABLE KEYS */;
INSERT INTO `RangeType` VALUES (1,'Mixad / Okänd',NULL),(2,'Luftvapen / Inomhusbana',NULL),(3,'Gevärsbana',NULL),(4,'Pistolbana',NULL),(5,'Lerduvebana',NULL),(6,'Fripistol / Korthållsbana',NULL),(7,'Nedlagd / Inaktiv',NULL),(8,'Älgbana',NULL);
/*!40000 ALTER TABLE `RangeType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShootingRange`
--

DROP TABLE IF EXISTS `ShootingRange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShootingRange` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `LocationID` bigint(20) NOT NULL,
  `Lat` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Lon` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8_swedish_ci,
  `RangeTypeID` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShootingRange`
--

LOCK TABLES `ShootingRange` WRITE;
/*!40000 ALTER TABLE `ShootingRange` DISABLE KEYS */;
INSERT INTO `ShootingRange` VALUES (1,'25 meter',122,'N56 14.215\'','E015 51.928\'',NULL,4),(2,'Luftvapenalliansen',110,'N56 09.790\'','E015 35.638\'','Elektronisk markering.',2),(3,'Sävsjö Skyttecenter',114,'N57 23.791\'','E014 39.886\'','Elektronisk markering.',2),(4,'Söderslättshallen',115,'N55 23.204\'','E013 09.370\'',NULL,2),(5,'Ringamåla',118,'N56 18.045\'','E014 51.188\'','Elektronisk markering.',2),(6,'Skällby Luftvapenhall',120,'N56 40.841\'','E016 19.968\'',NULL,2),(7,'50 meter',122,'N56 14.197\'','E015 51.898\'',NULL,6),(8,'Klubbhuset',122,'N56 14.239\'','E015 51.975\'',NULL,2),(9,'Lerduvebanan',122,'N56 14.218\'','E015 51.919\'',NULL,5),(10,'Älgbanan',122,'N56 14.245\'','E015 51.842\'',NULL,8),(11,'25 meter',120,'N56 40.737\'','E016 19.592\'',NULL,4),(12,'50 meter',120,'N56 40.738\'','E016 19.587\'',NULL,6),(13,'Skogstorps Skyttecentrum',120,'N56 42.340\'','E016 16.315\'',NULL,6),(183,'Emmaboda',280,'N56 38.230\'','E015 31.681\'',NULL,3),(15,'Bödkaregården',126,'N55 35.817\'','E013 3.385\'',NULL,4),(18,'Ängelholms PSK',137,'N56 14.047\'','E012 49.418\'',NULL,4),(21,'Lunds PK',123,'N55 40.945\'\r\n','E013 14.070\'\r\n',NULL,4),(22,'Landskrona PK',139,'N55 51.860\'','E012 52.650\'\r\n',NULL,4),(23,'Hanebjerg',0,'N55 52.786\'\r\n','E012 14.419\'\r\n',NULL,1),(24,'Kristianstads PK',141,'N55 59.325\'','E014 6.402\'',NULL,4),(26,'PK Eken',142,'N56 10.863\'','E014 43.370\'',NULL,6),(28,'Olofströms PSK',144,'N56 17.045\'','E014 33.215\'',NULL,4),(29,'Ringenäs skjutfält',147,'N56 41.185\'\r\n','E012 42.114\'\r\n',NULL,1),(30,'Halmstads SSK',147,'N56 41.379\'','E012 50.535\'',NULL,4),(32,'Kronobergshed',149,'N56 58.401\'','E014 33.825\'',NULL,8),(34,'Västbo PK',151,'N57 19.528\'\r\n','E013 33.064\'\r\n',NULL,1),(38,'Vimmerby',153,'N57 40.084\'\r\n','E015 48.340\'\r\n',NULL,1),(39,'Göteborgs PSSK',156,'N57 40.208\'\r\n','E011 56.435\'\r\n',NULL,4),(41,'Polisens IF',156,'N57 40.743\'\r\n','E012 2.082\'\r\n',NULL,1),(42,'Telegrafverket PSF',156,'N57 40.814\'\r\n','E012 1.914\'\r\n',NULL,4),(43,'Örgryte PK',156,'N57 40.839\'\r\n','E012 1.824\'\r\n',NULL,4),(44,'FOK Borås',158,'N57 42.764\'\r\n','E012 54.705\'\r\n',NULL,1),(45,'Ulricehamns PK',160,'N57 49.542\'\r\n','E013 25.627\'\r\n',NULL,1),(46,'Borgudden',162,'N57 58.667\'\r\n','E016 21.618\'\r\n',NULL,1),(47,'Vårgårda PSK',164,'N58 1.846\'\r\n','E012 50.390\'\r\n','20 platser med duellställ på 25 meter för SPSF och SSF grenar. 10 skjutplatser med duellställ på 25 yards för PPC. 10 skjutplatser utan duellställ på 50 yards för PPC.',4),(48,'Kaflås',166,'N58 13.583\'\r\n','E013 51.550\'\r\n',NULL,1),(49,'Trollhättans PK',168,'N58 17.481\'\r\n','E012 13.448\'\r\n',NULL,1),(50,'Skövde',170,'N58 20.923\'\r\n','E013 52.173\'\r\n',NULL,1),(51,'Uddevalla',173,'N58 21.661\'\r\n','E011 57.584\'\r\n',NULL,1),(52,'Axvall',175,'N58 25.489\'\r\n','E013 33.194\'\r\n',NULL,1),(54,'Södra Dals PSF',177,'N58 35.216\'\r\n','E012 11.600\'\r\n',NULL,1),(55,'Hammars PSK',180,'N58 47.917\'\r\n','E015 6.500\'\r\n',NULL,1),(56,'Överby PK',182,'N58 51.484\'\r\n','E011 14.300\'\r\n',NULL,1),(57,'Laxå PSK',184,'N58 57.517\'\r\n','E014 41.450\'\r\n',NULL,1),(60,'Fjugesta PSK',186,'N59 11.350\'\r\n','E014 51.184\'\r\n',NULL,1),(61,'Salems PK',188,'N59 12.332\'\r\n','E017 44.396\'\r\n',NULL,1),(62,'Hemvärnets Stridsskola',188,'N59 15.817\'\r\n','E017 42.484\'\r\n',NULL,1),(63,'Örebro PSSK',190,'N59 18.017\'\r\n','E015 14.134\'\r\n',NULL,1),(64,'Slätten',190,'N59 18.983\'\r\n','E015 15.817\'\r\n',NULL,1),(65,'Grimsta skjutbana',192,'N59 21.067\'','E017 51.709\'\r\n',NULL,1),(66,'Älvenäs PK',195,'N59 22.033\'\r\n','E013 10.350\'\r\n',NULL,1),(68,'Lövsta SKF',192,'N59 23.643\'\r\n','E017 47.637\'\r\n',NULL,1),(69,'Karlstads PSK',195,'N59 23.858\'\r\n','E013 20.335\'\r\n',NULL,1),(70,'Edsvalla SKF',195,'N59 26.767\'\r\n','E013 14.400\'\r\n',NULL,1),(72,'Scheele SSK',199,'N59 29.617\'\r\n','E015 58.150\'\r\n',NULL,1),(73,'Eggeby',202,'N59 32.483\'\r\n','E017 56.800\'\r\n',NULL,1),(74,'Lindesbergs PS',206,'N59 36.550\'\r\n','E015 7.567\'\r\n',NULL,1),(75,'Enköping',204,'N59 39.400\'\r\n','E017 8.434\'\r\n',NULL,1),(76,'Ramsbergs PSK Magnumfält',206,'N59 44.950\'\r\n','E015 11.666\'\r\n',NULL,1),(77,'Ramsbergs PSK',206,'N59 46.733\'\r\n','E015 17.884\'\r\n',NULL,1),(78,'Hällefors jaktbanor',208,'N59 47.800\'\r\n','E014 32.366\'\r\n',NULL,1),(79,'Hällefors PSK',208,'N59 47.887\'\r\n','E014 32.894\'\r\n',NULL,1),(80,'Sköllersta SKF',210,'N59 5.317\'\r\n','E015 19.933\'\r\n',NULL,1),(81,'SJ SK Hallsberg',212,'N59 5.533\'\r\n','E015 5.333\'\r\n',NULL,1),(82,'Sunne PK',214,'N59 50.884\'\r\n','E013 13.117\'\r\n',NULL,1),(83,'Ekebyboda',216,'N59 53.880\'\r\n','E017 30.416\'\r\n',NULL,1),(84,'Faxan',216,'N59 54.450\'\r\n','E017 37.500\'\r\n',NULL,1),(85,'Uddeholms PK',218,'N59 59.960\'\r\n','E013 39.000\'\r\n',NULL,1),(87,'Kumla Sportskyttar',212,'N59 7.754\'','E015 11.590\'',NULL,4),(88,'Handens PK',220,'N59 8.083\'\r\n','E018 11.533\'\r\n',NULL,4),(90,'Östhammars PK',222,'N60 14.816\'\r\n','E018 20.134\'\r\n',NULL,1),(91,'Backa',225,'N60 15.364\'\r\n','E016 1.261\'\r\n',NULL,1),(92,'Garpenberg',225,'N60 16.400\'\r\n','E016 14.500\'\r\n',NULL,1),(94,'Borlänge PK',227,'N60 33.283\'\r\n','E015 18.217\'\r\n',NULL,1),(95,'Sanders hemman',229,'N60 34.316\'\r\n','E015 35.700\'\r\n',NULL,1),(96,'Gävle PSK',232,'N60 37.088\'\r\n','E017 12.749\'\r\n',NULL,4),(97,'Sandvikens PSK',234,'N60 37.462\'\r\n','E016 43.573\'\r\n',NULL,1),(98,'Sysslebäck',237,'N60 44.683\'\r\n','E012 51.167\'\r\n',NULL,1),(100,'Ockelbo PSK',239,'N60 57.752\'\r\n','E016 42.793\'\r\n',NULL,1),(101,'Orsa PSK',241,'N61 11.577\'\r\n','E014 43.745\'\r\n',NULL,1),(102,'Älvdalens PK',243,'N61 13.817\'\r\n','E014 5.467\'\r\n',NULL,1),(103,'Söderhamns PSK',246,'N61 15.288\'\r\n','E017 2.599\'\r\n',NULL,1),(104,'Bollnäs PSK',248,'N61 21.455\'\r\n','E016 17.491\'\r\n',NULL,1),(105,'Rotebergs SK',250,'N61 24.161\'\r\n','E015 51.511\'\r\n',NULL,1),(106,'Forsa PK',252,'N61 44.527\'\r\n','E016 57.328\'\r\n',NULL,1),(107,'Ljusdals PSK',254,'N61 49.858\'\r\n','E016 1.621\'\r\n',NULL,1),(108,'M3 Skyttecenter',257,'N62 22.777\'\r\n','E017 18.220\'\r\n',NULL,2),(109,'Piteå PK',260,'N65 17.788\'\r\n','E021 19.144\'\r\n',NULL,1),(110,'Arcushallen',262,'N65 35.780\'','E022 3.740\'',NULL,2),(111,'Knöppelåsen',262,'N65 36.133\'\r\n','E022 13.967\'\r\n',NULL,1),(131,'Tjursbo',265,'N57 43.990\'','E016 21.110\'',NULL,1),(113,'Stegeryd',264,'N56 13.712\'','E015 28.805\'',NULL,6),(114,'Fågelmara',276,'N56 15.533\'','E015 58.060\'','Kristianopels SF?',3),(115,'Aspö',0,NULL,NULL,NULL,3),(193,'Espedalsskolan',303,'N56 12.325\'','E015 15.730\'',NULL,2),(191,'Kronobergshed',149,'N56 58.395\'','E014 33.763\'',NULL,6),(118,'Svinnersbo',0,NULL,NULL,NULL,1),(119,'Tokebobanan',266,'N56 48.632\'','E016 12.041\'',NULL,3),(120,'Långasjö Älg och Skolskyttebana',0,NULL,NULL,NULL,1),(194,'Fornanäs',303,'N56 11.135\'','E015 17.885\'',NULL,4),(122,'Pelarne Skjutbana, Kulla, Vimmerby',0,NULL,NULL,NULL,1),(190,'Kronobergshed',149,'N56 58.403\'','E014 33.812\'',NULL,4),(126,'Mästaremåla',0,NULL,NULL,NULL,1),(128,'Stengrepen',0,NULL,NULL,NULL,1),(192,'Kronobergshed',149,'N56 58.390\'','E014 33.723\'',NULL,3),(132,'PSKF Magnus Stenbock',268,'N56 4.662\'','E012 43.302\'',NULL,4),(133,'Idrottens Hus',268,'N56 3.210\'','E012 42.310\'',NULL,2),(134,'Skepplanda Sportskyttar',270,'N58 3.427\'','E012 21.859\'',NULL,1),(135,'Slättingebygds skyttecenter',272,'N56 51.898\'','E015 57.895\'',NULL,4),(136,'Öckerö Skytteförening',275,'N57 41.976\'','E011 39.645\'',NULL,1),(137,'Björka Skjutbana',278,'N60 31.864\'','E015 6.317\'',NULL,1),(138,'Lufthallen',229,'N60 36.313\'','E015 37.463\'',NULL,2),(139,'Lugnets idrottsanläggning',229,'N60 37.063\'','E015 39.453\'',NULL,2),(140,'Älgbanan',280,'N56 38.338\'','E015 33.787\'',NULL,8),(141,'Trap och Skeet',280,'N56 39.420\'','E015 34.187\'',NULL,5),(142,'Luftskyttehallen',216,'N59 52.133\'','E017 39.207\'',NULL,2),(143,'Lövåsens skjutbanor',282,'N56 52.790\'','E014 54.605\'','Elektronisk markering i lufthallen.',1),(144,'Växjö Simhall',282,'N56 52.345\'','E014 48.993\'',NULL,2),(145,'Spillepengen, Harbanan',126,'N55 37.972\'','E013 2.963\'',NULL,1),(146,'Spillepengen, Bana B 300m',126,'N55 37.937\'','E013 3.067\'',NULL,3),(147,'Spillepengen, Bana C 50m',126,'N55 37.922\'','E013 2.995\'',NULL,6),(148,'Spillepengen, Bana D',126,'N55 37.912\'','E013 2.985\'','Endast för polisens verksamhet.',1),(149,'Spillepengen, Bana E 25m',126,'N55 37.895\'','E013 3.015\'',NULL,4),(150,'Spillepengen, Älgbanan 80m',126,'N55 38.043\'','E013 2.972\'',NULL,8),(151,'Spillepengen, Svartkrut 100m',126,'N55 38.060\'','E013 3.095\'',NULL,3),(152,'Spillepengen, Bana A 200m',126,'N55 37.975\'','E013 2.973\'',NULL,3),(153,'Alby friluftsområde',284,'N59 14.237\'','E018 16.330\'',NULL,1),(154,'Nyboda idrottshall',284,'N59 14.395\'','E018 13.685\'',NULL,2),(155,'Hacksjöbanan',286,'N59 10.555\'','E017 55.915\'',NULL,4),(156,'Nyköpings PK',288,'N58 46.895\'','E017 1.563\'',NULL,4),(157,'Nyköping',288,'N58 46.795\'','E017 1.243\'',NULL,3),(158,'Hugelsta Skyttecenter',325,'N59 22.040\'','E016 36.900\'',NULL,1),(159,'Jönköping',290,'N57 45.625\'','E014 11.585\'',NULL,4),(160,'Skrapstad',114,'N57 25.905\'','E14 40.750\'',NULL,4),(161,'Bettorps industriområde',190,'N59 18.015\'','E015 14.040\'',NULL,3),(162,'Brottby',292,'N59 32.993\'','E018 12.685\'',NULL,3),(163,'Borgholms skyttecentrum',295,'N58 33.98\'','E016 7.960\'',NULL,1),(164,'Börringe',297,'N55 30.703\'','E013 19.295\'',NULL,5),(165,'Älgsjöns jaktskyttebanor',232,'N60 37.110\'','E017 12.870\'',NULL,1),(166,'Slättingebygds skyttecenter',272,'N56 51.928\'','E015 58.055\'',NULL,3),(167,'Landskrona',139,'N55 51.855\'','E012 52.627\'',NULL,6),(168,'Ängelholm',137,'N56 14.064\'','E012 49.435\'',NULL,4),(169,'Ängelholm',137,'N56 14.081\'','E012 49.426\'',NULL,6),(170,'PSKF Magnus Stenbock',268,'N56 4.682\'','E012 43.287\'',NULL,6),(171,'Halmstad',147,'N56 41.391\'','E012 50.501\'',NULL,6),(172,'Stegeryd',264,'N56 13.712\'','E015 28.795\'',NULL,4),(173,'Ringamåla',118,'N56 18.058\'','E014 51.195\'',NULL,6),(174,'Mörrum',142,'N56 10.860\'','E014 43.367\'',NULL,3),(175,'Olofström',144,'N56 17.087\'','E014 33.212\'',NULL,3),(176,'Kristianstad',141,'N55 59.339\'','E014 6.335\'',NULL,6),(177,'Tokebobanan',266,'N56 48.587\'','E016 12.255\'',NULL,5),(178,'Slättingebygds skyttecenter',272,'N56 51.878\'','E015 58.025\'',NULL,5),(179,'Skogstorps Skyttecentrum',120,'N56 42.400\'','E016 16.225\'',NULL,3),(180,'Skogstorps Skyttecentrum',120,'N56 42.435\'','E016 16.100\'',NULL,8),(181,'Skogstorps Skyttecentrum',120,'N56 42.438\'','E016 16.060\'',NULL,8),(182,'Skogstorps Skyttecentrum',120,'N56 42.560\'','E016 16.024\'',NULL,5),(184,'Bangårdsgatan lufthall',298,'N57 11.767\'','E014 2.052\'',NULL,2),(185,'Källäng',298,'N57 14.445\'','E014 2.860\'',NULL,3),(186,'Källäng Korthåll',298,'N57 14.435\'','E014 2.874\'',NULL,6),(187,'Petamåla',301,'N56 28.053\'','E15 47.184\'',NULL,6),(188,'Petamåla',301,'N56 28.078\'','E15 47.184\'','Elekronisk markering.',2),(189,'Petamåla',301,'N56 28.045\'','E15 46.877\'',NULL,3),(195,'Lönsboda',305,'N56 23.355\'','E014 19.918\'',NULL,4),(196,'Lönsboda',305,'N56 23.357\'','E014 19.882\'',NULL,6),(197,'Bödkaregården',126,'N55 35.817\'','E013 3.445\'',NULL,6),(198,'Bödkaregården',126,'N55 35.811\'','E013 3.420\'',NULL,2),(199,'Tjurkö',306,'N56 6.218\'','E015 35.897\'',NULL,3),(200,'Gläntan',307,'N56 6.506\'','E015 32.58\'',NULL,6),(201,'Umeå Skjuthall',309,'N63 50.395\'','E020 15.650\'',NULL,2),(202,'Hacksjöbanan',286,'N59 10.520\'','E017 55.950\'',NULL,3),(203,'Hacksjöbanan',286,'N59 10.539\'','E017 55.891\'',NULL,6),(204,'Blomstermåla luftvapenhall',0,NULL,NULL,NULL,2),(205,'Brotorp',311,'N56 57.145\'','E016 21.51\'',NULL,6),(206,'Brotorp',311,'N56 57.170\'','E016 21.458\'',NULL,3),(207,'Koverhultsvägen',312,'N57 2.580\'','E016 23.786\'',NULL,3),(208,'Koverhultsvägen',312,'N57 2.590\'','E016 23.835\'',NULL,4),(209,'Koverhultsvägen',312,'N57 2.515\'','E016 23.821\'',NULL,6),(210,'Säve skjutbana',156,'N57 46.610\'','E011 53.185\'',NULL,1),(211,'Dagsås skjutbana',314,'N57 3.805\'','E12 27.48\'',NULL,3),(212,'Håstensskolans skytte- och fritidslokal',315,'N57 7.168\'','E012 16.580\'',NULL,2),(213,'Järlövs Skjutskola och Jaktskyttebana',316,'N57 18.077\'','E012 22.706\'',NULL,1),(214,'Sisjöns övningsområde',317,'N57 37.543\'','E011 58.883\'',NULL,6),(215,'Sisjöns övningsområde',317,'N57 37.528\'','E011 58.813\'',NULL,4),(216,'Boden Pistol',319,'N65 49.72\'','E021 46.003\'',NULL,1),(217,'Mölnviks skjutbana',321,'N59 18.52\'','E018 25.263\'',NULL,4),(218,'Höganäs',323,'N56 13.053\'','E012 33.227\'',NULL,1),(219,'Sandskogen',327,'N55 26.344\'','E013 53.544\'',NULL,6),(220,'Sandskogen',327,'N55 26.357\'','E013 53.724\'',NULL,4),(221,'Sandskogen',327,'N55 26.510\'','E013 53.464\'',NULL,3),(222,'Rosersberg',329,'N59 35.370\'','E017 50.450\'',NULL,1),(223,'Munktellarenan',325,'N59 22.677\'','E016 30.642\'',NULL,2),(224,'Blåberget, Fält 1 och 2',257,'N62 21.985\'','E017 11.075\'',NULL,1),(225,'Blåberget, Fält 3',257,'N62 21.985\'','E017 11.035\'',NULL,1),(226,'Blåberget, Fält 4',257,'N62 22.018\'','E017 10.948\'',NULL,1),(227,'Blåberget, Fält 5',257,'N62 22.038\'','E017 10.868\'',NULL,1),(228,'Blåberget, 300 meter',257,'N62 22.078\'','E017 10.812\'',NULL,3),(229,'Blåberget, 50 meter',257,'N62 22.121\'','E017 10.645\'',NULL,6),(230,'Blåberget, 25 meter',257,'N62 22.131\'','E017 10.601\'',NULL,4),(231,'Rydö',331,'N56 58.137\'','E013 7.495\'',NULL,4),(232,'Rydö',331,'N56 58.143\'','E013 7.517\'',NULL,6),(233,'Latorp',332,'N59 16.958\'','E014 59.984\'',NULL,4),(234,'Vammarskolan',334,'N58 12.500\'','E016 35.500\'','Vilken av byggnaderna är skjuthallen?',2),(235,'Västjämtens PK',337,'N63 21.45\'','E013 25.950\'',NULL,1),(236,'Svegs PK',340,'N62 2.035\'','E014 19.96\'',NULL,1);
/*!40000 ALTER TABLE `ShootingRange` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-15 14:15:55
