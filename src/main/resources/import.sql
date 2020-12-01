CREATE SCHEMA `ds0` DEFAULT CHARACTER SET utf8 ;
CREATE SCHEMA `ds1` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `ds0`.`tab_user0` (
  `id` BIGINT(32) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `sex` VARCHAR(1) NULL,
  `age` INT NULL,
  `status` INT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `ds0`.`tab_user1` (
  `id` BIGINT(32) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `sex` VARCHAR(1) NULL,
  `age` INT NULL,
  `status` INT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `ds1`.`tab_user0` (
  `id` BIGINT(32) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `sex` VARCHAR(1) NULL,
  `age` INT NULL,
  `status` INT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `ds1`.`tab_user1` (
  `id` BIGINT(32) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `sex` VARCHAR(1) NULL,
  `age` INT NULL,
  `status` INT NULL,
  `create_time` DATETIME NULL,
  `update_time` DATETIME NULL,
  PRIMARY KEY (`id`));

