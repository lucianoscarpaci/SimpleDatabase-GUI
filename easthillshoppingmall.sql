-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: easthillshoppingmall
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `belongs_to`
--

DROP TABLE IF EXISTS `belongs_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belongs_to` (
  `sid` int NOT NULL,
  `bid` int DEFAULT NULL,
  `sname` varchar(40) DEFAULT NULL,
  `semployee` varchar(5) DEFAULT NULL,
  `smanager` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `bid` (`bid`),
  CONSTRAINT `belongs_to_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `building` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belongs_to`
--

LOCK TABLES `belongs_to` WRITE;
/*!40000 ALTER TABLE `belongs_to` DISABLE KEYS */;
INSERT INTO `belongs_to` VALUES (1111,100,'The Elegant Moon','Harvy','Janel'),(2222,200,'The Flowing Clock','Evans','Hanna'),(3333,300,'The Brass Guard','Elvis','Fiona'),(4444,400,'The Awesome Pond Wand Store','Kirby','Leora'),(5555,500,'Fluffy Castle Apothecary','Metro','Orene'),(6666,600,'The Busy Pet Store','Malik','Lylah'),(7777,700,'Lawn Order','Henri','Jayla'),(8888,800,'Colorful Toy Store','Darin','Irene'),(9999,900,'Thai Me Up','Wendi','Quang'),(10010,1000,'Good Fish Cafe','Grace','Jacey'),(11011,1100,'The Fluffy Book Store','Egypt','Gavin'),(12012,1200,'Drakes Dry Cleaners','Stacy','Roxie'),(13013,1300,'The Maximum Trophy Shop','Olive','Leota'),(14014,1400,'Pizza My Heart','Allie','Luigi'),(15015,1500,'Much Wow Chow Chinese','Ming','Tangi');
/*!40000 ALTER TABLE `belongs_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `bid` int NOT NULL,
  `bname` varchar(10) DEFAULT NULL,
  `baddress` varchar(30) DEFAULT NULL,
  `bmanager` char(5) DEFAULT NULL,
  `bsecurity` char(5) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (100,'Northside','Unit A','Chris','Juan'),(200,'Northside','Unit B','Sarah','Yuko'),(300,'Southside','Unit C','Kathy','Lexus'),(400,'Southside','Unit D','Mylie','Pablo'),(500,'Southside','Unit E','Stone','Rutha'),(600,'Eastside','Unit F','Tyler','Shaun'),(700,'Eastside','Unit G','Susan','Nealy'),(800,'Eastside','Unit H','Irwin','Jimmy'),(900,'Eastside','Unit I','Karli','Ocean'),(1000,'Westside','Unit J','Yahir','Averi'),(1100,'Westside','Unit K','Tessa','David'),(1200,'Westside','Unit L','Bonne','Oscar'),(1300,'Westside','Unit M','Clare','Ralph'),(1400,'Northside','Unit N','Ethan','Jonas'),(1500,'Northside','Unit O','Perry','Riggs');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `can_shop`
--

DROP TABLE IF EXISTS `can_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `can_shop` (
  `cid` varchar(15) NOT NULL,
  `sid` int NOT NULL,
  `sname` varchar(40) DEFAULT NULL,
  `semployee` varchar(5) DEFAULT NULL,
  `smanager` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cid`,`sid`),
  KEY `sid` (`sid`),
  CONSTRAINT `can_shop_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`),
  CONSTRAINT `can_shop_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `store` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `can_shop`
--

LOCK TABLES `can_shop` WRITE;
/*!40000 ALTER TABLE `can_shop` DISABLE KEYS */;
INSERT INTO `can_shop` VALUES ('2XzC87GNmUdpTtN',15015,'Much Wow Chow Chinese','Ming','Tangi'),('6k5vkdjopjsJ29Q',14014,'Pizza My Heart','Allie','Luigi'),('8uRYT17OATe9uFv',13013,'The Maximum Trophy Shop','Olive','Leota'),('CUbx1UMdkqJ358d',12012,'Drakes Dry Cleaners','Stacy','Roxie'),('DN0ufjBTp12fhIu',11011,'The Fluffy Book Store','Egypt','Gavin'),('EXu0lITYM6BP4PM',10010,'Good Fish Cafe','Grace','Jacey'),('Ii39uDE9rQIiJqM',9999,'Thai Me Up','Wendi','Quang'),('iYntC4kI6nVfpnX',8888,'Colorful Toy Store','Darin','Irene'),('mc9OmP8UmuOV9uH',7777,'Lawn Order','Henri','Jayla'),('r63lyTloLpZFSuw',6666,'The Busy Pet Store','Malik','Lylah'),('rnQFwp6Q76LzdzZ',5555,'Fluffy Castle Apothecary','Metro','Orene'),('Sbjz0rvgQjkNyqN',4444,'The Awesome Pond Wand Store','Kirby','Leora'),('t57JPJhqM9fWgQq',3333,'The Brass Guard','Elvis','Fiona'),('ur8rFKbEr7W06sB',2222,'The Flowing Clock','Evans','Hanna'),('ySW2Ra2krehLyZE',1111,'The Elegant Moon','Harvy','Janel');
/*!40000 ALTER TABLE `can_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashier` (
  `customer` varchar(15) NOT NULL,
  `cashier` int NOT NULL,
  PRIMARY KEY (`customer`,`cashier`),
  CONSTRAINT `cashier_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier`
--

LOCK TABLES `cashier` WRITE;
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
INSERT INTO `cashier` VALUES ('2XzC87GNmUdpTtN',15),('6k5vkdjopjsJ29Q',14),('8uRYT17OATe9uFv',13),('CUbx1UMdkqJ358d',12),('DN0ufjBTp12fhIu',11),('EXu0lITYM6BP4PM',10),('Ii39uDE9rQIiJqM',9),('iYntC4kI6nVfpnX',7),('mc9OmP8UmuOV9uH',6),('r63lyTloLpZFSuw',8),('rnQFwp6Q76LzdzZ',5),('Sbjz0rvgQjkNyqN',4),('t57JPJhqM9fWgQq',3),('ur8rFKbEr7W06sB',2),('ySW2Ra2krehLyZE',1);
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` varchar(15) NOT NULL,
  `cname` varchar(5) DEFAULT NULL,
  `cage` int DEFAULT NULL,
  `cemail` varchar(30) DEFAULT NULL,
  `cphone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('2XzC87GNmUdpTtN','Dwane',44,'dwayne@mail.pw','2102272347'),('6k5vkdjopjsJ29Q','Lucia',60,'lucia@mail.pw','5419814053'),('8uRYT17OATe9uFv','Aliza',26,'aliza@mail.pw','9146861420'),('CUbx1UMdkqJ358d','Felix',62,'felix@mail.pw','3234648542'),('DN0ufjBTp12fhIu','Corie',42,'corie@mail.pw','2062851086'),('EXu0lITYM6BP4PM','Heidi',21,'heidi@mail.pw','9738311527'),('Ii39uDE9rQIiJqM','Doris',35,'doris@mail.pw','6467559298'),('iYntC4kI6nVfpnX','Ettie',61,'ettie@mail.pw','8668251714'),('mc9OmP8UmuOV9uH','Maiya',19,'maiya@mail.pw','4154606695'),('r63lyTloLpZFSuw','Hasan',39,'hasan@mail.pw','2012851044'),('rnQFwp6Q76LzdzZ','Gerry',40,'gerry@mail.pw','2292436000'),('Sbjz0rvgQjkNyqN','Jason',34,'jason@mail.pw','9035904644'),('t57JPJhqM9fWgQq','Benny',33,'benny@mail.pw','8444490455'),('ur8rFKbEr7W06sB','Elise',22,'elise@mail.pw','8776614898'),('ySW2Ra2krehLyZE','Carlo',23,'carlo@mail.pw','2017913765');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_product`
--

DROP TABLE IF EXISTS `has_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_product` (
  `cid` varchar(15) NOT NULL,
  `sid` int NOT NULL,
  PRIMARY KEY (`cid`,`sid`),
  KEY `sid` (`sid`),
  CONSTRAINT `has_product_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`),
  CONSTRAINT `has_product_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `store` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_product`
--

LOCK TABLES `has_product` WRITE;
/*!40000 ALTER TABLE `has_product` DISABLE KEYS */;
INSERT INTO `has_product` VALUES ('ySW2Ra2krehLyZE',1111),('ur8rFKbEr7W06sB',2222),('t57JPJhqM9fWgQq',3333),('Sbjz0rvgQjkNyqN',4444),('rnQFwp6Q76LzdzZ',5555),('r63lyTloLpZFSuw',6666),('mc9OmP8UmuOV9uH',7777),('iYntC4kI6nVfpnX',8888),('Ii39uDE9rQIiJqM',9999),('EXu0lITYM6BP4PM',10010),('DN0ufjBTp12fhIu',11011),('CUbx1UMdkqJ358d',12012),('8uRYT17OATe9uFv',13013),('6k5vkdjopjsJ29Q',14014),('2XzC87GNmUdpTtN',15015);
/*!40000 ALTER TABLE `has_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `sid` int NOT NULL,
  `sname` varchar(40) DEFAULT NULL,
  `semployee` varchar(5) DEFAULT NULL,
  `smanager` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1111,'The Elegant Moon','Harvy','Janel'),(2222,'The Flowing Clock','Evans','Hanna'),(3333,'The Brass Guard','Elvis','Fiona'),(4444,'The Awesome Pond Wand Store','Kirby','Leora'),(5555,'Fluffy Castle Apothecary','Metro','Orene'),(6666,'The Busy Pet Store','Malik','Lylah'),(7777,'Lawn Order','Henri','Jayla'),(8888,'Colorful Toy Store','Darin','Irene'),(9999,'Thai Me Up','Wendi','Quang'),(10010,'Good Fish Cafe','Grace','Jacey'),(11011,'The Fluffy Book Store','Egypt','Gavin'),(12012,'Drakes Dry Cleaners','Stacy','Roxie'),(13013,'The Maximum Trophy Shop','Olive','Leota'),(14014,'Pizza My Heart','Allie','Luigi'),(15015,'Much Wow Chow Chinese','Ming','Tangi');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12  1:00:34
