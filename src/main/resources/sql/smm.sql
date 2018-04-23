/*
Navicat MySQL Data Transfer

Source Server         : TencentOS
Source Server Version : 50721
Source Host           : 118.24.15.181:3306
Source Database       : smm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-07 13:26:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `area_tb`
-- ----------------------------
DROP TABLE IF EXISTS `area_tb`;
CREATE TABLE "area_tb" (
  "id" bigint(20) NOT NULL,
  "create_time" timestamp NULL DEFAULT NULL,
  "creator" varchar(255) DEFAULT NULL,
  "creator_id" varchar(255) DEFAULT NULL,
  "valid" varchar(1) DEFAULT NULL,
  "update_time" timestamp NULL DEFAULT NULL,
  "updator" varchar(255) DEFAULT NULL,
  "updator_id" varchar(255) DEFAULT NULL,
  "pid" varchar(255) DEFAULT NULL,
  "short_map_name" varchar(255) DEFAULT NULL,
  "short_name" varchar(255) DEFAULT NULL,
  "spelling" varchar(255) DEFAULT NULL,
  "state" varchar(255) DEFAULT NULL,
  "type" varchar(255) DEFAULT NULL,
  "zip" varchar(255) DEFAULT NULL,
  "name" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area_tb
-- ----------------------------

INSERT INTO `area_tb` VALUES ('712100', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'ylx', 'YunLinXian', null, '4', '', '云林县');
INSERT INTO `area_tb` VALUES ('712200', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'tnx', 'TaiNanXian', null, '4', '', '台南县');
INSERT INTO `area_tb` VALUES ('712300', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'gxx', 'GaoXiongXian  ', null, '4', '', '高雄县');
INSERT INTO `area_tb` VALUES ('712400', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'pdx', 'PingDongXian  ', null, '4', '', '屏东县');
INSERT INTO `area_tb` VALUES ('712500', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'tdx', 'TaiDongXian   ', null, '4', '', '台东县');
INSERT INTO `area_tb` VALUES ('712600', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'hlx', 'HuaLianXian   ', null, '4', '', '花莲县');
INSERT INTO `area_tb` VALUES ('712700', null, null, null, '1', '2014-05-21 11:28:24', null, null, '710000', null, 'phx', 'PengHuXian', null, '4', '', '澎湖县');
INSERT INTO `area_tb` VALUES ('810000', null, null, null, '1', '2014-05-21 11:28:24', null, null, '1', null, 'xgtbxzq', 'XiangGangTeBieXingZhengQu ', null, '2', '999077', '香港特别行政区');
INSERT INTO `area_tb` VALUES ('810100', null, null, null, '1', '2014-05-21 11:28:24', null, null, '810000', null, 'xgd', 'XiangGangDao  ', null, '3', '999077', '香港岛');
INSERT INTO `area_tb` VALUES ('810200', null, null, null, '1', '2014-05-21 11:28:24', null, null, '810000', null, 'jl', 'JiuLong   ', null, '3', '', '九龙');
INSERT INTO `area_tb` VALUES ('810300', null, null, null, '1', '2014-05-21 11:28:24', null, null, '810000', null, 'xj', 'XinJie', null, '3', '', '新界');
INSERT INTO `area_tb` VALUES ('820000', null, null, null, '1', '2014-05-21 11:28:24', null, null, '1', null, 'amtbxzq', 'AoMenTeBieXingZhengQu ', null, '2', '', '澳门特别行政区');
INSERT INTO `area_tb` VALUES ('820100', null, null, null, '1', '2014-05-21 11:28:24', null, null, '820000', null, 'ambd', 'AoMenBanDao   ', null, '3', '', '澳门半岛');
INSERT INTO `area_tb` VALUES ('820200', null, null, null, '1', '2014-05-21 11:28:24', null, null, '820000', null, 'ld', 'LiDao ', null, '3', '', '离岛');
INSERT INTO `area_tb` VALUES ('990000', null, null, null, '1', '2014-05-21 11:28:24', null, null, '1', null, 'hw', 'HaiWai', null, '2', '', '海外');
INSERT INTO `area_tb` VALUES ('990100', null, null, null, '1', '2014-05-21 11:28:24', null, null, '990000', null, 'hw', 'HaiWai', null, '3', '', '海外');

-- ----------------------------
-- Table structure for `cashs_settlement_tb`
-- ----------------------------
DROP TABLE IF EXISTS `cashs_settlement_tb`;
CREATE TABLE "cashs_settlement_tb" (
  "id" bigint(20) NOT NULL COMMENT '主键',
  "pay_method" int(11) DEFAULT NULL COMMENT '支付方式',
  "cash_begin_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收银开始时间',
  "cash_begin_end" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '收银结束时间',
  "total_amount" bigint(20) DEFAULT NULL COMMENT '收银总额',
  "check_up_result" int(1) DEFAULT NULL COMMENT '核对结果（1：正确，2：错误，3，未核对）',
  "cashier_name" varchar(255) DEFAULT NULL COMMENT '收银员姓名',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  "remark3" bigint(20) DEFAULT NULL COMMENT '扩展字段3',
  "remark4" bigint(20) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收银结算表';

-- ----------------------------
-- Records of cashs_settlement_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `country_code_tb`
-- ----------------------------
DROP TABLE IF EXISTS `country_code_tb`;
CREATE TABLE "country_code_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "continents" varchar(64) DEFAULT NULL COMMENT '所属州名',
  "country_code" varchar(64) DEFAULT NULL COMMENT '国别代码',
  "country_name" varchar(128) DEFAULT NULL COMMENT '中文名（简称）',
  "country_english_name" varchar(128) DEFAULT NULL COMMENT '英文名（简称）',
  "europtronic_rate" int(10) DEFAULT NULL COMMENT '优普税率',
  "state" int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国别码表';

-- ----------------------------
-- Records of country_code_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_attachment_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_attachment_tb`;
CREATE TABLE "goods_attachment_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "file_name" varchar(200) DEFAULT NULL COMMENT '附件名称',
  "content_type" varchar(200) DEFAULT NULL COMMENT '文件类型',
  "model_name" varchar(200) DEFAULT NULL COMMENT '标示名（关联表名）',
  "link_url" varchar(500) DEFAULT NULL COMMENT '附件链接地址',
  "relevance_id" varchar(200) DEFAULT NULL COMMENT '关联业务id',
  "link_type" int(11) DEFAULT NULL COMMENT '链接类型：0内链，1外链',
  "opposite_path" varchar(255) DEFAULT NULL COMMENT '相对路径',
  "absolute_path" varchar(255) DEFAULT NULL COMMENT '绝对路径',
  "valid" int(1) DEFAULT NULL COMMENT '是否有效：0无效，1有效',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人id',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "ext" varchar(500) DEFAULT NULL COMMENT '扩展字段,可用于为同一个页面中区分多组图片设置key',
  "ext2" varchar(1000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of goods_attachment_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_brand_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand_tb`;
CREATE TABLE "goods_brand_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "brand_number" bigint(20) DEFAULT NULL COMMENT '品牌编号（暂定）',
  "brand_name" varchar(255) DEFAULT NULL COMMENT '品牌中文名',
  "brand_english_name" varchar(128) DEFAULT NULL COMMENT '品牌英文名',
  "brand_initial" varchar(64) DEFAULT NULL COMMENT '品牌首字母',
  "state" int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "extends_params" longblob COMMENT '扩展参数',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of goods_brand_tb
-- ----------------------------
INSERT INTO `goods_brand_tb` VALUES ('95', null, '农夫山泉', 'nong', 'N', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-13 17:25:15', '1707121714321029', 'pjj', '2017-07-13 17:25:15', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('96', null, '22', '222', '', '1', '0', '1705161711531059', '1705161711531059,1705161711531058,', '1705161711531058', 'jialefu', '2017-07-20 10:17:00', '1705161711531058', 'jialefu', '2017-07-20 10:17:00', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('97', null, '悦活', 'Yuehuo', 'Y', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-20 15:39:53', '1707121714321029', 'pjj', '2017-07-20 15:39:53', null, null, null);
INSERT INTO `goods_brand_tb` VALUES ('98', null, '热风', 'Hotwind', 'H', '1', '0', '1707121714321030', '1707121714321030,1707121714321029,', '1707121714321029', 'pjj', '2017-07-21 15:42:54', '1707121714321029', 'pjj', '2017-07-21 15:42:54', null, null, null);

-- ----------------------------
-- Table structure for `goods_category_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category_tb`;
CREATE TABLE "goods_category_tb" (
  "id" bigint(32) NOT NULL AUTO_INCREMENT,
  "category_id" varchar(200) DEFAULT NULL COMMENT '服务类目ID,规则一级类目：T+自增ID，二级类目：P+自增ID，三级类目：Q+自增ID，四级类目：S+自增ID\r\n\r\n采销tree类目ID,规则一级类目：B+自增ID，二级类目：U+自增ID，三级类目：M+自增ID，四级类目：E+自增ID\r\n\r\n            \r\n            ',
  "category_name" varchar(255) DEFAULT NULL COMMENT '类目名称',
  "parent_id" varchar(32) DEFAULT NULL COMMENT '父类目id',
  "category_type" int(1) DEFAULT NULL COMMENT '类目类型,1服务类，2实物类，3餐饮类',
  "category_level" int(1) DEFAULT NULL COMMENT '类目级别(1:一级，2：二级，3：三级，4：四级)',
  "input_tax" int(11) DEFAULT NULL COMMENT '进项税',
  "output_tax" int(11) DEFAULT NULL COMMENT '销项税',
  "consume_tax" decimal(11,2) DEFAULT NULL COMMENT '消费税',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级id',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构id',
  "order_number" int(5) DEFAULT NULL COMMENT '排序序号',
  "status" int(5) DEFAULT NULL COMMENT '状态，是否有效：0无效，1有效',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(150) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category_tb
-- ----------------------------
INSERT INTO `goods_category_tb` VALUES ('1', 'SP', '食品', '0', '1', '1', null, null, null, null, null, '1', '1', '0', '1', '1', '2017-08-09 23:43:40', '1', '1', '2017-08-09 23:43:40', null, null);
INSERT INTO `goods_category_tb` VALUES ('2', 'SS', '熟食', '1', '1', '2', null, null, null, null, null, '1', '1', '0', '1', '1', '2017-08-09 23:44:12', '1', '1', '2017-08-09 23:44:12', null, null);
INSERT INTO `goods_category_tb` VALUES ('3', 'SG', '水果', '1', '1', '2', null, null, null, null, null, '1', '1', '0', '1', '1', '2017-08-09 23:44:45', '1', '1', '2017-08-23 23:45:54', null, null);
INSERT INTO `goods_category_tb` VALUES ('4', 'SX', '生鲜', '1', '1', '2', null, null, null, null, null, '1', '1', '0', '1', '1', '2017-08-09 23:46:37', null, null, '2017-08-09 23:46:37', null, null);

-- ----------------------------
-- Table structure for `goods_info_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_info_tb`;
CREATE TABLE "goods_info_tb" (
  "ID" bigint(20) NOT NULL AUTO_INCREMENT,
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表id',
  "goods_main_property_id" bigint(20) DEFAULT NULL COMMENT '商品搜索主属性ID',
  "assistant_property_map" longblob COMMENT '辅助属性结果集合',
  "goods_detail" longblob COMMENT '商品描述',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("ID")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电商商品信息表';

-- ----------------------------
-- Records of goods_info_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_measurement_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_measurement_tb`;
CREATE TABLE "goods_measurement_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  "length" int(8) DEFAULT NULL COMMENT '长',
  "width" int(8) DEFAULT NULL COMMENT '宽',
  "height" int(8) DEFAULT NULL COMMENT '高',
  "weight" int(8) DEFAULT NULL COMMENT '商品重量',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尺寸参数表';

-- ----------------------------
-- Records of goods_measurement_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_normal_price_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_normal_price_tb`;
CREATE TABLE "goods_normal_price_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "sale_price" bigint(20) DEFAULT NULL COMMENT '售价(单位分)',
  "market_price" bigint(20) DEFAULT NULL COMMENT '市场价(单位分)',
  "purchase_price" bigint(20) DEFAULT NULL COMMENT '采购价(单位分)',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  "goods_sale_id" bigint(20) DEFAULT NULL COMMENT '商品销售id',
  "store_id" bigint(20) DEFAULT NULL COMMENT '门店业务id',
  "store_type" int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  "store_name" varchar(255) DEFAULT NULL COMMENT '门店名称',
  "goods_state" int(1) DEFAULT NULL COMMENT '商品状态',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '创建人层级id',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id"),
  KEY "price_goods_sale_id" ("goods_sale_id","store_id") USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='价格表';

-- ----------------------------
-- Records of goods_normal_price_tb
-- ----------------------------
INSERT INTO `goods_normal_price_tb` VALUES ('1', '10', '10', '10', '1', '1', '1', '1', '常营2号仓库', '1', '0', null, null, '1', '1', '2017-08-24 22:14:19', '1', '2017-08-12 22:14:24', '1', '1');
INSERT INTO `goods_normal_price_tb` VALUES ('2', '20', '20', '20', '2', '1', '1', '1', '常营2号仓库', '1', '0', null, null, '1', '1', '2017-08-10 22:15:09', '1', '2017-08-20 22:15:16', '1', '1');

-- ----------------------------
-- Table structure for `goods_package_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_package_tb`;
CREATE TABLE "goods_package_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  "specifications" int(1) DEFAULT NULL COMMENT '包装规格（1：无包装，2：有包装）',
  "number" int(8) DEFAULT NULL COMMENT '包装件数',
  "sale_volume" int(8) DEFAULT NULL COMMENT '起售量',
  "sale_unit_id" bigint(20) DEFAULT NULL COMMENT '销售单位id',
  "property" int(2) DEFAULT NULL COMMENT '包装属性(1:普通商品,2:易碎品,3:带包装液体,4:裸瓶液体)',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1（单位）等冗余字段',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='包装参数表';

-- ----------------------------
-- Records of goods_package_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_price_record_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_price_record_tb`;
CREATE TABLE "goods_price_record_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "old_sale_price" bigint(20) DEFAULT NULL COMMENT '原售价',
  "old_market_price" bigint(20) DEFAULT NULL COMMENT '原市场价',
  "old_purchase_price" bigint(20) DEFAULT NULL COMMENT '原采购价',
  "sale_price" bigint(20) DEFAULT NULL COMMENT '售价',
  "market_price" bigint(20) DEFAULT NULL COMMENT '市场价',
  "purchase_price" bigint(20) DEFAULT NULL COMMENT '采购价',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品id',
  "goods_sale_id" bigint(20) DEFAULT NULL COMMENT '商品销售id',
  "store_id" bigint(20) DEFAULT NULL COMMENT '门店业务id',
  "store_type" int(1) DEFAULT NULL COMMENT '门店类型：1门店，2网店，3 DC',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "goods_state" int(1) DEFAULT NULL COMMENT '商品状态',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  "hierarchy_id" varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='价格表记录表';

-- ----------------------------
-- Records of goods_price_record_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_product_area_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_product_area_tb`;
CREATE TABLE "goods_product_area_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  "brand_id" bigint(20) DEFAULT NULL COMMENT '品牌ID',
  "brand_name" varchar(255) DEFAULT NULL COMMENT '品牌中文名称',
  "country" varchar(255) DEFAULT NULL COMMENT '国别',
  "prov" varchar(255) DEFAULT NULL COMMENT '省',
  "city" varchar(255) DEFAULT NULL COMMENT '市',
  "is_quality_assurance" int(1) DEFAULT NULL COMMENT '是否有质保(1:有，2：无）',
  "quality_assurance_days" int(5) DEFAULT NULL COMMENT '质保天数',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产地参数表';

-- ----------------------------
-- Records of goods_product_area_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_property_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_property_tb`;
CREATE TABLE "goods_property_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "property_name" varchar(255) DEFAULT NULL COMMENT '属性名称',
  "property_type" int(1) DEFAULT NULL COMMENT '属性类型：1表示销售属性  2辅助属性',
  "category_id" bigint(20) DEFAULT NULL COMMENT '所属类目',
  "category_type" int(1) DEFAULT NULL COMMENT '类目类型,1服务类，2实物类',
  "order_number" int(3) DEFAULT NULL COMMENT '排序号',
  "status" int(1) DEFAULT NULL COMMENT '属性状态0，停用，1启用（默认）',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品属性维护表';

-- ----------------------------
-- Records of goods_property_tb
-- ----------------------------
INSERT INTO `goods_property_tb` VALUES ('1', '口味', '1', '1', '1', '1', '1', '0', null, null, '1', '1', '2017-08-10 10:00:44', '1', '1', '2017-08-31 10:00:05', '1', null);
INSERT INTO `goods_property_tb` VALUES ('2', '分量', '1', '1', '1', '1', '1', '0', null, null, '1', '1', '2017-08-10 10:00:49', '1', '1', '2017-08-23 10:00:45', null, null);

-- ----------------------------
-- Table structure for `goods_property_value_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_property_value_tb`;
CREATE TABLE "goods_property_value_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "property_id" bigint(20) DEFAULT NULL COMMENT '属性id',
  "property_value" varchar(255) DEFAULT NULL COMMENT '属性值',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
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
-- Table structure for `goods_putaway_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_putaway_tb`;
CREATE TABLE "goods_putaway_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品id',
  "goods_sale_id" bigint(20) DEFAULT NULL COMMENT '商品销售id',
  "store_id" bigint(20) DEFAULT NULL COMMENT '门店id',
  "price_id" bigint(20) DEFAULT NULL COMMENT '价格id',
  "status" int(1) DEFAULT NULL COMMENT '上架状态：1上架    2下架',
  "promo_num" varchar(200) DEFAULT NULL COMMENT '促销号',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  "hierarchy_id" varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id"),
  KEY "putaway_sale_store" ("goods_sale_id","store_id","status","valid") USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品上下架表';

-- ----------------------------
-- Records of goods_putaway_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_sale_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_sale_tb`;
CREATE TABLE "goods_sale_tb" (
  "ID" bigint(20) NOT NULL AUTO_INCREMENT,
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品id',
  "goods_sku" varchar(255) DEFAULT NULL COMMENT 'SKU',
  "barcode" varchar(32) DEFAULT NULL COMMENT '条码',
  "img_url" varchar(255) DEFAULT NULL COMMENT '图片url(仅上传一张图片)',
  "propertyids" varchar(1000) DEFAULT NULL COMMENT 'json销售属性值ID集合',
  "sale_property_list" varchar(2000) DEFAULT NULL COMMENT 'json销售属性结果集合',
  "manufacturer_no" varchar(255) DEFAULT NULL COMMENT '厂家货号',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级id',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构id',
  "is_deleted" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是，默认0)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  "remark1" varchar(255) DEFAULT NULL COMMENT '备注字段1',
  "remark2" varchar(255) DEFAULT NULL COMMENT '备注字段2',
  PRIMARY KEY ("ID"),
  KEY "barcode" ("barcode") USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品销售属性表';

-- ----------------------------
-- Records of goods_sale_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_service_mode_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_service_mode_tb`;
CREATE TABLE "goods_service_mode_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  "is_to_door_service" varchar(128) DEFAULT NULL COMMENT '是否上门服务(0:非上门服务，1：上门服务）复选形式',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0:否，1：是，默认0)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务方式表';

-- ----------------------------
-- Records of goods_service_mode_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_suggest_price_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_suggest_price_tb`;
CREATE TABLE "goods_suggest_price_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品主表ID',
  "suggest_sale_price" bigint(20) DEFAULT NULL COMMENT '建议售价',
  "suggest_market_price" bigint(20) DEFAULT NULL COMMENT '建议市场价',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议价格表';

-- ----------------------------
-- Records of goods_suggest_price_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_supplier_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_supplier_tb`;
CREATE TABLE "goods_supplier_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "supplier_name" varchar(256) DEFAULT NULL COMMENT '供应商名称',
  "supplier_short_name" varchar(128) DEFAULT NULL COMMENT '供应商简称',
  "supplier_english_name" varchar(128) DEFAULT NULL COMMENT '供应商英文名',
  "linkman_name" varchar(64) DEFAULT NULL COMMENT '联系人姓名',
  "linkman_sex" int(11) DEFAULT NULL COMMENT '联系人性别',
  "linkman_age" int(11) DEFAULT NULL COMMENT '联系人年龄',
  "supplier_address" varchar(512) DEFAULT NULL COMMENT '供应商所在地（省市县（区））',
  "business_scope" bigint(20) DEFAULT NULL COMMENT '营业范围',
  "linkman_phone" varchar(32) DEFAULT NULL COMMENT '联系人手机号',
  "link_email" varchar(64) DEFAULT NULL COMMENT '联系邮箱',
  "business_type" bigint(20) DEFAULT NULL COMMENT '行业类型',
  "state" int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_supplier_tb
-- ----------------------------
INSERT INTO `goods_supplier_tb` VALUES ('1', '三全食品股份有限公司', ' 三全食品', ' SANQUAN', ' 王阳', '1', '30', ' 河南省.郑州市.惠济区', '1', '0371-92382929', ' wangyang@sanquan.com', '1', '1', '0', '1', '1 ', '2017-08-29 18:14:22', '1', '1', '2017-08-28 18:14:27');

-- ----------------------------
-- Table structure for `goods_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_tb`;
CREATE TABLE "goods_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "goods_name" varchar(255) DEFAULT NULL COMMENT '服务商品名称',
  "goods_short_name" varchar(64) DEFAULT NULL COMMENT '商品简称',
  "goods_spu" varchar(255) DEFAULT NULL COMMENT 'SPU',
  "goods_type" int(1) DEFAULT NULL COMMENT '商品类型,1实物类，2服务类,3餐饮类',
  "self_support" int(1) DEFAULT '1' COMMENT '是否为自营商品 1自营 ，0非自营',
  "goods_category_id" bigint(20) DEFAULT NULL COMMENT '类目id',
  "is_multi_properties" int(1) DEFAULT NULL COMMENT '是否显示销售属性:0否，1是（页面对应多销售属性）',
  "sku_nums" int(4) DEFAULT NULL COMMENT 'SKU个数',
  "sale_map" varchar(4000) DEFAULT NULL COMMENT 'json保存选择类目属性及属性值',
  "state" int(1) DEFAULT NULL COMMENT '状态：0试销商品，1可订货，可销售，2可订货，不可销售，3不可订货，可销售，4不可订货，不可销售5，快速出清6汰换品\n            ',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是,默认值0)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "extends_params" longblob COMMENT '扩展参数，冗余扩展表中的名值对',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品主表';

-- ----------------------------
-- Records of goods_tb
-- ----------------------------
INSERT INTO `goods_tb` VALUES ('1', '方便面', '泡面', '1212', '1', '1', '2', '1', '1', null, '1', '0', null, null, '1', '1', '2017-08-10 00:49:28', '1', '1', '2017-08-10 01:09:38', null, null, null);
INSERT INTO `goods_tb` VALUES ('2', '苹果', '苹果', '22121', '1', '1', '3', '1', '1', '1', '1', '0', null, null, '1', '1', '2017-08-10 00:49:31', '1', '1', '2017-08-24 01:09:42', null, null, null);

-- ----------------------------
-- Table structure for `goods_unit_tb`
-- ----------------------------
DROP TABLE IF EXISTS `goods_unit_tb`;
CREATE TABLE "goods_unit_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "unit_name" varchar(64) DEFAULT NULL COMMENT '单位名称',
  "unit_english_name" varchar(64) DEFAULT NULL COMMENT '英文名称',
  "unit_type" int(1) DEFAULT NULL COMMENT '单位类型（1：销售单位，2：采购单位,3：餐饮单位）',
  "minimum_unit_type" int(1) DEFAULT NULL COMMENT '最小包装单位类型（1：EA,2:克）',
  "minimum_unit_val" int(10) DEFAULT NULL COMMENT '最小单位值',
  "state" int(1) DEFAULT NULL COMMENT '状态(0：停用，1启用)',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='单位表';

-- ----------------------------
-- Records of goods_unit_tb
-- ----------------------------
INSERT INTO `goods_unit_tb` VALUES ('1', '克', 'g', null, null, '1', '0', '1', null, null, '1517021000000006', 'wd', '2017-02-24 16:23:29', '1517021000000006', 'wd', '2017-02-21 11:30:24');
INSERT INTO `goods_unit_tb` VALUES ('2', 'EA', 'EA', null, null, '1', '1', '0', null, null, '1517021000000006', 'wd', '2017-02-24 14:14:50', '1517021000000006', 'wd', '2017-02-21 11:30:24');
INSERT INTO `goods_unit_tb` VALUES ('28', '张', 'N', '1', '1', null, '1', '0', '1704011148361528', '1704011148361528,1704011148361529,', '1704011148361529', 'djxyk', '2017-04-01 11:56:42', '1704011148361529', 'djxyk', '2017-04-01 11:56:42');
INSERT INTO `goods_unit_tb` VALUES ('30', '斤', 'jin', '2', '1', null, '1', '0', '1703300936111442', '1703300936111442,1703300936111443,', '1703300936111443', 'sea', '2017-04-05 10:30:03', '1703300936111443', 'sea', '2017-04-05 10:30:03');
INSERT INTO `goods_unit_tb` VALUES ('31', '箱', 'xiang', '1', '1', '10', '1', '0', '1703291044551028', '1703291044551028,1703291044551029,', '1703291044551029', 'jswn', '2017-04-06 09:16:02', '1703291044551029', 'jswn', '2017-04-06 09:16:02');
INSERT INTO `goods_unit_tb` VALUES ('32', '箱子', 'xiang', '2', '1', '1', '1', '0', '1703291044551028', '1703291044551028,1703291044551029,', '1703291044551029', 'jswn', '2017-04-07 10:20:46', '1703291044551029', 'jswn', '2017-04-07 10:20:46');
INSERT INTO `goods_unit_tb` VALUES ('34', '张', 'zhang', '1', '1', '2', '1', '0', '1704050940321237', '1704050940321237,1704050940321238,', '1704050940321238', 'xdf', '2017-04-10 13:44:52', '1704050940321238', 'xdf', '2017-04-10 13:44:52');
INSERT INTO `goods_unit_tb` VALUES ('35', '件', 'jian', '1', '1', null, '1', '0', '1704101346091010', '1704101346091010,1704101346091011,', '1704101346091011', 'wash', '2017-04-10 13:47:57', '1704101346091011', 'wash', '2017-04-10 13:47:57');
INSERT INTO `goods_unit_tb` VALUES ('36', '身', 'shen', '2', '1', '5', '1', '0', '1704101346091010', '1704101346091010,1704101346091011,', '1704101346091011', 'wash', '2017-04-10 13:48:13', '1704101346091011', 'wash', '2017-04-10 13:48:13');
INSERT INTO `goods_unit_tb` VALUES ('37', '件', 'jia', '1', '1', null, '0', '1', '1704101044191006', '1704101042231004,1704101044191006,2016111700000109,', '2016111700000109', '啦啦啦', '2017-04-13 11:30:43', '2016111700000109', '啦啦啦', '2017-04-10 16:44:22');
INSERT INTO `goods_unit_tb` VALUES ('38', '张', '张', '1', '1', null, '0', '1', '1704111649061240', '1704111649061240,1704111649061241,', '1704111649061241', 'hx', '2017-08-09 17:55:41', '1704111649061241', 'hx', '2017-08-09 17:55:41');

-- ----------------------------
-- Table structure for `purchases_refund_tb`
-- ----------------------------
DROP TABLE IF EXISTS `purchases_refund_tb`;
CREATE TABLE "purchases_refund_tb" (
  "id" bigint(20) NOT NULL COMMENT '主键',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品ID',
  "purchase_order_no" varchar(255) DEFAULT NULL COMMENT '进货订单号',
  "purchase_price" bigint(20) DEFAULT NULL COMMENT '采购价',
  "purchase_number" int(1) DEFAULT NULL COMMENT '采购数量',
  "total_amount" bigint(20) DEFAULT NULL COMMENT '商品总额',
  "supplier_id" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "order_type" int(1) DEFAULT NULL COMMENT '订单类型(1：进货，2：退货)',
  "order_status" varchar(320) DEFAULT NULL COMMENT '订单状态（1：进行中，2：已完成，3：下单失败，4：撤销订单）',
  "hierarchy_id" bigint(20) DEFAULT NULL COMMENT '层级ID',
  "directly_org_id" varchar(320) DEFAULT NULL COMMENT '直属机构ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进货退货表';

-- ----------------------------
-- Records of purchases_refund_tb
-- ----------------------------
INSERT INTO `purchases_refund_tb` VALUES ('1', '1', '2017081012120800', '5', '200', '100', '2', '1', '1', null, null, '1', '1', '2017-08-11 00:06:01', '1', '1', '2017-08-24 23:15:33', '因国庆来领，购买量大，需备货。', '方便面，饼干，面包，饮料等。');
INSERT INTO `purchases_refund_tb` VALUES ('2', '2', '2017081012120801', '10', '200', '2000', '3', '2', '1', null, null, '1', '1', '2017-08-11 00:12:20', '1', '1', '2017-08-16 23:16:44', '圣诞节将至，需购买大量苹果。', '苹果，葡萄，梨，西瓜等');

-- ----------------------------
-- Table structure for `sale_record_tb`
-- ----------------------------
DROP TABLE IF EXISTS `sale_record_tb`;
CREATE TABLE "sale_record_tb" (
  "id" bigint(20) NOT NULL COMMENT '主键',
  "member_name" bigint(20) DEFAULT NULL COMMENT '商品ID',
  "pay_method" int(11) DEFAULT NULL COMMENT '支付方式',
  "sale_number" int(1) DEFAULT NULL COMMENT '数量',
  "sale_price" bigint(20) DEFAULT NULL COMMENT '售价',
  "receivable_amount" bigint(20) DEFAULT NULL COMMENT '应收金额',
  "paid_amount" bigint(20) DEFAULT NULL COMMENT '实收金额',
  "change_amount" bigint(20) DEFAULT NULL COMMENT '找零金额',
  "cashier_name" varchar(255) DEFAULT NULL COMMENT '收银员姓名',
  "is_delete" int(1) DEFAULT NULL COMMENT '是否删除(0，否;1，是)',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(320) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "updator" varchar(255) DEFAULT NULL COMMENT '修改人',
  "update_time" timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  "remark1" varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  "remark3" bigint(20) DEFAULT NULL COMMENT '扩展字段3',
  "remark4" bigint(20) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售记录表';

-- ----------------------------
-- Records of sale_record_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_ground_tb`
-- ----------------------------
DROP TABLE IF EXISTS `stock_ground_tb`;
CREATE TABLE "stock_ground_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "number" varchar(50) DEFAULT NULL COMMENT '库存地编号',
  "name" varchar(255) DEFAULT NULL COMMENT '库存地名称',
  "instruction" varchar(500) DEFAULT NULL COMMENT '库存地说明',
  "is_initialise" int(1) DEFAULT NULL COMMENT '数据是否初始化，1是，0否',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '机构层级ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人ID',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '修改人ID',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '修改时间',
  "remark1" varchar(4000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(4000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存地表';

-- ----------------------------
-- Records of stock_ground_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_in_detail_tb`
-- ----------------------------
DROP TABLE IF EXISTS `stock_in_detail_tb`;
CREATE TABLE "stock_in_detail_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "stock_in_id" bigint(20) DEFAULT NULL COMMENT '出入库记录id',
  "goods_sale_id" bigint(20) DEFAULT NULL COMMENT '商品saleId',
  "goods_id" bigint(20) DEFAULT NULL COMMENT '商品id',
  "purchase_price" bigint(20) DEFAULT NULL COMMENT '采购价',
  "storage_num" int(10) DEFAULT NULL COMMENT '入库数量',
  "total_purchase_price" bigint(20) DEFAULT NULL COMMENT '采购价小计',
  "unit_id" bigint(20) DEFAULT NULL COMMENT '入库单位id',
  "goods_details" varchar(4000) DEFAULT NULL COMMENT '商品详情json格式',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  "hierarchy_id" varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库明细表';

-- ----------------------------
-- Records of stock_in_detail_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_in_tb`
-- ----------------------------
DROP TABLE IF EXISTS `stock_in_tb`;
CREATE TABLE "stock_in_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "voucher_num" varchar(255) DEFAULT NULL COMMENT '凭证号',
  "voucher_type" int(1) DEFAULT NULL COMMENT '凭证类型：1采购入库',
  "out_unit_id" bigint(20) DEFAULT NULL COMMENT '调出单位id',
  "out_unit" varchar(255) DEFAULT NULL COMMENT '调出单位',
  "out_stock_ground_id" bigint(20) DEFAULT NULL COMMENT '调出库存地',
  "out_stock_ground" varchar(255) DEFAULT NULL COMMENT '调出库存地',
  "in_unit_id" bigint(20) DEFAULT NULL COMMENT '调入单位id',
  "in_unit" varchar(255) DEFAULT NULL COMMENT '调入单位',
  "in_stock_ground_id" bigint(20) DEFAULT NULL COMMENT '调入库存地id',
  "in_stock_ground" varchar(255) DEFAULT NULL COMMENT '调入库存地',
  "goods_nums" bigint(20) DEFAULT NULL COMMENT '商品总数',
  "goods_amount" bigint(20) DEFAULT NULL COMMENT '商品总额',
  "goods_sorts" bigint(20) DEFAULT NULL COMMENT '商品分类总数：多少个SPU',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  "hierarchy_id" varchar(255) DEFAULT NULL COMMENT '创建人层级id',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库主表';

-- ----------------------------
-- Records of stock_in_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_modify_tb`
-- ----------------------------
DROP TABLE IF EXISTS `stock_modify_tb`;
CREATE TABLE "stock_modify_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "store_id" bigint(20) DEFAULT NULL COMMENT '店铺id',
  "stock_ground_id" bigint(20) DEFAULT NULL COMMENT '库存地id',
  "goods_sale_id" bigint(20) DEFAULT NULL COMMENT '商品销售id',
  "order_id" varchar(32) DEFAULT NULL COMMENT '订单号id',
  "modify_num" int(11) DEFAULT NULL COMMENT '修改数量',
  "modify_type" int(2) DEFAULT NULL COMMENT '修改类型(1下单消减库存，2异常还原库存，3退单还原库存)',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存修改记录表';

-- ----------------------------
-- Records of stock_modify_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `stock_tb`
-- ----------------------------
DROP TABLE IF EXISTS `stock_tb`;
CREATE TABLE "stock_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "store_id" bigint(20) DEFAULT NULL COMMENT '店铺id',
  "stock_ground_id" bigint(20) DEFAULT NULL COMMENT '库存地id',
  "goods_sale_id" bigint(20) DEFAULT NULL COMMENT '商品销售id',
  "goods_id" bigint(20) DEFAULT NULL,
  "stock_num" bigint(20) DEFAULT NULL COMMENT '库存数量',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '创建人直属机构id',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '创建人层级id',
  "is_delete" int(1) DEFAULT '0' COMMENT '是否删除(0，否;1，是,默认值0)',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT NULL COMMENT '扩展字段1',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY ("id"),
  KEY "store_sale_ground" ("store_id","goods_sale_id","stock_ground_id") USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存表';

-- ----------------------------
-- Records of stock_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `store_stock_ground_tb`
-- ----------------------------
DROP TABLE IF EXISTS `store_stock_ground_tb`;
CREATE TABLE "store_stock_ground_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  "store_id" bigint(20) DEFAULT NULL COMMENT '店铺id',
  "stock_ground_id" bigint(20) DEFAULT NULL COMMENT '库存地id',
  "status" int(1) DEFAULT NULL COMMENT '库存地状态：1启用，0停用',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "directly_org_id" bigint(20) DEFAULT NULL COMMENT '门店直属机构ID',
  "hierarchy_id" varchar(500) DEFAULT NULL COMMENT '门店层级机构ID',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺库存地中间表';

-- ----------------------------
-- Records of store_stock_ground_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `system_authority_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_authority_tb`;
CREATE TABLE "system_authority_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  "name" varchar(255) DEFAULT NULL COMMENT '权限名称',
  "url" varchar(255) DEFAULT NULL COMMENT '功能url',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "creator" varchar(255) DEFAULT NULL,
  "creator_id" bigint(20) DEFAULT NULL,
  "hassub" varchar(255) DEFAULT NULL COMMENT '是否有子菜单',
  "hasvalid" varchar(1) DEFAULT NULL COMMENT '是否有效',
  "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "hierarchical" varchar(255) DEFAULT NULL COMMENT '层级id（权限，例如：app_init_cashier_001_001;app_init_cashier_001;data_dictionary ）',
  "orderby_id" int(10) DEFAULT NULL COMMENT '权限排序',
  "pid" bigint(20) DEFAULT NULL COMMENT '父权限id',
  "show_menu" varchar(20) DEFAULT NULL COMMENT 'true表示显示菜单，false表示界面不显示菜单',
  "show_type" varchar(20) DEFAULT NULL COMMENT 'menu表示菜单，button表示操作按钮',
  "icon_class" varchar(255) DEFAULT NULL COMMENT '菜单图标样式',
  "access" varchar(255) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='商户权限表';

-- ----------------------------
-- Records of system_authority_tb
-- ----------------------------
INSERT INTO `system_authority_tb` VALUES ('1', '系统管理', 'javascript:void(0);', '2017-08-10 11:02:35', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-desktop', '');
INSERT INTO `system_authority_tb` VALUES ('2', '基础数据管理', 'javascript:void(0);', '2017-08-10 11:02:37', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', ' icon-cogs', '');
INSERT INTO `system_authority_tb` VALUES ('3', '商品管理', 'javascript:void(0);', '2017-08-10 11:02:37', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', ' icon-gift', '');
INSERT INTO `system_authority_tb` VALUES ('4', '采购管理', 'javascript:void(0);', '2017-08-10 11:02:38', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', ' icon-credit-card', '');
INSERT INTO `system_authority_tb` VALUES ('5', '销售管理', 'javascript:void(0);', '2017-08-10 11:02:39', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-dashboard', '');
INSERT INTO `system_authority_tb` VALUES ('6', '库存管理', 'javascript:void(0);', '2017-08-10 11:02:39', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-comments-alt', '');
INSERT INTO `system_authority_tb` VALUES ('7', '报表统计', 'javascript:void(0);', '2017-08-10 11:02:40', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '0', 'true', 'menu', 'icon-bar-chart', '');
INSERT INTO `system_authority_tb` VALUES ('10', '用户管理', '/invoicing/system/user/list', '2017-08-08 10:00:35', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('11', '角色管理', '/invoicing/system/role/page/list', '2017-08-08 10:00:42', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('12', '菜单管理', '/invoicing/system/authority/list', '2017-08-04 11:07:09', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '1', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('13', '机构管理', '/invoicing/system/org/list', '2017-08-10 15:53:23', null, null, null, '1', '2017-08-10 15:50:03', null, '1', '1', null, null, '', null);
INSERT INTO `system_authority_tb` VALUES ('20', '单位管理', '/invoicing/base/date/unit/page/list', '2017-08-09 10:27:51', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '2', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('21', '供应商管理', '\r\n/invoicing/base/date/supplier/page/list', '2017-08-09 10:27:40', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '2', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('22', '品牌管理', '/invoicing/base/date/brand/page/list', '2017-08-09 10:27:37', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '2', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('23', '地址管理', '/invoicing/base/date/area/page/list', '2017-08-09 11:12:43', null, null, 'true', '1', '2017-08-09 09:56:44', null, '1', '2', 'true', 'menu', 'icon_retail', null);
INSERT INTO `system_authority_tb` VALUES ('30', '分类管理', '/invoicing/goods/category/page/list', '2017-08-10 09:05:55', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('31', '商品管理', '/invoicing/goods/info/page/list', '2017-08-10 09:05:45', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('32', '价格管理', ' /invoicing/goods/price/page/list', '2017-08-10 09:05:34', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('33', '属性管理', '/invoicing/goods/property/page/list', '2017-08-10 09:05:26', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '3', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('40', '进货订单管理', '/invoicing/purchases/refund/page/list?flag=1', '2017-08-10 23:40:25', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('41', '退货订单管理', '/invoicing/purchases/refund/page/list?flag=2', '2017-08-10 23:40:28', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '4', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('50', '收银管理', '/invoicing/sale/record/page/list', '2017-08-11 00:52:54', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '5', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('51', '销售记录管理', '/invoicing/sale/record/page/list', '2017-08-11 00:52:46', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '5', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('60', '库存管理', '/invoicing/stock/page/list', '2018-04-06 16:36:07', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '6', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('61', '报损管理', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '6', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('70', '销售额统计', '/invoicing/sale/record/page/list', '2018-04-06 16:39:28', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '7', 'true', 'menu', 'icon_retail', '');
INSERT INTO `system_authority_tb` VALUES ('71', '畅销品统计', '', '2017-07-18 13:58:57', null, null, 'true', '1', '2017-07-18 13:58:57', '10;', '1', '7', 'true', 'menu', 'icon_retail', '');

-- ----------------------------
-- Table structure for `system_org_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_org_tb`;
CREATE TABLE "system_org_tb" (
  "id" bigint(32) NOT NULL COMMENT '主键id',
  "org_num" varchar(255) DEFAULT NULL COMMENT '机构编号',
  "org_name" varchar(255) DEFAULT NULL COMMENT '机构名称',
  "org_abbreviation" varchar(255) DEFAULT NULL COMMENT '机构简称',
  "status" int(1) DEFAULT NULL COMMENT '机构状态: 0待审核 1审核通过(正常)  2审核不通过 3停用',
  "pid" bigint(32) DEFAULT NULL COMMENT '管理机构(上级机构id)',
  "hierarchy_id" varchar(255) DEFAULT NULL COMMENT '机构层级id',
  "user_name" varchar(50) DEFAULT NULL COMMENT '用户名称',
  "contact_name" varchar(255) DEFAULT NULL COMMENT '联系人',
  "contact_phone" varchar(20) DEFAULT NULL COMMENT '联系电话',
  "province" varchar(50) DEFAULT NULL COMMENT '所在省',
  "city" varchar(255) DEFAULT NULL COMMENT '所在市',
  "area" varchar(255) DEFAULT NULL COMMENT '所在区',
  "address" varchar(1000) DEFAULT NULL COMMENT '详细地址',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  "valid" int(1) DEFAULT '1' COMMENT '数据有效性，1有效，0无效',
  "creator_id" bigint(20) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL COMMENT '创建时间',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "update_time" timestamp NULL DEFAULT NULL COMMENT '更新时间',
  "remark1" varchar(2000) DEFAULT '' COMMENT '扩展字段1：存储所属业务id',
  "remark2" varchar(2000) DEFAULT NULL COMMENT '扩展字段2：存储职位id集合',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机构表';

-- ----------------------------
-- Records of system_org_tb
-- ----------------------------
INSERT INTO `system_org_tb` VALUES ('1', '10000000', '家乐福', '家乐福', '1', '0', '10000000,', 'jlf', '张三', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区呼家楼', null, '1', '1', '2017-08-10 14:57:00', '1', '2017-08-10 14:57:05', '', null);
INSERT INTO `system_org_tb` VALUES ('2', '10000001', '国贸_家乐福', '家乐福', '1', '1', '10000000,10000001,', 'guoomao', '李四', '158012404030', '北京市', '北京市', '朝阳区', '北京市朝阳区大望路', null, '1', '1', '2017-08-10 14:59:22', '1', '2017-08-10 14:59:27', '', null);

-- ----------------------------
-- Table structure for `system_role_authority_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_authority_tb`;
CREATE TABLE "system_role_authority_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "role_id" bigint(20) DEFAULT NULL COMMENT '商户角色id',
  "auth_id" bigint(20) DEFAULT NULL COMMENT '商户权限id',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色权限中间表';

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


-- ----------------------------
-- Table structure for `system_role_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_role_tb`;
CREATE TABLE "system_role_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键id',
  "role_name" varchar(255) DEFAULT NULL COMMENT '角色名称',
  "role_desc" varchar(2000) DEFAULT NULL COMMENT '角色描述',
  "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  "creator" varchar(255) DEFAULT NULL COMMENT '创建人',
  "creator_id" bigint(20) DEFAULT NULL,
  "hasvalid" varchar(1) DEFAULT NULL COMMENT '是否有效 -1停用 0失效 1有效 2管理员角色',
  "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
  "updator" varchar(255) DEFAULT NULL COMMENT '更新人',
  "updator_id" bigint(20) DEFAULT NULL COMMENT '更新人id',
  "directly_org_id" varchar(200) DEFAULT NULL COMMENT '直属机构id',
  "hierarchy_org_id" varchar(500) DEFAULT NULL COMMENT '层级机构id',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='商户角色表';

-- ----------------------------
-- Records of system_role_tb
-- ----------------------------
INSERT INTO `system_role_tb` VALUES ('1', '系统管理员', '系统管理员', '2017-08-04 10:47:56', '1', '1', '1', '2017-08-02 17:57:36', '1', '1', '0', '0');
INSERT INTO `system_role_tb` VALUES ('2', '超市总经理', '超市总经理', '2017-08-04 10:47:51', null, null, '1', '2017-08-04 10:47:47', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('3', '收银员', '收银员', '2017-08-04 10:48:26', null, null, '1', '2017-08-04 10:48:20', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('4', '库管员', '库管员', '2017-08-04 10:48:46', null, null, '1', '2017-08-04 10:48:46', null, null, null, null);
INSERT INTO `system_role_tb` VALUES ('5', '采购员', '采购员', '2017-08-04 10:49:22', null, null, null, '2017-08-04 10:49:22', null, null, null, null);

-- ----------------------------
-- Table structure for `system_user_log_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_user_log_tb`;
CREATE TABLE "system_user_log_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "merge_user_id" bigint(20) DEFAULT NULL COMMENT '商户用户id',
  "ip" varchar(50) DEFAULT NULL,
  "descrption" varchar(500) DEFAULT NULL COMMENT '动作描述',
  "valid" int(11) DEFAULT '1' COMMENT '数据是否有效，1有效，0无效',
  "create_time" timestamp NULL DEFAULT NULL,
  "update_time" timestamp NULL DEFAULT NULL,
  "type_id" int(11) DEFAULT NULL COMMENT '事件类型：1签到  2签退  3登录  4退出',
  PRIMARY KEY ("id")
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of system_user_log_tb
-- ----------------------------

-- ----------------------------
-- Table structure for `system_user_role_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_user_role_tb`;
CREATE TABLE "system_user_role_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  "user_id" bigint(20) DEFAULT '0' COMMENT '用户ID',
  "role_id" bigint(20) DEFAULT '0' COMMENT '角色ID',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user_role_tb
-- ----------------------------
INSERT INTO `system_user_role_tb` VALUES ('1', '1', '1');
INSERT INTO `system_user_role_tb` VALUES ('3', '3', '2');
INSERT INTO `system_user_role_tb` VALUES ('4', '4', '2');
INSERT INTO `system_user_role_tb` VALUES ('6', '5', '5');
INSERT INTO `system_user_role_tb` VALUES ('7', '7', '4');

-- ----------------------------
-- Table structure for `system_user_tb`
-- ----------------------------
DROP TABLE IF EXISTS `system_user_tb`;
CREATE TABLE "system_user_tb" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "login_name" varchar(255) DEFAULT NULL COMMENT '登录用户名',
  "user_name" varchar(255) DEFAULT NULL COMMENT '用户名称',
  "password" varchar(255) DEFAULT NULL COMMENT '密码',
  "phone" varchar(255) DEFAULT NULL COMMENT '手机号',
  "user_type" int(11) DEFAULT NULL COMMENT '用户类型：0 机构管理员   1机构普通用户  2门店管理员  3门店普通用户 4店长 5收银员 6机构管理者 7门店管理者',
  "state" int(11) DEFAULT NULL COMMENT '状态：0关闭    1开启  2临时用户',
  "creator_id" bigint(150) DEFAULT NULL COMMENT '创建人id',
  "create_time" timestamp NULL DEFAULT NULL,
  "updator_id" bigint(150) DEFAULT NULL,
  "update_time" timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  "directly_org_id" varchar(50) DEFAULT NULL COMMENT '直属机构id',
  "hierarchy_org_id" varchar(500) DEFAULT NULL COMMENT '层级机构id',
  "certificates_type" int(2) DEFAULT NULL COMMENT '用户证件类型:1身份证',
  "certificates_num" varchar(150) DEFAULT NULL COMMENT '证件号码',
  PRIMARY KEY ("id")
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='商户用户表';

-- ----------------------------
-- Records of system_user_tb
-- ----------------------------
INSERT INTO `system_user_tb` VALUES ('1', 'admin', '管理员', '111111', '15829273203', '1', '1', '1', '2017-02-10 18:27:28', '1517021000000006', '2018-04-06 16:14:49', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('3', 'zhangqian', '张倩', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '15801366273', '1', '1', '1517021000000006', '2017-02-15 11:38:01', '1517021000000006', '2017-08-04 14:20:33', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('4', 'test3', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '', '2', '1', '1517021000000006', '2017-03-17 17:30:23', '1517021000000006', '2017-03-17 17:30:23', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('5', 'test4', '543', 'b6150d9369d7e82b3dc42d9994172a99', '', '1', '1', '1517021000000006', '2017-03-17 17:29:26', '1517021000000006', '2017-03-17 17:32:46', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('6', 'test5', 'wd', 'c7ec81d844fbd07b640710dc4417a1fa', '', '1', '1', '1', '2017-02-10 18:27:28', '1517021000000006', '2017-04-21 14:24:00', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('7', 'test6', 'wd222', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '', '0', '0', '1517021000000006', '2017-02-15 11:38:01', '1517021000000006', '2017-08-08 18:46:38', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('8', 'test7', 'wd2m1', 'fcceb360228d088633d6ed455ac2d8be', '', '2', '1', '1517021000000006', '2017-03-17 17:30:23', '1517021000000006', '2017-03-17 17:30:23', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('9', 'test8', '543', 'b6150d9369d7e82b3dc42d9994172a99', '', '1', '1', '1517021000000006', '2017-03-17 17:29:26', '1517021000000006', '2017-03-17 17:32:46', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('10', 'test9', 'wd', 'c7ec81d844fbd07b640710dc4417a1fa', '', '1', '1', '1', '2017-02-10 18:27:28', '1517021000000006', '2017-04-21 14:24:00', '1517021000000005', '1517021000000005,1517021000000006,', null, '');
INSERT INTO `system_user_tb` VALUES ('11', 'test10', 'wd222', '5095079f353f5e9bdb3cfd0e2bc0e6a0', '', '0', '0', '1517021000000006', '2017-02-15 11:38:01', '1517021000000006', '2017-08-08 18:46:30', '1517021500000001', '1517021000000005,1517021500000001,1517021500000002,', null, null);
INSERT INTO `system_user_tb` VALUES ('12', 'wd2m1', 'testUpate', 'fcceb360228d088633d6ed455ac2d8be', '12344444', '2', '1', '1517021000000006', '2017-03-17 17:30:23', '1517021000000006', '2017-08-08 18:50:54', '1703171730221005', '1517021000000005,1517021500000001,1703171730221005,1703171730221006,', null, null);
INSERT INTO `system_user_tb` VALUES ('13', 'test12', '543', 'b6150d9369d7e82b3dc42d9994172a99', '', '1', '0', '1517021000000006', '2017-03-17 17:29:26', '1517021000000006', '2017-08-08 18:48:30', '1517021500000001', '1517021000000005,1517021500000001,2016111700000024,', null, '');
INSERT INTO `system_user_tb` VALUES ('14', 'wangpf', '王鹏飞', '111111', '15829282829', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_user_tb` VALUES ('15', 'yangzb', '杨宗保', '111111', '15829272727', null, null, null, null, null, null, null, null, null, null);
