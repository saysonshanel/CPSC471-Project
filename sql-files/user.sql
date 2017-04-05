# Host: localhost  (Version 5.7.17-log)
# Date: 2017-04-04 17:51:26
# Generator: MySQL-Front 6.0  (Build 1.48)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "names"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "names"
#

INSERT INTO `user` VALUES (1,'administration', 'adminpass');
INSERT INTO `user` VALUES (2, 'customer', 'customerpass');
INSERT INTO `user` VALUES (3, 'employee', 'emppass');
