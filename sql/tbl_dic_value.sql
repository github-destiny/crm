/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : crm01

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2022-02-20 14:55:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_dic_value`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL COMMENT '����Ϊ�գ�����Ҫ��ͬһ���ֵ��������ֵ�ֵ�����ظ�������Ψһ�ԡ�',
  `text` varchar(255) DEFAULT NULL COMMENT '����Ϊ��',
  `orderNo` int(5) DEFAULT NULL,
  `typeCode` varchar(255) DEFAULT NULL COMMENT '���',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('1', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('3', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('5', '教授', '教授', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('6', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('7', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('8', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('10', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('11', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('12', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('13', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('14', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('15', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('16', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('17', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('18', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('19', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('20', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('21', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('22', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('23', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('24', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('25', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('26', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('27', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('28', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('29', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('30', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('31', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('32', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('33', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('34', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('35', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('36', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('37', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('38', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('39', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('40', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('41', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('42', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('43', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('44', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('45', '在线商场', '在线商场', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('46', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('47', '外部介绍', '外部介绍', '4', 'source');
