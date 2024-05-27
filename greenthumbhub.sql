/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : greenthumbhub

 Target Server Type    : MariaDB
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 27/05/2024 10:06:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NULL DEFAULT NULL,
  `active_home` bit(1) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, b'1', b'1', 'https://i.pinimg.com/564x/67/cc/62/67cc62ac89c1fb8e7a00f9028203bcaa.jpg', 'Sen đá');
INSERT INTO `category` VALUES (2, b'1', b'1', 'https://i.pinimg.com/564x/51/5e/03/515e03318237246e5ae7a758a6bbaef8.jpg', 'Xương rồng');
INSERT INTO `category` VALUES (3, b'1', b'1', 'https://i.pinimg.com/564x/b3/75/de/b375deac66f5962350d4a30b4d0c0134.jpg', 'Kiểng lá');

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creation_date` datetime(6) NULL DEFAULT NULL,
  `discount_percentage` double NULL DEFAULT NULL,
  `end_date` datetime(6) NULL DEFAULT NULL,
  `start_date` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_i14w897ofrtv43vbx44rtv01u`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES (1, '11', b'1', 'test', '2024-05-27 01:11:58.000000', 20, '2024-05-31 01:12:09.000000', '2024-05-27 01:12:21.000000');

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`  (
  `districtid` bigint(20) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provinceid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`districtid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 974 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES (1, 'Ba Đình', 'Quận', 1);
INSERT INTO `districts` VALUES (2, 'Hoàn Kiếm', 'Quận', 1);
INSERT INTO `districts` VALUES (3, 'Tây Hồ', 'Quận', 1);
INSERT INTO `districts` VALUES (4, 'Long Biên', 'Quận', 1);
INSERT INTO `districts` VALUES (5, 'Cầu Giấy', 'Quận', 1);
INSERT INTO `districts` VALUES (6, 'Đống Đa', 'Quận', 1);
INSERT INTO `districts` VALUES (7, 'Hai Bà Trưng', 'Quận', 1);
INSERT INTO `districts` VALUES (8, 'Hoàng Mai', 'Quận', 1);
INSERT INTO `districts` VALUES (9, 'Thanh Xuân', 'Quận', 1);
INSERT INTO `districts` VALUES (16, 'Sóc Sơn', 'Huyện', 1);
INSERT INTO `districts` VALUES (17, 'Đông Anh', 'Huyện', 1);
INSERT INTO `districts` VALUES (18, 'Gia Lâm', 'Huyện', 1);
INSERT INTO `districts` VALUES (19, 'Nam Từ Liêm', 'Quận', 1);
INSERT INTO `districts` VALUES (20, 'Thanh Trì', 'Huyện', 1);
INSERT INTO `districts` VALUES (21, 'Bắc Từ Liêm', 'Quận', 1);
INSERT INTO `districts` VALUES (24, 'Hà Giang', 'Thành phố', 2);
INSERT INTO `districts` VALUES (26, 'Đồng Văn', 'Huyện', 2);
INSERT INTO `districts` VALUES (27, 'Mèo Vạc', 'Huyện', 2);
INSERT INTO `districts` VALUES (28, 'Yên Minh', 'Huyện', 2);
INSERT INTO `districts` VALUES (29, 'Quản Bạ', 'Huyện', 2);
INSERT INTO `districts` VALUES (30, 'Vị Xuyên', 'Huyện', 2);
INSERT INTO `districts` VALUES (31, 'Bắc Mê', 'Huyện', 2);
INSERT INTO `districts` VALUES (32, 'Hoàng Su Phì', 'Huyện', 2);
INSERT INTO `districts` VALUES (33, 'Xín Mần', 'Huyện', 2);
INSERT INTO `districts` VALUES (34, 'Bắc Quang', 'Huyện', 2);
INSERT INTO `districts` VALUES (35, 'Quang Bình', 'Huyện', 2);
INSERT INTO `districts` VALUES (40, 'Cao Bằng', 'Thành phố', 4);
INSERT INTO `districts` VALUES (42, 'Bảo Lâm', 'Huyện', 4);
INSERT INTO `districts` VALUES (43, 'Bảo Lạc', 'Huyện', 4);
INSERT INTO `districts` VALUES (45, 'Hà Quảng', 'Huyện', 4);
INSERT INTO `districts` VALUES (47, 'Trùng Khánh', 'Huyện', 4);
INSERT INTO `districts` VALUES (48, 'Hạ Lang', 'Huyện', 4);
INSERT INTO `districts` VALUES (49, 'Quảng Hòa', 'Huyện', 4);
INSERT INTO `districts` VALUES (51, 'Hoà An', 'Huyện', 4);
INSERT INTO `districts` VALUES (52, 'Nguyên Bình', 'Huyện', 4);
INSERT INTO `districts` VALUES (53, 'Thạch An', 'Huyện', 4);
INSERT INTO `districts` VALUES (58, 'Bắc Kạn', 'Thành phố', 6);
INSERT INTO `districts` VALUES (60, 'Pác Nặm', 'Huyện', 6);
INSERT INTO `districts` VALUES (61, 'Ba Bể', 'Huyện', 6);
INSERT INTO `districts` VALUES (62, 'Ngân Sơn', 'Huyện', 6);
INSERT INTO `districts` VALUES (63, 'Bạch Thông', 'Huyện', 6);
INSERT INTO `districts` VALUES (64, 'Chợ Đồn', 'Huyện', 6);
INSERT INTO `districts` VALUES (65, 'Chợ Mới', 'Huyện', 6);
INSERT INTO `districts` VALUES (66, 'Na Rì', 'Huyện', 6);
INSERT INTO `districts` VALUES (70, 'Tuyên Quang', 'Thành phố', 8);
INSERT INTO `districts` VALUES (71, 'Lâm Bình', 'Huyện', 8);
INSERT INTO `districts` VALUES (72, 'Na Hang', 'Huyện', 8);
INSERT INTO `districts` VALUES (73, 'Chiêm Hóa', 'Huyện', 8);
INSERT INTO `districts` VALUES (74, 'Hàm Yên', 'Huyện', 8);
INSERT INTO `districts` VALUES (75, 'Yên Sơn', 'Huyện', 8);
INSERT INTO `districts` VALUES (76, 'Sơn Dương', 'Huyện', 8);
INSERT INTO `districts` VALUES (80, 'Lào Cai', 'Thành phố', 10);
INSERT INTO `districts` VALUES (82, 'Bát Xát', 'Huyện', 10);
INSERT INTO `districts` VALUES (83, 'Mường Khương', 'Huyện', 10);
INSERT INTO `districts` VALUES (84, 'Si Ma Cai', 'Huyện', 10);
INSERT INTO `districts` VALUES (85, 'Bắc Hà', 'Huyện', 10);
INSERT INTO `districts` VALUES (86, 'Bảo Thắng', 'Huyện', 10);
INSERT INTO `districts` VALUES (87, 'Bảo Yên', 'Huyện', 10);
INSERT INTO `districts` VALUES (88, 'Sa Pa', 'Thị xã', 10);
INSERT INTO `districts` VALUES (89, 'Văn Bàn', 'Huyện', 10);
INSERT INTO `districts` VALUES (94, 'Điện Biên Phủ', 'Thành phố', 11);
INSERT INTO `districts` VALUES (95, 'Mường Lay', 'Thị xã', 11);
INSERT INTO `districts` VALUES (96, 'Mường Nhé', 'Huyện', 11);
INSERT INTO `districts` VALUES (97, 'Mường Chà', 'Huyện', 11);
INSERT INTO `districts` VALUES (98, 'Tủa Chùa', 'Huyện', 11);
INSERT INTO `districts` VALUES (99, 'Tuần Giáo', 'Huyện', 11);
INSERT INTO `districts` VALUES (100, 'Điện Biên', 'Huyện', 11);
INSERT INTO `districts` VALUES (101, 'Điện Biên Đông', 'Huyện', 11);
INSERT INTO `districts` VALUES (102, 'Mường Ảng', 'Huyện', 11);
INSERT INTO `districts` VALUES (103, 'Nậm Pồ', 'Huyện', 11);
INSERT INTO `districts` VALUES (105, 'Lai Châu', 'Thành phố', 12);
INSERT INTO `districts` VALUES (106, 'Tam Đường', 'Huyện', 12);
INSERT INTO `districts` VALUES (107, 'Mường Tè', 'Huyện', 12);
INSERT INTO `districts` VALUES (108, 'Sìn Hồ', 'Huyện', 12);
INSERT INTO `districts` VALUES (109, 'Phong Thổ', 'Huyện', 12);
INSERT INTO `districts` VALUES (110, 'Than Uyên', 'Huyện', 12);
INSERT INTO `districts` VALUES (111, 'Tân Uyên', 'Huyện', 12);
INSERT INTO `districts` VALUES (112, 'Nậm Nhùn', 'Huyện', 12);
INSERT INTO `districts` VALUES (116, 'Sơn La', 'Thành phố', 14);
INSERT INTO `districts` VALUES (118, 'Quỳnh Nhai', 'Huyện', 14);
INSERT INTO `districts` VALUES (119, 'Thuận Châu', 'Huyện', 14);
INSERT INTO `districts` VALUES (120, 'Mường La', 'Huyện', 14);
INSERT INTO `districts` VALUES (121, 'Bắc Yên', 'Huyện', 14);
INSERT INTO `districts` VALUES (122, 'Phù Yên', 'Huyện', 14);
INSERT INTO `districts` VALUES (123, 'Mộc Châu', 'Huyện', 14);
INSERT INTO `districts` VALUES (124, 'Yên Châu', 'Huyện', 14);
INSERT INTO `districts` VALUES (125, 'Mai Sơn', 'Huyện', 14);
INSERT INTO `districts` VALUES (126, 'Sông Mã', 'Huyện', 14);
INSERT INTO `districts` VALUES (127, 'Sốp Cộp', 'Huyện', 14);
INSERT INTO `districts` VALUES (128, 'Vân Hồ', 'Huyện', 14);
INSERT INTO `districts` VALUES (132, 'Yên Bái', 'Thành phố', 15);
INSERT INTO `districts` VALUES (133, 'Nghĩa Lộ', 'Thị xã', 15);
INSERT INTO `districts` VALUES (135, 'Lục Yên', 'Huyện', 15);
INSERT INTO `districts` VALUES (136, 'Văn Yên', 'Huyện', 15);
INSERT INTO `districts` VALUES (137, 'Mù Căng Chải', 'Huyện', 15);
INSERT INTO `districts` VALUES (138, 'Trấn Yên', 'Huyện', 15);
INSERT INTO `districts` VALUES (139, 'Trạm Tấu', 'Huyện', 15);
INSERT INTO `districts` VALUES (140, 'Văn Chấn', 'Huyện', 15);
INSERT INTO `districts` VALUES (141, 'Yên Bình', 'Huyện', 15);
INSERT INTO `districts` VALUES (148, 'Hòa Bình', 'Thành phố', 17);
INSERT INTO `districts` VALUES (150, 'Đà Bắc', 'Huyện', 17);
INSERT INTO `districts` VALUES (152, 'Lương Sơn', 'Huyện', 17);
INSERT INTO `districts` VALUES (153, 'Kim Bôi', 'Huyện', 17);
INSERT INTO `districts` VALUES (154, 'Cao Phong', 'Huyện', 17);
INSERT INTO `districts` VALUES (155, 'Tân Lạc', 'Huyện', 17);
INSERT INTO `districts` VALUES (156, 'Mai Châu', 'Huyện', 17);
INSERT INTO `districts` VALUES (157, 'Lạc Sơn', 'Huyện', 17);
INSERT INTO `districts` VALUES (158, 'Yên Thủy', 'Huyện', 17);
INSERT INTO `districts` VALUES (159, 'Lạc Thủy', 'Huyện', 17);
INSERT INTO `districts` VALUES (164, 'Thái Nguyên', 'Thành phố', 19);
INSERT INTO `districts` VALUES (165, 'Sông Công', 'Thành phố', 19);
INSERT INTO `districts` VALUES (167, 'Định Hóa', 'Huyện', 19);
INSERT INTO `districts` VALUES (168, 'Phú Lương', 'Huyện', 19);
INSERT INTO `districts` VALUES (169, 'Đồng Hỷ', 'Huyện', 19);
INSERT INTO `districts` VALUES (170, 'Võ Nhai', 'Huyện', 19);
INSERT INTO `districts` VALUES (171, 'Đại Từ', 'Huyện', 19);
INSERT INTO `districts` VALUES (172, 'Phổ Yên', 'Thành phố', 19);
INSERT INTO `districts` VALUES (173, 'Phú Bình', 'Huyện', 19);
INSERT INTO `districts` VALUES (178, 'Lạng Sơn', 'Thành phố', 20);
INSERT INTO `districts` VALUES (180, 'Tràng Định', 'Huyện', 20);
INSERT INTO `districts` VALUES (181, 'Bình Gia', 'Huyện', 20);
INSERT INTO `districts` VALUES (182, 'Văn Lãng', 'Huyện', 20);
INSERT INTO `districts` VALUES (183, 'Cao Lộc', 'Huyện', 20);
INSERT INTO `districts` VALUES (184, 'Văn Quan', 'Huyện', 20);
INSERT INTO `districts` VALUES (185, 'Bắc Sơn', 'Huyện', 20);
INSERT INTO `districts` VALUES (186, 'Hữu Lũng', 'Huyện', 20);
INSERT INTO `districts` VALUES (187, 'Chi Lăng', 'Huyện', 20);
INSERT INTO `districts` VALUES (188, 'Lộc Bình', 'Huyện', 20);
INSERT INTO `districts` VALUES (189, 'Đình Lập', 'Huyện', 20);
INSERT INTO `districts` VALUES (193, 'Hạ Long', 'Thành phố', 22);
INSERT INTO `districts` VALUES (194, 'Móng Cái', 'Thành phố', 22);
INSERT INTO `districts` VALUES (195, 'Cẩm Phả', 'Thành phố', 22);
INSERT INTO `districts` VALUES (196, 'Uông Bí', 'Thành phố', 22);
INSERT INTO `districts` VALUES (198, 'Bình Liêu', 'Huyện', 22);
INSERT INTO `districts` VALUES (199, 'Tiên Yên', 'Huyện', 22);
INSERT INTO `districts` VALUES (200, 'Đầm Hà', 'Huyện', 22);
INSERT INTO `districts` VALUES (201, 'Hải Hà', 'Huyện', 22);
INSERT INTO `districts` VALUES (202, 'Ba Chẽ', 'Huyện', 22);
INSERT INTO `districts` VALUES (203, 'Vân Đồn', 'Huyện', 22);
INSERT INTO `districts` VALUES (205, 'Đông Triều', 'Thị xã', 22);
INSERT INTO `districts` VALUES (206, 'Quảng Yên', 'Thị xã', 22);
INSERT INTO `districts` VALUES (207, 'Cô Tô', 'Huyện', 22);
INSERT INTO `districts` VALUES (213, 'Bắc Giang', 'Thành phố', 24);
INSERT INTO `districts` VALUES (215, 'Yên Thế', 'Huyện', 24);
INSERT INTO `districts` VALUES (216, 'Tân Yên', 'Huyện', 24);
INSERT INTO `districts` VALUES (217, 'Lạng Giang', 'Huyện', 24);
INSERT INTO `districts` VALUES (218, 'Lục Nam', 'Huyện', 24);
INSERT INTO `districts` VALUES (219, 'Lục Ngạn', 'Huyện', 24);
INSERT INTO `districts` VALUES (220, 'Sơn Động', 'Huyện', 24);
INSERT INTO `districts` VALUES (221, 'Yên Dũng', 'Huyện', 24);
INSERT INTO `districts` VALUES (222, 'Việt Yên', 'Huyện', 24);
INSERT INTO `districts` VALUES (223, 'Hiệp Hòa', 'Huyện', 24);
INSERT INTO `districts` VALUES (227, 'Việt Trì', 'Thành phố', 25);
INSERT INTO `districts` VALUES (228, 'Phú Thọ', 'Thị xã', 25);
INSERT INTO `districts` VALUES (230, 'Đoan Hùng', 'Huyện', 25);
INSERT INTO `districts` VALUES (231, 'Hạ Hoà', 'Huyện', 25);
INSERT INTO `districts` VALUES (232, 'Thanh Ba', 'Huyện', 25);
INSERT INTO `districts` VALUES (233, 'Phù Ninh', 'Huyện', 25);
INSERT INTO `districts` VALUES (234, 'Yên Lập', 'Huyện', 25);
INSERT INTO `districts` VALUES (235, 'Cẩm Khê', 'Huyện', 25);
INSERT INTO `districts` VALUES (236, 'Tam Nông', 'Huyện', 25);
INSERT INTO `districts` VALUES (237, 'Lâm Thao', 'Huyện', 25);
INSERT INTO `districts` VALUES (238, 'Thanh Sơn', 'Huyện', 25);
INSERT INTO `districts` VALUES (239, 'Thanh Thuỷ', 'Huyện', 25);
INSERT INTO `districts` VALUES (240, 'Tân Sơn', 'Huyện', 25);
INSERT INTO `districts` VALUES (243, 'Vĩnh Yên', 'Thành phố', 26);
INSERT INTO `districts` VALUES (244, 'Phúc Yên', 'Thành phố', 26);
INSERT INTO `districts` VALUES (246, 'Lập Thạch', 'Huyện', 26);
INSERT INTO `districts` VALUES (247, 'Tam Dương', 'Huyện', 26);
INSERT INTO `districts` VALUES (248, 'Tam Đảo', 'Huyện', 26);
INSERT INTO `districts` VALUES (249, 'Bình Xuyên', 'Huyện', 26);
INSERT INTO `districts` VALUES (250, 'Mê Linh', 'Huyện', 1);
INSERT INTO `districts` VALUES (251, 'Yên Lạc', 'Huyện', 26);
INSERT INTO `districts` VALUES (252, 'Vĩnh Tường', 'Huyện', 26);
INSERT INTO `districts` VALUES (253, 'Sông Lô', 'Huyện', 26);
INSERT INTO `districts` VALUES (256, 'Bắc Ninh', 'Thành phố', 27);
INSERT INTO `districts` VALUES (258, 'Yên Phong', 'Huyện', 27);
INSERT INTO `districts` VALUES (259, 'Quế Võ', 'Thị xã', 27);
INSERT INTO `districts` VALUES (260, 'Tiên Du', 'Huyện', 27);
INSERT INTO `districts` VALUES (261, 'Từ Sơn', 'Thành phố', 27);
INSERT INTO `districts` VALUES (262, 'Thuận Thành', 'Thị xã', 27);
INSERT INTO `districts` VALUES (263, 'Gia Bình', 'Huyện', 27);
INSERT INTO `districts` VALUES (264, 'Lương Tài', 'Huyện', 27);
INSERT INTO `districts` VALUES (268, 'Hà Đông', 'Quận', 1);
INSERT INTO `districts` VALUES (269, 'Sơn Tây', 'Thị xã', 1);
INSERT INTO `districts` VALUES (271, 'Ba Vì', 'Huyện', 1);
INSERT INTO `districts` VALUES (272, 'Phúc Thọ', 'Huyện', 1);
INSERT INTO `districts` VALUES (273, 'Đan Phượng', 'Huyện', 1);
INSERT INTO `districts` VALUES (274, 'Hoài Đức', 'Huyện', 1);
INSERT INTO `districts` VALUES (275, 'Quốc Oai', 'Huyện', 1);
INSERT INTO `districts` VALUES (276, 'Thạch Thất', 'Huyện', 1);
INSERT INTO `districts` VALUES (277, 'Chương Mỹ', 'Huyện', 1);
INSERT INTO `districts` VALUES (278, 'Thanh Oai', 'Huyện', 1);
INSERT INTO `districts` VALUES (279, 'Thường Tín', 'Huyện', 1);
INSERT INTO `districts` VALUES (280, 'Phú Xuyên', 'Huyện', 1);
INSERT INTO `districts` VALUES (281, 'Ứng Hòa', 'Huyện', 1);
INSERT INTO `districts` VALUES (282, 'Mỹ Đức', 'Huyện', 1);
INSERT INTO `districts` VALUES (288, 'Hải Dương', 'Thành phố', 30);
INSERT INTO `districts` VALUES (290, 'Chí Linh', 'Thành phố', 30);
INSERT INTO `districts` VALUES (291, 'Nam Sách', 'Huyện', 30);
INSERT INTO `districts` VALUES (292, 'Kinh Môn', 'Thị xã', 30);
INSERT INTO `districts` VALUES (293, 'Kim Thành', 'Huyện', 30);
INSERT INTO `districts` VALUES (294, 'Thanh Hà', 'Huyện', 30);
INSERT INTO `districts` VALUES (295, 'Cẩm Giàng', 'Huyện', 30);
INSERT INTO `districts` VALUES (296, 'Bình Giang', 'Huyện', 30);
INSERT INTO `districts` VALUES (297, 'Gia Lộc', 'Huyện', 30);
INSERT INTO `districts` VALUES (298, 'Tứ Kỳ', 'Huyện', 30);
INSERT INTO `districts` VALUES (299, 'Ninh Giang', 'Huyện', 30);
INSERT INTO `districts` VALUES (300, 'Thanh Miện', 'Huyện', 30);
INSERT INTO `districts` VALUES (303, 'Hồng Bàng', 'Quận', 31);
INSERT INTO `districts` VALUES (304, 'Ngô Quyền', 'Quận', 31);
INSERT INTO `districts` VALUES (305, 'Lê Chân', 'Quận', 31);
INSERT INTO `districts` VALUES (306, 'Hải An', 'Quận', 31);
INSERT INTO `districts` VALUES (307, 'Kiến An', 'Quận', 31);
INSERT INTO `districts` VALUES (308, 'Đồ Sơn', 'Quận', 31);
INSERT INTO `districts` VALUES (309, 'Dương Kinh', 'Quận', 31);
INSERT INTO `districts` VALUES (311, 'Thuỷ Nguyên', 'Huyện', 31);
INSERT INTO `districts` VALUES (312, 'An Dương', 'Huyện', 31);
INSERT INTO `districts` VALUES (313, 'An Lão', 'Huyện', 31);
INSERT INTO `districts` VALUES (314, 'Kiến Thuỵ', 'Huyện', 31);
INSERT INTO `districts` VALUES (315, 'Tiên Lãng', 'Huyện', 31);
INSERT INTO `districts` VALUES (316, 'Vĩnh Bảo', 'Huyện', 31);
INSERT INTO `districts` VALUES (317, 'Cát Hải', 'Huyện', 31);
INSERT INTO `districts` VALUES (318, 'Bạch Long Vĩ', 'Huyện', 31);
INSERT INTO `districts` VALUES (323, 'Hưng Yên', 'Thành phố', 33);
INSERT INTO `districts` VALUES (325, 'Văn Lâm', 'Huyện', 33);
INSERT INTO `districts` VALUES (326, 'Văn Giang', 'Huyện', 33);
INSERT INTO `districts` VALUES (327, 'Yên Mỹ', 'Huyện', 33);
INSERT INTO `districts` VALUES (328, 'Mỹ Hào', 'Thị xã', 33);
INSERT INTO `districts` VALUES (329, 'Ân Thi', 'Huyện', 33);
INSERT INTO `districts` VALUES (330, 'Khoái Châu', 'Huyện', 33);
INSERT INTO `districts` VALUES (331, 'Kim Động', 'Huyện', 33);
INSERT INTO `districts` VALUES (332, 'Tiên Lữ', 'Huyện', 33);
INSERT INTO `districts` VALUES (333, 'Phù Cừ', 'Huyện', 33);
INSERT INTO `districts` VALUES (336, 'Thái Bình', 'Thành phố', 34);
INSERT INTO `districts` VALUES (338, 'Quỳnh Phụ', 'Huyện', 34);
INSERT INTO `districts` VALUES (339, 'Hưng Hà', 'Huyện', 34);
INSERT INTO `districts` VALUES (340, 'Đông Hưng', 'Huyện', 34);
INSERT INTO `districts` VALUES (341, 'Thái Thụy', 'Huyện', 34);
INSERT INTO `districts` VALUES (342, 'Tiền Hải', 'Huyện', 34);
INSERT INTO `districts` VALUES (343, 'Kiến Xương', 'Huyện', 34);
INSERT INTO `districts` VALUES (344, 'Vũ Thư', 'Huyện', 34);
INSERT INTO `districts` VALUES (347, 'Phủ Lý', 'Thành phố', 35);
INSERT INTO `districts` VALUES (349, 'Duy Tiên', 'Thị xã', 35);
INSERT INTO `districts` VALUES (350, 'Kim Bảng', 'Huyện', 35);
INSERT INTO `districts` VALUES (351, 'Thanh Liêm', 'Huyện', 35);
INSERT INTO `districts` VALUES (352, 'Bình Lục', 'Huyện', 35);
INSERT INTO `districts` VALUES (353, 'Lý Nhân', 'Huyện', 35);
INSERT INTO `districts` VALUES (356, 'Nam Định', 'Thành phố', 36);
INSERT INTO `districts` VALUES (358, 'Mỹ Lộc', 'Huyện', 36);
INSERT INTO `districts` VALUES (359, 'Vụ Bản', 'Huyện', 36);
INSERT INTO `districts` VALUES (360, 'Ý Yên', 'Huyện', 36);
INSERT INTO `districts` VALUES (361, 'Nghĩa Hưng', 'Huyện', 36);
INSERT INTO `districts` VALUES (362, 'Nam Trực', 'Huyện', 36);
INSERT INTO `districts` VALUES (363, 'Trực Ninh', 'Huyện', 36);
INSERT INTO `districts` VALUES (364, 'Xuân Trường', 'Huyện', 36);
INSERT INTO `districts` VALUES (365, 'Giao Thủy', 'Huyện', 36);
INSERT INTO `districts` VALUES (366, 'Hải Hậu', 'Huyện', 36);
INSERT INTO `districts` VALUES (369, 'Ninh Bình', 'Thành phố', 37);
INSERT INTO `districts` VALUES (370, 'Tam Điệp', 'Thành phố', 37);
INSERT INTO `districts` VALUES (372, 'Nho Quan', 'Huyện', 37);
INSERT INTO `districts` VALUES (373, 'Gia Viễn', 'Huyện', 37);
INSERT INTO `districts` VALUES (374, 'Hoa Lư', 'Huyện', 37);
INSERT INTO `districts` VALUES (375, 'Yên Khánh', 'Huyện', 37);
INSERT INTO `districts` VALUES (376, 'Kim Sơn', 'Huyện', 37);
INSERT INTO `districts` VALUES (377, 'Yên Mô', 'Huyện', 37);
INSERT INTO `districts` VALUES (380, 'Thanh Hóa', 'Thành phố', 38);
INSERT INTO `districts` VALUES (381, 'Bỉm Sơn', 'Thị xã', 38);
INSERT INTO `districts` VALUES (382, 'Sầm Sơn', 'Thành phố', 38);
INSERT INTO `districts` VALUES (384, 'Mường Lát', 'Huyện', 38);
INSERT INTO `districts` VALUES (385, 'Quan Hóa', 'Huyện', 38);
INSERT INTO `districts` VALUES (386, 'Bá Thước', 'Huyện', 38);
INSERT INTO `districts` VALUES (387, 'Quan Sơn', 'Huyện', 38);
INSERT INTO `districts` VALUES (388, 'Lang Chánh', 'Huyện', 38);
INSERT INTO `districts` VALUES (389, 'Ngọc Lặc', 'Huyện', 38);
INSERT INTO `districts` VALUES (390, 'Cẩm Thủy', 'Huyện', 38);
INSERT INTO `districts` VALUES (391, 'Thạch Thành', 'Huyện', 38);
INSERT INTO `districts` VALUES (392, 'Hà Trung', 'Huyện', 38);
INSERT INTO `districts` VALUES (393, 'Vĩnh Lộc', 'Huyện', 38);
INSERT INTO `districts` VALUES (394, 'Yên Định', 'Huyện', 38);
INSERT INTO `districts` VALUES (395, 'Thọ Xuân', 'Huyện', 38);
INSERT INTO `districts` VALUES (396, 'Thường Xuân', 'Huyện', 38);
INSERT INTO `districts` VALUES (397, 'Triệu Sơn', 'Huyện', 38);
INSERT INTO `districts` VALUES (398, 'Thiệu Hóa', 'Huyện', 38);
INSERT INTO `districts` VALUES (399, 'Hoằng Hóa', 'Huyện', 38);
INSERT INTO `districts` VALUES (400, 'Hậu Lộc', 'Huyện', 38);
INSERT INTO `districts` VALUES (401, 'Nga Sơn', 'Huyện', 38);
INSERT INTO `districts` VALUES (402, 'Như Xuân', 'Huyện', 38);
INSERT INTO `districts` VALUES (403, 'Như Thanh', 'Huyện', 38);
INSERT INTO `districts` VALUES (404, 'Nông Cống', 'Huyện', 38);
INSERT INTO `districts` VALUES (405, 'Đông Sơn', 'Huyện', 38);
INSERT INTO `districts` VALUES (406, 'Quảng Xương', 'Huyện', 38);
INSERT INTO `districts` VALUES (407, 'Nghi Sơn', 'Thị xã', 38);
INSERT INTO `districts` VALUES (412, 'Vinh', 'Thành phố', 40);
INSERT INTO `districts` VALUES (413, 'Cửa Lò', 'Thị xã', 40);
INSERT INTO `districts` VALUES (414, 'Thái Hoà', 'Thị xã', 40);
INSERT INTO `districts` VALUES (415, 'Quế Phong', 'Huyện', 40);
INSERT INTO `districts` VALUES (416, 'Quỳ Châu', 'Huyện', 40);
INSERT INTO `districts` VALUES (417, 'Kỳ Sơn', 'Huyện', 40);
INSERT INTO `districts` VALUES (418, 'Tương Dương', 'Huyện', 40);
INSERT INTO `districts` VALUES (419, 'Nghĩa Đàn', 'Huyện', 40);
INSERT INTO `districts` VALUES (420, 'Quỳ Hợp', 'Huyện', 40);
INSERT INTO `districts` VALUES (421, 'Quỳnh Lưu', 'Huyện', 40);
INSERT INTO `districts` VALUES (422, 'Con Cuông', 'Huyện', 40);
INSERT INTO `districts` VALUES (423, 'Tân Kỳ', 'Huyện', 40);
INSERT INTO `districts` VALUES (424, 'Anh Sơn', 'Huyện', 40);
INSERT INTO `districts` VALUES (425, 'Diễn Châu', 'Huyện', 40);
INSERT INTO `districts` VALUES (426, 'Yên Thành', 'Huyện', 40);
INSERT INTO `districts` VALUES (427, 'Đô Lương', 'Huyện', 40);
INSERT INTO `districts` VALUES (428, 'Thanh Chương', 'Huyện', 40);
INSERT INTO `districts` VALUES (429, 'Nghi Lộc', 'Huyện', 40);
INSERT INTO `districts` VALUES (430, 'Nam Đàn', 'Huyện', 40);
INSERT INTO `districts` VALUES (431, 'Hưng Nguyên', 'Huyện', 40);
INSERT INTO `districts` VALUES (432, 'Hoàng Mai', 'Thị xã', 40);
INSERT INTO `districts` VALUES (436, 'Hà Tĩnh', 'Thành phố', 42);
INSERT INTO `districts` VALUES (437, 'Hồng Lĩnh', 'Thị xã', 42);
INSERT INTO `districts` VALUES (439, 'Hương Sơn', 'Huyện', 42);
INSERT INTO `districts` VALUES (440, 'Đức Thọ', 'Huyện', 42);
INSERT INTO `districts` VALUES (441, 'Vũ Quang', 'Huyện', 42);
INSERT INTO `districts` VALUES (442, 'Nghi Xuân', 'Huyện', 42);
INSERT INTO `districts` VALUES (443, 'Can Lộc', 'Huyện', 42);
INSERT INTO `districts` VALUES (444, 'Hương Khê', 'Huyện', 42);
INSERT INTO `districts` VALUES (445, 'Thạch Hà', 'Huyện', 42);
INSERT INTO `districts` VALUES (446, 'Cẩm Xuyên', 'Huyện', 42);
INSERT INTO `districts` VALUES (447, 'Kỳ Anh', 'Huyện', 42);
INSERT INTO `districts` VALUES (448, 'Lộc Hà', 'Huyện', 42);
INSERT INTO `districts` VALUES (449, 'Kỳ Anh', 'Thị xã', 42);
INSERT INTO `districts` VALUES (450, 'Đồng Hới', 'Thành phố', 44);
INSERT INTO `districts` VALUES (452, 'Minh Hóa', 'Huyện', 44);
INSERT INTO `districts` VALUES (453, 'Tuyên Hóa', 'Huyện', 44);
INSERT INTO `districts` VALUES (454, 'Quảng Trạch', 'Huyện', 44);
INSERT INTO `districts` VALUES (455, 'Bố Trạch', 'Huyện', 44);
INSERT INTO `districts` VALUES (456, 'Quảng Ninh', 'Huyện', 44);
INSERT INTO `districts` VALUES (457, 'Lệ Thủy', 'Huyện', 44);
INSERT INTO `districts` VALUES (458, 'Ba Đồn', 'Thị xã', 44);
INSERT INTO `districts` VALUES (461, 'Đông Hà', 'Thành phố', 45);
INSERT INTO `districts` VALUES (462, 'Quảng Trị', 'Thị xã', 45);
INSERT INTO `districts` VALUES (464, 'Vĩnh Linh', 'Huyện', 45);
INSERT INTO `districts` VALUES (465, 'Hướng Hóa', 'Huyện', 45);
INSERT INTO `districts` VALUES (466, 'Gio Linh', 'Huyện', 45);
INSERT INTO `districts` VALUES (467, 'Đa Krông', 'Huyện', 45);
INSERT INTO `districts` VALUES (468, 'Cam Lộ', 'Huyện', 45);
INSERT INTO `districts` VALUES (469, 'Triệu Phong', 'Huyện', 45);
INSERT INTO `districts` VALUES (470, 'Hải Lăng', 'Huyện', 45);
INSERT INTO `districts` VALUES (471, 'Cồn Cỏ', 'Huyện', 45);
INSERT INTO `districts` VALUES (474, 'Huế', 'Thành phố', 46);
INSERT INTO `districts` VALUES (476, 'Phong Điền', 'Huyện', 46);
INSERT INTO `districts` VALUES (477, 'Quảng Điền', 'Huyện', 46);
INSERT INTO `districts` VALUES (478, 'Phú Vang', 'Huyện', 46);
INSERT INTO `districts` VALUES (479, 'Hương Thủy', 'Thị xã', 46);
INSERT INTO `districts` VALUES (480, 'Hương Trà', 'Thị xã', 46);
INSERT INTO `districts` VALUES (481, 'A Lưới', 'Huyện', 46);
INSERT INTO `districts` VALUES (482, 'Phú Lộc', 'Huyện', 46);
INSERT INTO `districts` VALUES (483, 'Nam Đông', 'Huyện', 46);
INSERT INTO `districts` VALUES (490, 'Liên Chiểu', 'Quận', 48);
INSERT INTO `districts` VALUES (491, 'Thanh Khê', 'Quận', 48);
INSERT INTO `districts` VALUES (492, 'Hải Châu', 'Quận', 48);
INSERT INTO `districts` VALUES (493, 'Sơn Trà', 'Quận', 48);
INSERT INTO `districts` VALUES (494, 'Ngũ Hành Sơn', 'Quận', 48);
INSERT INTO `districts` VALUES (495, 'Cẩm Lệ', 'Quận', 48);
INSERT INTO `districts` VALUES (497, 'Hòa Vang', 'Huyện', 48);
INSERT INTO `districts` VALUES (498, 'Hoàng Sa', 'Huyện', 48);
INSERT INTO `districts` VALUES (502, 'Tam Kỳ', 'Thành phố', 49);
INSERT INTO `districts` VALUES (503, 'Hội An', 'Thành phố', 49);
INSERT INTO `districts` VALUES (504, 'Tây Giang', 'Huyện', 49);
INSERT INTO `districts` VALUES (505, 'Đông Giang', 'Huyện', 49);
INSERT INTO `districts` VALUES (506, 'Đại Lộc', 'Huyện', 49);
INSERT INTO `districts` VALUES (507, 'Điện Bàn', 'Thị xã', 49);
INSERT INTO `districts` VALUES (508, 'Duy Xuyên', 'Huyện', 49);
INSERT INTO `districts` VALUES (509, 'Quế Sơn', 'Huyện', 49);
INSERT INTO `districts` VALUES (510, 'Nam Giang', 'Huyện', 49);
INSERT INTO `districts` VALUES (511, 'Phước Sơn', 'Huyện', 49);
INSERT INTO `districts` VALUES (512, 'Hiệp Đức', 'Huyện', 49);
INSERT INTO `districts` VALUES (513, 'Thăng Bình', 'Huyện', 49);
INSERT INTO `districts` VALUES (514, 'Tiên Phước', 'Huyện', 49);
INSERT INTO `districts` VALUES (515, 'Bắc Trà My', 'Huyện', 49);
INSERT INTO `districts` VALUES (516, 'Nam Trà My', 'Huyện', 49);
INSERT INTO `districts` VALUES (517, 'Núi Thành', 'Huyện', 49);
INSERT INTO `districts` VALUES (518, 'Phú Ninh', 'Huyện', 49);
INSERT INTO `districts` VALUES (519, 'Nông Sơn', 'Huyện', 49);
INSERT INTO `districts` VALUES (522, 'Quảng Ngãi', 'Thành phố', 51);
INSERT INTO `districts` VALUES (524, 'Bình Sơn', 'Huyện', 51);
INSERT INTO `districts` VALUES (525, 'Trà Bồng', 'Huyện', 51);
INSERT INTO `districts` VALUES (527, 'Sơn Tịnh', 'Huyện', 51);
INSERT INTO `districts` VALUES (528, 'Tư Nghĩa', 'Huyện', 51);
INSERT INTO `districts` VALUES (529, 'Sơn Hà', 'Huyện', 51);
INSERT INTO `districts` VALUES (530, 'Sơn Tây', 'Huyện', 51);
INSERT INTO `districts` VALUES (531, 'Minh Long', 'Huyện', 51);
INSERT INTO `districts` VALUES (532, 'Nghĩa Hành', 'Huyện', 51);
INSERT INTO `districts` VALUES (533, 'Mộ Đức', 'Huyện', 51);
INSERT INTO `districts` VALUES (534, 'Đức Phổ', 'Thị xã', 51);
INSERT INTO `districts` VALUES (535, 'Ba Tơ', 'Huyện', 51);
INSERT INTO `districts` VALUES (536, 'Lý Sơn', 'Huyện', 51);
INSERT INTO `districts` VALUES (540, 'Quy Nhơn', 'Thành phố', 52);
INSERT INTO `districts` VALUES (542, 'An Lão', 'Huyện', 52);
INSERT INTO `districts` VALUES (543, 'Hoài Nhơn', 'Thị xã', 52);
INSERT INTO `districts` VALUES (544, 'Hoài Ân', 'Huyện', 52);
INSERT INTO `districts` VALUES (545, 'Phù Mỹ', 'Huyện', 52);
INSERT INTO `districts` VALUES (546, 'Vĩnh Thạnh', 'Huyện', 52);
INSERT INTO `districts` VALUES (547, 'Tây Sơn', 'Huyện', 52);
INSERT INTO `districts` VALUES (548, 'Phù Cát', 'Huyện', 52);
INSERT INTO `districts` VALUES (549, 'An Nhơn', 'Thị xã', 52);
INSERT INTO `districts` VALUES (550, 'Tuy Phước', 'Huyện', 52);
INSERT INTO `districts` VALUES (551, 'Vân Canh', 'Huyện', 52);
INSERT INTO `districts` VALUES (555, 'Tuy Hoà', 'Thành phố', 54);
INSERT INTO `districts` VALUES (557, 'Sông Cầu', 'Thị xã', 54);
INSERT INTO `districts` VALUES (558, 'Đồng Xuân', 'Huyện', 54);
INSERT INTO `districts` VALUES (559, 'Tuy An', 'Huyện', 54);
INSERT INTO `districts` VALUES (560, 'Sơn Hòa', 'Huyện', 54);
INSERT INTO `districts` VALUES (561, 'Sông Hinh', 'Huyện', 54);
INSERT INTO `districts` VALUES (562, 'Tây Hoà', 'Huyện', 54);
INSERT INTO `districts` VALUES (563, 'Phú Hoà', 'Huyện', 54);
INSERT INTO `districts` VALUES (564, 'Đông Hòa', 'Thị xã', 54);
INSERT INTO `districts` VALUES (568, 'Nha Trang', 'Thành phố', 56);
INSERT INTO `districts` VALUES (569, 'Cam Ranh', 'Thành phố', 56);
INSERT INTO `districts` VALUES (570, 'Cam Lâm', 'Huyện', 56);
INSERT INTO `districts` VALUES (571, 'Vạn Ninh', 'Huyện', 56);
INSERT INTO `districts` VALUES (572, 'Ninh Hòa', 'Thị xã', 56);
INSERT INTO `districts` VALUES (573, 'Khánh Vĩnh', 'Huyện', 56);
INSERT INTO `districts` VALUES (574, 'Diên Khánh', 'Huyện', 56);
INSERT INTO `districts` VALUES (575, 'Khánh Sơn', 'Huyện', 56);
INSERT INTO `districts` VALUES (576, 'Trường Sa', 'Huyện', 56);
INSERT INTO `districts` VALUES (582, 'Phan Rang-Tháp Chàm', 'Thành phố', 58);
INSERT INTO `districts` VALUES (585, 'Ninh Sơn', 'Huyện', 58);
INSERT INTO `districts` VALUES (586, 'Ninh Hải', 'Huyện', 58);
INSERT INTO `districts` VALUES (587, 'Ninh Phước', 'Huyện', 58);
INSERT INTO `districts` VALUES (588, 'Thuận Bắc', 'Huyện', 58);
INSERT INTO `districts` VALUES (589, 'Thuận Nam', 'Huyện', 58);
INSERT INTO `districts` VALUES (593, 'Phan Thiết', 'Thành phố', 60);
INSERT INTO `districts` VALUES (594, 'La Gi', 'Thị xã', 60);
INSERT INTO `districts` VALUES (595, 'Tuy Phong', 'Huyện', 60);
INSERT INTO `districts` VALUES (596, 'Bắc Bình', 'Huyện', 60);
INSERT INTO `districts` VALUES (597, 'Hàm Thuận Bắc', 'Huyện', 60);
INSERT INTO `districts` VALUES (598, 'Hàm Thuận Nam', 'Huyện', 60);
INSERT INTO `districts` VALUES (599, 'Tánh Linh', 'Huyện', 60);
INSERT INTO `districts` VALUES (600, 'Đức Linh', 'Huyện', 60);
INSERT INTO `districts` VALUES (601, 'Hàm Tân', 'Huyện', 60);
INSERT INTO `districts` VALUES (602, 'Phú Quí', 'Huyện', 60);
INSERT INTO `districts` VALUES (608, 'Kon Tum', 'Thành phố', 62);
INSERT INTO `districts` VALUES (610, 'Đắk Glei', 'Huyện', 62);
INSERT INTO `districts` VALUES (611, 'Ngọc Hồi', 'Huyện', 62);
INSERT INTO `districts` VALUES (612, 'Đắk Tô', 'Huyện', 62);
INSERT INTO `districts` VALUES (613, 'Kon Plông', 'Huyện', 62);
INSERT INTO `districts` VALUES (614, 'Kon Rẫy', 'Huyện', 62);
INSERT INTO `districts` VALUES (615, 'Đắk Hà', 'Huyện', 62);
INSERT INTO `districts` VALUES (616, 'Sa Thầy', 'Huyện', 62);
INSERT INTO `districts` VALUES (617, 'Tu Mơ Rông', 'Huyện', 62);
INSERT INTO `districts` VALUES (618, 'Ia H Drai', 'Huyện', 62);
INSERT INTO `districts` VALUES (623, 'An Khê', 'Thị xã', 64);
INSERT INTO `districts` VALUES (624, 'Ayun Pa', 'Thị xã', 64);
INSERT INTO `districts` VALUES (625, 'KBang', 'Huyện', 64);
INSERT INTO `districts` VALUES (626, 'Đăk Đoa', 'Huyện', 64);
INSERT INTO `districts` VALUES (627, 'Chư Păh', 'Huyện', 64);
INSERT INTO `districts` VALUES (628, 'Ia Grai', 'Huyện', 64);
INSERT INTO `districts` VALUES (629, 'Mang Yang', 'Huyện', 64);
INSERT INTO `districts` VALUES (630, 'Kông Chro', 'Huyện', 64);
INSERT INTO `districts` VALUES (631, 'Đức Cơ', 'Huyện', 64);
INSERT INTO `districts` VALUES (632, 'Chư Prông', 'Huyện', 64);
INSERT INTO `districts` VALUES (633, 'Chư Sê', 'Huyện', 64);
INSERT INTO `districts` VALUES (634, 'Đăk Pơ', 'Huyện', 64);
INSERT INTO `districts` VALUES (635, 'Ia Pa', 'Huyện', 64);
INSERT INTO `districts` VALUES (637, 'Krông Pa', 'Huyện', 64);
INSERT INTO `districts` VALUES (638, 'Phú Thiện', 'Huyện', 64);
INSERT INTO `districts` VALUES (639, 'Chư Pưh', 'Huyện', 64);
INSERT INTO `districts` VALUES (643, 'Buôn Ma Thuột', 'Thành phố', 66);
INSERT INTO `districts` VALUES (644, 'Buôn Hồ', 'Thị xã', 66);
INSERT INTO `districts` VALUES (645, 'Ea Hleo', 'Huyện', 66);
INSERT INTO `districts` VALUES (646, 'Ea Súp', 'Huyện', 66);
INSERT INTO `districts` VALUES (647, 'Buôn Đôn', 'Huyện', 66);
INSERT INTO `districts` VALUES (648, 'Cư Mgar', 'Huyện', 66);
INSERT INTO `districts` VALUES (649, 'Krông Búk', 'Huyện', 66);
INSERT INTO `districts` VALUES (650, 'Krông Năng', 'Huyện', 66);
INSERT INTO `districts` VALUES (651, 'Ea Kar', 'Huyện', 66);
INSERT INTO `districts` VALUES (652, 'MĐrắk', 'Huyện', 66);
INSERT INTO `districts` VALUES (653, 'Krông Bông', 'Huyện', 66);
INSERT INTO `districts` VALUES (654, 'Krông Pắc', 'Huyện', 66);
INSERT INTO `districts` VALUES (655, 'Krông A Na', 'Huyện', 66);
INSERT INTO `districts` VALUES (656, 'Lắk', 'Huyện', 66);
INSERT INTO `districts` VALUES (657, 'Cư Kuin', 'Huyện', 66);
INSERT INTO `districts` VALUES (660, 'Gia Nghĩa', 'Thành phố', 67);
INSERT INTO `districts` VALUES (661, 'Đăk Glong', 'Huyện', 67);
INSERT INTO `districts` VALUES (662, 'Cư Jút', 'Huyện', 67);
INSERT INTO `districts` VALUES (663, 'Đắk Mil', 'Huyện', 67);
INSERT INTO `districts` VALUES (664, 'Krông Nô', 'Huyện', 67);
INSERT INTO `districts` VALUES (665, 'Đắk Song', 'Huyện', 67);
INSERT INTO `districts` VALUES (666, 'Đắk RLấp', 'Huyện', 67);
INSERT INTO `districts` VALUES (667, 'Tuy Đức', 'Huyện', 67);
INSERT INTO `districts` VALUES (672, 'Đà Lạt', 'Thành phố', 68);
INSERT INTO `districts` VALUES (673, 'Bảo Lộc', 'Thành phố', 68);
INSERT INTO `districts` VALUES (674, 'Đam Rông', 'Huyện', 68);
INSERT INTO `districts` VALUES (675, 'Lạc Dương', 'Huyện', 68);
INSERT INTO `districts` VALUES (676, 'Lâm Hà', 'Huyện', 68);
INSERT INTO `districts` VALUES (677, 'Đơn Dương', 'Huyện', 68);
INSERT INTO `districts` VALUES (678, 'Đức Trọng', 'Huyện', 68);
INSERT INTO `districts` VALUES (679, 'Di Linh', 'Huyện', 68);
INSERT INTO `districts` VALUES (680, 'Bảo Lâm', 'Huyện', 68);
INSERT INTO `districts` VALUES (681, 'Đạ Huoai', 'Huyện', 68);
INSERT INTO `districts` VALUES (682, 'Đạ Tẻh', 'Huyện', 68);
INSERT INTO `districts` VALUES (683, 'Cát Tiên', 'Huyện', 68);
INSERT INTO `districts` VALUES (688, 'Phước Long', 'Thị xã', 70);
INSERT INTO `districts` VALUES (689, 'Đồng Xoài', 'Thành phố', 70);
INSERT INTO `districts` VALUES (690, 'Bình Long', 'Thị xã', 70);
INSERT INTO `districts` VALUES (691, 'Bù Gia Mập', 'Huyện', 70);
INSERT INTO `districts` VALUES (692, 'Lộc Ninh', 'Huyện', 70);
INSERT INTO `districts` VALUES (693, 'Bù Đốp', 'Huyện', 70);
INSERT INTO `districts` VALUES (694, 'Hớn Quản', 'Huyện', 70);
INSERT INTO `districts` VALUES (695, 'Đồng Phú', 'Huyện', 70);
INSERT INTO `districts` VALUES (696, 'Bù Đăng', 'Huyện', 70);
INSERT INTO `districts` VALUES (697, 'Chơn Thành', 'Thị xã', 70);
INSERT INTO `districts` VALUES (698, 'Phú Riềng', 'Huyện', 70);
INSERT INTO `districts` VALUES (703, 'Tây Ninh', 'Thành phố', 72);
INSERT INTO `districts` VALUES (705, 'Tân Biên', 'Huyện', 72);
INSERT INTO `districts` VALUES (706, 'Tân Châu', 'Huyện', 72);
INSERT INTO `districts` VALUES (707, 'Dương Minh Châu', 'Huyện', 72);
INSERT INTO `districts` VALUES (708, 'Châu Thành', 'Huyện', 72);
INSERT INTO `districts` VALUES (709, 'Hòa Thành', 'Thị xã', 72);
INSERT INTO `districts` VALUES (710, 'Gò Dầu', 'Huyện', 72);
INSERT INTO `districts` VALUES (711, 'Bến Cầu', 'Huyện', 72);
INSERT INTO `districts` VALUES (712, 'Trảng Bàng', 'Thị xã', 72);
INSERT INTO `districts` VALUES (718, 'Thủ Dầu Một', 'Thành phố', 74);
INSERT INTO `districts` VALUES (719, 'Bàu Bàng', 'Huyện', 74);
INSERT INTO `districts` VALUES (720, 'Dầu Tiếng', 'Huyện', 74);
INSERT INTO `districts` VALUES (721, 'Bến Cát', 'Thị xã', 74);
INSERT INTO `districts` VALUES (722, 'Phú Giáo', 'Huyện', 74);
INSERT INTO `districts` VALUES (723, 'Tân Uyên', 'Thành phố', 74);
INSERT INTO `districts` VALUES (724, 'Dĩ An', 'Thành phố', 74);
INSERT INTO `districts` VALUES (725, 'Thuận An', 'Thành phố', 74);
INSERT INTO `districts` VALUES (726, 'Bắc Tân Uyên', 'Huyện', 74);
INSERT INTO `districts` VALUES (731, 'Biên Hòa', 'Thành phố', 75);
INSERT INTO `districts` VALUES (732, 'Long Khánh', 'Thành phố', 75);
INSERT INTO `districts` VALUES (734, 'Tân Phú', 'Huyện', 75);
INSERT INTO `districts` VALUES (735, 'Vĩnh Cửu', 'Huyện', 75);
INSERT INTO `districts` VALUES (736, 'Định Quán', 'Huyện', 75);
INSERT INTO `districts` VALUES (737, 'Trảng Bom', 'Huyện', 75);
INSERT INTO `districts` VALUES (738, 'Thống Nhất', 'Huyện', 75);
INSERT INTO `districts` VALUES (739, 'Cẩm Mỹ', 'Huyện', 75);
INSERT INTO `districts` VALUES (740, 'Long Thành', 'Huyện', 75);
INSERT INTO `districts` VALUES (741, 'Xuân Lộc', 'Huyện', 75);
INSERT INTO `districts` VALUES (742, 'Nhơn Trạch', 'Huyện', 75);
INSERT INTO `districts` VALUES (747, 'Vũng Tàu', 'Thành phố', 77);
INSERT INTO `districts` VALUES (748, 'Bà Rịa', 'Thành phố', 77);
INSERT INTO `districts` VALUES (750, 'Châu Đức', 'Huyện', 77);
INSERT INTO `districts` VALUES (751, 'Xuyên Mộc', 'Huyện', 77);
INSERT INTO `districts` VALUES (752, 'Long Điền', 'Huyện', 77);
INSERT INTO `districts` VALUES (753, 'Đất Đỏ', 'Huyện', 77);
INSERT INTO `districts` VALUES (754, 'Phú Mỹ', 'Thị xã', 77);
INSERT INTO `districts` VALUES (755, 'Côn Đảo', 'Huyện', 77);
INSERT INTO `districts` VALUES (760, '1', 'Quận', 79);
INSERT INTO `districts` VALUES (761, '12', 'Quận', 79);
INSERT INTO `districts` VALUES (764, 'Gò Vấp', 'Quận', 79);
INSERT INTO `districts` VALUES (765, 'Bình Thạnh', 'Quận', 79);
INSERT INTO `districts` VALUES (766, 'Tân Bình', 'Quận', 79);
INSERT INTO `districts` VALUES (767, 'Tân Phú', 'Quận', 79);
INSERT INTO `districts` VALUES (768, 'Phú Nhuận', 'Quận', 79);
INSERT INTO `districts` VALUES (769, 'Thủ Đức', 'Thành phố', 79);
INSERT INTO `districts` VALUES (770, '3', 'Quận', 79);
INSERT INTO `districts` VALUES (771, '10', 'Quận', 79);
INSERT INTO `districts` VALUES (772, '11', 'Quận', 79);
INSERT INTO `districts` VALUES (773, '4', 'Quận', 79);
INSERT INTO `districts` VALUES (774, '5', 'Quận', 79);
INSERT INTO `districts` VALUES (775, '6', 'Quận', 79);
INSERT INTO `districts` VALUES (776, '8', 'Quận', 79);
INSERT INTO `districts` VALUES (777, 'Bình Tân', 'Quận', 79);
INSERT INTO `districts` VALUES (778, '7', 'Quận', 79);
INSERT INTO `districts` VALUES (783, 'Củ Chi', 'Huyện', 79);
INSERT INTO `districts` VALUES (784, 'Hóc Môn', 'Huyện', 79);
INSERT INTO `districts` VALUES (785, 'Bình Chánh', 'Huyện', 79);
INSERT INTO `districts` VALUES (786, 'Nhà Bè', 'Huyện', 79);
INSERT INTO `districts` VALUES (787, 'Cần Giờ', 'Huyện', 79);
INSERT INTO `districts` VALUES (794, 'Tân An', 'Thành phố', 80);
INSERT INTO `districts` VALUES (795, 'Kiến Tường', 'Thị xã', 80);
INSERT INTO `districts` VALUES (796, 'Tân Hưng', 'Huyện', 80);
INSERT INTO `districts` VALUES (797, 'Vĩnh Hưng', 'Huyện', 80);
INSERT INTO `districts` VALUES (798, 'Mộc Hóa', 'Huyện', 80);
INSERT INTO `districts` VALUES (799, 'Tân Thạnh', 'Huyện', 80);
INSERT INTO `districts` VALUES (800, 'Thạnh Hóa', 'Huyện', 80);
INSERT INTO `districts` VALUES (801, 'Đức Huệ', 'Huyện', 80);
INSERT INTO `districts` VALUES (802, 'Đức Hòa', 'Huyện', 80);
INSERT INTO `districts` VALUES (803, 'Bến Lức', 'Huyện', 80);
INSERT INTO `districts` VALUES (804, 'Thủ Thừa', 'Huyện', 80);
INSERT INTO `districts` VALUES (805, 'Tân Trụ', 'Huyện', 80);
INSERT INTO `districts` VALUES (806, 'Cần Đước', 'Huyện', 80);
INSERT INTO `districts` VALUES (807, 'Cần Giuộc', 'Huyện', 80);
INSERT INTO `districts` VALUES (808, 'Châu Thành', 'Huyện', 80);
INSERT INTO `districts` VALUES (815, 'Mỹ Tho', 'Thành phố', 82);
INSERT INTO `districts` VALUES (816, 'Gò Công', 'Thị xã', 82);
INSERT INTO `districts` VALUES (817, 'Cai Lậy', 'Thị xã', 82);
INSERT INTO `districts` VALUES (818, 'Tân Phước', 'Huyện', 82);
INSERT INTO `districts` VALUES (819, 'Cái Bè', 'Huyện', 82);
INSERT INTO `districts` VALUES (820, 'Cai Lậy', 'Huyện', 82);
INSERT INTO `districts` VALUES (821, 'Châu Thành', 'Huyện', 82);
INSERT INTO `districts` VALUES (822, 'Chợ Gạo', 'Huyện', 82);
INSERT INTO `districts` VALUES (823, 'Gò Công Tây', 'Huyện', 82);
INSERT INTO `districts` VALUES (824, 'Gò Công Đông', 'Huyện', 82);
INSERT INTO `districts` VALUES (825, 'Tân Phú Đông', 'Huyện', 82);
INSERT INTO `districts` VALUES (829, 'Bến Tre', 'Thành phố', 83);
INSERT INTO `districts` VALUES (831, 'Châu Thành', 'Huyện', 83);
INSERT INTO `districts` VALUES (832, 'Chợ Lách', 'Huyện', 83);
INSERT INTO `districts` VALUES (833, 'Mỏ Cày Nam', 'Huyện', 83);
INSERT INTO `districts` VALUES (834, 'Giồng Trôm', 'Huyện', 83);
INSERT INTO `districts` VALUES (835, 'Bình Đại', 'Huyện', 83);
INSERT INTO `districts` VALUES (836, 'Ba Tri', 'Huyện', 83);
INSERT INTO `districts` VALUES (837, 'Thạnh Phú', 'Huyện', 83);
INSERT INTO `districts` VALUES (838, 'Mỏ Cày Bắc', 'Huyện', 83);
INSERT INTO `districts` VALUES (842, 'Trà Vinh', 'Thành phố', 84);
INSERT INTO `districts` VALUES (844, 'Càng Long', 'Huyện', 84);
INSERT INTO `districts` VALUES (845, 'Cầu Kè', 'Huyện', 84);
INSERT INTO `districts` VALUES (846, 'Tiểu Cần', 'Huyện', 84);
INSERT INTO `districts` VALUES (847, 'Châu Thành', 'Huyện', 84);
INSERT INTO `districts` VALUES (848, 'Cầu Ngang', 'Huyện', 84);
INSERT INTO `districts` VALUES (849, 'Trà Cú', 'Huyện', 84);
INSERT INTO `districts` VALUES (850, 'Duyên Hải', 'Huyện', 84);
INSERT INTO `districts` VALUES (851, 'Duyên Hải', 'Thị xã', 84);
INSERT INTO `districts` VALUES (855, 'Vĩnh Long', 'Thành phố', 86);
INSERT INTO `districts` VALUES (857, 'Long Hồ', 'Huyện', 86);
INSERT INTO `districts` VALUES (858, 'Mang Thít', 'Huyện', 86);
INSERT INTO `districts` VALUES (859, ' Vũng Liêm', 'Huyện', 86);
INSERT INTO `districts` VALUES (860, 'Tam Bình', 'Huyện', 86);
INSERT INTO `districts` VALUES (861, 'Bình Minh', 'Thị xã', 86);
INSERT INTO `districts` VALUES (862, 'Trà Ôn', 'Huyện', 86);
INSERT INTO `districts` VALUES (863, 'Bình Tân', 'Huyện', 86);
INSERT INTO `districts` VALUES (866, 'Cao Lãnh', 'Thành phố', 87);
INSERT INTO `districts` VALUES (867, 'Sa Đéc', 'Thành phố', 87);
INSERT INTO `districts` VALUES (868, 'Hồng Ngự', 'Thành phố', 87);
INSERT INTO `districts` VALUES (869, 'Tân Hồng', 'Huyện', 87);
INSERT INTO `districts` VALUES (870, 'Hồng Ngự', 'Huyện', 87);
INSERT INTO `districts` VALUES (871, 'Tam Nông', 'Huyện', 87);
INSERT INTO `districts` VALUES (872, 'Tháp Mười', 'Huyện', 87);
INSERT INTO `districts` VALUES (873, 'Cao Lãnh', 'Huyện', 87);
INSERT INTO `districts` VALUES (874, 'Thanh Bình', 'Huyện', 87);
INSERT INTO `districts` VALUES (875, 'Lấp Vò', 'Huyện', 87);
INSERT INTO `districts` VALUES (876, 'Lai Vung', 'Huyện', 87);
INSERT INTO `districts` VALUES (877, 'Châu Thành', 'Huyện', 87);
INSERT INTO `districts` VALUES (883, 'Long Xuyên', 'Thành phố', 89);
INSERT INTO `districts` VALUES (884, 'Châu Đốc', 'Thành phố', 89);
INSERT INTO `districts` VALUES (886, 'An Phú', 'Huyện', 89);
INSERT INTO `districts` VALUES (887, 'Tân Châu', 'Thị xã', 89);
INSERT INTO `districts` VALUES (888, 'Phú Tân', 'Huyện', 89);
INSERT INTO `districts` VALUES (889, 'Châu Phú', 'Huyện', 89);
INSERT INTO `districts` VALUES (890, 'Tịnh Biên', 'Thị xã', 89);
INSERT INTO `districts` VALUES (891, 'Tri Tôn', 'Huyện', 89);
INSERT INTO `districts` VALUES (892, 'Châu Thành', 'Huyện', 89);
INSERT INTO `districts` VALUES (893, 'Chợ Mới', 'Huyện', 89);
INSERT INTO `districts` VALUES (894, 'Thoại Sơn', 'Huyện', 89);
INSERT INTO `districts` VALUES (899, 'Rạch Giá', 'Thành phố', 91);
INSERT INTO `districts` VALUES (900, 'Hà Tiên', 'Thành phố', 91);
INSERT INTO `districts` VALUES (902, 'Kiên Lương', 'Huyện', 91);
INSERT INTO `districts` VALUES (903, 'Hòn Đất', 'Huyện', 91);
INSERT INTO `districts` VALUES (904, 'Tân Hiệp', 'Huyện', 91);
INSERT INTO `districts` VALUES (905, 'Châu Thành', 'Huyện', 91);
INSERT INTO `districts` VALUES (906, 'Giồng Riềng', 'Huyện', 91);
INSERT INTO `districts` VALUES (907, 'Gò Quao', 'Huyện', 91);
INSERT INTO `districts` VALUES (908, 'An Biên', 'Huyện', 91);
INSERT INTO `districts` VALUES (909, 'An Minh', 'Huyện', 91);
INSERT INTO `districts` VALUES (910, 'Vĩnh Thuận', 'Huyện', 91);
INSERT INTO `districts` VALUES (911, 'Phú Quốc', 'Thành phố', 91);
INSERT INTO `districts` VALUES (912, 'Kiên Hải', 'Huyện', 91);
INSERT INTO `districts` VALUES (913, 'U Minh Thượng', 'Huyện', 91);
INSERT INTO `districts` VALUES (914, 'Giang Thành', 'Huyện', 91);
INSERT INTO `districts` VALUES (917, 'Ô Môn', 'Quận', 92);
INSERT INTO `districts` VALUES (918, 'Bình Thuỷ', 'Quận', 92);
INSERT INTO `districts` VALUES (919, 'Cái Răng', 'Quận', 92);
INSERT INTO `districts` VALUES (923, 'Thốt Nốt', 'Quận', 92);
INSERT INTO `districts` VALUES (924, 'Vĩnh Thạnh', 'Huyện', 92);
INSERT INTO `districts` VALUES (925, 'Cờ Đỏ', 'Huyện', 92);
INSERT INTO `districts` VALUES (926, 'Phong Điền', 'Huyện', 92);
INSERT INTO `districts` VALUES (927, 'Thới Lai', 'Huyện', 92);
INSERT INTO `districts` VALUES (930, 'Vị Thanh', 'Thành phố', 93);
INSERT INTO `districts` VALUES (931, 'Ngã Bảy', 'Thành phố', 93);
INSERT INTO `districts` VALUES (932, 'Châu Thành A', 'Huyện', 93);
INSERT INTO `districts` VALUES (933, 'Châu Thành', 'Huyện', 93);
INSERT INTO `districts` VALUES (934, 'Phụng Hiệp', 'Huyện', 93);
INSERT INTO `districts` VALUES (935, 'Vị Thuỷ', 'Huyện', 93);
INSERT INTO `districts` VALUES (936, 'Long Mỹ', 'Huyện', 93);
INSERT INTO `districts` VALUES (937, 'Long Mỹ', 'Thị xã', 93);
INSERT INTO `districts` VALUES (941, 'Sóc Trăng', 'Thành phố', 94);
INSERT INTO `districts` VALUES (942, 'Châu Thành', 'Huyện', 94);
INSERT INTO `districts` VALUES (943, 'Kế Sách', 'Huyện', 94);
INSERT INTO `districts` VALUES (944, 'Mỹ Tú', 'Huyện', 94);
INSERT INTO `districts` VALUES (945, 'Cù Lao Dung', 'Huyện', 94);
INSERT INTO `districts` VALUES (946, 'Long Phú', 'Huyện', 94);
INSERT INTO `districts` VALUES (947, 'Mỹ Xuyên', 'Huyện', 94);
INSERT INTO `districts` VALUES (948, 'Ngã Năm', 'Thị xã', 94);
INSERT INTO `districts` VALUES (949, 'Thạnh Trị', 'Huyện', 94);
INSERT INTO `districts` VALUES (950, 'Vĩnh Châu', 'Thị xã', 94);
INSERT INTO `districts` VALUES (951, 'Trần Đề', 'Huyện', 94);
INSERT INTO `districts` VALUES (954, 'Bạc Liêu', 'Thành phố', 95);
INSERT INTO `districts` VALUES (956, 'Hồng Dân', 'Huyện', 95);
INSERT INTO `districts` VALUES (957, 'Phước Long', 'Huyện', 95);
INSERT INTO `districts` VALUES (958, 'Vĩnh Lợi', 'Huyện', 95);
INSERT INTO `districts` VALUES (959, 'Giá Rai', 'Thị xã', 95);
INSERT INTO `districts` VALUES (960, 'Đông Hải', 'Huyện', 95);
INSERT INTO `districts` VALUES (961, 'Hoà Bình', 'Huyện', 95);
INSERT INTO `districts` VALUES (964, 'Cà Mau', 'Thành phố', 96);
INSERT INTO `districts` VALUES (966, 'U Minh', 'Huyện', 96);
INSERT INTO `districts` VALUES (967, 'Thới Bình', 'Huyện', 96);
INSERT INTO `districts` VALUES (968, 'Trần Văn Thời', 'Huyện', 96);
INSERT INTO `districts` VALUES (969, 'Cái Nước', 'Huyện', 96);
INSERT INTO `districts` VALUES (970, 'Đầm Dơi', 'Huyện', 96);
INSERT INTO `districts` VALUES (971, 'Năm Căn', 'Huyện', 96);
INSERT INTO `districts` VALUES (972, 'Phú Tân', 'Huyện', 96);
INSERT INTO `districts` VALUES (973, 'Ngọc Hiển', 'Huyện', 96);

-- ----------------------------
-- Table structure for img_product
-- ----------------------------
DROP TABLE IF EXISTS `img_product`;
CREATE TABLE `img_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `productid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKiv4vj9h33snsv9hf05fldefve`(`productid`) USING BTREE,
  CONSTRAINT `FKiv4vj9h33snsv9hf05fldefve` FOREIGN KEY (`productid`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of img_product
-- ----------------------------
INSERT INTO `img_product` VALUES (1, 'Xương rồng trứng chim 3-5cm (bịch nhựa)', 'https://product.hstatic.net/1000187613/product/img_9959_e46a78cc243640278fb85c151a048091_master.jpg', 1);
INSERT INTO `img_product` VALUES (2, 'Xương rồng trứng chim 3-5cm (bịch nhựa)2', 'https://product.hstatic.net/1000187613/product/upload_c61180297bd2417d9f4cb88087d637eb_master.jpg', 1);
INSERT INTO `img_product` VALUES (3, 'Sen đá ống điếu (bịch nhựa)', 'https://product.hstatic.net/1000187613/product/img_9815_25773266e8ee47bca17cfdd5e72d976e_master.jpg', 2);
INSERT INTO `img_product` VALUES (4, 'Sen đá ống điếu (bịch nhựa)', 'https://product.hstatic.net/1000187613/product/img_9928_4394e9fea41e405b86dacbf7220c7d8e_master.jpg', 2);
INSERT INTO `img_product` VALUES (5, 'Sen đá ống điếu (bịch nhựa)', 'https://product.hstatic.net/1000187613/product/snapseed_35_f33a693db1b24d9cb101f4811eaf9f64_master.jpg', 2);
INSERT INTO `img_product` VALUES (6, 'Sen đá ống điếu (bịch nhựa)', 'https://product.hstatic.net/1000187613/product/img_8607_09e381bb4ddd488fa10526f811b12a75_master.jpg', 2);
INSERT INTO `img_product` VALUES (7, 'Sen đá ngọc lá dài 3-5cm', 'https://product.hstatic.net/1000187613/product/snapseed_32_3e858543b31d4ed581583bd3669b7691_master.jpg', 3);
INSERT INTO `img_product` VALUES (8, 'Sen đá ngọc lá dài 3-5cm', 'https://product.hstatic.net/1000187613/product/snapseed_10_67b6aaf0babd451184fa1dfa48f5f08f_master.jpg', 3);
INSERT INTO `img_product` VALUES (9, 'Sen đá ngọc lá dài 3-5cm', 'https://product.hstatic.net/1000187613/product/img_5197_8831983cde2c43c5a348cbc0685f1846_master.jpg', 3);
INSERT INTO `img_product` VALUES (10, 'Sen đá ngọc lá dài 3-5cm', 'https://product.hstatic.net/1000187613/product/img_2645_7e96f53709de45ae879d13de724c22bf_master.jpg', 3);
INSERT INTO `img_product` VALUES (11, 'Sen đá mặt trăng 5-7cm (bịch nhựa/chậu nhựa)', 'https://product.hstatic.net/1000187613/product/img_9905_f6e1f3cffffd44dfaf4edf2b563789a6_master.jpg', 4);
INSERT INTO `img_product` VALUES (12, 'Sen đá mặt trăng 5-7cm (bịch nhựa/chậu nhựa)', 'https://product.hstatic.net/1000187613/product/img_9283_093e5b46ce4f4b71b595bddcb576eb7a_master.jpg', 4);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` double NULL DEFAULT NULL,
  `quantity` bigint(20) NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`) USING BTREE,
  INDEX `FKrws2q0si6oyd6il8gqe2aennc`(`order_id`) USING BTREE,
  INDEX `FKc7q42e9tu0hslx6w4wxgomhvn`(`product_id`) USING BTREE,
  CONSTRAINT `FKc7q42e9tu0hslx6w4wxgomhvn` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 0, 1, 123, 6, 3);
INSERT INTO `order_detail` VALUES (2, 15000, 2, 30000, 7, 2);
INSERT INTO `order_detail` VALUES (3, 15000, 1, 15000, 8, 2);
INSERT INTO `order_detail` VALUES (4, 15000, 1, 15000, 8, 1);
INSERT INTO `order_detail` VALUES (5, 15000, 1, 15000, 9, 4);
INSERT INTO `order_detail` VALUES (6, 15000, 1, 15000, 10, 1);
INSERT INTO `order_detail` VALUES (7, 15000, 1, 15000, 11, 4);
INSERT INTO `order_detail` VALUES (8, 15000, 1, 15000, 12, 1);
INSERT INTO `order_detail` VALUES (9, 15000, 1, 15000, 13, 2);
INSERT INTO `order_detail` VALUES (10, 15000, 1, 15000, 14, 3);
INSERT INTO `order_detail` VALUES (11, 15000, 1, 15000, 15, 1);
INSERT INTO `order_detail` VALUES (12, 13500, 1, 13500, 16, 1);
INSERT INTO `order_detail` VALUES (13, 15000, 1, 15000, 16, 4);
INSERT INTO `order_detail` VALUES (14, 13500, 1, 13500, 17, 1);
INSERT INTO `order_detail` VALUES (15, 14250, 1, 14250, 17, 3);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `payment` bigint(20) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_price` double NULL DEFAULT NULL,
  `transport` double NULL DEFAULT NULL,
  `discount_id` bigint(20) NULL DEFAULT NULL,
  `district_id` bigint(20) NULL DEFAULT NULL,
  `province_id` bigint(20) NULL DEFAULT NULL,
  `status` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKdovsc3u2it5yoknwgx4brjid1`(`discount_id`) USING BTREE,
  INDEX `FKocbn5stqgbec48uys3n8sjuik`(`district_id`) USING BTREE,
  INDEX `FKbbdd7dg6lysbwgtw66jdlg2bg`(`province_id`) USING BTREE,
  INDEX `FK8akhfbugqlyk0tkw1e5lnodvf`(`status`) USING BTREE,
  INDEX `FK32ql8ubntj5uh44ph9659tiih`(`user_id`) USING BTREE,
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8akhfbugqlyk0tkw1e5lnodvf` FOREIGN KEY (`status`) REFERENCES `status_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKbbdd7dg6lysbwgtw66jdlg2bg` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`provinceid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKdovsc3u2it5yoknwgx4brjid1` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKocbn5stqgbec48uys3n8sjuik` FOREIGN KEY (`district_id`) REFERENCES `districts` (`districtid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (5, '123', '2024-05-26 23:41:44.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 123, 30000, NULL, 124, 14, 1, 1);
INSERT INTO `orders` VALUES (6, '123', '2024-05-26 23:43:54.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 123, 30000, NULL, 132, 15, 1, 1);
INSERT INTO `orders` VALUES (7, '123', '2024-05-27 00:17:30.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 50000, 30000, NULL, 298, 30, 1, 1);
INSERT INTO `orders` VALUES (8, 'chucmung', '2024-05-27 00:41:10.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 50000, 30000, NULL, 239, 25, 1, 1);
INSERT INTO `orders` VALUES (9, '1234', '2024-05-27 00:45:34.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 35000, 30000, NULL, 213, 24, 1, 1);
INSERT INTO `orders` VALUES (10, '123', '2024-05-27 00:46:26.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 35000, 30000, NULL, 299, 30, 1, 1);
INSERT INTO `orders` VALUES (11, 'yy', '2024-05-27 00:52:01.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', 'jjj', 'Quân hoàng', 1, '0336782660', 35000, 30000, NULL, 238, 25, 1, 1);
INSERT INTO `orders` VALUES (12, '1234', '2024-05-27 01:23:39.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 45000, 30000, NULL, 237, 25, 1, 1);
INSERT INTO `orders` VALUES (13, '123', '2024-05-27 01:25:50.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '123', 'Quân hoàng', 1, '0336782660', 42000, 30000, NULL, 172, 19, 1, 1);
INSERT INTO `orders` VALUES (14, '1234', '2024-05-27 01:26:53.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '1234', 'Quân hoàng', 1, '0336782660', 42000, 30000, 1, 237, 25, 1, 1);
INSERT INTO `orders` VALUES (15, 'nguyentien.fox@gmail.com', '2024-05-27 01:28:12.000000', 'nguyentien.fox@gmail.com', '172.17.91.106', '111', 'Quân hoàng', 1, '0336782660', 45000, 30000, NULL, 256, 27, 1, 1);
INSERT INTO `orders` VALUES (16, 'nguyentien.fox@gmail.com', '2024-05-27 10:02:13.000000', 'nguyentien@gmail.com', '192.168.1.64', '1234', 'Nguyên Thị Tiên', 1, '0336782660', 52800, 30000, 1, 202, 22, 1, 2);
INSERT INTO `orders` VALUES (17, '123', '2024-05-27 10:05:15.000000', '123@gmail.com', '192.168.1.64', '123', '123', 1, '0336782660', 52200, 30000, 1, 243, 26, 1, 3);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `percent_discount` double NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quantity` bigint(20) NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `category` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKna7eyghkka4nacdfsql73gb9`(`category`) USING BTREE,
  CONSTRAINT `FKna7eyghkka4nacdfsql73gb9` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '2024-05-01 12:53:21.000000', 'HƯỚNG DẪN THAY ĐẤT VÀ THAY CHẬU KHI MUA CÂY TRONG CHẬU NHỰA/BỊCH NHỰA', 10, 15000, 'Xương rồng trứng chim 3-5cm (bịch nhựa)', 4, b'1', 1);
INSERT INTO `products` VALUES (2, '2024-05-01 12:54:50.000000', 'Tưới nước: Quan sát đất trồng, chỉ tưới khi đất đã khô hoàn toàn (khoản 2-3 ngày). Khi tưới phải tưới ướt đẫm, không tưới lên lá, tránh để cây khô trong nhiều ngày liên tục.', 20, 15000, 'Sen đá ống điếu (bịch nhựa)', 6, b'1', 1);
INSERT INTO `products` VALUES (3, '2024-05-01 12:55:25.000000', 'Tưới nước: Quan sát đất trồng, chỉ tưới khi đất đã khô hoàn toàn (khoản 2-3 ngày). Khi tưới phải tưới ướt đẫm, không tưới lên lá, tránh để cây khô trong nhiều ngày liên tục.', 5, 15000, 'Sen đá ngọc lá dài 3-5cm (bịch nhựa/chậu nhựa)', 7, b'1', 1);
INSERT INTO `products` VALUES (4, '2024-05-01 13:31:35.000000', 'Tưới nước: Quan sát đất trồng, chỉ tưới khi đất đã khô hoàn toàn (khoản 2-3 ngày). Khi tưới phải tưới ướt đẫm, không tưới lên lá, tránh để cây khô trong nhiều ngày liên tục.', 0, 15000, 'Sen đá mặt trăng 5-7cm (bịch nhựa/chậu nhựa)', 7, b'1', 1);

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `provinceid` bigint(20) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`provinceid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES (1, 'Hà Nội', 'Thành phố');
INSERT INTO `provinces` VALUES (2, 'Hà Giang', 'Tỉnh');
INSERT INTO `provinces` VALUES (4, 'Cao Bằng', 'Tỉnh');
INSERT INTO `provinces` VALUES (6, 'Bắc Kạn', 'Tỉnh');
INSERT INTO `provinces` VALUES (8, 'Tuyên Quang', 'Tỉnh');
INSERT INTO `provinces` VALUES (10, 'Lào Cai', 'Tỉnh');
INSERT INTO `provinces` VALUES (11, 'Điện Biên', 'Tỉnh');
INSERT INTO `provinces` VALUES (12, 'Lai Châu', 'Tỉnh');
INSERT INTO `provinces` VALUES (14, 'Sơn La', 'Tỉnh');
INSERT INTO `provinces` VALUES (15, 'Yên Bái', 'Tỉnh');
INSERT INTO `provinces` VALUES (17, 'Hoà Bình', 'Tỉnh');
INSERT INTO `provinces` VALUES (19, 'Thái Nguyên', 'Tỉnh');
INSERT INTO `provinces` VALUES (20, 'Lạng Sơn', 'Tỉnh');
INSERT INTO `provinces` VALUES (22, 'Quảng Ninh', 'Tỉnh');
INSERT INTO `provinces` VALUES (24, 'Bắc Giang', 'Tỉnh');
INSERT INTO `provinces` VALUES (25, 'Phú Thọ', 'Tỉnh');
INSERT INTO `provinces` VALUES (26, 'Vĩnh Phúc', 'Tỉnh');
INSERT INTO `provinces` VALUES (27, 'Bắc Ninh', 'Tỉnh');
INSERT INTO `provinces` VALUES (30, 'Hải Dương', 'Tỉnh');
INSERT INTO `provinces` VALUES (31, 'Hải Phòng', 'Thành phố');
INSERT INTO `provinces` VALUES (33, 'Hưng Yên', 'Tỉnh');
INSERT INTO `provinces` VALUES (34, 'Thái Bình', 'Tỉnh');
INSERT INTO `provinces` VALUES (35, 'Hà Nam', 'Tỉnh');
INSERT INTO `provinces` VALUES (36, 'Nam Định', 'Tỉnh');
INSERT INTO `provinces` VALUES (37, 'Ninh Bình', 'Tỉnh');
INSERT INTO `provinces` VALUES (38, 'Thanh Hóa', 'Tỉnh');
INSERT INTO `provinces` VALUES (40, 'Nghệ An', 'Tỉnh');
INSERT INTO `provinces` VALUES (42, 'Hà Tĩnh', 'Tỉnh');
INSERT INTO `provinces` VALUES (44, 'Quảng Bình', 'Tỉnh');
INSERT INTO `provinces` VALUES (45, 'Quảng Trị', 'Tỉnh');
INSERT INTO `provinces` VALUES (46, 'Thừa Thiên Huế', 'Tỉnh');
INSERT INTO `provinces` VALUES (48, 'Đà Nẵng', 'Thành phố');
INSERT INTO `provinces` VALUES (49, 'Quảng Nam', 'Tỉnh');
INSERT INTO `provinces` VALUES (51, 'Quảng Ngãi', 'Tỉnh');
INSERT INTO `provinces` VALUES (52, 'Bình Định', 'Tỉnh');
INSERT INTO `provinces` VALUES (54, 'Phú Yên', 'Tỉnh');
INSERT INTO `provinces` VALUES (56, 'Khánh Hòa', 'Tỉnh');
INSERT INTO `provinces` VALUES (58, 'Ninh Thuận', 'Tỉnh');
INSERT INTO `provinces` VALUES (60, 'Bình Thuận', 'Tỉnh');
INSERT INTO `provinces` VALUES (62, 'Kon Tum', 'Tỉnh');
INSERT INTO `provinces` VALUES (64, 'Gia Lai', 'Tỉnh');
INSERT INTO `provinces` VALUES (66, 'Đắk Lắk', 'Tỉnh');
INSERT INTO `provinces` VALUES (67, 'Đắk Nông', 'Tỉnh');
INSERT INTO `provinces` VALUES (68, 'Lâm Đồng', 'Tỉnh');
INSERT INTO `provinces` VALUES (70, 'Bình Phước', 'Tỉnh');
INSERT INTO `provinces` VALUES (72, 'Tây Ninh', 'Tỉnh');
INSERT INTO `provinces` VALUES (74, 'Bình Dương', 'Tỉnh');
INSERT INTO `provinces` VALUES (75, 'Đồng Nai', 'Tỉnh');
INSERT INTO `provinces` VALUES (77, 'Bà Rịa - Vũng Tàu', 'Tỉnh');
INSERT INTO `provinces` VALUES (79, 'Hồ Chí Minh', 'Thành phố');
INSERT INTO `provinces` VALUES (80, 'Long An', 'Tỉnh');
INSERT INTO `provinces` VALUES (82, 'Tiền Giang', 'Tỉnh');
INSERT INTO `provinces` VALUES (83, 'Bến Tre', 'Tỉnh');
INSERT INTO `provinces` VALUES (84, 'Trà Vinh', 'Tỉnh');
INSERT INTO `provinces` VALUES (86, 'Vĩnh Long', 'Tỉnh');
INSERT INTO `provinces` VALUES (87, 'Đồng Tháp', 'Tỉnh');
INSERT INTO `provinces` VALUES (89, 'An Giang', 'Tỉnh');
INSERT INTO `provinces` VALUES (91, 'Kiên Giang', 'Tỉnh');
INSERT INTO `provinces` VALUES (92, 'Cần Thơ', 'Thành phố');
INSERT INTO `provinces` VALUES (93, 'Hậu Giang', 'Tỉnh');
INSERT INTO `provinces` VALUES (94, 'Sóc Trăng', 'Tỉnh');
INSERT INTO `provinces` VALUES (95, 'Bạc Liêu', 'Tỉnh');
INSERT INTO `provinces` VALUES (96, 'Cà Mau', 'Tỉnh');

-- ----------------------------
-- Table structure for status_order
-- ----------------------------
DROP TABLE IF EXISTS `status_order`;
CREATE TABLE `status_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_order
-- ----------------------------
INSERT INTO `status_order` VALUES (1, 'Chờ xác nhận');
INSERT INTO `status_order` VALUES (2, 'Đang vận chuyển');
INSERT INTO `status_order` VALUES (3, 'Nhận hàng thành công');
INSERT INTO `status_order` VALUES (4, 'Đánh giá');
INSERT INTO `status_order` VALUES (5, 'Đã hủy');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `social_login_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` bigint(20) NULL DEFAULT NULL,
  `typeid` bigint(20) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_6dotkott2kjsp8vw4d0m25fb7`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '192.168.1.59', '2024-05-26 18:44:21.000000', 'nguyentien.fox@gmail.com', '03eab99de6198cdd19845b8572478077cb494caca815eee755f986f5abd69458', '0336782660', 'normal', 1, 1, 'Quân hoàng');
INSERT INTO `users` VALUES (2, '192.168.1.64', '2024-05-27 09:58:34.000000', 'nguyentien@gmail.com', '03eab99de6198cdd19845b8572478077cb494caca815eee755f986f5abd69458', '0336782660', 'normal', 1, 1, 'Nguyên Thị Tiên');
INSERT INTO `users` VALUES (3, '192.168.1.64', '2024-05-27 10:04:12.000000', '123@gmail.com', 'c6b3491f15b3f66f30c82b87431e60114de8abe2e423cb5fdb5ae856b6f64279', '0336782660', 'normal', 1, 1, '123');

SET FOREIGN_KEY_CHECKS = 1;
