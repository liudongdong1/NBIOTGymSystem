#CREATE DATABASE GymManageSystem;
USE GymManageSystem;

SET NAMES utf8;
START TRANSACTION;
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` ( `admin_id` BIGINT NOT NULL PRIMARY KEY, `password` VARCHAR ( 15 ) NOT NULL, `username` VARCHAR ( 15 ) DEFAULT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `admin`
VALUES
	( 123456, '123456', 'admin' );

DROP TABLE IF EXISTS `instrument_info`;
CREATE TABLE `instrument_info` (
	`instr_id` BIGINT NOT NULL PRIMARY KEY,
	`name` VARCHAR ( 50 ) NOT NULL,
	`price` DECIMAL ( 10, 2 ) NOT NULL,
	`order_date` VARCHAR (20) NOT NULL,
	`quantity` INT DEFAULT NULL,
	`class_id` INT DEFAULT NULL,
	`description` text
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `instrument_info` MODIFY `instr_id` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1;
INSERT INTO `instrument_info`
VALUES
	( 1001, '跑步机（有氧）', '4000', '2018-06-14 09:38:07',3, 2,"跑步机是个便利，省时，又不受天气影响的器材，而经常跑步可以保护心脏，心脏是人体易衰老的重要器官，心脏的功能正常对其他内脏器官功能有直接影响"),
	( 1002, '椭圆机（有氧）', '4000', '2018-06-14 09:38:07',3, 2,"椭圆机又叫太空漫步机，作为一种用于心肺功能锻炼效果很好的器械，它受到不少使用者和专业人士的喜爱。椭圆机的斜坡设计、阻力抵抗调节功能、编排好的运动模式以及专门对下肢某组织肌肉进行锻炼的能力让它成为专业健身房和家庭起居室里常见的运动器械。"),
	( 1003, '蝴蝶机（胸大肌）', '4000', '2018-06-14 09:38:07',3, 2,"蝴蝶机是进行飞鸟夹胸时所使用的一种机械。主要锻炼胸大肌为主的胸部诸肌，初级使用者多会背部紧贴座椅，以便用力；较有经验的用者则会背部离椅，同时锻炼腹部肌肉。"),
	( 1004, '高位下拉机（背阔肌）', '4000', '2018-06-14 09:38:07',3, 2,"高位下拉单功能训练器，是锻炼背阔肌的肌肉，让背部更加宽阔。使用高位下拉训练器一般都是进行“宽握胸前下拉”动作。"),
	( 1005, '二头弯举机（二头）', '4000', '2018-06-14 09:38:07',3, 2,"这是一个锻炼二头肌的器械，能够固定手肘以防止大臂的抖动，二头肌发力时，带动手臂向上做弯举的动作，抬起哑铃的过程中翻转手腕，但手腕时刻保持中立状态，以免借力。"),
	( 1006, '腿弯举机（大腿后侧）', '4000', '2018-06-14 09:38:07',3, 2,"坐姿腿弯举（Seated Leg Curl）和其他腿弯举一样都是锻炼股二头肌的孤立动作，专业运动员赛前采用此练习可拉出“钢丝绳”般的股二头肌。"),
	( 1007, '肩推机（肩膀前束和中束）', '4000', '2018-06-14 09:38:07',3, 2,"这个器械可以很好的训练到三角肌前束和中束，也就是我们经常说的肩膀
首先调节座椅高度，让手柄处于耳朵高度最合适，选择合适的重量，建议从最轻的开始"),
	( 1008, '腿弯举机（大腿前侧）', '4000', '2018-06-14 09:38:07',3, 2,"这个器械可以帮助你锻炼到股四头肌，股四头肌是人体的大腿肌肉，位于大腿肌肉前面，要使大腿强壮首要是发展股四头肌，因为股四头肌是人体最大、最有力的肌肉之一。"),
	( 1009, '蝴蝶机（肩膀后束）', '4000', '2018-06-14 09:38:07',3, 2,"这个器械可以帮助你锻炼到肩膀的后束肌肉，虽然我们无法看到自己的肩膀后束，但是后束肌肉的支撑可以让肩膀看起来更加饱满"),
	( 1010, '坐姿划船机（背）', '4000', '2018-06-14 09:38:07',3, 2,"坐姿划船器是一种健身器械，在练习背阔肌、大圆肌、后三角肌的同时，还可以带到肱二头肌、斜方肌等的练习");


DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` ( `class_id` INT NOT NULL PRIMARY KEY, `class_name` VARCHAR ( 15 ) NOT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `class_info`
VALUES
	( 1, '椭圆机（有氧）' ),
	( 2, '跑步机（有氧）' ),
	( 3, '腿弯举机（大腿前侧）' ),
	( 4, '腿弯举机（大腿后侧）' ),
	( 5, '蝴蝶机（胸大肌）' ),
	( 6, '肩推机（肩膀前束和中束）' ),
	( 7, '蝴蝶机（肩膀后束）' ),
	( 8, '高位下拉机（背阔肌）' ),
	( 9, '坐姿划船机（背）' ),
	( 10, '二头弯举机（二头）' );

DROP TABLE IF EXISTS `instr_fixlist`;
CREATE TABLE `instr_fixlist` (
	`fix_id` BIGINT NOT NULL PRIMARY KEY,
	`instr_id` BIGINT NOT NULL,
	`fix_date` VARCHAR (20) DEFAULT NULL,
	`fix_reason` VARCHAR ( 100 ) DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `instr_fixlist` MODIFY `fix_id` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1;
INSERT INTO `instr_fixlist`
VALUES
	( 1, 1001, '2018-06-14 09:38:07', '螺丝掉了' ),
	( 2, 1002, '2018-06-14 09:38:07', '跑步机屏幕显示问题'),
	( 3, 1007, '2018-06-14 09:38:07', '配重片脱落'),
	( 4, 1004, '2018-06-14 09:38:07', '握手损坏'),
	( 5, 1006, '2018-06-14 09:38:07', '握手损坏'),
	( 6, 1010, '2018-06-14 09:38:07', '座椅调节功能损坏'),
	( 7, 1002, '2018-06-14 09:38:07', '椭圆机握手损坏'),
	( 8, 1001, '2018-06-14 09:38:07', '螺丝掉了'),
	( 9, 1003, '2018-06-14 09:38:07', '配重片脱落'),
	(10, 1006, '2018-06-14 09:38:07',	'螺丝掉了');

DROP TABLE IF EXISTS `Member_info`;
CREATE TABLE `Member_info` (
	`member_id` BIGINT NOT NULL PRIMARY KEY,
	`name` VARCHAR ( 10 ) NOT NULL,
	`sex` VARCHAR ( 2 ) NOT NULL,
	`birth` VARCHAR (20) NOT NULL,
	`registor_date` VARCHAR (20) DEFAULT NULL,
	`address` VARCHAR ( 50 ) NOT NULL,
	`phone` VARCHAR ( 15 ) NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `Member_info` MODIFY `member_id` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 10000;
INSERT INTO `Member_info` ( name, sex, birth, address, phone,registor_date )
VALUES
	( '张华', '男', '2018-06-14 09:38:07', '天津市', '12345678900' ,'2019-06-14 09:38:07'),
	( '王小伟', '男', '2018-06-14 09:38:07', '北京市', '12345678909','2019-06-14 09:38:07' ),
	( '王莞尔', '女', '2018-06-14 09:38:07', '浙江省杭州市', '12345678908','2019-06-14 09:38:07' ),
	( '张明华', '男', '2018-06-14 09:38:07', '陕西省西安市', '12345678907','2019-06-14 09:38:07' ),
	( '李一琛', '男', '2018-06-14 09:38:07', '陕西省西安市', '15123659875','2019-06-14 09:38:07' ),
	( '李二飞', '男', '2018-06-14 09:38:07', '山东省青岛市', '15369874123','2019-06-14 09:38:07');

DROP TABLE IF EXISTS `MemberPssw_card`;
CREATE TABLE `MemberPssw_card` (
   `member_id` BIGINT NOT NULL PRIMARY KEY,
   `username` VARCHAR ( 15 ) NOT NULL,
   `password` VARCHAR ( 15 ) NOT NULL
   ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `MemberPssw_card`
VALUES
	( 10000, '张华', '123456' ),
	( 10001, '王小伟', '123456' ),
	( 10002, '王莞尔', '123456' ),
	( 10003, '张明华', '123456' ),
	( 10004, '李一琛', '123456' ),
	( 10005, '李二飞', '123456' );

DROP TABLE IF EXISTS `UseInfo_list`;
CREATE TABLE `UseInfo_list` (
	`ser_num` BIGINT NOT NULL PRIMARY KEY,
	`member_id` BIGINT NOT NULL,
	`instr_id` BIGINT NOT NULL,
	`begin_date` VARCHAR (20) DEFAULT NULL,
	`end_date` VARCHAR (20) DEFAULT NULL,
	`sensor_info` text
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `UseInfo_list` MODIFY `ser_num` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1;
INSERT INTO `UseInfo_list`
VALUES
	( 1, 10000, 1001, '2019-06-14 08:38:07', '2019-06-14 09:38:07' ,'设备使用采集的传感器参数watitofill' ),
	( 2, 10001, 1001, '2019-06-14 01:38:07', '2019-06-14 02:38:07' ,'设备使用采集的传感器参数watitofill'),
	( 3, 10003, 1001, '2019-06-14 03:38:07', '2019-06-14 04:38:07' ,'设备使用采集的传感器参数watitofill');

DROP TABLE IF EXISTS `Exercise_diary`;
CREATE TABLE `Exercise_diary`(
	record_id BIGINT NOT NULL PRIMARY KEY,
	x FLOAT NOT NULL ,
	y FLOAT NOT NULL ,
	z FLOAT NOT NULL ,
	timeStr varchar(20) default NUll
)ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `Exercise_diary` MODIFY record_id BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1;
INSERT INTO `Exercise_diary`
VALUES
			 ( 1,0,0,0,'20190725T140520Z'),
			 ( 2,0,1,1,'20190725T140525Z'),
			 ( 3,1,1,1,'20190725T140530Z');
COMMIT;