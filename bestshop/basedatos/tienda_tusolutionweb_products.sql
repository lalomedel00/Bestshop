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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-01  2:02:32
