/*
 Navicat Premium Data Transfer

 Source Server         : vm_MySQL5.7_localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 24/09/2021 08:42:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor`  (
  `actor_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_id`) USING BTREE,
  INDEX `idx_actor_last_name`(`last_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actor
-- ----------------------------
INSERT INTO `actor` VALUES (1, 'PENELOPE', 'GUINESS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (2, 'NICK', 'WAHLBERG', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (3, 'ED', 'CHASE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (4, 'JENNIFER', 'DAVIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (5, 'JOHNNY', 'LOLLOBRIGIDA', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (6, 'BETTE', 'NICHOLSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (7, 'GRACE', 'MOSTEL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (8, 'MATTHEW', 'JOHANSSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (9, 'JOE', 'SWANK', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (10, 'CHRISTIAN', 'GABLE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (11, 'ZERO', 'CAGE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (12, 'KARL', 'BERRY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (13, 'UMA', 'WOOD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (14, 'VIVIEN', 'BERGEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (15, 'CUBA', 'OLIVIER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (16, 'FRED', 'COSTNER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (17, 'HELEN', 'VOIGHT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (18, 'DAN', 'TORN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (19, 'BOB', 'FAWCETT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (20, 'LUCILLE', 'TRACY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (21, 'KIRSTEN', 'PALTROW', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (22, 'ELVIS', 'MARX', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (23, 'SANDRA', 'KILMER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (24, 'CAMERON', 'STREEP', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (25, 'KEVIN', 'BLOOM', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (26, 'RIP', 'CRAWFORD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (27, 'JULIA', 'MCQUEEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (28, 'WOODY', 'HOFFMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (29, 'ALEC', 'WAYNE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (30, 'SANDRA', 'PECK', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (31, 'SISSY', 'SOBIESKI', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (32, 'TIM', 'HACKMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (33, 'MILLA', 'PECK', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (34, 'AUDREY', 'OLIVIER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (35, 'JUDY', 'DEAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (36, 'BURT', 'DUKAKIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (37, 'VAL', 'BOLGER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (38, 'TOM', 'MCKELLEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (39, 'GOLDIE', 'BRODY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (40, 'JOHNNY', 'CAGE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (41, 'JODIE', 'DEGENERES', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (42, 'TOM', 'MIRANDA', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (43, 'KIRK', 'JOVOVICH', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (44, 'NICK', 'STALLONE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (45, 'REESE', 'KILMER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (46, 'PARKER', 'GOLDBERG', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (47, 'JULIA', 'BARRYMORE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (48, 'FRANCES', 'DAY-LEWIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (49, 'ANNE', 'CRONYN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (50, 'NATALIE', 'HOPKINS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (51, 'GARY', 'PHOENIX', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (52, 'CARMEN', 'HUNT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (53, 'MENA', 'TEMPLE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (54, 'PENELOPE', 'PINKETT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (55, 'FAY', 'KILMER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (56, 'DAN', 'HARRIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (57, 'JUDE', 'CRUISE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (58, 'CHRISTIAN', 'AKROYD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (59, 'DUSTIN', 'TAUTOU', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (60, 'HENRY', 'BERRY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (61, 'CHRISTIAN', 'NEESON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (62, 'JAYNE', 'NEESON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (63, 'CAMERON', 'WRAY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (64, 'RAY', 'JOHANSSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (65, 'ANGELA', 'HUDSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (66, 'MARY', 'TANDY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (67, 'JESSICA', 'BAILEY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (68, 'RIP', 'WINSLET', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (69, 'KENNETH', 'PALTROW', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (70, 'MICHELLE', 'MCCONAUGHEY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (71, 'ADAM', 'GRANT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (72, 'SEAN', 'WILLIAMS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (73, 'GARY', 'PENN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (74, 'MILLA', 'KEITEL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (75, 'BURT', 'POSEY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (76, 'ANGELINA', 'ASTAIRE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (77, 'CARY', 'MCCONAUGHEY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (78, 'GROUCHO', 'SINATRA', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (79, 'MAE', 'HOFFMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (80, 'RALPH', 'CRUZ', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (81, 'SCARLETT', 'DAMON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (82, 'WOODY', 'JOLIE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (83, 'BEN', 'WILLIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (84, 'JAMES', 'PITT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (85, 'MINNIE', 'ZELLWEGER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (86, 'GREG', 'CHAPLIN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (87, 'SPENCER', 'PECK', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (88, 'KENNETH', 'PESCI', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (89, 'CHARLIZE', 'DENCH', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (90, 'SEAN', 'GUINESS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (91, 'CHRISTOPHER', 'BERRY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (92, 'KIRSTEN', 'AKROYD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (93, 'ELLEN', 'PRESLEY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (94, 'KENNETH', 'TORN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (95, 'DARYL', 'WAHLBERG', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (96, 'GENE', 'WILLIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (97, 'MEG', 'HAWKE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (98, 'CHRIS', 'BRIDGES', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (99, 'JIM', 'MOSTEL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (100, 'SPENCER', 'DEPP', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (101, 'SUSAN', 'DAVIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (102, 'WALTER', 'TORN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (103, 'MATTHEW', 'LEIGH', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (104, 'PENELOPE', 'CRONYN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (105, 'SIDNEY', 'CROWE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (106, 'GROUCHO', 'DUNST', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (107, 'GINA', 'DEGENERES', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (108, 'WARREN', 'NOLTE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (109, 'SYLVESTER', 'DERN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (110, 'SUSAN', 'DAVIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (111, 'CAMERON', 'ZELLWEGER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (112, 'RUSSELL', 'BACALL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (113, 'MORGAN', 'HOPKINS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (114, 'MORGAN', 'MCDORMAND', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (115, 'HARRISON', 'BALE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (116, 'DAN', 'STREEP', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (117, 'RENEE', 'TRACY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (118, 'CUBA', 'ALLEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (119, 'WARREN', 'JACKMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (120, 'PENELOPE', 'MONROE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (121, 'LIZA', 'BERGMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (122, 'SALMA', 'NOLTE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (123, 'JULIANNE', 'DENCH', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (124, 'SCARLETT', 'BENING', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (125, 'ALBERT', 'NOLTE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (126, 'FRANCES', 'TOMEI', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (127, 'KEVIN', 'GARLAND', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (128, 'CATE', 'MCQUEEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (129, 'DARYL', 'CRAWFORD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (130, 'GRETA', 'KEITEL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (131, 'JANE', 'JACKMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (132, 'ADAM', 'HOPPER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (133, 'RICHARD', 'PENN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (134, 'GENE', 'HOPKINS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (135, 'RITA', 'REYNOLDS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (136, 'ED', 'MANSFIELD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (137, 'MORGAN', 'WILLIAMS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (138, 'LUCILLE', 'DEE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (139, 'EWAN', 'GOODING', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (140, 'WHOOPI', 'HURT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (141, 'CATE', 'HARRIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (142, 'JADA', 'RYDER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (143, 'RIVER', 'DEAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (144, 'ANGELA', 'WITHERSPOON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (145, 'KIM', 'ALLEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (146, 'ALBERT', 'JOHANSSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (147, 'FAY', 'WINSLET', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (148, 'EMILY', 'DEE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (149, 'RUSSELL', 'TEMPLE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (150, 'JAYNE', 'NOLTE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (151, 'GEOFFREY', 'HESTON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (152, 'BEN', 'HARRIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (153, 'MINNIE', 'KILMER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (154, 'MERYL', 'GIBSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (155, 'IAN', 'TANDY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (156, 'FAY', 'WOOD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (157, 'GRETA', 'MALDEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (158, 'VIVIEN', 'BASINGER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (159, 'LAURA', 'BRODY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (160, 'CHRIS', 'DEPP', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (161, 'HARVEY', 'HOPE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (162, 'OPRAH', 'KILMER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (163, 'CHRISTOPHER', 'WEST', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (164, 'HUMPHREY', 'WILLIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (165, 'AL', 'GARLAND', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (166, 'NICK', 'DEGENERES', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (167, 'LAURENCE', 'BULLOCK', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (168, 'WILL', 'WILSON', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (169, 'KENNETH', 'HOFFMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (170, 'MENA', 'HOPPER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (171, 'OLYMPIA', 'PFEIFFER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (172, 'GROUCHO', 'WILLIAMS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (173, 'ALAN', 'DREYFUSS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (174, 'MICHAEL', 'BENING', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (175, 'WILLIAM', 'HACKMAN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (176, 'JON', 'CHASE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (177, 'GENE', 'MCKELLEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (178, 'LISA', 'MONROE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (179, 'ED', 'GUINESS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (180, 'JEFF', 'SILVERSTONE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (181, 'MATTHEW', 'CARREY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (182, 'DEBBIE', 'AKROYD', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (183, 'RUSSELL', 'CLOSE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (184, 'HUMPHREY', 'GARLAND', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (185, 'MICHAEL', 'BOLGER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (186, 'JULIA', 'ZELLWEGER', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (187, 'RENEE', 'BALL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (188, 'ROCK', 'DUKAKIS', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (189, 'CUBA', 'BIRCH', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (190, 'AUDREY', 'BAILEY', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (191, 'GREGORY', 'GOODING', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (192, 'JOHN', 'SUVARI', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (193, 'BURT', 'TEMPLE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (194, 'MERYL', 'ALLEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (195, 'JAYNE', 'SILVERSTONE', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (196, 'BELA', 'WALKEN', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (197, 'REESE', 'WEST', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (198, 'MARY', 'KEITEL', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (199, 'JULIA', 'FAWCETT', '2006-02-15 04:34:33');
INSERT INTO `actor` VALUES (200, 'THORA', 'TEMPLE', '2006-02-15 04:34:33');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foo_double` double NULL DEFAULT NULL,
  `foo_long` bigint(20) NULL DEFAULT NULL,
  `fool_big_decimal` decimal(19, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'liuyang1', '2021-06-18 08:34:11.000000', '《刷题一百遍》', NULL, NULL, NULL);
INSERT INTO `article` VALUES (2, 'liuyang2', '2021-06-18 09:34:11.000000', '《刷题一百遍》', NULL, NULL, NULL);
INSERT INTO `article` VALUES (3, 'liuyang3', '2021-06-18 10:34:11.000000', '《刷题一百遍》', NULL, NULL, NULL);
INSERT INTO `article` VALUES (4, 'liuyang4', '2021-06-18 11:34:11.000000', '《刷题一百遍》', NULL, NULL, NULL);
INSERT INTO `article` VALUES (5, 'liuyang5', '2021-06-18 12:34:11.000000', '《刷题一百遍》', NULL, NULL, NULL);
INSERT INTO `article` VALUES (6, 'liuyang6', '2021-06-18 15:34:11.000000', '《刷题一百遍》', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for rarticle
-- ----------------------------
DROP TABLE IF EXISTS `rarticle`;
CREATE TABLE `rarticle`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rarticle
-- ----------------------------
INSERT INTO `rarticle` VALUES (1, '张宇', '2021-06-26 11:29:04.836000', '《36讲》');
INSERT INTO `rarticle` VALUES (2, '张宇', '2021-06-26 11:29:04.836000', '《题源1000题》');
INSERT INTO `rarticle` VALUES (3, '张宇', '2021-06-26 11:29:04.836000', '《真题大全解》');

-- ----------------------------
-- Table structure for rarticle_category
-- ----------------------------
DROP TABLE IF EXISTS `rarticle_category`;
CREATE TABLE `rarticle_category`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rarticle_category
-- ----------------------------
INSERT INTO `rarticle_category` VALUES (1, '课本');
INSERT INTO `rarticle_category` VALUES (2, '习题集');
INSERT INTO `rarticle_category` VALUES (3, '真题');
INSERT INTO `rarticle_category` VALUES (4, '秘籍');

-- ----------------------------
-- Table structure for rarticle_comment
-- ----------------------------
DROP TABLE IF EXISTS `rarticle_comment`;
CREATE TABLE `rarticle_comment`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `FK29tvjckxcceg1q5r4wqh8p693`(`aid`) USING BTREE,
  CONSTRAINT `FK29tvjckxcceg1q5r4wqh8p693` FOREIGN KEY (`aid`) REFERENCES `rarticle` (`aid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rarticle_comment
-- ----------------------------
INSERT INTO `rarticle_comment` VALUES (1, '真难！', 1);
INSERT INTO `rarticle_comment` VALUES (2, '真好！', 1);
INSERT INTO `rarticle_comment` VALUES (3, '见多识广', 2);
INSERT INTO `rarticle_comment` VALUES (4, '才能见怪不怪', 2);

-- ----------------------------
-- Table structure for rarticle_data
-- ----------------------------
DROP TABLE IF EXISTS `rarticle_data`;
CREATE TABLE `rarticle_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_div7bb2rr017mqfgdltlpl6n9`(`article_id`) USING BTREE,
  CONSTRAINT `FKcc0drqwjx0xx6fwnyui21n6d8` FOREIGN KEY (`article_id`) REFERENCES `rarticle` (`aid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rarticle_data
-- ----------------------------
INSERT INTO `rarticle_data` VALUES (1, '二重积分大薯条', 1);
INSERT INTO `rarticle_data` VALUES (2, '千题之恋', 2);
INSERT INTO `rarticle_data` VALUES (3, '刷题百遍', 3);

-- ----------------------------
-- Table structure for rarticle_rarticlecategory
-- ----------------------------
DROP TABLE IF EXISTS `rarticle_rarticlecategory`;
CREATE TABLE `rarticle_rarticlecategory`  (
  `tid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  INDEX `FK689leqapajxf2qcvd9etjscsj`(`aid`) USING BTREE,
  INDEX `FKq63fatcjs2v26tp6gplb9pefw`(`tid`) USING BTREE,
  CONSTRAINT `FK689leqapajxf2qcvd9etjscsj` FOREIGN KEY (`aid`) REFERENCES `rarticle` (`aid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKq63fatcjs2v26tp6gplb9pefw` FOREIGN KEY (`tid`) REFERENCES `rarticle_category` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rarticle_rarticlecategory
-- ----------------------------
INSERT INTO `rarticle_rarticlecategory` VALUES (1, 1);
INSERT INTO `rarticle_rarticlecategory` VALUES (2, 2);
INSERT INTO `rarticle_rarticlecategory` VALUES (3, 3);
INSERT INTO `rarticle_rarticlecategory` VALUES (4, 1);
INSERT INTO `rarticle_rarticlecategory` VALUES (4, 2);
INSERT INTO `rarticle_rarticlecategory` VALUES (4, 3);

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stub` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `stub`(`stub`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES (4, 'a');
INSERT INTO `t_test` VALUES (5, 'b');
INSERT INTO `t_test` VALUES (6, 'c');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1428543416815456256, 18, 'xconfiguration@hotmail.com', 'liuyang1');
INSERT INTO `user` VALUES (1428543417306189824, 19, 'xconfiguration@hotmail.com', 'liuyang2');
INSERT INTO `user` VALUES (1428543417356521472, 20, 'xconfiguration@hotmail.com', 'liuyang');
INSERT INTO `user` VALUES (1428543417402658816, 30, 'xconfiguration@hotmail.com', 'liuyang');
INSERT INTO `user` VALUES (1428543417461379072, 38, 'xconfiguration@hotmail.com', 'liuyang5');
INSERT INTO `user` VALUES (1428619456921341952, 18, 'xconfiguration@hotmail.com', 'liuyang1');
INSERT INTO `user` VALUES (1428619457487572992, 19, 'xconfiguration@hotmail.com', 'liuyang2');
INSERT INTO `user` VALUES (1428619457546293248, 20, 'xconfiguration@hotmail.com', 'liuyang3');
INSERT INTO `user` VALUES (1428619457592430592, 30, 'xconfiguration@hotmail.com', 'liuyang4');
INSERT INTO `user` VALUES (1428619457638567936, 38, 'xconfiguration@hotmail.com', 'liuyang5');

SET FOREIGN_KEY_CHECKS = 1;
