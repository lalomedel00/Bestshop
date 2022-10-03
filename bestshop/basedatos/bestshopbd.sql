-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda_tusolutionweb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Soriana'),(2,'Bodega Aurrera'),(3,'Alsuper'),(4,'La Esmeralda');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  `total_amt` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Super'),(2,'Carnes'),(3,'Lacteos'),(4,'Limpieza'),(5,'Cuidado Personal');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_cat` int NOT NULL,
  `product_brand` int NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'pasta pluma',5,'Pasta Precíssimo Pluma 180 gr pieza','pastapluma.png','pasta pluma sopa'),(2,1,4,'pasta pluma',5,'pasta La Moderna 200 gr.','plumamoderna.jpeg','pasta pluma sopa'),(3,1,3,'pasta pluma',7,'pasta Hill Country Fare 200 gr.','plumahcf.png','pasta pluma sopa'),(4,1,2,'pasta pluma',4,'pasta italpasta 200 gr.','plumait.jpg','pasta pluma sopa'),(5,1,1,'Huevo',88,'Huevo Blanco San Juan 30 Piezas','huvosj.jpg','huevo'),(6,1,4,'huevo',86,'Bachoco Huevo Blanco cartón 30 piezas','huevob.jpg','huevo'),(7,1,3,'huevo',70,'Huevo Blanco Gena 30 piezas','huevog.jpg','huevo'),(8,1,2,'huevo',83,'Huevo Blanco Alvisa 30 piezas','huevoa.jpg','huevo'),(9,2,1,'Costilla',136,'Costilla de Cerdo Doble Carne Kg','costillac.jpg','carne puerco'),(10,2,2,'Carne de puerco',109,'Carne de cerdo para guisar por kilo','carnep.jpg','carne puerco'),(11,2,3,'Molida de puerco',116,'Carne molida de cerdo por kilo','molida.png','carne puerco molida'),(12,2,4,'Carne de puerco',118,'Carne de Cerdo por kilo.','carnec.jpg','carne puerco'),(13,3,3,'Leche en polvo',17,'Nutri Producto lácteo Combinado Entera Polvo','nutri.jpg','leche lacteos'),(14,3,2,'Caja de NutriLeche',239,'Nutri Producto Lácteo, 1 litro. Paquete de 12','cajal.jpg','leche lacteos'),(15,4,1,'Pinol 9L.',210,'Pinol Limpiador Multiusos 9 Lt verde, Pack of 1','pinol.jpg','limpieza'),(16,4,4,'Fabuloso 6.2L.',146,'Fabuloso Frescura Activa, Limpiador Multiusos Líquido, Fresca Lavanda 6.2L','fabuloso.jpg','limpieza'),(17,5,3,'Shampoo',50,'Head & Shoulders – Shampoo para caspa Limpieza Renovadora, Control Caspa, 375 ml ','shampooh.jpg','higiene cuidado personal'),(18,5,1,'shampoo',68,'Pantene - Shampoo Hidratación Extrema, con Aceite de Argan y Glicerina, Control del Frizz, Shampoo sin sal, 500 ml ','shampoop.png','higiene cuidado personal');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-01  2:04:43
