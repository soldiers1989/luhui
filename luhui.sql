/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : luhui

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-09-06 15:20:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_admin
-- ----------------------------
DROP TABLE IF EXISTS `base_admin`;
CREATE TABLE `base_admin` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `dengluming` varchar(80) DEFAULT NULL COMMENT '登陆用户名',
  `mima` varchar(80) DEFAULT NULL COMMENT '密码md5一次',
  `xingming` varchar(80) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`adm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_admin
-- ----------------------------
INSERT INTO `base_admin` VALUES ('1', 'root', '63A9F0EA7BB98050796B649E85481845', '树先生');

-- ----------------------------
-- Table structure for base_banner
-- ----------------------------
DROP TABLE IF EXISTS `base_banner`;
CREATE TABLE `base_banner` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bn_title` varchar(255) DEFAULT NULL,
  `bn_content` varchar(255) DEFAULT NULL,
  `bn_order` varchar(255) DEFAULT NULL,
  `bn_img` varchar(255) DEFAULT NULL,
  `bn_create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `bn_update_time` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `bn_delete_time` varchar(255) DEFAULT NULL COMMENT '软删除时间',
  `bn_url` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  PRIMARY KEY (`bn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_banner
-- ----------------------------
INSERT INTO `base_banner` VALUES ('11', '青岛鲁慧', '促进养殖业规模化、产业化、现代化进程，为养殖人提供优质的养殖设备，为畜禽养殖行业保驾护航。', '1', '5b8a3f415a7c6.jpg', null, null, null, 'www.baidu.com');
INSERT INTO `base_banner` VALUES ('12', '青岛鲁慧', '促进养殖业规模化、产业化、现代化进程，为养殖人提供优质的养殖设备，为畜禽养殖行业保驾护航。', '2', '5b8a3f415a7c6.jpg', null, null, null, 'www.baidu.com');
INSERT INTO `base_banner` VALUES ('13', '青岛鲁慧', '促进养殖业规模化、产业化、现代化进程，为养殖人提供优质的养殖设备，为畜禽养殖行业保驾护航。', '3', '5b8a3f415a7c6.jpg', null, null, null, 'www.baidu.com');

-- ----------------------------
-- Table structure for base_contact
-- ----------------------------
DROP TABLE IF EXISTS `base_contact`;
CREATE TABLE `base_contact` (
  `cu_id` int(11) NOT NULL AUTO_INCREMENT,
  `cu_company` varchar(255) DEFAULT NULL COMMENT '公司名',
  `cu_name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `cu_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `cu_seat` varchar(255) DEFAULT NULL COMMENT '座机',
  `cu_phone` varchar(50) DEFAULT NULL COMMENT '座机/手机',
  `cu_access` varchar(50) DEFAULT NULL COMMENT '地址',
  `cu_chuanzhen` varchar(50) DEFAULT NULL COMMENT '传真',
  `cu_create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `cu_update_time` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `cu_delete_time` varchar(255) DEFAULT NULL COMMENT '软删除时间',
  PRIMARY KEY (`cu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_contact
-- ----------------------------
INSERT INTO `base_contact` VALUES ('1', '青岛鲁慧机械有限公司', '李先生', 'qingdaoluhuijixie@163.com', '0532-87700677', '18653252123', '山东省青岛市城阳区棘洪滩街道前海西社区居委会南500米', '0532-87700677', null, null, null);

-- ----------------------------
-- Table structure for base_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `base_gonggao`;
CREATE TABLE `base_gonggao` (
  `gg_id` int(11) NOT NULL,
  `gg_language` varchar(255) DEFAULT NULL,
  `gg_title` varchar(255) DEFAULT NULL,
  `gg_intime` varchar(255) DEFAULT NULL,
  `gg_img` varchar(255) DEFAULT NULL,
  `gg_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_gonggao
-- ----------------------------
INSERT INTO `base_gonggao` VALUES ('0', 'cn', '33333', '1535620513', '5b87b5a1ceab4.jpeg', '<p>22222</p>');

-- ----------------------------
-- Table structure for base_lianxiwomen
-- ----------------------------
DROP TABLE IF EXISTS `base_lianxiwomen`;
CREATE TABLE `base_lianxiwomen` (
  `lx_id` int(11) NOT NULL AUTO_INCREMENT,
  `lx_name` varchar(100) DEFAULT NULL,
  `lx_email` varchar(100) DEFAULT NULL,
  `lx_phone` varchar(50) DEFAULT NULL,
  `lx_access` varchar(50) DEFAULT NULL,
  `lx_chuanzhen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lx_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_lianxiwomen
-- ----------------------------
INSERT INTO `base_lianxiwomen` VALUES ('1', '树先生', '123@qq.com', '13333333333', '123dddd', '123123123');

-- ----------------------------
-- Table structure for base_news
-- ----------------------------
DROP TABLE IF EXISTS `base_news`;
CREATE TABLE `base_news` (
  `ns_id` int(11) NOT NULL AUTO_INCREMENT,
  `ns_title` varchar(250) DEFAULT NULL,
  `ns_intime` int(11) DEFAULT NULL,
  `ns_img` varchar(255) DEFAULT NULL,
  `ns_descript` text,
  `ns_content` text,
  PRIMARY KEY (`ns_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_news
-- ----------------------------
INSERT INTO `base_news` VALUES ('12', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('13', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('14', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('15', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('16', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('17', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('18', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('19', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('20', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('21', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('22', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('23', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('24', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('25', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('26', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('27', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('28', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('29', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('30', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('31', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('32', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('33', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('34', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('36', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('37', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('38', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('39', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('40', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('42', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('43', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('44', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('45', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('46', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('47', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('48', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p><span style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">e公司讯，国家企业信用信息公示系统显示，2018年8月29日，支付宝（中国）信息技术有限公司法人发生变更，由马云变更为叶郁青。另据天眼查显示，叶郁青目前身兼支付宝董事长和总经理，杭州阿里科技有限公司董事等职务。</span></p>');
INSERT INTO `base_news` VALUES ('49', '新闻标题新闻标题', '1535616044', '5b8cf444aaa29.jpg', '公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单轴五刀自动车床等设备', '<p>青岛鲁汇机械有限公司成立于2017年6月，公司位于美丽的海滨城市城阳，是一家从事生产、销售规模化与现代化畜禽养殖设备的高新技术企业。公司集加工、销售机械设备及配件、供水管道、通风风机、温控设备、货物进出口、技术进出口与服务为一体，主要产品包括：鸡舍自动喂料线（料盘）、鸡舍自动饮水系统（乳头饮水线）等。公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单抽五刀自动车床等设备，生产效率、市场占有率及销售收入在国内同行业中名列前茅。</p><p>公司以技术为核心，不断创新，与时俱进，力争在国内机械制造行业占领一席之地，并向国际一流的畜牧机械制造企业看齐。公司的销售网络遍布全国，极大促进各地规模化养殖业发展，为畜牧业发展提供设备保障，并积极与世界接轨，开发外国客户，姜产品推向世界。</p><p>公司以诚信为基础，以品质为依托，本着“服务客户，奉献进取”的理念，立志推进畜牧业养殖的规范化发展，提高效率、降低成本，不断研发提高企业竞争力，为社会奉献力量。</p><p style=\"white-space: normal;\">青岛鲁汇机械有限公司成立于2017年6月，公司位于美丽的海滨城市城阳，是一家从事生产、销售规模化与现代化畜禽养殖设备的高新技术企业。公司集加工、销售机械设备及配件、供水管道、通风风机、温控设备、货物进出口、技术进出口与服务为一体，主要产品包括：鸡舍自动喂料线（料盘）、鸡舍自动饮水系统（乳头饮水线）等。公司拥有一座现代化生产工厂，占地面积1000平方米，共有数十台数控多角度侧赞自动机床、单抽五刀自动车床等设备，生产效率、市场占有率及销售收入在国内同行业中名列前茅。</p><p style=\"white-space: normal;\">公司以技术为核心，不断创新，与时俱进，力争在国内机械制造行业占领一席之地，并向国际一流的畜牧机械制造企业看齐。公司的销售网络遍布全国，极大促进各地规模化养殖业发展，为畜牧业发展提供设备保障，并积极与世界接轨，开发外国客户，姜产品推向世界。</p><p style=\"white-space: normal;\">公司以诚信为基础，以品质为依托，本着“服务客户，奉献进取”的理念，立志推进畜牧业养殖的规范化发展，提高效率、降低成本，不断研发提高企业竞争力，为社会奉献力量。</p><p><img src=\"/static/upload/1536136220984739.png\" title=\"1536136220984739.png\"/></p><p><img src=\"/static/upload/1536136220411771.jpg\" title=\"1536136220411771.jpg\"/></p><p><br/></p>');

-- ----------------------------
-- Table structure for base_product
-- ----------------------------
DROP TABLE IF EXISTS `base_product`;
CREATE TABLE `base_product` (
  `pd_id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_img` varchar(255) DEFAULT NULL COMMENT '产品展示图片',
  `pd_title` varchar(255) DEFAULT NULL COMMENT '产品展示标题',
  `pd_content` varchar(255) DEFAULT NULL COMMENT '产品展示内容',
  `pd_order` int(255) DEFAULT NULL COMMENT '排序',
  `pd_intime` varchar(0) DEFAULT NULL COMMENT '添加时间',
  `pd_create_time` varchar(255) DEFAULT NULL,
  `pd_update_time` varchar(0) DEFAULT NULL,
  `pd_delete_time` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`pd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_product
-- ----------------------------
INSERT INTO `base_product` VALUES ('45', '5b8901af8ae1f.jpg', '无焊缝防锈水线支撑管', '◎ 采用热镀锌板滚压而成，镀锌层厚度275g/㎡，带加强筋，无需焊接，消除了焊接处易生锈的弊端，延长使用寿命。', '1', '', null, null, null);
INSERT INTO `base_product` VALUES ('46', '5b8901af8ae1f.jpg', '无焊缝防锈水线支撑管', '◎ 采用热镀锌板滚压而成，镀锌层厚度275g/㎡，带加强筋，无需焊接，消除了焊接处易生锈的弊端，延长使用寿命。', '2', '', null, null, null);
INSERT INTO `base_product` VALUES ('47', '5b90bd01238db.jpg', '无焊缝防锈水线支撑管', '◎ 采用热镀锌板滚压而成，镀锌层厚度275g/㎡，带加强筋，无需焊接，消除了焊接处易生锈的弊端，延长使用寿命。', '3', '', null, null, null);

-- ----------------------------
-- Table structure for base_production
-- ----------------------------
DROP TABLE IF EXISTS `base_production`;
CREATE TABLE `base_production` (
  `pe_id` int(11) NOT NULL AUTO_INCREMENT,
  `pe_title` varchar(255) DEFAULT NULL COMMENT ' 文字说明1',
  `pe_img` varchar(255) DEFAULT NULL COMMENT '图片1',
  `pe_order` varchar(255) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`pe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_production
-- ----------------------------
INSERT INTO `base_production` VALUES ('1', '工人在显微镜下检验每个产品是否符合生产标准，挑选合格品，淘汰不良品。', '5b8e568a5ce5d.png', '1');
INSERT INTO `base_production` VALUES ('2', '工人在显微镜下检验每个产品是否符合生产标准，挑选合格品，淘汰不良品。', '5b8e5680f08da.png', '2');
INSERT INTO `base_production` VALUES ('4', '工人在显微镜下检验每个产品是否符合生产标准，挑选合格品，淘汰不良品。', '5b892e4543e1f.jpg', '3');

-- ----------------------------
-- Table structure for base_xitongjilu
-- ----------------------------
DROP TABLE IF EXISTS `base_xitongjilu`;
CREATE TABLE `base_xitongjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gonghaoid` int(11) DEFAULT NULL,
  `neirong` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_xitongjilu
-- ----------------------------
INSERT INTO `base_xitongjilu` VALUES ('1', '1', '行为：登陆', '127.0.0.1', '1535611476');
INSERT INTO `base_xitongjilu` VALUES ('2', '1', '行为：退出登陆', '127.0.0.1', '1535809698');
INSERT INTO `base_xitongjilu` VALUES ('3', '1', '行为：登陆', '127.0.0.1', '1535811253');
INSERT INTO `base_xitongjilu` VALUES ('4', '1', '行为：退出登陆', '127.0.0.1', '1535811257');
INSERT INTO `base_xitongjilu` VALUES ('5', '1', '行为：登陆', '127.0.0.1', '1535811265');
INSERT INTO `base_xitongjilu` VALUES ('6', '1', '行为：退出登陆', '127.0.0.1', '1535811273');
INSERT INTO `base_xitongjilu` VALUES ('7', '1', '行为：登陆', '127.0.0.1', '1535811297');
INSERT INTO `base_xitongjilu` VALUES ('8', '1', '行为：退出登陆', '127.0.0.1', '1535811302');
INSERT INTO `base_xitongjilu` VALUES ('9', '1', '行为：登陆', '127.0.0.1', '1535811444');
INSERT INTO `base_xitongjilu` VALUES ('10', '1', '行为：退出登陆', '127.0.0.1', '1535811457');
INSERT INTO `base_xitongjilu` VALUES ('11', '1', '行为：登陆', '127.0.0.1', '1535811463');
INSERT INTO `base_xitongjilu` VALUES ('12', '1', '行为：退出登陆', '127.0.0.1', '1535811467');
INSERT INTO `base_xitongjilu` VALUES ('13', '1', '行为：登陆', '127.0.0.1', '1535811470');
INSERT INTO `base_xitongjilu` VALUES ('14', '1', '行为：退出登陆', '127.0.0.1', '1535811641');
INSERT INTO `base_xitongjilu` VALUES ('15', '1', '行为：登陆', '127.0.0.1', '1535811745');
INSERT INTO `base_xitongjilu` VALUES ('16', '1', '行为：登陆', '127.0.0.1', '1535811764');
INSERT INTO `base_xitongjilu` VALUES ('17', '1', '行为：退出登陆', '127.0.0.1', '1535811775');
INSERT INTO `base_xitongjilu` VALUES ('18', '1', '行为：登陆', '127.0.0.1', '1535811781');
INSERT INTO `base_xitongjilu` VALUES ('19', '1', '行为：退出登陆', '127.0.0.1', '1535811784');
INSERT INTO `base_xitongjilu` VALUES ('20', '1', '行为：登陆', '127.0.0.1', '1535811798');
INSERT INTO `base_xitongjilu` VALUES ('21', '1', '行为：退出登陆', '127.0.0.1', '1535811816');
INSERT INTO `base_xitongjilu` VALUES ('22', '1', '行为：登陆', '127.0.0.1', '1535811835');
INSERT INTO `base_xitongjilu` VALUES ('23', '1', '行为：退出登陆', '127.0.0.1', '1535812198');
INSERT INTO `base_xitongjilu` VALUES ('24', null, '行为：退出登陆', '127.0.0.1', '1535812198');
INSERT INTO `base_xitongjilu` VALUES ('25', '1', '行为：登陆', '127.0.0.1', '1535812201');
INSERT INTO `base_xitongjilu` VALUES ('26', '1', '行为：退出登陆', '127.0.0.1', '1535812219');
INSERT INTO `base_xitongjilu` VALUES ('27', null, '行为：退出登陆', '127.0.0.1', '1535812219');
INSERT INTO `base_xitongjilu` VALUES ('28', '1', '行为：登陆', '127.0.0.1', '1535812221');
INSERT INTO `base_xitongjilu` VALUES ('29', '1', '行为：退出登陆', '127.0.0.1', '1535812236');
INSERT INTO `base_xitongjilu` VALUES ('30', null, '行为：退出登陆', '127.0.0.1', '1535812236');
INSERT INTO `base_xitongjilu` VALUES ('31', '1', '行为：登陆', '127.0.0.1', '1535812241');
INSERT INTO `base_xitongjilu` VALUES ('32', '1', '行为：登陆', '127.0.0.1', '1535812263');
INSERT INTO `base_xitongjilu` VALUES ('33', '1', '行为：退出登陆', '127.0.0.1', '1535812266');
INSERT INTO `base_xitongjilu` VALUES ('34', null, '行为：退出登陆', '127.0.0.1', '1535812266');
INSERT INTO `base_xitongjilu` VALUES ('35', '1', '行为：登陆', '127.0.0.1', '1535812268');
INSERT INTO `base_xitongjilu` VALUES ('36', '1', '行为：退出登陆', '127.0.0.1', '1535812272');
INSERT INTO `base_xitongjilu` VALUES ('37', null, '行为：退出登陆', '127.0.0.1', '1535812272');
INSERT INTO `base_xitongjilu` VALUES ('38', '1', '行为：登陆', '127.0.0.1', '1535812274');
INSERT INTO `base_xitongjilu` VALUES ('39', '1', '行为：登陆', '127.0.0.1', '1535852364');
INSERT INTO `base_xitongjilu` VALUES ('40', '1', '行为：登陆', '127.0.0.1', '1535858147');
INSERT INTO `base_xitongjilu` VALUES ('41', '1', '行为：登陆', '127.0.0.1', '1535868794');
INSERT INTO `base_xitongjilu` VALUES ('42', '1', '行为：登陆', '127.0.0.1', '1535871876');
INSERT INTO `base_xitongjilu` VALUES ('43', null, '行为：退出登陆', '127.0.0.1', '1535893207');
INSERT INTO `base_xitongjilu` VALUES ('44', null, '行为：退出登陆', '127.0.0.1', '1535893208');
INSERT INTO `base_xitongjilu` VALUES ('45', null, '行为：退出登陆', '127.0.0.1', '1535893212');
INSERT INTO `base_xitongjilu` VALUES ('46', null, '行为：退出登陆', '127.0.0.1', '1535893213');
INSERT INTO `base_xitongjilu` VALUES ('47', null, '行为：退出登陆', '127.0.0.1', '1535894003');
INSERT INTO `base_xitongjilu` VALUES ('48', null, '行为：退出登陆', '127.0.0.1', '1535894004');
INSERT INTO `base_xitongjilu` VALUES ('49', null, '行为：退出登陆', '127.0.0.1', '1535894363');
INSERT INTO `base_xitongjilu` VALUES ('50', null, '行为：退出登陆', '127.0.0.1', '1535894364');
INSERT INTO `base_xitongjilu` VALUES ('51', '1', '行为：登陆', '127.0.0.1', '1535894391');
INSERT INTO `base_xitongjilu` VALUES ('52', '1', '行为：退出登陆', '127.0.0.1', '1535895327');
INSERT INTO `base_xitongjilu` VALUES ('53', null, '行为：退出登陆', '127.0.0.1', '1535895327');
INSERT INTO `base_xitongjilu` VALUES ('54', null, '行为：退出登陆', '127.0.0.1', '1535895458');
INSERT INTO `base_xitongjilu` VALUES ('55', null, '行为：退出登陆', '127.0.0.1', '1535895458');
INSERT INTO `base_xitongjilu` VALUES ('56', null, '行为：退出登陆', '127.0.0.1', '1535895595');
INSERT INTO `base_xitongjilu` VALUES ('57', null, '行为：退出登陆', '127.0.0.1', '1535895595');
INSERT INTO `base_xitongjilu` VALUES ('58', null, '行为：退出登陆', '127.0.0.1', '1535895656');
INSERT INTO `base_xitongjilu` VALUES ('59', null, '行为：退出登陆', '127.0.0.1', '1535895656');
INSERT INTO `base_xitongjilu` VALUES ('60', '1', '行为：登陆', '127.0.0.1', '1535896104');
INSERT INTO `base_xitongjilu` VALUES ('61', '1', '行为：退出登陆', '127.0.0.1', '1535896304');
INSERT INTO `base_xitongjilu` VALUES ('62', null, '行为：退出登陆', '127.0.0.1', '1535896304');
INSERT INTO `base_xitongjilu` VALUES ('63', '1', '行为：登陆', '127.0.0.1', '1535896748');
INSERT INTO `base_xitongjilu` VALUES ('64', '1', '行为：退出登陆', '127.0.0.1', '1535896751');
INSERT INTO `base_xitongjilu` VALUES ('65', null, '行为：退出登陆', '127.0.0.1', '1535896751');
INSERT INTO `base_xitongjilu` VALUES ('66', '1', '行为：登陆', '127.0.0.1', '1535896755');
INSERT INTO `base_xitongjilu` VALUES ('67', '1', '行为：退出登陆', '127.0.0.1', '1535896758');
INSERT INTO `base_xitongjilu` VALUES ('68', null, '行为：退出登陆', '127.0.0.1', '1535896758');
INSERT INTO `base_xitongjilu` VALUES ('69', '1', '行为：登陆', '127.0.0.1', '1535896789');
INSERT INTO `base_xitongjilu` VALUES ('70', '1', '行为：退出登陆', '127.0.0.1', '1535896827');
INSERT INTO `base_xitongjilu` VALUES ('71', null, '行为：退出登陆', '127.0.0.1', '1535896828');
INSERT INTO `base_xitongjilu` VALUES ('72', '1', '行为：登陆', '127.0.0.1', '1535896873');
INSERT INTO `base_xitongjilu` VALUES ('73', '1', '行为：退出登陆', '127.0.0.1', '1535896918');
INSERT INTO `base_xitongjilu` VALUES ('74', null, '行为：退出登陆', '127.0.0.1', '1535896918');
INSERT INTO `base_xitongjilu` VALUES ('75', '1', '行为：登陆', '127.0.0.1', '1535896925');
INSERT INTO `base_xitongjilu` VALUES ('76', '1', '行为：登陆', '127.0.0.1', '1535896925');
INSERT INTO `base_xitongjilu` VALUES ('77', '1', '行为：退出登陆', '127.0.0.1', '1535896983');
INSERT INTO `base_xitongjilu` VALUES ('78', null, '行为：退出登陆', '127.0.0.1', '1535896984');
INSERT INTO `base_xitongjilu` VALUES ('79', '1', '行为：登陆', '127.0.0.1', '1535896988');
INSERT INTO `base_xitongjilu` VALUES ('80', '1', '行为：登陆', '127.0.0.1', '1535896988');
INSERT INTO `base_xitongjilu` VALUES ('81', '1', '行为：退出登陆', '127.0.0.1', '1535897000');
INSERT INTO `base_xitongjilu` VALUES ('82', null, '行为：退出登陆', '127.0.0.1', '1535897000');
INSERT INTO `base_xitongjilu` VALUES ('83', '1', '行为：登陆', '127.0.0.1', '1535897004');
INSERT INTO `base_xitongjilu` VALUES ('84', '1', '行为：登陆', '127.0.0.1', '1535897004');
INSERT INTO `base_xitongjilu` VALUES ('85', '1', '行为：退出登陆', '127.0.0.1', '1535897026');
INSERT INTO `base_xitongjilu` VALUES ('86', null, '行为：退出登陆', '127.0.0.1', '1535897026');
INSERT INTO `base_xitongjilu` VALUES ('87', null, '行为：退出登陆', '127.0.0.1', '1535897027');
INSERT INTO `base_xitongjilu` VALUES ('88', '1', '行为：登陆', '127.0.0.1', '1535897035');
INSERT INTO `base_xitongjilu` VALUES ('89', '1', '行为：登陆', '127.0.0.1', '1535897035');
INSERT INTO `base_xitongjilu` VALUES ('90', '1', '行为：退出登陆', '127.0.0.1', '1535897039');
INSERT INTO `base_xitongjilu` VALUES ('91', null, '行为：退出登陆', '127.0.0.1', '1535897039');
INSERT INTO `base_xitongjilu` VALUES ('92', null, '行为：退出登陆', '127.0.0.1', '1535897039');
INSERT INTO `base_xitongjilu` VALUES ('93', '1', '行为：登陆', '127.0.0.1', '1535897044');
INSERT INTO `base_xitongjilu` VALUES ('94', '1', '行为：登陆', '127.0.0.1', '1535897044');
INSERT INTO `base_xitongjilu` VALUES ('95', '1', '行为：退出登陆', '127.0.0.1', '1535897047');
INSERT INTO `base_xitongjilu` VALUES ('96', null, '行为：退出登陆', '127.0.0.1', '1535897047');
INSERT INTO `base_xitongjilu` VALUES ('97', '1', '行为：登陆', '127.0.0.1', '1535897061');
INSERT INTO `base_xitongjilu` VALUES ('98', '1', '行为：登陆', '127.0.0.1', '1535897061');
INSERT INTO `base_xitongjilu` VALUES ('99', '1', '行为：退出登陆', '127.0.0.1', '1535897064');
INSERT INTO `base_xitongjilu` VALUES ('100', null, '行为：退出登陆', '127.0.0.1', '1535897064');
INSERT INTO `base_xitongjilu` VALUES ('101', null, '行为：退出登陆', '127.0.0.1', '1535897064');
INSERT INTO `base_xitongjilu` VALUES ('102', '1', '行为：登陆', '127.0.0.1', '1535897138');
INSERT INTO `base_xitongjilu` VALUES ('103', '1', '行为：登陆', '127.0.0.1', '1535897138');
INSERT INTO `base_xitongjilu` VALUES ('104', '1', '行为：退出登陆', '127.0.0.1', '1535897149');
INSERT INTO `base_xitongjilu` VALUES ('105', null, '行为：退出登陆', '127.0.0.1', '1535897149');
INSERT INTO `base_xitongjilu` VALUES ('106', null, '行为：退出登陆', '127.0.0.1', '1535897150');
INSERT INTO `base_xitongjilu` VALUES ('107', '1', '行为：登陆', '127.0.0.1', '1535897156');
INSERT INTO `base_xitongjilu` VALUES ('108', '1', '行为：登陆', '127.0.0.1', '1535897161');
INSERT INTO `base_xitongjilu` VALUES ('109', '1', '行为：退出登陆', '127.0.0.1', '1535897566');
INSERT INTO `base_xitongjilu` VALUES ('110', null, '行为：退出登陆', '127.0.0.1', '1535897566');
INSERT INTO `base_xitongjilu` VALUES ('111', null, '行为：退出登陆', '127.0.0.1', '1535897567');
INSERT INTO `base_xitongjilu` VALUES ('112', '1', '行为：登陆', '127.0.0.1', '1535897880');
INSERT INTO `base_xitongjilu` VALUES ('113', '1', '行为：登陆', '127.0.0.1', '1535897883');
INSERT INTO `base_xitongjilu` VALUES ('114', '1', '行为：退出登陆', '127.0.0.1', '1535898342');
INSERT INTO `base_xitongjilu` VALUES ('115', null, '行为：退出登陆', '127.0.0.1', '1535898343');
INSERT INTO `base_xitongjilu` VALUES ('116', null, '行为：退出登陆', '127.0.0.1', '1535898419');
INSERT INTO `base_xitongjilu` VALUES ('117', null, '行为：退出登陆', '127.0.0.1', '1535898420');
INSERT INTO `base_xitongjilu` VALUES ('118', null, '行为：退出登陆', '127.0.0.1', '1535898530');
INSERT INTO `base_xitongjilu` VALUES ('119', null, '行为：退出登陆', '127.0.0.1', '1535898531');
INSERT INTO `base_xitongjilu` VALUES ('120', '1', '行为：登陆', '127.0.0.1', '1535898536');
INSERT INTO `base_xitongjilu` VALUES ('121', '1', '行为：登陆', '127.0.0.1', '1535898537');
INSERT INTO `base_xitongjilu` VALUES ('122', '1', '行为：退出登陆', '127.0.0.1', '1535898544');
INSERT INTO `base_xitongjilu` VALUES ('123', null, '行为：退出登陆', '127.0.0.1', '1535898545');
INSERT INTO `base_xitongjilu` VALUES ('124', null, '行为：退出登陆', '127.0.0.1', '1535898569');
INSERT INTO `base_xitongjilu` VALUES ('125', null, '行为：退出登陆', '127.0.0.1', '1535898570');
INSERT INTO `base_xitongjilu` VALUES ('126', null, '行为：退出登陆', '127.0.0.1', '1535898796');
INSERT INTO `base_xitongjilu` VALUES ('127', null, '行为：退出登陆', '127.0.0.1', '1535898797');
INSERT INTO `base_xitongjilu` VALUES ('128', null, '行为：退出登陆', '127.0.0.1', '1535898953');
INSERT INTO `base_xitongjilu` VALUES ('129', null, '行为：退出登陆', '127.0.0.1', '1535898954');
INSERT INTO `base_xitongjilu` VALUES ('130', '1', '行为：登陆', '127.0.0.1', '1535899054');
INSERT INTO `base_xitongjilu` VALUES ('131', '1', '行为：登陆', '127.0.0.1', '1535899055');
INSERT INTO `base_xitongjilu` VALUES ('132', '1', '行为：退出登陆', '127.0.0.1', '1535899058');
INSERT INTO `base_xitongjilu` VALUES ('133', null, '行为：退出登陆', '127.0.0.1', '1535899059');
INSERT INTO `base_xitongjilu` VALUES ('134', '1', '行为：登陆', '127.0.0.1', '1535899435');
INSERT INTO `base_xitongjilu` VALUES ('135', '1', '行为：登陆', '127.0.0.1', '1535899436');
INSERT INTO `base_xitongjilu` VALUES ('136', '1', '行为：退出登陆', '127.0.0.1', '1535899441');
INSERT INTO `base_xitongjilu` VALUES ('137', null, '行为：退出登陆', '127.0.0.1', '1535899441');
INSERT INTO `base_xitongjilu` VALUES ('138', null, '行为：退出登陆', '127.0.0.1', '1535899448');
INSERT INTO `base_xitongjilu` VALUES ('139', null, '行为：退出登陆', '127.0.0.1', '1535899448');
INSERT INTO `base_xitongjilu` VALUES ('140', null, '行为：退出登陆', '127.0.0.1', '1535899685');
INSERT INTO `base_xitongjilu` VALUES ('141', null, '行为：退出登陆', '127.0.0.1', '1535899685');
INSERT INTO `base_xitongjilu` VALUES ('142', '1', '行为：登陆', '127.0.0.1', '1535899693');
INSERT INTO `base_xitongjilu` VALUES ('143', '1', '行为：登陆', '127.0.0.1', '1535899694');
INSERT INTO `base_xitongjilu` VALUES ('144', '1', '行为：退出登陆', '127.0.0.1', '1535899696');
INSERT INTO `base_xitongjilu` VALUES ('145', null, '行为：退出登陆', '127.0.0.1', '1535899697');
INSERT INTO `base_xitongjilu` VALUES ('146', null, '行为：退出登陆', '127.0.0.1', '1535899703');
INSERT INTO `base_xitongjilu` VALUES ('147', null, '行为：退出登陆', '127.0.0.1', '1535899703');
INSERT INTO `base_xitongjilu` VALUES ('148', '1', '行为：登陆', '127.0.0.1', '1535899814');
INSERT INTO `base_xitongjilu` VALUES ('149', '1', '行为：登陆', '127.0.0.1', '1535899814');
INSERT INTO `base_xitongjilu` VALUES ('150', '1', '行为：退出登陆', '127.0.0.1', '1535899816');
INSERT INTO `base_xitongjilu` VALUES ('151', null, '行为：退出登陆', '127.0.0.1', '1535899817');
INSERT INTO `base_xitongjilu` VALUES ('152', '1', '行为：登陆', '127.0.0.1', '1535899843');
INSERT INTO `base_xitongjilu` VALUES ('153', '1', '行为：登陆', '127.0.0.1', '1535899843');
INSERT INTO `base_xitongjilu` VALUES ('154', '1', '行为：退出登陆', '127.0.0.1', '1535899848');
INSERT INTO `base_xitongjilu` VALUES ('155', null, '行为：退出登陆', '127.0.0.1', '1535899848');
INSERT INTO `base_xitongjilu` VALUES ('156', '1', '行为：登陆', '127.0.0.1', '1535899890');
INSERT INTO `base_xitongjilu` VALUES ('157', '1', '行为：登陆', '127.0.0.1', '1535899890');
INSERT INTO `base_xitongjilu` VALUES ('158', '1', '行为：退出登陆', '127.0.0.1', '1535899893');
INSERT INTO `base_xitongjilu` VALUES ('159', null, '行为：退出登陆', '127.0.0.1', '1535899893');
INSERT INTO `base_xitongjilu` VALUES ('160', '1', '行为：登陆', '127.0.0.1', '1535899903');
INSERT INTO `base_xitongjilu` VALUES ('161', '1', '行为：登陆', '127.0.0.1', '1535899904');
INSERT INTO `base_xitongjilu` VALUES ('162', '1', '行为：退出登陆', '127.0.0.1', '1535899906');
INSERT INTO `base_xitongjilu` VALUES ('163', null, '行为：退出登陆', '127.0.0.1', '1535899906');
INSERT INTO `base_xitongjilu` VALUES ('164', '1', '行为：登陆', '127.0.0.1', '1535900058');
INSERT INTO `base_xitongjilu` VALUES ('165', '1', '行为：登陆', '127.0.0.1', '1535900058');
INSERT INTO `base_xitongjilu` VALUES ('166', '1', '行为：退出登陆', '127.0.0.1', '1535900062');
INSERT INTO `base_xitongjilu` VALUES ('167', null, '行为：退出登陆', '127.0.0.1', '1535900062');
INSERT INTO `base_xitongjilu` VALUES ('168', null, '行为：退出登陆', '127.0.0.1', '1535900084');
INSERT INTO `base_xitongjilu` VALUES ('169', null, '行为：退出登陆', '127.0.0.1', '1535900084');
INSERT INTO `base_xitongjilu` VALUES ('170', '1', '行为：登陆', '127.0.0.1', '1535900092');
INSERT INTO `base_xitongjilu` VALUES ('171', '1', '行为：登陆', '127.0.0.1', '1535900092');
INSERT INTO `base_xitongjilu` VALUES ('172', '1', '行为：退出登陆', '127.0.0.1', '1535900094');
INSERT INTO `base_xitongjilu` VALUES ('173', null, '行为：退出登陆', '127.0.0.1', '1535900094');
INSERT INTO `base_xitongjilu` VALUES ('174', null, '行为：退出登陆', '127.0.0.1', '1535900256');
INSERT INTO `base_xitongjilu` VALUES ('175', '1', '行为：登陆', '127.0.0.1', '1535900261');
INSERT INTO `base_xitongjilu` VALUES ('176', '1', '行为：登陆', '127.0.0.1', '1535900261');
INSERT INTO `base_xitongjilu` VALUES ('177', '1', '行为：退出登陆', '127.0.0.1', '1535900263');
INSERT INTO `base_xitongjilu` VALUES ('178', null, '行为：退出登陆', '127.0.0.1', '1535900428');
INSERT INTO `base_xitongjilu` VALUES ('179', '1', '行为：登陆', '127.0.0.1', '1535900433');
INSERT INTO `base_xitongjilu` VALUES ('180', '1', '行为：登陆', '127.0.0.1', '1535900434');
INSERT INTO `base_xitongjilu` VALUES ('181', '1', '行为：退出登陆', '127.0.0.1', '1535900535');
INSERT INTO `base_xitongjilu` VALUES ('182', '1', '行为：登陆', '127.0.0.1', '1535900538');
INSERT INTO `base_xitongjilu` VALUES ('183', '1', '行为：登陆', '127.0.0.1', '1535900539');
INSERT INTO `base_xitongjilu` VALUES ('184', '1', '行为：登陆', '127.0.0.1', '1535941076');
INSERT INTO `base_xitongjilu` VALUES ('185', '1', '行为：登陆', '127.0.0.1', '1535941076');
INSERT INTO `base_xitongjilu` VALUES ('186', '1', '行为：登陆', '127.0.0.1', '1535953437');
INSERT INTO `base_xitongjilu` VALUES ('187', '1', '行为：登陆', '127.0.0.1', '1535953438');
INSERT INTO `base_xitongjilu` VALUES ('188', '1', '行为：登陆', '127.0.0.1', '1536054387');
INSERT INTO `base_xitongjilu` VALUES ('189', '1', '行为：登陆', '127.0.0.1', '1536054388');
INSERT INTO `base_xitongjilu` VALUES ('190', '1', '行为：登陆', '127.0.0.1', '1536116327');
INSERT INTO `base_xitongjilu` VALUES ('191', '1', '行为：登陆', '127.0.0.1', '1536116328');
INSERT INTO `base_xitongjilu` VALUES ('192', '1', '行为：登陆', '127.0.0.1', '1536135527');
INSERT INTO `base_xitongjilu` VALUES ('193', '1', '行为：登陆', '127.0.0.1', '1536135528');
INSERT INTO `base_xitongjilu` VALUES ('194', '1', '行为：登陆', '127.0.0.1', '1536206085');
INSERT INTO `base_xitongjilu` VALUES ('195', '1', '行为：登陆', '127.0.0.1', '1536206086');
INSERT INTO `base_xitongjilu` VALUES ('196', '1', '行为：登陆', '127.0.0.1', '1536212167');
INSERT INTO `base_xitongjilu` VALUES ('197', '1', '行为：登陆', '127.0.0.1', '1536212168');
INSERT INTO `base_xitongjilu` VALUES ('198', '1', '行为：登陆', '127.0.0.1', '1536215582');
INSERT INTO `base_xitongjilu` VALUES ('199', '1', '行为：登陆', '127.0.0.1', '1536215583');
