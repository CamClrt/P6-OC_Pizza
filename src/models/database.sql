DROP DATABASE IF EXISTS OC_Pizza;

CREATE DATABASE OC_Pizza CHARACTER SET 'utf8';

USE OC_Pizza;

CREATE TABLE `status` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `product` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `vat_100_id` SMALLINT UNSIGNED NOT NULL,
  `category_id` BIGINT UNSIGNED  NOT NULL,
  `name` VARCHAR(50)  NOT NULL UNIQUE,
  `price_excluding_tax` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK` (`vat_100_id`, `category_id`)
) ENGINE=InnoDB;

CREATE TABLE `recipe` (
  `ingredient_id` BIGINT UNSIGNED NOT NULL,
  `product_id` BIGINT UNSIGNED NOT NULL,
  `quantity` DECIMAL(4,2) NOT NULL,
  KEY `PK, FK` (`ingredient_id`, `product_id`)
) ENGINE=InnoDB;

CREATE TABLE `payment_method` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `purchase_order` (
  `id` BIGINT UNSIGNED  NOT NULL AUTO_INCREMENT,
  `status_id` BIGINT UNSIGNED  NOT NULL,
  `payment_method_id` BIGINT UNSIGNED  NOT NULL,
  `restaurant_id` BIGINT UNSIGNED  NOT NULL,
  `customer_id` BIGINT UNSIGNED  NOT NULL,
  `address_id` BIGINT UNSIGNED  NOT NULL,
  `order_number` BIGINT UNSIGNED  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK` (`status_id`, `payment_method_id`, `restaurant_id`, `customer_id`, `address_id`)
) ENGINE=InnoDB;

CREATE TABLE `address` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_id` BIGINT UNSIGNED NOT NULL,
  `additional_info` VARCHAR(50),
  `address1` VARCHAR(100),
  `address2` VARCHAR(100),
  PRIMARY KEY (`id`),
  KEY `FK` (`city_id`),
  CONSTRAINT unique_address UNIQUE(address1, address2)
) ENGINE=InnoDB;

CREATE TABLE `ingredient` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `city` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) UNIQUE,
  `zip_code` VARCHAR(5),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `employee` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_job` BIGINT UNSIGNED NOT NULL,
  `id_restaurant` BIGINT UNSIGNED NOT NULL,
  `first_name` VARCHAR(30),
  `last_name` VARCHAR(30),
  `phone_number` VARCHAR(10),
  `email` VARCHAR(100) UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK` (`id_job`, `id_restaurant`)
) ENGINE=InnoDB;

CREATE TABLE `stock` (
  `restaurant_id` BIGINT UNSIGNED NOT NULL,
  `ingredient_id` BIGINT UNSIGNED NOT NULL,
  `quantity` SMALLINT UNSIGNED NOT NULL,
  KEY `PK, FK` (`restaurant_id`, `ingredient_id`)
) ENGINE=InnoDB;

CREATE TABLE `user_order` (
  `user_email` BIGINT UNSIGNED NOT NULL,
  `order_id` BIGINT UNSIGNED NOT NULL,
  KEY `PK, FK` (`user_email`, `order_id`)
) ENGINE=InnoDB;

CREATE TABLE `order_product` (
  `order_id` BIGINT UNSIGNED NOT NULL,
  `product_id` BIGINT UNSIGNED NOT NULL,
  KEY `FK, PK` (`order_id`, `product_id`)
) ENGINE=InnoDB;

CREATE TABLE `category_product` (
  `product_id` BIGINT UNSIGNED NOT NULL,
  `category_id` BIGINT UNSIGNED NOT NULL,
  KEY `PK, FK` (`product_id`, `category_id`)
) ENGINE=InnoDB;

CREATE TABLE `job` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `customer` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_address` BIGINT UNSIGNED NOT NULL,
  `first_name` VARCHAR(30),
  `last_name` VARCHAR(30),
  `phone_number` VARCHAR(20),
  `birthdate` DATETIME,
  `email` VARCHAR(100) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK` (`id_address`)
) ENGINE=InnoDB;

CREATE TABLE `restaurant` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_address` BIGINT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  `phone_number` VARCHAR(20),
  PRIMARY KEY (`id`),
  KEY `FK` (`id_address`)
) ENGINE=InnoDB;

CREATE TABLE `category` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `restaurant_customer` (
  `restaurant_id` BIGINT UNSIGNED NOT NULL,
  `customer_id` BIGINT UNSIGNED  NOT NULL UNIQUE,
  KEY `PK, FK` (`restaurant_id`, `customer_id`)
) ENGINE=InnoDB;

CREATE TABLE `vat` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `vat_100` DECIMAL(4,2) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `order_status` (
  `status_id` BIGINT UNSIGNED  NOT NULL,
  `purchase_order_id` BIGINT UNSIGNED  NOT NULL,
  `date` DATETIME,
  KEY `FK, PK` (`status_id`, `purchase_order_id`)
) ENGINE=InnoDB;