SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`mainform`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`mainform` ;

CREATE TABLE IF NOT EXISTS `mydb`.`mainform` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `value`),
  UNIQUE INDEX `value_UNIQUE` (`value` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 459
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tag` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `value`),
  UNIQUE INDEX `name_UNIQUE` (`value` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 1887
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`word`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`word` ;

CREATE TABLE IF NOT EXISTS `mydb`.`word` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `value`),
  UNIQUE INDEX `value_UNIQUE` (`value` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 459
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`association`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`association` ;

CREATE TABLE IF NOT EXISTS `mydb`.`association` (
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
    REFERENCES `mydb`.`mainform` (`id`),
  CONSTRAINT `fk_Association_Tag`
    FOREIGN KEY (`Tag_id`)
    REFERENCES `mydb`.`tag` (`id`),
  CONSTRAINT `fk_Association_Word`
    FOREIGN KEY (`Word_id`)
    REFERENCES `mydb`.`word` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1472
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
