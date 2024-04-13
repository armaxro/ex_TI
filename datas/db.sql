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

CREATE TABLE IF NOT EXISTS `users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin' NOT NULL UNIQUE,
  `password` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin' NOT NULL
);