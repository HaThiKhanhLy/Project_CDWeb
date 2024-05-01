/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : greenthumbhub

 Target Server Type    : MariaDB
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 01/05/2024 14:54:59
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
INSERT INTO `products` VALUES (1, '2024-05-01 12:53:21.000000', 'HƯỚNG DẪN THAY ĐẤT VÀ THAY CHẬU KHI MUA CÂY TRONG CHẬU NHỰA/BỊCH NHỰA', 0, 15000, 'Xương rồng trứng chim 3-5cm (bịch nhựa)', 10, b'1', 1);
INSERT INTO `products` VALUES (2, '2024-05-01 12:54:50.000000', 'Tưới nước: Quan sát đất trồng, chỉ tưới khi đất đã khô hoàn toàn (khoản 2-3 ngày). Khi tưới phải tưới ướt đẫm, không tưới lên lá, tránh để cây khô trong nhiều ngày liên tục.', 0, 15000, 'Sen đá ống điếu (bịch nhựa)', 10, b'1', 1);
INSERT INTO `products` VALUES (3, '2024-05-01 12:55:25.000000', 'Tưới nước: Quan sát đất trồng, chỉ tưới khi đất đã khô hoàn toàn (khoản 2-3 ngày). Khi tưới phải tưới ướt đẫm, không tưới lên lá, tránh để cây khô trong nhiều ngày liên tục.', 0, 15000, 'Sen đá ngọc lá dài 3-5cm (bịch nhựa/chậu nhựa)', 10, b'1', 1);
INSERT INTO `products` VALUES (4, '2024-05-01 13:31:35.000000', 'Tưới nước: Quan sát đất trồng, chỉ tưới khi đất đã khô hoàn toàn (khoản 2-3 ngày). Khi tưới phải tưới ướt đẫm, không tưới lên lá, tránh để cây khô trong nhiều ngày liên tục.', 0, 15000, 'Sen đá mặt trăng 5-7cm (bịch nhựa/chậu nhựa)', 10, b'1', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
