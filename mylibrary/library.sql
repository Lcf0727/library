/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-12-26 20:33:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('123456', '123456', 'admin');

-- ----------------------------
-- Table structure for `book_info`
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `author` varchar(15) NOT NULL,
  `publish` varchar(20) NOT NULL,
  `ISBN` varchar(15) NOT NULL,
  `introduction` text,
  `language` varchar(4) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pub_date` date NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES ('1', '语文', '勾慧阳', 'A101', '20190001', '无', '公共选修', '2.00', '2019-12-20', '9', '100');
INSERT INTO `book_info` VALUES ('2', '数学', '勾慧阳', 'A102', '20190002', '无', '公共选修', '2.00', '2019-12-20', '7', '99');
INSERT INTO `book_info` VALUES ('3', '国学导论', '刘老师', 'A103', '20190003', '本课程是导论性质的课程，依次概要讲授国学与西学、国学基础、经学、史学、子学、文学与艺术、佛道之学等内容，以期使学生初步了解国学的基本内容和研究方法，提升对中国传统文化的认知水平。', '公共选修', '2.00', '2019-12-26', '1', '100');
INSERT INTO `book_info` VALUES ('4', '电影的语言', '勾老师', 'A104', '20190004', '从语言的分类入手，介绍电影使用的语言与其他种类语言的不同，进而详细介绍电影语言在叙述故事、表达情感等方面的特点。通过该课程学习，使学生能够了解电影语言是--种利用视听刺激的合理安排向受众传播信息的感性语言，能够较系统地掌握电影语言的语法，即各种镜头调度的方法和各种声音运用的技巧。', '公共选课', '2.00', '2019-12-26', '2', '100');
INSERT INTO `book_info` VALUES ('5', '爱情心理学', '曾老师', 'A105', '20190005', '本课程是运用心理学理论有针对性解决学生成长发展过程中出现的问题的积极探索。本课程选用心理学的理论和思路，针对学生学习生活中经常出现的恋爱感情问题，采取学生感兴趣的方式方法，通过讲授、多媒体教学使学生强化对自身和异性的认识，加深对两性关系的了解，学习处理恋爱中的问题和心理困扰，提升爱的能力，完善人格，促进成长。', '公共选课', '2.00', '2019-12-26', '3', '100');
INSERT INTO `book_info` VALUES ('6', '高等数学提高班', '勾老师', 'A106', '20190006', '本课程以全国硕士研究生入学考试《高等数学》考试大纲为依据，在已学高等数学知识的基础上查缺补漏，并加以提高。主要讲授的内容有函数、极限与连续:一-元函数微分学;一-元函数积分学。使学生通过本课程的学习明确考研各知识点的要求及难易程度，帮助学生备考。', '公共选课', '2.00', '2019-12-26', '4', '100');

-- ----------------------------
-- Table structure for `class_info`
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(15) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', '马克思主义');
INSERT INTO `class_info` VALUES ('2', '哲学');
INSERT INTO `class_info` VALUES ('3', '社会科学总论');
INSERT INTO `class_info` VALUES ('4', '政治法律');
INSERT INTO `class_info` VALUES ('5', '军事');
INSERT INTO `class_info` VALUES ('6', '经济');
INSERT INTO `class_info` VALUES ('7', '文化');
INSERT INTO `class_info` VALUES ('8', '语言');
INSERT INTO `class_info` VALUES ('9', '文学');
INSERT INTO `class_info` VALUES ('10', '艺术');
INSERT INTO `class_info` VALUES ('11', '历史地理');
INSERT INTO `class_info` VALUES ('12', '自然科学总论');
INSERT INTO `class_info` VALUES ('13', ' 数理科学和化学');
INSERT INTO `class_info` VALUES ('14', '天文学、地球科学');
INSERT INTO `class_info` VALUES ('15', '生物科学');
INSERT INTO `class_info` VALUES ('16', '医药、卫生');
INSERT INTO `class_info` VALUES ('17', '农业科学');
INSERT INTO `class_info` VALUES ('18', '工业技术');
INSERT INTO `class_info` VALUES ('19', '交通运输');
INSERT INTO `class_info` VALUES ('20', '航空、航天');
INSERT INTO `class_info` VALUES ('21', '环境科学');
INSERT INTO `class_info` VALUES ('22', '综合');

-- ----------------------------
-- Table structure for `lend_list`
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list` (
  `ser_num` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `reader_id` bigint(20) NOT NULL,
  `lend_date` date DEFAULT NULL,
  `back_date` date DEFAULT NULL,
  PRIMARY KEY (`ser_num`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES ('13', '1', '1001', '2019-12-26', '2019-12-26');
INSERT INTO `lend_list` VALUES ('14', '2', '1001', '2019-12-26', '2019-12-26');
INSERT INTO `lend_list` VALUES ('15', '2', '1001', '2019-12-26', '2019-12-26');
INSERT INTO `lend_list` VALUES ('16', '2', '1001', '2019-12-26', null);

-- ----------------------------
-- Table structure for `reader_card`
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card` (
  `reader_id` bigint(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`reader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card` VALUES ('1001', '哈哈哈', '123456');
INSERT INTO `reader_card` VALUES ('1002', '狗慧阳', '123456');

-- ----------------------------
-- Table structure for `reader_info`
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info` (
  `reader_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`reader_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES ('1001', '哈哈哈', '男', '1999-07-27', '成都', '1234');
INSERT INTO `reader_info` VALUES ('1002', '狗慧阳', '女', '2019-12-20', '成都市', '66666666');
