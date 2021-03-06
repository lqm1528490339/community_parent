/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : community_base

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-13 01:31:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_city
-- ----------------------------
DROP TABLE IF EXISTS `tb_city`;
CREATE TABLE `tb_city` (
  `id` varchar(20) NOT NULL COMMENT 'ID',
  `name` varchar(20) DEFAULT NULL COMMENT '城市名称',
  `ishot` varchar(1) DEFAULT NULL COMMENT '是否热门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市';

-- ----------------------------
-- Records of tb_city
-- ----------------------------
INSERT INTO `tb_city` VALUES ('1', '北京', '1');
INSERT INTO `tb_city` VALUES ('2', '上海', '1');
INSERT INTO `tb_city` VALUES ('3', '广州', '1');
INSERT INTO `tb_city` VALUES ('4', '深圳', '1');
INSERT INTO `tb_city` VALUES ('5', '天津', '0');
INSERT INTO `tb_city` VALUES ('6', '重庆', '0');
INSERT INTO `tb_city` VALUES ('7', '西安', '0');

-- ----------------------------
-- Table structure for tb_label
-- ----------------------------
DROP TABLE IF EXISTS `tb_label`;
CREATE TABLE `tb_label` (
  `id` varchar(20) NOT NULL COMMENT '标签ID',
  `labelname` varchar(100) DEFAULT NULL COMMENT '标签名称',
  `state` varchar(1) DEFAULT NULL COMMENT '状态',
  `count` bigint(20) DEFAULT NULL COMMENT '使用数量',
  `recommend` varchar(1) DEFAULT NULL COMMENT '是否推荐',
  `fans` bigint(20) DEFAULT NULL COMMENT '粉丝数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签';

-- ----------------------------
-- Records of tb_label
-- ----------------------------
INSERT INTO `tb_label` VALUES ('1', 'java', '1', null, null, null);
INSERT INTO `tb_label` VALUES ('2', 'PHP', '1', null, null, null);
INSERT INTO `tb_label` VALUES ('3', 'C++', '1', null, null, null);
INSERT INTO `tb_label` VALUES ('4', 'Python', '1', null, null, null);
INSERT INTO `tb_label` VALUES ('5', 'HTML', '1', null, null, null);

-- ----------------------------
-- Table structure for tb_ul
-- ----------------------------
DROP TABLE IF EXISTS `tb_ul`;
CREATE TABLE `tb_ul` (
  `userid` varchar(20) NOT NULL,
  `labelid` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`,`labelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ul
-- ----------------------------
INSERT INTO `tb_ul` VALUES ('1', '1');
INSERT INTO `tb_ul` VALUES ('1', '2');
INSERT INTO `tb_ul` VALUES ('1', '3');
