DROP DATABASE IF EXISTS `belgium_locations`;
CREATE DATABASE `belgium_locations`;
USE `belgium_locations`;

CREATE TABLE `locations`(
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `img_url` VARCHAR(255),
  `adresse` VARCHAR(255),
  `long` Decimal(9, 6) NOT NULL,
  `lat` Decimal(8, 6) NOT NULL
);

CREATE TABLE `users` (
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin' NOT NULL UNIQUE,
  `password` VARCHAR(255) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin' NOT NULL
);

CREATE TABLE `comments` (
  `id` INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `message` TEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin' NOT NULL,
  `user` INT UNSIGNED NOT NULL,
  `location` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`user`) REFERENCES `users`(`id`),
  FOREIGN KEY (`location`) REFERENCES `locations`(`id`)
)