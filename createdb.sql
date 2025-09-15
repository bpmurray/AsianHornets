DROP DATABASE IF EXISTS ahtraps;
CREATE DATABASE IF NOT EXISTS ahtraps;
USE ahtraps;
CREATE OR REPLACE TABLE `owner` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`Name` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`phone` text DEFAULT NULL,
	`password` text DEFAULT NULL,
	PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci COMMENT='Contains details of individual owners';

ALTER TABLE `owner`
	ADD UNIQUE KEY `email` (`email`);

CREATE OR REPLACE TABLE `trap` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`full_id` TEXT(16) NOT NULL,
	`traptype` TEXT(16) NOT NULL,
	`owner` INTEGER DEFAULT NULL,
	`loc_lat` DECIMAL(11,8) DEFAULT NULL,
	`loc_long` DECIMAL(11,8) DEFAULT NULL,
	`loc_county` TEXT(16) DEFAULT NULL,
	PRIMARY KEY(`id`)
) COMMENT='Trap information';

ALTER TABLE `trap`
ALTER TABLE `trap`
	ADD KEY `owner` (`owner`);
	ADD FOREIGN KEY(`owner`) REFERENCES `owner`(`id`)
	ON UPDATE NO ACTION ON DELETE SET NULL;

