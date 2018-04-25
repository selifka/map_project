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
  `county_id` varchar(299) NOT NULL,
  `district_id` varchar(299) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlements`
--

LOCK TABLES `settlements` WRITE;
/*!40000 ALTER TABLE `settlements` DISABLE KEYS */;
INSERT INTO `settlements` VALUES ('1','Abbeville','36','3'),('10','Ashland','5','3'),('100','Glendora','68','17'),('101','Gloster','3','6'),('102','Golden','71','1'),('103','Goodman','26','21'),('104','Greenville','76','4'),('105','Greenwood','42','4'),('106','Grenada','22','5'),('107','Gulfport','24','2'),('108','Gunnison','6','11'),('109','Gun','41','1'),('11','Baldwyn','41,59','1'),('110','Hatley','48','1'),('111','Hattiesburg','18,37','12,15'),('112','Hazlehurst','15','22'),('113','Heidelberg','31','13'),('114','Hernando','17','17'),('115','Hickory','51','8'),('116','HickoryFlat','5','3'),('117','Hollandale','76','4'),('118','HollySprings','47','3'),('119','HornLake','17','17'),('12','Bassfield','33','15'),('120','Houston','9','3'),('121','Indianola','67','4'),('122','Inverness','67','4'),('123','Isola','27','21'),('124','IttaBena','42','4'),('125','Iuka','71','1'),('126','Jackson','25,45,61','7,20'),('127','Jones','14','11'),('128','Jumper','59','1'),('129','Kilmichael','49','5'),('13','Batesville','54','17'),('130','Kosciusko','4','5'),('131','Kossuth','2','1'),('132','Lake','51,62','8'),('133','Lambert','60','11'),('134','Laurel','34','18'),('135','Leakesville','21','19'),('136','Learned','25','7'),('137','Leland','76','4'),('138','Lena','40','8'),('139','Lexington','26','21'),('14','BaySt.Louis','23','2'),('140','Liberty','3','6'),('141','LongBeach','24','2'),('142','Louin','31','13'),('143','Louise','27','21'),('144','Louisville','80','5'),('145','Lucedale','20','19'),('146','Lula','14','11'),('147','Lumberton','37,55','15'),('148','Lyon','14','11'),('149','Maben','53,78','16'),('15','BaySprings','31','13'),('150','McComb','57','14'),('151','McCool','4','5'),('152','McLain','21','19'),('153','Macon','52','16'),('154','Madison','45','20'),('155','Magee','64','13'),('156','Magnolia','57','14'),('157','Mantachie','29','1'),('158','Mantee','78','5'),('159','Marietta','59','1'),('16','Beaumont','56','12'),('160','Marion','38','10'),('161','Marks','60','11'),('162','Mathiston','10,78','5'),('163','Mayersville','28','9'),('164','Meadville','19','6'),('165','Mendenhall','64','13'),('166','Meridian','38','10'),('167','Merigold','6','11'),('168','Metcalfe','76','4'),('169','Mize','65','13'),('17','Beauregard','15','22'),('170','Monticello','39','15'),('171','Montrose','31','13'),('172','Moorhead','67','4'),('173','Morgan','42','4'),('174','Morton','62','8'),('175','MossPoint','30','19'),('176','MoundBayou','6','11'),('177','MountOlive','16','13'),('178','Myrtle','73','3'),('179','Natchez','1','6'),('18','Belmont','71','1'),('180','Nettleton','41,48','1'),('181','NewAlbany','73','3'),('182','NewAugusta','56','12'),('183','NewHebron','39','15'),('184','NewHoulka','9','3'),('185','Newton','51','8'),('186','NorthCarrollton','8','5'),('187','Noxapater','80','5'),('188','Oakland','81','17'),('189','OceanSprings','30','19'),('19','Belzoni','27','21'),('190','Okolona','9','3'),('191','OliveBranch','17','17'),('192','Osyka','57','14'),('193','Oxford','36','3'),('194','Pace','6','11'),('195','Pachuta','12','10'),('196','Paden','71','1'),('197','Pascagoula','30','19'),('198','PassChristian','24','2'),('199','Pearl','61','20'),('2','Aberdeen','48','1'),('20','Benoit','6','11'),('200','Pelahatchie','61','20'),('201','Petal','18','12'),('202','Philadelphia','50','8'),('203','Picayune','55','15'),('204','Pickens','26','21'),('205','Pittsboro','7','3'),('206','Plantersville','41','1'),('207','Polkville','65','13'),('208','Pontotoc','58','1'),('209','Pope','54','17'),('21','Bentonia','82','21'),('210','Poplarville','55','15'),('211','PortGibson','11','22'),('212','PottsCamp','47','3'),('213','Prentiss','33','15'),('214','Puckett','61','20'),('215','Purvis','37','15'),('216','Quitman','12','10'),('217','Raleigh','65','13'),('218','Raymond','25','7'),('219','Renova','6','11'),('22','Beulah','6','11'),('220','Richland','61','20'),('221','Richton','56','12'),('222','Ridgeland','45','20'),('223','Rienzi','2','1'),('224','Ripley','70','3'),('225','RollingFork','63','9'),('226','Rosedale','6','11'),('227','Roxie','19','6'),('228','Ruleville','67','4'),('229','Sallis','4','5'),('23','BigCreek','7','3'),('230','Saltillo','41','1'),('231','Sandersville','34','18'),('232','Sardis','54','17'),('233','Satartia','82','21'),('234','Schlater','42','4'),('235','Scooba','35','10'),('236','Sebastopol','62,40','8'),('237','Seminary','16','13'),('238','Senatobia','69','17'),('239','Shannon','41','1'),('24','Biloxi','24','2'),('240','Shaw','6,67','11'),('241','Shelby','6','11'),('242','Sherman','41,58,73','1,3'),('243','Shubuta','12','10'),('244','Shuqualak','52','16'),('245','Sidon','42','4'),('246','Silver','27','21'),('247','SilverCreek','39','15'),('248','SlateSprings','7','3'),('249','Sledge','60','11'),('25','BlueMountain','70','3'),('250','Smithville','48','1'),('251','SnowLakeShores','5','3'),('252','Soso','34','18'),('253','Southaven','17','17'),('254','Starkville','53','16'),('255','StateLine','21,77','10,19'),('256','Stonewall','12','10'),('257','Sturgis','53','16'),('258','Summit','57','14'),('259','Sumner','68','17'),('26','BlueSprings','73','3'),('260','Sumrall','37','15'),('261','Sunflower','67','4'),('262','Sylvarena','65','13'),('263','Taylor','36','3'),('264','Taylorsville','65','13'),('265','Tchula','26','21'),('266','Terry','25','7'),('267','Thaxton','58','1'),('268','Tillatoba','81','17'),('269','Tishomingo','71','1'),('27','Bolton','25','7'),('270','Toccopola','58','1'),('271','Tremont','29','1'),('272','Tunica','72','11'),('273','Tupelo','41','1'),('274','Tutwiler','68','17'),('275','Tyler','74','14'),('276','Union','50,51','8'),('277','Utica','25','7'),('278','Vaiden','8','5'),('279','Vardaman','7','3'),('28','Booneville','59','1'),('280','Verona','41','1'),('281','Vicksburg','75','9'),('282','Walls','17','17'),('283','Walnut','70','3'),('284','WalnutGrove','40','8'),('285','Walthall','78','5'),('286','WaterValley','81','17'),('287','Waveland','23','2'),('288','Waynesboro','77','10'),('289','Webb','68','17'),('29','Boyle','6','11'),('290','Weir','10','5'),('291','Wesson','15,43','14'),('292','West','26','21'),('293','WestPoint','13','16'),('294','Wiggins','66','2'),('295','Winona','49','5'),('296','Winstonville','6','11'),('297','Woodland','9','3'),('298','Woodville','79','6'),('299','Yazoo','82','21'),('3','Ackerman','10','5'),('30','Brandon','61','20'),('31','Braxton','64','13'),('32','Brookhaven','43','14'),('33','Brooksville','52','16'),('34','Bruce','7','3'),('35','Bude','19','6'),('36','Burnsville','71','1'),('37','Byhalia','47','3'),('38','Byram','25','7'),('39','Caledonia','44','16'),('4','Algoma','58','1'),('40','Calhoun','7','3'),('41','Canton','45','20'),('42','Carrollton','8','5'),('43','Carthage','40','8'),('44','Cary','63','9'),('45','Centreville','3,79','6'),('46','Charleston','68','17'),('47','Chunky','51','8'),('48','Clarksdale','14','11'),('49','Cleveland','6','11'),('5','Alligator','6','11'),('50','Clinton','25','7'),('51','Coahoma','14','11'),('52','Coffeeville','81','17'),('53','Coldwater','69','17'),('54','Collins','16','13'),('55','Columbia','46','15'),('56','Columbus','44','16'),('57','Como','54','17'),('58','Corinth','2','1'),('59','Courtland','54','17'),('6','Amory','48','1'),('60','Crawford','44','16'),('61','Crenshaw','54,60','11,17'),('62','Crosby','3,79','6'),('63','Crowder','54,60','11,17'),('64','Cruger','26','21'),('65','CrystalSprings','15','22'),('66','Decatur','51','8'),('67','DeKalb','35','10'),('68','Derma','7','3'),('69','Diamondhead','24','2'),('7','Anguilla','63','9'),('70','D\'Iberville','64','13'),('71','D\'Lo','23','2'),('72','Doddsville','67','4'),('73','Drew','67','4'),('74','DuckHill','49','5'),('75','Dumas','70','3'),('76','Duncan','6','11'),('77','Durant','26','21'),('78','Ecru','58','1'),('79','Eden','82','21'),('8','Arcola','76','4'),('80','Edwards','25','7'),('81','Ellisville','34','18'),('82','Enterprise','12','10'),('83','Ethel','4','5'),('84','Eupora','78','5'),('85','Falcon','60','11'),('86','Falkner','70','3'),('87','Farmington','2','1'),('88','Fayette','32','22'),('89','Flora','45','20'),('9','Artesia','44','16'),('90','Florence','61','20'),('91','Flowood','61','20'),('92','Forest','62','8'),('93','FrenchCamp','10','5'),('94','FriarsPoint','14','11'),('95','Fulton','29','1'),('96','Gattman','48','1'),('97','Gautier','30','19'),('98','George','15','22'),('99','Glen','2','1');
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

-- Dump completed on 2018-04-16 20:47:37
