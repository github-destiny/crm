/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 80026
Source Host           : 47.93.16.214:3306
Source Database       : crm01

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2022-03-13 17:16:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('5', 'asdfgh', '发传单4', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '4000', '发传单4', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('6', 'asdfgh', '发传单5', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '5000', '发传单5', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('7', 'asdfgh', '发传单6', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '6000', '发传单6', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('8', 'asdfgh', '发传单7', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '7000', '发传单7', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('9', 'asdfgh', '发传单8', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '8000', '发传单8', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('10', 'asdfgh', '发传单9', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '9000', '发传单9', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('11', 'asdfgh', '发传单10', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '10000', '发传单10', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('12', 'asdfgh', '发传单11', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '11000', '发传单11', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('13', 'asdfgh', '发传单12', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '12000', '发传单12', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('14', 'asdfgh', '发传单13', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '13000', '发传单13', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('15', 'asdfgh', '发传单14', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '14000', '发传单14', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('16', 'asdfgh', '发传单15', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '15000', '发传单15', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('17', 'asdfgh', '发传单16', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '16000', '发传单16', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('18', 'asdfgh', '发传单17', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '17000', '发传单17', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('19', 'asdfgh', '发传单18', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '18000', '发传单18', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('20', 'asdfgh', '发传单19', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '19000', '发传单19', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('22', 'asdfgh', '发传单21', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '21000', '发传单21', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('23', 'asdfgh', '发传单22', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '22000', '发传单22', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('24', 'asdfgh', '发传单23', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '23000', '发传单23', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('25', 'asdfgh', '发传单24', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '24000', '发传单24', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('26', 'asdfgh', '发传单25', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '25000', '发传单25', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('27', 'asdfgh', '发传单26', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '26000', '发传单26', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('28', 'asdfgh', '发传单27', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '27000', '发传单27', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('29', 'asdfgh', '发传单28', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '28000', '发传单28', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('30', 'asdfgh', '发传单29', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '29000', '发传单29', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('31', 'asdfgh', '发传单30', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '30000', '发传单30', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('32', 'asdfgh', '发传单31', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '31000', '发传单31', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('33', 'asdfgh', '发传单32', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '32000', '发传单32', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('34', 'asdfgh', '发传单33', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '33000', '发传单33', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('35', 'asdfgh', '发传单34', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '34000', '发传单34', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('36', 'asdfgh', '发传单35', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '35000', '发传单35', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('37', 'asdfgh', '发传单36', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '36000', '发传单36', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('38', 'asdfgh', '发传单37', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '37000', '发传单37', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('39', 'asdfgh', '发传单38', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '38000', '发传单38', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('40', 'asdfgh', '发传单39', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '39000', '发传单39', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('41', 'asdfgh', '发传单40', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '40000', '发传单40', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('42', 'asdfgh', '发传单41', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '41000', '发传单41', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('43', 'asdfgh', '发传单42', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '42000', '发传单42', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('44', 'asdfgh', '发传单43', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '43000', '发传单43', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('45', 'asdfgh', '发传单44', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '44000', '发传单44', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('46', 'asdfgh', '发传单45', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '45000', '发传单45', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('47', 'asdfgh', '发传单46', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '46000', '发传单46', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('48', 'asdfgh', '发传单47', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '47000', '发传单47', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('49', 'asdfgh', '发传单48', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '48000', '发传单48', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('50', 'asdfgh', '发传单49', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '49000', '发传单49', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('51', 'asdfgh', '发传单50', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '50000', '发传单50', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('52', 'asdfgh', '发传单51', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '51000', '发传单51', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('53', 'asdfgh', '发传单52', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '52000', '发传单52', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('54', 'asdfgh', '发传单53', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '53000', '发传单53', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('55', 'asdfgh', '发传单54', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '54000', '发传单54', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('56', 'asdfgh', '发传单55', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '55000', '发传单55', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('57', 'asdfgh', '发传单56', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '56000', '发传单56', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('58', 'asdfgh', '发传单57', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '57000', '发传单57', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('59', 'asdfgh', '发传单58', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '58000', '发传单58', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('60', 'asdfgh', '发传单59', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '59000', '发传单59', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('61', 'asdfgh', '发传单60', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '60000', '发传单60', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('62', 'asdfgh', '发传单61', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '61000', '发传单61', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('63', 'asdfgh', '发传单62', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '62000', '发传单62', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('64', 'asdfgh', '发传单63', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '63000', '发传单63', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('65', 'asdfgh', '发传单64', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '64000', '发传单64', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('66', 'asdfgh', '发传单65', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '65000', '发传单65', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('67', 'asdfgh', '发传单66', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '66000', '发传单66', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('68', 'asdfgh', '发传单67', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '67000', '发传单67', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('69', 'asdfgh', '发传单68', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '68000', '发传单68', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('70', 'asdfgh', '发传单69', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '69000', '发传单69', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('71', 'asdfgh', '发传单70', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '70000', '发传单70', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('72', 'asdfgh', '发传单71', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '71000', '发传单71', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('73', 'asdfgh', '发传单72', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '72000', '发传单72', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('74', 'asdfgh', '发传单73', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '73000', '发传单73', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('75', 'asdfgh', '发传单74', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '74000', '发传单74', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('76', 'asdfgh', '发传单75', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '75000', '发传单75', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('77', 'asdfgh', '发传单76', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '76000', '发传单76', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('78', 'asdfgh', '发传单77', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '77000', '发传单77', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('79', 'asdfgh', '发传单78', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '78000', '发传单78', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('80', 'asdfgh', '发传单79', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '79000', '发传单79', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('81', 'asdfgh', '发传单80', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '80000', '发传单80', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('82', 'asdfgh', '发传单81', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '81000', '发传单81', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('83', 'asdfgh', '发传单82', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '82000', '发传单82', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('84', 'asdfgh', '发传单83', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '83000', '发传单83', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('85', 'asdfgh', '发传单84', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '84000', '发传单84', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('86', 'asdfgh', '发传单85', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '85000', '发传单85', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('87', 'asdfgh', '发传单86', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '86000', '发传单86', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('88', 'asdfgh', '发传单87', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '87000', '发传单87', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('89', 'asdfgh', '发传单88', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '88000', '发传单88', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('90', 'asdfgh', '发传单89', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '89000', '发传单89', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('91', 'asdfgh', '发传单90', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '90000', '发传单90', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('92', 'asdfgh', '发传单91', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '91000', '发传单91', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('93', 'asdfgh', '发传单92', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '92000', '发传单92', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('94', 'asdfgh', '发传单93', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '93000', '发传单93', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('95', 'asdfgh', '发传单94', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '94000', '发传单94', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('96', 'asdfgh', '发传单95', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '95000', '发传单95', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('97', 'asdfgh', '发传单96', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '96000', '发传单96', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('98', 'asdfgh', '发传单97', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '97000', '发传单97', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('99', 'asdfgh', '发传单98', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '98000', '发传单98', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('100', 'asdfgh', '发传单99', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '99000', '发传单99', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('101', 'asdfgh', '发传单100', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '100000', '发传单100', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('102', 'asdfgh', '发传单101', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '101000', '发传单101', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('103', 'asdfgh', '发传单102', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '102000', '发传单102', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('104', 'asdfgh', '发传单103', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '103000', '发传单103', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('105', 'asdfgh', '发传单104', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '104000', '发传单104', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('106', 'asdfgh', '发传单105', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '105000', '发传单105', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('107', 'asdfgh', '发传单106', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '106000', '发传单106', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('108', 'asdfgh', '发传单107', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '107000', '发传单107', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('109', 'asdfgh', '发传单108', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '108000', '发传单108', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('110', 'asdfgh', '发传单109', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '109000', '发传单109', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('111', 'asdfgh', '发传单110', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '110000', '发传单110', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('112', 'asdfgh', '发传单111', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '111000', '发传单111', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('113', 'asdfgh', '发传单112', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '112000', '发传单112', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('114', 'asdfgh', '发传单113', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '113000', '发传单113', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('115', 'asdfgh', '发传单114', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '114000', '发传单114', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('116', 'asdfgh', '发传单115', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '115000', '发传单115', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('117', 'asdfgh', '发传单116', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '116000', '发传单116', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('118', 'asdfgh', '发传单117', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '117000', '发传单117', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('119', 'asdfgh', '发传单118', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '118000', '发传单118', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('120', 'asdfgh', '发传单119', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '119000', '发传单119', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('121', 'asdfgh', '发传单120', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '120000', '发传单120', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('122', 'asdfgh', '发传单121', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '121000', '发传单121', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('123', 'asdfgh', '发传单122', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '122000', '发传单122', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('124', 'asdfgh', '发传单123', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '123000', '发传单123', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('125', 'asdfgh', '发传单124', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '124000', '发传单124', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('126', 'asdfgh', '发传单125', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '125000', '发传单125', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('127', 'asdfgh', '发传单126', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '126000', '发传单126', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('128', 'asdfgh', '发传单127', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '127000', '发传单127', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('129', 'asdfgh', '发传单128', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '128000', '发传单128', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('130', 'asdfgh', '发传单129', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '129000', '发传单129', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('131', 'asdfgh', '发传单130', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '130000', '发传单130', '2022-03-05 12:37:08', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('132', 'asdfgh', '发传单131', '2022-03-05 12:37:08', '2022-03-05 12:37:08', '131000', '发传单131', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('133', 'asdfgh', '发传单132', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '132000', '发传单132', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('134', 'asdfgh', '发传单133', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '133000', '发传单133', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('135', 'asdfgh', '发传单134', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '134000', '发传单134', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('136', 'asdfgh', '发传单135', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '135000', '发传单135', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('137', 'asdfgh', '发传单136', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '136000', '发传单136', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('138', 'asdfgh', '发传单137', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '137000', '发传单137', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('139', 'asdfgh', '发传单138', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '138000', '发传单138', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('140', 'asdfgh', '发传单139', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '139000', '发传单139', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('141', 'asdfgh', '发传单140', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '140000', '发传单140', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('142', 'asdfgh', '发传单141', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '141000', '发传单141', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('143', 'asdfgh', '发传单142', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '142000', '发传单142', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('144', 'asdfgh', '发传单143', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '143000', '发传单143', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('145', 'asdfgh', '发传单144', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '144000', '发传单144', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('146', 'asdfgh', '发传单145', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '145000', '发传单145', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('147', 'asdfgh', '发传单146', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '146000', '发传单146', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('148', 'asdfgh', '发传单147', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '147000', '发传单147', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('149', 'asdfgh', '发传单148', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '148000', '发传单148', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('150', 'asdfgh', '发传单149', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '149000', '发传单149', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('151', 'asdfgh', '发传单150', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '150000', '发传单150', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('152', 'asdfgh', '发传单151', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '151000', '发传单151', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('153', 'asdfgh', '发传单152', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '152000', '发传单152', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('154', 'asdfgh', '发传单153', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '153000', '发传单153', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('155', 'asdfgh', '发传单154', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '154000', '发传单154', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('156', 'asdfgh', '发传单155', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '155000', '发传单155', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('157', 'asdfgh', '发传单156', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '156000', '发传单156', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('158', 'asdfgh', '发传单157', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '157000', '发传单157', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('159', 'asdfgh', '发传单158', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '158000', '发传单158', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('160', 'asdfgh', '发传单159', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '159000', '发传单159', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('161', 'asdfgh', '发传单160', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '160000', '发传单160', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('162', 'asdfgh', '发传单161', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '161000', '发传单161', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('163', 'asdfgh', '发传单162', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '162000', '发传单162', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('164', 'asdfgh', '发传单163', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '163000', '发传单163', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('165', 'asdfgh', '发传单164', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '164000', '发传单164', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('166', 'asdfgh', '发传单165', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '165000', '发传单165', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('167', 'asdfgh', '发传单166', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '166000', '发传单166', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('168', 'asdfgh', '发传单167', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '167000', '发传单167', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('169', 'asdfgh', '发传单168', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '168000', '发传单168', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('170', 'asdfgh', '发传单169', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '169000', '发传单169', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('171', 'asdfgh', '发传单170', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '170000', '发传单170', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('172', 'asdfgh', '发传单171', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '171000', '发传单171', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('173', 'asdfgh', '发传单172', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '172000', '发传单172', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('174', 'asdfgh', '发传单173', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '173000', '发传单173', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('175', 'asdfgh', '发传单174', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '174000', '发传单174', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('176', 'asdfgh', '发传单175', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '175000', '发传单175', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('177', 'asdfgh', '发传单176', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '176000', '发传单176', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('178', 'asdfgh', '发传单177', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '177000', '发传单177', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('179', 'asdfgh', '发传单178', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '178000', '发传单178', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('180', 'asdfgh', '发传单179', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '179000', '发传单179', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('181', 'asdfgh', '发传单180', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '180000', '发传单180', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('182', 'asdfgh', '发传单181', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '181000', '发传单181', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('183', 'asdfgh', '发传单182', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '182000', '发传单182', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('184', 'asdfgh', '发传单183', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '183000', '发传单183', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('185', 'asdfgh', '发传单184', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '184000', '发传单184', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('186', 'asdfgh', '发传单185', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '185000', '发传单185', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('187', 'asdfgh', '发传单186', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '186000', '发传单186', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('188', 'asdfgh', '发传单187', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '187000', '发传单187', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('189', 'asdfgh', '发传单188', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '188000', '发传单188', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('190', 'asdfgh', '发传单189', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '189000', '发传单189', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('191', 'asdfgh', '发传单190', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '190000', '发传单190', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('192', 'asdfgh', '发传单191', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '191000', '发传单191', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('193', 'asdfgh', '发传单192', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '192000', '发传单192', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('194', 'asdfgh', '发传单193', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '193000', '发传单193', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('195', 'asdfgh', '发传单194', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '194000', '发传单194', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('196', 'asdfgh', '发传单195', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '195000', '发传单195', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('197', 'asdfgh', '发传单196', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '196000', '发传单196', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('198', 'asdfgh', '发传单197', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '197000', '发传单197', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('199', 'asdfgh', '发传单198', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '198000', '发传单198', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('200', 'asdfgh', '发传单199', '2022-03-05 12:37:09', '2022-03-05 12:37:09', '199000', '发传单199', '2022-03-05 12:37:09', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('201', 'asdfgh', '王五,xxx', '2022-02-17', '2022-02-27', '10000', '打广告', '2022-03-05 19:50:21', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('202', 'asdfgh', '打广告', '2022-02-17', '2022-02-27', '10000', '打广告', '2022-03-05 19:52:26', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('203', 'asdfgh', '1111', '2022-03-02', '2022-03-02', '1111', '1111', '2022-03-05 20:02:06', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('204', 'asdfgh', '1111', '2022-03-01', '2022-03-02', '1111', '11111', '2022-03-05 20:05:04', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('205', 'asdfgh', '1111', '2022-03-01', '2022-03-03', '1111', '1111', '2022-03-05 20:07:25', 'asdfgh', null, null);
INSERT INTO `tbl_activity` VALUES ('206', 'asdfgh', '发', '2022-03-01', '2022-03-02', '1111', '1111', '2022-03-05 21:58:18', 'asdfgh', null, null);

-- ----------------------------
-- Table structure for `tbl_clue`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('1', '线索0', '先生', 'asdfgh', '公司0', 'CTO', '0@qq.com', '0xxxxxxxx', 'www.0.com', '000-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述0', '联系纪要0', '2022-03-05 12:37:09', '地区0');
INSERT INTO `tbl_clue` VALUES ('2', '线索1', '先生', 'asdfgh', '公司1', 'CTO', '1@qq.com', '1xxxxxxxx', 'www.1.com', '010-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述1', '联系纪要1', '2022-03-05 12:37:09', '地区1');
INSERT INTO `tbl_clue` VALUES ('3', '线索2', '先生', 'asdfgh', '公司2', 'CTO', '2@qq.com', '2xxxxxxxx', 'www.2.com', '020-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述2', '联系纪要2', '2022-03-05 12:37:09', '地区2');
INSERT INTO `tbl_clue` VALUES ('4', '线索3', '先生', 'asdfgh', '公司3', 'CTO', '3@qq.com', '3xxxxxxxx', 'www.3.com', '030-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述3', '联系纪要3', '2022-03-05 12:37:09', '地区3');
INSERT INTO `tbl_clue` VALUES ('5', '线索4', '先生', 'asdfgh', '公司4', 'CTO', '4@qq.com', '4xxxxxxxx', 'www.4.com', '040-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述4', '联系纪要4', '2022-03-05 12:37:09', '地区4');
INSERT INTO `tbl_clue` VALUES ('6', '线索5', '先生', 'asdfgh', '公司5', 'CTO', '5@qq.com', '5xxxxxxxx', 'www.5.com', '050-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述5', '联系纪要5', '2022-03-05 12:37:09', '地区5');
INSERT INTO `tbl_clue` VALUES ('7', '线索6', '先生', 'asdfgh', '公司6', 'CTO', '6@qq.com', '6xxxxxxxx', 'www.6.com', '060-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述6', '联系纪要6', '2022-03-05 12:37:09', '地区6');
INSERT INTO `tbl_clue` VALUES ('8', '线索7', '先生', 'asdfgh', '公司7', 'CTO', '7@qq.com', '7xxxxxxxx', 'www.7.com', '070-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述7', '联系纪要7', '2022-03-05 12:37:09', '地区7');
INSERT INTO `tbl_clue` VALUES ('9', '线索8', '先生', 'asdfgh', '公司8', 'CTO', '8@qq.com', '8xxxxxxxx', 'www.8.com', '080-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述8', '联系纪要8', '2022-03-05 12:37:09', '地区8');
INSERT INTO `tbl_clue` VALUES ('10', '线索9', '先生', 'asdfgh', '公司9', 'CTO', '9@qq.com', '9xxxxxxxx', 'www.9.com', '090-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述9', '联系纪要9', '2022-03-05 12:37:09', '地区9');
INSERT INTO `tbl_clue` VALUES ('11', '线索10', '先生', 'asdfgh', '公司10', 'CTO', '10@qq.com', '10xxxxxxxx', 'www.10.com', '0100-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述10', '联系纪要10', '2022-03-05 12:37:09', '地区10');
INSERT INTO `tbl_clue` VALUES ('12', '线索11', '先生', 'asdfgh', '公司11', 'CTO', '11@qq.com', '11xxxxxxxx', 'www.11.com', '0110-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述11', '联系纪要11', '2022-03-05 12:37:09', '地区11');
INSERT INTO `tbl_clue` VALUES ('13', '线索12', '先生', 'asdfgh', '公司12', 'CTO', '12@qq.com', '12xxxxxxxx', 'www.12.com', '0120-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述12', '联系纪要12', '2022-03-05 12:37:09', '地区12');
INSERT INTO `tbl_clue` VALUES ('14', '线索13', '先生', 'asdfgh', '公司13', 'CTO', '13@qq.com', '13xxxxxxxx', 'www.13.com', '0130-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述13', '联系纪要13', '2022-03-05 12:37:09', '地区13');
INSERT INTO `tbl_clue` VALUES ('15', '线索14', '先生', 'asdfgh', '公司14', 'CTO', '14@qq.com', '14xxxxxxxx', 'www.14.com', '0140-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述14', '联系纪要14', '2022-03-05 12:37:09', '地区14');
INSERT INTO `tbl_clue` VALUES ('16', '线索15', '先生', 'asdfgh', '公司15', 'CTO', '15@qq.com', '15xxxxxxxx', 'www.15.com', '0150-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述15', '联系纪要15', '2022-03-05 12:37:09', '地区15');
INSERT INTO `tbl_clue` VALUES ('17', '线索16', '先生', 'asdfgh', '公司16', 'CTO', '16@qq.com', '16xxxxxxxx', 'www.16.com', '0160-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述16', '联系纪要16', '2022-03-05 12:37:09', '地区16');
INSERT INTO `tbl_clue` VALUES ('18', '线索17', '先生', 'asdfgh', '公司17', 'CTO', '17@qq.com', '17xxxxxxxx', 'www.17.com', '0170-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述17', '联系纪要17', '2022-03-05 12:37:09', '地区17');
INSERT INTO `tbl_clue` VALUES ('19', '线索18', '先生', 'asdfgh', '公司18', 'CTO', '18@qq.com', '18xxxxxxxx', 'www.18.com', '0180-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述18', '联系纪要18', '2022-03-05 12:37:09', '地区18');
INSERT INTO `tbl_clue` VALUES ('20', '线索19', '先生', 'asdfgh', '公司19', 'CTO', '19@qq.com', '19xxxxxxxx', 'www.19.com', '0190-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述19', '联系纪要19', '2022-03-05 12:37:09', '地区19');
INSERT INTO `tbl_clue` VALUES ('21', '线索20', '先生', 'asdfgh', '公司20', 'CTO', '20@qq.com', '20xxxxxxxx', 'www.20.com', '0200-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述20', '联系纪要20', '2022-03-05 12:37:09', '地区20');
INSERT INTO `tbl_clue` VALUES ('22', '线索21', '先生', 'asdfgh', '公司21', 'CTO', '21@qq.com', '21xxxxxxxx', 'www.21.com', '0210-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述21', '联系纪要21', '2022-03-05 12:37:09', '地区21');
INSERT INTO `tbl_clue` VALUES ('23', '线索22', '先生', 'asdfgh', '公司22', 'CTO', '22@qq.com', '22xxxxxxxx', 'www.22.com', '0220-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述22', '联系纪要22', '2022-03-05 12:37:09', '地区22');
INSERT INTO `tbl_clue` VALUES ('24', '线索23', '先生', 'asdfgh', '公司23', 'CTO', '23@qq.com', '23xxxxxxxx', 'www.23.com', '0230-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述23', '联系纪要23', '2022-03-05 12:37:09', '地区23');
INSERT INTO `tbl_clue` VALUES ('25', '线索24', '先生', 'asdfgh', '公司24', 'CTO', '24@qq.com', '24xxxxxxxx', 'www.24.com', '0240-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述24', '联系纪要24', '2022-03-05 12:37:09', '地区24');
INSERT INTO `tbl_clue` VALUES ('26', '线索25', '先生', 'asdfgh', '公司25', 'CTO', '25@qq.com', '25xxxxxxxx', 'www.25.com', '0250-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述25', '联系纪要25', '2022-03-05 12:37:09', '地区25');
INSERT INTO `tbl_clue` VALUES ('27', '线索26', '先生', 'asdfgh', '公司26', 'CTO', '26@qq.com', '26xxxxxxxx', 'www.26.com', '0260-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述26', '联系纪要26', '2022-03-05 12:37:09', '地区26');
INSERT INTO `tbl_clue` VALUES ('28', '线索27', '先生', 'asdfgh', '公司27', 'CTO', '27@qq.com', '27xxxxxxxx', 'www.27.com', '0270-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述27', '联系纪要27', '2022-03-05 12:37:09', '地区27');
INSERT INTO `tbl_clue` VALUES ('29', '线索28', '先生', 'asdfgh', '公司28', 'CTO', '28@qq.com', '28xxxxxxxx', 'www.28.com', '0280-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述28', '联系纪要28', '2022-03-05 12:37:09', '地区28');
INSERT INTO `tbl_clue` VALUES ('30', '线索29', '先生', 'asdfgh', '公司29', 'CTO', '29@qq.com', '29xxxxxxxx', 'www.29.com', '0290-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述29', '联系纪要29', '2022-03-05 12:37:09', '地区29');
INSERT INTO `tbl_clue` VALUES ('31', '线索30', '先生', 'asdfgh', '公司30', 'CTO', '30@qq.com', '30xxxxxxxx', 'www.30.com', '0300-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述30', '联系纪要30', '2022-03-05 12:37:09', '地区30');
INSERT INTO `tbl_clue` VALUES ('32', '线索31', '先生', 'asdfgh', '公司31', 'CTO', '31@qq.com', '31xxxxxxxx', 'www.31.com', '0310-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述31', '联系纪要31', '2022-03-05 12:37:09', '地区31');
INSERT INTO `tbl_clue` VALUES ('33', '线索32', '先生', 'asdfgh', '公司32', 'CTO', '32@qq.com', '32xxxxxxxx', 'www.32.com', '0320-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述32', '联系纪要32', '2022-03-05 12:37:09', '地区32');
INSERT INTO `tbl_clue` VALUES ('34', '线索33', '先生', 'asdfgh', '公司33', 'CTO', '33@qq.com', '33xxxxxxxx', 'www.33.com', '0330-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述33', '联系纪要33', '2022-03-05 12:37:09', '地区33');
INSERT INTO `tbl_clue` VALUES ('35', '线索34', '先生', 'asdfgh', '公司34', 'CTO', '34@qq.com', '34xxxxxxxx', 'www.34.com', '0340-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述34', '联系纪要34', '2022-03-05 12:37:09', '地区34');
INSERT INTO `tbl_clue` VALUES ('36', '线索35', '先生', 'asdfgh', '公司35', 'CTO', '35@qq.com', '35xxxxxxxx', 'www.35.com', '0350-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述35', '联系纪要35', '2022-03-05 12:37:09', '地区35');
INSERT INTO `tbl_clue` VALUES ('37', '线索36', '先生', 'asdfgh', '公司36', 'CTO', '36@qq.com', '36xxxxxxxx', 'www.36.com', '0360-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述36', '联系纪要36', '2022-03-05 12:37:09', '地区36');
INSERT INTO `tbl_clue` VALUES ('38', '线索37', '先生', 'asdfgh', '公司37', 'CTO', '37@qq.com', '37xxxxxxxx', 'www.37.com', '0370-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述37', '联系纪要37', '2022-03-05 12:37:09', '地区37');
INSERT INTO `tbl_clue` VALUES ('39', '线索38', '先生', 'asdfgh', '公司38', 'CTO', '38@qq.com', '38xxxxxxxx', 'www.38.com', '0380-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述38', '联系纪要38', '2022-03-05 12:37:09', '地区38');
INSERT INTO `tbl_clue` VALUES ('40', '线索39', '先生', 'asdfgh', '公司39', 'CTO', '39@qq.com', '39xxxxxxxx', 'www.39.com', '0390-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述39', '联系纪要39', '2022-03-05 12:37:09', '地区39');
INSERT INTO `tbl_clue` VALUES ('41', '线索40', '先生', 'asdfgh', '公司40', 'CTO', '40@qq.com', '40xxxxxxxx', 'www.40.com', '0400-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述40', '联系纪要40', '2022-03-05 12:37:09', '地区40');
INSERT INTO `tbl_clue` VALUES ('42', '线索41', '先生', 'asdfgh', '公司41', 'CTO', '41@qq.com', '41xxxxxxxx', 'www.41.com', '0410-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述41', '联系纪要41', '2022-03-05 12:37:09', '地区41');
INSERT INTO `tbl_clue` VALUES ('43', '线索42', '先生', 'asdfgh', '公司42', 'CTO', '42@qq.com', '42xxxxxxxx', 'www.42.com', '0420-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述42', '联系纪要42', '2022-03-05 12:37:09', '地区42');
INSERT INTO `tbl_clue` VALUES ('44', '线索43', '先生', 'asdfgh', '公司43', 'CTO', '43@qq.com', '43xxxxxxxx', 'www.43.com', '0430-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述43', '联系纪要43', '2022-03-05 12:37:09', '地区43');
INSERT INTO `tbl_clue` VALUES ('45', '线索44', '先生', 'asdfgh', '公司44', 'CTO', '44@qq.com', '44xxxxxxxx', 'www.44.com', '0440-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述44', '联系纪要44', '2022-03-05 12:37:09', '地区44');
INSERT INTO `tbl_clue` VALUES ('46', '线索45', '先生', 'asdfgh', '公司45', 'CTO', '45@qq.com', '45xxxxxxxx', 'www.45.com', '0450-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述45', '联系纪要45', '2022-03-05 12:37:09', '地区45');
INSERT INTO `tbl_clue` VALUES ('47', '线索46', '先生', 'asdfgh', '公司46', 'CTO', '46@qq.com', '46xxxxxxxx', 'www.46.com', '0460-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述46', '联系纪要46', '2022-03-05 12:37:09', '地区46');
INSERT INTO `tbl_clue` VALUES ('48', '线索47', '先生', 'asdfgh', '公司47', 'CTO', '47@qq.com', '47xxxxxxxx', 'www.47.com', '0470-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述47', '联系纪要47', '2022-03-05 12:37:09', '地区47');
INSERT INTO `tbl_clue` VALUES ('49', '线索48', '先生', 'asdfgh', '公司48', 'CTO', '48@qq.com', '48xxxxxxxx', 'www.48.com', '0480-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述48', '联系纪要48', '2022-03-05 12:37:09', '地区48');
INSERT INTO `tbl_clue` VALUES ('50', '线索49', '先生', 'asdfgh', '公司49', 'CTO', '49@qq.com', '49xxxxxxxx', 'www.49.com', '0490-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述49', '联系纪要49', '2022-03-05 12:37:09', '地区49');
INSERT INTO `tbl_clue` VALUES ('51', '线索50', '先生', 'asdfgh', '公司50', 'CTO', '50@qq.com', '50xxxxxxxx', 'www.50.com', '0500-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述50', '联系纪要50', '2022-03-05 12:37:09', '地区50');
INSERT INTO `tbl_clue` VALUES ('52', '线索51', '先生', 'asdfgh', '公司51', 'CTO', '51@qq.com', '51xxxxxxxx', 'www.51.com', '0510-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述51', '联系纪要51', '2022-03-05 12:37:09', '地区51');
INSERT INTO `tbl_clue` VALUES ('53', '线索52', '先生', 'asdfgh', '公司52', 'CTO', '52@qq.com', '52xxxxxxxx', 'www.52.com', '0520-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述52', '联系纪要52', '2022-03-05 12:37:09', '地区52');
INSERT INTO `tbl_clue` VALUES ('54', '线索53', '先生', 'asdfgh', '公司53', 'CTO', '53@qq.com', '53xxxxxxxx', 'www.53.com', '0530-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述53', '联系纪要53', '2022-03-05 12:37:09', '地区53');
INSERT INTO `tbl_clue` VALUES ('55', '线索54', '先生', 'asdfgh', '公司54', 'CTO', '54@qq.com', '54xxxxxxxx', 'www.54.com', '0540-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述54', '联系纪要54', '2022-03-05 12:37:09', '地区54');
INSERT INTO `tbl_clue` VALUES ('56', '线索55', '先生', 'asdfgh', '公司55', 'CTO', '55@qq.com', '55xxxxxxxx', 'www.55.com', '0550-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述55', '联系纪要55', '2022-03-05 12:37:09', '地区55');
INSERT INTO `tbl_clue` VALUES ('57', '线索56', '先生', 'asdfgh', '公司56', 'CTO', '56@qq.com', '56xxxxxxxx', 'www.56.com', '0560-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述56', '联系纪要56', '2022-03-05 12:37:09', '地区56');
INSERT INTO `tbl_clue` VALUES ('58', '线索57', '先生', 'asdfgh', '公司57', 'CTO', '57@qq.com', '57xxxxxxxx', 'www.57.com', '0570-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述57', '联系纪要57', '2022-03-05 12:37:09', '地区57');
INSERT INTO `tbl_clue` VALUES ('59', '线索58', '先生', 'asdfgh', '公司58', 'CTO', '58@qq.com', '58xxxxxxxx', 'www.58.com', '0580-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述58', '联系纪要58', '2022-03-05 12:37:09', '地区58');
INSERT INTO `tbl_clue` VALUES ('60', '线索59', '先生', 'asdfgh', '公司59', 'CTO', '59@qq.com', '59xxxxxxxx', 'www.59.com', '0590-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述59', '联系纪要59', '2022-03-05 12:37:09', '地区59');
INSERT INTO `tbl_clue` VALUES ('61', '线索60', '先生', 'asdfgh', '公司60', 'CTO', '60@qq.com', '60xxxxxxxx', 'www.60.com', '0600-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述60', '联系纪要60', '2022-03-05 12:37:09', '地区60');
INSERT INTO `tbl_clue` VALUES ('62', '线索61', '先生', 'asdfgh', '公司61', 'CTO', '61@qq.com', '61xxxxxxxx', 'www.61.com', '0610-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述61', '联系纪要61', '2022-03-05 12:37:09', '地区61');
INSERT INTO `tbl_clue` VALUES ('63', '线索62', '先生', 'asdfgh', '公司62', 'CTO', '62@qq.com', '62xxxxxxxx', 'www.62.com', '0620-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述62', '联系纪要62', '2022-03-05 12:37:09', '地区62');
INSERT INTO `tbl_clue` VALUES ('64', '线索63', '先生', 'asdfgh', '公司63', 'CTO', '63@qq.com', '63xxxxxxxx', 'www.63.com', '0630-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述63', '联系纪要63', '2022-03-05 12:37:09', '地区63');
INSERT INTO `tbl_clue` VALUES ('65', '线索64', '先生', 'asdfgh', '公司64', 'CTO', '64@qq.com', '64xxxxxxxx', 'www.64.com', '0640-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述64', '联系纪要64', '2022-03-05 12:37:09', '地区64');
INSERT INTO `tbl_clue` VALUES ('66', '线索65', '先生', 'asdfgh', '公司65', 'CTO', '65@qq.com', '65xxxxxxxx', 'www.65.com', '0650-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述65', '联系纪要65', '2022-03-05 12:37:09', '地区65');
INSERT INTO `tbl_clue` VALUES ('67', '线索66', '先生', 'asdfgh', '公司66', 'CTO', '66@qq.com', '66xxxxxxxx', 'www.66.com', '0660-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述66', '联系纪要66', '2022-03-05 12:37:09', '地区66');
INSERT INTO `tbl_clue` VALUES ('68', '线索67', '先生', 'asdfgh', '公司67', 'CTO', '67@qq.com', '67xxxxxxxx', 'www.67.com', '0670-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述67', '联系纪要67', '2022-03-05 12:37:09', '地区67');
INSERT INTO `tbl_clue` VALUES ('69', '线索68', '先生', 'asdfgh', '公司68', 'CTO', '68@qq.com', '68xxxxxxxx', 'www.68.com', '0680-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述68', '联系纪要68', '2022-03-05 12:37:09', '地区68');
INSERT INTO `tbl_clue` VALUES ('70', '线索69', '先生', 'asdfgh', '公司69', 'CTO', '69@qq.com', '69xxxxxxxx', 'www.69.com', '0690-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述69', '联系纪要69', '2022-03-05 12:37:09', '地区69');
INSERT INTO `tbl_clue` VALUES ('71', '线索70', '先生', 'asdfgh', '公司70', 'CTO', '70@qq.com', '70xxxxxxxx', 'www.70.com', '0700-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述70', '联系纪要70', '2022-03-05 12:37:09', '地区70');
INSERT INTO `tbl_clue` VALUES ('72', '线索71', '先生', 'asdfgh', '公司71', 'CTO', '71@qq.com', '71xxxxxxxx', 'www.71.com', '0710-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述71', '联系纪要71', '2022-03-05 12:37:09', '地区71');
INSERT INTO `tbl_clue` VALUES ('73', '线索72', '先生', 'asdfgh', '公司72', 'CTO', '72@qq.com', '72xxxxxxxx', 'www.72.com', '0720-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述72', '联系纪要72', '2022-03-05 12:37:09', '地区72');
INSERT INTO `tbl_clue` VALUES ('74', '线索73', '先生', 'asdfgh', '公司73', 'CTO', '73@qq.com', '73xxxxxxxx', 'www.73.com', '0730-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述73', '联系纪要73', '2022-03-05 12:37:09', '地区73');
INSERT INTO `tbl_clue` VALUES ('75', '线索74', '先生', 'asdfgh', '公司74', 'CTO', '74@qq.com', '74xxxxxxxx', 'www.74.com', '0740-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述74', '联系纪要74', '2022-03-05 12:37:09', '地区74');
INSERT INTO `tbl_clue` VALUES ('76', '线索75', '先生', 'asdfgh', '公司75', 'CTO', '75@qq.com', '75xxxxxxxx', 'www.75.com', '0750-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述75', '联系纪要75', '2022-03-05 12:37:09', '地区75');
INSERT INTO `tbl_clue` VALUES ('77', '线索76', '先生', 'asdfgh', '公司76', 'CTO', '76@qq.com', '76xxxxxxxx', 'www.76.com', '0760-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述76', '联系纪要76', '2022-03-05 12:37:09', '地区76');
INSERT INTO `tbl_clue` VALUES ('78', '线索77', '先生', 'asdfgh', '公司77', 'CTO', '77@qq.com', '77xxxxxxxx', 'www.77.com', '0770-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述77', '联系纪要77', '2022-03-05 12:37:09', '地区77');
INSERT INTO `tbl_clue` VALUES ('79', '线索78', '先生', 'asdfgh', '公司78', 'CTO', '78@qq.com', '78xxxxxxxx', 'www.78.com', '0780-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述78', '联系纪要78', '2022-03-05 12:37:09', '地区78');
INSERT INTO `tbl_clue` VALUES ('80', '线索79', '先生', 'asdfgh', '公司79', 'CTO', '79@qq.com', '79xxxxxxxx', 'www.79.com', '0790-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述79', '联系纪要79', '2022-03-05 12:37:09', '地区79');
INSERT INTO `tbl_clue` VALUES ('81', '线索80', '先生', 'asdfgh', '公司80', 'CTO', '80@qq.com', '80xxxxxxxx', 'www.80.com', '0800-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述80', '联系纪要80', '2022-03-05 12:37:09', '地区80');
INSERT INTO `tbl_clue` VALUES ('82', '线索81', '先生', 'asdfgh', '公司81', 'CTO', '81@qq.com', '81xxxxxxxx', 'www.81.com', '0810-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述81', '联系纪要81', '2022-03-05 12:37:09', '地区81');
INSERT INTO `tbl_clue` VALUES ('83', '线索82', '先生', 'asdfgh', '公司82', 'CTO', '82@qq.com', '82xxxxxxxx', 'www.82.com', '0820-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述82', '联系纪要82', '2022-03-05 12:37:09', '地区82');
INSERT INTO `tbl_clue` VALUES ('84', '线索83', '先生', 'asdfgh', '公司83', 'CTO', '83@qq.com', '83xxxxxxxx', 'www.83.com', '0830-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述83', '联系纪要83', '2022-03-05 12:37:09', '地区83');
INSERT INTO `tbl_clue` VALUES ('85', '线索84', '先生', 'asdfgh', '公司84', 'CTO', '84@qq.com', '84xxxxxxxx', 'www.84.com', '0840-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述84', '联系纪要84', '2022-03-05 12:37:09', '地区84');
INSERT INTO `tbl_clue` VALUES ('86', '线索85', '先生', 'asdfgh', '公司85', 'CTO', '85@qq.com', '85xxxxxxxx', 'www.85.com', '0850-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述85', '联系纪要85', '2022-03-05 12:37:09', '地区85');
INSERT INTO `tbl_clue` VALUES ('87', '线索86', '先生', 'asdfgh', '公司86', 'CTO', '86@qq.com', '86xxxxxxxx', 'www.86.com', '0860-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述86', '联系纪要86', '2022-03-05 12:37:09', '地区86');
INSERT INTO `tbl_clue` VALUES ('88', '线索87', '先生', 'asdfgh', '公司87', 'CTO', '87@qq.com', '87xxxxxxxx', 'www.87.com', '0870-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述87', '联系纪要87', '2022-03-05 12:37:09', '地区87');
INSERT INTO `tbl_clue` VALUES ('89', '线索88', '先生', 'asdfgh', '公司88', 'CTO', '88@qq.com', '88xxxxxxxx', 'www.88.com', '0880-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述88', '联系纪要88', '2022-03-05 12:37:09', '地区88');
INSERT INTO `tbl_clue` VALUES ('90', '线索89', '先生', 'asdfgh', '公司89', 'CTO', '89@qq.com', '89xxxxxxxx', 'www.89.com', '0890-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述89', '联系纪要89', '2022-03-05 12:37:09', '地区89');
INSERT INTO `tbl_clue` VALUES ('91', '线索90', '先生', 'asdfgh', '公司90', 'CTO', '90@qq.com', '90xxxxxxxx', 'www.90.com', '0900-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述90', '联系纪要90', '2022-03-05 12:37:09', '地区90');
INSERT INTO `tbl_clue` VALUES ('92', '线索91', '先生', 'asdfgh', '公司91', 'CTO', '91@qq.com', '91xxxxxxxx', 'www.91.com', '0910-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述91', '联系纪要91', '2022-03-05 12:37:09', '地区91');
INSERT INTO `tbl_clue` VALUES ('93', '线索92', '先生', 'asdfgh', '公司92', 'CTO', '92@qq.com', '92xxxxxxxx', 'www.92.com', '0920-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述92', '联系纪要92', '2022-03-05 12:37:09', '地区92');
INSERT INTO `tbl_clue` VALUES ('94', '线索93', '先生', 'asdfgh', '公司93', 'CTO', '93@qq.com', '93xxxxxxxx', 'www.93.com', '0930-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述93', '联系纪要93', '2022-03-05 12:37:09', '地区93');
INSERT INTO `tbl_clue` VALUES ('95', '线索94', '先生', 'asdfgh', '公司94', 'CTO', '94@qq.com', '94xxxxxxxx', 'www.94.com', '0940-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述94', '联系纪要94', '2022-03-05 12:37:09', '地区94');
INSERT INTO `tbl_clue` VALUES ('96', '线索95', '先生', 'asdfgh', '公司95', 'CTO', '95@qq.com', '95xxxxxxxx', 'www.95.com', '0950-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述95', '联系纪要95', '2022-03-05 12:37:09', '地区95');
INSERT INTO `tbl_clue` VALUES ('97', '线索96', '先生', 'asdfgh', '公司96', 'CTO', '96@qq.com', '96xxxxxxxx', 'www.96.com', '0960-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述96', '联系纪要96', '2022-03-05 12:37:09', '地区96');
INSERT INTO `tbl_clue` VALUES ('98', '线索97', '先生', 'asdfgh', '公司97', 'CTO', '97@qq.com', '97xxxxxxxx', 'www.97.com', '0970-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述97', '联系纪要97', '2022-03-05 12:37:09', '地区97');
INSERT INTO `tbl_clue` VALUES ('99', '线索98', '先生', 'asdfgh', '公司98', 'CTO', '98@qq.com', '98xxxxxxxx', 'www.98.com', '0980-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述98', '联系纪要98', '2022-03-05 12:37:09', '地区98');
INSERT INTO `tbl_clue` VALUES ('100', '线索99', '先生', 'asdfgh', '公司99', 'CTO', '99@qq.com', '99xxxxxxxx', 'www.99.com', '0990-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述99', '联系纪要99', '2022-03-05 12:37:09', '地区99');
INSERT INTO `tbl_clue` VALUES ('101', '线索100', '先生', 'asdfgh', '公司100', 'CTO', '100@qq.com', '100xxxxxxxx', 'www.100.com', '01000-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述100', '联系纪要100', '2022-03-05 12:37:09', '地区100');
INSERT INTO `tbl_clue` VALUES ('102', '线索101', '先生', 'asdfgh', '公司101', 'CTO', '101@qq.com', '101xxxxxxxx', 'www.101.com', '01010-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述101', '联系纪要101', '2022-03-05 12:37:09', '地区101');
INSERT INTO `tbl_clue` VALUES ('103', '线索102', '先生', 'asdfgh', '公司102', 'CTO', '102@qq.com', '102xxxxxxxx', 'www.102.com', '01020-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述102', '联系纪要102', '2022-03-05 12:37:09', '地区102');
INSERT INTO `tbl_clue` VALUES ('104', '线索103', '先生', 'asdfgh', '公司103', 'CTO', '103@qq.com', '103xxxxxxxx', 'www.103.com', '01030-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述103', '联系纪要103', '2022-03-05 12:37:09', '地区103');
INSERT INTO `tbl_clue` VALUES ('105', '线索104', '先生', 'asdfgh', '公司104', 'CTO', '104@qq.com', '104xxxxxxxx', 'www.104.com', '01040-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述104', '联系纪要104', '2022-03-05 12:37:09', '地区104');
INSERT INTO `tbl_clue` VALUES ('106', '线索105', '先生', 'asdfgh', '公司105', 'CTO', '105@qq.com', '105xxxxxxxx', 'www.105.com', '01050-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述105', '联系纪要105', '2022-03-05 12:37:09', '地区105');
INSERT INTO `tbl_clue` VALUES ('107', '线索106', '先生', 'asdfgh', '公司106', 'CTO', '106@qq.com', '106xxxxxxxx', 'www.106.com', '01060-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述106', '联系纪要106', '2022-03-05 12:37:09', '地区106');
INSERT INTO `tbl_clue` VALUES ('108', '线索107', '先生', 'asdfgh', '公司107', 'CTO', '107@qq.com', '107xxxxxxxx', 'www.107.com', '01070-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述107', '联系纪要107', '2022-03-05 12:37:09', '地区107');
INSERT INTO `tbl_clue` VALUES ('109', '线索108', '先生', 'asdfgh', '公司108', 'CTO', '108@qq.com', '108xxxxxxxx', 'www.108.com', '01080-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述108', '联系纪要108', '2022-03-05 12:37:09', '地区108');
INSERT INTO `tbl_clue` VALUES ('110', '线索109', '先生', 'asdfgh', '公司109', 'CTO', '109@qq.com', '109xxxxxxxx', 'www.109.com', '01090-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述109', '联系纪要109', '2022-03-05 12:37:09', '地区109');
INSERT INTO `tbl_clue` VALUES ('111', '线索110', '先生', 'asdfgh', '公司110', 'CTO', '110@qq.com', '110xxxxxxxx', 'www.110.com', '01100-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述110', '联系纪要110', '2022-03-05 12:37:09', '地区110');
INSERT INTO `tbl_clue` VALUES ('112', '线索111', '先生', 'asdfgh', '公司111', 'CTO', '111@qq.com', '111xxxxxxxx', 'www.111.com', '01110-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述111', '联系纪要111', '2022-03-05 12:37:09', '地区111');
INSERT INTO `tbl_clue` VALUES ('113', '线索112', '先生', 'asdfgh', '公司112', 'CTO', '112@qq.com', '112xxxxxxxx', 'www.112.com', '01120-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述112', '联系纪要112', '2022-03-05 12:37:09', '地区112');
INSERT INTO `tbl_clue` VALUES ('114', '线索113', '先生', 'asdfgh', '公司113', 'CTO', '113@qq.com', '113xxxxxxxx', 'www.113.com', '01130-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述113', '联系纪要113', '2022-03-05 12:37:09', '地区113');
INSERT INTO `tbl_clue` VALUES ('115', '线索114', '先生', 'asdfgh', '公司114', 'CTO', '114@qq.com', '114xxxxxxxx', 'www.114.com', '01140-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述114', '联系纪要114', '2022-03-05 12:37:09', '地区114');
INSERT INTO `tbl_clue` VALUES ('116', '线索115', '先生', 'asdfgh', '公司115', 'CTO', '115@qq.com', '115xxxxxxxx', 'www.115.com', '01150-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述115', '联系纪要115', '2022-03-05 12:37:09', '地区115');
INSERT INTO `tbl_clue` VALUES ('117', '线索116', '先生', 'asdfgh', '公司116', 'CTO', '116@qq.com', '116xxxxxxxx', 'www.116.com', '01160-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述116', '联系纪要116', '2022-03-05 12:37:09', '地区116');
INSERT INTO `tbl_clue` VALUES ('118', '线索117', '先生', 'asdfgh', '公司117', 'CTO', '117@qq.com', '117xxxxxxxx', 'www.117.com', '01170-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述117', '联系纪要117', '2022-03-05 12:37:09', '地区117');
INSERT INTO `tbl_clue` VALUES ('119', '线索118', '先生', 'asdfgh', '公司118', 'CTO', '118@qq.com', '118xxxxxxxx', 'www.118.com', '01180-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述118', '联系纪要118', '2022-03-05 12:37:09', '地区118');
INSERT INTO `tbl_clue` VALUES ('120', '线索119', '先生', 'asdfgh', '公司119', 'CTO', '119@qq.com', '119xxxxxxxx', 'www.119.com', '01190-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述119', '联系纪要119', '2022-03-05 12:37:09', '地区119');
INSERT INTO `tbl_clue` VALUES ('121', '线索120', '先生', 'asdfgh', '公司120', 'CTO', '120@qq.com', '120xxxxxxxx', 'www.120.com', '01200-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述120', '联系纪要120', '2022-03-05 12:37:09', '地区120');
INSERT INTO `tbl_clue` VALUES ('122', '线索121', '先生', 'asdfgh', '公司121', 'CTO', '121@qq.com', '121xxxxxxxx', 'www.121.com', '01210-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述121', '联系纪要121', '2022-03-05 12:37:09', '地区121');
INSERT INTO `tbl_clue` VALUES ('123', '线索122', '先生', 'asdfgh', '公司122', 'CTO', '122@qq.com', '122xxxxxxxx', 'www.122.com', '01220-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述122', '联系纪要122', '2022-03-05 12:37:09', '地区122');
INSERT INTO `tbl_clue` VALUES ('124', '线索123', '先生', 'asdfgh', '公司123', 'CTO', '123@qq.com', '123xxxxxxxx', 'www.123.com', '01230-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述123', '联系纪要123', '2022-03-05 12:37:09', '地区123');
INSERT INTO `tbl_clue` VALUES ('125', '线索124', '先生', 'asdfgh', '公司124', 'CTO', '124@qq.com', '124xxxxxxxx', 'www.124.com', '01240-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述124', '联系纪要124', '2022-03-05 12:37:09', '地区124');
INSERT INTO `tbl_clue` VALUES ('126', '线索125', '先生', 'asdfgh', '公司125', 'CTO', '125@qq.com', '125xxxxxxxx', 'www.125.com', '01250-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述125', '联系纪要125', '2022-03-05 12:37:09', '地区125');
INSERT INTO `tbl_clue` VALUES ('127', '线索126', '先生', 'asdfgh', '公司126', 'CTO', '126@qq.com', '126xxxxxxxx', 'www.126.com', '01260-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述126', '联系纪要126', '2022-03-05 12:37:09', '地区126');
INSERT INTO `tbl_clue` VALUES ('128', '线索127', '先生', 'asdfgh', '公司127', 'CTO', '127@qq.com', '127xxxxxxxx', 'www.127.com', '01270-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述127', '联系纪要127', '2022-03-05 12:37:09', '地区127');
INSERT INTO `tbl_clue` VALUES ('129', '线索128', '先生', 'asdfgh', '公司128', 'CTO', '128@qq.com', '128xxxxxxxx', 'www.128.com', '01280-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述128', '联系纪要128', '2022-03-05 12:37:09', '地区128');
INSERT INTO `tbl_clue` VALUES ('130', '线索129', '先生', 'asdfgh', '公司129', 'CTO', '129@qq.com', '129xxxxxxxx', 'www.129.com', '01290-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述129', '联系纪要129', '2022-03-05 12:37:09', '地区129');
INSERT INTO `tbl_clue` VALUES ('131', '线索130', '先生', 'asdfgh', '公司130', 'CTO', '130@qq.com', '130xxxxxxxx', 'www.130.com', '01300-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述130', '联系纪要130', '2022-03-05 12:37:09', '地区130');
INSERT INTO `tbl_clue` VALUES ('132', '线索131', '先生', 'asdfgh', '公司131', 'CTO', '131@qq.com', '131xxxxxxxx', 'www.131.com', '01310-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述131', '联系纪要131', '2022-03-05 12:37:09', '地区131');
INSERT INTO `tbl_clue` VALUES ('133', '线索132', '先生', 'asdfgh', '公司132', 'CTO', '132@qq.com', '132xxxxxxxx', 'www.132.com', '01320-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述132', '联系纪要132', '2022-03-05 12:37:09', '地区132');
INSERT INTO `tbl_clue` VALUES ('134', '线索133', '先生', 'asdfgh', '公司133', 'CTO', '133@qq.com', '133xxxxxxxx', 'www.133.com', '01330-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述133', '联系纪要133', '2022-03-05 12:37:09', '地区133');
INSERT INTO `tbl_clue` VALUES ('135', '线索134', '先生', 'asdfgh', '公司134', 'CTO', '134@qq.com', '134xxxxxxxx', 'www.134.com', '01340-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述134', '联系纪要134', '2022-03-05 12:37:09', '地区134');
INSERT INTO `tbl_clue` VALUES ('136', '线索135', '先生', 'asdfgh', '公司135', 'CTO', '135@qq.com', '135xxxxxxxx', 'www.135.com', '01350-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述135', '联系纪要135', '2022-03-05 12:37:09', '地区135');
INSERT INTO `tbl_clue` VALUES ('137', '线索136', '先生', 'asdfgh', '公司136', 'CTO', '136@qq.com', '136xxxxxxxx', 'www.136.com', '01360-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述136', '联系纪要136', '2022-03-05 12:37:09', '地区136');
INSERT INTO `tbl_clue` VALUES ('138', '线索137', '先生', 'asdfgh', '公司137', 'CTO', '137@qq.com', '137xxxxxxxx', 'www.137.com', '01370-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述137', '联系纪要137', '2022-03-05 12:37:09', '地区137');
INSERT INTO `tbl_clue` VALUES ('139', '线索138', '先生', 'asdfgh', '公司138', 'CTO', '138@qq.com', '138xxxxxxxx', 'www.138.com', '01380-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述138', '联系纪要138', '2022-03-05 12:37:09', '地区138');
INSERT INTO `tbl_clue` VALUES ('140', '线索139', '先生', 'asdfgh', '公司139', 'CTO', '139@qq.com', '139xxxxxxxx', 'www.139.com', '01390-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述139', '联系纪要139', '2022-03-05 12:37:09', '地区139');
INSERT INTO `tbl_clue` VALUES ('141', '线索140', '先生', 'asdfgh', '公司140', 'CTO', '140@qq.com', '140xxxxxxxx', 'www.140.com', '01400-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述140', '联系纪要140', '2022-03-05 12:37:09', '地区140');
INSERT INTO `tbl_clue` VALUES ('142', '线索141', '先生', 'asdfgh', '公司141', 'CTO', '141@qq.com', '141xxxxxxxx', 'www.141.com', '01410-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述141', '联系纪要141', '2022-03-05 12:37:09', '地区141');
INSERT INTO `tbl_clue` VALUES ('143', '线索142', '先生', 'asdfgh', '公司142', 'CTO', '142@qq.com', '142xxxxxxxx', 'www.142.com', '01420-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述142', '联系纪要142', '2022-03-05 12:37:09', '地区142');
INSERT INTO `tbl_clue` VALUES ('144', '线索143', '先生', 'asdfgh', '公司143', 'CTO', '143@qq.com', '143xxxxxxxx', 'www.143.com', '01430-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述143', '联系纪要143', '2022-03-05 12:37:09', '地区143');
INSERT INTO `tbl_clue` VALUES ('145', '线索144', '先生', 'asdfgh', '公司144', 'CTO', '144@qq.com', '144xxxxxxxx', 'www.144.com', '01440-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述144', '联系纪要144', '2022-03-05 12:37:09', '地区144');
INSERT INTO `tbl_clue` VALUES ('146', '线索145', '先生', 'asdfgh', '公司145', 'CTO', '145@qq.com', '145xxxxxxxx', 'www.145.com', '01450-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述145', '联系纪要145', '2022-03-05 12:37:09', '地区145');
INSERT INTO `tbl_clue` VALUES ('147', '线索146', '先生', 'asdfgh', '公司146', 'CTO', '146@qq.com', '146xxxxxxxx', 'www.146.com', '01460-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述146', '联系纪要146', '2022-03-05 12:37:09', '地区146');
INSERT INTO `tbl_clue` VALUES ('148', '线索147', '先生', 'asdfgh', '公司147', 'CTO', '147@qq.com', '147xxxxxxxx', 'www.147.com', '01470-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述147', '联系纪要147', '2022-03-05 12:37:09', '地区147');
INSERT INTO `tbl_clue` VALUES ('149', '线索148', '先生', 'asdfgh', '公司148', 'CTO', '148@qq.com', '148xxxxxxxx', 'www.148.com', '01480-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述148', '联系纪要148', '2022-03-05 12:37:09', '地区148');
INSERT INTO `tbl_clue` VALUES ('150', '线索149', '先生', 'asdfgh', '公司149', 'CTO', '149@qq.com', '149xxxxxxxx', 'www.149.com', '01490-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述149', '联系纪要149', '2022-03-05 12:37:09', '地区149');
INSERT INTO `tbl_clue` VALUES ('151', '线索150', '先生', 'asdfgh', '公司150', 'CTO', '150@qq.com', '150xxxxxxxx', 'www.150.com', '01500-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述150', '联系纪要150', '2022-03-05 12:37:09', '地区150');
INSERT INTO `tbl_clue` VALUES ('152', '线索151', '先生', 'asdfgh', '公司151', 'CTO', '151@qq.com', '151xxxxxxxx', 'www.151.com', '01510-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述151', '联系纪要151', '2022-03-05 12:37:09', '地区151');
INSERT INTO `tbl_clue` VALUES ('153', '线索152', '先生', 'asdfgh', '公司152', 'CTO', '152@qq.com', '152xxxxxxxx', 'www.152.com', '01520-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述152', '联系纪要152', '2022-03-05 12:37:09', '地区152');
INSERT INTO `tbl_clue` VALUES ('154', '线索153', '先生', 'asdfgh', '公司153', 'CTO', '153@qq.com', '153xxxxxxxx', 'www.153.com', '01530-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述153', '联系纪要153', '2022-03-05 12:37:09', '地区153');
INSERT INTO `tbl_clue` VALUES ('155', '线索154', '先生', 'asdfgh', '公司154', 'CTO', '154@qq.com', '154xxxxxxxx', 'www.154.com', '01540-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述154', '联系纪要154', '2022-03-05 12:37:09', '地区154');
INSERT INTO `tbl_clue` VALUES ('156', '线索155', '先生', 'asdfgh', '公司155', 'CTO', '155@qq.com', '155xxxxxxxx', 'www.155.com', '01550-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述155', '联系纪要155', '2022-03-05 12:37:09', '地区155');
INSERT INTO `tbl_clue` VALUES ('157', '线索156', '先生', 'asdfgh', '公司156', 'CTO', '156@qq.com', '156xxxxxxxx', 'www.156.com', '01560-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述156', '联系纪要156', '2022-03-05 12:37:09', '地区156');
INSERT INTO `tbl_clue` VALUES ('158', '线索157', '先生', 'asdfgh', '公司157', 'CTO', '157@qq.com', '157xxxxxxxx', 'www.157.com', '01570-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述157', '联系纪要157', '2022-03-05 12:37:09', '地区157');
INSERT INTO `tbl_clue` VALUES ('159', '线索158', '先生', 'asdfgh', '公司158', 'CTO', '158@qq.com', '158xxxxxxxx', 'www.158.com', '01580-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述158', '联系纪要158', '2022-03-05 12:37:09', '地区158');
INSERT INTO `tbl_clue` VALUES ('160', '线索159', '先生', 'asdfgh', '公司159', 'CTO', '159@qq.com', '159xxxxxxxx', 'www.159.com', '01590-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述159', '联系纪要159', '2022-03-05 12:37:09', '地区159');
INSERT INTO `tbl_clue` VALUES ('161', '线索160', '先生', 'asdfgh', '公司160', 'CTO', '160@qq.com', '160xxxxxxxx', 'www.160.com', '01600-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述160', '联系纪要160', '2022-03-05 12:37:09', '地区160');
INSERT INTO `tbl_clue` VALUES ('162', '线索161', '先生', 'asdfgh', '公司161', 'CTO', '161@qq.com', '161xxxxxxxx', 'www.161.com', '01610-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述161', '联系纪要161', '2022-03-05 12:37:09', '地区161');
INSERT INTO `tbl_clue` VALUES ('163', '线索162', '先生', 'asdfgh', '公司162', 'CTO', '162@qq.com', '162xxxxxxxx', 'www.162.com', '01620-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述162', '联系纪要162', '2022-03-05 12:37:09', '地区162');
INSERT INTO `tbl_clue` VALUES ('164', '线索163', '先生', 'asdfgh', '公司163', 'CTO', '163@qq.com', '163xxxxxxxx', 'www.163.com', '01630-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述163', '联系纪要163', '2022-03-05 12:37:09', '地区163');
INSERT INTO `tbl_clue` VALUES ('165', '线索164', '先生', 'asdfgh', '公司164', 'CTO', '164@qq.com', '164xxxxxxxx', 'www.164.com', '01640-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述164', '联系纪要164', '2022-03-05 12:37:09', '地区164');
INSERT INTO `tbl_clue` VALUES ('166', '线索165', '先生', 'asdfgh', '公司165', 'CTO', '165@qq.com', '165xxxxxxxx', 'www.165.com', '01650-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述165', '联系纪要165', '2022-03-05 12:37:09', '地区165');
INSERT INTO `tbl_clue` VALUES ('167', '线索166', '先生', 'asdfgh', '公司166', 'CTO', '166@qq.com', '166xxxxxxxx', 'www.166.com', '01660-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述166', '联系纪要166', '2022-03-05 12:37:09', '地区166');
INSERT INTO `tbl_clue` VALUES ('168', '线索167', '先生', 'asdfgh', '公司167', 'CTO', '167@qq.com', '167xxxxxxxx', 'www.167.com', '01670-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述167', '联系纪要167', '2022-03-05 12:37:09', '地区167');
INSERT INTO `tbl_clue` VALUES ('169', '线索168', '先生', 'asdfgh', '公司168', 'CTO', '168@qq.com', '168xxxxxxxx', 'www.168.com', '01680-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述168', '联系纪要168', '2022-03-05 12:37:09', '地区168');
INSERT INTO `tbl_clue` VALUES ('170', '线索169', '先生', 'asdfgh', '公司169', 'CTO', '169@qq.com', '169xxxxxxxx', 'www.169.com', '01690-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述169', '联系纪要169', '2022-03-05 12:37:09', '地区169');
INSERT INTO `tbl_clue` VALUES ('171', '线索170', '先生', 'asdfgh', '公司170', 'CTO', '170@qq.com', '170xxxxxxxx', 'www.170.com', '01700-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述170', '联系纪要170', '2022-03-05 12:37:09', '地区170');
INSERT INTO `tbl_clue` VALUES ('172', '线索171', '先生', 'asdfgh', '公司171', 'CTO', '171@qq.com', '171xxxxxxxx', 'www.171.com', '01710-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述171', '联系纪要171', '2022-03-05 12:37:09', '地区171');
INSERT INTO `tbl_clue` VALUES ('173', '线索172', '先生', 'asdfgh', '公司172', 'CTO', '172@qq.com', '172xxxxxxxx', 'www.172.com', '01720-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述172', '联系纪要172', '2022-03-05 12:37:09', '地区172');
INSERT INTO `tbl_clue` VALUES ('174', '线索173', '先生', 'asdfgh', '公司173', 'CTO', '173@qq.com', '173xxxxxxxx', 'www.173.com', '01730-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述173', '联系纪要173', '2022-03-05 12:37:09', '地区173');
INSERT INTO `tbl_clue` VALUES ('175', '线索174', '先生', 'asdfgh', '公司174', 'CTO', '174@qq.com', '174xxxxxxxx', 'www.174.com', '01740-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述174', '联系纪要174', '2022-03-05 12:37:09', '地区174');
INSERT INTO `tbl_clue` VALUES ('176', '线索175', '先生', 'asdfgh', '公司175', 'CTO', '175@qq.com', '175xxxxxxxx', 'www.175.com', '01750-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述175', '联系纪要175', '2022-03-05 12:37:09', '地区175');
INSERT INTO `tbl_clue` VALUES ('177', '线索176', '先生', 'asdfgh', '公司176', 'CTO', '176@qq.com', '176xxxxxxxx', 'www.176.com', '01760-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述176', '联系纪要176', '2022-03-05 12:37:09', '地区176');
INSERT INTO `tbl_clue` VALUES ('178', '线索177', '先生', 'asdfgh', '公司177', 'CTO', '177@qq.com', '177xxxxxxxx', 'www.177.com', '01770-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述177', '联系纪要177', '2022-03-05 12:37:09', '地区177');
INSERT INTO `tbl_clue` VALUES ('179', '线索178', '先生', 'asdfgh', '公司178', 'CTO', '178@qq.com', '178xxxxxxxx', 'www.178.com', '01780-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述178', '联系纪要178', '2022-03-05 12:37:09', '地区178');
INSERT INTO `tbl_clue` VALUES ('180', '线索179', '先生', 'asdfgh', '公司179', 'CTO', '179@qq.com', '179xxxxxxxx', 'www.179.com', '01790-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述179', '联系纪要179', '2022-03-05 12:37:09', '地区179');
INSERT INTO `tbl_clue` VALUES ('181', '线索180', '先生', 'asdfgh', '公司180', 'CTO', '180@qq.com', '180xxxxxxxx', 'www.180.com', '01800-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述180', '联系纪要180', '2022-03-05 12:37:09', '地区180');
INSERT INTO `tbl_clue` VALUES ('182', '线索181', '先生', 'asdfgh', '公司181', 'CTO', '181@qq.com', '181xxxxxxxx', 'www.181.com', '01810-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述181', '联系纪要181', '2022-03-05 12:37:09', '地区181');
INSERT INTO `tbl_clue` VALUES ('183', '线索182', '先生', 'asdfgh', '公司182', 'CTO', '182@qq.com', '182xxxxxxxx', 'www.182.com', '01820-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述182', '联系纪要182', '2022-03-05 12:37:09', '地区182');
INSERT INTO `tbl_clue` VALUES ('184', '线索183', '先生', 'asdfgh', '公司183', 'CTO', '183@qq.com', '183xxxxxxxx', 'www.183.com', '01830-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述183', '联系纪要183', '2022-03-05 12:37:09', '地区183');
INSERT INTO `tbl_clue` VALUES ('185', '线索184', '先生', 'asdfgh', '公司184', 'CTO', '184@qq.com', '184xxxxxxxx', 'www.184.com', '01840-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述184', '联系纪要184', '2022-03-05 12:37:09', '地区184');
INSERT INTO `tbl_clue` VALUES ('186', '线索185', '先生', 'asdfgh', '公司185', 'CTO', '185@qq.com', '185xxxxxxxx', 'www.185.com', '01850-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述185', '联系纪要185', '2022-03-05 12:37:09', '地区185');
INSERT INTO `tbl_clue` VALUES ('187', '线索186', '先生', 'asdfgh', '公司186', 'CTO', '186@qq.com', '186xxxxxxxx', 'www.186.com', '01860-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述186', '联系纪要186', '2022-03-05 12:37:09', '地区186');
INSERT INTO `tbl_clue` VALUES ('188', '线索187', '先生', 'asdfgh', '公司187', 'CTO', '187@qq.com', '187xxxxxxxx', 'www.187.com', '01870-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述187', '联系纪要187', '2022-03-05 12:37:09', '地区187');
INSERT INTO `tbl_clue` VALUES ('189', '线索188', '先生', 'asdfgh', '公司188', 'CTO', '188@qq.com', '188xxxxxxxx', 'www.188.com', '01880-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述188', '联系纪要188', '2022-03-05 12:37:09', '地区188');
INSERT INTO `tbl_clue` VALUES ('190', '线索189', '先生', 'asdfgh', '公司189', 'CTO', '189@qq.com', '189xxxxxxxx', 'www.189.com', '01890-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述189', '联系纪要189', '2022-03-05 12:37:09', '地区189');
INSERT INTO `tbl_clue` VALUES ('191', '线索190', '先生', 'asdfgh', '公司190', 'CTO', '190@qq.com', '190xxxxxxxx', 'www.190.com', '01900-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述190', '联系纪要190', '2022-03-05 12:37:09', '地区190');
INSERT INTO `tbl_clue` VALUES ('192', '线索191', '先生', 'asdfgh', '公司191', 'CTO', '191@qq.com', '191xxxxxxxx', 'www.191.com', '01910-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述191', '联系纪要191', '2022-03-05 12:37:09', '地区191');
INSERT INTO `tbl_clue` VALUES ('193', '线索192', '先生', 'asdfgh', '公司192', 'CTO', '192@qq.com', '192xxxxxxxx', 'www.192.com', '01920-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述192', '联系纪要192', '2022-03-05 12:37:09', '地区192');
INSERT INTO `tbl_clue` VALUES ('194', '线索193', '先生', 'asdfgh', '公司193', 'CTO', '193@qq.com', '193xxxxxxxx', 'www.193.com', '01930-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述193', '联系纪要193', '2022-03-05 12:37:09', '地区193');
INSERT INTO `tbl_clue` VALUES ('195', '线索194', '先生', 'asdfgh', '公司194', 'CTO', '194@qq.com', '194xxxxxxxx', 'www.194.com', '01940-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述194', '联系纪要194', '2022-03-05 12:37:09', '地区194');
INSERT INTO `tbl_clue` VALUES ('196', '线索195', '先生', 'asdfgh', '公司195', 'CTO', '195@qq.com', '195xxxxxxxx', 'www.195.com', '01950-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述195', '联系纪要195', '2022-03-05 12:37:09', '地区195');
INSERT INTO `tbl_clue` VALUES ('197', '线索196', '先生', 'asdfgh', '公司196', 'CTO', '196@qq.com', '196xxxxxxxx', 'www.196.com', '01960-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述196', '联系纪要196', '2022-03-05 12:37:09', '地区196');
INSERT INTO `tbl_clue` VALUES ('198', '线索197', '先生', 'asdfgh', '公司197', 'CTO', '197@qq.com', '197xxxxxxxx', 'www.197.com', '01970-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述197', '联系纪要197', '2022-03-05 12:37:09', '地区197');
INSERT INTO `tbl_clue` VALUES ('199', '线索198', '先生', 'asdfgh', '公司198', 'CTO', '198@qq.com', '198xxxxxxxx', 'www.198.com', '01980-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述198', '联系纪要198', '2022-03-05 12:37:09', '地区198');
INSERT INTO `tbl_clue` VALUES ('200', '线索199', '先生', 'asdfgh', '公司199', 'CTO', '199@qq.com', '199xxxxxxxx', 'www.199.com', '01990-xxxxxx', '联系中', '广告', 'asdfgh', '2022-03-05 12:37:09', null, null, '描述199', '联系纪要199', '2022-03-05 12:37:09', '地区199');

-- ----------------------------
-- Table structure for `tbl_clue_activity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clueId` int DEFAULT NULL,
  `activityId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------
INSERT INTO `tbl_clue_activity_relation` VALUES ('1', '1', '10');
INSERT INTO `tbl_clue_activity_relation` VALUES ('2', '2', '9');
INSERT INTO `tbl_clue_activity_relation` VALUES ('3', '3', '8');
INSERT INTO `tbl_clue_activity_relation` VALUES ('4', '4', '7');
INSERT INTO `tbl_clue_activity_relation` VALUES ('5', '5', '6');
INSERT INTO `tbl_clue_activity_relation` VALUES ('6', '6', '5');

-- ----------------------------
-- Table structure for `tbl_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` char(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------
INSERT INTO `tbl_contacts` VALUES ('1', 'asdfgh', '广告', '0', '李0', '先生', '0@qq.com', '0', '0', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '0', '0', '2022-03-05 12:37:10', '0');
INSERT INTO `tbl_contacts` VALUES ('2', 'asdfgh', '广告', '1', '李1', '先生', '1@qq.com', '1', '1', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '1', '1', '2022-03-05 12:37:10', '1');
INSERT INTO `tbl_contacts` VALUES ('3', 'asdfgh', '广告', '2', '李2', '先生', '2@qq.com', '2', '2', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '2', '2', '2022-03-05 12:37:10', '2');
INSERT INTO `tbl_contacts` VALUES ('4', 'asdfgh', '广告', '3', '李3', '先生', '3@qq.com', '3', '3', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '3', '3', '2022-03-05 12:37:10', '3');
INSERT INTO `tbl_contacts` VALUES ('5', 'asdfgh', '广告', '4', '李4', '先生', '4@qq.com', '4', '4', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '4', '4', '2022-03-05 12:37:10', '4');
INSERT INTO `tbl_contacts` VALUES ('6', 'asdfgh', '广告', '5', '李5', '先生', '5@qq.com', '5', '5', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '5', '5', '2022-03-05 12:37:10', '5');
INSERT INTO `tbl_contacts` VALUES ('7', 'asdfgh', '广告', '6', '李6', '先生', '6@qq.com', '6', '6', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '6', '6', '2022-03-05 12:37:10', '6');
INSERT INTO `tbl_contacts` VALUES ('8', 'asdfgh', '广告', '7', '李7', '先生', '7@qq.com', '7', '7', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '7', '7', '2022-03-05 12:37:10', '7');
INSERT INTO `tbl_contacts` VALUES ('9', 'asdfgh', '广告', '8', '李8', '先生', '8@qq.com', '8', '8', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '8', '8', '2022-03-05 12:37:10', '8');
INSERT INTO `tbl_contacts` VALUES ('10', 'asdfgh', '广告', '9', '李9', '先生', '9@qq.com', '9', '9', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '9', '9', '2022-03-05 12:37:10', '9');
INSERT INTO `tbl_contacts` VALUES ('11', 'asdfgh', '广告', '10', '李10', '先生', '10@qq.com', '10', '10', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '10', '10', '2022-03-05 12:37:10', '10');
INSERT INTO `tbl_contacts` VALUES ('12', 'asdfgh', '广告', '11', '李11', '先生', '11@qq.com', '11', '11', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '11', '11', '2022-03-05 12:37:10', '11');
INSERT INTO `tbl_contacts` VALUES ('13', 'asdfgh', '广告', '12', '李12', '先生', '12@qq.com', '12', '12', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '12', '12', '2022-03-05 12:37:10', '12');
INSERT INTO `tbl_contacts` VALUES ('14', 'asdfgh', '广告', '13', '李13', '先生', '13@qq.com', '13', '13', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '13', '13', '2022-03-05 12:37:10', '13');
INSERT INTO `tbl_contacts` VALUES ('15', 'asdfgh', '广告', '14', '李14', '先生', '14@qq.com', '14', '14', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '14', '14', '2022-03-05 12:37:10', '14');
INSERT INTO `tbl_contacts` VALUES ('16', 'asdfgh', '广告', '15', '李15', '先生', '15@qq.com', '15', '15', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '15', '15', '2022-03-05 12:37:10', '15');
INSERT INTO `tbl_contacts` VALUES ('17', 'asdfgh', '广告', '16', '李16', '先生', '16@qq.com', '16', '16', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '16', '16', '2022-03-05 12:37:10', '16');
INSERT INTO `tbl_contacts` VALUES ('18', 'asdfgh', '广告', '17', '李17', '先生', '17@qq.com', '17', '17', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '17', '17', '2022-03-05 12:37:10', '17');
INSERT INTO `tbl_contacts` VALUES ('19', 'asdfgh', '广告', '18', '李18', '先生', '18@qq.com', '18', '18', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '18', '18', '2022-03-05 12:37:10', '18');
INSERT INTO `tbl_contacts` VALUES ('20', 'asdfgh', '广告', '19', '李19', '先生', '19@qq.com', '19', '19', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '19', '19', '2022-03-05 12:37:10', '19');
INSERT INTO `tbl_contacts` VALUES ('21', 'asdfgh', '广告', '20', '李20', '先生', '20@qq.com', '20', '20', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '20', '20', '2022-03-05 12:37:10', '20');
INSERT INTO `tbl_contacts` VALUES ('22', 'asdfgh', '广告', '21', '李21', '先生', '21@qq.com', '21', '21', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '21', '21', '2022-03-05 12:37:10', '21');
INSERT INTO `tbl_contacts` VALUES ('23', 'asdfgh', '广告', '22', '李22', '先生', '22@qq.com', '22', '22', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '22', '22', '2022-03-05 12:37:10', '22');
INSERT INTO `tbl_contacts` VALUES ('24', 'asdfgh', '广告', '23', '李23', '先生', '23@qq.com', '23', '23', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '23', '23', '2022-03-05 12:37:10', '23');
INSERT INTO `tbl_contacts` VALUES ('25', 'asdfgh', '广告', '24', '李24', '先生', '24@qq.com', '24', '24', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '24', '24', '2022-03-05 12:37:10', '24');
INSERT INTO `tbl_contacts` VALUES ('26', 'asdfgh', '广告', '25', '李25', '先生', '25@qq.com', '25', '25', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '25', '25', '2022-03-05 12:37:10', '25');
INSERT INTO `tbl_contacts` VALUES ('27', 'asdfgh', '广告', '26', '李26', '先生', '26@qq.com', '26', '26', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '26', '26', '2022-03-05 12:37:10', '26');
INSERT INTO `tbl_contacts` VALUES ('28', 'asdfgh', '广告', '27', '李27', '先生', '27@qq.com', '27', '27', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '27', '27', '2022-03-05 12:37:10', '27');
INSERT INTO `tbl_contacts` VALUES ('29', 'asdfgh', '广告', '28', '李28', '先生', '28@qq.com', '28', '28', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '28', '28', '2022-03-05 12:37:10', '28');
INSERT INTO `tbl_contacts` VALUES ('30', 'asdfgh', '广告', '29', '李29', '先生', '29@qq.com', '29', '29', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '29', '29', '2022-03-05 12:37:10', '29');
INSERT INTO `tbl_contacts` VALUES ('31', 'asdfgh', '广告', '30', '李30', '先生', '30@qq.com', '30', '30', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '30', '30', '2022-03-05 12:37:10', '30');
INSERT INTO `tbl_contacts` VALUES ('32', 'asdfgh', '广告', '31', '李31', '先生', '31@qq.com', '31', '31', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '31', '31', '2022-03-05 12:37:10', '31');
INSERT INTO `tbl_contacts` VALUES ('33', 'asdfgh', '广告', '32', '李32', '先生', '32@qq.com', '32', '32', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '32', '32', '2022-03-05 12:37:10', '32');
INSERT INTO `tbl_contacts` VALUES ('34', 'asdfgh', '广告', '33', '李33', '先生', '33@qq.com', '33', '33', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '33', '33', '2022-03-05 12:37:10', '33');
INSERT INTO `tbl_contacts` VALUES ('35', 'asdfgh', '广告', '34', '李34', '先生', '34@qq.com', '34', '34', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '34', '34', '2022-03-05 12:37:10', '34');
INSERT INTO `tbl_contacts` VALUES ('36', 'asdfgh', '广告', '35', '李35', '先生', '35@qq.com', '35', '35', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '35', '35', '2022-03-05 12:37:10', '35');
INSERT INTO `tbl_contacts` VALUES ('37', 'asdfgh', '广告', '36', '李36', '先生', '36@qq.com', '36', '36', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '36', '36', '2022-03-05 12:37:10', '36');
INSERT INTO `tbl_contacts` VALUES ('38', 'asdfgh', '广告', '37', '李37', '先生', '37@qq.com', '37', '37', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '37', '37', '2022-03-05 12:37:10', '37');
INSERT INTO `tbl_contacts` VALUES ('39', 'asdfgh', '广告', '38', '李38', '先生', '38@qq.com', '38', '38', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '38', '38', '2022-03-05 12:37:10', '38');
INSERT INTO `tbl_contacts` VALUES ('40', 'asdfgh', '广告', '39', '李39', '先生', '39@qq.com', '39', '39', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '39', '39', '2022-03-05 12:37:10', '39');
INSERT INTO `tbl_contacts` VALUES ('41', 'asdfgh', '广告', '40', '李40', '先生', '40@qq.com', '40', '40', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '40', '40', '2022-03-05 12:37:10', '40');
INSERT INTO `tbl_contacts` VALUES ('42', 'asdfgh', '广告', '41', '李41', '先生', '41@qq.com', '41', '41', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '41', '41', '2022-03-05 12:37:10', '41');
INSERT INTO `tbl_contacts` VALUES ('43', 'asdfgh', '广告', '42', '李42', '先生', '42@qq.com', '42', '42', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '42', '42', '2022-03-05 12:37:10', '42');
INSERT INTO `tbl_contacts` VALUES ('44', 'asdfgh', '广告', '43', '李43', '先生', '43@qq.com', '43', '43', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '43', '43', '2022-03-05 12:37:10', '43');
INSERT INTO `tbl_contacts` VALUES ('45', 'asdfgh', '广告', '44', '李44', '先生', '44@qq.com', '44', '44', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '44', '44', '2022-03-05 12:37:10', '44');
INSERT INTO `tbl_contacts` VALUES ('46', 'asdfgh', '广告', '45', '李45', '先生', '45@qq.com', '45', '45', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '45', '45', '2022-03-05 12:37:10', '45');
INSERT INTO `tbl_contacts` VALUES ('47', 'asdfgh', '广告', '46', '李46', '先生', '46@qq.com', '46', '46', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '46', '46', '2022-03-05 12:37:10', '46');
INSERT INTO `tbl_contacts` VALUES ('48', 'asdfgh', '广告', '47', '李47', '先生', '47@qq.com', '47', '47', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '47', '47', '2022-03-05 12:37:10', '47');
INSERT INTO `tbl_contacts` VALUES ('49', 'asdfgh', '广告', '48', '李48', '先生', '48@qq.com', '48', '48', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '48', '48', '2022-03-05 12:37:10', '48');
INSERT INTO `tbl_contacts` VALUES ('50', 'asdfgh', '广告', '49', '李49', '先生', '49@qq.com', '49', '49', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '49', '49', '2022-03-05 12:37:10', '49');
INSERT INTO `tbl_contacts` VALUES ('51', 'asdfgh', '广告', '50', '李50', '先生', '50@qq.com', '50', '50', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '50', '50', '2022-03-05 12:37:10', '50');
INSERT INTO `tbl_contacts` VALUES ('52', 'asdfgh', '广告', '51', '李51', '先生', '51@qq.com', '51', '51', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '51', '51', '2022-03-05 12:37:10', '51');
INSERT INTO `tbl_contacts` VALUES ('53', 'asdfgh', '广告', '52', '李52', '先生', '52@qq.com', '52', '52', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '52', '52', '2022-03-05 12:37:10', '52');
INSERT INTO `tbl_contacts` VALUES ('54', 'asdfgh', '广告', '53', '李53', '先生', '53@qq.com', '53', '53', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '53', '53', '2022-03-05 12:37:10', '53');
INSERT INTO `tbl_contacts` VALUES ('55', 'asdfgh', '广告', '54', '李54', '先生', '54@qq.com', '54', '54', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '54', '54', '2022-03-05 12:37:10', '54');
INSERT INTO `tbl_contacts` VALUES ('56', 'asdfgh', '广告', '55', '李55', '先生', '55@qq.com', '55', '55', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '55', '55', '2022-03-05 12:37:10', '55');
INSERT INTO `tbl_contacts` VALUES ('57', 'asdfgh', '广告', '56', '李56', '先生', '56@qq.com', '56', '56', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '56', '56', '2022-03-05 12:37:10', '56');
INSERT INTO `tbl_contacts` VALUES ('58', 'asdfgh', '广告', '57', '李57', '先生', '57@qq.com', '57', '57', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '57', '57', '2022-03-05 12:37:10', '57');
INSERT INTO `tbl_contacts` VALUES ('59', 'asdfgh', '广告', '58', '李58', '先生', '58@qq.com', '58', '58', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '58', '58', '2022-03-05 12:37:10', '58');
INSERT INTO `tbl_contacts` VALUES ('60', 'asdfgh', '广告', '59', '李59', '先生', '59@qq.com', '59', '59', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '59', '59', '2022-03-05 12:37:10', '59');
INSERT INTO `tbl_contacts` VALUES ('61', 'asdfgh', '广告', '60', '李60', '先生', '60@qq.com', '60', '60', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '60', '60', '2022-03-05 12:37:10', '60');
INSERT INTO `tbl_contacts` VALUES ('62', 'asdfgh', '广告', '61', '李61', '先生', '61@qq.com', '61', '61', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '61', '61', '2022-03-05 12:37:10', '61');
INSERT INTO `tbl_contacts` VALUES ('63', 'asdfgh', '广告', '62', '李62', '先生', '62@qq.com', '62', '62', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '62', '62', '2022-03-05 12:37:10', '62');
INSERT INTO `tbl_contacts` VALUES ('64', 'asdfgh', '广告', '63', '李63', '先生', '63@qq.com', '63', '63', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '63', '63', '2022-03-05 12:37:10', '63');
INSERT INTO `tbl_contacts` VALUES ('65', 'asdfgh', '广告', '64', '李64', '先生', '64@qq.com', '64', '64', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '64', '64', '2022-03-05 12:37:10', '64');
INSERT INTO `tbl_contacts` VALUES ('66', 'asdfgh', '广告', '65', '李65', '先生', '65@qq.com', '65', '65', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '65', '65', '2022-03-05 12:37:10', '65');
INSERT INTO `tbl_contacts` VALUES ('67', 'asdfgh', '广告', '66', '李66', '先生', '66@qq.com', '66', '66', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '66', '66', '2022-03-05 12:37:10', '66');
INSERT INTO `tbl_contacts` VALUES ('68', 'asdfgh', '广告', '67', '李67', '先生', '67@qq.com', '67', '67', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '67', '67', '2022-03-05 12:37:10', '67');
INSERT INTO `tbl_contacts` VALUES ('69', 'asdfgh', '广告', '68', '李68', '先生', '68@qq.com', '68', '68', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '68', '68', '2022-03-05 12:37:10', '68');
INSERT INTO `tbl_contacts` VALUES ('70', 'asdfgh', '广告', '69', '李69', '先生', '69@qq.com', '69', '69', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '69', '69', '2022-03-05 12:37:10', '69');
INSERT INTO `tbl_contacts` VALUES ('71', 'asdfgh', '广告', '70', '李70', '先生', '70@qq.com', '70', '70', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '70', '70', '2022-03-05 12:37:10', '70');
INSERT INTO `tbl_contacts` VALUES ('72', 'asdfgh', '广告', '71', '李71', '先生', '71@qq.com', '71', '71', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '71', '71', '2022-03-05 12:37:10', '71');
INSERT INTO `tbl_contacts` VALUES ('73', 'asdfgh', '广告', '72', '李72', '先生', '72@qq.com', '72', '72', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '72', '72', '2022-03-05 12:37:10', '72');
INSERT INTO `tbl_contacts` VALUES ('74', 'asdfgh', '广告', '73', '李73', '先生', '73@qq.com', '73', '73', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '73', '73', '2022-03-05 12:37:10', '73');
INSERT INTO `tbl_contacts` VALUES ('75', 'asdfgh', '广告', '74', '李74', '先生', '74@qq.com', '74', '74', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '74', '74', '2022-03-05 12:37:10', '74');
INSERT INTO `tbl_contacts` VALUES ('76', 'asdfgh', '广告', '75', '李75', '先生', '75@qq.com', '75', '75', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '75', '75', '2022-03-05 12:37:10', '75');
INSERT INTO `tbl_contacts` VALUES ('77', 'asdfgh', '广告', '76', '李76', '先生', '76@qq.com', '76', '76', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '76', '76', '2022-03-05 12:37:10', '76');
INSERT INTO `tbl_contacts` VALUES ('78', 'asdfgh', '广告', '77', '李77', '先生', '77@qq.com', '77', '77', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '77', '77', '2022-03-05 12:37:10', '77');
INSERT INTO `tbl_contacts` VALUES ('79', 'asdfgh', '广告', '78', '李78', '先生', '78@qq.com', '78', '78', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '78', '78', '2022-03-05 12:37:10', '78');
INSERT INTO `tbl_contacts` VALUES ('80', 'asdfgh', '广告', '79', '李79', '先生', '79@qq.com', '79', '79', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '79', '79', '2022-03-05 12:37:10', '79');
INSERT INTO `tbl_contacts` VALUES ('81', 'asdfgh', '广告', '80', '李80', '先生', '80@qq.com', '80', '80', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '80', '80', '2022-03-05 12:37:10', '80');
INSERT INTO `tbl_contacts` VALUES ('82', 'asdfgh', '广告', '81', '李81', '先生', '81@qq.com', '81', '81', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '81', '81', '2022-03-05 12:37:10', '81');
INSERT INTO `tbl_contacts` VALUES ('83', 'asdfgh', '广告', '82', '李82', '先生', '82@qq.com', '82', '82', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '82', '82', '2022-03-05 12:37:10', '82');
INSERT INTO `tbl_contacts` VALUES ('84', 'asdfgh', '广告', '83', '李83', '先生', '83@qq.com', '83', '83', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '83', '83', '2022-03-05 12:37:10', '83');
INSERT INTO `tbl_contacts` VALUES ('85', 'asdfgh', '广告', '84', '李84', '先生', '84@qq.com', '84', '84', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '84', '84', '2022-03-05 12:37:10', '84');
INSERT INTO `tbl_contacts` VALUES ('86', 'asdfgh', '广告', '85', '李85', '先生', '85@qq.com', '85', '85', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '85', '85', '2022-03-05 12:37:10', '85');
INSERT INTO `tbl_contacts` VALUES ('87', 'asdfgh', '广告', '86', '李86', '先生', '86@qq.com', '86', '86', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '86', '86', '2022-03-05 12:37:10', '86');
INSERT INTO `tbl_contacts` VALUES ('88', 'asdfgh', '广告', '87', '李87', '先生', '87@qq.com', '87', '87', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '87', '87', '2022-03-05 12:37:10', '87');
INSERT INTO `tbl_contacts` VALUES ('89', 'asdfgh', '广告', '88', '李88', '先生', '88@qq.com', '88', '88', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '88', '88', '2022-03-05 12:37:10', '88');
INSERT INTO `tbl_contacts` VALUES ('90', 'asdfgh', '广告', '89', '李89', '先生', '89@qq.com', '89', '89', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '89', '89', '2022-03-05 12:37:10', '89');
INSERT INTO `tbl_contacts` VALUES ('91', 'asdfgh', '广告', '90', '李90', '先生', '90@qq.com', '90', '90', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '90', '90', '2022-03-05 12:37:10', '90');
INSERT INTO `tbl_contacts` VALUES ('92', 'asdfgh', '广告', '91', '李91', '先生', '91@qq.com', '91', '91', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '91', '91', '2022-03-05 12:37:10', '91');
INSERT INTO `tbl_contacts` VALUES ('93', 'asdfgh', '广告', '92', '李92', '先生', '92@qq.com', '92', '92', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '92', '92', '2022-03-05 12:37:10', '92');
INSERT INTO `tbl_contacts` VALUES ('94', 'asdfgh', '广告', '93', '李93', '先生', '93@qq.com', '93', '93', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '93', '93', '2022-03-05 12:37:10', '93');
INSERT INTO `tbl_contacts` VALUES ('95', 'asdfgh', '广告', '94', '李94', '先生', '94@qq.com', '94', '94', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '94', '94', '2022-03-05 12:37:10', '94');
INSERT INTO `tbl_contacts` VALUES ('96', 'asdfgh', '广告', '95', '李95', '先生', '95@qq.com', '95', '95', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '95', '95', '2022-03-05 12:37:10', '95');
INSERT INTO `tbl_contacts` VALUES ('97', 'asdfgh', '广告', '96', '李96', '先生', '96@qq.com', '96', '96', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '96', '96', '2022-03-05 12:37:10', '96');
INSERT INTO `tbl_contacts` VALUES ('98', 'asdfgh', '广告', '97', '李97', '先生', '97@qq.com', '97', '97', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '97', '97', '2022-03-05 12:37:10', '97');
INSERT INTO `tbl_contacts` VALUES ('99', 'asdfgh', '广告', '98', '李98', '先生', '98@qq.com', '98', '98', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '98', '98', '2022-03-05 12:37:10', '98');
INSERT INTO `tbl_contacts` VALUES ('100', 'asdfgh', '广告', '99', '李99', '先生', '99@qq.com', '99', '99', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '99', '99', '2022-03-05 12:37:10', '99');
INSERT INTO `tbl_contacts` VALUES ('101', 'asdfgh', '广告', '100', '李100', '先生', '100@qq.com', '100', '100', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '100', '100', '2022-03-05 12:37:10', '100');
INSERT INTO `tbl_contacts` VALUES ('102', 'asdfgh', '广告', '101', '李101', '先生', '101@qq.com', '101', '101', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '101', '101', '2022-03-05 12:37:10', '101');
INSERT INTO `tbl_contacts` VALUES ('103', 'asdfgh', '广告', '102', '李102', '先生', '102@qq.com', '102', '102', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '102', '102', '2022-03-05 12:37:10', '102');
INSERT INTO `tbl_contacts` VALUES ('104', 'asdfgh', '广告', '103', '李103', '先生', '103@qq.com', '103', '103', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '103', '103', '2022-03-05 12:37:10', '103');
INSERT INTO `tbl_contacts` VALUES ('105', 'asdfgh', '广告', '104', '李104', '先生', '104@qq.com', '104', '104', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '104', '104', '2022-03-05 12:37:10', '104');
INSERT INTO `tbl_contacts` VALUES ('106', 'asdfgh', '广告', '105', '李105', '先生', '105@qq.com', '105', '105', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '105', '105', '2022-03-05 12:37:10', '105');
INSERT INTO `tbl_contacts` VALUES ('107', 'asdfgh', '广告', '106', '李106', '先生', '106@qq.com', '106', '106', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '106', '106', '2022-03-05 12:37:10', '106');
INSERT INTO `tbl_contacts` VALUES ('108', 'asdfgh', '广告', '107', '李107', '先生', '107@qq.com', '107', '107', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '107', '107', '2022-03-05 12:37:10', '107');
INSERT INTO `tbl_contacts` VALUES ('109', 'asdfgh', '广告', '108', '李108', '先生', '108@qq.com', '108', '108', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '108', '108', '2022-03-05 12:37:10', '108');
INSERT INTO `tbl_contacts` VALUES ('110', 'asdfgh', '广告', '109', '李109', '先生', '109@qq.com', '109', '109', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '109', '109', '2022-03-05 12:37:10', '109');
INSERT INTO `tbl_contacts` VALUES ('111', 'asdfgh', '广告', '110', '李110', '先生', '110@qq.com', '110', '110', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '110', '110', '2022-03-05 12:37:10', '110');
INSERT INTO `tbl_contacts` VALUES ('112', 'asdfgh', '广告', '111', '李111', '先生', '111@qq.com', '111', '111', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '111', '111', '2022-03-05 12:37:10', '111');
INSERT INTO `tbl_contacts` VALUES ('113', 'asdfgh', '广告', '112', '李112', '先生', '112@qq.com', '112', '112', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '112', '112', '2022-03-05 12:37:10', '112');
INSERT INTO `tbl_contacts` VALUES ('114', 'asdfgh', '广告', '113', '李113', '先生', '113@qq.com', '113', '113', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '113', '113', '2022-03-05 12:37:10', '113');
INSERT INTO `tbl_contacts` VALUES ('115', 'asdfgh', '广告', '114', '李114', '先生', '114@qq.com', '114', '114', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '114', '114', '2022-03-05 12:37:10', '114');
INSERT INTO `tbl_contacts` VALUES ('116', 'asdfgh', '广告', '115', '李115', '先生', '115@qq.com', '115', '115', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '115', '115', '2022-03-05 12:37:10', '115');
INSERT INTO `tbl_contacts` VALUES ('117', 'asdfgh', '广告', '116', '李116', '先生', '116@qq.com', '116', '116', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '116', '116', '2022-03-05 12:37:10', '116');
INSERT INTO `tbl_contacts` VALUES ('118', 'asdfgh', '广告', '117', '李117', '先生', '117@qq.com', '117', '117', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '117', '117', '2022-03-05 12:37:10', '117');
INSERT INTO `tbl_contacts` VALUES ('119', 'asdfgh', '广告', '118', '李118', '先生', '118@qq.com', '118', '118', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '118', '118', '2022-03-05 12:37:10', '118');
INSERT INTO `tbl_contacts` VALUES ('120', 'asdfgh', '广告', '119', '李119', '先生', '119@qq.com', '119', '119', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '119', '119', '2022-03-05 12:37:10', '119');
INSERT INTO `tbl_contacts` VALUES ('121', 'asdfgh', '广告', '120', '李120', '先生', '120@qq.com', '120', '120', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '120', '120', '2022-03-05 12:37:10', '120');
INSERT INTO `tbl_contacts` VALUES ('122', 'asdfgh', '广告', '121', '李121', '先生', '121@qq.com', '121', '121', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '121', '121', '2022-03-05 12:37:10', '121');
INSERT INTO `tbl_contacts` VALUES ('123', 'asdfgh', '广告', '122', '李122', '先生', '122@qq.com', '122', '122', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '122', '122', '2022-03-05 12:37:10', '122');
INSERT INTO `tbl_contacts` VALUES ('124', 'asdfgh', '广告', '123', '李123', '先生', '123@qq.com', '123', '123', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '123', '123', '2022-03-05 12:37:10', '123');
INSERT INTO `tbl_contacts` VALUES ('125', 'asdfgh', '广告', '124', '李124', '先生', '124@qq.com', '124', '124', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '124', '124', '2022-03-05 12:37:10', '124');
INSERT INTO `tbl_contacts` VALUES ('126', 'asdfgh', '广告', '125', '李125', '先生', '125@qq.com', '125', '125', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '125', '125', '2022-03-05 12:37:10', '125');
INSERT INTO `tbl_contacts` VALUES ('127', 'asdfgh', '广告', '126', '李126', '先生', '126@qq.com', '126', '126', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '126', '126', '2022-03-05 12:37:10', '126');
INSERT INTO `tbl_contacts` VALUES ('128', 'asdfgh', '广告', '127', '李127', '先生', '127@qq.com', '127', '127', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '127', '127', '2022-03-05 12:37:10', '127');
INSERT INTO `tbl_contacts` VALUES ('129', 'asdfgh', '广告', '128', '李128', '先生', '128@qq.com', '128', '128', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '128', '128', '2022-03-05 12:37:10', '128');
INSERT INTO `tbl_contacts` VALUES ('130', 'asdfgh', '广告', '129', '李129', '先生', '129@qq.com', '129', '129', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '129', '129', '2022-03-05 12:37:10', '129');
INSERT INTO `tbl_contacts` VALUES ('131', 'asdfgh', '广告', '130', '李130', '先生', '130@qq.com', '130', '130', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '130', '130', '2022-03-05 12:37:10', '130');
INSERT INTO `tbl_contacts` VALUES ('132', 'asdfgh', '广告', '131', '李131', '先生', '131@qq.com', '131', '131', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '131', '131', '2022-03-05 12:37:10', '131');
INSERT INTO `tbl_contacts` VALUES ('133', 'asdfgh', '广告', '132', '李132', '先生', '132@qq.com', '132', '132', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '132', '132', '2022-03-05 12:37:10', '132');
INSERT INTO `tbl_contacts` VALUES ('134', 'asdfgh', '广告', '133', '李133', '先生', '133@qq.com', '133', '133', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '133', '133', '2022-03-05 12:37:10', '133');
INSERT INTO `tbl_contacts` VALUES ('135', 'asdfgh', '广告', '134', '李134', '先生', '134@qq.com', '134', '134', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '134', '134', '2022-03-05 12:37:10', '134');
INSERT INTO `tbl_contacts` VALUES ('136', 'asdfgh', '广告', '135', '李135', '先生', '135@qq.com', '135', '135', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '135', '135', '2022-03-05 12:37:10', '135');
INSERT INTO `tbl_contacts` VALUES ('137', 'asdfgh', '广告', '136', '李136', '先生', '136@qq.com', '136', '136', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '136', '136', '2022-03-05 12:37:10', '136');
INSERT INTO `tbl_contacts` VALUES ('138', 'asdfgh', '广告', '137', '李137', '先生', '137@qq.com', '137', '137', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '137', '137', '2022-03-05 12:37:10', '137');
INSERT INTO `tbl_contacts` VALUES ('139', 'asdfgh', '广告', '138', '李138', '先生', '138@qq.com', '138', '138', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '138', '138', '2022-03-05 12:37:10', '138');
INSERT INTO `tbl_contacts` VALUES ('140', 'asdfgh', '广告', '139', '李139', '先生', '139@qq.com', '139', '139', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '139', '139', '2022-03-05 12:37:10', '139');
INSERT INTO `tbl_contacts` VALUES ('141', 'asdfgh', '广告', '140', '李140', '先生', '140@qq.com', '140', '140', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '140', '140', '2022-03-05 12:37:10', '140');
INSERT INTO `tbl_contacts` VALUES ('142', 'asdfgh', '广告', '141', '李141', '先生', '141@qq.com', '141', '141', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '141', '141', '2022-03-05 12:37:10', '141');
INSERT INTO `tbl_contacts` VALUES ('143', 'asdfgh', '广告', '142', '李142', '先生', '142@qq.com', '142', '142', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '142', '142', '2022-03-05 12:37:10', '142');
INSERT INTO `tbl_contacts` VALUES ('144', 'asdfgh', '广告', '143', '李143', '先生', '143@qq.com', '143', '143', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '143', '143', '2022-03-05 12:37:10', '143');
INSERT INTO `tbl_contacts` VALUES ('145', 'asdfgh', '广告', '144', '李144', '先生', '144@qq.com', '144', '144', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '144', '144', '2022-03-05 12:37:10', '144');
INSERT INTO `tbl_contacts` VALUES ('146', 'asdfgh', '广告', '145', '李145', '先生', '145@qq.com', '145', '145', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '145', '145', '2022-03-05 12:37:10', '145');
INSERT INTO `tbl_contacts` VALUES ('147', 'asdfgh', '广告', '146', '李146', '先生', '146@qq.com', '146', '146', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '146', '146', '2022-03-05 12:37:10', '146');
INSERT INTO `tbl_contacts` VALUES ('148', 'asdfgh', '广告', '147', '李147', '先生', '147@qq.com', '147', '147', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '147', '147', '2022-03-05 12:37:10', '147');
INSERT INTO `tbl_contacts` VALUES ('149', 'asdfgh', '广告', '148', '李148', '先生', '148@qq.com', '148', '148', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '148', '148', '2022-03-05 12:37:10', '148');
INSERT INTO `tbl_contacts` VALUES ('150', 'asdfgh', '广告', '149', '李149', '先生', '149@qq.com', '149', '149', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '149', '149', '2022-03-05 12:37:10', '149');
INSERT INTO `tbl_contacts` VALUES ('151', 'asdfgh', '广告', '150', '李150', '先生', '150@qq.com', '150', '150', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '150', '150', '2022-03-05 12:37:10', '150');
INSERT INTO `tbl_contacts` VALUES ('152', 'asdfgh', '广告', '151', '李151', '先生', '151@qq.com', '151', '151', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '151', '151', '2022-03-05 12:37:10', '151');
INSERT INTO `tbl_contacts` VALUES ('153', 'asdfgh', '广告', '152', '李152', '先生', '152@qq.com', '152', '152', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '152', '152', '2022-03-05 12:37:10', '152');
INSERT INTO `tbl_contacts` VALUES ('154', 'asdfgh', '广告', '153', '李153', '先生', '153@qq.com', '153', '153', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '153', '153', '2022-03-05 12:37:10', '153');
INSERT INTO `tbl_contacts` VALUES ('155', 'asdfgh', '广告', '154', '李154', '先生', '154@qq.com', '154', '154', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '154', '154', '2022-03-05 12:37:10', '154');
INSERT INTO `tbl_contacts` VALUES ('156', 'asdfgh', '广告', '155', '李155', '先生', '155@qq.com', '155', '155', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '155', '155', '2022-03-05 12:37:10', '155');
INSERT INTO `tbl_contacts` VALUES ('157', 'asdfgh', '广告', '156', '李156', '先生', '156@qq.com', '156', '156', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '156', '156', '2022-03-05 12:37:10', '156');
INSERT INTO `tbl_contacts` VALUES ('158', 'asdfgh', '广告', '157', '李157', '先生', '157@qq.com', '157', '157', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '157', '157', '2022-03-05 12:37:10', '157');
INSERT INTO `tbl_contacts` VALUES ('159', 'asdfgh', '广告', '158', '李158', '先生', '158@qq.com', '158', '158', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '158', '158', '2022-03-05 12:37:10', '158');
INSERT INTO `tbl_contacts` VALUES ('160', 'asdfgh', '广告', '159', '李159', '先生', '159@qq.com', '159', '159', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '159', '159', '2022-03-05 12:37:10', '159');
INSERT INTO `tbl_contacts` VALUES ('161', 'asdfgh', '广告', '160', '李160', '先生', '160@qq.com', '160', '160', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '160', '160', '2022-03-05 12:37:10', '160');
INSERT INTO `tbl_contacts` VALUES ('162', 'asdfgh', '广告', '161', '李161', '先生', '161@qq.com', '161', '161', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '161', '161', '2022-03-05 12:37:10', '161');
INSERT INTO `tbl_contacts` VALUES ('163', 'asdfgh', '广告', '162', '李162', '先生', '162@qq.com', '162', '162', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '162', '162', '2022-03-05 12:37:10', '162');
INSERT INTO `tbl_contacts` VALUES ('164', 'asdfgh', '广告', '163', '李163', '先生', '163@qq.com', '163', '163', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '163', '163', '2022-03-05 12:37:10', '163');
INSERT INTO `tbl_contacts` VALUES ('165', 'asdfgh', '广告', '164', '李164', '先生', '164@qq.com', '164', '164', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '164', '164', '2022-03-05 12:37:10', '164');
INSERT INTO `tbl_contacts` VALUES ('166', 'asdfgh', '广告', '165', '李165', '先生', '165@qq.com', '165', '165', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '165', '165', '2022-03-05 12:37:10', '165');
INSERT INTO `tbl_contacts` VALUES ('167', 'asdfgh', '广告', '166', '李166', '先生', '166@qq.com', '166', '166', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '166', '166', '2022-03-05 12:37:10', '166');
INSERT INTO `tbl_contacts` VALUES ('168', 'asdfgh', '广告', '167', '李167', '先生', '167@qq.com', '167', '167', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '167', '167', '2022-03-05 12:37:10', '167');
INSERT INTO `tbl_contacts` VALUES ('169', 'asdfgh', '广告', '168', '李168', '先生', '168@qq.com', '168', '168', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '168', '168', '2022-03-05 12:37:10', '168');
INSERT INTO `tbl_contacts` VALUES ('170', 'asdfgh', '广告', '169', '李169', '先生', '169@qq.com', '169', '169', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '169', '169', '2022-03-05 12:37:10', '169');
INSERT INTO `tbl_contacts` VALUES ('171', 'asdfgh', '广告', '170', '李170', '先生', '170@qq.com', '170', '170', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '170', '170', '2022-03-05 12:37:10', '170');
INSERT INTO `tbl_contacts` VALUES ('172', 'asdfgh', '广告', '171', '李171', '先生', '171@qq.com', '171', '171', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '171', '171', '2022-03-05 12:37:10', '171');
INSERT INTO `tbl_contacts` VALUES ('173', 'asdfgh', '广告', '172', '李172', '先生', '172@qq.com', '172', '172', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '172', '172', '2022-03-05 12:37:10', '172');
INSERT INTO `tbl_contacts` VALUES ('174', 'asdfgh', '广告', '173', '李173', '先生', '173@qq.com', '173', '173', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '173', '173', '2022-03-05 12:37:10', '173');
INSERT INTO `tbl_contacts` VALUES ('175', 'asdfgh', '广告', '174', '李174', '先生', '174@qq.com', '174', '174', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '174', '174', '2022-03-05 12:37:10', '174');
INSERT INTO `tbl_contacts` VALUES ('176', 'asdfgh', '广告', '175', '李175', '先生', '175@qq.com', '175', '175', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '175', '175', '2022-03-05 12:37:10', '175');
INSERT INTO `tbl_contacts` VALUES ('177', 'asdfgh', '广告', '176', '李176', '先生', '176@qq.com', '176', '176', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '176', '176', '2022-03-05 12:37:10', '176');
INSERT INTO `tbl_contacts` VALUES ('178', 'asdfgh', '广告', '177', '李177', '先生', '177@qq.com', '177', '177', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '177', '177', '2022-03-05 12:37:10', '177');
INSERT INTO `tbl_contacts` VALUES ('179', 'asdfgh', '广告', '178', '李178', '先生', '178@qq.com', '178', '178', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '178', '178', '2022-03-05 12:37:10', '178');
INSERT INTO `tbl_contacts` VALUES ('180', 'asdfgh', '广告', '179', '李179', '先生', '179@qq.com', '179', '179', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '179', '179', '2022-03-05 12:37:10', '179');
INSERT INTO `tbl_contacts` VALUES ('181', 'asdfgh', '广告', '180', '李180', '先生', '180@qq.com', '180', '180', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '180', '180', '2022-03-05 12:37:10', '180');
INSERT INTO `tbl_contacts` VALUES ('182', 'asdfgh', '广告', '181', '李181', '先生', '181@qq.com', '181', '181', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '181', '181', '2022-03-05 12:37:10', '181');
INSERT INTO `tbl_contacts` VALUES ('183', 'asdfgh', '广告', '182', '李182', '先生', '182@qq.com', '182', '182', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '182', '182', '2022-03-05 12:37:10', '182');
INSERT INTO `tbl_contacts` VALUES ('184', 'asdfgh', '广告', '183', '李183', '先生', '183@qq.com', '183', '183', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '183', '183', '2022-03-05 12:37:10', '183');
INSERT INTO `tbl_contacts` VALUES ('185', 'asdfgh', '广告', '184', '李184', '先生', '184@qq.com', '184', '184', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '184', '184', '2022-03-05 12:37:10', '184');
INSERT INTO `tbl_contacts` VALUES ('186', 'asdfgh', '广告', '185', '李185', '先生', '185@qq.com', '185', '185', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '185', '185', '2022-03-05 12:37:10', '185');
INSERT INTO `tbl_contacts` VALUES ('187', 'asdfgh', '广告', '186', '李186', '先生', '186@qq.com', '186', '186', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '186', '186', '2022-03-05 12:37:10', '186');
INSERT INTO `tbl_contacts` VALUES ('188', 'asdfgh', '广告', '187', '李187', '先生', '187@qq.com', '187', '187', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '187', '187', '2022-03-05 12:37:10', '187');
INSERT INTO `tbl_contacts` VALUES ('189', 'asdfgh', '广告', '188', '李188', '先生', '188@qq.com', '188', '188', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '188', '188', '2022-03-05 12:37:10', '188');
INSERT INTO `tbl_contacts` VALUES ('190', 'asdfgh', '广告', '189', '李189', '先生', '189@qq.com', '189', '189', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '189', '189', '2022-03-05 12:37:10', '189');
INSERT INTO `tbl_contacts` VALUES ('191', 'asdfgh', '广告', '190', '李190', '先生', '190@qq.com', '190', '190', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '190', '190', '2022-03-05 12:37:10', '190');
INSERT INTO `tbl_contacts` VALUES ('192', 'asdfgh', '广告', '191', '李191', '先生', '191@qq.com', '191', '191', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '191', '191', '2022-03-05 12:37:10', '191');
INSERT INTO `tbl_contacts` VALUES ('193', 'asdfgh', '广告', '192', '李192', '先生', '192@qq.com', '192', '192', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '192', '192', '2022-03-05 12:37:10', '192');
INSERT INTO `tbl_contacts` VALUES ('194', 'asdfgh', '广告', '193', '李193', '先生', '193@qq.com', '193', '193', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '193', '193', '2022-03-05 12:37:10', '193');
INSERT INTO `tbl_contacts` VALUES ('195', 'asdfgh', '广告', '194', '李194', '先生', '194@qq.com', '194', '194', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '194', '194', '2022-03-05 12:37:10', '194');
INSERT INTO `tbl_contacts` VALUES ('196', 'asdfgh', '广告', '195', '李195', '先生', '195@qq.com', '195', '195', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '195', '195', '2022-03-05 12:37:10', '195');
INSERT INTO `tbl_contacts` VALUES ('197', 'asdfgh', '广告', '196', '李196', '先生', '196@qq.com', '196', '196', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '196', '196', '2022-03-05 12:37:10', '196');
INSERT INTO `tbl_contacts` VALUES ('198', 'asdfgh', '广告', '197', '李197', '先生', '197@qq.com', '197', '197', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '197', '197', '2022-03-05 12:37:10', '197');
INSERT INTO `tbl_contacts` VALUES ('199', 'asdfgh', '广告', '198', '李198', '先生', '198@qq.com', '198', '198', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '198', '198', '2022-03-05 12:37:10', '198');
INSERT INTO `tbl_contacts` VALUES ('200', 'asdfgh', '广告', '199', '李199', '先生', '199@qq.com', '199', '199', '2022-01-01', 'asdfgh', '2022-03-05 12:37:10', null, null, '199', '199', '2022-03-05 12:37:10', '199');

-- ----------------------------
-- Table structure for `tbl_contacts_activity_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
CREATE TABLE `tbl_contacts_activity_relation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contactsId` int DEFAULT NULL,
  `activityId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_contacts_activity_relation
-- ----------------------------
INSERT INTO `tbl_contacts_activity_relation` VALUES ('1', '1', '10');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('2', '2', '9');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('3', '3', '8');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('4', '4', '7');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('5', '5', '6');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('6', '6', '5');

-- ----------------------------
-- Table structure for `tbl_customer`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('1', 'asdfgh', '公司0', 'www.0.com', '0', 'asdfgh', '2022-03-05 12:37:09', null, null, '0', '2022-03-05 12:37:09', '0', '0');
INSERT INTO `tbl_customer` VALUES ('2', 'asdfgh', '公司1', 'www.1.com', '1', 'asdfgh', '2022-03-05 12:37:09', null, null, '1', '2022-03-05 12:37:09', '1', '1');
INSERT INTO `tbl_customer` VALUES ('3', 'asdfgh', '公司2', 'www.2.com', '2', 'asdfgh', '2022-03-05 12:37:09', null, null, '2', '2022-03-05 12:37:09', '2', '2');
INSERT INTO `tbl_customer` VALUES ('4', 'asdfgh', '公司3', 'www.3.com', '3', 'asdfgh', '2022-03-05 12:37:09', null, null, '3', '2022-03-05 12:37:09', '3', '3');
INSERT INTO `tbl_customer` VALUES ('5', 'asdfgh', '公司4', 'www.4.com', '4', 'asdfgh', '2022-03-05 12:37:09', null, null, '4', '2022-03-05 12:37:09', '4', '4');
INSERT INTO `tbl_customer` VALUES ('6', 'asdfgh', '公司5', 'www.5.com', '5', 'asdfgh', '2022-03-05 12:37:09', null, null, '5', '2022-03-05 12:37:09', '5', '5');
INSERT INTO `tbl_customer` VALUES ('7', 'asdfgh', '公司6', 'www.6.com', '6', 'asdfgh', '2022-03-05 12:37:09', null, null, '6', '2022-03-05 12:37:09', '6', '6');
INSERT INTO `tbl_customer` VALUES ('8', 'asdfgh', '公司7', 'www.7.com', '7', 'asdfgh', '2022-03-05 12:37:09', null, null, '7', '2022-03-05 12:37:09', '7', '7');
INSERT INTO `tbl_customer` VALUES ('9', 'asdfgh', '公司8', 'www.8.com', '8', 'asdfgh', '2022-03-05 12:37:09', null, null, '8', '2022-03-05 12:37:09', '8', '8');
INSERT INTO `tbl_customer` VALUES ('10', 'asdfgh', '公司9', 'www.9.com', '9', 'asdfgh', '2022-03-05 12:37:09', null, null, '9', '2022-03-05 12:37:09', '9', '9');
INSERT INTO `tbl_customer` VALUES ('11', 'asdfgh', '公司10', 'www.10.com', '10', 'asdfgh', '2022-03-05 12:37:09', null, null, '10', '2022-03-05 12:37:09', '10', '10');
INSERT INTO `tbl_customer` VALUES ('12', 'asdfgh', '公司11', 'www.11.com', '11', 'asdfgh', '2022-03-05 12:37:09', null, null, '11', '2022-03-05 12:37:09', '11', '11');
INSERT INTO `tbl_customer` VALUES ('13', 'asdfgh', '公司12', 'www.12.com', '12', 'asdfgh', '2022-03-05 12:37:09', null, null, '12', '2022-03-05 12:37:09', '12', '12');
INSERT INTO `tbl_customer` VALUES ('14', 'asdfgh', '公司13', 'www.13.com', '13', 'asdfgh', '2022-03-05 12:37:09', null, null, '13', '2022-03-05 12:37:09', '13', '13');
INSERT INTO `tbl_customer` VALUES ('15', 'asdfgh', '公司14', 'www.14.com', '14', 'asdfgh', '2022-03-05 12:37:09', null, null, '14', '2022-03-05 12:37:09', '14', '14');
INSERT INTO `tbl_customer` VALUES ('16', 'asdfgh', '公司15', 'www.15.com', '15', 'asdfgh', '2022-03-05 12:37:09', null, null, '15', '2022-03-05 12:37:09', '15', '15');
INSERT INTO `tbl_customer` VALUES ('17', 'asdfgh', '公司16', 'www.16.com', '16', 'asdfgh', '2022-03-05 12:37:09', null, null, '16', '2022-03-05 12:37:09', '16', '16');
INSERT INTO `tbl_customer` VALUES ('18', 'asdfgh', '公司17', 'www.17.com', '17', 'asdfgh', '2022-03-05 12:37:09', null, null, '17', '2022-03-05 12:37:09', '17', '17');
INSERT INTO `tbl_customer` VALUES ('19', 'asdfgh', '公司18', 'www.18.com', '18', 'asdfgh', '2022-03-05 12:37:09', null, null, '18', '2022-03-05 12:37:09', '18', '18');
INSERT INTO `tbl_customer` VALUES ('20', 'asdfgh', '公司19', 'www.19.com', '19', 'asdfgh', '2022-03-05 12:37:09', null, null, '19', '2022-03-05 12:37:09', '19', '19');
INSERT INTO `tbl_customer` VALUES ('21', 'asdfgh', '公司20', 'www.20.com', '20', 'asdfgh', '2022-03-05 12:37:09', null, null, '20', '2022-03-05 12:37:09', '20', '20');
INSERT INTO `tbl_customer` VALUES ('22', 'asdfgh', '公司21', 'www.21.com', '21', 'asdfgh', '2022-03-05 12:37:09', null, null, '21', '2022-03-05 12:37:09', '21', '21');
INSERT INTO `tbl_customer` VALUES ('23', 'asdfgh', '公司22', 'www.22.com', '22', 'asdfgh', '2022-03-05 12:37:09', null, null, '22', '2022-03-05 12:37:09', '22', '22');
INSERT INTO `tbl_customer` VALUES ('24', 'asdfgh', '公司23', 'www.23.com', '23', 'asdfgh', '2022-03-05 12:37:09', null, null, '23', '2022-03-05 12:37:09', '23', '23');
INSERT INTO `tbl_customer` VALUES ('25', 'asdfgh', '公司24', 'www.24.com', '24', 'asdfgh', '2022-03-05 12:37:09', null, null, '24', '2022-03-05 12:37:09', '24', '24');
INSERT INTO `tbl_customer` VALUES ('26', 'asdfgh', '公司25', 'www.25.com', '25', 'asdfgh', '2022-03-05 12:37:09', null, null, '25', '2022-03-05 12:37:09', '25', '25');
INSERT INTO `tbl_customer` VALUES ('27', 'asdfgh', '公司26', 'www.26.com', '26', 'asdfgh', '2022-03-05 12:37:09', null, null, '26', '2022-03-05 12:37:09', '26', '26');
INSERT INTO `tbl_customer` VALUES ('28', 'asdfgh', '公司27', 'www.27.com', '27', 'asdfgh', '2022-03-05 12:37:09', null, null, '27', '2022-03-05 12:37:09', '27', '27');
INSERT INTO `tbl_customer` VALUES ('29', 'asdfgh', '公司28', 'www.28.com', '28', 'asdfgh', '2022-03-05 12:37:09', null, null, '28', '2022-03-05 12:37:09', '28', '28');
INSERT INTO `tbl_customer` VALUES ('30', 'asdfgh', '公司29', 'www.29.com', '29', 'asdfgh', '2022-03-05 12:37:09', null, null, '29', '2022-03-05 12:37:09', '29', '29');
INSERT INTO `tbl_customer` VALUES ('31', 'asdfgh', '公司30', 'www.30.com', '30', 'asdfgh', '2022-03-05 12:37:09', null, null, '30', '2022-03-05 12:37:09', '30', '30');
INSERT INTO `tbl_customer` VALUES ('32', 'asdfgh', '公司31', 'www.31.com', '31', 'asdfgh', '2022-03-05 12:37:09', null, null, '31', '2022-03-05 12:37:09', '31', '31');
INSERT INTO `tbl_customer` VALUES ('33', 'asdfgh', '公司32', 'www.32.com', '32', 'asdfgh', '2022-03-05 12:37:09', null, null, '32', '2022-03-05 12:37:09', '32', '32');
INSERT INTO `tbl_customer` VALUES ('34', 'asdfgh', '公司33', 'www.33.com', '33', 'asdfgh', '2022-03-05 12:37:09', null, null, '33', '2022-03-05 12:37:09', '33', '33');
INSERT INTO `tbl_customer` VALUES ('35', 'asdfgh', '公司34', 'www.34.com', '34', 'asdfgh', '2022-03-05 12:37:09', null, null, '34', '2022-03-05 12:37:09', '34', '34');
INSERT INTO `tbl_customer` VALUES ('36', 'asdfgh', '公司35', 'www.35.com', '35', 'asdfgh', '2022-03-05 12:37:09', null, null, '35', '2022-03-05 12:37:09', '35', '35');
INSERT INTO `tbl_customer` VALUES ('37', 'asdfgh', '公司36', 'www.36.com', '36', 'asdfgh', '2022-03-05 12:37:09', null, null, '36', '2022-03-05 12:37:09', '36', '36');
INSERT INTO `tbl_customer` VALUES ('38', 'asdfgh', '公司37', 'www.37.com', '37', 'asdfgh', '2022-03-05 12:37:09', null, null, '37', '2022-03-05 12:37:09', '37', '37');
INSERT INTO `tbl_customer` VALUES ('39', 'asdfgh', '公司38', 'www.38.com', '38', 'asdfgh', '2022-03-05 12:37:09', null, null, '38', '2022-03-05 12:37:09', '38', '38');
INSERT INTO `tbl_customer` VALUES ('40', 'asdfgh', '公司39', 'www.39.com', '39', 'asdfgh', '2022-03-05 12:37:09', null, null, '39', '2022-03-05 12:37:09', '39', '39');
INSERT INTO `tbl_customer` VALUES ('41', 'asdfgh', '公司40', 'www.40.com', '40', 'asdfgh', '2022-03-05 12:37:09', null, null, '40', '2022-03-05 12:37:09', '40', '40');
INSERT INTO `tbl_customer` VALUES ('42', 'asdfgh', '公司41', 'www.41.com', '41', 'asdfgh', '2022-03-05 12:37:09', null, null, '41', '2022-03-05 12:37:09', '41', '41');
INSERT INTO `tbl_customer` VALUES ('43', 'asdfgh', '公司42', 'www.42.com', '42', 'asdfgh', '2022-03-05 12:37:09', null, null, '42', '2022-03-05 12:37:09', '42', '42');
INSERT INTO `tbl_customer` VALUES ('44', 'asdfgh', '公司43', 'www.43.com', '43', 'asdfgh', '2022-03-05 12:37:09', null, null, '43', '2022-03-05 12:37:09', '43', '43');
INSERT INTO `tbl_customer` VALUES ('45', 'asdfgh', '公司44', 'www.44.com', '44', 'asdfgh', '2022-03-05 12:37:09', null, null, '44', '2022-03-05 12:37:09', '44', '44');
INSERT INTO `tbl_customer` VALUES ('46', 'asdfgh', '公司45', 'www.45.com', '45', 'asdfgh', '2022-03-05 12:37:09', null, null, '45', '2022-03-05 12:37:09', '45', '45');
INSERT INTO `tbl_customer` VALUES ('47', 'asdfgh', '公司46', 'www.46.com', '46', 'asdfgh', '2022-03-05 12:37:09', null, null, '46', '2022-03-05 12:37:09', '46', '46');
INSERT INTO `tbl_customer` VALUES ('48', 'asdfgh', '公司47', 'www.47.com', '47', 'asdfgh', '2022-03-05 12:37:09', null, null, '47', '2022-03-05 12:37:09', '47', '47');
INSERT INTO `tbl_customer` VALUES ('49', 'asdfgh', '公司48', 'www.48.com', '48', 'asdfgh', '2022-03-05 12:37:09', null, null, '48', '2022-03-05 12:37:09', '48', '48');
INSERT INTO `tbl_customer` VALUES ('50', 'asdfgh', '公司49', 'www.49.com', '49', 'asdfgh', '2022-03-05 12:37:09', null, null, '49', '2022-03-05 12:37:09', '49', '49');
INSERT INTO `tbl_customer` VALUES ('51', 'asdfgh', '公司50', 'www.50.com', '50', 'asdfgh', '2022-03-05 12:37:09', null, null, '50', '2022-03-05 12:37:09', '50', '50');
INSERT INTO `tbl_customer` VALUES ('52', 'asdfgh', '公司51', 'www.51.com', '51', 'asdfgh', '2022-03-05 12:37:09', null, null, '51', '2022-03-05 12:37:09', '51', '51');
INSERT INTO `tbl_customer` VALUES ('53', 'asdfgh', '公司52', 'www.52.com', '52', 'asdfgh', '2022-03-05 12:37:09', null, null, '52', '2022-03-05 12:37:09', '52', '52');
INSERT INTO `tbl_customer` VALUES ('54', 'asdfgh', '公司53', 'www.53.com', '53', 'asdfgh', '2022-03-05 12:37:09', null, null, '53', '2022-03-05 12:37:09', '53', '53');
INSERT INTO `tbl_customer` VALUES ('55', 'asdfgh', '公司54', 'www.54.com', '54', 'asdfgh', '2022-03-05 12:37:09', null, null, '54', '2022-03-05 12:37:09', '54', '54');
INSERT INTO `tbl_customer` VALUES ('56', 'asdfgh', '公司55', 'www.55.com', '55', 'asdfgh', '2022-03-05 12:37:09', null, null, '55', '2022-03-05 12:37:09', '55', '55');
INSERT INTO `tbl_customer` VALUES ('57', 'asdfgh', '公司56', 'www.56.com', '56', 'asdfgh', '2022-03-05 12:37:09', null, null, '56', '2022-03-05 12:37:09', '56', '56');
INSERT INTO `tbl_customer` VALUES ('58', 'asdfgh', '公司57', 'www.57.com', '57', 'asdfgh', '2022-03-05 12:37:09', null, null, '57', '2022-03-05 12:37:09', '57', '57');
INSERT INTO `tbl_customer` VALUES ('59', 'asdfgh', '公司58', 'www.58.com', '58', 'asdfgh', '2022-03-05 12:37:09', null, null, '58', '2022-03-05 12:37:09', '58', '58');
INSERT INTO `tbl_customer` VALUES ('60', 'asdfgh', '公司59', 'www.59.com', '59', 'asdfgh', '2022-03-05 12:37:09', null, null, '59', '2022-03-05 12:37:09', '59', '59');
INSERT INTO `tbl_customer` VALUES ('61', 'asdfgh', '公司60', 'www.60.com', '60', 'asdfgh', '2022-03-05 12:37:09', null, null, '60', '2022-03-05 12:37:09', '60', '60');
INSERT INTO `tbl_customer` VALUES ('62', 'asdfgh', '公司61', 'www.61.com', '61', 'asdfgh', '2022-03-05 12:37:09', null, null, '61', '2022-03-05 12:37:09', '61', '61');
INSERT INTO `tbl_customer` VALUES ('63', 'asdfgh', '公司62', 'www.62.com', '62', 'asdfgh', '2022-03-05 12:37:09', null, null, '62', '2022-03-05 12:37:09', '62', '62');
INSERT INTO `tbl_customer` VALUES ('64', 'asdfgh', '公司63', 'www.63.com', '63', 'asdfgh', '2022-03-05 12:37:09', null, null, '63', '2022-03-05 12:37:09', '63', '63');
INSERT INTO `tbl_customer` VALUES ('65', 'asdfgh', '公司64', 'www.64.com', '64', 'asdfgh', '2022-03-05 12:37:09', null, null, '64', '2022-03-05 12:37:09', '64', '64');
INSERT INTO `tbl_customer` VALUES ('66', 'asdfgh', '公司65', 'www.65.com', '65', 'asdfgh', '2022-03-05 12:37:09', null, null, '65', '2022-03-05 12:37:09', '65', '65');
INSERT INTO `tbl_customer` VALUES ('67', 'asdfgh', '公司66', 'www.66.com', '66', 'asdfgh', '2022-03-05 12:37:09', null, null, '66', '2022-03-05 12:37:09', '66', '66');
INSERT INTO `tbl_customer` VALUES ('68', 'asdfgh', '公司67', 'www.67.com', '67', 'asdfgh', '2022-03-05 12:37:09', null, null, '67', '2022-03-05 12:37:09', '67', '67');
INSERT INTO `tbl_customer` VALUES ('69', 'asdfgh', '公司68', 'www.68.com', '68', 'asdfgh', '2022-03-05 12:37:09', null, null, '68', '2022-03-05 12:37:09', '68', '68');
INSERT INTO `tbl_customer` VALUES ('70', 'asdfgh', '公司69', 'www.69.com', '69', 'asdfgh', '2022-03-05 12:37:09', null, null, '69', '2022-03-05 12:37:09', '69', '69');
INSERT INTO `tbl_customer` VALUES ('71', 'asdfgh', '公司70', 'www.70.com', '70', 'asdfgh', '2022-03-05 12:37:09', null, null, '70', '2022-03-05 12:37:09', '70', '70');
INSERT INTO `tbl_customer` VALUES ('72', 'asdfgh', '公司71', 'www.71.com', '71', 'asdfgh', '2022-03-05 12:37:09', null, null, '71', '2022-03-05 12:37:09', '71', '71');
INSERT INTO `tbl_customer` VALUES ('73', 'asdfgh', '公司72', 'www.72.com', '72', 'asdfgh', '2022-03-05 12:37:09', null, null, '72', '2022-03-05 12:37:09', '72', '72');
INSERT INTO `tbl_customer` VALUES ('74', 'asdfgh', '公司73', 'www.73.com', '73', 'asdfgh', '2022-03-05 12:37:09', null, null, '73', '2022-03-05 12:37:09', '73', '73');
INSERT INTO `tbl_customer` VALUES ('75', 'asdfgh', '公司74', 'www.74.com', '74', 'asdfgh', '2022-03-05 12:37:09', null, null, '74', '2022-03-05 12:37:09', '74', '74');
INSERT INTO `tbl_customer` VALUES ('76', 'asdfgh', '公司75', 'www.75.com', '75', 'asdfgh', '2022-03-05 12:37:09', null, null, '75', '2022-03-05 12:37:09', '75', '75');
INSERT INTO `tbl_customer` VALUES ('77', 'asdfgh', '公司76', 'www.76.com', '76', 'asdfgh', '2022-03-05 12:37:09', null, null, '76', '2022-03-05 12:37:09', '76', '76');
INSERT INTO `tbl_customer` VALUES ('78', 'asdfgh', '公司77', 'www.77.com', '77', 'asdfgh', '2022-03-05 12:37:09', null, null, '77', '2022-03-05 12:37:09', '77', '77');
INSERT INTO `tbl_customer` VALUES ('79', 'asdfgh', '公司78', 'www.78.com', '78', 'asdfgh', '2022-03-05 12:37:09', null, null, '78', '2022-03-05 12:37:09', '78', '78');
INSERT INTO `tbl_customer` VALUES ('80', 'asdfgh', '公司79', 'www.79.com', '79', 'asdfgh', '2022-03-05 12:37:09', null, null, '79', '2022-03-05 12:37:09', '79', '79');
INSERT INTO `tbl_customer` VALUES ('81', 'asdfgh', '公司80', 'www.80.com', '80', 'asdfgh', '2022-03-05 12:37:09', null, null, '80', '2022-03-05 12:37:09', '80', '80');
INSERT INTO `tbl_customer` VALUES ('82', 'asdfgh', '公司81', 'www.81.com', '81', 'asdfgh', '2022-03-05 12:37:09', null, null, '81', '2022-03-05 12:37:09', '81', '81');
INSERT INTO `tbl_customer` VALUES ('83', 'asdfgh', '公司82', 'www.82.com', '82', 'asdfgh', '2022-03-05 12:37:09', null, null, '82', '2022-03-05 12:37:09', '82', '82');
INSERT INTO `tbl_customer` VALUES ('84', 'asdfgh', '公司83', 'www.83.com', '83', 'asdfgh', '2022-03-05 12:37:09', null, null, '83', '2022-03-05 12:37:09', '83', '83');
INSERT INTO `tbl_customer` VALUES ('85', 'asdfgh', '公司84', 'www.84.com', '84', 'asdfgh', '2022-03-05 12:37:09', null, null, '84', '2022-03-05 12:37:09', '84', '84');
INSERT INTO `tbl_customer` VALUES ('86', 'asdfgh', '公司85', 'www.85.com', '85', 'asdfgh', '2022-03-05 12:37:09', null, null, '85', '2022-03-05 12:37:09', '85', '85');
INSERT INTO `tbl_customer` VALUES ('87', 'asdfgh', '公司86', 'www.86.com', '86', 'asdfgh', '2022-03-05 12:37:09', null, null, '86', '2022-03-05 12:37:09', '86', '86');
INSERT INTO `tbl_customer` VALUES ('88', 'asdfgh', '公司87', 'www.87.com', '87', 'asdfgh', '2022-03-05 12:37:09', null, null, '87', '2022-03-05 12:37:09', '87', '87');
INSERT INTO `tbl_customer` VALUES ('89', 'asdfgh', '公司88', 'www.88.com', '88', 'asdfgh', '2022-03-05 12:37:09', null, null, '88', '2022-03-05 12:37:09', '88', '88');
INSERT INTO `tbl_customer` VALUES ('90', 'asdfgh', '公司89', 'www.89.com', '89', 'asdfgh', '2022-03-05 12:37:09', null, null, '89', '2022-03-05 12:37:09', '89', '89');
INSERT INTO `tbl_customer` VALUES ('91', 'asdfgh', '公司90', 'www.90.com', '90', 'asdfgh', '2022-03-05 12:37:09', null, null, '90', '2022-03-05 12:37:09', '90', '90');
INSERT INTO `tbl_customer` VALUES ('92', 'asdfgh', '公司91', 'www.91.com', '91', 'asdfgh', '2022-03-05 12:37:09', null, null, '91', '2022-03-05 12:37:09', '91', '91');
INSERT INTO `tbl_customer` VALUES ('93', 'asdfgh', '公司92', 'www.92.com', '92', 'asdfgh', '2022-03-05 12:37:09', null, null, '92', '2022-03-05 12:37:09', '92', '92');
INSERT INTO `tbl_customer` VALUES ('94', 'asdfgh', '公司93', 'www.93.com', '93', 'asdfgh', '2022-03-05 12:37:09', null, null, '93', '2022-03-05 12:37:09', '93', '93');
INSERT INTO `tbl_customer` VALUES ('95', 'asdfgh', '公司94', 'www.94.com', '94', 'asdfgh', '2022-03-05 12:37:09', null, null, '94', '2022-03-05 12:37:09', '94', '94');
INSERT INTO `tbl_customer` VALUES ('96', 'asdfgh', '公司95', 'www.95.com', '95', 'asdfgh', '2022-03-05 12:37:09', null, null, '95', '2022-03-05 12:37:09', '95', '95');
INSERT INTO `tbl_customer` VALUES ('97', 'asdfgh', '公司96', 'www.96.com', '96', 'asdfgh', '2022-03-05 12:37:09', null, null, '96', '2022-03-05 12:37:09', '96', '96');
INSERT INTO `tbl_customer` VALUES ('98', 'asdfgh', '公司97', 'www.97.com', '97', 'asdfgh', '2022-03-05 12:37:09', null, null, '97', '2022-03-05 12:37:09', '97', '97');
INSERT INTO `tbl_customer` VALUES ('99', 'asdfgh', '公司98', 'www.98.com', '98', 'asdfgh', '2022-03-05 12:37:09', null, null, '98', '2022-03-05 12:37:09', '98', '98');
INSERT INTO `tbl_customer` VALUES ('100', 'asdfgh', '公司99', 'www.99.com', '99', 'asdfgh', '2022-03-05 12:37:09', null, null, '99', '2022-03-05 12:37:09', '99', '99');
INSERT INTO `tbl_customer` VALUES ('101', 'asdfgh', '公司100', 'www.100.com', '100', 'asdfgh', '2022-03-05 12:37:09', null, null, '100', '2022-03-05 12:37:09', '100', '100');
INSERT INTO `tbl_customer` VALUES ('102', 'asdfgh', '公司101', 'www.101.com', '101', 'asdfgh', '2022-03-05 12:37:09', null, null, '101', '2022-03-05 12:37:09', '101', '101');
INSERT INTO `tbl_customer` VALUES ('103', 'asdfgh', '公司102', 'www.102.com', '102', 'asdfgh', '2022-03-05 12:37:09', null, null, '102', '2022-03-05 12:37:09', '102', '102');
INSERT INTO `tbl_customer` VALUES ('104', 'asdfgh', '公司103', 'www.103.com', '103', 'asdfgh', '2022-03-05 12:37:09', null, null, '103', '2022-03-05 12:37:09', '103', '103');
INSERT INTO `tbl_customer` VALUES ('105', 'asdfgh', '公司104', 'www.104.com', '104', 'asdfgh', '2022-03-05 12:37:09', null, null, '104', '2022-03-05 12:37:09', '104', '104');
INSERT INTO `tbl_customer` VALUES ('106', 'asdfgh', '公司105', 'www.105.com', '105', 'asdfgh', '2022-03-05 12:37:09', null, null, '105', '2022-03-05 12:37:09', '105', '105');
INSERT INTO `tbl_customer` VALUES ('107', 'asdfgh', '公司106', 'www.106.com', '106', 'asdfgh', '2022-03-05 12:37:09', null, null, '106', '2022-03-05 12:37:09', '106', '106');
INSERT INTO `tbl_customer` VALUES ('108', 'asdfgh', '公司107', 'www.107.com', '107', 'asdfgh', '2022-03-05 12:37:09', null, null, '107', '2022-03-05 12:37:09', '107', '107');
INSERT INTO `tbl_customer` VALUES ('109', 'asdfgh', '公司108', 'www.108.com', '108', 'asdfgh', '2022-03-05 12:37:09', null, null, '108', '2022-03-05 12:37:09', '108', '108');
INSERT INTO `tbl_customer` VALUES ('110', 'asdfgh', '公司109', 'www.109.com', '109', 'asdfgh', '2022-03-05 12:37:09', null, null, '109', '2022-03-05 12:37:09', '109', '109');
INSERT INTO `tbl_customer` VALUES ('111', 'asdfgh', '公司110', 'www.110.com', '110', 'asdfgh', '2022-03-05 12:37:09', null, null, '110', '2022-03-05 12:37:09', '110', '110');
INSERT INTO `tbl_customer` VALUES ('112', 'asdfgh', '公司111', 'www.111.com', '111', 'asdfgh', '2022-03-05 12:37:09', null, null, '111', '2022-03-05 12:37:09', '111', '111');
INSERT INTO `tbl_customer` VALUES ('113', 'asdfgh', '公司112', 'www.112.com', '112', 'asdfgh', '2022-03-05 12:37:09', null, null, '112', '2022-03-05 12:37:09', '112', '112');
INSERT INTO `tbl_customer` VALUES ('114', 'asdfgh', '公司113', 'www.113.com', '113', 'asdfgh', '2022-03-05 12:37:09', null, null, '113', '2022-03-05 12:37:09', '113', '113');
INSERT INTO `tbl_customer` VALUES ('115', 'asdfgh', '公司114', 'www.114.com', '114', 'asdfgh', '2022-03-05 12:37:09', null, null, '114', '2022-03-05 12:37:09', '114', '114');
INSERT INTO `tbl_customer` VALUES ('116', 'asdfgh', '公司115', 'www.115.com', '115', 'asdfgh', '2022-03-05 12:37:09', null, null, '115', '2022-03-05 12:37:09', '115', '115');
INSERT INTO `tbl_customer` VALUES ('117', 'asdfgh', '公司116', 'www.116.com', '116', 'asdfgh', '2022-03-05 12:37:09', null, null, '116', '2022-03-05 12:37:09', '116', '116');
INSERT INTO `tbl_customer` VALUES ('118', 'asdfgh', '公司117', 'www.117.com', '117', 'asdfgh', '2022-03-05 12:37:09', null, null, '117', '2022-03-05 12:37:09', '117', '117');
INSERT INTO `tbl_customer` VALUES ('119', 'asdfgh', '公司118', 'www.118.com', '118', 'asdfgh', '2022-03-05 12:37:09', null, null, '118', '2022-03-05 12:37:09', '118', '118');
INSERT INTO `tbl_customer` VALUES ('120', 'asdfgh', '公司119', 'www.119.com', '119', 'asdfgh', '2022-03-05 12:37:09', null, null, '119', '2022-03-05 12:37:09', '119', '119');
INSERT INTO `tbl_customer` VALUES ('121', 'asdfgh', '公司120', 'www.120.com', '120', 'asdfgh', '2022-03-05 12:37:09', null, null, '120', '2022-03-05 12:37:09', '120', '120');
INSERT INTO `tbl_customer` VALUES ('122', 'asdfgh', '公司121', 'www.121.com', '121', 'asdfgh', '2022-03-05 12:37:09', null, null, '121', '2022-03-05 12:37:09', '121', '121');
INSERT INTO `tbl_customer` VALUES ('123', 'asdfgh', '公司122', 'www.122.com', '122', 'asdfgh', '2022-03-05 12:37:09', null, null, '122', '2022-03-05 12:37:09', '122', '122');
INSERT INTO `tbl_customer` VALUES ('124', 'asdfgh', '公司123', 'www.123.com', '123', 'asdfgh', '2022-03-05 12:37:09', null, null, '123', '2022-03-05 12:37:09', '123', '123');
INSERT INTO `tbl_customer` VALUES ('125', 'asdfgh', '公司124', 'www.124.com', '124', 'asdfgh', '2022-03-05 12:37:09', null, null, '124', '2022-03-05 12:37:09', '124', '124');
INSERT INTO `tbl_customer` VALUES ('126', 'asdfgh', '公司125', 'www.125.com', '125', 'asdfgh', '2022-03-05 12:37:09', null, null, '125', '2022-03-05 12:37:09', '125', '125');
INSERT INTO `tbl_customer` VALUES ('127', 'asdfgh', '公司126', 'www.126.com', '126', 'asdfgh', '2022-03-05 12:37:09', null, null, '126', '2022-03-05 12:37:09', '126', '126');
INSERT INTO `tbl_customer` VALUES ('128', 'asdfgh', '公司127', 'www.127.com', '127', 'asdfgh', '2022-03-05 12:37:09', null, null, '127', '2022-03-05 12:37:09', '127', '127');
INSERT INTO `tbl_customer` VALUES ('129', 'asdfgh', '公司128', 'www.128.com', '128', 'asdfgh', '2022-03-05 12:37:09', null, null, '128', '2022-03-05 12:37:09', '128', '128');
INSERT INTO `tbl_customer` VALUES ('130', 'asdfgh', '公司129', 'www.129.com', '129', 'asdfgh', '2022-03-05 12:37:09', null, null, '129', '2022-03-05 12:37:09', '129', '129');
INSERT INTO `tbl_customer` VALUES ('131', 'asdfgh', '公司130', 'www.130.com', '130', 'asdfgh', '2022-03-05 12:37:09', null, null, '130', '2022-03-05 12:37:09', '130', '130');
INSERT INTO `tbl_customer` VALUES ('132', 'asdfgh', '公司131', 'www.131.com', '131', 'asdfgh', '2022-03-05 12:37:09', null, null, '131', '2022-03-05 12:37:09', '131', '131');
INSERT INTO `tbl_customer` VALUES ('133', 'asdfgh', '公司132', 'www.132.com', '132', 'asdfgh', '2022-03-05 12:37:09', null, null, '132', '2022-03-05 12:37:09', '132', '132');
INSERT INTO `tbl_customer` VALUES ('134', 'asdfgh', '公司133', 'www.133.com', '133', 'asdfgh', '2022-03-05 12:37:09', null, null, '133', '2022-03-05 12:37:09', '133', '133');
INSERT INTO `tbl_customer` VALUES ('135', 'asdfgh', '公司134', 'www.134.com', '134', 'asdfgh', '2022-03-05 12:37:09', null, null, '134', '2022-03-05 12:37:09', '134', '134');
INSERT INTO `tbl_customer` VALUES ('136', 'asdfgh', '公司135', 'www.135.com', '135', 'asdfgh', '2022-03-05 12:37:09', null, null, '135', '2022-03-05 12:37:09', '135', '135');
INSERT INTO `tbl_customer` VALUES ('137', 'asdfgh', '公司136', 'www.136.com', '136', 'asdfgh', '2022-03-05 12:37:09', null, null, '136', '2022-03-05 12:37:09', '136', '136');
INSERT INTO `tbl_customer` VALUES ('138', 'asdfgh', '公司137', 'www.137.com', '137', 'asdfgh', '2022-03-05 12:37:09', null, null, '137', '2022-03-05 12:37:09', '137', '137');
INSERT INTO `tbl_customer` VALUES ('139', 'asdfgh', '公司138', 'www.138.com', '138', 'asdfgh', '2022-03-05 12:37:09', null, null, '138', '2022-03-05 12:37:09', '138', '138');
INSERT INTO `tbl_customer` VALUES ('140', 'asdfgh', '公司139', 'www.139.com', '139', 'asdfgh', '2022-03-05 12:37:09', null, null, '139', '2022-03-05 12:37:09', '139', '139');
INSERT INTO `tbl_customer` VALUES ('141', 'asdfgh', '公司140', 'www.140.com', '140', 'asdfgh', '2022-03-05 12:37:09', null, null, '140', '2022-03-05 12:37:09', '140', '140');
INSERT INTO `tbl_customer` VALUES ('142', 'asdfgh', '公司141', 'www.141.com', '141', 'asdfgh', '2022-03-05 12:37:09', null, null, '141', '2022-03-05 12:37:09', '141', '141');
INSERT INTO `tbl_customer` VALUES ('143', 'asdfgh', '公司142', 'www.142.com', '142', 'asdfgh', '2022-03-05 12:37:09', null, null, '142', '2022-03-05 12:37:09', '142', '142');
INSERT INTO `tbl_customer` VALUES ('144', 'asdfgh', '公司143', 'www.143.com', '143', 'asdfgh', '2022-03-05 12:37:09', null, null, '143', '2022-03-05 12:37:09', '143', '143');
INSERT INTO `tbl_customer` VALUES ('145', 'asdfgh', '公司144', 'www.144.com', '144', 'asdfgh', '2022-03-05 12:37:09', null, null, '144', '2022-03-05 12:37:09', '144', '144');
INSERT INTO `tbl_customer` VALUES ('146', 'asdfgh', '公司145', 'www.145.com', '145', 'asdfgh', '2022-03-05 12:37:09', null, null, '145', '2022-03-05 12:37:09', '145', '145');
INSERT INTO `tbl_customer` VALUES ('147', 'asdfgh', '公司146', 'www.146.com', '146', 'asdfgh', '2022-03-05 12:37:09', null, null, '146', '2022-03-05 12:37:09', '146', '146');
INSERT INTO `tbl_customer` VALUES ('148', 'asdfgh', '公司147', 'www.147.com', '147', 'asdfgh', '2022-03-05 12:37:09', null, null, '147', '2022-03-05 12:37:09', '147', '147');
INSERT INTO `tbl_customer` VALUES ('149', 'asdfgh', '公司148', 'www.148.com', '148', 'asdfgh', '2022-03-05 12:37:10', null, null, '148', '2022-03-05 12:37:10', '148', '148');
INSERT INTO `tbl_customer` VALUES ('150', 'asdfgh', '公司149', 'www.149.com', '149', 'asdfgh', '2022-03-05 12:37:10', null, null, '149', '2022-03-05 12:37:10', '149', '149');
INSERT INTO `tbl_customer` VALUES ('151', 'asdfgh', '公司150', 'www.150.com', '150', 'asdfgh', '2022-03-05 12:37:10', null, null, '150', '2022-03-05 12:37:10', '150', '150');
INSERT INTO `tbl_customer` VALUES ('152', 'asdfgh', '公司151', 'www.151.com', '151', 'asdfgh', '2022-03-05 12:37:10', null, null, '151', '2022-03-05 12:37:10', '151', '151');
INSERT INTO `tbl_customer` VALUES ('153', 'asdfgh', '公司152', 'www.152.com', '152', 'asdfgh', '2022-03-05 12:37:10', null, null, '152', '2022-03-05 12:37:10', '152', '152');
INSERT INTO `tbl_customer` VALUES ('154', 'asdfgh', '公司153', 'www.153.com', '153', 'asdfgh', '2022-03-05 12:37:10', null, null, '153', '2022-03-05 12:37:10', '153', '153');
INSERT INTO `tbl_customer` VALUES ('155', 'asdfgh', '公司154', 'www.154.com', '154', 'asdfgh', '2022-03-05 12:37:10', null, null, '154', '2022-03-05 12:37:10', '154', '154');
INSERT INTO `tbl_customer` VALUES ('156', 'asdfgh', '公司155', 'www.155.com', '155', 'asdfgh', '2022-03-05 12:37:10', null, null, '155', '2022-03-05 12:37:10', '155', '155');
INSERT INTO `tbl_customer` VALUES ('157', 'asdfgh', '公司156', 'www.156.com', '156', 'asdfgh', '2022-03-05 12:37:10', null, null, '156', '2022-03-05 12:37:10', '156', '156');
INSERT INTO `tbl_customer` VALUES ('158', 'asdfgh', '公司157', 'www.157.com', '157', 'asdfgh', '2022-03-05 12:37:10', null, null, '157', '2022-03-05 12:37:10', '157', '157');
INSERT INTO `tbl_customer` VALUES ('159', 'asdfgh', '公司158', 'www.158.com', '158', 'asdfgh', '2022-03-05 12:37:10', null, null, '158', '2022-03-05 12:37:10', '158', '158');
INSERT INTO `tbl_customer` VALUES ('160', 'asdfgh', '公司159', 'www.159.com', '159', 'asdfgh', '2022-03-05 12:37:10', null, null, '159', '2022-03-05 12:37:10', '159', '159');
INSERT INTO `tbl_customer` VALUES ('161', 'asdfgh', '公司160', 'www.160.com', '160', 'asdfgh', '2022-03-05 12:37:10', null, null, '160', '2022-03-05 12:37:10', '160', '160');
INSERT INTO `tbl_customer` VALUES ('162', 'asdfgh', '公司161', 'www.161.com', '161', 'asdfgh', '2022-03-05 12:37:10', null, null, '161', '2022-03-05 12:37:10', '161', '161');
INSERT INTO `tbl_customer` VALUES ('163', 'asdfgh', '公司162', 'www.162.com', '162', 'asdfgh', '2022-03-05 12:37:10', null, null, '162', '2022-03-05 12:37:10', '162', '162');
INSERT INTO `tbl_customer` VALUES ('164', 'asdfgh', '公司163', 'www.163.com', '163', 'asdfgh', '2022-03-05 12:37:10', null, null, '163', '2022-03-05 12:37:10', '163', '163');
INSERT INTO `tbl_customer` VALUES ('165', 'asdfgh', '公司164', 'www.164.com', '164', 'asdfgh', '2022-03-05 12:37:10', null, null, '164', '2022-03-05 12:37:10', '164', '164');
INSERT INTO `tbl_customer` VALUES ('166', 'asdfgh', '公司165', 'www.165.com', '165', 'asdfgh', '2022-03-05 12:37:10', null, null, '165', '2022-03-05 12:37:10', '165', '165');
INSERT INTO `tbl_customer` VALUES ('167', 'asdfgh', '公司166', 'www.166.com', '166', 'asdfgh', '2022-03-05 12:37:10', null, null, '166', '2022-03-05 12:37:10', '166', '166');
INSERT INTO `tbl_customer` VALUES ('168', 'asdfgh', '公司167', 'www.167.com', '167', 'asdfgh', '2022-03-05 12:37:10', null, null, '167', '2022-03-05 12:37:10', '167', '167');
INSERT INTO `tbl_customer` VALUES ('169', 'asdfgh', '公司168', 'www.168.com', '168', 'asdfgh', '2022-03-05 12:37:10', null, null, '168', '2022-03-05 12:37:10', '168', '168');
INSERT INTO `tbl_customer` VALUES ('170', 'asdfgh', '公司169', 'www.169.com', '169', 'asdfgh', '2022-03-05 12:37:10', null, null, '169', '2022-03-05 12:37:10', '169', '169');
INSERT INTO `tbl_customer` VALUES ('171', 'asdfgh', '公司170', 'www.170.com', '170', 'asdfgh', '2022-03-05 12:37:10', null, null, '170', '2022-03-05 12:37:10', '170', '170');
INSERT INTO `tbl_customer` VALUES ('172', 'asdfgh', '公司171', 'www.171.com', '171', 'asdfgh', '2022-03-05 12:37:10', null, null, '171', '2022-03-05 12:37:10', '171', '171');
INSERT INTO `tbl_customer` VALUES ('173', 'asdfgh', '公司172', 'www.172.com', '172', 'asdfgh', '2022-03-05 12:37:10', null, null, '172', '2022-03-05 12:37:10', '172', '172');
INSERT INTO `tbl_customer` VALUES ('174', 'asdfgh', '公司173', 'www.173.com', '173', 'asdfgh', '2022-03-05 12:37:10', null, null, '173', '2022-03-05 12:37:10', '173', '173');
INSERT INTO `tbl_customer` VALUES ('175', 'asdfgh', '公司174', 'www.174.com', '174', 'asdfgh', '2022-03-05 12:37:10', null, null, '174', '2022-03-05 12:37:10', '174', '174');
INSERT INTO `tbl_customer` VALUES ('176', 'asdfgh', '公司175', 'www.175.com', '175', 'asdfgh', '2022-03-05 12:37:10', null, null, '175', '2022-03-05 12:37:10', '175', '175');
INSERT INTO `tbl_customer` VALUES ('177', 'asdfgh', '公司176', 'www.176.com', '176', 'asdfgh', '2022-03-05 12:37:10', null, null, '176', '2022-03-05 12:37:10', '176', '176');
INSERT INTO `tbl_customer` VALUES ('178', 'asdfgh', '公司177', 'www.177.com', '177', 'asdfgh', '2022-03-05 12:37:10', null, null, '177', '2022-03-05 12:37:10', '177', '177');
INSERT INTO `tbl_customer` VALUES ('179', 'asdfgh', '公司178', 'www.178.com', '178', 'asdfgh', '2022-03-05 12:37:10', null, null, '178', '2022-03-05 12:37:10', '178', '178');
INSERT INTO `tbl_customer` VALUES ('180', 'asdfgh', '公司179', 'www.179.com', '179', 'asdfgh', '2022-03-05 12:37:10', null, null, '179', '2022-03-05 12:37:10', '179', '179');
INSERT INTO `tbl_customer` VALUES ('181', 'asdfgh', '公司180', 'www.180.com', '180', 'asdfgh', '2022-03-05 12:37:10', null, null, '180', '2022-03-05 12:37:10', '180', '180');
INSERT INTO `tbl_customer` VALUES ('182', 'asdfgh', '公司181', 'www.181.com', '181', 'asdfgh', '2022-03-05 12:37:10', null, null, '181', '2022-03-05 12:37:10', '181', '181');
INSERT INTO `tbl_customer` VALUES ('183', 'asdfgh', '公司182', 'www.182.com', '182', 'asdfgh', '2022-03-05 12:37:10', null, null, '182', '2022-03-05 12:37:10', '182', '182');
INSERT INTO `tbl_customer` VALUES ('184', 'asdfgh', '公司183', 'www.183.com', '183', 'asdfgh', '2022-03-05 12:37:10', null, null, '183', '2022-03-05 12:37:10', '183', '183');
INSERT INTO `tbl_customer` VALUES ('185', 'asdfgh', '公司184', 'www.184.com', '184', 'asdfgh', '2022-03-05 12:37:10', null, null, '184', '2022-03-05 12:37:10', '184', '184');
INSERT INTO `tbl_customer` VALUES ('186', 'asdfgh', '公司185', 'www.185.com', '185', 'asdfgh', '2022-03-05 12:37:10', null, null, '185', '2022-03-05 12:37:10', '185', '185');
INSERT INTO `tbl_customer` VALUES ('187', 'asdfgh', '公司186', 'www.186.com', '186', 'asdfgh', '2022-03-05 12:37:10', null, null, '186', '2022-03-05 12:37:10', '186', '186');
INSERT INTO `tbl_customer` VALUES ('188', 'asdfgh', '公司187', 'www.187.com', '187', 'asdfgh', '2022-03-05 12:37:10', null, null, '187', '2022-03-05 12:37:10', '187', '187');
INSERT INTO `tbl_customer` VALUES ('189', 'asdfgh', '公司188', 'www.188.com', '188', 'asdfgh', '2022-03-05 12:37:10', null, null, '188', '2022-03-05 12:37:10', '188', '188');
INSERT INTO `tbl_customer` VALUES ('190', 'asdfgh', '公司189', 'www.189.com', '189', 'asdfgh', '2022-03-05 12:37:10', null, null, '189', '2022-03-05 12:37:10', '189', '189');
INSERT INTO `tbl_customer` VALUES ('191', 'asdfgh', '公司190', 'www.190.com', '190', 'asdfgh', '2022-03-05 12:37:10', null, null, '190', '2022-03-05 12:37:10', '190', '190');
INSERT INTO `tbl_customer` VALUES ('192', 'asdfgh', '公司191', 'www.191.com', '191', 'asdfgh', '2022-03-05 12:37:10', null, null, '191', '2022-03-05 12:37:10', '191', '191');
INSERT INTO `tbl_customer` VALUES ('193', 'asdfgh', '公司192', 'www.192.com', '192', 'asdfgh', '2022-03-05 12:37:10', null, null, '192', '2022-03-05 12:37:10', '192', '192');
INSERT INTO `tbl_customer` VALUES ('194', 'asdfgh', '公司193', 'www.193.com', '193', 'asdfgh', '2022-03-05 12:37:10', null, null, '193', '2022-03-05 12:37:10', '193', '193');
INSERT INTO `tbl_customer` VALUES ('195', 'asdfgh', '公司194', 'www.194.com', '194', 'asdfgh', '2022-03-05 12:37:10', null, null, '194', '2022-03-05 12:37:10', '194', '194');
INSERT INTO `tbl_customer` VALUES ('196', 'asdfgh', '公司195', 'www.195.com', '195', 'asdfgh', '2022-03-05 12:37:10', null, null, '195', '2022-03-05 12:37:10', '195', '195');
INSERT INTO `tbl_customer` VALUES ('197', 'asdfgh', '公司196', 'www.196.com', '196', 'asdfgh', '2022-03-05 12:37:10', null, null, '196', '2022-03-05 12:37:10', '196', '196');
INSERT INTO `tbl_customer` VALUES ('198', 'asdfgh', '公司197', 'www.197.com', '197', 'asdfgh', '2022-03-05 12:37:10', null, null, '197', '2022-03-05 12:37:10', '197', '197');
INSERT INTO `tbl_customer` VALUES ('199', 'asdfgh', '公司198', 'www.198.com', '198', 'asdfgh', '2022-03-05 12:37:10', null, null, '198', '2022-03-05 12:37:10', '198', '198');
INSERT INTO `tbl_customer` VALUES ('200', 'asdfgh', '公司199', 'www.199.com', '199', 'asdfgh', '2022-03-05 12:37:10', null, null, '199', '2022-03-05 12:37:10', '199', '199');

-- ----------------------------
-- Table structure for `tbl_dic_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL COMMENT '����������������Ϊ�գ����ܺ������ġ�',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

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

-- ----------------------------
-- Table structure for `tbl_dic_value`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL COMMENT '����Ϊ�գ�����Ҫ��ͬһ���ֵ��������ֵ�ֵ�����ظ�������Ψһ�ԡ�',
  `text` varchar(255) DEFAULT NULL COMMENT '����Ϊ��',
  `orderNo` int DEFAULT NULL,
  `typeCode` varchar(255) DEFAULT NULL COMMENT '���',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

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

-- ----------------------------
-- Table structure for `tbl_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `id` int NOT NULL DEFAULT '0',
  `role_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', '超级管理员', '具有全部业务权限');
INSERT INTO `tbl_role` VALUES ('2', '普通业务员', '具有除了用户管理外的全部权限');

-- ----------------------------
-- Table structure for `tbl_test`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test`;
CREATE TABLE `tbl_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` char(32) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expectedDate` char(19) DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `activityId` int DEFAULT NULL,
  `contactsId` int DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(19) DEFAULT NULL,
  `possible` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;

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
INSERT INTO `tbl_tran` VALUES ('11', 'asdfgh', '5000', '交易10', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '10', '10', '2022-01-01', '100');
INSERT INTO `tbl_tran` VALUES ('12', 'asdfgh', '5000', '交易11', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '11', '11', '2022-01-01', '110');
INSERT INTO `tbl_tran` VALUES ('13', 'asdfgh', '5000', '交易12', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '12', '12', '2022-01-01', '120');
INSERT INTO `tbl_tran` VALUES ('14', 'asdfgh', '5000', '交易13', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '13', '13', '2022-01-01', '130');
INSERT INTO `tbl_tran` VALUES ('15', 'asdfgh', '5000', '交易14', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '14', '14', '2022-01-01', '140');
INSERT INTO `tbl_tran` VALUES ('16', 'asdfgh', '5000', '交易15', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '15', '15', '2022-01-01', '150');
INSERT INTO `tbl_tran` VALUES ('17', 'asdfgh', '5000', '交易16', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '16', '16', '2022-01-01', '160');
INSERT INTO `tbl_tran` VALUES ('18', 'asdfgh', '5000', '交易17', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '17', '17', '2022-01-01', '170');
INSERT INTO `tbl_tran` VALUES ('19', 'asdfgh', '5000', '交易18', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '18', '18', '2022-01-01', '180');
INSERT INTO `tbl_tran` VALUES ('20', 'asdfgh', '5000', '交易19', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '19', '19', '2022-01-01', '190');
INSERT INTO `tbl_tran` VALUES ('21', 'asdfgh', '5000', '交易20', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '20', '20', '2022-01-01', '200');
INSERT INTO `tbl_tran` VALUES ('22', 'asdfgh', '5000', '交易21', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '21', '21', '2022-01-01', '210');
INSERT INTO `tbl_tran` VALUES ('23', 'asdfgh', '5000', '交易22', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '22', '22', '2022-01-01', '220');
INSERT INTO `tbl_tran` VALUES ('24', 'asdfgh', '5000', '交易23', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '23', '23', '2022-01-01', '230');
INSERT INTO `tbl_tran` VALUES ('25', 'asdfgh', '5000', '交易24', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '24', '24', '2022-01-01', '240');
INSERT INTO `tbl_tran` VALUES ('26', 'asdfgh', '5000', '交易25', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '25', '25', '2022-01-01', '250');
INSERT INTO `tbl_tran` VALUES ('27', 'asdfgh', '5000', '交易26', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '26', '26', '2022-01-01', '260');
INSERT INTO `tbl_tran` VALUES ('28', 'asdfgh', '5000', '交易27', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '27', '27', '2022-01-01', '270');
INSERT INTO `tbl_tran` VALUES ('29', 'asdfgh', '5000', '交易28', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '28', '28', '2022-01-01', '280');
INSERT INTO `tbl_tran` VALUES ('30', 'asdfgh', '5000', '交易29', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '29', '29', '2022-01-01', '290');
INSERT INTO `tbl_tran` VALUES ('31', 'asdfgh', '5000', '交易30', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '30', '30', '2022-01-01', '300');
INSERT INTO `tbl_tran` VALUES ('32', 'asdfgh', '5000', '交易31', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '31', '31', '2022-01-01', '310');
INSERT INTO `tbl_tran` VALUES ('33', 'asdfgh', '5000', '交易32', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '32', '32', '2022-01-01', '320');
INSERT INTO `tbl_tran` VALUES ('34', 'asdfgh', '5000', '交易33', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '33', '33', '2022-01-01', '330');
INSERT INTO `tbl_tran` VALUES ('35', 'asdfgh', '5000', '交易34', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '34', '34', '2022-01-01', '340');
INSERT INTO `tbl_tran` VALUES ('36', 'asdfgh', '5000', '交易35', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '35', '35', '2022-01-01', '350');
INSERT INTO `tbl_tran` VALUES ('37', 'asdfgh', '5000', '交易36', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '36', '36', '2022-01-01', '360');
INSERT INTO `tbl_tran` VALUES ('38', 'asdfgh', '5000', '交易37', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '37', '37', '2022-01-01', '370');
INSERT INTO `tbl_tran` VALUES ('39', 'asdfgh', '5000', '交易38', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '38', '38', '2022-01-01', '380');
INSERT INTO `tbl_tran` VALUES ('40', 'asdfgh', '5000', '交易39', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '39', '39', '2022-01-01', '390');
INSERT INTO `tbl_tran` VALUES ('41', 'asdfgh', '5000', '交易40', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '40', '40', '2022-01-01', '400');
INSERT INTO `tbl_tran` VALUES ('42', 'asdfgh', '5000', '交易41', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '41', '41', '2022-01-01', '410');
INSERT INTO `tbl_tran` VALUES ('43', 'asdfgh', '5000', '交易42', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '42', '42', '2022-01-01', '420');
INSERT INTO `tbl_tran` VALUES ('44', 'asdfgh', '5000', '交易43', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '43', '43', '2022-01-01', '430');
INSERT INTO `tbl_tran` VALUES ('45', 'asdfgh', '5000', '交易44', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '44', '44', '2022-01-01', '440');
INSERT INTO `tbl_tran` VALUES ('46', 'asdfgh', '5000', '交易45', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '45', '45', '2022-01-01', '450');
INSERT INTO `tbl_tran` VALUES ('47', 'asdfgh', '5000', '交易46', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '46', '46', '2022-01-01', '460');
INSERT INTO `tbl_tran` VALUES ('48', 'asdfgh', '5000', '交易47', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '47', '47', '2022-01-01', '470');
INSERT INTO `tbl_tran` VALUES ('49', 'asdfgh', '5000', '交易48', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '48', '48', '2022-01-01', '480');
INSERT INTO `tbl_tran` VALUES ('50', 'asdfgh', '5000', '交易49', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '49', '49', '2022-01-01', '490');
INSERT INTO `tbl_tran` VALUES ('51', 'asdfgh', '5000', '交易50', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '50', '50', '2022-01-01', '500');
INSERT INTO `tbl_tran` VALUES ('52', 'asdfgh', '5000', '交易51', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '51', '51', '2022-01-01', '510');
INSERT INTO `tbl_tran` VALUES ('53', 'asdfgh', '5000', '交易52', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '52', '52', '2022-01-01', '520');
INSERT INTO `tbl_tran` VALUES ('54', 'asdfgh', '5000', '交易53', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '53', '53', '2022-01-01', '530');
INSERT INTO `tbl_tran` VALUES ('55', 'asdfgh', '5000', '交易54', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '54', '54', '2022-01-01', '540');
INSERT INTO `tbl_tran` VALUES ('56', 'asdfgh', '5000', '交易55', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '55', '55', '2022-01-01', '550');
INSERT INTO `tbl_tran` VALUES ('57', 'asdfgh', '5000', '交易56', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '56', '56', '2022-01-01', '560');
INSERT INTO `tbl_tran` VALUES ('58', 'asdfgh', '5000', '交易57', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '57', '57', '2022-01-01', '570');
INSERT INTO `tbl_tran` VALUES ('59', 'asdfgh', '5000', '交易58', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '58', '58', '2022-01-01', '580');
INSERT INTO `tbl_tran` VALUES ('60', 'asdfgh', '5000', '交易59', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '59', '59', '2022-01-01', '590');
INSERT INTO `tbl_tran` VALUES ('61', 'asdfgh', '5000', '交易60', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '60', '60', '2022-01-01', '600');
INSERT INTO `tbl_tran` VALUES ('62', 'asdfgh', '5000', '交易61', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '61', '61', '2022-01-01', '610');
INSERT INTO `tbl_tran` VALUES ('63', 'asdfgh', '5000', '交易62', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '62', '62', '2022-01-01', '620');
INSERT INTO `tbl_tran` VALUES ('64', 'asdfgh', '5000', '交易63', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '63', '63', '2022-01-01', '630');
INSERT INTO `tbl_tran` VALUES ('65', 'asdfgh', '5000', '交易64', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '64', '64', '2022-01-01', '640');
INSERT INTO `tbl_tran` VALUES ('66', 'asdfgh', '5000', '交易65', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '65', '65', '2022-01-01', '650');
INSERT INTO `tbl_tran` VALUES ('67', 'asdfgh', '5000', '交易66', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '66', '66', '2022-01-01', '660');
INSERT INTO `tbl_tran` VALUES ('68', 'asdfgh', '5000', '交易67', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '67', '67', '2022-01-01', '670');
INSERT INTO `tbl_tran` VALUES ('69', 'asdfgh', '5000', '交易68', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '68', '68', '2022-01-01', '680');
INSERT INTO `tbl_tran` VALUES ('70', 'asdfgh', '5000', '交易69', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '69', '69', '2022-01-01', '690');
INSERT INTO `tbl_tran` VALUES ('71', 'asdfgh', '5000', '交易70', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '70', '70', '2022-01-01', '700');
INSERT INTO `tbl_tran` VALUES ('72', 'asdfgh', '5000', '交易71', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '71', '71', '2022-01-01', '710');
INSERT INTO `tbl_tran` VALUES ('73', 'asdfgh', '5000', '交易72', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '72', '72', '2022-01-01', '720');
INSERT INTO `tbl_tran` VALUES ('74', 'asdfgh', '5000', '交易73', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '73', '73', '2022-01-01', '730');
INSERT INTO `tbl_tran` VALUES ('75', 'asdfgh', '5000', '交易74', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '74', '74', '2022-01-01', '740');
INSERT INTO `tbl_tran` VALUES ('76', 'asdfgh', '5000', '交易75', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '75', '75', '2022-01-01', '750');
INSERT INTO `tbl_tran` VALUES ('77', 'asdfgh', '5000', '交易76', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '76', '76', '2022-01-01', '760');
INSERT INTO `tbl_tran` VALUES ('78', 'asdfgh', '5000', '交易77', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '77', '77', '2022-01-01', '770');
INSERT INTO `tbl_tran` VALUES ('79', 'asdfgh', '5000', '交易78', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '78', '78', '2022-01-01', '780');
INSERT INTO `tbl_tran` VALUES ('80', 'asdfgh', '5000', '交易79', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '79', '79', '2022-01-01', '790');
INSERT INTO `tbl_tran` VALUES ('81', 'asdfgh', '5000', '交易80', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '80', '80', '2022-01-01', '800');
INSERT INTO `tbl_tran` VALUES ('82', 'asdfgh', '5000', '交易81', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '81', '81', '2022-01-01', '810');
INSERT INTO `tbl_tran` VALUES ('83', 'asdfgh', '5000', '交易82', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '82', '82', '2022-01-01', '820');
INSERT INTO `tbl_tran` VALUES ('84', 'asdfgh', '5000', '交易83', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '83', '83', '2022-01-01', '830');
INSERT INTO `tbl_tran` VALUES ('85', 'asdfgh', '5000', '交易84', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '84', '84', '2022-01-01', '840');
INSERT INTO `tbl_tran` VALUES ('86', 'asdfgh', '5000', '交易85', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '85', '85', '2022-01-01', '850');
INSERT INTO `tbl_tran` VALUES ('87', 'asdfgh', '5000', '交易86', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '86', '86', '2022-01-01', '860');
INSERT INTO `tbl_tran` VALUES ('88', 'asdfgh', '5000', '交易87', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '87', '87', '2022-01-01', '870');
INSERT INTO `tbl_tran` VALUES ('89', 'asdfgh', '5000', '交易88', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '88', '88', '2022-01-01', '880');
INSERT INTO `tbl_tran` VALUES ('90', 'asdfgh', '5000', '交易89', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '89', '89', '2022-01-01', '890');
INSERT INTO `tbl_tran` VALUES ('91', 'asdfgh', '5000', '交易90', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '90', '90', '2022-01-01', '900');
INSERT INTO `tbl_tran` VALUES ('92', 'asdfgh', '5000', '交易91', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '91', '91', '2022-01-01', '910');
INSERT INTO `tbl_tran` VALUES ('93', 'asdfgh', '5000', '交易92', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '92', '92', '2022-01-01', '920');
INSERT INTO `tbl_tran` VALUES ('94', 'asdfgh', '5000', '交易93', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '93', '93', '2022-01-01', '930');
INSERT INTO `tbl_tran` VALUES ('95', 'asdfgh', '5000', '交易94', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '94', '94', '2022-01-01', '940');
INSERT INTO `tbl_tran` VALUES ('96', 'asdfgh', '5000', '交易95', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '95', '95', '2022-01-01', '950');
INSERT INTO `tbl_tran` VALUES ('97', 'asdfgh', '5000', '交易96', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '96', '96', '2022-01-01', '960');
INSERT INTO `tbl_tran` VALUES ('98', 'asdfgh', '5000', '交易97', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '97', '97', '2022-01-01', '970');
INSERT INTO `tbl_tran` VALUES ('99', 'asdfgh', '5000', '交易98', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '98', '98', '2022-01-01', '980');
INSERT INTO `tbl_tran` VALUES ('100', 'asdfgh', '5000', '交易99', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '99', '99', '2022-01-01', '990');
INSERT INTO `tbl_tran` VALUES ('101', 'asdfgh', '5000', '交易100', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '100', '100', '2022-01-01', '1000');
INSERT INTO `tbl_tran` VALUES ('102', 'asdfgh', '5000', '交易101', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '101', '101', '2022-01-01', '1010');
INSERT INTO `tbl_tran` VALUES ('103', 'asdfgh', '5000', '交易102', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '102', '102', '2022-01-01', '1020');
INSERT INTO `tbl_tran` VALUES ('104', 'asdfgh', '5000', '交易103', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '103', '103', '2022-01-01', '1030');
INSERT INTO `tbl_tran` VALUES ('105', 'asdfgh', '5000', '交易104', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '104', '104', '2022-01-01', '1040');
INSERT INTO `tbl_tran` VALUES ('106', 'asdfgh', '5000', '交易105', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '105', '105', '2022-01-01', '1050');
INSERT INTO `tbl_tran` VALUES ('107', 'asdfgh', '5000', '交易106', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '106', '106', '2022-01-01', '1060');
INSERT INTO `tbl_tran` VALUES ('108', 'asdfgh', '5000', '交易107', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '107', '107', '2022-01-01', '1070');
INSERT INTO `tbl_tran` VALUES ('109', 'asdfgh', '5000', '交易108', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '108', '108', '2022-01-01', '1080');
INSERT INTO `tbl_tran` VALUES ('110', 'asdfgh', '5000', '交易109', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '109', '109', '2022-01-01', '1090');
INSERT INTO `tbl_tran` VALUES ('111', 'asdfgh', '5000', '交易110', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '110', '110', '2022-01-01', '1100');
INSERT INTO `tbl_tran` VALUES ('112', 'asdfgh', '5000', '交易111', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '111', '111', '2022-01-01', '1110');
INSERT INTO `tbl_tran` VALUES ('113', 'asdfgh', '5000', '交易112', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '112', '112', '2022-01-01', '1120');
INSERT INTO `tbl_tran` VALUES ('114', 'asdfgh', '5000', '交易113', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '113', '113', '2022-01-01', '1130');
INSERT INTO `tbl_tran` VALUES ('115', 'asdfgh', '5000', '交易114', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '114', '114', '2022-01-01', '1140');
INSERT INTO `tbl_tran` VALUES ('116', 'asdfgh', '5000', '交易115', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '115', '115', '2022-01-01', '1150');
INSERT INTO `tbl_tran` VALUES ('117', 'asdfgh', '5000', '交易116', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '116', '116', '2022-01-01', '1160');
INSERT INTO `tbl_tran` VALUES ('118', 'asdfgh', '5000', '交易117', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '117', '117', '2022-01-01', '1170');
INSERT INTO `tbl_tran` VALUES ('119', 'asdfgh', '5000', '交易118', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '118', '118', '2022-01-01', '1180');
INSERT INTO `tbl_tran` VALUES ('120', 'asdfgh', '5000', '交易119', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '119', '119', '2022-01-01', '1190');
INSERT INTO `tbl_tran` VALUES ('121', 'asdfgh', '5000', '交易120', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '120', '120', '2022-01-01', '1200');
INSERT INTO `tbl_tran` VALUES ('122', 'asdfgh', '5000', '交易121', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '121', '121', '2022-01-01', '1210');
INSERT INTO `tbl_tran` VALUES ('123', 'asdfgh', '5000', '交易122', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '122', '122', '2022-01-01', '1220');
INSERT INTO `tbl_tran` VALUES ('124', 'asdfgh', '5000', '交易123', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '123', '123', '2022-01-01', '1230');
INSERT INTO `tbl_tran` VALUES ('125', 'asdfgh', '5000', '交易124', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '124', '124', '2022-01-01', '1240');
INSERT INTO `tbl_tran` VALUES ('126', 'asdfgh', '5000', '交易125', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '125', '125', '2022-01-01', '1250');
INSERT INTO `tbl_tran` VALUES ('127', 'asdfgh', '5000', '交易126', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '126', '126', '2022-01-01', '1260');
INSERT INTO `tbl_tran` VALUES ('128', 'asdfgh', '5000', '交易127', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '127', '127', '2022-01-01', '1270');
INSERT INTO `tbl_tran` VALUES ('129', 'asdfgh', '5000', '交易128', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '128', '128', '2022-01-01', '1280');
INSERT INTO `tbl_tran` VALUES ('130', 'asdfgh', '5000', '交易129', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '129', '129', '2022-01-01', '1290');
INSERT INTO `tbl_tran` VALUES ('131', 'asdfgh', '5000', '交易130', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '130', '130', '2022-01-01', '1300');
INSERT INTO `tbl_tran` VALUES ('132', 'asdfgh', '5000', '交易131', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '131', '131', '2022-01-01', '1310');
INSERT INTO `tbl_tran` VALUES ('133', 'asdfgh', '5000', '交易132', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '132', '132', '2022-01-01', '1320');
INSERT INTO `tbl_tran` VALUES ('134', 'asdfgh', '5000', '交易133', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '133', '133', '2022-01-01', '1330');
INSERT INTO `tbl_tran` VALUES ('135', 'asdfgh', '5000', '交易134', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '134', '134', '2022-01-01', '1340');
INSERT INTO `tbl_tran` VALUES ('136', 'asdfgh', '5000', '交易135', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '135', '135', '2022-01-01', '1350');
INSERT INTO `tbl_tran` VALUES ('137', 'asdfgh', '5000', '交易136', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '136', '136', '2022-01-01', '1360');
INSERT INTO `tbl_tran` VALUES ('138', 'asdfgh', '5000', '交易137', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '137', '137', '2022-01-01', '1370');
INSERT INTO `tbl_tran` VALUES ('139', 'asdfgh', '5000', '交易138', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '138', '138', '2022-01-01', '1380');
INSERT INTO `tbl_tran` VALUES ('140', 'asdfgh', '5000', '交易139', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '139', '139', '2022-01-01', '1390');
INSERT INTO `tbl_tran` VALUES ('141', 'asdfgh', '5000', '交易140', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '140', '140', '2022-01-01', '1400');
INSERT INTO `tbl_tran` VALUES ('142', 'asdfgh', '5000', '交易141', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '141', '141', '2022-01-01', '1410');
INSERT INTO `tbl_tran` VALUES ('143', 'asdfgh', '5000', '交易142', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '142', '142', '2022-01-01', '1420');
INSERT INTO `tbl_tran` VALUES ('144', 'asdfgh', '5000', '交易143', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '143', '143', '2022-01-01', '1430');
INSERT INTO `tbl_tran` VALUES ('145', 'asdfgh', '5000', '交易144', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '144', '144', '2022-01-01', '1440');
INSERT INTO `tbl_tran` VALUES ('146', 'asdfgh', '5000', '交易145', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '145', '145', '2022-01-01', '1450');
INSERT INTO `tbl_tran` VALUES ('147', 'asdfgh', '5000', '交易146', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '146', '146', '2022-01-01', '1460');
INSERT INTO `tbl_tran` VALUES ('148', 'asdfgh', '5000', '交易147', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '147', '147', '2022-01-01', '1470');
INSERT INTO `tbl_tran` VALUES ('149', 'asdfgh', '5000', '交易148', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '148', '148', '2022-01-01', '1480');
INSERT INTO `tbl_tran` VALUES ('150', 'asdfgh', '5000', '交易149', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '149', '149', '2022-01-01', '1490');
INSERT INTO `tbl_tran` VALUES ('151', 'asdfgh', '5000', '交易150', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '150', '150', '2022-01-01', '1500');
INSERT INTO `tbl_tran` VALUES ('152', 'asdfgh', '5000', '交易151', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '151', '151', '2022-01-01', '1510');
INSERT INTO `tbl_tran` VALUES ('153', 'asdfgh', '5000', '交易152', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '152', '152', '2022-01-01', '1520');
INSERT INTO `tbl_tran` VALUES ('154', 'asdfgh', '5000', '交易153', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '153', '153', '2022-01-01', '1530');
INSERT INTO `tbl_tran` VALUES ('155', 'asdfgh', '5000', '交易154', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '154', '154', '2022-01-01', '1540');
INSERT INTO `tbl_tran` VALUES ('156', 'asdfgh', '5000', '交易155', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '155', '155', '2022-01-01', '1550');
INSERT INTO `tbl_tran` VALUES ('157', 'asdfgh', '5000', '交易156', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '156', '156', '2022-01-01', '1560');
INSERT INTO `tbl_tran` VALUES ('158', 'asdfgh', '5000', '交易157', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '157', '157', '2022-01-01', '1570');
INSERT INTO `tbl_tran` VALUES ('159', 'asdfgh', '5000', '交易158', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '158', '158', '2022-01-01', '1580');
INSERT INTO `tbl_tran` VALUES ('160', 'asdfgh', '5000', '交易159', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '159', '159', '2022-01-01', '1590');
INSERT INTO `tbl_tran` VALUES ('161', 'asdfgh', '5000', '交易160', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '160', '160', '2022-01-01', '1600');
INSERT INTO `tbl_tran` VALUES ('162', 'asdfgh', '5000', '交易161', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '161', '161', '2022-01-01', '1610');
INSERT INTO `tbl_tran` VALUES ('163', 'asdfgh', '5000', '交易162', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '162', '162', '2022-01-01', '1620');
INSERT INTO `tbl_tran` VALUES ('164', 'asdfgh', '5000', '交易163', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '163', '163', '2022-01-01', '1630');
INSERT INTO `tbl_tran` VALUES ('165', 'asdfgh', '5000', '交易164', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '164', '164', '2022-01-01', '1640');
INSERT INTO `tbl_tran` VALUES ('166', 'asdfgh', '5000', '交易165', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '165', '165', '2022-01-01', '1650');
INSERT INTO `tbl_tran` VALUES ('167', 'asdfgh', '5000', '交易166', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '166', '166', '2022-01-01', '1660');
INSERT INTO `tbl_tran` VALUES ('168', 'asdfgh', '5000', '交易167', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '167', '167', '2022-01-01', '1670');
INSERT INTO `tbl_tran` VALUES ('169', 'asdfgh', '5000', '交易168', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '168', '168', '2022-01-01', '1680');
INSERT INTO `tbl_tran` VALUES ('170', 'asdfgh', '5000', '交易169', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '169', '169', '2022-01-01', '1690');
INSERT INTO `tbl_tran` VALUES ('171', 'asdfgh', '5000', '交易170', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '170', '170', '2022-01-01', '1700');
INSERT INTO `tbl_tran` VALUES ('172', 'asdfgh', '5000', '交易171', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '171', '171', '2022-01-01', '1710');
INSERT INTO `tbl_tran` VALUES ('173', 'asdfgh', '5000', '交易172', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '172', '172', '2022-01-01', '1720');
INSERT INTO `tbl_tran` VALUES ('174', 'asdfgh', '5000', '交易173', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '173', '173', '2022-01-01', '1730');
INSERT INTO `tbl_tran` VALUES ('175', 'asdfgh', '5000', '交易174', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '174', '174', '2022-01-01', '1740');
INSERT INTO `tbl_tran` VALUES ('176', 'asdfgh', '5000', '交易175', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '175', '175', '2022-01-01', '1750');
INSERT INTO `tbl_tran` VALUES ('177', 'asdfgh', '5000', '交易176', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '176', '176', '2022-01-01', '1760');
INSERT INTO `tbl_tran` VALUES ('178', 'asdfgh', '5000', '交易177', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '177', '177', '2022-01-01', '1770');
INSERT INTO `tbl_tran` VALUES ('179', 'asdfgh', '5000', '交易178', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '178', '178', '2022-01-01', '1780');
INSERT INTO `tbl_tran` VALUES ('180', 'asdfgh', '5000', '交易179', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '179', '179', '2022-01-01', '1790');
INSERT INTO `tbl_tran` VALUES ('181', 'asdfgh', '5000', '交易180', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '180', '180', '2022-01-01', '1800');
INSERT INTO `tbl_tran` VALUES ('182', 'asdfgh', '5000', '交易181', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '181', '181', '2022-01-01', '1810');
INSERT INTO `tbl_tran` VALUES ('183', 'asdfgh', '5000', '交易182', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '182', '182', '2022-01-01', '1820');
INSERT INTO `tbl_tran` VALUES ('184', 'asdfgh', '5000', '交易183', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '183', '183', '2022-01-01', '1830');
INSERT INTO `tbl_tran` VALUES ('185', 'asdfgh', '5000', '交易184', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '184', '184', '2022-01-01', '1840');
INSERT INTO `tbl_tran` VALUES ('186', 'asdfgh', '5000', '交易185', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '185', '185', '2022-01-01', '1850');
INSERT INTO `tbl_tran` VALUES ('187', 'asdfgh', '5000', '交易186', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '186', '186', '2022-01-01', '1860');
INSERT INTO `tbl_tran` VALUES ('188', 'asdfgh', '5000', '交易187', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '187', '187', '2022-01-01', '1870');
INSERT INTO `tbl_tran` VALUES ('189', 'asdfgh', '5000', '交易188', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '188', '188', '2022-01-01', '1880');
INSERT INTO `tbl_tran` VALUES ('190', 'asdfgh', '5000', '交易189', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '189', '189', '2022-01-01', '1890');
INSERT INTO `tbl_tran` VALUES ('191', 'asdfgh', '5000', '交易190', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '190', '190', '2022-01-01', '1900');
INSERT INTO `tbl_tran` VALUES ('192', 'asdfgh', '5000', '交易191', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '191', '191', '2022-01-01', '1910');
INSERT INTO `tbl_tran` VALUES ('193', 'asdfgh', '5000', '交易192', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '192', '192', '2022-01-01', '1920');
INSERT INTO `tbl_tran` VALUES ('194', 'asdfgh', '5000', '交易193', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '193', '193', '2022-01-01', '1930');
INSERT INTO `tbl_tran` VALUES ('195', 'asdfgh', '5000', '交易194', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '194', '194', '2022-01-01', '1940');
INSERT INTO `tbl_tran` VALUES ('196', 'asdfgh', '5000', '交易195', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '195', '195', '2022-01-01', '1950');
INSERT INTO `tbl_tran` VALUES ('197', 'asdfgh', '5000', '交易196', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '196', '196', '2022-01-01', '1960');
INSERT INTO `tbl_tran` VALUES ('198', 'asdfgh', '5000', '交易197', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '197', '197', '2022-01-01', '1970');
INSERT INTO `tbl_tran` VALUES ('199', 'asdfgh', '5000', '交易198', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '198', '198', '2022-01-01', '1980');
INSERT INTO `tbl_tran` VALUES ('200', 'asdfgh', '5000', '交易199', '2022-01-01', '5', '资质审查', '新业务', '广告', '6', '5', 'asdfgh', '2022-01-01', null, null, '199', '199', '2022-01-01', '1990');

-- ----------------------------
-- Table structure for `tbl_tran_history`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stage` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `expectedDate` char(19) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `tranId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'uuid\r\n            ',
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'asdfgh', 'zs', '张三', '250cf8b51c773f3f8dc8b4be867a9a02', '123@qq.com', '2023-12-31 18:08', '1', '127.0.0.1, 192.168.1.1', '2023-12-31 18:08', 'asdfgh', null, null);
INSERT INTO `tbl_user` VALUES ('2', 'admin1', 'nero', '尼禄', '202cb962ac59075b964b07152d234b70', '456@qq.com', '2099-12-31 18:08', '1', '*.*.*.*', '2022-02-21 14:59', 'asdfgh', null, null);
INSERT INTO `tbl_user` VALUES ('4', 'a052fb', 'ww', '王五', '202cb962ac59075b964b07152d234b70', '123@qq.com', '2023-03-03', '1', '127.0.0.1', '2022-03-13 17:07:06', 'asdfgh', null, null);

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '1');
INSERT INTO `tbl_user_role` VALUES ('2', '1');
INSERT INTO `tbl_user_role` VALUES ('4', '2');
