/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : osukafuu

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 31/07/2020 05:10:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 2fa
-- ----------------------------
DROP TABLE IF EXISTS `2fa`;
CREATE TABLE `2fa`  (
  `userid` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 2fa_telegram
-- ----------------------------
DROP TABLE IF EXISTS `2fa_telegram`;
CREATE TABLE `2fa_telegram`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 2fa_totp
-- ----------------------------
DROP TABLE IF EXISTS `2fa_totp`;
CREATE TABLE `2fa_totp`  (
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for achievements
-- ----------------------------
DROP TABLE IF EXISTS `achievements`;
CREATE TABLE `achievements`  (
  `id` int(11) NOT NULL,
  `name` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `version` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of achievements
-- ----------------------------
INSERT INTO `achievements` VALUES (1, '500 Combo (osu!std)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1);
INSERT INTO `achievements` VALUES (2, '750 Combo (osu!std)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1);
INSERT INTO `achievements` VALUES (3, '1000 Combo (osu!std)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1);
INSERT INTO `achievements` VALUES (4, '2000 Combo (osu!std)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1);
INSERT INTO `achievements` VALUES (5, '500 Combo (osu!taiko)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1);
INSERT INTO `achievements` VALUES (6, '750 Combo (osu!taiko)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1);
INSERT INTO `achievements` VALUES (7, '1000 Combo (osu!taiko)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1);
INSERT INTO `achievements` VALUES (8, '2000 Combo (osu!taiko)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1);
INSERT INTO `achievements` VALUES (9, '500 Combo (osu!ctb)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1);
INSERT INTO `achievements` VALUES (10, '750 Combo (osu!ctb)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1);
INSERT INTO `achievements` VALUES (11, '1000 Combo (osu!ctb)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1);
INSERT INTO `achievements` VALUES (12, '2000 Combo (osu!ctb)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1);
INSERT INTO `achievements` VALUES (13, '500 Combo (osu!mania)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1);
INSERT INTO `achievements` VALUES (14, '750 Combo (osu!mania)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1);
INSERT INTO `achievements` VALUES (15, '1000 Combo (osu!mania)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1);
INSERT INTO `achievements` VALUES (16, '2000 Combo (osu!mania)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1);
INSERT INTO `achievements` VALUES (17, 'Rising Star', 'Can\'t go forward without the first steps.', 'osu-skill-pass-1', 2);
INSERT INTO `achievements` VALUES (18, 'My First Don', 'Can\'t go forward without the first steps.', 'taiko-skill-pass-1', 2);
INSERT INTO `achievements` VALUES (19, 'A Slice Of Life', 'Can\'t go forward without the first steps.', 'fruits-skill-pass-1', 2);
INSERT INTO `achievements` VALUES (20, 'First Steps', 'Can\'t go forward without the first steps.', 'mania-skill-pass-1', 2);
INSERT INTO `achievements` VALUES (21, 'Constellation Prize', 'Definitely not a consolation prize. Now things start getting hard!', 'osu-skill-pass-2', 2);
INSERT INTO `achievements` VALUES (22, 'Katsu Katsu Katsu', 'Definitely not a consolation prize. Now things start getting hard!', 'taiko-skill-pass-2', 2);
INSERT INTO `achievements` VALUES (23, 'Dashing Ever Forward', 'Definitely not a consolation prize. Now things start getting hard!', 'fruits-skill-pass-2', 2);
INSERT INTO `achievements` VALUES (24, 'No Normal Player', 'Definitely not a consolation prize. Now things start getting hard!', 'mania-skill-pass-2', 2);
INSERT INTO `achievements` VALUES (25, 'Building Confidence', 'Oh, you\'ve SO got this.', 'osu-skill-pass-3', 2);
INSERT INTO `achievements` VALUES (26, 'Not Even Trying', 'Oh, you\'ve SO got this.', 'taiko-skill-pass-3', 2);
INSERT INTO `achievements` VALUES (27, 'Zesty Disposition', 'Oh, you\'ve SO got this.', 'fruits-skill-pass-3', 2);
INSERT INTO `achievements` VALUES (28, 'Impulse Drive', 'Oh, you\'ve SO got this.', 'mania-skill-pass-3', 2);
INSERT INTO `achievements` VALUES (29, 'Insanity Approaches', 'You\'re not twitching, you\'re just ready.', 'osu-skill-pass-4', 2);
INSERT INTO `achievements` VALUES (30, 'Face Your Demons', 'You\'re not twitching, you\'re just ready.', 'taiko-skill-pass-4', 2);
INSERT INTO `achievements` VALUES (31, 'Hyperdash ON!', 'You\'re not twitching, you\'re just ready.', 'fruits-skill-pass-4', 2);
INSERT INTO `achievements` VALUES (32, 'Hyperspeed', 'You\'re not twitching, you\'re just ready.', 'mania-skill-pass-4', 2);
INSERT INTO `achievements` VALUES (33, 'These Clarion Skies', 'Everything seems so clear now.', 'osu-skill-pass-5', 2);
INSERT INTO `achievements` VALUES (34, 'The Demon Within', 'Everything seems so clear now.', 'taiko-skill-pass-5', 2);
INSERT INTO `achievements` VALUES (35, 'It\'s Raining Fruit', 'Everything seems so clear now.', 'fruits-skill-pass-5', 2);
INSERT INTO `achievements` VALUES (36, 'Ever Onwards', 'Everything seems so clear now.', 'mania-skill-pass-5', 2);
INSERT INTO `achievements` VALUES (37, 'Above and Beyond', 'A cut above the rest.', 'osu-skill-pass-6', 2);
INSERT INTO `achievements` VALUES (38, 'Drumbreaker', 'A cut above the rest.', 'taiko-skill-pass-6', 2);
INSERT INTO `achievements` VALUES (39, 'Fruit Ninja', 'A cut above the rest.', 'fruits-skill-pass-6', 2);
INSERT INTO `achievements` VALUES (40, 'Another Surpassed', 'A cut above the rest.', 'mania-skill-pass-6', 2);
INSERT INTO `achievements` VALUES (41, 'Supremacy', 'All marvel before your prowess.', 'osu-skill-pass-7', 2);
INSERT INTO `achievements` VALUES (42, 'The Godfather', 'All marvel before your prowess.', 'taiko-skill-pass-7', 2);
INSERT INTO `achievements` VALUES (43, 'Dreamcatcher', 'All marvel before your prowess.', 'fruits-skill-pass-7', 2);
INSERT INTO `achievements` VALUES (44, 'Extra Credit', 'All marvel before your prowess.', 'mania-skill-pass-7', 2);
INSERT INTO `achievements` VALUES (45, 'Absolution', 'My god, you\'re full of stars!', 'osu-skill-pass-8', 2);
INSERT INTO `achievements` VALUES (46, 'Rhythm Incarnate', 'My god, you\'re full of stars!', 'taiko-skill-pass-8', 2);
INSERT INTO `achievements` VALUES (47, 'Lord of the Catch', 'My god, you\'re full of stars!', 'fruits-skill-pass-8', 2);
INSERT INTO `achievements` VALUES (48, 'Maniac', 'My god, you\'re full of stars!', 'mania-skill-pass-8', 2);
INSERT INTO `achievements` VALUES (49, 'Totality', 'All the notes. Every single one.', 'osu-skill-fc-1', 3);
INSERT INTO `achievements` VALUES (50, 'Keeping Time', 'All the notes. Every single one.', 'taiko-skill-fc-1', 3);
INSERT INTO `achievements` VALUES (51, 'Sweet And Sour', 'All the notes. Every single one.', 'fruits-skill-fc-1', 3);
INSERT INTO `achievements` VALUES (52, 'Keystruck', 'All the notes. Every single one.', 'mania-skill-fc-1', 3);
INSERT INTO `achievements` VALUES (53, 'Business As Usual', 'Two to go, please.', 'osu-skill-fc-2', 3);
INSERT INTO `achievements` VALUES (54, 'To Your Own Beat', 'Two to go, please.', 'taiko-skill-fc-2', 3);
INSERT INTO `achievements` VALUES (55, 'Reaching The Core', 'Two to go, please.', 'fruits-skill-fc-2', 3);
INSERT INTO `achievements` VALUES (56, 'Keying In', 'Two to go, please.', 'mania-skill-fc-2', 3);
INSERT INTO `achievements` VALUES (57, 'Building Steam', 'Hey, this isn\'t so bad.', 'osu-skill-fc-3', 3);
INSERT INTO `achievements` VALUES (58, 'Big Drums', 'Hey, this isn\'t so bad.', 'taiko-skill-fc-3', 3);
INSERT INTO `achievements` VALUES (59, 'Clean Platter', 'Hey, this isn\'t so bad.', 'fruits-skill-fc-3', 3);
INSERT INTO `achievements` VALUES (60, 'Hyperflow', 'Hey, this isn\'t so bad.', 'mania-skill-fc-3', 3);
INSERT INTO `achievements` VALUES (61, 'Moving Forward', 'Bet you feel good about that.', 'osu-skill-fc-4', 3);
INSERT INTO `achievements` VALUES (62, 'Adversity Overcome', 'Bet you feel good about that.', 'taiko-skill-fc-4', 3);
INSERT INTO `achievements` VALUES (63, 'Between The Rain', 'Bet you feel good about that.', 'fruits-skill-fc-4', 3);
INSERT INTO `achievements` VALUES (64, 'Breakthrough', 'Bet you feel good about that.', 'mania-skill-fc-4', 3);
INSERT INTO `achievements` VALUES (65, 'Paradigm Shift', 'Surprisingly difficult.', 'osu-skill-fc-5', 3);
INSERT INTO `achievements` VALUES (66, 'Demonslayer', 'Surprisingly difficult.', 'taiko-skill-fc-5', 3);
INSERT INTO `achievements` VALUES (67, 'Addicted', 'Surprisingly difficult.', 'fruits-skill-fc-5', 3);
INSERT INTO `achievements` VALUES (68, 'Everything Extra', 'Surprisingly difficult.', 'mania-skill-fc-5', 3);
INSERT INTO `achievements` VALUES (69, 'Anguish Quelled', 'Don\'t choke.', 'osu-skill-fc-6', 3);
INSERT INTO `achievements` VALUES (70, 'Rhythm\'s Call', 'Don\'t choke.', 'taiko-skill-fc-6', 3);
INSERT INTO `achievements` VALUES (71, 'Quickening', 'Don\'t choke.', 'fruits-skill-fc-6', 3);
INSERT INTO `achievements` VALUES (72, 'Level Breaker', 'Don\'t choke.', 'mania-skill-fc-6', 3);
INSERT INTO `achievements` VALUES (73, 'Never Give Up', 'Excellence is its own reward.', 'osu-skill-fc-7', 3);
INSERT INTO `achievements` VALUES (74, 'Time Everlasting', 'Excellence is its own reward.', 'taiko-skill-fc-7', 3);
INSERT INTO `achievements` VALUES (75, 'Supersonic', 'Excellence is its own reward.', 'fruits-skill-fc-7', 3);
INSERT INTO `achievements` VALUES (76, 'Step Up', 'Excellence is its own reward.', 'mania-skill-fc-7', 3);
INSERT INTO `achievements` VALUES (77, 'Aberration', 'They said it couldn\'t be done. They were wrong.', 'osu-skill-fc-8', 3);
INSERT INTO `achievements` VALUES (78, 'The Drummer\'s Throne', 'They said it couldn\'t be done. They were wrong.', 'taiko-skill-fc-8', 3);
INSERT INTO `achievements` VALUES (79, 'Dashing Scarlet', 'They said it couldn\'t be done. They were wrong.', 'fruits-skill-fc-8', 3);
INSERT INTO `achievements` VALUES (80, 'Behind The Veil', 'They said it couldn\'t be done. They were wrong.', 'mania-skill-fc-8', 3);
INSERT INTO `achievements` VALUES (81, 'Finality', 'High stakes, no regrets.', 'all-intro-suddendeath', 4);
INSERT INTO `achievements` VALUES (82, 'Perfectionist', 'Accept nothing but the best.', 'all-intro-perfect', 4);
INSERT INTO `achievements` VALUES (83, 'Rock Around The Clock', 'You can\'t stop the rock.', 'all-intro-hardrock', 4);
INSERT INTO `achievements` VALUES (84, 'Time And A Half', 'Having a right ol\' time. One and a half of them, almost.', 'all-intro-doubletime', 4);
INSERT INTO `achievements` VALUES (85, 'Sweet Rave Party', 'Founded in the fine tradition of changing things that were just fine as they were.', 'all-intro-nightcore', 4);
INSERT INTO `achievements` VALUES (86, 'Blindsight', 'I can see just perfectly.', 'all-intro-hidden', 4);
INSERT INTO `achievements` VALUES (87, 'Are You Afraid Of The Dark?', 'Harder than it looks, probably because it\'s hard to look.', 'all-intro-flashlight', 4);
INSERT INTO `achievements` VALUES (88, 'Dial It Right Back', 'Sometimes you just want to take it easy.', 'all-intro-easy', 4);
INSERT INTO `achievements` VALUES (89, 'Risk Averse', 'Safety nets are fun!', 'all-intro-nofail', 4);
INSERT INTO `achievements` VALUES (90, 'Slowboat', 'You got there. Eventually.', 'all-intro-halftime', 4);
INSERT INTO `achievements` VALUES (91, 'Burned Out', 'One cannot always spin to win.', 'all-intro-spunout', 4);
INSERT INTO `achievements` VALUES (92, '5,000 Plays', 'There\'s a lot more where that came from.', 'osu-plays-5000', 5);
INSERT INTO `achievements` VALUES (93, '15,000 Plays', 'Must.. click.. circles..', 'osu-plays-15000', 5);
INSERT INTO `achievements` VALUES (94, '25,000 Plays', 'There\'s no going back.', 'osu-plays-25000', 5);
INSERT INTO `achievements` VALUES (95, '50,000 Plays', 'You\'re here forever.', 'osu-plays-50000', 5);
INSERT INTO `achievements` VALUES (96, 'A meganekko approaches', 'Congratulations, you met Maria!', 'mania-secret-meganekko', 6);
INSERT INTO `achievements` VALUES (97, 'Don\'t let the bunny distract you!', 'The order was indeed, not a rabbit.', 'all-secret-bunny', 6);

-- ----------------------------
-- Table structure for anticheat_reports
-- ----------------------------
DROP TABLE IF EXISTS `anticheat_reports`;
CREATE TABLE `anticheat_reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anticheat_id` int(11) NOT NULL,
  `score_id` int(11) NOT NULL,
  `severity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_beatmap_playcount
-- ----------------------------
DROP TABLE IF EXISTS `ap_beatmap_playcount`;
CREATE TABLE `ap_beatmap_playcount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NULL DEFAULT NULL,
  `game_mode` int(11) NULL DEFAULT NULL,
  `playcount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `playcount_index`(`user_id`, `beatmap_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_stats
-- ----------------------------
DROP TABLE IF EXISTS `ap_stats`;
CREATE TABLE `ap_stats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username_aka` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `favourite_mode` int(11) NOT NULL DEFAULT 0,
  `level_std` int(11) NOT NULL DEFAULT 1,
  `level_taiko` int(11) NOT NULL DEFAULT 1,
  `level_mania` int(11) NOT NULL DEFAULT 1,
  `level_ctb` int(11) NOT NULL DEFAULT 1,
  `total_score_std` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko` int(11) NOT NULL DEFAULT 0,
  `total_score_mania` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_std` int(11) NOT NULL DEFAULT 0,
  `total_hits_taiko` int(11) NOT NULL DEFAULT 0,
  `total_hits_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_mania` int(11) NOT NULL DEFAULT 0,
  `playtime_std` int(11) NOT NULL DEFAULT 0,
  `playtime_taiko` int(11) NOT NULL DEFAULT 0,
  `playtime_mania` int(11) NOT NULL DEFAULT 0,
  `playtime_ctb` int(11) NOT NULL DEFAULT 0,
  `ranked_score_std` bigint(11) NOT NULL DEFAULT 0,
  `ranked_score_taiko` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb` int(11) NOT NULL DEFAULT 0,
  `avg_accuracy_std` double NOT NULL DEFAULT 0,
  `avg_accuracy_taiko` double NOT NULL DEFAULT 0,
  `avg_accuracy_mania` double NOT NULL DEFAULT 0,
  `avg_accuracy_ctb` double NOT NULL DEFAULT 0,
  `playcount_std` int(11) NOT NULL DEFAULT 0,
  `playcount_taiko` int(11) NOT NULL DEFAULT 0,
  `playcount_mania` int(11) NOT NULL DEFAULT 0,
  `playcount_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_std` int(11) NOT NULL DEFAULT 0,
  `pp_mania` int(11) NOT NULL DEFAULT 0,
  `pp_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_taiko` int(11) NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT 0,
  `ppboard` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_stats
-- ----------------------------
INSERT INTO `ap_stats` VALUES (999, 'ChinoBot', 'ChinoBot', 'black', '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CN', 1, 1);

-- ----------------------------
-- Table structure for badges
-- ----------------------------
DROP TABLE IF EXISTS `badges`;
CREATE TABLE `badges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(21485) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of badges
-- ----------------------------
INSERT INTO `badges` VALUES (2, 'Developers', 'teal blind');
INSERT INTO `badges` VALUES (3, 'Bug Hunter', 'bug icon');
INSERT INTO `badges` VALUES (4, 'Community Manager', 'user secret');
INSERT INTO `badges` VALUES (5, 'Beatmap Nominators', 'chart line');
INSERT INTO `badges` VALUES (10, 'SUSPICIOUS - WAITING FOR CHECK', 'red window close outline');
INSERT INTO `badges` VALUES (30, 'Chat Moderators', 'envelope outline');
INSERT INTO `badges` VALUES (1000, 'Thumbnail Maker', 'fa-thumbs-o-up');
INSERT INTO `badges` VALUES (1001, 'Marathon Runner', 'yellow hourglass outline');
INSERT INTO `badges` VALUES (1002, 'Donor', 'yellow heart');
INSERT INTO `badges` VALUES (1003, 'gg', 'universal access');
INSERT INTO `badges` VALUES (1004, 'Vanilla God (Certified by Aoba)', 'yellow fa-check');
INSERT INTO `badges` VALUES (1005, 'Bot', 'blue shield alternate');

-- ----------------------------
-- Table structure for bancho_channels
-- ----------------------------
DROP TABLE IF EXISTS `bancho_channels`;
CREATE TABLE `bancho_channels`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `public_read` tinyint(4) NOT NULL,
  `public_write` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `temp` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bancho_channels
-- ----------------------------
INSERT INTO `bancho_channels` VALUES (1, '#osu', 'Kafuu global chat', 1, 1, 1, 0, 0);
INSERT INTO `bancho_channels` VALUES (2, '#announce', 'Announce channel', 1, 0, 1, 0, 0);
INSERT INTO `bancho_channels` VALUES (3, '#china', 'China community', 1, 1, 1, 0, 0);
INSERT INTO `bancho_channels` VALUES (4, '#english', 'English community', 1, 1, 1, 0, 0);
INSERT INTO `bancho_channels` VALUES (5, '#admin', 'Are you admin?', 1, 1, 1, 0, 1);
INSERT INTO `bancho_channels` VALUES (6, '#lobby', 'This is the lobby where you find games to play with others!', 1, 1, 1, 0, 1);
INSERT INTO `bancho_channels` VALUES (7, '#ranked', 'Rank requests maps will be posted here! (If its ranked.)', 1, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for bancho_messages
-- ----------------------------
DROP TABLE IF EXISTS `bancho_messages`;
CREATE TABLE `bancho_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_to` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bancho_private_messages
-- ----------------------------
DROP TABLE IF EXISTS `bancho_private_messages`;
CREATE TABLE `bancho_private_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_to` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bancho_settings
-- ----------------------------
DROP TABLE IF EXISTS `bancho_settings`;
CREATE TABLE `bancho_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT 0,
  `value_string` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bancho_settings
-- ----------------------------
INSERT INTO `bancho_settings` VALUES (1, 'bancho_maintenance', 0, '');
INSERT INTO `bancho_settings` VALUES (2, 'free_direct', 0, '');
INSERT INTO `bancho_settings` VALUES (3, 'menu_icon', 1, 'http://i.ppy.sh/logo.png | https://kafuu.pro');
INSERT INTO `bancho_settings` VALUES (4, 'login_messages', 1, '');
INSERT INTO `bancho_settings` VALUES (5, 'restricted_joke', 0, 'You are banned from the server.');
INSERT INTO `bancho_settings` VALUES (6, 'login_notification', 1, 'Welcome to osu!Kafuu~~');
INSERT INTO `bancho_settings` VALUES (7, 'osu_versions', 0, '');
INSERT INTO `bancho_settings` VALUES (8, 'osu_md5s', 0, '');

-- ----------------------------
-- Table structure for bancho_tokens
-- ----------------------------
DROP TABLE IF EXISTS `bancho_tokens`;
CREATE TABLE `bancho_tokens`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `osu_id` int(11) NOT NULL,
  `latest_message_id` int(11) NOT NULL,
  `latest_private_message_id` int(11) NOT NULL,
  `latest_packet_time` int(11) NOT NULL,
  `latest_heavy_packet_time` int(11) NOT NULL,
  `joined_channels` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_mode` tinyint(4) NOT NULL,
  `action` int(11) NOT NULL,
  `action_text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kicked` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for beatmaps
-- ----------------------------
DROP TABLE IF EXISTS `beatmaps`;
CREATE TABLE `beatmaps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rankedby` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Bancho',
  `beatmap_id` int(11) NOT NULL DEFAULT 0,
  `beatmapset_id` int(11) NOT NULL DEFAULT 0,
  `beatmap_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `song_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ar` float NOT NULL DEFAULT 0,
  `od` float NOT NULL DEFAULT 0,
  `mode` int(11) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 10,
  `difficulty_std` float NOT NULL DEFAULT 0,
  `difficulty_taiko` float NOT NULL DEFAULT 0,
  `difficulty_ctb` float NOT NULL DEFAULT 0,
  `difficulty_mania` float NOT NULL DEFAULT 0,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `hit_length` int(11) NOT NULL DEFAULT 0,
  `bpm` bigint(11) NOT NULL DEFAULT 0,
  `playcount` int(11) NOT NULL DEFAULT 0,
  `passcount` int(11) NOT NULL DEFAULT 0,
  `ranked` tinyint(4) NOT NULL DEFAULT 0,
  `latest_update` int(11) NOT NULL DEFAULT 0,
  `ranked_status_freezed` tinyint(1) NOT NULL DEFAULT 0,
  `pp_100` int(11) NOT NULL DEFAULT 0,
  `pp_99` int(11) NOT NULL DEFAULT 0,
  `pp_98` int(11) NOT NULL DEFAULT 0,
  `pp_95` int(11) NOT NULL DEFAULT 0,
  `disable_pp` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `id_2`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for beatmaps_names
-- ----------------------------
DROP TABLE IF EXISTS `beatmaps_names`;
CREATE TABLE `beatmaps_names`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `beatmap_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for beatmaps_rating
-- ----------------------------
DROP TABLE IF EXISTS `beatmaps_rating`;
CREATE TABLE `beatmaps_rating`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clans
-- ----------------------------
DROP TABLE IF EXISTS `clans`;
CREATE TABLE `clans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mlimit` int(11) NOT NULL DEFAULT 16,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clans_invites
-- ----------------------------
DROP TABLE IF EXISTS `clans_invites`;
CREATE TABLE `clans_invites`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clan` int(11) NOT NULL,
  `invite` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NOT NULL DEFAULT 0,
  `beatmapset_id` int(11) NOT NULL DEFAULT 0,
  `score_id` int(11) NOT NULL DEFAULT 0,
  `mode` int(11) NOT NULL,
  `comment` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `who` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `special_format` varchar(2556) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'FFFFFF',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for db_version
-- ----------------------------
DROP TABLE IF EXISTS `db_version`;
CREATE TABLE `db_version`  (
  `version` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_version
-- ----------------------------
INSERT INTO `db_version` VALUES (-1);

-- ----------------------------
-- Table structure for docs
-- ----------------------------
DROP TABLE IF EXISTS `docs`;
CREATE TABLE `docs`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'New Documentation File',
  `doc_contents` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `public` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `old_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hw_user
-- ----------------------------
DROP TABLE IF EXISTS `hw_user`;
CREATE TABLE `hw_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `mac` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unique_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `disk_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occurencies` int(11) NOT NULL DEFAULT 0,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `banned` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for identity_tokens
-- ----------------------------
DROP TABLE IF EXISTS `identity_tokens`;
CREATE TABLE `identity_tokens`  (
  `userid` int(11) NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ip_user
-- ----------------------------
DROP TABLE IF EXISTS `ip_user`;
CREATE TABLE `ip_user`  (
  `userid` int(11) NOT NULL,
  `ip` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occurencies` int(11) NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for irc_tokens
-- ----------------------------
DROP TABLE IF EXISTS `irc_tokens`;
CREATE TABLE `irc_tokens`  (
  `userid` int(11) NOT NULL DEFAULT 0,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  UNIQUE INDEX `userid`(`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for leaderboard_ctb
-- ----------------------------
DROP TABLE IF EXISTS `leaderboard_ctb`;
CREATE TABLE `leaderboard_ctb`  (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for leaderboard_mania
-- ----------------------------
DROP TABLE IF EXISTS `leaderboard_mania`;
CREATE TABLE `leaderboard_mania`  (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for leaderboard_std
-- ----------------------------
DROP TABLE IF EXISTS `leaderboard_std`;
CREATE TABLE `leaderboard_std`  (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for leaderboard_taiko
-- ----------------------------
DROP TABLE IF EXISTS `leaderboard_taiko`;
CREATE TABLE `leaderboard_taiko`  (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for main_menu_icons
-- ----------------------------
DROP TABLE IF EXISTS `main_menu_icons`;
CREATE TABLE `main_menu_icons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_current` int(11) NOT NULL,
  `file_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_menu_icons
-- ----------------------------
INSERT INTO `main_menu_icons` VALUES (1, 1, 'welcome', 'welcome', 'https://kafuu.pro');

-- ----------------------------
-- Table structure for osin_access
-- ----------------------------
DROP TABLE IF EXISTS `osin_access`;
CREATE TABLE `osin_access`  (
  `scope` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `client` int(11) NOT NULL DEFAULT 0,
  `extra` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for osin_client
-- ----------------------------
DROP TABLE IF EXISTS `osin_client`;
CREATE TABLE `osin_client`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secret` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `extra` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `redirect_uri` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for osin_client_user
-- ----------------------------
DROP TABLE IF EXISTS `osin_client_user`;
CREATE TABLE `osin_client_user`  (
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_recovery
-- ----------------------------
DROP TABLE IF EXISTS `password_recovery`;
CREATE TABLE `password_recovery`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `k` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for privileges_groups
-- ----------------------------
DROP TABLE IF EXISTS `privileges_groups`;
CREATE TABLE `privileges_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `privileges` int(11) NOT NULL,
  `color` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of privileges_groups
-- ----------------------------
INSERT INTO `privileges_groups` VALUES (1, 'Banned', 0, '');
INSERT INTO `privileges_groups` VALUES (2, 'BAT', 267, '');
INSERT INTO `privileges_groups` VALUES (3, 'Chat Moderators', 2883911, 'success');
INSERT INTO `privileges_groups` VALUES (4, 'Admin', 1048575, 'danger');
INSERT INTO `privileges_groups` VALUES (5, 'Developer', 1043995, 'info');
INSERT INTO `privileges_groups` VALUES (6, 'Donor', 7, 'warning');
INSERT INTO `privileges_groups` VALUES (7, 'God', 1048575, 'info');
INSERT INTO `privileges_groups` VALUES (8, 'Normal User', 3, 'primary');
INSERT INTO `privileges_groups` VALUES (9, 'Pending', 1048576, 'default');
INSERT INTO `privileges_groups` VALUES (10, 'Restricted', 2, '');
INSERT INTO `privileges_groups` VALUES (11, 'Beatmap Nominator', 267, 'primary');
INSERT INTO `privileges_groups` VALUES (12, 'Full Perms', 3145727, 'info');
INSERT INTO `privileges_groups` VALUES (13, 'Community Manager', 918015, 'success');
INSERT INTO `privileges_groups` VALUES (14, 'New Privilege Group', 33039, 'info');

-- ----------------------------
-- Table structure for profile_backgrounds
-- ----------------------------
DROP TABLE IF EXISTS `profile_backgrounds`;
CREATE TABLE `profile_backgrounds`  (
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rank_requests
-- ----------------------------
DROP TABLE IF EXISTS `rank_requests`;
CREATE TABLE `rank_requests`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `blacklisted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bid`(`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rap_logs
-- ----------------------------
DROP TABLE IF EXISTS `rap_logs`;
CREATE TABLE `rap_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` int(11) NOT NULL,
  `through` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for remember
-- ----------------------------
DROP TABLE IF EXISTS `remember`;
CREATE TABLE `remember`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `series_identifier` int(11) NULL DEFAULT NULL,
  `token_sha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `chatlog` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) NOT NULL,
  `assigned` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rx_beatmap_playcount
-- ----------------------------
DROP TABLE IF EXISTS `rx_beatmap_playcount`;
CREATE TABLE `rx_beatmap_playcount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NULL DEFAULT NULL,
  `game_mode` int(11) NULL DEFAULT NULL,
  `playcount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `playcount_index`(`user_id`, `beatmap_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rx_stats
-- ----------------------------
DROP TABLE IF EXISTS `rx_stats`;
CREATE TABLE `rx_stats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username_aka` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `favourite_mode` int(11) NOT NULL DEFAULT 0,
  `level_std` int(11) NOT NULL DEFAULT 1,
  `level_taiko` int(11) NOT NULL DEFAULT 1,
  `level_mania` int(11) NOT NULL DEFAULT 1,
  `level_ctb` int(11) NOT NULL DEFAULT 1,
  `total_score_std` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko` int(11) NOT NULL DEFAULT 0,
  `total_score_mania` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_std` int(11) NOT NULL DEFAULT 0,
  `total_hits_taiko` int(11) NOT NULL DEFAULT 0,
  `total_hits_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_mania` int(11) NOT NULL DEFAULT 0,
  `playtime_std` int(11) NOT NULL DEFAULT 0,
  `playtime_taiko` int(11) NOT NULL DEFAULT 0,
  `playtime_mania` int(11) NOT NULL DEFAULT 0,
  `playtime_ctb` int(11) NOT NULL DEFAULT 0,
  `ranked_score_std` bigint(11) NOT NULL DEFAULT 0,
  `ranked_score_taiko` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb` int(11) NOT NULL DEFAULT 0,
  `avg_accuracy_std` double NOT NULL DEFAULT 0,
  `avg_accuracy_taiko` double NOT NULL DEFAULT 0,
  `avg_accuracy_mania` double NOT NULL DEFAULT 0,
  `avg_accuracy_ctb` double NOT NULL DEFAULT 0,
  `playcount_std` int(11) NOT NULL DEFAULT 0,
  `playcount_taiko` int(11) NOT NULL DEFAULT 0,
  `playcount_mania` int(11) NOT NULL DEFAULT 0,
  `playcount_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_std` int(11) NOT NULL DEFAULT 0,
  `pp_mania` int(11) NOT NULL DEFAULT 0,
  `pp_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_taiko` int(11) NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT 0,
  `ppboard` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rx_stats
-- ----------------------------
INSERT INTO `rx_stats` VALUES (999, 'ChinoBot', 'ChinoBot', 'black', '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CN', 1, 1);

-- ----------------------------
-- Table structure for scores
-- ----------------------------
DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) NULL DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `full_combo` tinyint(1) NOT NULL DEFAULT 0,
  `mods` int(11) NOT NULL DEFAULT 0,
  `300_count` int(11) NOT NULL DEFAULT 0,
  `100_count` int(11) NOT NULL DEFAULT 0,
  `50_count` int(11) NOT NULL DEFAULT 0,
  `katus_count` int(11) NOT NULL DEFAULT 0,
  `gekis_count` int(11) NOT NULL DEFAULT 0,
  `misses_count` int(11) NOT NULL DEFAULT 0,
  `time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT 0,
  `completed` tinyint(11) NOT NULL DEFAULT 0,
  `accuracy` float(15, 12) NULL DEFAULT NULL,
  `pp` double NULL DEFAULT 0,
  `playtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scores_ap
-- ----------------------------
DROP TABLE IF EXISTS `scores_ap`;
CREATE TABLE `scores_ap`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) NULL DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `full_combo` tinyint(1) NOT NULL DEFAULT 0,
  `mods` int(11) NOT NULL DEFAULT 0,
  `300_count` int(11) NOT NULL DEFAULT 0,
  `100_count` int(11) NOT NULL DEFAULT 0,
  `50_count` int(11) NOT NULL DEFAULT 0,
  `katus_count` int(11) NOT NULL DEFAULT 0,
  `gekis_count` int(11) NOT NULL DEFAULT 0,
  `misses_count` int(11) NOT NULL DEFAULT 0,
  `time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT 0,
  `completed` tinyint(11) NOT NULL DEFAULT 0,
  `accuracy` float(15, 12) NULL DEFAULT NULL,
  `pp` double NULL DEFAULT 0,
  `playtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scores_relax
-- ----------------------------
DROP TABLE IF EXISTS `scores_relax`;
CREATE TABLE `scores_relax`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) NULL DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `full_combo` tinyint(1) NOT NULL DEFAULT 0,
  `mods` int(11) NOT NULL DEFAULT 0,
  `300_count` int(11) NOT NULL DEFAULT 0,
  `100_count` int(11) NOT NULL DEFAULT 0,
  `50_count` int(11) NOT NULL DEFAULT 0,
  `katus_count` int(11) NOT NULL DEFAULT 0,
  `gekis_count` int(11) NOT NULL DEFAULT 0,
  `misses_count` int(11) NOT NULL DEFAULT 0,
  `time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT 0,
  `completed` tinyint(11) NOT NULL DEFAULT 0,
  `accuracy` float(15, 12) NULL DEFAULT NULL,
  `pp` double NULL DEFAULT 0,
  `playtime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_settings
-- ----------------------------
DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE `system_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT 0,
  `value_string` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_settings
-- ----------------------------
INSERT INTO `system_settings` VALUES (1, 'website_maintenance', 0, '');
INSERT INTO `system_settings` VALUES (2, 'game_maintenance', 0, '');
INSERT INTO `system_settings` VALUES (3, 'website_global_alert', 0, '');
INSERT INTO `system_settings` VALUES (4, 'website_home_alert', 0, '');
INSERT INTO `system_settings` VALUES (5, 'registrations_enabled', 1, '');
INSERT INTO `system_settings` VALUES (6, 'ccreation_enabled', 1, '');

-- ----------------------------
-- Table structure for tokens
-- ----------------------------
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `privileges` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `private` tinyint(4) NOT NULL,
  `last_updated` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_badges
-- ----------------------------
DROP TABLE IF EXISTS `user_badges`;
CREATE TABLE `user_badges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `badge` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_badges
-- ----------------------------
INSERT INTO `user_badges` VALUES (1, 1000, 2);
INSERT INTO `user_badges` VALUES (2, 1000, 4);
INSERT INTO `user_badges` VALUES (3, 1000, 5);
INSERT INTO `user_badges` VALUES (4, 1000, 30);
INSERT INTO `user_badges` VALUES (6, 999, 1005);

-- ----------------------------
-- Table structure for user_clans
-- ----------------------------
DROP TABLE IF EXISTS `user_clans`;
CREATE TABLE `user_clans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `perms` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `osuver` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username_safe` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ban_datetime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password_md5` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_datetime` int(10) NOT NULL,
  `rank` tinyint(1) NOT NULL DEFAULT 1,
  `allowed` tinyint(1) NOT NULL DEFAULT 1,
  `latest_activity` int(10) NOT NULL DEFAULT 0,
  `silence_end` int(11) NOT NULL DEFAULT 0,
  `silence_reason` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password_version` tinyint(4) NOT NULL DEFAULT 1,
  `privileges` bigint(11) NOT NULL,
  `donor_expire` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `achievements_version` int(11) NOT NULL DEFAULT 4,
  `achievements_0` int(11) NOT NULL DEFAULT 1,
  `achievements_1` int(11) NOT NULL DEFAULT 1,
  `notes` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `last_session` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'check',
  `multiaccount_flag` int(255) UNSIGNED NOT NULL DEFAULT 0,
  `related_accounts` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `original_id` int(255) NULL DEFAULT NULL,
  `multiaccount_count` int(255) UNSIGNED NOT NULL DEFAULT 0,
  `banned_handler` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (999, NULL, 'ChinoBot', 'chinobot', '0', '*0', '5e/AceVLS7jJtxTJA1U6rmVqrWREYg==', '940857703@qq.com', 1590746851, 4, 1, 1569775752, 0, '', 1, 3145727, 2147483647, 0, 0, 1, 1, '', 'check', 0, '', NULL, 0, '');

-- ----------------------------
-- Table structure for users_achievements
-- ----------------------------
DROP TABLE IF EXISTS `users_achievements`;
CREATE TABLE `users_achievements`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_beatmap_playcount
-- ----------------------------
DROP TABLE IF EXISTS `users_beatmap_playcount`;
CREATE TABLE `users_beatmap_playcount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NULL DEFAULT NULL,
  `game_mode` int(11) NULL DEFAULT NULL,
  `playcount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `playcount_index`(`user_id`, `beatmap_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_relationships
-- ----------------------------
DROP TABLE IF EXISTS `users_relationships`;
CREATE TABLE `users_relationships`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_stats
-- ----------------------------
DROP TABLE IF EXISTS `users_stats`;
CREATE TABLE `users_stats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username_aka` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ranked_score_std` bigint(20) NULL DEFAULT 0,
  `playcount_std` int(11) NOT NULL DEFAULT 0,
  `total_score_std` bigint(20) NULL DEFAULT 0,
  `replays_watched_std` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ranked_score_taiko` bigint(20) NULL DEFAULT 0,
  `playcount_taiko` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko` bigint(20) NULL DEFAULT 0,
  `replays_watched_taiko` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb` bigint(20) NULL DEFAULT 0,
  `playcount_ctb` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb` bigint(20) NULL DEFAULT 0,
  `replays_watched_ctb` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania` bigint(20) NULL DEFAULT 0,
  `playcount_mania` int(11) NOT NULL DEFAULT 0,
  `total_score_mania` bigint(20) NULL DEFAULT 0,
  `replays_watched_mania` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_hits_std` int(11) NOT NULL DEFAULT 0,
  `total_hits_taiko` int(11) NOT NULL DEFAULT 0,
  `total_hits_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_mania` int(11) NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT 0,
  `ppboard` int(11) NOT NULL DEFAULT 0,
  `show_country` tinyint(4) NOT NULL DEFAULT 1,
  `level_std` int(11) NOT NULL DEFAULT 1,
  `level_taiko` int(11) NOT NULL DEFAULT 1,
  `level_ctb` int(11) NOT NULL DEFAULT 1,
  `level_mania` int(11) NOT NULL DEFAULT 1,
  `playtime_std` int(11) NOT NULL DEFAULT 0,
  `playtime_taiko` int(11) NOT NULL DEFAULT 0,
  `playtime_ctb` int(11) NOT NULL DEFAULT 0,
  `playtime_mania` int(11) NOT NULL DEFAULT 0,
  `avg_accuracy_std` float(15, 12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_taiko` float(15, 12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_ctb` float(15, 12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_mania` float(15, 12) NOT NULL DEFAULT 0.000000000000,
  `pp_std` int(11) NOT NULL DEFAULT 0,
  `pp_taiko` int(11) NOT NULL DEFAULT 0,
  `pp_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_mania` int(11) NOT NULL DEFAULT 0,
  `badges_shown` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1,0,0,0,0,0',
  `safe_title` tinyint(4) NOT NULL DEFAULT 0,
  `userpage_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `play_style` smallint(6) NOT NULL DEFAULT 0,
  `favourite_mode` tinyint(4) NOT NULL DEFAULT 0,
  `prefer_relax` int(11) NOT NULL DEFAULT 0,
  `custom_badge_icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `custom_badge_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `can_custom_badge` tinyint(1) NOT NULL DEFAULT 0,
  `show_custom_badge` tinyint(1) NOT NULL DEFAULT 0,
  `current_status` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Offline',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_stats
-- ----------------------------
INSERT INTO `users_stats` VALUES (999, 'ChinoBot', 'ChinoBot', 'black', '', 0, 26956, 237228316533, 6228506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CN', 1, 0, 1, 102, 1, 1, 1, 0, 0, 0, 0, 0.000000000000, 0.000000000000, 0.000000000000, 0.000000000000, 0, 0, 0, 0, '3,4,11,0,0,0', 0, NULL, 0, 0, 0, '', '', 1, 1, '');

SET FOREIGN_KEY_CHECKS = 1;
