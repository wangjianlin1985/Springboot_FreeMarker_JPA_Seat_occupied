/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : workcode

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 10/12/2020 16:15:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ylrc_clazz
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_clazz`;
CREATE TABLE `ylrc_clazz`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_id` bigint(20) NULL DEFAULT NULL,
  `claname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjk9yuss1wc94mss6oe64s5lpt`(`teacher_id`) USING BTREE,
  CONSTRAINT `FKjk9yuss1wc94mss6oe64s5lpt` FOREIGN KEY (`teacher_id`) REFERENCES `ylrc_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_clazz
-- ----------------------------
INSERT INTO `ylrc_clazz` VALUES (1, '2020-11-03 11:08:38', '2020-11-03 11:08:35', '学院', '专业', 1, '一班');
INSERT INTO `ylrc_clazz` VALUES (2, '2020-11-03 11:09:17', '2020-11-03 15:53:14', '小', '大', 1, '二班');
INSERT INTO `ylrc_clazz` VALUES (4, '2020-11-03 16:00:27', '2020-11-04 13:03:51', '上海交大', '计算机专业', 1, 'sad ');
INSERT INTO `ylrc_clazz` VALUES (7, '2020-11-04 13:11:45', '2020-11-04 13:32:08', '啊啊大厦', '计算机', 4, 'sadas');
INSERT INTO `ylrc_clazz` VALUES (8, '2020-11-04 13:13:07', '2020-11-04 13:13:07', '上海', '计算机专业', 4, '三班');
INSERT INTO `ylrc_clazz` VALUES (9, '2020-11-04 14:43:23', '2020-11-04 16:03:08', 'test', '收到对方   电饭锅对方的 ', 4, 'test');
INSERT INTO `ylrc_clazz` VALUES (16, '2020-12-10 15:51:05', '2020-12-10 15:51:05', '信息工程学院', '计算机', 1, '计算机3班');

-- ----------------------------
-- Table structure for ylrc_clbum
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_clbum`;
CREATE TABLE `ylrc_clbum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `clbname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqigex7fagj8yu3lunguikh7ar`(`teacher_id`) USING BTREE,
  CONSTRAINT `FKqigex7fagj8yu3lunguikh7ar` FOREIGN KEY (`teacher_id`) REFERENCES `ylrc_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ylrc_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ylrc_log_integral
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_log_integral`;
CREATE TABLE `ylrc_log_integral`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `cause` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  `bonus_points` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKc4gr3r9cgmy30j4ul0rj3arc1`(`student_id`) USING BTREE,
  CONSTRAINT `FKc4gr3r9cgmy30j4ul0rj3arc1` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_log_integral
-- ----------------------------
INSERT INTO `ylrc_log_integral` VALUES (20, '2020-11-12 15:50:35', '2020-11-02 15:50:40', '老八', '3', 7, '0');
INSERT INTO `ylrc_log_integral` VALUES (32, '2020-11-03 15:50:05', '2020-11-03 15:50:05', '吃饭', '5', 15, '0');
INSERT INTO `ylrc_log_integral` VALUES (37, '2020-11-04 13:34:24', '2020-11-04 13:34:24', NULL, '0', 29, '4');
INSERT INTO `ylrc_log_integral` VALUES (39, '2020-11-04 13:39:30', '2020-11-04 13:39:30', NULL, '0', 29, '4');
INSERT INTO `ylrc_log_integral` VALUES (59, '2020-11-04 15:14:10', '2020-11-04 15:14:10', '吃饭', '9', 1, '0');
INSERT INTO `ylrc_log_integral` VALUES (62, '2020-11-04 16:01:30', '2020-11-04 16:01:30', '吃饭', '0', 1, '6');
INSERT INTO `ylrc_log_integral` VALUES (63, '2020-11-04 16:46:53', '2020-11-04 16:46:53', '', '0', 1, '1');
INSERT INTO `ylrc_log_integral` VALUES (64, '2020-11-04 16:47:03', '2020-11-04 16:47:03', '吃饭', '0', 1, '5');
INSERT INTO `ylrc_log_integral` VALUES (81, '2020-12-10 16:06:58', '2020-12-10 16:06:58', '座位上面扔垃圾', '3', 35, '0');

-- ----------------------------
-- Table structure for ylrc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsbtnjocfrq29e8taxdwo21gic`(`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES (2, '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (3, '2020-03-14 16:58:55', '2020-03-14 18:26:02', '菜单管理', '/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (5, '2020-03-14 17:04:44', '2020-03-14 18:27:53', '新增', '/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (7, '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (8, '2020-03-14 18:28:48', '2020-03-21 22:04:45', '编辑', 'edit(\'/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (9, '2020-03-14 18:30:00', '2020-03-21 22:08:20', '删除', 'del(\'/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (10, '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (11, '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (12, '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (13, '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (14, '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (15, '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (16, '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (19, '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (20, '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (21, '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (22, '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (23, '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/database_bak/list', 'mdi-database', 16, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (24, '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/database_bak/add\')', 'mdi-database-plus', 17, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (25, '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/database_bak/delete\')', 'mdi-database-minus', 18, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (26, '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/database_bak/restore\')', 'mdi-database-minus', 19, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (39, '2020-10-31 16:10:16', '2020-11-03 10:00:22', '教师列表', '/tea/list', 'mdi-account-multiple', 0, 48, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (46, '2020-11-02 09:18:29', '2020-11-02 09:18:29', '学生管理', '', 'mdi-clipboard-account', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (47, '2020-11-02 09:19:05', '2020-11-02 09:19:05', '学生列表', '/stu/list', 'mdi-alarm-multiple', 0, 46, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (48, '2020-11-02 09:25:03', '2020-11-02 09:57:53', '教师管理', '', 'mdi-arrow-left-bold-box', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (49, '2020-11-02 09:51:12', '2020-11-02 09:51:12', '阅览室管理', '', 'mdi-book-open-variant', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (50, '2020-11-02 09:54:19', '2020-11-02 09:54:19', '座位管理', '/seat/list', 'mdi-human-child', 0, 49, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (51, '2020-11-02 09:59:33', '2020-11-02 09:59:33', '增加', '/stu/add', 'mdi-account-multiple-plus', 0, 47, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (52, '2020-11-02 10:00:03', '2020-11-02 10:00:03', '删除', 'del(\'/stu/delete\')', 'mdi-account-multiple-minus', 0, 47, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (53, '2020-11-02 10:00:36', '2020-11-02 10:00:36', '修改', 'edit(\'/stu/edit\')', 'mdi-account-card-details', 0, 47, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (54, '2020-11-02 10:11:50', '2020-11-02 10:11:50', '增加', '/tea/add', 'mdi-account-multiple-plus', 0, 39, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (55, '2020-11-02 10:12:33', '2020-11-02 10:12:33', '删除', 'del(\'/tea/delete\')', 'mdi-account-multiple-minus', 0, 39, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (56, '2020-11-02 10:13:02', '2020-11-02 10:13:02', '修改', 'edit(\'/tea/edit\')', 'mdi-account-network', 0, 39, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (59, '2020-11-02 12:11:08', '2020-11-02 12:11:08', '阅览室类型', '/readType/list', 'mdi-view-sequential', 0, 49, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (60, '2020-11-02 12:35:01', '2020-11-02 12:35:01', '生成座位', 'add(\'/seat/add\')', 'mdi-wheelchair-accessibility', 0, 50, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (61, '2020-11-02 13:05:47', '2020-11-02 13:05:47', '新增', '/readType/add', 'mdi-tooltip-outline-plus', 0, 59, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (62, '2020-11-02 13:13:28', '2020-11-02 13:13:50', '删除', 'del(\'/readType/delete\')', 'mdi-backspace', 0, 59, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (63, '2020-11-02 13:47:27', '2020-11-02 14:30:02', '编辑', 'edit(\'/readType/edit\')', 'mdi-pencil-box', 0, 59, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (64, '2020-11-02 13:51:51', '2020-11-02 13:52:07', '信用积分管理', '', 'mdi-account', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (65, '2020-11-02 13:52:55', '2020-11-02 13:52:55', '信用积分', '/log/list', 'mdi-android-debug-bridge', 0, 64, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (66, '2020-11-02 13:56:15', '2020-11-02 14:56:11', '选座', 'choose( \'/seat/choose\')', 'mdi-seat-legroom-reduced', 0, 50, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (69, '2020-11-02 14:54:22', '2020-11-02 14:54:22', '阅览室', '/readRoom/list', 'mdi-apps', 0, 49, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (72, '2020-11-02 15:11:28', '2020-11-02 15:11:38', '删除', 'del(\'/readRoom/delete\')', 'mdi-close-octagon', 0, 69, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (75, '2020-11-02 15:21:20', '2020-11-02 15:21:20', '新增', '/readRoom/add', 'mdi-account-plus', 0, 69, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (76, '2020-11-02 15:22:26', '2020-11-02 15:22:26', '班级管理', '', 'mdi-account-multiple', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (81, '2020-11-02 15:32:09', '2020-11-02 15:32:09', '班级列表', '/clbum/list', 'mdi-alarm-plus', 0, 76, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (82, '2020-11-02 15:33:02', '2020-11-02 15:33:02', '编辑', 'edit(\'/readRoom/edit\')', 'mdi-cursor-pointer', 0, 69, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (87, '2020-11-02 15:54:07', '2020-11-02 16:06:10', '添加', '/clbum/add', 'mdi-arrow-up-thick', 58, 81, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (89, '2020-11-02 18:28:39', '2020-11-02 18:28:39', '编辑', 'edit(\'/clbum/edit\')', 'mdi-border-color', 0, 81, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (90, '2020-11-02 18:29:52', '2020-11-02 18:29:52', '删除', 'del(\'/clbum/delete\')', 'mdi-account-multiple', 0, 81, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (91, '2020-11-03 09:13:09', '2020-11-03 09:13:09', '违规统计', '/statistics/violate', 'mdi-airplane-takeoff', 0, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (92, '2020-11-03 09:20:46', '2020-11-03 09:20:46', '占座统计', '/statistic/occupied', 'mdi-arrow-down-bold-box', 0, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (93, '2020-11-04 10:36:50', '2020-11-04 10:39:41', '学生座位预约记录', '/seat/stu/order', 'mdi-baby', 0, 49, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (94, '2020-11-04 12:10:36', '2020-11-04 12:10:36', '取消预约', 'del(\'/seat/delete\')', 'mdi-window-close', 0, 93, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (95, '2020-11-04 14:26:19', '2020-11-04 14:27:07', '查看', '“”', 'mdi-account-multiple-outline', 0, 69, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (96, '2020-11-04 14:34:03', '2020-11-04 14:34:55', '我的信用积分', '/log/stuList', 'mdi-android', 0, 64, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (98, '2020-11-04 15:35:14', '2020-11-04 15:50:12', '上传图片', '/upload/upload_photo', 'mdi-account-plus', 0, 96, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (99, '2020-11-04 16:38:05', '2020-11-04 17:34:30', '座位状态管理', 'able( \'/seat/able\')', 'mdi-account-settings-variant', 0, 50, b'1', b'1');

-- ----------------------------
-- Table structure for ylrc_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 850 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES (1, '2020-10-31 09:51:01', '2020-10-31 09:51:01', '用户【admin】于【2020-10-31 09:51:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (2, '2020-10-31 09:54:53', '2020-10-31 09:54:53', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (3, '2020-10-31 09:55:03', '2020-10-31 09:55:03', '用户【admin】于【2020-10-31 09:55:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (4, '2020-10-31 09:55:23', '2020-10-31 09:55:23', '用户【S20201477272966】于【2020-10-31 09:55:23】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (5, '2020-10-31 09:57:09', '2020-10-31 09:57:09', '用户【S20201477272966】于【2020-10-31 09:57:09】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (6, '2020-10-31 10:12:21', '2020-10-31 10:12:21', '用户【admin】于【2020-10-31 10:12:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (7, '2020-10-31 10:16:09', '2020-10-31 10:16:09', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/stu/add, icon=mdi-account, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (8, '2020-10-31 10:16:25', '2020-10-31 10:16:25', '删除菜单信息，菜单ID【31】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (9, '2020-10-31 10:16:30', '2020-10-31 10:16:30', '删除菜单信息，菜单ID【32】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (10, '2020-10-31 10:17:15', '2020-10-31 10:17:15', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/stu/edit\'), icon=mdi-account-convert, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (11, '2020-10-31 10:17:37', '2020-10-31 10:17:37', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/stu/list, icon=mdi-account-remove, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (12, '2020-10-31 10:18:00', '2020-10-31 10:18:00', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/stu/delete\'), icon=mdi-account-remove, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (13, '2020-10-31 10:18:16', '2020-10-31 10:18:16', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (14, '2020-10-31 10:18:26', '2020-10-31 10:18:26', '用户【admin】于【2020-10-31 10:18:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (15, '2020-10-31 10:22:48', '2020-10-31 10:22:48', '用户【admin】于【2020-10-31 10:22:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (16, '2020-10-31 11:05:21', '2020-10-31 11:05:21', '用户【admin】于【2020-10-31 11:05:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (17, '2020-10-31 11:07:26', '2020-10-31 11:07:26', '用户【admin】于【2020-10-31 11:07:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (18, '2020-10-31 11:09:45', '2020-10-31 11:09:45', '用户【admin】于【2020-10-31 11:09:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (19, '2020-10-31 11:11:00', '2020-10-31 11:11:00', '添加菜单信息【Menu [name=数据统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (20, '2020-10-31 11:11:49', '2020-10-31 11:11:49', '编辑菜单信息【Menu [name=违规人数, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (21, '2020-10-31 11:11:58', '2020-10-31 11:11:58', '用户【admin】于【2020-10-31 11:11:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (22, '2020-10-31 11:12:35', '2020-10-31 11:12:35', '添加菜单信息【Menu [name=数据统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-backspace, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (23, '2020-10-31 11:13:13', '2020-10-31 11:13:13', '添加菜单信息【Menu [name=违规统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-arrow-up-bold-circle, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (24, '2020-10-31 11:13:25', '2020-10-31 11:13:25', '用户【admin】于【2020-10-31 11:13:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (25, '2020-10-31 11:13:48', '2020-10-31 11:13:48', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (26, '2020-10-31 11:13:55', '2020-10-31 11:13:55', '用户【admin】于【2020-10-31 11:13:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (27, '2020-10-31 11:14:16', '2020-10-31 11:14:16', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (28, '2020-10-31 11:14:45', '2020-10-31 11:14:45', '编辑菜单信息【Menu [name=数据统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-backspace, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (29, '2020-10-31 11:15:02', '2020-10-31 11:15:02', '用户【admin】于【2020-10-31 11:15:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (30, '2020-10-31 11:15:43', '2020-10-31 11:15:43', '编辑菜单信息【Menu [name=违规统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-arrow-up-bold-circle, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (31, '2020-10-31 11:16:04', '2020-10-31 11:16:04', '编辑菜单信息【Menu [name=违规统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-arrow-up-bold-circle, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (32, '2020-10-31 11:16:39', '2020-10-31 11:16:39', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (33, '2020-10-31 11:16:51', '2020-10-31 11:16:51', '删除菜单信息，菜单ID【37】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (34, '2020-10-31 11:16:56', '2020-10-31 11:16:56', '删除菜单信息，菜单ID【36】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (35, '2020-10-31 11:17:14', '2020-10-31 11:17:14', '编辑菜单信息【Menu [name=图书馆座位预约管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-seat-individual-suite, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (36, '2020-10-31 11:17:33', '2020-10-31 11:17:33', '用户【admin】于【2020-10-31 11:17:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (37, '2020-10-31 11:18:03', '2020-10-31 11:18:03', '用户【admin】于【2020-10-31 11:18:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (38, '2020-10-31 11:19:51', '2020-10-31 11:19:51', '用户【admin】于【2020-10-31 11:19:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (39, '2020-10-31 11:21:27', '2020-10-31 11:21:27', '用户【admin】于【2020-10-31 11:21:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (40, '2020-10-31 11:21:46', '2020-10-31 11:21:46', '用户【admin】于【2020-10-31 11:21:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (41, '2020-10-31 11:22:30', '2020-10-31 11:22:30', '用户【admin】于【2020-10-31 11:22:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (42, '2020-10-31 11:23:27', '2020-10-31 11:23:27', '用户【admin】于【2020-10-31 11:23:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (43, '2020-10-31 11:23:58', '2020-10-31 11:23:58', '用户【admin】于【2020-10-31 11:23:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (44, '2020-10-31 11:27:03', '2020-10-31 11:27:03', '添加菜单信息【com.yuanlrc.base.entity.admin.Menu@e46675】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (45, '2020-10-31 11:27:10', '2020-10-31 11:27:10', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (46, '2020-10-31 11:27:23', '2020-10-31 11:27:23', '用户【admin】于【2020-10-31 11:27:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (47, '2020-10-31 11:35:03', '2020-10-31 11:35:03', '用户【admin】于【2020-10-31 11:35:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (48, '2020-10-31 11:39:19', '2020-10-31 11:39:19', '用户【admin】于【2020-10-31 11:39:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (49, '2020-10-31 11:41:21', '2020-10-31 11:41:21', '用户【admin】于【2020-10-31 11:41:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (50, '2020-10-31 11:43:20', '2020-10-31 11:43:20', '用户【admin】于【2020-10-31 11:43:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (51, '2020-10-31 11:43:51', '2020-10-31 11:43:51', '编辑用户，用户名：S20201592829307', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (52, '2020-10-31 11:44:26', '2020-10-31 11:44:26', '用户【admin】于【2020-10-31 11:44:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (53, '2020-10-31 11:46:25', '2020-10-31 11:46:25', '用户【admin】于【2020-10-31 11:46:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (54, '2020-10-31 11:47:57', '2020-10-31 11:47:57', '编辑用户，用户名：S20201592829307', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (55, '2020-10-31 11:50:27', '2020-10-31 11:50:27', '用户【admin】于【2020-10-31 11:50:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (56, '2020-10-31 11:51:59', '2020-10-31 11:51:59', '用户【admin】于【2020-10-31 11:51:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (57, '2020-10-31 11:54:40', '2020-10-31 11:54:40', '用户【admin】于【2020-10-31 11:54:40】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (58, '2020-10-31 11:57:56', '2020-10-31 11:57:56', '编辑用户，用户名：S20201537505498', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (59, '2020-10-31 11:58:14', '2020-10-31 11:58:14', '用户【admin】于【2020-10-31 11:58:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (60, '2020-10-31 12:06:50', '2020-10-31 12:06:50', '编辑用户，用户名：S20201592829307', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (61, '2020-10-31 12:11:15', '2020-10-31 12:11:15', '编辑用户，用户名：S20201592829307', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (62, '2020-10-31 12:13:19', '2020-10-31 12:13:19', '用户【admin】于【2020-10-31 12:13:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (63, '2020-10-31 12:14:49', '2020-10-31 12:14:49', '添加用户，用户名：S2020147727', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (64, '2020-10-31 12:16:46', '2020-10-31 12:16:46', '添加用户，用户名：S202014772729', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (65, '2020-10-31 12:17:01', '2020-10-31 12:17:01', '编辑用户，用户名：S20201477', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (66, '2020-10-31 12:17:11', '2020-10-31 12:17:11', '用户【admin】于【2020-10-31 12:17:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (67, '2020-10-31 12:17:59', '2020-10-31 12:17:59', '添加用户，用户ID：19', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (68, '2020-10-31 12:18:08', '2020-10-31 12:18:08', '添加用户，用户ID：12', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (69, '2020-10-31 12:18:12', '2020-10-31 12:18:12', '添加用户，用户ID：8', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (70, '2020-10-31 12:21:12', '2020-10-31 12:21:12', '用户【admin】于【2020-10-31 12:21:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (71, '2020-10-31 12:22:23', '2020-10-31 12:22:23', '用户【admin】于【2020-10-31 12:22:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (72, '2020-10-31 13:53:04', '2020-10-31 13:53:04', '用户【admin】于【2020-10-31 13:53:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (73, '2020-10-31 13:57:59', '2020-10-31 13:57:59', '用户【admin】于【2020-10-31 13:57:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (74, '2020-10-31 13:58:53', '2020-10-31 13:58:53', '编辑用户，用户名：S20201448909114', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (75, '2020-10-31 13:59:27', '2020-10-31 13:59:27', '添加用户，用户ID：22', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (76, '2020-10-31 14:02:08', '2020-10-31 14:02:08', '用户【admin】于【2020-10-31 14:02:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (77, '2020-10-31 14:06:30', '2020-10-31 14:06:30', '用户【admin】于【2020-10-31 14:06:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (78, '2020-10-31 14:09:28', '2020-10-31 14:09:28', '添加用户，用户ID：23', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (79, '2020-10-31 14:10:12', '2020-10-31 14:10:12', '用户【admin】于【2020-10-31 14:10:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (80, '2020-10-31 14:56:55', '2020-10-31 14:56:55', '用户【S20201592829307】于【2020-10-31 14:56:55】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (81, '2020-10-31 15:05:32', '2020-10-31 15:05:32', '用户【S20201592829307】于【2020-10-31 15:05:32】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (82, '2020-10-31 15:06:07', '2020-10-31 15:06:07', '用户【S20201592829307】于【2020-10-31 15:06:07】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (83, '2020-10-31 15:08:47', '2020-10-31 15:08:47', '用户【admin】于【2020-10-31 15:08:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (84, '2020-10-31 15:12:03', '2020-10-31 15:12:03', '用户【admin】于【2020-10-31 15:12:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (85, '2020-10-31 15:13:15', '2020-10-31 15:13:15', '用户【admin】于【2020-10-31 15:13:15】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (86, '2020-10-31 15:18:27', '2020-10-31 15:18:27', '用户【admin】于【2020-10-31 15:18:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (87, '2020-10-31 15:38:17', '2020-10-31 15:38:17', '用户【admin】于【2020-10-31 15:38:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (88, '2020-10-31 16:10:16', '2020-10-31 16:10:16', '添加菜单信息【Menu [name=教师管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (89, '2020-10-31 16:17:39', '2020-10-31 16:17:39', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/add, icon=mdi-account-multiple-plus, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (90, '2020-10-31 16:17:55', '2020-10-31 16:17:55', '编辑菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/add, icon=mdi-account-multiple-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (91, '2020-10-31 16:40:34', '2020-10-31 16:40:34', '编辑角色【教师】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (92, '2020-10-31 16:40:44', '2020-10-31 16:40:44', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (93, '2020-10-31 16:42:00', '2020-10-31 16:42:00', '用户【admin】于【2020-10-31 16:42:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (94, '2020-10-31 16:50:22', '2020-10-31 16:50:22', '用户【admin】于【2020-10-31 16:50:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (95, '2020-10-31 17:22:03', '2020-10-31 17:22:03', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/tea/delete\'), icon=mdi-account-remove, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (96, '2020-10-31 17:22:39', '2020-10-31 17:22:39', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/tea/edit\'), icon=mdi-account-alert, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (97, '2020-10-31 17:22:49', '2020-10-31 17:22:49', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (98, '2020-10-31 17:23:03', '2020-10-31 17:23:03', '用户【admin】于【2020-10-31 17:23:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (99, '2020-10-31 17:29:39', '2020-10-31 17:29:39', '用户【T20201534791669】于【2020-10-31 17:29:39】登录系统！', 'T20201534791669');
INSERT INTO `ylrc_operater_log` VALUES (100, '2020-10-31 17:30:34', '2020-10-31 17:30:34', '用户【admin】于【2020-10-31 17:30:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (101, '2020-11-01 14:29:46', '2020-11-01 14:29:46', '用户【admin】于【2020-11-01 14:29:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (102, '2020-11-01 14:30:19', '2020-11-01 14:30:19', '用户【admin】于【2020-11-01 14:30:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (103, '2020-11-01 15:44:13', '2020-11-01 15:44:13', '用户【admin】于【2020-11-01 15:44:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (104, '2020-11-01 15:46:29', '2020-11-01 15:46:29', '添加菜单信息【Menu [name=班级管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (105, '2020-11-01 15:46:41', '2020-11-01 15:46:41', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (106, '2020-11-01 15:46:51', '2020-11-01 15:46:51', '用户【admin】于【2020-11-01 15:46:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (107, '2020-11-01 15:50:23', '2020-11-01 15:50:23', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-animation, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (108, '2020-11-01 15:50:23', '2020-11-01 15:50:23', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-animation, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (109, '2020-11-01 15:50:59', '2020-11-01 15:50:59', '删除菜单信息，菜单ID【45】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (110, '2020-11-01 15:51:23', '2020-11-01 15:51:23', '编辑菜单信息【Menu [name=班级管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (111, '2020-11-01 15:51:39', '2020-11-01 15:51:39', '用户【admin】于【2020-11-01 15:51:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (112, '2020-11-01 15:52:42', '2020-11-01 15:52:42', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (113, '2020-11-01 15:52:52', '2020-11-01 15:52:52', '用户【admin】于【2020-11-01 15:52:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (114, '2020-11-01 15:53:41', '2020-11-01 15:53:41', '用户【admin】于【2020-11-01 15:53:41】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (115, '2020-11-01 15:54:31', '2020-11-01 15:54:31', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (116, '2020-11-01 15:54:41', '2020-11-01 15:54:41', '删除菜单信息，菜单ID【44】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (117, '2020-11-01 15:55:28', '2020-11-01 15:55:28', '编辑菜单信息【Menu [name=班级管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (118, '2020-11-01 15:56:52', '2020-11-01 15:56:52', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (119, '2020-11-01 15:57:52', '2020-11-01 15:57:52', '用户【admin】于【2020-11-01 15:57:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (120, '2020-11-01 16:24:21', '2020-11-01 16:24:21', '用户【admin】于【2020-11-01 16:24:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (121, '2020-11-01 16:25:19', '2020-11-01 16:25:19', '用户【admin】于【2020-11-01 16:25:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (122, '2020-11-01 16:27:36', '2020-11-01 16:27:36', '用户【admin】于【2020-11-01 16:27:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (123, '2020-11-02 08:59:17', '2020-11-02 08:59:17', '用户【admin】于【2020-11-02 08:59:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (124, '2020-11-02 08:59:46', '2020-11-02 08:59:46', '用户【T20201534791669】于【2020-11-02 08:59:46】登录系统！', 'T20201534791669');
INSERT INTO `ylrc_operater_log` VALUES (125, '2020-11-02 09:08:49', '2020-11-02 09:08:49', '用户【admin】于【2020-11-02 09:08:49】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (126, '2020-11-02 09:15:11', '2020-11-02 09:15:11', '用户【admin】于【2020-11-02 09:15:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (127, '2020-11-02 09:15:54', '2020-11-02 09:15:54', '用户【admin】于【2020-11-02 09:15:54】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (128, '2020-11-02 09:18:29', '2020-11-02 09:18:29', '添加菜单信息【Menu [name=学生管理, parent=null, url=, icon=mdi-clipboard-account, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (129, '2020-11-02 09:19:05', '2020-11-02 09:19:05', '添加菜单信息【Menu [name=学生列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/stu/list, icon=mdi-alarm-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (130, '2020-11-02 09:19:14', '2020-11-02 09:19:14', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (131, '2020-11-02 09:19:21', '2020-11-02 09:19:21', '用户【admin】于【2020-11-02 09:19:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (132, '2020-11-02 09:22:11', '2020-11-02 09:22:11', '编辑菜单信息【Menu [name=新增学生, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/stu/add, icon=mdi-face, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (133, '2020-11-02 09:22:25', '2020-11-02 09:22:25', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/stu/edit\'), icon=mdi-account-convert, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (134, '2020-11-02 09:22:35', '2020-11-02 09:22:35', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/stu/delete\'), icon=mdi-account-remove, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (135, '2020-11-02 09:23:01', '2020-11-02 09:23:01', '编辑菜单信息【Menu [name=教师管理, parent=null, url=/tea/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (136, '2020-11-02 09:23:28', '2020-11-02 09:23:28', '编辑菜单信息【Menu [name=违规统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-arrow-up-bold-circle, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (137, '2020-11-02 09:23:50', '2020-11-02 09:23:50', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (138, '2020-11-02 09:24:00', '2020-11-02 09:24:00', '用户【admin】于【2020-11-02 09:24:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (139, '2020-11-02 09:25:03', '2020-11-02 09:25:03', '添加菜单信息【Menu [name=教师管理, parent=null, url=/tea/list, icon=mdi-arrow-left-bold-box, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (140, '2020-11-02 09:25:09', '2020-11-02 09:25:09', '用户【admin】于【2020-11-02 09:25:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (141, '2020-11-02 09:25:17', '2020-11-02 09:25:17', '编辑菜单信息【Menu [name=教师管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (142, '2020-11-02 09:25:28', '2020-11-02 09:25:28', '用户【admin】于【2020-11-02 09:25:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (143, '2020-11-02 09:25:35', '2020-11-02 09:25:35', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (144, '2020-11-02 09:25:43', '2020-11-02 09:25:43', '用户【admin】于【2020-11-02 09:25:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (145, '2020-11-02 09:26:01', '2020-11-02 09:26:01', '用户【admin】于【2020-11-02 09:26:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (146, '2020-11-02 09:26:49', '2020-11-02 09:26:49', '编辑菜单信息【Menu [name=教师列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (147, '2020-11-02 09:27:06', '2020-11-02 09:27:06', '用户【admin】于【2020-11-02 09:27:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (148, '2020-11-02 09:30:44', '2020-11-02 09:30:44', '用户【admin】于【2020-11-02 09:30:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (149, '2020-11-02 09:44:06', '2020-11-02 09:44:06', '用户【admin】于【2020-11-02 09:44:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (150, '2020-11-02 09:50:07', '2020-11-02 09:50:07', '用户【admin】于【2020-11-02 09:50:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (151, '2020-11-02 09:51:12', '2020-11-02 09:51:12', '添加菜单信息【Menu [name=阅览室管理, parent=null, url=, icon=mdi-book-open-variant, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (152, '2020-11-02 09:51:19', '2020-11-02 09:51:19', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (153, '2020-11-02 09:51:26', '2020-11-02 09:51:26', '用户【admin】于【2020-11-02 09:51:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (154, '2020-11-02 09:54:19', '2020-11-02 09:54:19', '添加菜单信息【Menu [name=座位管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/seat/list, icon=mdi-human-child, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (155, '2020-11-02 09:54:28', '2020-11-02 09:54:28', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (156, '2020-11-02 09:54:36', '2020-11-02 09:54:36', '用户【admin】于【2020-11-02 09:54:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (157, '2020-11-02 09:55:18', '2020-11-02 09:55:18', '用户【admin】于【2020-11-02 09:55:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (158, '2020-11-02 09:57:53', '2020-11-02 09:57:53', '编辑菜单信息【Menu [name=教师管理, parent=null, url=, icon=mdi-arrow-left-bold-box, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (159, '2020-11-02 09:58:56', '2020-11-02 09:58:56', '用户【admin】于【2020-11-02 09:58:56】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (160, '2020-11-02 09:59:33', '2020-11-02 09:59:33', '添加菜单信息【Menu [name=增加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/stu/add, icon=mdi-account-multiple-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (161, '2020-11-02 10:00:03', '2020-11-02 10:00:03', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/stu/delete\'), icon=mdi-account-multiple-minus, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (162, '2020-11-02 10:00:36', '2020-11-02 10:00:36', '添加菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/stu/edit\'), icon=mdi-account-card-details, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (163, '2020-11-02 10:00:49', '2020-11-02 10:00:49', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (164, '2020-11-02 10:00:58', '2020-11-02 10:00:58', '用户【admin】于【2020-11-02 10:00:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (165, '2020-11-02 10:11:50', '2020-11-02 10:11:50', '添加菜单信息【Menu [name=增加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/add, icon=mdi-account-multiple-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (166, '2020-11-02 10:12:33', '2020-11-02 10:12:33', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/tea/delete\'), icon=mdi-account-multiple-minus, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (167, '2020-11-02 10:13:02', '2020-11-02 10:13:02', '添加菜单信息【Menu [name=修改, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/tea/edit\'), icon=mdi-account-network, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (168, '2020-11-02 10:13:13', '2020-11-02 10:13:13', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (169, '2020-11-02 10:13:24', '2020-11-02 10:13:24', '用户【admin】于【2020-11-02 10:13:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (170, '2020-11-02 10:18:13', '2020-11-02 10:18:13', '用户【T20201649316088】于【2020-11-02 10:18:13】登录系统！', 'T20201649316088');
INSERT INTO `ylrc_operater_log` VALUES (171, '2020-11-02 10:18:30', '2020-11-02 10:18:30', '用户【admin】于【2020-11-02 10:18:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (172, '2020-11-02 10:41:58', '2020-11-02 10:41:58', '用户【admin】于【2020-11-02 10:41:57】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (173, '2020-11-02 10:49:24', '2020-11-02 10:49:24', '用户【admin】于【2020-11-02 10:49:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (174, '2020-11-02 10:50:29', '2020-11-02 10:50:29', '用户【admin】于【2020-11-02 10:50:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (175, '2020-11-02 10:51:06', '2020-11-02 10:51:06', '编辑菜单信息【Menu [name=教师列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=admin/teacher/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (176, '2020-11-02 10:51:18', '2020-11-02 10:51:18', '用户【admin】于【2020-11-02 10:51:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (177, '2020-11-02 10:53:14', '2020-11-02 10:53:14', '用户【admin】于【2020-11-02 10:53:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (178, '2020-11-02 10:59:37', '2020-11-02 10:59:37', '用户【admin】于【2020-11-02 10:59:37】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (179, '2020-11-02 10:59:55', '2020-11-02 10:59:55', '用户【admin】于【2020-11-02 10:59:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (180, '2020-11-02 11:03:24', '2020-11-02 11:03:24', '添加菜单信息【Menu [name=班级管理, parent=null, url=, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (181, '2020-11-02 11:06:40', '2020-11-02 11:06:40', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (182, '2020-11-02 11:07:02', '2020-11-02 11:07:02', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (183, '2020-11-02 11:07:15', '2020-11-02 11:07:15', '用户【admin】于【2020-11-02 11:07:15】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (184, '2020-11-02 11:15:35', '2020-11-02 11:15:35', '用户【admin】于【2020-11-02 11:15:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (185, '2020-11-02 11:19:29', '2020-11-02 11:19:29', '用户【admin】于【2020-11-02 11:19:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (186, '2020-11-02 11:19:51', '2020-11-02 11:19:51', '用户【admin】于【2020-11-02 11:19:50】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (187, '2020-11-02 11:20:51', '2020-11-02 11:20:51', '用户【admin】于【2020-11-02 11:20:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (188, '2020-11-02 11:21:46', '2020-11-02 11:21:46', '用户【admin】于【2020-11-02 11:21:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (189, '2020-11-02 11:26:13', '2020-11-02 11:26:13', '用户【admin】于【2020-11-02 11:26:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (190, '2020-11-02 11:31:21', '2020-11-02 11:31:21', '用户【admin】于【2020-11-02 11:31:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (191, '2020-11-02 11:32:37', '2020-11-02 11:32:37', '用户【admin】于【2020-11-02 11:32:37】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (192, '2020-11-02 11:34:23', '2020-11-02 11:34:23', '用户【admin】于【2020-11-02 11:34:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (193, '2020-11-02 11:35:16', '2020-11-02 11:35:16', '用户【admin】于【2020-11-02 11:35:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (194, '2020-11-02 11:36:11', '2020-11-02 11:36:11', '用户【admin】于【2020-11-02 11:36:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (195, '2020-11-02 12:06:12', '2020-11-02 12:06:12', '用户【admin】于【2020-11-02 12:06:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (196, '2020-11-02 12:09:22', '2020-11-02 12:09:22', '用户【admin】于【2020-11-02 12:09:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (197, '2020-11-02 12:09:47', '2020-11-02 12:09:47', '用户【admin】于【2020-11-02 12:09:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (198, '2020-11-02 12:11:08', '2020-11-02 12:11:08', '添加菜单信息【Menu [name=阅览室类型, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/readType/list, icon=mdi-view-sequential, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (199, '2020-11-02 12:11:33', '2020-11-02 12:11:33', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (200, '2020-11-02 12:11:42', '2020-11-02 12:11:42', '用户【admin】于【2020-11-02 12:11:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (201, '2020-11-02 12:16:01', '2020-11-02 12:16:01', '用户【admin】于【2020-11-02 12:16:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (202, '2020-11-02 12:19:53', '2020-11-02 12:19:53', 'admin对小红的积分进行减-10', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (203, '2020-11-02 12:20:36', '2020-11-02 12:20:36', 'admin对小红的积分进行加10', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (204, '2020-11-02 12:21:35', '2020-11-02 12:21:35', '用户【admin】于【2020-11-02 12:21:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (205, '2020-11-02 12:24:44', '2020-11-02 12:24:44', '用户【admin】于【2020-11-02 12:24:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (206, '2020-11-02 12:28:20', '2020-11-02 12:28:20', '用户【admin】于【2020-11-02 12:28:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (207, '2020-11-02 12:31:22', '2020-11-02 12:31:22', '用户【admin】于【2020-11-02 12:31:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (208, '2020-11-02 12:35:01', '2020-11-02 12:35:01', '添加菜单信息【Menu [name=生成座位, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=add(\'/seat/add\'), icon=mdi-wheelchair-accessibility, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (209, '2020-11-02 12:35:08', '2020-11-02 12:35:08', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (210, '2020-11-02 12:35:16', '2020-11-02 12:35:16', '用户【admin】于【2020-11-02 12:35:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (211, '2020-11-02 12:36:38', '2020-11-02 12:36:38', '用户【admin】于【2020-11-02 12:36:38】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (212, '2020-11-02 12:54:42', '2020-11-02 12:54:42', '用户【admin】于【2020-11-02 12:54:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (213, '2020-11-02 12:55:53', '2020-11-02 12:55:53', '用户【admin】于【2020-11-02 12:55:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (214, '2020-11-02 12:59:11', '2020-11-02 12:59:11', '用户【admin】于【2020-11-02 12:59:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (215, '2020-11-02 13:04:21', '2020-11-02 13:04:21', '用户【admin】于【2020-11-02 13:04:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (216, '2020-11-02 13:05:47', '2020-11-02 13:05:47', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/readType/add, icon=mdi-tooltip-outline-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (217, '2020-11-02 13:06:12', '2020-11-02 13:06:12', '用户【admin】于【2020-11-02 13:06:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (218, '2020-11-02 13:06:11', '2020-11-02 13:06:11', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (219, '2020-11-02 13:06:23', '2020-11-02 13:06:23', '用户【admin】于【2020-11-02 13:06:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (220, '2020-11-02 13:07:59', '2020-11-02 13:07:59', '用户【admin】于【2020-11-02 13:07:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (221, '2020-11-02 13:08:28', '2020-11-02 13:08:28', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (222, '2020-11-02 13:09:05', '2020-11-02 13:09:05', '用户【admin】于【2020-11-02 13:09:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (223, '2020-11-02 13:10:14', '2020-11-02 13:10:14', '用户【admin】于【2020-11-02 13:10:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (224, '2020-11-02 13:10:43', '2020-11-02 13:10:43', '用户【admin】于【2020-11-02 13:10:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (225, '2020-11-02 13:11:20', '2020-11-02 13:11:20', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (226, '2020-11-02 13:13:28', '2020-11-02 13:13:28', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/del(\'readType/delete\'), icon=mdi-backspace, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (227, '2020-11-02 13:13:50', '2020-11-02 13:13:50', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/readType/delete\'), icon=mdi-backspace, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (228, '2020-11-02 13:14:12', '2020-11-02 13:14:12', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (229, '2020-11-02 13:14:20', '2020-11-02 13:14:20', '用户【admin】于【2020-11-02 13:14:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (230, '2020-11-02 13:25:46', '2020-11-02 13:25:46', '用户【admin】于【2020-11-02 13:25:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (231, '2020-11-02 13:29:00', '2020-11-02 13:29:00', '用户【admin】于【2020-11-02 13:29:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (232, '2020-11-02 13:29:17', '2020-11-02 13:29:17', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (233, '2020-11-02 13:30:34', '2020-11-02 13:30:34', '用户【admin】于【2020-11-02 13:30:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (234, '2020-11-02 13:32:41', '2020-11-02 13:32:41', '用户【admin】于【2020-11-02 13:32:41】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (235, '2020-11-02 13:32:46', '2020-11-02 13:32:46', '用户【admin】于【2020-11-02 13:32:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (236, '2020-11-02 13:34:07', '2020-11-02 13:34:07', '用户【admin】于【2020-11-02 13:34:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (237, '2020-11-02 13:35:17', '2020-11-02 13:35:17', '用户【admin】于【2020-11-02 13:35:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (238, '2020-11-02 13:36:09', '2020-11-02 13:36:09', '用户【admin】于【2020-11-02 13:36:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (239, '2020-11-02 13:37:27', '2020-11-02 13:37:27', '用户【admin】于【2020-11-02 13:37:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (240, '2020-11-02 13:40:33', '2020-11-02 13:40:33', '用户【admin】于【2020-11-02 13:40:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (241, '2020-11-02 13:47:27', '2020-11-02 13:47:27', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/readType/edit\'）, icon=mdi-pencil-box, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (242, '2020-11-02 13:47:34', '2020-11-02 13:47:34', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (243, '2020-11-02 13:49:47', '2020-11-02 13:49:47', '用户【admin】于【2020-11-02 13:49:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (244, '2020-11-02 13:50:04', '2020-11-02 13:50:04', '用户【admin】于【2020-11-02 13:50:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (245, '2020-11-02 13:51:51', '2020-11-02 13:51:51', '添加菜单信息【Menu [name=信用积分管理, parent=null, url=/log/list, icon=mdi-account, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (246, '2020-11-02 13:52:07', '2020-11-02 13:52:07', '编辑菜单信息【Menu [name=信用积分管理, parent=null, url=, icon=mdi-account, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (247, '2020-11-02 13:52:55', '2020-11-02 13:52:55', '添加菜单信息【Menu [name=信用积分, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/log/list, icon=mdi-android-debug-bridge, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (248, '2020-11-02 13:56:15', '2020-11-02 13:56:15', '添加菜单信息【Menu [name=选座管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/seat/choose, icon=mdi-seat-legroom-reduced, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (249, '2020-11-02 13:56:25', '2020-11-02 13:56:25', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (250, '2020-11-02 13:56:32', '2020-11-02 13:56:32', '用户【admin】于【2020-11-02 13:56:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (251, '2020-11-02 13:58:44', '2020-11-02 13:58:44', '用户【admin】于【2020-11-02 13:58:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (252, '2020-11-02 13:59:50', '2020-11-02 13:59:50', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (253, '2020-11-02 13:59:54', '2020-11-02 13:59:54', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (254, '2020-11-02 14:00:08', '2020-11-02 14:00:08', '用户【admin】于【2020-11-02 14:00:08】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (255, '2020-11-02 14:01:12', '2020-11-02 14:01:12', '用户【admin】于【2020-11-02 14:01:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (256, '2020-11-02 14:01:52', '2020-11-02 14:01:52', '用户【admin】于【2020-11-02 14:01:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (257, '2020-11-02 14:03:05', '2020-11-02 14:03:05', '用户【admin】于【2020-11-02 14:03:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (258, '2020-11-02 14:15:29', '2020-11-02 14:15:29', '用户【admin】于【2020-11-02 14:15:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (259, '2020-11-02 14:21:58', '2020-11-02 14:21:58', '用户【admin】于【2020-11-02 14:21:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (260, '2020-11-02 14:24:13', '2020-11-02 14:24:13', '用户【admin】于【2020-11-02 14:24:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (261, '2020-11-02 14:30:02', '2020-11-02 14:30:02', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/readType/edit\'), icon=mdi-pencil-box, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (262, '2020-11-02 14:30:12', '2020-11-02 14:30:12', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (263, '2020-11-02 14:34:26', '2020-11-02 14:34:26', '用户【admin】于【2020-11-02 14:34:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (264, '2020-11-02 14:35:42', '2020-11-02 14:35:42', '编辑菜单信息【Menu [name=选座管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=choose(\'/seat/choose\'), icon=mdi-seat-legroom-reduced, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (265, '2020-11-02 14:36:15', '2020-11-02 14:36:15', '编辑菜单信息【Menu [name=选座管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=choose( \'/seat/choose\'), icon=mdi-seat-legroom-reduced, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (266, '2020-11-02 14:39:24', '2020-11-02 14:39:24', '用户【admin】于【2020-11-02 14:39:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (267, '2020-11-02 14:41:53', '2020-11-02 14:41:53', '用户【admin】于【2020-11-02 14:41:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (268, '2020-11-02 14:41:53', '2020-11-02 14:41:53', '用户【admin】于【2020-11-02 14:41:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (269, '2020-11-02 14:41:53', '2020-11-02 14:41:53', '用户【admin】于【2020-11-02 14:41:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (270, '2020-11-02 14:41:53', '2020-11-02 14:41:53', '用户【admin】于【2020-11-02 14:41:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (271, '2020-11-02 14:41:53', '2020-11-02 14:41:53', '用户【admin】于【2020-11-02 14:41:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (272, '2020-11-02 14:41:53', '2020-11-02 14:41:53', '用户【admin】于【2020-11-02 14:41:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (273, '2020-11-02 14:50:19', '2020-11-02 14:50:19', '用户【admin】于【2020-11-02 14:50:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (274, '2020-11-02 14:51:55', '2020-11-02 14:51:55', '用户【admin】于【2020-11-02 14:51:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (275, '2020-11-02 14:53:45', '2020-11-02 14:53:45', '用户【admin】于【2020-11-02 14:53:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (276, '2020-11-02 14:53:54', '2020-11-02 14:53:54', '添加菜单信息【Menu [name=添加班级, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=admin/clbum/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (277, '2020-11-02 14:53:54', '2020-11-02 14:53:54', '添加菜单信息【Menu [name=添加班级, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=admin/clbum/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (278, '2020-11-02 14:54:05', '2020-11-02 14:54:05', '删除菜单信息，菜单ID【68】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (279, '2020-11-02 14:54:19', '2020-11-02 14:54:19', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (280, '2020-11-02 14:54:22', '2020-11-02 14:54:22', '添加菜单信息【Menu [name=阅览室, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/readRoom/list, icon=mdi-apps, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (281, '2020-11-02 14:54:30', '2020-11-02 14:54:30', '用户【admin】于【2020-11-02 14:54:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (282, '2020-11-02 14:54:30', '2020-11-02 14:54:30', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (283, '2020-11-02 14:54:41', '2020-11-02 14:54:41', '用户【admin】于【2020-11-02 14:54:41】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (284, '2020-11-02 14:55:01', '2020-11-02 14:55:01', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (285, '2020-11-02 14:56:07', '2020-11-02 14:56:07', '编辑菜单信息【Menu [name=添加班级, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (286, '2020-11-02 14:56:11', '2020-11-02 14:56:11', '编辑菜单信息【Menu [name=选座, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=choose( \'/seat/choose\'), icon=mdi-seat-legroom-reduced, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (287, '2020-11-02 14:56:16', '2020-11-02 14:56:16', '用户【admin】于【2020-11-02 14:56:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (288, '2020-11-02 14:59:15', '2020-11-02 14:59:15', '用户【admin】于【2020-11-02 14:59:15】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (289, '2020-11-02 15:00:31', '2020-11-02 15:00:31', '编辑菜单信息【Menu [name=添加班级, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (290, '2020-11-02 15:00:51', '2020-11-02 15:00:51', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (291, '2020-11-02 15:01:05', '2020-11-02 15:01:05', '用户【admin】于【2020-11-02 15:01:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (292, '2020-11-02 15:01:14', '2020-11-02 15:01:14', '用户【admin】于【2020-11-02 15:01:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (293, '2020-11-02 15:02:24', '2020-11-02 15:02:24', '用户【admin】于【2020-11-02 15:02:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (294, '2020-11-02 15:02:33', '2020-11-02 15:02:33', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-arrow-right-thick, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (295, '2020-11-02 15:02:45', '2020-11-02 15:02:45', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (296, '2020-11-02 15:02:55', '2020-11-02 15:02:55', '用户【admin】于【2020-11-02 15:02:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (297, '2020-11-02 15:04:25', '2020-11-02 15:04:25', '用户【admin】于【2020-11-02 15:04:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (298, '2020-11-02 15:05:13', '2020-11-02 15:05:13', '编辑菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-arrow-right-thick, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (299, '2020-11-02 15:05:32', '2020-11-02 15:05:32', '用户【admin】于【2020-11-02 15:05:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (300, '2020-11-02 15:07:04', '2020-11-02 15:07:04', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (301, '2020-11-02 15:07:17', '2020-11-02 15:07:17', '用户【admin】于【2020-11-02 15:07:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (302, '2020-11-02 15:07:27', '2020-11-02 15:07:27', '删除菜单信息，菜单ID【70】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (303, '2020-11-02 15:07:34', '2020-11-02 15:07:34', '删除菜单信息，菜单ID【67】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (304, '2020-11-02 15:08:06', '2020-11-02 15:08:06', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-oar, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (305, '2020-11-02 15:08:22', '2020-11-02 15:08:22', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (306, '2020-11-02 15:08:31', '2020-11-02 15:08:31', '用户【admin】于【2020-11-02 15:08:31】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (307, '2020-11-02 15:08:51', '2020-11-02 15:08:51', '编辑菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-oar, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (308, '2020-11-02 15:09:05', '2020-11-02 15:09:05', '用户【admin】于【2020-11-02 15:09:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (309, '2020-11-02 15:09:30', '2020-11-02 15:09:30', '编辑菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-oar, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (310, '2020-11-02 15:09:39', '2020-11-02 15:09:39', '用户【admin】于【2020-11-02 15:09:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (311, '2020-11-02 15:10:04', '2020-11-02 15:10:04', '用户【admin】于【2020-11-02 15:10:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (312, '2020-11-02 15:10:08', '2020-11-02 15:10:08', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (313, '2020-11-02 15:10:49', '2020-11-02 15:10:49', '用户【admin】于【2020-11-02 15:10:49】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (314, '2020-11-02 15:11:28', '2020-11-02 15:11:28', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/readRoom/delete\'), icon=mdi-close-octagon, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (315, '2020-11-02 15:11:33', '2020-11-02 15:11:33', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (316, '2020-11-02 15:11:38', '2020-11-02 15:11:38', '编辑菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/readRoom/delete\'), icon=mdi-close-octagon, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (317, '2020-11-02 15:11:41', '2020-11-02 15:11:41', '用户【admin】于【2020-11-02 15:11:41】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (318, '2020-11-02 15:11:49', '2020-11-02 15:11:49', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (319, '2020-11-02 15:11:54', '2020-11-02 15:11:54', '用户【admin】于【2020-11-02 15:11:54】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (320, '2020-11-02 15:12:02', '2020-11-02 15:12:02', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (321, '2020-11-02 15:12:25', '2020-11-02 15:12:25', '编辑菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-oar, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (322, '2020-11-02 15:12:33', '2020-11-02 15:12:33', '用户【admin】于【2020-11-02 15:12:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (323, '2020-11-02 15:14:16', '2020-11-02 15:14:16', '用户【admin】于【2020-11-02 15:14:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (324, '2020-11-02 15:15:07', '2020-11-02 15:15:07', '用户【admin】于【2020-11-02 15:15:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (325, '2020-11-02 15:15:36', '2020-11-02 15:15:36', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=	edit(\'/tea/edit\'), icon=mdi-grease-pencil, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (326, '2020-11-02 15:15:45', '2020-11-02 15:15:45', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (327, '2020-11-02 15:16:13', '2020-11-02 15:16:13', '用户【admin】于【2020-11-02 15:16:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (328, '2020-11-02 15:17:45', '2020-11-02 15:17:45', '用户【admin】于【2020-11-02 15:17:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (329, '2020-11-02 15:18:23', '2020-11-02 15:18:23', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (330, '2020-11-02 15:18:37', '2020-11-02 15:18:37', '删除菜单信息，菜单ID【71】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (331, '2020-11-02 15:19:13', '2020-11-02 15:19:13', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-arrow-down-bold-box, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (332, '2020-11-02 15:19:26', '2020-11-02 15:19:26', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (333, '2020-11-02 15:19:35', '2020-11-02 15:19:35', '用户【admin】于【2020-11-02 15:19:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (334, '2020-11-02 15:20:14', '2020-11-02 15:20:14', '用户【admin】于【2020-11-02 15:20:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (335, '2020-11-02 15:20:21', '2020-11-02 15:20:21', '用户【admin】于【2020-11-02 15:20:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (336, '2020-11-02 15:21:20', '2020-11-02 15:21:20', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (337, '2020-11-02 15:21:20', '2020-11-02 15:21:20', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/readRoom/add, icon=mdi-account-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (338, '2020-11-02 15:21:27', '2020-11-02 15:21:27', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (339, '2020-11-02 15:21:34', '2020-11-02 15:21:34', '删除菜单信息，菜单ID【74】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (340, '2020-11-02 15:21:34', '2020-11-02 15:21:34', '用户【admin】于【2020-11-02 15:21:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (341, '2020-11-02 15:21:41', '2020-11-02 15:21:41', '删除菜单信息，菜单ID【73】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (342, '2020-11-02 15:21:55', '2020-11-02 15:21:55', '删除菜单信息，菜单ID【58】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (343, '2020-11-02 15:22:03', '2020-11-02 15:22:03', '删除菜单信息，菜单ID【57】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (344, '2020-11-02 15:22:26', '2020-11-02 15:22:26', '添加菜单信息【Menu [name=班级管理, parent=null, url=, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (345, '2020-11-02 15:23:14', '2020-11-02 15:23:14', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-apple-keyboard-control, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (346, '2020-11-02 15:23:37', '2020-11-02 15:23:37', '用户【admin】于【2020-11-02 15:23:37】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (347, '2020-11-02 15:23:42', '2020-11-02 15:23:42', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/cocah/add, icon=mdi-account-key, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (348, '2020-11-02 15:23:53', '2020-11-02 15:23:53', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (349, '2020-11-02 15:24:43', '2020-11-02 15:24:43', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-album, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (350, '2020-11-02 15:24:54', '2020-11-02 15:24:54', '用户【admin】于【2020-11-02 15:24:54】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (351, '2020-11-02 15:25:36', '2020-11-02 15:25:36', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (352, '2020-11-02 15:30:28', '2020-11-02 15:30:28', '用户【admin】于【2020-11-02 15:30:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (353, '2020-11-02 15:32:10', '2020-11-02 15:32:10', '添加菜单信息【Menu [name=班级列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/list, icon=mdi-alarm-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (354, '2020-11-02 15:32:22', '2020-11-02 15:32:22', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (355, '2020-11-02 15:32:31', '2020-11-02 15:32:31', '用户【admin】于【2020-11-02 15:32:31】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (356, '2020-11-02 15:33:02', '2020-11-02 15:33:02', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/readRoom/edit\'), icon=mdi-cursor-pointer, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (357, '2020-11-02 15:33:18', '2020-11-02 15:33:18', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (358, '2020-11-02 15:33:35', '2020-11-02 15:33:35', '用户【admin】于【2020-11-02 15:33:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (359, '2020-11-02 15:41:23', '2020-11-02 15:41:23', '用户【admin】于【2020-11-02 15:41:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (360, '2020-11-02 15:43:06', '2020-11-02 15:43:06', '用户【admin】于【2020-11-02 15:43:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (361, '2020-11-02 15:44:58', '2020-11-02 15:44:58', '添加菜单信息【Menu [name=信誉分详细, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-android-studio, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (362, '2020-11-02 15:45:36', '2020-11-02 15:45:36', '编辑菜单信息【Menu [name=信誉分详细, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/log/logs, icon=mdi-android-studio, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (363, '2020-11-02 15:45:44', '2020-11-02 15:45:44', '用户【admin】于【2020-11-02 15:45:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (364, '2020-11-02 15:46:19', '2020-11-02 15:46:19', '添加菜单信息【Menu [name=增加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/log/add, icon=mdi-account-multiple-plus, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (365, '2020-11-02 15:47:53', '2020-11-02 15:47:53', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/log/delete\'), icon=mdi-account-multiple-minus, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (366, '2020-11-02 15:48:53', '2020-11-02 15:48:53', '删除菜单信息，菜单ID【86】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (367, '2020-11-02 15:49:07', '2020-11-02 15:49:07', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (368, '2020-11-02 15:49:32', '2020-11-02 15:49:32', '用户【admin】于【2020-11-02 15:49:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (369, '2020-11-02 15:50:19', '2020-11-02 15:50:19', '编辑菜单信息【Menu [name=信誉分详细, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/log/logs, icon=mdi-android-studio, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (370, '2020-11-02 15:51:39', '2020-11-02 15:51:39', '用户【admin】于【2020-11-02 15:51:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (371, '2020-11-02 15:53:34', '2020-11-02 15:53:34', '用户【admin】于【2020-11-02 15:53:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (372, '2020-11-02 15:54:07', '2020-11-02 15:54:07', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/dlce/add, icon=mdi-arrow-up-thick, sort=58, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (373, '2020-11-02 15:54:14', '2020-11-02 15:54:14', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (374, '2020-11-02 15:54:22', '2020-11-02 15:54:22', '用户【admin】于【2020-11-02 15:54:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (375, '2020-11-02 15:54:44', '2020-11-02 15:54:44', '用户【admin】于【2020-11-02 15:54:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (376, '2020-11-02 15:55:10', '2020-11-02 15:55:10', '用户【admin】于【2020-11-02 15:55:10】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (377, '2020-11-02 15:55:29', '2020-11-02 15:55:29', '编辑菜单信息【Menu [name=信誉分详细, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/log/logs, icon=mdi-android-studio, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (378, '2020-11-02 15:58:26', '2020-11-02 15:58:26', '用户【admin】于【2020-11-02 15:58:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (379, '2020-11-02 16:00:18', '2020-11-02 16:00:18', '用户【admin】于【2020-11-02 16:00:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (380, '2020-11-02 16:00:16', '2020-11-02 16:00:16', '用户【admin】于【2020-11-02 16:00:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (381, '2020-11-02 16:02:14', '2020-11-02 16:02:14', '用户【admin】于【2020-11-02 16:02:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (382, '2020-11-02 16:02:33', '2020-11-02 16:02:33', '用户【admin】于【2020-11-02 16:02:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (383, '2020-11-02 16:02:37', '2020-11-02 16:02:37', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (384, '2020-11-02 16:02:59', '2020-11-02 16:02:59', '删除菜单信息，菜单ID【80】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (385, '2020-11-02 16:03:05', '2020-11-02 16:03:05', '删除菜单信息，菜单ID【79】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (386, '2020-11-02 16:03:11', '2020-11-02 16:03:11', '删除菜单信息，菜单ID【77】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (387, '2020-11-02 16:03:22', '2020-11-02 16:03:22', '删除菜单信息，菜单ID【43】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (388, '2020-11-02 16:03:22', '2020-11-02 16:03:22', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (389, '2020-11-02 16:03:33', '2020-11-02 16:03:33', '用户【admin】于【2020-11-02 16:03:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (390, '2020-11-02 16:03:44', '2020-11-02 16:03:44', '用户【admin】于【2020-11-02 16:03:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (391, '2020-11-02 16:03:57', '2020-11-02 16:03:57', '用户【admin】于【2020-11-02 16:03:57】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (392, '2020-11-02 16:04:16', '2020-11-02 16:04:16', '添加菜单信息【Menu [name=新增, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-account-check, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (393, '2020-11-02 16:04:47', '2020-11-02 16:04:47', '删除菜单信息，菜单ID【88】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (394, '2020-11-02 16:05:11', '2020-11-02 16:05:11', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (395, '2020-11-02 16:05:23', '2020-11-02 16:05:23', '用户【admin】于【2020-11-02 16:05:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (396, '2020-11-02 16:06:10', '2020-11-02 16:06:10', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-arrow-up-thick, sort=58, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (397, '2020-11-02 16:06:22', '2020-11-02 16:06:22', '用户【admin】于【2020-11-02 16:06:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (398, '2020-11-02 16:06:50', '2020-11-02 16:06:50', '用户【admin】于【2020-11-02 16:06:49】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (399, '2020-11-02 16:06:53', '2020-11-02 16:06:53', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (400, '2020-11-02 16:07:06', '2020-11-02 16:07:06', '用户【admin】于【2020-11-02 16:07:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (401, '2020-11-02 16:08:39', '2020-11-02 16:08:39', '用户【admin】于【2020-11-02 16:08:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (402, '2020-11-02 16:09:57', '2020-11-02 16:09:57', '用户【admin】于【2020-11-02 16:09:57】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (403, '2020-11-02 16:10:38', '2020-11-02 16:10:38', '编辑菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/clbum/add, icon=mdi-arrow-up-thick, sort=58, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (404, '2020-11-02 16:11:46', '2020-11-02 16:11:46', '用户【admin】于【2020-11-02 16:11:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (405, '2020-11-02 16:14:12', '2020-11-02 16:14:12', '用户【admin】于【2020-11-02 16:14:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (406, '2020-11-02 16:19:10', '2020-11-02 16:19:10', '用户【admin】于【2020-11-02 16:19:10】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (407, '2020-11-02 16:25:10', '2020-11-02 16:25:10', '用户【admin】于【2020-11-02 16:25:10】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (408, '2020-11-02 16:33:27', '2020-11-02 16:33:27', '用户【admin】于【2020-11-02 16:33:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (409, '2020-11-02 16:35:00', '2020-11-02 16:35:00', '用户【admin】于【2020-11-02 16:35:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (410, '2020-11-02 16:38:37', '2020-11-02 16:38:37', '用户【admin】于【2020-11-02 16:38:37】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (411, '2020-11-02 16:39:59', '2020-11-02 16:39:59', '用户【admin】于【2020-11-02 16:39:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (412, '2020-11-02 16:42:03', '2020-11-02 16:42:03', '用户【admin】于【2020-11-02 16:42:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (413, '2020-11-02 16:43:48', '2020-11-02 16:43:48', '用户【admin】于【2020-11-02 16:43:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (414, '2020-11-02 16:47:47', '2020-11-02 16:47:47', '用户【admin】于【2020-11-02 16:47:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (415, '2020-11-02 16:51:30', '2020-11-02 16:51:30', '用户【admin】于【2020-11-02 16:51:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (416, '2020-11-02 16:54:35', '2020-11-02 16:54:35', '用户【admin】于【2020-11-02 16:54:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (417, '2020-11-02 16:58:01', '2020-11-02 16:58:01', '用户【admin】于【2020-11-02 16:58:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (418, '2020-11-02 17:06:17', '2020-11-02 17:06:17', '用户【admin】于【2020-11-02 17:06:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (419, '2020-11-02 17:07:55', '2020-11-02 17:07:55', '用户【admin】于【2020-11-02 17:07:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (420, '2020-11-02 17:09:11', '2020-11-02 17:09:11', '用户【admin】于【2020-11-02 17:09:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (421, '2020-11-02 17:09:34', '2020-11-02 17:09:34', '添加班级，班级名：三班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (422, '2020-11-02 17:10:25', '2020-11-02 17:10:25', '用户【admin】于【2020-11-02 17:10:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (423, '2020-11-02 17:12:27', '2020-11-02 17:12:27', '用户【admin】于【2020-11-02 17:12:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (424, '2020-11-02 17:13:48', '2020-11-02 17:13:48', '用户【admin】于【2020-11-02 17:13:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (425, '2020-11-02 17:14:39', '2020-11-02 17:14:39', '用户【admin】于【2020-11-02 17:14:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (426, '2020-11-02 17:14:39', '2020-11-02 17:14:39', '用户【admin】于【2020-11-02 17:14:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (427, '2020-11-02 17:17:07', '2020-11-02 17:17:07', '用户【admin】于【2020-11-02 17:17:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (428, '2020-11-02 17:17:24', '2020-11-02 17:17:24', '用户【admin】于【2020-11-02 17:17:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (429, '2020-11-02 17:18:36', '2020-11-02 17:18:36', '用户【admin】于【2020-11-02 17:18:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (430, '2020-11-02 17:18:39', '2020-11-02 17:18:39', '用户【admin】于【2020-11-02 17:18:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (431, '2020-11-02 17:19:26', '2020-11-02 17:19:26', '用户【admin】于【2020-11-02 17:19:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (432, '2020-11-02 17:20:18', '2020-11-02 17:20:18', '用户【admin】于【2020-11-02 17:20:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (433, '2020-11-02 17:21:08', '2020-11-02 17:21:08', '用户【admin】于【2020-11-02 17:21:08】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (434, '2020-11-02 17:23:38', '2020-11-02 17:23:38', '用户【admin】于【2020-11-02 17:23:38】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (435, '2020-11-02 17:24:32', '2020-11-02 17:24:32', '用户【admin】于【2020-11-02 17:24:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (436, '2020-11-02 17:28:25', '2020-11-02 17:28:25', '用户【admin】于【2020-11-02 17:28:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (437, '2020-11-02 17:28:50', '2020-11-02 17:28:50', '用户【admin】于【2020-11-02 17:28:50】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (438, '2020-11-02 17:29:17', '2020-11-02 17:29:17', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (439, '2020-11-02 17:29:21', '2020-11-02 17:29:21', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (440, '2020-11-02 17:29:37', '2020-11-02 17:29:37', '删除菜单信息，菜单ID【84】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (441, '2020-11-02 17:29:43', '2020-11-02 17:29:43', '删除菜单信息，菜单ID【85】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (442, '2020-11-02 17:33:03', '2020-11-02 17:33:03', '用户【admin】于【2020-11-02 17:33:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (443, '2020-11-02 17:35:39', '2020-11-02 17:35:39', '用户【admin】于【2020-11-02 17:35:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (444, '2020-11-02 17:37:20', '2020-11-02 17:37:20', '用户【admin】于【2020-11-02 17:37:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (445, '2020-11-02 17:39:33', '2020-11-02 17:39:33', '用户【admin】于【2020-11-02 17:39:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (446, '2020-11-02 17:40:46', '2020-11-02 17:40:46', '用户【admin】于【2020-11-02 17:40:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (447, '2020-11-02 17:41:34', '2020-11-02 17:41:34', '用户【admin】于【2020-11-02 17:41:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (448, '2020-11-02 17:42:20', '2020-11-02 17:42:20', '用户【admin】于【2020-11-02 17:42:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (449, '2020-11-02 17:43:52', '2020-11-02 17:43:52', '用户【admin】于【2020-11-02 17:43:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (450, '2020-11-02 17:45:12', '2020-11-02 17:45:12', '用户【admin】于【2020-11-02 17:45:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (451, '2020-11-02 17:46:27', '2020-11-02 17:46:27', '用户【admin】于【2020-11-02 17:46:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (452, '2020-11-02 17:49:02', '2020-11-02 17:49:02', '用户【admin】于【2020-11-02 17:49:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (453, '2020-11-02 17:50:10', '2020-11-02 17:50:10', '用户【admin】于【2020-11-02 17:50:10】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (454, '2020-11-02 17:52:50', '2020-11-02 17:52:50', '用户【admin】于【2020-11-02 17:52:50】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (455, '2020-11-02 17:53:45', '2020-11-02 17:53:45', '用户【admin】于【2020-11-02 17:53:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (456, '2020-11-02 17:55:57', '2020-11-02 17:55:57', '用户【admin】于【2020-11-02 17:55:57】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (457, '2020-11-02 17:56:25', '2020-11-02 17:56:25', '用户【admin】于【2020-11-02 17:56:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (458, '2020-11-02 17:58:58', '2020-11-02 17:58:58', '用户【admin】于【2020-11-02 17:58:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (459, '2020-11-02 18:00:58', '2020-11-02 18:00:58', '用户【admin】于【2020-11-02 18:00:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (460, '2020-11-02 18:01:55', '2020-11-02 18:01:55', '用户【admin】于【2020-11-02 18:01:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (461, '2020-11-02 18:04:34', '2020-11-02 18:04:34', '用户【admin】于【2020-11-02 18:04:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (462, '2020-11-02 18:05:37', '2020-11-02 18:05:37', '用户【admin】于【2020-11-02 18:05:37】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (463, '2020-11-02 18:08:14', '2020-11-02 18:08:14', '用户【admin】于【2020-11-02 18:08:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (464, '2020-11-02 18:08:47', '2020-11-02 18:08:47', '用户【admin】于【2020-11-02 18:08:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (465, '2020-11-02 18:12:27', '2020-11-02 18:12:27', '用户【admin】于【2020-11-02 18:12:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (466, '2020-11-02 18:16:35', '2020-11-02 18:16:35', '用户【admin】于【2020-11-02 18:16:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (467, '2020-11-02 18:25:42', '2020-11-02 18:25:42', '用户【admin】于【2020-11-02 18:25:41】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (468, '2020-11-02 18:28:39', '2020-11-02 18:28:39', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/clbum/edit\'), icon=mdi-border-color, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (469, '2020-11-02 18:29:52', '2020-11-02 18:29:52', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/clbum/delete\'), icon=mdi-account-multiple, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (470, '2020-11-02 18:30:12', '2020-11-02 18:30:12', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (471, '2020-11-03 08:54:17', '2020-11-03 08:54:17', '用户【admin】于【2020-11-03 08:54:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (472, '2020-11-03 09:04:16', '2020-11-03 09:04:16', '用户【admin】于【2020-11-03 09:04:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (473, '2020-11-03 09:08:35', '2020-11-03 09:08:35', '用户【admin】于【2020-11-03 09:08:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (474, '2020-11-03 09:09:35', '2020-11-03 09:09:35', '用户【admin】于【2020-11-03 09:09:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (475, '2020-11-03 09:09:44', '2020-11-03 09:09:44', '用户【admin】于【2020-11-03 09:09:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (476, '2020-11-03 09:12:15', '2020-11-03 09:12:15', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (477, '2020-11-03 09:12:21', '2020-11-03 09:12:21', '删除菜单信息，菜单ID【38】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (478, '2020-11-03 09:13:09', '2020-11-03 09:13:09', '添加菜单信息【Menu [name=违规统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistics/violate, icon=mdi-airplane-takeoff, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (479, '2020-11-03 09:13:24', '2020-11-03 09:13:24', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (480, '2020-11-03 09:13:31', '2020-11-03 09:13:31', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (481, '2020-11-03 09:13:33', '2020-11-03 09:13:33', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (482, '2020-11-03 09:13:35', '2020-11-03 09:13:35', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (483, '2020-11-03 09:13:35', '2020-11-03 09:13:35', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (484, '2020-11-03 09:13:36', '2020-11-03 09:13:36', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (485, '2020-11-03 09:13:36', '2020-11-03 09:13:36', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (486, '2020-11-03 09:13:41', '2020-11-03 09:13:41', '用户【admin】于【2020-11-03 09:13:41】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (487, '2020-11-03 09:18:50', '2020-11-03 09:18:50', '用户【admin】于【2020-11-03 09:18:50】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (488, '2020-11-03 09:20:47', '2020-11-03 09:20:47', '添加菜单信息【Menu [name=占座统计, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/statistic/occupied, icon=mdi-arrow-down-bold-box, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (489, '2020-11-03 09:21:03', '2020-11-03 09:21:03', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (490, '2020-11-03 09:21:07', '2020-11-03 09:21:07', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (491, '2020-11-03 09:21:10', '2020-11-03 09:21:10', '编辑角色【超级管理员】', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (492, '2020-11-03 09:21:13', '2020-11-03 09:21:13', '用户【admin】于【2020-11-03 09:21:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (493, '2020-11-03 09:24:42', '2020-11-03 09:24:42', '用户【admin】于【2020-11-03 09:24:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (494, '2020-11-03 09:45:06', '2020-11-03 09:45:06', '用户【admin】于【2020-11-03 09:45:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (495, '2020-11-03 09:53:14', '2020-11-03 09:53:14', '删除菜单信息，菜单ID【83】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (496, '2020-11-03 09:59:09', '2020-11-03 09:59:09', '删除菜单信息，菜单ID【78】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (497, '2020-11-03 10:00:22', '2020-11-03 10:00:22', '编辑菜单信息【Menu [name=教师列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tea/list, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (498, '2020-11-03 10:00:59', '2020-11-03 10:00:59', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (499, '2020-11-03 10:01:07', '2020-11-03 10:01:07', '用户【admin】于【2020-11-03 10:01:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (500, '2020-11-03 10:17:03', '2020-11-03 10:17:03', '用户【admin】于【2020-11-03 10:17:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (501, '2020-11-03 10:25:31', '2020-11-03 10:25:31', '用户【T20201478308860】于【2020-11-03 10:25:31】登录系统！', 'T20201478308860');
INSERT INTO `ylrc_operater_log` VALUES (502, '2020-11-03 10:25:46', '2020-11-03 10:25:46', '用户【admin】于【2020-11-03 10:25:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (503, '2020-11-03 10:35:19', '2020-11-03 10:35:19', '用户【admin】于【2020-11-03 10:35:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (504, '2020-11-03 10:35:52', '2020-11-03 10:35:52', '添加菜单信息【Menu [name=A, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=, icon=mdi-arrange-send-backward, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (505, '2020-11-03 10:36:17', '2020-11-03 10:36:17', '添加菜单信息【Menu [name=ACX, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/tx, icon=mdi-approval, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (506, '2020-11-03 10:36:29', '2020-11-03 10:36:29', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (507, '2020-11-03 10:36:39', '2020-11-03 10:36:39', '用户【admin】于【2020-11-03 10:36:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (508, '2020-11-03 10:37:46', '2020-11-03 10:37:46', '编辑菜单信息【Menu [name=A, parent=null, url=, icon=mdi-arrange-send-backward, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (509, '2020-11-03 10:38:09', '2020-11-03 10:38:09', '用户【admin】于【2020-11-03 10:38:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (510, '2020-11-03 10:39:38', '2020-11-03 10:39:38', '用户【admin】于【2020-11-03 10:39:38】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (511, '2020-11-03 10:45:59', '2020-11-03 10:45:59', '用户【admin】于【2020-11-03 10:45:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (512, '2020-11-03 10:48:26', '2020-11-03 10:48:26', '用户【admin】于【2020-11-03 10:48:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (513, '2020-11-03 11:02:56', '2020-11-03 11:02:56', '用户【admin】于【2020-11-03 11:02:56】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (514, '2020-11-03 11:10:50', '2020-11-03 11:10:50', '用户【admin】于【2020-11-03 11:10:50】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (515, '2020-11-03 11:12:09', '2020-11-03 11:12:09', '用户【admin】于【2020-11-03 11:12:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (516, '2020-11-03 12:11:22', '2020-11-03 12:11:22', '用户【admin】于【2020-11-03 12:11:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (517, '2020-11-03 12:14:09', '2020-11-03 12:14:09', '用户【admin】于【2020-11-03 12:14:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (518, '2020-11-03 12:17:48', '2020-11-03 12:17:48', '用户【admin】于【2020-11-03 12:17:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (519, '2020-11-03 12:32:27', '2020-11-03 12:32:27', '用户【admin】于【2020-11-03 12:32:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (520, '2020-11-03 12:32:27', '2020-11-03 12:32:27', '用户【admin】于【2020-11-03 12:32:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (521, '2020-11-03 12:43:01', '2020-11-03 12:43:01', '用户【admin】于【2020-11-03 12:43:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (522, '2020-11-03 12:46:45', '2020-11-03 12:46:45', '用户【admin】于【2020-11-03 12:46:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (523, '2020-11-03 12:48:54', '2020-11-03 12:48:54', '用户【admin】于【2020-11-03 12:48:54】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (524, '2020-11-03 12:56:14', '2020-11-03 12:56:14', '用户【admin】于【2020-11-03 12:56:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (525, '2020-11-03 13:02:10', '2020-11-03 13:02:10', '用户【admin】于【2020-11-03 13:02:10】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (526, '2020-11-03 13:03:07', '2020-11-03 13:03:07', '用户【admin】于【2020-11-03 13:03:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (527, '2020-11-03 13:04:46', '2020-11-03 13:04:46', '用户【admin】于【2020-11-03 13:04:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (528, '2020-11-03 13:06:59', '2020-11-03 13:06:59', '用户【admin】于【2020-11-03 13:06:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (529, '2020-11-03 13:09:06', '2020-11-03 13:09:06', '用户【admin】于【2020-11-03 13:09:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (530, '2020-11-03 13:09:24', '2020-11-03 13:09:24', '添加班级，班级名：四班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (531, '2020-11-03 13:10:08', '2020-11-03 13:10:08', '删除班级，班级ID：3', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (532, '2020-11-03 13:26:14', '2020-11-03 13:26:14', '用户【admin】于【2020-11-03 13:26:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (533, '2020-11-03 13:35:49', '2020-11-03 13:35:49', '用户【admin】于【2020-11-03 13:35:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (534, '2020-11-03 13:40:40', '2020-11-03 13:40:40', '用户【admin】于【2020-11-03 13:40:40】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (535, '2020-11-03 14:03:36', '2020-11-03 14:03:36', '用户【admin】于【2020-11-03 14:03:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (536, '2020-11-03 14:06:23', '2020-11-03 14:06:23', '用户【admin】于【2020-11-03 14:06:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (537, '2020-11-03 14:08:54', '2020-11-03 14:08:54', '用户【admin】于【2020-11-03 14:08:54】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (538, '2020-11-03 14:09:12', '2020-11-03 14:09:12', '用户【admin】于【2020-11-03 14:09:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (539, '2020-11-03 14:09:12', '2020-11-03 14:09:12', '用户【admin】于【2020-11-03 14:09:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (540, '2020-11-03 14:09:52', '2020-11-03 14:09:52', '用户【admin】于【2020-11-03 14:09:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (541, '2020-11-03 14:14:40', '2020-11-03 14:14:40', '用户【admin】于【2020-11-03 14:14:40】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (542, '2020-11-03 14:22:59', '2020-11-03 14:22:59', '用户【admin】于【2020-11-03 14:22:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (543, '2020-11-03 14:34:48', '2020-11-03 14:34:48', '用户【admin】于【2020-11-03 14:34:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (544, '2020-11-03 14:41:00', '2020-11-03 14:41:00', '用户【admin】于【2020-11-03 14:41:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (545, '2020-11-03 14:43:17', '2020-11-03 14:43:17', '用户【admin】于【2020-11-03 14:43:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (546, '2020-11-03 14:46:11', '2020-11-03 14:46:11', '用户【admin】于【2020-11-03 14:46:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (547, '2020-11-03 14:47:59', '2020-11-03 14:47:59', '用户【admin】于【2020-11-03 14:47:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (548, '2020-11-03 14:48:28', '2020-11-03 14:48:28', '用户【admin】于【2020-11-03 14:48:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (549, '2020-11-03 14:49:09', '2020-11-03 14:49:09', '用户【admin】于【2020-11-03 14:49:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (550, '2020-11-03 14:53:00', '2020-11-03 14:53:00', '用户【admin】于【2020-11-03 14:53:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (551, '2020-11-03 14:58:05', '2020-11-03 14:58:05', '用户【admin】于【2020-11-03 14:58:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (552, '2020-11-03 15:13:09', '2020-11-03 15:13:09', '用户【admin】于【2020-11-03 15:13:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (553, '2020-11-03 15:13:25', '2020-11-03 15:13:25', '用户【S20201477272966】于【2020-11-03 15:13:25】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (554, '2020-11-03 15:13:35', '2020-11-03 15:13:35', '用户【admin】于【2020-11-03 15:13:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (555, '2020-11-03 15:13:53', '2020-11-03 15:13:53', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (556, '2020-11-03 15:14:03', '2020-11-03 15:14:03', '用户【S20201477272966】于【2020-11-03 15:14:03】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (557, '2020-11-03 15:15:19', '2020-11-03 15:15:19', '用户【admin】于【2020-11-03 15:15:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (558, '2020-11-03 15:27:03', '2020-11-03 15:27:03', '用户【admin】于【2020-11-03 15:27:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (559, '2020-11-03 15:27:56', '2020-11-03 15:27:56', '用户【admin】于【2020-11-03 15:27:56】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (560, '2020-11-03 15:28:31', '2020-11-03 15:28:31', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (561, '2020-11-03 15:28:39', '2020-11-03 15:28:39', '删除菜单信息，菜单ID【94】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (562, '2020-11-03 15:28:45', '2020-11-03 15:28:45', '删除菜单信息，菜单ID【93】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (563, '2020-11-03 15:29:05', '2020-11-03 15:29:05', '用户【admin】于【2020-11-03 15:29:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (564, '2020-11-03 15:29:46', '2020-11-03 15:29:46', '用户【admin】于【2020-11-03 15:29:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (565, '2020-11-03 15:29:53', '2020-11-03 15:29:53', '用户【S20201592829307】于【2020-11-03 15:29:53】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (566, '2020-11-03 15:31:02', '2020-11-03 15:31:02', '用户【admin】于【2020-11-03 15:31:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (567, '2020-11-03 15:33:01', '2020-11-03 15:33:01', '用户【admin】于【2020-11-03 15:33:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (568, '2020-11-03 15:36:31', '2020-11-03 15:36:31', '用户【S20201627115123】于【2020-11-03 15:36:31】登录系统！', 'S20201627115123');
INSERT INTO `ylrc_operater_log` VALUES (569, '2020-11-03 15:40:43', '2020-11-03 15:40:43', '用户【admin】于【2020-11-03 15:40:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (570, '2020-11-03 15:49:25', '2020-11-03 15:49:25', '用户【admin】于【2020-11-03 15:49:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (571, '2020-11-03 15:50:47', '2020-11-03 15:50:47', '用户【admin】于【2020-11-03 15:50:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (572, '2020-11-03 15:53:05', '2020-11-03 15:53:05', '用户【admin】于【2020-11-03 15:53:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (573, '2020-11-03 15:53:14', '2020-11-03 15:53:14', '编辑班级名，班级名：二班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (574, '2020-11-03 15:59:09', '2020-11-03 15:59:09', '用户【admin】于【2020-11-03 15:59:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (575, '2020-11-03 15:59:53', '2020-11-03 15:59:53', '用户【admin】于【2020-11-03 15:59:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (576, '2020-11-03 16:00:27', '2020-11-03 16:00:27', '添加班级，班级名：sad ', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (577, '2020-11-03 16:01:27', '2020-11-03 16:01:27', '用户【admin】于【2020-11-03 16:01:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (578, '2020-11-03 16:02:30', '2020-11-03 16:02:30', '用户【admin】于【2020-11-03 16:02:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (579, '2020-11-03 16:04:45', '2020-11-03 16:04:45', '用户【admin】于【2020-11-03 16:04:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (580, '2020-11-03 16:05:07', '2020-11-03 16:05:07', '添加班级，班级名：sisis', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (581, '2020-11-03 16:05:52', '2020-11-03 16:05:52', '用户【admin】于【2020-11-03 16:05:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (582, '2020-11-03 16:06:56', '2020-11-03 16:06:56', '用户【S20201477272966】于【2020-11-03 16:06:56】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (583, '2020-11-03 16:07:06', '2020-11-03 16:07:06', '用户【admin】于【2020-11-03 16:07:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (584, '2020-11-03 16:07:22', '2020-11-03 16:07:22', '用户【admin】于【2020-11-03 16:07:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (585, '2020-11-03 16:08:21', '2020-11-03 16:08:21', '用户【admin】于【2020-11-03 16:08:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (586, '2020-11-03 16:08:32', '2020-11-03 16:08:32', '用户【S20201477272966】于【2020-11-03 16:08:32】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (587, '2020-11-03 16:42:36', '2020-11-03 16:42:36', '用户【admin】于【2020-11-03 16:42:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (588, '2020-11-03 16:44:22', '2020-11-03 16:44:22', '用户【admin】于【2020-11-03 16:44:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (589, '2020-11-03 17:01:59', '2020-11-03 17:01:59', '用户【admin】于【2020-11-03 17:01:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (590, '2020-11-03 17:02:43', '2020-11-03 17:02:43', '用户【admin】于【2020-11-03 17:02:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (591, '2020-11-03 17:05:18', '2020-11-03 17:05:18', '用户【admin】于【2020-11-03 17:05:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (592, '2020-11-03 17:09:27', '2020-11-03 17:09:27', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (593, '2020-11-03 17:09:41', '2020-11-03 17:09:41', '用户【S20201477272966】于【2020-11-03 17:09:41】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (594, '2020-11-03 17:48:44', '2020-11-03 17:48:44', '用户【admin】于【2020-11-03 17:48:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (595, '2020-11-03 17:53:27', '2020-11-03 17:53:27', '用户【S20201477272966】于【2020-11-03 17:53:26】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (596, '2020-11-03 17:59:49', '2020-11-03 17:59:49', '用户【S20201477272966】于【2020-11-03 17:59:49】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (597, '2020-11-03 18:02:30', '2020-11-03 18:02:30', '用户【admin】于【2020-11-03 18:02:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (598, '2020-11-03 18:07:39', '2020-11-03 18:07:39', '用户【S20201477272966】于【2020-11-03 18:07:39】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (599, '2020-11-03 18:09:14', '2020-11-03 18:09:14', '用户【S20201597387303】于【2020-11-03 18:09:14】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (600, '2020-11-03 18:12:15', '2020-11-03 18:12:15', '用户【S20201597387303】于【2020-11-03 18:12:15】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (601, '2020-11-03 18:19:36', '2020-11-03 18:19:36', '用户【admin】于【2020-11-03 18:19:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (602, '2020-11-03 19:15:29', '2020-11-03 19:15:29', '用户【admin】于【2020-11-03 19:15:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (603, '2020-11-03 19:17:15', '2020-11-03 19:17:15', '用户【admin】于【2020-11-03 19:17:15】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (604, '2020-11-03 19:22:42', '2020-11-03 19:22:42', '用户【admin】于【2020-11-03 19:22:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (605, '2020-11-03 19:24:11', '2020-11-03 19:24:11', '用户【admin】于【2020-11-03 19:24:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (606, '2020-11-03 19:26:13', '2020-11-03 19:26:13', '用户【admin】于【2020-11-03 19:26:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (607, '2020-11-03 19:28:45', '2020-11-03 19:28:45', '用户【admin】于【2020-11-03 19:28:45】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (608, '2020-11-03 19:32:31', '2020-11-03 19:32:31', '用户【admin】于【2020-11-03 19:32:31】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (609, '2020-11-03 19:33:55', '2020-11-03 19:33:55', '用户【admin】于【2020-11-03 19:33:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (610, '2020-11-03 19:35:04', '2020-11-03 19:35:04', '用户【admin】于【2020-11-03 19:35:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (611, '2020-11-04 08:48:12', '2020-11-04 08:48:12', '用户【admin】于【2020-11-04 08:48:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (612, '2020-11-04 08:51:07', '2020-11-04 08:51:07', '用户【admin】于【2020-11-04 08:51:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (613, '2020-11-04 08:52:12', '2020-11-04 08:52:12', '用户【admin】于【2020-11-04 08:52:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (614, '2020-11-04 08:53:50', '2020-11-04 08:53:50', '用户【S20201597387303】于【2020-11-04 08:53:50】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (615, '2020-11-04 08:58:48', '2020-11-04 08:58:48', '用户【S20201597387303】于【2020-11-04 08:58:48】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (616, '2020-11-04 09:04:10', '2020-11-04 09:04:10', '用户【S20201597387303】于【2020-11-04 09:04:10】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (617, '2020-11-04 09:19:33', '2020-11-04 09:19:33', '用户【admin】于【2020-11-04 09:19:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (618, '2020-11-04 09:56:35', '2020-11-04 09:56:35', '用户【admin】于【2020-11-04 09:56:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (619, '2020-11-04 09:58:49', '2020-11-04 09:58:49', '用户【admin】于【2020-11-04 09:58:49】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (620, '2020-11-04 10:33:39', '2020-11-04 10:33:39', '用户【admin】于【2020-11-04 10:33:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (621, '2020-11-04 10:35:07', '2020-11-04 10:35:07', '用户【admin】于【2020-11-04 10:35:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (622, '2020-11-04 10:36:50', '2020-11-04 10:36:50', '添加菜单信息【Menu [name=学生座位预约记录, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/seat/stu/order, icon=mdi-baby, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (623, '2020-11-04 10:37:00', '2020-11-04 10:37:00', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (624, '2020-11-04 10:37:11', '2020-11-04 10:37:11', '用户【S20201597387303】于【2020-11-04 10:37:11】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (625, '2020-11-04 10:38:16', '2020-11-04 10:38:16', '用户【admin】于【2020-11-04 10:38:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (626, '2020-11-04 10:39:41', '2020-11-04 10:39:41', '编辑菜单信息【Menu [name=学生座位预约记录, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/seat/stu/order, icon=mdi-baby, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (627, '2020-11-04 10:39:49', '2020-11-04 10:39:49', '用户【S20201597387303】于【2020-11-04 10:39:49】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (628, '2020-11-04 10:50:44', '2020-11-04 10:50:44', '用户【S20201597387303】于【2020-11-04 10:50:44】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (629, '2020-11-04 11:50:53', '2020-11-04 11:50:53', '用户【S20201597387303】于【2020-11-04 11:50:53】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (630, '2020-11-04 12:09:12', '2020-11-04 12:09:12', '用户【admin】于【2020-11-04 12:09:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (631, '2020-11-04 12:10:36', '2020-11-04 12:10:36', '添加菜单信息【Menu [name=取消预约, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/seat/delete\'), icon=mdi-window-close, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (632, '2020-11-04 12:10:46', '2020-11-04 12:10:46', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (633, '2020-11-04 12:10:54', '2020-11-04 12:10:54', '用户【S20201597387303】于【2020-11-04 12:10:54】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (634, '2020-11-04 12:14:20', '2020-11-04 12:14:20', '用户【admin】于【2020-11-04 12:14:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (635, '2020-11-04 12:15:36', '2020-11-04 12:15:36', '用户【S20201597387303】于【2020-11-04 12:15:36】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (636, '2020-11-04 12:32:32', '2020-11-04 12:32:32', '用户【admin】于【2020-11-04 12:32:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (637, '2020-11-04 12:34:28', '2020-11-04 12:34:28', '用户【S20201597387303】于【2020-11-04 12:34:28】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (638, '2020-11-04 12:44:02', '2020-11-04 12:44:02', '用户【admin】于【2020-11-04 12:44:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (639, '2020-11-04 12:53:05', '2020-11-04 12:53:05', '用户【admin】于【2020-11-04 12:53:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (640, '2020-11-04 12:53:26', '2020-11-04 12:53:26', '用户【S20201597387303】于【2020-11-04 12:53:26】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (641, '2020-11-04 12:53:40', '2020-11-04 12:53:40', '添加班级，班级名：五班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (642, '2020-11-04 12:54:19', '2020-11-04 12:54:19', '用户【admin】于【2020-11-04 12:54:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (643, '2020-11-04 12:54:34', '2020-11-04 12:54:34', '用户【admin】于【2020-11-04 12:54:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (644, '2020-11-04 12:54:59', '2020-11-04 12:54:59', '用户【admin】于【2020-11-04 12:54:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (645, '2020-11-04 12:55:10', '2020-11-04 12:55:10', '编辑班级名，班级名：五班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (646, '2020-11-04 12:55:13', '2020-11-04 12:55:13', '用户【S20201597387303】于【2020-11-04 12:55:13】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (647, '2020-11-04 12:55:23', '2020-11-04 12:55:23', '删除班级，班级ID：5', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (648, '2020-11-04 12:55:37', '2020-11-04 12:55:37', '用户【S20201477272966】于【2020-11-04 12:55:37】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (649, '2020-11-04 12:56:35', '2020-11-04 12:56:35', '用户【S20201592829307】于【2020-11-04 12:56:35】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (650, '2020-11-04 12:59:23', '2020-11-04 12:59:23', '用户【admin】于【2020-11-04 12:59:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (651, '2020-11-04 13:00:03', '2020-11-04 13:00:03', '用户【admin】于【2020-11-04 13:00:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (652, '2020-11-04 13:02:23', '2020-11-04 13:02:23', '编辑班级名，班级名：五班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (653, '2020-11-04 13:03:51', '2020-11-04 13:03:51', '编辑班级名，班级名：sad ', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (654, '2020-11-04 13:04:00', '2020-11-04 13:04:00', '删除班级，班级ID：6', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (655, '2020-11-04 13:09:03', '2020-11-04 13:09:03', '用户【admin】于【2020-11-04 13:09:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (656, '2020-11-04 13:11:45', '2020-11-04 13:11:45', '添加班级，班级名：sadas', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (657, '2020-11-04 13:12:34', '2020-11-04 13:12:34', '用户【admin】于【2020-11-04 13:12:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (658, '2020-11-04 13:13:03', '2020-11-04 13:13:03', '用户【admin】于【2020-11-04 13:13:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (659, '2020-11-04 13:13:07', '2020-11-04 13:13:07', '添加班级，班级名：三班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (660, '2020-11-04 13:19:09', '2020-11-04 13:19:09', '用户【admin】于【2020-11-04 13:19:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (661, '2020-11-04 13:26:23', '2020-11-04 13:26:23', '用户【admin】于【2020-11-04 13:26:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (662, '2020-11-04 13:28:17', '2020-11-04 13:28:17', '用户【admin】于【2020-11-04 13:28:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (663, '2020-11-04 13:30:29', '2020-11-04 13:30:29', '用户【admin】于【2020-11-04 13:30:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (664, '2020-11-04 13:30:29', '2020-11-04 13:30:29', '用户【admin】于【2020-11-04 13:30:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (665, '2020-11-04 13:31:59', '2020-11-04 13:31:59', '用户【admin】于【2020-11-04 13:31:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (666, '2020-11-04 13:32:08', '2020-11-04 13:32:08', '编辑班级名，班级名：sadas', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (667, '2020-11-04 13:35:09', '2020-11-04 13:35:09', '用户【admin】于【2020-11-04 13:35:09】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (668, '2020-11-04 13:36:03', '2020-11-04 13:36:03', '用户【admin】于【2020-11-04 13:36:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (669, '2020-11-04 13:39:00', '2020-11-04 13:39:00', '用户【admin】于【2020-11-04 13:39:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (670, '2020-11-04 13:43:43', '2020-11-04 13:43:43', '用户【admin】于【2020-11-04 13:43:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (671, '2020-11-04 13:45:05', '2020-11-04 13:45:05', '用户【admin】于【2020-11-04 13:45:05】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (672, '2020-11-04 14:00:08', '2020-11-04 14:00:08', '用户【admin】于【2020-11-04 14:00:08】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (673, '2020-11-04 14:21:34', '2020-11-04 14:21:34', '用户【admin】于【2020-11-04 14:21:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (674, '2020-11-04 14:23:25', '2020-11-04 14:23:25', '用户【admin】于【2020-11-04 14:23:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (675, '2020-11-04 14:23:52', '2020-11-04 14:23:52', '用户【admin】于【2020-11-04 14:23:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (676, '2020-11-04 14:24:03', '2020-11-04 14:24:03', '用户【S20201592829307】于【2020-11-04 14:24:03】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (677, '2020-11-04 14:24:22', '2020-11-04 14:24:22', '用户【admin】于【2020-11-04 14:24:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (678, '2020-11-04 14:26:16', '2020-11-04 14:26:16', '用户【admin】于【2020-11-04 14:26:16】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (679, '2020-11-04 14:26:20', '2020-11-04 14:26:20', '添加菜单信息【Menu [name=查看, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=“”, icon=mdi-account-multiple-outline, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (680, '2020-11-04 14:26:30', '2020-11-04 14:26:30', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (681, '2020-11-04 14:26:40', '2020-11-04 14:26:40', '用户【S20201592829307】于【2020-11-04 14:26:40】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (682, '2020-11-04 14:26:53', '2020-11-04 14:26:53', '用户【admin】于【2020-11-04 14:26:53】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (683, '2020-11-04 14:27:07', '2020-11-04 14:27:07', '编辑菜单信息【Menu [name=查看, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=“”, icon=mdi-account-multiple-outline, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (684, '2020-11-04 14:27:18', '2020-11-04 14:27:18', '用户【S20201592829307】于【2020-11-04 14:27:18】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (685, '2020-11-04 14:27:57', '2020-11-04 14:27:57', '用户【admin】于【2020-11-04 14:27:57】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (686, '2020-11-04 14:28:51', '2020-11-04 14:28:51', '用户【admin】于【2020-11-04 14:28:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (687, '2020-11-04 14:29:04', '2020-11-04 14:29:04', '用户【admin】于【2020-11-04 14:29:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (688, '2020-11-04 14:30:45', '2020-11-04 14:30:45', '用户【S20201592829307】于【2020-11-04 14:30:45】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (689, '2020-11-04 14:31:13', '2020-11-04 14:31:13', '用户【admin】于【2020-11-04 14:31:13】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (690, '2020-11-04 14:31:29', '2020-11-04 14:31:29', '用户【admin】于【2020-11-04 14:31:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (691, '2020-11-04 14:31:42', '2020-11-04 14:31:42', '用户【admin】于【2020-11-04 14:31:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (692, '2020-11-04 14:34:03', '2020-11-04 14:34:03', '添加菜单信息【Menu [name=我的信用积分, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/stu/list, icon=mdi-android, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (693, '2020-11-04 14:34:06', '2020-11-04 14:34:06', '用户【admin】于【2020-11-04 14:34:06】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (694, '2020-11-04 14:34:40', '2020-11-04 14:34:40', '编辑角色【教师】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (695, '2020-11-04 14:34:55', '2020-11-04 14:34:55', '编辑菜单信息【Menu [name=我的信用积分, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/log/stuList, icon=mdi-android, sort=0, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (696, '2020-11-04 14:37:43', '2020-11-04 14:37:43', '用户【T20201534791669】于【2020-11-04 14:37:43】登录系统！', 'T20201534791669');
INSERT INTO `ylrc_operater_log` VALUES (697, '2020-11-04 14:38:12', '2020-11-04 14:38:12', '用户【admin】于【2020-11-04 14:38:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (698, '2020-11-04 14:43:24', '2020-11-04 14:43:24', '添加班级，班级名：test', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (699, '2020-11-04 14:55:31', '2020-11-04 14:55:31', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (700, '2020-11-04 14:56:24', '2020-11-04 14:56:24', '用户【S20201457042061】于【2020-11-04 14:56:24】登录系统！', 'S20201457042061');
INSERT INTO `ylrc_operater_log` VALUES (701, '2020-11-04 15:01:02', '2020-11-04 15:01:02', '用户【admin】于【2020-11-04 15:01:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (702, '2020-11-04 15:01:27', '2020-11-04 15:01:27', '编辑班级名，班级名：test', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (703, '2020-11-04 15:02:23', '2020-11-04 15:02:23', '用户【admin】于【2020-11-04 15:02:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (704, '2020-11-04 15:02:40', '2020-11-04 15:02:40', '编辑班级名，班级名：test', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (705, '2020-11-04 15:03:58', '2020-11-04 15:03:58', '用户【admin】于【2020-11-04 15:03:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (706, '2020-11-04 15:04:37', '2020-11-04 15:04:37', '用户【admin】于【2020-11-04 15:04:37】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (707, '2020-11-04 15:05:27', '2020-11-04 15:05:27', '用户【S20201477272966】于【2020-11-04 15:05:27】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (708, '2020-11-04 15:05:42', '2020-11-04 15:05:42', '用户【admin】于【2020-11-04 15:05:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (709, '2020-11-04 15:05:57', '2020-11-04 15:05:57', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (710, '2020-11-04 15:06:01', '2020-11-04 15:06:01', '用户【T20201478308860】于【2020-11-04 15:06:01】登录系统！', 'T20201478308860');
INSERT INTO `ylrc_operater_log` VALUES (711, '2020-11-04 15:06:09', '2020-11-04 15:06:09', '用户【S20201477272966】于【2020-11-04 15:06:09】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (712, '2020-11-04 15:07:01', '2020-11-04 15:07:01', '用户【admin】于【2020-11-04 15:07:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (713, '2020-11-04 15:08:03', '2020-11-04 15:08:03', '添加班级，班级名：大声道', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (714, '2020-11-04 15:10:11', '2020-11-04 15:10:11', '编辑班级名，班级名：大声道', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (715, '2020-11-04 15:13:17', '2020-11-04 15:13:17', '用户【admin】于【2020-11-04 15:13:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (716, '2020-11-04 15:15:51', '2020-11-04 15:15:51', '用户【admin】于【2020-11-04 15:15:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (717, '2020-11-04 15:19:42', '2020-11-04 15:19:42', '用户【admin】于【2020-11-04 15:19:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (718, '2020-11-04 15:20:11', '2020-11-04 15:20:11', '用户【admin】于【2020-11-04 15:20:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (719, '2020-11-04 15:21:07', '2020-11-04 15:21:07', '用户【S20201592829307】于【2020-11-04 15:21:07】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (720, '2020-11-04 15:21:19', '2020-11-04 15:21:19', '用户【admin】于【2020-11-04 15:21:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (721, '2020-11-04 15:21:37', '2020-11-04 15:21:37', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (722, '2020-11-04 15:22:18', '2020-11-04 15:22:18', '用户【admin】于【2020-11-04 15:22:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (723, '2020-11-04 15:25:17', '2020-11-04 15:25:17', '用户【S20201477272966】于【2020-11-04 15:25:17】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (724, '2020-11-04 15:31:59', '2020-11-04 15:31:59', '用户【admin】于【2020-11-04 15:31:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (725, '2020-11-04 15:34:29', '2020-11-04 15:34:29', '添加菜单信息【Menu [name=上传图片, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_photo, icon=mdi-android-head, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (726, '2020-11-04 15:35:14', '2020-11-04 15:35:14', '添加菜单信息【Menu [name=上传图片, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_photo, icon=mdi-account-plus, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (727, '2020-11-04 15:35:30', '2020-11-04 15:35:30', '删除菜单信息，菜单ID【97】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (728, '2020-11-04 15:36:19', '2020-11-04 15:36:19', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (729, '2020-11-04 15:36:28', '2020-11-04 15:36:28', '编辑角色【教师】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (730, '2020-11-04 15:37:00', '2020-11-04 15:37:00', '用户【S20201597387303】于【2020-11-04 15:37:00】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (731, '2020-11-04 15:48:27', '2020-11-04 15:48:27', '用户【admin】于【2020-11-04 15:48:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (732, '2020-11-04 15:48:57', '2020-11-04 15:48:57', '编辑菜单信息【Menu [name=上传图片, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_photo, icon=mdi-account-plus, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (733, '2020-11-04 15:50:12', '2020-11-04 15:50:12', '编辑菜单信息【Menu [name=上传图片, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_photo, icon=mdi-account-plus, sort=0, isButton=false, isShow=false]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (734, '2020-11-04 15:50:46', '2020-11-04 15:50:46', '用户【S20201592829307】于【2020-11-04 15:50:46】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (735, '2020-11-04 15:51:42', '2020-11-04 15:51:42', '用户【T20201478308860】于【2020-11-04 15:51:42】登录系统！', 'T20201478308860');
INSERT INTO `ylrc_operater_log` VALUES (736, '2020-11-04 15:59:01', '2020-11-04 15:59:01', '用户【admin】于【2020-11-04 15:59:00】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (737, '2020-11-04 15:59:42', '2020-11-04 15:59:42', '用户【admin】于【2020-11-04 15:59:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (738, '2020-11-04 15:59:48', '2020-11-04 15:59:48', '用户【admin】于【2020-11-04 15:59:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (739, '2020-11-04 15:59:48', '2020-11-04 15:59:48', '用户【admin】于【2020-11-04 15:59:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (740, '2020-11-04 16:02:58', '2020-11-04 16:02:58', '删除班级，班级ID：10', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (741, '2020-11-04 16:03:08', '2020-11-04 16:03:08', '编辑班级名，班级名：test', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (742, '2020-11-04 16:03:43', '2020-11-04 16:03:43', '添加班级，班级名：四班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (743, '2020-11-04 16:05:58', '2020-11-04 16:05:58', '用户【admin】于【2020-11-04 16:05:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (744, '2020-11-04 16:08:07', '2020-11-04 16:08:07', '添加用户，用户名：S20201477272100', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (745, '2020-11-04 16:08:27', '2020-11-04 16:08:27', '用户【admin】于【2020-11-04 16:08:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (746, '2020-11-04 16:13:23', '2020-11-04 16:13:23', '用户【admin】于【2020-11-04 16:13:23】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (747, '2020-11-04 16:15:42', '2020-11-04 16:15:42', '用户【admin】于【2020-11-04 16:15:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (748, '2020-11-04 16:15:51', '2020-11-04 16:15:51', '用户【S20201477272966】于【2020-11-04 16:15:51】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (749, '2020-11-04 16:16:59', '2020-11-04 16:16:59', '用户【admin】于【2020-11-04 16:16:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (750, '2020-11-04 16:23:52', '2020-11-04 16:23:52', '用户【admin】于【2020-11-04 16:23:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (751, '2020-11-04 16:24:02', '2020-11-04 16:24:02', '用户【admin】于【2020-11-04 16:24:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (752, '2020-11-04 16:37:03', '2020-11-04 16:37:03', '用户【admin】于【2020-11-04 16:37:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (753, '2020-11-04 16:38:05', '2020-11-04 16:38:05', '添加菜单信息【Menu [name=座位状态管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/seat/able, icon=mdi-account-settings-variant, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (754, '2020-11-04 16:38:24', '2020-11-04 16:38:24', '编辑角色【超级管理员】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (755, '2020-11-04 16:38:37', '2020-11-04 16:38:37', '用户【S20201477272966】于【2020-11-04 16:38:37】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (756, '2020-11-04 16:46:43', '2020-11-04 16:46:43', '用户【S20201477272966】于【2020-11-04 16:46:43】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (757, '2020-11-04 16:48:44', '2020-11-04 16:48:44', '用户【admin】于【2020-11-04 16:48:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (758, '2020-11-04 16:56:17', '2020-11-04 16:56:17', '用户【admin】于【2020-11-04 16:56:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (759, '2020-11-04 17:00:19', '2020-11-04 17:00:19', '用户【admin】于【2020-11-04 17:00:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (760, '2020-11-04 17:14:02', '2020-11-04 17:14:02', '用户【admin】于【2020-11-04 17:14:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (761, '2020-11-04 17:16:28', '2020-11-04 17:16:28', '用户【admin】于【2020-11-04 17:16:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (762, '2020-11-04 17:17:53', '2020-11-04 17:17:53', '用户【admin】于【2020-11-04 17:17:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (763, '2020-11-04 17:20:55', '2020-11-04 17:20:55', '用户【admin】于【2020-11-04 17:20:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (764, '2020-11-04 17:21:04', '2020-11-04 17:21:04', '用户【admin】于【2020-11-04 17:21:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (765, '2020-11-04 17:34:30', '2020-11-04 17:34:30', '编辑菜单信息【Menu [name=座位状态管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=able( \'/seat/able\'), icon=mdi-account-settings-variant, sort=0, isButton=true, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (766, '2020-11-04 17:34:43', '2020-11-04 17:34:43', '用户【admin】于【2020-11-04 17:34:43】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (767, '2020-11-04 17:39:26', '2020-11-04 17:39:26', '用户【S20201477272966】于【2020-11-04 17:39:26】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (768, '2020-11-04 17:39:42', '2020-11-04 17:39:42', '用户【admin】于【2020-11-04 17:39:42】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (769, '2020-11-04 17:45:11', '2020-11-04 17:45:11', '用户【admin】于【2020-11-04 17:45:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (770, '2020-11-04 17:45:22', '2020-11-04 17:45:22', '用户【S20201477272966】于【2020-11-04 17:45:22】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (771, '2020-11-04 17:47:24', '2020-11-04 17:47:24', '用户【admin】于【2020-11-04 17:47:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (772, '2020-11-04 17:50:31', '2020-11-04 17:50:31', '用户【S20201477272966】于【2020-11-04 17:50:31】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (773, '2020-11-04 17:52:04', '2020-11-04 17:52:04', '用户【S20201592829307】于【2020-11-04 17:52:04】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (774, '2020-11-04 18:02:28', '2020-11-04 18:02:28', '用户【admin】于【2020-11-04 18:02:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (775, '2020-11-04 18:02:28', '2020-11-04 18:02:28', '用户【admin】于【2020-11-04 18:02:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (776, '2020-11-04 18:02:39', '2020-11-04 18:02:39', '用户【admin】于【2020-11-04 18:02:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (777, '2020-11-04 18:05:27', '2020-11-04 18:05:27', '用户【admin】于【2020-11-04 18:05:27】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (778, '2020-11-04 18:07:51', '2020-11-04 18:07:51', '用户【admin】于【2020-11-04 18:07:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (779, '2020-11-04 18:16:21', '2020-11-04 18:16:21', '用户【admin】于【2020-11-04 18:16:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (780, '2020-11-04 18:17:17', '2020-11-04 18:17:17', '用户【S20201477272966】于【2020-11-04 18:17:17】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (781, '2020-11-04 18:17:33', '2020-11-04 18:17:33', '用户【admin】于【2020-11-04 18:17:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (782, '2020-11-04 18:18:10', '2020-11-04 18:18:10', '用户【T20201534791669】于【2020-11-04 18:18:10】登录系统！', 'T20201534791669');
INSERT INTO `ylrc_operater_log` VALUES (783, '2020-11-04 18:18:25', '2020-11-04 18:18:25', '用户【admin】于【2020-11-04 18:18:25】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (784, '2020-11-04 18:18:57', '2020-11-04 18:18:57', '编辑角色【学生】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (785, '2020-11-04 18:19:05', '2020-11-04 18:19:05', '编辑角色【教师】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (786, '2020-11-04 18:19:10', '2020-11-04 18:19:10', '删除菜单信息，菜单ID【28】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (787, '2020-11-05 09:48:55', '2020-11-05 09:48:55', '用户【admin】于【2020-11-05 09:48:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (788, '2020-11-05 09:51:28', '2020-11-05 09:51:28', '用户【admin】于【2020-11-05 09:51:28】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (789, '2020-11-05 09:51:50', '2020-11-05 09:51:50', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/college/delete\'), icon=mdi-arrow-left, sort=10, isButton=false, isShow=true]】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (790, '2020-11-05 09:51:58', '2020-11-05 09:51:58', '删除菜单信息，菜单ID【100】', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (791, '2020-11-05 09:52:44', '2020-11-05 09:52:44', '用户【admin】于【2020-11-05 09:52:44】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (792, '2020-11-05 10:03:46', '2020-11-05 10:03:46', '用户【S20201477272966】于【2020-11-05 10:03:46】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (793, '2020-11-05 10:09:49', '2020-11-05 10:09:49', '用户【admin】于【2020-11-05 10:09:49】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (794, '2020-11-05 10:10:09', '2020-11-05 10:10:09', '用户【S20201477272966】于【2020-11-05 10:10:09】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (795, '2020-11-05 10:17:32', '2020-11-05 10:17:32', '用户【admin】于【2020-11-05 10:17:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (796, '2020-11-05 10:21:24', '2020-11-05 10:21:24', '用户【admin】于【2020-11-05 10:21:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (797, '2020-11-05 10:23:47', '2020-11-05 10:23:47', '用户【admin】于【2020-11-05 10:23:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (798, '2020-11-05 10:26:04', '2020-11-05 10:26:04', '用户【admin】于【2020-11-05 10:26:04】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (799, '2020-11-05 10:28:43', '2020-11-05 10:28:43', '用户【S20201477272966】于【2020-11-05 10:28:43】登录系统！', 'S20201477272966');
INSERT INTO `ylrc_operater_log` VALUES (800, '2020-11-05 10:31:47', '2020-11-05 10:31:47', '用户【admin】于【2020-11-05 10:31:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (801, '2020-11-05 10:33:46', '2020-11-05 10:33:46', '用户【admin】于【2020-11-05 10:33:46】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (802, '2020-11-05 10:34:56', '2020-11-05 10:34:56', '用户【S20201592829307】于【2020-11-05 10:34:56】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (803, '2020-11-05 10:57:41', '2020-11-05 10:57:41', '添加班级，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (804, '2020-11-05 10:57:48', '2020-11-05 10:57:48', '编辑班级名，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (805, '2020-11-05 10:57:54', '2020-11-05 10:57:54', '删除班级，班级ID：12', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (806, '2020-11-05 10:58:01', '2020-11-05 10:58:01', '添加班级，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (807, '2020-11-05 10:58:34', '2020-11-05 10:58:34', '添加班级，班级名：admin1', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (808, '2020-11-05 10:58:40', '2020-11-05 10:58:40', '删除班级，班级ID：14', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (809, '2020-11-05 10:59:21', '2020-11-05 10:59:21', '编辑班级名，班级名：admin1', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (810, '2020-11-05 10:59:29', '2020-11-05 10:59:29', '添加班级，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (811, '2020-11-05 10:59:37', '2020-11-05 10:59:37', '编辑班级名，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (812, '2020-11-05 10:59:45', '2020-11-05 10:59:45', '编辑班级名，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (813, '2020-11-05 10:59:52', '2020-11-05 10:59:52', '编辑班级名，班级名：admin', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (814, '2020-11-05 11:00:02', '2020-11-05 11:00:02', '删除班级，班级ID：15', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (815, '2020-11-05 11:00:05', '2020-11-05 11:00:05', '删除班级，班级ID：13', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (816, '2020-11-05 11:18:32', '2020-11-05 11:18:32', '用户【admin】于【2020-11-05 11:18:32】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (817, '2020-11-05 11:59:36', '2020-11-05 11:59:36', '用户【admin】于【2020-11-05 11:59:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (818, '2020-11-05 12:21:36', '2020-11-05 12:21:36', '用户【S20201592829307】于【2020-11-05 12:21:36】登录系统！', 'S20201592829307');
INSERT INTO `ylrc_operater_log` VALUES (819, '2020-11-05 12:22:08', '2020-11-05 12:22:08', '用户【S20201597387303】于【2020-11-05 12:22:08】登录系统！', 'S20201597387303');
INSERT INTO `ylrc_operater_log` VALUES (820, '2020-11-05 12:22:29', '2020-11-05 12:22:29', '用户【admin】于【2020-11-05 12:22:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (821, '2020-11-05 12:23:09', '2020-11-05 12:23:09', '用户【S20201448786942】于【2020-11-05 12:23:09】登录系统！', 'S20201448786942');
INSERT INTO `ylrc_operater_log` VALUES (822, '2020-11-05 12:24:08', '2020-11-05 12:24:08', '用户【admin】于【2020-11-05 12:24:08】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (823, '2020-11-05 16:24:34', '2020-11-05 16:24:34', '用户【admin】于【2020-11-05 16:24:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (824, '2020-11-06 09:57:19', '2020-11-06 09:57:19', '用户【admin】于【2020-11-06 09:57:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (825, '2020-11-06 10:01:20', '2020-11-06 10:01:20', '用户【admin】于【2020-11-06 10:01:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (826, '2020-11-06 12:23:49', '2020-11-06 12:23:49', '用户【admin】于【2020-11-06 12:23:49】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (827, '2020-11-06 13:12:51', '2020-11-06 13:12:51', '用户【admin】于【2020-11-06 13:12:51】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (828, '2020-11-06 16:01:21', '2020-11-06 16:01:21', '用户【admin】于【2020-11-06 16:01:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (829, '2020-11-09 09:38:36', '2020-11-09 09:38:36', '用户【admin】于【2020-11-09 09:38:36】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (830, '2020-11-09 10:54:40', '2020-11-09 10:54:40', '用户【admin】于【2020-11-09 10:54:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (831, '2020-11-09 10:55:01', '2020-11-09 10:55:01', '用户【T20201649316088】于【2020-11-09 10:55:01】登录系统！', 'T20201649316088');
INSERT INTO `ylrc_operater_log` VALUES (832, '2020-11-09 16:11:55', '2020-11-09 16:11:55', '用户【admin】于【2020-11-09 16:11:55】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (833, '2020-11-09 16:15:52', '2020-11-09 16:15:52', '用户【admin】于【2020-11-09 16:15:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (834, '2020-11-09 16:16:11', '2020-11-09 16:16:11', '用户【admin】于【2020-11-09 16:16:11】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (835, '2020-11-10 17:39:39', '2020-11-10 17:39:39', '用户【admin】于【2020-11-10 17:39:39】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (836, '2020-11-10 17:47:16', '2020-11-10 17:47:16', '编辑班级名，班级名：四班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (837, '2020-11-10 17:47:24', '2020-11-10 17:47:24', '删除班级，班级ID：11', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (838, '2020-11-11 14:54:26', '2020-11-11 14:54:26', '用户【admin】于【2020-11-11 14:54:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (839, '2020-12-10 15:47:04', '2020-12-10 15:47:04', '用户【admin】于【2020-12-10 15:47:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (840, '2020-12-10 15:51:05', '2020-12-10 15:51:05', '添加班级，班级名：计算机3班', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (841, '2020-12-10 15:54:35', '2020-12-10 15:54:35', '用户【admin】于【2020-12-10 15:54:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (842, '2020-12-10 15:56:59', '2020-12-10 15:56:59', '用户【admin】于【2020-12-10 15:56:58】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (843, '2020-12-10 16:00:02', '2020-12-10 16:00:02', '用户【admin】于【2020-12-10 16:00:02】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (844, '2020-12-10 16:00:45', '2020-12-10 16:00:45', '用户【S20201451524926】于【2020-12-10 16:00:45】登录系统！', 'S20201451524926');
INSERT INTO `ylrc_operater_log` VALUES (845, '2020-12-10 16:05:34', '2020-12-10 16:05:34', '用户【admin】于【2020-12-10 16:05:33】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (846, '2020-12-10 16:07:33', '2020-12-10 16:07:33', '用户【S20201451524926】于【2020-12-10 16:07:33】登录系统！', 'S20201451524926');
INSERT INTO `ylrc_operater_log` VALUES (847, '2020-12-10 16:08:10', '2020-12-10 16:08:10', '用户【admin】于【2020-12-10 16:08:10】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (848, '2020-12-10 16:08:26', '2020-12-10 16:08:26', '用户【T20201451555616】于【2020-12-10 16:08:25】登录系统！', 'T20201451555616');
INSERT INTO `ylrc_operater_log` VALUES (849, '2020-12-10 16:09:55', '2020-12-10 16:09:55', '用户【T20201451555616】于【2020-12-10 16:09:55】登录系统！', 'T20201451555616');

-- ----------------------------
-- Table structure for ylrc_reading
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_reading`;
CREATE TABLE `ylrc_reading`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `lie` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `row` int(11) NOT NULL,
  `readingtype_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKtb538iuk3363um3ci0v27stiu`(`readingtype_id`) USING BTREE,
  CONSTRAINT `FKtb538iuk3363um3ci0v27stiu` FOREIGN KEY (`readingtype_id`) REFERENCES `ylrc_reading_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_reading
-- ----------------------------
INSERT INTO `ylrc_reading` VALUES (1, '2020-11-02 16:48:25', '2020-11-04 16:01:37', 8, '三号阅览室', 10, 1);
INSERT INTO `ylrc_reading` VALUES (2, '2020-11-02 15:30:55', '2020-11-02 15:30:55', 12, '二号阅览室', 13, 9);
INSERT INTO `ylrc_reading` VALUES (3, '2020-11-02 16:48:01', '2020-11-04 12:59:50', 12, '六号阅览室', 13, 9);
INSERT INTO `ylrc_reading` VALUES (5, '2020-11-03 15:36:13', '2020-11-03 15:36:13', 12, '四号阅览室', 10, 16);
INSERT INTO `ylrc_reading` VALUES (6, '2020-11-03 15:36:56', '2020-11-03 15:36:56', 8, '五号阅览室', 5, 15);
INSERT INTO `ylrc_reading` VALUES (7, '2020-11-04 13:13:55', '2020-11-04 13:13:55', 5, '八号阅览室', 55, 16);
INSERT INTO `ylrc_reading` VALUES (8, '2020-11-04 13:15:12', '2020-11-04 13:15:12', 3, '九号阅览室', 34, 11);
INSERT INTO `ylrc_reading` VALUES (22, '2020-11-05 10:33:54', '2020-11-05 10:33:54', 5, '三号阅览室', 5, 9);

-- ----------------------------
-- Table structure for ylrc_reading_type
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_reading_type`;
CREATE TABLE `ylrc_reading_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `integral` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_reading_type
-- ----------------------------
INSERT INTO `ylrc_reading_type` VALUES (1, '2020-11-02 12:25:17', '2020-11-03 16:06:17', 100, 'I类');
INSERT INTO `ylrc_reading_type` VALUES (9, '2020-11-02 14:03:18', '2020-11-02 14:03:18', 75, 'II类');
INSERT INTO `ylrc_reading_type` VALUES (11, '2020-11-02 14:04:12', '2020-11-02 14:04:12', 75, 'III类');
INSERT INTO `ylrc_reading_type` VALUES (15, '2020-11-02 16:25:25', '2020-11-02 16:25:25', 65, 'IIII类');
INSERT INTO `ylrc_reading_type` VALUES (16, '2020-11-02 16:25:44', '2020-11-02 16:25:44', 50, 'V类');

-- ----------------------------
-- Table structure for ylrc_role
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES (1, '2020-03-15 13:16:38', '2020-11-04 16:38:24', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `ylrc_role` VALUES (2, '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);
INSERT INTO `ylrc_role` VALUES (4, '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', 0);
INSERT INTO `ylrc_role` VALUES (9, '2020-10-31 09:36:26', '2020-11-04 18:18:57', '学生', '学生', 1);
INSERT INTO `ylrc_role` VALUES (10, '2020-10-31 15:57:12', '2020-11-04 18:19:05', '教师', '教师', 1);

-- ----------------------------
-- Table structure for ylrc_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  INDEX `FKhj7ap1o1cjrl7enr9arf5f2qp`(`authorities_id`) USING BTREE,
  INDEX `FKg3xdaexmr0x1qx8omhvjtk46d`(`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES (2, 2);
INSERT INTO `ylrc_role_authorities` VALUES (2, 3);
INSERT INTO `ylrc_role_authorities` VALUES (2, 5);
INSERT INTO `ylrc_role_authorities` VALUES (2, 7);
INSERT INTO `ylrc_role_authorities` VALUES (2, 11);
INSERT INTO `ylrc_role_authorities` VALUES (2, 13);
INSERT INTO `ylrc_role_authorities` VALUES (2, 16);
INSERT INTO `ylrc_role_authorities` VALUES (4, 2);
INSERT INTO `ylrc_role_authorities` VALUES (4, 13);
INSERT INTO `ylrc_role_authorities` VALUES (4, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 2);
INSERT INTO `ylrc_role_authorities` VALUES (1, 3);
INSERT INTO `ylrc_role_authorities` VALUES (1, 5);
INSERT INTO `ylrc_role_authorities` VALUES (1, 8);
INSERT INTO `ylrc_role_authorities` VALUES (1, 9);
INSERT INTO `ylrc_role_authorities` VALUES (1, 7);
INSERT INTO `ylrc_role_authorities` VALUES (1, 10);
INSERT INTO `ylrc_role_authorities` VALUES (1, 11);
INSERT INTO `ylrc_role_authorities` VALUES (1, 12);
INSERT INTO `ylrc_role_authorities` VALUES (1, 13);
INSERT INTO `ylrc_role_authorities` VALUES (1, 14);
INSERT INTO `ylrc_role_authorities` VALUES (1, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 16);
INSERT INTO `ylrc_role_authorities` VALUES (1, 19);
INSERT INTO `ylrc_role_authorities` VALUES (1, 20);
INSERT INTO `ylrc_role_authorities` VALUES (1, 21);
INSERT INTO `ylrc_role_authorities` VALUES (1, 22);
INSERT INTO `ylrc_role_authorities` VALUES (1, 23);
INSERT INTO `ylrc_role_authorities` VALUES (1, 24);
INSERT INTO `ylrc_role_authorities` VALUES (1, 25);
INSERT INTO `ylrc_role_authorities` VALUES (1, 26);
INSERT INTO `ylrc_role_authorities` VALUES (1, 91);
INSERT INTO `ylrc_role_authorities` VALUES (1, 92);
INSERT INTO `ylrc_role_authorities` VALUES (1, 46);
INSERT INTO `ylrc_role_authorities` VALUES (1, 47);
INSERT INTO `ylrc_role_authorities` VALUES (1, 51);
INSERT INTO `ylrc_role_authorities` VALUES (1, 52);
INSERT INTO `ylrc_role_authorities` VALUES (1, 53);
INSERT INTO `ylrc_role_authorities` VALUES (1, 48);
INSERT INTO `ylrc_role_authorities` VALUES (1, 39);
INSERT INTO `ylrc_role_authorities` VALUES (1, 54);
INSERT INTO `ylrc_role_authorities` VALUES (1, 55);
INSERT INTO `ylrc_role_authorities` VALUES (1, 56);
INSERT INTO `ylrc_role_authorities` VALUES (1, 49);
INSERT INTO `ylrc_role_authorities` VALUES (1, 50);
INSERT INTO `ylrc_role_authorities` VALUES (1, 60);
INSERT INTO `ylrc_role_authorities` VALUES (1, 99);
INSERT INTO `ylrc_role_authorities` VALUES (1, 59);
INSERT INTO `ylrc_role_authorities` VALUES (1, 61);
INSERT INTO `ylrc_role_authorities` VALUES (1, 62);
INSERT INTO `ylrc_role_authorities` VALUES (1, 63);
INSERT INTO `ylrc_role_authorities` VALUES (1, 69);
INSERT INTO `ylrc_role_authorities` VALUES (1, 72);
INSERT INTO `ylrc_role_authorities` VALUES (1, 75);
INSERT INTO `ylrc_role_authorities` VALUES (1, 82);
INSERT INTO `ylrc_role_authorities` VALUES (1, 64);
INSERT INTO `ylrc_role_authorities` VALUES (1, 65);
INSERT INTO `ylrc_role_authorities` VALUES (1, 76);
INSERT INTO `ylrc_role_authorities` VALUES (1, 81);
INSERT INTO `ylrc_role_authorities` VALUES (1, 87);
INSERT INTO `ylrc_role_authorities` VALUES (1, 89);
INSERT INTO `ylrc_role_authorities` VALUES (1, 90);
INSERT INTO `ylrc_role_authorities` VALUES (9, 49);
INSERT INTO `ylrc_role_authorities` VALUES (9, 50);
INSERT INTO `ylrc_role_authorities` VALUES (9, 66);
INSERT INTO `ylrc_role_authorities` VALUES (9, 69);
INSERT INTO `ylrc_role_authorities` VALUES (9, 95);
INSERT INTO `ylrc_role_authorities` VALUES (9, 93);
INSERT INTO `ylrc_role_authorities` VALUES (9, 94);
INSERT INTO `ylrc_role_authorities` VALUES (9, 64);
INSERT INTO `ylrc_role_authorities` VALUES (9, 96);
INSERT INTO `ylrc_role_authorities` VALUES (9, 98);
INSERT INTO `ylrc_role_authorities` VALUES (10, 2);
INSERT INTO `ylrc_role_authorities` VALUES (10, 91);
INSERT INTO `ylrc_role_authorities` VALUES (10, 92);
INSERT INTO `ylrc_role_authorities` VALUES (10, 39);
INSERT INTO `ylrc_role_authorities` VALUES (10, 49);
INSERT INTO `ylrc_role_authorities` VALUES (10, 69);
INSERT INTO `ylrc_role_authorities` VALUES (10, 95);
INSERT INTO `ylrc_role_authorities` VALUES (10, 64);
INSERT INTO `ylrc_role_authorities` VALUES (10, 65);
INSERT INTO `ylrc_role_authorities` VALUES (10, 98);

-- ----------------------------
-- Table structure for ylrc_seat
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_seat`;
CREATE TABLE `ylrc_seat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `x_axis` int(11) NULL DEFAULT NULL,
  `y_axis` int(11) NULL DEFAULT NULL,
  `reading_room_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6ihx1ae0jjtb7ti743s5xg1jm`(`reading_room_id`) USING BTREE,
  CONSTRAINT `FK6ihx1ae0jjtb7ti743s5xg1jm` FOREIGN KEY (`reading_room_id`) REFERENCES `ylrc_reading` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 538 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_seat
-- ----------------------------
INSERT INTO `ylrc_seat` VALUES (1, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (2, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (3, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (4, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (5, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (6, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (7, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (8, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (9, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (10, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 1, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (11, '2020-11-04 17:21:12', '2020-11-05 10:09:56', 2, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (12, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (13, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (14, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (15, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (16, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (17, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (18, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (19, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (20, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 2, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (21, '2020-11-04 17:21:12', '2020-11-05 10:09:58', 3, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (22, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (23, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (24, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (25, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (26, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (27, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (28, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (29, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (30, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 3, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (31, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (32, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (33, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (34, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (35, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (36, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (37, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (38, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (39, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (40, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 4, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (41, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (42, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (43, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (44, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (45, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (46, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (47, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (48, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (49, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (50, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 5, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (51, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (52, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (53, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (54, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (55, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (56, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (57, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (58, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (59, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (60, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 6, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (61, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (62, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (63, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (64, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (65, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (66, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (67, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (68, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (69, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (70, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 7, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (71, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 1, 1, 1);
INSERT INTO `ylrc_seat` VALUES (72, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 2, 1, 1);
INSERT INTO `ylrc_seat` VALUES (73, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 3, 1, 1);
INSERT INTO `ylrc_seat` VALUES (74, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 4, 1, 1);
INSERT INTO `ylrc_seat` VALUES (75, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 5, 1, 1);
INSERT INTO `ylrc_seat` VALUES (76, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 6, 1, 1);
INSERT INTO `ylrc_seat` VALUES (77, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 7, 1, 1);
INSERT INTO `ylrc_seat` VALUES (78, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 8, 1, 1);
INSERT INTO `ylrc_seat` VALUES (79, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 9, 1, 1);
INSERT INTO `ylrc_seat` VALUES (80, '2020-11-04 17:21:12', '2020-11-04 17:21:12', 8, 10, 1, 1);
INSERT INTO `ylrc_seat` VALUES (81, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (82, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (83, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (84, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (85, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (86, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (87, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (88, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (89, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (90, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (91, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (92, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (93, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 1, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (94, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (95, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (96, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (97, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (98, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (99, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (100, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (101, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (102, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (103, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (104, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (105, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (106, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 2, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (107, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (108, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (109, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (110, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (111, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (112, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (113, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (114, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (115, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (116, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (117, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (118, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (119, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 3, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (120, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (121, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (122, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (123, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (124, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (125, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (126, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (127, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (128, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (129, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (130, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (131, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (132, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 4, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (133, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (134, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (135, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (136, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (137, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (138, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (139, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (140, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (141, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (142, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (143, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (144, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (145, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 5, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (146, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (147, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (148, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (149, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (150, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (151, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (152, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (153, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (154, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (155, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (156, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (157, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (158, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 6, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (159, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (160, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (161, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (162, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (163, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (164, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (165, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (166, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (167, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (168, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (169, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (170, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (171, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 7, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (172, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (173, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (174, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (175, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (176, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (177, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (178, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (179, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (180, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (181, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (182, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (183, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (184, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 8, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (185, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (186, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (187, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (188, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (189, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (190, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (191, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (192, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (193, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (194, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (195, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (196, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (197, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 9, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (198, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (199, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (200, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (201, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (202, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (203, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (204, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (205, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (206, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (207, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (208, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (209, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (210, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 10, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (211, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (212, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (213, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (214, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (215, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (216, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (217, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (218, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (219, '2020-11-04 17:21:25', '2020-11-04 17:21:25', 11, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (220, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 11, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (221, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 11, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (222, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 11, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (223, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 11, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (224, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 1, 2, 1);
INSERT INTO `ylrc_seat` VALUES (225, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 2, 2, 1);
INSERT INTO `ylrc_seat` VALUES (226, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 3, 2, 1);
INSERT INTO `ylrc_seat` VALUES (227, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 4, 2, 1);
INSERT INTO `ylrc_seat` VALUES (228, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 5, 2, 1);
INSERT INTO `ylrc_seat` VALUES (229, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 6, 2, 1);
INSERT INTO `ylrc_seat` VALUES (230, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 7, 2, 1);
INSERT INTO `ylrc_seat` VALUES (231, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 8, 2, 1);
INSERT INTO `ylrc_seat` VALUES (232, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 9, 2, 1);
INSERT INTO `ylrc_seat` VALUES (233, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 10, 2, 1);
INSERT INTO `ylrc_seat` VALUES (234, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 11, 2, 1);
INSERT INTO `ylrc_seat` VALUES (235, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 12, 2, 1);
INSERT INTO `ylrc_seat` VALUES (236, '2020-11-04 17:21:26', '2020-11-04 17:21:26', 12, 13, 2, 1);
INSERT INTO `ylrc_seat` VALUES (237, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (238, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (239, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (240, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (241, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (242, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (243, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (244, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (245, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (246, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (247, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (248, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (249, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 1, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (250, '2020-11-05 10:29:47', '2020-11-05 10:30:00', 2, 1, 3, 2);
INSERT INTO `ylrc_seat` VALUES (251, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (252, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (253, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (254, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (255, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (256, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (257, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (258, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (259, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (260, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (261, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (262, '2020-11-05 10:29:47', '2020-11-05 10:29:47', 2, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (263, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (264, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (265, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (266, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (267, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (268, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (269, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (270, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (271, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (272, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (273, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (274, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (275, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 3, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (276, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (277, '2020-11-05 10:29:48', '2020-11-05 10:30:04', 4, 2, 3, 2);
INSERT INTO `ylrc_seat` VALUES (278, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (279, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (280, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (281, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (282, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (283, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (284, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (285, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (286, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (287, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (288, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 4, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (289, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (290, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (291, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (292, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (293, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (294, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (295, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (296, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (297, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (298, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (299, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (300, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (301, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 5, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (302, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (303, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (304, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (305, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (306, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (307, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (308, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (309, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (310, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (311, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (312, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (313, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (314, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 6, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (315, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (316, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (317, '2020-11-05 10:29:48', '2020-11-05 10:30:06', 7, 3, 3, 2);
INSERT INTO `ylrc_seat` VALUES (318, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (319, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (320, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (321, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (322, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (323, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (324, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (325, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (326, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (327, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 7, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (328, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (329, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (330, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (331, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (332, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (333, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (334, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (335, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (336, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (337, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (338, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (339, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (340, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 8, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (341, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (342, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (343, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (344, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (345, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (346, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (347, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (348, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (349, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (350, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (351, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (352, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (353, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 9, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (354, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (355, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (356, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (357, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (358, '2020-11-05 10:29:48', '2020-11-05 10:30:09', 10, 5, 3, 2);
INSERT INTO `ylrc_seat` VALUES (359, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (360, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (361, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (362, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (363, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (364, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (365, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (366, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 10, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (367, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (368, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (369, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (370, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (371, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (372, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (373, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 7, 3, 1);
INSERT INTO `ylrc_seat` VALUES (374, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (375, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (376, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (377, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (378, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (379, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 11, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (380, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 1, 3, 1);
INSERT INTO `ylrc_seat` VALUES (381, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 2, 3, 1);
INSERT INTO `ylrc_seat` VALUES (382, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 3, 3, 1);
INSERT INTO `ylrc_seat` VALUES (383, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 4, 3, 1);
INSERT INTO `ylrc_seat` VALUES (384, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 5, 3, 1);
INSERT INTO `ylrc_seat` VALUES (385, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 6, 3, 1);
INSERT INTO `ylrc_seat` VALUES (386, '2020-11-05 10:29:48', '2020-11-05 10:30:15', 12, 7, 3, 2);
INSERT INTO `ylrc_seat` VALUES (387, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 8, 3, 1);
INSERT INTO `ylrc_seat` VALUES (388, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 9, 3, 1);
INSERT INTO `ylrc_seat` VALUES (389, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 10, 3, 1);
INSERT INTO `ylrc_seat` VALUES (390, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 11, 3, 1);
INSERT INTO `ylrc_seat` VALUES (391, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 12, 3, 1);
INSERT INTO `ylrc_seat` VALUES (392, '2020-11-05 10:29:48', '2020-11-05 10:29:48', 12, 13, 3, 1);
INSERT INTO `ylrc_seat` VALUES (393, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 1, 1, 22, 1);
INSERT INTO `ylrc_seat` VALUES (394, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 1, 2, 22, 1);
INSERT INTO `ylrc_seat` VALUES (395, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 1, 3, 22, 1);
INSERT INTO `ylrc_seat` VALUES (396, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 1, 4, 22, 1);
INSERT INTO `ylrc_seat` VALUES (397, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 1, 5, 22, 1);
INSERT INTO `ylrc_seat` VALUES (398, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 2, 1, 22, 1);
INSERT INTO `ylrc_seat` VALUES (399, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 2, 2, 22, 1);
INSERT INTO `ylrc_seat` VALUES (400, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 2, 3, 22, 1);
INSERT INTO `ylrc_seat` VALUES (401, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 2, 4, 22, 1);
INSERT INTO `ylrc_seat` VALUES (402, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 2, 5, 22, 1);
INSERT INTO `ylrc_seat` VALUES (403, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 3, 1, 22, 1);
INSERT INTO `ylrc_seat` VALUES (404, '2020-11-05 10:35:05', '2020-11-05 10:35:05', 3, 2, 22, 1);
INSERT INTO `ylrc_seat` VALUES (405, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 3, 3, 22, 1);
INSERT INTO `ylrc_seat` VALUES (406, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 3, 4, 22, 1);
INSERT INTO `ylrc_seat` VALUES (407, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 3, 5, 22, 1);
INSERT INTO `ylrc_seat` VALUES (408, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 4, 1, 22, 1);
INSERT INTO `ylrc_seat` VALUES (409, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 4, 2, 22, 1);
INSERT INTO `ylrc_seat` VALUES (410, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 4, 3, 22, 1);
INSERT INTO `ylrc_seat` VALUES (411, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 4, 4, 22, 1);
INSERT INTO `ylrc_seat` VALUES (412, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 4, 5, 22, 1);
INSERT INTO `ylrc_seat` VALUES (413, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 5, 1, 22, 1);
INSERT INTO `ylrc_seat` VALUES (414, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 5, 2, 22, 1);
INSERT INTO `ylrc_seat` VALUES (415, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 5, 3, 22, 1);
INSERT INTO `ylrc_seat` VALUES (416, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 5, 4, 22, 1);
INSERT INTO `ylrc_seat` VALUES (417, '2020-11-05 10:35:06', '2020-11-05 10:35:06', 5, 5, 22, 1);
INSERT INTO `ylrc_seat` VALUES (418, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (419, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (420, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (421, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (422, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (423, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (424, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (425, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (426, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (427, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 1, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (428, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (429, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (430, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (431, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (432, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (433, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (434, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (435, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (436, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (437, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 2, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (438, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (439, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (440, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (441, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (442, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (443, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (444, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (445, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (446, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (447, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 3, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (448, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (449, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (450, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (451, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (452, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (453, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (454, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (455, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (456, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (457, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 4, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (458, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (459, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (460, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (461, '2020-12-10 15:58:45', '2020-12-10 15:59:45', 5, 4, 5, 2);
INSERT INTO `ylrc_seat` VALUES (462, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (463, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (464, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (465, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (466, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (467, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 5, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (468, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (469, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (470, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (471, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (472, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (473, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (474, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (475, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (476, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (477, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 6, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (478, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (479, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (480, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (481, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (482, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (483, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (484, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (485, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (486, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (487, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 7, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (488, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (489, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (490, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (491, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (492, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (493, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (494, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (495, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (496, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (497, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 8, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (498, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (499, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (500, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (501, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (502, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (503, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (504, '2020-12-10 15:58:45', '2020-12-10 15:58:45', 9, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (505, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 9, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (506, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 9, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (507, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 9, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (508, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (509, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (510, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (511, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (512, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (513, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (514, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (515, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (516, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (517, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 10, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (518, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (519, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (520, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (521, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (522, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (523, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (524, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (525, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (526, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (527, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 11, 10, 5, 1);
INSERT INTO `ylrc_seat` VALUES (528, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 1, 5, 1);
INSERT INTO `ylrc_seat` VALUES (529, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 2, 5, 1);
INSERT INTO `ylrc_seat` VALUES (530, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 3, 5, 1);
INSERT INTO `ylrc_seat` VALUES (531, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 4, 5, 1);
INSERT INTO `ylrc_seat` VALUES (532, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 5, 5, 1);
INSERT INTO `ylrc_seat` VALUES (533, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 6, 5, 1);
INSERT INTO `ylrc_seat` VALUES (534, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 7, 5, 1);
INSERT INTO `ylrc_seat` VALUES (535, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 8, 5, 1);
INSERT INTO `ylrc_seat` VALUES (536, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 9, 5, 1);
INSERT INTO `ylrc_seat` VALUES (537, '2020-12-10 15:58:46', '2020-12-10 15:58:46', 12, 10, 5, 1);

-- ----------------------------
-- Table structure for ylrc_seat_order
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_seat_order`;
CREATE TABLE `ylrc_seat_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `subscribe_time` datetime(0) NULL DEFAULT NULL,
  `time_code` int(11) NULL DEFAULT NULL,
  `reading_room_id` bigint(20) NULL DEFAULT NULL,
  `seat_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsqounhge0sthl3ntomo1kioaf`(`reading_room_id`) USING BTREE,
  INDEX `FKenqfmk2lg9jubigogddmqitkk`(`seat_id`) USING BTREE,
  INDEX `FK969ixexxv516s5s75dj8ha7xo`(`student_id`) USING BTREE,
  CONSTRAINT `FK969ixexxv516s5s75dj8ha7xo` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKenqfmk2lg9jubigogddmqitkk` FOREIGN KEY (`seat_id`) REFERENCES `ylrc_seat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsqounhge0sthl3ntomo1kioaf` FOREIGN KEY (`reading_room_id`) REFERENCES `ylrc_reading` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_seat_order
-- ----------------------------
INSERT INTO `ylrc_seat_order` VALUES (1, '2020-11-04 17:52:13', '2020-11-04 17:52:13', '2020-11-05 08:00:00', 1, 1, 31, 7);
INSERT INTO `ylrc_seat_order` VALUES (2, '2020-11-05 12:21:52', '2020-11-05 12:21:52', '2020-11-06 08:00:00', 1, 1, 21, 7);
INSERT INTO `ylrc_seat_order` VALUES (3, '2020-11-05 12:22:22', '2020-11-05 12:22:22', '2020-12-05 08:00:00', 1, 1, 42, 24);
INSERT INTO `ylrc_seat_order` VALUES (4, '2020-11-05 12:23:51', '2020-11-05 12:23:51', '2020-12-20 08:00:00', 1, 2, 161, 31);
INSERT INTO `ylrc_seat_order` VALUES (5, '2020-12-10 16:03:12', '2020-12-10 16:03:12', '2020-12-11 08:00:00', 1, 5, 470, 35);

-- ----------------------------
-- Table structure for ylrc_student
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_student`;
CREATE TABLE `ylrc_student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `student_birthday` datetime(0) NULL DEFAULT NULL,
  `student_credits` int(11) NULL DEFAULT NULL,
  `student_sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clbum_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `clazz_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK89cfymtntl7r27cl2ob87or47`(`clbum_id`) USING BTREE,
  INDEX `FKfkb8i6ywm8vgcupxtb90xwc48`(`user_id`) USING BTREE,
  INDEX `FKsaiyoj6psj7297tjedfad0kx6`(`clazz_id`) USING BTREE,
  CONSTRAINT `FKfkb8i6ywm8vgcupxtb90xwc48` FOREIGN KEY (`user_id`) REFERENCES `ylrc_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsaiyoj6psj7297tjedfad0kx6` FOREIGN KEY (`clazz_id`) REFERENCES `ylrc_clazz` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_student
-- ----------------------------
INSERT INTO `ylrc_student` VALUES (1, '2020-10-31 09:47:24', '2020-11-06 16:01:59', '2020-11-04 00:00:00', 100, 'S20201477272966', 1, 7, 1);
INSERT INTO `ylrc_student` VALUES (7, '2020-10-31 11:36:09', '2020-10-31 14:45:52', '2020-10-31 00:00:00', 100, 'S20201592829307', 2, 18, 1);
INSERT INTO `ylrc_student` VALUES (15, '2020-11-02 10:25:21', '2020-11-03 15:50:05', '2020-11-18 00:00:00', 100, 'S20201627115123', 1, 34, 2);
INSERT INTO `ylrc_student` VALUES (16, '2020-11-02 12:06:23', '2020-11-02 12:20:36', '2020-11-19 00:00:00', 100, 'S20201566165344', 1, 35, 2);
INSERT INTO `ylrc_student` VALUES (24, '2020-11-03 15:26:49', '2020-11-03 15:30:13', '2020-11-19 00:00:00', 100, 'S20201597387303', 1, 45, 2);
INSERT INTO `ylrc_student` VALUES (29, '2020-11-04 08:55:55', '2020-11-04 15:15:52', '2020-11-21 00:00:00', 16, 'S20201457042061', NULL, 50, 4);
INSERT INTO `ylrc_student` VALUES (31, '2020-11-05 09:55:19', '2020-11-05 09:58:28', '2020-11-14 00:00:00', 100, 'S20201448786942', NULL, 55, 2);
INSERT INTO `ylrc_student` VALUES (35, '2020-12-10 15:52:04', '2020-12-10 16:06:58', '2020-12-01 00:00:00', 97, 'S20201451524926', NULL, 65, 16);

-- ----------------------------
-- Table structure for ylrc_teacher
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_teacher`;
CREATE TABLE `ylrc_teacher`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `teacher_sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_type_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnrp6f1yd0838a5lxdg4g99hin`(`teacher_type_id`) USING BTREE,
  INDEX `FKip1038wx983swfi24f6w2700m`(`user_id`) USING BTREE,
  CONSTRAINT `FKip1038wx983swfi24f6w2700m` FOREIGN KEY (`user_id`) REFERENCES `ylrc_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnrp6f1yd0838a5lxdg4g99hin` FOREIGN KEY (`teacher_type_id`) REFERENCES `ylrc_teacher_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_teacher
-- ----------------------------
INSERT INTO `ylrc_teacher` VALUES (1, '2020-10-31 16:33:54', '2020-11-05 10:20:35', '123456', 2, 25);
INSERT INTO `ylrc_teacher` VALUES (4, '2020-11-02 10:16:53', '2020-11-03 11:20:25', 'T20201649316088', 2, 33);
INSERT INTO `ylrc_teacher` VALUES (14, '2020-11-10 17:47:50', '2020-11-10 17:47:59', 'T20201652083704', 1, 64);
INSERT INTO `ylrc_teacher` VALUES (15, '2020-12-10 15:55:24', '2020-12-10 15:55:24', 'T20201451555616', 1, 66);

-- ----------------------------
-- Table structure for ylrc_teacher_type
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_teacher_type`;
CREATE TABLE `ylrc_teacher_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_teacher_type
-- ----------------------------
INSERT INTO `ylrc_teacher_type` VALUES (1, '2020-10-31 16:34:21', '2020-10-31 16:34:27', '数学老师', 1);
INSERT INTO `ylrc_teacher_type` VALUES (2, '2020-10-31 17:00:54', '2020-10-31 17:00:57', '英语老师', 2);

-- ----------------------------
-- Table structure for ylrc_user
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  `teacher_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_btsosjytrl4hu7fnm1intcpo8`(`username`) USING BTREE,
  INDEX `FKg09b8o67eu61st68rv6nk8npj`(`role_id`) USING BTREE,
  INDEX `FKo1aut9eqpf0b0o2fsf44tm4ai`(`student_id`) USING BTREE,
  INDEX `FKbxe3muf59w1na3xlchk6g9lel`(`teacher_id`) USING BTREE,
  CONSTRAINT `FKbxe3muf59w1na3xlchk6g9lel` FOREIGN KEY (`teacher_id`) REFERENCES `ylrc_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKo1aut9eqpf0b0o2fsf44tm4ai` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES (1, '2020-03-18 19:18:53', '2020-11-04 16:05:21', 'ylrc@qq.com', '20200322/1584850135123.jpg', '13356565656', '123456', 1, 1, 'admin', 1, 'admin', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (2, '2020-03-18 19:20:36', '2020-03-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655656', '123456', 1, 1, '测试账号', 2, '测试账号', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (5, '2020-03-20 20:42:19', '2020-03-23 17:50:19', 'yw@qq.com', '20200323/1584956702094.png', '13356565656', '123456', 1, 1, '小刘同志', 4, '小刘同志', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (7, '2020-10-31 09:36:57', '2020-11-06 16:01:59', '2073758705@qq.com', '20201031/1604128740134.jpg', '17839418977', '123456', 2, 1, 'S20201477272966', 9, '小红dd', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (18, '2020-10-31 11:36:09', '2020-11-04 15:51:13', '2073758705@qq.com', '20201104/1604476255575.jpg', '17839418977', 'S20201592829307', 2, 1, 'S20201592829307', 9, '小黑', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (25, '2020-10-31 16:39:48', '2020-11-05 10:20:35', '115432031@qq.com', '20201031/1604126733060.jpg', '15518166316', '123456', 2, 1, '263', 10, '小白', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (33, '2020-11-02 10:16:53', '2020-11-03 11:20:25', '65@qq.com', '20201102/1604283461414.jpg', '17839418977', 'T20201649316088', 1, 1, 'T20201649316088', 10, '老洪22', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (34, '2020-11-02 10:25:21', '2020-11-03 11:22:54', '65@qq.com', '20201102/1604283911829.jpg', '17839418977', 'S20201627115123', 2, 1, 'S20201627115123', 9, '小红2', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (35, '2020-11-02 12:06:23', '2020-11-02 12:06:23', '65@qq.com', '', '17839418977', 'S20201566165344', 1, 1, 'S20201566165344', 9, '小红', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (45, '2020-11-03 15:26:49', '2020-11-04 15:48:03', '132@qq.com', '20201104/1604476081102.jpg', '17839418977', 'S20201597387303', 1, 1, 'S20201597387303', 9, '老妹', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (50, '2020-11-04 08:55:55', '2020-11-04 08:55:55', '65@qq.com', '', '17839418977', 'S20201457042061', 1, 1, 'S20201457042061', 9, '小红', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (54, '2020-11-04 16:08:07', '2020-11-04 16:08:07', '158888@qq.com', '20201104/1604477235350.jpg', '12345678910', '123456', 1, 1, 'S20201477272100', 9, '小红321312312', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (55, '2020-11-05 09:55:19', '2020-11-05 09:55:19', '115432031@qq.com', '20201105/1604541264429.jpg', '15518166316', 'S20201448786942', 0, 1, 'S20201448786942', 9, '测试', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (64, '2020-11-10 17:47:50', '2020-11-10 17:47:59', '65@qq.com', '20201110/1605001661568.jpg', '17839418977', 'T20201652083704', 1, 1, 'T20201652083704', 10, 'xiao', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (65, '2020-12-10 15:52:04', '2020-12-10 15:52:04', 'lingege@126.com', '20201210/1607586681279.jpg', '13598081234', 'S20201451524926', 2, 1, 'S20201451524926', 9, '林哥哥', NULL, NULL);
INSERT INTO `ylrc_user` VALUES (66, '2020-12-10 15:55:24', '2020-12-10 15:55:24', 'lilaos@126.com', '20201210/1607586907185.jpg', '13980124235', 'T20201451555616', 1, 1, 'T20201451555616', 10, '李老师', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
