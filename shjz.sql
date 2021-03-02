/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : shjz

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2021-02-28 22:27:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'tb_cf', '违章违法', '', null, 'TbCf', 'crud', 'com.ruoyi.system', 'system', 'cf', '违章违法', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:16:14', '');
INSERT INTO `gen_table` VALUES ('2', 'tb_donateer', '捐赠者', '', null, 'TbDonateer', 'crud', 'com.ruoyi.system', 'system', 'donateer', '捐赠者', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:37:15', '');
INSERT INTO `gen_table` VALUES ('3', 'tb_jb', '举报记录', '', null, 'TbJb', 'crud', 'com.ruoyi.system', 'system', 'jb', '举报记录', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:17:05', '');
INSERT INTO `gen_table` VALUES ('4', 'tb_jz', '捐赠记录', '', null, 'TbJz', 'crud', 'com.ruoyi.system', 'system', 'jz', '捐赠记录', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:17:33', '');
INSERT INTO `gen_table` VALUES ('5', 'tb_lq', '领取记录', '', null, 'TbLq', 'crud', 'com.ruoyi.system', 'system', 'lq', '领取记录', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:17:49', '');
INSERT INTO `gen_table` VALUES ('6', 'tb_wy', '委员休息', '', null, 'TbWy', 'crud', 'com.ruoyi.system', 'system', 'wy', '委员休息', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:18:16', '');
INSERT INTO `gen_table` VALUES ('7', 'tb_wz', '物资信息', '', null, 'TbWz', 'crud', 'com.ruoyi.system', 'system', 'wz', '物资信息', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:19:31', '');
INSERT INTO `gen_table` VALUES ('8', 'tb_wztype', '物资类型', '', null, 'TbWztype', 'crud', 'com.ruoyi.system', 'system', 'wztype', '物资类型', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:18:51', '物资类型');
INSERT INTO `gen_table` VALUES ('9', 'tb_zc', '章程', '', null, 'TbZc', 'crud', 'com.ruoyi.system', 'system', 'zc', '章程', 'ruoyi', '0', '/', '{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}', 'admin', '2021-02-28 19:10:47', '', '2021-02-28 19:19:55', '');

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', '编号', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:16:14');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'user_id', '通报人', 'varchar(255)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:16:14');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'cf_content', '违章违法', 'varchar(255)', 'String', 'cfContent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'summernote', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:16:14');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'cf_time', '通报处理时间', 'datetime', 'Date', 'cfTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:16:14');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'cf_craete', '负责人', 'varchar(255)', 'String', 'cfCraete', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:16:14');
INSERT INTO `gen_table_column` VALUES ('6', '2', 'id', '序号', 'int(11)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:37:15');
INSERT INTO `gen_table_column` VALUES ('7', '2', 'donate_number', '捐赠者编号', 'varchar(255)', 'String', 'donateNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:37:15');
INSERT INTO `gen_table_column` VALUES ('8', '2', 'donate_name', '捐赠者姓名', 'varchar(255)', 'String', 'donateName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:37:15');
INSERT INTO `gen_table_column` VALUES ('9', '2', 'sex', '性别', 'int(11)', 'Long', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', '4', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:37:15');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'cs_date', '出生日期', 'timestamp', 'Date', 'csDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:37:15');
INSERT INTO `gen_table_column` VALUES ('11', '3', 'id', '举报编号', 'int(11)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:05');
INSERT INTO `gen_table_column` VALUES ('12', '3', 'content', '举报内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'summernote', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:05');
INSERT INTO `gen_table_column` VALUES ('13', '3', 'create_time', '举报时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:05');
INSERT INTO `gen_table_column` VALUES ('14', '4', 'id', '', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:33');
INSERT INTO `gen_table_column` VALUES ('15', '4', 'user_id', '捐赠者编号', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:33');
INSERT INTO `gen_table_column` VALUES ('16', '4', 'user_name', '捐赠者', 'varchar(255)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:33');
INSERT INTO `gen_table_column` VALUES ('17', '4', 'wz_id', '', 'int(11)', 'Long', 'wzId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:33');
INSERT INTO `gen_table_column` VALUES ('18', '4', 'jz_num', '捐赠数量', 'int(11)', 'Long', 'jzNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:33');
INSERT INTO `gen_table_column` VALUES ('19', '4', 'create_time', '捐赠时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, null, null, 'EQ', 'datetime', '', '6', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:33');
INSERT INTO `gen_table_column` VALUES ('20', '5', 'id', '序号', 'int(11)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:49');
INSERT INTO `gen_table_column` VALUES ('21', '5', 'user_id', '领取人编号', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:49');
INSERT INTO `gen_table_column` VALUES ('22', '5', 'user_name', '领取人', 'varchar(255)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:49');
INSERT INTO `gen_table_column` VALUES ('23', '5', 'wz_id', '物资', 'int(11)', 'Long', 'wzId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:49');
INSERT INTO `gen_table_column` VALUES ('24', '5', 'lq_num', '领取数量', 'int(11)', 'Long', 'lqNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:49');
INSERT INTO `gen_table_column` VALUES ('25', '5', 'lq_time', '领取时间', 'datetime', 'Date', 'lqTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:17:49');
INSERT INTO `gen_table_column` VALUES ('26', '6', 'id', '', 'int(11)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:16');
INSERT INTO `gen_table_column` VALUES ('27', '6', 'wy_number', '委员编号', 'varchar(255)', 'String', 'wyNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:16');
INSERT INTO `gen_table_column` VALUES ('28', '6', 'wy_name', '委员姓名', 'varchar(255)', 'String', 'wyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:16');
INSERT INTO `gen_table_column` VALUES ('29', '6', 'wy_phone', '委员联系方式', 'varchar(255)', 'String', 'wyPhone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:16');
INSERT INTO `gen_table_column` VALUES ('30', '7', 'id', '序号', 'int(11)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:19:31');
INSERT INTO `gen_table_column` VALUES ('31', '7', 'wz_name', '物资', 'varchar(255)', 'String', 'wzName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:19:31');
INSERT INTO `gen_table_column` VALUES ('32', '7', 'num', '库存数量', 'varchar(255)', 'String', 'num', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:19:31');
INSERT INTO `gen_table_column` VALUES ('33', '8', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:51');
INSERT INTO `gen_table_column` VALUES ('34', '8', 'type_name', '物资种类', 'varchar(255)', 'String', 'typeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:51');
INSERT INTO `gen_table_column` VALUES ('35', '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, null, null, 'EQ', 'datetime', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:51');
INSERT INTO `gen_table_column` VALUES ('36', '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', null, null, 'EQ', 'datetime', '', '4', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:18:51');
INSERT INTO `gen_table_column` VALUES ('37', '9', 'id', '序号', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:19:55');
INSERT INTO `gen_table_column` VALUES ('38', '9', 'wyh_type', '标题', 'varchar(255)', 'String', 'wyhType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:19:55');
INSERT INTO `gen_table_column` VALUES ('39', '9', 'wyh_content', '委员会章程', 'varchar(255)', 'String', 'wyhContent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'summernote', '', '3', 'admin', '2021-02-28 19:10:47', null, '2021-02-28 19:19:55');
INSERT INTO `gen_table_column` VALUES ('40', '7', 'type_name', '物资类型', 'varchar(255)', 'String', 'typeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', '', '2021-02-28 19:19:27', null, '2021-02-28 19:19:31');

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000177E825B00078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000177E825B00078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000177E825B00078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-68HC55S1614522323409', '1614522357432', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1614522330000', '-1', '5', 'PAUSED', 'CRON', '1614522323000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1614522330000', '-1', '5', 'PAUSED', 'CRON', '1614522323000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1614522340000', '-1', '5', 'PAUSED', 'CRON', '1614522323000', '0', null, '2', '');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'topnav', 'Y', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 19:55:35', '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-02-28 18:18:39', '', null, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '捐赠管理', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:16:29');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '科技部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:16:23');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '监督部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:16:29');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-28 18:18:39', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-02-28 18:18:39', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-02-28 18:18:39', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-02-28 18:18:39', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-02-28 18:18:39', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-02-28 18:18:39', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-02-28 18:18:39', '', null);

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-02-28 18:18:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-02-28 18:18:39', '', null, '停用状态');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-02-28 18:18:39', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-02-28 18:18:39', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-02-28 18:18:39', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-02-28 18:18:39', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-02-28 18:18:39', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-02-28 18:18:39', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-02-28 18:18:39', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-02-28 18:18:39', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-02-28 18:18:39', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-02-28 18:18:39', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-02-28 18:18:40', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-02-28 18:18:40', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-02-28 18:18:40', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('1', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-28 21:39:47');
INSERT INTO `sys_logininfor` VALUES ('2', '202011069', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-28 21:39:51');
INSERT INTO `sys_logininfor` VALUES ('3', '202011069', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-28 21:39:55');
INSERT INTO `sys_logininfor` VALUES ('4', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-28 21:40:05');
INSERT INTO `sys_logininfor` VALUES ('5', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-28 21:40:55');
INSERT INTO `sys_logininfor` VALUES ('6', '202011069', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-28 21:41:02');
INSERT INTO `sys_logininfor` VALUES ('7', '202011069', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-28 21:41:05');
INSERT INTO `sys_logininfor` VALUES ('8', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-02-28 21:41:09');
INSERT INTO `sys_logininfor` VALUES ('9', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-02-28 21:41:12');
INSERT INTO `sys_logininfor` VALUES ('10', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-28 21:41:19');
INSERT INTO `sys_logininfor` VALUES ('11', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-28 21:54:58');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2058 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-02-28 18:18:39', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-02-28 18:18:39', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', 'menuItem', 'M', '1', '1', '', 'fa fa-bars', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 20:02:19', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-02-28 18:18:39', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-02-28 18:18:39', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', 'menuItem', 'C', '1', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:16:42', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-02-28 18:18:39', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-02-28 18:18:39', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-02-28 18:18:39', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-02-28 18:18:39', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-02-28 18:18:39', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '2', '9', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 20:01:42', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-02-28 18:18:39', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', 'menuItem', 'C', '1', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 20:01:57', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-02-28 18:18:39', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-02-28 18:18:39', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-02-28 18:18:39', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-02-28 18:18:39', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-02-28 18:18:39', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-02-28 18:18:39', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-02-28 18:18:39', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-02-28 18:18:39', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-02-28 18:18:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '违章违法', '2057', '1', '/system/cf', 'menuItem', 'C', '0', '1', 'system:cf:view', '#', 'admin', '2021-02-28 19:20:46', 'admin', '2021-02-28 19:36:22', '违章违法菜单');
INSERT INTO `sys_menu` VALUES ('2001', '违章违法查询', '2000', '1', '#', '', 'F', '0', '1', 'system:cf:list', '#', 'admin', '2021-02-28 19:20:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2002', '违章违法新增', '2000', '2', '#', '', 'F', '0', '1', 'system:cf:add', '#', 'admin', '2021-02-28 19:20:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2003', '违章违法修改', '2000', '3', '#', '', 'F', '0', '1', 'system:cf:edit', '#', 'admin', '2021-02-28 19:20:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '违章违法删除', '2000', '4', '#', '', 'F', '0', '1', 'system:cf:remove', '#', 'admin', '2021-02-28 19:20:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '违章违法导出', '2000', '5', '#', '', 'F', '0', '1', 'system:cf:export', '#', 'admin', '2021-02-28 19:20:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '捐赠者', '2055', '1', '/system/donateer', 'menuItem', 'C', '0', '1', 'system:donateer:view', '#', 'admin', '2021-02-28 19:20:52', 'admin', '2021-02-28 19:35:42', '捐赠者菜单');
INSERT INTO `sys_menu` VALUES ('2007', '捐赠者查询', '2006', '1', '#', '', 'F', '0', '1', 'system:donateer:list', '#', 'admin', '2021-02-28 19:20:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '捐赠者新增', '2006', '2', '#', '', 'F', '0', '1', 'system:donateer:add', '#', 'admin', '2021-02-28 19:20:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2009', '捐赠者修改', '2006', '3', '#', '', 'F', '0', '1', 'system:donateer:edit', '#', 'admin', '2021-02-28 19:20:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '捐赠者删除', '2006', '4', '#', '', 'F', '0', '1', 'system:donateer:remove', '#', 'admin', '2021-02-28 19:20:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '捐赠者导出', '2006', '5', '#', '', 'F', '0', '1', 'system:donateer:export', '#', 'admin', '2021-02-28 19:20:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '举报记录', '2057', '1', '/system/jb', 'menuItem', 'C', '0', '1', 'system:jb:view', '#', 'admin', '2021-02-28 19:20:58', 'admin', '2021-02-28 19:36:35', '举报记录菜单');
INSERT INTO `sys_menu` VALUES ('2013', '举报记录查询', '2012', '1', '#', '', 'F', '0', '1', 'system:jb:list', '#', 'admin', '2021-02-28 19:20:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2014', '举报记录新增', '2012', '2', '#', '', 'F', '0', '1', 'system:jb:add', '#', 'admin', '2021-02-28 19:20:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '举报记录修改', '2012', '3', '#', '', 'F', '0', '1', 'system:jb:edit', '#', 'admin', '2021-02-28 19:20:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2016', '举报记录删除', '2012', '4', '#', '', 'F', '0', '1', 'system:jb:remove', '#', 'admin', '2021-02-28 19:20:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '举报记录导出', '2012', '5', '#', '', 'F', '0', '1', 'system:jb:export', '#', 'admin', '2021-02-28 19:20:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '捐赠记录', '2055', '1', '/system/jz', 'menuItem', 'C', '0', '1', 'system:jz:view', '#', 'admin', '2021-02-28 19:21:04', 'admin', '2021-02-28 19:35:34', '捐赠记录菜单');
INSERT INTO `sys_menu` VALUES ('2019', '捐赠记录查询', '2018', '1', '#', '', 'F', '0', '1', 'system:jz:list', '#', 'admin', '2021-02-28 19:21:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2020', '捐赠记录新增', '2018', '2', '#', '', 'F', '0', '1', 'system:jz:add', '#', 'admin', '2021-02-28 19:21:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '捐赠记录修改', '2018', '3', '#', '', 'F', '0', '1', 'system:jz:edit', '#', 'admin', '2021-02-28 19:21:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '捐赠记录删除', '2018', '4', '#', '', 'F', '0', '1', 'system:jz:remove', '#', 'admin', '2021-02-28 19:21:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '捐赠记录导出', '2018', '5', '#', '', 'F', '0', '1', 'system:jz:export', '#', 'admin', '2021-02-28 19:21:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '领取记录', '2056', '1', '/system/lq', 'menuItem', 'C', '0', '1', 'system:lq:view', '#', 'admin', '2021-02-28 19:21:11', 'admin', '2021-02-28 19:35:52', '领取记录菜单');
INSERT INTO `sys_menu` VALUES ('2025', '领取记录查询', '2024', '1', '#', '', 'F', '0', '1', 'system:lq:list', '#', 'admin', '2021-02-28 19:21:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '领取记录新增', '2024', '2', '#', '', 'F', '0', '1', 'system:lq:add', '#', 'admin', '2021-02-28 19:21:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '领取记录修改', '2024', '3', '#', '', 'F', '0', '1', 'system:lq:edit', '#', 'admin', '2021-02-28 19:21:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '领取记录删除', '2024', '4', '#', '', 'F', '0', '1', 'system:lq:remove', '#', 'admin', '2021-02-28 19:21:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '领取记录导出', '2024', '5', '#', '', 'F', '0', '1', 'system:lq:export', '#', 'admin', '2021-02-28 19:21:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '委员信息', '2054', '1', '/system/wy', 'menuItem', 'C', '0', '1', 'system:wy:view', '#', 'admin', '2021-02-28 19:21:19', 'admin', '2021-02-28 19:34:24', '委员休息菜单');
INSERT INTO `sys_menu` VALUES ('2031', '委员休息查询', '2030', '1', '#', '', 'F', '0', '1', 'system:wy:list', '#', 'admin', '2021-02-28 19:21:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '委员休息新增', '2030', '2', '#', '', 'F', '0', '1', 'system:wy:add', '#', 'admin', '2021-02-28 19:21:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '委员休息修改', '2030', '3', '#', '', 'F', '0', '1', 'system:wy:edit', '#', 'admin', '2021-02-28 19:21:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '委员休息删除', '2030', '4', '#', '', 'F', '0', '1', 'system:wy:remove', '#', 'admin', '2021-02-28 19:21:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '委员休息导出', '2030', '5', '#', '', 'F', '0', '1', 'system:wy:export', '#', 'admin', '2021-02-28 19:21:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '物资信息', '2056', '1', '/system/wz', 'menuItem', 'C', '0', '1', 'system:wz:view', '#', 'admin', '2021-02-28 19:21:52', 'admin', '2021-02-28 19:35:03', '物资信息菜单');
INSERT INTO `sys_menu` VALUES ('2037', '物资信息查询', '2036', '1', '#', '', 'F', '0', '1', 'system:wz:list', '#', 'admin', '2021-02-28 19:21:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '物资信息新增', '2036', '2', '#', '', 'F', '0', '1', 'system:wz:add', '#', 'admin', '2021-02-28 19:21:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '物资信息修改', '2036', '3', '#', '', 'F', '0', '1', 'system:wz:edit', '#', 'admin', '2021-02-28 19:21:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '物资信息删除', '2036', '4', '#', '', 'F', '0', '1', 'system:wz:remove', '#', 'admin', '2021-02-28 19:21:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '物资信息导出', '2036', '5', '#', '', 'F', '0', '1', 'system:wz:export', '#', 'admin', '2021-02-28 19:21:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '物资类型', '2056', '1', '/system/wztype', 'menuItem', 'C', '0', '1', 'system:wztype:view', '#', 'admin', '2021-02-28 19:22:00', 'admin', '2021-02-28 19:35:12', '物资类型菜单');
INSERT INTO `sys_menu` VALUES ('2043', '物资类型查询', '2042', '1', '#', '', 'F', '0', '1', 'system:wztype:list', '#', 'admin', '2021-02-28 19:22:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('2044', '物资类型新增', '2042', '2', '#', '', 'F', '0', '1', 'system:wztype:add', '#', 'admin', '2021-02-28 19:22:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('2045', '物资类型修改', '2042', '3', '#', '', 'F', '0', '1', 'system:wztype:edit', '#', 'admin', '2021-02-28 19:22:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '物资类型删除', '2042', '4', '#', '', 'F', '0', '1', 'system:wztype:remove', '#', 'admin', '2021-02-28 19:22:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '物资类型导出', '2042', '5', '#', '', 'F', '0', '1', 'system:wztype:export', '#', 'admin', '2021-02-28 19:22:00', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '章程', '2054', '1', '/system/zc', 'menuItem', 'C', '0', '1', 'system:zc:view', '#', 'admin', '2021-02-28 19:22:06', 'admin', '2021-02-28 19:34:32', '章程菜单');
INSERT INTO `sys_menu` VALUES ('2049', '章程查询', '2048', '1', '#', '', 'F', '0', '1', 'system:zc:list', '#', 'admin', '2021-02-28 19:22:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2050', '章程新增', '2048', '2', '#', '', 'F', '0', '1', 'system:zc:add', '#', 'admin', '2021-02-28 19:22:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2051', '章程修改', '2048', '3', '#', '', 'F', '0', '1', 'system:zc:edit', '#', 'admin', '2021-02-28 19:22:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '章程删除', '2048', '4', '#', '', 'F', '0', '1', 'system:zc:remove', '#', 'admin', '2021-02-28 19:22:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '章程导出', '2048', '5', '#', '', 'F', '0', '1', 'system:zc:export', '#', 'admin', '2021-02-28 19:22:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '监督委员会管理', '0', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-automobile', 'admin', '2021-02-28 19:33:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '捐赠管理', '0', '6', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-bed', 'admin', '2021-02-28 19:33:38', '', null, '');
INSERT INTO `sys_menu` VALUES ('2056', '物资管理', '0', '7', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-battery-3', 'admin', '2021-02-28 19:34:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2057', '违章违法管理', '0', '8', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-blind', 'admin', '2021-02-28 19:36:14', '', null, '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-02-28 18:18:40', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-02-28 18:18:40', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('1', '操作日志', '9', 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'POST', '1', 'admin', '研发部门', '/monitor/operlog/clean', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 20:02:10');
INSERT INTO `sys_oper_log` VALUES ('2', '登录日志', '9', 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'POST', '1', 'admin', '研发部门', '/monitor/logininfor/clean', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 20:02:12');
INSERT INTO `sys_oper_log` VALUES ('3', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 20:02:20');
INSERT INTO `sys_oper_log` VALUES ('4', '捐赠者', '1', 'com.ruoyi.web.controller.system.TbDonateerController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/donateer/add', '127.0.0.1', '内网IP', '{\"donateNumber\":[\"202011069\"],\"donateName\":[\"张先生\"],\"sex\":[\"0\"],\"csDate\":[\"2021-02-28\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\91912\\Desktop\\社会捐赠\\ruoyi-system\\target\\classes\\mapper\\system\\TbDonateerMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TbDonateerMapper.insertTbDonateer-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_donateer          ( donate_number,             donate_name,             sex,             cs_date )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-02-28 21:37:36');
INSERT INTO `sys_oper_log` VALUES ('5', '捐赠者', '1', 'com.ruoyi.web.controller.system.TbDonateerController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/donateer/add', '127.0.0.1', '内网IP', '{\"donateNumber\":[\"202011069\"],\"donateName\":[\"张先生\"],\"sex\":[\"0\"],\"csDate\":[\"2021-02-28\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 21:38:30');
INSERT INTO `sys_oper_log` VALUES ('6', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 21:38:36');
INSERT INTO `sys_oper_log` VALUES ('7', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', '1', 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"4\"],\"loginName\":[\"202011069\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 21:39:39');
INSERT INTO `sys_oper_log` VALUES ('8', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"捐赠者\"],\"roleKey\":[\"juanzheng\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,107,1035,2055,2018,2019,2020,2023,2056,2024,2025,2026,2029,2057,2012,2013,2014,2017\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 21:40:54');
INSERT INTO `sys_oper_log` VALUES ('9', '物资信息', '1', 'com.ruoyi.web.controller.system.TbWzController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/wz/add', '127.0.0.1', '内网IP', '{\"wzName\":[\"物资A\"],\"typeName\":[\"类型A\"],\"num\":[\"100\"]}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\91912\\Desktop\\社会捐赠\\ruoyi-system\\target\\classes\\mapper\\system\\TbWzMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TbWzMapper.insertTbWz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_wz          ( wz_name,             type_name,             num )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-02-28 21:56:07');
INSERT INTO `sys_oper_log` VALUES ('10', '物资信息', '1', 'com.ruoyi.web.controller.system.TbWzController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/wz/add', '127.0.0.1', '内网IP', '{\"wzName\":[\"物资A\"],\"typeName\":[\"类型A\"],\"num\":[\"100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:10:03');
INSERT INTO `sys_oper_log` VALUES ('11', '捐赠记录', '1', 'com.ruoyi.web.controller.system.TbJzController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/jz/add', '127.0.0.1', '内网IP', '{\"wzId\":[\"1\"],\"jzNum\":[\"100\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:13:01');
INSERT INTO `sys_oper_log` VALUES ('12', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"管理员\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:00');
INSERT INTO `sys_oper_log` VALUES ('13', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:02');
INSERT INTO `sys_oper_log` VALUES ('14', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'POST', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\r\n  \"msg\" : \"项目经理已分配,不能删除\",\r\n  \"code\" : 500\r\n}', '0', null, '2021-02-28 22:15:04');
INSERT INTO `sys_oper_log` VALUES ('15', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"监督委员会\"],\"postCode\":[\"se\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:18');
INSERT INTO `sys_oper_log` VALUES ('16', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"捐赠者\"],\"postCode\":[\"user\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:25');
INSERT INTO `sys_oper_log` VALUES ('17', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:45');
INSERT INTO `sys_oper_log` VALUES ('18', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:47');
INSERT INTO `sys_oper_log` VALUES ('19', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:51');
INSERT INTO `sys_oper_log` VALUES ('20', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:53');
INSERT INTO `sys_oper_log` VALUES ('21', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2021-02-28 22:15:56');
INSERT INTO `sys_oper_log` VALUES ('22', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:15:58');
INSERT INTO `sys_oper_log` VALUES ('23', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', '1', 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', null, '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', '0', null, '2021-02-28 22:16:00');
INSERT INTO `sys_oper_log` VALUES ('24', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"捐赠管理\"],\"orderNum\":[\"0\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:16:10');
INSERT INTO `sys_oper_log` VALUES ('25', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"捐赠管理\"],\"deptName\":[\"科技部门\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:16:23');
INSERT INTO `sys_oper_log` VALUES ('26', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"102\"],\"parentId\":[\"100\"],\"parentName\":[\"捐赠管理\"],\"deptName\":[\"监督部门\"],\"orderNum\":[\"2\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:16:29');
INSERT INTO `sys_oper_log` VALUES ('27', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"102\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"菜单管理\"],\"url\":[\"/system/menu\"],\"target\":[\"menuItem\"],\"perms\":[\"system:menu:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-th-list\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:16:42');
INSERT INTO `sys_oper_log` VALUES ('28', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"超级管理员\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2021-02-28 22:17:13');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '管理员', '1', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:15:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '监督委员会', '2', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:15:18', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '捐赠者', '4', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 22:15:25', '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2021-02-28 18:18:39', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '监督委员', 'jdww', '2', '2', '0', '0', 'admin', '2021-02-28 18:18:39', 'admin', '2021-02-28 19:39:39', '普通角色');
INSERT INTO `sys_role` VALUES ('3', '捐赠者', 'juanzheng', '3', '1', '0', '0', 'admin', '2021-02-28 19:40:03', 'admin', '2021-02-28 21:40:54', '');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '107');
INSERT INTO `sys_role_menu` VALUES ('100', '1035');
INSERT INTO `sys_role_menu` VALUES ('100', '2012');
INSERT INTO `sys_role_menu` VALUES ('100', '2013');
INSERT INTO `sys_role_menu` VALUES ('100', '2014');
INSERT INTO `sys_role_menu` VALUES ('100', '2017');
INSERT INTO `sys_role_menu` VALUES ('100', '2018');
INSERT INTO `sys_role_menu` VALUES ('100', '2019');
INSERT INTO `sys_role_menu` VALUES ('100', '2020');
INSERT INTO `sys_role_menu` VALUES ('100', '2023');
INSERT INTO `sys_role_menu` VALUES ('100', '2024');
INSERT INTO `sys_role_menu` VALUES ('100', '2025');
INSERT INTO `sys_role_menu` VALUES ('100', '2026');
INSERT INTO `sys_role_menu` VALUES ('100', '2029');
INSERT INTO `sys_role_menu` VALUES ('100', '2055');
INSERT INTO `sys_role_menu` VALUES ('100', '2056');
INSERT INTO `sys_role_menu` VALUES ('100', '2057');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '超级管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2021-02-28 21:54:59', '2021-02-28 18:18:39', 'admin', '2021-02-28 18:18:39', '', '2021-02-28 22:17:13', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2021-02-28 18:18:39', '2021-02-28 18:18:39', 'admin', '2021-02-28 18:18:39', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('4', null, '202011069', '张先生', '00', '', '', '0', '', 'bc64177997a009676174cb65ac8fd86d', 'ed1df4', '0', '0', '127.0.0.1', '2021-02-28 21:41:03', null, '', '2021-02-28 21:38:30', '', '2021-02-28 21:41:02', null);

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('47873a62-386c-4792-9e5d-0bdbbf950555', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2021-02-28 21:41:05', '2021-02-28 22:25:30', '1800000');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');

-- ----------------------------
-- Table structure for `tb_cf`
-- ----------------------------
DROP TABLE IF EXISTS `tb_cf`;
CREATE TABLE `tb_cf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` varchar(255) NOT NULL COMMENT '通报人',
  `cf_content` varchar(255) NOT NULL COMMENT '违章违法',
  `cf_time` datetime NOT NULL COMMENT '通报处理时间',
  `cf_craete` varchar(255) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_cf
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_donateer`
-- ----------------------------
DROP TABLE IF EXISTS `tb_donateer`;
CREATE TABLE `tb_donateer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `donate_number` varchar(255) DEFAULT NULL,
  `donate_name` varchar(255) NOT NULL COMMENT '捐赠者姓名',
  `sex` int(11) NOT NULL COMMENT '性别',
  `cs_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '出生日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_donateer
-- ----------------------------
INSERT INTO `tb_donateer` VALUES ('1', '202011069', '张先生', '0', '2021-02-28 00:00:00');

-- ----------------------------
-- Table structure for `tb_jb`
-- ----------------------------
DROP TABLE IF EXISTS `tb_jb`;
CREATE TABLE `tb_jb` (
  `id` int(11) NOT NULL COMMENT '举报编号',
  `content` varchar(255) NOT NULL COMMENT '举报内容',
  `create_time` datetime DEFAULT NULL COMMENT '举报时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_jb
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_jz`
-- ----------------------------
DROP TABLE IF EXISTS `tb_jz`;
CREATE TABLE `tb_jz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '捐赠者编号',
  `user_name` varchar(255) NOT NULL COMMENT '捐赠者',
  `wz_id` int(11) NOT NULL,
  `jz_num` int(11) NOT NULL COMMENT '捐赠数量',
  `create_time` datetime NOT NULL COMMENT '捐赠时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_jz
-- ----------------------------
INSERT INTO `tb_jz` VALUES ('1', '1', '若依', '1', '100', '2021-02-28 22:13:02');

-- ----------------------------
-- Table structure for `tb_lq`
-- ----------------------------
DROP TABLE IF EXISTS `tb_lq`;
CREATE TABLE `tb_lq` (
  `id` int(11) NOT NULL COMMENT '序号',
  `user_id` int(11) NOT NULL COMMENT '领取人编号',
  `user_name` varchar(255) NOT NULL COMMENT '领取人',
  `wz_id` int(11) NOT NULL COMMENT '物资',
  `lq_num` int(11) NOT NULL COMMENT '领取数量',
  `lq_time` datetime NOT NULL COMMENT '领取时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_lq
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_wy`
-- ----------------------------
DROP TABLE IF EXISTS `tb_wy`;
CREATE TABLE `tb_wy` (
  `id` int(11) NOT NULL,
  `wy_number` varchar(255) NOT NULL COMMENT '委员编号',
  `wy_name` varchar(255) NOT NULL COMMENT '委员姓名',
  `wy_phone` varchar(255) NOT NULL COMMENT '委员联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_wy
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_wz`
-- ----------------------------
DROP TABLE IF EXISTS `tb_wz`;
CREATE TABLE `tb_wz` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type_name` varchar(255) NOT NULL COMMENT '物资类型',
  `wz_name` varchar(255) NOT NULL COMMENT '物资',
  `num` varchar(11) NOT NULL COMMENT '库存数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_wz
-- ----------------------------
INSERT INTO `tb_wz` VALUES ('1', '类型A', '物资A', '200');

-- ----------------------------
-- Table structure for `tb_wztype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_wztype`;
CREATE TABLE `tb_wztype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type_name` varchar(255) NOT NULL COMMENT '物资种类',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_wztype
-- ----------------------------
INSERT INTO `tb_wztype` VALUES ('1', '类型A', '2021-02-28 19:53:28', null);

-- ----------------------------
-- Table structure for `tb_zc`
-- ----------------------------
DROP TABLE IF EXISTS `tb_zc`;
CREATE TABLE `tb_zc` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `wyh_type` varchar(255) NOT NULL COMMENT '标题',
  `wyh_content` varchar(255) NOT NULL COMMENT '委员会章程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_zc
-- ----------------------------
