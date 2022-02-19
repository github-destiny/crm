/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : crm01

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2022-02-19 19:58:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startDate` char(19) DEFAULT NULL,
  `endDate` char(19) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('1', 'asdfgh', '发传单0', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '0', '发传单0', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('2', 'asdfgh', '发传单1', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '1000', '发传单1', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('3', 'asdfgh', '发传单2', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '2000', '发传单2', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('4', 'asdfgh', '发传单3', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '3000', '发传单3', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('5', 'asdfgh', '发传单4', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '4000', '发传单4', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('6', 'asdfgh', '发传单5', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '5000', '发传单5', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('7', 'asdfgh', '发传单6', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '6000', '发传单6', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('8', 'asdfgh', '发传单7', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '7000', '发传单7', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('9', 'asdfgh', '发传单8', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '8000', '发传单8', '2022-02-19 19:52:49', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('10', 'asdfgh', '发传单9', '2022-02-19 19:52:49', '2022-02-19 19:52:49', '9000', '发传单9', '2022-02-19 19:52:49', 'asdfgh', null, null);

-- ----------------------------
-- Table structure for `tbl_clue`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `owner` char(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(19) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('1', '线索0', '先生', 'asdfgh', '公司0', 'CTO', '0@qq.com', '0xxxxxxxx', 'www.0.com', '000-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述0', '联系纪要0', '2022-02-19 19:52:49', '地区0');
INSERT INTO `tbl_clue` VALUES ('2', '线索1', '先生', 'asdfgh', '公司1', 'CTO', '1@qq.com', '1xxxxxxxx', 'www.1.com', '010-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述1', '联系纪要1', '2022-02-19 19:52:49', '地区1');
INSERT INTO `tbl_clue` VALUES ('3', '线索2', '先生', 'asdfgh', '公司2', 'CTO', '2@qq.com', '2xxxxxxxx', 'www.2.com', '020-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述2', '联系纪要2', '2022-02-19 19:52:49', '地区2');
INSERT INTO `tbl_clue` VALUES ('4', '线索3', '先生', 'asdfgh', '公司3', 'CTO', '3@qq.com', '3xxxxxxxx', 'www.3.com', '030-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述3', '联系纪要3', '2022-02-19 19:52:49', '地区3');
INSERT INTO `tbl_clue` VALUES ('5', '线索4', '先生', 'asdfgh', '公司4', 'CTO', '4@qq.com', '4xxxxxxxx', 'www.4.com', '040-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述4', '联系纪要4', '2022-02-19 19:52:49', '地区4');
INSERT INTO `tbl_clue` VALUES ('6', '线索5', '先生', 'asdfgh', '公司5', 'CTO', '5@qq.com', '5xxxxxxxx', 'www.5.com', '050-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述5', '联系纪要5', '2022-02-19 19:52:49', '地区5');
INSERT INTO `tbl_clue` VALUES ('7', '线索6', '先生', 'asdfgh', '公司6', 'CTO', '6@qq.com', '6xxxxxxxx', 'www.6.com', '060-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述6', '联系纪要6', '2022-02-19 19:52:49', '地区6');
INSERT INTO `tbl_clue` VALUES ('8', '线索7', '先生', 'asdfgh', '公司7', 'CTO', '7@qq.com', '7xxxxxxxx', 'www.7.com', '070-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述7', '联系纪要7', '2022-02-19 19:52:49', '地区7');
INSERT INTO `tbl_clue` VALUES ('9', '线索8', '先生', 'asdfgh', '公司8', 'CTO', '8@qq.com', '8xxxxxxxx', 'www.8.com', '080-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述8', '联系纪要8', '2022-02-19 19:52:49', '地区8');
INSERT INTO `tbl_clue` VALUES ('10', '线索9', '先生', 'asdfgh', '公司9', 'CTO', '9@qq.com', '9xxxxxxxx', 'www.9.com', '090-xxxxxx', '联系中', '广告', 'asdfgh', '2022-02-19 19:52:49', null, null, '描述9', '联系纪要9', '2022-02-19 19:52:49', '地区9');

-- ----------------------------
-- Table structure for `tbl_clue_activity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `clueId` int(32) DEFAULT NULL,
  `activityId` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------
INSERT INTO `tbl_clue_activity_relation` VALUES ('1', '1', '10');
INSERT INTO `tbl_clue_activity_relation` VALUES ('2', '2', '9');
INSERT INTO `tbl_clue_activity_relation` VALUES ('3', '3', '8');
INSERT INTO `tbl_clue_activity_relation` VALUES ('4', '4', '7');
INSERT INTO `tbl_clue_activity_relation` VALUES ('5', '5', '6');
INSERT INTO `tbl_clue_activity_relation` VALUES ('6', '6', '5');
INSERT INTO `tbl_clue_activity_relation` VALUES ('7', '7', '4');
INSERT INTO `tbl_clue_activity_relation` VALUES ('8', '8', '3');
INSERT INTO `tbl_clue_activity_relation` VALUES ('9', '9', '2');
INSERT INTO `tbl_clue_activity_relation` VALUES ('10', '10', '1');

-- ----------------------------
-- Table structure for `tbl_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `owner` char(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `customerId` int(32) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `birth` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(19) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------
INSERT INTO `tbl_contacts` VALUES ('1', 'asdfgh', '广告', '0', '李0', '先生', '0@qq.com', '0', '0', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '0', '0', '2022-02-19 19:52:49', '0');
INSERT INTO `tbl_contacts` VALUES ('2', 'asdfgh', '广告', '1', '李1', '先生', '1@qq.com', '1', '1', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '1', '1', '2022-02-19 19:52:49', '1');
INSERT INTO `tbl_contacts` VALUES ('3', 'asdfgh', '广告', '2', '李2', '先生', '2@qq.com', '2', '2', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '2', '2', '2022-02-19 19:52:49', '2');
INSERT INTO `tbl_contacts` VALUES ('4', 'asdfgh', '广告', '3', '李3', '先生', '3@qq.com', '3', '3', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '3', '3', '2022-02-19 19:52:49', '3');
INSERT INTO `tbl_contacts` VALUES ('5', 'asdfgh', '广告', '4', '李4', '先生', '4@qq.com', '4', '4', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '4', '4', '2022-02-19 19:52:49', '4');
INSERT INTO `tbl_contacts` VALUES ('6', 'asdfgh', '广告', '5', '李5', '先生', '5@qq.com', '5', '5', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '5', '5', '2022-02-19 19:52:49', '5');
INSERT INTO `tbl_contacts` VALUES ('7', 'asdfgh', '广告', '6', '李6', '先生', '6@qq.com', '6', '6', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '6', '6', '2022-02-19 19:52:49', '6');
INSERT INTO `tbl_contacts` VALUES ('8', 'asdfgh', '广告', '7', '李7', '先生', '7@qq.com', '7', '7', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '7', '7', '2022-02-19 19:52:49', '7');
INSERT INTO `tbl_contacts` VALUES ('9', 'asdfgh', '广告', '8', '李8', '先生', '8@qq.com', '8', '8', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '8', '8', '2022-02-19 19:52:49', '8');
INSERT INTO `tbl_contacts` VALUES ('10', 'asdfgh', '广告', '9', '李9', '先生', '9@qq.com', '9', '9', '2022-01-01', 'asdfgh', '2022-02-19 19:52:49', null, null, '9', '9', '2022-02-19 19:52:49', '9');

-- ----------------------------
-- Table structure for `tbl_contacts_activity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
CREATE TABLE `tbl_contacts_activity_relation` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `contactsId` int(32) DEFAULT NULL,
  `activityId` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_activity_relation
-- ----------------------------
INSERT INTO `tbl_contacts_activity_relation` VALUES ('1', '1', '10');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('2', '2', '9');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('3', '3', '8');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('4', '4', '7');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('5', '5', '6');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('6', '6', '5');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('7', '7', '4');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('8', '8', '3');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('9', '9', '2');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('10', '10', '1');

-- ----------------------------
-- Table structure for `tbl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('1', 'asdfgh', '公司0', 'www.0.com', '0', 'asdfgh', '2022-02-19 19:52:49', null, null, '0', '2022-02-19 19:52:49', '0', '0');
INSERT INTO `tbl_customer` VALUES ('2', 'asdfgh', '公司1', 'www.1.com', '1', 'asdfgh', '2022-02-19 19:52:49', null, null, '1', '2022-02-19 19:52:49', '1', '1');
INSERT INTO `tbl_customer` VALUES ('3', 'asdfgh', '公司2', 'www.2.com', '2', 'asdfgh', '2022-02-19 19:52:49', null, null, '2', '2022-02-19 19:52:49', '2', '2');
INSERT INTO `tbl_customer` VALUES ('4', 'asdfgh', '公司3', 'www.3.com', '3', 'asdfgh', '2022-02-19 19:52:49', null, null, '3', '2022-02-19 19:52:49', '3', '3');
INSERT INTO `tbl_customer` VALUES ('5', 'asdfgh', '公司4', 'www.4.com', '4', 'asdfgh', '2022-02-19 19:52:49', null, null, '4', '2022-02-19 19:52:49', '4', '4');
INSERT INTO `tbl_customer` VALUES ('6', 'asdfgh', '公司5', 'www.5.com', '5', 'asdfgh', '2022-02-19 19:52:49', null, null, '5', '2022-02-19 19:52:49', '5', '5');
INSERT INTO `tbl_customer` VALUES ('7', 'asdfgh', '公司6', 'www.6.com', '6', 'asdfgh', '2022-02-19 19:52:49', null, null, '6', '2022-02-19 19:52:49', '6', '6');
INSERT INTO `tbl_customer` VALUES ('8', 'asdfgh', '公司7', 'www.7.com', '7', 'asdfgh', '2022-02-19 19:52:49', null, null, '7', '2022-02-19 19:52:49', '7', '7');
INSERT INTO `tbl_customer` VALUES ('9', 'asdfgh', '公司8', 'www.8.com', '8', 'asdfgh', '2022-02-19 19:52:49', null, null, '8', '2022-02-19 19:52:49', '8', '8');
INSERT INTO `tbl_customer` VALUES ('10', 'asdfgh', '公司9', 'www.9.com', '9', 'asdfgh', '2022-02-19 19:52:49', null, null, '9', '2022-02-19 19:52:49', '9', '9');

-- ----------------------------
-- Table structure for `tbl_dic_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type` (
  `code` varchar(255) NOT NULL COMMENT '����������������Ϊ�գ����ܺ������ġ�',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('transactionType', '交易类型', '');

-- ----------------------------
-- Table structure for `tbl_dic_value`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value` (
  `id` char(32) NOT NULL COMMENT '����������UUID',
  `value` varchar(255) DEFAULT NULL COMMENT '����Ϊ�գ�����Ҫ��ͬһ���ֵ��������ֵ�ֵ�����ظ�������Ψһ�ԡ�',
  `text` varchar(255) DEFAULT NULL COMMENT '����Ϊ��',
  `orderNo` varchar(255) DEFAULT NULL COMMENT '����Ϊ�գ�����Ϊ�յ�ʱ��Ҫ�������������',
  `typeCode` varchar(255) DEFAULT NULL COMMENT '���',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('12302fd42bd349c1bb768b19600e6b20', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('1615f0bb3e604552a86cde9a2ad45bea', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('176039d2a90e4b1a81c5ab8707268636', '教授', '教授', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('1e0bd307e6ee425599327447f8387285', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2173663b40b949ce928db92607b5fe57', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2876690b7e744333b7f1867102f91153', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('29805c804dd94974b568cfc9017b2e4c', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('310e6a49bd8a4962b3f95a1d92eb76f4', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('31539e7ed8c848fc913e1c2c93d76fd1', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('37ef211719134b009e10b7108194cf46', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('391807b5324d4f16bd58c882750ee632', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('3a39605d67da48f2a3ef52e19d243953', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('474ab93e2e114816abf3ffc596b19131', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('48512bfed26145d4a38d3616e2d2cf79', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4d03a42898684135809d380597ed3268', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('59795c49896947e1ab61b7312bd0597c', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('5c6e9e10ca414bd499c07b886f86202a', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('67165c27076e4c8599f42de57850e39c', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('68a1b1e814d5497a999b8f1298ace62b', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('6b86f215e69f4dbd8a2daa22efccf0cf', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('72f13af8f5d34134b5b3f42c5d477510', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('7c07db3146794c60bf975749952176df', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('86c56aca9eef49058145ec20d5466c17', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('9095bda1f9c34f098d5b92fb870eba17', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('954b410341e7433faa468d3c4f7cf0d2', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('966170ead6fa481284b7d21f90364984', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('96b03f65dec748caa3f0b6284b19ef2f', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('97d1128f70294f0aac49e996ced28c8a', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('9ca96290352c40688de6596596565c12', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9e6d6e15232549af853e22e703f3e015', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('9ff57750fac04f15b10ce1bbb5bb8bab', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('a70dc4b4523040c696f4421462be8b2f', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('a83e75ced129421dbf11fab1f05cf8b4', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ab8472aab5de4ae9b388b2f1409441c1', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('ab8c2a3dc05f4e3dbc7a0405f721b040', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('b924d911426f4bc5ae3876038bc7e0ad', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('c13ad8f9e2f74d5aa84697bb243be3bb', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('c83c0be184bc40708fd7b361b6f36345', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('db867ea866bc44678ac20c8a4a8bfefb', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('e44be1d99158476e8e44778ed36f4355', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('e5f383d2622b4fc0959f4fe131dafc80', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('e81577d9458f4e4192a44650a3a3692b', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('fb65d7fdb9c6483db02713e6bc05dd19', '在线商场', '在线商场', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('fd677cc3b5d047d994e16f6ece4d3d45', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ff802a03ccea4ded8731427055681d48', '外部介绍', '外部介绍', '4', 'source');

-- ----------------------------
-- Table structure for `tbl_test`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test`;
CREATE TABLE `tbl_test` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_test
-- ----------------------------
INSERT INTO `tbl_test` VALUES ('1', 'bad775', '97');
INSERT INTO `tbl_test` VALUES ('2', 'a38754', '30');
INSERT INTO `tbl_test` VALUES ('3', '5f938f', '16');
INSERT INTO `tbl_test` VALUES ('4', '687d5e', '25');
INSERT INTO `tbl_test` VALUES ('5', '14e9be', '38');
INSERT INTO `tbl_test` VALUES ('6', '353702', '30');
INSERT INTO `tbl_test` VALUES ('7', '5f0973', '58');
INSERT INTO `tbl_test` VALUES ('8', 'eb77cb', '35');
INSERT INTO `tbl_test` VALUES ('9', '24b629', '57');
INSERT INTO `tbl_test` VALUES ('10', '192cf6', '36');
INSERT INTO `tbl_test` VALUES ('11', '00d57d', '16');
INSERT INTO `tbl_test` VALUES ('12', '6ead26', '20');
INSERT INTO `tbl_test` VALUES ('13', '53675f', '7');
INSERT INTO `tbl_test` VALUES ('14', 'd7b5b1', '78');
INSERT INTO `tbl_test` VALUES ('15', '9abcb2', '43');
INSERT INTO `tbl_test` VALUES ('16', '2c9862', '52');
INSERT INTO `tbl_test` VALUES ('17', '8e482d', '52');

-- ----------------------------
-- Table structure for `tbl_tran`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE `tbl_tran` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `owner` char(32) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expectedDate` char(19) DEFAULT NULL,
  `customerId` int(32) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `activityId` int(32) DEFAULT NULL,
  `contactsId` int(32) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(19) DEFAULT NULL,
  `possible` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran
-- ----------------------------
INSERT INTO `tbl_tran` VALUES ('1', 'asdfgh', '5000', '交易0', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '0', '0', '2022-01-01', '0');
INSERT INTO `tbl_tran` VALUES ('2', 'asdfgh', '5000', '交易1', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '1', '1', '2022-01-01', '10');
INSERT INTO `tbl_tran` VALUES ('3', 'asdfgh', '5000', '交易2', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '2', '2', '2022-01-01', '20');
INSERT INTO `tbl_tran` VALUES ('4', 'asdfgh', '5000', '交易3', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '3', '3', '2022-01-01', '30');
INSERT INTO `tbl_tran` VALUES ('5', 'asdfgh', '5000', '交易4', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '4', '4', '2022-01-01', '40');
INSERT INTO `tbl_tran` VALUES ('6', 'asdfgh', '5000', '交易5', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '5', '5', '2022-01-01', '50');
INSERT INTO `tbl_tran` VALUES ('7', 'asdfgh', '5000', '交易6', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '6', '6', '2022-01-01', '60');
INSERT INTO `tbl_tran` VALUES ('8', 'asdfgh', '5000', '交易7', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '7', '7', '2022-01-01', '70');
INSERT INTO `tbl_tran` VALUES ('9', 'asdfgh', '5000', '交易8', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '8', '8', '2022-01-01', '80');
INSERT INTO `tbl_tran` VALUES ('10', 'asdfgh', '5000', '交易9', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '9', '9', '2022-01-01', '90');

-- ----------------------------
-- Table structure for `tbl_tran_history`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `stage` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `expectedDate` char(19) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `tranId` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'uuid\r\n            ',
  `uuid` char(6) NOT NULL,
  `loginAct` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL COMMENT '密码不能采用明文存储，采用密文，MD5加密之后的数据',
  `email` varchar(255) DEFAULT NULL,
  `expireTime` char(19) DEFAULT NULL COMMENT '失效时间为空的时候表示永不失效，失效时间为2018-10-10 10:10:10，则表示在该时间之前该账户可用。',
  `lockState` char(1) DEFAULT NULL COMMENT '锁定状态为空时表示启用，为0时表示锁定，为1时表示启用。',
  `allowIps` varchar(255) DEFAULT NULL COMMENT '允许访问的IP为空时表示IP地址永不受限，允许访问的IP可以是一个，也可以是多个，当多个IP地址的时候，采用半角逗号分隔。允许IP是192.168.100.2，表示该用户只能在IP地址为192.168.100.2的机器上使用。',
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'asdfgh', 'zs', '张三', '250cf8b51c773f3f8dc8b4be867a9a02', '123@qq.com', '2023-12-31 18:08', '1', '127.0.0.1, 192.168.1.1', '2023-12-31 18:08', 'asdfgh', null, null);
