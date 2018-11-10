/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.12
Source Server Version : 50505
Source Host           : 192.168.0.12:3306
Source Database       : monitor

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-10 14:44:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gadget
-- ----------------------------
DROP TABLE IF EXISTS `gadget`;
CREATE TABLE `gadget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gadget_name` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `gadget_address` varchar(255) DEFAULT NULL,
  `date_update` varchar(10) DEFAULT NULL,
  `time_update` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gadget
-- ----------------------------
INSERT INTO `gadget` VALUES ('3', '1A-M-F1', '20271.jpg', '01 02 01 12 11 31 R3 D4', '2018-11-09', '18:04:54');
INSERT INTO `gadget` VALUES ('4', '1B-M-F1', '14652.jpg', '02 03 01 02 10 31 R5 D3', '2018-11-09', '18:04:19');
INSERT INTO `gadget` VALUES ('6', '2A-D-F1', '9595.jpg', '02 03 00 02 00 20 R5 D7', '2018-11-10', '03:50:33');

-- ----------------------------
-- Table structure for measuring
-- ----------------------------
DROP TABLE IF EXISTS `measuring`;
CREATE TABLE `measuring` (
  `measuring_id` int(11) NOT NULL AUTO_INCREMENT,
  `kwr` decimal(5,0) DEFAULT NULL,
  `kwhr` decimal(5,0) DEFAULT NULL,
  `amp` decimal(5,0) DEFAULT NULL,
  `datet_update` date DEFAULT NULL,
  `time_update` varchar(10) DEFAULT NULL,
  `gadget_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`measuring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of measuring
-- ----------------------------
