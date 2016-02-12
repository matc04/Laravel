-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_01_26_160228_create_table_usuarios',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snombre` text COLLATE utf8_unicode_ci NOT NULL,
  `sapellido` text COLLATE utf8_unicode_ci NOT NULL,
  `scontrasena` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `scorreo` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `bactivo` tinyint(1) NOT NULL DEFAULT '1',
  `badministra` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `scorreo` (`scorreo`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Brittany','Haag','$2y$10$y.gHabQUsTwIbckRUSY0EOOkwDWPE9cwyRAkbRFV5V0Pt6EoIbj6e','Emanuel63@yahoo.com',1,0,'2016-01-28 13:23:24','0000-00-00 00:00:00'),(2,'Marlina XXX','Padberg','$2y$10$e5UMrJN4MfWmhKP2/Ods9ujtOc7Rmi/uMOxvzGBFPtBYPxlt.f8W.','Wiza.Deondre@hotmail.com',1,0,'2016-02-04 16:52:03','2016-02-04 21:22:03'),(3,'Jabari','Turner','$2y$10$OsdpyCxEFZt8CaLeZwznyOpFLTLBVJeMPgFUKyvqtk2xYFMAmtszm','Marquardt.Marilou@gmail.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(4,'Chad','Simonis','$2y$10$sSS4J065vQSfzRG4fHsq9u9X.tPM6huFU9x3qjxWIxEb9mTs.YroC','Zechariah.McGlynn@Wehner.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(5,'Dannie','Koepp','$2y$10$rqompPaH/vqNMXGtYB1XoOkm4W.F8ZO44gWuzuxmhTfp3H9aia.Fm','Eriberto37@gmail.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(6,'Heaven','Bogisich','$2y$10$68LA7icR3DYKuyz4WGViA.D9L/jtsYamNkaJanTS0XQMqcZvYki3a','Veronica81@hotmail.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(7,'Gardner','Dach','$2y$10$FoGDyUjTCmE0tA7tw43nM.aNbh3AIOuBmBfk180M9B1.vMpl7qCkS','zBednar@Stokes.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(8,'Dakota','Morar','$2y$10$uc1aYW1LUDGQRh3rtJyt2uW5tvU5TRzQPVo7et7dDwzAL2DPXC9z6','Pagac.Mack@Kohler.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(9,'Declan','Dicki','$2y$10$IovXfqPD7irc4XYt4yjmruxevMsvYNd7Sa1aW2sJI0pLuX60bKAue','uJacobi@hotmail.com',1,0,'2016-01-28 13:23:25','0000-00-00 00:00:00'),(10,'Elmira XXXXX','Morissette','$2y$10$3VdghR6/Siun/BUxe0qUke/q6aOi9YgaHZSvfvNxHk/liPqkY1mU.','Delia.Ritchie@McCullough.net',1,0,'2016-02-03 18:56:32','2016-02-03 23:26:32'),(11,'Augustine','Kuhic','$2y$10$40qWq5d3QxtL5pBM.zNOVeLkUioB//ozY9TswctRuSDtWo5BgpQ06','hHahn@Daugherty.com',1,0,'2016-01-28 13:23:50','0000-00-00 00:00:00'),(12,'Orrin','Kozey','$2y$10$VcImgvXTBHUyU8SxKKCazeJO1QhEu8C2bZ1SxwmfLZNwrXE5xGpty','Kyle.Gutmann@Koelpin.biz',1,0,'2016-01-28 13:23:50','0000-00-00 00:00:00'),(13,'Esther','O\'Keefe','$2y$10$aLphm.J4g90ykY7EAoLksOmq6Ym.vGhOjwXk7xSaLHBJBhVmAT8dO','Hailie.Kris@hotmail.com',1,0,'2016-01-28 13:23:50','0000-00-00 00:00:00'),(14,'Conor','Dicki','$2y$10$rDjFk4RgxT5K0.l55cnXSOtEMAFjB7UFoLziXrg.r466yb5rPAH/S','gMacejkovic@Schowalter.org',1,0,'2016-01-28 13:23:50','0000-00-00 00:00:00'),(15,'Alvera','Gleason','$2y$10$0s9qR68eZth9zOh7hyFKueNK6b0Nm72cdfwkWqwlsMhW7FQyI92t2','Dejah.Ziemann@Kreiger.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(16,'Daphne','Bogan','$2y$10$faPqtn3.Ka.yF0oOIiLDV.PeqnSXbGJDCK3cWtRhgevU.BVb4OCeC','Johnston.Xzavier@gmail.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(17,'Peggie','Yost','$2y$10$CX3N2fevhcrhHzw8oFhUVOAz.82TGlSoLyPlcZ3YWBU46zFiYr5mC','Leonel81@Zboncak.info',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(18,'Diana','Grady','$2y$10$.WtcyCaNl45zFguQVrXjCeShbJHLhfsP1B6M2WbPGuv7dXdfI3asu','Conn.Everardo@Rodriguez.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(19,'Dawson','Leuschke','$2y$10$iHsyPhV7NIfGgBOTMy1/AupsgI3YBOwyNBPJI/sneMNOTTfLX.H4K','xLakin@hotmail.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(20,'Wayne','Hermiston','$2y$10$mduBo08itjhN5KEXb5LTIeR9P4CotbyONicnmL8XqqmqGFyxtE8wS','Pouros.Rowena@Howell.biz',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(21,'Albin','Rodriguez','$2y$10$vbxZdrtw3nSi6scnkaKLheIKwWyZBZ3zZ/Kcu.KxVJmU/II0OF5BO','Schroeder.Dan@gmail.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(22,'Valentina','Sporer','$2y$10$YKCAkI.bsmoEepK0p3ZiCOq.dYVBMlfucQwWW3FSg9Qd/n8V.Fq7O','Hauck.Alicia@Parisian.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(23,'Alta','Abshire','$2y$10$AlqMtL/wdRjUjHsdQPvqVu8yEq0zQbn5FSzp1XP.OuQyJL9RYlKTe','iEffertz@gmail.com',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(24,'Isidro','Little','$2y$10$Xm2NN7YAYincTLkMmG2JLetvRHlZsvyr0RgzzD3mIHJavy.q1xJ26','Deja71@Sauer.net',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(25,'Kirstin','Wisozk','$2y$10$HXSMS84VyNbxPSJLvxSbQec3.op1JdVdoh5z0SxQqb484Tk9V6FpC','nCummings@Bruen.biz',1,0,'2016-01-28 13:23:51','0000-00-00 00:00:00'),(26,'Gladys','Anderson','$2y$10$wDR2FCdKpPwFyJL22oXbk.4iyI4YzRPFBCcERcdVzyZjOsA2hE5BO','uSchmeler@Runolfsson.com',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(27,'Kailyn','Spencer','$2y$10$I6BwzJsC9iKmlnagUS7oh.wv/Dex2koxf7tEoZL107iNFVtpXLp9G','Zella.Tillman@gmail.com',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(28,'Dwight','Murazik','$2y$10$JS3sMf/MsfUWQIch50vNs.8Vzq/hnb9bR3yUy5oJEZEMBxrHANSTu','Hand.Aisha@Gleichner.com',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(29,'Leola','Adams','$2y$10$VKShAhl/DV4xY.gCZvNR/O0YLQa3XlkuzVB4nMpNBlKilZfsdfEJa','aSchneider@Bogan.com',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(30,'Isaac','Mills','$2y$10$k.JeCjssfG9jBuk.azh0xujJLMhTuA0AweJrKwSB8LgQITkszPp4m','Ernesto.Willms@Rogahn.biz',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(31,'Keven','Murphy','$2y$10$ajko6nQmBKQWYMcmfsSMee2YPiK1EWPgib4Dd89tZZq138OsZb2LK','bHeaney@yahoo.com',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(32,'Eddie','Schmidt','$2y$10$r4urdoWvZNeDwJ2aSUKoSuyuAC/at.EMAQgYW5vMXUH8zg0cjoN7m','Roel12@Ritchie.net',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(33,'Nyasia','Hackett','$2y$10$hh43AlWunFiB5sbxYzzvs.XHqP2MOplJouE7.5K.YgVguPD2Uzek6','Orn.Maximillia@Cormier.org',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(34,'Anna','Gorczany','$2y$10$.e7k9fgIjTUgSzKY/rmvT.FhzgwTLGafmQLGQASPLGNnRJMdzCf7K','Adella.Dickens@Spencer.org',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(35,'Billy','Grady','$2y$10$YxfZZlzU/RXT3UmrzL18M.ScMs4RbM4o5m/MJ9ydPEO3AQlh0xhmS','uParker@hotmail.com',1,0,'2016-01-28 13:23:52','0000-00-00 00:00:00'),(36,'Elaina','Lubowitz','$2y$10$DAvcBD7qhh2PIvo37/s00eUwJoszYSsEN9wX1VaIYccvSfLYXHTqK','Phyllis.Terry@gmail.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(37,'Ramona','Lind','$2y$10$Xft1Uc6tuGNLezgQz8UdleT/dS97AoKmq5JYADdOYP9K7D8exgZSq','Nickolas.Ryan@Feeney.net',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(38,'Bernita','Quitzon','$2y$10$zIT92eFaqx18LY1/MQUhvuN3ruO4GXdDcj.Hz4yWctj2MxZWHtwLi','Evangeline.Langosh@yahoo.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(39,'Emelia','Kemmer','$2y$10$a6kA64ru2NsZr39q3n3zm.dEZ3eb6quOUmilCQQqBvq4JbABCkO1O','Wisozk.Crawford@Bruen.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(40,'Rashawn','Gerhold','$2y$10$VOGY2LbvYW4K.nWm19s0OefIW.GOPd31.GaE0F0xXQ/tVph20lrQy','mEmmerich@hotmail.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(41,'Guiseppe','Okuneva','$2y$10$y.BtPyKz58r5duglcFk8k.CF7RkK5hRZZuMOwP.YwGFdU9HAu6gnS','Maryjane.Ondricka@hotmail.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(42,'Nathaniel','Heathcote','$2y$10$fiSH6mQOmlLK3izxU/KP6.5V5xXg5eADemCb2HMNqNkfCdyEKxKB.','Tamara27@gmail.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(43,'Adolphus','Harvey','$2y$10$4b.vTyj5nkfngU/rbBTHjuY/u7XJ/MBO6ol3a77w/doOeXxqTbMw2','Rau.Nat@Muller.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(44,'Keshaun','Hilll','$2y$10$wDXPYNKI2NQmN/vjW5LjFO4y9fwk.kIEgD5olvyEG3GtB2808Mkdu','nProsacco@Greenholt.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(45,'Kendra','Kohler','$2y$10$m/BGEe1NYkVlI5U3EQiStOaylYP7Q3JiDd7bDaP49e8Z5L9JC4vna','Antwon.Leannon@Collins.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(46,'Mason','Kerluke','$2y$10$INm.SEdiTDq9W4T.BUMyQO1KApkuryIznw0qa042oeGlUoi2Z6KMu','Evalyn86@Kshlerin.com',1,0,'2016-01-28 13:23:53','0000-00-00 00:00:00'),(47,'Virgie','Fahey','$2y$10$rKJMAdx2Ezrfhwkg7sAj3.Hww5.rvEQ1R/vg/czP60HU.ysQdjKEm','Cole.Julius@Schaden.net',1,0,'2016-01-28 13:23:54','0000-00-00 00:00:00'),(48,'Verona','Pfannerstill','$2y$10$18V8F9lqnk9yszcM.uHUyuKduf2RCgKn3hBtp.4wcaKPFaUAjokZS','Tremblay.Osborne@Pfannerstill.com',1,0,'2016-01-28 13:23:54','0000-00-00 00:00:00'),(49,'Eladio','Lueilwitz','$2y$10$AGjIpqH3bDvWVEmuvjIfKOTn9mapC6uuTzmczYtPtRgD.5Tuk97sm','Aurelie.Hand@Bruen.com',1,0,'2016-01-28 13:23:54','0000-00-00 00:00:00'),(50,'Raymundo','Murphy','$2y$10$3Ly/ToiTidmchEKmzDXDWuLbpbE.ldFeBQaqgL.rhYgnG2/hqbLQ6','Mariana.Halvorson@yahoo.com',1,0,'2016-01-28 13:23:54','0000-00-00 00:00:00'),(53,'Manuel XXX','Telleria XXX','$2y$10$tEQgq1WzXOp3ghyyvE/evOZIaqdQzlyg77T/QcKgGXgjce4oBRJlC','xxxxx@io.com',1,0,'2016-02-02 19:21:19','2016-02-02 19:21:19');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-12 10:50:01
