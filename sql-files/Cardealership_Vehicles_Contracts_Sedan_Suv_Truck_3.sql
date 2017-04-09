# Host: localhost  (Version 5.7.17-log)
# Date: 2017-04-07 20:52:01
# Generator: MySQL-Front 6.0  (Build 1.116)


#
# Structure for table "contracts"
#

DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts` (
  `DESCRIPTION` int(11) NOT NULL AUTO_INCREMENT,
  `WARRANTY` text,
  `LEASE` int(11) DEFAULT NULL,
  `FINANCE` int(11) DEFAULT NULL,
  UNIQUE KEY `Discription` (`DESCRIPTION`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8;

#
# Data for table "contracts"
#

INSERT INTO `contracts` VALUES (10001,'10001',NULL,30000),(10002,'10002',NULL,15000),(10003,'10003',NULL,40000),(10004,'10004',NULL,17000),(10005,'10005',NULL,40000),(10006,'10006',NULL,50000),(10007,'10007',NULL,35000),(10008,'10008',NULL,30000),(10009,'10009',NULL,40000),(10010,'10010',NULL,35000);

#
# Structure for table "vehicles"
#

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `VIN` int(11) NOT NULL DEFAULT '0',
  `MAKE` text,
  `COLOUR` text,
  `YEAR` year(4) DEFAULT NULL,
  `MODEL` text,
  `DOOR NO.` int(1) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The eitity "Vehicles"';

#
# Data for table "vehicles"
#

INSERT INTO `vehicles` VALUES (10001,'TOYOTA','White',2016,'Camry CE\n',4),(10002,'TOYOTA','Black',2015,'Camry CE',4),(10003,'TOYOTA','Red',2015,'Camry CE',4),(10004,'TOYOTA','White',2016,'Camry CE',4),(10005,'TOYOTA','Red',2016,'Camry CE',2),(10006,'TOYOTA','White',2014,'Camry LE\n',2),(10007,'TOYOTA','White',2014,'Camry LE',4),(10008,'TOYOTA','White',2017,'Camry LE',4),(10009,'TOYOTA','Black',2016,'Camry CE',4),(10010,'TOYOTA','Black',2015,'Camry CE',4);

#
# Structure for table "truck"
#

DROP TABLE IF EXISTS `truck`;
CREATE TABLE `truck` (
  `TVIN` int(11) NOT NULL AUTO_INCREMENT,
  `TRUCKBEDSIZE` int(9) DEFAULT NULL,
  PRIMARY KEY (`TVIN`),
  CONSTRAINT `TVIN` FOREIGN KEY (`TVIN`) REFERENCES `vehicles` (`VIN`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8;

#
# Data for table "truck"
#

INSERT INTO `truck` VALUES (10002,5),(10004,6),(10006,5);

#
# Structure for table "suv"
#

DROP TABLE IF EXISTS `suv`;
CREATE TABLE `suv` (
  `VIN` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`VIN`),
  CONSTRAINT `SVIN` FOREIGN KEY (`VIN`) REFERENCES `vehicles` (`VIN`)
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8;

#
# Data for table "suv"
#

INSERT INTO `suv` VALUES (10001),(10003),(10005);

#
# Structure for table "sedan"
#

DROP TABLE IF EXISTS `sedan`;
CREATE TABLE `sedan` (
  `SEVIN` int(11) NOT NULL AUTO_INCREMENT,
  `HATCHBACK` text,
  PRIMARY KEY (`SEVIN`),
  CONSTRAINT `SEVIN` FOREIGN KEY (`SEVIN`) REFERENCES `vehicles` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "sedan"
#



