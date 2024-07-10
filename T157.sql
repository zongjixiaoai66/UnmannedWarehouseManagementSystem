/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t157`;
CREATE DATABASE IF NOT EXISTS `t157` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t157`;

DROP TABLE IF EXISTS `buhuoshneqing`;
CREATE TABLE IF NOT EXISTS `buhuoshneqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `buhuotixing_id` int DEFAULT NULL COMMENT '补货信息',
  `yonghu_id` int DEFAULT NULL COMMENT '员工',
  `buhuoshneqing_yesno_types` int DEFAULT NULL COMMENT '审核状态',
  `buhuoshneqing_yesno_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='补货申请';

DELETE FROM `buhuoshneqing`;
INSERT INTO `buhuoshneqing` (`id`, `buhuotixing_id`, `yonghu_id`, `buhuoshneqing_yesno_types`, `buhuoshneqing_yesno_text`, `create_time`) VALUES
	(1, 1, 3, 1, '审核意见1', '2022-02-23 11:47:09'),
	(2, 2, 2, 2, '审核意见2', '2022-02-23 11:47:09'),
	(3, 3, 3, 3, '审核意见3', '2022-02-23 11:47:09'),
	(4, 4, 3, 2, '审核意见4', '2022-02-23 11:47:09'),
	(5, 5, 3, 3, '审核意见5', '2022-02-23 11:47:09'),
	(6, 5, 1, 2, '审核通过', '2022-02-23 11:58:02'),
	(7, 6, 1, 2, '审核通过 审核拒绝后还需要继续申请补货', '2022-02-23 12:05:43');

DROP TABLE IF EXISTS `buhuotixing`;
CREATE TABLE IF NOT EXISTS `buhuotixing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `buhuotixing_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111 ',
  `buhuotixing_types` int DEFAULT NULL COMMENT '物品类型 Search111',
  `buhuotixing_number` int DEFAULT NULL COMMENT '补货数量',
  `buhuotixing_stauts_types` int DEFAULT NULL COMMENT '补货状态',
  `buhuotixing_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='补货提醒';

DELETE FROM `buhuotixing`;
INSERT INTO `buhuotixing` (`id`, `buhuotixing_name`, `buhuotixing_types`, `buhuotixing_number`, `buhuotixing_stauts_types`, `buhuotixing_delete`, `create_time`) VALUES
	(1, '物品名称1', 1, 381, 1, 1, '2022-02-23 11:47:09'),
	(2, '物品名称2', 2, 279, 2, 1, '2022-02-23 11:47:09'),
	(3, '物品名称3', 2, 482, 2, 1, '2022-02-23 11:47:09'),
	(4, '物品名称4', 1, 272, 1, 1, '2022-02-23 11:47:09'),
	(5, '物品名称5', 3, 473, 2, 1, '2022-02-23 11:47:09'),
	(6, '管理可以添加补货提示 和需要补货的数量', 3, 99, 2, 1, '2022-02-23 12:05:12');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiangqinwangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xiangqinwangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xiangqinwangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'buhuotixing_types', '物品类型', 1, '物品类型1', NULL, NULL, '2022-02-23 11:47:02'),
	(2, 'buhuotixing_types', '物品类型', 2, '物品类型2', NULL, NULL, '2022-02-23 11:47:02'),
	(3, 'buhuotixing_types', '物品类型', 3, '物品类型3', NULL, NULL, '2022-02-23 11:47:02'),
	(4, 'buhuotixing_stauts_types', '补货状态', 1, '未补货', NULL, NULL, '2022-02-23 11:47:02'),
	(5, 'buhuotixing_stauts_types', '补货状态', 2, '以补货', NULL, NULL, '2022-02-23 11:47:02'),
	(6, 'buhuoshneqing_yesno_types', '审核状态', 1, '未审核', NULL, NULL, '2022-02-23 11:47:02'),
	(7, 'buhuoshneqing_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2022-02-23 11:47:02'),
	(8, 'buhuoshneqing_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-02-23 11:47:02'),
	(9, 'quhuoshenqing_yesno_types', '审核状态', 1, '未审核', NULL, NULL, '2022-02-23 11:47:02'),
	(10, 'quhuoshenqing_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2022-02-23 11:47:02'),
	(11, 'quhuoshenqing_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-02-23 11:47:02'),
	(12, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-02-23 11:47:02'),
	(13, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-02-23 11:47:02');

DROP TABLE IF EXISTS `quhuoshenqing`;
CREATE TABLE IF NOT EXISTS `quhuoshenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `quhuoshenqing_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111 ',
  `buhuotixing_types` int DEFAULT NULL COMMENT '物品类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '员工',
  `quhuoshenqing_number` int DEFAULT NULL COMMENT '取货数量',
  `quhuoshenqing_yesno_types` int DEFAULT NULL COMMENT '审核状态',
  `quhuoshenqing_yesno_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='取货申请';

DELETE FROM `quhuoshenqing`;
INSERT INTO `quhuoshenqing` (`id`, `quhuoshenqing_name`, `buhuotixing_types`, `yonghu_id`, `quhuoshenqing_number`, `quhuoshenqing_yesno_types`, `quhuoshenqing_yesno_text`, `create_time`) VALUES
	(1, '物品名称1', 3, 2, 250, 3, '审核意见1', '2022-02-23 11:47:09'),
	(2, '物品名称2', 1, 3, 211, 2, '审核意见2', '2022-02-23 11:47:09'),
	(3, '物品名称3', 2, 1, 422, 2, '审核意见3', '2022-02-23 11:47:09'),
	(4, '物品名称4', 1, 3, 232, 3, '审核意见4', '2022-02-23 11:47:09'),
	(5, '物品名称5', 2, 2, 59, 1, '审核意见5', '2022-02-23 11:47:09'),
	(6, '员工申请取货 名称', 2, 1, 999, 3, '审核拒绝', '2022-02-23 12:07:51');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'qm4hgm4wr6rvy62kjywry8bsd4hr13d0', '2022-02-23 11:56:47', '2024-04-27 15:09:30'),
	(2, 1, 'a1', 'yonghu', '员工', '21jtucpgrn3wtun3bhtxx8gkdee9nmcl', '2022-02-23 11:57:58', '2024-04-27 15:10:18');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', 'http://localhost:8080/wurenchangku/upload/yonghu1.jpg', '17703786901', '410224199610232001', '1@qq.com', 1, 1, '2022-02-23 11:47:09'),
	(2, '员工2', '123456', '员工姓名2', 'http://localhost:8080/wurenchangku/upload/yonghu2.jpg', '17703786902', '410224199610232002', '2@qq.com', 1, 1, '2022-02-23 11:47:09'),
	(3, '员工3', '123456', '员工姓名3', 'http://localhost:8080/wurenchangku/upload/yonghu3.jpg', '17703786903', '410224199610232003', '3@qq.com', 2, 1, '2022-02-23 11:47:09');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
