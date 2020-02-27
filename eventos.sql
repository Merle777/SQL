-- MySQL Workbench Forward Engineering

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
-- Table `mydb`.`invitaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invitaciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `respuesta` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ubicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ubicaciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(45) NULL,
  `numero` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NULL,
  `created_at` DATETIME NULL,
  `upgraded_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`eventos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`eventos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ubicacion_id` INT NOT NULL,
  `invitacion_id` INT NOT NULL,
  `titulo` VARCHAR(255) NULL,
  `descripcion` TEXT NULL,
  `hora_inicio` TIME NULL,
  `hora_finalizacion` TIME NULL,
  `created_at` DATETIME NULL,
  `upgraded_at` DATETIME NULL,
  PRIMARY KEY (`id`, `ubicacion_id`, `invitacion_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`direcciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`direcciones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(45) NULL,
  `numero` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NULL,
  `created_at` DATETIME NULL,
  `upgraded_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `direccion_id` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `upgraded_at` DATETIME NULL,
  PRIMARY KEY (`id`, `direccion_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`eventos_has_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`eventos_has_usuarios` (
  `evento_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`evento_id`, `usuario_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
