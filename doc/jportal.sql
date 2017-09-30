/*
Navicat MySQL Data Transfer

Source Server         : jfinalPortal
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : jportal

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-30 22:42:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jp_article
-- ----------------------------
DROP TABLE IF EXISTS `jp_article`;
CREATE TABLE `jp_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '所属面板id',
  `atitle` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `avalue` text COMMENT '文章内容',
  `atime` int(11) NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jp_file
-- ----------------------------
DROP TABLE IF EXISTS `jp_file`;
CREATE TABLE `jp_file` (
  `fid` int(11) NOT NULL,
  `aid` int(11) NOT NULL COMMENT '所属文章ID',
  `fname` varchar(255) DEFAULT NULL,
  `fpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jp_panel
-- ----------------------------
DROP TABLE IF EXISTS `jp_panel`;
CREATE TABLE `jp_panel` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL COMMENT '面板标题',
  `psize` int(11) DEFAULT '0' COMMENT '面板大小',
  `ptype` int(11) DEFAULT NULL COMMENT '面板类型',
  `pvalue` varchar(1024) DEFAULT NULL COMMENT '面板值（针对不同的类型有不同的内容）',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
