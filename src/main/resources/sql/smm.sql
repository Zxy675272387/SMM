/*
Navicat MySQL Data Transfer

Source Server         : 118.24.15.181
Source Server Version : 50721
Source Host           : 118.24.15.181:3306
Source Database       : smm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-08 20:41:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_tb
-- ----------------------------
DROP TABLE IF EXISTS `area_tb`;
CREATE TABLE area_tb (
  id bigint(20) NOT NULL,
  create_time timestamp NULL DEFAULT NULL,
  creator varchar(255) DEFAULT NULL,
  creator_id varchar(255) DEFAULT NULL,
  valid varchar(1) DEFAULT NULL,
  update_time timestamp NULL DEFAULT NULL,
  updator varchar(255) DEFAULT NULL,
  updator_id varchar(255) DEFAULT NULL,
  pid varchar(255) DEFAULT NULL,
  short_map_name varchar(255) DEFAULT NULL,
  short_name varchar(255) DEFAULT NULL,
  spelling varchar(255) DEFAULT NULL,
  state varchar(255) DEFAULT NULL,
  type varchar(255) DEFAULT NULL,
  zip varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area_tb
-- ----------------------------
INSERT INTO `area_tb` VALUES ('1', null, null, null, '1', '2018-03-21 11:28:24', null, null, '130100', null, 'gyx', 'GaoYiXian ', null, '4', '051330', '高邑县');
INSERT INTO `area_tb` VALUES ('2', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320800', null, 'lsx', 'LianShuiXian  ', null, '4', '223400', '涟水县');
INSERT INTO `area_tb` VALUES ('3', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320800', null, 'hzx', 'HongZeXian', null, '4', '223100', '洪泽县');
INSERT INTO `area_tb` VALUES ('4', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320800', null, 'xyx', 'ZuoZuoXian', null, '4', '211700', '盱眙县');
INSERT INTO `area_tb` VALUES ('5', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320800', null, 'jhx', 'JinHuXian ', null, '4', '211600', '金湖县');
INSERT INTO `area_tb` VALUES ('6', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320800', null, 'qtq', 'QiTaQu', null, '4', '', '其它区');
INSERT INTO `area_tb` VALUES ('7', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320000', null, 'ycs', 'YanChengShi   ', null, '3', '224000', '盐城市');
INSERT INTO `area_tb` VALUES ('8', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'thq', 'TingHuQu  ', null, '4', '224005', '亭湖区');
INSERT INTO `area_tb` VALUES ('9', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'ydq', 'YanDuQu   ', null, '4', '224055', '盐都区');
INSERT INTO `area_tb` VALUES ('10', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'xsx', 'XiangShuiXian ', null, '4', '224600', '响水县');
INSERT INTO `area_tb` VALUES ('11', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'bhx', 'BinHaiXian', null, '4', '224500', '滨海县');
INSERT INTO `area_tb` VALUES ('12', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'fnx', 'FuNingXian', null, '4', '224400', '阜宁县');
INSERT INTO `area_tb` VALUES ('13', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'syx', 'SheYangXian   ', null, '4', '224300', '射阳县');
INSERT INTO `area_tb` VALUES ('14', null, null, null, '1', '2018-03-21 11:28:24', null, null, '320900', null, 'jhx', 'JianHuXian', null, '4', '224700', '建湖县');

-- ----------------------------
-- Table structure for cashs_settlement_tb
-- ----------------------------
DROP TABLE IF EXISTS `cashs_settlement_tb`;
CREATE TABLE cashs_settlement_tb (
  id bigint(20) NOT NULL COMMENT '主键',
  pay_method int(11) DEFAULT NULL COMMENT '支付方式',
  cash_begin_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收银开始时间',
  cash_begin_end timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '收银结束时间',
  total_amount bigint(20) DEFAULT NULL COMMENT '收银总额',
  check_up_result int(1) DEFAULT NULL COMMENT '核对结果（1：正确，2：错误，3，未核对）',
  cashier_name varchar(255) DEFAULT NULL COMMENT '收银员姓名',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  remark1 varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  remark3 bigint(20) DEFAULT NULL COMMENT '扩展字段3',
  remark4 bigint(20) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收银结算表';

-- ----------------------------
-- Records of cashs_settlement_tb
-- ----------------------------

-- ----------------------------
-- Table structure for country_code_tb
-- ----------------------------
DROP TABLE IF EXISTS `country_code_tb`;
CREATE TABLE country_code_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  continents varchar(64) DEFAULT NULL COMMENT '所属州名',
  country_code varchar(64) DEFAULT NULL COMMENT '国别代码',
  country_name varchar(128) DEFAULT NULL COMMENT '中文名（简称）',
  country_english_name varchar(128) DEFAULT NULL COMMENT '英文名（简称）',
  europtronic_rate int(10) DEFAULT NULL COMMENT '优普税率',
  state int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国别码表';

-- ----------------------------
-- Records of country_code_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_attachment_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_attachment_tb`;
CREATE TABLE goods_attachment_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  file_name varchar(200) DEFAULT NULL COMMENT '附件名称',
  content_type varchar(200) DEFAULT NULL COMMENT '文件类型',
  model_name varchar(200) DEFAULT NULL COMMENT '标示名（关联表名）',
  link_url varchar(500) DEFAULT NULL COMMENT '附件链接地址',
  relevance_id varchar(200) DEFAULT NULL COMMENT '关联业务id',
  link_type int(11) DEFAULT NULL COMMENT '链接类型：0内链，1外链',
  opposite_path varchar(255) DEFAULT NULL COMMENT '相对路径',
  absolute_path varchar(255) DEFAULT NULL COMMENT '绝对路径',
  valid int(1) DEFAULT NULL COMMENT '是否有效：0无效，1有效',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人id',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  ext varchar(500) DEFAULT NULL COMMENT '扩展字段,可用于为同一个页面中区分多组图片设置key',
  ext2 varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of goods_attachment_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_brand_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand_tb`;
CREATE TABLE goods_brand_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  brand_number bigint(20) DEFAULT NULL COMMENT '品牌编号（暂定）',
  brand_name varchar(255) DEFAULT NULL COMMENT '品牌中文名',
  brand_english_name varchar(128) DEFAULT NULL COMMENT '品牌英文名',
  brand_initial varchar(64) DEFAULT NULL COMMENT '品牌首字母',
  state int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  extends_params longblob COMMENT '扩展参数',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of goods_brand_tb
-- ----------------------------
INSERT INTO `goods_brand_tb` VALUES ('60', null, '肯德基', 'K', 'K', '1', '0', '1517021000000005', '1517021000000005,1517021000000006,', '1517021000000006', 'wd', '2017-02-27 09:42:41', '1517021000000006', 'wd', '2017-02-27 09:42:03', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('61', null, '达芙妮', 'dafuni', 'D', '0', '0', '1517021600000005', '1517021600000005,1517021600000006,', '1517021600000006', 'dafuni', '2017-02-27 16:06:55', '1517021600000006', 'dafuni', '2017-02-27 16:06:18', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('62', null, '百事可乐', 'pesi', 'p', '0', '1', '1517021600000005', '1517021600000005,1517021600000006,', '1517021600000006', 'dafuni', '2017-03-01 09:27:56', '1517021600000006', 'dafuni', '2017-02-27 18:50:49', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('63', null, '测试肯德基', 'KFC', 'K', '0', '1', '1517021000000005', '1517021000000005,1517021000000006,', '1517021000000006', 'wd', '2017-08-09 18:15:13', '1517021000000006', 'wd', '2017-08-09 18:15:14', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('64', null, '兰蔻', 'lancore', 'L', '1', '0', '1517021600000005', '1517021600000005,1517021600000006,', '1517021600000006', 'dafuni', '2017-02-28 15:28:57', '1517021600000006', 'dafuni', '2017-02-28 15:28:57', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('65', null, '中粮', 'zhangliang', 'Z', '1', '0', '1703011720291251', '1703011720291251,1703011720291252,', '1703011720291252', 'zjx', '2017-03-02 14:32:41', '1703011720291252', 'zjx', '2017-03-02 14:32:41', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('66', null, '玫琳凯', 'Marrykai', 'M', '0', '1', '1702271422391118', '1702271422391118,1702271422391119,', '1702271422391119', 'cyy5', '2017-03-03 11:32:48', '1702271422391119', 'cyy5', '2017-03-02 16:56:30', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('67', null, '耐克', 'nick', 'n', '1', '0', '1517021500000005', '1517021500000005,1517021500000006,', '1517021500000006', 'scfptoporg1', '2017-03-03 11:10:37', '1517021500000006', 'scfptoporg1', '2017-03-03 11:09:59', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('68', null, '联想', 'lenovo', '', '1', '0', '1517021500000005', '1517021500000005,1517021500000006,', '1517021500000006', 'scfptoporg1', '2017-03-03 13:43:55', '1517021500000006', 'scfptoporg1', '2017-03-03 13:43:55', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('69', null, '肯德基test', 'KFC', 'K', '1', '0', '1517021000000005', '1517021000000005,1517021000000006,', '1517021000000006', 'wd', '2017-03-03 18:45:40', '1517021000000006', 'wd', '2017-03-03 18:45:40', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('70', null, '兰蔻1', 'lancore', '', '0', '1', '1517021600000005', '1517021600000005,1517021600000006,', '1517021600000006', 'dafuni', '2017-03-06 15:29:17', '1517021600000006', 'dafuni', '2017-03-06 15:28:34', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('71', null, '宜家', 'yika', '4', '1', '0', '1517021600000011', '1517021600000005,1517021600000011,1517021600000012,', '1517021600000012', 'dfnfg', '2017-03-09 09:36:15', '1517021600000012', 'dfnfg', '2017-03-09 09:35:37', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('72', null, '品牌11', 'PP1', 'P', '1', '0', '1517021000000005', '1517021000000005,1517021000000006,', '1517021000000006', 'wd', '2017-03-10 11:26:39', '1517021000000006', 'wd', '2017-03-10 11:26:00', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('73', null, 'LV', 'LV', 'L', '1', '0', '1703100925241660', '1703100925241660,1703100925241661,', '1703100925241661', 'yc', '2017-03-15 09:43:34', '1703100925241661', 'yc', '2017-03-15 09:42:56', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('74', null, '小汤山', 'xts', '', '1', '0', '1703151000321434', '1703150956461430,1703151000321434,1703151000321435,', '1703151000321435', 'shuju', '2017-03-15 10:16:45', '1703151000321435', 'shuju', '2017-03-15 10:16:45', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('75', null, '国安欢洗', 'HX', '', '1', '0', '1703100925241660', '1703100925241660,1703100925241661,', '1703100925241661', 'yc', '2017-03-15 10:27:20', '1703100925241661', 'yc', '2017-03-15 10:27:20', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('76', null, '耐克', 'nike', 'N', '1', '0', '1703151036401444', '1703151036401444,1703151036401445,', '1703151036401445', 'yangzhi', '2017-03-15 10:41:17', '1703151036401445', 'yangzhi', '2017-03-15 10:40:38', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('77', null, 'CK', 'CK', '', '1', '0', '1703151508211459', '1703151153311451,1703151502261453,1703151508211459,1703151508211460,', '1703151508211460', 'gt', '2017-03-15 15:25:36', '1703151508211460', 'gt', '2017-03-15 15:25:36', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('78', null, '可口可乐', 'kele', '', '1', '0', '1703300948231446', '1703300948231446,1703300948231447,', '1703300948231447', 'pm', '2017-03-30 10:12:50', '1703300948231447', 'pm', '2017-03-30 10:12:50', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('79', null, '洗衣卡', 'Laundry card', '', '1', '0', '1704011148361528', '1704011148361528,1704011148361529,', '1704011148361529', 'djxyk', '2017-04-01 11:56:03', '1704011148361529', 'djxyk', '2017-04-01 11:56:03', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('80', null, '山姆大叔', 'SMDS', 'S', '0', '1', '1703301514121471', '1703301514121471,1703301514121472,', '1703301514121472', 'wd', '2017-04-07 14:53:49', '1703301514121472', 'wd', '2017-04-05 09:17:33', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('81', null, '新东方', 'xindongfang', 'N', '1', '0', '1704050940321237', '1704050940321237,1704050940321238,', '1704050940321238', 'xdf', '2017-04-05 10:38:30', '1704050940321238', 'xdf', '2017-04-05 10:38:30', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('82', null, '耐克', 'nike', '', '1', '0', '1704061053501257', '1704061053501257,1704061053501258,', '1704061053501258', 'test_yz_1', '2017-04-06 10:55:51', '1704061053501258', 'test_yz_1', '2017-04-06 10:55:51', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('83', null, '保洁', 'bj', '', '1', '0', '1703291044551028', '1703291044551028,1703291044551029,', '1703291044551029', 'jswn', '2017-04-06 11:57:47', '1703291044551029', 'jswn', '2017-04-06 11:57:49', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('84', null, '可乐', 'kl', '', '1', '0', '1703291044551028', '1703291044551028,1703291044551029,', '1703291044551029', 'jswn', '2017-04-06 11:58:07', '1703291044551029', 'jswn', '2017-04-06 11:58:07', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('85', null, '兰蔻', 'Lancore', 'L', '1', '0', '1703301514121471', '1703301514121471,1703301514121472,', '1703301514121472', 'wd', '2017-04-07 14:54:21', '1703301514121472', 'wd', '2017-04-07 14:54:21', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('86', null, '味多美', 'wdm', '', '1', '0', '1704101042231004', '1704101042231004,1704101042231005,', '1704101042231005', 'wdm', '2017-04-10 13:12:46', '1704101042231005', 'wdm', '2017-04-10 13:12:46', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('87', null, '味多美', 'wdm', '', '1', '0', '1703301514121471', '1703301514121471,1703301514121472,', '1703301514121472', 'wd', '2017-04-10 13:21:35', '1703301514121472', 'wd', '2017-04-10 13:21:35', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('88', null, '洗干净', 'wash', 'W', '1', '0', '1704050940321237', '1704050940321237,1704050940321238,', '1704050940321238', 'xdf', '2017-04-10 13:44:35', '1704050940321238', 'xdf', '2017-04-10 13:44:35', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('89', null, '洗干净', 'xi', 'X', '1', '0', '1704101346091010', '1704101346091010,1704101346091011,', '1704101346091011', 'wash', '2017-04-10 13:47:37', '1704101346091011', 'wash', '2017-04-10 13:47:37', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('90', null, '法国奶油', 'fg', '', '1', '0', '1704101044191006', '1704101042231004,1704101044191006,2016111700000109,', '2016111700000109', '啦啦啦', '2017-04-11 10:30:40', '2016111700000109', '啦啦啦', '2017-04-11 10:30:40', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('91', null, '可口可乐', 'coca', '', '1', '0', '1703300936111442', '1703300936111442,1703300936111443,', '1703300936111443', 'sea', '2017-05-11 10:44:43', '1703300936111443', 'sea', '2017-05-11 10:44:43', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('92', null, '维达', 'VinDa', 'V', '1', '0', '1705161824191230', '1705161824191230,1705161824191229,', '1705161824191229', 'wanghao20170516', '2017-05-16 18:32:58', '1705161824191229', 'wanghao20170516', '2017-05-16 18:32:57', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('93', null, '小老板', 'boss', 'B', '1', '0', '1706021741451211', '1706021741451211,1706021741451210,', '1706021741451210', 'cs', '2017-07-12 16:47:04', '1706021741451210', 'cs', '2017-07-12 16:47:03', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('94', null, '哇哈哈', 'whh', '', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-12 18:01:37', '1707121714321029', 'pjj', '2017-07-12 18:01:37', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('95', null, '农夫山泉', 'nong', 'N', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-13 17:25:15', '1707121714321029', 'pjj', '2017-07-13 17:25:15', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('96', null, '22', '222', '', '1', '1', '1705161711531059', '1705161711531059,1705161711531058,', '1705161711531058', 'jialefu', '2018-04-12 10:16:23', '1705161711531058', 'jialefu', '2018-04-12 10:16:30', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('97', null, '悦活', 'Yuehuo', 'Y', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-20 15:39:53', '1707121714321029', 'pjj', '2017-07-20 15:39:53', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('98', null, '热风', 'Hotwind', 'H', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-21 15:42:54', '1707121714321029', 'pjj', '2017-07-21 15:42:54', null, null, null);

-- ----------------------------
-- Table structure for goods_category_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_category_tb`;
CREATE TABLE goods_category_tb (
  id bigint(32) NOT NULL AUTO_INCREMENT,
  category_id varchar(200) DEFAULT NULL COMMENT '服务类目ID,规则一级类目：T+自增ID，二级类目：P+自增ID，三级类目：Q+自增ID，四级类目：S+自增ID\r\n\r\n采销tree类目ID,规则一级类目：B+自增ID，二级类目：U+自增ID，三级类目：M+自增ID，四级类目：E+自增ID\r\n\r\n            \r\n            ',
  category_name varchar(255) DEFAULT NULL COMMENT '类目名称',
  parent_id varchar(32) DEFAULT NULL COMMENT '父类目id',
  category_type int(1) DEFAULT NULL COMMENT '类目类型,1服务类，2实物类，3餐饮类',
  category_level int(1) DEFAULT NULL COMMENT '类目级别(1:一级，2：二级，3：三级，4：四级)',
  input_tax int(11) DEFAULT NULL COMMENT '进项税',
  output_tax int(11) DEFAULT NULL COMMENT '销项税',
  consume_tax decimal(11,2) DEFAULT NULL COMMENT '消费税',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级id',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构id',
  order_number int(5) DEFAULT NULL COMMENT '排序序号',
  status int(5) DEFAULT NULL COMMENT '状态，是否有效：0无效，1有效',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(150) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category_tb
-- ----------------------------
INSERT INTO `goods_category_tb` VALUES ('1', 'SP', '食品', '1', '1', '1', null, null, null, null, null, '1', '1', '0', '1', '1', '2018-04-09 23:43:40', '1', '1', '2018-05-08 15:33:12', null, null);
INSERT INTO `goods_category_tb` VALUES ('2', 'RYP', '日用品', '1', '1', '2', null, null, null, null, null, '1', '1', '1', '1', '1', '2018-04-09 23:43:40', null, null, '2018-05-08 16:38:51', null, null);
INSERT INTO `goods_category_tb` VALUES ('3', 'WJ', '文具', '0', '1', '1', null, null, null, null, null, null, null, '0', null, null, '2018-04-24 15:37:31', null, null, '2018-04-09 23:43:40', null, null);
INSERT INTO `goods_category_tb` VALUES ('4', 'SG', '水果', '1', '1', '2', null, null, null, null, null, '1', '1', '0', '1', '1', '2018-04-09 23:43:40', '1', '1', '2018-04-09 23:43:40', null, null);
INSERT INTO `goods_category_tb` VALUES ('8', null, 'qwe', null, null, '2', null, null, null, null, null, '1', '1', '0', null, null, '2018-04-24 15:11:30', null, null, '2018-04-24 15:11:30', null, null);
INSERT INTO `goods_category_tb` VALUES ('10', null, '这是什么', null, null, '1', null, null, null, null, null, '1', '1', '1', null, null, '2018-04-24 15:26:38', null, null, '2018-04-24 15:30:23', null, null);
INSERT INTO `goods_category_tb` VALUES ('11', 'SX', '生鲜', '1', '1', '2', null, null, null, null, null, '1', '1', '0', '1', '1', '2018-04-09 23:43:40', null, null, '2018-04-09 23:43:40', null, null);
INSERT INTO `goods_category_tb` VALUES ('12', 'SS', '熟食', '1', '1', '2', null, null, null, null, null, '1', '1', '0', '1', '1', '2018-04-09 23:43:40', '1', '1', '2018-04-09 23:43:40', null, null);
INSERT INTO `goods_category_tb` VALUES ('13', null, '拖布', '1', null, '2', null, null, null, null, null, null, null, '0', null, null, '2018-04-24 15:48:23', null, null, '2018-04-24 15:48:23', null, null);
INSERT INTO `goods_category_tb` VALUES ('15', null, 'abc', '2', null, '2', null, null, null, null, null, null, null, '0', null, null, '2018-04-24 15:58:05', null, null, '2018-04-24 15:48:23', null, null);
INSERT INTO `goods_category_tb` VALUES ('17', null, '123123', '0', null, '1', null, null, null, null, null, null, null, '0', null, null, '2018-04-24 16:32:50', null, null, '2018-04-24 15:48:23', null, null);
INSERT INTO `goods_category_tb` VALUES ('18', null, '啊啊啊啊', '0', null, '1', null, null, null, null, null, null, null, '0', null, null, '2018-04-24 16:58:50', null, null, '2018-01-01 00:00:00', null, null);

-- ----------------------------
-- Table structure for goods_info_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_info_tb`;
CREATE TABLE goods_info_tb (
  ID bigint(20) NOT NULL AUTO_INCREMENT,
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表id',
  goods_main_property_id bigint(20) DEFAULT NULL COMMENT '商品搜索主属性ID',
  assistant_property_map longblob COMMENT '辅助属性结果集合',
  goods_detail longblob COMMENT '商品描述',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电商商品信息表';

-- ----------------------------
-- Records of goods_info_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_measurement_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_measurement_tb`;
CREATE TABLE goods_measurement_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  length int(8) DEFAULT NULL COMMENT '长',
  width int(8) DEFAULT NULL COMMENT '宽',
  height int(8) DEFAULT NULL COMMENT '高',
  weight int(8) DEFAULT NULL COMMENT '商品重量',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尺寸参数表';

-- ----------------------------
-- Records of goods_measurement_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_normal_price_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_normal_price_tb`;
CREATE TABLE goods_normal_price_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  sale_price double(20,0) DEFAULT NULL COMMENT '售价(单位分)',
  market_price double(20,0) DEFAULT NULL COMMENT '市场价(单位分)',
  purchase_price double(20,0) DEFAULT NULL COMMENT '采购价(单位分)',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  goods_sale_id bigint(20) DEFAULT NULL COMMENT '商品销售id',
  store_id bigint(20) DEFAULT NULL COMMENT '门店业务id',
  store_type int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  store_name varchar(255) DEFAULT NULL COMMENT '门店名称',
  goods_state int(1) DEFAULT NULL COMMENT '商品状态',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '创建人层级id',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id),
  KEY price_goods_sale_id (goods_sale_id,store_id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='价格表';

-- ----------------------------
-- Records of goods_normal_price_tb
-- ----------------------------
INSERT INTO `goods_normal_price_tb` VALUES ('1', '33', '441', '55', '1', '1', '1', '1', '常营2号仓库', '1', '0', null, null, '1', '1', '2017-08-24 22:14:19', '1', '2018-05-08 16:37:29', '23', '1');
INSERT INTO `goods_normal_price_tb` VALUES ('2', '20', '20', '20', '2', '1', '1', '1', '常营2号仓库', '1', '0', null, null, '1', '1', '2017-08-10 22:15:09', '1', '2018-05-08 16:37:24', '1', '1');
INSERT INTO `goods_normal_price_tb` VALUES ('6', '1', '1', '1', '1', null, null, null, null, null, '0', null, null, '1', null, '2018-04-26 15:20:10', null, '2018-04-26 15:20:10', null, null);
INSERT INTO `goods_normal_price_tb` VALUES ('9', '12', '13', '14', '4', null, null, null, null, null, '0', null, null, '1', null, '2018-05-02 10:44:03', null, '2018-05-02 10:44:03', null, null);
INSERT INTO `goods_normal_price_tb` VALUES ('10', '12', '12', '23', '5', null, null, null, null, null, '0', null, null, '1', null, '2018-05-08 16:34:40', null, '2018-05-08 16:34:40', null, null);

-- ----------------------------
-- Table structure for goods_package_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_package_tb`;
CREATE TABLE goods_package_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  specifications int(1) DEFAULT NULL COMMENT '包装规格（1：无包装，2：有包装）',
  number int(8) DEFAULT NULL COMMENT '包装件数',
  sale_volume int(8) DEFAULT NULL COMMENT '起售量',
  sale_unit_id bigint(20) DEFAULT NULL COMMENT '销售单位id',
  property int(2) DEFAULT NULL COMMENT '包装属性(1:普通商品,2:易碎品,3:带包装液体,4:裸瓶液体)',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1（单位）等冗余字段',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='包装参数表';

-- ----------------------------
-- Records of goods_package_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_price_record_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_price_record_tb`;
CREATE TABLE goods_price_record_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  old_sale_price bigint(20) DEFAULT NULL COMMENT '原售价',
  old_market_price bigint(20) DEFAULT NULL COMMENT '原市场价',
  old_purchase_price bigint(20) DEFAULT NULL COMMENT '原采购价',
  sale_price bigint(20) DEFAULT NULL COMMENT '售价',
  market_price bigint(20) DEFAULT NULL COMMENT '市场价',
  purchase_price bigint(20) DEFAULT NULL COMMENT '采购价',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品id',
  goods_sale_id bigint(20) DEFAULT NULL COMMENT '商品销售id',
  store_id bigint(20) DEFAULT NULL COMMENT '门店业务id',
  store_type int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  goods_state int(1) DEFAULT NULL COMMENT '商品状态',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  hierarchy_id varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='价格表记录表';

-- ----------------------------
-- Records of goods_price_record_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_product_area_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_product_area_tb`;
CREATE TABLE goods_product_area_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  brand_id bigint(20) DEFAULT NULL COMMENT '品牌ID',
  brand_name varchar(255) DEFAULT NULL COMMENT '品牌中文名称',
  country varchar(255) DEFAULT NULL COMMENT '国别',
  prov varchar(255) DEFAULT NULL COMMENT '省',
  city varchar(255) DEFAULT NULL COMMENT '市',
  is_quality_assurance int(1) DEFAULT NULL COMMENT '是否有质保(1:有，2：无）',
  quality_assurance_days int(5) DEFAULT NULL COMMENT '质保天数',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产地参数表';

-- ----------------------------
-- Records of goods_product_area_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_property_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_property_tb`;
CREATE TABLE goods_property_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  property_name varchar(255) DEFAULT NULL COMMENT '属性名称',
  property_type int(1) DEFAULT NULL COMMENT '属性类型：1表示销售属性  2辅助属性',
  category_id bigint(20) DEFAULT NULL COMMENT '所属类目',
  category_type int(1) DEFAULT NULL COMMENT '类目类型,1服务类，2实物类',
  order_number int(3) DEFAULT NULL COMMENT '排序号',
  status int(1) DEFAULT NULL COMMENT '属性状态0，停用，1启用（默认）',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品属性维护表';

-- ----------------------------
-- Records of goods_property_tb
-- ----------------------------
INSERT INTO `goods_property_tb` VALUES ('1', '口味', '1', '1', '1', '1', '1', '0', null, null, '1', '1', '2017-08-10 10:00:44', '1', '1', '2017-08-31 10:00:05', '1', null);
INSERT INTO `goods_property_tb` VALUES ('2', '分量', '1', '1', '1', '1', '1', '0', null, null, '1', '1', '2017-08-10 10:00:49', '1', '1', '2017-08-23 10:00:45', null, null);














-- ----------------------------
-- Table structure for goods_property_value_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_property_value_tb`;
CREATE TABLE goods_property_value_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  property_id bigint(20) DEFAULT NULL COMMENT '属性id',
  property_value varchar(255) DEFAULT NULL COMMENT '属性值',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品属性值维护表';

-- ----------------------------
-- Records of goods_property_value_tb
-- ----------------------------
INSERT INTO `goods_property_value_tb` VALUES ('1', '1', '麻辣', '0', null, null, '1', '1', '2017-08-10 10:01:42', '1', '1', '2017-08-10 10:01:42', null, null);
INSERT INTO `goods_property_value_tb` VALUES ('2', '1', '酸辣', '0', null, null, '1', '1', '2017-08-10 10:02:19', '1', '1', '2017-08-10 10:02:19', null, null);
INSERT INTO `goods_property_value_tb` VALUES ('3', '1', '不辣', '0', null, null, '1', '1', '2017-08-10 10:02:42', '1', '1', '2017-08-24 10:02:49', null, null);
INSERT INTO `goods_property_value_tb` VALUES ('4', '2', '大份', '0', '0', null, '1', '1', '2017-08-10 10:03:35', '1', '1', '2017-08-10 10:03:28', null, null);
INSERT INTO `goods_property_value_tb` VALUES ('5', '2', '中份', '0', '0', null, '1', '1', '2017-08-10 10:03:59', '1', '1', '2017-08-10 10:03:59', null, null);
INSERT INTO `goods_property_value_tb` VALUES ('6', '2', '小份', '0', '0', null, '1', '1', '2017-08-10 10:04:22', '1', '1', '2017-08-10 10:04:22', null, null);

-- ----------------------------
-- Table structure for goods_putaway_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_putaway_tb`;
CREATE TABLE goods_putaway_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  goods_id bigint(20) DEFAULT NULL COMMENT '商品id',
  goods_sale_id bigint(20) DEFAULT NULL COMMENT '商品销售id',
  store_id bigint(20) DEFAULT NULL COMMENT '门店id',
  price_id bigint(20) DEFAULT NULL COMMENT '价格id',
  status int(1) DEFAULT NULL COMMENT '上架状态：1上架    2下架',
  promo_num varchar(200) DEFAULT NULL COMMENT '促销号',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  hierarchy_id varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id),
  KEY putaway_sale_store (goods_sale_id,store_id,status,valid) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品上下架表';

-- ----------------------------
-- Records of goods_putaway_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_sale_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_sale_tb`;
CREATE TABLE goods_sale_tb (
  ID bigint(20) NOT NULL AUTO_INCREMENT,
  goods_id bigint(20) DEFAULT NULL COMMENT '商品id',
  goods_sku varchar(255) DEFAULT NULL COMMENT 'SKU',
  barcode varchar(32) DEFAULT NULL COMMENT '条码',
  img_url varchar(255) DEFAULT NULL COMMENT '图片url(仅上传一张图片)',
  propertyids varchar(1000) DEFAULT NULL COMMENT 'json销售属性值ID集合',
  sale_property_list varchar(2000) DEFAULT NULL COMMENT 'json销售属性结果集合',
  manufacturer_no varchar(255) DEFAULT NULL COMMENT '厂家货号',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级id',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构id',
  is_deleted int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是，默认0)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  remark1 varchar(255) DEFAULT NULL COMMENT '备注字段1',
  remark2 varchar(255) DEFAULT NULL COMMENT '备注字段2',
  PRIMARY KEY (ID),
  KEY barcode (barcode) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品销售属性表';

-- ----------------------------
-- Records of goods_sale_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_service_mode_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_service_mode_tb`;
CREATE TABLE goods_service_mode_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  is_to_door_service varchar(128) DEFAULT NULL COMMENT '是否上门服务(0:非上门服务，1：上门服务）复选形式',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务方式表';

-- ----------------------------
-- Records of goods_service_mode_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_suggest_price_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_suggest_price_tb`;
CREATE TABLE goods_suggest_price_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  suggest_sale_price bigint(20) DEFAULT NULL COMMENT '建议售价',
  suggest_market_price bigint(20) DEFAULT NULL COMMENT '建议市场价',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议价格表';

-- ----------------------------
-- Records of goods_suggest_price_tb
-- ----------------------------

-- ----------------------------
-- Table structure for goods_supplier_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_supplier_tb`;
CREATE TABLE goods_supplier_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  supplier_name varchar(256) DEFAULT NULL COMMENT '供应商名称',
  supplier_short_name varchar(128) DEFAULT NULL COMMENT '供应商简称',
  supplier_english_name varchar(128) DEFAULT NULL COMMENT '供应商英文名',
  linkman_name varchar(64) DEFAULT NULL COMMENT '联系人姓名',
  linkman_sex int(11) DEFAULT NULL COMMENT '联系人性别',
  linkman_age int(11) DEFAULT NULL COMMENT '联系人年龄',
  supplier_address varchar(512) DEFAULT NULL COMMENT '供应商所在地（省市县（区））',
  business_scope bigint(20) DEFAULT NULL COMMENT '营业范围',
  linkman_phone varchar(32) DEFAULT NULL COMMENT '联系人手机号',
  link_email varchar(64) DEFAULT NULL COMMENT '联系邮箱',
  business_type bigint(20) DEFAULT NULL COMMENT '行业类型',
  state int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_supplier_tb
-- ----------------------------
INSERT INTO `goods_supplier_tb` VALUES ('1', '三全食品股份有限公司', ' 三全食品', ' SANQUAN', ' 王阳', '1', '30', ' 河南省,郑州市,惠济区', '1', '0371-92382929', ' wangyang@sanquan.com', '1', '1', '0', '1', '1 ', '2018-04-28 11:00:15', '1', '1', '2017-08-28 18:14:27');
INSERT INTO `goods_supplier_tb` VALUES ('2', 'aa', 'bb', 'cc', 'dd', '1', '22', '广东省,', '1', '22', '111', null, null, '1', null, null, '2018-05-02 23:09:43', null, null, '2018-04-28 09:58:51');
INSERT INTO `goods_supplier_tb` VALUES ('5', 'aa', 'ee', null, 'dd', null, null, '四川省,成都市', null, '123', '444', null, null, null, null, null, '2018-04-28 10:59:50', null, null, '2018-04-28 10:59:50');
INSERT INTO `goods_supplier_tb` VALUES ('6', 'dd', 'ee', null, 'ff', null, null, '广东省,bcd', null, '123123', 'qq', null, null, null, null, null, '2018-05-02 23:06:41', null, null, '2018-05-02 23:06:41');

-- ----------------------------
-- Table structure for goods_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_tb`;
CREATE TABLE goods_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  goods_name varchar(255) DEFAULT NULL COMMENT '服务商品名称',
  goods_short_name varchar(64) DEFAULT NULL COMMENT '商品简称',
  goods_spu varchar(255) DEFAULT NULL COMMENT 'SPU',
  goods_type int(1) DEFAULT NULL COMMENT '商品类型,1实物类，2服务类,3餐饮类',
  self_support int(1) DEFAULT '1' COMMENT '是否为自营商品 1自营 ，0非自营',
  goods_category_id bigint(20) DEFAULT NULL COMMENT '类目id',
  is_multi_properties int(1) DEFAULT NULL COMMENT '是否显示销售属性:0否，1是（页面对应多销售属性）',
  sku_nums int(4) DEFAULT NULL COMMENT 'SKU个数',
  sale_map varchar(4000) DEFAULT NULL COMMENT 'json保存选择类目属性及属性值',
  state int(1) DEFAULT NULL COMMENT '状态：0试销商品，1可订货，可销售，2可订货，不可销售，3不可订货，可销售，4不可订货，不可销售5，快速出清6汰换品\n            ',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是,默认值0)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  extends_params longblob COMMENT '扩展参数，冗余扩展表中的名值对',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品主表';

-- ----------------------------
-- Records of goods_tb
-- ----------------------------
INSERT INTO `goods_tb` VALUES ('1', '方便面', '泡面', '1212', '0', '1', '1', '1', '1', null, '1', '0', null, null, '1', '1', '2017-08-10 00:49:28', '1', '1', '2018-05-08 16:38:12', null, null, null);
INSERT INTO `goods_tb` VALUES ('2', '苹果', '苹果', '22121', '0', '1', '1', '1', '1', '1', '1', '0', null, null, '1', '1', '2017-08-10 00:49:31', '1', '1', '2018-05-08 16:38:15', null, null, null);
INSERT INTO `goods_tb` VALUES ('4', 'aa', 'pen', '1231', '0', '1', '1', null, null, null, null, null, null, null, null, null, '2018-04-26 10:28:01', null, null, '2018-05-08 16:38:19', null, null, null);
INSERT INTO `goods_tb` VALUES ('5', '铅笔', 'pencil', '10086', '0', '1', '1', null, null, null, null, null, null, null, null, null, '2018-05-07 16:21:11', null, null, '2018-05-08 16:38:22', null, null, null);

-- ----------------------------
-- Table structure for goods_unit_tb
-- ----------------------------
DROP TABLE IF EXISTS `goods_unit_tb`;
CREATE TABLE goods_unit_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  unit_name varchar(64) DEFAULT NULL COMMENT '单位名称',
  unit_english_name varchar(64) DEFAULT NULL COMMENT '英文名称',
  unit_type int(1) DEFAULT NULL COMMENT '单位类型（1：销售单位，2：采购单位,3：餐饮单位）',
  minimum_unit_type int(1) DEFAULT NULL COMMENT '最小包装单位类型（1：EA,2:克）',
  minimum_unit_val int(10) DEFAULT NULL COMMENT '最小单位值',
  state int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='单位表';

-- ----------------------------
-- Records of goods_unit_tb
-- ----------------------------
INSERT INTO `goods_unit_tb` VALUES ('1', '克', 'g', null, '3', '12', '1', '1', null, null, '1517021000000006', 'wd', '2018-05-08 16:32:31', '1517021000000006', 'wd', '2018-05-08 16:32:31');
INSERT INTO `goods_unit_tb` VALUES ('2', 'EAd ee', 'EA', null, '2', '1', '1', '0', null, null, '1517021000000006', 'wd', '2018-05-07 16:07:53', '1517021000000006', 'wd', '2018-05-07 16:07:53');
INSERT INTO `goods_unit_tb` VALUES ('28', '张', 'N', '1', '1', '4', '1', '0', '1704011148361528', '1704011148361528,1704011148361529,', '1704011148361529', 'djxyk', '2018-05-07 16:07:58', '1704011148361529', 'djxyk', '2018-05-07 16:07:58');
INSERT INTO `goods_unit_tb` VALUES ('30', '斤', 'jin', '2', '1', '5', '1', '0', '1703300936111442', '1703300936111442,1703300936111443,', '1703300936111443', 'sea', '2018-05-07 16:08:03', '1703300936111443', 'sea', '2018-05-07 16:08:03');
INSERT INTO `goods_unit_tb` VALUES ('31', '箱', 'xiang', '1', '1', '10', '0', '0', '1703291044551028', '1703291044551028,1703291044551029,', '1703291044551029', 'jswn', '2018-04-25 22:16:25', '1703291044551029', 'jswn', '2018-04-25 22:16:25');
INSERT INTO `goods_unit_tb` VALUES ('32', '箱子', 'xiang', '2', '1', '1', '1', '0', '1703291044551028', '1703291044551028,1703291044551029,', '1703291044551029', 'jswn', '2018-04-10 15:35:34', '1703291044551029', 'jswn', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('34', '张', 'zhang', '1', '1', '2', '1', '0', '1704050940321237', '1704050940321237,1704050940321238,', '1704050940321238', 'xdf', '2018-04-10 15:35:34', '1704050940321238', 'xdf', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('35', '件', 'jian', '1', '1', null, '1', '0', '1704101346091010', '1704101346091010,1704101346091011,', '1704101346091011', 'wash', '2018-04-10 15:35:33', '1704101346091011', 'wash', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('36', '身', 'shen', '2', '1', '5', '1', '0', '1704101346091010', '1704101346091010,1704101346091011,', '1704101346091011', 'wash', '2018-04-10 15:35:33', '1704101346091011', 'wash', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('37', '件', 'jia', '1', '1', null, '0', '1', '1704101044191006', '1704101042231004,1704101044191006,2016111700000109,', '2016111700000109', '啦啦啦', '2018-04-10 15:35:32', '2016111700000109', '啦啦啦', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('38', '张', '张', '1', '1', null, '0', '1', '1704111649061240', '1704111649061240,1704111649061241,', '1704111649061241', 'hx', '2018-04-10 15:35:32', '1704111649061241', 'hx', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('39', '件', 'jian', '1', '1', null, '0', '1', '1703301514121471', '1703301514121471,1703301514121472,', '1703301514121472', 'wd', '2018-04-10 15:35:32', '1703301514121472', 'wd', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('40', '张', 'piecs', '1', '1', null, '1', '0', '1704181520001180', '1704181520001180,1704181520001181,', '1704181520001181', 'hxcs', '2018-04-10 15:35:31', '1704181520001181', 'hxcs', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('41', '张', 'zhang', '1', '1', null, '1', '1', '1704191713491192', '1704191713491192,1704191713491193,', '1704191713491193', 'xiyi', '2018-04-10 15:35:30', '1704191713491193', 'xiyi', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('42', '卡', 'ka', '1', '1', null, '1', '0', '1705021736031118', '1705021736031118,1705021736031119,', '1705021736031119', 'duanjg', '2018-04-10 15:35:28', '1705021736031119', 'duanjg', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('43', '张', 'pace', '1', '1', '1', '1', '0', '1705090932541234', '1705090932541234,1705090932541233,', '1705090932541233', 'wanghao0508', '2018-04-10 15:35:28', '1705090932541233', 'wanghao0508', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('44', '件', 'p', '1', '1', '1', '1', '1', '1705090932541234', '1705090932541234,1705090932541233,', '1705090932541233', 'wanghao0508', '2018-04-23 17:13:07', '1705090932541233', 'wanghao0508', '2018-04-23 17:13:18');
INSERT INTO `goods_unit_tb` VALUES ('45', '件', 'jian', '1', '1', null, '1', '0', '1703300936111442', '1703300936111442,1703300936111443,', '1703300936111443', 'sea', '2018-04-10 15:35:27', '1703300936111443', 'sea', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('46', '件', 'J', '1', '1', '1', '1', '0', '1705161824191230', '1705161824191230,1705161824191229,', '1705161824191229', 'wanghao20170516', '2018-04-10 15:35:27', '1705161824191229', 'wanghao20170516', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('47', '张', 'P', '1', '1', null, '1', '0', '1705161824191230', '1705161824191230,1705161824191229,', '1705161824191229', 'wanghao20170516', '2018-04-10 15:35:26', '1705161824191229', 'wanghao20170516', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('48', '份', 'fen', '3', '1', null, '0', '1', '1705051506151226', '1705051506151226,1705051506151225,', '1705051506151225', 'jindingxuan', '2018-04-10 15:35:26', '1705051506151225', 'jindingxuan', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('49', '盒', 'he', '3', '1', null, '1', '0', '1705051506151226', '1705051506151226,1705051506151225,', '1705051506151225', 'jindingxuan', '2018-04-10 15:35:25', '1705051506151225', 'jindingxuan', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('50', '公斤', 'KG', '1', '2', '1000', '1', '0', '1706150908201209', '1706150901111208,1706150908201209,1706150911001210,', '1706150911001210', 'wuwei', '2018-04-10 15:35:25', '1706150911001210', 'wuwei', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('51', '袋（内装6个）', 'dai', '1', '1', '1', '1', '0', '1706150908201209', '1706150901111208,1706150908201209,1706150911001210,', '1706150911001210', 'wuwei', '2018-04-10 15:35:25', '1706150911001210', 'wuwei', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('52', '代', 'd', '3', '1', '1', '1', '0', '1706150908201209', '1706150901111208,1706150908201209,1706150911001210,', '1706150911001210', 'wuwei', '2018-04-10 15:35:24', '1706150911001210', 'wuwei', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('53', '盘', 'pan', '3', '1', null, '0', '0', '1706151516431215', '1706151516431215,1706151516431214,', '1706151516431214', 'yami', '2018-04-10 15:35:24', '1706151516431214', 'yami', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('54', '份', 'fen', '1', '1', null, '1', '0', '1706151514351213', '1706151514351213,1706151514351212,', '1706151514351212', 'ym', '2018-04-10 15:35:23', '1706151514351212', 'ym', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('55', '份', 'F', '3', '1', null, '1', '0', '1706151514351213', '1706151514351213,1706151514351212,', '1706151514351212', 'ym', '2018-04-10 15:35:23', '1706151514351212', 'ym', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('56', '份', 'fen', '3', '1', null, '1', '0', '1706150901111208', '1706150901111208,1706150901111207,', '1706150901111207', 'yamiyf', '2018-04-10 15:35:22', '1706150901111207', 'yamiyf', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('57', '份', 'p', '3', '1', '1', '1', '0', '1706191136301224', '1706191136301224,1706191136301223,', '1706191136301223', 'jx', '2018-04-10 15:35:22', '1706191136301223', 'jx', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('58', '袋', 'dai', '3', '1', null, '1', '0', '1706151516431215', '1706151516431215,1706151516431214,', '1706151516431214', 'yami', '2018-04-10 15:35:22', '1706151516431214', 'yami', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('60', '盒', 'he', '3', '1', null, '1', '0', '1706151516431215', '1706151516431215,1706151516431214,', '1706151516431214', 'yami', '2018-04-10 15:35:21', '1706151516431214', 'yami', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('61', '9()', '2', '3', '1', null, '1', '0', '1706150901111208', '1706150901111208,1706150901111207,', '1706150901111207', 'yamiyf', '2018-04-10 15:35:21', '1706150901111207', 'yamiyf', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('62', '盘', 'P', '3', '1', '1', '1', '0', '1706301144101634', '1706301144101634,1706301144101633,', '1706301144101633', 'cy', '2018-04-10 15:35:20', '1706301144101633', 'cy', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('63', '8/块', 'K', '3', '1', '1', '1', '0', '1706301144101634', '1706301144101634,1706301144101633,', '1706301144101633', 'cy', '2018-04-10 15:35:20', '1706301144101633', 'cy', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('64', '碗', 'w', '3', '1', '1', '1', '0', '1706301144101634', '1706301144101634,1706301144101633,', '1706301144101633', 'cy', '2018-04-10 15:35:20', '1706301144101633', 'cy', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('65', '个', 'G', '1', '1', null, '0', '1', '1706021741451211', '1706021741451211,1706021741451210,', '1706021741451210', 'cs', '2018-04-10 15:35:14', '1706021741451210', 'cs', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('66', '瓶', 'P', '1', '1', null, '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2018-04-10 15:35:14', '1707121714321029', 'pjj', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('67', '桶', 'T', '1', '1', null, '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2018-04-10 15:35:13', '1707121714321029', 'pjj', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('68', '袋（4个）', 'dai', '3', '1', null, '1', '0', '1706150901111208', '1706150901111208,1706150901111207,', '1706150901111207', 'yamiyf', '2018-04-10 15:35:13', '1706150901111207', 'yamiyf', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('69', '22', '22', '1', '1', null, '1', '0', '1705161711531059', '1705161711531059,1705161711531058,', '1705161711531058', 'jialefu', '2018-04-10 15:35:12', '1705161711531058', 'jialefu', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('70', '箱', 'X', '1', '2', null, '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2018-04-10 15:35:12', '1707121714321029', 'pjj', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('71', '双', 'shuang', '1', '1', null, '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2018-04-10 15:35:12', '1707121714321029', 'pjj', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('72', '份', 'F', '3', '1', null, '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2018-04-10 15:35:11', '1707121714321029', 'pjj', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('73', '张', 'zhang', '1', '1', '1', '0', '0', '1704261508051110', '1704261508051110,1704261508051111,', '1704261508051111', 'scftop426u1', '2018-04-10 15:35:11', '1704261508051111', 'scftop426u1', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('74', '件', 'jian', '1', '1', null, '1', '0', '1705161711531059', '1705161711531059,1705161711531058,', '1705161711531058', 'jialefu', '2018-04-10 15:35:10', '1705161711531058', 'jialefu', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('75', '个', 'ge', '1', '1', null, '1', '1', '1705161711531059', '1705161711531059,1705161711531058,', '1705161711531058', 'jialefu', '2018-04-10 15:35:10', '1705161711531058', 'jialefu', '2018-02-24 16:23:29');
INSERT INTO `goods_unit_tb` VALUES ('76', '有些', 'some', null, '1', '1', '1', '0', null, null, null, null, '2018-04-25 21:07:55', null, null, '2018-04-25 21:06:07');
INSERT INTO `goods_unit_tb` VALUES ('77', '哈', 'e', null, '12', '11', '1', '1', null, null, null, null, '2018-04-25 21:20:09', null, null, '2018-04-25 21:20:20');
INSERT INTO `goods_unit_tb` VALUES ('78', '', '', null, null, null, '0', '1', null, null, null, null, '2018-05-08 15:05:01', null, null, '2018-05-08 15:05:13');

-- ----------------------------
-- Table structure for purchases_refund_tb
-- ----------------------------
DROP TABLE IF EXISTS `purchases_refund_tb`;
CREATE TABLE purchases_refund_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品ID',
  purchase_order_no varchar(255) DEFAULT NULL COMMENT '进货订单号',
  purchase_price bigint(20) DEFAULT NULL COMMENT '采购价',
  purchase_number int(1) DEFAULT NULL COMMENT '采购数量',
  total_amount bigint(20) DEFAULT NULL COMMENT '商品总额',
  supplier_id int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  order_type int(1) DEFAULT NULL COMMENT '订单类型(1：进货，2：退货)',
  order_status varchar(320) DEFAULT NULL COMMENT '订单状态（1：进行中，2：已完成，3：下单失败，4：撤销订单）',
  hierarchy_id bigint(20) DEFAULT NULL COMMENT '层级ID',
  directly_org_id varchar(320) DEFAULT NULL COMMENT '直属机构ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='进货退货表';

-- ----------------------------
-- Records of purchases_refund_tb
-- ----------------------------
INSERT INTO `purchases_refund_tb` VALUES ('1', '1', '2017081012120800', '5', '200', '100', '2', '1', '1', null, null, '1', '1', '2018-05-03 15:47:02', '1', '1', '2017-08-24 23:15:33', '因国庆来领，购买量大，需备货。', '方便面，饼干，面包，饮料等。');
INSERT INTO `purchases_refund_tb` VALUES ('2', '2', '2017081012120801', '10', '200', '2000', '3', '1', '1', null, null, '1', '1', '2018-04-27 13:06:38', '1', '1', '2017-08-16 23:16:44', '圣诞节将至，需购买大量苹果。', '苹果，葡萄，梨，西瓜等');
INSERT INTO `purchases_refund_tb` VALUES ('3', null, '2234451245521424', '2', '22', '333', null, '1', '1', null, null, null, null, '2018-05-06 18:00:15', null, null, '2018-04-29 09:13:48', '圣诞节将至，需购买大量苹果。', '');
INSERT INTO `purchases_refund_tb` VALUES ('5', null, '2014051104', '33', '33', '55', null, '1', '1', null, null, null, null, '2018-05-03 15:27:32', null, null, '2018-05-03 15:27:32', 'many', 'beef');

-- ----------------------------
-- Table structure for sale_record_tb
-- ----------------------------
DROP TABLE IF EXISTS `sale_record_tb`;
CREATE TABLE sale_record_tb (
  id bigint(20) NOT NULL COMMENT '主键',
  member_name bigint(20) DEFAULT NULL COMMENT '商品ID',
  pay_method int(11) DEFAULT NULL COMMENT '支付方式',
  sale_number int(1) DEFAULT NULL COMMENT '数量',
  sale_price bigint(20) DEFAULT NULL COMMENT '售价',
  receivable_amount bigint(20) DEFAULT NULL COMMENT '应收金额',
  paid_amount bigint(20) DEFAULT NULL COMMENT '实收金额',
  change_amount bigint(20) DEFAULT NULL COMMENT '找零金额',
  cashier_name varchar(255) DEFAULT NULL COMMENT '收银员姓名',
  is_delete int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  updator varchar(255) DEFAULT NULL COMMENT '修改人',
  update_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  remark1 varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  remark3 bigint(20) DEFAULT NULL COMMENT '扩展字段3',
  remark4 bigint(20) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售记录表';

-- ----------------------------
-- Records of sale_record_tb
-- ----------------------------
INSERT INTO `sale_record_tb` VALUES ('1', '12', '3', '4', '5', '6', '7', '7', '9', null, null, null, null, null, '2018-05-05 21:55:44', null, null, '2018-05-05 21:55:32', null, null, null, null);

-- ----------------------------
-- Table structure for stock_ground_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_ground_tb`;
CREATE TABLE stock_ground_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  number varchar(50) DEFAULT NULL COMMENT '库存地编号',
  name varchar(255) DEFAULT NULL COMMENT '库存地名称',
  instruction varchar(500) DEFAULT NULL COMMENT '库存地说明',
  is_initialise int(1) DEFAULT NULL COMMENT '数据是否初始化，1是，0否',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人ID',
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '修改人ID',
  update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  remark1 varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='库存地表';

-- ----------------------------
-- Records of stock_ground_tb
-- ----------------------------
INSERT INTO `stock_ground_tb` VALUES ('1', '12', 'a', '面包', null, null, null, null, null, '2018-05-08 16:52:37', null, '2018-05-08 16:52:37', '还不错', null);
INSERT INTO `stock_ground_tb` VALUES ('2', '3331', '成都东区仓库', 'qq糖果', null, '1', null, null, null, '2018-05-03 14:19:18', null, '2018-05-03 14:19:18', '新品', null);
INSERT INTO `stock_ground_tb` VALUES ('3', '333', '141', 'qq糖果1', null, '1', null, null, null, '2018-05-03 15:22:46', null, '2018-05-03 15:22:46', '123', null);
INSERT INTO `stock_ground_tb` VALUES ('4', '333', '141', 'qq糖果1', null, '0', null, null, null, '2018-05-03 15:25:39', null, '2018-05-03 15:25:51', '123', null);
INSERT INTO `stock_ground_tb` VALUES ('5', '22', '22', 'water', null, '1', null, null, null, '2018-05-08 16:51:42', null, '2018-05-08 16:51:42', '22', null);

-- ----------------------------
-- Table structure for stock_in_detail_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_in_detail_tb`;
CREATE TABLE stock_in_detail_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  stock_in_id bigint(20) DEFAULT NULL COMMENT '出入库记录id',
  goods_sale_id bigint(20) DEFAULT NULL COMMENT '商品saleId',
  goods_id bigint(20) DEFAULT NULL COMMENT '商品id',
  purchase_price bigint(20) DEFAULT NULL COMMENT '采购价',
  storage_num int(10) DEFAULT NULL COMMENT '入库数量',
  total_purchase_price bigint(20) DEFAULT NULL COMMENT '采购价小计',
  unit_id bigint(20) DEFAULT NULL COMMENT '入库单位id',
  goods_details varchar(4000) DEFAULT NULL COMMENT '商品详情json格式',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  hierarchy_id varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库明细表';

-- ----------------------------
-- Records of stock_in_detail_tb
-- ----------------------------

-- ----------------------------
-- Table structure for stock_in_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_in_tb`;
CREATE TABLE stock_in_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  voucher_num varchar(255) DEFAULT NULL COMMENT '凭证号',
  voucher_type int(1) DEFAULT NULL COMMENT '凭证类型：1采购入库',
  out_unit_id bigint(20) DEFAULT NULL COMMENT '调出单位id',
  out_unit varchar(255) DEFAULT NULL COMMENT '调出单位',
  out_stock_ground_id bigint(20) DEFAULT NULL COMMENT '调出库存地',
  out_stock_ground varchar(255) DEFAULT NULL COMMENT '调出库存地',
  in_unit_id bigint(20) DEFAULT NULL COMMENT '调入单位id',
  in_unit varchar(255) DEFAULT NULL COMMENT '调入单位',
  in_stock_ground_id bigint(20) DEFAULT NULL COMMENT '调入库存地id',
  in_stock_ground varchar(255) DEFAULT NULL COMMENT '调入库存地',
  goods_nums bigint(20) DEFAULT NULL COMMENT '商品总数',
  goods_amount bigint(20) DEFAULT NULL COMMENT '商品总额',
  goods_sorts bigint(20) DEFAULT NULL COMMENT '商品分类总数：多少个SPU',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  hierarchy_id varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库主表';

-- ----------------------------
-- Records of stock_in_tb
-- ----------------------------

-- ----------------------------
-- Table structure for stock_modify_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_modify_tb`;
CREATE TABLE stock_modify_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  store_id bigint(20) DEFAULT NULL COMMENT '店铺id',
  stock_ground_id bigint(20) DEFAULT NULL COMMENT '库存地id',
  goods_sale_id bigint(20) DEFAULT NULL COMMENT '商品销售id',
  order_id varchar(32) DEFAULT NULL COMMENT '订单号id',
  modify_num int(11) DEFAULT NULL COMMENT '修改数量',
  modify_type int(2) DEFAULT NULL COMMENT '修改类型(1下单消减库存，2异常还原库存，3退单还原库存)',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存修改记录表';

-- ----------------------------
-- Records of stock_modify_tb
-- ----------------------------

-- ----------------------------
-- Table structure for stock_tb
-- ----------------------------
DROP TABLE IF EXISTS `stock_tb`;
CREATE TABLE stock_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  store_id bigint(20) DEFAULT NULL COMMENT '店铺id',
  stock_ground_id bigint(20) DEFAULT NULL COMMENT '库存地id',
  goods_sale_id bigint(20) DEFAULT NULL COMMENT '商品销售id',
  goods_id bigint(20) DEFAULT NULL,
  stock_num bigint(20) DEFAULT NULL COMMENT '库存数量',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '创建人层级id',
  is_delete int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (id),
  KEY store_sale_ground (store_id,goods_sale_id,stock_ground_id) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='库存表';

-- ----------------------------
-- Records of stock_tb
-- ----------------------------
INSERT INTO `stock_tb` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '0', null, null, null, '2018-05-02 10:16:59', null, null);

-- ----------------------------
-- Table structure for store_stock_ground_tb
-- ----------------------------
DROP TABLE IF EXISTS `store_stock_ground_tb`;
CREATE TABLE store_stock_ground_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  store_id bigint(20) DEFAULT NULL COMMENT '店铺id',
  stock_ground_id bigint(20) DEFAULT NULL COMMENT '库存地id',
  status int(1) DEFAULT NULL COMMENT '库存地状态：1启用，0停用',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  directly_org_id bigint(20) DEFAULT NULL COMMENT '门店直属机构ID',
  hierarchy_id varchar(500) DEFAULT NULL COMMENT '门店层级机构ID',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺库存地中间表';

-- ----------------------------
-- Records of store_stock_ground_tb
-- ----------------------------

-- ----------------------------
-- Table structure for system_authority_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_authority_tb`;
CREATE TABLE system_authority_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  name varchar(255) DEFAULT NULL COMMENT '权限名称',
  url varchar(255) DEFAULT NULL COMMENT '功能url',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  creator varchar(255) DEFAULT NULL,
  creator_id bigint(20) DEFAULT NULL,
  hassub varchar(255) DEFAULT NULL COMMENT '是否有子菜单',
  hasvalid varchar(1) DEFAULT NULL COMMENT '是否有效',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  hierarchical varchar(255) DEFAULT NULL COMMENT '层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）',
  orderby_id int(10) DEFAULT NULL COMMENT '权限排序',
  pid bigint(20) DEFAULT NULL COMMENT '父权限id',
  show_menu varchar(20) DEFAULT NULL COMMENT 'true表示显示菜单，false表示界面不显示菜单',
  show_type varchar(20) DEFAULT NULL COMMENT 'menu表示菜单，button表示操作按钮',
  icon_class varchar(255) DEFAULT NULL COMMENT '菜单图标样式',
  access varchar(255) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COMMENT='商户权限表';

-- ----------------------------
-- Records of system_authority_tb
-- ----------------------------
INSERT INTO `system_authority_tb` VALUES ('0', '超市管理系统', 'javascript:void(0);', '2018-05-07 16:06:48', null, null, 'true', '1', '2018-05-07 16:06:07', null, '1', '0', 'true', 'menu', 'icon_retail', null);
INSERT INTO `system_authority_tb` VALUES ('1', '系统管理', 'javascript:void(0);', '2018-04-10 16:03:42', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', 'icon-desktop', '');
INSERT INTO `system_authority_tb` VALUES ('2', '基础数据管理', 'javascript:void(0);', '2018-05-02 11:21:56', null, null, 'true', '0', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', ' icon-cogs', '');
INSERT INTO `system_authority_tb` VALUES ('3', '商品管理', 'javascript:void(0);', '2018-04-10 16:03:43', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', ' icon-gift', '');
INSERT INTO `system_authority_tb` VALUES ('4', '采购管理', 'javascript:void(0);', '2018-05-08 16:31:57', null, null, 'true', '0', '2018-05-08 16:31:57', '10;', '1', '6', 'true', 'menu', ' icon-credit-card', '');
INSERT INTO `system_authority_tb` VALUES ('5', '销售管理', 'javascript:void(0);', '2018-04-26 10:09:16', null, null, 'true', '0', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', 'icon-dashboard', '');
INSERT INTO `system_authority_tb` VALUES ('6', '库存管理', 'javascript:void(0);', '2018-04-10 16:03:44', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', 'icon-comments-alt', '');
INSERT INTO `system_authority_tb` VALUES ('7', '报表统计', 'javascript:void(0);', '2018-04-10 16:03:46', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', 'icon-bar-chart', '');
INSERT INTO `system_authority_tb` VALUES ('10', '用户管理', '/invoicing/system/user/list', '2018-04-10 16:03:46', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('11', '角色管理', '/invoicing/system/role/page/list', '2018-04-10 16:03:46', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('12', '菜单管理', '/invoicing/system/authority/list', '2018-04-10 16:03:46', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('13', '机构管理', '/invoicing/system/org/list', '2018-04-10 16:03:47', null, null, null, '1', '2018-04-10 10:45:17', null, '1', '1', null, null, '', null);
INSERT INTO `system_authority_tb` VALUES ('20', '单位管理', '/invoicing/base/date/unit/page/list', '2018-04-24 10:39:23', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('21', '供应商管理', '/invoicing/base/date/supplier/page/list', '2018-04-17 02:50:21', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('22', '品牌管理', '/invoicing/stock/ground/page/list', '2018-05-05 10:44:49', null, null, 'true', '0', '2018-04-10 10:45:17', '10;', '1', '0', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('23', '地址管理', '/invoicing/base/date/area/page/list', '2018-04-17 02:49:06', null, null, 'true', '0', '2018-04-10 10:45:17', null, '1', '2', 'true', 'menu', 'icon_retail', null);
INSERT INTO `system_authority_tb` VALUES ('30', '分类管理', '/invoicing/goods/category/page/list', '2018-04-10 16:03:49', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('31', '商品管理', '/invoicing/goods/info/page/list', '2018-04-10 16:03:49', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('32', '价格管理', ' /invoicing/goods/price/page/list', '2018-04-10 16:03:53', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('33', '属性管理', '/invoicing/goods/property/page/list', '2018-04-13 11:24:59', null, null, 'true', '0', '2018-04-10 10:45:17', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('40', '进货订单管理', '/invoicing/purchases/refund/page/list?flag=1', '2018-04-10 16:03:53', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('41', '退货订单管理', '/invoicing/purchases/refund/page/list?flag=2', '2018-04-10 16:03:52', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('50', '收银管理', '/invoicing/sale/record/page/list', '2018-04-10 16:03:52', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '5', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('51', '销售记录管理', '/invoicing/sale/record/page/list', '2018-04-10 16:03:52', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '5', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('60', '库存管理', '/invoicing/stock/ground/page/list?flag=1', '2018-05-03 15:20:22', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '6', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('61', '库存预警', '/invoicing/stock/ground/page/list?flag=2', '2018-05-03 15:16:36', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '6', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('70', '销售额统计', '/invoicing/sale/record/page/list', '2018-04-10 16:03:51', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '7', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('71', '畅销品统计', '/invoicing/system/authority/list', '2018-04-10 16:03:51', null, null, 'true', '1', '2018-04-10 10:45:17', '10;', '1', '7', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('72', '新角色管理', '', '2018-04-12 10:20:31', null, null, null, '0', '2018-04-12 10:20:38', null, null, '5', null, null, '', null);

-- ----------------------------
-- Table structure for system_org_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_org_tb`;
CREATE TABLE system_org_tb (
  id bigint(32) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  org_num varchar(255) DEFAULT NULL COMMENT '机构编号',
  org_name varchar(255) DEFAULT NULL COMMENT '机构名称',
  org_abbreviation varchar(255) DEFAULT NULL COMMENT '机构简称',
  status int(1) DEFAULT NULL COMMENT '机构状态: 0待审核 1审核通过(正常)  2审核不通过 3停用',
  pid bigint(32) DEFAULT NULL COMMENT '管理机构(上级机构id)',
  hierarchy_id varchar(255) DEFAULT NULL COMMENT '机构层级id',
  user_name varchar(50) DEFAULT NULL COMMENT '用户名称',
  contact_name varchar(255) DEFAULT NULL COMMENT '联系人',
  contact_phone varchar(20) DEFAULT NULL COMMENT '联系电话',
  province varchar(50) DEFAULT NULL COMMENT '所在省',
  city varchar(255) DEFAULT NULL COMMENT '所在市',
  area varchar(255) DEFAULT NULL COMMENT '所在区',
  address varchar(1000) DEFAULT NULL COMMENT '详细地址',
  remark varchar(500) DEFAULT NULL COMMENT '备注',
  valid int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  creator_id bigint(20) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  update_time timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  remark1 varchar(2000) DEFAULT '' COMMENT '扩展字段1：存储所属业务id',
  remark2 varchar(2000) DEFAULT NULL COMMENT '扩展字段2：存储职位id集合',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='机构表';

-- ----------------------------
-- Records of system_org_tb
-- ----------------------------
INSERT INTO `system_org_tb` VALUES ('1', '10000245', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', null, '1', '1', '2018-05-07 16:03:48', '1', '2018-05-07 16:03:48', '', null);
INSERT INTO `system_org_tb` VALUES ('2', '10000001', '家家利', '家家利总店', '1', '1', '10000000,10000001,', 'guoomao', '李四', '13060089109', '北京市', '北京市', '朝阳区', '北京市朝阳区大望路', null, '1', '1', '2018-05-08 16:32:19', '1', '2018-05-08 16:32:19', '', null);
INSERT INTO `system_org_tb` VALUES ('3', '11111111', 'aaa', '家家利总店', '1', '1', '10000000,10000001,', null, 'w', '123', null, 'aa', 'aa', 'aaa', null, '0', null, '2018-05-01 11:28:09', null, '2018-05-01 11:28:09', '', null);
INSERT INTO `system_org_tb` VALUES ('4', '123123123', 'abc', 'aaaddd', '1', '1', null, null, '123', '123', null, null, null, null, null, '1', null, '2018-05-01 11:42:26', null, '2018-05-01 11:42:26', '', null);
INSERT INTO `system_org_tb` VALUES ('5', '1000201', ' 家家利成都分店', '家家利总店', '1', '0', '10000000,', null, '张翔宇', '13028199759', null, null, null, null, null, '1', null, '2018-05-01 11:40:46', null, '2018-05-01 11:40:46', '', null);
INSERT INTO `system_org_tb` VALUES ('7', '1131131', '新建', '家家利总店', '1', '0', null, null, '订单', '123123', null, null, null, null, null, '1', null, '2018-05-01 11:40:47', null, '2018-05-01 11:40:47', '', null);
INSERT INTO `system_org_tb` VALUES ('8', '111', '111', '家家利总店', '1', '0', null, null, '1566', '123', null, null, null, null, null, '1', null, '2018-05-01 11:42:13', null, '2018-05-01 11:42:13', '', null);
INSERT INTO `system_org_tb` VALUES ('9', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('10', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('11', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('12', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('13', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('14', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('15', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('16', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('17', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('18', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('19', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');
INSERT INTO `system_org_tb` VALUES ('20', '10000000', '家家利总店', '家家利总店', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', '', '1', '1', '2018-05-01 21:30:14', '1', '2018-05-01 21:30:14', '', '');

-- ----------------------------
-- Table structure for system_role_authority_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_role_authority_tb`;
CREATE TABLE system_role_authority_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  role_id bigint(20) DEFAULT NULL COMMENT '商户角色id',
  auth_id bigint(20) DEFAULT NULL COMMENT '商户权限id',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色权限中间表';

-- ----------------------------
-- Records of system_role_authority_tb
-- ----------------------------
INSERT INTO `system_role_authority_tb` VALUES ('1', '1', '1');
INSERT INTO `system_role_authority_tb` VALUES ('2', '1', '2');
INSERT INTO `system_role_authority_tb` VALUES ('3', '1', '3');
INSERT INTO `system_role_authority_tb` VALUES ('4', '1', '4');
INSERT INTO `system_role_authority_tb` VALUES ('5', '1', '5');
INSERT INTO `system_role_authority_tb` VALUES ('6', '1', '6');
INSERT INTO `system_role_authority_tb` VALUES ('7', '1', '7');
INSERT INTO `system_role_authority_tb` VALUES ('8', '1', '10');
INSERT INTO `system_role_authority_tb` VALUES ('9', '1', '11');
INSERT INTO `system_role_authority_tb` VALUES ('10', '1', '12');
INSERT INTO `system_role_authority_tb` VALUES ('14', '1', '20');
INSERT INTO `system_role_authority_tb` VALUES ('15', '1', '21');
INSERT INTO `system_role_authority_tb` VALUES ('16', '1', '22');
INSERT INTO `system_role_authority_tb` VALUES ('18', '1', '30');
INSERT INTO `system_role_authority_tb` VALUES ('19', '1', '31');
INSERT INTO `system_role_authority_tb` VALUES ('20', '1', '32');
INSERT INTO `system_role_authority_tb` VALUES ('21', '1', '33');
INSERT INTO `system_role_authority_tb` VALUES ('23', '1', '40');
INSERT INTO `system_role_authority_tb` VALUES ('24', '1', '41');
INSERT INTO `system_role_authority_tb` VALUES ('26', '1', '51');
INSERT INTO `system_role_authority_tb` VALUES ('27', '1', '50');
INSERT INTO `system_role_authority_tb` VALUES ('29', '1', '60');
INSERT INTO `system_role_authority_tb` VALUES ('30', '1', '61');
INSERT INTO `system_role_authority_tb` VALUES ('32', '1', '70');
INSERT INTO `system_role_authority_tb` VALUES ('33', '1', '71');
INSERT INTO `system_role_authority_tb` VALUES ('34', '5', '4');
INSERT INTO `system_role_authority_tb` VALUES ('35', '5', '40');
INSERT INTO `system_role_authority_tb` VALUES ('36', '5', '41');
INSERT INTO `system_role_authority_tb` VALUES ('38', '3', '51');
INSERT INTO `system_role_authority_tb` VALUES ('63', '1', '23');
INSERT INTO `system_role_authority_tb` VALUES ('64', '1', '13');
INSERT INTO `system_role_authority_tb` VALUES ('87', '2', '1');
INSERT INTO `system_role_authority_tb` VALUES ('88', '2', '10');
INSERT INTO `system_role_authority_tb` VALUES ('89', '2', '11');
INSERT INTO `system_role_authority_tb` VALUES ('90', '2', '12');
INSERT INTO `system_role_authority_tb` VALUES ('91', '2', '13');
INSERT INTO `system_role_authority_tb` VALUES ('92', '2', '3');
INSERT INTO `system_role_authority_tb` VALUES ('93', '2', '20');
INSERT INTO `system_role_authority_tb` VALUES ('94', '2', '30');
INSERT INTO `system_role_authority_tb` VALUES ('95', '2', '31');
INSERT INTO `system_role_authority_tb` VALUES ('96', '2', '32');
INSERT INTO `system_role_authority_tb` VALUES ('97', '2', '4');
INSERT INTO `system_role_authority_tb` VALUES ('98', '2', '21');
INSERT INTO `system_role_authority_tb` VALUES ('99', '2', '40');
INSERT INTO `system_role_authority_tb` VALUES ('100', '2', '41');
INSERT INTO `system_role_authority_tb` VALUES ('101', '2', '6');
INSERT INTO `system_role_authority_tb` VALUES ('102', '2', '60');
INSERT INTO `system_role_authority_tb` VALUES ('103', '2', '61');
INSERT INTO `system_role_authority_tb` VALUES ('104', '2', '7');
INSERT INTO `system_role_authority_tb` VALUES ('105', '2', '70');
INSERT INTO `system_role_authority_tb` VALUES ('106', '2', '71');
INSERT INTO `system_role_authority_tb` VALUES ('107', '2', '50');
INSERT INTO `system_role_authority_tb` VALUES ('108', '2', '51');

-- ----------------------------
-- Table structure for system_role_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_role_tb`;
CREATE TABLE system_role_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键id',
  role_name varchar(255) DEFAULT NULL COMMENT '角色名称',
  role_desc varchar(2000) DEFAULT NULL COMMENT '角色描述',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  creator varchar(255) DEFAULT NULL COMMENT '创建人',
  creator_id bigint(20) DEFAULT NULL,
  hasvalid varchar(1) DEFAULT NULL COMMENT '是否有效 -1停用 0失效 1有效 2管理员角色',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日期',
  updator varchar(255) DEFAULT NULL COMMENT '更新人',
  updator_id bigint(20) DEFAULT NULL COMMENT '更新人id',
  directly_org_id varchar(200) DEFAULT NULL COMMENT '直属机构id',
  hierarchy_org_id varchar(500) DEFAULT NULL COMMENT '层级机构id',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色表';

-- ----------------------------
-- Records of system_role_tb
-- ----------------------------
INSERT INTO `system_role_tb` VALUES ('1', '系统管理员', '系统管理员', '2018-04-10 09:42:08', '1', '1', '1', '2018-04-02 17:57:36', '1', '1', '0', '0');
INSERT INTO `system_role_tb` VALUES ('2', '超市总经理', '超市总经理', '2018-05-02 11:23:21', null, null, '1', '2018-05-02 11:23:21', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('3', '收银员', '收银员', '2018-04-23 15:16:10', null, null, '0', '2018-04-02 10:47:47', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('4', '库管员', '库管员', '2018-04-10 09:42:34', null, null, '1', '2018-04-02 10:47:47', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('5', '采购员', '采购员', '2018-04-10 09:42:37', null, null, '1', '2018-04-02 10:47:47', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('6', '打酱油', '333', '2018-05-01 10:41:30', null, null, '1', '2018-05-01 10:41:30', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('7', 'asdf', 'eee', '2018-05-01 20:41:39', null, null, '1', '2018-05-01 20:41:39', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('8', '1', 'e ', '2018-05-08 14:54:04', null, null, '1', '2018-05-08 14:54:04', null, null, null, null);

-- ----------------------------
-- Table structure for system_user_log_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_log_tb`;
CREATE TABLE system_user_log_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  merge_user_id bigint(20) DEFAULT NULL COMMENT '商户用户id',
  ip varchar(50) DEFAULT NULL,
  descrption varchar(500) DEFAULT NULL COMMENT '动作描述',
  valid int(11) DEFAULT '1' COMMENT '数据是否有效，1有效，0无效',
  create_time timestamp NULL DEFAULT NULL,
  update_time timestamp NULL DEFAULT NULL,
  type_id int(11) DEFAULT NULL COMMENT '事件类型：1签到  2签退  3登录  4退出',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of system_user_log_tb
-- ----------------------------

-- ----------------------------
-- Table structure for system_user_role_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_role_tb`;
CREATE TABLE system_user_role_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  user_id bigint(20) DEFAULT '0' COMMENT '用户ID',
  role_id bigint(20) DEFAULT '0' COMMENT '角色ID',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user_role_tb
-- ----------------------------
INSERT INTO `system_user_role_tb` VALUES ('1', '1', '1');
INSERT INTO `system_user_role_tb` VALUES ('3', '3', '2');
INSERT INTO `system_user_role_tb` VALUES ('4', '4', '1');
INSERT INTO `system_user_role_tb` VALUES ('6', '5', '5');
INSERT INTO `system_user_role_tb` VALUES ('7', '7', '4');
INSERT INTO `system_user_role_tb` VALUES ('8', '6', '3');
INSERT INTO `system_user_role_tb` VALUES ('9', '10', '4');
INSERT INTO `system_user_role_tb` VALUES ('10', '20', '2');
INSERT INTO `system_user_role_tb` VALUES ('11', '27', '1');
INSERT INTO `system_user_role_tb` VALUES ('12', '29', '7');
INSERT INTO `system_user_role_tb` VALUES ('13', '11', '3');
INSERT INTO `system_user_role_tb` VALUES ('14', '33', '2');

-- ----------------------------
-- Table structure for system_user_tb
-- ----------------------------
DROP TABLE IF EXISTS `system_user_tb`;
CREATE TABLE system_user_tb (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  login_name varchar(255) DEFAULT NULL COMMENT '登录用户名',
  user_name varchar(255) DEFAULT NULL COMMENT '用户名称',
  password varchar(255) DEFAULT NULL COMMENT '密码',
  phone varchar(255) DEFAULT NULL COMMENT '手机号',
  user_type int(11) DEFAULT NULL COMMENT '用户类型：0 机构管理员   1机构普通用户  2门店管理员  3门店普通用户 4店长 5收银员 6机构管理者 7门店管理者',
  state int(11) DEFAULT NULL COMMENT '状态：0关闭    1开启  2临时用户',
  creator_id bigint(150) DEFAULT NULL COMMENT '创建人id',
  create_time timestamp NULL DEFAULT NULL,
  updator_id bigint(150) DEFAULT NULL,
  update_time timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  directly_org_id varchar(50) DEFAULT NULL COMMENT '直属机构id',
  hierarchy_org_id varchar(500) DEFAULT NULL COMMENT '层级机构id',
  certificates_type int(2) DEFAULT NULL COMMENT '用户证件类型:1身份证',
  certificates_num varchar(150) DEFAULT NULL COMMENT '证件号码',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='商户用户表';

-- ----------------------------
-- Records of system_user_tb
-- ----------------------------
INSERT INTO `system_user_tb` VALUES ('1', 'admin', '管理员', '111111', '15829273203', '1', '1', '1', '2018-02-10 18:27:28', '1517021000000006', '2018-04-09 16:31:31', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('3', '张', '张', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '15801366273', '1', '1', '1517021000000006', '2018-02-15 11:38:01', '1517021000000006', '2018-04-09 16:31:28', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('4', 'wd2m1', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '123123', '2', '1', '1517021000000006', '2018-03-17 17:30:23', '1517021000000006', '2018-04-09 16:31:24', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('5', 'test4', '543', 'b6150d9369d7e82b3dc42d9994172a99', '130025', '1', '1', '1517021000000006', '2018-03-17 17:29:26', '1517021000000006', '2018-04-09 16:31:22', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('6', 'waa', 'zxy', 'c7ec81d844fbd07b640710dc4417a1fa', '123111', '1', '1', '1', '2018-02-10 18:27:28', '1517021000000006', '2018-04-09 16:31:19', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('8', 'test7', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '', '2', '0', '1517021000000006', '2018-03-17 17:30:23', '1517021000000006', '2018-04-09 16:31:11', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('9', 'test8', '543', 'b6150d9369d7e82b3dc42d9994172a99', '13005896', '1', '0', '1517021000000006', '2018-03-17 17:29:26', '1517021000000006', '2018-04-19 22:18:19', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('10', 'test9', 'wd', 'c7ec81d844fbd07b640710dc4417a1fa', '130025', '1', '1', '1', '2018-02-10 18:27:28', '1517021000000006', '2018-04-09 16:31:09', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('12', 'testUpate', 'testUpate', 'fcceb360228d088633d6ed455ac2d8be', '123444441', '1', '1', '1517021000000006', '2018-03-17 17:30:23', '1517021000000006', '2018-04-13 11:09:31', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('13', 'test12', '543', 'b6150d9369d7e82b3dc42d9994172a99', '13028199759', '1', '1', '1517021000000006', '2018-03-17 17:29:26', '1517021000000006', '2018-04-09 16:30:34', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('14', 'wangpf', '王鹏飞', '111111', '15829282829', null, '0', null, null, null, '2018-04-10 16:18:15', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('15', 'yangzb', '杨宗保', '111111', '15829272727', null, '1', null, null, null, '2018-04-09 10:25:27', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('16', 'waaa', 'zxy', '123456', '1231', '1', '1', null, '2018-04-08 14:43:31', null, '2018-04-08 22:43:06', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('17', 'zhongwen', '中文', '123456', '123456', '2', '1', null, '2018-04-08 14:46:35', null, '2018-04-08 22:43:10', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('18', 'why', 'zxy', 'zxy12345', '123123', '2', '1', null, '2018-04-08 15:06:46', null, '2018-04-08 22:43:11', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('19', 'zxy123', 'zxy123', 'zxy12345', '12311', '2', '1', null, '2018-04-08 15:11:27', null, '2018-05-07 16:00:49', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('21', 'wakaka', 'headache', 'abcd12341', '13028199759', null, '0', '1', '2018-04-09 10:40:37', null, '2018-04-09 10:44:02', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('22', 'abcdeee', '好麻烦', 'abcd1234', '123', null, '1', null, '2018-04-09 22:03:04', null, '2018-04-09 22:05:16', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('23', 'asdee', '别保存', '123123', '123', null, '0', null, '2018-04-09 22:05:02', null, '2018-04-19 22:18:04', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('24', 'new', '最新', '123123', '132131313', null, '0', null, '2018-04-11 10:34:49', null, '2018-04-11 10:36:31', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('25', 'test411', 'test411', '123', '123322345', null, '0', null, '2018-04-11 10:59:55', null, '2018-04-19 22:18:28', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('26', 'noopen', 'close', '123321', '800820', null, '0', null, '2018-04-13 10:49:40', null, '2018-04-13 10:49:40', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('27', 'qwer', 'qqq', '123', '321999', null, '0', null, '2018-04-13 11:24:32', null, '2018-04-16 23:10:27', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('29', 'wahahdede', '张翔宇', '122311', '13028199759', null, '1', null, '2018-04-19 22:33:13', null, '2018-05-08 16:30:45', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('30', null, null, null, null, null, null, null, '2018-04-26 14:36:31', null, '2018-04-26 14:36:31', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('31', null, null, null, null, null, null, null, '2018-04-26 14:36:46', null, '2018-04-26 14:36:46', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('32', null, null, null, null, null, null, null, '2018-04-26 14:36:59', null, '2018-04-26 14:36:59', null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('33', 'zzz', 'zxy123', '123654', '18608031937', null, '0', null, '2018-05-07 16:10:40', null, '2018-05-07 16:12:58', null, null, null, null);
