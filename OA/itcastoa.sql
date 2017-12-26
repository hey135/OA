/*
MySQL Data Transfer
Source Host: localhost
Source Database: itcastoa
Target Host: localhost
Target Database: itcastoa
Date: 2017/12/26 16:49:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for itcast_department
-- ----------------------------
DROP TABLE IF EXISTS `itcast_department`;
CREATE TABLE `itcast_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB56F87C7729C9286` (`parentId`),
  CONSTRAINT `FKB56F87C7729C9286` FOREIGN KEY (`parentId`) REFERENCES `itcast_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itcast_role
-- ----------------------------
DROP TABLE IF EXISTS `itcast_role`;
CREATE TABLE `itcast_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itcast_user
-- ----------------------------
DROP TABLE IF EXISTS `itcast_user`;
CREATE TABLE `itcast_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `departmentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4ADEC00F49BC32E` (`departmentId`),
  CONSTRAINT `FK4ADEC00F49BC32E` FOREIGN KEY (`departmentId`) REFERENCES `itcast_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itcast_user_role
-- ----------------------------
DROP TABLE IF EXISTS `itcast_user_role`;
CREATE TABLE `itcast_user_role` (
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `FK9C95CD55BB0AE3B6` (`roleId`),
  KEY `FK9C95CD55C0603920` (`userId`),
  CONSTRAINT `FK9C95CD55BB0AE3B6` FOREIGN KEY (`roleId`) REFERENCES `itcast_role` (`id`),
  CONSTRAINT `FK9C95CD55C0603920` FOREIGN KEY (`userId`) REFERENCES `itcast_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `itcast_department` VALUES ('2', '程序员', '请问驱蚊器翁群无', null);
INSERT INTO `itcast_role` VALUES ('2', ' 项目经理', '管理项目');
INSERT INTO `itcast_role` VALUES ('3', ' 小组长', ' 分组组长');
INSERT INTO `itcast_role` VALUES ('18', 'xxx', 'xxxx');
INSERT INTO `itcast_role` VALUES ('22', '成员', '安抚');
INSERT INTO `itcast_user` VALUES ('1', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('2', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('4', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('5', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('6', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('7', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('8', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('9', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('10', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('11', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('15', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('16', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('17', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('18', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('19', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('20', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('21', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('22', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('23', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('24', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('25', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('26', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('27', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('28', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('29', null, null, null, null, null, null, null, null);
INSERT INTO `itcast_user` VALUES ('30', null, null, null, null, null, null, null, null);
