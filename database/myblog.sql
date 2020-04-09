/*
Navicat MySQL Data Transfer

Source Server         : java
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2020-04-08 17:52:06
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_04_08_094549_create_blogs_table', '2');
INSERT INTO `migrations` VALUES ('5', '2020_04_08_095037_create_categories_table', '3');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'FiveEggs', '406811064@qq.com', null, '$2y$10$68lj66iNrKo0GXpwAkAVmO8SxS/gXeHMjwuNcwTWSeEmqbpqr1pVO', null, '2020-04-08 08:24:27', '2020-04-08 08:24:27', null, '1');
