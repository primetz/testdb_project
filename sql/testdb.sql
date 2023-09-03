/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 01/12/2019 14:49:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for NL_LOG
-- ----------------------------
DROP TABLE IF EXISTS `NL_LOG`;
CREATE TABLE `NL_LOG`  (
  `ID_NL_LOG` int(11) NOT NULL AUTO_INCREMENT,
  `NL_LOG_DATE` date NOT NULL,
  `NL_LOG_TIME` time(0) NOT NULL,
  `NL_LOG_IP` varchar(255) NOT NULL,
  `NL_LOG_IUD` varchar(255) NOT NULL,
  `NL_LOG_TABLE_NAME` varchar(255) NOT NULL,
  `ID_NL_USER` int(11) NOT NULL,
  PRIMARY KEY (`ID_NL_LOG`) USING BTREE,
  INDEX `ID_NL_USER`(`ID_NL_USER`) USING BTREE,
  CONSTRAINT `NL_LOG_IBFK_1` FOREIGN KEY (`ID_NL_USER`) REFERENCES `NL_USER` (`ID_NL_USER`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

-- ----------------------------
-- Table structure for NL_LOG_DETAIL
-- ----------------------------
DROP TABLE IF EXISTS `NL_LOG_DETAIL`;
CREATE TABLE `NL_LOG_DETAIL`  (
  `ID_NL_LOG_DETAIL` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NL_LOG` int(11) NOT NULL,
  `NL_LOG_DETAIL_OLD` varchar(2550) NOT NULL,
  `NL_LOG_DETAIL_NEW` varchar(2550) NOT NULL,
  `NL_LOG_DETAIL_FIELD` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NL_LOG_DETAIL`) USING BTREE,
  INDEX `ID_NL_LOG`(`ID_NL_LOG`) USING BTREE,
  CONSTRAINT `NL_LOG_DETAIL_IBFK_1` FOREIGN KEY (`ID_NL_LOG`) REFERENCES `NL_LOG` (`ID_NL_LOG`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

-- ----------------------------
-- Table structure for NL_PROP_RESALE
-- ----------------------------
DROP TABLE IF EXISTS `NL_PROP_RESALE`;
CREATE TABLE `NL_PROP_RESALE`  (
  `ID_NL_PROP_RESALE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NL_VIEW` int(11) NULL DEFAULT NULL,
  `NL_PROP_RESALE_FLOOR` varchar(25) NULL DEFAULT NULL,
  `NL_PROP_RESALE_AREA_FULL` decimal(6, 2) NOT NULL,
  `NL_PROP_RESALE_PHOTO_URLS` varchar(5100) NULL DEFAULT NULL,
  `NL_PROP_RESALE_COST_TOTAL` int(11) NULL DEFAULT NULL,
  `NL_PROP_RESALE_ADDRESS` varchar(2550) NULL DEFAULT NULL,
  `NL_PROP_RESALE_DESCRIPTION` varchar(5100) NULL DEFAULT NULL,
  `ID_NL_USER` int(11) NULL DEFAULT NULL,
  `NL_PROP_RESALE_PHONE` varchar(50) NULL DEFAULT NULL,
  `NL_PROP_RESALE_PHONE_OWNER` varchar(255) NULL DEFAULT NULL,
  `NL_PROP_RESALE_DATE_INSERT` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `NL_PROP_RESALE_DATE_UPDATE` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`ID_NL_PROP_RESALE`) USING BTREE,
  INDEX `ID_NL_VIEW`(`ID_NL_VIEW`) USING BTREE,
  CONSTRAINT `nl_prop_resale_ibfk_1` FOREIGN KEY (`ID_NL_VIEW`) REFERENCES `NL_VIEW` (`ID_NL_VIEW`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5;

-- ----------------------------
-- Records of NL_PROP_RESALE
-- ----------------------------
INSERT INTO `NL_PROP_RESALE` VALUES (3, NULL, '1', 555.00, '[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]', 1000000, 'Россия, Краснодарский край, Анапа, Советская улица ', '%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%5Cn%22%7D%5D%7D', 1, '+79282601474', NULL, '2019-12-01 14:44:02', '2019-12-01 14:44:02');

-- ----------------------------
-- Table structure for NL_USER
-- ----------------------------
DROP TABLE IF EXISTS `NL_USER`;
CREATE TABLE `NL_USER`  (
  `ID_NL_USER` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NL_USER_PERMISSION` int(11) NOT NULL,
  `NL_USER_LOGIN` varchar(50) NOT NULL,
  `NL_USER_PASSWORD` blob NOT NULL,
  `NL_USER_SHORT` varchar(25) NOT NULL,
  `NL_USER_FULL` varchar(2550) NOT NULL,
  `NL_USER_PHONE` varchar(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_NL_USER`) USING BTREE,
  INDEX `ID_NL_USER_PERMISSION`(`ID_NL_USER_PERMISSION`) USING BTREE,
  CONSTRAINT `NL_USER_IBFK_1` FOREIGN KEY (`ID_NL_USER_PERMISSION`) REFERENCES `NL_USER_PERMISSION` (`ID_NL_USER_PERMISSION`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3;

-- ----------------------------
-- Records of NL_USER
-- ----------------------------
INSERT INTO `NL_USER` VALUES (1, 2, 'admin', 0xAEB0C38AF6FCE07E40349CEC2C17388F, 'Администратор', 'Администратор', '+79282601474');

-- ----------------------------
-- Table structure for NL_USER_PERMISSION
-- ----------------------------
DROP TABLE IF EXISTS `NL_USER_PERMISSION`;
CREATE TABLE `NL_USER_PERMISSION`  (
  `ID_NL_USER_PERMISSION` int(11) NOT NULL AUTO_INCREMENT,
  `NL_USER_PERMISSION_SHORT` varchar(25) NOT NULL,
  `NL_USER_PERMISSION_FULL` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NL_USER_PERMISSION`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4;

-- ----------------------------
-- Records of NL_USER_PERMISSION
-- ----------------------------
INSERT INTO `NL_USER_PERMISSION` VALUES (1, 'Пользователь', 'Пользователь');
INSERT INTO `NL_USER_PERMISSION` VALUES (2, 'Администратор', 'Администратор');
INSERT INTO `NL_USER_PERMISSION` VALUES (3, 'Гость', 'Гость');

-- ----------------------------
-- Table structure for NL_VIEW
-- ----------------------------
DROP TABLE IF EXISTS `NL_VIEW`;
CREATE TABLE `NL_VIEW`  (
  `ID_NL_VIEW` int(11) NOT NULL AUTO_INCREMENT,
  `NL_VIEW_SHORT` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_NL_VIEW`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3;

-- ----------------------------
-- Records of NL_VIEW
-- ----------------------------
INSERT INTO `NL_VIEW` VALUES (1, 'На море');
INSERT INTO `NL_VIEW` VALUES (2, 'В город');

SET FOREIGN_KEY_CHECKS = 1;
