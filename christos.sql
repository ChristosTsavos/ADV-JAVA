/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : christos

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-02-23 07:37:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `birthday` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for client_role
-- ----------------------------
DROP TABLE IF EXISTS `client_role`;
CREATE TABLE `client_role` (
  `client_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`client_id`,`role_id`),
  KEY `FKsebjrrme324jp4snmn2pqhjm9` (`role_id`),
  CONSTRAINT `FKq99e3a82lf3q7x50lo5lq3h6x` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `FKsebjrrme324jp4snmn2pqhjm9` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `seats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for play
-- ----------------------------
DROP TABLE IF EXISTS `play`;
CREATE TABLE `play` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actors` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for shows
-- ----------------------------
DROP TABLE IF EXISTS `shows`;
CREATE TABLE `shows` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `play_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1kwrot4bi3tc8rui4y8oputfa` (`play_id`),
  CONSTRAINT `FK1kwrot4bi3tc8rui4y8oputfa` FOREIGN KEY (`play_id`) REFERENCES `play` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for shows_hall
-- ----------------------------
DROP TABLE IF EXISTS `shows_hall`;
CREATE TABLE `shows_hall` (
  `shows_id` bigint(20) NOT NULL,
  `hall_id` bigint(20) NOT NULL,
  PRIMARY KEY (`shows_id`,`hall_id`),
  KEY `FK1ptsswh6oybht5kfod17jsnda` (`hall_id`),
  CONSTRAINT `FK1ptsswh6oybht5kfod17jsnda` FOREIGN KEY (`hall_id`) REFERENCES `hall` (`id`),
  CONSTRAINT `FKrk90w3bnhk75oqqkto1k90g1s` FOREIGN KEY (`shows_id`) REFERENCES `shows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
