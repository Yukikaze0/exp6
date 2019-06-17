/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : phone

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 17/06/2019 20:20:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` int(11) NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (0, '学生', 17, '男');
INSERT INTO `info` VALUES (1, '体力', 27, '女');
INSERT INTO `info` VALUES (2, '学生', 17, '女');
INSERT INTO `info` VALUES (3, '学生', 18, '男');
INSERT INTO `info` VALUES (4, '脑力', 28, '男');
INSERT INTO `info` VALUES (5, '学生', 21, '女');
INSERT INTO `info` VALUES (6, '学生', 24, '女');
INSERT INTO `info` VALUES (7, '学生', 20, '男');
INSERT INTO `info` VALUES (8, '体力', 22, '女');
INSERT INTO `info` VALUES (9, '学生', 21, '男');
INSERT INTO `info` VALUES (10, '学生', 20, '男');
INSERT INTO `info` VALUES (11, '学生', 22, '女');
INSERT INTO `info` VALUES (12, '体力', 20, '男');
INSERT INTO `info` VALUES (13, '脑力', 18, '女');
INSERT INTO `info` VALUES (14, '学生', 17, '女');
INSERT INTO `info` VALUES (15, '学生', 23, '女');
INSERT INTO `info` VALUES (16, '学生', 17, '男');
INSERT INTO `info` VALUES (17, '学生', 22, '女');
INSERT INTO `info` VALUES (18, '体力', 21, '男');
INSERT INTO `info` VALUES (19, '体力', 20, '女');
INSERT INTO `info` VALUES (20, '学生', 23, '女');
INSERT INTO `info` VALUES (21, '学生', 23, '女');
INSERT INTO `info` VALUES (22, '脑力', 22, '男');
INSERT INTO `info` VALUES (23, '学生', 16, '女');
INSERT INTO `info` VALUES (24, '学生', 17, '男');
INSERT INTO `info` VALUES (25, '脑力', 16, '女');
INSERT INTO `info` VALUES (26, '学生', 22, '男');
INSERT INTO `info` VALUES (27, '脑力', 20, '女');
INSERT INTO `info` VALUES (28, '学生', 20, '女');
INSERT INTO `info` VALUES (29, '学生', 16, '男');
INSERT INTO `info` VALUES (30, '脑力', 21, '女');
INSERT INTO `info` VALUES (31, '学生', 17, '女');
INSERT INTO `info` VALUES (32, '体力', 20, '女');
INSERT INTO `info` VALUES (33, '脑力', 23, '女');
INSERT INTO `info` VALUES (34, '学生', 15, '男');
INSERT INTO `info` VALUES (35, '学生', 21, '女');
INSERT INTO `info` VALUES (36, '学生', 15, '男');
INSERT INTO `info` VALUES (37, '学生', 21, '男');
INSERT INTO `info` VALUES (38, '学生', 25, '女');
INSERT INTO `info` VALUES (39, '学生', 25, '男');
INSERT INTO `info` VALUES (40, '学生', 25, '女');
INSERT INTO `info` VALUES (41, '脑力', 19, '女');
INSERT INTO `info` VALUES (42, '学生', 16, '女');
INSERT INTO `info` VALUES (43, '学生', 22, '女');
INSERT INTO `info` VALUES (44, '学生', 23, '女');
INSERT INTO `info` VALUES (45, '体力', 25, '女');
INSERT INTO `info` VALUES (46, '学生', 15, '女');
INSERT INTO `info` VALUES (47, '脑力', 28, '男');
INSERT INTO `info` VALUES (48, '学生', 15, '女');
INSERT INTO `info` VALUES (49, '学生', 20, '男');
INSERT INTO `info` VALUES (50, '体力', 25, '女');
INSERT INTO `info` VALUES (51, '学生', 21, '女');
INSERT INTO `info` VALUES (52, '脑力', 25, '女');
INSERT INTO `info` VALUES (53, '学生', 18, '女');
INSERT INTO `info` VALUES (54, '体力', 25, '男');
INSERT INTO `info` VALUES (55, '学生', 14, '男');
INSERT INTO `info` VALUES (56, '体力', 24, '男');
INSERT INTO `info` VALUES (57, '体力', 22, '男');
INSERT INTO `info` VALUES (58, '体力', 19, '女');
INSERT INTO `info` VALUES (59, '学生', 26, '女');
INSERT INTO `info` VALUES (60, '学生', 18, '男');
INSERT INTO `info` VALUES (61, '脑力', 19, '男');
INSERT INTO `info` VALUES (62, '学生', 24, '女');
INSERT INTO `info` VALUES (63, '学生', 27, '女');
INSERT INTO `info` VALUES (64, '学生', 25, '男');
INSERT INTO `info` VALUES (65, '学生', 17, '女');
INSERT INTO `info` VALUES (66, '体力', 27, '女');
INSERT INTO `info` VALUES (67, '脑力', 23, '男');
INSERT INTO `info` VALUES (68, '脑力', 28, '男');
INSERT INTO `info` VALUES (69, '学生', 18, '女');
INSERT INTO `info` VALUES (70, '体力', 23, '男');
INSERT INTO `info` VALUES (71, '脑力', 24, '女');
INSERT INTO `info` VALUES (72, '学生', 26, '女');
INSERT INTO `info` VALUES (73, '学生', 26, '男');
INSERT INTO `info` VALUES (74, '学生', 16, '男');
INSERT INTO `info` VALUES (75, '学生', 22, '男');
INSERT INTO `info` VALUES (76, '学生', 25, '男');
INSERT INTO `info` VALUES (77, '学生', 15, '男');
INSERT INTO `info` VALUES (78, '脑力', 23, '男');
INSERT INTO `info` VALUES (79, '学生', 18, '女');
INSERT INTO `info` VALUES (80, '体力', 20, '男');
INSERT INTO `info` VALUES (81, '学生', 23, '女');
INSERT INTO `info` VALUES (82, '脑力', 27, '男');
INSERT INTO `info` VALUES (83, '脑力', 21, '女');
INSERT INTO `info` VALUES (84, '学生', 24, '女');
INSERT INTO `info` VALUES (85, '脑力', 21, '男');
INSERT INTO `info` VALUES (86, '学生', 21, '女');
INSERT INTO `info` VALUES (87, '学生', 22, '男');
INSERT INTO `info` VALUES (88, '学生', 22, '女');
INSERT INTO `info` VALUES (89, '学生', 25, '男');
INSERT INTO `info` VALUES (90, '体力', 27, '男');
INSERT INTO `info` VALUES (91, '体力', 17, '男');
INSERT INTO `info` VALUES (92, '体力', 18, '女');
INSERT INTO `info` VALUES (93, '脑力', 26, '男');
INSERT INTO `info` VALUES (94, '脑力', 24, '男');
INSERT INTO `info` VALUES (95, '学生', 19, '男');
INSERT INTO `info` VALUES (96, '脑力', 24, '女');
INSERT INTO `info` VALUES (97, '学生', 15, '女');
INSERT INTO `info` VALUES (98, '脑力', 23, '男');
INSERT INTO `info` VALUES (99, '学生', 14, '女');

SET FOREIGN_KEY_CHECKS = 1;
