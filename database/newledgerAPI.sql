-- MySQL Script generated by MySQL Workbench
-- Tue Jul  9 16:04:32 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema newledgerapi
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema newledgerapi
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `newledgerapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `newledgerapi` ;

-- -----------------------------------------------------
-- Table `newledgerapi`.`entries`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `newledgerapi`.`entries` ;

CREATE TABLE IF NOT EXISTS `newledgerapi`.`entries` (
  `entry_id` INT NOT NULL AUTO_INCREMENT,
  `datetime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `description` TEXT NULL DEFAULT NOT NULL,
  `vendor` VARCHAR(255) NULL DEFAULT NOT NULL,
  `amount` VARCHAR(255) NULL DEFAULT NOT NULL,
  PRIMARY KEY (`entry_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `newledgerapi`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `newledgerapi`.`users` ;

CREATE TABLE IF NOT EXISTS `newledgerapi`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `hashed_password` VARCHAR(255) NOT NULL,
  `role` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `newledgerapi`.`profiles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `newledgerapi`.`profiles` ;

CREATE TABLE IF NOT EXISTS `newledgerapi`.`profiles` (
  `user_id` INT NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  `address` VARCHAR(200) NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `state` VARCHAR(50) NOT NULL,
  `zip` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `newledgerapi`.`users` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
