-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`MainForm`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`MainForm` ;

CREATE TABLE IF NOT EXISTS `mydb`.`MainForm` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `value`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Word`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Word` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Word` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `value`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Tag` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `name`, `description`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Association`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Association` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Association` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `MainForm_id` INT NOT NULL,
  `Word_id` INT NOT NULL,
  `Tag_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Association_MainForm_idx` (`MainForm_id` ASC) VISIBLE,
  INDEX `fk_Association_Word_idx` (`Word_id` ASC) VISIBLE,
  INDEX `fk_Association_Tag_idx` (`Tag_id` ASC) VISIBLE,
  CONSTRAINT `fk_Association_MainForm`
    FOREIGN KEY (`MainForm_id`)
    REFERENCES `mydb`.`MainForm` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Association_Word`
    FOREIGN KEY (`Word_id`)
    REFERENCES `mydb`.`Word` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Association_Tag`
    FOREIGN KEY (`Tag_id`)
    REFERENCES `mydb`.`Tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;