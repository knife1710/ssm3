/*
Navicat MySQL Data Transfer

Source Server         : 1710
Source Server Version : 50518
Source Host           : 127.0.0.1:3306
Source Database       : education_test

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2018-04-21 09:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ta_classchange`
-- ----------------------------
DROP TABLE IF EXISTS `ta_classchange`;
CREATE TABLE `ta_classchange` (
  `CLASSCHANGEID` int(11) NOT NULL,
  `CLASSID` int(11) DEFAULT NULL,
  `ChangeType` varchar(255) DEFAULT NULL,
  `TEACHERID` int(11) DEFAULT NULL,
  `PERIOD` varchar(20) NOT NULL,
  `EXEDATE` date NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CLASSCHANGEID`),
  KEY `FK_RELATIONSHIP_10` (`CLASSID`),
  KEY `FK_RELATIONSHIP_11` (`TEACHERID`),
  CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`CLASSID`) REFERENCES `tb_class` (`CLASSID`),
  CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`TEACHERID`) REFERENCES `tb_teacher` (`TEACHERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�༶����ʦ';

-- ----------------------------
-- Records of ta_classchange
-- ----------------------------

-- ----------------------------
-- Table structure for `ta_student_change`
-- ----------------------------
DROP TABLE IF EXISTS `ta_student_change`;
CREATE TABLE `ta_student_change` (
  `CHANGEID` int(11) NOT NULL AUTO_INCREMENT,
  `FROM_CLASSID` int(11) DEFAULT NULL,
  `TO_CLASSID` int(11) DEFAULT NULL,
  `STUID` int(11) DEFAULT NULL,
  `CHANGETYPEID` int(11) DEFAULT NULL,
  `EXEDATE` date NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CHANGEID`),
  KEY `FK_RELATIONSHIP_1` (`STUID`),
  KEY `FK_RELATIONSHIP_3` (`TO_CLASSID`),
  KEY `FK_RELATIONSHIP_4` (`FROM_CLASSID`),
  KEY `CHANGETYPEID` (`CHANGETYPEID`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`STUID`) REFERENCES `tb_student` (`STUID`),
  CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`TO_CLASSID`) REFERENCES `tb_class` (`CLASSID`),
  CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`FROM_CLASSID`) REFERENCES `tb_class` (`CLASSID`),
  CONSTRAINT `ta_student_change_ibfk_1` FOREIGN KEY (`CHANGETYPEID`) REFERENCES `tb_state` (`STATEID`)
) ENGINE=InnoDB AUTO_INCREMENT=1231 DEFAULT CHARSET=utf8 COMMENT='ѧ��ת�࣬��ѧ����ѧ������';

-- ----------------------------
-- Records of ta_student_change
-- ----------------------------
INSERT INTO `ta_student_change` VALUES ('1159', '30', null, '694', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1160', '30', null, '695', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1161', '30', null, '696', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1162', '30', null, '697', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1163', '30', null, '698', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1164', '30', null, '699', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1165', '30', null, '700', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1166', '30', null, '701', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1167', '30', null, '702', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1168', '30', null, '703', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1169', '30', null, '704', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1170', '30', null, '705', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1171', '30', null, '706', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1172', '30', null, '707', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1173', '30', null, '708', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1174', '30', null, '709', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1175', '30', null, '710', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1176', '30', null, '711', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1177', '30', null, '712', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1178', '30', null, '713', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1179', '30', null, '714', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1180', '30', null, '715', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1181', '30', null, '716', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1182', '30', null, '717', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1183', '30', null, '718', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1184', '30', null, '719', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1185', '30', null, '720', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1186', '30', null, '721', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1187', '30', null, '722', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1188', '30', null, '723', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1189', '30', null, '724', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1190', '30', null, '725', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1191', '30', null, '726', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1192', '30', null, '727', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1193', '30', null, '728', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1194', '30', null, '729', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1195', '30', null, '730', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1196', '30', null, '731', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1197', '30', null, '732', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1198', '30', null, '733', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1199', '30', null, '734', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1200', '30', null, '735', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1201', '30', null, '736', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1202', '30', null, '737', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1203', '30', null, '738', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1204', '30', null, '739', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1205', '30', null, '740', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1206', '30', null, '741', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1207', '30', null, '742', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1208', '30', null, '743', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1209', '30', null, '744', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1210', '30', null, '745', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1211', '30', null, '746', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1212', '30', null, '747', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1213', '30', null, '748', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1214', '30', null, '749', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1215', '30', null, '750', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1216', '30', null, '751', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1217', '30', null, '752', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1218', '30', null, '753', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1219', '30', null, '754', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1220', '30', null, '755', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1221', '30', null, '756', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1222', '30', null, '757', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1223', '30', null, '758', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1224', '30', null, '759', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1225', '30', null, '760', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1226', '30', null, '761', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1227', '30', null, '762', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1228', '30', null, '763', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1229', '30', null, '764', '301', '2017-07-27', '开班');
INSERT INTO `ta_student_change` VALUES ('1230', '41', null, '765', '301', '2018-05-31', '开班');

-- ----------------------------
-- Table structure for `ta_user_operation`
-- ----------------------------
DROP TABLE IF EXISTS `ta_user_operation`;
CREATE TABLE `ta_user_operation` (
  `operationId` int(11) NOT NULL AUTO_INCREMENT,
  `userono` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`operationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ta_user_operation
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_change_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_change_type`;
CREATE TABLE `tb_change_type` (
  `CHANGETYPEID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPENAME` varchar(20) NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CHANGETYPEID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='1:ת��\r\n2.��ѧ\r\n3.��ѧ\r\n4.�ϰ�';

-- ----------------------------
-- Records of tb_change_type
-- ----------------------------
INSERT INTO `tb_change_type` VALUES ('1', '开班', '首次入班');
INSERT INTO `tb_change_type` VALUES ('2', '休学', null);
INSERT INTO `tb_change_type` VALUES ('3', '转班', null);
INSERT INTO `tb_change_type` VALUES ('4', '退学', null);
INSERT INTO `tb_change_type` VALUES ('5', '结课', null);
INSERT INTO `tb_change_type` VALUES ('6', '降班', null);

-- ----------------------------
-- Table structure for `tb_class`
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class` (
  `CLASSID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASSNAME` varchar(20) DEFAULT NULL,
  `classTypeId` int(11) DEFAULT NULL,
  `TEACHERID` int(11) DEFAULT NULL,
  `CLASS_GUIDEID` int(11) DEFAULT NULL,
  `JOB_GUIDEID` int(11) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `stateId` int(11) DEFAULT '1',
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CLASSID`),
  KEY `FK_RELATIONSHIP_18` (`CLASS_GUIDEID`),
  KEY `FK_RELATIONSHIP_9` (`TEACHERID`),
  KEY `FK_JOBGUIE12` (`JOB_GUIDEID`),
  CONSTRAINT `FK_JOBGUIE12` FOREIGN KEY (`JOB_GUIDEID`) REFERENCES `tb_guide` (`GUIDEID`),
  CONSTRAINT `FK_RELATIONSHIP_18` FOREIGN KEY (`CLASS_GUIDEID`) REFERENCES `tb_guide` (`GUIDEID`),
  CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`TEACHERID`) REFERENCES `tb_teacher` (`TEACHERID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_class
-- ----------------------------
INSERT INTO `tb_class` VALUES ('22', 'java1701', '201', '6', '2', '4', '2017-01-04', '2017-06-30', '102', '全日制转业余');
INSERT INTO `tb_class` VALUES ('23', 'java1702', '201', '4', '3', '4', '2017-01-04', '2017-07-18', '102', '业余');
INSERT INTO `tb_class` VALUES ('24', 'java1703', '201', '5', '2', '5', '2017-02-27', '2017-07-14', '102', '华夏班');
INSERT INTO `tb_class` VALUES ('25', 'java1704', '201', '3', '3', '4', '2017-03-27', '2017-08-29', '102', '');
INSERT INTO `tb_class` VALUES ('26', 'java1705', '201', '7', '2', '6', '2017-05-27', null, '101', '业余班');
INSERT INTO `tb_class` VALUES ('27', 'java1706', '201', '8', '2', '7', '2017-05-31', '2017-10-27', '102', '哈尔滨信息学院');
INSERT INTO `tb_class` VALUES ('28', 'java1708', '201', '16', '2', '4', '2017-07-27', null, '101', '');
INSERT INTO `tb_class` VALUES ('29', 'java1709', '201', '6', '3', '4', '2017-07-17', null, '101', '');
INSERT INTO `tb_class` VALUES ('30', 'java1710', '201', '1', '2', '4', '2017-07-27', null, '101', '');
INSERT INTO `tb_class` VALUES ('31', 'java1711', '201', '9', '3', '4', '2017-07-17', null, '101', '院校的班');
INSERT INTO `tb_class` VALUES ('32', 'java1712', '201', '7', '3', '5', '2017-09-27', '2018-03-05', '102', '');
INSERT INTO `tb_class` VALUES ('33', 'java1713', '201', '5', '3', '5', '2017-09-27', '2018-03-05', '102', '哈尔滨学院');
INSERT INTO `tb_class` VALUES ('34', 'java1714', '201', '14', '3', '5', '2017-10-15', null, '101', '业余班，大数据1704班合班');
INSERT INTO `tb_class` VALUES ('35', 'java1715', '201', '3', '2', '4', '2017-10-20', null, '101', '华夏及其他');
INSERT INTO `tb_class` VALUES ('36', 'UCD1701', '202', '22', '2', '6', '2017-01-04', null, '101', '');
INSERT INTO `tb_class` VALUES ('37', 'UCD1702', '202', '24', '2', '4', '2017-03-06', null, '101', '');
INSERT INTO `tb_class` VALUES ('38', 'UCD1703', '202', '23', '1', '6', '2017-03-27', null, '101', '');
INSERT INTO `tb_class` VALUES ('39', 'UCD1704', '201', '24', '1', '6', '2017-04-24', null, '101', '');
INSERT INTO `tb_class` VALUES ('40', 'UCD1705', '202', '27', '1', '6', '2017-05-22', null, '101', '');
INSERT INTO `tb_class` VALUES ('41', 'java1701', '201', '26', '2', '5', '2018-05-31', null, '101', '');
INSERT INTO `tb_class` VALUES ('42', 'java1812', '203', '9', '1', '6', '2018-05-01', null, '101', '这是一个神奇的班级');

-- ----------------------------
-- Table structure for `tb_exam`
-- ----------------------------
DROP TABLE IF EXISTS `tb_exam`;
CREATE TABLE `tb_exam` (
  `EXAMID` int(11) NOT NULL,
  `CLASSID` int(11) DEFAULT NULL,
  `NAME` varchar(20) NOT NULL,
  `PERIOD` varchar(20) NOT NULL,
  `EXEDATE` date NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EXAMID`),
  KEY `FK_RELATIONSHIP_12` (`CLASSID`),
  CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`CLASSID`) REFERENCES `tb_class` (`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_exam
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_examsocre`
-- ----------------------------
DROP TABLE IF EXISTS `tb_examsocre`;
CREATE TABLE `tb_examsocre` (
  `SCOREID` int(11) NOT NULL,
  `CLASSID` int(11) DEFAULT NULL,
  `EXAMID` int(11) DEFAULT NULL,
  `SCORE` int(11) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SCOREID`),
  KEY `FK_RELATIONSHIP_13` (`EXAMID`),
  KEY `FK_RELATIONSHIP_15` (`CLASSID`),
  CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`EXAMID`) REFERENCES `tb_exam` (`EXAMID`),
  CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`CLASSID`) REFERENCES `tb_class` (`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ѧ���ɼ�����';

-- ----------------------------
-- Records of tb_examsocre
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_guide`
-- ----------------------------
DROP TABLE IF EXISTS `tb_guide`;
CREATE TABLE `tb_guide` (
  `GUIDEID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL COMMENT '1:��ͨ������\r\n            2.��ҵ������',
  `state` int(11) DEFAULT '1',
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`GUIDEID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_guide
-- ----------------------------
INSERT INTO `tb_guide` VALUES ('1', '莫名', '1', '1', null);
INSERT INTO `tb_guide` VALUES ('2', '鲁大颖', '1', '1', null);
INSERT INTO `tb_guide` VALUES ('3', '周薇', '1', '1', null);
INSERT INTO `tb_guide` VALUES ('4', '李泽民', '2', '1', null);
INSERT INTO `tb_guide` VALUES ('5', '关键', '2', '1', null);
INSERT INTO `tb_guide` VALUES ('6', '张金强', '2', '1', null);
INSERT INTO `tb_guide` VALUES ('7', '张喻', '2', '1', null);
INSERT INTO `tb_guide` VALUES ('8', '李雪花', '1', '2', null);

-- ----------------------------
-- Table structure for `tb_homework`
-- ----------------------------
DROP TABLE IF EXISTS `tb_homework`;
CREATE TABLE `tb_homework` (
  `HOMEWORKID` int(11) NOT NULL,
  `CLASSID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `PERIOD` varchar(20) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL COMMENT '1:��ͨ������\r\n            2.��ҵ������',
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`HOMEWORKID`),
  KEY `FK_RELATIONSHIP_14` (`CLASSID`),
  CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`CLASSID`) REFERENCES `tb_class` (`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_homework
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_homeworkscore`
-- ----------------------------
DROP TABLE IF EXISTS `tb_homeworkscore`;
CREATE TABLE `tb_homeworkscore` (
  `HOMEWORKSOCREID` int(11) NOT NULL,
  `HOMEWORKID` int(11) DEFAULT NULL,
  `STUID` int(11) DEFAULT NULL,
  `WORKSCORE` varchar(20) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`HOMEWORKSOCREID`),
  KEY `FK_RELATIONSHIP_16` (`HOMEWORKID`),
  KEY `FK_RELATIONSHIP_17` (`STUID`),
  CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`HOMEWORKID`) REFERENCES `tb_homework` (`HOMEWORKID`),
  CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`STUID`) REFERENCES `tb_student` (`STUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_homeworkscore
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `roleno` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`roleno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '班主任', '班任');
INSERT INTO `tb_role` VALUES ('2', '教务', '教务人员');
INSERT INTO `tb_role` VALUES ('3', '教学总监', '所有权限');

-- ----------------------------
-- Table structure for `tb_school`
-- ----------------------------
DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE `tb_school` (
  `SCHOOLID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SCHOOLID`),
  UNIQUE KEY `unique_name` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_school
-- ----------------------------
INSERT INTO `tb_school` VALUES ('1', '东北林业大学', '211');
INSERT INTO `tb_school` VALUES ('2', '哈尔滨工业大学', '985');
INSERT INTO `tb_school` VALUES ('3', '哈尔滨工程大学', '211');
INSERT INTO `tb_school` VALUES ('4', '东北农业大学', '211');
INSERT INTO `tb_school` VALUES ('5', '黑龙江大学', '本科');
INSERT INTO `tb_school` VALUES ('6', '哈尔滨理工大学', '本科');
INSERT INTO `tb_school` VALUES ('7', '哈尔滨商业大学', '本科');
INSERT INTO `tb_school` VALUES ('8', '哈尔滨师范大学', '本科');
INSERT INTO `tb_school` VALUES ('9', '黑龙江工程大学', '本科');
INSERT INTO `tb_school` VALUES ('10', '黑龙江科技大学', '本科');
INSERT INTO `tb_school` VALUES ('11', '齐齐哈尔大学', '本科');
INSERT INTO `tb_school` VALUES ('12', '大庆师范学院', '本科');
INSERT INTO `tb_school` VALUES ('13', '牡丹江师范学院', '本科');
INSERT INTO `tb_school` VALUES ('14', '哈尔滨信息工程学院', '三表');
INSERT INTO `tb_school` VALUES ('15', '哈尔滨学院', '二表院校');
INSERT INTO `tb_school` VALUES ('16', '哈尔滨金融学院', '二表本科');
INSERT INTO `tb_school` VALUES ('17', '绥化学院', '二表院校');
INSERT INTO `tb_school` VALUES ('18', '佳木斯大学', '二表院校');
INSERT INTO `tb_school` VALUES ('19', '湖州师范学院', '本科');
INSERT INTO `tb_school` VALUES ('20', '高中，中专', null);
INSERT INTO `tb_school` VALUES ('21', '初中', null);
INSERT INTO `tb_school` VALUES ('22', '哈尔滨广厦学院', '三表');
INSERT INTO `tb_school` VALUES ('23', '西安思源学院', '本科');
INSERT INTO `tb_school` VALUES ('24', '黑龙省工程学院昆仑旅游学院', '专科');
INSERT INTO `tb_school` VALUES ('25', '黑龙江东方学院', '三表');
INSERT INTO `tb_school` VALUES ('26', '吉林化工学院', '');
INSERT INTO `tb_school` VALUES ('27', '西安科技大学', '211');
INSERT INTO `tb_school` VALUES ('28', '黑龙江农垦职业学院', '专科');
INSERT INTO `tb_school` VALUES ('29', '哈尔滨石油学院', '三表');
INSERT INTO `tb_school` VALUES ('30', '哈尔滨华德学院', '三表');
INSERT INTO `tb_school` VALUES ('31', '哈尔滨远东理工学院', '三表');
INSERT INTO `tb_school` VALUES ('32', '齐齐哈尔工程学院', '');
INSERT INTO `tb_school` VALUES ('33', '黑龙江工业大学', '');
INSERT INTO `tb_school` VALUES ('34', '黑龙江信息技术职业学院', '专科');
INSERT INTO `tb_school` VALUES ('35', '哈尔滨应用职业技术学院', null);
INSERT INTO `tb_school` VALUES ('36', '黑龙江农业工程职业学院', null);
INSERT INTO `tb_school` VALUES ('37', '哈尔滨铁道职业技术学院', null);
INSERT INTO `tb_school` VALUES ('38', '黑龙江林业职业技术学院', null);
INSERT INTO `tb_school` VALUES ('39', '哈尔滨职业技术学院', null);
INSERT INTO `tb_school` VALUES ('40', '黑龙江生物科技职业学院', null);
INSERT INTO `tb_school` VALUES ('41', '黑龙江农业经济职业学院', null);
INSERT INTO `tb_school` VALUES ('42', '黑龙江农科职业学院', null);
INSERT INTO `tb_school` VALUES ('45', '黑龙江大学伊春分校', null);
INSERT INTO `tb_school` VALUES ('46', '东北农业大学成栋学院', null);
INSERT INTO `tb_school` VALUES ('49', '辽宁大学', null);
INSERT INTO `tb_school` VALUES ('50', '黑龙江工商学院', null);
INSERT INTO `tb_school` VALUES ('51', '黑龙江农业经济职业学院\r\n黑龙江农业经济职业学院\r\n', null);
INSERT INTO `tb_school` VALUES ('52', '吉林大学', '985');
INSERT INTO `tb_school` VALUES ('53', '国防科学技术大学', null);
INSERT INTO `tb_school` VALUES ('54', '黑龙江外国语学院', null);
INSERT INTO `tb_school` VALUES ('55', '大庆职业学院\r\n大庆职业学院\r\n佳木斯大学', null);
INSERT INTO `tb_school` VALUES ('56', '黑龙江幼儿师范', null);
INSERT INTO `tb_school` VALUES ('57', '黑龙江工程学院', null);
INSERT INTO `tb_school` VALUES ('58', '黑龙江省艺术职业学院', null);
INSERT INTO `tb_school` VALUES ('59', '哈尔滨剑桥学院', null);
INSERT INTO `tb_school` VALUES ('60', '哈尔滨广播电视大学', null);
INSERT INTO `tb_school` VALUES ('61', '黑龙江艺术职业学院', null);
INSERT INTO `tb_school` VALUES ('62', '黑龙江旅游职业技术学院', null);
INSERT INTO `tb_school` VALUES ('63', '黑龙江司法警官学院', null);
INSERT INTO `tb_school` VALUES ('64', '中国人民解放军西安通信学院', null);
INSERT INTO `tb_school` VALUES ('65', '黑龙江省医药技工学校', null);
INSERT INTO `tb_school` VALUES ('66', '通化师范学院', null);
INSERT INTO `tb_school` VALUES ('67', '昆明艺术职业学院', null);
INSERT INTO `tb_school` VALUES ('68', '河南工学院', null);
INSERT INTO `tb_school` VALUES ('69', '哈尔滨传媒学院', null);
INSERT INTO `tb_school` VALUES ('70', '大连机电学院', null);
INSERT INTO `tb_school` VALUES ('72', '吉林师范大学', null);
INSERT INTO `tb_school` VALUES ('73', '河北工程大学', null);
INSERT INTO `tb_school` VALUES ('74', '黑龙江八一农垦大学', null);
INSERT INTO `tb_school` VALUES ('75', '黑龙江粮食职业学院', null);
INSERT INTO `tb_school` VALUES ('76', '劳动技师学院', null);
INSERT INTO `tb_school` VALUES ('77', '中国社科院', null);
INSERT INTO `tb_school` VALUES ('78', '宝鸡文理学院', null);
INSERT INTO `tb_school` VALUES ('79', '青岛农业大学', null);

-- ----------------------------
-- Table structure for `tb_state`
-- ----------------------------
DROP TABLE IF EXISTS `tb_state`;
CREATE TABLE `tb_state` (
  `STATEID` int(11) NOT NULL AUTO_INCREMENT,
  `STATENAME` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`STATEID`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8 COMMENT='��Σ�\r\n�����ϿΣ�\r\n��ѧ\r\n��ѧ\r\n����\r\n������Ա\r\n';

-- ----------------------------
-- Records of tb_state
-- ----------------------------
INSERT INTO `tb_state` VALUES ('1', '在读', '1', null);
INSERT INTO `tb_state` VALUES ('2', '结课', '1', '就业类型');
INSERT INTO `tb_state` VALUES ('3', '就业', '1', null);
INSERT INTO `tb_state` VALUES ('4', '考研，专升本', '1', null);
INSERT INTO `tb_state` VALUES ('5', '考公务员，当兵', '1', null);
INSERT INTO `tb_state` VALUES ('6', '退学', '1', null);
INSERT INTO `tb_state` VALUES ('7', '延迟就业', '1', null);
INSERT INTO `tb_state` VALUES ('8', '转行', '1', null);
INSERT INTO `tb_state` VALUES ('9', '未就业', '1', null);
INSERT INTO `tb_state` VALUES ('10', '休学', '1', null);
INSERT INTO `tb_state` VALUES ('11', '就业薪水保密', '1', null);
INSERT INTO `tb_state` VALUES ('21', '自主就业', '2', '推荐方式');
INSERT INTO `tb_state` VALUES ('22', '基地推荐', '2', null);
INSERT INTO `tb_state` VALUES ('23', '校招', '3', null);
INSERT INTO `tb_state` VALUES ('31', '小学', '3', '学历');
INSERT INTO `tb_state` VALUES ('32', '初中', '3', '学历');
INSERT INTO `tb_state` VALUES ('33', '高中', '3', '学历');
INSERT INTO `tb_state` VALUES ('34', '中专', '3', '学历');
INSERT INTO `tb_state` VALUES ('35', '专科', '3', '学历');
INSERT INTO `tb_state` VALUES ('36', '本科', '3', '学历');
INSERT INTO `tb_state` VALUES ('37', '硕士', '3', '学历');
INSERT INTO `tb_state` VALUES ('38', '博士', '3', '学历');
INSERT INTO `tb_state` VALUES ('101', '开班', '4', '班级状态');
INSERT INTO `tb_state` VALUES ('102', '结班', '4', '班级状态');
INSERT INTO `tb_state` VALUES ('201', 'java', '5', '科目');
INSERT INTO `tb_state` VALUES ('202', 'UI', '5', null);
INSERT INTO `tb_state` VALUES ('203', 'WEB', '5', null);
INSERT INTO `tb_state` VALUES ('204', '大数据', '5', null);
INSERT INTO `tb_state` VALUES ('301', '开班', '6', '状态');
INSERT INTO `tb_state` VALUES ('302', '转班', '6', null);
INSERT INTO `tb_state` VALUES ('303', '降班', '6', null);
INSERT INTO `tb_state` VALUES ('304', '休学', '6', null);
INSERT INTO `tb_state` VALUES ('305', '退学', '6', null);
INSERT INTO `tb_state` VALUES ('306', '结班', '6', null);
INSERT INTO `tb_state` VALUES ('401', '就业', '7', null);
INSERT INTO `tb_state` VALUES ('402', '考研，专升本', '7', null);
INSERT INTO `tb_state` VALUES ('403', '考公务员，当兵', '7', null);
INSERT INTO `tb_state` VALUES ('404', '延迟就业', '7', null);
INSERT INTO `tb_state` VALUES ('405', '转行', '7', null);
INSERT INTO `tb_state` VALUES ('406', '未就业', '7', null);
INSERT INTO `tb_state` VALUES ('407', '就业薪水保密', '7', null);

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `STUID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `CLASSID` int(11) NOT NULL,
  `degreeid` int(11) DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `IDCARD` varchar(50) DEFAULT NULL,
  `TEL` varchar(80) DEFAULT NULL,
  `FTEL` varchar(80) DEFAULT NULL,
  `MTEL` varchar(80) DEFAULT NULL,
  `SCHOOLID` int(11) DEFAULT NULL,
  `MAJOR` varchar(30) DEFAULT NULL,
  `GRADE` varchar(30) DEFAULT NULL,
  `CLASSGUIDEID` int(11) DEFAULT NULL,
  `JOBGUIDEID` int(11) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `INTENDCITY` varchar(20) DEFAULT NULL,
  `WORKCITY` varchar(30) DEFAULT NULL,
  `Company` varchar(40) DEFAULT NULL,
  `JOB` varchar(30) DEFAULT NULL,
  `endClassTime` date DEFAULT NULL,
  `WORKTIME` date DEFAULT NULL,
  `SALARY` varchar(50) DEFAULT NULL,
  `SALARYOFYEAR` int(11) DEFAULT NULL,
  `recommendTypeId` int(11) DEFAULT NULL,
  `STATEID` int(11) DEFAULT '1',
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`STUID`),
  KEY `FK_RELATIONSHIP_2` (`CLASSID`),
  KEY `FK_RELATIONSHIP_20` (`SCHOOLID`),
  KEY `FK_RELATIONSHIP_5` (`JOBGUIDEID`),
  KEY `FK_RELATIONSHIP_6` (`CLASSGUIDEID`),
  KEY `FK_RELATIONSHIP_8` (`STATEID`),
  KEY `FK_Teahcerid` (`teacherId`),
  CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`CLASSID`) REFERENCES `tb_class` (`CLASSID`),
  CONSTRAINT `FK_RELATIONSHIP_20` FOREIGN KEY (`SCHOOLID`) REFERENCES `tb_school` (`SCHOOLID`),
  CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`JOBGUIDEID`) REFERENCES `tb_guide` (`GUIDEID`),
  CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`CLASSGUIDEID`) REFERENCES `tb_guide` (`GUIDEID`),
  CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`STATEID`) REFERENCES `tb_state` (`STATEID`),
  CONSTRAINT `FK_Teahcerid` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`teacherId`)
) ENGINE=InnoDB AUTO_INCREMENT=766 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('694', '蔡云峰', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('695', '蔡志梅', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('696', '陈衍舟', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '通信工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('697', '陈志钰', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('698', '程心舒', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('699', '崔洋', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('700', '邓俊兵', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '北京', '北京', '百度', '软件开发工程师', null, '2017-08-08', '16*15', '204000', '21', '2', '');
INSERT INTO `tb_student` VALUES ('701', '丁双恩', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息与计算科学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('702', '董埕丞', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('703', '符新雨', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('704', '高雨昕', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('705', '韩吴煜', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息与计算科学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('706', '贾新霞', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('707', '江涛', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('708', '姜凯元', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('709', '柯茂枝', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('710', '李艾青', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('711', '李晨阳', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '通信工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('712', '李昊', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('713', '李明哲', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '通信工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('714', '李帅', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息与计算科学专业', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('715', '李先军', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('716', '李相如', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('717', '李鑫', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('718', '李连杰', '男', '30', '36', null, '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('719', '梁浩', '男', '30', '36', null, '1234567965214', '13696547895', '119', '114', '1', '信息系统与信息管理', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('720', '刘家树', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('721', '刘连', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('722', '刘帅', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('723', '龙颢天', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('724', '马超', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('725', '毛鹤', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('726', '佘志强', '男', '30', '37', '1', '1234567965214', '13696547895', '119', '114', '1', '电子信与通信工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('727', '申子良', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('728', '苏旋', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('729', '孙明雨', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('730', '唐丽', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('731', '唐学俊', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('732', '王东浩', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('733', '王旭东', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息与计算科学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('734', '王雪琪', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('735', '王颖', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('736', '王忠', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('737', '向伟', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('738', '徐梓焜', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('739', '许鹏宇', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('740', '薛庭政', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('741', '杨炳烨', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('742', '俞海涓', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('743', '张刚强', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('744', '张洪睿', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('745', '张鑫', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('746', '张金鑫', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('747', '张宇', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('748', '赵润方', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('749', '赵亚莉', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息系统与信息管理', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('750', '支林鹏', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('751', '周大福', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '通信工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('752', '周洋', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('753', '朱家琨', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('754', '朱江', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('755', '朱艳茹', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '计算机科学与技术', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('756', '梁昊', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息与计算科学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('757', '庞尧声', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息与计算科学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('758', '杨程', '女', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '数学与应用数学', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('759', '郭雷', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('760', '李天龙', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '信息管理与信息系统', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('761', '季天爵', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2015', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('762', '刘佳伟', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '3', '', '', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('763', '朱立豪', '男', '30', '36', '1', '1234567965214', '13696547895', '119', '114', '1', '', '', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('764', '侯运生', '男', '30', '37', '1', '1234567965214', '13696547895', '119', '114', '1', '软件工程', '2013', '2', null, '好地方', '', '', '', '', null, null, '', null, null, '1', '');
INSERT INTO `tb_student` VALUES ('765', '', '男', '41', '36', '26', '', '', '', '', '78', '', '', '2', '5', '', null, null, null, null, null, null, null, null, null, '1', '');

-- ----------------------------
-- Table structure for `tb_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `teacherId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `teacherTypeId` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`teacherId`),
  KEY `teacherTypeFk` (`teacherTypeId`),
  CONSTRAINT `teacherTypeFk` FOREIGN KEY (`teacherTypeId`) REFERENCES `tb_state` (`STATEID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('1', '戚爱斌', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('2', '代俊朴', '204', '1', null);
INSERT INTO `tb_teacher` VALUES ('3', '闫立伟', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('4', '黄秋生', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('5', '孙超', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('6', '金鑫', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('7', '赵飞翔', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('8', '李海亮', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('9', '高大山', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('10', '林松', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('11', '陈晨', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('12', '欧阳广婧', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('13', '陆雯', '201', '1', null);
INSERT INTO `tb_teacher` VALUES ('14', '陈真', '204', '1', null);
INSERT INTO `tb_teacher` VALUES ('15', '李鑫磊', '204', '1', null);
INSERT INTO `tb_teacher` VALUES ('16', '周英会', '204', '1', null);
INSERT INTO `tb_teacher` VALUES ('17', '杨威', '204', '1', null);
INSERT INTO `tb_teacher` VALUES ('18', '李春静', '204', '1', null);
INSERT INTO `tb_teacher` VALUES ('19', '金彧峰', '203', '1', null);
INSERT INTO `tb_teacher` VALUES ('20', '鲍晗', '203', '1', null);
INSERT INTO `tb_teacher` VALUES ('21', '张俊鹏', '203', '1', null);
INSERT INTO `tb_teacher` VALUES ('22', '薛淑娟', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('23', '伞立静', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('24', '关晓爱', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('25', '王东瑶', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('26', '白云山', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('27', '马庆华', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('28', '朱自清', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('29', '王布慧', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('30', '史进', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('31', '韩如一', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('32', '刘欣欣', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('33', '李聪明', '202', '1', null);
INSERT INTO `tb_teacher` VALUES ('34', '孙中一', '202', '1', null);

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `userno` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `realName` varchar(20) NOT NULL,
  `roleno` int(11) DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`userno`),
  UNIQUE KEY `unique_userName` (`userName`) USING BTREE,
  KEY `fk_roleno` (`roleno`),
  CONSTRAINT `fk_roleno` FOREIGN KEY (`roleno`) REFERENCES `tb_role` (`roleno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('2', 'taoyuan', '4f6c6630db36f6eb924a90ebd80103af', '陶媛', '2', '教务主管');
INSERT INTO `tb_user` VALUES ('3', 'modan', 'eddb4cacf4371b806465d7fa8bab33f8', '莫丹', '1', '班主任');
INSERT INTO `tb_user` VALUES ('4', 'zhouwei', 'ss', '周薇', '1', null);
INSERT INTO `tb_user` VALUES ('5', 'luying', '96715b5216b8ea9b8112383e4eeccf0d', '鲁颖', '1', null);
INSERT INTO `tb_user` VALUES ('6', 'qab', '27bcd70b886475295dbd90061bb2f4d6', '戚爱斌', '3', null);
