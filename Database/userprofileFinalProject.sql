/*
Navicat MySQL Data Transfer

Source Server         : main
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : userprofile

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2016-12-21 01:25:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1482293231');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1482293241');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1482293242');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1482293243');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1482293244');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1482293244');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1482293244');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1482293244');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1482293245');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1482293246');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1482293246');
INSERT INTO `migration` VALUES ('m151218_234654_add_timezone_to_profile', '1482293246');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', null, null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('2', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', 'UxyrzlmvY9YCLZIG-a5YRMYaeuSpegWF', '1482299860', '0');
INSERT INTO `token` VALUES ('2', 'u92SjCuVnL2HcF_cDS49gM0lZv6v8BxT', '1482300385', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_email` (`email`),
  UNIQUE KEY `user_unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', 'bamboo212@gmail.com', '$2y$12$.qZyxP80JoPVlf9zFx59cO9HPdzLHklp42Sv8UTwZQuS5SaZee/eW', 'JrKsyigDtalfb-tcRhhAIgffpHiwjUOI', null, null, null, '::1', '1482299860', '1482299860', '0');
INSERT INTO `user` VALUES ('2', 'admin', 'bamboo12@gmail.com', '$2y$12$zKnLJOxy5dHues2jBZmWceUOcbENPMVranwu.aPxp584cgYvSjkEC', '_6vdOFCxPGMIh0CH8s9u0R3id7-NlC_Q', null, null, null, '::1', '1482300385', '1482300385', '0');

-- ----------------------------
-- Table structure for userprofile
-- ----------------------------
DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(35) NOT NULL,
  `lname` varchar(35) NOT NULL,
  `dob` varchar(14) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `yearsOfExperience` int(11) DEFAULT '0',
  `industry` varchar(65) NOT NULL,
  `loc` varchar(35) NOT NULL,
  `aboutMe` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `professionalTitle` varchar(12) NOT NULL,
  `careerLevel` varchar(20) NOT NULL,
  `commLevel` varchar(20) NOT NULL,
  `OrgLevel` varchar(20) NOT NULL,
  `jobRelLevel` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `website` varchar(35) NOT NULL,
  `email` varchar(55) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userprofile
-- ----------------------------
