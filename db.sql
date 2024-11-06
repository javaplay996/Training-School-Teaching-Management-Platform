/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4404l
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4404l` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4404l`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4404l/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm4404l/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm4404l/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dengji`,`zhicheng`,`youxiang`,`dianhua`) values (21,'2021-04-14 10:06:58','001','001','教师姓名1','男','http://localhost:8080/ssm4404l/upload/jiaoshi_touxiang1.jpg','等级1','职称1','773890001@qq.com','13823888881'),(22,'2021-04-14 10:06:58','教师2','123456','教师姓名2','男','http://localhost:8080/ssm4404l/upload/jiaoshi_touxiang2.jpg','等级2','职称2','773890002@qq.com','13823888882'),(23,'2021-04-14 10:06:58','教师3','123456','教师姓名3','男','http://localhost:8080/ssm4404l/upload/jiaoshi_touxiang3.jpg','等级3','职称3','773890003@qq.com','13823888883'),(24,'2021-04-14 10:06:58','教师4','123456','教师姓名4','男','http://localhost:8080/ssm4404l/upload/jiaoshi_touxiang4.jpg','等级4','职称4','773890004@qq.com','13823888884'),(25,'2021-04-14 10:06:58','教师5','123456','教师姓名5','男','http://localhost:8080/ssm4404l/upload/jiaoshi_touxiang5.jpg','等级5','职称5','773890005@qq.com','13823888885'),(26,'2021-04-14 10:06:58','教师6','123456','教师姓名6','男','http://localhost:8080/ssm4404l/upload/jiaoshi_touxiang6.jpg','等级6','职称6','773890006@qq.com','13823888886');

/*Table structure for table `jigoujiameng` */

DROP TABLE IF EXISTS `jigoujiameng`;

CREATE TABLE `jigoujiameng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jigoumingcheng` varchar(200) NOT NULL COMMENT '机构名称',
  `jigouguimo` varchar(200) DEFAULT NULL COMMENT '机构规模',
  `jiamengfei` int(11) NOT NULL COMMENT '加盟费',
  `jiamengneirong` varchar(200) DEFAULT NULL COMMENT '加盟内容',
  `jiamengriqi` date DEFAULT NULL COMMENT '加盟日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='机构加盟';

/*Data for the table `jigoujiameng` */

insert  into `jigoujiameng`(`id`,`addtime`,`jigoumingcheng`,`jigouguimo`,`jiamengfei`,`jiamengneirong`,`jiamengriqi`,`gonghao`,`jiaoshixingming`,`ispay`) values (41,'2021-04-14 10:06:58','机构名称1','机构规模1',1,'加盟内容1','2021-04-14','工号1','教师姓名1','未支付'),(42,'2021-04-14 10:06:58','机构名称2','机构规模2',2,'加盟内容2','2021-04-14','工号2','教师姓名2','未支付'),(43,'2021-04-14 10:06:58','机构名称3','机构规模3',3,'加盟内容3','2021-04-14','工号3','教师姓名3','未支付'),(44,'2021-04-14 10:06:58','机构名称4','机构规模4',4,'加盟内容4','2021-04-14','工号4','教师姓名4','未支付'),(45,'2021-04-14 10:06:58','机构名称5','机构规模5',5,'加盟内容5','2021-04-14','工号5','教师姓名5','未支付'),(46,'2021-04-14 10:06:58','机构名称6','机构规模6',6,'加盟内容6','2021-04-14','工号6','教师姓名6','未支付');

/*Table structure for table `jigouxinxi` */

DROP TABLE IF EXISTS `jigouxinxi`;

CREATE TABLE `jigouxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jigoumingcheng` varchar(200) DEFAULT NULL COMMENT '机构名称',
  `jigouguimo` varchar(200) NOT NULL COMMENT '机构规模',
  `jigoutupian` varchar(200) DEFAULT NULL COMMENT '机构图片',
  `jiamengfei` int(11) NOT NULL COMMENT '加盟费',
  `qingdan` varchar(200) DEFAULT NULL COMMENT '清单',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jigoujieshao` longtext COMMENT '机构介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='机构信息';

/*Data for the table `jigouxinxi` */

insert  into `jigouxinxi`(`id`,`addtime`,`jigoumingcheng`,`jigouguimo`,`jigoutupian`,`jiamengfei`,`qingdan`,`lianxiren`,`lianxidianhua`,`jigoujieshao`) values (31,'2021-04-14 10:06:58','机构名称1','大型','http://localhost:8080/ssm4404l/upload/jigouxinxi_jigoutupian1.jpg',1,'','联系人1','13823888881','机构介绍1'),(32,'2021-04-14 10:06:58','机构名称2','大型','http://localhost:8080/ssm4404l/upload/jigouxinxi_jigoutupian2.jpg',2,'','联系人2','13823888882','机构介绍2'),(33,'2021-04-14 10:06:58','机构名称3','大型','http://localhost:8080/ssm4404l/upload/jigouxinxi_jigoutupian3.jpg',3,'','联系人3','13823888883','机构介绍3'),(34,'2021-04-14 10:06:58','机构名称4','大型','http://localhost:8080/ssm4404l/upload/jigouxinxi_jigoutupian4.jpg',4,'','联系人4','13823888884','机构介绍4'),(35,'2021-04-14 10:06:58','机构名称5','大型','http://localhost:8080/ssm4404l/upload/jigouxinxi_jigoutupian5.jpg',5,'','联系人5','13823888885','机构介绍5'),(36,'2021-04-14 10:06:58','机构名称6','大型','http://localhost:8080/ssm4404l/upload/jigouxinxi_jigoutupian6.jpg',6,'','联系人6','13823888886','机构介绍6');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (51,'2021-04-14 10:06:58','课程类型1'),(52,'2021-04-14 10:06:58','课程类型2'),(53,'2021-04-14 10:06:58','课程类型3'),(54,'2021-04-14 10:06:58','课程类型4'),(55,'2021-04-14 10:06:58','课程类型5'),(56,'2021-04-14 10:06:58','课程类型6');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `ziliaoxiazai` varchar(200) DEFAULT NULL COMMENT '资料下载',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengshipin`,`ziliaoxiazai`,`kechengjieshao`,`jiage`,`shizhang`,`kechengxiangqing`,`gonghao`,`jiaoshixingming`) values (61,'2021-04-14 10:06:58','课程名称1','课程类型1','http://localhost:8080/ssm4404l/upload/kechengxinxi_tupian1.jpg','','','课程介绍1',1,'时长1','课程详情1','工号1','教师姓名1'),(62,'2021-04-14 10:06:58','课程名称2','课程类型2','http://localhost:8080/ssm4404l/upload/kechengxinxi_tupian2.jpg','','','课程介绍2',2,'时长2','课程详情2','工号2','教师姓名2'),(63,'2021-04-14 10:06:58','课程名称3','课程类型3','http://localhost:8080/ssm4404l/upload/kechengxinxi_tupian3.jpg','','','课程介绍3',3,'时长3','课程详情3','工号3','教师姓名3'),(64,'2021-04-14 10:06:58','课程名称4','课程类型4','http://localhost:8080/ssm4404l/upload/kechengxinxi_tupian4.jpg','','','课程介绍4',4,'时长4','课程详情4','工号4','教师姓名4'),(65,'2021-04-14 10:06:58','课程名称5','课程类型5','http://localhost:8080/ssm4404l/upload/kechengxinxi_tupian5.jpg','','','课程介绍5',5,'时长5','课程详情5','工号5','教师姓名5'),(66,'2021-04-14 10:06:58','课程名称6','课程类型6','http://localhost:8080/ssm4404l/upload/kechengxinxi_tupian6.jpg','','','课程介绍6',6,'时长6','课程详情6','工号6','教师姓名6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','biakqrnsbdhhx7re5jjyxaxpfd59kdgt','2021-04-14 10:09:02','2021-04-14 11:09:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-14 10:06:58');

/*Table structure for table `xuankexinxi` */

DROP TABLE IF EXISTS `xuankexinxi`;

CREATE TABLE `xuankexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `keshi` int(11) NOT NULL COMMENT '课时',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='选课信息';

/*Data for the table `xuankexinxi` */

insert  into `xuankexinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`gonghao`,`jiaoshixingming`,`jiage`,`keshi`,`zongjiage`,`riqi`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`ispay`) values (71,'2021-04-14 10:06:58','课程名称1','课程类型1','工号1','教师姓名1',1,1,'总价格1','2021-04-14','学号1','学生姓名1','是','','未支付'),(72,'2021-04-14 10:06:58','课程名称2','课程类型2','工号2','教师姓名2',2,2,'总价格2','2021-04-14','学号2','学生姓名2','是','','未支付'),(73,'2021-04-14 10:06:58','课程名称3','课程类型3','工号3','教师姓名3',3,3,'总价格3','2021-04-14','学号3','学生姓名3','是','','未支付'),(74,'2021-04-14 10:06:58','课程名称4','课程类型4','工号4','教师姓名4',4,4,'总价格4','2021-04-14','学号4','学生姓名4','是','','未支付'),(75,'2021-04-14 10:06:58','课程名称5','课程类型5','工号5','教师姓名5',5,5,'总价格5','2021-04-14','学号5','学生姓名5','是','','未支付'),(76,'2021-04-14 10:06:58','课程名称6','课程类型6','工号6','教师姓名6',6,6,'总价格6','2021-04-14','学号6','学生姓名6','是','','未支付');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (11,'2021-04-14 10:06:58','001','001','学生姓名1','男','http://localhost:8080/ssm4404l/upload/xuesheng_touxiang1.jpg','773890001@qq.com','13823888881'),(12,'2021-04-14 10:06:58','学生2','123456','学生姓名2','男','http://localhost:8080/ssm4404l/upload/xuesheng_touxiang2.jpg','773890002@qq.com','13823888882'),(13,'2021-04-14 10:06:58','学生3','123456','学生姓名3','男','http://localhost:8080/ssm4404l/upload/xuesheng_touxiang3.jpg','773890003@qq.com','13823888883'),(14,'2021-04-14 10:06:58','学生4','123456','学生姓名4','男','http://localhost:8080/ssm4404l/upload/xuesheng_touxiang4.jpg','773890004@qq.com','13823888884'),(15,'2021-04-14 10:06:58','学生5','123456','学生姓名5','男','http://localhost:8080/ssm4404l/upload/xuesheng_touxiang5.jpg','773890005@qq.com','13823888885'),(16,'2021-04-14 10:06:58','学生6','123456','学生姓名6','男','http://localhost:8080/ssm4404l/upload/xuesheng_touxiang6.jpg','773890006@qq.com','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
