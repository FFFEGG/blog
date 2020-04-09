/*
Navicat MySQL Data Transfer

Source Server         : java
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-04-09 15:52:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '主页', 'fa-bar-chart', '/', null, null, '2020-04-09 09:50:14');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '管理中心', 'fa-tasks', null, null, null, '2020-04-09 09:50:23');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员', 'fa-users', 'auth/users', null, null, '2020-04-09 09:50:33');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, null, '2020-04-09 09:50:41');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-ban', 'auth/permissions', null, null, '2020-04-09 09:50:49');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, null, '2020-04-09 09:50:56');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '日志', 'fa-history', 'auth/logs', null, null, '2020-04-09 09:51:02');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '打卡分类', 'fa-bars', 'practice-lists', null, '2020-04-09 09:56:40', '2020-04-09 09:56:49');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-09 09:49:46', '2020-04-09 09:49:46');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:49:57', '2020-04-09 09:49:57');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:01', '2020-04-09 09:50:01');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e3b\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:50:14', '2020-04-09 09:50:14');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:50:14', '2020-04-09 09:50:14');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:17', '2020-04-09 09:50:17');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u4e2d\\u5fc3\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:50:23', '2020-04-09 09:50:23');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:50:23', '2020-04-09 09:50:23');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:25', '2020-04-09 09:50:25');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:50:33', '2020-04-09 09:50:33');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:50:33', '2020-04-09 09:50:33');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:36', '2020-04-09 09:50:36');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:50:40', '2020-04-09 09:50:40');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:50:41', '2020-04-09 09:50:41');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:44', '2020-04-09 09:50:44');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:50:49', '2020-04-09 09:50:49');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:50:49', '2020-04-09 09:50:49');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:52', '2020-04-09 09:50:52');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:50:56', '2020-04-09 09:50:56');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:50:56', '2020-04-09 09:50:56');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:50:58', '2020-04-09 09:50:58');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"HB2SKe72IynhuKXN2cj1JzV6MYV6Kb6DfIYUJ1Re\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/blog.test\\/admin\\/auth\\/menu\"}', '2020-04-09 09:51:02', '2020-04-09 09:51:02');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:51:02', '2020-04-09 09:51:02');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:51:10', '2020-04-09 09:51:10');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:51:14', '2020-04-09 09:51:14');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:51:14', '2020-04-09 09:51:14');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:51:15', '2020-04-09 09:51:15');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:51:15', '2020-04-09 09:51:15');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:51:15', '2020-04-09 09:51:15');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:51:16', '2020-04-09 09:51:16');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-04-09 09:52:12', '2020-04-09 09:52:12');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admins', 'GET', '127.0.0.1', '[]', '2020-04-09 09:54:14', '2020-04-09 09:54:14');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'my_admin_login', 'GET', '127.0.0.1', '[]', '2020-04-09 09:54:37', '2020-04-09 09:54:37');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'my_admin_login/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:54:40', '2020-04-09 09:54:40');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'my_admin_login', 'GET', '127.0.0.1', '[]', '2020-04-09 09:54:46', '2020-04-09 09:54:46');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'my_admin_login/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:54:52', '2020-04-09 09:54:52');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'my_admin_login/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6253\\u5361\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"practice-lists\",\"roles\":[null],\"permission\":null,\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\"}', '2020-04-09 09:56:40', '2020-04-09 09:56:40');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'my_admin_login/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-09 09:56:41', '2020-04-09 09:56:41');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'my_admin_login/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2020-04-09 09:56:49', '2020-04-09 09:56:49');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'my_admin_login/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:56:49', '2020-04-09 09:56:49');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 09:57:12', '2020-04-09 09:57:12');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:57:15', '2020-04-09 09:57:15');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:57:18', '2020-04-09 09:57:18');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 09:57:43', '2020-04-09 09:57:43');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 09:57:50', '2020-04-09 09:57:50');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 09:58:29', '2020-04-09 09:58:29');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 09:58:30', '2020-04-09 09:58:30');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '[]', '2020-04-09 09:58:42', '2020-04-09 09:58:42');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '[]', '2020-04-09 09:59:05', '2020-04-09 09:59:05');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '[]', '2020-04-09 09:59:42', '2020-04-09 09:59:42');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'my_admin_login/practice-lists', 'POST', '127.0.0.1', '{\"name\":\"\\u548c\\u5f26\",\"type\":\"1\",\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\"}', '2020-04-09 10:00:09', '2020-04-09 10:00:09');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 10:00:09', '2020-04-09 10:00:09');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 10:00:14', '2020-04-09 10:00:14');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'my_admin_login/practice-lists', 'POST', '127.0.0.1', '{\"name\":\"\\u8282\\u594f\\u578b\",\"type\":\"1\",\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\",\"_previous_\":\"http:\\/\\/blog.test\\/my_admin_login\\/practice-lists\"}', '2020-04-09 10:01:46', '2020-04-09 10:01:46');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 10:01:46', '2020-04-09 10:01:46');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 10:01:50', '2020-04-09 10:01:50');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'my_admin_login/practice-lists', 'POST', '127.0.0.1', '{\"name\":\"\\u97f3\\u9636\\u97f3\\u7a0b\",\"type\":\"1\",\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\",\"_previous_\":\"http:\\/\\/blog.test\\/my_admin_login\\/practice-lists\"}', '2020-04-09 10:01:54', '2020-04-09 10:01:54');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 10:01:54', '2020-04-09 10:01:54');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 10:01:55', '2020-04-09 10:01:55');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'my_admin_login/practice-lists', 'POST', '127.0.0.1', '{\"name\":\"\\u722c\\u683c\\u5b50\",\"type\":\"1\",\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\",\"_previous_\":\"http:\\/\\/blog.test\\/my_admin_login\\/practice-lists\"}', '2020-04-09 10:02:01', '2020-04-09 10:02:01');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 10:02:01', '2020-04-09 10:02:01');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 10:02:02', '2020-04-09 10:02:02');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'my_admin_login/practice-lists', 'POST', '127.0.0.1', '{\"name\":\"\\u6252\\u8c31\\u5b50\",\"type\":\"1\",\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\",\"_previous_\":\"http:\\/\\/blog.test\\/my_admin_login\\/practice-lists\"}', '2020-04-09 10:02:08', '2020-04-09 10:02:08');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 10:02:08', '2020-04-09 10:02:08');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'my_admin_login/practice-lists/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-09 10:02:10', '2020-04-09 10:02:10');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'my_admin_login/practice-lists', 'POST', '127.0.0.1', '{\"name\":\"\\u6307\\u5f39\\u7ec3\\u4e60\",\"type\":\"1\",\"_token\":\"VvmUsHGMoNu5WiyJvCOOhijdnWmVP19zYcSkkteP\",\"_previous_\":\"http:\\/\\/blog.test\\/my_admin_login\\/practice-lists\"}', '2020-04-09 10:02:16', '2020-04-09 10:02:16');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'my_admin_login/practice-lists', 'GET', '127.0.0.1', '[]', '2020-04-09 10:02:16', '2020-04-09 10:02:16');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-04-09 09:49:29', '2020-04-09 09:49:29');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$bL.Qjkl1jhoqscTWsJ1geO8Bg88aD5blaciATrsWANWnc1UKHPR/m', 'Administrator', null, '9OpGDuJ3Up3ppFUwrkFpnFBlQk1fTWrukr09WQMyumB9jDmN9d7oe8ti8o00', '2020-04-09 09:49:29', '2020-04-09 09:49:29');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `blogs`
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `blogs_created_at_index` (`created_at`),
  KEY `blogs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('4', '<p><b>乐理在整个音乐，不管是钢琴还是吉他，还是民族乐器都是基础中的基础，这个基本功是十分重要的</b></p>\r\n\r\n<p>这个时候乐理知识就尤为重要，所以我们要学好乐理知识呢，接下来我们就开始学习吧。</p>\r\n\r\n<ul><li>音名<ul><li>     <b>C</b>     <b>D</b>    <b>E</b>     <b>F</b>     <b>G</b>     <b>A</b>     <b>B</b>     </li></ul></li><li>唱名<ul><li>     <b>DO</b>     <b>RE</b>     <b>Mi</b>     <b>FA</b>     <b>SOL</b>     <b>LA</b>     <b>TI </b>    </li></ul></li></ul>\r\n\r\n<p>简单来说唱名就是可以唱出来的1~ 2~ 3~ 4~ 5~ 6~ 7~，音名是一窜英文字母CDEFGAB，分别对应关系 C-Do，D-RE , E-Mi , F-FA , G-SOL , A-La , B-Ti.</p>\r\n\r\n<p>当我们能快速记忆出某个音名对应的唱名即可（音名E对应唱名Mi）</p>', '1', '1', '2020-04-08 12:39:40', '2020-04-08 16:56:55', '1.简单起步，音名和唱名-1234567', 'http://img5.imgtn.bdimg.com/it/u=1295993888,580301091&fm=26&gp=0.jpg', '乐理类', '乐理在整个音乐，不管是钢琴还是吉他，还是民族乐器都是基础中的基础，这个基本功是十分重要的  这个时候乐理知识就尤为重要，所以我们要学好乐理知识呢，接下来我们就开始学习吧。  音名     C     D    E     F   ...');
INSERT INTO `blogs` VALUES ('9', '', '1', '1', '2020-04-08 16:33:32', '2020-04-08 16:33:32', '测试', '312312', '乐理类', '');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `post_count` int(11) NOT NULL DEFAULT '0' COMMENT '帖子数',
  PRIMARY KEY (`id`),
  KEY `categories_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '吉他分享', '吉他分享', '6');
INSERT INTO `categories` VALUES ('2', '日语学习', '日语学习', '0');
INSERT INTO `categories` VALUES ('3', '必追新番', '必追新番', '1');
INSERT INTO `categories` VALUES ('4', '我的switch', '我的switch', '0');
INSERT INTO `categories` VALUES ('5', '心得分享', '心得分享', '0');
INSERT INTO `categories` VALUES ('6', '黑科技', '黑科技', '0');
INSERT INTO `categories` VALUES ('7', '博客', '博客', '0');
INSERT INTO `categories` VALUES ('8', '吉他分享', '吉他分享', '0');
INSERT INTO `categories` VALUES ('9', '日语学习', '日语学习', '0');
INSERT INTO `categories` VALUES ('10', '必追新番', '必追新番', '0');
INSERT INTO `categories` VALUES ('11', '我的switch', '我的switch', '0');
INSERT INTO `categories` VALUES ('12', '心得分享', '心得分享', '0');
INSERT INTO `categories` VALUES ('13', '黑科技', '黑科技', '0');
INSERT INTO `categories` VALUES ('14', '博客', '博客', '0');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_04_08_094549_create_blogs_table', '2');
INSERT INTO `migrations` VALUES ('5', '2020_04_08_095037_create_categories_table', '3');
INSERT INTO `migrations` VALUES ('7', '2020_04_08_095140_seed_categories_data', '4');
INSERT INTO `migrations` VALUES ('8', '2020_04_09_094131_create_practice_lists_table', '4');
INSERT INTO `migrations` VALUES ('9', '2016_01_04_173148_create_admin_tables', '5');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('406811064@qq.com', '$2y$10$mL3pXExdVotOHthkPAZk1OAL52RChCRhzKfKHCi3v/KDYO.VmCKFe', '2020-04-08 17:30:15');

-- ----------------------------
-- Table structure for `practice_lists`
-- ----------------------------
DROP TABLE IF EXISTS `practice_lists`;
CREATE TABLE `practice_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of practice_lists
-- ----------------------------
INSERT INTO `practice_lists` VALUES ('1', '和弦', '1', '2020-04-09 10:00:09', '2020-04-09 10:00:09');
INSERT INTO `practice_lists` VALUES ('2', '节奏型', '1', '2020-04-09 10:01:46', '2020-04-09 10:01:46');
INSERT INTO `practice_lists` VALUES ('3', '音阶音程', '1', '2020-04-09 10:01:54', '2020-04-09 10:01:54');
INSERT INTO `practice_lists` VALUES ('4', '爬格子', '1', '2020-04-09 10:02:01', '2020-04-09 10:02:01');
INSERT INTO `practice_lists` VALUES ('5', '扒谱子', '1', '2020-04-09 10:02:08', '2020-04-09 10:02:08');
INSERT INTO `practice_lists` VALUES ('6', '指弹练习', '1', '2020-04-09 10:02:16', '2020-04-09 10:02:16');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_state` int(1) NOT NULL DEFAULT '0',
  `days` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'FiveEggs', '406811064@qq.com', null, '$2y$10$68lj66iNrKo0GXpwAkAVmO8SxS/gXeHMjwuNcwTWSeEmqbpqr1pVO', null, '2020-04-08 08:24:27', '2020-04-08 08:24:27', null, '1', '0');
