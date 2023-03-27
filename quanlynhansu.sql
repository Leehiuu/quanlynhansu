create database quanlynhansu;
use quanlynhansu;

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_id` varchar(36) NOT NULL DEFAULT (uuid()),
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `permission` varchar(255) NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `usename` (`username`)
);

LOCK TABLES `account` WRITE;

INSERT INTO `account` VALUES 
('123456789','namnv1012@samsungsds.com','18114828','user'),
('123456788','LuuThanhHieu@gmail.com','18114829','Admin'),
('123456787','HaQuyDuc@gmail.com','18114830','User'),
('123456786','NguyenThanhHuyen@samsungsds.com','18114831','user');

UNLOCK TABLES;

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT (uuid()),
  `department_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`department_id`)
);


LOCK TABLES `department` WRITE;

INSERT INTO `department` VALUES 
('0a409ff4-7f95-4f5a-b496-730c3c775c57','QTANM','0398727881'),
('9be4c8e0-da71-42df-bbdf-8fd05d4a57b1','IT','0258512025'),
('9e0be907-28e8-4dde-93d9-bd48d4db4be2','Kế hoạch tài chính','0398278172');

UNLOCK TABLES;

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employees_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT (uuid()),
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ethnicity` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_of_birth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `department_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `income_tax` float DEFAULT NULL,
  PRIMARY KEY (`employees_id`),
  KEY `FK_Employees_Department` (`department_id`),
  CONSTRAINT `FK_Employees_Department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
);


LOCK TABLES `employees` WRITE;

UNLOCK TABLES;

