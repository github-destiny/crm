/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : crm01

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2022-02-20 14:55:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_dic_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL COMMENT '����������������Ϊ�գ����ܺ������ġ�',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('1', 'appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('2', 'clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('3', 'returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('4', 'returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('5', 'source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('6', 'stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('7', 'transactionType', '交易类型', '');
