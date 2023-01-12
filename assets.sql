/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `assets`;
CREATE DATABASE IF NOT EXISTS `assets` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assets`;

DROP TABLE IF EXISTS `a_admin_asset`;
CREATE TABLE IF NOT EXISTS `a_admin_asset` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `bm` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `bzdw` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `cc` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `cgj` decimal(19,2) DEFAULT NULL,
  `cz` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `gg` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `gys` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `gys_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `jldw` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mrck` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mrck_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `qr_code` int DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `syfw` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `xh` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `xsj` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_asset`;
INSERT INTO `a_admin_asset` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `bm`, `bzdw`, `cc`, `cgj`, `cz`, `gg`, `gys`, `gys_name`, `image_url`, `jldw`, `mrck`, `mrck_name`, `name`, `qr_code`, `remark`, `status`, `syfw`, `type`, `xh`, `xsj`) VALUES
	('1613339462023122944', 'admin', '2023-01-12 08:57:56.810000', 0, NULL, NULL, 'ZC1', '张', '大', 50.00, '好', 'L', '1613339071130767360', '浙江宁波XXX有限公司', 'https://fanyi-cdn.cdn.bcebos.com/static/translation/img/header/logo_e835568.png', '张', '1613339169554305024', '高校一号仓库', '电脑桌', 1, '测试', b'0', '办公', '固定资产', '无', 60.00),
	('1613339750557683712', 'admin', '2023-01-12 08:59:05.604000', 0, NULL, NULL, 'ZC2', '个', '中等', 2000.00, '好', '高性能', '1613338892663132160', '浙江杭州XXX有限公司', 'https://fanyi-cdn.cdn.bcebos.com/static/translation/img/header/logo_e835568.png', '个', '1613339201049333760', '高校二号仓库', '空调', 2, '测试', b'0', '办公区域', '资产', '奥克斯', 2000.00);

DROP TABLE IF EXISTS `a_admin_assets`;
CREATE TABLE IF NOT EXISTS `a_admin_assets` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `buy_date` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `buy_number` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `demand` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `destroy_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `destroy_time` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `give_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `give_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `give_type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `money` decimal(19,2) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `no` int NOT NULL,
  `out_flag` int NOT NULL,
  `out_time` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `out_work` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `spec` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` int NOT NULL,
  `unit` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `warehouse` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_assets`;
INSERT INTO `a_admin_assets` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `buy_date`, `buy_number`, `demand`, `destroy_name`, `destroy_time`, `give_id`, `give_name`, `give_type`, `model`, `money`, `name`, `no`, `out_flag`, `out_time`, `out_work`, `remark`, `spec`, `status`, `unit`, `warehouse`) VALUES
	('1613340059451396097', 'admin', '2023-01-12 09:00:19.242000', 0, NULL, NULL, '2023-01-12', '1613339964576239616', '办公需要', '', NULL, '', '', '', '无', 60.00, '电脑桌 1', 1, 0, NULL, NULL, '', 'L', 0, '张', '高校一号仓库'),
	('1613340059472367616', 'admin', '2023-01-12 09:00:19.245000', 0, NULL, NULL, '2023-01-12', '1613339964576239616', '办公需要', '', NULL, '', '', '', '无', 60.00, '电脑桌 2', 2, 0, NULL, NULL, '', 'L', 0, '张', '高校一号仓库'),
	('1613340059480756224', 'admin', '2023-01-12 09:00:19.247000', 0, NULL, NULL, '2023-01-12', '1613339964576239616', '办公需要', '', NULL, '', '', '', '无', 60.00, '电脑桌 3', 3, 0, NULL, NULL, '', 'L', 0, '张', '高校一号仓库'),
	('1613340059489144832', 'admin', '2023-01-12 09:00:19.250000', 0, 'admin', '2023-01-12 09:00:44.151000', '2023-01-12', '1613339964576239616', '办公需要', '', NULL, '682265633886208', '管理员', '按人出库', '无', 60.00, '电脑桌 4', 4, 1, '2023-01-12 09:00:44', 'admin', '', 'L', 0, '张', '高校一号仓库'),
	('1613340059501727744', 'admin', '2023-01-12 09:00:19.252000', 0, 'admin', '2023-01-12 09:00:32.602000', '2023-01-12', '1613339964576239616', '办公需要', '', NULL, '1527830053524738048', 'user4', '按人出库', '无', 60.00, '电脑桌 5', 5, 1, '2023-01-12 09:00:32', 'admin', '', 'L', 0, '张', '高校一号仓库');

DROP TABLE IF EXISTS `a_admin_assets_buy`;
CREATE TABLE IF NOT EXISTS `a_admin_assets_buy` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `asset_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `audit_flag` int NOT NULL,
  `bm` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `bzdw` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `cc` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `cz` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `gys` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `gys_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `max_money` decimal(19,2) DEFAULT NULL,
  `min_money` decimal(19,2) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mrck` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mrck_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `quantity` decimal(19,2) DEFAULT NULL,
  `quantity2` decimal(19,2) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `spec` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `submit_flag` int NOT NULL,
  `syfw` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `ware_flag` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_assets_buy`;
INSERT INTO `a_admin_assets_buy` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `asset_id`, `audit_flag`, `bm`, `bzdw`, `cc`, `cz`, `gys`, `gys_name`, `image_url`, `max_money`, `min_money`, `model`, `mrck`, `mrck_name`, `name`, `quantity`, `quantity2`, `remark`, `spec`, `submit_flag`, `syfw`, `type`, `unit`, `ware_flag`) VALUES
	('1613339964576239616', 'admin', '2023-01-12 08:59:56.619000', 0, 'admin', '2023-01-12 09:00:19.254000', '1613339462023122944', 1, '1613339462023122944', '张', '大', '好', '1613339071130767360', '浙江宁波XXX有限公司', 'https://fanyi-cdn.cdn.bcebos.com/static/translation/img/header/logo_e835568.png', 50.00, 60.00, '无', '1613339169554305024', '高校一号仓库', '电脑桌', 5.00, 0.00, '办公需要', 'L', 1, '办公', '固定资产', '张', 1),
	('1613343367184388096', 'admin', '2023-01-12 09:13:27.868000', 0, 'admin', '2023-01-12 09:14:18.903000', '1613339750557683712', 1, '1613339750557683712', '个', '中等', '好', '1613338892663132160', '浙江杭州XXX有限公司', 'https://fanyi-cdn.cdn.bcebos.com/static/translation/img/header/logo_e835568.png', 2000.00, 2000.00, '奥克斯', '1613339201049333760', '高校二号仓库', '空调', 1.00, 1.00, '测试', '高性能', 1, '办公区域', '资产', '个', 0);

DROP TABLE IF EXISTS `a_admin_assets_repair`;
CREATE TABLE IF NOT EXISTS `a_admin_assets_repair` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `asset_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `asset_ware` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `repair_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `repair_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_assets_repair`;
INSERT INTO `a_admin_assets_repair` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `asset_id`, `asset_name`, `asset_type`, `asset_ware`, `repair_id`, `repair_name`) VALUES
	('1613340207426441216', 'admin', '2023-01-12 09:00:54.538000', 0, NULL, NULL, '1613340059501727744', '电脑桌 5', '按人出库', '高校一号仓库', '682265633886208', '管理员');

DROP TABLE IF EXISTS `a_admin_asset_supplier`;
CREATE TABLE IF NOT EXISTS `a_admin_asset_supplier` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `bm` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_asset_supplier`;
INSERT INTO `a_admin_asset_supplier` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `address`, `bm`, `mobile`, `name`, `remark`, `status`, `type`, `url`) VALUES
	('1613338892663132160', 'admin', '2023-01-12 08:55:41.055000', 0, NULL, NULL, '浙江杭州', NULL, '0571-66666666', '浙江杭州XXX有限公司', '测试', b'0', '资产', 'https://blog.csdn.net/qq_41464123'),
	('1613339071130767360', 'admin', '2023-01-12 08:56:23.605000', 0, NULL, NULL, '浙江宁波', NULL, '0574-69854785', '浙江宁波XXX有限公司', '测试', b'0', '设备', 'https://gitee.com/yyzwz');

DROP TABLE IF EXISTS `a_admin_asset_unit`;
CREATE TABLE IF NOT EXISTS `a_admin_asset_unit` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `bm` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_asset_unit`;
INSERT INTO `a_admin_asset_unit` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `bm`, `name`, `remark`, `status`) VALUES
	('1613338609052684288', 'admin', '2023-01-12 08:54:33.445000', 0, NULL, NULL, 'DW1', '个', '', b'0'),
	('1613338627478261760', 'admin', '2023-01-12 08:54:37.838000', 0, NULL, NULL, 'DW2', '张', '', b'0'),
	('1613338650274304000', 'admin', '2023-01-12 08:54:43.267000', 0, NULL, NULL, 'DW3', '盒', '', b'0'),
	('1613338672097267712', 'admin', '2023-01-12 08:54:48.471000', 0, NULL, NULL, 'DW4', '条', '', b'0'),
	('1613338696176766976', 'admin', '2023-01-12 08:54:54.212000', 0, NULL, NULL, 'DW5', '桶', '', b'0'),
	('1613338709401407488', 'admin', '2023-01-12 08:54:57.365000', 0, NULL, NULL, 'DW6', '件', '', b'0'),
	('1613338723599126528', 'admin', '2023-01-12 08:55:00.750000', 0, NULL, NULL, 'DW7', '只', '', b'0');

DROP TABLE IF EXISTS `a_admin_asset_ware`;
CREATE TABLE IF NOT EXISTS `a_admin_asset_ware` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `admin_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_admin_asset_ware`;
INSERT INTO `a_admin_asset_ware` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `address`, `admin_id`, `admin_name`, `name`, `remark`, `status`) VALUES
	('1613339169554305024', 'admin', '2023-01-12 08:56:47.085000', 0, NULL, NULL, '高校一号仓库', '682265633886208', 'admin', '高校一号仓库', '测试', b'0'),
	('1613339201049333760', 'admin', '2023-01-12 08:56:54.586000', 0, NULL, NULL, '高校二号仓库', '682265633886208', 'admin', '高校二号仓库', '测试', b'0');

DROP TABLE IF EXISTS `a_department`;
CREATE TABLE IF NOT EXISTS `a_department` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department`;
INSERT INTO `a_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`) VALUES
	(1464487288363945985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 1.00, 0, '人力资源部', b'1'),
	(1464487332064399361, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 2.00, 0, '行政综合部', b'1'),
	(1464487379074158593, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 3.00, 0, '设计研发部', b'1'),
	(1464487406328745985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 4.00, 0, '财务部', b'0'),
	(1464487432169852929, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 5.00, 0, '综合发展部', b'0'),
	(1464487524662644737, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 1.00, 0, 'HRBP部', b'0'),
	(1464487559647334401, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 2.00, 0, '招聘部', b'0'),
	(1464487623933431809, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 1.00, 0, '安保部', b'0'),
	(1464487656678363137, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 2.00, 0, '保洁部', b'0'),
	(1464487691780493313, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 3.00, 0, '设备维修部', b'0'),
	(1464487733895499777, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 1.00, 0, '视频剪辑部', b'0'),
	(1464487807572643841, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 2.00, 0, '产品应用部', b'0'),
	(1527834362656198656, 'admin', '2022-05-21 10:11:13', 0, NULL, NULL, 0, 6.00, 0, '客服部', b'0');

DROP TABLE IF EXISTS `a_department_header`;
CREATE TABLE IF NOT EXISTS `a_department_header` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department_header`;

DROP TABLE IF EXISTS `a_dict`;
CREATE TABLE IF NOT EXISTS `a_dict` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict`;
INSERT INTO `a_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	(75135930788220928, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '性别', 'sex', 0.00),
	(75388696739713024, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '分权限', 'permission_type', 2.00),
	(1536612750841745408, 'admin', '2022-06-14 15:33:23', 0, NULL, NULL, '', '学历', 'education', 3.00),
	(1536613395229446144, 'admin', '2022-06-14 15:35:57', 0, NULL, NULL, '', '在职状态', 'occupationStatus', 4.00);

DROP TABLE IF EXISTS `a_dict_data`;
CREATE TABLE IF NOT EXISTS `a_dict_data` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict_data`;
INSERT INTO `a_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	(75158227712479232, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 0.00, 0, '男', '男'),
	(75159254272577536, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 1.00, 0, '女', '女'),
	(75159898425397248, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 2.00, -1, '保密', '保密'),
	(75390787835138048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 0.00, 0, '查看操作(view)', 'view'),
	(75390886501945344, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 1.00, 0, '添加操作(add)', 'add'),
	(75390993939042304, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 2.00, 0, '编辑操作(edit)', 'edit'),
	(75391067532300288, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 3.00, 0, '删除操作(delete)', 'delete'),
	(75391126902673408, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 4.00, 0, '清空操作(clear)', 'clear'),
	(75391192883269632, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 5.00, 0, '启用操作(enable)', 'enable'),
	(75391251024711680, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 6.00, 0, '禁用操作(disable)', 'disable'),
	(75391297124306944, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 7.00, 0, '搜索操作(search)', 'search'),
	(75391343379091456, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 8.00, 0, '上传文件(upload)', 'upload'),
	(75391407526776832, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 9.00, 0, '导出操作(output)', 'output'),
	(75391475042488320, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 10.00, 0, '导入操作(input)', 'input'),
	(75391522182270976, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 11.00, 0, '分配权限(editPerm)', 'editPerm'),
	(75391576364290048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 12.00, 0, '设为默认(setDefault)', 'setDefault'),
	(75391798033256448, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 13.00, 0, '其他操作(other)', 'other'),
	(1536612796106674176, 'admin', '2022-06-14 15:33:34', 0, NULL, NULL, '', 1536612750841745408, 1.00, 0, '博士', '博士'),
	(1536612834962706432, 'admin', '2022-06-14 15:33:43', 0, NULL, NULL, '', 1536612750841745408, 2.00, 0, '硕士', '硕士'),
	(1536612883465637888, 'admin', '2022-06-14 15:33:55', 0, 'admin', '2022-06-14 15:34:13', '', 1536612750841745408, 3.00, 0, '本科', '本科'),
	(1536612930576060416, 'admin', '2022-06-14 15:34:06', 0, 'admin', '2022-06-14 15:34:11', '', 1536612750841745408, 4.00, 0, '专科', '专科'),
	(1536612993519980544, 'admin', '2022-06-14 15:34:21', 0, '', NULL, '', 1536612750841745408, 5.00, 0, '高中及以下', '高中及以下'),
	(1536613425902391296, 'admin', '2022-06-14 15:36:04', 0, NULL, NULL, '', 1536613395229446144, 1.00, 0, '在职', '在职'),
	(1536613447544999936, 'admin', '2022-06-14 15:36:09', 0, NULL, NULL, '', 1536613395229446144, 2.00, 0, '离职', '离职');

DROP TABLE IF EXISTS `a_file`;
CREATE TABLE IF NOT EXISTS `a_file` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_file`;
INSERT INTO `a_file` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `size`, `type`, `url`, `f_key`, `location`) VALUES
	(1527897791781801984, 'admin', '2022-05-21 14:23:15', 0, NULL, NULL, 'gh_57ba35562a20_258.jpg', 43531, 'image/jpeg', 'C:\\oa-file/20220521/1e07b00ffc20427fbdf2c434231c1e1e.jpg', '1e07b00ffc20427fbdf2c434231c1e1e.jpg', 0),
	(1527897840372813824, 'admin', '2022-05-21 14:23:27', 0, NULL, NULL, '美术版权.xlsx', 3605123, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'C:\\oa-file/20220521/4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', '4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', 0),
	(1527897921570344960, 'admin', '2022-05-21 14:23:46', 0, NULL, NULL, '公司大门通行设备使用说明-V1.pdf', 914877, 'application/pdf', 'C:\\oa-file/20220521/74e865aed9594ea9a9a0536161e40066.pdf', '74e865aed9594ea9a9a0536161e40066.pdf', 0),
	(1527898199690448896, 'admin', '2022-05-21 14:24:52', 0, NULL, NULL, '111.mp4', 180593, 'video/mp4', 'C:\\oa-file/20220521/113344a2389349ed8d02fb7dacfa058f.mp4', '113344a2389349ed8d02fb7dacfa058f.mp4', 0),
	(1527899386892390400, 'admin', '2022-05-21 14:29:36', 0, NULL, NULL, '【模版】需求文档.md.zip', 3104, 'application/x-zip-compressed', 'C:\\oa-file/20220521/dacc0bc61cf34bc18d1259b4ce60d52c.zip', 'dacc0bc61cf34bc18d1259b4ce60d52c.zip', 0),
	(1536614206311370752, 'admin', '2022-06-14 15:39:10', 0, NULL, NULL, '张三签名.png', 1686, 'image/png', 'C:\\\\oa-file/20220614/62a6f2fde5994e5fac6a78aa5ad070ad.png', '62a6f2fde5994e5fac6a78aa5ad070ad.png', 0),
	(1536614698903015424, 'admin', '2022-06-14 15:41:08', 0, NULL, NULL, '张三简历.pdf', 28091, 'application/pdf', 'C:\\\\oa-file/20220614/2a643018f08a4a4bbfacbb19218ab1e2.pdf', '2a643018f08a4a4bbfacbb19218ab1e2.pdf', 0);

DROP TABLE IF EXISTS `a_log`;
CREATE TABLE IF NOT EXISTS `a_log` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_log`;
INSERT INTO `a_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `code`, `device`) VALUES
	(1536883393592168448, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 287, '127.0.0.1', '本地测试', '登录系统', '{"password":"密码隐藏","code":"8817","saveLogin":"true","captchaId":"ef9e5437ff544c8b91d9810febcb58e7","username":"admin"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883393592168449, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 263, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883394787545090, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883395219558400, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883401452294144, NULL, '2022-06-15 09:28:52', 0, NULL, '2022-06-15 09:28:52', 76, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883413934542848, NULL, '2022-06-15 09:28:54', 0, NULL, '2022-06-15 09:28:54', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415226388480, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 39, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415259942913, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415280914432, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 94, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","nickname":"","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415444492288, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420095975424, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420171472896, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 58, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883421131968513, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 38, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883423262674944, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 50, '127.0.0.1', '本地测试', '查询系统文件', '{"pageNumber":"1","endDate":"","fkey":"","name":"","pageSize":"15","sort":"createTime","type":"","startDate":"","order":"desc"}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771840, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 41, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771841, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 34, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771842, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 44, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883426920108032, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 55, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883430367825920, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883433186398208, NULL, '2022-06-15 09:28:59', 0, NULL, '2022-06-15 09:28:59', 43, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444859146240, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 50, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444947226624, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 59, '127.0.0.1', '本地测试', '查询数据字典值', '{"pageNumber":"1","name":"","pageSize":"10","sort":"sortOrder","status":"","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883446968881152, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 43, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451238682624, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451347734528, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 65, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883452538916864, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883453881094144, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 48, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883466526920704, NULL, '2022-06-15 09:29:07', 0, NULL, '2022-06-15 09:29:07', 42, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883470083690496, NULL, '2022-06-15 09:29:08', 0, NULL, '2022-06-15 09:29:08', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883482377195520, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 41, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883484109443072, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 50, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883506003709952, NULL, '2022-06-15 09:29:16', 0, NULL, '2022-06-15 09:29:16', 86, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883509954744320, NULL, '2022-06-15 09:29:17', 0, NULL, '2022-06-15 09:29:17', 38, '127.0.0.1', '本地测试', '查询日志', '{"logType":"4","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883517961670656, NULL, '2022-06-15 09:29:19', 0, NULL, '2022-06-15 09:29:19', 39, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095723165945856, NULL, '2023-01-11 16:49:25', 0, NULL, '2023-01-11 16:49:25', 487, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"4783","captchaId":"5a0bcfe99e7843219443ebfb3d2d12c4","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095724537483264, NULL, '2023-01-11 16:49:25', 0, NULL, '2023-01-11 16:49:25', 230, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095725950963712, NULL, '2023-01-11 16:49:26', 0, NULL, '2023-01-11 16:49:26', 125, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095738995249152, NULL, '2023-01-11 16:49:29', 0, NULL, '2023-01-11 16:49:29', 59, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095739343376384, NULL, '2023-01-11 16:49:29', 0, NULL, '2023-01-11 16:49:29', 53, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095962757173248, NULL, '2023-01-11 16:50:22', 0, NULL, '2023-01-11 16:50:22', 117, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095963197575168, NULL, '2023-01-11 16:50:22', 0, NULL, '2023-01-11 16:50:22', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095974874517504, NULL, '2023-01-11 16:50:25', 0, NULL, '2023-01-11 16:50:25', 40, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1535166254703316992"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095979295313920, NULL, '2023-01-11 16:50:26', 0, NULL, '2023-01-11 16:50:26', 39, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095997909635072, NULL, '2023-01-11 16:50:30', 0, NULL, '2023-01-11 16:50:30', 45, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"125909152017944576","updateBy":"admin","createBy":"admin","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"zwz","title":"固定资产管理","level":"0","status":"0","type":"-1","component":"","path":"","icon":"md-home","parentId":"0","buttonType":"","description":"","sortOrder":"1","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"0"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095999562190849, NULL, '2023-01-11 16:50:31', 0, NULL, '2023-01-11 16:50:31', 57, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095999696408576, NULL, '2023-01-11 16:50:31', 0, NULL, '2023-01-11 16:50:31', 127, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613095999704797184, NULL, '2023-01-11 16:50:31', 0, NULL, '2023-01-11 16:50:31', 106, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096008990986240, NULL, '2023-01-11 16:50:34', 0, NULL, '2023-01-11 16:50:34', 456, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1535166254703316992"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096015177584640, NULL, '2023-01-11 16:50:35', 0, NULL, '2023-01-11 16:50:35', 45, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096322137722880, NULL, '2023-01-11 16:51:48', 0, NULL, '2023-01-11 16:51:48', 83, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"8","buttonType":"","status":"0","path":"/assetDataMenu","component":"Main","title":"资产品类","name":"assetDataMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096323253407744, NULL, '2023-01-11 16:51:48', 0, NULL, '2023-01-11 16:51:48', 34, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096323890941952, NULL, '2023-01-11 16:51:48', 0, NULL, '2023-01-11 16:51:48', 38, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096323991605248, NULL, '2023-01-11 16:51:48', 0, NULL, '2023-01-11 16:51:48', 97, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096328257212416, NULL, '2023-01-11 16:51:49', 0, NULL, '2023-01-11 16:51:49', 33, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1613096322099974144"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096438814871552, NULL, '2023-01-11 16:52:16', 0, NULL, '2023-01-11 16:52:16', 92, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096322099974144","level":"2","sortOrder":"1","buttonType":"","status":"0","component":"asset/adminAssetUnit/index","name":"adminAssetUnit","path":"adminAssetUnit","title":"资产单位"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096439938945024, NULL, '2023-01-11 16:52:16', 0, NULL, '2023-01-11 16:52:16', 65, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096440773611520, NULL, '2023-01-11 16:52:16', 0, NULL, '2023-01-11 16:52:16', 62, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096440899440640, NULL, '2023-01-11 16:52:16', 0, NULL, '2023-01-11 16:52:16', 183, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096505214898176, NULL, '2023-01-11 16:52:32', 0, NULL, '2023-01-11 16:52:32', 139, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096322099974144","level":"2","sortOrder":"2","buttonType":"","status":"0","title":"资产品类","component":"asset/adminAsset/index","name":"adminAsset","path":"adminAsset"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096507387547648, NULL, '2023-01-11 16:52:32', 0, NULL, '2023-01-11 16:52:32', 40, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096507391741952, NULL, '2023-01-11 16:52:32', 0, NULL, '2023-01-11 16:52:32', 87, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096507513376768, NULL, '2023-01-11 16:52:32', 0, NULL, '2023-01-11 16:52:32', 160, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096545694126080, NULL, '2023-01-11 16:52:41', 0, NULL, '2023-01-11 16:52:41', 111, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1613096322099974144"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096563607998464, NULL, '2023-01-11 16:52:45', 0, NULL, '2023-01-11 16:52:45', 44, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096624828059648, NULL, '2023-01-11 16:53:00', 0, NULL, '2023-01-11 16:53:00', 88, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"9","buttonType":"","status":"0","path":"/assetElseMenu","component":"Main","title":"资产衍生","name":"assetElseMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096626652581888, NULL, '2023-01-11 16:53:00', 0, NULL, '2023-01-11 16:53:00', 66, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096626660970496, NULL, '2023-01-11 16:53:00', 0, NULL, '2023-01-11 16:53:00', 110, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096626803576832, NULL, '2023-01-11 16:53:00', 0, NULL, '2023-01-11 16:53:00', 119, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096629953499136, NULL, '2023-01-11 16:53:01', 0, NULL, '2023-01-11 16:53:01', 34, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1613096624807088128"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096685607718912, NULL, '2023-01-11 16:53:15', 0, NULL, '2023-01-11 16:53:15', 149, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096624807088128","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"资产供应商","component":"asset/adminAssetSupplier/index","name":"adminAssetSupplier","path":"adminAssetSupplier"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096686723403776, NULL, '2023-01-11 16:53:15', 0, NULL, '2023-01-11 16:53:15', 35, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096687650344961, NULL, '2023-01-11 16:53:15', 0, NULL, '2023-01-11 16:53:15', 38, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096687755202560, NULL, '2023-01-11 16:53:15', 0, NULL, '2023-01-11 16:53:15', 98, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096736744673280, NULL, '2023-01-11 16:53:27', 0, NULL, '2023-01-11 16:53:27', 96, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096624807088128","level":"2","sortOrder":"2","buttonType":"","status":"0","title":"资产仓库","component":"asset/adminAssetWare/index","name":"adminAssetWare","path":"adminAssetWare"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096738573389824, NULL, '2023-01-11 16:53:27', 0, NULL, '2023-01-11 16:53:27', 25, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096738577584128, NULL, '2023-01-11 16:53:27', 0, NULL, '2023-01-11 16:53:27', 98, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096738695024640, NULL, '2023-01-11 16:53:27', 0, NULL, '2023-01-11 16:53:27', 61, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096784207417344, NULL, '2023-01-11 16:53:38', 0, NULL, '2023-01-11 16:53:38', 99, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1613096624807088128"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096791291596800, NULL, '2023-01-11 16:53:40', 0, NULL, '2023-01-11 16:53:40', 36, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096859549700096, NULL, '2023-01-11 16:53:56', 0, NULL, '2023-01-11 16:53:56', 93, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"10","buttonType":"","status":"0","path":"/assetRunMenu","component":"Main","title":"资产运维","name":"assetRunMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096861390999552, NULL, '2023-01-11 16:53:56', 0, NULL, '2023-01-11 16:53:56', 55, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096861390999553, NULL, '2023-01-11 16:53:56', 0, NULL, '2023-01-11 16:53:56', 139, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096861516828672, NULL, '2023-01-11 16:53:56', 0, NULL, '2023-01-11 16:53:56', 169, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096864461230080, NULL, '2023-01-11 16:53:57', 0, NULL, '2023-01-11 16:53:57', 49, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1613096859524534272"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096946317266944, NULL, '2023-01-11 16:54:17', 0, NULL, '2023-01-11 16:54:17', 129, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096859524534272","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"资产明细","component":"asset/adminAssets/index","name":"adminAssets","path":"adminAssets"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096947432951808, NULL, '2023-01-11 16:54:17', 0, NULL, '2023-01-11 16:54:17', 59, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096948334727168, NULL, '2023-01-11 16:54:17', 0, NULL, '2023-01-11 16:54:17', 60, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613096948502499328, NULL, '2023-01-11 16:54:17', 0, NULL, '2023-01-11 16:54:17', 127, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097022099951616, NULL, '2023-01-11 16:54:35', 0, NULL, '2023-01-11 16:54:35', 78, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096859524534272","level":"2","sortOrder":"2","buttonType":"","status":"0","component":"asset/adminAssetsBuy/index","name":"adminAssetsBuy","path":"adminAssetsBuy","title":"资产采购"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097023844782080, NULL, '2023-01-11 16:54:35', 0, NULL, '2023-01-11 16:54:35', 37, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097023844782081, NULL, '2023-01-11 16:54:35', 0, NULL, '2023-01-11 16:54:35', 67, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097023941251072, NULL, '2023-01-11 16:54:35', 0, NULL, '2023-01-11 16:54:35', 99, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097084376977408, NULL, '2023-01-11 16:54:50', 0, NULL, '2023-01-11 16:54:50', 70, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096859524534272","level":"2","sortOrder":"3","buttonType":"","status":"0","title":"采购审核","component":"asset/adminAssetsBuy/audit","name":"adminAssetsBuy2","path":"adminAssetsBuy2"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097086071476224, NULL, '2023-01-11 16:54:50', 0, NULL, '2023-01-11 16:54:50', 37, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097086075670528, NULL, '2023-01-11 16:54:50', 0, NULL, '2023-01-11 16:54:50', 81, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097086352494592, NULL, '2023-01-11 16:54:50', 0, NULL, '2023-01-11 16:54:50', 101, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097176886546432, NULL, '2023-01-11 16:55:12', 0, NULL, '2023-01-11 16:55:12', 50, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1613096859524534272","level":"2","sortOrder":"4","buttonType":"","status":"0","title":"资产报修","component":"asset/adminAssetsRepair/index","name":"adminAssetsRepair","path":"adminAssetsRepair"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097178492964877, NULL, '2023-01-11 16:55:12', 0, NULL, '2023-01-11 16:55:12', 18, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097178497159169, NULL, '2023-01-11 16:55:12', 0, NULL, '2023-01-11 16:55:12', 66, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097178602016768, NULL, '2023-01-11 16:55:12', 0, NULL, '2023-01-11 16:55:12', 46, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097192250281984, NULL, '2023-01-11 16:55:15', 0, NULL, '2023-01-11 16:55:15', 79, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097217420300288, NULL, '2023-01-11 16:55:21', 0, NULL, '2023-01-11 16:55:21', 65, '127.0.0.1', '本地测试', '编辑角色', '{"id":"496138616573952","updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_ADMIN","dataType":"0","defaultRole":"","description":"资产管理员","_index":"0","_rowKey":"13"}', 'POST', '/zwz/role/edit', 'admin', 2, 'ROLE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097218552762368, NULL, '2023-01-11 16:55:21', 0, NULL, '2023-01-11 16:55:21', 46, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097249317982208, NULL, '2023-01-11 16:55:29', 0, NULL, '2023-01-11 16:55:29', 80, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573952","permIds":"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,1530689520276738048,1530689602321518592,39915540965232640,41363147411427328,1535166254703316992,1535166438371889152,1613096322099974144,1613096438789705728,1613096505160372224,1613096624807088128,1613096685586747392,1613096736715313152,1613096859524534272,1613096946292101120,1613097022078980096,1613097084356005888,1613097176861380608,1536599942410407936,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097250999898112, NULL, '2023-01-11 16:55:29', 0, NULL, '2023-01-11 16:55:29', 38, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097251155087360, NULL, '2023-01-11 16:55:29', 0, NULL, '2023-01-11 16:55:29', 79, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097421682905088, NULL, '2023-01-11 16:56:10', 0, NULL, '2023-01-11 16:56:10', 87, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097423255769091, NULL, '2023-01-11 16:56:10', 0, NULL, '2023-01-11 16:56:10', 26, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097431052980224, NULL, '2023-01-11 16:56:12', 0, NULL, '2023-01-11 16:56:12', 30, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097432504209408, NULL, '2023-01-11 16:56:12', 0, NULL, '2023-01-11 16:56:12', 25, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097476858974208, NULL, '2023-01-11 16:56:23', 0, NULL, '2023-01-11 16:56:23', 73, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097478201151488, NULL, '2023-01-11 16:56:23', 0, NULL, '2023-01-11 16:56:23', 32, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097479522357248, NULL, '2023-01-11 16:56:24', 0, NULL, '2023-01-11 16:56:24', 38, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097807625981952, NULL, '2023-01-11 16:57:42', 0, NULL, '2023-01-11 16:57:42', 55, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097809274343424, NULL, '2023-01-11 16:57:42', 0, NULL, '2023-01-11 16:57:42', 28, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097810708795392, NULL, '2023-01-11 16:57:43', 0, NULL, '2023-01-11 16:57:43', 20, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097827871887360, NULL, '2023-01-11 16:57:47', 0, NULL, '2023-01-11 16:57:47', 25, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097829306339328, NULL, '2023-01-11 16:57:47', 0, NULL, '2023-01-11 16:57:47', 25, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097829432168448, NULL, '2023-01-11 16:57:47', 0, NULL, '2023-01-11 16:57:47', 32, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097830778540035, NULL, '2023-01-11 16:57:47', 0, NULL, '2023-01-11 16:57:47', 20, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097866534981632, NULL, '2023-01-11 16:57:56', 0, NULL, '2023-01-11 16:57:56', 68, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097867839410176, NULL, '2023-01-11 16:57:56', 0, NULL, '2023-01-11 16:57:56', 31, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097868158177281, NULL, '2023-01-11 16:57:56', 0, NULL, '2023-01-11 16:57:56', 30, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097869135450114, NULL, '2023-01-11 16:57:57', 0, NULL, '2023-01-11 16:57:57', 28, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097889859506177, NULL, '2023-01-11 16:58:02', 0, NULL, '2023-01-11 16:58:02', 31, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097889884672000, NULL, '2023-01-11 16:58:02', 0, NULL, '2023-01-11 16:58:02', 68, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613097891340095494, NULL, '2023-01-11 16:58:02', 0, NULL, '2023-01-11 16:58:02', 32, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613098207531896832, NULL, '2023-01-11 16:59:17', 0, NULL, '2023-01-11 16:59:17', 84, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613098290449092608, NULL, '2023-01-11 16:59:37', 0, NULL, '2023-01-11 16:59:37', 136, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613098402491535360, NULL, '2023-01-11 17:00:04', 0, NULL, '2023-01-11 17:00:04', 59, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613337335884288000, NULL, '2023-01-12 08:49:30', 0, NULL, '2023-01-12 08:49:30', 283, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"0612","captchaId":"25b2b27e09f844a69b55b3250497d58b","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613337337306157056, NULL, '2023-01-12 08:49:30', 0, NULL, '2023-01-12 08:49:30', 69, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613337338707054592, NULL, '2023-01-12 08:49:31', 0, NULL, '2023-01-12 08:49:31', 159, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613337339059376128, NULL, '2023-01-12 08:49:31', 0, NULL, '2023-01-12 08:49:31', 98, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339088671346702, NULL, '2023-01-12 08:56:28', 0, NULL, '2023-01-12 08:56:28', 115, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339088742649856, NULL, '2023-01-12 08:56:28', 0, NULL, '2023-01-12 08:56:28', 131, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339173610196997, NULL, '2023-01-12 08:56:48', 0, NULL, '2023-01-12 08:56:48', 77, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339175002705920, NULL, '2023-01-12 08:56:48', 0, NULL, '2023-01-12 08:56:48', 48, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339893617004544, NULL, '2023-01-12 08:59:40', 0, NULL, '2023-01-12 08:59:40', 80, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339894514585600, NULL, '2023-01-12 08:59:40', 0, NULL, '2023-01-12 08:59:40', 36, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613339894984347648, NULL, '2023-01-12 08:59:40', 0, NULL, '2023-01-12 08:59:40', 39, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340065046597632, NULL, '2023-01-12 09:00:21', 0, NULL, '2023-01-12 09:00:21', 103, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340066392969216, NULL, '2023-01-12 09:00:21', 0, NULL, '2023-01-12 09:00:21', 55, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340066808205318, NULL, '2023-01-12 09:00:21', 0, NULL, '2023-01-12 09:00:21', 44, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340179177803776, NULL, '2023-01-12 09:00:48', 0, NULL, '2023-01-12 09:00:48', 93, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340179186192384, NULL, '2023-01-12 09:00:48', 0, NULL, '2023-01-12 09:00:48', 95, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340180851331080, NULL, '2023-01-12 09:00:48', 0, NULL, '2023-01-12 09:00:48', 51, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340200325484550, NULL, '2023-01-12 09:00:53', 0, NULL, '2023-01-12 09:00:53', 45, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340201751547904, NULL, '2023-01-12 09:00:53', 0, NULL, '2023-01-12 09:00:53', 66, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340201894154240, NULL, '2023-01-12 09:00:53', 0, NULL, '2023-01-12 09:00:53', 73, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340225029935122, NULL, '2023-01-12 09:00:59', 0, NULL, '2023-01-12 09:00:59', 109, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340225029935125, NULL, '2023-01-12 09:00:59', 0, NULL, '2023-01-12 09:00:59', 98, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340226082705408, NULL, '2023-01-12 09:00:59', 0, NULL, '2023-01-12 09:00:59', 57, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340250233507840, NULL, '2023-01-12 09:01:05', 0, NULL, '2023-01-12 09:01:05', 100, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340257565151234, NULL, '2023-01-12 09:01:07', 0, NULL, '2023-01-12 09:01:07', 60, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340324091006979, NULL, '2023-01-12 09:01:22', 0, NULL, '2023-01-12 09:01:22', 101, '127.0.0.1', '本地测试', '修改个人门户菜单', '{"str":"adminAssetUnitZWZ666adminAssetZWZ666adminAssetSupplierZWZ666adminAssetWareZWZ666adminAssetsZWZ666adminAssetsBuy"}', 'POST', '/zwz/myDoor/setMyDoorList', 'admin', 2, 'MY-DOOR-03', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340342189428775, NULL, '2023-01-12 09:01:27', 0, NULL, '2023-01-12 09:01:27', 54, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340343191867392, NULL, '2023-01-12 09:01:27', 0, NULL, '2023-01-12 09:01:27', 97, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340366302482432, NULL, '2023-01-12 09:01:32', 0, NULL, '2023-01-12 09:01:32', 109, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340367606910976, NULL, '2023-01-12 09:01:33', 0, NULL, '2023-01-12 09:01:33', 49, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340368059895816, NULL, '2023-01-12 09:01:33', 0, NULL, '2023-01-12 09:01:33', 49, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340614085185536, NULL, '2023-01-12 09:02:32', 0, NULL, '2023-01-12 09:02:32', 98, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340643948630016, NULL, '2023-01-12 09:02:39', 0, NULL, '2023-01-12 09:02:39', 86, '127.0.0.1', '本地测试', '编辑角色', '{"id":"496138616573953","updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_USER","dataType":"0","defaultRole":"true","description":"采购员","_index":"1","_rowKey":"140"}', 'POST', '/zwz/role/edit', 'admin', 2, 'ROLE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340645697654784, NULL, '2023-01-12 09:02:39', 0, NULL, '2023-01-12 09:02:39', 56, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340763796672512, NULL, '2023-01-12 09:03:07', 0, NULL, '2023-01-12 09:03:07', 87, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573953","permIds":"125909152017944576,1613096859524534272,1613096946292101120,1613097022078980096,1613097176861380608"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340765566668800, NULL, '2023-01-12 09:03:08', 0, NULL, '2023-01-12 09:03:08', 49, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340765671526400, NULL, '2023-01-12 09:03:08', 0, NULL, '2023-01-12 09:03:08', 108, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340804280094720, NULL, '2023-01-12 09:03:17', 0, NULL, '2023-01-12 09:03:17', 83, '127.0.0.1', '本地测试', '新增角色', '{"updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_AUDIT","dataType":"0","defaultRole":"true","description":"采购审核","_index":"1","_rowKey":"140"}', 'POST', '/zwz/role/save', 'admin', 2, 'ROLE-05', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340806079451138, NULL, '2023-01-12 09:03:17', 0, NULL, '2023-01-12 09:03:17', 49, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340845602377728, NULL, '2023-01-12 09:03:27', 0, NULL, '2023-01-12 09:03:27', 101, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"1613340804263317504","permIds":"125909152017944576,1613096859524534272,1613096946292101120,1613097022078980096,1613097084356005888,1613097176861380608"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340847439482882, NULL, '2023-01-12 09:03:27', 0, NULL, '2023-01-12 09:03:27', 49, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340847561117696, NULL, '2023-01-12 09:03:27', 0, NULL, '2023-01-12 09:03:27', 119, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340855102476290, NULL, '2023-01-12 09:03:29', 0, NULL, '2023-01-12 09:03:29', 41, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340867559559168, NULL, '2023-01-12 09:03:32', 0, NULL, '2023-01-12 09:03:32', 48, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340885842530304, NULL, '2023-01-12 09:03:36', 0, NULL, '2023-01-12 09:03:36', 61, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"1536599942410407936","updateBy":"","createBy":"admin","createTime":"2022-06-14 14:42:30","delFlag":"0","name":"demo","title":"二次开发","level":"0","status":"0","type":"-1","component":"","path":"","icon":"md-bulb","parentId":"0","buttonType":"","description":"","sortOrder":"2","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"27"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340886987575296, NULL, '2023-01-12 09:03:37', 0, NULL, '2023-01-12 09:03:37', 74, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340887503474692, NULL, '2023-01-12 09:03:37', 0, NULL, '2023-01-12 09:03:37', 37, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340887608332288, NULL, '2023-01-12 09:03:37', 0, NULL, '2023-01-12 09:03:37', 114, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613340898039566338, NULL, '2023-01-12 09:03:39', 0, NULL, '2023-01-12 09:03:39', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613342715020447744, NULL, '2023-01-12 09:10:52', 0, NULL, '2023-01-12 09:10:52', 91, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"2718","captchaId":"6d6f8c5c8825456688b8c843ed9fff86","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613342716459094016, NULL, '2023-01-12 09:10:53', 0, NULL, '2023-01-12 09:10:53', 54, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613342717499281408, NULL, '2023-01-12 09:10:53', 0, NULL, '2023-01-12 09:10:53', 44, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613342724029812736, NULL, '2023-01-12 09:10:55', 0, NULL, '2023-01-12 09:10:55', 42, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613342724277276672, NULL, '2023-01-12 09:10:55', 0, NULL, '2023-01-12 09:10:55', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613342816744902656, NULL, '2023-01-12 09:11:17', 0, NULL, '2023-01-12 09:11:17', 83, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613343203686223873, NULL, '2023-01-12 09:12:49', 0, NULL, '2023-01-12 09:12:49', 94, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613343203707195392, NULL, '2023-01-12 09:12:49', 0, NULL, '2023-01-12 09:12:49', 73, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613343205057761280, NULL, '2023-01-12 09:12:49', 0, NULL, '2023-01-12 09:12:49', 48, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613343761562210304, NULL, '2023-01-12 09:15:02', 0, NULL, '2023-01-12 09:15:02', 108, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613343761566404608, NULL, '2023-01-12 09:15:02', 0, NULL, '2023-01-12 09:15:02', 90, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","username":"","groupId":"","departmentId":""}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1613343762610786310, NULL, '2023-01-12 09:15:02', 0, NULL, '2023-01-12 09:15:02', 47, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016');

DROP TABLE IF EXISTS `a_permission`;
CREATE TABLE IF NOT EXISTS `a_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_permission`;
INSERT INTO `a_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `show_always`) VALUES
	(5129710648430592, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 13:05:28', '', 'roleMenu', 125909152017944576, 0, 4.00, 'Main', '/roleMenu', '权限管理', 'md-desktop', 1, '', 0, b'1'),
	(5129710648430593, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'user-admin', 1464484663442673664, 0, 1.10, 'roster/user/user', 'user', '用户管理', 'md-person', 2, '', 0, b'1'),
	(5129710648430594, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:18', '', 'role-manage', 5129710648430592, 0, 1.00, 'role/role/index', 'role', '角色支持', 'md-contacts', 2, '', 0, b'1'),
	(5129710648430595, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:13', '', 'menu-manage', 5129710648430592, 0, 2.00, 'menu/menu/index', 'menu', '菜单支持', 'md-menu', 2, '', 0, b'1'),
	(39915540965232640, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-10 15:45:37', '', 'monitor', 125909152017944576, 0, 6.00, 'Main', '/monitor', '日志管理', 'ios-analytics', 1, '', 0, b'1'),
	(40238597734928384, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'department-admin', 1464485105081913345, 0, 1.20, 'roster/department/department', 'department-admin', '部门管理', 'md-git-branch', 2, '', 0, b'1'),
	(41363147411427328, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:15:44', '', 'log-manage', 39915540965232640, 0, 2.20, 'log/log/index', 'log', '日志管理', 'md-list-box', 2, '', 0, b'1'),
	(56309618086776832, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 07:18:02', '', 'file-admin', 1464485485316542465, 0, 1.00, 'file/file/index', 'file', '云盘', 'ios-folder', 2, '', 0, b'1'),
	(125909152017944576, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2023-01-11 16:50:30', '', 'zwz', 0, -1, 1.00, '', '', '固定资产管理', 'md-home', 0, '', 0, b'1'),
	(1464484663442673664, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'userTwoMenu', 125909152017944576, 0, 1.00, 'Main', '/userTwoMenu', '用户管理', 'md-analytics', 1, '', 0, b'1'),
	(1464485105081913345, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', NULL, 'depTwoMenu', 125909152017944576, 0, 2.00, 'Main', '/depTwoMenu', '部门管理', 'ios-apps', 1, '', 0, b'1'),
	(1464485485316542465, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:13:42', '', 'fileAdmin', 125909152017944576, 0, 3.00, 'Main', '/fileAdmin', '文件管理', 'md-basketball', 1, '', 0, b'1'),
	(1530689520276738048, 'admin', '2022-05-29 07:16:35', 0, NULL, NULL, NULL, 'dictMenu', 125909152017944576, 0, 5.00, 'Main', '/dictMenu', '数据字典', 'ios-apps', 1, '', 0, b'1'),
	(1530689602321518592, 'admin', '2022-05-29 07:16:55', 0, NULL, NULL, NULL, 'dict', 1530689520276738048, 0, 1.00, 'dict/dict/index', 'dict', '数据字典', 'ios-apps', 2, '', 0, b'1'),
	(1535166254703316992, 'admin', '2022-06-10 15:45:32', 0, NULL, NULL, NULL, 'codeCreate', 125909152017944576, 0, 7.00, 'Main', '/codeCreate', '代码生成', 'ios-brush', 1, '', 0, b'1'),
	(1535166438371889152, 'admin', '2022-06-10 15:46:16', 0, NULL, NULL, NULL, 'vue', 1535166254703316992, 0, 1.00, 'code/vue/index', 'vue', '前端表格', 'md-bug', 2, '', 0, b'1'),
	(1536599942410407936, 'admin', '2022-06-14 14:42:30', 0, 'admin', '2023-01-12 09:03:36', '', 'demo', 0, -1, 2.00, '', '', '二次开发', 'md-bulb', 0, '', 0, NULL),
	(1536600125332393984, 'admin', '2022-06-14 14:43:13', 0, 'admin', '2022-06-14 15:10:31', '', 'tableDemo', 1536599942410407936, 0, 1.00, 'Main', '/tableDemo', '数据展示', 'ios-apps', 1, '', 0, NULL),
	(1536600268379131904, 'admin', '2022-06-14 14:43:47', 0, NULL, NULL, NULL, 'demo1', 1536600125332393984, 0, 1.00, 'demo/demo1/index', 'demo1', '代码生成样例', 'md-finger-print', 2, '', 0, NULL),
	(1536604417711804416, 'admin', '2022-06-14 15:00:17', 0, 'admin', '2022-06-14 15:31:57', '', 'demo2', 1536600125332393984, 0, 2.00, 'demo/demo2/index', 'demo2', '复杂表格样例', 'md-archive', 2, '', 0, NULL),
	(1536606273959759872, 'admin', '2022-06-14 15:07:39', 0, 'admin', '2022-06-14 15:10:23', '', 'antv', 1536599942410407936, 0, 2.00, 'Main', '/antv', '图表展示', 'ios-pulse', 1, '', 0, NULL),
	(1536606372668510208, 'admin', '2022-06-14 15:08:03', 0, NULL, NULL, NULL, 'antv1', 1536606273959759872, 0, 1.00, 'demo/antv1/index', 'antv1', '条形图', 'md-pricetags', 2, '', 0, NULL),
	(1536606464712511488, 'admin', '2022-06-14 15:08:25', 0, NULL, NULL, NULL, 'antv2', 1536606273959759872, 0, 2.00, 'demo/antv2/index', 'antv2', '饼图', 'md-radio-button-off', 2, '', 0, NULL),
	(1536606550951596032, 'admin', '2022-06-14 15:08:45', 0, NULL, NULL, NULL, 'antv3', 1536606273959759872, 0, 3.00, 'demo/antv3/index', 'antv3', '折线图', 'ios-nutrition', 2, '', 0, NULL),
	(1536606637815631872, 'admin', '2022-06-14 15:09:06', 0, NULL, NULL, NULL, 'antv4', 1536606273959759872, 0, 4.00, 'demo/antv4/index', 'antv4', '柱状图', 'ios-phone-portrait', 2, '', 0, NULL),
	(1536875505901506560, 'admin', '2022-06-15 08:57:29', 0, 'admin', '2022-06-15 09:01:01', '', 'antvActive', 1536606273959759872, 0, 5.00, 'demo/antvActive/index', 'antvActive', '动态图表样例', 'ios-apps', 2, '', 0, NULL),
	(1613096322099974144, 'admin', '2023-01-11 16:51:48', 0, NULL, NULL, NULL, 'assetDataMenu', 125909152017944576, 0, 8.00, 'Main', '/assetDataMenu', '资产品类', 'ios-apps', 1, '', 0, NULL),
	(1613096438789705728, 'admin', '2023-01-11 16:52:16', 0, NULL, NULL, NULL, 'adminAssetUnit', 1613096322099974144, 0, 1.00, 'asset/adminAssetUnit/index', 'adminAssetUnit', '资产单位', 'md-aperture', 2, '', 0, NULL),
	(1613096505160372224, 'admin', '2023-01-11 16:52:31', 0, NULL, NULL, NULL, 'adminAsset', 1613096322099974144, 0, 2.00, 'asset/adminAsset/index', 'adminAsset', '资产品类', 'md-aperture', 2, '', 0, NULL),
	(1613096624807088128, 'admin', '2023-01-11 16:53:00', 0, NULL, NULL, NULL, 'assetElseMenu', 125909152017944576, 0, 9.00, 'Main', '/assetElseMenu', '资产衍生', 'ios-apps', 1, '', 0, NULL),
	(1613096685586747392, 'admin', '2023-01-11 16:53:14', 0, NULL, NULL, NULL, 'adminAssetSupplier', 1613096624807088128, 0, 1.00, 'asset/adminAssetSupplier/index', 'adminAssetSupplier', '资产供应商', 'md-aperture', 2, '', 0, NULL),
	(1613096736715313152, 'admin', '2023-01-11 16:53:27', 0, NULL, NULL, NULL, 'adminAssetWare', 1613096624807088128, 0, 2.00, 'asset/adminAssetWare/index', 'adminAssetWare', '资产仓库', 'md-aperture', 2, '', 0, NULL),
	(1613096859524534272, 'admin', '2023-01-11 16:53:56', 0, NULL, NULL, NULL, 'assetRunMenu', 125909152017944576, 0, 10.00, 'Main', '/assetRunMenu', '资产运维', 'ios-apps', 1, '', 0, NULL),
	(1613096946292101120, 'admin', '2023-01-11 16:54:17', 0, NULL, NULL, NULL, 'adminAssets', 1613096859524534272, 0, 1.00, 'asset/adminAssets/index', 'adminAssets', '资产明细', 'md-aperture', 2, '', 0, NULL),
	(1613097022078980096, 'admin', '2023-01-11 16:54:35', 0, NULL, NULL, NULL, 'adminAssetsBuy', 1613096859524534272, 0, 2.00, 'asset/adminAssetsBuy/index', 'adminAssetsBuy', '资产采购', 'md-aperture', 2, '', 0, NULL),
	(1613097084356005888, 'admin', '2023-01-11 16:54:49', 0, NULL, NULL, NULL, 'adminAssetsBuy2', 1613096859524534272, 0, 3.00, 'asset/adminAssetsBuy/audit', 'adminAssetsBuy2', '采购审核', 'md-aperture', 2, '', 0, NULL),
	(1613097176861380608, 'admin', '2023-01-11 16:55:12', 0, NULL, NULL, NULL, 'adminAssetsRepair', 1613096859524534272, 0, 4.00, 'asset/adminAssetsRepair/index', 'adminAssetsRepair', '资产报修', 'md-aperture', 2, '', 0, NULL);

DROP TABLE IF EXISTS `a_role`;
CREATE TABLE IF NOT EXISTS `a_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role`;
INSERT INTO `a_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	(496138616573952, '', '2022-03-20 09:46:20', 'admin', '2023-01-11 16:55:21', 'ROLE_ADMIN', 0, NULL, '资产管理员', 0),
	(496138616573953, '', '2022-03-20 09:46:20', 'admin', '2023-01-12 09:02:39', 'ROLE_USER', 0, b'1', '采购员', 0),
	(1613340804263317504, 'admin', '2023-01-12 09:03:17', 'admin', '2022-03-20 09:46:20', 'ROLE_AUDIT', 0, b'1', '采购审核', 0);

DROP TABLE IF EXISTS `a_role_permission`;
CREATE TABLE IF NOT EXISTS `a_role_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role_permission`;
INSERT INTO `a_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	(1464514325862551552, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 125909152017944576, 496138616573952),
	(1464514325862551553, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464484663442673664, 496138616573952),
	(1464514325862551554, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430593, 496138616573952),
	(1464514325862551563, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485105081913345, 496138616573952),
	(1464514325862551564, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 40238597734928384, 496138616573952),
	(1464514325862551568, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485485316542465, 496138616573952),
	(1464514325862551569, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 56309618086776832, 496138616573952),
	(1464514325862551583, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430592, 496138616573952),
	(1464514325862551584, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430594, 496138616573952),
	(1464514325862551590, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430595, 496138616573952),
	(1464514325862551594, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 39915540965232640, 496138616573952),
	(1464514325862551595, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 41363147411427328, 496138616573952),
	(1530689746903371801, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689520276738048, 496138616573952),
	(1530689747004035072, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689602321518592, 496138616573952),
	(1535166468671541252, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166254703316992, 496138616573952),
	(1535166468684124160, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166438371889152, 496138616573952),
	(1536600292156641281, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536599942410407936, 496138616573952),
	(1536600292173418496, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600125332393984, 496138616573952),
	(1536600292186001408, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600268379131904, 496138616573952),
	(1536604439178252292, 'admin', '2022-06-14 15:00:22', 0, NULL, NULL, 1536604417711804416, 496138616573952),
	(1536606659718287364, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606273959759872, 496138616573952),
	(1536606659730870272, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606372668510208, 496138616573952),
	(1536606659735064576, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606464712511488, 496138616573952),
	(1536606659743453184, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606550951596032, 496138616573952),
	(1536606659751841792, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606637815631872, 496138616573952),
	(1536875525769924610, 'admin', '2022-06-15 08:57:34', 0, NULL, NULL, 1536875505901506560, 496138616573952),
	(1613097249242484744, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096322099974144, 496138616573952),
	(1613097249255067648, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096438789705728, 496138616573952),
	(1613097249263456256, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096505160372224, 496138616573952),
	(1613097249271844864, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096624807088128, 496138616573952),
	(1613097249276039168, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096685586747392, 496138616573952),
	(1613097249284427776, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096736715313152, 496138616573952),
	(1613097249288622080, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096859524534272, 496138616573952),
	(1613097249292816384, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613096946292101120, 496138616573952),
	(1613097249297010688, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613097022078980096, 496138616573952),
	(1613097249301204992, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613097084356005888, 496138616573952),
	(1613097249305399296, 'admin', '2023-01-11 16:55:29', 0, NULL, NULL, 1613097176861380608, 496138616573952),
	(1613340763750535168, 'admin', '2023-01-12 09:03:07', 0, NULL, NULL, 125909152017944576, 496138616573953),
	(1613340763763118080, 'admin', '2023-01-12 09:03:07', 0, NULL, NULL, 1613096859524534272, 496138616573953),
	(1613340763767312384, 'admin', '2023-01-12 09:03:07', 0, NULL, NULL, 1613096946292101120, 496138616573953),
	(1613340763775700992, 'admin', '2023-01-12 09:03:07', 0, NULL, NULL, 1613097022078980096, 496138616573953),
	(1613340763779895296, 'admin', '2023-01-12 09:03:07', 0, NULL, NULL, 1613097176861380608, 496138616573953),
	(1613340845543657472, 'admin', '2023-01-12 09:03:27', 0, NULL, NULL, 125909152017944576, 1613340804263317504),
	(1613340845556240384, 'admin', '2023-01-12 09:03:27', 0, NULL, NULL, 1613096859524534272, 1613340804263317504),
	(1613340845568823296, 'admin', '2023-01-12 09:03:27', 0, NULL, NULL, 1613096946292101120, 1613340804263317504),
	(1613340845577211904, 'admin', '2023-01-12 09:03:27', 0, NULL, NULL, 1613097022078980096, 1613340804263317504),
	(1613340845585600512, 'admin', '2023-01-12 09:03:27', 0, NULL, NULL, 1613097084356005888, 1613340804263317504),
	(1613340845589794816, 'admin', '2023-01-12 09:03:27', 0, NULL, NULL, 1613097176861380608, 1613340804263317504);

DROP TABLE IF EXISTS `a_setting`;
CREATE TABLE IF NOT EXISTS `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_setting`;
INSERT INTO `a_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('FILE_HTTP', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', 'http://'),
	('FILE_PATH', NULL, NULL, 0, 'admin', '2022-05-28 15:57:19', 'C:\\\\oa-file'),
	('FILE_VIEW', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', '127.0.0.1:8080/zwz/file/view'),
	('LOCAL_OSS', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '{"serviceName":"LOCAL_OSS","endpoint":"127.0.0.1:8080/zwz/file/view","http":"http://","filePath":"C:\\\\oa-file"}'),
	('OSS_USED', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 'LOCAL_OSS');

DROP TABLE IF EXISTS `a_student`;
CREATE TABLE IF NOT EXISTS `a_student` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_student`;
INSERT INTO `a_student` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `number`, `school`, `sex`, `age`) VALUES
	('1536601255475023872', 'admin', '2022-06-14 14:47:42.637000', 0, NULL, NULL, '张三', '001', '北京大学', '男', 18.00),
	('1536601308352614400', 'admin', '2022-06-14 14:47:55.244000', 0, NULL, NULL, '李四', '002', '清华大学', '女', 19.00),
	('1536601388044390400', 'admin', '2022-06-14 14:48:14.243000', 0, NULL, NULL, '王五', '003', '浙江大学', '男', 20.00),
	('1536601469879455744', 'admin', '2022-06-14 14:48:33.753000', 0, NULL, NULL, '赵六', '004', '宁波大学', '保密', 21.00);

DROP TABLE IF EXISTS `a_teacher`;
CREATE TABLE IF NOT EXISTS `a_teacher` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  `autograph` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `graduated` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `wages` decimal(19,2) DEFAULT NULL,
  `resume` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_teacher`;
INSERT INTO `a_teacher` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `age`, `autograph`, `education`, `graduated`, `name`, `remark`, `status`, `wages`, `resume`) VALUES
	('1536614275123122176', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '博士', '同济大学', '张三', '测试', '在职', 9960.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122177', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '本科', '同济大学', '李四', '测试', '在职', 7778.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122178', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '王五', '测试', '在职', 8889.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122179', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '赵六', '测试', '在职', 4445.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122180', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '郑七', '测试', '在职', 1118.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122181', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '龚八', '测试', '在职', 3337.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424');

DROP TABLE IF EXISTS `a_user`;
CREATE TABLE IF NOT EXISTS `a_user` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user`;
INSERT INTO `a_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `email`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `my_door`) VALUES
	(682265633886208, '', '2022-03-20 09:46:20', 'admin', '2023-01-12 09:01:22', '["330000","330600","330602"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '北大', '916077357@qq.com', '17857054388', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, 1464487379074158593, '东西街道2', '弱', '设计研发部', '2000-01-08 00:00:00.000000', 'adminAssetUnitZWZ666adminAssetZWZ666adminAssetSupplierZWZ666adminAssetWareZWZ666adminAssetsZWZ666adminAssetsBuy'),
	(1464764315201572865, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:11:48', '', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654125@qq.com', '17859654125', '测试', '$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha', '', -1, 0, '17859654125', 0, 1464487332064399361, '', '', '行政综合部', NULL, NULL),
	(1464772465946398721, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:53:33', '["110000","110100","110105"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654121@qq.com', '17859654121', '测试2', '$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm', '', 0, 0, '17859654121', 0, 1464487432169852929, '', '', '综合发展部', NULL, ''),
	(1527830053524738048, 'admin', '2022-05-21 09:54:05', NULL, NULL, '["110000","110100","110106"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', NULL, 'user4@qq.com', '17896525487', 'user4', '$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy', '男', 0, 0, 'user4', 0, 1464487332064399361, NULL, '弱', '行政综合部', NULL, NULL);

DROP TABLE IF EXISTS `a_user_role`;
CREATE TABLE IF NOT EXISTS `a_user_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user_role`;
INSERT INTO `a_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	(1464487931975700480, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573952, 682265633886208),
	(1486220872917323776, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573953, 1464764315201572865),
	(1526802492967489537, NULL, '2022-05-18 13:50:56', 0, NULL, NULL, 496138616573953, 1526802492443201536),
	(1526819095553642497, NULL, '2022-05-18 14:56:54', 0, NULL, NULL, 496138616573953, 1526819095159377920),
	(1527829917801254912, 'admin', '2022-05-21 09:53:33', 0, NULL, NULL, 496138616573953, 1464772465946398721),
	(1527830053889642496, 'admin', '2022-05-21 09:54:05', 0, NULL, NULL, 496138616573952, 1527830053524738048);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
