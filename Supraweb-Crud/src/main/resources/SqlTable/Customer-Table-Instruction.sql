# create users on  MySQL 8.0.4, the MySQL team changed the 


CREATE USER 'supraweb'@'localhost' IDENTIFIED BY 'supraweb';

GRANT ALL PRIVILEGES ON * . * TO 'supraweb'@'localhost';

#
# Starting with MySQL 8.0.4, the MySQL team changed the 
# default authentication plugin for MySQL server 
# from mysql_native_password to caching_sha2_password.
#
# The command below will make the appropriate updates for your user account.
#
# See the MySQL Reference Manual for details: 
# https://dev.mysql.com/doc/refman/8.0/en/caching-sha2-pluggable-authentication.html
#
ALTER USER 'supraweb'@'localhost' IDENTIFIED WITH mysql_native_password BY 'supraweb';




CREATE DATABASE  IF NOT EXISTS `suprawebcrud` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `suprawebcrud`;

--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


LOCK TABLES `customer` WRITE;


INSERT INTO `customer` VALUES 
	(1,'sebastian','esteban','sebastian.esteban266@gmail.com'),
	(2,'emiliano','esteban','emi@supraweb.com.ar'),
	(3,'pablo','Rao','pablo@supraweb.com.ar'),
	(4,'Mary','Public','mary@supraweb.com.ar'),
	(5,'Maxwell','Dixon','max@@supraweb.com.ar');


UNLOCK TABLES;

