-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academy_2
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `about` varchar(3000) NOT NULL,
  `yearStart` varchar(45) NOT NULL,
  `yearEnd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (3,'Beeline','ИТ-специалист','Тараз','Beeline, ТМ','Содержание парка ИТ техники и орг. техники в рабочем состоянии, инвентаризация ИТ и орг. техники, помощь сотрудникам компании, заказ нового оборудования, содержание склада техники, ремонтно-восстановительные работы СКС (структурированная-кабельная-система), содержание серверного оборудования, проведение тендеров на закуп ИТ и орг. техники, поиск подрядчиков, установка и наладка различного софта и ОС.','2005','2014'),(4,'Beeline','Старший инженер по планированию и оптимизации сети','Тараз','Beeline, ТМ','Организация работ по развитию и эксплуатации сети филиала в соответствии с принципами оптимального распределения работ и специализации сотрудников, в целях обеспечения оптимального выполнения задач, возложенных на Техническую службу. Осуществление руководства техническими специалистами службы, направленное на развитие сетей и эксплуатацию телекоммуникационного оборудования. Устранение в согласованные сроки причины вызвавшие аварийные ситуации повлекших за собой влияние на бизнес компании, в том числе по показателям качества сети, эксплуатации и правовые - нормативные. Участие в составлении перспективных планов развития сетей регионов и осуществление контроля над проектом разворачивания сетей филиала (выполнением Плана создания сетей Роллаут) в части строительства базовых станций, контроллеров, коммутаторов. Взаимодействие с организациями или государственными органами в сроки 5 рабочих дней по запросу по вопросу о покрытии и качеству сети. Организация работ по получению из территориального Управления по информатизации и связи разрешительных документов на радиоэлектронные средства и обеспечение своевременного направления их в Департамент по работе с государственными органами.','2014','2017'),(5,'Бектыш','Системный администратор','Бектыш','ООО \"Бектыш\"','Поддержка сайта компании, содержание парка ИТ техники и орг. техники в рабочем состоянии, внедрение бизнес-процессов, доработка 1С решений, помощь сотрудникам компании, содержание серверного оборудования.','2017','2018'),(6,'Гранд-Строй','Начальник IT-отдела','Челябинск','ООО \"Гранд-Строй\"','Автоматизация производства, автоматизация торговых точек, руководство отелом из 4 человек, планирование IT-архитектуры организации, внедрение 1С-решений, разработка WEB-решений. Разработка и поддержка (включая доработку) 3-х сайтов для дочерних организаций.','2018',NULL);
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-14 15:48:08
