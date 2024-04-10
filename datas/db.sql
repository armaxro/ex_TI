DROP DATABASE IF EXISTS `belgium_locations`;
CREATE DATABASE `belgium_locations`;
USE `belgium_locations`;

CREATE TABLE `locations`(
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `img_url` VARCHAR(255),
    `adresse` VARCHAR(255),
    `long` Decimal(9, 6) NOT NULL,
    `lat` Decimal(8, 6) NOT NULL
);