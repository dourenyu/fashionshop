/*
Navicat MySQL Data Transfer

Source Server         : fashionShop
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : fashionshop

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-03-07 19:15:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `im_id` varchar(64) DEFAULT NULL,
  `pathName` varchar(255) DEFAULT NULL,
  `n_id` varchar(64) DEFAULT NULL,
  `g_id` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
