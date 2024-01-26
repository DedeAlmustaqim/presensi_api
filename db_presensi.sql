/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : db_presensi

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 26/01/2024 10:28:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (192, 'App\\Models\\User', 1, 'authToken', '650ce77a1dde0514cbd26b4a6d73e949d87295825d18433c01c90586c178a7d9', '[\"*\"]', '2024-01-25 03:11:20', NULL, '2024-01-11 04:43:46', '2024-01-25 03:11:20');
INSERT INTO `personal_access_tokens` VALUES (193, 'App\\Models\\User', 1, 'authToken', '1ba86a42bb2dd46e9780f52180ed590e269b975f591e3ba7fc1857aa6ecb022d', '[\"*\"]', '2024-01-11 05:11:31', NULL, '2024-01-11 05:05:30', '2024-01-11 05:11:31');
INSERT INTO `personal_access_tokens` VALUES (194, 'App\\Models\\User', 1, 'authToken', 'b4c305194cabac10372de4c59d27b9b316ac18b3dd2edceda62d73cefbc75118', '[\"*\"]', '2024-01-24 08:15:10', NULL, '2024-01-11 05:10:18', '2024-01-24 08:15:10');
INSERT INTO `personal_access_tokens` VALUES (195, 'App\\Models\\User', 1, 'authToken', '611d72b0712f20c62356e10133fb384b0c47bf52c25caca628f53ce1d140d4f2', '[\"*\"]', '2024-01-12 07:40:04', NULL, '2024-01-11 05:11:47', '2024-01-12 07:40:04');
INSERT INTO `personal_access_tokens` VALUES (196, 'App\\Models\\User', 1, 'authToken', '7a1b10d6f41bd0d978c8581987a3436dcf71be1a47d0e73af4613048c6e1ba28', '[\"*\"]', NULL, NULL, '2024-01-24 07:30:41', '2024-01-24 07:30:41');
INSERT INTO `personal_access_tokens` VALUES (197, 'App\\Models\\User', 1, 'authToken', 'b27537712f44c45be4e7734ebc6adfff312dca5ef00a02368ae8fafb69d076c6', '[\"*\"]', NULL, NULL, '2024-01-24 07:31:48', '2024-01-24 07:31:48');
INSERT INTO `personal_access_tokens` VALUES (198, 'App\\Models\\User', 1, 'authToken', 'f618a5bdf79026433def7c2b91703f36573ea24cb10318611c4972868b4be96a', '[\"*\"]', NULL, NULL, '2024-01-24 07:38:22', '2024-01-24 07:38:22');
INSERT INTO `personal_access_tokens` VALUES (199, 'App\\Models\\User', 1, 'authToken', 'f7c9501283b40337081f8ac991c5f2211b98ce67873c453d1cec4202dccae2ac', '[\"*\"]', NULL, NULL, '2024-01-24 07:38:26', '2024-01-24 07:38:26');
INSERT INTO `personal_access_tokens` VALUES (200, 'App\\Models\\User', 1, 'authToken', '4822b95b908ad7a85401bdbbbbddf002f44d7e860e11afef42ca4715183843a3', '[\"*\"]', NULL, NULL, '2024-01-24 07:44:51', '2024-01-24 07:44:51');
INSERT INTO `personal_access_tokens` VALUES (201, 'App\\Models\\User', 1, 'authToken', '6f3b322856a90843717ef037dc90fbd8d5ea3fb5358fff2431bd7ec5560215cd', '[\"*\"]', NULL, NULL, '2024-01-24 07:50:24', '2024-01-24 07:50:24');
INSERT INTO `personal_access_tokens` VALUES (202, 'App\\Models\\User', 1, 'authToken', '7d5100c95e5cdcca9b52e9580395ac870b972973b4881f0e45a1f636619fbbac', '[\"*\"]', NULL, NULL, '2024-01-24 07:51:55', '2024-01-24 07:51:55');
INSERT INTO `personal_access_tokens` VALUES (203, 'App\\Models\\User', 1, 'authToken', '70494a9836c82623347592629b0439580d3e86146fde316cc760b55380a573d9', '[\"*\"]', NULL, NULL, '2024-01-24 07:52:08', '2024-01-24 07:52:08');
INSERT INTO `personal_access_tokens` VALUES (204, 'App\\Models\\User', 1, 'authToken', 'd3db35ea63e4d0c8ee06b5ec9731e576c7141d4015743b38034b6585569ef146', '[\"*\"]', NULL, NULL, '2024-01-24 07:57:09', '2024-01-24 07:57:09');
INSERT INTO `personal_access_tokens` VALUES (205, 'App\\Models\\User', 1, 'authToken', '7155626e30f40f26d3a7a22c16a143bdb02a76c4ea2c5accd2c5bd8f2c8dd199', '[\"*\"]', NULL, NULL, '2024-01-24 08:00:35', '2024-01-24 08:00:35');
INSERT INTO `personal_access_tokens` VALUES (206, 'App\\Models\\User', 1, 'authToken', 'fa26de4d22a0869cbcc0be71d66c7d19b645e0f46380ceda5750dd57eea1e12a', '[\"*\"]', NULL, NULL, '2024-01-24 08:06:22', '2024-01-24 08:06:22');
INSERT INTO `personal_access_tokens` VALUES (207, 'App\\Models\\User', 1, 'authToken', '426147130141bac69efb0275a969a5e520d443966e60db254ec0c7eb4d797e0e', '[\"*\"]', NULL, NULL, '2024-01-24 08:07:12', '2024-01-24 08:07:12');
INSERT INTO `personal_access_tokens` VALUES (208, 'App\\Models\\User', 1, 'authToken', '8b57791bddf21bc682608e4a2f8f508bedb85e7a5964b9acf31c3d8d16672117', '[\"*\"]', NULL, NULL, '2024-01-24 08:08:59', '2024-01-24 08:08:59');
INSERT INTO `personal_access_tokens` VALUES (209, 'App\\Models\\User', 1, 'authToken', 'd5d64368f4a76c259126bffae53e105ce6707b4f1fccdc864f9042c3390d5d38', '[\"*\"]', '2024-01-24 08:16:32', NULL, '2024-01-24 08:11:27', '2024-01-24 08:16:32');
INSERT INTO `personal_access_tokens` VALUES (210, 'App\\Models\\User', 1, 'authToken', '13df715b3e1c1de9c38cc9faa3f4f56ce468c07171275ec6088edb0ed3dbe0a7', '[\"*\"]', NULL, NULL, '2024-01-24 08:27:04', '2024-01-24 08:27:04');
INSERT INTO `personal_access_tokens` VALUES (211, 'App\\Models\\User', 1, 'authToken', '11217a2973d3006e08853fc8639e4324b048596d75436be089d6b773aeb3f281', '[\"*\"]', NULL, NULL, '2024-01-24 08:29:58', '2024-01-24 08:29:58');
INSERT INTO `personal_access_tokens` VALUES (212, 'App\\Models\\User', 1, 'authToken', 'f5a632d5f52deb2e66595bf7198b2905cf1b2653d127a92caa273584c4206fc5', '[\"*\"]', NULL, NULL, '2024-01-24 08:31:50', '2024-01-24 08:31:50');
INSERT INTO `personal_access_tokens` VALUES (213, 'App\\Models\\User', 1, 'authToken', '59b5f16c640cb9e0f6f4096dd80f77773a3ad1a5aca709d77522b39cd6837a7d', '[\"*\"]', NULL, NULL, '2024-01-24 08:32:11', '2024-01-24 08:32:11');
INSERT INTO `personal_access_tokens` VALUES (214, 'App\\Models\\User', 1, 'authToken', '6d994f9560ecd870c2a874c6852d19432238fee92c4b18fa8aa091a773cfb490', '[\"*\"]', NULL, NULL, '2024-01-24 08:33:05', '2024-01-24 08:33:05');
INSERT INTO `personal_access_tokens` VALUES (215, 'App\\Models\\User', 1, 'authToken', '60def87c28f8892a732a0258ad48e2142f1d0fcb0f3b1a07d75a2a977c08266c', '[\"*\"]', NULL, NULL, '2024-01-24 08:36:10', '2024-01-24 08:36:10');
INSERT INTO `personal_access_tokens` VALUES (216, 'App\\Models\\User', 1, 'authToken', '32da155508f98afa31b2640ab5d3c1b6d26135b2944880f6a629751345ae447d', '[\"*\"]', '2024-01-25 03:01:44', NULL, '2024-01-24 08:40:06', '2024-01-25 03:01:44');
INSERT INTO `personal_access_tokens` VALUES (217, 'App\\Models\\User', 1, 'authToken', 'c98681ade64393901cf840c8012cb3332872dba9bb31b74bbc19331c778ab4a8', '[\"*\"]', '2024-01-25 03:10:16', NULL, '2024-01-24 09:15:57', '2024-01-25 03:10:16');
INSERT INTO `personal_access_tokens` VALUES (218, 'App\\Models\\User', 1, 'authToken', '0a07fa48cc11221fd9239a70599095809d92ab38390e795723149a536814f3eb', '[\"*\"]', '2024-01-24 12:21:46', NULL, '2024-01-24 11:39:59', '2024-01-24 12:21:46');
INSERT INTO `personal_access_tokens` VALUES (219, 'App\\Models\\User', 1, 'authToken', '12ef2044e7df41d5b692bb089412eae93983fd507449646f6b15f42c0f65e846', '[\"*\"]', '2024-01-24 11:43:09', NULL, '2024-01-24 11:41:38', '2024-01-24 11:43:09');
INSERT INTO `personal_access_tokens` VALUES (220, 'App\\Models\\User', 1, 'authToken', '5ab5f4a7bbc71949b50074c8e1e95d775d8033ffd9d182c0864c9ab2f80e55e2', '[\"*\"]', NULL, NULL, '2024-01-24 11:48:38', '2024-01-24 11:48:38');
INSERT INTO `personal_access_tokens` VALUES (221, 'App\\Models\\User', 1, 'authToken', '68b5544bb51792ade316ba0a1d5a89257d474e0dec5f4dc52e484b0ff6defd3a', '[\"*\"]', '2024-01-24 11:50:29', NULL, '2024-01-24 11:50:14', '2024-01-24 11:50:29');
INSERT INTO `personal_access_tokens` VALUES (222, 'App\\Models\\User', 1, 'authToken', 'de7b25c6054ae8e26d277518915f7a62bd9192ce27ed118cf3ec2df03076816f', '[\"*\"]', NULL, NULL, '2024-01-24 11:52:53', '2024-01-24 11:52:53');
INSERT INTO `personal_access_tokens` VALUES (223, 'App\\Models\\User', 1, 'authToken', '19c1c63ab44720393685e3da5fe2879538f5a8551ff78a6cee5a6abb8e506cba', '[\"*\"]', NULL, NULL, '2024-01-24 11:53:45', '2024-01-24 11:53:45');
INSERT INTO `personal_access_tokens` VALUES (224, 'App\\Models\\User', 1, 'authToken', 'cf2b27be82b2f75d7981f74aa4c768ba077beed05faaff1c5494c2635ee9005e', '[\"*\"]', NULL, NULL, '2024-01-24 11:54:32', '2024-01-24 11:54:32');
INSERT INTO `personal_access_tokens` VALUES (225, 'App\\Models\\User', 1, 'authToken', 'c4c6df1597cf443508c644db68428d0a48d69b973f60971b0fddc4c0d5ca47d4', '[\"*\"]', '2024-01-24 12:03:28', NULL, '2024-01-24 12:01:56', '2024-01-24 12:03:28');
INSERT INTO `personal_access_tokens` VALUES (226, 'App\\Models\\User', 1, 'authToken', '480dbe7fbcbb29d213e8a34c820833479b76c245d3d552589fd2d25cc8640486', '[\"*\"]', NULL, NULL, '2024-01-24 12:15:48', '2024-01-24 12:15:48');
INSERT INTO `personal_access_tokens` VALUES (227, 'App\\Models\\User', 1, 'authToken', '851a95eaa1b34f503e278152bd6a969af94cf846f7c3e310439b1c1e8c0c2ed5', '[\"*\"]', NULL, NULL, '2024-01-24 12:20:20', '2024-01-24 12:20:20');
INSERT INTO `personal_access_tokens` VALUES (228, 'App\\Models\\User', 1, 'authToken', '2ab2c19e90a354a5287cc5eef9f4e9595359ef733088cad32b7df4a242646229', '[\"*\"]', '2024-01-24 12:28:38', NULL, '2024-01-24 12:20:41', '2024-01-24 12:28:38');
INSERT INTO `personal_access_tokens` VALUES (229, 'App\\Models\\User', 1, 'authToken', 'b5db7c5245746121faef8b508d7bae1512a8aa99154ca3a2db4222497984742a', '[\"*\"]', '2024-01-25 03:01:48', NULL, '2024-01-24 12:29:10', '2024-01-25 03:01:48');

-- ----------------------------
-- Table structure for tbl_absen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_absen`;
CREATE TABLE `tbl_absen`  (
  `id_absen` int NOT NULL AUTO_INCREMENT,
  `id_user` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_in` date NULL DEFAULT NULL,
  `id_ket_in` int NULL DEFAULT NULL,
  `jam_in` time NULL DEFAULT NULL,
  `ket_absen_in` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bukti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_out` date NULL DEFAULT NULL,
  `id_ket_out` int NULL DEFAULT NULL,
  `jam_out` time NULL DEFAULT NULL,
  `ket_absen_out` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stts_ijin` int NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_absen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_absen
-- ----------------------------
INSERT INTO `tbl_absen` VALUES (88, '1', '2023-12-01', 1, '13:33:11', 'Mengikuti Apel Gabungan', NULL, '2023-12-01', 1, '13:37:14', 'Mengikuti Apel Gabungan', 1, NULL);
INSERT INTO `tbl_absen` VALUES (90, '1', '2023-12-03', 1, '13:47:48', 'Mengikuti Apel Gabungan', NULL, '2023-12-03', 1, '13:48:03', 'Mengikuti Apel Gabungan', 1, NULL);
INSERT INTO `tbl_absen` VALUES (91, '1', '2023-12-31', 1, '13:57:08', NULL, NULL, '2023-12-31', 1, '13:57:46', 'Mengikuti Apel Gabungan', 1, NULL);
INSERT INTO `tbl_absen` VALUES (93, '1', '2024-01-08', 1, '03:19:47', NULL, NULL, NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `tbl_absen` VALUES (94, '1', '2024-01-10', 1, '07:10:41', NULL, NULL, NULL, 1, NULL, NULL, 1, NULL);
INSERT INTO `tbl_absen` VALUES (96, '1', '2024-01-11', 1, '03:43:04', 'Mengikuti Apel Gabungan', NULL, NULL, 1, NULL, NULL, 1, '2024-01-11');
INSERT INTO `tbl_absen` VALUES (102, '1', '2023-12-24', 5, '09:47:55', 'Sakit', NULL, '2023-12-24', 5, '09:47:55', 'Sakit', 1, NULL);
INSERT INTO `tbl_absen` VALUES (104, '1', '2024-01-25', 1, '02:52:27', NULL, NULL, NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `tbl_absen` VALUES (106, '1', '2023-12-25', 5, '03:00:37', 'Sakit', NULL, '2023-12-25', 5, '03:00:37', 'Sakit', 1, NULL);

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin`  (
  `id_user` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_akses` int NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `id_unit` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `username`(`username` ASC) USING BTREE,
  INDEX `id_akses`(`id_akses` ASC) USING BTREE,
  INDEX `tbl_admin_ibfk_2`(`id_unit` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES ('dFDD4hnaN0NGUar2', 2, 'digital_native', '$2y$10$AQKK7Qha/n9ggIYZtwSrjeNHOf7mVY0ggJ/i3LmJNmCxJnS41kxw.', 'Dede Almustaqim, S.Kom', NULL, NULL, '2023-04-17 21:56:06', NULL, NULL, '1');
INSERT INTO `tbl_admin` VALUES ('kfOB4iuP5lE01nab', 1, 'AdminDigitalNative', '$2y$10$AQKK7Qha/n9ggIYZtwSrjeNHOf7mVY0ggJ/i3LmJNmCxJnS41kxw.', 'Dede Almustaqim, S.kom', NULL, 'simpel@simpel.com', '2020-08-20 17:00:00', NULL, '2023-04-06 04:25:10', NULL);
INSERT INTO `tbl_admin` VALUES ('XOCgKeYfJWTIJ2Bx', 3, 'digital_native_qr', '$2y$10$AQKK7Qha/n9ggIYZtwSrjeNHOf7mVY0ggJ/i3LmJNmCxJnS41kxw.', 'Dede Almustaqim', NULL, NULL, '2023-04-23 16:20:52', NULL, NULL, '1');

-- ----------------------------
-- Table structure for tbl_akses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_akses`;
CREATE TABLE `tbl_akses`  (
  `id_akses` int NOT NULL AUTO_INCREMENT,
  `hak_akses` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_akses`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_akses
-- ----------------------------
INSERT INTO `tbl_akses` VALUES (1, 'Superadmin');
INSERT INTO `tbl_akses` VALUES (2, 'Adminstrator SKPD');
INSERT INTO `tbl_akses` VALUES (3, 'Operator Kode QR ');
INSERT INTO `tbl_akses` VALUES (4, 'Operator');
INSERT INTO `tbl_akses` VALUES (5, 'Dana Desa');

-- ----------------------------
-- Table structure for tbl_banner_promo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner_promo`;
CREATE TABLE `tbl_banner_promo`  (
  `id_banner` int NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_banner`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_banner_promo
-- ----------------------------
INSERT INTO `tbl_banner_promo` VALUES (1, 'img1', 'http://digitalnative.web.id/wp-content/uploads/2020/11/i2.jpg');
INSERT INTO `tbl_banner_promo` VALUES (2, 'img2', 'http://digitalnative.web.id/wp-content/uploads/2020/11/i2.jpg');
INSERT INTO `tbl_banner_promo` VALUES (3, 'img3', 'http://digitalnative.web.id/wp-content/uploads/2020/11/i2.jpg');
INSERT INTO `tbl_banner_promo` VALUES (4, 'img4', 'http://digitalnative.web.id/wp-content/uploads/2020/11/i2.jpg');
INSERT INTO `tbl_banner_promo` VALUES (5, 'img5', 'http://digitalnative.web.id/wp-content/uploads/2020/11/i2.jpg');

-- ----------------------------
-- Table structure for tbl_bc
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bc`;
CREATE TABLE `tbl_bc`  (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `konten` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `publish` date NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_post`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_bc
-- ----------------------------
INSERT INTO `tbl_bc` VALUES (1, 'Notifikasi dari Digital Native', 'Ini adalah aplikasi buatan Dede almustaqim', '2023-04-19', 'http://digitalnative.web.id/wp-content/uploads/2022/06/simpera1.png');
INSERT INTO `tbl_bc` VALUES (2, 'Pemberitahuan Penting', 'Silahkan dicoba aplikasi ini, testing untuk bug error dan celah untuk proses absensi', '2023-04-22', 'http://digitalnative.web.id/wp-content/uploads/2022/06/simpera1.png');

-- ----------------------------
-- Table structure for tbl_ket
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ket`;
CREATE TABLE `tbl_ket`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_ket
-- ----------------------------
INSERT INTO `tbl_ket` VALUES (1, 'Hadir');
INSERT INTO `tbl_ket` VALUES (2, 'Tanpa Ket.');
INSERT INTO `tbl_ket` VALUES (3, 'DL');
INSERT INTO `tbl_ket` VALUES (4, 'DD');
INSERT INTO `tbl_ket` VALUES (5, 'Sakit');
INSERT INTO `tbl_ket` VALUES (6, 'Hal Lainnya');

-- ----------------------------
-- Table structure for tbl_ket_out
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ket_out`;
CREATE TABLE `tbl_ket_out`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ket_out` int NULL DEFAULT NULL,
  `ket_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_ket_out
-- ----------------------------
INSERT INTO `tbl_ket_out` VALUES (1, 0, 'Belum Absen');
INSERT INTO `tbl_ket_out` VALUES (2, 1, 'Hadir');
INSERT INTO `tbl_ket_out` VALUES (3, 2, 'Tanpa Ket.');
INSERT INTO `tbl_ket_out` VALUES (4, 3, 'Dinas Luar');
INSERT INTO `tbl_ket_out` VALUES (5, 4, 'Sakit');
INSERT INTO `tbl_ket_out` VALUES (6, 5, 'Hal Lainnya');

-- ----------------------------
-- Table structure for tbl_promo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_promo`;
CREATE TABLE `tbl_promo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_promo
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_qr_scan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_qr_scan`;
CREATE TABLE `tbl_qr_scan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_unit` int NULL DEFAULT NULL,
  `qr_in` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qr_out` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qr_time_in_start` time NULL DEFAULT NULL,
  `qr_time_in_end` time NULL DEFAULT NULL,
  `qr_time_out_start` time NULL DEFAULT NULL,
  `qr_time_out_end` time NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_qr_scan
-- ----------------------------
INSERT INTO `tbl_qr_scan` VALUES (1, 1, 'c961490f99', 'd3592d079a', '07:00:00', '17:00:00', '08:30:00', '24:30:00');

-- ----------------------------
-- Table structure for tbl_unit
-- ----------------------------
DROP TABLE IF EXISTS `tbl_unit`;
CREATE TABLE `tbl_unit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nm_unit` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pimpinan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gol` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `long` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `radius` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE INDEX `id_unit_2`(`id` ASC) USING BTREE,
  INDEX `id_unit`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_unit
-- ----------------------------
INSERT INTO `tbl_unit` VALUES (1, 'Digital Native Developer', NULL, NULL, NULL, '-2.1695074537631482', '115.22229195114002', 100, '2023-04-17 21:55:38', NULL);
INSERT INTO `tbl_unit` VALUES (3, 'Badan Perencanaan Pembangunan dan Litbang Daerah', 'Kepala Bappeda', 'IVa', 'Kepala Bappeda', '1', '2', 3, '2023-12-30 07:38:05', '2023-12-30 07:48:53');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nik` int NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `nip` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_unit` int NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `current_login` time NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  INDEX `id_unit`(`id_unit` ASC) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_unit`) REFERENCES `tbl_unit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Dede Almustaqim', 'dede.tbs@gmail.com', NULL, NULL, '$2a$12$9MEPqOwgOUfzkq4tyKhjd.d9qNDhdg3oZj/AKXL0IdIaqDli32U0O', NULL, '2024-01-11 13:13:40', '2024-01-11 13:13:40', '-', 1, 'CEO', 'https://i.ibb.co/S32HNjD/no-image.jpg', 'dede_tbs', NULL);

-- ----------------------------
-- Event structure for qr_refresh
-- ----------------------------
DROP EVENT IF EXISTS `qr_refresh`;
delimiter ;;
CREATE EVENT `qr_refresh`
ON SCHEDULE
EVERY '10' SECOND STARTS '2023-04-08 15:05:42'
DO UPDATE tbl_qr_scan SET qr_in = SUBSTR(MD5(RAND()), 1, 10), qr_in = SUBSTR(MD5(RAND()), 1, 10), qr_out = SUBSTR(MD5(RAND()), 1, 10), qr_out = SUBSTR(MD5(RAND()), 1, 10)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
