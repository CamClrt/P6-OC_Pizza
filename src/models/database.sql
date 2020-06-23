DROP DATABASE IF EXISTS OC_Pizza;

CREATE DATABASE OC_Pizza CHARACTER SET 'utf8';

USE OC_Pizza;

CREATE TABLE `status` (
  `status_id` BIGINT UNSIGNED  NOT NULL AUTO_INCREMENT,
  `label` VARCHAR(50) UNIQUE NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB;

CREATE TABLE `establishment_user` (
  `establishment_id` BIGINT UNSIGNED NOT NULL,
  `user_email` VARCHAR(100) NOT NULL,
  KEY `PK, FK` (`establishment_id`, `user_email`)
) ENGINE=InnoDB;

CREATE TABLE `product` (
  `product_id` BIGINT UNSIGNED  NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) UNIQUE NOT NULL,
  `description` VARCHAR(100),
  `price_excluding_tax` DECIMAL(2,2)  NOT NULL,
  `vat_100` DECIMAL(2,2)  NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB;

CREATE TABLE `account_type` (
  `account_type_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`account_type_id`)
) ENGINE=InnoDB;

CREATE TABLE `user_account_type` (
  `user_email` VARCHAR(100)  NOT NULL,
  `account_type_id` BIGINT UNSIGNED  NOT NULL,
  KEY `PK, FK` (`user_email`, `account_type_id`)
) ENGINE=InnoDB;

CREATE TABLE `recipe` (
  `ingredient_id` BIGINT UNSIGNED  NOT NULL,
  `product_id` BIGINT UNSIGNED  NOT NULL,
  `instruction` MEDIUMTEXT	 NOT NULL,
  KEY `PK, FK` (`ingredient_id`, `product_id`)
) ENGINE=InnoDB;

CREATE TABLE `access` (
  `access_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50),
  `description` TEXT,
  PRIMARY KEY (`access_id`)
) ENGINE=InnoDB;

CREATE TABLE `account_type_access` (
  `access_id` BIGINT UNSIGNED NOT NULL,
  `account_type_id` BIGINT UNSIGNED NOT NULL,
  KEY `PK, FK` (`access_id`, `account_type_id`)
) ENGINE=InnoDB;

CREATE TABLE `payment_method` (
  `payment_method_id` BIGINT UNSIGNED   NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) UNIQUE NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB;

CREATE TABLE `unit` (
  `unit_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(15) UNIQUE NOT NULL,
  `abbreviation` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB;

CREATE TABLE `order` (
  `order_number` BIGINT UNSIGNED  NOT NULL AUTO_INCREMENT,
  `status_id` BIGINT UNSIGNED  NOT NULL,
  `payment_method_id` BIGINT UNSIGNED  NOT NULL,
  `date` DATETIME  NOT NULL,
  PRIMARY KEY (`order_number`),
  KEY `FK` (`status_id`, `payment_method_id`, `date`)
) ENGINE=InnoDB;

CREATE TABLE `address` (
  `address_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `establishment_id` BIGINT UNSIGNED NOT NULL,
  `city_id` BIGINT UNSIGNED NOT NULL,
  `contact_details_id` BIGINT UNSIGNED NOT NULL,
  `digicode` VARCHAR(10),
  `address1` VARCHAR(100),
  `address2` VARCHAR(100),
  PRIMARY KEY (`address_id`),
  KEY `FK` (`establishment_id`, `city_id`, `contact_details_id`)
) ENGINE=InnoDB;

CREATE TABLE `ingredient` (
  `ingredient_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit_id` TINYINT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(100),
  `unit_quantity` DECIMAL(2,2) NOT NULL,
  PRIMARY KEY (`ingredient_id`),
  KEY `FK` (`unit_id`)
) ENGINE=InnoDB;

CREATE TABLE `city` (
  `city_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50),
  `zip_code` VARCHAR(5),
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB;

CREATE TABLE `stock` (
  `establishment_id` BIGINT UNSIGNED NOT NULL,
  `ingredient_id` BIGINT UNSIGNED NOT NULL,
  `unit_id` TINYINT UNSIGNED NOT NULL,
  `quantity` DECIMAL(3,2) NOT NULL,
  `security_reserve` DECIMAL(3,2) NOT NULL,
  KEY `PK, FK` (`establishment_id`, `ingredient_id`, `unit_id`)
) ENGINE=InnoDB;

CREATE TABLE `user_order` (
  `user_email` BIGINT UNSIGNED   NOT NULL,
  `order_number` BIGINT UNSIGNED   NOT NULL,
  KEY `PK, FK` (`user_email`, `order_number`)
) ENGINE=InnoDB;

CREATE TABLE `order_product` (
  `order_number` BIGINT UNSIGNED  NOT NULL,
  `product_id` BIGINT UNSIGNED  NOT NULL,
  KEY `FK, PK` (`order_number`, `product_id`)
) ENGINE=InnoDB;

CREATE TABLE `category_product` (
  `product_id` BIGINT UNSIGNED  NOT NULL,
  `category_id` BIGINT UNSIGNED  NOT NULL,
  KEY `PK, FK` (`product_id`, `category_id`)
) ENGINE=InnoDB;

CREATE TABLE `user` (
  `email` VARCHAR(100)  NOT NULL,
  `username` VARCHAR(50) UNIQUE NOT NULL,
  `password` BLOB  NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB;

CREATE TABLE `contact_details` (
  `contact_details_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_email` VARCHAR(100) NOT NULL,
  `first_name` VARCHAR(30),
  `last_name` VARCHAR(30),
  `phone_number` VARCHAR(10),
  `birthdate` DATETIME,
  PRIMARY KEY (`contact_details_id`),
  KEY `FK` (`user_email`)
) ENGINE=InnoDB;

CREATE TABLE `establishment` (
  `establishment_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) UNIQUE NOT NULL,
  PRIMARY KEY (`establishment_id`)
) ENGINE=InnoDB;

CREATE TABLE `category` (
  `category_id` BIGINT UNSIGNED  NOT NULL AUTO_INCREMENT,
  `parent_category_id` BIGINT UNSIGNED UNIQUE NOT NULL,
  `name` VARCHAR(50),
  PRIMARY KEY (`category_id`),
  KEY `FK` (`parent_category_id`)
) ENGINE=InnoDB;