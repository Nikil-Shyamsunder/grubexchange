DROP DATABASE IF EXISTS grubexchangedb;
CREATE DATABASE grubexchangedb;

CREATE TABLE `grubexchangedb`.`user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `peanuts_allergy` BOOL DEFAULT NULL,
  `eggs_allergy` BOOL DEFAULT NULL,
  `cowsmilk_allergy` BOOL DEFAULT NULL,
  `treenuts_allergy` BOOL DEFAULT NULL,
  `shellfish_allergy` BOOL DEFAULT NULL,
  `wheat_allergy` BOOL DEFAULT NULL,
  `soy_allergy` BOOL DEFAULT NULL,
  `terms_and_conditions` BOOL DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
  
CREATE TABLE `grubexchangedb`.`grub` (
  `idgrub` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `contains_peanuts` BOOL DEFAULT NULL,
  `contains_eggs` BOOL DEFAULT NULL,
  `contains_cowsmilk` BOOL DEFAULT NULL,
  `contains_treenuts` BOOL DEFAULT NULL,
  `contains_shellfish` BOOL DEFAULT NULL,
  `contains_wheat` BOOL DEFAULT NULL,
  `contains_soy` BOOL DEFAULT NULL,
  `status` varchar(250) NOT NULL,
  PRIMARY KEY (`idgrub`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4; 

CREATE TABLE `grubexchangedb`.`offer` (
  `idoffer` int NOT NULL AUTO_INCREMENT,
  `offering_iduser` int NOT NULL,
  `recieving_iduser` int NOT NULL,
  `offering_idgrub` int NOT NULL,
  `recieving_idgrub` int NOT NULL,
  PRIMARY KEY (`idoffer`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4; 
	
