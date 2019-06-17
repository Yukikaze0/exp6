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

 Date: 17/06/2019 20:20:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone`  (
  `id` int(11) NOT NULL,
  `screensize` double(11, 1) NULL DEFAULT NULL,
  `weight` int(11) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `standbytime` int(11) NULL DEFAULT NULL,
  `pixel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photoquality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `id_foreign` FOREIGN KEY (`id`) REFERENCES `info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES (0, 4.5, 210, '黑', 96, '4K', '极高');
INSERT INTO `phone` VALUES (1, 4.0, 210, '金', 72, '8K', '低');
INSERT INTO `phone` VALUES (2, 5.3, 150, '金', 72, '1K', '中');
INSERT INTO `phone` VALUES (3, 4.7, 210, '红', 72, '4K', '高');
INSERT INTO `phone` VALUES (4, 6.2, 180, '绿', 48, '4K', '无所谓');
INSERT INTO `phone` VALUES (5, 5.0, 150, '白', 48, '8K', '极高');
INSERT INTO `phone` VALUES (6, 5.0, 210, '金', 96, '4K', '高');
INSERT INTO `phone` VALUES (7, 5.1, 150, '绿', 96, '4K', '高');
INSERT INTO `phone` VALUES (8, 5.1, 120, '红', 96, '1K', '高');
INSERT INTO `phone` VALUES (9, 4.5, 150, '黑', 24, '8K', '低');
INSERT INTO `phone` VALUES (10, 5.1, 150, '蓝', 72, '4K', '低');
INSERT INTO `phone` VALUES (11, 4.4, 120, '绿', 72, '4K', '极高');
INSERT INTO `phone` VALUES (12, 4.2, 150, '金', 72, '2K', '无所谓');
INSERT INTO `phone` VALUES (13, 4.4, 150, '红', 720, '2K', '低');
INSERT INTO `phone` VALUES (14, 4.8, 150, '红', 96, '8K', '低');
INSERT INTO `phone` VALUES (15, 4.0, 150, '黑', 168, '4K', '中');
INSERT INTO `phone` VALUES (16, 3.8, 150, '白', 96, '4K', '极高');
INSERT INTO `phone` VALUES (17, 5.7, 180, '金', 72, '4K', '低');
INSERT INTO `phone` VALUES (18, 5.0, 180, '蓝', 72, '8K', '极高');
INSERT INTO `phone` VALUES (19, 4.8, 180, '蓝', 24, '4K', '高');
INSERT INTO `phone` VALUES (20, 5.0, 180, '金', 72, '8K', '极高');
INSERT INTO `phone` VALUES (21, 3.4, 180, '金', 168, '4K', '极高');
INSERT INTO `phone` VALUES (22, 5.2, 210, '金', 48, '8K', '中');
INSERT INTO `phone` VALUES (23, 5.2, 150, '金', 96, '8K', '极高');
INSERT INTO `phone` VALUES (24, 5.5, 150, '黑', 72, '8K', '无所谓');
INSERT INTO `phone` VALUES (25, 4.8, 120, '红', 360, '8K', '低');
INSERT INTO `phone` VALUES (26, 4.9, 150, '黑', 168, '4K', '低');
INSERT INTO `phone` VALUES (27, 3.8, 150, '黑', 48, '4K', '极高');
INSERT INTO `phone` VALUES (28, 5.4, 150, '白', 96, '8K', '极高');
INSERT INTO `phone` VALUES (29, 6.2, 150, '蓝', 168, '8K', '中');
INSERT INTO `phone` VALUES (30, 5.3, 150, '白', 96, '8K', '极高');
INSERT INTO `phone` VALUES (31, 5.6, 150, '蓝', 48, '4K', '极高');
INSERT INTO `phone` VALUES (32, 3.8, 210, '蓝', 72, '4K', '中');
INSERT INTO `phone` VALUES (33, 5.6, 150, '蓝', 720, '1K', '高');
INSERT INTO `phone` VALUES (34, 4.7, 180, '蓝', 48, '4K', '中');
INSERT INTO `phone` VALUES (35, 4.6, 180, '红', 72, '4K', '极高');
INSERT INTO `phone` VALUES (36, 3.7, 150, '黑', 72, '4K', '无所谓');
INSERT INTO `phone` VALUES (37, 4.6, 150, '白', 48, '4K', '高');
INSERT INTO `phone` VALUES (38, 5.0, 180, '金', 24, '1K', '低');
INSERT INTO `phone` VALUES (39, 4.9, 210, '白', 360, '8K', '低');
INSERT INTO `phone` VALUES (40, 5.6, 210, '红', 24, '4K', '低');
INSERT INTO `phone` VALUES (41, 5.3, 150, '黑', 96, '8K', '高');
INSERT INTO `phone` VALUES (42, 6.1, 180, '绿', 96, '4K', '高');
INSERT INTO `phone` VALUES (43, 3.3, 150, '金', 48, '8K', '极高');
INSERT INTO `phone` VALUES (44, 4.3, 180, '黑', 72, '4K', '低');
INSERT INTO `phone` VALUES (45, 5.0, 120, '红', 96, '8K', '高');
INSERT INTO `phone` VALUES (46, 4.3, 150, '金', 360, '4K', '中');
INSERT INTO `phone` VALUES (47, 4.4, 150, '白', 72, '4K', '极高');
INSERT INTO `phone` VALUES (48, 4.7, 180, '黑', 72, '2K', '极高');
INSERT INTO `phone` VALUES (49, 5.1, 150, '黑', 72, '4K', '极高');
INSERT INTO `phone` VALUES (50, 5.5, 150, '金', 72, '4K', '高');
INSERT INTO `phone` VALUES (51, 4.8, 150, '黑', 168, '4K', '低');
INSERT INTO `phone` VALUES (52, 4.9, 180, '蓝', 72, '8K', '极高');
INSERT INTO `phone` VALUES (53, 4.2, 180, '红', 24, '4K', '极高');
INSERT INTO `phone` VALUES (54, 4.6, 120, '白', 96, '4K', '中');
INSERT INTO `phone` VALUES (55, 5.0, 150, '红', 72, '2K', '高');
INSERT INTO `phone` VALUES (56, 4.1, 150, '黑', 48, '2K', '极高');
INSERT INTO `phone` VALUES (57, 4.6, 120, '金', 96, '4K', '无所谓');
INSERT INTO `phone` VALUES (58, 4.4, 150, '金', 96, '4K', '中');
INSERT INTO `phone` VALUES (59, 5.5, 150, '白', 96, '8K', '中');
INSERT INTO `phone` VALUES (60, 4.8, 150, '黑', 168, '8K', '高');
INSERT INTO `phone` VALUES (61, 4.9, 150, '黑', 168, '4K', '中');
INSERT INTO `phone` VALUES (62, 4.5, 150, '金', 72, '4K', '高');
INSERT INTO `phone` VALUES (63, 4.9, 150, '红', 48, '8K', '高');
INSERT INTO `phone` VALUES (64, 5.3, 150, '绿', 360, '2K', '极高');
INSERT INTO `phone` VALUES (65, 4.2, 150, '白', 72, '8K', '极高');
INSERT INTO `phone` VALUES (66, 5.6, 120, '红', 72, '1K', '极高');
INSERT INTO `phone` VALUES (67, 5.7, 180, '黑', 96, '4K', '低');
INSERT INTO `phone` VALUES (68, 4.7, 150, '金', 72, '1K', '高');
INSERT INTO `phone` VALUES (69, 5.7, 120, '黑', 72, '4K', '高');
INSERT INTO `phone` VALUES (70, 5.3, 150, '蓝', 96, '4K', '中');
INSERT INTO `phone` VALUES (71, 5.4, 150, '红', 24, '4K', '高');
INSERT INTO `phone` VALUES (72, 5.4, 120, '金', 48, '8K', '极高');
INSERT INTO `phone` VALUES (73, 5.4, 150, '黑', 72, '8K', '极高');
INSERT INTO `phone` VALUES (74, 4.2, 120, '白', 96, '8K', '中');
INSERT INTO `phone` VALUES (75, 4.4, 150, '红', 96, '4K', '中');
INSERT INTO `phone` VALUES (76, 5.5, 150, '黑', 168, '4K', '高');
INSERT INTO `phone` VALUES (77, 4.8, 150, '黑', 720, '2K', '无所谓');
INSERT INTO `phone` VALUES (78, 5.1, 150, '蓝', 360, '4K', '低');
INSERT INTO `phone` VALUES (79, 4.9, 150, '黑', 96, '4K', '极高');
INSERT INTO `phone` VALUES (80, 5.1, 120, '黑', 96, '2K', '低');
INSERT INTO `phone` VALUES (81, 5.1, 180, '红', 72, '4K', '高');
INSERT INTO `phone` VALUES (82, 5.3, 120, '金', 96, '4K', '无所谓');
INSERT INTO `phone` VALUES (83, 5.4, 120, '红', 72, '4K', '高');
INSERT INTO `phone` VALUES (84, 5.5, 210, '黑', 72, '2K', '高');
INSERT INTO `phone` VALUES (85, 5.8, 150, '金', 24, '8K', '无所谓');
INSERT INTO `phone` VALUES (86, 5.6, 150, '红', 96, '8K', '中');
INSERT INTO `phone` VALUES (87, 5.1, 120, '金', 24, '4K', '无所谓');
INSERT INTO `phone` VALUES (88, 4.5, 150, '白', 72, '8K', '高');
INSERT INTO `phone` VALUES (89, 4.7, 150, '红', 48, '4K', '无所谓');
INSERT INTO `phone` VALUES (90, 5.2, 180, '白', 360, '8K', '无所谓');
INSERT INTO `phone` VALUES (91, 5.8, 120, '蓝', 96, '4K', '中');
INSERT INTO `phone` VALUES (92, 3.7, 150, '黑', 96, '4K', '低');
INSERT INTO `phone` VALUES (93, 5.3, 150, '绿', 96, '4K', '高');
INSERT INTO `phone` VALUES (94, 4.0, 150, '绿', 360, '8K', '无所谓');
INSERT INTO `phone` VALUES (95, 3.5, 150, '黑', 96, '1K', '中');
INSERT INTO `phone` VALUES (96, 5.1, 180, '黑', 96, '8K', '低');
INSERT INTO `phone` VALUES (97, 4.9, 150, '金', 96, '8K', '中');
INSERT INTO `phone` VALUES (98, 4.9, 120, '黑', 72, '4K', '无所谓');
INSERT INTO `phone` VALUES (99, 5.0, 210, '金', 48, '4K', '无所谓');

SET FOREIGN_KEY_CHECKS = 1;
