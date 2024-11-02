-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proj4
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `Achievement_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Achievement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Achievement_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,6,'Best Designer Award'),(2,7,'Bestseller on Amazon'),(3,8,'Featured Artist in Vogue'),(4,9,'Winner of Photography Contest'),(5,10,'Bestselling Author');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `Collection_ID` int NOT NULL,
  `categories` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Collection_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,'Abstract'),(2,'Minimalist'),(3,'Modern'),(4,'Vintage'),(5,'Contemporary');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `Color_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Color_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Red'),(2,'Blue'),(3,'Green'),(4,'Yellow'),(5,'Black');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `Comment_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `Design_ID` int DEFAULT NULL,
  `Comment_Text` text,
  `Comment_Date` date DEFAULT NULL,
  PRIMARY KEY (`Comment_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Design_ID` (`Design_ID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`Design_ID`) REFERENCES `design` (`Design_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design`
--

DROP TABLE IF EXISTS `design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `design` (
  `Design_ID` int NOT NULL,
  `Customization` varchar(255) DEFAULT NULL,
  `View_permission` varchar(255) DEFAULT NULL,
  `Pattern` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Style` varchar(255) DEFAULT NULL,
  `Finish` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Media` varchar(255) DEFAULT NULL,
  `Mature_Content` tinyint(1) DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Design_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `design_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design`
--

LOCK TABLES `design` WRITE;
/*!40000 ALTER TABLE `design` DISABLE KEYS */;
INSERT INTO `design` VALUES (6,'Custom','Public','Abstract Lines','Abstract Art','Modern','Glossy','Dynamic abstract artwork with intersecting lines.','image_url_6',0,6),(7,'Pre-designed','Private','Geometric Shapes','Minimalist Design','Minimalist','Matte','Simple and elegant geometric design suitable for modern interiors.','image_url_7',0,7),(8,'Custom','Public','Floral Pattern','Floral Wallpaper','Vintage','Textured','Elegant floral pattern wallpaper for a classic look.','image_url_8',0,8),(9,'Pre-designed','Public','Abstract Shapes','Contemporary Art','Contemporary','Satin','Abstract artwork featuring vibrant colors and geometric shapes.','image_url_9',0,9),(10,'Custom','Private','Landscape','Nature Painting','Realism','Canvas','Beautiful landscape painting depicting a serene natural scene.','image_url_10',0,10),(11,'Custom','Public','Abstract Lines','Abstract Art 2','Modern','Glossy','Dynamic abstract artwork with intersecting lines.','image_url_11',0,6),(12,'Pre-designed','Private','Geometric Shapes','Minimalist Design 2','Minimalist','Matte','Simple and elegant geometric design suitable for modern interiors.','image_url_12',0,6),(13,'Custom','Public','Floral Pattern','Floral Wallpaper 2','Vintage','Textured','Elegant floral pattern wallpaper for a classic look.','image_url_13',0,6),(14,'Pre-designed','Public','Abstract Shapes','Contemporary Art 2','Contemporary','Satin','Abstract artwork featuring vibrant colors and geometric shapes.','image_url_14',0,6),(15,'Custom','Private','Landscape','Nature Painting 2','Realism','Canvas','Beautiful landscape painting depicting a serene natural scene.','image_url_15',0,6),(16,'Custom','Public','Abstract Lines','Abstract Art 3','Modern','Glossy','Dynamic abstract artwork with intersecting lines.','image_url_16',0,6),(17,'Pre-designed','Private','Geometric Shapes','Minimalist Design 3','Minimalist','Matte','Simple and elegant geometric design suitable for modern interiors.','image_url_17',0,6),(18,'Custom','Public','Floral Pattern','Floral Wallpaper 3','Vintage','Textured','Elegant floral pattern wallpaper for a classic look.','image_url_18',0,6);
/*!40000 ALTER TABLE `design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_collection`
--

DROP TABLE IF EXISTS `design_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `design_collection` (
  `Design_Collection_ID` int NOT NULL,
  `Design_ID` int DEFAULT NULL,
  `Collection_ID` int DEFAULT NULL,
  PRIMARY KEY (`Design_Collection_ID`),
  KEY `Design_ID` (`Design_ID`),
  KEY `Collection_ID` (`Collection_ID`),
  CONSTRAINT `design_collection_ibfk_1` FOREIGN KEY (`Design_ID`) REFERENCES `design` (`Design_ID`),
  CONSTRAINT `design_collection_ibfk_2` FOREIGN KEY (`Collection_ID`) REFERENCES `collection` (`Collection_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design_collection`
--

LOCK TABLES `design_collection` WRITE;
/*!40000 ALTER TABLE `design_collection` DISABLE KEYS */;
INSERT INTO `design_collection` VALUES (1,6,1),(2,7,2),(3,8,3),(4,9,4),(5,10,5),(6,16,1),(7,17,1),(8,18,1);
/*!40000 ALTER TABLE `design_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_tag`
--

DROP TABLE IF EXISTS `design_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `design_tag` (
  `design_id` int NOT NULL,
  `design_tag` varchar(255) NOT NULL,
  PRIMARY KEY (`design_id`,`design_tag`),
  CONSTRAINT `design_tag_ibfk_1` FOREIGN KEY (`design_id`) REFERENCES `design` (`Design_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design_tag`
--

LOCK TABLES `design_tag` WRITE;
/*!40000 ALTER TABLE `design_tag` DISABLE KEYS */;
INSERT INTO `design_tag` VALUES (6,'Abstract'),(7,'Minimalist'),(8,'Floral'),(9,'Contemporary'),(10,'Landscape');
/*!40000 ALTER TABLE `design_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designs_products`
--

DROP TABLE IF EXISTS `designs_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designs_products` (
  `Design_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  PRIMARY KEY (`Design_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `designs_products_ibfk_1` FOREIGN KEY (`Design_ID`) REFERENCES `design` (`Design_ID`),
  CONSTRAINT `designs_products_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designs_products`
--

LOCK TABLES `designs_products` WRITE;
/*!40000 ALTER TABLE `designs_products` DISABLE KEYS */;
INSERT INTO `designs_products` VALUES (6,1),(7,2),(8,3),(9,4),(10,5);
/*!40000 ALTER TABLE `designs_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enables`
--

DROP TABLE IF EXISTS `enables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enables` (
  `Enables_ID` int NOT NULL AUTO_INCREMENT,
  `Design_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  PRIMARY KEY (`Enables_ID`),
  KEY `Design_ID` (`Design_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `enables_ibfk_1` FOREIGN KEY (`Design_ID`) REFERENCES `design` (`Design_ID`),
  CONSTRAINT `enables_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enables`
--

LOCK TABLES `enables` WRITE;
/*!40000 ALTER TABLE `enables` DISABLE KEYS */;
/*!40000 ALTER TABLE `enables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `Favorite_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `Design_ID` int DEFAULT NULL,
  PRIMARY KEY (`Favorite_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Design_ID` (`Design_ID`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`Design_ID`) REFERENCES `design` (`Design_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,6,6),(2,7,7),(3,8,8),(4,9,9),(5,10,10);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `Feature_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int DEFAULT NULL,
  `Feature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Feature_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `features_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,1,'High-quality art print'),(2,2,'Silent quartz movement'),(3,3,'Soft and durable fabric'),(4,4,'Elegant vintage design'),(5,5,'Adjustable brightness levels');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finish`
--

DROP TABLE IF EXISTS `finish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finish` (
  `Finish_ID` int NOT NULL AUTO_INCREMENT,
  `Finish_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Finish_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finish`
--

LOCK TABLES `finish` WRITE;
/*!40000 ALTER TABLE `finish` DISABLE KEYS */;
/*!40000 ALTER TABLE `finish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `Follow_ID` int NOT NULL AUTO_INCREMENT,
  `Follower_ID` int DEFAULT NULL,
  `Followed_ID` int DEFAULT NULL,
  PRIMARY KEY (`Follow_ID`),
  KEY `Follower_ID` (`Follower_ID`),
  KEY `Followed_ID` (`Followed_ID`),
  CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`Follower_ID`) REFERENCES `user` (`User_ID`),
  CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`Followed_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `Item_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `Order_ID` (`Order_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,5,29.99),(2,2,2,1,39.99),(3,3,3,4,39.98),(4,4,4,2,49.99),(5,5,5,6,59.99),(6,1,2,2,19.99),(7,1,3,1,4.99),(8,1,4,2,49.99),(9,4,2,1,39.99),(10,4,1,2,29.99),(11,4,3,1,39.98),(12,5,4,2,49.99),(13,5,2,1,39.99),(14,5,1,1,29.99);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_items`
--

DROP TABLE IF EXISTS `ordered_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered_items` (
  `OrderItem_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Design_ID` int DEFAULT NULL,
  `Color_ID` int DEFAULT NULL,
  `Size_ID` int DEFAULT NULL,
  `Finish_ID` int DEFAULT NULL,
  `Style_ID` int DEFAULT NULL,
  `Print_Location_ID` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderItem_ID`),
  KEY `Order_ID` (`Order_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Design_ID` (`Design_ID`),
  KEY `Color_ID` (`Color_ID`),
  KEY `Size_ID` (`Size_ID`),
  KEY `Finish_ID` (`Finish_ID`),
  KEY `Style_ID` (`Style_ID`),
  KEY `Print_Location_ID` (`Print_Location_ID`),
  CONSTRAINT `ordered_items_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  CONSTRAINT `ordered_items_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`),
  CONSTRAINT `ordered_items_ibfk_3` FOREIGN KEY (`Design_ID`) REFERENCES `design` (`Design_ID`),
  CONSTRAINT `ordered_items_ibfk_4` FOREIGN KEY (`Color_ID`) REFERENCES `colors` (`Color_ID`),
  CONSTRAINT `ordered_items_ibfk_5` FOREIGN KEY (`Size_ID`) REFERENCES `size` (`Size_ID`),
  CONSTRAINT `ordered_items_ibfk_6` FOREIGN KEY (`Finish_ID`) REFERENCES `finish` (`Finish_ID`),
  CONSTRAINT `ordered_items_ibfk_7` FOREIGN KEY (`Style_ID`) REFERENCES `style` (`Style_ID`),
  CONSTRAINT `ordered_items_ibfk_8` FOREIGN KEY (`Print_Location_ID`) REFERENCES `print_location` (`Print_Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_items`
--

LOCK TABLES `ordered_items` WRITE;
/*!40000 ALTER TABLE `ordered_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordered_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `User_ID` int DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Total_Price` decimal(10,2) DEFAULT NULL,
  `Shipping_Type` varchar(255) DEFAULT NULL,
  `Payment_Information` varchar(255) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,6,'2024-04-28',29.99,'Standard','Credit Card','54321','USA','Los Angeles','Elm St'),(2,7,'2024-04-27',39.99,'Express','PayPal','12345','USA','New York','Maple Ave'),(3,8,'2024-04-26',19.99,'Standard','Credit Card','67890','USA','Chicago','Pine St'),(4,9,'2024-04-25',49.99,'Standard','Credit Card','98765','USA','San Francisco','Oak St'),(5,10,'2024-04-24',59.99,'Express','PayPal','24680','USA','Miami','Cedar Ln'),(6,6,'2024-07-20',59.99,'Standard','Credit card','12345','USA','New York','Broadway St'),(7,6,'2024-07-21',79.99,'Express','PayPal','12345','USA','New York','Broadway St'),(8,6,'2024-07-22',99.99,'Standard','Credit card','12345','USA','New York','Broadway St'),(9,7,'2024-07-20',49.99,'Standard','Credit card','67890','USA','Chicago','Main St'),(10,7,'2024-07-21',69.99,'Express','PayPal','67890','USA','Chicago','Main St'),(11,8,'2024-07-20',39.99,'Standard','Credit card','54321','USA','Los Angeles','Sunset Blvd'),(12,8,'2024-07-21',59.99,'Express','PayPal','54321','USA','Los Angeles','Sunset Blvd'),(13,8,'2024-07-22',79.99,'Standard','Credit card','54321','USA','Los Angeles','Sunset Blvd'),(14,8,'2024-07-23',99.99,'Express','Credit card','54321','USA','Los Angeles','Sunset Blvd'),(15,9,'2024-07-20',29.99,'Standard','Credit card','13579','USA','Houston','Main St'),(16,9,'2024-07-21',49.99,'Express','PayPal','13579','USA','Houston','Main St'),(17,10,'2024-07-20',19.99,'Standard','Credit card','24680','USA','Miami','Ocean Dr'),(18,10,'2024-07-21',39.99,'Express','PayPal','24680','USA','Miami','Ocean Dr'),(19,10,'2024-07-22',59.99,'Standard','Credit card','24680','USA','Miami','Ocean Dr');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Order_ID` int DEFAULT NULL,
  `Payment_Method` varchar(255) DEFAULT NULL,
  `Credit_Card_Number` varchar(16) DEFAULT NULL,
  `Expiration_Date` date DEFAULT NULL,
  `CVV` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'Credit Card','1234567890123456','2025-12-31','123'),(2,2,'Credit Card','4295724957495795','2024-11-03','321'),(3,3,'Credit Card','1736251947104716','2026-04-03','213');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `print_location`
--

DROP TABLE IF EXISTS `print_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `print_location` (
  `Print_Location_ID` int NOT NULL AUTO_INCREMENT,
  `Location_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Print_Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `print_location`
--

LOCK TABLES `print_location` WRITE;
/*!40000 ALTER TABLE `print_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `print_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colors`
--

DROP TABLE IF EXISTS `product_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_colors` (
  `Product_Color_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int DEFAULT NULL,
  `Color_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_Color_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Color_ID` (`Color_ID`),
  CONSTRAINT `product_colors_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`),
  CONSTRAINT `product_colors_ibfk_2` FOREIGN KEY (`Color_ID`) REFERENCES `colors` (`Color_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colors`
--

LOCK TABLES `product_colors` WRITE;
/*!40000 ALTER TABLE `product_colors` DISABLE KEYS */;
INSERT INTO `product_colors` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4),(5,4,1),(6,5,5),(7,1,1);
/*!40000 ALTER TABLE `product_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `Product_Size_ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int DEFAULT NULL,
  `Size_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_Size_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Size_ID` (`Size_ID`),
  CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`),
  CONSTRAINT `product_size_ibfk_2` FOREIGN KEY (`Size_ID`) REFERENCES `size` (`Size_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,3,1),(6,3,2);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_name` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Seller_name` varchar(255) DEFAULT NULL,
  `Type_name` varchar(255) DEFAULT NULL,
  `Rating` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Abstract Art Print',29.99,'ArtStore','Art Print','4'),(2,'Minimalist Wall Clock',39.99,'ModernHome','Home Decor','5'),(3,'Modern Throw Pillow',19.99,'HomeAccents','Home Decor','4'),(4,'Vintage Tea Set',49.99,'VintageCrafts','Kitchenware','5'),(5,'Contemporary Lamp',59.99,'LightingWorld','Lighting','4');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `Review_ID` int NOT NULL AUTO_INCREMENT,
  `Rating` enum('1','2','3','4','5') DEFAULT NULL,
  `Comment` text,
  `User_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Review_Date` date DEFAULT NULL,
  PRIMARY KEY (`Review_ID`),
  UNIQUE KEY `UC_User_Product` (`User_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product_type` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'4','Beautiful artwork, but slightly smaller than expected.',6,1,'2024-04-28'),(2,'5','Love the design and quality of the clock!',7,2,'2024-04-27'),(3,'4','Pillow is comfy and matches my decor perfectly.',8,3,'2024-04-26'),(4,'5','Tea set arrived intact and looks stunning.',9,4,'2024-04-25'),(5,'4','Lamp works great and adds a modern touch to my room.',10,5,'2024-04-24');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `Size_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Size_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'Small'),(2,'Medium'),(3,'Large'),(4,'Extra Large'),(5,'30x40'),(6,'60x50'),(7,'80x60');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_accounts`
--

DROP TABLE IF EXISTS `social_media_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_accounts` (
  `Account_ID` int NOT NULL,
  `User_ID` int DEFAULT NULL,
  `Platform` varchar(255) DEFAULT NULL,
  `Account_Link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Account_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `social_media_accounts_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_accounts`
--

LOCK TABLES `social_media_accounts` WRITE;
/*!40000 ALTER TABLE `social_media_accounts` DISABLE KEYS */;
INSERT INTO `social_media_accounts` VALUES (1,6,'Instagram','instagram.com/michael_a'),(2,7,'Facebook','facebook.com/jessica_w'),(3,8,'Twitter','twitter.com/ryan_m'),(4,9,'Pinterest','pinterest.com/emily_t'),(5,10,'LinkedIn','linkedin.com/daniel_d'),(7,6,'LinkedIn','linkedin.com/in/michaelj'),(8,6,'Pinterest','pinterest.com/michaelj_pins'),(9,6,'YouTube','youtube.com/user/michaelj_channel'),(10,7,'LinkedIn','linkedin.com/in/jennifersmith'),(11,7,'Pinterest','pinterest.com/jennifersmith_pins'),(12,7,'YouTube','youtube.com/user/jennifersmith_channel'),(13,8,'LinkedIn','linkedin.com/in/ryanprofile'),(14,8,'Pinterest','pinterest.com/ryan_pins'),(15,8,'YouTube','youtube.com/user/ryan_channel'),(16,9,'LinkedIn','linkedin.com/in/emilyprofile'),(17,9,'Pinterest','pinterest.com/emily_pins'),(18,9,'YouTube','youtube.com/user/emily_channel'),(19,10,'LinkedIn','linkedin.com/in/danielprofile'),(20,10,'Pinterest','pinterest.com/daniel_pins'),(21,10,'YouTube','youtube.com/user/daniel_channel'),(22,8,'Instagram','instagram.com/ryanprofile'),(23,9,'Instagram','instagram.com/emilyprofile'),(24,10,'Instagram','instagram.com/danielprofile');
/*!40000 ALTER TABLE `social_media_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `style` (
  `Style_ID` int NOT NULL AUTO_INCREMENT,
  `Style_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Style_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_ID` int NOT NULL,
  `f_Name` varchar(255) DEFAULT NULL,
  `l_Name` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `Achievements` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `copywrite` varchar(255) DEFAULT NULL,
  `biography` text,
  `user_name` varchar(255) DEFAULT NULL,
  `user_background_image` blob,
  `avatar` blob,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'Michael','Anderson','54321','Elm St','Los Angeles','USA','2024-04-27','Top Designer Award','michael@example.com','pass123','© 2024 Michael Anderson','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','michael_a',_binary 'bg_image.jpg',_binary 'avatar.jpg'),(7,'Jessica','Williams','12345','Maple Ave','New York','USA','2024-04-26','Bestseller on Amazon','jessica@example.com','pass456','© 2024 Jessica Williams','Nulla eu sapien vitae erat porta hendrerit.','jessica_w',_binary 'bg_image.jpg',_binary 'avatar.jpg'),(8,'Ryan','Martinez','67890','Pine St','Chicago','USA','2024-04-25','Featured Artist in Vogue','ryan@example.com','pass789','© 2024 Ryan Martinez','Phasellus id enim non ante efficitur suscipit.','ryan_m',_binary 'bg_image.jpg',_binary 'avatar.jpg'),(9,'Emily','Taylor','98765','Oak St','San Francisco','USA','2024-04-24','Winner of Photography Contest','emily@example.com','passabc','© 2024 Emily Taylor','Donec id odio eget nunc dictum commodo.','emily_t',_binary 'bg_image.jpg',_binary 'avatar.jpg'),(10,'Daniel','Davis','24680','Cedar Ln','Miami','USA','2024-04-23','Bestselling Author','daniel@example.com','passdef','© 2024 Daniel Davis','Vestibulum pretium felis et nisi fringilla, in ultrices risus lacinia.','daniel_d',_binary 'bg_image.jpg',_binary 'avatar.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 18:32:31
