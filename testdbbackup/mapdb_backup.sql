-- MySQL dump 10.13  Distrib 5.5.59, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: mapdb
-- ------------------------------------------------------
-- Server version	5.5.59

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
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counties` (
  `id` int(83) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counties`
--

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;
INSERT INTO `counties` VALUES (1,'Adams\r'),(2,'Alcorn\r'),(3,'Amite\r'),(4,'Attala\r'),(5,'Benton\r'),(6,'Bolivar\r'),(7,'Calhoun\r'),(8,'Carroll\r'),(9,'Chickasaw\r'),(10,'Choctaw\r'),(11,'Claiborne\r'),(12,'Clarke\r'),(13,'Clay\r'),(14,'Coahoma\r'),(15,'Copiah\r'),(16,'Covington\r'),(17,'DeSoto\r'),(18,'Forrest\r'),(19,'Franklin\r'),(20,'George\r'),(21,'Greene\r'),(22,'Grenada\r'),(23,'Hancock\r'),(24,'Harrison\r'),(25,'Hinds\r'),(26,'Holmes\r'),(27,'Humphreys\r'),(28,'Issaquena\r'),(29,'Itawamba\r'),(30,'Jackson\r'),(31,'Jasper\r'),(32,'Jefferson\r'),(33,'Jefferson Davis\r'),(34,'Jones\r'),(35,'Kemper\r'),(36,'Lafayette\r'),(37,'Lamar\r'),(38,'Lauderdale\r'),(39,'Lawrence\r'),(40,'Leake\r'),(41,'Lee\r'),(42,'Leflore\r'),(43,'Lincoln\r'),(44,'Lowndes\r'),(45,'Madison\r'),(46,'Marion\r'),(47,'Marshall\r'),(48,'Monroe\r'),(49,'Montgomery\r'),(50,'Neshoba\r'),(51,'Newton\r'),(52,'Noxubee\r'),(53,'Oktibbeha\r'),(54,'Panola\r'),(55,'Pearl River\r'),(56,'Perry\r'),(57,'Pike\r'),(58,'Pontotoc\r'),(59,'Prentiss\r'),(60,'Quitman\r'),(61,'Rankin\r'),(62,'Scott\r'),(63,'Sharkey\r'),(64,'Simpson\r'),(65,'Smith\r'),(66,'Stone\r'),(67,'Sunflower\r'),(68,'Tallahatchie\r'),(69,'Tate\r'),(70,'Tippah\r'),(71,'Tishomingo\r'),(72,'Tunica\r'),(73,'Union\r'),(74,'Walthall\r'),(75,'Warren\r'),(76,'Washington\r'),(77,'Wayne\r'),(78,'Webster\r'),(79,'Wilkinson\r'),(80,'Winston\r'),(81,'Yalobusha\r'),(82,'Yazoo\r');
/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'District 1\r'),(2,'District 2\r'),(3,'District 3\r'),(4,'District 4\r'),(5,'District 5\r'),(6,'District 6\r'),(7,'District 7\r'),(8,'District 8\r'),(9,'District 9\r'),(10,'District 10\r'),(11,'District 11\r'),(12,'District 12\r'),(13,'District 13\r'),(14,'District 14\r'),(15,'District 15\r'),(16,'District 16\r'),(17,'District 17\r'),(18,'District 18\r'),(19,'District 19\r'),(20,'District 20\r'),(21,'District 21\r'),(22,'District 22');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlements`
--

DROP TABLE IF EXISTS `settlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settlements` (
  `id` varchar(299) NOT NULL,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlements`
--

LOCK TABLES `settlements` WRITE;
/*!40000 ALTER TABLE `settlements` DISABLE KEYS */;
INSERT INTO `settlements` VALUES ('1','Abbeville \r'),('10','Ashland \r'),('100','Glendora \r'),('101','Gloster \r'),('102','Golden \r'),('103','Goodman \r'),('104','Greenville \r'),('105','Greenwood \r'),('106','Grenada \r'),('107','Gulfport \r'),('108','Gunnison \r'),('109','Gun \r'),('11','Baldwyn \r'),('110','Hatley \r'),('111','Hattiesburg \r'),('112','Hazlehurst \r'),('113','Heidelberg \r'),('114','Hernando \r'),('115','Hickory \r'),('116','Hickory Flat \r'),('117','Hollandale \r'),('118','Holly Springs \r'),('119','Horn Lake \r'),('12','Bassfield \r'),('120','Houston \r'),('121','Indianola \r'),('122','Inverness \r'),('123','Isola \r'),('124','Itta Bena \r'),('125','Iuka \r'),('126','Jackson \r'),('127','Jones \r'),('128','Jumper \r'),('129','Kilmichael \r'),('13','Batesville \r'),('130','Kosciusko \r'),('131','Kossuth \r'),('132','Lake \r'),('133','Lambert \r'),('134','Laurel \r'),('135','Leakesville \r'),('136','Learned \r'),('137','Leland \r'),('138','Lena \r'),('139','Lexington \r'),('14','Bay St. Louis \r'),('140','Liberty \r'),('141','Long Beach \r'),('142','Louin \r'),('143','Louise \r'),('144','Louisville \r'),('145','Lucedale \r'),('146','Lula \r'),('147','Lumberton \r'),('148','Lyon \r'),('149','Maben \r'),('15','Bay Springs \r'),('150','McComb \r'),('151','McCool \r'),('152','McLain \r'),('153','Macon \r'),('154','Madison \r'),('155','Magee \r'),('156','Magnolia \r'),('157','Mantachie \r'),('158','Mantee \r'),('159','Marietta \r'),('16','Beaumont \r'),('160','Marion \r'),('161','Marks \r'),('162','Mathiston \r'),('163','Mayersville \r'),('164','Meadville \r'),('165','Mendenhall \r'),('166','Meridian \r'),('167','Merigold \r'),('168','Metcalfe \r'),('169','Mize \r'),('17','Beauregard \r'),('170','Monticello \r'),('171','Montrose \r'),('172','Moorhead \r'),('173','Morgan  \r'),('174','Morton \r'),('175','Moss Point \r'),('176','Mound Bayou \r'),('177','Mount Olive \r'),('178','Myrtle \r'),('179','Natchez \r'),('18','Belmont \r'),('180','Nettleton \r'),('181','New Albany \r'),('182','New Augusta \r'),('183','New Hebron \r'),('184','New Houlka \r'),('185','Newton \r'),('186','North Carrollton \r'),('187','Noxapater \r'),('188','Oakland \r'),('189','Ocean Springs \r'),('19','Belzoni \r'),('190','Okolona \r'),('191','Olive Branch \r'),('192','Osyka \r'),('193','Oxford \r'),('194','Pace \r'),('195','Pachuta \r'),('196','Paden \r'),('197','Pascagoula \r'),('198','Pass Christian \r'),('199','Pearl \r'),('2','Aberdeen \r'),('20','Benoit \r'),('200','Pelahatchie \r'),('201','Petal \r'),('202','Philadelphia \r'),('203','Picayune \r'),('204','Pickens \r'),('205','Pittsboro \r'),('206','Plantersville \r'),('207','Polkville \r'),('208','Pontotoc \r'),('209','Pope \r'),('21','Bentonia \r'),('210','Poplarville \r'),('211','Port Gibson \r'),('212','Potts Camp \r'),('213','Prentiss \r'),('214','Puckett \r'),('215','Purvis \r'),('216','Quitman \r'),('217','Raleigh \r'),('218','Raymond \r'),('219','Renova \r'),('22','Beulah \r'),('220','Richland \r'),('221','Richton \r'),('222','Ridgeland \r'),('223','Rienzi \r'),('224','Ripley \r'),('225','Rolling Fork \r'),('226','Rosedale \r'),('227','Roxie \r'),('228','Ruleville \r'),('229','Sallis \r'),('23','Big Creek \r'),('230','Saltillo \r'),('231','Sandersville \r'),('232','Sardis \r'),('233','Satartia \r'),('234','Schlater \r'),('235','Scooba \r'),('236','Sebastopol \r'),('237','Seminary \r'),('238','Senatobia \r'),('239','Shannon \r'),('24','Biloxi \r'),('240','Shaw \r'),('241','Shelby \r'),('242','Sherman \r'),('243','Shubuta \r'),('244','Shuqualak \r'),('245','Sidon \r'),('246','Silver  \r'),('247','Silver Creek \r'),('248','Slate Springs \r'),('249','Sledge \r'),('25','Blue Mountain \r'),('250','Smithville \r'),('251','Snow Lake Shores \r'),('252','Soso \r'),('253','Southaven \r'),('254','Starkville \r'),('255','State Line \r'),('256','Stonewall \r'),('257','Sturgis \r'),('258','Summit \r'),('259','Sumner \r'),('26','Blue Springs \r'),('260','Sumrall \r'),('261','Sunflower \r'),('262','Sylvarena \r'),('263','Taylor \r'),('264','Taylorsville \r'),('265','Tchula \r'),('266','Terry \r'),('267','Thaxton \r'),('268','Tillatoba\r'),('269','Tishomingo \r'),('27','Bolton \r'),('270','Toccopola \r'),('271','Tremont \r'),('272','Tunica \r'),('273','Tupelo \r'),('274','Tutwiler \r'),('275','Tyler \r'),('276','Union \r'),('277','Utica \r'),('278','Vaiden \r'),('279','Vardaman \r'),('28','Booneville \r'),('280','Verona \r'),('281','Vicksburg \r'),('282','Walls \r'),('283','Walnut \r'),('284','Walnut Grove \r'),('285','Walthall \r'),('286','Water Valley \r'),('287','Waveland \r'),('288','Waynesboro \r'),('289','Webb \r'),('29','Boyle \r'),('290','Weir \r'),('291','Wesson \r'),('292','West \r'),('293','West Point \r'),('294','Wiggins \r'),('295','Winona \r'),('296','Winstonville \r'),('297','Woodland \r'),('298','Woodville \r'),('299','Yazoo  \r'),('3','Ackerman \r'),('30','Brandon \r'),('31','Braxton \r'),('32','Brookhaven \r'),('33','Brooksville \r'),('34','Bruce \r'),('35','Bude \r'),('36','Burnsville \r'),('37','Byhalia \r'),('38','Byram \r'),('39','Caledonia \r'),('4','Algoma \r'),('40','Calhoun  \r'),('41','Canton \r'),('42','Carrollton \r'),('43','Carthage \r'),('44','Cary \r'),('45','Centreville \r'),('46','Charleston \r'),('47','Chunky \r'),('48','Clarksdale \r'),('49','Cleveland \r'),('5','Alligator \r'),('50','Clinton \r'),('51','Coahoma \r'),('52','Coffeeville \r'),('53','Coldwater \r'),('54','Collins \r'),('55','Columbia \r'),('56','Columbus \r'),('57','Como \r'),('58','Corinth \r'),('59','Courtland \r'),('6','Amory \r'),('60','Crawford \r'),('61','Crenshaw \r'),('62','Crosby \r'),('63','Crowder \r'),('64','Cruger \r'),('65','Crystal Springs \r'),('66','Decatur \r'),('67','De Kalb \r'),('68','Derma \r'),('69','Diamondhead \r'),('7','Anguilla \r'),('70','D\'Iberville \r'),('71','D\'Lo \r'),('72','Doddsville \r'),('73','Drew \r'),('74','Duck Hill \r'),('75','Dumas \r'),('76','Duncan \r'),('77','Durant \r'),('78','Ecru \r'),('79','Eden \r'),('8','Arcola \r'),('80','Edwards \r'),('81','Ellisville \r'),('82','Enterprise \r'),('83','Ethel \r'),('84','Eupora \r'),('85','Falcon \r'),('86','Falkner \r'),('87','Farmington \r'),('88','Fayette \r'),('89','Flora \r'),('9','Artesia \r'),('90','Florence \r'),('91','Flowood \r'),('92','Forest \r'),('93','French Camp \r'),('94','Friars Point \r'),('95','Fulton \r'),('96','Gattman \r'),('97','Gautier \r'),('98','George \r'),('99','Glen \r');
/*!40000 ALTER TABLE `settlements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-13 20:10:40
