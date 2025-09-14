DROP DATABASE IF EXISTS ahtraps;
CREATE DATABASE IF NOT EXISTS ahtraps;
USE ahtraps;
CREATE OR REPLACE TABLE `owner` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`Name` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`phone` TEXT(16),
	`password` TEXT(256),
	PRIMARY KEY(`id`)
) COMMENT='Contains details of individual owners';

CREATE OR REPLACE TABLE `trap` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`full_id` TEXT(16) NOT NULL,
	`traptype` TEXT(16) NOT NULL,
	`owner` INTEGER,
	`loc_lat` DECIMAL,
	`loc_long` DECIMAL,
	`loc_county` TEXT(16),
	PRIMARY KEY(`id`)
) COMMENT='Trap information';

ALTER TABLE `trap`
ADD FOREIGN KEY(`owner`) REFERENCES `owner`(`id`)
ON UPDATE NO ACTION ON DELETE SET NULL;
