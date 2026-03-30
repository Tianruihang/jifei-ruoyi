/*
 Navicat Premium Dump SQL

 Source Server         : 120.211.84.149
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44-log)
 Source Host           : 120.211.84.149:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44-log)
 File Encoding         : 65001

 Date: 29/03/2026 08:41:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charge_api_history
-- ----------------------------
DROP TABLE IF EXISTS `charge_api_history`;
CREATE TABLE `charge_api_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `project_id` bigint(20) NOT NULL COMMENT '项目ID',
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '计费接口记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charge_api_history
-- ----------------------------
INSERT INTO `charge_api_history` VALUES (1, 6, '抢滩登陆', '2026-01-21 16:43:26', '2026-01-21 16:43:26', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (2, 6, '抢滩登陆', '2026-01-21 16:44:14', '2026-01-21 16:44:14', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (3, 6, '抢滩登陆', '2026-01-21 16:44:56', '2026-01-21 16:44:56', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (4, 6, '抢滩登陆', '2026-01-21 17:44:15', '2026-01-21 17:44:15', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (5, 7, '消失的校花', '2026-01-21 17:47:14', '2026-01-21 17:47:14', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (6, 7, '消失的校花', '2026-01-22 10:06:14', '2026-01-22 10:06:14', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (7, 6, '抢滩登陆', '2026-01-22 10:36:48', '2026-01-22 10:36:48', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (8, 6, '抢滩登陆', '2026-01-22 16:53:46', '2026-01-22 16:53:46', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (9, 6, '抢滩登陆', '2026-01-22 17:19:22', '2026-01-22 17:19:22', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (10, 6, '抢滩登陆', '2026-01-22 17:29:12', '2026-01-22 17:29:12', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (11, 6, '抢滩登陆', '2026-01-22 17:31:19', '2026-01-22 17:31:19', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (12, 6, '抢滩登陆', '2026-01-23 09:57:17', '2026-01-23 09:57:17', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (13, 6, '抢滩登陆', '2026-01-23 10:01:48', '2026-01-23 10:01:48', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (14, 6, '抢滩登陆', '2026-01-23 10:12:55', '2026-01-23 10:12:55', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (15, 6, '抢滩登陆', '2026-01-23 10:15:58', '2026-01-23 10:15:58', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (16, 6, '抢滩登陆', '2026-01-23 10:22:19', '2026-01-23 10:22:19', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (17, 6, '抢滩登陆', '2026-01-23 10:28:43', '2026-01-23 10:28:43', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (18, 6, '抢滩登陆', '2026-01-23 10:51:36', '2026-01-23 10:51:36', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (19, 6, '抢滩登陆', '2026-01-23 11:00:44', '2026-01-23 11:00:44', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (20, 6, '抢滩登陆', '2026-01-23 11:06:34', '2026-01-23 11:06:34', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (21, 6, '抢滩登陆', '2026-01-23 11:07:49', '2026-01-23 11:07:49', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (22, 6, '抢滩登陆', '2026-01-23 11:15:18', '2026-01-23 11:15:18', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (23, 6, '抢滩登陆', '2026-01-23 11:23:40', '2026-01-23 11:23:40', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (24, 6, '抢滩登陆', '2026-01-23 11:24:42', '2026-01-23 11:24:42', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (25, 6, '抢滩登陆', '2026-01-23 11:57:16', '2026-01-23 11:57:16', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (26, 6, '抢滩登陆', '2026-01-24 15:07:40', '2026-01-24 15:07:40', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (27, 6, '抢滩登陆', '2026-01-24 15:38:59', '2026-01-24 15:38:59', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (28, 6, '抢滩登陆', '2026-01-24 15:51:00', '2026-01-24 15:51:00', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (29, 6, '抢滩登陆', '2026-01-24 16:26:44', '2026-01-24 16:26:44', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (30, 6, '抢滩登陆', '2026-01-24 16:43:11', '2026-01-24 16:43:11', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (31, 6, '抢滩登陆', '2026-01-24 16:52:18', '2026-01-24 16:52:18', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (32, 6, '抢滩登陆', '2026-01-28 14:26:36', '2026-01-28 14:26:36', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (33, 6, '抢滩登陆', '2026-01-28 14:29:26', '2026-01-28 14:29:26', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (34, 6, '抢滩登陆', '2026-01-28 14:32:26', '2026-01-28 14:32:26', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (35, 6, '抢滩登陆', '2026-01-28 14:36:50', '2026-01-28 14:36:50', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (36, 6, '抢滩登陆', '2026-01-28 14:42:05', '2026-01-28 14:42:05', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (37, 6, '抢滩登陆', '2026-01-28 14:42:29', '2026-01-28 14:42:29', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (38, 6, '抢滩登陆', '2026-02-01 13:34:29', '2026-02-01 13:34:29', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (39, 6, '抢滩登陆', '2026-02-28 14:01:50', '2026-02-28 14:01:50', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (40, 6, '抢滩登陆', '2026-02-28 14:20:30', '2026-02-28 14:20:30', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (41, 6, '抢滩登陆', '2026-02-28 14:31:27', '2026-02-28 14:31:27', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (42, 6, '抢滩登陆', '2026-02-28 14:48:26', '2026-02-28 14:48:26', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (43, 6, '抢滩登陆', '2026-02-28 14:52:11', '2026-02-28 14:52:11', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (44, 6, '抢滩登陆', '2026-02-28 14:54:39', '2026-02-28 14:54:39', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (45, 6, '抢滩登陆', '2026-02-28 15:12:49', '2026-02-28 15:12:49', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (46, 6, '抢滩登陆', '2026-02-28 15:28:10', '2026-02-28 15:28:10', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (47, 6, '抢滩登陆', '2026-02-28 15:52:28', '2026-02-28 15:52:28', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (48, 6, '抢滩登陆', '2026-02-28 15:58:21', '2026-02-28 15:58:21', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (49, 6, '抢滩登陆', '2026-02-28 16:31:00', '2026-02-28 16:31:00', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (50, 6, '抢滩登陆', '2026-02-28 16:44:56', '2026-02-28 16:44:56', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (51, 6, '抢滩登陆', '2026-03-01 13:27:47', '2026-03-01 13:27:47', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (52, 6, '抢滩登陆', '2026-03-01 13:42:45', '2026-03-01 13:42:45', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (53, 6, '抢滩登陆', '2026-03-01 14:11:46', '2026-03-01 14:11:46', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (54, 6, '抢滩登陆', '2026-03-01 15:17:42', '2026-03-01 15:17:42', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (55, 6, '抢滩登陆', '2026-03-02 12:17:49', '2026-03-02 12:17:49', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (56, 6, '抢滩登陆', '2026-03-02 13:06:57', '2026-03-02 13:06:57', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (57, 6, '抢滩登陆', '2026-03-02 13:18:55', '2026-03-02 13:18:55', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (58, 6, '抢滩登陆', '2026-03-02 13:29:41', '2026-03-02 13:29:41', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (59, 6, '抢滩登陆', '2026-03-02 15:09:43', '2026-03-02 15:09:43', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (60, 6, '抢滩登陆', '2026-03-02 16:31:38', '2026-03-02 16:31:38', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (61, 6, '抢滩登陆', '2026-03-04 09:48:50', '2026-03-04 09:48:50', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (62, 6, '抢滩登陆', '2026-03-04 14:56:03', '2026-03-04 14:56:03', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (63, 6, '抢滩登陆', '2026-03-06 12:38:11', '2026-03-06 12:38:11', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (64, 6, '抢滩登陆', '2026-03-06 12:40:04', '2026-03-06 12:40:04', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (65, 6, '抢滩登陆', '2026-03-07 09:36:19', '2026-03-07 09:36:19', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (66, 6, '抢滩登陆', '2026-03-07 11:08:39', '2026-03-07 11:08:39', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (67, 6, '抢滩登陆', '2026-03-07 12:31:16', '2026-03-07 12:31:16', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (68, 6, '抢滩登陆', '2026-03-07 13:08:25', '2026-03-07 13:08:25', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (69, 6, '抢滩登陆', '2026-03-07 13:22:09', '2026-03-07 13:22:09', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (70, 6, '抢滩登陆', '2026-03-07 13:41:10', '2026-03-07 13:41:10', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (71, 6, '抢滩登陆', '2026-03-07 14:15:16', '2026-03-07 14:15:16', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (72, 6, '抢滩登陆', '2026-03-07 14:25:26', '2026-03-07 14:25:26', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (73, 6, '抢滩登陆', '2026-03-07 15:19:51', '2026-03-07 15:19:51', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (74, 6, '抢滩登陆', '2026-03-07 15:35:35', '2026-03-07 15:35:35', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (75, 6, '抢滩登陆', '2026-03-07 15:41:23', '2026-03-07 15:41:23', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (76, 6, '抢滩登陆', '2026-03-07 16:18:31', '2026-03-07 16:18:31', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (77, 6, '抢滩登陆', '2026-03-07 16:34:35', '2026-03-07 16:34:35', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (78, 6, '抢滩登陆', '2026-03-07 16:38:00', '2026-03-07 16:38:00', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (79, 6, '抢滩登陆', '2026-03-08 08:54:16', '2026-03-08 08:54:16', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (80, 6, '抢滩登陆', '2026-03-08 12:29:57', '2026-03-08 12:29:57', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (81, 6, '抢滩登陆', '2026-03-08 13:11:17', '2026-03-08 13:11:17', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (82, 6, '抢滩登陆', '2026-03-08 13:42:00', '2026-03-08 13:42:00', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (83, 6, '抢滩登陆', '2026-03-08 14:04:18', '2026-03-08 14:04:18', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (84, 6, '抢滩登陆', '2026-03-08 14:15:57', '2026-03-08 14:15:57', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (85, 6, '抢滩登陆', '2026-03-08 15:48:55', '2026-03-08 15:48:55', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (86, 6, '抢滩登陆', '2026-03-08 16:00:24', '2026-03-08 16:00:24', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (87, 6, '抢滩登陆', '2026-03-08 16:03:10', '2026-03-08 16:03:10', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (88, 6, '抢滩登陆', '2026-03-08 16:09:27', '2026-03-08 16:09:27', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (89, 6, '抢滩登陆', '2026-03-21 10:32:18', '2026-03-21 10:32:18', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (90, 6, '抢滩登陆', '2026-03-21 12:38:32', '2026-03-21 12:38:32', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (91, 6, '抢滩登陆', '2026-03-28 10:50:39', '2026-03-28 10:50:39', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (92, 6, '抢滩登陆', '2026-03-28 11:00:32', '2026-03-28 11:00:32', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (93, 6, '抢滩登陆', '2026-03-28 11:34:08', '2026-03-28 11:34:08', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (94, 6, '抢滩登陆', '2026-03-28 11:43:44', '2026-03-28 11:43:44', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (95, 6, '抢滩登陆', '2026-03-28 12:42:54', '2026-03-28 12:42:54', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (96, 6, '抢滩登陆', '2026-03-28 12:52:30', '2026-03-28 12:52:30', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (97, 6, '抢滩登陆', '2026-03-28 13:04:17', '2026-03-28 13:04:17', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (98, 6, '抢滩登陆', '2026-03-28 13:09:40', '2026-03-28 13:09:40', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (99, 6, '抢滩登陆', '2026-03-28 13:27:17', '2026-03-28 13:27:17', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (100, 6, '抢滩登陆', '2026-03-28 13:41:12', '2026-03-28 13:41:12', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (101, 6, '抢滩登陆', '2026-03-28 14:03:37', '2026-03-28 14:03:37', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (102, 6, '抢滩登陆', '2026-03-28 14:12:26', '2026-03-28 14:12:26', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (103, 6, '抢滩登陆', '2026-03-28 14:24:15', '2026-03-28 14:24:15', '', '', '', 108);
INSERT INTO `charge_api_history` VALUES (104, 6, '抢滩登陆', '2026-03-28 14:29:21', '2026-03-28 14:29:21', '', '', '', 108);

-- ----------------------------
-- Table structure for charge_exchange
-- ----------------------------
DROP TABLE IF EXISTS `charge_exchange`;
CREATE TABLE `charge_exchange`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `limit_amount` int(11) NOT NULL COMMENT '点数',
  `amount` int(11) NOT NULL COMMENT '兑换金额',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分与余额兑换公式表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charge_exchange
-- ----------------------------
INSERT INTO `charge_exchange` VALUES (1, 1, 1, NULL, NULL, '', '', '');

-- ----------------------------
-- Table structure for charge_info
-- ----------------------------
DROP TABLE IF EXISTS `charge_info`;
CREATE TABLE `charge_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `project_id` bigint(20) NOT NULL COMMENT '项目ID',
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `limit_amount` int(11) NOT NULL COMMENT '消耗点数',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '计费管理业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charge_info
-- ----------------------------
INSERT INTO `charge_info` VALUES (102, 6, '抢滩登陆', 3, 108, '2026-01-21 16:42:04', '2026-01-21 16:42:04', '', '', '');
INSERT INTO `charge_info` VALUES (103, 6, '抢滩登陆', 3, 108, '2026-01-21 16:42:05', '2026-01-21 16:42:05', '', '', '');
INSERT INTO `charge_info` VALUES (104, 6, '抢滩登陆', 3, 108, '2026-01-21 16:42:10', '2026-01-21 16:42:10', '', '', '');
INSERT INTO `charge_info` VALUES (105, 6, '抢滩登陆', 3, 108, '2026-01-21 16:43:26', '2026-01-21 16:43:26', '', '', '');
INSERT INTO `charge_info` VALUES (106, 6, '抢滩登陆', 3, 108, '2026-01-21 16:44:14', '2026-01-21 16:44:14', '', '', '');
INSERT INTO `charge_info` VALUES (107, 6, '抢滩登陆', 3, 108, '2026-01-21 16:44:56', '2026-01-21 16:44:56', '', '', '');
INSERT INTO `charge_info` VALUES (108, 6, '抢滩登陆', 3, 108, '2026-01-21 17:44:15', '2026-01-21 17:44:15', '', '', '');
INSERT INTO `charge_info` VALUES (109, 7, '消失的校花', 3, 108, '2026-01-21 17:47:14', '2026-01-21 17:47:14', '', '', '');
INSERT INTO `charge_info` VALUES (110, 7, '消失的校花', 3, 108, '2026-01-22 10:06:14', '2026-01-22 10:06:14', '', '', '');
INSERT INTO `charge_info` VALUES (111, 6, '抢滩登陆', 3, 108, '2026-01-22 10:36:48', '2026-01-22 10:36:48', '', '', '');
INSERT INTO `charge_info` VALUES (112, 6, '抢滩登陆', 3, 108, '2026-01-22 16:53:46', '2026-01-22 16:53:46', '', '', '');
INSERT INTO `charge_info` VALUES (113, 6, '抢滩登陆', 3, 108, '2026-01-22 17:19:22', '2026-01-22 17:19:22', '', '', '');
INSERT INTO `charge_info` VALUES (114, 6, '抢滩登陆', 3, 108, '2026-01-22 17:29:12', '2026-01-22 17:29:12', '', '', '');
INSERT INTO `charge_info` VALUES (115, 6, '抢滩登陆', 3, 108, '2026-01-22 17:31:19', '2026-01-22 17:31:19', '', '', '');
INSERT INTO `charge_info` VALUES (116, 6, '抢滩登陆', 3, 108, '2026-01-23 09:57:17', '2026-01-23 09:57:17', '', '', '');
INSERT INTO `charge_info` VALUES (117, 6, '抢滩登陆', 3, 108, '2026-01-23 10:01:48', '2026-01-23 10:01:48', '', '', '');
INSERT INTO `charge_info` VALUES (118, 6, '抢滩登陆', 3, 108, '2026-01-23 10:12:55', '2026-01-23 10:12:55', '', '', '');
INSERT INTO `charge_info` VALUES (119, 6, '抢滩登陆', 3, 108, '2026-01-23 10:15:58', '2026-01-23 10:15:58', '', '', '');
INSERT INTO `charge_info` VALUES (120, 6, '抢滩登陆', 3, 108, '2026-01-23 10:22:19', '2026-01-23 10:22:19', '', '', '');
INSERT INTO `charge_info` VALUES (121, 6, '抢滩登陆', 3, 108, '2026-01-23 10:28:43', '2026-01-23 10:28:43', '', '', '');
INSERT INTO `charge_info` VALUES (122, 6, '抢滩登陆', 3, 108, '2026-01-23 10:51:36', '2026-01-23 10:51:36', '', '', '');
INSERT INTO `charge_info` VALUES (123, 6, '抢滩登陆', 3, 108, '2026-01-23 11:00:44', '2026-01-23 11:00:44', '', '', '');
INSERT INTO `charge_info` VALUES (124, 6, '抢滩登陆', 3, 108, '2026-01-23 11:06:34', '2026-01-23 11:06:34', '', '', '');
INSERT INTO `charge_info` VALUES (125, 6, '抢滩登陆', 3, 108, '2026-01-23 11:07:49', '2026-01-23 11:07:49', '', '', '');
INSERT INTO `charge_info` VALUES (126, 6, '抢滩登陆', 3, 108, '2026-01-23 11:15:18', '2026-01-23 11:15:18', '', '', '');
INSERT INTO `charge_info` VALUES (127, 6, '抢滩登陆', 3, 108, '2026-01-23 11:23:40', '2026-01-23 11:23:40', '', '', '');
INSERT INTO `charge_info` VALUES (128, 6, '抢滩登陆', 3, 108, '2026-01-23 11:24:42', '2026-01-23 11:24:42', '', '', '');
INSERT INTO `charge_info` VALUES (129, 6, '抢滩登陆', 3, 108, '2026-01-23 11:57:16', '2026-01-23 11:57:16', '', '', '');
INSERT INTO `charge_info` VALUES (130, 6, '抢滩登陆', 3, 108, '2026-01-24 15:07:40', '2026-01-24 15:07:40', '', '', '');
INSERT INTO `charge_info` VALUES (131, 6, '抢滩登陆', 3, 108, '2026-01-24 15:38:59', '2026-01-24 15:38:59', '', '', '');
INSERT INTO `charge_info` VALUES (132, 6, '抢滩登陆', 3, 108, '2026-01-24 15:51:00', '2026-01-24 15:51:00', '', '', '');
INSERT INTO `charge_info` VALUES (133, 6, '抢滩登陆', 3, 108, '2026-01-24 16:26:44', '2026-01-24 16:26:44', '', '', '');
INSERT INTO `charge_info` VALUES (134, 6, '抢滩登陆', 3, 108, '2026-01-24 16:43:11', '2026-01-24 16:43:11', '', '', '');
INSERT INTO `charge_info` VALUES (135, 6, '抢滩登陆', 3, 108, '2026-01-24 16:52:18', '2026-01-24 16:52:18', '', '', '');
INSERT INTO `charge_info` VALUES (136, 6, '抢滩登陆', 3, 108, '2026-01-28 14:26:36', '2026-01-28 14:26:36', '', '', '');
INSERT INTO `charge_info` VALUES (137, 6, '抢滩登陆', 3, 108, '2026-01-28 14:29:26', '2026-01-28 14:29:26', '', '', '');
INSERT INTO `charge_info` VALUES (138, 6, '抢滩登陆', 3, 108, '2026-01-28 14:32:26', '2026-01-28 14:32:26', '', '', '');
INSERT INTO `charge_info` VALUES (139, 6, '抢滩登陆', 3, 108, '2026-01-28 14:36:50', '2026-01-28 14:36:50', '', '', '');
INSERT INTO `charge_info` VALUES (140, 6, '抢滩登陆', 3, 108, '2026-01-28 14:42:05', '2026-01-28 14:42:05', '', '', '');
INSERT INTO `charge_info` VALUES (141, 6, '抢滩登陆', 3, 108, '2026-01-28 14:42:29', '2026-01-28 14:42:29', '', '', '');
INSERT INTO `charge_info` VALUES (143, 6, '抢滩登陆', 3, 108, '2026-02-28 14:01:50', '2026-02-28 14:01:50', '', '', '');
INSERT INTO `charge_info` VALUES (144, 6, '抢滩登陆', 3, 108, '2026-02-28 14:20:30', '2026-02-28 14:20:30', '', '', '');
INSERT INTO `charge_info` VALUES (145, 6, '抢滩登陆', 3, 108, '2026-02-28 14:31:27', '2026-02-28 14:31:27', '', '', '');
INSERT INTO `charge_info` VALUES (146, 6, '抢滩登陆', 3, 108, '2026-02-28 14:48:26', '2026-02-28 14:48:26', '', '', '');
INSERT INTO `charge_info` VALUES (147, 6, '抢滩登陆', 3, 108, '2026-02-28 14:52:11', '2026-02-28 14:52:11', '', '', '');
INSERT INTO `charge_info` VALUES (148, 6, '抢滩登陆', 3, 108, '2026-02-28 14:54:39', '2026-02-28 14:54:39', '', '', '');
INSERT INTO `charge_info` VALUES (149, 6, '抢滩登陆', 3, 108, '2026-02-28 15:12:49', '2026-02-28 15:12:49', '', '', '');
INSERT INTO `charge_info` VALUES (150, 6, '抢滩登陆', 3, 108, '2026-02-28 15:28:10', '2026-02-28 15:28:10', '', '', '');
INSERT INTO `charge_info` VALUES (151, 6, '抢滩登陆', 3, 108, '2026-02-28 15:52:28', '2026-02-28 15:52:28', '', '', '');
INSERT INTO `charge_info` VALUES (152, 6, '抢滩登陆', 3, 108, '2026-02-28 15:58:21', '2026-02-28 15:58:21', '', '', '');
INSERT INTO `charge_info` VALUES (153, 6, '抢滩登陆', 3, 108, '2026-02-28 16:31:00', '2026-02-28 16:31:00', '', '', '');
INSERT INTO `charge_info` VALUES (154, 6, '抢滩登陆', 3, 108, '2026-02-28 16:44:56', '2026-02-28 16:44:56', '', '', '');
INSERT INTO `charge_info` VALUES (155, 6, '抢滩登陆', 3, 108, '2026-03-01 13:27:47', '2026-03-01 13:27:47', '', '', '');
INSERT INTO `charge_info` VALUES (156, 6, '抢滩登陆', 3, 108, '2026-03-01 13:42:45', '2026-03-01 13:42:45', '', '', '');
INSERT INTO `charge_info` VALUES (157, 6, '抢滩登陆', 3, 108, '2026-03-01 14:11:46', '2026-03-01 14:11:46', '', '', '');
INSERT INTO `charge_info` VALUES (158, 6, '抢滩登陆', 3, 108, '2026-03-01 15:17:42', '2026-03-01 15:17:42', '', '', '');
INSERT INTO `charge_info` VALUES (159, 6, '抢滩登陆', 3, 108, '2026-03-02 12:17:49', '2026-03-02 12:17:49', '', '', '');
INSERT INTO `charge_info` VALUES (160, 6, '抢滩登陆', 3, 108, '2026-03-02 13:06:57', '2026-03-02 13:06:57', '', '', '');
INSERT INTO `charge_info` VALUES (161, 6, '抢滩登陆', 3, 108, '2026-03-02 13:18:55', '2026-03-02 13:18:55', '', '', '');
INSERT INTO `charge_info` VALUES (162, 6, '抢滩登陆', 3, 108, '2026-03-02 13:29:41', '2026-03-02 13:29:41', '', '', '');
INSERT INTO `charge_info` VALUES (163, 6, '抢滩登陆', 3, 108, '2026-03-02 15:09:43', '2026-03-02 15:09:43', '', '', '');
INSERT INTO `charge_info` VALUES (164, 6, '抢滩登陆', 3, 108, '2026-03-02 16:31:38', '2026-03-02 16:31:38', '', '', '');
INSERT INTO `charge_info` VALUES (165, 6, '抢滩登陆', 3, 108, '2026-03-04 09:48:50', '2026-03-04 09:48:50', '', '', '');
INSERT INTO `charge_info` VALUES (166, 6, '抢滩登陆', 3, 108, '2026-03-04 14:56:03', '2026-03-04 14:56:03', '', '', '');
INSERT INTO `charge_info` VALUES (167, 6, '抢滩登陆', 3, 108, '2026-03-06 12:38:11', '2026-03-06 12:38:11', '', '', '');
INSERT INTO `charge_info` VALUES (168, 6, '抢滩登陆', 3, 108, '2026-03-06 12:40:04', '2026-03-06 12:40:04', '', '', '');
INSERT INTO `charge_info` VALUES (169, 6, '抢滩登陆', 3, 108, '2026-03-07 09:36:19', '2026-03-07 09:36:19', '', '', '');
INSERT INTO `charge_info` VALUES (170, 6, '抢滩登陆', 3, 108, '2026-03-07 11:08:39', '2026-03-07 11:08:39', '', '', '');
INSERT INTO `charge_info` VALUES (171, 6, '抢滩登陆', 3, 108, '2026-03-07 12:31:16', '2026-03-07 12:31:16', '', '', '');
INSERT INTO `charge_info` VALUES (172, 6, '抢滩登陆', 3, 108, '2026-03-07 13:08:25', '2026-03-07 13:08:25', '', '', '');
INSERT INTO `charge_info` VALUES (173, 6, '抢滩登陆', 3, 108, '2026-03-07 13:22:09', '2026-03-07 13:22:09', '', '', '');
INSERT INTO `charge_info` VALUES (174, 6, '抢滩登陆', 3, 108, '2026-03-07 13:41:10', '2026-03-07 13:41:10', '', '', '');
INSERT INTO `charge_info` VALUES (175, 6, '抢滩登陆', 3, 108, '2026-03-07 14:15:16', '2026-03-07 14:15:16', '', '', '');
INSERT INTO `charge_info` VALUES (176, 6, '抢滩登陆', 3, 108, '2026-03-07 14:25:26', '2026-03-07 14:25:26', '', '', '');
INSERT INTO `charge_info` VALUES (177, 6, '抢滩登陆', 3, 108, '2026-03-07 15:19:51', '2026-03-07 15:19:51', '', '', '');
INSERT INTO `charge_info` VALUES (178, 6, '抢滩登陆', 3, 108, '2026-03-07 15:35:35', '2026-03-07 15:35:35', '', '', '');
INSERT INTO `charge_info` VALUES (179, 6, '抢滩登陆', 3, 108, '2026-03-07 15:41:23', '2026-03-07 15:41:23', '', '', '');
INSERT INTO `charge_info` VALUES (180, 6, '抢滩登陆', 3, 108, '2026-03-07 16:18:31', '2026-03-07 16:18:31', '', '', '');
INSERT INTO `charge_info` VALUES (181, 6, '抢滩登陆', 3, 108, '2026-03-07 16:34:35', '2026-03-07 16:34:35', '', '', '');
INSERT INTO `charge_info` VALUES (182, 6, '抢滩登陆', 3, 108, '2026-03-07 16:38:00', '2026-03-07 16:38:00', '', '', '');
INSERT INTO `charge_info` VALUES (183, 6, '抢滩登陆', 3, 108, '2026-03-08 08:54:16', '2026-03-08 08:54:16', '', '', '');
INSERT INTO `charge_info` VALUES (184, 6, '抢滩登陆', 3, 108, '2026-03-08 12:29:57', '2026-03-08 12:29:57', '', '', '');
INSERT INTO `charge_info` VALUES (185, 6, '抢滩登陆', 3, 108, '2026-03-08 13:11:17', '2026-03-08 13:11:17', '', '', '');
INSERT INTO `charge_info` VALUES (186, 6, '抢滩登陆', 3, 108, '2026-03-08 13:42:00', '2026-03-08 13:42:00', '', '', '');
INSERT INTO `charge_info` VALUES (187, 6, '抢滩登陆', 3, 108, '2026-03-08 14:04:18', '2026-03-08 14:04:18', '', '', '');
INSERT INTO `charge_info` VALUES (188, 6, '抢滩登陆', 3, 108, '2026-03-08 14:15:57', '2026-03-08 14:15:57', '', '', '');
INSERT INTO `charge_info` VALUES (189, 6, '抢滩登陆', 3, 108, '2026-03-08 15:48:55', '2026-03-08 15:48:55', '', '', '');
INSERT INTO `charge_info` VALUES (190, 6, '抢滩登陆', 3, 108, '2026-03-08 16:00:24', '2026-03-08 16:00:24', '', '', '');
INSERT INTO `charge_info` VALUES (191, 6, '抢滩登陆', 3, 108, '2026-03-08 16:03:10', '2026-03-08 16:03:10', '', '', '');
INSERT INTO `charge_info` VALUES (192, 6, '抢滩登陆', 3, 108, '2026-03-08 16:09:27', '2026-03-08 16:09:27', '', '', '');
INSERT INTO `charge_info` VALUES (193, 6, '抢滩登陆', 3, 108, '2026-03-21 10:32:18', '2026-03-21 10:32:18', '', '', '');
INSERT INTO `charge_info` VALUES (194, 6, '抢滩登陆', 3, 108, '2026-03-21 12:38:32', '2026-03-21 12:38:32', '', '', '');
INSERT INTO `charge_info` VALUES (195, 6, '抢滩登陆', 3, 108, '2026-03-28 10:50:39', '2026-03-28 10:50:39', '', '', '');
INSERT INTO `charge_info` VALUES (196, 6, '抢滩登陆', 3, 108, '2026-03-28 11:00:32', '2026-03-28 11:00:32', '', '', '');
INSERT INTO `charge_info` VALUES (197, 6, '抢滩登陆', 3, 108, '2026-03-28 11:34:08', '2026-03-28 11:34:08', '', '', '');
INSERT INTO `charge_info` VALUES (198, 6, '抢滩登陆', 3, 108, '2026-03-28 11:43:44', '2026-03-28 11:43:44', '', '', '');
INSERT INTO `charge_info` VALUES (199, 6, '抢滩登陆', 3, 108, '2026-03-28 12:42:54', '2026-03-28 12:42:54', '', '', '');
INSERT INTO `charge_info` VALUES (200, 6, '抢滩登陆', 3, 108, '2026-03-28 12:52:30', '2026-03-28 12:52:30', '', '', '');
INSERT INTO `charge_info` VALUES (201, 6, '抢滩登陆', 3, 108, '2026-03-28 13:04:17', '2026-03-28 13:04:17', '', '', '');
INSERT INTO `charge_info` VALUES (202, 6, '抢滩登陆', 3, 108, '2026-03-28 13:09:40', '2026-03-28 13:09:40', '', '', '');
INSERT INTO `charge_info` VALUES (203, 6, '抢滩登陆', 3, 108, '2026-03-28 13:27:17', '2026-03-28 13:27:17', '', '', '');
INSERT INTO `charge_info` VALUES (204, 6, '抢滩登陆', 3, 108, '2026-03-28 13:41:12', '2026-03-28 13:41:12', '', '', '');
INSERT INTO `charge_info` VALUES (205, 6, '抢滩登陆', 3, 108, '2026-03-28 14:03:37', '2026-03-28 14:03:37', '', '', '');
INSERT INTO `charge_info` VALUES (206, 6, '抢滩登陆', 3, 108, '2026-03-28 14:12:26', '2026-03-28 14:12:26', '', '', '');
INSERT INTO `charge_info` VALUES (207, 6, '抢滩登陆', 3, 108, '2026-03-28 14:24:15', '2026-03-28 14:24:15', '', '', '');
INSERT INTO `charge_info` VALUES (208, 6, '抢滩登陆', 3, 108, '2026-03-28 14:29:21', '2026-03-28 14:29:21', '', '', '');

-- ----------------------------
-- Table structure for charge_offline_record
-- ----------------------------
DROP TABLE IF EXISTS `charge_offline_record`;
CREATE TABLE `charge_offline_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `amount` int(11) NOT NULL COMMENT '充值金额',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '线下用户充值记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charge_offline_record
-- ----------------------------
INSERT INTO `charge_offline_record` VALUES (4, 1000, 106, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (5, 2000, 106, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (6, 1000, 102, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (7, 1000, 103, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (8, 1000, 108, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (9, 1000, 102, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (10, 1000, 103, NULL, NULL, '', '', '');
INSERT INTO `charge_offline_record` VALUES (11, 30, 108, NULL, NULL, '', '', '');

-- ----------------------------
-- Table structure for charge_rule
-- ----------------------------
DROP TABLE IF EXISTS `charge_rule`;
CREATE TABLE `charge_rule`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `project_id` bigint(20) NOT NULL COMMENT '项目ID',
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `limit_amount` int(11) NOT NULL COMMENT '消耗点数',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '积分消费规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charge_rule
-- ----------------------------
INSERT INTO `charge_rule` VALUES (2, 2, '大厦指令', 3, NULL, NULL, '', '', '');
INSERT INTO `charge_rule` VALUES (5, 3, '重回山海', 3, NULL, NULL, '', '', '');
INSERT INTO `charge_rule` VALUES (6, 4, '抢滩登陆', 3, NULL, NULL, '', '', '');
INSERT INTO `charge_rule` VALUES (7, 5, '消失的校花', 3, NULL, NULL, '', '', '');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-09-13 21:59:25', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-09-13 21:59:25', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-09-13 21:59:25', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2025-09-13 21:59:25', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-09-13 21:59:25', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-09-13 21:59:25', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-09-13 21:59:25', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 407 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-09-13 22:31:53');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-09-13 23:10:16');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-09-13 23:11:00');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-09-13 23:14:08');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-09-13 23:14:39');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-09-13 23:16:21');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-14 21:23:48');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 10:54:12');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 11:16:55');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 11:24:23');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 12:02:48');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 12:07:26');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 17:00:51');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-22 17:30:32');
INSERT INTO `sys_logininfor` VALUES (114, '雄安中关村店', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-25 09:45:52');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-25 15:46:42');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-09-30 08:38:31');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2025-10-11 17:06:41');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-10-11 17:06:54');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2025-10-14 10:01:14');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2025-10-14 10:01:24');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2025-10-14 10:01:26');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '36.143.13.200', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-06 15:13:02');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '183.129.45.68', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-06 15:17:05');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '183.128.191.114', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-09 23:20:12');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-12 14:08:29');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-12 14:08:39');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2026-01-12 14:15:05');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-12 14:15:11');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-12 15:12:18');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '183.128.191.114', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-12 15:29:35');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '退出成功', '2026-01-12 16:12:03');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '120.211.84.149', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-12 16:12:06');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '183.128.191.114', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-12 16:28:42');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '183.128.191.114', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-12 17:14:01');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '183.128.191.114', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-12 17:33:44');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '180.213.153.89', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-16 12:36:38');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '180.213.153.89', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-16 12:37:01');
INSERT INTO `sys_logininfor` VALUES (138, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2026-01-16 17:06:30');
INSERT INTO `sys_logininfor` VALUES (139, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-16 17:16:23');
INSERT INTO `sys_logininfor` VALUES (140, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-16 17:16:43');
INSERT INTO `sys_logininfor` VALUES (141, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-16 17:23:27');
INSERT INTO `sys_logininfor` VALUES (142, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-16 17:25:53');
INSERT INTO `sys_logininfor` VALUES (143, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-16 17:26:02');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-21 15:32:37');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '112.54.81.43', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2026-01-21 15:38:11');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:16:02');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '112.6.227.144', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2026-01-21 16:22:24');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '112.6.227.144', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:24:36');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '112.6.227.144', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:26:09');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:28:44');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '112.6.227.144', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:30:03');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:31:18');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 16:44:55');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-21 17:44:12');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 17:44:14');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-21 17:47:13');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 09:59:22');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 10:04:14');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 10:06:14');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 10:36:47');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:38:49');
INSERT INTO `sys_logininfor` VALUES (162, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:38:57');
INSERT INTO `sys_logininfor` VALUES (163, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:40:34');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:40:41');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:42:50');
INSERT INTO `sys_logininfor` VALUES (166, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:42:58');
INSERT INTO `sys_logininfor` VALUES (167, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:44:09');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:45:06');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:45:50');
INSERT INTO `sys_logininfor` VALUES (170, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:45:58');
INSERT INTO `sys_logininfor` VALUES (171, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:47:37');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:47:42');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:48:40');
INSERT INTO `sys_logininfor` VALUES (174, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:48:47');
INSERT INTO `sys_logininfor` VALUES (175, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:49:58');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:50:01');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:50:20');
INSERT INTO `sys_logininfor` VALUES (178, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:50:28');
INSERT INTO `sys_logininfor` VALUES (179, 'JinanZooStore', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '退出成功', '2026-01-22 10:50:56');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-22 10:51:01');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '111.55.120.5', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 16:53:46');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 17:19:22');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 17:29:11');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '115.206.126.96', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-22 17:31:18');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '1', '验证码已失效', '2026-01-23 09:54:17');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '115.206.126.96', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-23 09:54:21');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 09:57:17');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 10:01:48');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 10:12:55');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 10:15:57');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 10:22:19');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 10:28:42');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 10:51:36');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:00:43');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:06:32');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:07:49');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:15:17');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:23:39');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '111.55.120.15', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:24:41');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '111.55.120.59', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-23 11:57:15');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '36.143.54.188', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-23 17:28:57');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '39.144.112.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-24 15:07:39');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '39.144.112.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-24 15:38:58');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '39.144.112.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-24 15:51:00');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '39.144.112.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-24 16:26:43');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '39.144.112.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-24 16:43:10');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '39.144.112.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-24 16:52:18');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '36.143.54.188', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-26 08:51:26');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '115.195.54.189', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 10:18:57');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '115.195.54.189', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 10:18:58');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 14:26:36');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '112.6.227.144', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 14:29:25');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 14:32:26');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '112.6.227.144', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 14:36:50');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 14:42:04');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '112.54.81.34', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-01-28 14:42:29');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '36.143.54.188', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-28 15:26:04');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '36.143.54.188', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-30 15:22:13');
INSERT INTO `sys_logininfor` VALUES (219, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-01-30 15:59:34');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '36.143.54.188', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-01-30 17:36:49');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '144.12.138.171', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-01 13:34:29');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '183.198.130.143', 'XX XX', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2026-02-01 13:52:54');
INSERT INTO `sys_logininfor` VALUES (223, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-02-02 10:29:03');
INSERT INTO `sys_logininfor` VALUES (224, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-02-02 10:47:57');
INSERT INTO `sys_logininfor` VALUES (225, 'xionganxy', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-02-02 11:05:56');
INSERT INTO `sys_logininfor` VALUES (226, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-02 14:11:32');
INSERT INTO `sys_logininfor` VALUES (227, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-02 14:14:13');
INSERT INTO `sys_logininfor` VALUES (228, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-02 14:16:11');
INSERT INTO `sys_logininfor` VALUES (229, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-02 14:18:20');
INSERT INTO `sys_logininfor` VALUES (230, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-02 15:12:30');
INSERT INTO `sys_logininfor` VALUES (231, 'xionganxytest', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-02-02 15:49:22');
INSERT INTO `sys_logininfor` VALUES (232, 'xionganxyts', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-02-02 15:49:29');
INSERT INTO `sys_logininfor` VALUES (233, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-02 15:50:57');
INSERT INTO `sys_logininfor` VALUES (234, '兴元test1', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-03 11:47:02');
INSERT INTO `sys_logininfor` VALUES (235, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-04 09:49:58');
INSERT INTO `sys_logininfor` VALUES (236, '兴元test1', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-04 16:06:10');
INSERT INTO `sys_logininfor` VALUES (237, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 09:31:12');
INSERT INTO `sys_logininfor` VALUES (238, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 09:39:43');
INSERT INTO `sys_logininfor` VALUES (239, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 09:55:56');
INSERT INTO `sys_logininfor` VALUES (240, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 10:24:32');
INSERT INTO `sys_logininfor` VALUES (241, 'tiktok112501', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-02-05 12:52:06');
INSERT INTO `sys_logininfor` VALUES (242, 'tiktok112501', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 12:52:28');
INSERT INTO `sys_logininfor` VALUES (243, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 14:27:30');
INSERT INTO `sys_logininfor` VALUES (244, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 14:31:25');
INSERT INTO `sys_logininfor` VALUES (245, '001', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 15:27:50');
INSERT INTO `sys_logininfor` VALUES (246, '001', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-05 15:30:42');
INSERT INTO `sys_logininfor` VALUES (247, 'fzq918', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-02-06 08:52:39');
INSERT INTO `sys_logininfor` VALUES (248, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 08:55:38');
INSERT INTO `sys_logininfor` VALUES (249, 'fzq918', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 08:57:15');
INSERT INTO `sys_logininfor` VALUES (250, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 09:52:08');
INSERT INTO `sys_logininfor` VALUES (251, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 10:56:45');
INSERT INTO `sys_logininfor` VALUES (252, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 10:57:02');
INSERT INTO `sys_logininfor` VALUES (253, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 11:01:03');
INSERT INTO `sys_logininfor` VALUES (254, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 16:18:58');
INSERT INTO `sys_logininfor` VALUES (255, 'zji_1949', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-06 19:33:42');
INSERT INTO `sys_logininfor` VALUES (256, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-09 13:55:21');
INSERT INTO `sys_logininfor` VALUES (257, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-09 13:55:44');
INSERT INTO `sys_logininfor` VALUES (258, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-09 18:05:33');
INSERT INTO `sys_logininfor` VALUES (259, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-09 18:42:36');
INSERT INTO `sys_logininfor` VALUES (260, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-09 21:29:25');
INSERT INTO `sys_logininfor` VALUES (261, 'zxtj', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-09 21:32:12');
INSERT INTO `sys_logininfor` VALUES (262, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-10 08:51:23');
INSERT INTO `sys_logininfor` VALUES (263, '兴元test1', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-11 11:47:31');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '36.143.13.155', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-11 14:53:30');
INSERT INTO `sys_logininfor` VALUES (265, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-12 10:11:18');
INSERT INTO `sys_logininfor` VALUES (266, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-12 10:11:32');
INSERT INTO `sys_logininfor` VALUES (267, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-12 10:12:05');
INSERT INTO `sys_logininfor` VALUES (268, 'hhh', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-12 14:03:08');
INSERT INTO `sys_logininfor` VALUES (269, 'liontreee', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-13 22:15:47');
INSERT INTO `sys_logininfor` VALUES (270, 'Wy7977505', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-02-17 18:38:58');
INSERT INTO `sys_logininfor` VALUES (271, 'Wy7977505', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-17 18:39:00');
INSERT INTO `sys_logininfor` VALUES (272, 'Wy7977505', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-17 18:44:35');
INSERT INTO `sys_logininfor` VALUES (273, 'Wy7977505', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-20 08:54:59');
INSERT INTO `sys_logininfor` VALUES (274, 'Wy7977505', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-02-25 23:48:51');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '183.198.130.38', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-26 14:12:39');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '183.198.130.38', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-26 14:55:06');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '60.176.204.19', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-02-26 14:57:14');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 14:01:48');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 14:20:29');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 14:31:26');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 14:48:26');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 14:52:11');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 14:54:38');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 15:12:49');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 15:28:10');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 15:52:27');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 15:58:20');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 16:30:59');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '144.12.3.132', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-02-28 16:44:55');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '144.12.2.214', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-01 13:27:46');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '144.12.2.214', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-01 13:42:44');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '144.12.2.214', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-01 14:11:46');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '144.12.2.214', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-01 15:17:41');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '144.12.10.222', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-02 12:17:48');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '144.12.10.222', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-02 13:06:56');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '144.12.10.222', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-02 13:18:55');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '144.12.10.222', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-02 13:29:40');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '144.12.10.222', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-02 15:09:42');
INSERT INTO `sys_logininfor` VALUES (299, '549684014', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-02 15:36:34');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '144.12.10.222', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-02 16:31:37');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '183.198.130.38', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-03 11:12:55');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '144.12.136.140', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-04 09:48:49');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '144.12.136.140', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-04 14:56:03');
INSERT INTO `sys_logininfor` VALUES (304, 'gongyubiao', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-04 18:45:41');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '183.198.130.38', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-05 09:07:13');
INSERT INTO `sys_logininfor` VALUES (306, '沉苓 Wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-06 10:50:15');
INSERT INTO `sys_logininfor` VALUES (307, '沉苓Wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-06 10:50:33');
INSERT INTO `sys_logininfor` VALUES (308, '1360971067', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-06 10:50:59');
INSERT INTO `sys_logininfor` VALUES (309, '沉苓Wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-06 10:51:17');
INSERT INTO `sys_logininfor` VALUES (310, '沉苓Wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-06 10:52:14');
INSERT INTO `sys_logininfor` VALUES (311, '沉苓Wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-06 10:52:15');
INSERT INTO `sys_logininfor` VALUES (312, '沉苓Wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-06 10:52:21');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '144.12.128.4', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-06 12:38:10');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '144.12.128.4', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-06 12:40:04');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 09:36:18');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 11:08:38');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 12:31:14');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 13:08:24');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 13:22:08');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 13:41:09');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 14:15:15');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 14:25:25');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 15:19:50');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 15:35:34');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 15:41:22');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 16:18:30');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 16:34:34');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '144.12.3.40', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-07 16:37:59');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 08:54:15');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 12:29:56');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 13:11:17');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 13:42:00');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 14:04:17');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 14:15:57');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 15:48:54');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 16:00:24');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 16:03:09');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '144.12.130.173', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-08 16:09:26');
INSERT INTO `sys_logininfor` VALUES (339, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 10:06:21');
INSERT INTO `sys_logininfor` VALUES (340, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 10:15:40');
INSERT INTO `sys_logininfor` VALUES (341, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 11:42:15');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '144.12.10.74', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-09 11:49:22');
INSERT INTO `sys_logininfor` VALUES (343, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 11:51:35');
INSERT INTO `sys_logininfor` VALUES (344, 'xionganxytest', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-09 13:44:52');
INSERT INTO `sys_logininfor` VALUES (345, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 13:45:01');
INSERT INTO `sys_logininfor` VALUES (346, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 13:50:24');
INSERT INTO `sys_logininfor` VALUES (347, 'chaochao', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-09 22:21:13');
INSERT INTO `sys_logininfor` VALUES (348, 'xionganxytest', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-10 09:01:09');
INSERT INTO `sys_logininfor` VALUES (349, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-10 09:01:14');
INSERT INTO `sys_logininfor` VALUES (350, 'fox', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-10 12:34:38');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '183.198.130.38', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-12 16:22:06');
INSERT INTO `sys_logininfor` VALUES (352, 'kqs75213', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-13 08:22:49');
INSERT INTO `sys_logininfor` VALUES (353, '18316811983', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-13 18:21:31');
INSERT INTO `sys_logininfor` VALUES (354, 'Wy7977505', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-14 13:46:30');
INSERT INTO `sys_logininfor` VALUES (355, '兴元test1', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-16 11:26:30');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '183.198.130.38', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-16 17:40:30');
INSERT INTO `sys_logininfor` VALUES (357, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-17 09:21:37');
INSERT INTO `sys_logininfor` VALUES (358, 'test1', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-17 14:04:47');
INSERT INTO `sys_logininfor` VALUES (359, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-17 15:59:27');
INSERT INTO `sys_logininfor` VALUES (360, '123', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-18 12:13:06');
INSERT INTO `sys_logininfor` VALUES (361, 'swk', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-18 14:00:38');
INSERT INTO `sys_logininfor` VALUES (362, 'swk', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-18 14:00:45');
INSERT INTO `sys_logininfor` VALUES (363, '475760577', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-18 14:01:21');
INSERT INTO `sys_logininfor` VALUES (364, '475760577', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-18 16:17:45');
INSERT INTO `sys_logininfor` VALUES (365, '475760577', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-18 16:35:11');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '180.157.24.134', 'XX XX', 'Apple WebKit', 'Windows 10', '0', '登录成功', '2026-03-19 12:41:24');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '58.37.217.244', 'XX XX', 'Apple WebKit', 'Windows 10', '0', '登录成功', '2026-03-19 13:57:55');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '36.143.13.170', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-19 17:57:27');
INSERT INTO `sys_logininfor` VALUES (369, 'LLL', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 09:21:11');
INSERT INTO `sys_logininfor` VALUES (370, 'Skyler', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 09:39:37');
INSERT INTO `sys_logininfor` VALUES (371, 'xionganxytext', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 11:09:36');
INSERT INTO `sys_logininfor` VALUES (372, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 11:09:44');
INSERT INTO `sys_logininfor` VALUES (373, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 11:10:00');
INSERT INTO `sys_logininfor` VALUES (374, 'xionganxy', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 11:10:18');
INSERT INTO `sys_logininfor` VALUES (375, 'wilson', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 12:49:39');
INSERT INTO `sys_logininfor` VALUES (376, 'hhhan', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 16:26:23');
INSERT INTO `sys_logininfor` VALUES (377, 'hys111', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-20 17:07:11');
INSERT INTO `sys_logininfor` VALUES (378, 'hys111', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-20 17:07:22');
INSERT INTO `sys_logininfor` VALUES (379, 'hys11', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-20 17:07:26');
INSERT INTO `sys_logininfor` VALUES (380, 'hy111', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-20 17:07:29');
INSERT INTO `sys_logininfor` VALUES (381, 'hyssz111', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 17:09:12');
INSERT INTO `sys_logininfor` VALUES (382, 'hhan', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-20 20:23:51');
INSERT INTO `sys_logininfor` VALUES (383, 'hhhan', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-20 20:23:56');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '144.12.11.126', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-21 10:32:17');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '144.12.11.126', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-21 12:38:32');
INSERT INTO `sys_logininfor` VALUES (386, 'caige', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-22 00:15:56');
INSERT INTO `sys_logininfor` VALUES (387, 'caige', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '1', '用户不存在/密码错误', '2026-03-22 00:17:01');
INSERT INTO `sys_logininfor` VALUES (388, 'caige', '127.0.0.1', '内网IP', 'Robot/Spider', 'Unknown', '0', '登录成功', '2026-03-22 00:17:08');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '36.143.13.170', 'XX XX', 'Chrome 14', 'Windows 10', '0', '登录成功', '2026-03-23 18:00:28');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '36.143.13.170', 'XX XX', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2026-03-24 17:35:23');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '36.143.13.170', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-03-24 17:35:26');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '36.143.13.170', 'XX XX', 'Chrome 13', 'Windows 10', '0', '登录成功', '2026-03-27 15:58:20');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 10:50:38');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 11:00:31');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 11:34:08');
INSERT INTO `sys_logininfor` VALUES (396, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 11:43:44');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 12:42:53');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 12:52:29');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 13:04:17');
INSERT INTO `sys_logininfor` VALUES (400, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 13:09:40');
INSERT INTO `sys_logininfor` VALUES (401, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 13:27:16');
INSERT INTO `sys_logininfor` VALUES (402, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 13:41:11');
INSERT INTO `sys_logininfor` VALUES (403, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 14:03:36');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 14:12:25');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 14:24:15');
INSERT INTO `sys_logininfor` VALUES (406, 'admin', '144.12.12.8', 'XX XX', 'Unknown', 'Windows', '0', '登录成功', '2026-03-28 14:29:20');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2007 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2025-09-13 21:59:25', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2025-09-13 21:59:25', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2025-09-13 21:59:25', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2025-09-13 21:59:25', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-09-13 21:59:25', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2025-09-13 21:59:25', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2025-09-13 21:59:25', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2025-09-13 21:59:25', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2025-09-13 21:59:25', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2025-09-13 21:59:25', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2025-09-13 21:59:25', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2025-09-13 21:59:25', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2025-09-13 21:59:25', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2025-09-13 21:59:25', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2025-09-13 21:59:25', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2025-09-13 21:59:25', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2025-09-13 21:59:25', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2025-09-13 21:59:25', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-09-13 21:59:25', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2025-09-13 21:59:25', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2025-09-13 21:59:25', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2025-09-13 21:59:25', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-09-13 21:59:25', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-09-13 21:59:25', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '计费管理系统', 0, 6, 'charge', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'user', 'admin', '2025-03-31 15:22:33', 'admin', '2025-03-31 15:32:44', '');
INSERT INTO `sys_menu` VALUES (2001, '计费管理', 2000, 1, 'info', 'charge/info/index', NULL, '', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2025-03-31 15:23:36', 'admin', '2025-03-31 15:29:02', '');
INSERT INTO `sys_menu` VALUES (2002, '接口记录', 2000, 2, 'history', 'charge/history/index', NULL, '', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2025-03-31 15:28:11', 'admin', '2025-03-31 15:30:25', '');
INSERT INTO `sys_menu` VALUES (2003, '充值记录', 2000, 3, 'record', 'charge/record/index', NULL, '', 1, 0, 'C', '0', '0', NULL, 'list', 'admin', '2025-03-31 15:30:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '用户余额', 2000, 4, 'balance', 'charge/balance/index', NULL, '', 1, 0, 'C', '0', '0', NULL, 'chart', 'admin', '2025-03-31 15:31:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '兑换规则', 2000, 5, 'exchange', 'charge/exchange/index', NULL, '', 1, 0, 'C', '0', '0', NULL, 'system', 'admin', '2025-03-31 16:24:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '计费规则', 2000, 6, 'charge', 'charge/rule/index', NULL, '', 1, 0, 'C', '0', '0', NULL, 'system', 'admin', '2025-03-31 16:24:52', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-09-13 21:59:25', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-09-13 21:59:25', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 218 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '183.128.191.114', 'XX XX', '{\"createDate\":\"2026-01-09\",\"params\":{},\"projectId\":4,\"updateDate\":\"2026-01-09\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-09 23:20:12', 16);
INSERT INTO `sys_oper_log` VALUES (2, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '120.211.84.149', 'XX XX', '{\"createDate\":\"2026-01-12\",\"id\":1,\"limitAmount\":10,\"params\":{},\"projectId\":1,\"projectName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:20:00', 11);
INSERT INTO `sys_oper_log` VALUES (3, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/user', '183.128.191.114', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"杭州线下店\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":104,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:31:43', 56237);
INSERT INTO `sys_oper_log` VALUES (4, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/user', '183.128.191.114', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"杭州线下店\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":105,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:31:43', 59380);
INSERT INTO `sys_oper_log` VALUES (5, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/user/104', '183.128.191.114', 'XX XX', '[104]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:34:16', 26);
INSERT INTO `sys_oper_log` VALUES (6, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/user/105', '183.128.191.114', 'XX XX', '[105]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:34:18', 9);
INSERT INTO `sys_oper_log` VALUES (7, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/user', '183.128.191.114', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"杭州线下店\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:34:29', 90);
INSERT INTO `sys_oper_log` VALUES (8, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"limitAmount\":20,\"params\":{},\"projectId\":2,\"projectName\":\"大厦指令\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeRuleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeRuleMapper.insertChargeRule-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_rule          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:34:46', 42);
INSERT INTO `sys_oper_log` VALUES (9, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"limitAmount\":20,\"params\":{},\"projectId\":2,\"projectName\":\"大厦指令\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeRuleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeRuleMapper.insertChargeRule-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_rule          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:34:50', 3);
INSERT INTO `sys_oper_log` VALUES (10, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"limitAmount\":20,\"params\":{},\"projectId\":2,\"projectName\":\"大厦指令\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeRuleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeRuleMapper.insertChargeRule-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_rule          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:34:58', 4);
INSERT INTO `sys_oper_log` VALUES (11, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"limitAmount\":20,\"params\":{},\"projectId\":2,\"projectName\":\"大厦指令\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeRuleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeRuleMapper.insertChargeRule-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_rule          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:35:09', 3);
INSERT INTO `sys_oper_log` VALUES (12, '积分消费规则', 3, 'com.ruoyi.system.controller.ChargeRuleController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/rule/1', '120.211.84.149', 'XX XX', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:36:00', 5);
INSERT INTO `sys_oper_log` VALUES (13, '用户余额', 2, 'com.ruoyi.web.controller.system.UserBalanceController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/balance', '183.128.191.114', 'XX XX', '{\"balance\":200,\"createBy\":\"\",\"createDate\":\"2026-01-12\",\"id\":2,\"params\":{},\"remark\":\"\",\"updateBy\":\"\",\"updateDate\":\"2026-01-12\",\"userId\":105,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:36:03', 7);
INSERT INTO `sys_oper_log` VALUES (14, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '120.211.84.149', 'XX XX', '{\"createDate\":\"2026-01-12\",\"limitAmount\":10,\"params\":{},\"projectId\":1,\"projectName\":\"测试\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeRuleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeRuleMapper.insertChargeRule-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_rule          ( project_id,             project_name,             limit_amount,             create_date )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:37:00', 4);
INSERT INTO `sys_oper_log` VALUES (15, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":2000,\"params\":{},\"userName\":\"杭州线下店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 15:38:13', 7);
INSERT INTO `sys_oper_log` VALUES (16, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"limitAmount\":10,\"params\":{},\"projectId\":1,\"projectName\":\"山海经\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeRuleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeRuleMapper.insertChargeRule-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_rule          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:38:28', 3);
INSERT INTO `sys_oper_log` VALUES (17, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '120.211.84.149', 'XX XX', '{\"createDate\":\"2026-01-12\",\"id\":1,\"limitAmount\":10,\"params\":{},\"projectId\":1,\"projectName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:39:39', 6);
INSERT INTO `sys_oper_log` VALUES (18, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"id\":2,\"limitAmount\":20,\"params\":{},\"projectId\":2,\"projectName\":\"大厦指令\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:41:35', 11);
INSERT INTO `sys_oper_log` VALUES (19, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":2000,\"params\":{},\"userName\":\"杭州线下店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 15:42:29', 4);
INSERT INTO `sys_oper_log` VALUES (20, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":2000,\"params\":{},\"userName\":\"杭州线下店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 15:44:07', 6);
INSERT INTO `sys_oper_log` VALUES (21, '用户余额', 3, 'com.ruoyi.web.controller.system.UserBalanceController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/balance/2', '183.128.191.114', 'XX XX', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:46:15', 5);
INSERT INTO `sys_oper_log` VALUES (22, '用户余额', 3, 'com.ruoyi.web.controller.system.UserBalanceController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/balance/1', '183.128.191.114', 'XX XX', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:46:17', 10);
INSERT INTO `sys_oper_log` VALUES (23, '用户余额', 3, 'com.ruoyi.web.controller.system.UserBalanceController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/balance/3', '183.128.191.114', 'XX XX', '[3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:46:18', 4);
INSERT INTO `sys_oper_log` VALUES (24, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '120.211.84.149', 'XX XX', '{\"id\":3,\"limitAmount\":20,\"params\":{},\"projectId\":3,\"projectName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:48:06', 4);
INSERT INTO `sys_oper_log` VALUES (25, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"params\":{},\"userName\":\"杭州线下店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 15:48:23', 5);
INSERT INTO `sys_oper_log` VALUES (26, '用户余额', 3, 'com.ruoyi.web.controller.system.UserBalanceController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/balance/3', '120.211.84.149', 'XX XX', '[3]', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2026-01-12 15:54:41', 3);
INSERT INTO `sys_oper_log` VALUES (27, '用户余额', 3, 'com.ruoyi.web.controller.system.UserBalanceController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/balance/2', '120.211.84.149', 'XX XX', '[2]', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2026-01-12 15:54:44', 2);
INSERT INTO `sys_oper_log` VALUES (28, '积分消费规则', 3, 'com.ruoyi.system.controller.ChargeRuleController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/rule/3', '183.128.191.114', 'XX XX', '[3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 15:54:51', 4);
INSERT INTO `sys_oper_log` VALUES (29, '用户余额', 3, 'com.ruoyi.web.controller.system.UserBalanceController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/balance/2', '120.211.84.149', 'XX XX', '[2]', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2026-01-12 15:55:27', 3);
INSERT INTO `sys_oper_log` VALUES (30, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":1000,\"params\":{},\"userName\":\"雄安中关村店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 15:56:34', 9);
INSERT INTO `sys_oper_log` VALUES (31, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":1000,\"params\":{},\"userName\":\"雄安中关村店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 15:56:37', 5);
INSERT INTO `sys_oper_log` VALUES (32, '计费管理业务', 1, 'com.ruoyi.web.controller.system.ChargeInfoController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info', '120.211.84.149', 'XX XX', '{\"limitAmount\":12,\"params\":{},\"projectId\":106,\"projectName\":\"杭州线下店\",\"userName\":\"杭州线下体验店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 15:57:05', 14);
INSERT INTO `sys_oper_log` VALUES (33, '计费管理业务', 1, 'com.ruoyi.web.controller.system.ChargeInfoController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info', '120.211.84.149', 'XX XX', '{\"limitAmount\":12,\"params\":{},\"projectId\":106,\"projectName\":\"杭州线下体验\",\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeInfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeInfoMapper.insertChargeInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_info          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 15:57:21', 8);
INSERT INTO `sys_oper_log` VALUES (34, '计费管理业务', 1, 'com.ruoyi.web.controller.system.ChargeInfoController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info', '120.211.84.149', 'XX XX', '{\"limitAmount\":12,\"params\":{},\"projectId\":106,\"projectName\":\"杭州线下体验\",\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeInfoMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeInfoMapper.insertChargeInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_info          ( project_id,             project_name,             limit_amount )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 16:01:17', 10);
INSERT INTO `sys_oper_log` VALUES (35, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '120.211.84.149', 'XX XX', '{\"id\":4,\"limitAmount\":10,\"params\":{},\"projectId\":106,\"projectName\":\"杭州线下体验店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:03:45', 92);
INSERT INTO `sys_oper_log` VALUES (36, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"params\":{},\"userName\":\"106\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:04:19', 7);
INSERT INTO `sys_oper_log` VALUES (37, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":100,\"params\":{},\"userName\":\"106\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:04:40', 5);
INSERT INTO `sys_oper_log` VALUES (38, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":100,\"params\":{},\"userName\":\"杭州线下店\"}', '{\"msg\":\"兑换比例不存在,请先配置兑换比例\",\"code\":500}', 0, NULL, '2026-01-12 16:05:30', 10);
INSERT INTO `sys_oper_log` VALUES (39, '积分与余额兑换公式', 1, 'com.ruoyi.web.controller.system.ChargeExchangeController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/exchange', '120.211.84.149', 'XX XX', '{\"amount\":1,\"id\":1,\"limitAmount\":10,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:14:19', 9);
INSERT INTO `sys_oper_log` VALUES (40, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeOfflineRecordMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeOfflineRecordMapper.insertChargeOfflineRecord-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_offline_record          ( amount,             user_id )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 16:14:45', 43);
INSERT INTO `sys_oper_log` VALUES (41, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeOfflineRecordMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeOfflineRecordMapper.insertChargeOfflineRecord-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_offline_record          ( amount,             user_id )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 16:15:48', 8);
INSERT INTO `sys_oper_log` VALUES (42, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/ChargeOfflineRecordMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.ChargeOfflineRecordMapper.insertChargeOfflineRecord-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into charge_offline_record          ( amount,             user_id )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2026-01-12 16:16:12', 9);
INSERT INTO `sys_oper_log` VALUES (43, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"id\":1,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:17:21', 15);
INSERT INTO `sys_oper_log` VALUES (44, '线下用户充值记录', 3, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/record/1', '120.211.84.149', 'XX XX', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:17:51', 14);
INSERT INTO `sys_oper_log` VALUES (45, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"id\":2,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:17:59', 19);
INSERT INTO `sys_oper_log` VALUES (46, '线下用户充值记录', 3, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/record/2', '120.211.84.149', 'XX XX', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:18:08', 5);
INSERT INTO `sys_oper_log` VALUES (47, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":100,\"params\":{},\"userName\":\"106\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:18:16', 3);
INSERT INTO `sys_oper_log` VALUES (48, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"id\":3,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:18:32', 10);
INSERT INTO `sys_oper_log` VALUES (49, '用户余额', 1, 'com.ruoyi.web.controller.system.UserBalanceController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/balance', '120.211.84.149', 'XX XX', '{\"balance\":10000,\"params\":{},\"userName\":\"106\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:19:47', 7);
INSERT INTO `sys_oper_log` VALUES (50, '用户余额', 1, 'com.ruoyi.web.controller.system.UserBalanceController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/balance', '120.211.84.149', 'XX XX', '{\"balance\":10000,\"params\":{},\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/UserBalanceMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UserBalanceMapper.insertUserBalance-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into user_balance          ( balance )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2026-01-12 16:20:09', 15);
INSERT INTO `sys_oper_log` VALUES (51, '用户余额', 1, 'com.ruoyi.web.controller.system.UserBalanceController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/balance', '120.211.84.149', 'XX XX', '{\"balance\":10000,\"params\":{},\"userName\":\"杭州线下店\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in URL [jar:file:/D:/计费系统/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.9.jar!/mapper/system/UserBalanceMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UserBalanceMapper.insertUserBalance-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into user_balance          ( balance )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2026-01-12 16:22:05', 8);
INSERT INTO `sys_oper_log` VALUES (52, '用户余额', 1, 'com.ruoyi.web.controller.system.UserBalanceController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/balance', '120.211.84.149', 'XX XX', '{\"balance\":100,\"id\":4,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:27:31', 102);
INSERT INTO `sys_oper_log` VALUES (53, '线下用户充值记录', 3, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/record/3', '120.211.84.149', 'XX XX', '[3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:27:39', 7);
INSERT INTO `sys_oper_log` VALUES (54, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '120.211.84.149', 'XX XX', '{\"amount\":1000,\"id\":4,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:27:46', 21);
INSERT INTO `sys_oper_log` VALUES (55, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":2000,\"id\":5,\"params\":{},\"userId\":106,\"userName\":\"杭州线下店\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:30:50', 14);
INSERT INTO `sys_oper_log` VALUES (56, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":1000,\"id\":6,\"params\":{},\"userId\":102,\"userName\":\"雄安中关村店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:31:53', 13);
INSERT INTO `sys_oper_log` VALUES (57, '积分消费规则', 3, 'com.ruoyi.system.controller.ChargeRuleController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/rule/4', '183.128.191.114', 'XX XX', '[4]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:32:10', 7);
INSERT INTO `sys_oper_log` VALUES (58, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '183.128.191.114', 'XX XX', '{\"amount\":1000,\"id\":7,\"params\":{},\"userId\":103,\"userName\":\"济南线下店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-12 16:34:11', 11);
INSERT INTO `sys_oper_log` VALUES (59, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '183.128.191.114', 'XX XX', '{\"id\":5,\"limitAmount\":10,\"params\":{},\"projectId\":3,\"projectName\":\"重回山海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-12 16:36:21', 8);
INSERT INTO `sys_oper_log` VALUES (60, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.43', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":1,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 15:38:50', 28);
INSERT INTO `sys_oper_log` VALUES (61, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/user', '115.206.126.96', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"济南动物园店\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":108,\"userName\":\"JinanZooStore\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:46:44', 99);
INSERT INTO `sys_oper_log` VALUES (62, '积分与余额兑换公式', 2, 'com.ruoyi.web.controller.system.ChargeExchangeController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/exchange', '115.206.126.96', 'XX XX', '{\"amount\":1,\"createBy\":\"\",\"id\":1,\"limitAmount\":1,\"params\":{},\"remark\":\"\",\"updateBy\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:46:58', 7);
INSERT INTO `sys_oper_log` VALUES (63, '积分消费规则', 3, 'com.ruoyi.system.controller.ChargeRuleController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/rule/1', '115.206.126.96', 'XX XX', '[1]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:47:07', 7);
INSERT INTO `sys_oper_log` VALUES (64, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '115.206.126.96', 'XX XX', '{\"id\":6,\"limitAmount\":3,\"params\":{},\"projectId\":4,\"projectName\":\"抢滩登陆\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:47:35', 15);
INSERT INTO `sys_oper_log` VALUES (65, '积分消费规则', 2, 'com.ruoyi.system.controller.ChargeRuleController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/rule', '115.206.126.96', 'XX XX', '{\"createBy\":\"\",\"id\":5,\"limitAmount\":3,\"params\":{},\"projectId\":3,\"projectName\":\"重回山海\",\"remark\":\"\",\"updateBy\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:47:45', 5);
INSERT INTO `sys_oper_log` VALUES (66, '积分消费规则', 2, 'com.ruoyi.system.controller.ChargeRuleController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/rule', '115.206.126.96', 'XX XX', '{\"createBy\":\"\",\"id\":2,\"limitAmount\":3,\"params\":{},\"projectId\":2,\"projectName\":\"大厦指令\",\"remark\":\"\",\"updateBy\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:47:49', 3);
INSERT INTO `sys_oper_log` VALUES (67, '计费接口记录', 3, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/history/2', '115.206.126.96', 'XX XX', '[2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 15:49:10', 7);
INSERT INTO `sys_oper_log` VALUES (68, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"updateDate\":\"2026-01-21\",\"userId\":108}', NULL, 1, 'java.lang.NullPointerException\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController.add(ChargeApiHistoryController.java:124)\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController$$FastClassBySpringCGLIB$$1296b310.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:792)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.security.authorization.method.AuthorizationManagerBeforeMethodInterceptor.invoke(AuthorizationManagerBeforeMethodInterceptor.java:162)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$', '2026-01-21 16:16:02', 11);
INSERT INTO `sys_oper_log` VALUES (69, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":1,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:23:29', 6);
INSERT INTO `sys_oper_log` VALUES (70, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":1,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:23:47', 5);
INSERT INTO `sys_oper_log` VALUES (71, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:24:00', 6);
INSERT INTO `sys_oper_log` VALUES (72, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"updateDate\":\"2026-01-21\",\"userId\":108}', NULL, 1, 'java.lang.NullPointerException\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController.add(ChargeApiHistoryController.java:124)\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController$$FastClassBySpringCGLIB$$1296b310.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:792)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.security.authorization.method.AuthorizationManagerBeforeMethodInterceptor.invoke(AuthorizationManagerBeforeMethodInterceptor.java:162)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$', '2026-01-21 16:24:37', 7);
INSERT INTO `sys_oper_log` VALUES (73, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"updateDate\":\"2026-01-21\",\"userId\":108}', NULL, 1, 'java.lang.NullPointerException\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController.add(ChargeApiHistoryController.java:124)\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController$$FastClassBySpringCGLIB$$1296b310.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:792)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.security.authorization.method.AuthorizationManagerBeforeMethodInterceptor.invoke(AuthorizationManagerBeforeMethodInterceptor.java:162)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$', '2026-01-21 16:26:09', 8);
INSERT INTO `sys_oper_log` VALUES (74, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"updateDate\":\"2026-01-21\",\"userId\":108}', NULL, 1, 'java.lang.NullPointerException\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController.add(ChargeApiHistoryController.java:124)\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController$$FastClassBySpringCGLIB$$1296b310.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:792)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.security.authorization.method.AuthorizationManagerBeforeMethodInterceptor.invoke(AuthorizationManagerBeforeMethodInterceptor.java:162)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$', '2026-01-21 16:28:44', 9);
INSERT INTO `sys_oper_log` VALUES (75, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":108}', NULL, 1, 'java.lang.NullPointerException\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController.add(ChargeApiHistoryController.java:124)\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController$$FastClassBySpringCGLIB$$1296b310.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:792)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.security.authorization.method.AuthorizationManagerBeforeMethodInterceptor.invoke(AuthorizationManagerBeforeMethodInterceptor.java:162)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$', '2026-01-21 16:29:26', 6);
INSERT INTO `sys_oper_log` VALUES (76, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:29:33', 6);
INSERT INTO `sys_oper_log` VALUES (77, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":4,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":108}', NULL, 1, 'java.lang.NullPointerException\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController.add(ChargeApiHistoryController.java:124)\r\n	at com.ruoyi.web.controller.system.ChargeApiHistoryController$$FastClassBySpringCGLIB$$1296b310.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:792)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:762)\r\n	at org.springframework.security.authorization.method.AuthorizationManagerBeforeMethodInterceptor.invoke(AuthorizationManagerBeforeMethodInterceptor.java:162)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$', '2026-01-21 16:29:38', 8);
INSERT INTO `sys_oper_log` VALUES (78, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:29:43', 9);
INSERT INTO `sys_oper_log` VALUES (79, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:30:03', 8);
INSERT INTO `sys_oper_log` VALUES (80, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '115.206.126.96', 'XX XX', '{\"amount\":1000,\"id\":8,\"params\":{},\"userId\":108,\"userName\":\"JinanZooStore\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 16:31:03', 14);
INSERT INTO `sys_oper_log` VALUES (81, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:31:18', 83);
INSERT INTO `sys_oper_log` VALUES (82, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:32:47', 10);
INSERT INTO `sys_oper_log` VALUES (83, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":106}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:34:17', 12);
INSERT INTO `sys_oper_log` VALUES (84, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":106}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:34:21', 11);
INSERT INTO `sys_oper_log` VALUES (85, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:37:40', 6);
INSERT INTO `sys_oper_log` VALUES (86, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:38:12', 6);
INSERT INTO `sys_oper_log` VALUES (87, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '115.206.126.96', 'XX XX', '{\"amount\":1000,\"id\":9,\"params\":{},\"userId\":102,\"userName\":\"雄安中关村店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-21 16:38:28', 16);
INSERT INTO `sys_oper_log` VALUES (88, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-21 16:38:44', 7);
INSERT INTO `sys_oper_log` VALUES (89, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:39:22', 13);
INSERT INTO `sys_oper_log` VALUES (90, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '115.206.126.96', 'XX XX', '{\"amount\":1000,\"id\":10,\"params\":{},\"userId\":103,\"userName\":\"济南线下店\"}', '{\"msg\":\"用户不存在\",\"code\":500}', 0, NULL, '2026-01-21 16:39:47', 15);
INSERT INTO `sys_oper_log` VALUES (91, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/user', '115.206.126.96', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2026-01-21 15:46:44\",\"delFlag\":\"0\",\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"济南动物园店\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":108,\"userName\":\"JinanZooStore\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 16:40:01', 15);
INSERT INTO `sys_oper_log` VALUES (92, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:40:06', 12);
INSERT INTO `sys_oper_log` VALUES (93, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:42:03', 15);
INSERT INTO `sys_oper_log` VALUES (94, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:42:05', 14);
INSERT INTO `sys_oper_log` VALUES (95, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"扣除用户余额失败\",\"status\":false}}', 0, NULL, '2026-01-21 16:42:09', 19);
INSERT INTO `sys_oper_log` VALUES (96, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"id\":1,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-21 16:43:26', 24);
INSERT INTO `sys_oper_log` VALUES (97, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"params\":{},\"projectId\":6,\"projectName\":\"测试\",\"userId\":109}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户不存在\",\"status\":false}}', 0, NULL, '2026-01-21 16:44:01', 4);
INSERT INTO `sys_oper_log` VALUES (98, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"id\":2,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-21 16:44:13', 25);
INSERT INTO `sys_oper_log` VALUES (99, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"id\":3,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-21 16:44:55', 13);
INSERT INTO `sys_oper_log` VALUES (100, '线下用户充值记录', 1, 'com.ruoyi.web.controller.system.ChargeOfflineRecordController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/record', '115.206.126.96', 'XX XX', '{\"amount\":30,\"id\":11,\"params\":{},\"userId\":108,\"userName\":\"JinanZooStore\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 16:46:46', 10);
INSERT INTO `sys_oper_log` VALUES (101, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-21\",\"id\":4,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-21 17:44:14', 17);
INSERT INTO `sys_oper_log` VALUES (102, '积分消费规则', 1, 'com.ruoyi.system.controller.ChargeRuleController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/rule', '115.206.126.96', 'XX XX', '{\"id\":7,\"limitAmount\":3,\"params\":{},\"projectId\":5,\"projectName\":\"消失的校花\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-21 17:44:35', 10);
INSERT INTO `sys_oper_log` VALUES (103, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-21\",\"id\":5,\"params\":{},\"projectId\":7,\"projectName\":\"消失的校花\",\"updateDate\":\"2026-01-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-21 17:47:13', 12);
INSERT INTO `sys_oper_log` VALUES (104, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-22\",\"params\":{},\"projectId\":7,\"updateDate\":\"2026-01-22\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-22 10:04:14', 8);
INSERT INTO `sys_oper_log` VALUES (105, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-22\",\"id\":6,\"params\":{},\"projectId\":7,\"projectName\":\"消失的校花\",\"updateDate\":\"2026-01-22\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-22 10:06:14', 15);
INSERT INTO `sys_oper_log` VALUES (106, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-22\",\"id\":7,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-22\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-22 10:36:47', 23);
INSERT INTO `sys_oper_log` VALUES (107, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/user', '115.206.126.96', 'XX XX', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"测试门店\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":109,\"userName\":\"Test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-22 10:38:25', 70);
INSERT INTO `sys_oper_log` VALUES (108, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/role', '115.206.126.96', 'XX XX', '{\"admin\":false,\"createTime\":\"2025-09-13 21:59:25\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,2000,1000,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2001,2002,2004,2005,2006],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-22 10:42:35', 14);
INSERT INTO `sys_oper_log` VALUES (109, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/role', '115.206.126.96', 'XX XX', '{\"admin\":false,\"createTime\":\"2025-09-13 21:59:25\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,2000,1000,2001,2002,2004],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-22 10:45:39', 9);
INSERT INTO `sys_oper_log` VALUES (110, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/role', '115.206.126.96', 'XX XX', '{\"admin\":false,\"createTime\":\"2025-09-13 21:59:25\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,2000,1000,2001,2002,2003,2004],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-22 10:48:28', 15);
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/prod-api/system/role', '115.206.126.96', 'XX XX', '{\"admin\":false,\"createTime\":\"2025-09-13 21:59:25\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2003,2004],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-22 10:50:10', 11);
INSERT INTO `sys_oper_log` VALUES (112, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.5', 'XX XX', '{\"createDate\":\"2026-01-22\",\"id\":8,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-22\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-22 16:53:46', 13);
INSERT INTO `sys_oper_log` VALUES (113, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-22\",\"id\":9,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-22\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-22 17:19:22', 13);
INSERT INTO `sys_oper_log` VALUES (114, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-22\",\"id\":10,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-22\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-22 17:29:11', 10);
INSERT INTO `sys_oper_log` VALUES (115, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.206.126.96', 'XX XX', '{\"createDate\":\"2026-01-22\",\"id\":11,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-22\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-22 17:31:18', 11);
INSERT INTO `sys_oper_log` VALUES (116, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":12,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 09:57:17', 12);
INSERT INTO `sys_oper_log` VALUES (117, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":13,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 10:01:48', 11);
INSERT INTO `sys_oper_log` VALUES (118, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":14,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 10:12:55', 12);
INSERT INTO `sys_oper_log` VALUES (119, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":15,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 10:15:57', 11);
INSERT INTO `sys_oper_log` VALUES (120, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":16,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 10:22:19', 14);
INSERT INTO `sys_oper_log` VALUES (121, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":17,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 10:28:42', 15);
INSERT INTO `sys_oper_log` VALUES (122, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":18,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 10:51:36', 16);
INSERT INTO `sys_oper_log` VALUES (123, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":19,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:00:43', 12);
INSERT INTO `sys_oper_log` VALUES (124, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":20,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:06:33', 18);
INSERT INTO `sys_oper_log` VALUES (125, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":21,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:07:49', 13);
INSERT INTO `sys_oper_log` VALUES (126, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":22,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:15:17', 11);
INSERT INTO `sys_oper_log` VALUES (127, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":23,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:23:39', 16);
INSERT INTO `sys_oper_log` VALUES (128, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.15', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":24,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:24:41', 22);
INSERT INTO `sys_oper_log` VALUES (129, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '111.55.120.59', 'XX XX', '{\"createDate\":\"2026-01-23\",\"id\":25,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-23\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-23 11:57:16', 22);
INSERT INTO `sys_oper_log` VALUES (130, '计费管理业务', 3, 'com.ruoyi.web.controller.system.ChargeInfoController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/info/100', '36.143.54.188', 'XX XX', '[100]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-23 17:32:31', 10);
INSERT INTO `sys_oper_log` VALUES (131, '计费管理业务', 3, 'com.ruoyi.web.controller.system.ChargeInfoController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/info/101', '36.143.54.188', 'XX XX', '[101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-01-23 17:32:35', 10);
INSERT INTO `sys_oper_log` VALUES (132, '计费管理业务', 5, 'com.ruoyi.web.controller.system.ChargeInfoController.export()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info/export', '36.143.54.188', 'XX XX', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2026-01-23 17:32:39', 507);
INSERT INTO `sys_oper_log` VALUES (133, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '39.144.112.8', 'XX XX', '{\"createDate\":\"2026-01-24\",\"id\":26,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-24\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-24 15:07:40', 11);
INSERT INTO `sys_oper_log` VALUES (134, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '39.144.112.8', 'XX XX', '{\"createDate\":\"2026-01-24\",\"id\":27,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-24\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-24 15:38:59', 13);
INSERT INTO `sys_oper_log` VALUES (135, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '39.144.112.8', 'XX XX', '{\"createDate\":\"2026-01-24\",\"id\":28,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-24\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-24 15:51:00', 10);
INSERT INTO `sys_oper_log` VALUES (136, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '39.144.112.8', 'XX XX', '{\"createDate\":\"2026-01-24\",\"id\":29,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-24\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-24 16:26:43', 16);
INSERT INTO `sys_oper_log` VALUES (137, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '39.144.112.8', 'XX XX', '{\"createDate\":\"2026-01-24\",\"id\":30,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-24\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-24 16:43:11', 12);
INSERT INTO `sys_oper_log` VALUES (138, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '39.144.112.8', 'XX XX', '{\"createDate\":\"2026-01-24\",\"id\":31,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-24\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-24 16:52:18', 13);
INSERT INTO `sys_oper_log` VALUES (139, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.195.54.189', 'XX XX', '{\"createDate\":\"2026-01-28\",\"params\":{},\"projectId\":5,\"updateDate\":\"2026-01-28\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-28 10:18:57', 8);
INSERT INTO `sys_oper_log` VALUES (140, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '115.195.54.189', 'XX XX', '{\"createDate\":\"2026-01-28\",\"params\":{},\"projectId\":5,\"updateDate\":\"2026-01-28\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"用户余额不足\",\"status\":false}}', 0, NULL, '2026-01-28 10:18:58', 10);
INSERT INTO `sys_oper_log` VALUES (141, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-28\",\"id\":32,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-28 14:26:36', 28);
INSERT INTO `sys_oper_log` VALUES (142, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-28\",\"id\":33,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-28 14:29:26', 11);
INSERT INTO `sys_oper_log` VALUES (143, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-28\",\"id\":34,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-28 14:32:26', 11);
INSERT INTO `sys_oper_log` VALUES (144, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.6.227.144', 'XX XX', '{\"createDate\":\"2026-01-28\",\"id\":35,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-28 14:36:50', 15);
INSERT INTO `sys_oper_log` VALUES (145, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-28\",\"id\":36,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-28 14:42:04', 11);
INSERT INTO `sys_oper_log` VALUES (146, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '112.54.81.34', 'XX XX', '{\"createDate\":\"2026-01-28\",\"id\":37,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-01-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-01-28 14:42:29', 15);
INSERT INTO `sys_oper_log` VALUES (147, '计费管理业务', 5, 'com.ruoyi.web.controller.system.ChargeInfoController.export()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info/export', '36.143.54.188', 'XX XX', '{\"pageSize\":\"10\",\"pageNum\":\"4\"}', NULL, 0, NULL, '2026-01-28 15:26:23', 45);
INSERT INTO `sys_oper_log` VALUES (148, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.138.171', 'XX XX', '{\"createDate\":\"2026-02-01\",\"id\":38,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-01\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-01 13:34:29', 17);
INSERT INTO `sys_oper_log` VALUES (149, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":39,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 14:01:49', 27);
INSERT INTO `sys_oper_log` VALUES (150, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":40,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 14:20:29', 17);
INSERT INTO `sys_oper_log` VALUES (151, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":41,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 14:31:27', 20);
INSERT INTO `sys_oper_log` VALUES (152, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":42,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 14:48:26', 17);
INSERT INTO `sys_oper_log` VALUES (153, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":43,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 14:52:11', 18);
INSERT INTO `sys_oper_log` VALUES (154, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":44,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 14:54:38', 18);
INSERT INTO `sys_oper_log` VALUES (155, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":45,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 15:12:49', 22);
INSERT INTO `sys_oper_log` VALUES (156, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":46,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 15:28:10', 15);
INSERT INTO `sys_oper_log` VALUES (157, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":47,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 15:52:28', 21);
INSERT INTO `sys_oper_log` VALUES (158, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":48,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 15:58:21', 15);
INSERT INTO `sys_oper_log` VALUES (159, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":49,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 16:31:00', 22);
INSERT INTO `sys_oper_log` VALUES (160, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.132', 'XX XX', '{\"createDate\":\"2026-02-28\",\"id\":50,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-02-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-02-28 16:44:55', 15);
INSERT INTO `sys_oper_log` VALUES (161, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.2.214', 'XX XX', '{\"createDate\":\"2026-03-01\",\"id\":51,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-01\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-01 13:27:47', 18);
INSERT INTO `sys_oper_log` VALUES (162, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.2.214', 'XX XX', '{\"createDate\":\"2026-03-01\",\"id\":52,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-01\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-01 13:42:44', 16);
INSERT INTO `sys_oper_log` VALUES (163, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.2.214', 'XX XX', '{\"createDate\":\"2026-03-01\",\"id\":53,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-01\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-01 14:11:46', 21);
INSERT INTO `sys_oper_log` VALUES (164, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.2.214', 'XX XX', '{\"createDate\":\"2026-03-01\",\"id\":54,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-01\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-01 15:17:42', 17);
INSERT INTO `sys_oper_log` VALUES (165, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.10.222', 'XX XX', '{\"createDate\":\"2026-03-02\",\"id\":55,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-02\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-02 12:17:48', 12);
INSERT INTO `sys_oper_log` VALUES (166, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.10.222', 'XX XX', '{\"createDate\":\"2026-03-02\",\"id\":56,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-02\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-02 13:06:56', 16);
INSERT INTO `sys_oper_log` VALUES (167, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.10.222', 'XX XX', '{\"createDate\":\"2026-03-02\",\"id\":57,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-02\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-02 13:18:55', 13);
INSERT INTO `sys_oper_log` VALUES (168, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.10.222', 'XX XX', '{\"createDate\":\"2026-03-02\",\"id\":58,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-02\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-02 13:29:41', 18);
INSERT INTO `sys_oper_log` VALUES (169, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.10.222', 'XX XX', '{\"createDate\":\"2026-03-02\",\"id\":59,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-02\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-02 15:09:42', 23);
INSERT INTO `sys_oper_log` VALUES (170, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.10.222', 'XX XX', '{\"createDate\":\"2026-03-02\",\"id\":60,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-02\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-02 16:31:37', 17);
INSERT INTO `sys_oper_log` VALUES (171, '计费管理业务', 5, 'com.ruoyi.web.controller.system.ChargeInfoController.export()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info/export', '183.198.130.38', 'XX XX', '{\"pageSize\":\"10\",\"pageNum\":\"6\"}', NULL, 0, NULL, '2026-03-03 11:21:12', 500);
INSERT INTO `sys_oper_log` VALUES (172, '计费管理业务', 3, 'com.ruoyi.web.controller.system.ChargeInfoController.remove()', 'DELETE', 1, 'admin', '研发部门', '/prod-api/system/info/142', '183.198.130.38', 'XX XX', '[142]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2026-03-03 11:23:59', 7);
INSERT INTO `sys_oper_log` VALUES (173, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.136.140', 'XX XX', '{\"createDate\":\"2026-03-04\",\"id\":61,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-04\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-04 09:48:49', 38);
INSERT INTO `sys_oper_log` VALUES (174, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.136.140', 'XX XX', '{\"createDate\":\"2026-03-04\",\"id\":62,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-04\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-04 14:56:03', 23);
INSERT INTO `sys_oper_log` VALUES (175, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.128.4', 'XX XX', '{\"createDate\":\"2026-03-06\",\"id\":63,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-06\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-06 12:38:10', 21);
INSERT INTO `sys_oper_log` VALUES (176, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.128.4', 'XX XX', '{\"createDate\":\"2026-03-06\",\"id\":64,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-06\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-06 12:40:04', 17);
INSERT INTO `sys_oper_log` VALUES (177, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":65,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 09:36:18', 15);
INSERT INTO `sys_oper_log` VALUES (178, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":66,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 11:08:39', 19);
INSERT INTO `sys_oper_log` VALUES (179, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":67,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 12:31:16', 18);
INSERT INTO `sys_oper_log` VALUES (180, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":68,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 13:08:25', 21);
INSERT INTO `sys_oper_log` VALUES (181, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":69,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 13:22:08', 21);
INSERT INTO `sys_oper_log` VALUES (182, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":70,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 13:41:09', 19);
INSERT INTO `sys_oper_log` VALUES (183, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":71,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 14:15:15', 23);
INSERT INTO `sys_oper_log` VALUES (184, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":72,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 14:25:26', 15);
INSERT INTO `sys_oper_log` VALUES (185, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":73,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 15:19:51', 17);
INSERT INTO `sys_oper_log` VALUES (186, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":74,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 15:35:34', 19);
INSERT INTO `sys_oper_log` VALUES (187, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":75,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 15:41:23', 12);
INSERT INTO `sys_oper_log` VALUES (188, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":76,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 16:18:31', 16);
INSERT INTO `sys_oper_log` VALUES (189, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":77,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 16:34:34', 19);
INSERT INTO `sys_oper_log` VALUES (190, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.3.40', 'XX XX', '{\"createDate\":\"2026-03-07\",\"id\":78,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-07\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-07 16:38:00', 12);
INSERT INTO `sys_oper_log` VALUES (191, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":79,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 08:54:15', 15);
INSERT INTO `sys_oper_log` VALUES (192, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":80,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 12:29:56', 20);
INSERT INTO `sys_oper_log` VALUES (193, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":81,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 13:11:17', 14);
INSERT INTO `sys_oper_log` VALUES (194, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":82,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 13:42:00', 14);
INSERT INTO `sys_oper_log` VALUES (195, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":83,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 14:04:17', 20);
INSERT INTO `sys_oper_log` VALUES (196, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":84,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 14:15:57', 12);
INSERT INTO `sys_oper_log` VALUES (197, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":85,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 15:48:54', 18);
INSERT INTO `sys_oper_log` VALUES (198, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":86,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 16:00:24', 14);
INSERT INTO `sys_oper_log` VALUES (199, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":87,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 16:03:09', 14);
INSERT INTO `sys_oper_log` VALUES (200, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.130.173', 'XX XX', '{\"createDate\":\"2026-03-08\",\"id\":88,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-08 16:09:26', 12);
INSERT INTO `sys_oper_log` VALUES (201, '计费管理业务', 5, 'com.ruoyi.web.controller.system.ChargeInfoController.export()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/info/export', '183.198.130.38', 'XX XX', '{\"pageSize\":\"10\",\"pageNum\":\"9\"}', NULL, 0, NULL, '2026-03-12 16:22:40', 585);
INSERT INTO `sys_oper_log` VALUES (202, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.11.126', 'XX XX', '{\"createDate\":\"2026-03-21\",\"id\":89,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-21 10:32:17', 20);
INSERT INTO `sys_oper_log` VALUES (203, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.11.126', 'XX XX', '{\"createDate\":\"2026-03-21\",\"id\":90,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-21\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-21 12:38:32', 15);
INSERT INTO `sys_oper_log` VALUES (204, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":91,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 10:50:38', 16);
INSERT INTO `sys_oper_log` VALUES (205, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":92,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 11:00:31', 22);
INSERT INTO `sys_oper_log` VALUES (206, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":93,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 11:34:08', 13);
INSERT INTO `sys_oper_log` VALUES (207, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":94,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 11:43:44', 14);
INSERT INTO `sys_oper_log` VALUES (208, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":95,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 12:42:53', 16);
INSERT INTO `sys_oper_log` VALUES (209, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":96,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 12:52:29', 13);
INSERT INTO `sys_oper_log` VALUES (210, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":97,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 13:04:17', 15);
INSERT INTO `sys_oper_log` VALUES (211, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":98,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 13:09:40', 12);
INSERT INTO `sys_oper_log` VALUES (212, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":99,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 13:27:16', 13);
INSERT INTO `sys_oper_log` VALUES (213, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":100,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 13:41:11', 14);
INSERT INTO `sys_oper_log` VALUES (214, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":101,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 14:03:36', 14);
INSERT INTO `sys_oper_log` VALUES (215, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":102,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 14:12:26', 15);
INSERT INTO `sys_oper_log` VALUES (216, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":103,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 14:24:15', 13);
INSERT INTO `sys_oper_log` VALUES (217, '计费接口记录', 1, 'com.ruoyi.web.controller.system.ChargeApiHistoryController.add()', 'POST', 1, 'admin', '研发部门', '/prod-api/system/history', '144.12.12.8', 'XX XX', '{\"createDate\":\"2026-03-28\",\"id\":104,\"params\":{},\"projectId\":6,\"projectName\":\"抢滩登陆\",\"updateDate\":\"2026-03-28\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":{\"msg\":\"操作成功\",\"status\":true}}', 0, NULL, '2026-03-28 14:29:20', 13);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-09-13 21:59:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-09-13 21:59:25', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2025-09-13 21:59:25', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2025-09-13 21:59:25', 'admin', '2026-01-22 10:50:10', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `app_user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'app用户id',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '144.12.12.8', '2026-03-28 14:29:21', 'admin', '2025-03-31 13:50:41', '', '2026-03-28 14:29:20', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, NULL, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-03-31 13:50:41', 'admin', '2025-03-31 13:50:41', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 100, 'xionganzhongguancun', '雄安中关村店', '雄安中关村店', '00', '', '', '0', '', '$2a$10$YJET7yiuApxxmsiJIlzhR.4T54yGoa7EcMfSYeT7oNaMuUsmu2jRe', '0', '2', '', NULL, 'admin', '2025-03-31 17:25:30', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (101, NULL, NULL, 'xyzgc', '雄安中关村店', '00', '', '', '0', '', '$2a$10$Or5WzvmdxFXCILH0vEC97.ahRd1tPFvEpugAj85hq/E3ZuOeeV0wK', '0', '2', '', NULL, 'admin', '2025-03-31 17:27:01', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (102, 100, NULL, '雄安中关村店', '雄安中关村店', '00', '', '', '0', '', '$2a$10$Fh5Lg1sF1oyQwHGUA9o6yOESdP3wh6mUeXTPA56YYUZeSBE5J3rFO', '0', '0', '127.0.0.1', '2025-09-25 09:45:53', 'admin', '2025-04-02 10:19:02', '', '2025-09-25 09:45:52', NULL);
INSERT INTO `sys_user` VALUES (103, NULL, NULL, '济南线下店', '济南线下店（测试）', '00', '', '', '0', '', '$2a$10$QzlhRPiX0nHqIHmCl4B6Rel94q1Q5jvg0luZCBxGLy6A7MUSlMNd6', '0', '0', '222.206.39.27', '2025-05-09 14:24:21', 'admin', '2025-05-09 11:50:04', 'admin', '2025-05-14 09:54:40', NULL);
INSERT INTO `sys_user` VALUES (106, NULL, NULL, '杭州线下店', '杭州线下店', '00', '', '', '0', '', '$2a$10$Z5VmIbmX0v6VhmenLPUpXuxiPsSH6dC8yge501MsdnL.dY02MRyby', '0', '0', '', NULL, 'admin', '2026-01-12 15:34:29', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (107, NULL, NULL, 'xionganxy', '雄安兴元', '00', '', '', '0', '', '$2a$10$9FEQOOvp0JuxW4alHJKOeOvS39BYNSASXU8liam9VLjOX5rabYAf6', '0', '0', '127.0.0.1', '2026-03-20 11:10:24', '', '2026-01-16 17:06:27', '', '2026-03-20 11:10:18', NULL);
INSERT INTO `sys_user` VALUES (108, NULL, NULL, 'JinanZooStore', '济南动物园店', '00', '', '', '0', '', '$2a$10$zkqbrMSHAbEg.vPdRTEEM.Q5Nyd1SzKokZWou4jcTJLHAtj1..Hqi', '0', '0', '115.206.126.96', '2026-01-22 10:50:29', 'admin', '2026-01-21 15:46:44', 'admin', '2026-01-22 10:50:28', NULL);
INSERT INTO `sys_user` VALUES (109, NULL, NULL, 'Test', '测试门店', '00', '', '', '0', '', '$2a$10$Cb3IBwkaFdOHuwGY7ZcDUuY6xUekXOWUvlmNYW4P2ShQ.A7.F6m26', '0', '0', '', NULL, 'admin', '2026-01-22 10:38:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (110, NULL, NULL, 'xionganxytext', '雄安测试', '00', '', '', '0', '', '$2a$10$Z07COUomH170xSD1actSbOfRhY9CEWIQTKDAWD0o0liypo7Xv/mvy', '0', '0', '127.0.0.1', '2026-03-20 11:09:42', '', '2026-02-02 15:49:15', '', '2026-03-20 11:09:36', NULL);
INSERT INTO `sys_user` VALUES (111, NULL, NULL, '兴元test1', '兴元', '00', '', '', '0', '', '$2a$10$JmebG.2XzqoWGhAVMiOy5uJIkhseSn85sA2QY1v2bSP9BjsydLRXe', '0', '0', '127.0.0.1', '2026-03-16 11:26:37', '', '2026-02-03 11:46:51', '', '2026-03-16 11:26:30', NULL);
INSERT INTO `sys_user` VALUES (112, NULL, NULL, 'tiktok112501', '句号', '00', '', '', '0', '', '$2a$10$eo1vb53c2x/1hEj7ZyoLZue4fiKZisOaedgwAZcTdoG8LUO1PTqry', '0', '0', '127.0.0.1', '2026-02-05 12:52:28', '', '2026-02-05 12:52:26', '', '2026-02-05 12:52:28', NULL);
INSERT INTO `sys_user` VALUES (113, NULL, NULL, '001', '伍宁', '00', 'Galaxy142857@163.com', '18798202708', '0', '', '$2a$10$rPcwGi8/mXADo4slNczVPOTt7iAeOdFVnbSxDTQyko72XrnRNQJFS', '0', '0', '127.0.0.1', '2026-02-05 15:30:43', '', '2026-02-05 15:27:45', '', '2026-02-05 15:30:42', NULL);
INSERT INTO `sys_user` VALUES (114, NULL, NULL, 'xionganxyts', '兄弟萌', '00', '', '', '0', '', '$2a$10$W/PNuCmC97hbNr.BCqXVYuZW47ul6YVg/ezlN/UkefHLZlitJTtT2', '0', '0', '', NULL, '', '2026-02-06 08:56:09', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (115, NULL, NULL, 'fzq918', '试试', '00', '', '', '0', '', '$2a$10$sGB8qShMoUpz72jDx7tbjusvAh.p5CWO5BFZf4vDsnElIzMegWwDe', '0', '0', '127.0.0.1', '2026-02-06 08:57:17', '', '2026-02-06 08:57:06', '', '2026-02-06 08:57:15', NULL);
INSERT INTO `sys_user` VALUES (116, NULL, NULL, 'zji_1949', '龙子不归', '00', '', '18611352907', '0', '', '$2a$10$JgnFQxUuni6F/nHiEtZN8ul0w5Gg3.rn.rZMRVCgiVtoMG21qQ66a', '0', '0', '127.0.0.1', '2026-02-06 19:33:45', '', '2026-02-06 19:33:23', '', '2026-02-06 19:33:42', NULL);
INSERT INTO `sys_user` VALUES (117, NULL, NULL, 'zxtj', '沐风', '00', '', '', '0', '', '$2a$10$i04e1.zjm9dRQKGlw75wh.s070rovth4KQltAg2WSC7oKRfQTnrN2', '0', '0', '127.0.0.1', '2026-02-09 21:32:12', '', '2026-02-09 21:32:03', '', '2026-02-09 21:32:12', NULL);
INSERT INTO `sys_user` VALUES (118, NULL, NULL, 'hhh', 'hhh', '00', '', '', '0', '', '$2a$10$LoMuyjrZ87VMOUQpNxMmG.MgCjmGjvtZ1g3wTgPz5GmuH4iLXUvAS', '0', '0', '127.0.0.1', '2026-02-12 14:03:09', '', '2026-02-12 14:03:02', '', '2026-02-12 14:03:08', NULL);
INSERT INTO `sys_user` VALUES (119, NULL, NULL, 'liontreee', 'liontreee', '00', '', '', '0', '', '$2a$10$Rg0WAWCH.dwM9/5QMjJ4Quy.AJ2z8/Sxp0ZE5t9Ws2geUFPxRwiPq', '0', '0', '127.0.0.1', '2026-02-13 22:15:53', '', '2026-02-13 22:15:31', '', '2026-02-13 22:15:47', NULL);
INSERT INTO `sys_user` VALUES (120, NULL, NULL, 'Wy7977505', '龙鑫包子', '00', '1760033686@qq.com', '18064716061', '0', '', '$2a$10$AYMdxwZqngwvvdoW1tcwBuI2LMxS6uJstgJXHMPvZ.Q7xyYZ8Wbs.', '0', '0', '127.0.0.1', '2026-03-14 13:46:33', '', '2026-02-17 18:38:44', '', '2026-03-14 13:46:30', NULL);
INSERT INTO `sys_user` VALUES (121, NULL, NULL, '549684014', 'zzzahf', '00', '549684014@qq.com', '18738538188', '0', '', '$2a$10$2aP0GjMoR.9OPzrZzwCoUOfbp9oMmgIAyJQuWyi39tqvI2YEhxWmm', '0', '0', '127.0.0.1', '2026-03-02 15:36:38', '', '2026-03-02 15:36:22', '', '2026-03-02 15:36:34', NULL);
INSERT INTO `sys_user` VALUES (122, NULL, NULL, 'gongyubiao', '巩玉彪', '00', '1403968060@qq.com', '19979870109', '0', '', '$2a$10$ZJMpvJVaiFq8xLmfBRHglOwmWDbdA5BF7.2etv8v4vo1lh7jITHEy', '0', '0', '127.0.0.1', '2026-03-04 18:45:41', '', '2026-03-04 18:45:35', '', '2026-03-04 18:45:41', NULL);
INSERT INTO `sys_user` VALUES (123, NULL, NULL, 'Wilson', '沉苓 Wilson', '00', '13609791067@139.com', '13609791067', '0', '', '$2a$10$nUik2iE7/QTNk0BoW1ll6.xG1u6CvEEaSiuZv8rylgANevQ.AX//2', '0', '0', '127.0.0.1', '2026-03-20 12:49:45', '', '2026-03-06 10:49:52', '', '2026-03-20 12:49:39', NULL);
INSERT INTO `sys_user` VALUES (124, NULL, NULL, '沉苓Wilson', '沉苓Wilson', '00', '1360971067@139.com', '1360971067', '0', '', '$2a$10$CHDOY3yBrYfBLXPaebkG7.vjHFpm9KC5RXRASDgNkS4zhrO6o5tHK', '0', '0', '127.0.0.1', '2026-03-06 10:52:24', '', '2026-03-06 10:52:11', '', '2026-03-06 10:52:21', NULL);
INSERT INTO `sys_user` VALUES (125, NULL, NULL, 'chaochao', 'chao', '00', '', '', '0', '', '$2a$10$S9TajqpxtiPfzHocFSCaGuFJ2NAwQrIOQ9aXypyOuYqcF99WRjz6a', '0', '0', '127.0.0.1', '2026-03-09 22:21:15', '', '2026-03-09 22:21:04', '', '2026-03-09 22:21:13', NULL);
INSERT INTO `sys_user` VALUES (126, NULL, NULL, 'fox', 'fox', '00', '', '', '0', '', '$2a$10$xzn.53z3HYmpC5R8T5q00OSvy4luZKJXY0F2Qez.r8CzCM3BaIvNC', '0', '0', '127.0.0.1', '2026-03-10 12:34:42', '', '2026-03-10 12:34:27', '', '2026-03-10 12:34:38', NULL);
INSERT INTO `sys_user` VALUES (127, NULL, NULL, 'kqs75213', 'kqs5213', '00', '', '', '0', '', '$2a$10$wLf/JovRrQy3UEaBnLtgZ.BdhFUg2V.6h5tYyhRcUn9DuZQeVgC8q', '0', '0', '127.0.0.1', '2026-03-13 08:22:55', '', '2026-03-13 08:22:41', '', '2026-03-13 08:22:49', NULL);
INSERT INTO `sys_user` VALUES (128, NULL, NULL, '18316811983', 'xyc', '00', '422732183@qq.com', '18316811983', '0', '', '$2a$10$DCYwoJdKCbKIllqaF4ydOOHDrxUZ.kclM32vIEUAonZrExeYzmapO', '0', '0', '127.0.0.1', '2026-03-13 18:21:39', '', '2026-03-13 18:21:24', '', '2026-03-13 18:21:30', NULL);
INSERT INTO `sys_user` VALUES (129, NULL, NULL, 'test1', 'test', '00', '', '', '0', '', '$2a$10$tSCKdakm/iMdkTOm15ZWKOCNQBL7VZlMT2GRySKMtHS/pAonOpIBy', '0', '0', '127.0.0.1', '2026-03-17 14:04:59', '', '2026-03-17 14:04:42', '', '2026-03-17 14:04:47', NULL);
INSERT INTO `sys_user` VALUES (130, NULL, NULL, 'swk', 'swk', '00', '', '', '0', '', '$2a$10$8MUPbMIwzCVyxF18jR85yOb/XZKZ2edPgS9w.BWR5t4f5hmu8narm', '0', '0', '', NULL, '', '2026-03-18 14:00:26', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (131, NULL, NULL, '475760577', '睿智的青瓜', '00', '', '', '0', '', '$2a$10$TUGYDnDG3jRoVUiB0NLMD.D.7hhou388sgNZPpBNup9B3Sa7Gv4gG', '0', '0', '127.0.0.1', '2026-03-18 16:35:13', '', '2026-03-18 14:01:07', '', '2026-03-18 16:35:10', NULL);
INSERT INTO `sys_user` VALUES (132, NULL, NULL, 'LLL', 'LLL', '00', '', '', '0', '', '$2a$10$heIYzwJmaWkPzNglZFv98uXGcXsXgzuIpCE37o.8/6lqVHzmlOhqO', '0', '0', '127.0.0.1', '2026-03-20 09:21:17', '', '2026-03-20 09:20:59', '', '2026-03-20 09:21:11', NULL);
INSERT INTO `sys_user` VALUES (133, NULL, NULL, 'Skyler', 'Skyler', '00', '', '', '0', '', '$2a$10$hJeYhAqpM9hyT8DeAUO5AuCaLBGPKApr95h7ap36BdtaULj1ETFdG', '0', '0', '127.0.0.1', '2026-03-20 09:39:42', '', '2026-03-20 09:39:28', '', '2026-03-20 09:39:37', NULL);
INSERT INTO `sys_user` VALUES (134, NULL, NULL, 'hhhan', 'han', '00', '851596059@qq.com', '15808147349', '0', '', '$2a$10$/ydqGkhydJBshZNI7jp4PO2a4hQShDo3BHR0m3OKGSyOSMb0bO2Ye', '0', '0', '127.0.0.1', '2026-03-20 20:24:03', '', '2026-03-20 16:26:11', '', '2026-03-20 20:23:56', NULL);
INSERT INTO `sys_user` VALUES (135, NULL, NULL, 'hys1111', 'hus', '00', '3121408979@qq.com', '15700633953', '0', '', '$2a$10$e8aFcB1Gi/BThJHGCCQ7cuDz2UdiVKbrSntWngwjMxOOul.F5zhvu', '0', '0', '', NULL, '', '2026-03-20 17:06:57', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (136, NULL, NULL, 'hyssz111', 'hys', '00', '3278581932@qq.com', '19561302569', '0', '', '$2a$10$BXBYehM9AJB1Tv2HtakPQup991dG77PYEfiLaxYtadVZnbPT6OtLa', '0', '0', '127.0.0.1', '2026-03-20 17:09:19', '', '2026-03-20 17:09:05', '', '2026-03-20 17:09:12', NULL);
INSERT INTO `sys_user` VALUES (137, NULL, NULL, 'caige', 'caige', '00', 'tiger1689999@163.com', '18520339595', '0', '', '$2a$10$DbcEzBbuUUN1tkmY5ShDven6ECxH.IeNWM2irb94uvinzs6KrDOOO', '0', '0', '127.0.0.1', '2026-03-22 00:17:09', '', '2026-03-22 00:16:57', '', '2026-03-22 00:17:08', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (108, 2);

-- ----------------------------
-- Table structure for user_balance
-- ----------------------------
DROP TABLE IF EXISTS `user_balance`;
CREATE TABLE `user_balance`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `balance` int(11) NOT NULL COMMENT '余额',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户余额表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_balance
-- ----------------------------
INSERT INTO `user_balance` VALUES (4, 106, 30094, NULL, '2026-01-21 16:34:21', '', '', '');
INSERT INTO `user_balance` VALUES (5, 108, 697, '2026-01-21 15:46:44', '2026-03-28 14:29:21', '', '', '');
INSERT INTO `user_balance` VALUES (6, 109, 0, '2026-01-22 10:38:25', '2026-01-22 10:38:25', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
