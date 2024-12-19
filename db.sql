/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiangcunyanxue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiangcunyanxue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiangcunyanxue`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,1,'收货人2','17703786902','地址2',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,3,'收货人4','17703786904','地址4',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,2,'收货人5','17703786905','地址5',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,1,'收货人8','17703786908','地址8',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,1,'收货人9','17703786909','地址9',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,1,'收货人10','17703786910','地址10',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,1,'收货人12','17703786912','地址12',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,2,'收货人13','17703786913','地址13',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,1,'收货人14','17703786914','地址14',1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(15,4,'张胜男','17788885555','地址111',2,'2023-04-19 09:44:31','2023-04-19 09:44:30','2023-04-19 09:44:31');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,4,'gdsgsdg','2023-04-19 09:43:10',NULL,NULL,1,1,'2023-04-19 09:43:10'),(2,4,'附件','2023-04-19 09:43:12',NULL,NULL,2,1,'2023-04-19 09:43:12'),(3,4,'放入好得很','2023-04-19 09:43:14',NULL,NULL,2,1,'2023-04-19 09:43:14'),(4,4,NULL,NULL,'放入给回复的和','2023-04-19 09:43:25',NULL,2,'2023-04-19 09:43:26'),(5,4,NULL,NULL,'回归结果','2023-04-19 09:43:29',NULL,2,'2023-04-19 09:43:30'),(6,4,NULL,NULL,'哈哈哈','2023-04-19 09:43:32',NULL,2,'2023-04-19 09:43:33'),(7,4,NULL,NULL,'规划局很干净','2023-04-19 09:43:35',NULL,2,'2023-04-19 09:43:35'),(8,4,NULL,NULL,'发生的回复','2023-04-19 09:48:17',NULL,2,'2023-04-19 09:48:18');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1个哈哈哈或','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-18 16:15:35'),(18,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-18 16:15:35'),(19,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-18 16:15:35'),(20,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-18 16:15:35'),(21,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-18 16:15:35'),(22,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-18 16:15:35'),(23,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-18 16:15:35'),(24,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-18 16:15:35'),(25,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-18 16:15:35'),(26,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-04-18 16:15:35'),(27,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-18 16:15:35'),(28,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-18 16:15:35'),(29,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-18 16:15:35'),(30,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-18 16:15:35'),(31,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-18 16:15:36'),(32,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-18 16:15:36'),(33,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-18 16:15:36'),(34,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-18 16:15:36'),(35,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-18 16:15:36'),(36,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-18 16:15:36'),(37,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-18 16:15:36'),(38,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-18 16:15:36'),(39,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-18 16:15:36'),(40,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-18 16:15:36'),(41,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-18 16:15:36'),(42,'jingdian_xingji_types','景点星级',1,'一星',NULL,NULL,'2023-04-18 16:15:36'),(43,'jingdian_xingji_types','景点星级',2,'二星',NULL,NULL,'2023-04-18 16:15:36'),(44,'jingdian_xingji_types','景点星级',3,'三星',NULL,NULL,'2023-04-18 16:15:36'),(45,'jingdian_types','景点类型',1,'景点类型1',NULL,NULL,'2023-04-18 16:15:36'),(46,'jingdian_types','景点类型',2,'景点类型2',NULL,NULL,'2023-04-18 16:15:36'),(47,'jingdian_types','景点类型',3,'景点类型3',NULL,NULL,'2023-04-18 16:15:36'),(48,'jingdian_types','景点类型',4,'景点类型4',NULL,NULL,'2023-04-18 16:15:36'),(49,'jingdian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-18 16:15:36'),(50,'jingdian_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-18 16:15:36'),(51,'jingdian_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-18 16:15:36'),(52,'jingdian_order_types','订单类型',101,'已预约',NULL,NULL,'2023-04-18 16:15:36'),(53,'jingdian_order_types','订单类型',102,'已取消预约',NULL,NULL,'2023-04-18 16:15:36'),(54,'jingdian_order_types','订单类型',103,'已使用门票',NULL,NULL,'2023-04-18 16:15:36'),(55,'jingdian_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-18 16:15:36'),(56,'jingdian_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-18 16:15:36'),(57,'yanxue_types','研学类型',1,'研学类型1',NULL,NULL,'2023-04-18 16:15:36'),(58,'yanxue_types','研学类型',2,'研学类型2',NULL,NULL,'2023-04-18 16:15:36'),(59,'yanxue_types','研学类型',3,'研学类型3',NULL,NULL,'2023-04-18 16:15:36'),(60,'yanxue_types','研学类型',4,'研学类型4',NULL,NULL,'2023-04-18 16:15:36'),(61,'yanxue_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-18 16:15:36'),(62,'yanxue_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-18 16:15:36'),(63,'yanxue_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-18 16:15:36'),(64,'yanxue_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-18 16:15:36'),(65,'yanxue_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-18 16:15:36'),(66,'yanxue_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-18 16:15:36'),(67,'forum_types','帖子类型',1,'红色旅游',NULL,NULL,'2023-04-18 16:15:36'),(68,'forum_types','帖子类型',2,'周边古村落',NULL,NULL,'2023-04-18 16:15:36'),(69,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-18 16:15:36'),(70,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-18 16:15:36'),(71,'yanxue_types','研学类型',5,'研学类型5',NULL,'','2023-04-19 09:48:41');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',60,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,'帖子标题2',1,NULL,'发布内容2',272,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,'帖子标题3',2,NULL,'发布内容3',241,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,'帖子标题4',1,NULL,'发布内容4',151,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,'帖子标题5',1,NULL,'发布内容5',236,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,'帖子标题6',2,NULL,'发布内容6',70,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,'帖子标题7',3,NULL,'发布内容7',481,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,'帖子标题8',1,NULL,'发布内容8',376,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,'帖子标题9',2,NULL,'发布内容9',345,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,'帖子标题10',2,NULL,'发布内容10',315,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,'帖子标题11',1,NULL,'发布内容11',183,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,'帖子标题12',1,NULL,'发布内容12',453,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,'帖子标题13',1,NULL,'发布内容13',112,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,'帖子标题14',3,NULL,'发布内容14',183,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50','2023-04-18 16:15:50'),(16,'帖子21222',4,NULL,'固定死发的是个',NULL,1,1,'2023-04-19 09:47:28',NULL,'2023-04-19 09:47:28'),(17,NULL,NULL,1,'哈哈哈哈',16,NULL,2,'2023-04-19 09:48:48',NULL,'2023-04-19 09:48:48');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称  Search111 ',
  `jingdian_uuid_number` varchar(200) DEFAULT NULL COMMENT '景点编号',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点照片',
  `jingdian_address` varchar(200) DEFAULT NULL COMMENT '景点位置',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jingdian_xingji_types` int(11) DEFAULT NULL COMMENT '景点星级 Search111',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型 Search111',
  `jingdian_kucun_number` int(11) DEFAULT NULL COMMENT '剩余门票数',
  `jingdian_old_money` decimal(10,2) DEFAULT NULL COMMENT '景点原价 ',
  `jingdian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/张',
  `jingdian_clicknum` int(11) DEFAULT NULL COMMENT '景点热度',
  `jingdian_content` longtext COMMENT '景点介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jingdian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_uuid_number`,`jingdian_photo`,`jingdian_address`,`zan_number`,`cai_number`,`jingdian_xingji_types`,`jingdian_types`,`jingdian_kucun_number`,`jingdian_old_money`,`jingdian_new_money`,`jingdian_clicknum`,`jingdian_content`,`shangxia_types`,`jingdian_delete`,`insert_time`,`create_time`) values (1,'景点名称1','1681805750958','upload/jingdian1.jpg','景点位置1',370,305,3,1,101,'989.43','269.97',344,'景点介绍1',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,'景点名称2','1681805750949','upload/jingdian2.jpg','景点位置2',383,82,1,1,102,'946.34','342.15',240,'景点介绍2',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,'景点名称3','1681805750900','upload/jingdian3.jpg','景点位置3',207,288,1,3,103,'689.28','360.73',158,'景点介绍3',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,'景点名称4','1681805750900','upload/jingdian4.jpg','景点位置4',401,262,1,1,104,'562.89','112.41',256,'景点介绍4',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,'景点名称5','1681805750980','upload/jingdian5.jpg','景点位置5',70,97,3,3,105,'831.93','14.69',427,'景点介绍5',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,'景点名称6','1681805750893','upload/jingdian6.jpg','景点位置6',102,214,1,4,106,'722.97','141.09',147,'景点介绍6',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,'景点名称7','1681805750936','upload/jingdian7.jpg','景点位置7',319,305,3,4,107,'705.90','211.92',362,'景点介绍7',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,'景点名称8','1681805750977','upload/jingdian8.jpg','景点位置8',395,427,1,2,108,'932.19','367.17',479,'景点介绍8',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,'景点名称9','1681805750968','upload/jingdian9.jpg','景点位置9',357,121,1,4,109,'906.74','365.64',328,'景点介绍9',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,'景点名称10','1681805750925','upload/jingdian10.jpg','景点位置10',98,441,3,4,1010,'798.30','188.10',175,'景点介绍10',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,'景点名称11','1681805750910','upload/jingdian11.jpg','景点位置11',79,127,2,4,1011,'893.82','382.64',448,'景点介绍11',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,'景点名称12','1681805750943','upload/jingdian12.jpg','景点位置12',256,28,2,2,1012,'574.87','123.23',308,'景点介绍12',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,'景点名称13','1681805750949','upload/jingdian13.jpg','景点位置13',66,109,3,3,1013,'954.94','413.07',261,'景点介绍13',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,'景点名称14','1681805750909','upload/jingdian14.jpg','景点位置14',55,37,1,4,1014,'595.06','24.28',533,'景点介绍14',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,2,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,3,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,4,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,5,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,6,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,7,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,8,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,9,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,10,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,11,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,12,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,13,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,14,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(15,14,4,1,'2023-04-19 09:43:46','2023-04-19 09:43:46');

/*Table structure for table `jingdian_commentback` */

DROP TABLE IF EXISTS `jingdian_commentback`;

CREATE TABLE `jingdian_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='景点评价';

/*Data for the table `jingdian_commentback` */

insert  into `jingdian_commentback`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-18 16:15:50','回复信息1','2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,2,3,'评价内容2','2023-04-18 16:15:50','回复信息2','2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,3,3,'评价内容3','2023-04-18 16:15:50','回复信息3','2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,4,1,'评价内容4','2023-04-18 16:15:50','回复信息4','2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,5,3,'评价内容5','2023-04-18 16:15:50','回复信息5','2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,6,3,'评价内容6','2023-04-18 16:15:50','回复信息6','2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,7,2,'评价内容7','2023-04-18 16:15:50','回复信息7','2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,8,1,'评价内容8','2023-04-18 16:15:50','回复信息8','2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,9,1,'评价内容9','2023-04-18 16:15:50','回复信息9','2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,10,2,'评价内容10','2023-04-18 16:15:50','回复信息10','2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,11,2,'评价内容11','2023-04-18 16:15:50','回复信息11','2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,12,3,'评价内容12','2023-04-18 16:15:50','回复信息12','2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,13,2,'评价内容13','2023-04-18 16:15:50','回复信息13','2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,14,1,'评价内容14','2023-04-18 16:15:50','回复信息14','2023-04-18 16:15:50','2023-04-18 16:15:50'),(15,14,4,'更好地是多少个','2023-04-19 09:46:14','将基金','2023-04-19 09:49:12','2023-04-19 09:46:14');

/*Table structure for table `jingdian_order` */

DROP TABLE IF EXISTS `jingdian_order`;

CREATE TABLE `jingdian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `jingdian_order_time` date DEFAULT NULL COMMENT '预约日期',
  `jingdian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jingdian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jingdian_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点预约';

/*Data for the table `jingdian_order` */

insert  into `jingdian_order`(`id`,`jingdian_order_uuid_number`,`jingdian_id`,`yonghu_id`,`buy_number`,`jingdian_order_time`,`jingdian_order_true_price`,`jingdian_order_types`,`jingdian_order_payment_types`,`insert_time`,`create_time`) values (3,'1681867032373',14,1,1,'2023-04-19','24.28',103,1,'2023-04-19 09:17:16','2023-04-19 09:17:16'),(4,'1681868631802',14,4,1,'2006-01-01','24.28',105,1,'2023-04-19 09:43:58','2023-04-19 09:43:58');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`zan_number`,`cai_number`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1681805750910','upload/shangpin1.jpg',377,366,2,101,'589.24','240.48',140,'商品介绍1',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,'商品名称2','1681805750948','upload/shangpin2.jpg',128,166,1,102,'559.14','480.31',90,'商品介绍2',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,'商品名称3','1681805750959','upload/shangpin3.jpg',108,128,4,103,'931.45','221.84',195,'商品介绍3',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,'商品名称4','1681805750925','upload/shangpin4.jpg',467,65,4,104,'671.27','189.02',152,'商品介绍4',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,'商品名称5','1681805750942','upload/shangpin5.jpg',402,251,1,105,'944.06','399.08',276,'商品介绍5',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,'商品名称6','1681805750909','upload/shangpin6.jpg',68,458,1,106,'707.56','218.65',247,'商品介绍6',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,'商品名称7','1681805750941','upload/shangpin7.jpg',289,127,1,107,'747.86','57.89',25,'商品介绍7',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,'商品名称8','1681805750912','upload/shangpin8.jpg',428,158,2,108,'581.47','461.53',104,'商品介绍8',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,'商品名称9','1681805750925','upload/shangpin9.jpg',394,393,3,109,'541.60','258.83',260,'商品介绍9',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,'商品名称10','1681805750914','upload/shangpin10.jpg',241,351,1,1010,'653.30','407.25',409,'商品介绍10',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,'商品名称11','1681805750969','upload/shangpin11.jpg',162,310,4,1011,'909.94','364.04',407,'商品介绍11',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,'商品名称12','1681805750973','upload/shangpin12.jpg',138,410,3,1011,'862.62','134.37',496,'商品介绍12',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,'商品名称13','1681805750972','upload/shangpin13.jpg',80,136,4,1013,'910.31','281.36',35,'商品介绍13',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,'商品名称14','1681805750961','upload/shangpin14.jpg',385,11,1,1008,'630.65','30.73',113,'商品介绍14',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,2,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,3,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,4,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,5,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,6,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,7,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,8,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,9,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,10,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,11,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,12,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,13,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,14,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(15,14,4,1,'2023-04-19 09:44:14','2023-04-19 09:44:14');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-18 16:15:50','回复信息1','2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,2,1,'评价内容2','2023-04-18 16:15:50','回复信息2','2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,3,2,'评价内容3','2023-04-18 16:15:50','回复信息3','2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,4,2,'评价内容4','2023-04-18 16:15:50','回复信息4','2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,5,3,'评价内容5','2023-04-18 16:15:50','回复信息5','2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,6,1,'评价内容6','2023-04-18 16:15:50','回复信息6','2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,7,1,'评价内容7','2023-04-18 16:15:50','回复信息7','2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,8,2,'评价内容8','2023-04-18 16:15:50','回复信息8','2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,9,3,'评价内容9','2023-04-18 16:15:50','回复信息9','2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,10,2,'评价内容10','2023-04-18 16:15:50','回复信息10','2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,11,1,'评价内容11','2023-04-18 16:15:50','回复信息11','2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,12,2,'评价内容12','2023-04-18 16:15:50','回复信息12','2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,13,2,'评价内容13','2023-04-18 16:15:50','回复信息13','2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,14,1,'评价内容14','2023-04-18 16:15:50','回复信息14','2023-04-18 16:15:50','2023-04-18 16:15:50');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1681806899298',14,14,1,1,'30.73',NULL,NULL,101,1,'2023-04-18 16:34:59','2023-04-18 16:34:59'),(2,'1681806911801',10,14,1,1,'30.73',NULL,NULL,101,1,'2023-04-18 16:35:12','2023-04-18 16:35:12'),(3,'1681806911801',10,10,1,1,'4.73',NULL,NULL,101,1,'2023-04-18 16:35:12','2023-04-18 16:35:12'),(4,'1681868675664',15,14,4,1,'30.73',NULL,NULL,101,1,'2023-04-19 09:44:36','2023-04-19 09:44:36'),(5,'1681868731493',15,14,4,3,'92.19','顺丰','1513351531',103,1,'2023-04-19 09:45:31','2023-04-19 09:45:31'),(6,'1681868741728',15,12,4,1,'134.37','顺丰','4521541',103,1,'2023-04-19 09:45:42','2023-04-19 09:45:42');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','6jla8rgdhkwkhi7afegk548qi6u9wvcr','2023-04-18 16:34:36','2023-04-19 10:18:14'),(2,1,'admin','users','管理员','a0ndv1c6eyd71ctkv85f63mzj87sbnp2','2023-04-18 17:53:46','2023-04-19 10:48:02'),(3,4,'a5','yonghu','用户','8ii4zawbmbz3u2i1ibbopx36j7jzrbh0','2023-04-19 09:42:18','2023-04-19 10:42:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-18 16:15:35');

/*Table structure for table `yanxue` */

DROP TABLE IF EXISTS `yanxue`;

CREATE TABLE `yanxue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yanxue_name` varchar(200) DEFAULT NULL COMMENT '研学标题  Search111 ',
  `yanxue_uuid_number` varchar(200) DEFAULT NULL COMMENT '研学编号',
  `yanxue_photo` varchar(200) DEFAULT NULL COMMENT '研学照片',
  `yanxue_fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `yanxue_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yanxue_address` varchar(200) DEFAULT NULL COMMENT '研学路线',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `yanxue_types` int(11) DEFAULT NULL COMMENT '研学类型 Search111',
  `yanxue_kucun_number` int(11) DEFAULT NULL COMMENT '剩余可参与人数',
  `yanxue_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `yanxue_clicknum` int(11) DEFAULT NULL COMMENT '研学热度',
  `yanxue_content` longtext COMMENT '研学内容',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `yanxue_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='研学';

/*Data for the table `yanxue` */

insert  into `yanxue`(`id`,`yanxue_name`,`yanxue_uuid_number`,`yanxue_photo`,`yanxue_fuzeren`,`yanxue_phone`,`yanxue_address`,`zan_number`,`cai_number`,`yanxue_types`,`yanxue_kucun_number`,`yanxue_time`,`yanxue_clicknum`,`yanxue_content`,`shangxia_types`,`yanxue_delete`,`insert_time`,`create_time`) values (1,'研学标题1','1681805750933','upload/yanxue1.jpg','负责人1','17703786901','研学路线1',224,351,1,101,'2023-04-18 16:15:50',61,'研学内容1',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,'研学标题2','1681805750920','upload/yanxue2.jpg','负责人2','17703786902','研学路线2',44,319,3,102,'2023-04-18 16:15:50',398,'研学内容2',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,'研学标题3','1681805750904','upload/yanxue3.jpg','负责人3','17703786903','研学路线3',480,222,2,103,'2023-04-18 16:15:50',371,'研学内容3',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,'研学标题4','1681805750948','upload/yanxue4.jpg','负责人4','17703786904','研学路线4',311,497,2,104,'2023-04-18 16:15:50',110,'研学内容4',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,'研学标题5','1681805750992','upload/yanxue5.jpg','负责人5','17703786905','研学路线5',424,353,1,105,'2023-04-18 16:15:50',379,'研学内容5',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,'研学标题6','1681805750910','upload/yanxue6.jpg','负责人6','17703786906','研学路线6',372,318,2,106,'2023-04-18 16:15:50',466,'研学内容6',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,'研学标题7','1681805750931','upload/yanxue7.jpg','负责人7','17703786907','研学路线7',186,435,3,107,'2023-04-18 16:15:50',341,'研学内容7',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,'研学标题8','1681805750920','upload/yanxue8.jpg','负责人8','17703786908','研学路线8',243,1,1,108,'2023-04-18 16:15:50',209,'研学内容8',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,'研学标题9','1681805750993','upload/yanxue9.jpg','负责人9','17703786909','研学路线9',59,368,4,109,'2023-04-18 16:15:50',332,'研学内容9',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,'研学标题10','1681805750978','upload/yanxue10.jpg','负责人10','17703786910','研学路线10',219,172,1,1010,'2023-04-18 16:15:50',34,'研学内容10',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,'研学标题11','1681805750921','upload/yanxue11.jpg','负责人11','17703786911','研学路线11',49,163,3,1011,'2023-04-18 16:15:50',474,'研学内容11',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,'研学标题12','1681805750937','upload/yanxue12.jpg','负责人12','17703786912','研学路线12',211,5,4,1012,'2023-04-18 16:15:50',93,'研学内容12',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,'研学标题13','1681805750915','upload/yanxue13.jpg','负责人13','17703786913','研学路线13',450,275,4,1013,'2023-04-18 16:15:50',92,'研学内容13',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,'研学标题14','1681805750934','upload/yanxue14.jpg','负责人14','17703786914','研学路线14',118,20,3,1014,'2023-04-18 16:15:50',465,'<p>研学内容14好地方孤独颂歌</p>',1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50');

/*Table structure for table `yanxue_collection` */

DROP TABLE IF EXISTS `yanxue_collection`;

CREATE TABLE `yanxue_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yanxue_id` int(11) DEFAULT NULL COMMENT '研学',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yanxue_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='研学收藏';

/*Data for the table `yanxue_collection` */

insert  into `yanxue_collection`(`id`,`yanxue_id`,`yonghu_id`,`yanxue_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,2,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,3,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,4,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,5,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,6,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,7,1,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,8,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,9,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,10,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,11,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,12,2,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,13,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,14,3,1,'2023-04-18 16:15:50','2023-04-18 16:15:50'),(15,13,4,1,'2023-04-19 09:44:44','2023-04-19 09:44:44');

/*Table structure for table `yanxue_liuyan` */

DROP TABLE IF EXISTS `yanxue_liuyan`;

CREATE TABLE `yanxue_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yanxue_id` int(11) DEFAULT NULL COMMENT '研学',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yanxue_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='研学留言';

/*Data for the table `yanxue_liuyan` */

insert  into `yanxue_liuyan`(`id`,`yanxue_id`,`yonghu_id`,`yanxue_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-04-18 16:15:50','回复信息1','2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,2,2,'留言内容2','2023-04-18 16:15:50','回复信息2','2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,3,1,'留言内容3','2023-04-18 16:15:50','回复信息3','2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,4,2,'留言内容4','2023-04-18 16:15:50','回复信息4','2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,5,3,'留言内容5','2023-04-18 16:15:50','回复信息5','2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,6,2,'留言内容6','2023-04-18 16:15:50','回复信息6','2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,7,2,'留言内容7','2023-04-18 16:15:50','回复信息7','2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,8,3,'留言内容8','2023-04-18 16:15:50','回复信息8','2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,9,3,'留言内容9','2023-04-18 16:15:50','回复信息9','2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,10,3,'留言内容10','2023-04-18 16:15:50','回复信息10','2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,11,1,'留言内容11','2023-04-18 16:15:50','回复信息11','2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,12,2,'留言内容12','2023-04-18 16:15:50','回复信息12','2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,13,3,'留言内容13','2023-04-18 16:15:50','回复信息13','2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,14,2,'留言内容14','2023-04-18 16:15:50','回复信息14','2023-04-18 16:15:50','2023-04-18 16:15:50'),(15,13,4,'很好','2023-04-19 09:44:54',NULL,NULL,'2023-04-19 09:44:54');

/*Table structure for table `yanxue_yuyue` */

DROP TABLE IF EXISTS `yanxue_yuyue`;

CREATE TABLE `yanxue_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yanxue_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yanxue_id` int(11) DEFAULT NULL COMMENT '研学',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yanxue_yuyue_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '研学报名时间',
  `yanxue_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `yanxue_yuyue_yesno_text` longtext COMMENT '审核回复',
  `yanxue_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='研学报名';

/*Data for the table `yanxue_yuyue` */

insert  into `yanxue_yuyue`(`id`,`yanxue_yuyue_uuid_number`,`yanxue_id`,`yonghu_id`,`yanxue_yuyue_text`,`insert_time`,`yanxue_yuyue_yesno_types`,`yanxue_yuyue_yesno_text`,`yanxue_yuyue_shenhe_time`,`create_time`) values (1,'1681805750912',1,1,'报名理由1','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(2,'1681805750939',2,2,'报名理由2','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(3,'1681805750906',3,1,'报名理由3','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(4,'1681805750932',2,3,'报名理由4','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(5,'1681805750907',2,2,'报名理由5','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(6,'1681805750953',2,3,'报名理由6','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(7,'1681805750916',2,1,'报名理由7','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(8,'1681805750916',2,1,'报名理由8','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(9,'1681805750989',9,2,'报名理由9','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(10,'1681805750924',3,3,'报名理由10','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(11,'1681805750949',3,3,'报名理由11','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(12,'1681805750931',3,1,'报名理由12','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(13,'1681805750932',13,3,'报名理由13','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(14,'1681805750908',14,2,'报名理由14','2023-04-18 16:15:50',2,'同意','2023-04-18 16:15:50','2023-04-18 16:15:50'),(17,'1681807303490',14,1,'agdsg','2023-04-18 16:41:46',3,'电光火石郭德纲','2023-04-19 09:50:11','2023-04-18 16:41:46'),(18,'1681868685964',13,4,'大概是第三个','2023-04-19 09:44:48',2,'合适的回复','2023-04-19 09:47:12','2023-04-19 09:44:48');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','808.48',1,'2023-04-18 16:15:50'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','283.97',1,'2023-04-18 16:15:50'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','601.52',1,'2023-04-18 16:15:50'),(4,'a5','123456','张5','17788885555','444222333366666666','upload/1681868572520.jpg',1,'5@qq.com','99741.71',2,'2023-04-19 09:42:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
