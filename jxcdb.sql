/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.34-log : Database - jxcdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jxcdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jxcdb`;

/*Table structure for table `jxc_menu` */

DROP TABLE IF EXISTS `jxc_menu`;

CREATE TABLE `jxc_menu` (
  `id_` varchar(50) NOT NULL,
  `text_` varchar(20) DEFAULT NULL,
  `icon_` varchar(50) DEFAULT NULL,
  `url_` varchar(50) DEFAULT NULL,
  `pid_` varchar(50) DEFAULT NULL,
  `order_` int(20) DEFAULT NULL,
  `flag_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_menu` */

insert  into `jxc_menu`(`id_`,`text_`,`icon_`,`url_`,`pid_`,`order_`,`flag_`) values ('013379fa-cb10-4645-9650-019568e6b32b','1','','','744dcfd4-784f-4bd1-a116-3b5d83688659',NULL,NULL),('1','システム管理','setting','','',1,'1'),('11','メニュー管理','user','/menu','1',2,'2'),('12','役職管理',NULL,'/role','1',NULL,NULL),('13','ユーザー管理',NULL,'/user','1',NULL,NULL),('14','材料タイプ管理',NULL,'/type','1',NULL,NULL),('2','在庫管理','bell','/welcome','',1,'1'),('21','库存一覧',NULL,'/product','2',NULL,NULL),('22','オーダー審査',NULL,'/auditing','2',NULL,NULL),('23','売渡オーダー',NULL,'/outboundOrder','2',NULL,NULL),('24','購入オーダー',NULL,'/warehousingEntry','2',NULL,NULL);

/*Table structure for table `jxc_menu_role` */

DROP TABLE IF EXISTS `jxc_menu_role`;

CREATE TABLE `jxc_menu_role` (
  `id_` varchar(50) NOT NULL,
  `menu_id_` varchar(50) DEFAULT NULL,
  `role_id_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_menu_role` */

insert  into `jxc_menu_role`(`id_`,`menu_id_`,`role_id_`) values ('05113b6b-7ed2-439d-8a2e-7164625ed5bd','2','caea69ed-2f2f-465f-9a78-bc9a81837ba8'),('08e9226f-ea88-4485-bfd7-89468d80d3a7','23','2'),('0ab254b8-c818-4c63-9306-9db8964672ca','2','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('1a42551d-f748-4177-a64c-7a449eea1ac3','2','ac5f1c6a-72f5-4e79-9ea1-9d81046c8cc0'),('1c5b8ccd-04f1-4600-8c5a-865b41ac76f0','24','caea69ed-2f2f-465f-9a78-bc9a81837ba8'),('1cf43d43-811a-44aa-8f04-df3aff896a22','21','3'),('26a01a68-06f6-48cb-9605-a197dd68522e','22','1'),('26e7f52d-7707-4e88-b9db-9b16e60eed0b','22','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('27a4ce73-1db6-4e7e-9f86-898239357fd2','2','40caba99-e036-4342-815a-3ab2545b8d87'),('2d0b8f28-5c73-482b-bbb5-5e02298254bd','21','40caba99-e036-4342-815a-3ab2545b8d87'),('2f903242-cd26-4901-9b02-9fb5d1178275','21','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('35131754-8e29-4efb-a93f-b5351005a9d2','24','1'),('3a3740c8-b040-4d7a-b8bd-8d2a7f84a456','24','3'),('3e85a94a-341b-44cb-beea-ec7cda88ea7b','21','caea69ed-2f2f-465f-9a78-bc9a81837ba8'),('4098161c-1059-4dec-be45-fa5f89e397d8','1','1'),('417e716f-47e7-4791-897d-7ac607fdbc10','2','2'),('433b2962-4de8-44e5-8080-1b5301aa0274','2','e35ce7c7-f99a-4c14-9a14-966b6960fa59'),('449547a5-6e88-4942-995f-2adb7da3baa9','23','1'),('483661fa-f262-4d5c-88fb-a33fe89134d0','21','96ae1596-1492-4fc0-9554-699268244a91'),('4b164096-7b07-4608-bae4-507bf16c1c51','23','40caba99-e036-4342-815a-3ab2545b8d87'),('64d7a4e9-5d86-4c6d-9826-f28071dd5058','22','69595789-e314-4076-a384-d3f9ea027a90'),('656e8f81-0975-4114-bb21-fe7073bbd966','2','96ae1596-1492-4fc0-9554-699268244a91'),('69239d0a-96d6-44fa-900f-de3ab6d1b613','2','3'),('6f936d77-4208-466f-b518-bdb6e95ac821','12','1'),('715f0dcd-84ba-4184-877a-6aed7ac1b099','13','1'),('72208e1b-3473-42de-bcf2-0ef69dc15cd6','23','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('74b4a24a-ccd8-4317-a652-00b241baf8e3','14','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('7b06c57d-1c3c-4ade-b438-6a698758364d','21','1'),('7c983bfe-5542-48a7-a3b3-1e43164401da','23','96ae1596-1492-4fc0-9554-699268244a91'),('804a054c-9f4f-4e8a-b351-7f7dcb7b7685','22','68a4a3d1-3e9b-404c-9f63-fcbbd09de525'),('843691d9-4d4c-4759-a0bb-c006d05ebfa2','14','40caba99-e036-4342-815a-3ab2545b8d87'),('851e7563-4698-4ed1-8201-ba8cfaf2fa91','23','68a4a3d1-3e9b-404c-9f63-fcbbd09de525'),('8b90768a-504f-4173-815a-a17b10407394','12','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('9322dcbf-ad9c-493d-923c-1d613b65ccef','21','68a4a3d1-3e9b-404c-9f63-fcbbd09de525'),('9e4f8cbd-d4b8-4ebd-a567-a4c01ed43c5c','13','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('9f44423c-a4ba-4aa3-b7c6-f23683118379','1','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('a5c01eae-abb2-4d7c-a446-ef058444f217','24','40caba99-e036-4342-815a-3ab2545b8d87'),('a63ff42a-e289-40dd-9a3e-d3ff3438becc','24','ac5f1c6a-72f5-4e79-9ea1-9d81046c8cc0'),('aaad8798-fef2-4fed-8705-64e774b5d133','11','1'),('b249feae-f289-4a9f-9daf-44aaae8f7908','21','2'),('b36e586a-1f88-477d-9357-f64e3f6144e5','14','1'),('b7197f79-521e-448b-b9b3-30eda0d4c483','24','96ae1596-1492-4fc0-9554-699268244a91'),('c8afc6c0-3436-4c2e-b32e-078fdb74beab','2','68a4a3d1-3e9b-404c-9f63-fcbbd09de525'),('cecdaa1a-ab77-4692-9c45-0a85aed0a462','21','e35ce7c7-f99a-4c14-9a14-966b6960fa59'),('db279103-03eb-43cf-953b-34c116f37ebe','21','ac5f1c6a-72f5-4e79-9ea1-9d81046c8cc0'),('e0caba84-0d5b-4c55-89c4-cafa9cc73206','24','e35ce7c7-f99a-4c14-9a14-966b6960fa59'),('e35b7201-e9bf-4317-a026-6fa9bcd1c7d5','23','ac5f1c6a-72f5-4e79-9ea1-9d81046c8cc0'),('e85ee8a4-17b4-4ea1-b4d2-762efed024db','1','40caba99-e036-4342-815a-3ab2545b8d87'),('ed2cc270-01e8-48dc-84f6-e142e6bc687a','11','1b61caf9-514c-412b-8695-4cc23cbd0b5f'),('f3b91fcc-48f3-4571-bf71-e86c9319286b','2','1'),('f83add64-d22b-46cb-a64c-7501b0a2c9ab','24','69595789-e314-4076-a384-d3f9ea027a90'),('fa8ea1cb-775f-4c73-b12e-8ba1c19ec9d0','24','1b61caf9-514c-412b-8695-4cc23cbd0b5f');

/*Table structure for table `jxc_product` */

DROP TABLE IF EXISTS `jxc_product`;

CREATE TABLE `jxc_product` (
  `id_` varchar(50) NOT NULL,
  `type_id_` varchar(50) DEFAULT NULL,
  `total_` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_product` */

insert  into `jxc_product`(`id_`,`type_id_`,`total_`) values ('0266d673-ec28-4ad7-b0f3-a72d9868b786','6f204542-0c79-4e85-bb0b-1bc3dd2f2327',31),('047facd5-d5e1-47cd-a9de-85b593831ee1','a6f324cf-45a2-4893-be94-334ef724b0d8',108),('0c34fe14-563e-4cbd-b9cb-7930f80bc2fd','111',800),('1','1',45),('2','11',55),('26461d17-976b-4157-85c9-c6c7ccf2e043','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b',58),('4','22',10),('52b1807c-8771-4852-ba54-25ecd2d10b7c','0cdd6d26-6cef-40f9-b600-340e14cb55c6',100),('5e3e3a1e-df2b-4e2d-9686-05cbb03d2d44','1f6e23de-2ca1-4897-82e0-415eb5c3eb05',50),('6131a8f3-b1a7-4ed9-910a-43950397c912','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',11),('c452b246-eb45-4376-b5f6-43c173b7d018','2ea498c0-818d-4234-bd36-79de84b24746',15),('c53eb8dd-9a6d-436d-b906-2de6db85cf64','21',12),('cf4575ec-eda1-47bd-a633-afa726f5ef4f','d72d9993-80f3-4f4b-bb15-5ddbd23f881f',90);

/*Table structure for table `jxc_product_order` */

DROP TABLE IF EXISTS `jxc_product_order`;

CREATE TABLE `jxc_product_order` (
  `id_` varchar(50) NOT NULL,
  `type_id_` varchar(50) DEFAULT NULL,
  `number_` int(10) DEFAULT NULL,
  `price_` int(10) DEFAULT NULL,
  `creater_` varchar(50) DEFAULT NULL,
  `creater_id_` varchar(50) DEFAULT NULL,
  `order_type_` int(5) DEFAULT NULL COMMENT '1:入库 2:出库',
  `create_date_` date DEFAULT NULL,
  `status_` int(5) DEFAULT NULL COMMENT '1：在途 2：驳回 3：结束',
  `reason_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_product_order` */

insert  into `jxc_product_order`(`id_`,`type_id_`,`number_`,`price_`,`creater_`,`creater_id_`,`order_type_`,`create_date_`,`status_`,`reason_`) values ('0be6238d-0a91-4514-92c9-dbe7b401c498','93f8a24d-1760-4f9e-ab2a-dbdceddef58a',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('0c5a0a9b-24d7-44d6-abfc-6748a5475890','111',222,1,'admin','4',2,'2023-05-06',3,''),('11f77bb4-9bca-4cc3-9577-cef9018a2e44','a6f324cf-45a2-4893-be94-334ef724b0d8',1,1,'admin','4',1,'2024-06-28',3,''),('14167914-a853-47a6-ae80-e8fa05ed182d','21',10,10,'admin','4',2,'2023-04-28',3,''),('147cea0c-fafe-4352-8ae3-aa863f34dfef','48cd2e33-5433-4d75-b102-1d5ff2364612',11,11,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',1,NULL),('151f1551-f4b5-4483-b45f-27d1ab0a071a','0cdd6d26-6cef-40f9-b600-340e14cb55c6',100,100,'admin','4',1,'2024-07-01',3,''),('15604ed5-b58d-4359-8a28-64014e953a34','1f6e23de-2ca1-4897-82e0-415eb5c3eb05',100,200,'user0701','b5d2bbc5-b9cb-47cf-9bd9-5c3f0ea08870',1,'2024-07-01',3,''),('1811719d-76d6-4e9c-93da-b970539f6fc1','48cd2e33-5433-4d75-b102-1d5ff2364612',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('1945c28e-c3cc-4cff-a5bb-9e1732f2ef74','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',2,'2023-05-05',3,''),('1fd70538-dc73-4962-a8db-6831f4e37020','48cd2e33-5433-4d75-b102-1d5ff2364612',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('276306fa-a00d-4bd9-9d18-69001dfd8390','b8383e10-a178-4829-b331-cbee42bb5e59',1,1,'','',2,'2023-04-27',2,'库存不足，请先采购'),('29105ee6-29a1-4fdf-83c8-805fbdb20d2e','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',50,50,'admin','4',1,'2023-05-05',3,''),('2999b713-6b90-4f56-a4c8-f00e17632a4f','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b',1,1,'','',1,'2023-04-27',2,'库存不足，请先采购'),('29a98b14-8f0a-48c6-b122-03d61457d468','d72d9993-80f3-4f4b-bb15-5ddbd23f881f',10,800,'user','bff7e7b4-d7f6-4a42-ad20-3f7deb7ebddb',2,'2024-07-01',3,''),('39bfdbbc-aaa5-4b09-a885-bb671cf0601d','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',11,11,'admin','4',1,'2023-07-28',3,''),('3ce37aa0-3e7d-43b8-b5e8-e233b21e3fa8','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('3e99f7e9-fe01-4c45-b0c8-dbad4c7d1b2e','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('45464f3f-6681-4336-8ed0-e83f293cef46','a6f324cf-45a2-4893-be94-334ef724b0d8',11,11,'admin','4',1,'2024-06-28',2,'１１１'),('4659295c-5ac1-43c5-bc58-ad467f89bc68','22',21,13,'','',2,'2023-04-27',2,'库存不足，请先采购'),('4ce045cf-1321-45e4-b0e6-f087de17a746','1f6e23de-2ca1-4897-82e0-415eb5c3eb05',50,300,'user0701','b5d2bbc5-b9cb-47cf-9bd9-5c3f0ea08870',2,'2024-07-01',3,''),('4d245e62-c164-4e92-8e4b-1b08fe970fab','e05b1b5e-a3c9-4d39-a4bc-d9d0d73ae92e',1,1,'','',2,'2023-04-27',2,'库存不足，请先采购'),('4ebbdadc-a6b2-4752-a6c4-10bfe4ade27b','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('4ffc55ed-ae44-4899-80b4-d5145a17dd75','6f204542-0c79-4e85-bb0b-1bc3dd2f2327',20,11,'admin','4',1,'2024-02-28',3,''),('507f7f18-79ad-4440-b89e-bbc171d6793b','d72d9993-80f3-4f4b-bb15-5ddbd23f881f',100,500,'user','bff7e7b4-d7f6-4a42-ad20-3f7deb7ebddb',1,'2024-07-01',3,''),('5205576f-ac62-4f90-b9e3-183b781b8f9d','0cdd6d26-6cef-40f9-b600-340e14cb55c6',30,400,'20240701','85167833-fdfc-46c3-a1a6-119a2343cb5f',1,'2024-07-01',2,'库存不足，请先采购'),('53943c3a-71db-4b6b-a5c6-fde060d7d26e','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',2,'2023-05-05',3,''),('5870af2c-80f5-400c-bc6c-ba01c4af0a85','111',20,10,'2024','af7f9b04-799b-4de2-9a26-04e622b17124',2,'2024-06-24',3,''),('5cef2d5d-98ba-424c-b0f7-7f7c23d4d18b','111',1222,1,'admin','4',1,'2023-05-06',3,''),('5ed52ed4-c735-43ff-9a40-3d036b6736f4','12',10,10,'admin','4',1,'2024-02-26',3,''),('770b0778-b948-461c-83fa-29216b9d6c54','111',10,10,'2024','af7f9b04-799b-4de2-9a26-04e622b17124',1,'2024-06-24',3,''),('7809f027-6de3-4f0e-b5e5-9eb232b91277','48cd2e33-5433-4d75-b102-1d5ff2364612',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',1,NULL),('784a447b-4846-4f42-a797-3389f5a73b08','b8383e10-a178-4829-b331-cbee42bb5e59',14,14,'','',2,'2023-04-27',2,'库存不足，请先采购'),('78995189-4bf6-4d14-a277-a715befbd6cc','b8383e10-a178-4829-b331-cbee42bb5e59',11,11,'','',1,'2023-04-27',2,'库存不足，请先采购'),('7b45ddcd-77be-4794-9454-634e2fd81477','e05b1b5e-a3c9-4d39-a4bc-d9d0d73ae92e',12,12,'','',2,'2023-04-27',3,''),('7f64b215-0f82-4a30-9387-268bf6cb910a','21',20,50,'admin','4',2,'2023-04-28',3,''),('8ad58b78-d24e-4899-955a-d1b463b29d01','a6f324cf-45a2-4893-be94-334ef724b0d8',1,1,'admin','4',2,'2024-07-01',3,''),('9232871b-6576-4298-ba95-0e1f08140dc9','f4eadc23-5888-477c-be3c-523d8b4c6e74',14,14,'','',2,'2023-04-27',2,NULL),('9aa61358-3298-4429-a0ae-9679999ea11d','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',42,42,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',2,'2023-05-05',3,''),('9ccdd17d-c643-4050-9791-43375b75ef5b','520f017f-28e7-466f-8d3f-0a0898af330b',11,11,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',1,NULL),('9d26126b-c860-498f-8bc3-5ed0066eb9cb','e05b1b5e-a3c9-4d39-a4bc-d9d0d73ae92e',1,1,'','',1,'2023-04-25',3,''),('a0f8e978-ba8b-4690-a0ee-6abfbbc7cc3d','21',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('a3c8fa04-3837-4de7-b2b7-6de3294944dd','111',200,10,'admin','4',2,'2024-02-26',3,''),('a8cd6020-c925-4780-b03f-644f7087de3f','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('aace7b99-081c-431b-a1ea-bde21ce0ecc0','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',2,'2023-05-05',3,''),('ad258d4a-9373-47de-85e5-b83eb3fb55af','48cd2e33-5433-4d75-b102-1d5ff2364612',1,1,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',1,NULL),('ae1ba5f3-8c27-4807-86b1-56ca83f4dc1d','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b',14,14,'admin','4',1,'2023-04-27',3,''),('aed1cb3b-cd95-49bf-a404-110a5afe0030','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b',14,14,'admin','4',1,'2023-04-27',3,''),('af9ac897-c979-4d54-be45-fdba281e57c4','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b',14,14,'admin','4',1,'2023-04-27',3,''),('b8f962b6-37e6-452d-a8af-2244205fc2ab','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b',44,44,'admin','4',1,'2023-04-27',3,''),('bef58f4f-f68a-440f-a105-07dca2c8e368','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',10,10,'admin','4',2,'2023-05-05',3,''),('c58ba557-45d4-4c2c-b0aa-a902549fa034','2ea498c0-818d-4234-bd36-79de84b24746',5,1000,'user','bff7e7b4-d7f6-4a42-ad20-3f7deb7ebddb',2,'2024-07-01',3,''),('cc314575-9f12-47c1-9dd0-96e5a18f3d52','e05b1b5e-a3c9-4d39-a4bc-d9d0d73ae92e',1,1,'','',1,'2023-04-25',2,NULL),('ccb3573d-9e85-446b-86d2-767433c7ed4e','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',1,'2023-05-05',3,''),('cf28b697-1fad-4233-a756-b3f37844d88c','22',1,1,'tom','1',2,'2023-04-28',3,''),('d1dbdbf0-8fcd-451f-ba38-e44a0e84c131',NULL,0,0,NULL,NULL,0,'2023-04-25',2,NULL),('d1fd58c5-b8df-4a36-ae3a-c051906ab863','6f204542-0c79-4e85-bb0b-1bc3dd2f2327',11,11,'admin','4',1,'2023-09-28',3,''),('d26fd0d1-19fd-45ac-a31f-4cf4b97d5fec','9bdd96c6-edbe-49f0-a061-59e96ac57552',1000,1,'admin','4',1,'2024-07-01',2,'库存不足，请先采购'),('d3752284-04cd-403a-9dbb-c23c03575388','12',11,10,'admin','4',2,'2024-02-26',2,'库存不足，请先采购'),('d64643be-b527-4763-83a8-d874565a6124','112',1,1,'','',1,'2023-04-27',2,'库存不足，请先采购'),('d80a66f0-98de-43dc-b440-2654a2fb5233','a6f324cf-45a2-4893-be94-334ef724b0d8',1,1,'admin','4',1,'2024-07-01',3,''),('d9fd3c90-f919-4f64-8b67-7bd5fbc0579d','b8383e10-a178-4829-b331-cbee42bb5e59',55,55,'admin','4',2,'2023-04-28',2,'库存不足，请先采购'),('e3f6eeb8-1236-4db0-be3f-005e47576768','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'admin','4',1,'2023-05-05',3,''),('e6555f44-9732-47b3-a67d-e500a115bd61','12',10,10,'admin','4',2,'2024-02-26',3,''),('e6dde447-8936-48c1-8dc0-fafe5f608291','0cdd6d26-6cef-40f9-b600-340e14cb55c6',111,111,'20240701','85167833-fdfc-46c3-a1a6-119a2343cb5f',2,'2024-07-01',2,'库存不足，请先采购'),('e87d3087-3814-4ae3-b3e5-e7f8fd3c89f6','e05b1b5e-a3c9-4d39-a4bc-d9d0d73ae92e',14,14,'admin','4',1,'2023-04-27',3,''),('ed236bde-714e-4b81-896d-e41669c3e14d','e05b1b5e-a3c9-4d39-a4bc-d9d0d73ae92e',1,1,'','',1,'2023-04-27',2,NULL),('f41b7e35-7ffc-47e0-a0ec-c3d1844ca8d0','2ea498c0-818d-4234-bd36-79de84b24746',20,800,'user','bff7e7b4-d7f6-4a42-ad20-3f7deb7ebddb',1,'2024-07-01',3,''),('f5de09ad-0cc1-4811-bf73-a6a412e1661f','0cdd6d26-6cef-40f9-b600-340e14cb55c6',111,111,'20240701','85167833-fdfc-46c3-a1a6-119a2343cb5f',1,'2024-07-01',2,'库存不足，请先采购'),('f6cae855-4822-4944-a7c8-a950651c3e01','21',1,1,'','',1,'2023-04-25',3,''),('f75379ce-cd41-4e23-ac51-c748ab770071','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b',12,12,'测试','6e2e886b-baa1-4f72-aefd-ea6de85a4e57',2,'2023-05-05',3,''),('fa06af2f-ee8d-4eb6-b73c-f7a996ed6c98','22',21,13,'','',2,'2023-04-27',2,'库存不足，请先采购');

/*Table structure for table `jxc_role` */

DROP TABLE IF EXISTS `jxc_role`;

CREATE TABLE `jxc_role` (
  `id_` varchar(50) NOT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `flag_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_role` */

insert  into `jxc_role`(`id_`,`name_`,`flag_`) values ('1','管理員','admin'),('1b61caf9-514c-412b-8695-4cc23cbd0b5f','テストデータ','test'),('2','セールスマン','sale'),('3','仕入れ係','purchase'),('40caba99-e036-4342-815a-3ab2545b8d87','test','test'),('68a4a3d1-3e9b-404c-9f63-fcbbd09de525','4521','4521'),('69595789-e314-4076-a384-d3f9ea027a90','11111','11111'),('75ff7684-08fb-4660-8c8d-de027a8f1f70',NULL,NULL),('a21266e4-b993-4795-896f-18b92d50fe41','11','11'),('c008d677-02bb-49ff-bb35-016986bec2f6',NULL,NULL),('c625cfc4-9373-4269-a1e7-5d0f3dc1c6d4','22','22'),('cdd6bd1a-0e01-4282-b14f-3a6588760ec0',NULL,NULL),('d5504452-117f-4c6c-8baf-8ff3d9191adf','123','123'),('d79dcb2f-034d-4b5b-a330-ce9478045acb','11','11'),('d863d09e-3dd2-4288-903c-5ea232f305ba',NULL,NULL),('e68bfcaa-e9c7-4a30-90b5-a61cc87eed9e','11','11'),('f2d7684a-425b-4cb4-aabe-a48f12c7d8fd','33','33');

/*Table structure for table `jxc_role_user` */

DROP TABLE IF EXISTS `jxc_role_user`;

CREATE TABLE `jxc_role_user` (
  `id_` varchar(50) NOT NULL,
  `user_id_` varchar(50) DEFAULT NULL,
  `role_id_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_role_user` */

insert  into `jxc_role_user`(`id_`,`user_id_`,`role_id_`) values ('069ace26-f22c-493c-b52a-92a845e784fa','af7f9b04-799b-4de2-9a26-04e622b17124','2'),('1','4','1'),('2','1','2'),('29e6555f-b764-475e-ba76-4fc95384f138','92ee9db9-ef62-4341-8c28-ae5311df9ad0','ac5f1c6a-72f5-4e79-9ea1-9d81046c8cc0'),('3','2','3'),('38d23391-976f-48ac-9e1d-cc838d20d2a6','b5d2bbc5-b9cb-47cf-9bd9-5c3f0ea08870','3'),('3f959a8b-c9e1-48fd-9da7-ddbfe8dbd6f3','6e2e886b-baa1-4f72-aefd-ea6de85a4e57','3'),('4','3','2'),('436750fa-0d6b-43b3-bee7-b5c27cf9b4ab','10c750ce-c0cc-4c29-b0eb-f97bc5d782a0','2'),('5','1','3'),('8099668a-cae1-4eed-9085-d32cb12a4027','85167833-fdfc-46c3-a1a6-119a2343cb5f','96ae1596-1492-4fc0-9554-699268244a91'),('81a9cdfd-def6-4531-bf2a-5d58ba276846','af7f9b04-799b-4de2-9a26-04e622b17124','3'),('8467490f-9520-45f0-813a-3dd08946e22a','6b64fb03-ca19-4c1d-9ed0-bf10bd1c2d94','2'),('8fed8c9b-0714-4943-af11-a00af064b763','b5d2bbc5-b9cb-47cf-9bd9-5c3f0ea08870','2'),('91301a73-ad11-4d84-b061-3a948395de92','6b64fb03-ca19-4c1d-9ed0-bf10bd1c2d94','3'),('bcbff4c2-892b-431a-a4cf-1345a7782fa6','bff7e7b4-d7f6-4a42-ad20-3f7deb7ebddb','40caba99-e036-4342-815a-3ab2545b8d87'),('ca369ae4-267d-4fe9-be2d-22d33a671a0b','6e2e886b-baa1-4f72-aefd-ea6de85a4e57','2'),('fbc05513-d30b-43c2-abeb-8d7feb04e340','1942653f-de19-492b-ba59-f972ebdae0f4','e35ce7c7-f99a-4c14-9a14-966b6960fa59');

/*Table structure for table `jxc_type` */

DROP TABLE IF EXISTS `jxc_type`;

CREATE TABLE `jxc_type` (
  `id_` varchar(50) NOT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `p_id_` varchar(50) DEFAULT NULL,
  `create_time_` date DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_type` */

insert  into `jxc_type`(`id_`,`name_`,`p_id_`,`create_time_`) values ('1','食品',NULL,'2023-04-21'),('11','饼干','1',NULL),('111','闲趣原味','11',NULL),('112','闲趣蓝莓味','11',NULL),('12','饮料','1',NULL),('2','服饰',NULL,'2023-04-21'),('21','短裤','2',NULL),('22','卫衣','2',NULL),('2ea498c0-818d-4234-bd36-79de84b24746','豚骨ラーメン','625aa4d0-cbbe-48a6-9997-55440a3fb139','2024-07-01'),('337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b','aa',NULL,'2023-04-21'),('429c7d09-3c39-4eb2-911d-b6f656ab0a1e','飲み物','bcce52b7-dd5d-4497-b40c-8d9b95d95b63','2024-07-01'),('625aa4d0-cbbe-48a6-9997-55440a3fb139','ラーメン','eca78914-bb3f-4e10-baa2-880363db3d6f','2024-07-01'),('6ddbbf9c-1eeb-47d4-b725-04d8f9bb6eec','食べ物','bcce52b7-dd5d-4497-b40c-8d9b95d95b63','2024-07-01'),('6f204542-0c79-4e85-bb0b-1bc3dd2f2327','111','b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b','2023-09-28'),('8b84dcb2-c647-4a4e-8ffe-6591708e87b8','ジュース','429c7d09-3c39-4eb2-911d-b6f656ab0a1e','2024-07-01'),('9bdd96c6-edbe-49f0-a061-59e96ac57552','123','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b','2023-09-28'),('b7fbf4cc-b64d-4c0b-a1bc-8b42b4e77b7b','a221','337f7ff9-08bf-48ac-8b1e-f1c0d8c6195b','2023-05-03'),('bcce52b7-dd5d-4497-b40c-8d9b95d95b63','食品',NULL,'2024-07-01'),('d72d9993-80f3-4f4b-bb15-5ddbd23f881f','オレンジジュース','8b84dcb2-c647-4a4e-8ffe-6591708e87b8','2024-07-01'),('eca78914-bb3f-4e10-baa2-880363db3d6f','麵類','6ddbbf9c-1eeb-47d4-b725-04d8f9bb6eec','2024-07-01');

/*Table structure for table `jxc_user` */

DROP TABLE IF EXISTS `jxc_user`;

CREATE TABLE `jxc_user` (
  `id_` varchar(50) NOT NULL,
  `account_` varchar(20) DEFAULT NULL,
  `name_` varchar(20) DEFAULT NULL,
  `password_` varchar(20) DEFAULT NULL,
  `email_` varchar(20) DEFAULT NULL,
  `birthday_` date DEFAULT NULL,
  `remark_` varchar(50) DEFAULT NULL,
  `photo_` varchar(50) DEFAULT NULL,
  `creat_time_` date DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jxc_user` */

insert  into `jxc_user`(`id_`,`account_`,`name_`,`password_`,`email_`,`birthday_`,`remark_`,`photo_`,`creat_time_`) values ('1','111','tom123',NULL,'tom@qq.com','2023-04-01',NULL,NULL,NULL),('10','t11','222',NULL,NULL,'2023-04-02',NULL,NULL,NULL),('10c750ce-c0cc-4c29-b0eb-f97bc5d782a0','wsa','１１',NULL,NULL,'2024-06-22',NULL,NULL,NULL),('11','t22','222',NULL,NULL,'2023-04-05',NULL,NULL,NULL),('2','222','buker','222',NULL,'2023-04-20',NULL,NULL,NULL),('3','333','lucia','333',NULL,'2023-04-20',NULL,NULL,NULL),('3e78235b-7957-4869-b741-987d4278d6b8','2155235','114141','124141',NULL,'2023-04-22',NULL,NULL,NULL),('4','admin','admin','admin',NULL,'2023-04-20',NULL,NULL,NULL),('46','user46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('47','user47',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4d93d9a8-494d-49fd-af29-7f450de0e471','asaaf','qrqrq',NULL,NULL,'2023-04-14',NULL,NULL,NULL),('50','50user',NULL,'50123456',NULL,NULL,NULL,NULL,NULL),('51','51user',NULL,'51123456',NULL,NULL,NULL,NULL,NULL),('52','52user',NULL,'52123456',NULL,NULL,NULL,NULL,NULL),('53','53user',NULL,'53123456',NULL,NULL,NULL,NULL,NULL),('54','54user',NULL,'54123456',NULL,NULL,NULL,NULL,NULL),('55','55user',NULL,'55123456',NULL,NULL,NULL,NULL,NULL),('56','56user',NULL,'56123456',NULL,NULL,NULL,NULL,NULL),('56b85cf7-9202-441c-88a1-0ea2c88129c0','aaa','aaa',NULL,NULL,'2023-04-15',NULL,NULL,NULL),('57','57user',NULL,'57123456',NULL,NULL,NULL,NULL,NULL),('58','58user',NULL,'58123456',NULL,NULL,NULL,NULL,NULL),('59','59user',NULL,'59123456',NULL,NULL,NULL,NULL,NULL),('60','60user',NULL,'60123456',NULL,NULL,NULL,NULL,NULL),('602e623b-45d7-46ea-a951-d3eb4c429923','1233','1233','1233',NULL,'2023-04-30',NULL,NULL,NULL),('67acd85a-fb71-4239-a8be-4f516d7340a0','1111','1111',NULL,NULL,'2023-04-14',NULL,NULL,NULL),('6b64fb03-ca19-4c1d-9ed0-bf10bd1c2d94','159','159','159',NULL,NULL,NULL,NULL,NULL),('6e2e886b-baa1-4f72-aefd-ea6de85a4e57','test','测试','test',NULL,'2023-05-06',NULL,NULL,NULL),('73938ad7-e4ec-4138-8bdf-93bf6943dab2','12345',NULL,'12345',NULL,NULL,NULL,NULL,NULL),('7be44f94-19f7-452f-a9fb-a9f2cf0f0cb6','321','321',NULL,NULL,'2023-04-30',NULL,NULL,NULL),('8ec697a1-9a3c-4315-984f-edc150d214f8','bbb','bbb',NULL,NULL,NULL,NULL,NULL,NULL),('9','t',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('91d3b547-1cd7-443a-ae75-2aea8b9d65dd','545','444','555',NULL,NULL,NULL,NULL,NULL),('9ded341d-6201-402d-bb8a-5528cbf21c4a','qaz','123',NULL,NULL,'2023-05-04',NULL,NULL,NULL),('a0f3049d-dd0b-41f3-9019-e3157169689d','dnz','123','123',NULL,'2023-05-04',NULL,NULL,NULL),('af7f9b04-799b-4de2-9a26-04e622b17124','2024','2024','2024',NULL,NULL,NULL,NULL,NULL),('b199c975-0e52-46b4-81f2-bb3cdcc86584','qws','qws','qws',NULL,NULL,NULL,NULL,NULL),('bff7e7b4-d7f6-4a42-ad20-3f7deb7ebddb','user','user','user',NULL,NULL,NULL,NULL,NULL),('c5030a99-1ac1-48f6-9495-b8635ea1e2ba','zas','zas','zas',NULL,'2023-05-05',NULL,NULL,NULL),('d408bff8-cae7-4347-9d0d-f6c38f435720','3313','2222','1111',NULL,NULL,NULL,NULL,NULL),('ea0d53b6-fff3-43ed-a8f0-4e359cf6df36','mst','mst','mst',NULL,NULL,NULL,NULL,NULL),('edf05c0e-95d5-4224-9fdf-a2d30411e650','bob123','bob',NULL,NULL,'2023-05-05',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
