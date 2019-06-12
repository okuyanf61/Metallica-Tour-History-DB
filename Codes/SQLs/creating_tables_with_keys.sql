-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema metallica_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema metallica_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `metallica_db` DEFAULT CHARACTER SET utf8 ;
USE `metallica_db` ;

-- -----------------------------------------------------
-- Table `metallica_db`.`acts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`acts` (
  `act_name` VARCHAR(47) CHARACTER SET 'utf8' NOT NULL,
  `act_id` (11) NOT NULL,
  PRIMARY KEY (`act_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `metallica_db`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`album` (
  `album_id` (11) NOT NULL,
  `album_name` VARCHAR(32) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`album_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `metallica_db`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`country` (
  `country_id` (11) NOT NULL,
  `country_name` VARCHAR(20) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `metallica_db`.`state`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`state` (
  `state_id` (11) NOT NULL,
  `state_name` VARCHAR(22) CHARACTER SET 'utf8' NOT NULL,
  `country_id` (11) NOT NULL,
  PRIMARY KEY (`state_id`),
  CONSTRAINT `fk_state_country`
    FOREIGN KEY (`country_id`)
    REFERENCES `metallica_db`.`country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_state_country1_idx` ON `metallica_db`.`state` (`country_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`city` (
  `city_id` (11) NOT NULL,
  `city_name` VARCHAR(22) CHARACTER SET 'utf8' NOT NULL,
  `state_id` (11) NOT NULL,
  PRIMARY KEY (`city_id`),
  CONSTRAINT `fk_city_state1`
    FOREIGN KEY (`state_id`)
    REFERENCES `metallica_db`.`state` (`state_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_city_state_idx` ON `metallica_db`.`city` (`state_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`tour`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`tour` (
  `date` DATE NOT NULL,
  `venue` VARCHAR(61) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `festival` VARCHAR(55) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `latitude` VARCHAR(36) CHARACTER SET 'utf8' NOT NULL,
  `longitude` VARCHAR(20) CHARACTER SET 'utf8' NOT NULL,
  `tour` VARCHAR(36) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `set_length` VARCHAR(15) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `has_doodle` VARCHAR(5) CHARACTER SET 'utf8' NOT NULL,
  `has_medley` VARCHAR(5) CHARACTER SET 'utf8' NOT NULL,
  `event_id` (11) NOT NULL,
  `city_id` (11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`event_id`),
  CONSTRAINT `fk_tour_city1`
    FOREIGN KEY (`city_id`)
    REFERENCES `metallica_db`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4891
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_tour_city1_idx` ON `metallica_db`.`tour` (`city_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`album_to_counter`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`album_to_counter` (
  `event_id` (11) NOT NULL,
  `album_id` (11) NOT NULL,
  `count` (11) NOT NULL,
  CONSTRAINT `fk_album_to_counter_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `metallica_db`.`album` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_to_counter_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_album_to_counter_album1_idx` ON `metallica_db`.`album_to_counter` (`album_id` ASC) VISIBLE;

CREATE INDEX `fk_album_to_counter_tour1_idx` ON `metallica_db`.`album_to_counter` (`event_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`instrument`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`instrument` (
  `instrument_type` (11) NOT NULL,
  `instrument_name` VARCHAR(6) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`instrument_type`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `metallica_db`.`event_to_inst`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`event_to_inst` (
  `event_id` (11) NOT NULL,
  `instrument_id` (11) NOT NULL,
  CONSTRAINT `fk_event_to_inst_instrument1`
    FOREIGN KEY (`instrument_id`)
    REFERENCES `metallica_db`.`instrument` (`instrument_type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_event_to_inst_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_event_to_inst_instrument1_idx` ON `metallica_db`.`event_to_inst` (`instrument_id` ASC) VISIBLE;

CREATE INDEX `fk_event_to_inst_tour1_idx` ON `metallica_db`.`event_to_inst` (`event_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`event_url`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`event_url` (
  `event_id` (11) NOT NULL,
  `URL` VARCHAR(75) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`URL`),
  CONSTRAINT `fk_event_url_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_event_url_tour1_idx` ON `metallica_db`.`event_url` (`event_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`song` (
  `song_name` VARCHAR(34) CHARACTER SET 'utf8' NOT NULL,
  `song_id` (11) NOT NULL,
  PRIMARY KEY (`song_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `metallica_db`.`tour_to_act`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`tour_to_act` (
  `event_id` (11) NOT NULL,
  `act_id` (11) NOT NULL,
  CONSTRAINT `fk_tour_to_act_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tour_to_act_acts1`
    FOREIGN KEY (`act_id`)
    REFERENCES `metallica_db`.`acts` (`act_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_tour_to_act_tour1_idx` ON `metallica_db`.`tour_to_act` (`event_id` ASC) VISIBLE;

CREATE INDEX `fk_tour_to_act_acts1_idx` ON `metallica_db`.`tour_to_act` (`act_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `metallica_db`.`tour_to_song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metallica_db`.`tour_to_song` (
  `event_id` (11) NOT NULL,
  `song_id` (11) NOT NULL,
  `type` VARCHAR(3) CHARACTER SET 'utf8' NOT NULL,
  CONSTRAINT `fk_tour_to_song_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `metallica_db`.`song` (`song_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tour_to_song_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_tour_to_song_song1_idx` ON `metallica_db`.`tour_to_song` (`song_id` ASC) VISIBLE;

CREATE INDEX `fk_tour_to_song_tour1_idx` ON `metallica_db`.`tour_to_song` (`event_id` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
