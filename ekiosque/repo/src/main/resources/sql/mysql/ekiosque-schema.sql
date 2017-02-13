use ekiosque;
--
-- Table structure for table `tbo_group`
--

DROP TABLE IF EXISTS `ekiosque`.`tbo_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekiosque`.`tbo_group` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbo_permission`
--

DROP TABLE IF EXISTS `ekiosque`.`tbo_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekiosque`.`tbo_permission` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbo_role`
--

DROP TABLE IF EXISTS `ekiosque`.`tbo_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekiosque`.`tbo_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbo_group_role_rel`
--

DROP TABLE IF EXISTS `ekiosque`.`tbo_group_role_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekiosque`.`tbo_group_role_rel` (
  `GROUP_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`ROLE_ID`),
  KEY `FK9583FB6E6BDBB619` (`ROLE_ID`),
  KEY `FK9583FB6E3D0ED11B` (`GROUP_ID`),
  CONSTRAINT `FK9583FB6E3D0ED11B` FOREIGN KEY (`GROUP_ID`) REFERENCES `tbo_group` (`ID`),
  CONSTRAINT `FK9583FB6E6BDBB619` FOREIGN KEY (`ROLE_ID`) REFERENCES `tbo_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbo_role_permission_rel`
--

DROP TABLE IF EXISTS `ekiosque`.`tbo_role_permission_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekiosque`.`tbo_role_permission_rel` (
  `ROLE_ID` bigint(20) NOT NULL,
  `PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`PERMISSION_ID`),
  KEY `FKA8268F546BDBB619` (`ROLE_ID`),
  KEY `FKA8268F54734B3839` (`PERMISSION_ID`),
  CONSTRAINT `FKA8268F54734B3839` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `tbo_permission` (`ID`),
  CONSTRAINT `FKA8268F546BDBB619` FOREIGN KEY (`ROLE_ID`) REFERENCES `tbo_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
