-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema videostore
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema videostore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videostore` DEFAULT CHARACTER SET utf8 ;
USE `videostore` ;

-- -----------------------------------------------------
-- Table `videostore`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videostore`.`customers` (
  `CustomersID` INT NOT NULL,
  `FirstName` VARCHAR(100) NULL DEFAULT NULL,
  `LastName` VARCHAR(100) NULL DEFAULT NULL,
  `BirthDate` DATE NULL DEFAULT NULL,
  `CustomersAddress` VARCHAR(70) NULL DEFAULT NULL,
  `CustomerPhone` VARCHAR(15) NULL DEFAULT NULL,
  `CustomerEmail` VARCHAR(70) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomersID`),
  UNIQUE INDEX `CustomerPhone_UNIQUE` (`CustomerPhone` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `videostore`.`videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videostore`.`videos` (
  `VideosID` INT NOT NULL,
  `Title` VARCHAR(75) NULL DEFAULT NULL,
  `Genre` VARCHAR(50) NULL DEFAULT NULL,
  `Director` VARCHAR(100) NULL DEFAULT NULL,
  `Length` INT NULL DEFAULT NULL,
  `Rating` VARCHAR(5) NULL DEFAULT NULL,
  `Year` INT NULL DEFAULT NULL,
  `NumberInStock` INT NULL DEFAULT NULL,
  PRIMARY KEY (`VideosID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `videostore`.`rentals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videostore`.`rentals` (
  `RentalsID` INT NOT NULL,
  `DateCheckedOut` DATE NULL DEFAULT NULL,
  `DateCheckedIn` DATE NULL DEFAULT NULL,
  `CustomerID` INT NOT NULL,
  `VideoID` INT NOT NULL,
  PRIMARY KEY (`RentalsID`, `CustomerID`, `VideoID`),
  INDEX `fk_VideoID_idx` (`VideoID` ASC) VISIBLE,
  INDEX `fk_CustomerID_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_CustomerID`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `videostore`.`customers` (`CustomersID`),
  CONSTRAINT `fk_VideoID`
    FOREIGN KEY (`VideoID`)
    REFERENCES `videostore`.`videos` (`VideosID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
