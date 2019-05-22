/*
Navicat MySQL Data Transfer

Source Server         : zhiv
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : luzhou

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-05-22 15:24:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lz_consumption
-- ----------------------------
DROP TABLE IF EXISTS `lz_consumption`;
CREATE TABLE `lz_consumption` (
  `consumption_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消费ID',
  `card_number` bigint(20) NOT NULL COMMENT '卡号',
  `money` float(5,2) NOT NULL COMMENT '消费金额',
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '消费时间',
  `remarks` text COMMENT '消费说明',
  PRIMARY KEY (`consumption_id`),
  KEY `card_number` (`card_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_consumption
-- ----------------------------
INSERT INTO `lz_consumption` VALUES ('1', '621354351', '200.00', '2019-05-21 18:56:27', '魔泥打蜡');
INSERT INTO `lz_consumption` VALUES ('2', '666666666', '300.00', '2019-05-21 20:10:28', '嫖娼');
INSERT INTO `lz_consumption` VALUES ('3', '666666666', '300.00', '2019-05-21 20:12:37', '赌博');
INSERT INTO `lz_consumption` VALUES ('4', '666666666', '500.00', '2019-05-21 20:13:02', '中华一条');
INSERT INTO `lz_consumption` VALUES ('5', '666666666', '999.00', '2019-05-21 20:15:30', '包夜');
INSERT INTO `lz_consumption` VALUES ('6', '621354351', '25.00', '2019-05-21 20:25:19', '补胎');
INSERT INTO `lz_consumption` VALUES ('7', '888888888', '50.00', '2019-05-22 08:58:23', '洗脚');
INSERT INTO `lz_consumption` VALUES ('8', '888888888', '160.00', '2019-05-22 09:04:35', '按摩');
INSERT INTO `lz_consumption` VALUES ('9', '888888888', '40.00', '2019-05-22 09:13:12', '小费');
INSERT INTO `lz_consumption` VALUES ('10', '845162356', '0.00', '2019-05-22 10:03:36', '【会员】免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('11', '845162356', '0.00', '2019-05-22 10:06:23', '【会员】免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('12', '845162356', '0.00', '2019-05-22 10:07:23', '【会员】免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('13', '845162356', '0.00', '2019-05-22 10:09:00', '【会员】免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('14', '666666666', '0.00', '2019-05-22 10:12:39', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('15', '666666666', '0.00', '2019-05-22 10:13:30', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('16', '666666666', '0.00', '2019-05-22 10:13:33', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('17', '621354351', '0.00', '2019-05-22 10:40:24', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('18', '621354351', '0.00', '2019-05-22 10:40:33', '【会员】免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('19', '621354351', '0.00', '2019-05-22 10:40:39', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('20', '621354351', '150.00', '2019-05-22 10:41:11', '快餐');
INSERT INTO `lz_consumption` VALUES ('21', '666666666', '0.00', '2019-05-22 11:28:16', '【会员】免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('22', '666666666', '0.00', '2019-05-22 11:28:24', '【会员】免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('23', '621354351', '0.00', '2019-05-22 11:30:55', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('24', '621354351', '0.00', '2019-05-22 12:01:34', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('25', '123456789', '0.00', '2019-05-22 12:01:38', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('26', '777777777', '0.00', '2019-05-22 12:01:40', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('27', '845162356', '0.00', '2019-05-22 12:01:43', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('28', '123456789', '0.00', '2019-05-22 13:34:12', '【会员】免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('29', '666666666', '666.00', '2019-05-22 13:39:15', '飞天茅台');
INSERT INTO `lz_consumption` VALUES ('30', '985216347', '0.00', '2019-05-22 14:06:21', '【会员】免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('31', '295468218', '0.00', '2019-05-22 14:27:39', '【会员】免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('32', '524156525', '0.00', '2019-05-22 14:44:41', '【会员】免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('33', '524156525', '0.00', '2019-05-22 14:44:44', '【会员】免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('34', '621354351', '0.00', '2019-05-22 14:48:49', '【会员】：[卢周]：免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('35', '666666666', '0.00', '2019-05-22 14:49:05', '【会员】：[zhiv]：免费打蜡次数');
INSERT INTO `lz_consumption` VALUES ('36', '845162356', '0.00', '2019-05-22 14:49:16', '【会员】：[人人]：免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('37', '521689478', '0.00', '2019-05-22 14:50:12', '【会员】：[韩信]：免费消毒次数');
INSERT INTO `lz_consumption` VALUES ('38', '451239516', '0.00', '2019-05-22 15:05:51', '【会员】：[第三个测试号]：免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('39', '985216347', '0.00', '2019-05-22 15:06:00', '【会员】：[典韦]：免费洗车次数');
INSERT INTO `lz_consumption` VALUES ('40', '845162356', '20.00', '2019-05-22 15:06:20', '打气');
INSERT INTO `lz_consumption` VALUES ('41', '621354351', '100.00', '2019-05-22 15:10:18', '【会员】：[卢周]：南城快餐');

-- ----------------------------
-- Table structure for lz_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `lz_recharge_record`;
CREATE TABLE `lz_recharge_record` (
  `recharge_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '充值记录',
  `card_number` bigint(20) NOT NULL COMMENT '会员卡号',
  `money` float(20,2) NOT NULL COMMENT '充值金额',
  `recharge_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '充值时间',
  PRIMARY KEY (`recharge_id`),
  KEY `card_number` (`card_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_recharge_record
-- ----------------------------
INSERT INTO `lz_recharge_record` VALUES ('1', '621354351', '300.00', '2019-05-20 15:25:52');
INSERT INTO `lz_recharge_record` VALUES ('2', '888888888', '200.00', '2019-05-21 14:02:07');
INSERT INTO `lz_recharge_record` VALUES ('7', '888888888', '200.00', '2019-05-21 14:30:19');
INSERT INTO `lz_recharge_record` VALUES ('8', '888888888', '500.00', '2019-05-21 14:33:04');
INSERT INTO `lz_recharge_record` VALUES ('9', '888888888', '200.00', '2019-05-21 16:04:03');
INSERT INTO `lz_recharge_record` VALUES ('10', '777777777', '500.00', '2019-05-21 16:17:20');
INSERT INTO `lz_recharge_record` VALUES ('11', '123456789', '50.00', '2019-05-21 16:17:36');
INSERT INTO `lz_recharge_record` VALUES ('12', '985461354', '100.00', '2019-05-21 16:17:42');
INSERT INTO `lz_recharge_record` VALUES ('13', '845162356', '30.00', '2019-05-21 16:17:48');
INSERT INTO `lz_recharge_record` VALUES ('14', '451239516', '200.00', '2019-05-21 17:23:35');
INSERT INTO `lz_recharge_record` VALUES ('15', '123456789', '50.00', '2019-05-21 17:43:42');
INSERT INTO `lz_recharge_record` VALUES ('16', '845162356', '30.00', '2019-05-21 17:44:52');
INSERT INTO `lz_recharge_record` VALUES ('17', '845162356', '30.00', '2019-05-21 17:44:57');
INSERT INTO `lz_recharge_record` VALUES ('18', '845162356', '30.00', '2019-05-21 17:45:28');
INSERT INTO `lz_recharge_record` VALUES ('19', '666666666', '800.00', '2019-05-21 20:15:11');
INSERT INTO `lz_recharge_record` VALUES ('20', '888888888', '50.00', '2019-05-22 09:04:48');
INSERT INTO `lz_recharge_record` VALUES ('21', '888888888', '100.00', '2019-05-22 09:13:23');
INSERT INTO `lz_recharge_record` VALUES ('22', '985216347', '999.00', '2019-05-22 13:31:46');

-- ----------------------------
-- Table structure for lz_user
-- ----------------------------
DROP TABLE IF EXISTS `lz_user`;
CREATE TABLE `lz_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_number` bigint(20) NOT NULL COMMENT '卡号',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `car_number` varchar(20) NOT NULL COMMENT '车牌号',
  `money` float(20,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态  0：禁用   1：正常',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `wash_times` int(3) NOT NULL COMMENT '洗车次数',
  `wax_times` int(3) NOT NULL COMMENT '打蜡次数',
  `disinfection_times` int(3) NOT NULL COMMENT '消毒次数',
  `sex` int(1) NOT NULL DEFAULT '1' COMMENT '性别，默认''男''  0: ''女'' 1: ''男''',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `card_number` (`card_number`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='开卡用户';

-- ----------------------------
-- Records of lz_user
-- ----------------------------
INSERT INTO `lz_user` VALUES ('2', '621354351', '卢周', '13299546618', '粤A12345', '1725.00', '1', '2019-05-18 16:04:27', '19', '0', '1', '1');
INSERT INTO `lz_user` VALUES ('3', '666666666', 'zhiv', '13955648878', '粤F31231', '8334.00', '1', '2019-05-18 16:17:12', '15', '0', '1', '1');
INSERT INTO `lz_user` VALUES ('4', '888888888', 'goushi', '18956425815', '粤B56814', '100.00', '1', '2019-05-20 17:16:54', '12', '0', '0', '1');
INSERT INTO `lz_user` VALUES ('5', '777777777', '叼你老鼠', '15622856645', '桂AG6103', '500.00', '1', '2019-05-20 17:22:45', '13', '4', '0', '1');
INSERT INTO `lz_user` VALUES ('6', '123456789', '这是个测试号', '13246528888', '粤K88888', '100.00', '1', '2019-05-20 17:41:18', '10', '0', '0', '0');
INSERT INTO `lz_user` VALUES ('7', '985461354', '第二个测试号', '18845236514', '粤S99C58', '100.00', '1', '2019-05-20 17:43:02', '12', '1', '0', '0');
INSERT INTO `lz_user` VALUES ('8', '845162356', '人人', '15946258879', '粤S77531', '100.00', '1', '2019-05-21 13:36:29', '6', '0', '0', '1');
INSERT INTO `lz_user` VALUES ('9', '451239516', '第三个测试号', '18852465351', '粤B88792', '200.00', '1', '2019-05-21 17:23:17', '9', '1', '0', '1');
INSERT INTO `lz_user` VALUES ('10', '985216347', '典韦', '18425648879', '粤S5B695', '999.00', '1', '2019-05-22 13:31:30', '9', '2', '0', '1');
INSERT INTO `lz_user` VALUES ('11', '521689478', '韩信', '18952665587', '京AB888Q', '0.00', '1', '2019-05-22 14:22:12', '10', '1', '0', '1');
INSERT INTO `lz_user` VALUES ('12', '673692570', '甄姬', '15622950771', '粤S8888B', '0.00', '1', '2019-05-22 14:25:39', '20', '2', '10', '1');
INSERT INTO `lz_user` VALUES ('13', '295468218', '妲己', '18856248869', '沪B58G7Q', '0.00', '1', '2019-05-22 14:27:29', '10', '1', '0', '1');
INSERT INTO `lz_user` VALUES ('14', '524156525', '小乔', '15945268845', '粤W586S4', '0.00', '1', '2019-05-22 14:44:33', '10', '1', '0', '1');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', null, 'io.renren.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016AC9D2BEE87874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'PC-20190404PYOH1558509505053', '1558509852264', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1558510200000', '-1', '5', 'WAITING', 'CRON', '1558164245000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016AC9D2BEE87874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'renren', '0 0/30 * * * ?', '0', '参数测试', '2019-05-18 15:23:13');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '1', 'testTask', 'renren', '0', null, '1', '2019-05-18 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('2', '1', 'testTask', 'renren', '0', null, '1', '2019-05-18 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('3', '1', 'testTask', 'renren', '0', null, '1', '2019-05-18 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('4', '1', 'testTask', 'renren', '0', null, '281246', '2019-05-18 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('5', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('6', '1', 'testTask', 'renren', '0', null, '0', '2019-05-20 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('7', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('8', '1', 'testTask', 'renren', '0', null, '2', '2019-05-20 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('9', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('10', '1', 'testTask', 'renren', '0', null, '2', '2019-05-20 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('11', '1', 'testTask', 'renren', '0', null, '2', '2019-05-20 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('12', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('13', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('14', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('15', '1', 'testTask', 'renren', '0', null, '2', '2019-05-20 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('16', '1', 'testTask', 'renren', '0', null, '1', '2019-05-20 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('17', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('18', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('19', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('20', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('21', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('22', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('23', '1', 'testTask', 'renren', '0', null, '2', '2019-05-21 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('24', '1', 'testTask', 'renren', '0', null, '2', '2019-05-21 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('25', '1', 'testTask', 'renren', '0', null, '2', '2019-05-21 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('26', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('27', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('28', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('29', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('30', '1', 'testTask', 'renren', '0', null, '0', '2019-05-21 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('31', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('32', '1', 'testTask', 'renren', '0', null, '2', '2019-05-21 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('33', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('34', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('35', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('36', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('37', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('38', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('39', '1', 'testTask', 'renren', '0', null, '1', '2019-05-21 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('40', '1', 'testTask', 'renren', '0', null, '0', '2019-05-22 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('41', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('42', '1', 'testTask', 'renren', '0', null, '0', '2019-05-22 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('43', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('44', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('45', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('46', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('47', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('48', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('49', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('50', '1', 'testTask', 'renren', '0', null, '1', '2019-05-22 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('51', '1', 'testTask', 'renren', '0', null, '16', '2019-05-22 15:00:00');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '人人开源集团', '0', '0');
INSERT INTO `sys_dept` VALUES ('2', '1', '长沙分公司', '1', '0');
INSERT INTO `sys_dept` VALUES ('3', '1', '上海分公司', '2', '0');
INSERT INTO `sys_dept` VALUES ('4', '3', '技术部', '0', '0');
INSERT INTO `sys_dept` VALUES ('5', '3', '销售部', '1', '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '字典名称',
  `type` varchar(100) NOT NULL COMMENT '字典类型',
  `code` varchar(100) NOT NULL COMMENT '字典码',
  `value` varchar(1000) NOT NULL COMMENT '字典值',
  `order_num` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '性别', 'sex', '0', '女', '0', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '性别', 'sex', '1', '男', '1', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '性别', 'sex', '2', '未知', '3', null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"会员管理\",\"url\":\"modules/sys/lzuser.html\",\"type\":1,\"icon\":\"address-book\",\"orderNum\":6}', '6', '0:0:0:0:0:0:0:1', '2019-05-20 14:32:24');
INSERT INTO `sys_log` VALUES ('2', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"会员管理\",\"url\":\"modules/sys/lzuser.html\",\"type\":1,\"icon\":\"fa fa-address-book\",\"orderNum\":6}', '7', '0:0:0:0:0:0:0:1', '2019-05-20 14:33:11');
INSERT INTO `sys_log` VALUES ('3', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"会员管理\",\"url\":\"modules/sys/lzuser.html\",\"type\":1,\"icon\":\"fa fa-user-circle\",\"orderNum\":6}', '7', '0:0:0:0:0:0:0:1', '2019-05-20 14:39:38');
INSERT INTO `sys_log` VALUES ('4', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"消费记录\",\"url\":\"modules/sys/lzconsumption.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '9', '0:0:0:0:0:0:0:1', '2019-05-20 15:19:08');
INSERT INTO `sys_log` VALUES ('5', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"充值记录\",\"url\":\"modules/sys/lzrechargerecord.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}', '6', '0:0:0:0:0:0:0:1', '2019-05-20 15:19:24');
INSERT INTO `sys_log` VALUES ('6', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"消费记录\",\"url\":\"modules/sys/lzconsumption.html\",\"type\":1,\"icon\":\"fa fa-credit-card\",\"orderNum\":6}', '3', '0:0:0:0:0:0:0:1', '2019-05-20 15:20:47');
INSERT INTO `sys_log` VALUES ('7', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"充值记录\",\"url\":\"modules/sys/lzrechargerecord.html\",\"type\":1,\"icon\":\"fa fa-bars\",\"orderNum\":6}', '9', '0:0:0:0:0:0:0:1', '2019-05-20 15:22:09');
INSERT INTO `sys_log` VALUES ('8', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"会员管理\",\"url\":\"modules/sys/lzuser.html\",\"type\":1,\"icon\":\"fa fa-user-circle\",\"orderNum\":1}', '7', '0:0:0:0:0:0:0:1', '2019-05-20 15:39:13');
INSERT INTO `sys_log` VALUES ('9', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":46,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"消费记录\",\"url\":\"modules/sys/lzconsumption.html\",\"type\":1,\"icon\":\"fa fa-credit-card\",\"orderNum\":1}', '6', '0:0:0:0:0:0:0:1', '2019-05-20 15:39:35');
INSERT INTO `sys_log` VALUES ('10', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":51,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"充值记录\",\"url\":\"modules/sys/lzrechargerecord.html\",\"type\":1,\"icon\":\"fa fa-bars\",\"orderNum\":1}', '6', '0:0:0:0:0:0:0:1', '2019-05-20 15:39:54');
INSERT INTO `sys_log` VALUES ('11', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '29', '0', '127.0.0.1', '2019-05-22 14:34:46');
INSERT INTO `sys_log` VALUES ('12', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '36', '2', '127.0.0.1', '2019-05-22 14:34:55');
INSERT INTO `sys_log` VALUES ('13', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '40', '22', '127.0.0.1', '2019-05-22 14:35:05');
INSERT INTO `sys_log` VALUES ('14', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '39', '17', '127.0.0.1', '2019-05-22 14:35:17');
INSERT INTO `sys_log` VALUES ('15', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '38', '14', '127.0.0.1', '2019-05-22 14:35:26');
INSERT INTO `sys_log` VALUES ('16', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '37', '16', '127.0.0.1', '2019-05-22 14:35:35');
INSERT INTO `sys_log` VALUES ('17', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '36', '14', '127.0.0.1', '2019-05-22 14:35:42');
INSERT INTO `sys_log` VALUES ('18', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '31', '0', '127.0.0.1', '2019-05-22 14:36:02');
INSERT INTO `sys_log` VALUES ('19', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":2,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"管理员管理\",\"url\":\"modules/sys/user.html\",\"type\":1,\"icon\":\"fa fa-user\",\"orderNum\":2}', '10', '127.0.0.1', '2019-05-22 14:37:06');
INSERT INTO `sys_log` VALUES ('20', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '30', '0', '127.0.0.1', '2019-05-22 14:38:41');
INSERT INTO `sys_log` VALUES ('21', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '19', '0', '127.0.0.1', '2019-05-22 14:38:52');
INSERT INTO `sys_log` VALUES ('22', 'admin', '保存用户', 'io.renren.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"test\",\"password\":\"ee0d98f47091a9287d41accd3f2cfd542ec96c0eaab443baea0669a5876cdf7c\",\"salt\":\"G0i3luYkN76l9GQ9uBF2\",\"email\":\"212315@qq.com\",\"mobile\":\"135321648\",\"status\":1,\"roleIdList\":[],\"createTime\":\"May 22, 2019 2:56:21 PM\",\"deptId\":2,\"deptName\":\"长沙分公司\"}', '37', '127.0.0.1', '2019-05-22 14:56:21');
INSERT INTO `sys_log` VALUES ('23', 'admin', '删除用户', 'io.renren.modules.sys.controller.SysUserController.delete()', '[2]', '9', '127.0.0.1', '2019-05-22 14:57:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:perms', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '查看', null, 'sys:dept:list,sys:dept:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '31', '新增', null, 'sys:dept:save,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '31', '修改', null, 'sys:dept:update,sys:dept:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('35', '31', '删除', null, 'sys:dept:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('41', '1', '会员管理', 'modules/sys/lzuser.html', null, '1', 'fa fa-user-circle', '1');
INSERT INTO `sys_menu` VALUES ('42', '41', '查看', null, 'sys:lzuser:list,sys:lzuser:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('43', '41', '新增', null, 'sys:lzuser:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('44', '41', '修改', null, 'sys:lzuser:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('45', '41', '删除', null, 'sys:lzuser:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('46', '1', '消费记录', 'modules/sys/lzconsumption.html', null, '1', 'fa fa-credit-card', '1');
INSERT INTO `sys_menu` VALUES ('47', '46', '查看', null, 'sys:lzconsumption:list,sys:lzconsumption:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('48', '46', '新增', null, 'sys:lzconsumption:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('49', '46', '修改', null, 'sys:lzconsumption:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('50', '46', '删除', null, 'sys:lzconsumption:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('51', '1', '充值记录', 'modules/sys/lzrechargerecord.html', null, '1', 'fa fa-bars', '1');
INSERT INTO `sys_menu` VALUES ('52', '51', '查看', null, 'sys:lzrechargerecord:list,sys:lzrechargerecord:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('53', '51', '新增', null, 'sys:lzrechargerecord:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('54', '51', '修改', null, 'sys:lzrechargerecord:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('55', '51', '删除', null, 'sys:lzrechargerecord:delete', '2', null, '6');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
