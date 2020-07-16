-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: OC_Pizza
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_id` bigint unsigned NOT NULL,
  `additional_info` varchar(50) DEFAULT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_address` (`address1`,`address2`),
  KEY `FK` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'77B82','308, avenue Timothée Martineau','w'),(2,2,'42o20','144, boulevard Marty','vbcIB'),(3,3,'93e98','62, avenue Julien','wx'),(4,4,'91q19','39, rue Pereira','UqzjixAiLbYjBRtNKwH'),(5,5,'53C54','940, chemin Marcel Delattre','nNPJtTiN'),(6,6,'39N73','3, chemin Astrid Laurent','CoLlrMoujKkGu'),(7,7,'41k27','366, rue William Vallee','pnAwFQmIeTzhRF'),(8,8,'37Y40','29, rue Bernier','KzKjPZuuHtRIVpnOx'),(9,9,'40h10','4, rue Adèle Bertin','izGGZemenaBcKnpvR'),(10,10,'96m23','574, chemin Raymond','lyPOPigpswLeudUtSDx'),(11,11,'94L85','boulevard Diallo','U'),(12,12,'91D39','85, avenue de Dubois','XXhRkoSP'),(13,13,'61S14','7, rue Jérôme Riviere','kwdbWngiG'),(14,14,'95M50','44, chemin Le Goff','uHmsWVo'),(15,15,'68T48','6, chemin Auger','JyFARXfkVrYvPfxAk'),(16,16,'58l55','55, avenue de Loiseau','PUKZHYgIm'),(17,17,'45F63','28, chemin Hernandez','mLJEuWbab'),(18,18,'17H22','9, boulevard Christine Chauvet','Lieqj'),(19,19,'58S20','44, avenue Camille Camus','HSrGxqx'),(20,20,'81P84','16, chemin Lelievre','mdwIaRfPURFsppeO'),(21,21,'40W87','84, rue Arnaude Grenier','dRLD'),(22,22,'38r31','307, boulevard Guyon','SxC'),(23,23,'31P56','71, rue Marcel De Oliveira','fdhghroWSMNTi'),(24,24,'65B21','chemin Agathe Payet','ZywGrTViNdr'),(25,25,'52b23','60, avenue de Courtois','djSRpijxPJsalB'),(26,26,'85Z56','8, chemin Laurent Leclerc','Xdnajj'),(27,27,'54w71','87, avenue de Marie','GwMKHgtUWufCmOKZtNQ'),(28,28,'05a24','14, boulevard Arthur Marie','t'),(29,29,'47i99','59, boulevard Gros','gnFNUsSi'),(30,30,'10n40','23, chemin de Thierry','rnfIZbZH'),(31,31,'09W47','9, avenue de Rodrigues','qiHmQBJATyQCyazXh'),(32,9,'69O02','28, rue de Royer','QFdBcNonvYVj'),(33,33,'46g07','chemin de Pruvost','FKwNexPxNIBtnroZ'),(34,34,'78j31','54, boulevard de Caron','lMalFKA'),(35,35,'86n18','rue Nicolas Lamy','eGscWnNgagkscPRpJ'),(36,36,'75m99','92, rue Maillet','LKUqQSeI'),(37,37,'84x60','533, rue Perret','ErHrVNpcPljGX'),(38,38,'31K57','32, avenue Chretien','sUoFMrUHmfT'),(39,39,'88D17','32, rue Roland Fernandes','pGSNmZNJmE'),(40,40,'51w99','13, chemin Éléonore Clement','tgBQFBZMOEdWbYr'),(41,41,'39X91','73, chemin Nicolas','hpOeevGMCzkovo'),(42,42,'30j89','49, chemin Gabriel Toussaint','pCXX'),(43,43,'37Q07','84, avenue de Brun','ygeKcw'),(44,44,'99L62','9, chemin de Philippe','Hl'),(45,45,'03P86','10, boulevard Muller','VSyZEqbeqJcaYrI'),(46,46,'57Z74','93, chemin Christelle Lefevre','VBVa'),(47,47,'90t27','481, boulevard Agnès Carre','swOlxLPDNXTtcSQfwM'),(48,48,'45P85','52 Avenue Victor Hugo','Ambassade d\'Islande'),(49,49,'13q57','49, boulevard Corinne Adam','MutqAejHo'),(50,50,'94r38','6, rue Coulon','cDuMugTWCgKVgZfYjPbW'),(51,51,'49K83','boulevard Alphonse Collet','qnvPUboOGWyZvE'),(52,52,'59Y97','89, chemin Charles Michel','SpAP'),(53,53,'64j15','64, rue de Cordier','RQAQjXOggNCajmb'),(54,54,'32V95','95, rue Moreau','GSCBbZHctloMTQ'),(55,55,'83I25','6, chemin Guyot','hbAEYokjkBH'),(56,56,'59T73','50, chemin de Fernandes','DeezrtHfVYanWfxLsoY'),(57,57,'71s15','353, boulevard Gerard','wOkSdCNsiHYCO'),(58,45,'21m31','32, chemin Laure Poirier','DsZct'),(59,59,'78O53','16, chemin de Charpentier','JLLNlkXEnBEcgtogHy'),(60,60,'17T19','37, rue Thérèse Charles','q');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'LES BEST SELLERS'),(5,'LES INCONTOURNABLES'),(8,'LES NOUVEAUTES'),(3,'LES VEGANNES'),(2,'LES VEGETARIENNES');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Fontainenec','81125'),(2,'Bourdon','90606'),(3,'Sainte Élodienec','22223'),(4,'Pires','54158'),(5,'Nguyen-sur-Merle','33614'),(6,'Besnard-sur-Launay','97052'),(7,'Lebrun','24883'),(8,'Meunier-sur-Regnier','88833'),(9,'Perrier','15506'),(10,'Andre','67663'),(11,'Monnier-sur-Mer','26362'),(12,'Fournier','77045'),(13,'Saint Matthieu-les-Bains','72034'),(14,'Louis','31587'),(15,'Barbe','24649'),(16,'Guilletdan','30507'),(17,'Le Gall','09121'),(18,'Dubois','23082'),(19,'Sainte Renée','77633'),(20,'Lucasnec','06504'),(21,'Paul','19876'),(22,'Legrandnec','94426'),(23,'Gosselin-sur-Jacquet','68067'),(24,'Olivier-les-Bains','61419'),(25,'Saint Aiménec','09197'),(26,'Sainte Frédérique','18191'),(27,'Robin','13388'),(28,'Bigot','12745'),(29,'Nguyen','19035'),(30,'Delahaye-sur-Gregoire','17400'),(31,'Chauvet','07890'),(33,'Maillet','03674'),(34,'Pierre','50248'),(35,'Leclercq-les-Bains','68801'),(36,'Pierredan','37996'),(37,'Brunetnec','40602'),(38,'MartinVille','33090'),(39,'Royer','40391'),(40,'Saint SuzanneVille','33673'),(41,'Grenier','94349'),(42,'Letellier-la-Forêt','79102'),(43,'Durand','48269'),(44,'Rey','17749'),(45,'Samson','97329'),(46,'Dupredan','55164'),(47,'Pichon-la-Forêt','31682'),(48,'Paris','75016'),(49,'Sainte DavidVille','85271'),(50,'Lemaitre','56633'),(51,'GomesBourg','80186'),(52,'Colas','32373'),(53,'Sainte Maurice','42481'),(54,'Saint Diane','37416'),(55,'Menard','68755'),(56,'Gay-sur-Mer','11281'),(57,'Arnaud-la-Forêt','99484'),(59,'Saint Thérèseboeuf','45832'),(60,'Pelletier','46462');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_address` bigint unsigned NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `birthdate` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `FK` (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,11,'Paulette','Alves','45-12-91-08-78','1987-09-25 00:00:00','Paulette.Alves@gmail.com','$pbkdf2-sha256$29000$mhMC4Fyr9T7H.J9zjnFujQ$P.BDnr2WxcoG3vD18R8IQt1zwFbkSLRk8RMh/QChEs0'),(2,12,'Noémi','Martins','04-94-52-92-84','1988-07-21 00:00:00','Noémi.Martins@gmail.com','$pbkdf2-sha256$29000$eI9xjjEGICTkvLdWqlWqNQ$Sg3opqJKeSKahhiNIflKzcln2mgH4WRef2xko6cegHs'),(3,13,'Gérard','Jean','50-37-29-16-17','1973-12-04 00:00:00','Gérard.Jean@gmail.com','$pbkdf2-sha256$29000$ew/BOEdIKYWQspZSilFKCQ$t46qErTnE1pLmXMKDvanQF1g8ThhI1bomP8fHmQwrms'),(4,14,'Olivie','Germain','03-98-78-85-37','2016-06-13 00:00:00','Olivie.Germain@gmail.com','$pbkdf2-sha256$29000$7937H.Pc21sLwdj7f./dew$PHvfOAtOchPANgbX/KvIx9h2Ivk/nxNjtEqlPjlgwII'),(5,15,'Thierry','Pottier','20-09-03-69-13','1972-05-24 00:00:00','Thierry.Pottier@gmail.com','$pbkdf2-sha256$29000$REhpjbF2rvVeS2ktpXTOeQ$rKN.TjQaMmQf1jRDimbcOvYwCSVE9xu8xC5YDnRAvkM'),(6,16,'Julien','Mallet','51-69-01-12-42','2003-03-24 00:00:00','Julien.Mallet@gmail.com','$pbkdf2-sha256$29000$1Nqb05pT6h1jrJUSYgzhXA$6Feb.rND1mxW2QYJ/QSwv.610ALxnIYGHxWIbUEdj0Y'),(7,17,'Simone','Blanc','87-74-37-04-68','1989-12-06 00:00:00','Simone.Blanc@gmail.com','$pbkdf2-sha256$29000$HWNsbS3FWMuZc661tjYm5A$JJ6kOYGvRk3YTzw7z6VI/umA/aRmM8eTuhY/zm48OQc'),(8,18,'Monique','Dubois','23-23-72-41-31','1971-03-15 00:00:00','Monique.Dubois@gmail.com','$pbkdf2-sha256$29000$8B6j9H7PeU.JMSZkrBVCSA$0l2gErJzY7HWRCx.0F3gD8k2M8m/8lQXPfzErwruwoc'),(9,19,'Zoé','Julien','80-26-95-88-51','1970-06-24 00:00:00','Zoé.Julien@gmail.com','$pbkdf2-sha256$29000$OOeck/LeW0vpfe8dI.RcSw$CyUIuz8dMKWE3h//VwZfvrJdKtE75uNgVC2nyyF6qsU'),(10,20,'René','Mathieu','97-75-14-04-54','2009-08-11 00:00:00','René.Mathieu@gmail.com','$pbkdf2-sha256$29000$xVjr3dubs3YO4RyDcI5xjg$1MmKiH7FJTNHcMioqIsGz.tl05VW98MrM8HvDz18b.Y'),(11,21,'Sylvie','Hamon','51-37-28-89-36','2015-09-09 00:00:00','Sylvie.Hamon@gmail.com','$pbkdf2-sha256$29000$0npv7V3L.b.3NoaQci6l1A$8jJiFZ7.SAYEWwwlT.zeoWh6JJ213gpJXQlHHUfsBo0'),(12,22,'Jeannine','Carre','57-18-58-50-24','2014-03-29 00:00:00','Jeannine.Carre@gmail.com','$pbkdf2-sha256$29000$EIJQynnPOSckBCCE0JqTEg$OSm67/vJxR5Hv1RLqruQAXQbVvsfXA5952BihQMDsMs'),(13,23,'Hortense','Mathieu','42-39-85-99-97','1975-04-09 00:00:00','Hortense.Mathieu@gmail.com','$pbkdf2-sha256$29000$xXgPAYCwtnZuzZlzDqGUkg$9xHlQ/WuV47rLInF7RSBxgf.NREPg0tkDqV1hzUqxSU'),(14,24,'Renée','Jacques','28-16-48-39-13','2013-10-16 00:00:00','Renée.Jacques@gmail.com','$pbkdf2-sha256$29000$7j1HaM1Z6z3nPCcEgJAyhg$rcMX5enSwWIhkEvHqo6Ajwlk2M.2.oFZc97hc37m8r4'),(15,25,'Margot','Bernard','08-65-98-63-79','2009-06-02 00:00:00','Margot.Bernard@gmail.com','$pbkdf2-sha256$29000$K8V4z1nrnRNCaA3hXCvFuA$QAADR1pVBqfBZ1AY0LRarCcEWK3EYBIlfPoB1LEvN6I'),(16,26,'Alex','Hoarau','27-22-01-96-06','1977-08-18 00:00:00','Alex.Hoarau@gmail.com','$pbkdf2-sha256$29000$1tq7NyYkxBgjZAzBmJNyzg$DSnpgDAiEq9.SIoByIRjR3VC493oENZ7R5axI20aP9s'),(17,27,'Hortense','Germain','62-67-88-43-77','2005-10-28 00:00:00','Hortense.Germain@gmail.com','$pbkdf2-sha256$29000$9j7HmDPGWMu5V6r1nrNW6g$V7jncVSZZkmqPYeFOCXV2vgub9DTBEQCZTeHehVs1Dc'),(18,28,'Anastasie','Marion','51-72-86-76-18','2018-10-09 00:00:00','Anastasie.Marion@gmail.com','$pbkdf2-sha256$29000$ghCitBZizJnTWksJoXSutQ$9bngi.W9wAqNboFvDg7VOtaVvOnZLb4/ks9lwr7yRmo'),(19,29,'Corinne','Carre','43-06-02-36-30','1992-11-18 00:00:00','Corinne.Carre@gmail.com','$pbkdf2-sha256$29000$IOS8N8YY4xxj7B0jxNhbCw$RSz1ZRoVQhS578OCRj0qfkKbplQCfsGC1ggU7PuKfhI'),(20,30,'Gilles','Blanc','62-15-93-65-93','2004-02-11 00:00:00','Gilles.Blanc@gmail.com','$pbkdf2-sha256$29000$DYEQYuwdQ6g15lyrNQagNA$FzE.P9BIAAODchi2cX0JTFVGbl8VdlImmnVNHPB2m5U'),(21,31,'Jacques','Peron','93-47-86-17-79','1994-02-15 00:00:00','Jacques.Peron@gmail.com','$pbkdf2-sha256$29000$C.Hce.9dqzXG2FurVepdqw$9r5JRb9F2MZFhLyIdDWacMvre5izs8uQn/GZupux6PI'),(22,32,'Christiane','Legros','33-80-40-83-48','1981-07-28 00:00:00','Christiane.Legros@gmail.com','$pbkdf2-sha256$29000$pZTyHoNw7j2n1Lp3DiGkFA$KqolUj/kJxThmqL001tPKDq3u.mSFlJD2A52pVGGwf4'),(23,33,'Théodore','Raynaud','16-07-10-22-00','1995-07-31 00:00:00','Théodore.Raynaud@gmail.com','$pbkdf2-sha256$29000$EYKw1hrjPOd8by1lDMGYMw$n8VbCEvjvtMHNn70b9UmeJflFXzGNmPfzsPkNvmFG1g'),(24,34,'Zoé','Allain','91-11-23-84-67','2014-04-06 00:00:00','Zoé.Allain@gmail.com','$pbkdf2-sha256$29000$jbHWGoNQypkTwvh/j/Eeww$Ae2TYI/m6REEjsphsnvJvVQa0mSUa.2xYnmFuKzqrwU'),(25,35,'Christelle','David','90-34-25-41-34','1972-02-12 00:00:00','Christelle.David@gmail.com','$pbkdf2-sha256$29000$DqEUotQag1DqnXOO0bq3tg$ayQ5BCSngGqGJxW54IFGx9uCYD5de6q4hUuNeEkZ2Tw'),(26,36,'Geneviève','Rocher','40-81-06-31-19','2008-10-14 00:00:00','Geneviève.Rocher@gmail.com','$pbkdf2-sha256$29000$zRlDSOm9d25tzfkfY0yJ0Q$E/ZbGD7FS8O6lFbWrr1bnSpN6IRSTaqfUaBJd6LnGso'),(27,37,'Valentine','Le Roux','28-71-01-22-98','1971-10-11 00:00:00','Valentine.Le Roux@gmail.com','$pbkdf2-sha256$29000$hpBSKoUQwhiDkHKu1drb.w$4vKE2nDzvXSkaWxRYKIJHu6CQjs6E16K83SgrLOt.OA'),(28,38,'Henriette','Baron','81-42-28-29-64','1985-05-27 00:00:00','Henriette.Baron@gmail.com','$pbkdf2-sha256$29000$j7F2rhWi9F4L4dzb23sv5Q$TYcIeythfXwI9lc0K9UOb066yGCfe7umUK/0IHXZkEE'),(29,39,'Madeleine','Martel','47-81-37-55-21','1984-07-18 00:00:00','Madeleine.Martel@gmail.com','$pbkdf2-sha256$29000$dy5lrJUyJsQ4p1QKoVRqLQ$8juYuleiWYzQ/mWv6uTciXIKgNBGC44gDvt6lxRzD00'),(30,40,'Nathalie','Fleury','38-97-46-63-22','2016-02-15 00:00:00','Nathalie.Fleury@gmail.com','$pbkdf2-sha256$29000$fy/FGKMUQsg5B8DYm3POGQ$LXBHO9VS6i3t5fkKcxBiazv3IZnTsN594H0pTqA2qAc'),(31,41,'Richard','Teixeira','62-45-93-34-44','2003-03-02 00:00:00','Richard.Teixeira@gmail.com','$pbkdf2-sha256$29000$U2qt1VpL6T2nVMqZM8aYUw$5VpT/3Z3hCGs.T/cTYEsbzJdA6aQn53g7tmOoOexFHU'),(32,42,'Adélaïde','Vasseur','50-98-31-86-44','2019-06-07 00:00:00','Adélaïde.Vasseur@gmail.com','$pbkdf2-sha256$29000$cE4p5Xxv7Z3z3jvn/J8Tog$/OWcTv3bNGeh9M/9DkmPGvkZiyLq1t7U0vMfc0MBtVw'),(33,43,'Jean','Hubert','92-84-50-39-73','1972-05-30 00:00:00','Jean.Hubert@gmail.com','$pbkdf2-sha256$29000$M4ZQynmPca5VijEmZIzR.g$1n3NB2k2yW3.gGxjF7PO8LDG16VgAbpVJFS8rmtaynE'),(34,44,'Michèle','Diallo','95-05-20-76-20','2006-04-08 00:00:00','Michèle.Diallo@gmail.com','$pbkdf2-sha256$29000$tFZKaS0FwBgjpLT23vuf8w$hnREBD.4adW63fXEjQ6jYuEcWFXi4MApXpZT8MeOVhk'),(35,45,'Constance','Delannoy','27-79-78-19-74','2010-12-13 00:00:00','Constance.Delannoy@gmail.com','$pbkdf2-sha256$29000$ulcq5XzPWWtNybn3Pud8Dw$tjuNMRMovhs7tbmRehNducxXJr8oNa/v1owbu2yxqVg'),(36,46,'Henri','Pascal','10-22-07-04-07','1992-09-26 00:00:00','Henri.Pascal@gmail.com','$pbkdf2-sha256$29000$DaH0ntO6N8Y4J.Q8R6j1Xg$hT6V8mQtask2IL29z9DPxWgofyAX4LA6uL35E0jfWUU'),(37,47,'Arnaude','Francois','22-27-14-56-30','2008-03-31 00:00:00','Arnaude.Francois@gmail.com','$pbkdf2-sha256$29000$8H7vPWcsxXgPIeQ853wvhQ$Kn8k3K5ijnATl/XhbcHMyvm26WWozd10GfDgoSs.cb4'),(38,48,'Adélaïde','Texier','38-30-91-29-45','1991-12-23 00:00:00','Adélaïde.Texier@gmail.com','$pbkdf2-sha256$29000$yHmPEeKc07pXKuUcw/jf.w$FcxDOUbFnTB0d2h1JfaoI8PO.qMit18tM.hIrHNp4Sc'),(39,49,'Marguerite','Muller','65-76-73-99-19','2016-07-12 00:00:00','Marguerite.Muller@gmail.com','$pbkdf2-sha256$29000$KUVIyfn/H8O4t1YqJeT8vw$LESZdS/ULvN7nQRVro.w3Y9doMqzmeb.PmtcXm6.YwE'),(40,50,'Geneviève','Huet','28-61-02-89-55','2002-06-04 00:00:00','Geneviève.Huet@gmail.com','$pbkdf2-sha256$29000$P6dUSolxrlXqvXfu3VsrpQ$8KrjXmg0vLlACXt9Y2ZL9VHkA6gljFm.oaSxM3ilUjs'),(41,51,'Pierre','Boulanger','62-53-24-81-04','1976-06-06 00:00:00','Pierre.Boulanger@gmail.com','$pbkdf2-sha256$29000$AiCk9H6PcY7Rutca4zyn9A$Gcgs8MjVNjJX9Mp5iGCC.GEfaMdWUY49ncEG2Cuf5gE'),(42,52,'Matthieu','Torres','19-57-44-27-23','1996-08-16 00:00:00','Matthieu.Torres@gmail.com','$pbkdf2-sha256$29000$7r0XYswZY.wdYyyF0BqjFA$9z3UIR3ms7cSG4mqhgGyDzGOMBfSsD8y0Q.nhVuTqC0'),(43,53,'Arthur','Launay','29-38-26-63-90','1980-05-05 00:00:00','Arthur.Launay@gmail.com','$pbkdf2-sha256$29000$vBdCyPlfa60VYsyZ8z6n1A$535M9BkQ6Z7bSfr9z4rdHmJIWbL5zP89qcK84Nci7J0'),(44,54,'Philippine','Imbert','70-19-99-43-46','1972-10-20 00:00:00','Philippine.Imbert@gmail.com','$pbkdf2-sha256$29000$JgRgbO29t9Za6/0/R2itVQ$3ULcD/rKt1eX.dpWfJiBSY16cIqYMIglpwnGUrAkH7Y'),(45,55,'Éric','Faure','52-16-67-53-38','1986-03-02 00:00:00','Éric.Faure@gmail.com','$pbkdf2-sha256$29000$jXFOaa2V8r4XopSSEuIcAw$KzshMTleznQ48qaTvVjwGe4kCQcGeOWY8pe403lnHqQ'),(46,56,'Stéphanie','Le Roux','64-00-63-66-84','2002-01-17 00:00:00','Stéphanie.Le Roux@gmail.com','$pbkdf2-sha256$29000$wdhba825FyLE.D8HgFDKGQ$FE.2lPzXqCbYac1v/ix3Vuu8LxmVQ3Ibl1TrFRWJOUE'),(47,57,'Dorothée','Pires','36-21-98-69-83','2009-04-02 00:00:00','Dorothée.Pires@gmail.com','$pbkdf2-sha256$29000$01qLMUZojVHKmfNe6927Vw$BiPjs1DpXVg33x8WB23B.t0CxvYGCXn5VdaPGoF4PkA'),(48,58,'Josette','Petit','90-16-75-22-18','1972-04-11 00:00:00','Josette.Petit@gmail.com','$pbkdf2-sha256$29000$I8S4tzbmvDfGuPe.N8a4Vw$IKt7lfLoDlmQfuYz6ufhr7c2wkl6U8gczs74bKl/ZD4'),(49,59,'Françoise','Bouvet','83-85-16-88-00','1983-04-03 00:00:00','Françoise.Bouvet@gmail.com','$pbkdf2-sha256$29000$vjdmjLE2JuS8V8o553yvtQ$z2n1pMtTVYPMw4D07eT9fdmK6vmC0HQjgEuYYV66iso'),(50,60,'Eugène','Brunet','50-14-45-38-74','1973-06-25 00:00:00','Eugène.Brunet@gmail.com','$pbkdf2-sha256$29000$di7FeA9ByFlLScnZm1OK8Q$H4i5Ff5yGAgk5/3qSHOzQB4WrUCBzWwvcbdq1Grvlok');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_job` bigint unsigned NOT NULL,
  `id_restaurant` bigint unsigned NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `FK` (`id_job`,`id_restaurant`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,1,'Lola','Dupont','00-00-00-0','lola.dupont@OC-Pizza.com','$pbkdf2-sha256$29000$ynnvPef8n1MqRcjZO8e4lw$lxKbtOIjcJc.YDlUNipW6y7XM4YjEYBGsrI4Tco.0cc'),(2,2,1,'Marthe','Merle','61-26-30-9','Marthe.Merle@OC-Pizza.com','$pbkdf2-sha256$29000$2XsvRSglROidk/Lem/Oecw$G5kXRUlWNUOsVAJ1xZbJ5bS5YD7db2RX4rEuv343UBw'),(3,3,1,'Lorraine','Martinez','28-35-53-1','Lorraine.Martinez@OC-Pizza.com','$pbkdf2-sha256$29000$ei.ltDbGuPf.nzPG2Jtzzg$vvWPQeX0FXImWX45BbU84/bHbcrRzhXfUQsI2ZJUloQ'),(4,4,1,'Sophie','Chartier','44-53-55-0','Sophie.Chartier@OC-Pizza.com','$pbkdf2-sha256$29000$d24tZQyBUMpZK4UQAiAEoA$8wJPzfBlxGe.xl2vJgxwGgbwNEMOKNCsI2o3mYHyVRw'),(5,4,1,'Adélaïde','Laurent','11-10-66-2','Adélaïde.Laurent@OC-Pizza.com','$pbkdf2-sha256$29000$yjln7L23ds65N.bc.38v5Q$dfzjP6Z8dEOV9k6BZlxrkoF8EiRV3fefZVG7ooIyol8'),(6,6,1,'Richard','Lopes','52-26-68-2','Richard.Lopes@OC-Pizza.com','$pbkdf2-sha256$29000$M6aUkrI2Rsi51zonpFTKmQ$QfJvH4zZnHjACChecLpI66XzwcjUSOI1nYWMG14/s7M'),(7,6,1,'Dorothée','Weber','77-01-38-4','Dorothée.Weber@OC-Pizza.com','$pbkdf2-sha256$29000$OyeEcK71fu8dI4QwxrhXCg$jmP8qz/umfCVy5FGf5b8yXZSlk67FNeYNYHD6QXwgtA'),(8,6,1,'Thierry','Perrot','27-05-29-2','Thierry.Perrot@OC-Pizza.com','$pbkdf2-sha256$29000$l1KKsTbGmPN.L4UQAqB0rg$8tTlIfzLB6TMU/T3LteiXy7B0Q9EPQ6LXMiyEH1uqy0'),(9,6,1,'Richard','Maillard','59-12-67-7','Richard.Maillard@OC-Pizza.com','$pbkdf2-sha256$29000$I2RsbS3FuNeaU2rtXUtpbQ$ZJ2qxqZAqs.EKKRXcGVuYqcKTf2WHJV0ZFhTgpXRHuI'),(11,2,2,'Michel','Cohen','74-25-56-7','Michel.Cohen@OC-Pizza.com','$pbkdf2-sha256$29000$AQCgtNb63xtjbM15D.EcIw$pLjGBOshn0lgyxVLkVu77NOj1F7Vt7OilWgK7M.30Xk'),(12,3,2,'Maggie','Pereira','84-34-17-5','Maggie.Pereira@OC-Pizza.com','$pbkdf2-sha256$29000$mbM2phTi3JuzNuYco5SyVg$GYcgcKLDCUCbhYPCGTNclU9rMFTJGbNzXeAavs2zFkc'),(13,4,2,'Élodie','Roy','58-90-08-4','Élodie.Roy@OC-Pizza.com','$pbkdf2-sha256$29000$tXbuvdeaEwJA6L3XmhPivA$U6z5FfYD1uVPGyv3lsCyHmdndTp4OGCGOkVN5eXYVMM'),(14,4,2,'Thomas','Guillon','39-92-71-5','Thomas.Guillon@OC-Pizza.com','$pbkdf2-sha256$29000$o7R2bq21dm6tNYawtta6lw$TKoii3irP5GL6UHbMjYsvT7BrxH0TgcmHEnDHQXE1Io'),(15,6,2,'Adélaïde','Carlier','48-29-40-5','Adélaïde.Carlier@OC-Pizza.com','$pbkdf2-sha256$29000$em8NASBkDKHUmpNSSmmNEQ$2HeIshoKUaLMs3PcVBDcFuJws6lnoseTMcpo8hFJ8wg'),(16,6,2,'Alexandre','Meunier','76-61-87-8','Alexandre.Meunier@OC-Pizza.com','$pbkdf2-sha256$29000$XWuN8R4jpPT./783pnQuxQ$hW3lTakWKrPQ1vI7Si00P.RGzqzjF9jlJFxWr6EosjY'),(17,6,2,'Agnès','Fleury','65-83-29-3','Agnès.Fleury@OC-Pizza.com','$pbkdf2-sha256$29000$Ouc8J6RUak0JAQAgBCCEsA$t61ouzjpUX4dgJxMSu20O4wevv438SIOmrLgWG4eMRQ'),(18,6,2,'Charlotte','Lacombe','44-66-86-9','Charlotte.Lacombe@OC-Pizza.com','$pbkdf2-sha256$29000$RkhpTem99x5jTKk1RmhNaQ$4dqIGsr6jUYYRThuznu/X.u8IrVqA3oQ5xhApEO7mxg'),(20,2,3,'Charles','Faure','92-17-68-3','Charles.Faure@OC-Pizza.com','$pbkdf2-sha256$29000$xtg7x9hb6z0HYIzxPqcUYg$4Y/10vGACwIz3nkjYiABbtEbBNlMg8/hQSBlDX1/UIs'),(21,3,3,'Thierry','Robin','36-89-02-9','Thierry.Robin@OC-Pizza.com','$pbkdf2-sha256$29000$zHmP0ZqzNqb0PuecU.odow$WNa7FpYq0/snaVoMhOwhpaaaF1ofQ/y/YmXDak7Zdao'),(22,4,3,'Aimé','Hoareau','79-34-04-0','Aimé.Hoareau@OC-Pizza.com','$pbkdf2-sha256$29000$rvX.3zvnHAPgfE.JcU5pDQ$SxqK3Es9Accckm3F5fuZkuGSiEqgiJ7AWiOa.rQz9mM'),(23,4,3,'Suzanne','Gomez','31-41-96-1','Suzanne.Gomez@OC-Pizza.com','$pbkdf2-sha256$29000$c05JSSmFEEIo5VyLcU7J.Q$TyuR8/rg3jxmqdQn6o0D0tKY/aqn72gCEqSFfTvLNWg'),(24,6,3,'William','Rocher','54-41-19-5','William.Rocher@OC-Pizza.com','$pbkdf2-sha256$29000$Uaq11pqz9h5DaM25l7K2Fg$fna2Zd3h5mLGQwzQIE07IE63/JXFw8tRWYhZUPxk7Rw'),(25,6,3,'Olivier','Pages','00-14-28-0','Olivier.Pages@OC-Pizza.com','$pbkdf2-sha256$29000$FYKQco4RQkjpvTdmLMXYGw$N4F7jv2/1oHcNUq4LzDv19ihLIS3cU60LYtGkbsWfyI'),(26,6,3,'Matthieu','Leclercq','02-30-29-5','Matthieu.Leclercq@OC-Pizza.com','$pbkdf2-sha256$29000$sdb6v/deixGiNEbI.T/nnA$yfXzk2RCJ3WSfHN5NOISno24iuqh6z/wFj8VmaCNS6o'),(27,6,3,'Joséphine','Devaux','24-26-30-8','Joséphine.Devaux@OC-Pizza.com','$pbkdf2-sha256$29000$EEIohXDOOYcwpvQeo9Raqw$Ai3bCJp3Kh3kIq/ycm.M0xMeGrn1aMXs78ovxPMrC5A'),(29,2,4,'Roger','Gilles','94-23-80-1','Roger.Gilles@OC-Pizza.com','$pbkdf2-sha256$29000$v/e.tzbGmNN6D6FUCgFgTA$7FQSgpk0t2uOpueZul/55UZ3EkLq2yDaTZSuv2J4waw'),(30,3,4,'Véronique','Bousquet','76-80-91-2','Véronique.Bousquet@OC-Pizza.com','$pbkdf2-sha256$29000$FaLUOocw5nxPCQHA2HvvnQ$FsID5A9UW6BvYerDjm2nwnXqSA2CnAOLpln6WH20JrM'),(31,4,4,'Robert','Costa','30-98-68-4','Robert.Costa@OC-Pizza.com','$pbkdf2-sha256$29000$kbLWGoMwRgghZCzl/B.j9A$IcdBfh0nMRPYxkoBFJRy.xMDnoOalDY3SHKZKw/1eCE'),(32,4,4,'Renée','Riviere','83-71-88-0','Renée.Riviere@OC-Pizza.com','$pbkdf2-sha256$29000$lDLmPIeQUioFgND6f./dWw$nV8kL.V1647JjDR1etyvjpimXmatNkwK0CmkSwEUkTo'),(33,6,4,'Gabrielle','Rey','60-21-95-4','Gabrielle.Rey@OC-Pizza.com','$pbkdf2-sha256$29000$Q8jZ29ubU6qVEgKAsDamFA$m1vzmZMP3JQOw5rGkdZBKVJIfRjCEDrSXeAMxpcKRCg'),(34,6,4,'Océane','Gaillard','75-83-09-8','Océane.Gaillard@OC-Pizza.com','$pbkdf2-sha256$29000$sDbG.B9DKCUk5Byj1HoPQQ$CPUBRIn5688W5FixQo5ltgGwRK8RzQlrWvTeS/v2uPM'),(35,6,4,'Philippe','Roussel','40-10-58-5','Philippe.Roussel@OC-Pizza.com','$pbkdf2-sha256$29000$6B2D8H7PeY.RMiYkBOB8jw$PNQe/qkb0b8uOm1kkpppRCiMUqkIWc5zQGy.PZCJkl4'),(36,6,4,'Victor','Lejeune','94-01-79-6','Victor.Lejeune@OC-Pizza.com','$pbkdf2-sha256$29000$7D3HGMM4R8gZI.TcGwNASA$0keCkMqYIJqiiUzo7XO4RWkt9Vzi6iSnBwQhdokH/N4'),(38,2,5,'Mathilde','Gomez','66-40-19-9','Mathilde.Gomez@OC-Pizza.com','$pbkdf2-sha256$29000$b60VwhjDmNMao5QSolQKIQ$.BMnGqF9sOz4J/ybVgtv6YUgeun2AnSJJQ7FzE7nQg4'),(39,3,5,'Laetitia','Roger','14-49-59-7','Laetitia.Roger@OC-Pizza.com','$pbkdf2-sha256$29000$y/n/n/MeI0QoxXjvnZMypg$JWdIFgwvQm939rb/L6OmSyNvuzV9gpgRDpvnC/.2NNg'),(40,4,5,'Margot','Deschamps','65-98-15-7','Margot.Deschamps@OC-Pizza.com','$pbkdf2-sha256$29000$JSTk/D/H.D9HKOUcg1CK8Q$kr1azQrexZIi4OwwZ75OBlnq74Vke9tceCeqqV7hjDU'),(41,4,5,'Benoît','Dufour','68-79-26-1','Benoît.Dufour@OC-Pizza.com','$pbkdf2-sha256$29000$PQcgRAihNEYIISREiFHqHQ$MCrFDkfbJLidXEugIV9fqnzODXdtcA0kPBphJpjs1Tc'),(42,6,5,'Maggie','Grenier','34-30-46-7','Maggie.Grenier@OC-Pizza.com','$pbkdf2-sha256$29000$ca713ltrzRkDIERoTck5pw$tLVIip6B25vG4X0cJ4o1qiCzDmUD559HhD47fSsjEoQ'),(43,6,5,'Océane','Diallo','14-98-18-5','Océane.Diallo@OC-Pizza.com','$pbkdf2-sha256$29000$Wevd2/t/T6nVmlMqRai1Fg$C7VX08jx/SYYiTAW9Ii69uMMraHZ09nYSWyzGrAzprE'),(44,6,5,'Anastasie','Gomes','59-50-95-2','Anastasie.Gomes@OC-Pizza.com','$pbkdf2-sha256$29000$NkYIISSEMOb8H6NUCsHYGw$LDQE8qY3UjpARNDF5/YSiR4o660LAAQHUVWAKFGn/9k'),(45,6,5,'Gabriel','Couturier','82-86-04-0','Gabriel.Couturier@OC-Pizza.com','$pbkdf2-sha256$29000$U2oN4TwHwFgrJcS4N6YUAg$v56NQitRNDCyNJq2uIE6MtDt7FsYbURGjHrXNiKe/2A'),(47,2,6,'Jean','Francois','11-73-09-7','Jean.Francois@OC-Pizza.com','$pbkdf2-sha256$29000$hvC.9/5fS8mZM6Z0DqF0Dg$l9EOv6MeC5I1bmjAlY4Bu8xW0yDHtV.nbKQQuxYfFfI'),(48,3,6,'Catherine','Roussel','95-15-13-7','Catherine.Roussel@OC-Pizza.com','$pbkdf2-sha256$29000$LCUkBEAI4fx/j5Eyxri39g$5Pxh/Brw9vcLBgRTW6LcsBvKPCWU7LZCfLvQ2v8ktN0'),(49,4,6,'Constance','Paris','06-63-50-2','Constance.Paris@OC-Pizza.com','$pbkdf2-sha256$29000$qbUWAgBgTElJaa0VonROCQ$kJJVU0pJ3Uc.O1AXsAKBYj7rAMzrSy.u4lK2BIeR330'),(50,4,6,'Martine','Fontaine','88-60-39-2','Martine.Fontaine@OC-Pizza.com','$pbkdf2-sha256$29000$nNOaM2bM2fu/d44R4txbyw$mDzoeQ.GaPT/3YE5EvcQfpqZw4LfDixLHEjVuNIjA24'),(51,6,6,'Aimé','Vallee','23-52-23-6','Aimé.Vallee@OC-Pizza.com','$pbkdf2-sha256$29000$j9G6V.r931vrPWfsXSvl3A$XJmfOLn6AemxWPH26oYWCRCLu6thI7TyqO82vZWK7D0'),(52,6,6,'Céline','Da Costa','33-51-48-1','Céline.Da Costa@OC-Pizza.com','$pbkdf2-sha256$29000$NOb8P8dYCyFECAEgxNg7Zw$B.kjQora2YiqfiSTBp8Iz2EIiFQyFM/K0Ba0a/DxXcU'),(53,6,6,'Henri','Bonnin','86-90-67-0','Henri.Bonnin@OC-Pizza.com','$pbkdf2-sha256$29000$aC1FyBlDyLn33tu7t9aaMw$gl/rYsGTFgNPJgEJXRfr4cmBF7.N9gtYHJ8V9gPfJC0'),(54,6,6,'Lucie','Chevallier','23-14-59-5','Lucie.Chevallier@OC-Pizza.com','$pbkdf2-sha256$29000$1FrrvXeuNWZMCSEkhHCutQ$B6T5Kd0/CJmFmhktX4Bkc7wMvdQ0mHaScPIyBJ6g9d0'),(56,2,7,'Michèle','Delahaye','60-05-72-4','Michèle.Delahaye@OC-Pizza.com','$pbkdf2-sha256$29000$M6aU8n6P0RoDQMi5t5ayVg$/d5MrhnPrjnMtbPScTnXhwPdazJVJLIO2cz2nGz/TeU'),(57,3,7,'Françoise','Lamy','00-54-81-4','Françoise.Lamy@OC-Pizza.com','$pbkdf2-sha256$29000$cg7hvFfq3ZsTgjAGIMRYSw$kKbJJoIZgsTMGhPUqMP.Go5p2wN01i58gZn0.i1cN.s'),(58,4,7,'Théodore','Pascal','29-72-79-1','Théodore.Pascal@OC-Pizza.com','$pbkdf2-sha256$29000$3XtPiRGCEAIAIATgvBdCaA$eOLIpEEd2YKHtxVSkuXh4ajEB.jyUtCPPRd2rKnhyKo'),(59,4,7,'Maurice','Chauveau','66-64-81-3','Maurice.Chauveau@OC-Pizza.com','$pbkdf2-sha256$29000$xhhj7L0XwrhXKsW415qTUg$BH7c5anvEv9LEpnxcVCpzJPIpXEi1W8Lwc3KfXd9bWM'),(60,6,7,'Martin','Laurent','74-50-32-8','Martin.Laurent@OC-Pizza.com','$pbkdf2-sha256$29000$9d57L4UwRgjh3LuX0jpHCA$BaoKhXLNR5DdCnAgf0s7Xd9LhwHxSA/nFVtDXLL1yfM'),(61,6,7,'Corinne','Lacroix','03-64-99-7','Corinne.Lacroix@OC-Pizza.com','$pbkdf2-sha256$29000$LsVYS2ntfe/9X8v5X8v5nw$LRfAKonVS6a1Rd1apof08Sc8jg6rhzKLTnVBTUXt3QY'),(62,6,7,'Alphonse','Garcia','77-43-19-0','Alphonse.Garcia@OC-Pizza.com','$pbkdf2-sha256$29000$E6L0/h.j1BrjnPMegxBCSA$/W6rZyr7SlH/.Jx6Zs6RTS0Rc6F1RgCBEL4LbBbacA8'),(63,6,7,'Christine','Jacques','84-44-60-0','Christine.Jacques@OC-Pizza.com','$pbkdf2-sha256$29000$Naa0VkrpXQshBMA4Z8xZCw$SGuJGXnxgFdFLRrK9v0BpvRQX4kIeVmd2E6tnbxz3o4'),(65,2,8,'Christelle','Boyer','55-09-97-6','Christelle.Boyer@OC-Pizza.com','$pbkdf2-sha256$29000$tdb6n3POOSdEiDEmpHRO6Q$kOnHD5mV8gAbK2oeqZEEfmuEmwON4.wXO7m/CEcCvyc'),(66,3,8,'Louise','Jacquot','80-01-88-5','Louise.Jacquot@OC-Pizza.com','$pbkdf2-sha256$29000$HsM4p3TOOYdwDoEwRojReg$mHpbXtpD0iooZ56VNGmgG89ojrH9o/bdVr1jMhdZe/k'),(67,4,8,'Océane','De Sousa','50-38-41-2','Océane.De Sousa@OC-Pizza.com','$pbkdf2-sha256$29000$ByBkrBXCeG.tlVIqpbR2jg$JOB2IccjT.0skvxEdAeKh4lE/PnrKJ4xM.Sfny.dQPE'),(68,4,8,'Alexandrie','Begue','26-10-05-7','Alexandrie.Begue@OC-Pizza.com','$pbkdf2-sha256$29000$RwgBwNhba631PofwHsNYaw$ICNvQ6VJz04KpXUNxuqeHPP6AzU04FRZxAkxzfW9PCY'),(69,6,8,'Isaac','Robin','35-85-61-0','Isaac.Robin@OC-Pizza.com','$pbkdf2-sha256$29000$TsmZc.69tzamFGIMwdibsw$NpackZIHiquYVUb61noQOkHV87DdCIf5CqVn0AAeE.g'),(70,6,8,'Richard','Lebreton','39-51-59-1','Richard.Lebreton@OC-Pizza.com','$pbkdf2-sha256$29000$LiWkNEYIwXhvjdEaQyilVA$afexXIpDtL/i5CgXtUQYhYRiHAq7PmgvCCPnR27ggvM'),(71,6,8,'Maggie','Hamel','93-06-87-7','Maggie.Hamel@OC-Pizza.com','$pbkdf2-sha256$29000$u9caA8A4x1jLGSMkJGRMCQ$MzUZSYwNvYMh1N0HJjG9vW0HwqXoWj0zXk5.IC3lwLk'),(72,6,8,'Sabine','Camus','37-73-21-9','Sabine.Camus@OC-Pizza.com','$pbkdf2-sha256$29000$hNBai1EK4Xwv5Vyrde5diw$HkcTctrhECE4KNIqDQ6SOQ0XdCi3wDi6aQ8cbUXIbNQ'),(74,2,9,'Claudine','Leclercq','96-54-81-1','Claudine.Leclercq@OC-Pizza.com','$pbkdf2-sha256$29000$K8W4dy7l/P8fQwhhrBUCAA$GzJOtbBhQGBuT6we8LdqyLfbsbKGJT8CkIXkojNIef8'),(75,3,9,'Timothée','Etienne','08-65-52-2','Timothée.Etienne@OC-Pizza.com','$pbkdf2-sha256$29000$t5ayltL6/39vLWXsXSvFWA$acgAO21hnLbw1FIOygxaIa3UkInrJGCQD0EhkvHsvnQ'),(76,4,9,'Renée','Diaz','92-20-45-7','Renée.Diaz@OC-Pizza.com','$pbkdf2-sha256$29000$kNJ6772XUqr1XktpLaU0Rg$WTyQKVdSU2awS5EmuJS3Yr3crOWv4ajzPeQ5KL/b3EQ'),(77,4,9,'Joseph','Normand','14-60-85-8','Joseph.Normand@OC-Pizza.com','$pbkdf2-sha256$29000$9p5zzhkDQIjROicEIESIkQ$8g7ITxK9MtFczPbQAEgQ8wcW/ZF78q/Euo.Wc9UDzp4'),(78,6,9,'Henri','Robert','78-33-41-7','Henri.Robert@OC-Pizza.com','$pbkdf2-sha256$29000$gFBK6d07B0Co1dp7DyFE6A$RgVmy9FK.Gzqw4uIRsPyxQX4LLoqnzvQsana5Gt3S.Q'),(79,6,9,'Alex','Marechal','97-77-67-5','Alex.Marechal@OC-Pizza.com','$pbkdf2-sha256$29000$R4hRirG2tnbuvZeSsrYW4g$.QE8ZXulAywV8ePSBYLZzQ3L1HtnOGZk9Q.BNVFHaZg'),(80,6,9,'Philippe','Vasseur','79-35-31-0','Philippe.Vasseur@OC-Pizza.com','$pbkdf2-sha256$29000$kNJaq1XqHeO8l/L.nxNiTA$UzVzzdU8vJhzkJ7g8JF4Y.Q33JNR678WhTRGm4QrHIo'),(81,6,9,'Julien','Joseph','82-90-72-7','Julien.Joseph@OC-Pizza.com','$pbkdf2-sha256$29000$GIPwnvM.pxTi3FsrBWBMSQ$R9thFroXp3lluvywZ92CJJUnnyCDzBFcipqSa0pSPuE'),(83,2,10,'Henriette','Lombard','99-94-79-6','Henriette.Lombard@OC-Pizza.com','$pbkdf2-sha256$29000$a43RmhNiLEUIwfif0xojBA$vTkapRgpn8YbyDShYM5Gg.v6u/y4H9YRSnntHLPiFwU'),(84,3,10,'Nicole','Barthelemy','52-62-21-8','Nicole.Barthelemy@OC-Pizza.com','$pbkdf2-sha256$29000$YyyF8B6DMGbMWesdg5ASAg$.9FvrHJPI9rAfFvhihoR0WcGqoCVzQ1.llEXswaYo4Y'),(85,4,10,'Susanne','Klein','57-61-41-5','Susanne.Klein@OC-Pizza.com','$pbkdf2-sha256$29000$Pqc0ZsyZkzIGoDSm9H6vlQ$rOQkWuY2XWuTlUHQaa5KNQZ4CfcRMkpgLuyLq1z4uIc'),(86,4,10,'Adrien','Boulanger','19-29-35-1','Adrien.Boulanger@OC-Pizza.com','$pbkdf2-sha256$29000$e0/pnbNWqvX.3xvDuHeOcQ$m20CThqh8QGSqLhjaBsr0AsRvX5.kaTtiIiufQQ/Dc4'),(87,6,10,'Aurore','Maurice','80-75-69-1','Aurore.Maurice@OC-Pizza.com','$pbkdf2-sha256$29000$gFCq9d77vxcCoPS.t1YqZQ$H0gG4rwYdK7H3IoZFx53GuurQ4PlJx8vZ8zdCk6b/hU'),(88,6,10,'Patricia','Morin','85-94-39-7','Patricia.Morin@OC-Pizza.com','$pbkdf2-sha256$29000$k7L2XmsNIWTsfa9VqnWudQ$UzKeIrWg5au2bW6.Scpqagi/b7HVoHyDNoMST74ogf8'),(89,6,10,'Susanne','Jacquet','67-27-51-5','Susanne.Jacquet@OC-Pizza.com','$pbkdf2-sha256$29000$X0vJWesdAwCgVMo555zz3g$amin/afyeWVwXgcsBh0/5Fl2Uj.P8Da4w/9Hn3.659o'),(90,6,10,'Émilie','Richard','74-17-16-9','Émilie.Richard@OC-Pizza.com','$pbkdf2-sha256$29000$ijHmPOe81/pfy9nbm5MSAg$XJGW1/d5pGtJzGzwuJy9isavLn9IfY45m/MLjnutPZ8');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (18,'aiguillettes de poulet mariné'),(3,'avocat'),(23,'basilic'),(4,'basilic frais'),(40,'brocoli'),(10,'champignons'),(28,'chou fleur'),(39,'chou kale'),(16,'courgettes marinées'),(34,'crème de gorgonzola'),(30,'cresson'),(20,'cœur de burrata'),(2,'guanciale'),(15,'huile d’olive à l’ail'),(26,'jambon cuit aux herbes'),(9,'mozza fior di latte'),(35,'mozzarella'),(14,'oignons'),(13,'olives taggiasche'),(24,'orange caramélisée'),(37,'pain croquant'),(33,'parmegiano'),(31,'pasto della casa'),(1,'pecorino'),(32,'petites tomates jaunes confites'),(41,'pignons'),(38,'pousses d’épinard'),(36,'prosciutto'),(7,'radis'),(19,'ricotta aux herbes'),(27,'salsa ceasar'),(11,'sauce de tomates San Marzano'),(8,'sauce tomate'),(21,'sésame'),(25,'spianata piccante'),(5,'straccitella'),(6,'sucrine'),(12,'tomates cerises confites'),(17,'tomates datterino confites'),(22,'tomates San Marzano'),(29,'vinaigrette au balsamique');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (3,'Assistant manager'),(1,'Founder'),(6,'Livreur'),(2,'Manager'),(4,'Pizzaïolo');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` tinyint unsigned NOT NULL,
  `unit_price_inclVAT` decimal(4,2) NOT NULL,
  KEY `FK, PK` (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,11,4,19.14),(1,5,2,11.00),(1,8,5,9.90),(1,6,3,18.99),(1,3,3,19.80),(1,1,3,23.92),(1,4,1,11.00),(1,9,1,22.00),(1,7,5,15.60),(2,8,1,9.90),(2,12,1,11.00),(2,7,3,15.60),(2,1,3,23.92),(2,5,5,11.00),(2,11,1,19.14),(2,3,2,19.80),(2,9,5,22.00),(2,2,3,17.60),(3,3,4,19.80),(3,9,4,22.00),(3,1,3,23.92),(3,11,3,19.14),(3,5,4,11.00),(4,10,1,18.00),(4,11,2,19.14),(4,7,5,15.60),(4,5,3,11.00),(4,4,3,11.00),(4,1,4,23.92),(4,12,4,11.00),(4,2,3,17.60),(4,9,3,22.00),(5,12,2,11.00),(5,10,4,18.00),(5,7,2,15.60),(5,8,1,9.90),(5,1,5,23.92),(5,3,5,19.80),(5,5,1,11.00),(5,4,2,11.00),(5,2,3,17.60),(5,6,3,18.99),(6,1,1,23.92),(6,8,2,9.90),(6,10,3,18.00),(6,12,2,11.00),(6,3,5,19.80),(6,5,4,11.00),(6,11,4,19.14),(7,5,4,11.00),(7,2,4,17.60),(7,10,4,18.00),(7,6,2,18.99),(8,12,1,11.00),(8,2,2,17.60),(8,1,5,23.92),(9,8,3,9.90),(9,5,3,11.00),(9,10,1,18.00),(9,2,3,17.60),(9,9,5,22.00),(9,11,3,19.14),(9,3,2,19.80),(9,6,1,18.99),(9,7,1,15.60),(9,4,3,11.00),(10,12,2,11.00),(10,10,2,18.00),(10,8,5,9.90),(10,1,1,23.92),(10,6,1,18.99),(10,3,5,19.80),(10,2,3,17.60),(10,5,4,11.00),(10,7,5,15.60),(11,5,3,11.00),(11,7,1,15.60),(12,8,5,9.90),(12,7,1,15.60),(12,9,2,22.00),(12,1,5,23.92),(13,10,3,18.00),(13,4,4,11.00),(13,7,4,15.60),(13,2,3,17.60),(13,12,4,11.00),(13,9,5,22.00),(14,5,3,11.00),(15,10,5,18.00),(16,6,4,18.99),(16,7,2,15.60),(16,1,4,23.92),(16,8,5,9.90),(16,5,1,11.00),(16,9,3,22.00),(16,10,2,18.00),(17,9,5,22.00),(17,1,2,23.92),(17,8,1,9.90),(17,4,4,11.00),(17,11,3,19.14),(17,12,4,11.00),(17,10,1,18.00),(17,7,2,15.60),(17,3,1,19.80),(18,6,1,18.99),(19,8,4,9.90),(19,5,2,11.00),(19,4,4,11.00),(19,1,2,23.92),(19,6,2,18.99),(19,7,4,15.60),(19,10,3,18.00),(19,3,5,19.80),(19,11,2,19.14),(19,2,1,17.60),(20,3,4,19.80),(20,9,1,22.00),(21,5,5,11.00),(21,1,4,23.92),(21,2,1,17.60),(21,11,3,19.14),(21,6,1,18.99),(21,12,5,11.00),(21,3,2,19.80),(21,4,2,11.00),(21,7,5,15.60),(21,8,3,9.90),(22,7,5,15.60),(22,5,4,11.00),(22,8,5,9.90),(22,12,3,11.00),(23,11,2,19.14),(24,8,4,9.90),(24,2,4,17.60),(24,11,2,19.14),(24,9,2,22.00),(24,4,3,11.00),(25,1,5,23.92),(25,9,3,22.00),(25,2,3,17.60),(25,11,3,19.14),(25,4,3,11.00),(26,4,5,11.00),(26,6,2,18.99),(26,5,2,11.00),(26,9,2,22.00),(26,10,4,18.00),(26,2,1,17.60),(27,7,2,15.60),(27,1,5,23.92),(27,6,2,18.99),(27,4,4,11.00),(28,5,3,11.00),(28,7,1,15.60),(28,11,1,19.14),(29,2,4,17.60),(30,9,3,22.00),(30,1,5,23.92),(30,7,3,15.60),(30,4,5,11.00),(30,8,4,9.90),(30,2,3,17.60),(30,11,1,19.14),(30,3,2,19.80),(31,6,4,18.99),(31,11,5,19.14),(31,12,4,11.00),(31,9,5,22.00),(31,8,3,9.90),(31,10,3,18.00),(31,1,1,23.92),(31,4,5,11.00),(32,7,1,15.60),(32,11,3,19.14),(32,6,4,18.99),(32,9,5,22.00),(33,4,5,11.00),(33,11,1,19.14),(33,9,2,22.00),(33,12,2,11.00),(33,8,2,9.90),(33,5,4,11.00),(34,1,1,23.92),(35,3,2,19.80),(35,7,5,15.60),(35,2,4,17.60),(35,8,2,9.90),(35,9,1,22.00),(35,10,4,18.00),(35,4,4,11.00),(35,12,2,11.00),(35,6,5,18.99),(35,5,1,11.00),(36,4,1,11.00),(36,1,1,23.92),(36,5,2,11.00),(36,7,2,15.60),(36,8,4,9.90),(37,3,1,19.80),(38,7,1,15.60),(38,2,4,17.60),(39,6,4,18.99),(39,5,5,11.00),(39,1,1,23.92),(39,9,3,22.00),(39,11,2,19.14),(39,8,1,9.90),(39,10,5,18.00),(39,12,2,11.00),(39,4,5,11.00),(40,6,5,18.99),(40,1,3,23.92),(40,10,5,18.00),(40,12,1,11.00),(40,3,5,19.80),(40,8,1,9.90),(40,4,5,11.00),(40,11,4,19.14),(40,7,2,15.60),(40,9,2,22.00),(41,11,5,19.14),(41,5,2,11.00),(41,4,5,11.00),(41,9,4,22.00),(41,8,1,9.90),(41,6,3,18.99),(41,1,1,23.92),(41,2,1,17.60),(41,12,3,11.00),(41,10,4,18.00),(42,8,5,9.90),(42,1,2,23.92),(43,9,4,22.00),(43,4,4,11.00),(43,2,1,17.60),(43,7,2,15.60),(43,3,4,19.80),(44,5,4,11.00),(45,12,1,11.00),(45,5,2,11.00),(45,9,2,22.00),(45,7,5,15.60),(45,11,3,19.14),(45,2,4,17.60),(46,3,5,19.80),(46,10,4,18.00),(46,9,1,22.00),(46,11,3,19.14),(46,4,2,11.00),(47,10,4,18.00),(47,4,3,11.00),(47,3,3,19.80),(47,2,2,17.60),(47,9,3,22.00),(47,1,5,23.92),(47,11,4,19.14),(47,8,4,9.90),(47,7,2,15.60),(47,12,1,11.00),(48,6,3,18.99),(48,3,1,19.80),(48,9,2,22.00),(48,1,4,23.92),(48,11,2,19.14),(48,4,4,11.00),(48,5,2,11.00),(48,8,4,9.90),(48,10,3,18.00),(49,9,4,22.00),(49,5,2,11.00),(50,12,1,11.00),(50,7,1,15.60),(50,4,1,11.00),(50,6,2,18.99),(50,1,4,23.92),(50,2,4,17.60),(50,9,2,22.00),(51,11,1,19.14),(51,4,2,11.00),(51,10,5,18.00),(51,1,2,23.92),(51,9,1,22.00),(51,7,4,15.60),(51,5,2,11.00),(51,6,5,18.99),(51,12,5,11.00),(52,8,3,9.90),(52,3,4,19.80),(52,1,5,23.92),(52,2,4,17.60),(53,12,5,11.00),(54,4,2,11.00),(54,7,4,15.60),(54,2,4,17.60),(55,12,4,11.00),(55,7,3,15.60),(55,3,3,19.80),(56,2,2,17.60),(56,5,2,11.00),(56,9,4,22.00),(56,12,5,11.00),(56,4,1,11.00),(56,8,3,9.90),(57,11,5,19.14),(58,8,4,9.90),(58,10,1,18.00),(58,6,1,18.99),(58,3,3,19.80),(58,11,4,19.14),(58,1,2,23.92),(58,5,4,11.00),(58,4,3,11.00),(58,7,3,15.60),(58,2,3,17.60),(59,11,2,19.14),(59,1,2,23.92),(59,2,1,17.60),(59,8,3,9.90),(60,12,5,11.00),(60,1,4,23.92),(60,7,2,15.60),(60,5,2,11.00),(60,3,2,19.80),(60,6,2,18.99),(60,9,4,22.00),(61,12,4,11.00),(62,11,2,19.14),(62,3,5,19.80),(62,9,4,22.00),(62,7,4,15.60),(62,4,3,11.00),(62,2,3,17.60),(62,10,5,18.00),(63,11,1,19.14),(63,5,2,11.00),(63,2,4,17.60),(63,8,2,9.90),(63,9,3,22.00),(63,3,1,19.80),(63,10,4,18.00),(63,6,4,18.99),(63,4,4,11.00),(63,12,2,11.00),(64,7,3,15.60),(64,3,3,19.80),(64,1,2,23.92),(64,9,5,22.00),(65,10,4,18.00),(65,6,1,18.99),(65,1,1,23.92),(65,11,3,19.14),(66,5,1,11.00),(66,7,4,15.60),(66,8,4,9.90),(66,10,1,18.00),(66,9,3,22.00),(67,9,2,22.00),(67,2,1,17.60),(67,5,1,11.00),(67,8,3,9.90),(67,12,5,11.00),(68,12,5,11.00),(68,5,4,11.00),(68,3,2,19.80),(69,10,1,18.00),(69,11,5,19.14),(69,8,2,9.90),(69,5,5,11.00),(70,12,2,11.00),(70,9,5,22.00),(70,2,5,17.60),(70,4,4,11.00),(70,6,5,18.99),(71,8,5,9.90),(71,12,1,11.00),(71,4,5,11.00),(71,7,2,15.60),(72,4,4,11.00),(72,7,4,15.60),(73,5,4,11.00),(73,6,5,18.99),(73,1,1,23.92),(73,4,1,11.00),(73,3,5,19.80),(73,7,5,15.60),(73,12,5,11.00),(73,8,5,9.90),(74,7,2,15.60),(74,5,2,11.00),(74,10,3,18.00),(74,8,1,9.90),(75,11,1,19.14),(75,12,3,11.00),(75,1,3,23.92),(75,6,4,18.99),(76,7,1,15.60),(76,2,2,17.60),(76,11,2,19.14),(77,4,5,11.00),(77,2,2,17.60),(77,10,3,18.00),(77,1,5,23.92),(77,3,4,19.80),(78,7,5,15.60),(78,2,3,17.60),(78,9,5,22.00),(78,4,3,11.00),(78,12,3,11.00),(78,5,3,11.00),(78,1,4,23.92),(78,8,1,9.90),(78,11,1,19.14),(79,6,4,18.99),(79,12,1,11.00),(79,8,5,9.90),(79,10,2,18.00),(79,1,2,23.92),(80,8,3,9.90),(80,11,1,19.14),(81,5,3,11.00),(81,12,2,11.00),(81,11,2,19.14),(81,3,5,19.80),(81,6,1,18.99),(81,8,4,9.90),(81,2,2,17.60),(81,10,2,18.00),(81,1,1,23.92),(82,12,4,11.00),(82,5,4,11.00),(82,2,2,17.60),(82,11,4,19.14),(82,7,3,15.60),(82,3,1,19.80),(82,6,5,18.99),(83,10,2,18.00),(83,11,3,19.14),(83,9,2,22.00),(83,8,1,9.90),(84,11,4,19.14),(84,2,1,17.60),(84,6,2,18.99),(84,10,5,18.00),(84,1,4,23.92),(84,7,4,15.60),(84,5,5,11.00),(84,9,1,22.00),(84,4,2,11.00),(85,6,2,18.99),(86,12,4,11.00),(87,9,5,22.00),(87,11,3,19.14),(88,5,1,11.00),(89,4,3,11.00),(89,8,3,9.90),(89,3,2,19.80),(89,11,3,19.14),(89,7,5,15.60),(90,3,4,19.80),(90,2,1,17.60),(91,3,4,19.80),(91,10,4,18.00),(92,12,3,11.00),(92,8,1,9.90),(92,3,5,19.80),(92,11,1,19.14),(92,1,3,23.92),(92,5,4,11.00),(93,3,2,19.80),(93,4,3,11.00),(93,7,5,15.60),(93,11,3,19.14),(93,10,4,18.00),(93,5,1,11.00),(93,2,1,17.60),(93,1,5,23.92),(93,8,3,9.90),(93,12,3,11.00),(94,10,5,18.00),(94,11,3,19.14),(94,1,1,23.92),(94,4,3,11.00),(94,5,5,11.00),(94,3,1,19.80),(94,8,3,9.90),(94,9,3,22.00),(94,2,1,17.60),(94,7,2,15.60),(95,4,4,11.00),(95,7,1,15.60),(95,6,5,18.99),(95,1,2,23.92),(95,12,2,11.00),(95,10,1,18.00),(95,9,4,22.00),(95,8,3,9.90),(95,5,4,11.00),(95,3,1,19.80),(96,12,3,11.00),(96,7,4,15.60),(96,5,4,11.00),(96,9,4,22.00),(96,6,3,18.99),(96,3,2,19.80),(97,11,4,19.14),(97,8,1,9.90),(97,4,4,11.00),(97,3,2,19.80),(97,2,5,17.60),(97,5,1,11.00),(97,9,1,22.00),(97,1,4,23.92),(98,10,5,18.00),(98,12,1,11.00),(98,4,5,11.00),(98,2,2,17.60),(98,1,4,23.92),(98,5,5,11.00),(99,11,2,19.14),(99,4,4,11.00),(99,9,4,22.00),(99,12,5,11.00),(99,10,2,18.00),(99,1,2,23.92),(99,8,1,9.90),(99,7,4,15.60),(99,3,2,19.80),(99,6,3,18.99),(100,1,1,23.92),(100,6,1,18.99),(100,11,1,19.14),(100,5,2,11.00),(100,9,1,22.00),(100,8,2,9.90),(100,4,4,11.00),(100,2,1,17.60),(100,3,1,19.80);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (4,'carte bancaire'),(6,'chèque'),(5,'espèces'),(1,'titre restaurant');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vat_100_id` smallint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `price_excluding_tax` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK` (`vat_100_id`,`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,1,'MARGHERITA',10.00),(2,2,2,'BURRATA FELICITÀ',16.00),(3,2,3,'HOT AND CHEESY',18.00),(4,2,3,'REGINA 4 EVER',10.00),(5,2,5,'IN LOVE WITH ROME',10.00),(6,6,5,'CARBOLOVALOVA',18.00),(7,7,2,'STRACIABELLA',13.00),(8,2,8,'CHAMP-MIGNON',9.00),(9,2,1,'REGINA INSTAGRAM',20.00),(10,7,2,'MOMENT OF TRUFFE',15.00),(11,1,3,'HOTLINE PIZZ',16.00),(12,2,3,'NOTORIOUS B.I.CHEESE',10.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `restaurant_id` bigint unsigned NOT NULL,
  `status_id` bigint unsigned NOT NULL,
  `payment_method_id` bigint unsigned NOT NULL,
  `order_number` bigint unsigned NOT NULL,
  `order_address1` varchar(100) NOT NULL,
  `order_address2` varchar(100) DEFAULT NULL,
  `order_city_name` varchar(50) NOT NULL,
  `order_zip_code` varchar(5) NOT NULL,
  `order_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK` (`customer_id`,`restaurant_id`,`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (1,38,6,4,1,1,'9, rue Luce Legrand','vLeNnvPqhxIkHxISYJ','Sainte Nicolas-sur-Mer','52742','2020-07-14 11:55:00'),(2,43,1,8,1,2,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(3,18,1,5,1,3,'14, boulevard Arthur Marie','t','Bigot','12745','2020-07-14 11:55:00'),(4,30,6,4,4,4,'13, chemin Éléonore Clement','tgBQFBZMOEdWbYr','Saint SuzanneVille','33673','2020-07-14 11:55:00'),(5,16,8,6,5,5,'8, chemin Laurent Leclerc','Xdnajj','Sainte Frédérique','18191','2020-07-14 11:55:00'),(6,6,2,3,6,6,'55, avenue de Loiseau','PUKZHYgIm','Guilletdan','30507','2020-07-14 11:55:00'),(7,4,4,5,6,7,'44, chemin Le Goff','uHmsWVo','Louis','31587','2020-07-14 11:55:00'),(8,42,9,8,6,8,'89, chemin Charles Michel','SpAP','Colas','32373','2020-07-14 11:55:00'),(9,24,6,2,5,9,'3, chemin Astrid Laurent','CoLlrMoujKkGu','Besnard-sur-Launay','97052','2020-07-14 11:55:00'),(10,19,7,3,1,10,'366, rue William Vallee','pnAwFQmIeTzhRF','Lebrun','24883','2020-07-14 11:55:00'),(11,34,1,6,6,11,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(12,8,8,7,4,12,'9, boulevard Christine Chauvet','Lieqj','Dubois','23082','2020-07-14 11:55:00'),(13,33,8,2,1,13,'84, avenue de Brun','ygeKcw','Durand','48269','2020-07-14 11:55:00'),(14,32,2,8,6,14,'144, boulevard Marty','vbcIB','Bourdon','90606','2020-07-14 11:55:00'),(15,14,8,6,6,15,'chemin Agathe Payet','ZywGrTViNdr','Olivier-les-Bains','61419','2020-07-14 11:55:00'),(16,7,5,5,4,16,'28, chemin Hernandez','mLJEuWbab','Le Gall','09121','2020-07-14 11:55:00'),(17,27,8,4,6,17,'533, rue Perret','ErHrVNpcPljGX','Brunetnec','40602','2020-07-14 11:55:00'),(18,10,8,5,1,18,'16, chemin Lelievre','mdwIaRfPURFsppeO','Lucasnec','06504','2020-07-14 11:55:00'),(19,5,2,4,4,19,'144, boulevard Marty','vbcIB','Bourdon','90606','2020-07-14 11:55:00'),(20,22,4,4,1,20,'28, rue de Royer','QFdBcNonvYVj','Perrier','15506','2020-07-14 11:55:00'),(21,27,5,6,4,21,'533, rue Perret','ErHrVNpcPljGX','Brunetnec','40602','2020-07-14 11:55:00'),(22,18,6,1,5,22,'3, chemin Astrid Laurent','CoLlrMoujKkGu','Besnard-sur-Launay','97052','2020-07-14 11:55:00'),(23,41,8,2,5,23,'29, rue Bernier','KzKjPZuuHtRIVpnOx','Meunier-sur-Regnier','88833','2020-07-14 11:55:00'),(24,2,2,2,6,24,'85, avenue de Dubois','XXhRkoSP','Fournier','77045','2020-07-14 11:55:00'),(25,21,5,6,4,25,'940, chemin Marcel Delattre','nNPJtTiN','Nguyen-sur-Merle','33614','2020-07-14 11:55:00'),(26,24,4,3,1,26,'54, boulevard de Caron','lMalFKA','Pierre','50248','2020-07-14 11:55:00'),(27,41,2,7,1,27,'boulevard Alphonse Collet','qnvPUboOGWyZvE','GomesBourg','80186','2020-07-14 11:55:00'),(28,5,5,1,6,28,'6, chemin Auger','JyFARXfkVrYvPfxAk','Barbe','24649','2020-07-14 11:55:00'),(29,16,6,6,1,29,'8, chemin Laurent Leclerc','Xdnajj','Sainte Frédérique','18191','2020-07-14 11:55:00'),(30,30,4,2,1,30,'39, rue Pereira','UqzjixAiLbYjBRtNKwH','Pires','54158','2020-07-14 11:55:00'),(31,2,2,2,6,31,'144, boulevard Marty','vbcIB','Bourdon','90606','2020-07-14 11:55:00'),(32,5,2,4,6,32,'144, boulevard Marty','vbcIB','Bourdon','90606','2020-07-14 11:55:00'),(33,35,7,3,6,33,'10, boulevard Muller','VSyZEqbeqJcaYrI','Samson','97329','2020-07-14 11:55:00'),(34,13,10,3,5,34,'574, chemin Raymond','lyPOPigpswLeudUtSDx','Andre','67663','2020-07-14 11:55:00'),(35,2,7,1,6,35,'366, rue William Vallee','pnAwFQmIeTzhRF','Lebrun','24883','2020-07-14 11:55:00'),(36,9,5,3,6,36,'44, avenue Camille Camus','HSrGxqx','Sainte Renée','77633','2020-07-14 11:55:00'),(37,31,10,2,1,37,'73, chemin Nicolas','hpOeevGMCzkovo','Grenier','94349','2020-07-14 11:55:00'),(38,1,4,7,6,38,'39, rue Pereira','UqzjixAiLbYjBRtNKwH','Pires','54158','2020-07-14 11:55:00'),(39,4,10,5,5,39,'44, chemin Le Goff','uHmsWVo','Louis','31587','2020-07-14 11:55:00'),(40,48,5,8,1,40,'940, chemin Marcel Delattre','nNPJtTiN','Nguyen-sur-Merle','33614','2020-07-14 11:55:00'),(41,9,8,3,1,41,'44, avenue Camille Camus','HSrGxqx','Sainte Renée','77633','2020-07-14 11:55:00'),(42,30,10,3,5,42,'574, chemin Raymond','lyPOPigpswLeudUtSDx','Andre','67663','2020-07-14 11:55:00'),(43,46,1,4,5,43,'50, chemin de Fernandes','DeezrtHfVYanWfxLsoY','Gay-sur-Mer','11281','2020-07-14 11:55:00'),(44,34,7,8,1,44,'9, chemin de Philippe','Hl','Rey','17749','2020-07-14 11:55:00'),(45,40,6,7,1,45,'6, rue Coulon','cDuMugTWCgKVgZfYjPbW','Lemaitre','56633','2020-07-14 11:55:00'),(46,34,10,4,5,46,'9, chemin de Philippe','Hl','Rey','17749','2020-07-14 11:55:00'),(47,49,9,4,5,47,'16, chemin de Charpentier','JLLNlkXEnBEcgtogHy','Saint Thérèseboeuf','45832','2020-07-14 11:55:00'),(48,4,10,4,6,48,'44, chemin Le Goff','uHmsWVo','Louis','31587','2020-07-14 11:55:00'),(49,23,3,3,4,49,'62, avenue Julien','wx','Sainte Élodienec','22223','2020-07-14 11:55:00'),(50,24,9,6,4,50,'54, boulevard de Caron','lMalFKA','Pierre','50248','2020-07-14 11:55:00'),(51,25,8,5,4,51,'rue Nicolas Lamy','eGscWnNgagkscPRpJ','Leclercq-les-Bains','68801','2020-07-14 11:55:00'),(52,19,8,8,1,52,'59, boulevard Gros','gnFNUsSi','Nguyen','19035','2020-07-14 11:55:00'),(53,10,9,5,6,53,'16, chemin Lelievre','mdwIaRfPURFsppeO','Lucasnec','06504','2020-07-14 11:55:00'),(54,17,4,3,1,54,'87, avenue de Marie','GwMKHgtUWufCmOKZtNQ','Robin','13388','2020-07-14 11:55:00'),(55,34,8,6,4,55,'29, rue Bernier','KzKjPZuuHtRIVpnOx','Meunier-sur-Regnier','88833','2020-07-14 11:55:00'),(56,50,7,6,4,56,'37, rue Thérèse Charles','q','Pelletier','46462','2020-07-14 11:55:00'),(57,13,9,8,5,57,'71, rue Marcel De Oliveira','fdhghroWSMNTi','Gosselin-sur-Jacquet','68067','2020-07-14 11:55:00'),(58,21,6,1,4,58,'3, chemin Astrid Laurent','CoLlrMoujKkGu','Besnard-sur-Launay','97052','2020-07-14 11:55:00'),(59,8,10,5,5,59,'574, chemin Raymond','lyPOPigpswLeudUtSDx','Andre','67663','2020-07-14 11:55:00'),(60,34,5,6,1,60,'940, chemin Marcel Delattre','nNPJtTiN','Nguyen-sur-Merle','33614','2020-07-14 11:55:00'),(61,35,1,6,1,61,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(62,40,4,1,1,62,'39, rue Pereira','UqzjixAiLbYjBRtNKwH','Pires','54158','2020-07-14 11:55:00'),(63,28,10,2,4,63,'32, avenue Chretien','sUoFMrUHmfT','MartinVille','33090','2020-07-14 11:55:00'),(64,13,5,4,1,64,'940, chemin Marcel Delattre','nNPJtTiN','Nguyen-sur-Merle','33614','2020-07-14 11:55:00'),(65,40,8,2,6,65,'29, rue Bernier','KzKjPZuuHtRIVpnOx','Meunier-sur-Regnier','88833','2020-07-14 11:55:00'),(66,9,5,3,4,66,'940, chemin Marcel Delattre','nNPJtTiN','Nguyen-sur-Merle','33614','2020-07-14 11:55:00'),(67,32,1,8,5,67,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(68,42,4,1,4,68,'39, rue Pereira','UqzjixAiLbYjBRtNKwH','Pires','54158','2020-07-14 11:55:00'),(69,6,1,2,4,69,'55, avenue de Loiseau','PUKZHYgIm','Guilletdan','30507','2020-07-14 11:55:00'),(70,31,7,7,1,70,'366, rue William Vallee','pnAwFQmIeTzhRF','Lebrun','24883','2020-07-14 11:55:00'),(71,16,9,8,4,71,'4, rue Adèle Bertin','izGGZemenaBcKnpvR','Perrier','15506','2020-07-14 11:55:00'),(72,22,5,6,4,72,'28, rue de Royer','QFdBcNonvYVj','Perrier','15506','2020-07-14 11:55:00'),(73,6,5,5,6,73,'55, avenue de Loiseau','PUKZHYgIm','Guilletdan','30507','2020-07-14 11:55:00'),(74,37,5,7,5,74,'481, boulevard Agnès Carre','swOlxLPDNXTtcSQfwM','Pichon-la-Forêt','31682','2020-07-14 11:55:00'),(75,20,2,8,1,75,'23, chemin de Thierry','rnfIZbZH','Delahaye-sur-Gregoire','17400','2020-07-14 11:55:00'),(76,2,8,5,4,76,'85, avenue de Dubois','XXhRkoSP','Fournier','77045','2020-07-14 11:55:00'),(77,42,6,1,5,77,'3, chemin Astrid Laurent','CoLlrMoujKkGu','Besnard-sur-Launay','97052','2020-07-14 11:55:00'),(78,11,9,5,5,78,'84, rue Arnaude Grenier','dRLD','Paul','19876','2020-07-14 11:55:00'),(79,2,6,4,5,79,'85, avenue de Dubois','XXhRkoSP','Fournier','77045','2020-07-14 11:55:00'),(80,22,1,3,6,80,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(81,35,3,8,6,81,'62, avenue Julien','wx','Sainte Élodienec','22223','2020-07-14 11:55:00'),(82,14,4,7,4,82,'39, rue Pereira','UqzjixAiLbYjBRtNKwH','Pires','54158','2020-07-14 11:55:00'),(83,10,9,3,5,83,'16, chemin Lelievre','mdwIaRfPURFsppeO','Lucasnec','06504','2020-07-14 11:55:00'),(84,4,8,1,6,84,'44, chemin Le Goff','uHmsWVo','Louis','31587','2020-07-14 11:55:00'),(85,7,10,1,5,85,'28, chemin Hernandez','mLJEuWbab','Le Gall','09121','2020-07-14 11:55:00'),(86,38,1,7,6,86,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(87,38,9,5,1,87,'9, rue Luce Legrand','vLeNnvPqhxIkHxISYJ','Sainte Nicolas-sur-Mer','52742','2020-07-14 11:55:00'),(88,4,3,6,6,88,'62, avenue Julien','wx','Sainte Élodienec','22223','2020-07-14 11:55:00'),(89,29,4,8,5,89,'32, rue Roland Fernandes','pGSNmZNJmE','Royer','40391','2020-07-14 11:55:00'),(90,40,1,6,4,90,'308, avenue Timothée Martineau','w','Fontainenec','81125','2020-07-14 11:55:00'),(91,6,6,5,6,91,'3, chemin Astrid Laurent','CoLlrMoujKkGu','Besnard-sur-Launay','97052','2020-07-14 11:55:00'),(92,16,2,7,6,92,'8, chemin Laurent Leclerc','Xdnajj','Sainte Frédérique','18191','2020-07-14 11:55:00'),(93,5,8,5,6,93,'29, rue Bernier','KzKjPZuuHtRIVpnOx','Meunier-sur-Regnier','88833','2020-07-14 11:55:00'),(94,24,2,6,5,94,'54, boulevard de Caron','lMalFKA','Pierre','50248','2020-07-14 11:55:00'),(95,25,6,2,6,95,'rue Nicolas Lamy','eGscWnNgagkscPRpJ','Leclercq-les-Bains','68801','2020-07-14 11:55:00'),(96,15,4,2,6,96,'39, rue Pereira','UqzjixAiLbYjBRtNKwH','Pires','54158','2020-07-14 11:55:00'),(97,14,7,8,1,97,'chemin Agathe Payet','ZywGrTViNdr','Olivier-les-Bains','61419','2020-07-14 11:55:00'),(98,38,3,2,6,98,'62, avenue Julien','wx','Sainte Élodienec','22223','2020-07-14 11:55:00'),(99,1,9,2,1,99,'boulevard Diallo','U','Monnier-sur-Mer','26362','2020-07-14 11:55:00'),(100,38,5,3,5,100,'940, chemin Marcel Delattre','nNPJtTiN','Nguyen-sur-Merle','33614','2020-07-14 11:55:00');
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `ingredient_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` decimal(4,2) NOT NULL,
  KEY `PK, FK` (`ingredient_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (17,1,3.00),(41,1,1.00),(23,1,3.00),(22,1,2.00),(38,2,3.00),(16,3,2.00),(35,3,3.00),(36,3,2.00),(4,3,2.00),(18,4,1.00),(25,4,3.00),(5,5,1.00),(19,5,1.00),(37,5,1.00),(26,5,2.00),(37,6,2.00),(22,6,2.00),(40,7,1.00),(26,7,3.00),(16,8,3.00),(15,9,1.00),(31,9,2.00),(37,10,2.00),(6,10,1.00),(35,10,2.00),(9,10,2.00),(38,11,3.00),(39,11,1.00),(13,11,1.00),(5,12,1.00),(37,12,3.00),(14,12,3.00),(34,12,2.00);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_address` bigint unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `FK` (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,1,'Pizzeria n°1','40-20-10-40-13'),(2,2,'Pizzeria n°2','79-45-90-49-44'),(3,3,'Pizzeria n°3','29-31-17-35-58'),(4,4,'Pizzeria n°4','94-03-53-97-63'),(5,5,'Pizzeria n°5','62-35-69-95-45'),(6,6,'Pizzeria n°6','34-83-16-99-26'),(7,7,'Pizzeria n°7','45-02-40-79-40'),(8,8,'Pizzeria n°8','27-22-94-84-44'),(9,9,'Pizzeria n°9','19-36-89-41-89'),(10,10,'Pizzeria n°10','25-29-04-83-77');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_customer`
--

DROP TABLE IF EXISTS `restaurant_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_customer` (
  `restaurant_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `PK, FK` (`restaurant_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_customer`
--

LOCK TABLES `restaurant_customer` WRITE;
/*!40000 ALTER TABLE `restaurant_customer` DISABLE KEYS */;
INSERT INTO `restaurant_customer` VALUES (1,1),(1,2),(1,6),(1,7),(1,10),(1,11),(1,38),(2,23),(2,24),(3,14),(3,16),(3,30),(3,37),(3,48),(3,49),(4,3),(4,43),(5,34),(5,36),(5,41),(5,45),(6,5),(6,8),(6,13),(6,20),(6,22),(6,32),(6,33),(6,40),(6,47),(7,19),(7,21),(7,27),(7,29),(7,35),(7,44),(8,4),(8,15),(8,25),(8,31),(8,39),(9,17),(9,26),(9,28),(9,42),(9,50),(10,9),(10,12),(10,18),(10,46);
/*!40000 ALTER TABLE `restaurant_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'en attente de préparation'),(2,'en préparation'),(3,'en attente de remise'),(4,'remise'),(5,'en attente de livraison'),(6,'en livraison'),(7,'livrée'),(8,'incidentannulée');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `restaurant_id` bigint unsigned NOT NULL,
  `ingredient_id` bigint unsigned NOT NULL,
  `quantity` decimal(4,2) NOT NULL,
  KEY `PK, FK` (`restaurant_id`,`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,13.00),(1,2,9.00),(1,3,24.00),(1,4,8.00),(1,5,23.00),(1,6,23.00),(1,7,1.00),(1,8,19.00),(1,9,6.00),(1,10,12.00),(1,11,8.00),(1,12,11.00),(1,13,18.00),(1,14,15.00),(1,15,8.00),(1,16,24.00),(1,17,5.00),(1,18,23.00),(1,19,23.00),(1,20,11.00),(1,21,24.00),(1,22,11.00),(1,23,13.00),(1,24,14.00),(1,25,17.00),(1,26,13.00),(1,27,15.00),(1,28,22.00),(1,29,14.00),(1,30,20.00),(1,31,22.00),(1,32,3.00),(1,33,10.00),(1,34,25.00),(1,35,4.00),(1,36,15.00),(1,37,0.00),(1,38,13.00),(1,39,20.00),(1,40,18.00),(1,41,24.00),(2,1,13.00),(2,2,15.00),(2,3,25.00),(2,4,0.00),(2,5,4.00),(2,6,7.00),(2,7,6.00),(2,8,16.00),(2,9,15.00),(2,10,20.00),(2,11,2.00),(2,12,16.00),(2,13,8.00),(2,14,25.00),(2,15,13.00),(2,16,3.00),(2,17,16.00),(2,18,17.00),(2,19,8.00),(2,20,24.00),(2,21,23.00),(2,22,6.00),(2,23,8.00),(2,24,2.00),(2,25,14.00),(2,26,23.00),(2,27,10.00),(2,28,2.00),(2,29,5.00),(2,30,25.00),(2,31,0.00),(2,32,25.00),(2,33,16.00),(2,34,6.00),(2,35,18.00),(2,36,25.00),(2,37,4.00),(2,38,15.00),(2,39,18.00),(2,40,17.00),(2,41,0.00),(3,1,0.00),(3,2,20.00),(3,3,3.00),(3,4,10.00),(3,5,0.00),(3,6,1.00),(3,7,18.00),(3,8,23.00),(3,9,5.00),(3,10,23.00),(3,11,10.00),(3,12,9.00),(3,13,3.00),(3,14,9.00),(3,15,10.00),(3,16,5.00),(3,17,17.00),(3,18,3.00),(3,19,16.00),(3,20,11.00),(3,21,6.00),(3,22,20.00),(3,23,25.00),(3,24,6.00),(3,25,15.00),(3,26,10.00),(3,27,20.00),(3,28,16.00),(3,29,19.00),(3,30,24.00),(3,31,24.00),(3,32,0.00),(3,33,1.00),(3,34,16.00),(3,35,8.00),(3,36,4.00),(3,37,21.00),(3,38,20.00),(3,39,18.00),(3,40,24.00),(3,41,17.00),(4,1,20.00),(4,2,5.00),(4,3,17.00),(4,4,17.00),(4,5,3.00),(4,6,23.00),(4,7,12.00),(4,8,7.00),(4,9,3.00),(4,10,0.00),(4,11,2.00),(4,12,20.00),(4,13,12.00),(4,14,15.00),(4,15,22.00),(4,16,23.00),(4,17,7.00),(4,18,18.00),(4,19,14.00),(4,20,22.00),(4,21,14.00),(4,22,10.00),(4,23,13.00),(4,24,11.00),(4,25,24.00),(4,26,23.00),(4,27,1.00),(4,28,11.00),(4,29,20.00),(4,30,23.00),(4,31,10.00),(4,32,7.00),(4,33,24.00),(4,34,19.00),(4,35,25.00),(4,36,21.00),(4,37,25.00),(4,38,25.00),(4,39,20.00),(4,40,19.00),(4,41,4.00),(5,1,15.00),(5,2,2.00),(5,3,24.00),(5,4,23.00),(5,5,11.00),(5,6,6.00),(5,7,18.00),(5,8,25.00),(5,9,0.00),(5,10,4.00),(5,11,0.00),(5,12,2.00),(5,13,14.00),(5,14,0.00),(5,15,23.00),(5,16,1.00),(5,17,24.00),(5,18,12.00),(5,19,22.00),(5,20,21.00),(5,21,1.00),(5,22,9.00),(5,23,10.00),(5,24,9.00),(5,25,7.00),(5,26,12.00),(5,27,8.00),(5,28,16.00),(5,29,12.00),(5,30,9.00),(5,31,16.00),(5,32,5.00),(5,33,24.00),(5,34,18.00),(5,35,8.00),(5,36,0.00),(5,37,11.00),(5,38,3.00),(5,39,4.00),(5,40,0.00),(5,41,7.00),(6,1,4.00),(6,2,22.00),(6,3,25.00),(6,4,23.00),(6,5,17.00),(6,6,17.00),(6,7,23.00),(6,8,20.00),(6,9,7.00),(6,10,17.00),(6,11,16.00),(6,12,17.00),(6,13,23.00),(6,14,24.00),(6,15,22.00),(6,16,0.00),(6,17,3.00),(6,18,5.00),(6,19,17.00),(6,20,14.00),(6,21,12.00),(6,22,13.00),(6,23,2.00),(6,24,16.00),(6,25,14.00),(6,26,17.00),(6,27,9.00),(6,28,20.00),(6,29,4.00),(6,30,15.00),(6,31,12.00),(6,32,23.00),(6,33,20.00),(6,34,19.00),(6,35,13.00),(6,36,12.00),(6,37,14.00),(6,38,11.00),(6,39,6.00),(6,40,24.00),(6,41,14.00),(7,1,21.00),(7,2,4.00),(7,3,3.00),(7,4,3.00),(7,5,23.00),(7,6,12.00),(7,7,8.00),(7,8,4.00),(7,9,13.00),(7,10,0.00),(7,11,10.00),(7,12,12.00),(7,13,10.00),(7,14,17.00),(7,15,6.00),(7,16,5.00),(7,17,19.00),(7,18,6.00),(7,19,18.00),(7,20,14.00),(7,21,19.00),(7,22,16.00),(7,23,20.00),(7,24,17.00),(7,25,21.00),(7,26,2.00),(7,27,16.00),(7,28,10.00),(7,29,23.00),(7,30,5.00),(7,31,9.00),(7,32,5.00),(7,33,25.00),(7,34,22.00),(7,35,15.00),(7,36,21.00),(7,37,21.00),(7,38,8.00),(7,39,12.00),(7,40,10.00),(7,41,22.00),(8,1,5.00),(8,2,23.00),(8,3,8.00),(8,4,24.00),(8,5,5.00),(8,6,0.00),(8,7,22.00),(8,8,17.00),(8,9,4.00),(8,10,18.00),(8,11,25.00),(8,12,9.00),(8,13,9.00),(8,14,12.00),(8,15,12.00),(8,16,16.00),(8,17,12.00),(8,18,19.00),(8,19,21.00),(8,20,23.00),(8,21,18.00),(8,22,20.00),(8,23,13.00),(8,24,23.00),(8,25,19.00),(8,26,17.00),(8,27,16.00),(8,28,18.00),(8,29,20.00),(8,30,2.00),(8,31,5.00),(8,32,9.00),(8,33,1.00),(8,34,17.00),(8,35,3.00),(8,36,4.00),(8,37,5.00),(8,38,21.00),(8,39,16.00),(8,40,11.00),(8,41,23.00),(9,1,25.00),(9,2,12.00),(9,3,7.00),(9,4,4.00),(9,5,19.00),(9,6,11.00),(9,7,16.00),(9,8,25.00),(9,9,4.00),(9,10,20.00),(9,11,25.00),(9,12,18.00),(9,13,6.00),(9,14,2.00),(9,15,20.00),(9,16,2.00),(9,17,14.00),(9,18,25.00),(9,19,6.00),(9,20,10.00),(9,21,11.00),(9,22,17.00),(9,23,13.00),(9,24,5.00),(9,25,12.00),(9,26,15.00),(9,27,5.00),(9,28,10.00),(9,29,7.00),(9,30,11.00),(9,31,20.00),(9,32,9.00),(9,33,13.00),(9,34,5.00),(9,35,25.00),(9,36,2.00),(9,37,13.00),(9,38,12.00),(9,39,14.00),(9,40,0.00),(9,41,19.00),(10,1,25.00),(10,2,6.00),(10,3,19.00),(10,4,17.00),(10,5,3.00),(10,6,4.00),(10,7,5.00),(10,8,19.00),(10,9,20.00),(10,10,17.00),(10,11,1.00),(10,12,3.00),(10,13,10.00),(10,14,20.00),(10,15,4.00),(10,16,5.00),(10,17,4.00),(10,18,5.00),(10,19,23.00),(10,20,7.00),(10,21,11.00),(10,22,11.00),(10,23,4.00),(10,24,7.00),(10,25,9.00),(10,26,7.00),(10,27,20.00),(10,28,24.00),(10,29,8.00),(10,30,20.00),(10,31,16.00),(10,32,19.00),(10,33,22.00),(10,34,18.00),(10,35,20.00),(10,36,3.00),(10,37,5.00),(10,38,2.00),(10,39,3.00),(10,40,11.00),(10,41,19.00);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat`
--

DROP TABLE IF EXISTS `vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vat` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `vat_100` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vat_100` (`vat_100`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat`
--

LOCK TABLES `vat` WRITE;
/*!40000 ALTER TABLE `vat` DISABLE KEYS */;
INSERT INTO `vat` VALUES (6,5.50),(2,10.00),(1,19.60),(7,20.00);
/*!40000 ALTER TABLE `vat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 11:43:27
