/*
 Navicat Premium Data Transfer

 Source Server         : Stronger
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 188.131.183.148:3316
 Source Schema         : Chat

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 15/04/2019 15:48:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `send_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `to_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isread` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `isdel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (9, '123123123', 'All', '1', '群消息测试', '1553848071', '0', '0');
INSERT INTO `chat` VALUES (10, '123123123', '2322300306', '0', '个人消息测试', '1553848087', '0', '0');
INSERT INTO `chat` VALUES (11, '2322300306', 'All', '1', '123', '1553848722', '0', '0');
INSERT INTO `chat` VALUES (12, '12345678', '2322300306', '0', '123\n', '1553851708', '0', '0');
INSERT INTO `chat` VALUES (13, '12345678', '2322300306', '0', '1', '1553851731', '0', '0');
INSERT INTO `chat` VALUES (14, '2322300306', 'All', '1', '11', '1553852372', '0', '0');
INSERT INTO `chat` VALUES (15, '2322300306', 'All', '1', '哈哈哈', '1553854543', '0', '0');
INSERT INTO `chat` VALUES (16, '1234567890', 'All', '1', '111', '1555311178', '0', '0');
INSERT INTO `chat` VALUES (17, '2322300306', 'All', '1', '111', '1555311576', '0', '0');
INSERT INTO `chat` VALUES (18, '2322300306', 'All', '1', '222', '1555311591', '0', '0');
INSERT INTO `chat` VALUES (19, '2322300306', 'All', '1', '测试', '1555312258', '0', '0');
INSERT INTO `chat` VALUES (20, '2322300306', 'All', '1', '111', '1555313336', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '登陆ip',
  `login_post` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '端口',
  `active_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '有效在线时间',
  `safe_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '安全码用于找回密码',
  `safe_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `isdel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account`(`account`) USING BTREE COMMENT '不重复'
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123123123', '-ud4lies9rf05iohlfcjgr8q7j2gefep', NULL, '/192.168.0.3:59326', '10001', '1553848889', NULL, NULL, '0');
INSERT INTO `user` VALUES (6, '2322300306', '-ud4lies9rf05iohlfcjgr8q7j2gefep', '2322300306@qq.com', '/111.32.90.45:25135', '10001', '1555313414', 'B6H0WF', '1553148840', '0');
INSERT INTO `user` VALUES (7, '12345678', '-ud4lies9rf05iohlfcjgr8q7j2gefep', '2322300306@qq.com', '192.168.0.3', '10001', '1553852367', NULL, NULL, '0');
INSERT INTO `user` VALUES (8, '123456789', '-b0r6k82fmqkollemuodcq7k41650sgri', '15175809883@163.com', '/192.168.0.3:57657', '10001', '1554109442', NULL, NULL, '0');
INSERT INTO `user` VALUES (9, '1234567890', '-ud4lies9rf05iohlfcjgr8q7j2gefep', '2322300306@qq.com', '/192.168.0.5:64709', '10001', '1555311244', NULL, NULL, '0');

SET FOREIGN_KEY_CHECKS = 1;
