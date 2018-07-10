# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: Apex-Music
# Generation Time: 2018-07-10 23:20:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table craft_assetfiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfiles`;

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(276,1,1,'about-images-1.jpg','image',1600,900,1522216,'2018-04-19 16:58:49','2018-07-08 13:52:10','2018-07-10 22:27:19','890d713e-5ec4-429a-917a-6e98d1b836b9'),
	(277,1,1,'apex-home-bg-1.jpg','image',5184,2916,2647815,'2018-04-14 14:16:30','2018-07-08 13:52:11','2018-07-10 22:27:21','ec836f68-b665-4315-a3f8-0a5015f88c16'),
	(278,1,1,'apex-mountain.svg','image',509,199,2134,'2018-04-14 14:16:30','2018-07-08 13:52:12','2018-07-10 22:27:20','7b4dd6ce-b6ad-47b2-b623-f07ea1f7a623'),
	(279,1,1,'apex-studio-1.jpg','image',1200,800,1321204,'2018-06-18 17:13:21','2018-07-08 13:52:12','2018-07-10 22:27:20','2d93fe32-b6fe-4d3b-8e37-3208a14770a9'),
	(280,1,1,'apex-studio-2.jpg','image',1200,800,1098683,'2018-06-18 17:13:21','2018-07-08 13:52:12','2018-07-10 22:27:22','538f9009-96f8-4513-b6b9-1507ed47e468'),
	(281,1,1,'apex-studio-3.jpg','image',1200,800,1564184,'2018-06-18 17:13:21','2018-07-08 13:52:13','2018-07-10 22:27:22','63cd6f0b-6fcf-46dd-8e75-7c4b98924cfb'),
	(282,1,1,'apex-studio-4.jpg','image',1200,800,1241417,'2018-06-18 17:13:21','2018-07-08 13:52:13','2018-07-10 22:27:22','6b373902-9b67-45ba-a051-5f2408866b2d'),
	(283,1,1,'apex-studio-5.jpg','image',1200,800,1095680,'2018-06-18 17:13:21','2018-07-08 13:52:13','2018-07-10 22:27:23','0e5f3d3e-c12f-4dda-9ab9-11fcf321c6bb'),
	(284,1,1,'apex-studio-6.jpg','image',1200,800,1042050,'2018-06-18 17:13:21','2018-07-08 13:52:14','2018-07-10 22:27:23','8cac3870-a5f2-48fc-ab81-36e8920f7177'),
	(285,1,1,'apex-studio-6.png','image',1200,800,1573580,'2018-06-18 17:13:21','2018-07-08 13:52:14','2018-07-10 22:27:23','b852df44-110b-44d8-95fa-fc511f96afef'),
	(286,1,1,'apex-studio-7.jpg','image',1200,800,1100564,'2018-06-18 17:13:21','2018-07-08 13:52:14','2018-07-10 22:27:24','13793d2d-b77f-4fbb-bcbd-a0de12b31ec1'),
	(287,1,1,'apex-studio-8.jpg','image',1200,800,836790,'2018-06-18 17:13:21','2018-07-08 13:52:15','2018-07-10 22:27:24','7f4893a7-5d6c-46f0-9a66-e90f12dd7f51'),
	(288,1,1,'apex-studio-9.jpg','image',1200,800,1075554,'2018-06-18 17:13:21','2018-07-08 13:52:15','2018-07-10 22:27:25','b88f2033-f615-43ef-ba16-f64dc4b763dc'),
	(289,1,1,'bg-texture-a.jpg','image',400,400,103218,'2018-06-18 17:13:21','2018-07-08 13:52:15','2018-07-10 22:27:25','1552c54d-0a6f-4d92-a374-e8a34d7c949c'),
	(290,1,1,'bg-texture-b.jpg','image',400,400,91908,'2018-06-18 17:13:21','2018-07-08 13:52:15','2018-07-10 22:27:25','52538508-db80-4e0e-948d-14c5f048f14a'),
	(291,1,1,'bg-texture-c.jpg','image',400,400,82941,'2018-06-18 17:13:21','2018-07-08 13:52:15','2018-07-10 22:27:25','9ba0dd1c-6640-4eaa-b5e5-01b1aa2642e8'),
	(292,1,1,'blog-post-1.jpg','image',2048,1152,315657,'2018-06-18 17:13:21','2018-07-08 13:52:16','2018-07-10 22:27:26','c3ed05df-1bfe-4f39-aa1e-54ea04a36c8d'),
	(293,1,1,'concrete-texture.png','image',400,400,367553,'2018-06-18 17:13:22','2018-07-08 13:52:16','2018-07-10 22:27:26','2ce744dd-c161-4a14-a44c-fc0fdb4ab746'),
	(294,1,1,'hero-logo.png','image',622,432,47187,'2018-06-18 17:13:22','2018-07-08 13:52:16','2018-07-10 22:27:26','63b166ac-ca1f-4388-b2a2-1736fba77d0d'),
	(295,1,1,'hero-logo.svg','image',598,408,8328,'2018-04-14 14:16:30','2018-07-08 13:52:16','2018-07-10 22:27:26','a366610c-32de-4455-9418-277984e76241'),
	(296,1,1,'menu-logo.png','image',144,96,8254,'2018-06-18 17:13:22','2018-07-08 13:52:17','2018-07-10 22:27:27','eab41125-57e2-40de-8512-a0fafd0133f2'),
	(297,1,1,'menu-logo.svg','image',72,48,7442,'2018-04-14 14:16:30','2018-07-08 13:52:17','2018-07-10 22:27:27','bdf8e804-8269-404d-8db4-6aee3f67d70d'),
	(298,1,1,'mountain-bg.svg','image',480,180,2042,'2018-04-14 14:16:30','2018-07-08 13:52:17','2018-07-10 22:27:27','4fff85bf-7196-4c9d-968d-cae44309975a'),
	(299,1,1,'mountian-light.png','image',478,180,19464,'2018-04-14 14:16:30','2018-07-08 13:52:17','2018-07-10 22:27:27','777dc888-4f23-4806-b56f-015e3ceb333a'),
	(300,1,1,'mountian-light.svg','image',478,180,1308,'2018-04-14 14:16:30','2018-07-08 13:52:17','2018-07-10 22:27:27','c8da8a2c-557e-4d43-8b22-b7b356d289a0'),
	(301,1,1,'pat.png','image',1103,504,637909,'2018-04-14 14:16:30','2018-07-08 13:52:17','2018-07-10 22:27:28','0463ffc0-2927-4d08-b1e7-0df31da8eefc'),
	(302,1,1,'pickup-index-bg.png','image',2880,700,3776665,'2018-04-14 14:16:30','2018-07-08 13:52:18','2018-07-10 22:27:28','5a7bde04-ccfe-4193-96a3-e952dc17b2c3'),
	(303,1,1,'pickups-bg.png','image',1115,627,1369759,'2018-04-14 14:16:30','2018-07-08 13:52:18','2018-07-10 22:27:29','0c8b54c7-51a9-4adc-96aa-9a64229c3deb'),
	(304,1,1,'single-coil-cream.jpg','image',2500,2500,868232,'2018-04-14 14:16:30','2018-07-08 13:52:18','2018-07-10 22:27:29','d9f836d0-29f0-45fa-bb60-1c3ba7658846'),
	(305,1,1,'slider-holder.png','image',2206,1080,1353867,'2018-06-18 17:13:22','2018-07-08 13:52:19','2018-07-10 22:27:30','4266e70f-7014-4b5f-9bc1-ee6e4fc2aa24'),
	(306,1,1,'studio-bg.png','image',1120,629,1445980,'2018-04-14 14:16:30','2018-07-08 13:52:19','2018-07-10 22:27:30','0b306252-3bf4-4c1b-9a0f-220fcb984caf'),
	(307,1,1,'team-dani.jpg','image',500,500,131871,'2018-06-18 17:13:22','2018-07-08 13:52:20','2018-07-10 22:27:30','25e3d42a-5261-4115-87f0-6c4295119212'),
	(308,1,1,'team-dani.png','image',602,617,261118,'2018-06-18 17:13:22','2018-07-08 13:52:20','2018-07-10 22:27:31','8140be5a-e170-4996-ae33-d94217e2b3ef'),
	(309,1,1,'team-graham.jpg','image',500,500,186539,'2018-06-18 17:13:22','2018-07-08 13:52:20','2018-07-10 22:27:31','f4175293-f774-4caa-aaa3-074c874eb5e7'),
	(310,1,1,'team-oran.jpg','image',500,500,276319,'2018-06-18 17:13:22','2018-07-08 13:52:20','2018-07-10 22:27:31','38cd09bb-97ee-400b-8339-4d22370f362e'),
	(311,1,1,'team-willy.jpg','image',500,500,286826,'2018-06-18 17:13:22','2018-07-08 13:52:20','2018-07-10 22:27:32','1a8ec8fc-124c-4be2-948e-46ef95176442'),
	(312,1,1,'team-willy.png','image',602,451,433072,'2018-06-18 17:13:22','2018-07-08 13:52:21','2018-07-10 22:27:32','a99bf8e4-3922-4c5b-b58e-a7532d43e6cc'),
	(313,1,1,'workshop-bg.png','image',1120,632,1458788,'2018-04-14 14:16:30','2018-07-08 13:52:21','2018-07-10 22:27:32','bac8a40f-a40f-4761-8853-53e5155fbbc8');

/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetfolders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfolders`;

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,1,'Site Assets','','2014-07-30 22:43:56','2014-07-30 22:43:56','20095f95-422a-46cc-a5d0-3bc6b0a4da20');

/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetindexdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetindexdata`;

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) unsigned DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_assetsources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetsources`;

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Site Assets','siteAssets','Local','{\"path\":\"{assetsBasePath}\\/images\\/\",\"publicURLs\":\"1\",\"url\":\"{assetsBaseUrl}\\/images\\/\"}',1,230,'2014-07-30 22:43:56','2018-07-08 14:23:27','0193dc64-5499-4e28-95dd-f8f603154851');

/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assettransformindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransformindex`;

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(12,279,'apex-studio-1.jpg',NULL,'_thumb',1,1,0,'2018-07-08 14:12:16','2018-07-08 14:12:16','2018-07-08 14:12:18','4938114f-89c3-4130-a71e-34d8c8b5e676'),
	(13,280,'apex-studio-2.jpg',NULL,'_thumb',1,1,0,'2018-07-08 14:12:17','2018-07-08 14:12:17','2018-07-08 14:12:18','ba4586bf-390d-43d8-9ded-8be6b41da539'),
	(14,281,'apex-studio-3.jpg',NULL,'_thumb',1,1,0,'2018-07-08 14:12:17','2018-07-08 14:12:17','2018-07-08 14:12:18','93883a91-ce5b-4816-a021-658a7ce48d95'),
	(15,282,'apex-studio-4.jpg',NULL,'_thumb',1,1,0,'2018-07-08 14:12:17','2018-07-08 14:12:17','2018-07-08 14:12:18','dc26df20-48ae-4d7f-988e-b63b3bfa09a9'),
	(16,283,'apex-studio-5.jpg',NULL,'_thumb',1,1,0,'2018-07-08 14:12:17','2018-07-08 14:12:17','2018-07-08 14:12:18','44b7f59c-32c7-401b-af78-250acbb1ef08'),
	(22,279,'apex-studio-1.jpg','jpg','_pageSliderSize',1,1,0,'2018-07-10 22:27:38','2018-07-10 22:27:38','2018-07-10 22:27:40','6d936bef-8a31-4c65-bc8d-ff01ec917b26'),
	(23,280,'apex-studio-2.jpg','jpg','_pageSliderSize',1,1,0,'2018-07-10 22:27:38','2018-07-10 22:27:38','2018-07-10 22:27:39','c6fbd016-2787-4ce8-a0bc-e16f8e120acd'),
	(24,288,'apex-studio-9.jpg','jpg','_pageSliderSize',1,1,0,'2018-07-10 22:27:38','2018-07-10 22:27:38','2018-07-10 22:27:40','5f550369-09f8-4e22-8860-422842f6d31b'),
	(25,301,'pat.jpg','jpg','_pageSliderSize',1,1,0,'2018-07-10 23:16:10','2018-07-10 23:16:10','2018-07-10 23:16:12','af3ffa5d-bd6b-4031-a9fd-e002e8b2a1b1'),
	(26,303,'pickups-bg.jpg','jpg','_pageSliderSize',1,1,0,'2018-07-10 23:16:10','2018-07-10 23:16:10','2018-07-10 23:16:12','d41b98ef-b314-4025-9ffe-467a2aca17f0');

/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assettransforms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransforms`;

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Small','small','crop','center-center',339,400,NULL,NULL,'2014-09-17 02:00:12','2014-09-17 02:00:12','2014-09-17 02:00:12','726664b6-90aa-4fa9-9d03-23be4ba628bc'),
	(2,'Medium','medium','crop','center-center',424,700,NULL,NULL,'2014-09-17 02:31:41','2014-09-17 02:31:41','2014-09-17 02:31:41','36f99c8f-0ba4-4e4c-af7d-a07dee715ac1'),
	(3,'Thumb','thumb','crop','center-center',204,280,NULL,NULL,'2014-10-03 03:48:00','2014-10-03 03:48:00','2014-10-03 03:48:00','0f910d7c-0ba2-476a-a7c9-fa489255e601'),
	(4,'Page Slider Size','pageSliderSize','crop','center-center',535,1170,'jpg',82,'2018-07-10 22:26:55','2018-07-09 20:33:17','2018-07-10 22:26:55','e96c3e13-c5ea-4d56-a113-3f6e29224e6c');

/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categories`;

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;

INSERT INTO `craft_categories` (`id`, `groupId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(261,1,'2018-07-05 19:58:38','2018-07-05 19:58:38','df44a98b-08cc-487c-b2ba-82c25da5c2fb');

/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_categorygroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups`;

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `hasUrls`, `template`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,211,'Pickups','pickups',1,'pickups/category.html','2018-07-05 19:57:52','2018-07-05 21:23:46','897ea994-0336-4b48-ad0d-78d71c27963f');

/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_categorygroups_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups_i18n`;

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_categorygroups_i18n` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` DISABLE KEYS */;

INSERT INTO `craft_categorygroups_i18n` (`id`, `groupId`, `locale`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en','pickups/{slug}','{parent.uri}/{slug}','2018-07-05 19:57:52','2018-07-05 19:57:52','e7d6b1a5-a04a-4cce-9ecd-c1aee7055790');

/*!40000 ALTER TABLE `craft_categorygroups_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_content`;

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_addressOne` text COLLATE utf8_unicode_ci,
  `field_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_shortDescription` text COLLATE utf8_unicode_ci,
  `field_copyrightNotice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_contactUsLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_telephone` text COLLATE utf8_unicode_ci,
  `field_facebooklink` text COLLATE utf8_unicode_ci,
  `field_twitterLink` text COLLATE utf8_unicode_ci,
  `field_instagramLink` text COLLATE utf8_unicode_ci,
  `field_addressTwo` text COLLATE utf8_unicode_ci,
  `field_instagramFeed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_mailingList` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_displayTitle` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_heading`, `field_body`, `field_addressOne`, `field_email`, `field_shortDescription`, `field_copyrightNotice`, `field_contactUsLabel`, `field_telephone`, `field_facebooklink`, `field_twitterLink`, `field_instagramLink`, `field_addressTwo`, `field_instagramFeed`, `field_mailingList`, `field_displayTitle`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-29 18:21:32','2018-06-24 18:19:50','59077408-b18f-4041-8894-37cc7c7adff4'),
	(2,2,'en','Homepage','Welcome to Happylager.dev!','<h1>CUSTOM PICKUPS, RECORDING STUDIO &amp; GUITAR WORK SHOP. WE DO IT ALL AT APEX.</h1>\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.</p>\n<p><a class=\"button\" href=\"{entry:74:url}\">Discover more about apex <em class=\"fas fa-long-arrow-alt-right\"></em></a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-29 18:21:35','2018-07-08 18:53:16','73fccf4e-5208-46d9-8f88-99e78ecf855e'),
	(4,4,'en','Barrel Aged Digital Natives','What’s more important?',NULL,NULL,NULL,'<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 21:02:31','2018-06-24 18:35:59','8ff26e7c-5c9d-46a7-873b-c74425789122'),
	(13,24,'en','The Future of Augmented Reality','Your iPhone Is No Longer a Way To Hide',NULL,NULL,NULL,'<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:04:17','2018-06-24 18:35:59','6937fd4c-d3cb-47d0-b0c2-c9dc6ede5f07'),
	(22,45,'en','Bringing Out Play','At the Crossroads of Good and Great',NULL,NULL,NULL,'<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2018-06-24 18:36:00','a54a9de6-a9ca-4876-90eb-ddddc77a2454'),
	(27,61,'en','How Deep the Rabbit Hole Goes','Make Complex Layouts',NULL,NULL,NULL,'<p>\r\n	Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2018-06-24 18:36:00','46fd1164-58a6-4604-88d8-4b148d74186e'),
	(29,74,'en','About','We set out with a simple goal: create the design and products that we would like to see.','<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.</p>','2701 West Thomas St Chicago, Il 60622','info@company.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-09-17 01:15:21','2018-07-10 20:35:03','91f0829c-6749-498c-9dd1-96680a3f0799'),
	(41,99,'en','Fast Company Q&A with Robin Richards',NULL,NULL,NULL,NULL,'<p>The path to what I\'m doing started with not knowing what I wanted to do. I had to make a decision about what I wanted to do as I was graduating college, and I could not figure it out. I majored in English because I couldn\'t figure out how to express my love of...</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-03 02:21:54','2018-06-24 18:36:00','1961ec54-68af-4c16-b386-e730ed1fd599'),
	(43,101,'en','Photography Folio featured on AWWWARDS.com',NULL,NULL,NULL,NULL,'<p>What a well developed site. I really enjoy the design and the attention to details and performance: great use of video and animations (with CSS3 and JS); categories section with so many images and video had a very good scroll frame rate...</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:31:13','2018-06-24 18:36:00','7fc79857-7d61-4d4e-851f-3ae10261214c'),
	(47,105,'en','DIVA! Becomes Famous','Vero eos et accusamus et iusto',NULL,NULL,NULL,'<p>\r\n	At the 2014 Webby Awards, Patton Oswald said that DIVA! “has done for women in the music industry what the 19th amendment did for women 100 years ago.\" Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:58:26','2018-06-24 18:36:00','f4c25f37-19db-4730-b97e-c564f155c7d6'),
	(113,257,'en','Contact',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:35:19','2018-06-24 18:35:19','9c9ead30-120f-4249-aa40-39c8431c80ec'),
	(114,258,'en','Apex Studio',NULL,'<h2 class=\"styled center-text\"><strong>Apex Studio</strong></h2>\n<h1 class=\"center-text pt-s\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. </h1>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:35:36','2018-07-10 23:07:07','428a67f4-02dd-4ae2-ae3f-45316aabea1d'),
	(115,259,'en','Instrument Repairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:36:23','2018-06-24 18:36:23','71c6bdbc-e80d-4530-a9a6-0a97448bf178'),
	(116,260,'en',NULL,NULL,NULL,'Unit 3, Derrycrin road\r\nBT80 0HJ\r\nCookstown','hello@apexmusic.co',NULL,NULL,NULL,'0759 1132 008','https://www.facebook.com/ApexMusicCo/','#apex-music','#apex-music','14 Sullenboy park\r\nBT80 8HP\r\nCookstown',NULL,NULL,NULL,'2018-06-24 18:39:24','2018-07-05 23:09:20','27f31143-a4e2-4cd9-b788-9886e0765af6'),
	(117,261,'en','Strat Style','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 19:58:37','2018-07-05 19:58:37','b37a1868-41fa-4fb0-9e16-d75c169f8737'),
	(118,262,'en','Apex 50s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 20:00:18','2018-07-05 20:06:13','ea03d57f-e0c2-48a2-9ec2-8f4bda041ede'),
	(119,264,'en','About',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:10:16','2018-07-05 22:10:16','3fe52680-28b5-4654-9a4b-517c7d3ba9e8'),
	(120,265,'en','Apex Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:10:46','2018-07-05 22:10:46','4fef3364-7176-49b1-a36f-f44d8b855970'),
	(121,266,'en','Instrument Repairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:11:12','2018-07-05 22:11:12','0f539fe6-389e-41ea-b78b-d0f396c3bdf0'),
	(122,267,'en','Blog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:11:58','2018-07-05 22:11:58','00e63ef9-7eb9-44a7-bebe-8283a500de07'),
	(123,268,'en','Contact',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:12:49','2018-07-05 22:12:49','82e61ec6-9cb4-41c5-9aef-163d934f8408'),
	(124,269,'en','Pickups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:13:45','2018-07-05 22:13:45','ba52780e-b977-4237-a497-df279dec0417'),
	(125,270,'en','Strat Style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:29:47','2018-07-08 15:43:52','e671d47c-4c3e-4153-8a71-15c0bdec73a4'),
	(126,271,'en','Apex 50s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:30:24','2018-07-05 22:30:24','cb6bd3cf-9fc4-43ca-a108-82703419e38b'),
	(127,272,'en','About',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:40:30','2018-07-07 14:40:30','2f9ac333-5160-4314-a8da-6478f829f6c2'),
	(128,273,'en','Apex Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:40:51','2018-07-07 14:40:51','73e51575-8a99-49a9-9cc8-9228c3c3b8fb'),
	(129,274,'en','Work Shop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:42:12','2018-07-07 14:42:12','48ffb0f8-de0a-403b-92d0-2fc04defcd07'),
	(130,275,'en','Blog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:42:38','2018-07-07 14:42:38','72739562-0abb-4605-aace-bc156ff50796'),
	(131,276,'en','About Images 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:10','2018-07-10 22:27:19','3e02414a-895c-40b4-96e8-dfbb37478f9f'),
	(132,277,'en','Apex Home Bg 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:11','2018-07-10 22:27:21','e36630e1-f97a-4174-9166-df26f6312c82'),
	(133,278,'en','Apex Mountain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:12','2018-07-10 22:27:20','9b96988c-d5e5-440f-b835-64bfbf02b7cd'),
	(134,279,'en','Apex Studio 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:12','2018-07-10 22:27:20','ee480415-aaf8-4aee-86b6-49888ea6caf9'),
	(135,280,'en','Apex Studio 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:12','2018-07-10 22:27:22','23d1a392-ea34-47da-9546-d0079be4e2b5'),
	(136,281,'en','Apex Studio 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:13','2018-07-10 22:27:22','c33ea99f-6958-4ce1-b59f-51ac20a5c53a'),
	(137,282,'en','Apex Studio 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:13','2018-07-10 22:27:22','aa992c4a-bd6d-4eda-b6bb-5d906d346200'),
	(138,283,'en','Apex Studio 5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:13','2018-07-10 22:27:23','3bbbcb5d-056b-49fc-824c-828c335e0dbe'),
	(139,284,'en','Apex Studio 6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:14','2018-07-10 22:27:23','f736d5a2-c831-4235-93ad-514ea5e8c8ac'),
	(140,285,'en','Apex Studio 6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:14','2018-07-10 22:27:23','8d659cd6-d72f-467a-b1a7-ab7374a976a3'),
	(141,286,'en','Apex Studio 7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:14','2018-07-10 22:27:24','e22d950d-531e-4d01-b5c0-03265c7fe893'),
	(142,287,'en','Apex Studio 8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:15','2018-07-10 22:27:24','92d60fe2-5359-4cb8-8d50-a4c604cfc105'),
	(143,288,'en','Apex Studio 9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:15','2018-07-10 22:27:25','06ef3f32-54e2-482f-aec1-c8d80179989e'),
	(144,289,'en','Bg Texture A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:15','2018-07-10 22:27:25','2f1d4b53-3cef-48a4-9063-f23b4925c11d'),
	(145,290,'en','Bg Texture B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:15','2018-07-10 22:27:25','1de156e6-c100-4c35-a671-6eba97eb2759'),
	(146,291,'en','Bg Texture C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:15','2018-07-10 22:27:25','0e36d889-a6c3-429b-89ff-110f25669a1b'),
	(147,292,'en','Blog Post 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:16','2018-07-10 22:27:26','7cb43fe3-ab04-4ce0-a51f-0131ee8d54be'),
	(148,293,'en','Concrete Texture',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:16','2018-07-10 22:27:26','6c7a3e72-b361-482e-abeb-bda9fcc282b7'),
	(149,294,'en','Hero Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:16','2018-07-10 22:27:26','267f3114-f408-4565-9210-0c2b6804ca00'),
	(150,295,'en','Hero Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:16','2018-07-10 22:27:26','a0cd2159-08b4-4118-8601-f4a90a0b4453'),
	(151,296,'en','Menu Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:17','2018-07-10 22:27:27','086c2d6d-2c87-4089-9644-1c9c1f3ee902'),
	(152,297,'en','Menu Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:17','2018-07-10 22:27:27','9c316709-5769-400e-b8f3-d70d591fbb19'),
	(153,298,'en','Mountain Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:17','2018-07-10 22:27:27','ac5de9cc-15d2-42c3-85b8-3113e3e6941a'),
	(154,299,'en','Mountian Light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:17','2018-07-10 22:27:27','8677ddd5-4887-4b9e-bd25-6de0103a2d50'),
	(155,300,'en','Mountian Light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:17','2018-07-10 22:27:27','e02ee403-503f-41f9-ba2f-53d54be783cc'),
	(156,301,'en','Pat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:17','2018-07-10 22:27:28','83fc2fe7-690c-4963-8b05-a56a86f0a9f5'),
	(157,302,'en','Pickup Index Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:18','2018-07-10 22:27:28','7236f8ea-90a1-46ee-88f6-d56c53f24cda'),
	(158,303,'en','Pickups Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:18','2018-07-10 22:27:29','b1f2f93e-43ae-4a1d-8cbe-7aa3a50d6eed'),
	(159,304,'en','Single Coil Cream',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:18','2018-07-10 22:27:29','ccfd046c-afa9-4fb2-a89f-70999c1a9dae'),
	(160,305,'en','Slider Holder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:19','2018-07-10 22:27:30','9891c453-12df-4ad2-bb3b-cbd52aaf0d66'),
	(161,306,'en','Studio Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:19','2018-07-10 22:27:30','1dbd24bc-19d9-45b4-8155-b3977d8df7c8'),
	(162,307,'en','Team Dani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:20','2018-07-10 22:27:30','e29a161f-fba4-4521-95cb-228441c7209f'),
	(163,308,'en','Team Dani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:20','2018-07-10 22:27:31','539a08fe-1d8e-40c3-9948-ac501521f747'),
	(164,309,'en','Team Graham',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:20','2018-07-10 22:27:31','50f45232-fd06-43f4-ba7f-e0e87746c396'),
	(165,310,'en','Team Oran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:20','2018-07-10 22:27:31','c15780d2-fa5a-4514-9ac9-23b0d71f92a8'),
	(166,311,'en','Team Willy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:20','2018-07-10 22:27:32','64091b5d-d547-4997-a70b-ad35c13fb873'),
	(167,312,'en','Team Willy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:21','2018-07-10 22:27:32','601bc8e8-9b2b-4ce4-9902-46fccd445182'),
	(168,313,'en','Workshop Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:21','2018-07-10 22:27:32','d2d65879-21ec-40f8-b797-11bbc0f81d9c');

/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_deprecationerrors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_deprecationerrors`;

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_elementindexsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elementindexsettings`;

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Entry','{\"sourceOrder\":[[\"key\",\"*\"],[\"heading\",\"Site Pages\"],[\"key\",\"singles\"],[\"heading\",\"Company\"],[\"key\",\"section:2\"],[\"key\",\"section:8\"],[\"key\",\"section:5\"],[\"key\",\"section:3\"]],\"sources\":{\"*\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"postDate\",\"3\":\"expiryDate\",\"4\":\"author\",\"5\":\"link\"}},\"singles\":{\"tableAttributes\":{\"1\":\"uri\"}},\"section:2\":{\"tableAttributes\":{\"1\":\"type\",\"2\":\"field:75\",\"3\":\"field:15\",\"4\":\"postDate\",\"5\":\"author\",\"6\":\"link\"}},\"section:8\":{\"tableAttributes\":{\"1\":\"field:15\",\"2\":\"field:37\",\"3\":\"field:41\"}},\"section:5\":{\"tableAttributes\":{\"1\":\"field:58\",\"2\":\"uri\"}},\"section:3\":{\"tableAttributes\":{\"1\":\"field:49\",\"2\":\"field:45\",\"3\":\"field:63\",\"4\":\"uri\"}}}}','2015-12-08 22:41:33','2016-06-03 17:43:51','a7fe2b7c-d2cc-41e6-8fe8-bb00fc1f5866'),
	(2,'Category','{\"sources\":{\"group:1\":{\"tableAttributes\":{\"1\":\"link\"}}}}','2018-07-05 20:21:45','2018-07-05 20:21:52','aeca6c9c-8053-442d-9699-9e744f5cfd6b');

/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements`;

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'User',1,0,'2014-07-29 18:21:32','2018-06-24 18:19:50','b66b2bfe-badb-478a-81ff-1fceb638a019'),
	(2,'Entry',1,0,'2014-07-29 18:21:35','2018-07-08 18:53:16','f20120a9-7cb6-4c53-8c06-6041a39cc056'),
	(4,'Entry',1,0,'2014-07-30 21:02:31','2018-06-24 18:35:59','8b6c79cf-8e2a-464d-a50f-833445bab37d'),
	(9,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','a8680541-518f-49e8-9aa0-47ec9acdb6b6'),
	(10,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','2422ea39-7a29-4f40-bf1b-f4a2c6adc569'),
	(11,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','2ee107c6-3401-4884-b63d-fedfdb2b05e5'),
	(12,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','3e53821a-1e96-47d8-a7f2-3d17b023a7c3'),
	(13,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','8d7308d5-3159-4d1a-a7d1-be38d044eb46'),
	(14,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','47acdbd6-a59f-4956-b78d-bac65ce8be3e'),
	(15,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','eb7f2dc9-d5ff-4444-9a20-528b0a814ff5'),
	(16,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','2fc99995-3319-4e40-afd8-a3a558be7d78'),
	(17,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','1611383f-e7ad-4e13-a83b-a0539c3f4cf5'),
	(18,'MatrixBlock',1,0,'2014-07-30 23:02:16','2016-06-03 17:43:25','1114e010-83ff-48e6-91a7-c7cec380f311'),
	(24,'Entry',1,0,'2014-07-31 22:04:17','2018-06-24 18:35:59','09fec6f1-89bf-425e-9fe6-a2d632bb6cf3'),
	(25,'MatrixBlock',1,0,'2014-07-31 22:04:17','2016-06-03 17:43:36','dc20721f-cbcd-4c15-8289-a3882c4773ff'),
	(30,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','e8871ca8-2e14-40f8-ae5e-1555a1786e8d'),
	(31,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','cb003e20-015f-4d3c-9d42-b91d794d0fe1'),
	(32,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','2904c8fa-b0ce-4067-ad56-b1a387a833cf'),
	(33,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','9a8913dd-1fff-4998-accf-791b06d08559'),
	(34,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','2a8166ed-689e-48de-b083-e7585981bcf6'),
	(35,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','734d0e37-f1e0-4353-b4bf-d6e1711fd98b'),
	(36,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','de1a16b5-adcf-4928-b954-dbb890ab491b'),
	(37,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:36','feaf69df-3b41-4e3e-b215-5bab2189b5db'),
	(38,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:37','3054748a-5d1e-4cf7-8a4b-d0e336173185'),
	(39,'MatrixBlock',1,0,'2014-07-31 22:20:21','2016-06-03 17:43:37','8cd813dc-8dd5-4b20-a57d-d3f22eca3a2d'),
	(41,'MatrixBlock',1,0,'2014-07-31 22:22:28','2016-06-03 17:43:36','331bd2de-e441-42ae-b191-135e2e099b16'),
	(45,'Entry',1,0,'2014-07-31 23:20:59','2018-06-24 18:36:00','328b2654-1f59-4a00-8437-c6d0fb1808bf'),
	(46,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','9148d0d8-0104-46f1-9c7b-f80fe437c1e1'),
	(48,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','f355dffe-ac28-4b60-930a-64dbb87a2aec'),
	(49,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','3c2a5f48-c8a8-45ba-a8eb-1fb525ab105d'),
	(50,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','c2dc586b-f969-4e84-b634-9425b98bc2ae'),
	(51,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','57d8bdce-0146-45e9-9f8d-b82788d6baaf'),
	(52,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','6158b2de-d6d6-416e-9951-61dad7777cc1'),
	(53,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:06','fd0c8f21-2c78-45eb-8c3f-58ee386e30b7'),
	(54,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:07','dc3b2510-de46-4566-bdf1-8243c1e6b47a'),
	(55,'MatrixBlock',1,0,'2014-07-31 23:20:59','2016-06-03 17:43:07','1d549b45-5cdc-44b9-9d17-9ec3130c2ebf'),
	(61,'Entry',1,0,'2014-08-06 21:32:48','2018-06-24 18:36:00','584942bd-d91b-4799-96ff-f10b7be450e2'),
	(62,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','e4cc5fc4-3ffa-4e3a-b2bf-29c285566790'),
	(63,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','cfa29e45-5530-450d-bea1-3e1de2c4d6e3'),
	(64,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','caa335f4-1ab7-417a-b653-ec755633a12d'),
	(65,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','fc7739fd-1620-42f2-8465-3b62a904a021'),
	(66,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','478a6d4c-bc58-4428-b093-519a93621da1'),
	(67,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','0deb8f8d-636d-4a14-86d7-4b84ed96b1fc'),
	(68,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','50d4ab7c-d0ca-4f14-a916-51a78fa303f2'),
	(69,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','424042df-73cc-4ad2-94c1-82904a8d17dd'),
	(70,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','11ab6f5b-6eab-4628-9995-4c3283c554d5'),
	(71,'MatrixBlock',1,0,'2014-08-06 21:32:48','2016-06-03 17:42:53','fba79122-da03-4f0f-8b7f-7c7a91ecd41d'),
	(73,'MatrixBlock',1,0,'2014-08-06 21:34:12','2016-06-03 17:42:53','f1f5b6a6-92a8-464f-ad9f-487cea36d137'),
	(74,'Entry',1,0,'2014-09-17 01:15:21','2018-07-10 20:35:03','990289b0-2685-4293-a526-2962328c9bac'),
	(99,'Entry',1,0,'2014-10-03 02:21:54','2018-06-24 18:36:00','1676d123-be2c-4207-a808-74ff8a8d2ee5'),
	(101,'Entry',1,0,'2014-10-03 03:31:13','2018-06-24 18:36:00','d8f7307f-0f0a-4d57-80db-98eb06495f43'),
	(105,'Entry',1,0,'2014-10-03 03:58:26','2018-06-24 18:36:00','f7d1047a-a505-4856-8f28-a1c37cb24e2b'),
	(230,'MatrixBlock',1,0,'2015-02-02 17:04:48','2016-06-03 17:42:35','9fea522f-d5be-4651-a9cc-c235284d1851'),
	(235,'MatrixBlock',1,0,'2015-02-09 21:33:03','2015-02-10 18:08:01','a4e65f65-e1e7-440f-a7cf-95660598e0e8'),
	(236,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','02567d99-2c2c-4d79-a906-4e36e6261df0'),
	(237,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','e087f883-300f-4d8e-bfda-5b2978dbd68e'),
	(238,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','43687ef2-46ac-4ad1-9945-93fd2a00fdb9'),
	(239,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','c921a317-b3ef-4a19-a863-e391f1e465a6'),
	(240,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','f1a47001-ab0a-40d1-815d-86ab957c8775'),
	(241,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','ab91e42c-9cd5-482e-b30c-ff1943e13934'),
	(242,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','08bead16-3e03-4f4d-8923-6a326c9190d1'),
	(243,'MatrixBlock',1,0,'2015-02-10 01:16:49','2015-02-10 18:08:01','2b2f630a-e0d0-4410-be21-ad4582921710'),
	(244,'MatrixBlock',1,0,'2015-02-10 01:23:33','2015-02-10 18:08:01','7122a201-2df8-4c5d-ad87-5e9751189c96'),
	(252,'MatrixBlock',1,0,'2015-02-10 17:25:04','2016-06-03 17:43:06','6f3bff8b-2d6e-4c16-b239-37583648b4a3'),
	(257,'Entry',1,0,'2018-06-24 18:35:19','2018-06-24 18:35:19','f9ea18c4-5739-43e2-aa77-0d444ffa586b'),
	(258,'Entry',1,0,'2018-06-24 18:35:36','2018-07-10 23:07:07','5462201f-e4c1-4117-830d-8441d7c2fa23'),
	(259,'Entry',1,0,'2018-06-24 18:36:23','2018-06-24 18:36:23','0f540059-3b80-465c-873f-d303d412e01a'),
	(260,'GlobalSet',1,0,'2018-06-24 18:39:24','2018-07-05 23:09:20','25e169bb-f41f-436b-b410-3a9b0251f2e8'),
	(261,'Category',1,0,'2018-07-05 19:58:37','2018-07-05 19:58:37','6338fb26-9e01-4699-bea3-a7716ab2cae4'),
	(262,'Entry',1,0,'2018-07-05 20:00:18','2018-07-05 20:06:13','c142b5e1-cde3-44a3-b39d-e1aa4a554fd5'),
	(263,'MatrixBlock',1,0,'2018-07-05 20:06:13','2018-07-05 20:06:13','717be0f7-1bcb-48a1-a09e-b79384cd6928'),
	(264,'Menus_Node',1,0,'2018-07-05 22:10:16','2018-07-05 22:10:16','056a9339-1852-4b3f-bb5a-88ef3502956a'),
	(265,'Menus_Node',1,0,'2018-07-05 22:10:46','2018-07-05 22:10:46','fcbf394a-2efc-40c0-a7b7-51ef7d3dbd42'),
	(266,'Menus_Node',1,0,'2018-07-05 22:11:12','2018-07-05 22:11:12','0e9dc9f7-1722-4a49-ae69-3b186456dcc4'),
	(267,'Menus_Node',1,0,'2018-07-05 22:11:58','2018-07-05 22:11:58','1ea011c3-b67e-49cd-95e5-c2ee8d42fee0'),
	(268,'Menus_Node',1,0,'2018-07-05 22:12:49','2018-07-05 22:12:49','a1f4cd99-f88b-4085-892c-8b551bd281c1'),
	(269,'Menus_Node',1,0,'2018-07-05 22:13:45','2018-07-05 22:13:45','aa01fb62-6d03-428a-876d-2295e58d5312'),
	(270,'Menus_Node',1,0,'2018-07-05 22:29:47','2018-07-08 15:43:52','0d87bd85-bc0f-4dd5-814c-eb9d995134e3'),
	(271,'Menus_Node',1,0,'2018-07-05 22:30:24','2018-07-05 22:30:24','e8534fe5-11e5-450f-88f2-f52e2df6e619'),
	(272,'Menus_Node',1,0,'2018-07-07 14:40:30','2018-07-07 14:40:30','40118ba6-6460-42f9-935e-c1ed01b5b071'),
	(273,'Menus_Node',1,0,'2018-07-07 14:40:51','2018-07-07 14:40:51','7756b991-06b2-4d25-8321-7f90d94ca135'),
	(274,'Menus_Node',1,0,'2018-07-07 14:42:12','2018-07-07 14:42:12','29ec2ce5-2a9a-4266-a0f4-77f4e35ae1fa'),
	(275,'Menus_Node',1,0,'2018-07-07 14:42:38','2018-07-07 14:42:38','802dc356-e0a7-42dd-bd14-09cab74f2fd4'),
	(276,'Asset',1,0,'2018-07-08 13:52:10','2018-07-10 22:27:19','dbf04abf-80a4-4ed4-81c3-24275b34d1a2'),
	(277,'Asset',1,0,'2018-07-08 13:52:11','2018-07-10 22:27:21','56cbe6ad-9a81-4cff-89f8-0621086cc9f3'),
	(278,'Asset',1,0,'2018-07-08 13:52:12','2018-07-10 22:27:20','c115c72b-9996-4e55-af44-32494bf740a1'),
	(279,'Asset',1,0,'2018-07-08 13:52:12','2018-07-10 22:27:20','6781ed0e-7f95-4227-9ac1-e211aac56e80'),
	(280,'Asset',1,0,'2018-07-08 13:52:12','2018-07-10 22:27:22','9b2b0dde-e422-4f70-9407-1f99878b9bb8'),
	(281,'Asset',1,0,'2018-07-08 13:52:13','2018-07-10 22:27:22','9600e21c-6f75-4749-8717-994c4ae51459'),
	(282,'Asset',1,0,'2018-07-08 13:52:13','2018-07-10 22:27:22','d6c8c539-4bff-4f65-b055-e9f6d3a7bdc0'),
	(283,'Asset',1,0,'2018-07-08 13:52:13','2018-07-10 22:27:23','2b022d15-c3c2-4dd9-98bf-95cf0913eb37'),
	(284,'Asset',1,0,'2018-07-08 13:52:14','2018-07-10 22:27:23','b9aab2a1-8358-4d53-ab80-9d3490570274'),
	(285,'Asset',1,0,'2018-07-08 13:52:14','2018-07-10 22:27:23','97ddbb36-036b-49a8-aeec-0b7e35354bd4'),
	(286,'Asset',1,0,'2018-07-08 13:52:14','2018-07-10 22:27:24','41058e00-26a2-489e-9d46-aee2cc38b69e'),
	(287,'Asset',1,0,'2018-07-08 13:52:15','2018-07-10 22:27:24','5bca6db1-60cf-4b5b-a016-8511788e818b'),
	(288,'Asset',1,0,'2018-07-08 13:52:15','2018-07-10 22:27:25','a2c7c1c4-2628-4950-b04c-b5c7057555d3'),
	(289,'Asset',1,0,'2018-07-08 13:52:15','2018-07-10 22:27:25','6f07b20c-4ba1-40b9-98a0-68edb09cd90d'),
	(290,'Asset',1,0,'2018-07-08 13:52:15','2018-07-10 22:27:25','611573ea-d039-4aa4-936e-49444b5c0b78'),
	(291,'Asset',1,0,'2018-07-08 13:52:15','2018-07-10 22:27:25','91217fe5-0ddc-4e68-89e9-3a003f0b8d4d'),
	(292,'Asset',1,0,'2018-07-08 13:52:16','2018-07-10 22:27:26','b0c7754e-1daf-4cac-a60e-e3ccadc00302'),
	(293,'Asset',1,0,'2018-07-08 13:52:16','2018-07-10 22:27:26','7642326a-38f4-418b-8888-9717b66c2792'),
	(294,'Asset',1,0,'2018-07-08 13:52:16','2018-07-10 22:27:26','c44ed87b-249f-4f3a-a8e1-fd6fbdba7e49'),
	(295,'Asset',1,0,'2018-07-08 13:52:16','2018-07-10 22:27:26','04be3cf8-9be8-49fc-98fc-283189a76e30'),
	(296,'Asset',1,0,'2018-07-08 13:52:17','2018-07-10 22:27:27','90eba467-718e-49a1-8c8f-696871240b5a'),
	(297,'Asset',1,0,'2018-07-08 13:52:17','2018-07-10 22:27:27','18d7343f-f929-4f53-b1bf-424d9395907a'),
	(298,'Asset',1,0,'2018-07-08 13:52:17','2018-07-10 22:27:27','2c964890-d5bb-4ceb-875a-6c163ccd4060'),
	(299,'Asset',1,0,'2018-07-08 13:52:17','2018-07-10 22:27:27','50079958-9a65-4527-9060-605b74928b3f'),
	(300,'Asset',1,0,'2018-07-08 13:52:17','2018-07-10 22:27:27','db890d2b-29f6-4178-a7f1-46bba87e507f'),
	(301,'Asset',1,0,'2018-07-08 13:52:17','2018-07-10 22:27:28','197ec3fc-2677-401b-b5d1-790afd37647c'),
	(302,'Asset',1,0,'2018-07-08 13:52:18','2018-07-10 22:27:28','0c67d607-4a63-4372-a1f8-8cc20fb48241'),
	(303,'Asset',1,0,'2018-07-08 13:52:18','2018-07-10 22:27:29','f1de5b65-ca39-4a43-910f-d015981949c0'),
	(304,'Asset',1,0,'2018-07-08 13:52:18','2018-07-10 22:27:29','765df193-c457-40c6-8591-48fefd223311'),
	(305,'Asset',1,0,'2018-07-08 13:52:19','2018-07-10 22:27:30','f75560fe-c30b-415c-9919-0eed5f4b4f01'),
	(306,'Asset',1,0,'2018-07-08 13:52:19','2018-07-10 22:27:30','eab832d2-ad36-4f56-9e3f-cdcc707d8a8c'),
	(307,'Asset',1,0,'2018-07-08 13:52:20','2018-07-10 22:27:30','eb84e960-8ba0-447b-b55c-e46211708e39'),
	(308,'Asset',1,0,'2018-07-08 13:52:20','2018-07-10 22:27:31','a8cf9d74-174c-4732-8975-6f15137206dc'),
	(309,'Asset',1,0,'2018-07-08 13:52:20','2018-07-10 22:27:31','f442deb4-6ade-4f0b-8f2a-a94f0d772481'),
	(310,'Asset',1,0,'2018-07-08 13:52:20','2018-07-10 22:27:31','38673f9d-245b-4352-95d0-5ff83bd17560'),
	(311,'Asset',1,0,'2018-07-08 13:52:20','2018-07-10 22:27:32','9f98ef33-6103-4cea-a227-4edb5cdd8991'),
	(312,'Asset',1,0,'2018-07-08 13:52:21','2018-07-10 22:27:32','32dec0e1-41cb-4230-96af-74969ed52f59'),
	(313,'Asset',1,0,'2018-07-08 13:52:21','2018-07-10 22:27:32','3aa306e9-0019-42bc-b4ba-0fdb5c668618'),
	(314,'MatrixBlock',1,0,'2018-07-08 13:54:49','2018-07-08 18:53:16','c7d1d45c-4d5f-4c56-a3b8-d20c9bc417ec'),
	(315,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-08 18:53:16','3a113500-3edc-40a1-87d0-ce9650fde487'),
	(316,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-08 18:53:16','4ca74d14-f965-4835-bafb-b7bb700bd3f4'),
	(317,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-08 18:53:16','ff289ff2-83fc-4240-857f-81b5065f1020'),
	(318,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-08 18:53:16','9b559529-fe07-4988-a475-06714cf1a31f'),
	(319,'MatrixBlock',1,0,'2018-07-08 16:28:44','2018-07-08 18:53:16','d9c4a39d-9618-4e82-82c1-8d94953de95d'),
	(320,'MatrixBlock',1,0,'2018-07-08 16:31:00','2018-07-08 18:53:16','faa52e0f-db7e-4480-9138-60585194e0ad'),
	(321,'MatrixBlock',1,0,'2018-07-08 16:43:10','2018-07-08 18:53:16','faa2e1c5-f69c-427f-bf74-68dc1f5cc68f'),
	(322,'MatrixBlock',1,0,'2018-07-08 18:53:16','2018-07-08 18:53:16','ff9fdde4-2695-41c1-8632-05d07f73f35e'),
	(323,'MatrixBlock',1,0,'2018-07-08 18:53:16','2018-07-08 18:53:16','03a7c23f-b751-4b17-9077-b85a68a95c39'),
	(324,'MatrixBlock',1,0,'2018-07-09 22:29:55','2018-07-10 20:35:03','c914b4f2-e7a2-487d-96ec-32376587a551'),
	(325,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-10 20:35:03','abf9731b-5e46-404f-be0f-8b09eb11fc2c'),
	(326,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-10 20:35:03','43c951a2-902f-408b-815e-923ccea7f5bc'),
	(327,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-10 20:35:03','747d45e6-1b06-4eba-b262-fd7857d7a881'),
	(328,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-10 20:35:03','b46dc56e-f061-4321-9692-621b205f8c71'),
	(329,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-07-10 23:07:07','1faf6dcb-cf14-43c8-9782-e299c7fb9b8d'),
	(330,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-07-10 23:07:07','3ed48a0a-a0f3-4e72-96db-06be9b271f2d'),
	(331,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-07-10 23:07:07','4065421b-9214-4bd2-891d-ce7621100948'),
	(332,'MatrixBlock',1,0,'2018-07-10 22:44:31','2018-07-10 23:07:07','016745f4-1e8b-4538-9e16-628d9afb3417'),
	(333,'MatrixBlock',1,0,'2018-07-10 23:05:04','2018-07-10 23:07:07','e1dd702f-c42a-45ac-8c73-a889a59b7293');

/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements_i18n`;

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en','',NULL,1,'2014-07-29 18:21:32','2018-06-24 18:19:50','3de169cc-23ea-4e64-be61-921ad79267f8'),
	(2,2,'en','homepage','__home__',1,'2014-07-29 18:21:35','2018-07-08 18:53:16','f920f3e1-d004-4e8f-8281-897f0f72e524'),
	(4,4,'en','barrel-aged-digital-natives','blog/barrel-aged-digital-natives',1,'2014-07-30 21:02:32','2018-06-24 18:35:59','837aba4e-fe44-4aac-8aa1-dfa1bfe12ab8'),
	(9,9,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','11ce0ce8-091f-4444-bb9c-461a33d13c68'),
	(10,10,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','b37179c2-0526-4a95-8410-ef1668de75b6'),
	(11,11,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','b9e26083-e732-4489-ba8c-f47a591da321'),
	(12,12,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','aa3a38c9-0fff-4875-a52c-d56c975365d7'),
	(13,13,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','1e9e4b0e-6a94-443f-8a45-6a30ff0fc556'),
	(14,14,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','2c73e3f9-2511-4554-874b-81382897a783'),
	(15,15,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','fbe8b776-df2b-45eb-88ef-81b563c32259'),
	(16,16,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','6d2371f8-919d-4266-9cc7-2414ff868304'),
	(17,17,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','6606fe1d-c497-4ca1-a517-ecef8fb44897'),
	(18,18,'en','',NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','773f1a51-cb75-481f-99d8-e893960e662f'),
	(24,24,'en','the-future-of-augmented-reality','blog/the-future-of-augmented-reality',1,'2014-07-31 22:04:17','2018-06-24 18:36:00','77d7ce01-9bd6-4e59-85ce-141ae19d6bbc'),
	(25,25,'en','',NULL,1,'2014-07-31 22:04:17','2016-06-03 17:43:36','b9525e15-4408-4d45-874a-844e72b110fe'),
	(30,30,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','77399117-fc69-4bfe-9395-772acdae0619'),
	(31,31,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','6cf12c95-4009-482c-81fc-62547634259b'),
	(32,32,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','89724835-87df-4fd8-9862-2534de377b17'),
	(33,33,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','ba28ddbd-de6a-4929-8c73-3abb1277e1e8'),
	(34,34,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','c8c12806-fe91-430e-863c-c1071f6f9fdc'),
	(35,35,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','5eb56cda-7dda-44a9-8484-14ad7e3aa628'),
	(36,36,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','b3a97cf3-0389-4f2b-ad36-533cbc23be96'),
	(37,37,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:36','dd11b491-d78d-48ed-a973-8930ea8c9979'),
	(38,38,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:37','bb177956-099f-48bb-9767-5bb068d503d3'),
	(39,39,'en','',NULL,1,'2014-07-31 22:20:21','2016-06-03 17:43:37','45132a5d-71f4-4832-af51-c0e7c68f2360'),
	(41,41,'en','',NULL,1,'2014-07-31 22:22:28','2016-06-03 17:43:36','9c8dbe9e-60de-4583-9c42-cd2f041e0cb4'),
	(45,45,'en','bringing-out-play','blog/bringing-out-play',1,'2014-07-31 23:20:59','2018-06-24 18:36:00','af4960e3-e2e7-489f-9636-c472a22bec70'),
	(46,46,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','00d35ef3-acb9-4f07-83c5-179ea1a78a95'),
	(48,48,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','93ed9ec2-ba45-4b73-bcfe-f8a4ecc2dc3d'),
	(49,49,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','d6283cd1-ae8f-469f-8fe3-c5750bf39dd0'),
	(50,50,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','50edc37c-6ba5-41ab-993a-0e5d790c8c5e'),
	(51,51,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','1d3b249e-88e3-4a58-8034-9d75cf355ec6'),
	(52,52,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','c6352bda-c82d-4cbb-bb20-02713c33e775'),
	(53,53,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:07','81081e42-3b81-4c78-a19a-4b56b5ab772d'),
	(54,54,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:07','9af6cb08-a7a7-47bf-ba99-8b392ef86748'),
	(55,55,'en','',NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:07','60b2dc17-8392-4bb2-a197-999c9b3666f5'),
	(61,61,'en','how-deep-the-rabbit-hole-goes','blog/how-deep-the-rabbit-hole-goes',1,'2014-08-06 21:32:48','2018-06-24 18:36:00','ff22b70a-53a0-4d83-b8a6-bb92ba241b0d'),
	(62,62,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','daaed94b-2b47-4498-ab55-06bc2917927d'),
	(63,63,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','f4127af7-734d-41a7-b788-b164ad127eab'),
	(64,64,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','d1b102e5-5fb8-43ff-b181-1dc6767c9009'),
	(65,65,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','7afc9629-4dc8-425f-bac8-9430fe586378'),
	(66,66,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','adfb910b-8d38-4987-ab55-305a6708c7b9'),
	(67,67,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','2d82fa19-3123-461e-8dca-9ec70fcbab90'),
	(68,68,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','23c9931c-6645-407a-b070-cc4f38dec6e4'),
	(69,69,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','df04d097-5fc8-4a37-88f6-f80b71c354a5'),
	(70,70,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','9dcd68fb-a3fe-476e-befc-d6321f5870a5'),
	(71,71,'en','',NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','be6acb1f-9526-439e-acff-d3cbd3279e0c'),
	(73,73,'en','',NULL,1,'2014-08-06 21:34:12','2016-06-03 17:42:53','32679b24-4811-4c45-859d-9cc647d5620a'),
	(74,74,'en','about','about',1,'2014-09-17 01:15:21','2018-07-10 20:35:03','d101404e-29cf-4a9a-99f7-58f2f0ea1b28'),
	(99,99,'en','fast-company-q-a-with-robin-richards','blog/fast-company-q-a-with-robin-richards',1,'2014-10-03 02:21:54','2018-06-24 18:36:00','3cb6fb76-db09-493c-ae73-c240a48be4a4'),
	(101,101,'en','photography-folio-featured-on-awwwards-com','blog/photography-folio-featured-on-awwwards-com',1,'2014-10-03 03:31:13','2018-06-24 18:36:00','c46d3471-190e-4e29-a5e7-9b59d64e76b8'),
	(105,105,'en','diva-becomes-famous','blog/diva-becomes-famous',1,'2014-10-03 03:58:26','2018-06-24 18:36:01','70eb360b-e731-4888-b625-da2f82d7fbde'),
	(218,230,'en','',NULL,1,'2015-02-02 17:04:48','2016-06-03 17:42:35','047baa2a-bfd7-4e25-a80c-4c1a0f326fa5'),
	(224,235,'en','',NULL,1,'2015-02-09 21:33:03','2015-02-10 18:08:01','feabdbeb-fa67-4a6d-879e-117f64ab239a'),
	(225,236,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','0b732449-f46a-4220-93e6-a6bcc0e799a5'),
	(226,237,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','670fc8ff-b3af-473c-a9a2-f0cc8cf9e435'),
	(227,238,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','451f6be2-8576-4b8a-afa4-52e1389f747f'),
	(228,239,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','4f5c3767-66f9-4236-a22e-d6b98049d67c'),
	(229,240,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','21b1e324-7d2e-42c6-a121-77d8aaf20bb7'),
	(230,241,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','08216ae3-a22d-4f75-a4f2-aa20e8c91e3f'),
	(231,242,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','cd658a50-c7a2-42b4-9b9e-73b512e5474f'),
	(232,243,'en','',NULL,1,'2015-02-10 01:16:49','2015-02-10 18:08:01','a4ffa5d7-fedd-4a82-b63d-a678e8584c52'),
	(233,244,'en','',NULL,1,'2015-02-10 01:23:33','2015-02-10 18:08:01','908e914b-18c5-46e0-93c7-a30893754aa5'),
	(241,252,'en','',NULL,1,'2015-02-10 17:25:04','2016-06-03 17:43:06','4b8471b8-4199-4a97-8834-46b09a4e6fc8'),
	(246,257,'en','contact','contact',1,'2018-06-24 18:35:19','2018-06-24 18:35:19','9479984b-e621-4d9b-850b-098009f51d94'),
	(247,258,'en','apex-studio','apex-studio',1,'2018-06-24 18:35:36','2018-07-10 23:07:07','759b0724-7416-4de7-aebc-a761eecf7203'),
	(248,259,'en','instrument-repairs','instrument-repairs',1,'2018-06-24 18:36:23','2018-06-24 18:36:23','5c09d927-ed0f-4941-874d-9afd771dae3e'),
	(249,260,'en','',NULL,1,'2018-06-24 18:39:24','2018-07-05 23:09:20','8dd44dbe-3b8d-4776-af62-ea569bac1d7d'),
	(250,261,'en','strat-style','pickups/strat-style',1,'2018-07-05 19:58:38','2018-07-05 19:58:38','e0fa86f2-cf8e-4c19-b280-5c4114a7d2fe'),
	(251,262,'en','apex-50s','pickups/apex-50s',1,'2018-07-05 20:00:18','2018-07-05 20:06:13','02c41839-8f01-49f9-8900-4029f9cf1efb'),
	(252,263,'en','',NULL,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','eb352164-4519-478a-972d-206f0a7255d1'),
	(253,264,'en','about',NULL,1,'2018-07-05 22:10:16','2018-07-05 22:10:16','12f63afc-30c3-444c-a73f-082241932d95'),
	(254,265,'en','apex-studio',NULL,1,'2018-07-05 22:10:46','2018-07-05 22:10:46','fb441222-8589-4703-b9e4-636ccd84f5d5'),
	(255,266,'en','instrument-repairs',NULL,1,'2018-07-05 22:11:12','2018-07-05 22:11:12','8783feab-fa20-48e0-a6d6-91d4707c7d2b'),
	(256,267,'en','blog',NULL,1,'2018-07-05 22:11:58','2018-07-05 22:11:58','72973090-64fb-4d4f-b22a-6b89d56fe8aa'),
	(257,268,'en','contact',NULL,1,'2018-07-05 22:12:49','2018-07-05 22:12:49','07120286-351c-497a-964f-ca36be6fa29e'),
	(258,269,'en','pickups',NULL,1,'2018-07-05 22:13:45','2018-07-05 22:13:45','c42388cb-b3ae-4c65-ba68-65056438a0a9'),
	(259,270,'en','strat-style',NULL,1,'2018-07-05 22:29:47','2018-07-08 15:43:52','6b4e955d-7ba7-41cf-9648-e1f5c90f8ebb'),
	(260,271,'en','apex-50s',NULL,1,'2018-07-05 22:30:24','2018-07-08 15:43:52','d99f60d9-0762-4766-a53f-65c787593a4b'),
	(261,272,'en','about',NULL,1,'2018-07-07 14:40:30','2018-07-07 14:40:30','409ba512-0ef0-4629-9a2d-c2b9755a4905'),
	(262,273,'en','apex-studio',NULL,1,'2018-07-07 14:40:51','2018-07-07 14:40:51','ba74d043-f8fc-4aa0-b346-6c07ee0e88ac'),
	(263,274,'en','work-shop',NULL,1,'2018-07-07 14:42:12','2018-07-07 14:42:12','f11f777a-0374-4370-a430-0f1bb4d6de63'),
	(264,275,'en','blog',NULL,1,'2018-07-07 14:42:38','2018-07-07 14:42:38','8030ac8e-adb0-455b-a21f-c35b451af183'),
	(265,276,'en','about-images-1',NULL,1,'2018-07-08 13:52:10','2018-07-10 22:27:19','119d82f0-8030-47db-b5e7-78685163a459'),
	(266,277,'en','apex-home-bg-1',NULL,1,'2018-07-08 13:52:11','2018-07-10 22:27:21','c14701da-3cf6-486e-b507-6ef9f3c2c399'),
	(267,278,'en','apex-mountain',NULL,1,'2018-07-08 13:52:12','2018-07-10 22:27:20','cc1f8133-953f-42d7-9852-cb201144d76e'),
	(268,279,'en','apex-studio-1',NULL,1,'2018-07-08 13:52:12','2018-07-10 22:27:20','a071fb65-3bdd-4db8-87d9-905f948e754d'),
	(269,280,'en','apex-studio-2',NULL,1,'2018-07-08 13:52:12','2018-07-10 22:27:22','358c2624-768e-4fdb-9b77-c7dd90deb6db'),
	(270,281,'en','apex-studio-3',NULL,1,'2018-07-08 13:52:13','2018-07-10 22:27:22','c52791c5-cda1-4678-a73c-61f008b31b8e'),
	(271,282,'en','apex-studio-4',NULL,1,'2018-07-08 13:52:13','2018-07-10 22:27:22','39e74702-0a05-4f81-a7e8-a6032457fb90'),
	(272,283,'en','apex-studio-5',NULL,1,'2018-07-08 13:52:13','2018-07-10 22:27:23','787f26f8-ea4a-41ea-857d-9fa493b8a33a'),
	(273,284,'en','apex-studio-6',NULL,1,'2018-07-08 13:52:14','2018-07-10 22:27:23','683b17aa-c566-4062-a356-94a4f5eecbde'),
	(274,285,'en','apex-studio-6',NULL,1,'2018-07-08 13:52:14','2018-07-10 22:27:23','5a2ae234-16f4-4d51-aa29-0a11b7fffca0'),
	(275,286,'en','apex-studio-7',NULL,1,'2018-07-08 13:52:14','2018-07-10 22:27:24','37163e55-ea8d-49a6-9fd8-b072c3aa14fb'),
	(276,287,'en','apex-studio-8',NULL,1,'2018-07-08 13:52:15','2018-07-10 22:27:24','5d47150e-ab8d-425c-8ab1-d7b63f3d49f8'),
	(277,288,'en','apex-studio-9',NULL,1,'2018-07-08 13:52:15','2018-07-10 22:27:25','abb1d8ab-36d0-4242-9ea4-9f450df0d7f1'),
	(278,289,'en','bg-texture-a',NULL,1,'2018-07-08 13:52:15','2018-07-10 22:27:25','e542e072-f70a-4ae8-b434-9c1fa2567885'),
	(279,290,'en','bg-texture-b',NULL,1,'2018-07-08 13:52:15','2018-07-10 22:27:25','5cd228d0-715a-4a5f-b42a-eebef64ac8b2'),
	(280,291,'en','bg-texture-c',NULL,1,'2018-07-08 13:52:15','2018-07-10 22:27:25','b5a33c4e-1100-4f92-8491-d18f27151ede'),
	(281,292,'en','blog-post-1',NULL,1,'2018-07-08 13:52:16','2018-07-10 22:27:26','3335fbc8-b8f3-4206-a332-1d4d298eb759'),
	(282,293,'en','concrete-texture',NULL,1,'2018-07-08 13:52:16','2018-07-10 22:27:26','9c61b76d-a02f-4d89-8ba8-26befe012c9f'),
	(283,294,'en','hero-logo',NULL,1,'2018-07-08 13:52:16','2018-07-10 22:27:26','e2e17cfe-1d4f-4af0-aa8c-e693a46650a2'),
	(284,295,'en','hero-logo',NULL,1,'2018-07-08 13:52:16','2018-07-10 22:27:26','3d98f735-3255-4df8-a8b7-a79f5bd768da'),
	(285,296,'en','menu-logo',NULL,1,'2018-07-08 13:52:17','2018-07-10 22:27:27','d3f5f908-08fb-4d9b-9496-fb44bcbe9e5d'),
	(286,297,'en','menu-logo',NULL,1,'2018-07-08 13:52:17','2018-07-10 22:27:27','15ee2684-0f05-434d-8fc5-38c41b31be21'),
	(287,298,'en','mountain-bg',NULL,1,'2018-07-08 13:52:17','2018-07-10 22:27:27','460f21bb-3cdc-4f00-8268-bc9ef25bc70a'),
	(288,299,'en','mountian-light',NULL,1,'2018-07-08 13:52:17','2018-07-10 22:27:27','2b1a8394-3297-4b0f-bfcd-8a12a153a81c'),
	(289,300,'en','mountian-light',NULL,1,'2018-07-08 13:52:17','2018-07-10 22:27:27','79ef9cfd-3eff-41a2-a426-3d7768c3d946'),
	(290,301,'en','pat',NULL,1,'2018-07-08 13:52:17','2018-07-10 22:27:28','8c6e4cec-101b-4b5f-b1c8-262c8e3d09ce'),
	(291,302,'en','pickup-index-bg',NULL,1,'2018-07-08 13:52:18','2018-07-10 22:27:28','0f874250-8f93-4c53-9d28-deb02572d051'),
	(292,303,'en','pickups-bg',NULL,1,'2018-07-08 13:52:18','2018-07-10 22:27:29','f8bf11c0-5159-4549-9f82-e1bfcc16bbdc'),
	(293,304,'en','single-coil-cream',NULL,1,'2018-07-08 13:52:18','2018-07-10 22:27:29','ddd873ca-3716-4bfc-b084-0b3b9b490f04'),
	(294,305,'en','slider-holder',NULL,1,'2018-07-08 13:52:19','2018-07-10 22:27:30','06879b3b-6278-4285-9e2a-e22add5abbf4'),
	(295,306,'en','studio-bg',NULL,1,'2018-07-08 13:52:19','2018-07-10 22:27:30','056be14c-bc16-4a9b-beca-2cbb87991255'),
	(296,307,'en','team-dani',NULL,1,'2018-07-08 13:52:20','2018-07-10 22:27:30','c264229a-5a15-4c30-962f-62980ea566c4'),
	(297,308,'en','team-dani',NULL,1,'2018-07-08 13:52:20','2018-07-10 22:27:31','a104343b-aedb-45bb-b2b5-1a626e295e02'),
	(298,309,'en','team-graham',NULL,1,'2018-07-08 13:52:20','2018-07-10 22:27:31','ff001841-3f97-415e-9da2-251e309fc265'),
	(299,310,'en','team-oran',NULL,1,'2018-07-08 13:52:20','2018-07-10 22:27:31','45acfa5c-c3a5-4a50-a5e4-28f5502f5571'),
	(300,311,'en','team-willy',NULL,1,'2018-07-08 13:52:20','2018-07-10 22:27:32','f52bf7e3-f902-4c99-a231-19cc04d887d6'),
	(301,312,'en','team-willy',NULL,1,'2018-07-08 13:52:21','2018-07-10 22:27:32','56fa6672-f1de-4953-8821-78267af2a506'),
	(302,313,'en','workshop-bg',NULL,1,'2018-07-08 13:52:21','2018-07-10 22:27:32','ddb8517e-7711-4a9c-bb6b-812e17cc0df4'),
	(303,314,'en','',NULL,1,'2018-07-08 13:54:49','2018-07-08 18:53:16','d5a5af98-d58a-4a99-a14a-4e3e6de332ba'),
	(304,315,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-08 18:53:16','5c40b090-2a1e-4c90-b47a-5818cc67dea3'),
	(305,316,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-08 18:53:16','9461eea6-68b1-4fef-b23c-33e746684525'),
	(306,317,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-08 18:53:16','64be767d-b8a1-41f0-b78d-7576f791c987'),
	(307,318,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-08 18:53:16','18a89496-3075-4dcd-a131-8c57daa0335b'),
	(308,319,'en','',NULL,1,'2018-07-08 16:28:44','2018-07-08 18:53:16','4716a65f-6328-4d49-8572-6842a624b0d7'),
	(309,320,'en','',NULL,1,'2018-07-08 16:31:00','2018-07-08 18:53:16','d05c3bc1-3da3-4139-9337-7f7cc7db1c0b'),
	(310,321,'en','',NULL,1,'2018-07-08 16:43:10','2018-07-08 18:53:16','77315ad6-9335-42e8-a5b2-92816d7a09ed'),
	(311,322,'en','',NULL,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','d6a54233-4ca3-4276-b370-76058d210081'),
	(312,323,'en','',NULL,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','711cc7ba-de62-47a8-83bd-46ab2b244dce'),
	(313,324,'en','',NULL,1,'2018-07-09 22:29:55','2018-07-10 20:35:03','7a0f592e-f1eb-40e8-8afa-ae6a73b5cab2'),
	(314,325,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','94bf82f3-089b-4a94-b63b-2a54bc0db58c'),
	(315,326,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','90e1cdb2-2c65-413e-a9f4-b4ec7b4e111c'),
	(316,327,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','498fea41-6841-4392-a871-b355deefac19'),
	(317,328,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','488e9a77-5e85-4667-a389-751b709cbc44'),
	(318,329,'en','',NULL,1,'2018-07-10 22:20:53','2018-07-10 23:07:07','b79a7e6e-2e73-4839-91f5-66a6aa80fb15'),
	(319,330,'en','',NULL,1,'2018-07-10 22:20:53','2018-07-10 23:07:07','450460fe-4d3d-4287-95cb-6fdc215773f8'),
	(320,331,'en','',NULL,1,'2018-07-10 22:20:53','2018-07-10 23:07:07','024b3161-16ac-4d05-8838-f03fdb249aa8'),
	(321,332,'en','',NULL,1,'2018-07-10 22:44:31','2018-07-10 23:07:07','7644856b-adb9-46c1-afda-7ba083f87d25'),
	(322,333,'en','',NULL,1,'2018-07-10 23:05:04','2018-07-10 23:07:07','b0d25227-23cb-434f-a388-0bbbe9934fa1');

/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_emailmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_emailmessages`;

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entries`;

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(2,1,1,NULL,'2014-07-29 18:21:35',NULL,'2014-07-29 18:21:35','2018-07-08 18:53:17','53ea9ee4-5daf-4d0f-9955-9385092bbd60'),
	(4,2,2,1,'2016-05-06 00:00:00',NULL,'2014-07-30 21:02:32','2016-06-03 17:43:25','d011f859-bee4-4f35-9159-392f5c7a5e6d'),
	(24,2,2,1,'2016-05-07 00:00:00',NULL,'2014-07-31 22:04:17','2016-06-03 17:43:37','30fcf618-c8df-4b22-b00a-8de18596e87f'),
	(45,2,2,1,'2016-05-05 00:00:00',NULL,'2014-07-31 23:20:59','2016-06-03 17:43:07','ad571dd1-4691-434a-b961-0133975beb03'),
	(61,2,2,1,'2016-05-04 00:00:00',NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','37b64dde-6b73-4846-930a-ca032467d95b'),
	(74,4,4,NULL,'2014-09-17 01:15:21',NULL,'2014-09-17 01:15:21','2018-07-10 20:35:03','c31210d7-7e6b-465e-b232-dc2d19b10745'),
	(99,2,6,1,'2016-05-03 00:00:00',NULL,'2014-10-03 02:21:54','2016-06-03 17:42:43','c731599d-6635-4b19-a535-e68fe63a1217'),
	(101,2,6,1,'2016-05-02 00:00:00',NULL,'2014-10-03 03:31:13','2016-06-03 17:42:26','16091360-c9c9-4546-91cd-df15e3999abd'),
	(105,2,2,1,'2016-05-01 00:00:00',NULL,'2014-10-03 03:58:26','2016-06-03 17:42:35','144b5696-381b-4f42-864b-c267b3a54cc3'),
	(257,9,NULL,NULL,'2018-06-24 18:35:19',NULL,'2018-06-24 18:35:19','2018-06-24 18:35:19','bd2069bf-6c3b-4922-b657-f914a6c43a54'),
	(258,10,NULL,NULL,'2018-06-24 18:35:36',NULL,'2018-06-24 18:35:36','2018-07-10 23:07:08','6756de37-75b3-4218-84b1-b234b20ca04a'),
	(259,11,NULL,NULL,'2018-06-24 18:36:23',NULL,'2018-06-24 18:36:23','2018-06-24 18:36:23','344e43f8-036c-45a4-850d-4e070fd84d92'),
	(262,12,14,1,'2018-07-05 20:00:00',NULL,'2018-07-05 20:00:18','2018-07-05 20:06:13','bc3d46e0-2ef2-401c-b4ed-1370c37ca0b1');

/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entrydrafts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrydrafts`;

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_entrytypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrytypes`;

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,236,'Homepage','homepage',0,NULL,'{section.name|raw}',NULL,'2014-07-29 18:21:35','2018-07-08 18:48:37','1f72a359-0ce9-4415-82dc-88dc833073c3'),
	(2,2,197,'Article','article',1,'Title',NULL,NULL,'2014-07-29 18:21:35','2016-06-03 17:38:06','eba60966-6218-4985-b901-fff1e5f97a49'),
	(4,4,248,'About','about',1,'',NULL,NULL,'2014-09-17 01:15:21','2018-07-10 21:18:51','6ef72b30-6af9-4545-81e9-b2c900cd08d4'),
	(6,2,92,'Link','link',1,'Title',NULL,NULL,'2014-10-03 02:11:55','2014-10-03 02:15:38','b31c607b-b75a-4a78-b14b-d94bf8faa0c3'),
	(11,9,198,'Contact','contact',0,NULL,'{section.name|raw}',1,'2018-06-24 18:35:19','2018-06-24 18:35:19','7edd4a7b-9cf4-4286-b351-9df85c7f390b'),
	(12,10,250,'Apex Studio','apexStudio',1,'',NULL,1,'2018-06-24 18:35:36','2018-07-10 22:15:21','cbd4ca64-780d-40f0-8cd7-2d938d0ca2fb'),
	(13,11,200,'Instrument Repairs','instrumentRepairs',0,NULL,'{section.name|raw}',1,'2018-06-24 18:36:23','2018-06-24 18:36:23','eda96e9a-cade-465f-9d43-60d3cbfc02fc'),
	(14,12,207,'Pickups','pickups',1,'Title',NULL,1,'2018-07-05 19:59:50','2018-07-05 20:09:09','e34ecaa9-7579-4b2d-bc6b-3218910066e8');

/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entryversions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entryversions`;

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,4,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754151,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"\"}}}}}','2014-07-30 21:02:32','2014-07-30 21:02:32','0ddca94a-9de1-443d-a126-6bc211a5c5dc'),
	(2,4,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"5\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"\",\"position\":\"\"}}}}}','2014-07-30 22:20:59','2014-07-30 22:20:59','3d8ab0ff-2f7d-4456-9f8b-c55983c21e4f'),
	(3,4,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"5\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"\",\"position\":\"right\"}}}}}','2014-07-30 22:23:00','2014-07-30 22:23:00','4363c86a-c246-4985-bd17-b859a59a40c7'),
	(4,4,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new2\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong><\\/strong><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"new3\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"new4\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"position\":\"right\"}},\"new5\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"new6\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"new7\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"new8\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p><span style=\\\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif; font-size: 14px; background-color: initial;\\\">Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><\\/span>\"}},\"new9\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"position\":\"full\"}},\"new10\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"new11\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"14\":\"Experience or raw skill\"}}','2014-07-30 23:02:16','2014-07-30 23:02:16','7f706f86-aaec-492a-964e-748469328d3f'),
	(5,4,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul>\\r\\n<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol>\\r\\n<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"14\":\"Experience or raw skill\"}}','2014-07-30 23:52:46','2014-07-30 23:52:46','5a673a81-b6aa-46de-8919-a975e667ac1a'),
	(6,24,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844257,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong><\\/strong><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 22:04:17','2014-07-31 22:04:17','801671f4-d6cc-4841-b58a-401d6d019df3'),
	(7,24,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"new2\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"new4\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"new3\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"new5\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"new6\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"new7\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"new8\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"new9\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"new10\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"new11\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 22:20:21','2014-07-31 22:20:21','121626d1-c588-4b4c-9cba-51a4ab8c22fd'),
	(8,24,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"new1\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 22:22:28','2014-07-31 22:22:28','2f6ba7c8-2c1a-481f-92b8-14bc60f98c2d'),
	(9,24,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"center\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 23:07:12','2014-07-31 23:07:12','c0c4c74b-6592-4654-ba3e-e56031635917'),
	(10,24,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 23:09:14','2014-07-31 23:09:14','d71611d1-5426-41c2-9aef-2aa110a07df6'),
	(11,45,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848859,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"new2\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"position\":\"center\"}},\"new3\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"new4\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum<\\/p>\"}},\"new5\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"position\":\"full\"}},\"new6\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"new7\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"new9\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"new10\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"new11\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"14\":\"Is a question of priority\"}}','2014-07-31 23:20:59','2014-07-31 23:20:59','65372ac4-39c2-4007-9445-0a6b510ef2b2'),
	(12,45,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848800,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"47\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"position\":\"center\"}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum<\\/p>\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"14\":\"Is a question of priority\"}}','2014-07-31 23:27:06','2014-07-31 23:27:06','80ab215a-641c-4d48-9746-77dbd6993c8f'),
	(13,24,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"14\":\"But is now a way to connect with the world\"}}','2014-07-31 23:27:13','2014-07-31 23:27:13','19536451-24ae-461e-8a53-313e66f3093e'),
	(14,4,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"14\":\"Experience or raw skill\"}}','2014-07-31 23:27:20','2014-07-31 23:27:20','1af7d89f-ab91-4c52-bfc9-019164ea2eef'),
	(16,61,2,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360768,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"new2\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qu<\\/p><p>vi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"new3\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"new4\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"new5\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"new6\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"new7\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"new8\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"new9\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"new10\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:32:48','2014-08-06 21:32:48','ae081689-da30-4209-97a6-52ebd3d270b2'),
	(17,61,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"new1\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qu<\\/p><p>vi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:34:13','2014-08-06 21:34:13','4a49ae18-db37-4c9f-9ff5-19faa8c8026d'),
	(18,61,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qu<\\/p><p>vi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:34:43','2014-08-06 21:34:43','56d58ac7-bdf1-4213-86b6-98db7f7406b4'),
	(20,61,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus quvi blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:49:33','2014-08-06 21:49:33','678cf0da-070f-479f-b3a4-51e9801a18f3'),
	(21,61,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:49:41','2014-08-06 21:49:41','2abad2fc-d6d2-41ab-ae7b-744f21319409'),
	(22,61,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-08-06 21:49:58','2014-08-06 21:49:58','31d5a9a9-3df3-43d4-84b7-e0cc37edede3'),
	(23,74,4,1,'en',1,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\"}}','2014-09-17 01:24:16','2014-09-17 01:24:16','336ca4d4-871d-42ac-ada3-ffe27dc522b9'),
	(24,74,4,1,'en',2,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\"}}','2014-09-17 01:26:56','2014-09-17 01:26:56','0063288a-c8bd-4c00-9fef-58fe57a3fd63'),
	(25,74,4,1,'en',3,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"26\":\"<p><img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\",\"23\":\"\"}}','2014-09-17 01:42:45','2014-09-17 01:42:45','12a46d4a-77e3-4f6f-bb61-16fb32cada3d'),
	(26,74,4,1,'en',4,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"26\":\"<p><img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" style=\\\"float: right; margin: 0px 0px 10px 10px;\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 01:52:47','2014-09-17 01:52:47','9147669e-553c-4fe8-b71d-eacc78f9e59c'),
	(27,74,4,1,'en',5,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.\\r\\n<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 01:54:02','2014-09-17 01:54:02','4c742123-cd47-4483-97d7-7d472bfb8b54'),
	(28,74,4,1,'en',6,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 02:07:31','2014-09-17 02:07:31','75c7b220-3749-470b-b482-e5f882d5ed7a'),
	(29,74,4,1,'en',7,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 02:34:20','2014-09-17 02:34:20','fcddf00f-2eda-4931-8fc2-e901c7154f40'),
	(30,74,4,1,'en',8,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 02:37:50','2014-09-17 02:37:50','4d918a56-9113-48c7-93a9-54455028197c'),
	(40,99,2,1,'en',1,'','{\"typeId\":\"6\",\"authorId\":\"1\",\"title\":\"Fast Company Q&A with Robin Richards\",\"slug\":\"fast-company-q-a-with-robin-richards\",\"postDate\":1412302914,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"15\":[\"98\"],\"47\":\"<p>The path to what I\\u2019m doing started with not knowing what I wanted to do. I had to make a decision about what I wanted to do as I was graduating college, and I could not figure it out. I majored in English because I couldn\\u2019t figure out how to express my love of...<\\/p>\",\"46\":\"http:\\/\\/google.com\"}}','2014-10-03 02:21:54','2014-10-03 02:21:54','1d960959-b475-4530-a6c4-d8b97e1003c8'),
	(41,101,2,1,'en',1,'','{\"typeId\":\"6\",\"authorId\":\"1\",\"title\":\"Photography Folio featured on AWWWARDS.com\",\"slug\":\"photography-folio-featured-on-awwwards-com\",\"postDate\":1412307073,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"15\":[\"100\"],\"47\":\"<p>What a well developed site. I really enjoy the design and the attention to details and performance: great use of video and animations (with CSS3 and JS); categories section with so many images and video had a very good scroll frame rate...<\\/p>\",\"46\":\"http:\\/\\/google.com\"}}','2014-10-03 03:31:13','2014-10-03 03:31:13','03e4a599-5061-46c4-872b-f8d15924d5ec'),
	(42,101,2,1,'en',2,'','{\"typeId\":\"6\",\"authorId\":\"56\",\"title\":\"Photography Folio featured on AWWWARDS.com\",\"slug\":\"photography-folio-featured-on-awwwards-com\",\"postDate\":1412307060,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"15\":[\"100\"],\"47\":\"<p>What a well developed site. I really enjoy the design and the attention to details and performance: great use of video and animations (with CSS3 and JS); categories section with so many images and video had a very good scroll frame rate...<\\/p>\",\"46\":\"http:\\/\\/google.com\"}}','2014-10-03 03:31:23','2014-10-03 03:31:23','66c2eef3-9af5-4470-965a-8b93c60e6eaa'),
	(43,99,2,1,'en',2,'','{\"typeId\":\"6\",\"authorId\":\"56\",\"title\":\"Fast Company Q&A with Robin Richards\",\"slug\":\"fast-company-q-a-with-robin-richards\",\"postDate\":1412302860,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"15\":[\"98\"],\"47\":\"<p>The path to what I\\u2019m doing started with not knowing what I wanted to do. I had to make a decision about what I wanted to do as I was graduating college, and I could not figure it out. I majored in English because I couldn\\u2019t figure out how to express my love of...<\\/p>\",\"46\":\"http:\\/\\/google.com\"}}','2014-10-03 03:31:31','2014-10-03 03:31:31','a8b9c493-2d37-4a3b-a44d-f364d195346c'),
	(44,61,2,1,'en',7,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":\"\",\"1\":\"Make Complex Layouts\",\"47\":\"<p>Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-10-03 03:32:15','2014-10-03 03:32:15','f6c9f812-7247-4e49-bc6f-aea1386e28d9'),
	(45,61,2,1,'en',8,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":[\"102\"],\"1\":\"Make Complex Layouts\",\"47\":\"<p>Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-10-03 03:33:59','2014-10-03 03:33:59','956e280d-2b2c-4f6f-af4b-cc762105d37c'),
	(47,105,2,1,'en',1,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1412308706,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":\"\",\"15\":[\"104\"],\"1\":\"\",\"47\":\"<p>At the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\u201d Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.<\\/p>\",\"14\":\"\"}}','2014-10-03 03:58:26','2014-10-03 03:58:26','9722451c-17e2-4b3c-bc00-0098f8dd8485'),
	(48,105,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1412308680,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":\"\",\"15\":[\"104\"],\"1\":\"\",\"47\":\"<p>At the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\u201d Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.<\\/p>\",\"14\":\"\"}}','2014-10-03 03:58:33','2014-10-03 03:58:33','a6a684bd-5cd8-4820-9656-ecf9b9918ed7'),
	(49,45,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848800,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"47\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"caption\":\"\",\"position\":\"center\"}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum<\\/p>\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"caption\":\"\",\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"47\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\",\"14\":\"Is a question of priority\"}}','2014-10-03 04:11:24','2014-10-03 04:11:24','09ebe342-09b8-48a0-809e-beab9774017d'),
	(50,4,2,1,'en',7,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"caption\":\"\",\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul>\\r\\n<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol>\\r\\n<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"caption\":\"\",\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"47\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\",\"14\":\"Experience or raw skill\"}}','2014-10-03 04:11:31','2014-10-03 04:11:31','db5a23f7-4f82-4443-8b86-ae9961a3aed3'),
	(51,24,2,1,'en',7,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"caption\":\"\",\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"caption\":\"\",\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"caption\":\"\",\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"47\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\",\"14\":\"But is now a way to connect with the world\"}}','2014-10-03 04:11:41','2014-10-03 04:11:41','6f3e42c5-f920-43d3-b98e-a1bd8f4d115f'),
	(52,61,2,1,'en',9,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.&nbsp;ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&nbsp;Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate&nbsp;harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}}},\"15\":[\"102\"],\"1\":\"Make Complex Layouts\",\"47\":\"<p>Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2014-10-03 04:11:48','2014-10-03 04:11:48','041b6cc7-4ee7-46d5-8c18-41c817157245'),
	(53,4,2,1,'en',8,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"caption\":\"\",\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><ul><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ul>\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.<\\/p><ol><li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li><li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li><li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li><\\/ol><p>Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"caption\":\"\",\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"47\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.<\\/p>\",\"14\":\"Experience or raw skill\"}}','2014-10-03 04:12:18','2014-10-03 04:12:18','c4a80034-757f-42d0-a84a-9dcaaf90c235'),
	(54,24,2,1,'en',8,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"caption\":\"\",\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"caption\":\"\",\"position\":\"drop-left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"full\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"caption\":\"\",\"position\":\"center\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"47\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.<\\/p>\",\"14\":\"But is now a way to connect with the world\"}}','2014-10-03 04:12:25','2014-10-03 04:12:25','2f168e92-d0df-46f0-9fae-f8b714fa25bf'),
	(55,45,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848800,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p><p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.<\\/p>\"}},\"47\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"caption\":\"\",\"position\":\"center\"}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum<\\/p>\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"caption\":\"\",\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p><p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/p>\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"47\":\"<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.<\\/p>\",\"14\":\"Is a question of priority\"}}','2014-10-03 04:12:32','2014-10-03 04:12:32','fe8ae2e1-b523-443f-873a-d61126194162'),
	(84,2,1,1,'en',1,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"]}}','2014-10-06 01:49:53','2014-10-06 01:49:53','edcafa30-b432-402c-8b61-3bc18be880ef'),
	(85,2,1,1,'en',2,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"new1\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}}}}}','2014-10-07 03:41:31','2014-10-07 03:41:31','86de4140-1411-4263-9ce6-bf15f34e8f57'),
	(86,2,1,1,'en',3,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"new1\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}}}}}','2014-10-07 03:44:02','2014-10-07 03:44:02','496cf5ec-dc88-43d9-a936-8224fd39ad39'),
	(87,2,1,1,'en',4,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"new1\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":\"\"}}}}}','2014-10-07 03:45:26','2014-10-07 03:45:26','2fb4e366-e0bf-4a18-8b20-569bd556800e'),
	(88,2,1,1,'en',5,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2014-10-07 03:45:44','2014-10-07 03:45:44','44b1bab7-7fbb-40ab-a99d-7aae1d4363d1'),
	(89,2,1,1,'en',6,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"55\":[\"141\",\"142\",\"143\",\"144\",\"145\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2014-10-07 03:49:02','2014-10-07 03:49:02','5fa4635a-8c16-4b9f-8451-25bb0eb6e78f'),
	(90,2,1,1,'en',7,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"55\":[\"141\",\"142\",\"143\",\"144\",\"145\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2014-10-07 03:51:45','2014-10-07 03:51:45','31de3152-c3b0-4c42-bb0c-c7d2695ed4c3'),
	(156,105,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1412308680,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.<\\/p><p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.<\\/p><p>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.<\\/p>\"}}},\"15\":[\"104\"],\"1\":\"Vero eos et accusamus et iusto\",\"47\":\"<p>At the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\u201d Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.<\\/p>\",\"14\":\"minus id quod maxime\"}}','2015-02-02 17:04:48','2015-02-02 17:04:48','07cae6aa-8ad2-4522-ac11-5ff7f3fc7dab'),
	(161,2,1,1,'en',8,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"testimonial\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Happy Lager delivered the most comprehensive strategy from a boutique company that I\\u2019ve ever seen.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"testimonial\",\"enabled\":\"1\",\"fields\":{\"quote\":\"I don\\u2019t know where to begin. I can\\u2019t recommend Happy Lager highly enough.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"testimonial\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Happy Lager sells the good stuff.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2015-02-04 15:06:51','2015-02-04 15:06:51','f4228f9e-8f56-464a-ba45-ba26d673f4a4'),
	(162,2,1,1,'en',9,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"55\":[\"141\",\"142\",\"143\",\"144\",\"145\"],\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"testimonial\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Happy Lager delivered the most comprehensive strategy from a boutique company that I\\u2019ve ever seen.\",\"cite\":\"Larry Page\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"testimonial\",\"enabled\":\"1\",\"fields\":{\"quote\":\"I don\\u2019t know where to begin. I can\\u2019t recommend Happy Lager highly enough.\",\"cite\":\"Ryan Reynolds\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"testimonial\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Happy Lager sells the good stuff.\",\"cite\":\"Bob Guff\",\"photo\":[\"140\"]}}}}}','2015-02-04 15:13:28','2015-02-04 15:13:28','b1fd9880-5308-4f56-90f1-ce4f03cec2f4'),
	(170,74,4,1,'en',9,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"17\":\"\",\"16\":\"\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2015-02-09 21:15:24','2015-02-09 21:15:24','95cb9102-f47a-4a98-924e-3dad7af77752'),
	(171,74,4,1,'en',10,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"How We Think\"}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2015-02-09 21:33:03','2015-02-09 21:33:03','ed70f9cf-a95b-4180-b266-7feea355ec72'),
	(172,74,4,1,'en',11,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"new2\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p><p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<br><\\/p>\"}},\"new3\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"new4\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"new5\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"right\"}},\"new6\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\"}},\"new7\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-09 21:56:10','2015-02-09 21:56:10','5f365b32-d083-4e0c-854a-8ac5d5009e4b'),
	(173,74,4,1,'en',12,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"left\"}},\"new1\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"position\":\"right\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"right\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-10 01:16:49','2015-02-10 01:16:49','ca9ab21b-0d27-4acc-a178-a08261b96cfa'),
	(174,74,4,1,'en',13,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"left\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"position\":\"right\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"right\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-10 01:22:43','2015-02-10 01:22:43','4e57424b-416f-4386-8eb6-7c4f02a9fb58'),
	(175,74,4,1,'en',14,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}},\"new1\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"221\",\"222\",\"220\"]}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-10 01:23:33','2015-02-10 01:23:33','9c03ba17-c416-4b8a-b91e-ce7c9bf81ce9'),
	(176,74,4,1,'en',15,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}},\"244\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"222\",\"220\",\"221\"]}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":\"\",\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":\"\",\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":\"\",\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-10 01:24:46','2015-02-10 01:24:46','4483e22d-a589-4065-800c-a8362a5c8d25'),
	(177,74,4,1,'en',16,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"left\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"position\":\"right\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"right\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}},\"244\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"222\",\"220\",\"221\"]}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":\"\",\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":\"\",\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":\"\",\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-10 01:28:46','2015-02-10 01:28:46','e529b62d-2126-447c-b4f4-f27b4cdcdb63'),
	(178,74,4,1,'en',17,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"left\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"position\":\"right\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"right\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}},\"244\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"222\",\"220\",\"221\"]}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"\",\"25\":\"\",\"18\":\"\",\"19\":\"\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\",\"27\":\"\",\"30\":\"\",\"33\":\"\",\"28\":\"\",\"31\":\"\",\"34\":\"\",\"29\":\"\",\"32\":\"\",\"35\":\"\",\"26\":\"\",\"20\":\"\",\"21\":\"\",\"22\":\"\"}}','2015-02-10 11:50:54','2015-02-10 11:50:54','1297030f-f43c-4d0a-a6f9-1db8c4dae0ef'),
	(179,61,2,1,'en',10,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"new1\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Make Complex Layouts\"}},\"new2\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Using Images and Pull Quotes All in the Flow of the Text\"}},\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"position\":\"left\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\",\"position\":\"left\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\",\"position\":\"left\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\",\"position\":\"left\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\",\"position\":\"left\"}}},\"15\":[\"102\"],\"1\":\"\",\"47\":\"<p>Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"14\":\"\"}}','2015-02-10 12:17:20','2015-02-10 12:17:20','97d93399-f5a2-4a87-970f-98b40ecf5e7f'),
	(180,61,2,1,'en',11,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"245\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Make Complex Layouts\"}},\"246\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Using Images and Pull Quotes All in the Flow of the Text\"}},\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"position\":\"center\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.<\\/p><p>Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/p>\",\"position\":\"center\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos<\\/p>\",\"position\":\"center\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/p>\",\"position\":\"center\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<\\/p>\",\"position\":\"center\"}}},\"15\":[\"102\"],\"1\":\"\",\"47\":\"<p>Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.<\\/p>\",\"14\":\"\"}}','2015-02-10 12:20:11','2015-02-10 12:20:11','dd25a199-d914-448d-8b80-5c273d450aa4'),
	(189,4,2,1,'en',9,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1406754120,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p><p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p>\",\"position\":\"center\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"caption\":\"\",\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p><ul>\\r\\n\\t<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li>\\r\\n\\t<li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li>\\r\\n\\t<li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li>\\r\\n<\\/ul>\",\"position\":\"center\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.\\r\\n<\\/p><ol>\\r\\n\\t<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li>\\r\\n\\t<li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li>\\r\\n\\t<li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li>\\r\\n<\\/ol><p>\\r\\n\\tOfficiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"caption\":\"\",\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"Experience or raw skill\"}}','2015-02-10 17:09:53','2015-02-10 17:09:53','3a79b489-7e94-42cf-a56d-d87c7b28dbfd'),
	(190,45,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848800,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p><p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\\r\\n<\\/p>\",\"position\":\"center\"}},\"47\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"43\"],\"caption\":\"\",\"position\":\"center\"}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum\\r\\n<\\/p>\",\"position\":\"center\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"caption\":\"\",\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p><p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p><p>\\r\\n\\tAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"Is a question of priority\"}}','2015-02-10 17:13:53','2015-02-10 17:13:53','8e1878ea-7c8c-4dd4-9486-e805e4c2dd76'),
	(191,45,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1406848800,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p><p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\\r\\n<\\/p>\",\"position\":\"center\"}},\"new1\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"249\",\"250\",\"251\"]}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum\\r\\n<\\/p>\",\"position\":\"center\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"caption\":\"\",\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p><p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p><p>\\r\\n\\tAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"Is a question of priority\"}}','2015-02-10 17:25:04','2015-02-10 17:25:04','898a48d7-ecfd-43eb-838a-9bd9a4338d5e'),
	(192,105,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1412308680,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"230\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p><p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p><p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"15\":[\"104\"],\"1\":\"Vero eos et accusamus et iusto\",\"47\":\"<p>\\r\\n\\tAt the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\\" Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.\\r\\n<\\/p>\",\"14\":\"minus id quod maxime\"}}','2015-02-10 17:25:53','2015-02-10 17:25:53','0c7d51df-ad53-42af-9401-64ca503b31a5'),
	(193,99,2,1,'en',3,'','{\"typeId\":\"6\",\"authorId\":\"56\",\"title\":\"Fast Company Q&A with Robin Richards\",\"slug\":\"fast-company-q-a-with-robin-richards\",\"postDate\":1412302860,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"15\":[\"98\"],\"47\":\"<p>The path to what I\'m doing started with not knowing what I wanted to do. I had to make a decision about what I wanted to do as I was graduating college, and I could not figure it out. I majored in English because I couldn\'t figure out how to express my love of...<\\/p>\",\"46\":\"http:\\/\\/buildwithcraft.com\"}}','2015-02-10 17:26:28','2015-02-10 17:26:28','16796a33-3665-43ae-bd8a-d297d5365f69'),
	(194,61,2,1,'en',12,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1407360720,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tIusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\",\"position\":\"center\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.\\r\\n<\\/p><p>\\r\\n\\tTamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p>\",\"position\":\"center\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos\\r\\n<\\/p>\",\"position\":\"center\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tFacere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.\\r\\n<\\/p>\",\"position\":\"center\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"15\":[\"102\"],\"1\":\"Make Complex Layouts\",\"47\":\"<p>\\r\\n\\tEt harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2015-02-10 17:27:21','2015-02-10 17:27:21','5693eab0-20be-4e07-880a-0e06d6a9c4ba'),
	(195,101,2,1,'en',3,'','{\"typeId\":\"6\",\"authorId\":\"56\",\"title\":\"Photography Folio featured on AWWWARDS.com\",\"slug\":\"photography-folio-featured-on-awwwards-com\",\"postDate\":1412307060,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"15\":[\"100\"],\"47\":\"<p>What a well developed site. I really enjoy the design and the attention to details and performance: great use of video and animations (with CSS3 and JS); categories section with so many images and video had a very good scroll frame rate...<\\/p>\",\"46\":\"http:\\/\\/buildwithcraft.com\"}}','2015-02-10 17:27:36','2015-02-10 17:27:36','5f752861-1ab6-4f5d-a422-cacbae358515'),
	(196,24,2,1,'en',9,'','{\"typeId\":\"2\",\"authorId\":\"56\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1406844240,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p><p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\\r\\n<\\/p>\",\"position\":\"center\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"caption\":\"\",\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"caption\":\"\",\"position\":\"left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p><p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"center\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p><p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p><p>\\r\\n\\tAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"caption\":\"\",\"position\":\"full\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"But is now a way to connect with the world\"}}','2015-02-10 17:30:51','2015-02-10 17:30:51','ca9985d2-f08b-43e0-8a27-f7f0223572fc');

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(207,74,4,1,'en',18,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"left\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"position\":\"right\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"right\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}},\"244\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"222\",\"220\",\"221\"]}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"218\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\"}}','2015-02-10 18:08:01','2015-02-10 18:08:01','1eff139d-c3ac-413a-8617-7bb60e1efd4b'),
	(210,105,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1464975642,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"230\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"1\",\"15\":[\"104\"],\"1\":\"Vero eos et accusamus et iusto\",\"47\":\"<p>\\r\\n\\tAt the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\\" Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.\\r\\n<\\/p>\",\"14\":\"minus id quod maxime\"}}','2016-06-03 17:40:42','2016-06-03 17:40:42','cdfd1f30-485f-42ff-9898-7820bbe9708c'),
	(211,105,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1462124400,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"230\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"1\",\"15\":[\"104\"],\"1\":\"Vero eos et accusamus et iusto\",\"47\":\"<p>\\r\\n\\tAt the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\\" Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.\\r\\n<\\/p>\",\"14\":\"minus id quod maxime\"}}','2016-06-03 17:42:06','2016-06-03 17:42:06','5b55c6cc-2936-4135-9413-88797bc43ff3'),
	(212,101,2,1,'en',4,'','{\"typeId\":\"6\",\"authorId\":\"1\",\"title\":\"Photography Folio featured on AWWWARDS.com\",\"slug\":\"photography-folio-featured-on-awwwards-com\",\"postDate\":1462147200,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"15\":[\"100\"],\"46\":\"http:\\/\\/buildwithcraft.com\",\"47\":\"<p>What a well developed site. I really enjoy the design and the attention to details and performance: great use of video and animations (with CSS3 and JS); categories section with so many images and video had a very good scroll frame rate...<\\/p>\"}}','2016-06-03 17:42:26','2016-06-03 17:42:26','5f613112-8184-4445-b029-0828ace8199a'),
	(213,105,2,1,'en',7,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"DIVA! Becomes Famous\",\"slug\":\"diva-becomes-famous\",\"postDate\":1462060800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"230\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"1\",\"15\":[\"104\"],\"1\":\"Vero eos et accusamus et iusto\",\"47\":\"<p>\\r\\n\\tAt the 2014 Webby Awards, Patton Oswald said that DIVA! \\u201chas done for women in the music industry what the 19th amendment did for women 100 years ago.\\\" Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.\\r\\n<\\/p>\",\"14\":\"minus id quod maxime\"}}','2016-06-03 17:42:35','2016-06-03 17:42:35','046708e5-29f5-48ef-9972-28116f935092'),
	(214,99,2,1,'en',4,'','{\"typeId\":\"6\",\"authorId\":\"1\",\"title\":\"Fast Company Q&A with Robin Richards\",\"slug\":\"fast-company-q-a-with-robin-richards\",\"postDate\":1462233600,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"15\":[\"98\"],\"46\":\"http:\\/\\/buildwithcraft.com\",\"47\":\"<p>The path to what I\'m doing started with not knowing what I wanted to do. I had to make a decision about what I wanted to do as I was graduating college, and I could not figure it out. I majored in English because I couldn\'t figure out how to express my love of...<\\/p>\"}}','2016-06-03 17:42:43','2016-06-03 17:42:43','32aad30e-7a7d-4c3f-88ea-23a4f91647cb'),
	(215,61,2,1,'en',13,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"How Deep the Rabbit Hole Goes\",\"slug\":\"how-deep-the-rabbit-hole-goes\",\"postDate\":1462320000,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"62\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tIusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\",\"position\":\"center\"}},\"73\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"72\"],\"caption\":\"\",\"position\":\"right\"}},\"63\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tTamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p>\",\"position\":\"center\"}},\"64\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"59\"],\"caption\":\"\",\"position\":\"full\"}},\"65\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Outstanding Content Flow\"}},\"66\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos\\r\\n<\\/p>\",\"position\":\"center\"}},\"67\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Sooner or later you\\u2019re going to realize, just as I did, that there\\u2019s a difference between knowing the path and walking the path.\",\"position\":\"left\"}},\"68\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tFacere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.\\r\\n<\\/p>\",\"position\":\"center\"}},\"69\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"60\"],\"caption\":\"\",\"position\":\"center\"}},\"70\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Say what you want, where you want to say it\"}},\"71\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"\",\"15\":[\"102\"],\"1\":\"Make Complex Layouts\",\"47\":\"<p>\\r\\n\\tEt harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\",\"14\":\"Using Images and Pull Quotes All in the Flow of the Text\"}}','2016-06-03 17:42:53','2016-06-03 17:42:53','bf586262-269e-47a7-95de-3167423d2ff6'),
	(216,45,2,1,'en',7,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Bringing Out Play\",\"slug\":\"bringing-out-play\",\"postDate\":1462406400,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"46\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\\r\\n<\\/p>\",\"position\":\"center\"}},\"252\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"249\",\"250\",\"251\"]}},\"48\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"People Love Games\"}},\"49\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum\\r\\n<\\/p>\",\"position\":\"center\"}},\"50\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"44\"],\"caption\":\"\",\"position\":\"full\"}},\"51\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the Beginning, There Was Pong\"}},\"52\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"53\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"People learn and adapt 36% faster in the environment of play\",\"position\":\"center\"}},\"54\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Results of our Play\"}},\"55\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"1\",\"15\":[\"42\"],\"1\":\"At the Crossroads of Good and Great\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"Is a question of priority\"}}','2016-06-03 17:43:07','2016-06-03 17:43:07','12c6db62-01e7-4000-9156-361a81a76736'),
	(217,4,2,1,'en',10,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Barrel Aged Digital Natives\",\"slug\":\"barrel-aged-digital-natives\",\"postDate\":1462492800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"9\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Our answer is: both.<\\/strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p>\",\"position\":\"center\"}},\"10\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.\",\"position\":\"left\"}},\"11\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"7\"],\"caption\":\"\",\"position\":\"right\"}},\"12\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Experience\"}},\"13\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li>\\r\\n\\t<li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li>\\r\\n\\t<li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li>\\r\\n<\\/ul>\",\"position\":\"center\"}},\"14\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The Skills\"}},\"15\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.\\r\\n<\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.<\\/li>\\r\\n\\t<li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.<\\/li>\\r\\n\\t<li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p>\\r\\n\\tOfficiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"16\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"8\"],\"caption\":\"\",\"position\":\"full\"}},\"17\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"In the End\"}},\"18\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"1\",\"15\":[\"6\"],\"1\":\"What\\u2019s more important?\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"Experience or raw skill\"}}','2016-06-03 17:43:25','2016-06-03 17:43:25','070606d5-a8f8-4163-9bea-a6ed4301d1fe'),
	(218,24,2,1,'en',10,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"The Future of Augmented Reality\",\"slug\":\"the-future-of-augmented-reality\",\"postDate\":1462579200,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"25\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\t<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium<\\/strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\\r\\n<\\/p>\",\"position\":\"center\"}},\"30\":{\"type\":\"pullQuote\",\"enabled\":\"1\",\"fields\":{\"pullQuote\":\"Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.\",\"position\":\"left\"}},\"31\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"28\"],\"caption\":\"\",\"position\":\"right\"}},\"32\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"A People-to-People Business\"}},\"41\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"40\"],\"caption\":\"\",\"position\":\"left\"}},\"33\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}},\"34\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.\",\"attribution\":\"Charlie Roths, Developers.Google\",\"position\":\"center\"}},\"35\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"What is Happy Lager Doing About It?\"}},\"36\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\r\\n\\tAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\\r\\n<\\/p>\",\"position\":\"center\"}},\"37\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"29\"],\"caption\":\"\",\"position\":\"full\"}},\"38\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"This is Only the Beginning\"}},\"39\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\r\\n\\tVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\\r\\n<\\/p>\",\"position\":\"center\"}}},\"75\":\"\",\"15\":[\"23\"],\"1\":\"Your iPhone Is No Longer a Way To Hide\",\"47\":\"<p>\\r\\n\\tNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\\r\\n<\\/p>\",\"14\":\"But is now a way to connect with the world\"}}','2016-06-03 17:43:37','2016-06-03 17:43:37','3547ef42-4b57-40e0-8df4-faf8ec1c75af'),
	(219,257,9,1,'en',1,NULL,'{\"typeId\":\"11\",\"authorId\":null,\"title\":\"Contact\",\"slug\":\"contact\",\"postDate\":1529865319,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-06-24 18:35:19','2018-06-24 18:35:19','623fd17c-8794-4a8b-a11b-2092e69cf530'),
	(220,258,10,1,'en',1,NULL,'{\"typeId\":\"12\",\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-06-24 18:35:36','2018-06-24 18:35:36','89af59f5-69b3-4a80-a525-eda7fcecba47'),
	(221,259,11,1,'en',1,NULL,'{\"typeId\":\"13\",\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-06-24 18:36:23','2018-06-24 18:36:23','6ee9cb02-6fcf-4e08-9253-628badd8105e'),
	(222,262,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820818,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-07-05 20:00:18','2018-07-05 20:00:18','7e968790-1edd-467c-a656-258c9e95e1ad'),
	(223,262,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"263\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"\",\"position\":\"left\"}}},\"80\":[\"261\"]}}','2018-07-05 20:06:13','2018-07-05 20:06:13','c6a085f9-1e5c-43da-bd5e-3657d114d5f4'),
	(224,2,1,1,'en',10,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Happylager.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}}}}}','2018-07-08 13:54:49','2018-07-08 13:54:49','c7e6a7ce-c8e1-4820-b07b-d2c1c8fe9dc9'),
	(225,2,1,1,'en',11,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Happylager.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}}}}','2018-07-08 14:00:19','2018-07-08 14:00:19','9945fb3c-33bb-4977-8b36-2ff7e782ec66'),
	(226,2,1,1,'en',12,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h2>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p><p><a href=\\\"http:\\/\\/apex.local\\/about#entry:74\\\">Discover more about apex&nbsp;<\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}}}}','2018-07-08 15:29:54','2018-07-08 15:29:54','f37a52b9-b226-496f-aea0-0bd1afa63504'),
	(227,2,1,1,'en',13,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}}}}','2018-07-08 15:30:38','2018-07-08 15:30:38','7df7b5f5-2059-44ec-810c-f1bdca491887'),
	(228,2,1,1,'en',14,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <i class=\\\"fas fa-long-arrow-alt-right\\\"><\\/i><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}}}}','2018-07-08 15:31:20','2018-07-08 15:31:20','67df393a-86ae-4e04-a86f-bfda0ead20dd'),
	(229,2,1,1,'en',15,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}}}}','2018-07-08 15:41:01','2018-07-08 15:41:01','01d1fa93-9d21-4389-a26d-502e8d51a5f4'),
	(230,2,1,1,'en',16,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Pickups\",\"backgroundImage\":[\"303\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/pickups\"}}}}}','2018-07-08 16:28:44','2018-07-08 16:28:44','36b6be50-d683-404b-b9d4-3802ff3f13ff'),
	(231,2,1,1,'en',17,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"303\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/pickups\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"306\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}}}}}','2018-07-08 16:31:00','2018-07-08 16:31:00','bc819a82-0c03-4314-98cf-67aa3c974944'),
	(232,2,1,1,'en',18,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"303\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"306\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"277\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}}}}','2018-07-08 16:43:10','2018-07-08 16:43:10','c7c048f2-a65d-4986-84a7-b05a74e048fb'),
	(233,2,1,1,'en',19,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"303\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"306\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"277\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"301\"],\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":[\"262\"],\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"303\"],\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":[\"258\"],\"slideLinkText\":\"View\"}}}}}','2018-07-08 18:53:17','2018-07-08 18:53:17','e6cbaa0f-1188-461d-b2f6-fb70ebb920c1'),
	(234,74,4,1,'en',19,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"\",\"imageBlock\":\"\"}}}}}','2018-07-09 22:29:55','2018-07-09 22:29:55','8d206ec3-3f56-401f-a33d-57f0e93ec6ff'),
	(235,74,4,1,'en',20,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><span>About Apex<\\/span><\\/h3>\\r\\n\\t\\t\\t\\t\\t<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n\\t\\t\\t\\t<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 22:36:45','2018-07-09 22:36:45','7e601610-4c8b-4423-a68f-cbe1df2bd293'),
	(236,74,4,1,'en',21,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h2 class=\\\"styled\\\">About Apex<\\/h2>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 22:46:52','2018-07-09 22:46:52','75947373-820e-48d4-a6de-c177cd9316ea'),
	(237,74,4,1,'en',22,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><span>About Apex<\\/span><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 22:48:38','2018-07-09 22:48:38','ba3a4390-9d79-41cd-b2de-b26aed896a07'),
	(238,74,4,1,'en',23,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><div>About Apex<\\/div><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 23:04:44','2018-07-09 23:04:44','c979a99d-4bf9-44e9-be19-33c0a06a9ec6'),
	(239,74,4,1,'en',24,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><div>About Apex<\\/div><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 23:05:03','2018-07-09 23:05:03','da84258b-3036-470a-855a-4924395757c1'),
	(240,74,4,1,'en',25,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\">About Apex<\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 23:05:27','2018-07-09 23:05:27','094ec0be-64ad-46af-a411-0971b7672864'),
	(241,74,4,1,'en',26,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}}}}','2018-07-09 23:16:45','2018-07-09 23:16:45','df292145-bed8-49e0-9d3c-9736d6105609'),
	(242,74,4,1,'en',27,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"]}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"310\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"307\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"309\"],\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"311\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-10 20:35:03','2018-07-10 20:35:03','40f1fc3c-1b98-4fe6-98b8-80caa09c7781'),
	(243,258,10,1,'en',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"96\":[]}}','2018-07-10 21:19:06','2018-07-10 21:19:06','4fb5b8d9-83d4-449a-8161-2fec2ba2cf6a'),
	(244,258,10,1,'en',3,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><span>Apex Studio<\\/span><\\/h2><h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":[]}}','2018-07-10 21:20:27','2018-07-10 21:20:27','e8e7147b-77c9-4eb0-ab03-08e46f169c35'),
	(245,258,10,1,'en',4,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":[]}}','2018-07-10 21:35:43','2018-07-10 21:35:43','f5edc651-9238-4668-ae60-b4b11aa57cfb'),
	(246,258,10,1,'en',5,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":[],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 22:20:53','2018-07-10 22:20:53','76a70a18-7054-48f6-a327-afded498509b'),
	(247,258,10,1,'en',6,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":[],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 22:22:08','2018-07-10 22:22:08','364b46f8-712e-4ebe-bdfb-20fc852e2eb7'),
	(248,258,10,1,'en',7,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<span>recording studio<\\/span>\\r\\n\\t\\t<\\/h3>\\r\\n\\t\\t10 Hour session - From\\r\\n\\t\\t<span class=\\\"highlight\\\">\\u00a3220 Per Session<\\/span> (Engineer included) Hourly rate outside of session bookings -\\r\\n\\t\\t<span class=\\\"highlight\\\">\\u00a325<\\/span>\\r\\n\\t\\t<\\/p>\\r\\n\\t\\t<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are\\r\\n\\t\\t\\ta young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best\\r\\n\\t\\t\\tadvice for your music journey.<\\/p>\\r\\n\\t\\t<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":\"\",\"imageBlockPosition\":\"1\"}}},\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 22:44:31','2018-07-10 22:44:31','10b8c742-ee05-42af-9f07-ff11e13e53ac'),
	(249,258,10,1,'en',8,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}}},\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 22:46:55','2018-07-10 22:46:55','8c0a8d3d-2e81-473a-954f-b313dec9b4f2'),
	(250,258,10,1,'en',9,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\\r\\n\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"1\"}}},\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 23:05:04','2018-07-10 23:05:04','b06d017f-7d21-4386-ae4d-57b64fb3a405'),
	(251,258,10,1,'en',10,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"\"}}},\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 23:07:08','2018-07-10 23:07:08','33de59fc-77b3-4af7-9868-fd49d8ed5ba3');

/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldgroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldgroups`;

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'General','2014-07-29 18:21:34','2015-02-09 21:32:26','0d0b7e16-8d7c-4d6f-9059-d11c473058f4'),
	(4,'Homepage','2014-10-06 01:47:19','2014-10-06 01:47:19','d58a1faa-0bf6-46b2-b880-b0c14bebca75'),
	(6,'Footer','2015-02-04 15:20:41','2015-02-04 15:20:41','f7189ca2-4b93-4661-830a-a71aff8aa3cd'),
	(7,'Contact Info','2015-02-10 19:02:27','2015-02-10 19:33:07','0815347a-8e73-45fd-93c9-2244ac562559'),
	(8,'About','2018-07-10 20:20:27','2018-07-10 20:20:27','3443253a-9f10-4418-9665-9c578ee80772');

/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayoutfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(237,92,22,47,0,1,'2014-10-03 02:15:38','2014-10-03 02:15:38','52008e48-652d-4eab-be37-405e27369941'),
	(238,92,22,15,0,2,'2014-10-03 02:15:38','2014-10-03 02:15:38','42fd680a-83e3-4845-85ae-a6dc78a57d49'),
	(499,179,107,67,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','fd39d8a0-fe45-4e8b-b769-88267cc161df'),
	(500,180,108,8,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','8a5973b1-ab3a-4bb5-9de3-972df77fba6e'),
	(501,181,109,5,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','c9d500c8-8e5f-49f6-90f1-78c230cd7a16'),
	(502,181,109,70,0,2,'2015-02-10 17:39:37','2015-02-10 17:39:37','336a216b-0bf0-4c49-aa86-d3ca5994f0c7'),
	(503,182,110,6,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','a425d290-1a49-4058-862a-0418017b6ea2'),
	(504,182,110,7,0,2,'2015-02-10 17:39:37','2015-02-10 17:39:37','ef719d84-51e6-4a4d-b2c7-1c13d0b08024'),
	(505,183,111,9,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','2a4cff65-480e-4576-a586-6dba107fd3b1'),
	(506,183,111,44,0,2,'2015-02-10 17:39:37','2015-02-10 17:39:37','7ac8ad95-2830-43f6-99ad-85fc3c9dc287'),
	(507,183,111,10,0,3,'2015-02-10 17:39:37','2015-02-10 17:39:37','e2bbd56b-46f0-453e-a6b4-7c54e9514e37'),
	(508,184,112,69,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','359e872b-9a6f-491c-9843-6b104e2c8aca'),
	(509,185,113,11,0,1,'2015-02-10 17:39:37','2015-02-10 17:39:37','4cea730b-e21e-40e1-b68a-296435270517'),
	(510,185,113,12,0,2,'2015-02-10 17:39:37','2015-02-10 17:39:37','27719b0d-dd3f-487e-9d7a-78dfd47f8977'),
	(511,185,113,13,0,3,'2015-02-10 17:39:37','2015-02-10 17:39:37','fe185d13-5b14-4cd2-823b-9baad6051253'),
	(537,197,122,15,0,2,'2016-06-03 17:38:06','2016-06-03 17:38:06','b5cbbfb4-72c0-4e13-b03c-cdb9c29951bb'),
	(538,197,122,47,0,3,'2016-06-03 17:38:06','2016-06-03 17:38:06','5b79cb81-9d1e-49ab-b888-763a17bc2f1c'),
	(539,197,122,1,0,4,'2016-06-03 17:38:06','2016-06-03 17:38:06','707f0d71-6324-4d13-8765-5bdb6a0d9e8c'),
	(541,197,122,4,0,6,'2016-06-03 17:38:06','2016-06-03 17:38:06','80244cdd-4e6e-43c4-bf42-4fc839319e9f'),
	(555,207,128,80,0,1,'2018-07-05 20:09:09','2018-07-05 20:09:09','e605ed0b-91ba-4b0a-ba77-7994b288af08'),
	(562,211,132,1,0,1,'2018-07-05 21:23:46','2018-07-05 21:23:46','77feeb00-1d2b-42d5-ac0a-cb0a3d6d8dd4'),
	(563,211,132,2,0,2,'2018-07-05 21:23:46','2018-07-05 21:23:46','2edfda87-a506-41bc-9c77-9ad9c01dd1ad'),
	(564,212,133,41,0,1,'2018-07-05 23:07:08','2018-07-05 23:07:08','7152a5f8-feb7-4394-818f-5e53409e2593'),
	(565,212,133,76,0,2,'2018-07-05 23:07:08','2018-07-05 23:07:08','d80f5e8d-6ad8-4136-8a93-e8cdfc9c65fe'),
	(566,212,133,37,0,3,'2018-07-05 23:07:08','2018-07-05 23:07:08','cb8e90f9-2a02-4423-a0cd-7c7f39bbef82'),
	(567,212,133,81,0,4,'2018-07-05 23:07:08','2018-07-05 23:07:08','354c8257-2b79-4b83-a049-0015bc69aaeb'),
	(568,212,133,77,0,5,'2018-07-05 23:07:08','2018-07-05 23:07:08','d3d02b92-f7a8-492e-ada4-d4999ebc7f0b'),
	(569,212,133,78,0,6,'2018-07-05 23:07:08','2018-07-05 23:07:08','798f32a4-2b78-4195-8adc-a3ed617f04ef'),
	(570,212,133,79,0,7,'2018-07-05 23:07:08','2018-07-05 23:07:08','d7f01d73-2f13-4560-ae5e-c1facff72ccd'),
	(586,216,137,93,0,1,'2018-07-07 16:01:07','2018-07-07 16:01:07','1e9934d3-ddfc-4a31-8f36-5a324b4be752'),
	(587,216,137,94,0,2,'2018-07-07 16:01:07','2018-07-07 16:01:07','d817d65b-25cd-40c8-aa4e-a265380ff9f5'),
	(588,216,137,95,0,3,'2018-07-07 16:01:07','2018-07-07 16:01:07','5e15a75a-814c-4c8f-a96f-8d865c2d05d4'),
	(597,223,144,100,0,1,'2018-07-08 13:56:10','2018-07-08 13:56:10','52d3604e-6a78-4efa-8eac-db5b5cdff258'),
	(604,230,151,47,0,1,'2018-07-08 14:23:27','2018-07-08 14:23:27','31dcb739-4b45-44db-844e-47890c449dd3'),
	(620,235,156,102,0,1,'2018-07-08 16:42:37','2018-07-08 16:42:37','cd4c5b02-bc5c-4084-9390-bae24790d6ff'),
	(621,235,156,103,0,2,'2018-07-08 16:42:37','2018-07-08 16:42:37','60dc27eb-63e9-4279-902c-58fdb85c63dd'),
	(622,235,156,104,0,3,'2018-07-08 16:42:37','2018-07-08 16:42:37','9431cdb9-1bd0-4765-a682-b423812f3064'),
	(623,235,156,105,0,4,'2018-07-08 16:42:37','2018-07-08 16:42:37','d6ec70bd-12f6-415a-af38-8366c6e6d71a'),
	(624,236,157,99,0,1,'2018-07-08 18:48:37','2018-07-08 18:48:37','d10ce235-8d50-4076-b36e-72f0a3cdaa9f'),
	(625,236,157,2,0,2,'2018-07-08 18:48:37','2018-07-08 18:48:37','9dffec67-fb74-475c-8f1d-a021334ab10f'),
	(626,236,157,101,0,3,'2018-07-08 18:48:37','2018-07-08 18:48:37','07b3ada7-d214-4232-9d90-ba10a2a32448'),
	(627,236,157,82,0,4,'2018-07-08 18:48:37','2018-07-08 18:48:37','c7d7f46b-935d-4f15-8832-f237fa588676'),
	(638,239,160,83,0,1,'2018-07-09 20:33:50','2018-07-09 20:33:50','21864c98-da8d-47db-b403-d2dda8c4af57'),
	(639,239,160,84,0,2,'2018-07-09 20:33:50','2018-07-09 20:33:50','92d24bd6-1bbd-4007-a7bb-14d7c6c3a230'),
	(640,239,160,85,0,3,'2018-07-09 20:33:50','2018-07-09 20:33:50','45e9d41f-4119-45ef-a40d-9dd62331c3b8'),
	(641,239,160,86,0,4,'2018-07-09 20:33:50','2018-07-09 20:33:50','b0c0b7eb-2bda-48a8-a68d-a3a8c0c0e66a'),
	(642,239,160,87,0,5,'2018-07-09 20:33:50','2018-07-09 20:33:50','669f0e78-1c58-4b3f-b4de-75058745dbca'),
	(652,245,166,107,0,1,'2018-07-10 20:23:16','2018-07-10 20:23:16','371490b8-9b21-4403-bfbf-58d92bdd585b'),
	(653,245,166,108,0,2,'2018-07-10 20:23:16','2018-07-10 20:23:16','c9657f54-00f0-40ed-bcda-4f8bba0ad30f'),
	(654,245,166,109,0,3,'2018-07-10 20:23:16','2018-07-10 20:23:16','ca0e9051-8a45-4891-9a46-ff2b56cc72ca'),
	(659,248,169,96,0,1,'2018-07-10 21:18:51','2018-07-10 21:18:51','7fc08444-35d8-4f35-b2ea-ed760e091cdc'),
	(660,248,169,106,0,2,'2018-07-10 21:18:51','2018-07-10 21:18:51','67c562c1-2d4c-4ca2-b879-d99b5a7efea3'),
	(663,250,171,2,0,1,'2018-07-10 22:15:21','2018-07-10 22:15:21','3301be47-3df0-423c-abd4-cd3873149f62'),
	(664,250,171,82,0,2,'2018-07-10 22:15:21','2018-07-10 22:15:21','966a074a-1380-4ebb-825c-395c6140cdf1'),
	(665,250,171,96,0,3,'2018-07-10 22:15:21','2018-07-10 22:15:21','622f8800-89bd-44d4-987d-836587e3d529'),
	(669,252,173,97,0,1,'2018-07-10 22:42:17','2018-07-10 22:42:17','55393980-a9ef-474f-912b-4172d51065f2'),
	(670,252,173,98,0,2,'2018-07-10 22:42:17','2018-07-10 22:42:17','c1afb9dd-4cd1-4446-929d-6eb13594b486'),
	(671,252,173,110,0,3,'2018-07-10 22:42:17','2018-07-10 22:42:17','3f5bb867-873b-4f15-80eb-ca3db4a2aa7e');

/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouts`;

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(92,'Entry','2014-10-03 02:15:38','2014-10-03 02:15:38','b89ba12c-3f9b-4e8d-a190-073678e01175'),
	(179,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','8d01ea64-38fa-43f7-be8a-43e4e460bfbd'),
	(180,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','0189a187-131f-46a8-b494-cd94c82d6aae'),
	(181,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','4ade673e-0245-430b-b932-c8ea86e36773'),
	(182,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','83f7b1de-657b-45bb-94e4-57d10973c78c'),
	(183,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','327aba6f-b81c-4179-9e58-208d34322ced'),
	(184,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','0964c39a-7c91-4ac2-a9e6-584a7c845d32'),
	(185,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','b82a12f2-e814-4b74-9b32-bd1a90497a65'),
	(195,'Asset','2015-02-10 23:15:35','2015-02-10 23:15:35','da21546b-da53-49c7-8821-2685c67df6b4'),
	(196,'Asset','2015-02-10 23:15:38','2015-02-10 23:15:38','57038148-5c46-43e2-9c5b-9760e04375f2'),
	(197,'Entry','2016-06-03 17:38:06','2016-06-03 17:38:06','d45c4454-78e5-415c-8e08-700061feb9b4'),
	(198,'Entry','2018-06-24 18:35:19','2018-06-24 18:35:19','364a0634-30ba-4c5b-b2a0-417b6ac0338f'),
	(200,'Entry','2018-06-24 18:36:23','2018-06-24 18:36:23','fd744e2b-7d46-4028-9444-196a6483341d'),
	(207,'Entry','2018-07-05 20:09:09','2018-07-05 20:09:09','04c3e408-dfaa-4da3-8a15-a717b93d286a'),
	(211,'Category','2018-07-05 21:23:46','2018-07-05 21:23:46','fd97a50e-c5b2-4ec9-a401-2b1a1ec7cb8c'),
	(212,'GlobalSet','2018-07-05 23:07:08','2018-07-05 23:07:08','f6c98bd1-2536-4baa-a526-3cb841c246c0'),
	(216,'MatrixBlock','2018-07-07 16:01:07','2018-07-07 16:01:07','9b778402-eb3a-4917-af62-bf4ae1b01546'),
	(223,'MatrixBlock','2018-07-08 13:56:10','2018-07-08 13:56:10','99ee404a-fc7e-4404-a7a4-ffe150df6de9'),
	(230,'Asset','2018-07-08 14:23:27','2018-07-08 14:23:27','f0690817-574f-4f48-8562-5863247e1765'),
	(235,'MatrixBlock','2018-07-08 16:42:37','2018-07-08 16:42:37','c5dcea02-f71f-4776-9bd5-c830b339f456'),
	(236,'Entry','2018-07-08 18:48:37','2018-07-08 18:48:37','25c6bc84-d6f8-475d-9f1a-272e5465f2fb'),
	(239,'MatrixBlock','2018-07-09 20:33:50','2018-07-09 20:33:50','e720c10d-03c6-4e27-9bce-739a5f26d7ef'),
	(245,'MatrixBlock','2018-07-10 20:23:16','2018-07-10 20:23:16','0e351baf-af25-4879-a24b-884d477de34b'),
	(248,'Entry','2018-07-10 21:18:51','2018-07-10 21:18:51','f7699656-6b4f-4692-ae6f-5083f1e8e3b1'),
	(250,'Entry','2018-07-10 22:15:21','2018-07-10 22:15:21','47ee557d-3e36-480d-a72c-4be18f9678b5'),
	(252,'MatrixBlock','2018-07-10 22:42:17','2018-07-10 22:42:17','6cb4b4d3-a939-4a93-8782-d86adea5719c');

/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouttabs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(22,92,'Content',1,'2014-10-03 02:15:38','2014-10-03 02:15:38','930fb2b2-43df-4f81-8a1f-cf1dc360f379'),
	(107,179,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','c58219ed-e4fb-4cc0-b8e6-a297c9c81f51'),
	(108,180,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','5a172cd7-88d1-4920-930c-c5823e670976'),
	(109,181,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','6c68be8b-8701-4ca0-ac75-ba79840627bb'),
	(110,182,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','1ea8c603-e143-45cf-a5cf-bc89530c7db1'),
	(111,183,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','01cdf814-4413-467e-9e63-9fba370a246b'),
	(112,184,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','c32e088d-9cf9-4bc1-8910-f8ceb871a213'),
	(113,185,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','324a7e76-e0fb-4d79-abef-1b3d4fcbf2ed'),
	(122,197,'Content',1,'2016-06-03 17:38:06','2016-06-03 17:38:06','e42cc652-c7e9-4384-b048-f402aa71371b'),
	(128,207,'Tab 1',1,'2018-07-05 20:09:09','2018-07-05 20:09:09','7fbc6517-36a0-456e-8e2c-42900dcc7df8'),
	(132,211,'Tab 1',1,'2018-07-05 21:23:46','2018-07-05 21:23:46','46e52f79-2cb2-40fb-a4d1-b8901bc64fcf'),
	(133,212,'Content',1,'2018-07-05 23:07:08','2018-07-05 23:07:08','6eb72fc2-7a51-4091-82c4-f5419bede2d3'),
	(137,216,'Content',1,'2018-07-07 16:01:07','2018-07-07 16:01:07','9ba87024-743f-4e58-9f6b-3c6c748bdf3b'),
	(144,223,'Content',1,'2018-07-08 13:56:10','2018-07-08 13:56:10','b5d2ac64-df2a-4a1b-9e7b-d7f3b4818f54'),
	(151,230,'Content',1,'2018-07-08 14:23:27','2018-07-08 14:23:27','dff54c35-059b-425e-86c2-9df748986afa'),
	(156,235,'Content',1,'2018-07-08 16:42:37','2018-07-08 16:42:37','0f844ecf-d4b9-438b-b7b8-d25d0f1fa434'),
	(157,236,'Content',1,'2018-07-08 18:48:37','2018-07-08 18:48:37','45a84d3a-1b05-4545-9545-77a5fe057362'),
	(160,239,'Content',1,'2018-07-09 20:33:50','2018-07-09 20:33:50','2a73a7e0-864a-4175-b598-5b20a76b0ecf'),
	(166,245,'Content',1,'2018-07-10 20:23:16','2018-07-10 20:23:16','3026dcea-e2a5-4885-9032-c6afc9a0d615'),
	(169,248,'Content',1,'2018-07-10 21:18:51','2018-07-10 21:18:51','1a167acc-7aeb-4d77-98a5-40b9ee44d7fa'),
	(171,250,'Tab 1',1,'2018-07-10 22:15:21','2018-07-10 22:15:21','b2474e3b-f5cd-4e47-96f8-7e3dc9085355'),
	(173,252,'Content',1,'2018-07-10 22:42:17','2018-07-10 22:42:17','d9ca96c8-9433-452a-af46-a845665fecce');

/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fields`;

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'Heading','heading','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-29 18:21:34','2015-02-09 20:31:27','9bb293f8-c659-4035-b5d3-e30dbf8d1c5b'),
	(2,1,'Body','body','global',NULL,1,'RichText','{\"configFile\":\"Standard.json\"}','2014-07-29 18:21:34','2014-07-29 18:21:34','08f8ec90-f7ad-4d40-9880-3c96304f1e4e'),
	(4,1,'Article Body','articleBody','global','',0,'Matrix','{\"maxBlocks\":null}','2014-07-30 20:59:37','2015-02-10 17:39:37','82ac4aa6-3b63-4cb9-a1f6-6cb6a5210a2e'),
	(5,NULL,'Text','text','matrixBlockType:1','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"columnType\":\"text\"}','2014-07-30 20:59:37','2015-02-10 17:39:37','e03a8ea1-0b9b-4e8c-bbf5-f7197caad45c'),
	(6,NULL,'Pull Quote','pullQuote','matrixBlockType:2','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 21:01:11','2015-02-10 17:39:37','a8a6d843-bec1-4882-98ec-30cb74f5b16f'),
	(7,NULL,'Position','position','matrixBlockType:2','',0,'PositionSelect','{\"options\":[\"left\",\"center\",\"right\"]}','2014-07-30 21:01:11','2015-02-10 17:39:37','a88d73a8-c75f-4c72-aa70-a39dfbbff0fe'),
	(8,NULL,'Heading','heading','matrixBlockType:3','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:37:57','2015-02-10 17:39:37','631f668a-3658-48a4-89fd-8da5af0a60cc'),
	(9,NULL,'Image','image','matrixBlockType:4','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\"}','2014-07-30 22:37:57','2015-02-10 17:39:37','964a1aba-15ac-413f-86c1-03fbf37f30c7'),
	(10,NULL,'Position','position','matrixBlockType:4','',0,'PositionSelect','{\"options\":[\"left\",\"center\",\"right\",\"full\"]}','2014-07-30 22:37:57','2015-02-10 17:39:37','f87a6243-5b7f-4456-9106-ccfb6e03b754'),
	(11,NULL,'Quote','quote','matrixBlockType:5','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:37:57','2015-02-10 17:39:37','35200549-df46-4092-994a-a8015c5810ba'),
	(12,NULL,'Attribution','attribution','matrixBlockType:5','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:37:57','2015-02-10 17:39:37','41e6fac7-12d7-45c9-ac83-0aa59793d872'),
	(13,NULL,'Position','position','matrixBlockType:5','',0,'PositionSelect','{\"options\":[\"center\",\"full\"]}','2014-07-30 22:37:57','2015-02-10 17:39:37','a5b4b046-1178-45f9-b4cf-3e3bef86e067'),
	(15,1,'Featured Image','featuredImage','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"2\"}','2014-07-30 22:47:26','2015-02-10 19:33:45','0cbb9736-a84b-4e83-803c-5077f56394a9'),
	(37,7,'Address One','addressOne','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"4\"}','2014-09-17 02:24:38','2018-07-05 23:05:55','422c7da9-d3e4-4d0a-8225-bbbc8264f029'),
	(41,7,'Email','email','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-09-17 02:25:59','2015-02-10 19:33:15','b75266c9-d8d2-42ae-9024-0fecb8bdc994'),
	(44,NULL,'Caption','caption','matrixBlockType:4','',0,'RichText','{\"configFile\":\"Simple.json\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"columnType\":\"text\"}','2014-09-25 13:33:39','2015-02-10 17:39:37','7ca32393-f78c-4de0-9f8f-52b64e09584f'),
	(47,1,'Short Description','shortDescription','global','Short description for use in index regions.',0,'RichText','{\"configFile\":\"Simple.json\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"columnType\":\"text\"}','2014-10-03 02:15:14','2015-02-10 23:43:38','aef80333-1412-4130-bb84-ac3bdbbcbbe2'),
	(49,1,'Featured Thumb','featuredThumb','global','Thumb image for use on home page or archives.',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\"}','2014-10-05 03:01:09','2014-10-05 03:01:09','0305c984-3934-4c7a-9de9-b0162c5b0112'),
	(64,6,'Copyright Notice','copyrightNotice','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-04 15:21:00','2015-02-04 15:21:00','5095500e-4962-429c-9b9c-7a4d0d4f930c'),
	(65,6,'Contact Us Label','contactUsLabel','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-04 15:22:02','2015-02-04 15:22:02','fcf41a5f-68b5-42dd-8ca1-cc457eb749f0'),
	(67,NULL,'Section Heading','sectionHeading','matrixBlockType:9','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-09 21:38:01','2015-02-10 17:39:37','8cd6b011-5271-484d-85d9-6a6b731137e9'),
	(69,NULL,'Images','images','matrixBlockType:10','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"3\"}','2015-02-10 01:21:43','2015-02-10 17:39:37','ba8a1276-24c8-43eb-94d4-b2a19c0c1bf7'),
	(70,NULL,'Position','position','matrixBlockType:1','',0,'PositionSelect','{\"options\":[\"left\",\"center\",\"right\"]}','2015-02-10 01:28:28','2015-02-10 17:39:37','cc6a4697-6d1c-4342-b9de-bce13295a885'),
	(76,7,'Telephone','telephone','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:39:56','2018-06-24 18:39:56','09410765-9611-4db3-b436-32e36fdfac84'),
	(77,7,'Facebook Link','facebooklink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:42:21','2018-06-24 18:43:11','cb9caf8c-8231-4f45-8de1-04dac88982af'),
	(78,7,'Twitter Link','twitterLink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:42:34','2018-06-24 18:42:34','b6dca90b-0381-4397-bb70-20c7f778b463'),
	(79,7,'Instagram Link','instagramLink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:43:31','2018-06-24 18:43:31','a12f2d9b-af3e-4f8a-8f06-3b2941e012e8'),
	(80,1,'Category','category','global','',0,'Categories','{\"source\":\"group:1\",\"limit\":\"\",\"selectionLabel\":\"Pickup Type\"}','2018-07-05 20:02:31','2018-07-05 20:02:31','c650b624-a2de-4416-b60b-d333a627feff'),
	(81,7,'Address Two','addressTwo','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"4\"}','2018-07-05 23:06:15','2018-07-05 23:08:47','17549f78-026d-4186-9d0d-86e26a631574'),
	(82,1,'Page Slider','pageSlider','global','',0,'Matrix','{\"maxBlocks\":null}','2018-07-07 15:35:41','2018-07-09 20:33:50','eb5732b9-bd27-4c27-8455-642561f0e9bf'),
	(83,NULL,'Image','image','matrixBlockType:11','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2018-07-07 15:35:41','2018-07-09 20:33:50','69559acd-a19a-43d7-801b-28f3e2c01869'),
	(84,NULL,'Slide Title','slideTitle','matrixBlockType:11','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 15:35:41','2018-07-09 20:33:50','12825969-6211-41ee-a8d4-bb39301192b0'),
	(85,NULL,'Slide Sub Tile','slideSubTile','matrixBlockType:11','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 15:35:41','2018-07-09 20:33:50','cfde48d3-e611-4378-a277-09f20de97c77'),
	(86,NULL,'Slide Link','slideLink','matrixBlockType:11','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 15:35:41','2018-07-09 20:33:50','218be76d-159b-4b79-bae9-60ce914d307b'),
	(87,NULL,'Slide Link Text','slideLinkText','matrixBlockType:11','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 15:35:41','2018-07-09 20:33:50','c1aee379-8d7b-4b83-b9e8-2fc40783dee2'),
	(88,1,'Instagram Feed','instagramFeed','global','',0,'Checkboxes','{\"options\":[{\"label\":\"Include Feed\",\"value\":\"includeFeed\",\"default\":\"1\"}]}','2018-07-07 15:42:51','2018-07-07 15:58:38','1a07e0ba-0f94-4539-82e7-06c5418020a0'),
	(89,1,'Mailing List','mailingList','global','',0,'Checkboxes','{\"options\":[{\"label\":\"Include\",\"value\":\"include\",\"default\":\"1\"}]}','2018-07-07 15:49:26','2018-07-07 15:58:30','f3784f91-7fcd-41e5-b734-54db35109df4'),
	(90,1,'Display Title ','displayTitle','global','',0,'RichText','{\"configFile\":\"\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-07 15:57:14','2018-07-07 15:58:45','3eb35035-5091-4f2a-8348-28f9f99e585f'),
	(91,1,'Full Width Banner','fullWidthBanner','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2018-07-07 15:58:05','2018-07-07 15:58:05','66ab3002-df52-4619-8f1e-cbc96cda0dfd'),
	(92,1,'Pricing List','pricingList','global','',0,'Matrix','{\"maxBlocks\":null}','2018-07-07 16:01:07','2018-07-07 16:01:07','94a3847c-8f45-49bc-be66-b0cc39c844d1'),
	(93,NULL,'Product Name','productName','matrixBlockType:12','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 16:01:07','2018-07-07 16:01:07','c29e426d-ba3e-41c6-889f-3622e9fe8e76'),
	(94,NULL,'Description','description','matrixBlockType:12','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 16:01:07','2018-07-07 16:01:07','d1e3009e-a0be-47df-9e83-e09b8f69ee41'),
	(95,NULL,'price','price','matrixBlockType:12','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-07 16:01:07','2018-07-07 16:01:07','1523ce6f-0054-4ea2-b175-6e46af6483cd'),
	(96,1,'Dual Content ','dualContent','global','',0,'Matrix','{\"maxBlocks\":\"3\"}','2018-07-07 16:09:01','2018-07-10 22:42:17','a7cc2f1c-9028-4508-be57-10c26c9df0f8'),
	(97,NULL,'Textblock','textblock','matrixBlockType:13','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-07 16:09:02','2018-07-10 22:42:17','633d5828-7ed2-45bb-bc3b-e0850410f62c'),
	(98,NULL,'Image Block','imageBlock','matrixBlockType:13','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-07 16:09:02','2018-07-10 22:42:17','d6671ab2-7321-4dc2-8197-a375c13f7cab'),
	(99,4,'Hero Slider','heroSlider','global','',0,'Matrix','{\"maxBlocks\":\"5\"}','2018-07-08 13:45:31','2018-07-08 13:56:10','e30c810e-3a30-40bd-877f-3ba567d19ca7'),
	(100,NULL,'Image','image','matrixBlockType:14','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-08 13:45:31','2018-07-08 13:56:10','e49b0778-6b1e-4ea2-963b-e5c03303f263'),
	(101,4,'Hotspot Links','hotspotLinks','global','',0,'Matrix','{\"maxBlocks\":\"3\"}','2018-07-08 16:22:33','2018-07-08 16:42:37','24beca86-f441-4972-a819-7c06e27895a1'),
	(102,NULL,'Hotspot Title','hotspotTitle','matrixBlockType:15','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-08 16:22:33','2018-07-08 16:42:37','4aae2322-df04-46fb-ba19-1fe0c9cf2a0c'),
	(103,NULL,'Background Image','backgroundImage','matrixBlockType:15','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-08 16:22:33','2018-07-08 16:42:37','d1f0652e-4150-4f8e-b7b3-cc2f6de95b5c'),
	(104,NULL,'Description','description','matrixBlockType:15','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-08 16:22:33','2018-07-08 16:42:37','1e5e9365-ac62-4acc-9e50-4b7b06296821'),
	(105,NULL,'Hotspot Link','hotspotLink','matrixBlockType:15','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-08 16:22:33','2018-07-08 16:42:37','975ab812-5446-4db5-b7ee-ce9f49607fae'),
	(106,8,'Team Grid','teamGrid','global','',0,'Matrix','{\"maxBlocks\":null}','2018-07-10 20:23:16','2018-07-10 20:23:16','07e9cd56-d842-4923-899d-66146a98aa1a'),
	(107,NULL,'Team Member Photo','teamMemberPhoto','matrixBlockType:16','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-10 20:23:16','2018-07-10 20:23:16','a0106f00-0f8f-43b8-a039-9128b69b0877'),
	(108,NULL,'Team Member Name','teamMemberName','matrixBlockType:16','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-10 20:23:16','2018-07-10 20:23:16','44e1c234-08c0-4ff4-8c65-e8ed29134059'),
	(109,NULL,'Team Member Position ','teamMemberPosition','matrixBlockType:16','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-10 20:23:16','2018-07-10 20:23:16','6d800c7b-0357-4691-8efe-2a42b4036046'),
	(110,NULL,'Image Block Position','imageBlockPosition','matrixBlockType:13','Checking this option floats the image block to the left.',0,'Lightswitch','{\"default\":\"\"}','2018-07-10 22:42:01','2018-07-10 22:42:17','49dbbde2-dc73-438f-a4b3-543e795ea549');

/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_globalsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_globalsets`;

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(260,'Contact Meta','contactMeta',212,'2018-06-24 18:39:25','2018-07-05 23:07:08','8d5c9777-081a-4035-876d-57f11fee2ab3');

/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_info`;

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'2.6.3019','2.6.14',2,'Apex Music Co','https://apex.local','UTC',1,0,'2014-07-29 18:21:29','2018-07-03 21:20:36','3ebb42f0-5296-4d41-b31e-4dc4882dd453');

/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_locales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_locales`;

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	('en',1,'2014-07-29 18:21:30','2014-07-29 18:21:30','4ef18483-8a41-4505-a0a1-b4cf2be89294');

/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocks`;

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `ownerLocale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(9,4,4,1,NULL,1,'2014-07-30 23:02:16','2016-06-03 17:43:25','95dd2776-0616-49fc-b47d-c48b0f42ec66'),
	(10,4,4,2,NULL,2,'2014-07-30 23:02:16','2016-06-03 17:43:25','ca74240d-8649-4d53-a029-2e435b1591e0'),
	(11,4,4,4,NULL,3,'2014-07-30 23:02:16','2016-06-03 17:43:25','eb7aac49-2f44-4f4d-8848-61ae2037877f'),
	(12,4,4,3,NULL,4,'2014-07-30 23:02:16','2016-06-03 17:43:25','83524b1b-8362-40c8-958b-253fa65040ab'),
	(13,4,4,1,NULL,5,'2014-07-30 23:02:16','2016-06-03 17:43:25','aa854f17-eb58-40da-aa09-2048ac72066f'),
	(14,4,4,3,NULL,6,'2014-07-30 23:02:16','2016-06-03 17:43:25','3521c77d-4f60-4ed6-b2f6-c2409ba19c03'),
	(15,4,4,1,NULL,7,'2014-07-30 23:02:16','2016-06-03 17:43:25','f0cc77f2-83d8-4967-90a1-ab525e591376'),
	(16,4,4,4,NULL,8,'2014-07-30 23:02:16','2016-06-03 17:43:25','6281d25d-63c5-44dd-94d7-58da3b65aca3'),
	(17,4,4,3,NULL,9,'2014-07-30 23:02:16','2016-06-03 17:43:25','6b95578b-1584-47fd-8bd9-d714ee2aa3b6'),
	(18,4,4,1,NULL,10,'2014-07-30 23:02:16','2016-06-03 17:43:25','f103246c-759e-4a17-afff-51f7b898e59c'),
	(25,24,4,1,NULL,1,'2014-07-31 22:04:17','2016-06-03 17:43:36','48fb1d2c-355c-4a10-81ad-39794a6fb6a0'),
	(30,24,4,2,NULL,2,'2014-07-31 22:20:21','2016-06-03 17:43:36','382a5b52-ad0d-4388-9632-2d03ffd8384f'),
	(31,24,4,4,NULL,3,'2014-07-31 22:20:21','2016-06-03 17:43:36','d7312f60-2be1-4455-9711-271a7cba3424'),
	(32,24,4,3,NULL,4,'2014-07-31 22:20:21','2016-06-03 17:43:36','d7444e91-5957-4828-ac47-61163fffac3c'),
	(33,24,4,1,NULL,6,'2014-07-31 22:20:21','2016-06-03 17:43:36','30e83f60-1b15-4b6b-aa3e-9b6364399fac'),
	(34,24,4,5,NULL,7,'2014-07-31 22:20:21','2016-06-03 17:43:36','f38bf9e0-2f39-4d6c-bd2a-c81e3c65dc13'),
	(35,24,4,3,NULL,8,'2014-07-31 22:20:21','2016-06-03 17:43:36','4f6de08b-e0af-42e1-bc5f-cef922479960'),
	(36,24,4,1,NULL,9,'2014-07-31 22:20:21','2016-06-03 17:43:36','43e8ccbb-fabc-4ff3-a00f-54555529b0d2'),
	(37,24,4,4,NULL,10,'2014-07-31 22:20:21','2016-06-03 17:43:37','d2ca7cc5-4bd0-4c6b-866f-1b493f260b2d'),
	(38,24,4,3,NULL,11,'2014-07-31 22:20:21','2016-06-03 17:43:37','2de1cb4a-4953-4b6a-9c84-a2efc958ba02'),
	(39,24,4,1,NULL,12,'2014-07-31 22:20:21','2016-06-03 17:43:37','8f0da717-6c38-45c0-9191-68519cd57369'),
	(41,24,4,4,NULL,5,'2014-07-31 22:22:28','2016-06-03 17:43:36','c45be028-eb34-41c5-b6a7-92fd04709ca0'),
	(46,45,4,1,NULL,1,'2014-07-31 23:20:59','2016-06-03 17:43:06','49f900fa-aad1-47a7-acdd-f689d4ae2262'),
	(48,45,4,3,NULL,3,'2014-07-31 23:20:59','2016-06-03 17:43:06','beed1aba-2499-4342-be9d-03ae7413a1ab'),
	(49,45,4,1,NULL,4,'2014-07-31 23:20:59','2016-06-03 17:43:06','5de1a535-c082-4410-b1d6-76682a52982e'),
	(50,45,4,4,NULL,5,'2014-07-31 23:20:59','2016-06-03 17:43:06','064ef82e-07ac-4944-9eb6-f3ecba739285'),
	(51,45,4,3,NULL,6,'2014-07-31 23:20:59','2016-06-03 17:43:06','d2dd3c7c-318f-458c-becc-3c747e043aaa'),
	(52,45,4,1,NULL,7,'2014-07-31 23:20:59','2016-06-03 17:43:06','8cab92a1-0e42-4e7b-8b93-33e8b54bd2e4'),
	(53,45,4,2,NULL,8,'2014-07-31 23:20:59','2016-06-03 17:43:07','51b4bef6-407d-442f-9a35-eccedc89dbd5'),
	(54,45,4,3,NULL,9,'2014-07-31 23:20:59','2016-06-03 17:43:07','09295003-273f-4fda-8aa8-8f8d41fbd44d'),
	(55,45,4,1,NULL,10,'2014-07-31 23:20:59','2016-06-03 17:43:07','4d71f4be-d9d5-4105-b2fb-e35e6c44687b'),
	(62,61,4,1,NULL,1,'2014-08-06 21:32:48','2016-06-03 17:42:53','cc70cb10-2c5e-4a64-be06-2ccf1984082e'),
	(63,61,4,1,NULL,3,'2014-08-06 21:32:48','2016-06-03 17:42:53','9d080e6a-21c5-4131-a2d0-8e72ebe097f3'),
	(64,61,4,4,NULL,4,'2014-08-06 21:32:48','2016-06-03 17:42:53','3b9a944b-a955-4d15-9211-2c0c101eba5e'),
	(65,61,4,3,NULL,5,'2014-08-06 21:32:48','2016-06-03 17:42:53','c989d6aa-46e3-4a5f-af1a-04064af4a7b4'),
	(66,61,4,1,NULL,6,'2014-08-06 21:32:48','2016-06-03 17:42:53','91a94ecc-bfbc-4f5c-b434-c09f7bd1a01d'),
	(67,61,4,2,NULL,7,'2014-08-06 21:32:48','2016-06-03 17:42:53','33202ceb-0c8d-490b-abd4-32246f675a6a'),
	(68,61,4,1,NULL,8,'2014-08-06 21:32:48','2016-06-03 17:42:53','8b67e068-307b-44e4-bb2d-c8641aa94fee'),
	(69,61,4,4,NULL,9,'2014-08-06 21:32:48','2016-06-03 17:42:53','81a1b65c-5b83-4303-b336-933087ff3fc8'),
	(70,61,4,3,NULL,10,'2014-08-06 21:32:48','2016-06-03 17:42:53','aa837782-0876-4182-bd59-2829e5f02ebc'),
	(71,61,4,1,NULL,11,'2014-08-06 21:32:48','2016-06-03 17:42:53','4ac53d06-6471-450c-a2fe-a8eabfba4c6f'),
	(73,61,4,4,NULL,2,'2014-08-06 21:34:12','2016-06-03 17:42:53','eb6c284d-93cf-4314-adc8-eea6c2e1a726'),
	(230,105,4,1,NULL,1,'2015-02-02 17:04:48','2016-06-03 17:42:35','470c20c2-cb2e-4edc-8e8f-6db6f88cff32'),
	(235,74,4,3,NULL,2,'2015-02-09 21:33:03','2015-02-10 18:08:01','b5f47a7d-e805-492f-8248-ee551ea33415'),
	(236,74,4,9,NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','4559753d-3684-4902-b852-842b20b067d3'),
	(237,74,4,1,NULL,3,'2015-02-09 21:56:10','2015-02-10 18:08:01','34d7d02d-7e6d-4855-b6dc-6f56f3a68772'),
	(238,74,4,9,NULL,5,'2015-02-09 21:56:10','2015-02-10 18:08:01','40108f89-c627-42ae-91b2-22b8ed870099'),
	(239,74,4,3,NULL,6,'2015-02-09 21:56:10','2015-02-10 18:08:01','d8859697-85e3-41e5-8db6-45082150584d'),
	(240,74,4,4,NULL,7,'2015-02-09 21:56:10','2015-02-10 18:08:01','449dace2-4127-4d32-9bb7-5ee0e53d8e2b'),
	(241,74,4,1,NULL,8,'2015-02-09 21:56:10','2015-02-10 18:08:01','48164fdb-6911-48aa-9e5d-ca33b00c1ad2'),
	(242,74,4,9,NULL,9,'2015-02-09 21:56:10','2015-02-10 18:08:01','160bb71b-5d4f-4b64-8b63-51708e2effd5'),
	(243,74,4,1,NULL,4,'2015-02-10 01:16:49','2015-02-10 18:08:01','c775fe82-489a-4460-8ef4-b1520b480667'),
	(244,74,4,10,NULL,10,'2015-02-10 01:23:33','2015-02-10 18:08:01','33e38234-0a43-420f-b6e9-fb22bd4344e0'),
	(252,45,4,10,NULL,2,'2015-02-10 17:25:04','2016-06-03 17:43:06','a739d49b-9781-4154-98bf-743a05a2f50f'),
	(263,262,4,1,NULL,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','21d9925b-cb04-4112-b694-f00c16762c69'),
	(314,2,99,14,NULL,1,'2018-07-08 13:54:49','2018-07-08 18:53:16','45881e6d-7b96-4725-8300-130ddd53f163'),
	(315,2,99,14,NULL,2,'2018-07-08 14:00:19','2018-07-08 18:53:16','45723b0f-26d9-4273-a4a7-573fceb12238'),
	(316,2,99,14,NULL,3,'2018-07-08 14:00:19','2018-07-08 18:53:16','001ef194-c02d-46a3-9623-b2136ae5fdd6'),
	(317,2,99,14,NULL,4,'2018-07-08 14:00:19','2018-07-08 18:53:16','05966318-2e1f-4ff7-95de-ff0ee36ac0ee'),
	(318,2,99,14,NULL,5,'2018-07-08 14:00:19','2018-07-08 18:53:16','ab71492c-ed82-4fca-80d5-2241c62f99a5'),
	(319,2,101,15,NULL,1,'2018-07-08 16:28:44','2018-07-08 18:53:16','1eafdfc5-d2c4-433e-a815-d73b7e6409aa'),
	(320,2,101,15,NULL,2,'2018-07-08 16:31:00','2018-07-08 18:53:16','7aa1fd68-75f6-4487-8b29-22879cb3e8b3'),
	(321,2,101,15,NULL,3,'2018-07-08 16:43:10','2018-07-08 18:53:16','7f2973cf-13f8-4753-a7b6-9179cf3bed61'),
	(322,2,82,11,NULL,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','917b0f14-b1ea-479f-b778-8a62f60a24a6'),
	(323,2,82,11,NULL,2,'2018-07-08 18:53:17','2018-07-08 18:53:17','6a5ba15b-a482-4a68-bc19-186fe3424bdd'),
	(324,74,96,13,NULL,1,'2018-07-09 22:29:55','2018-07-10 20:35:03','4cd74b32-bdb9-4785-b0c2-bb818a2e977a'),
	(325,74,106,16,NULL,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','2185759b-6ba5-47ae-b2b0-3bc22ff92b5e'),
	(326,74,106,16,NULL,2,'2018-07-10 20:35:03','2018-07-10 20:35:03','f43fb6d3-414b-4d5d-83e6-4012ca4ac688'),
	(327,74,106,16,NULL,3,'2018-07-10 20:35:03','2018-07-10 20:35:03','ced95bc0-b351-4e57-9343-f95119a8b085'),
	(328,74,106,16,NULL,4,'2018-07-10 20:35:03','2018-07-10 20:35:03','01ff7f22-7f77-4634-8cc4-2142a9b59515'),
	(329,258,82,11,NULL,1,'2018-07-10 22:20:53','2018-07-10 23:07:07','6ed9bf6a-c1fa-4250-8519-7249b17dea62'),
	(330,258,82,11,NULL,2,'2018-07-10 22:20:53','2018-07-10 23:07:07','d2f3572c-6dc7-4382-8636-59346e80d635'),
	(331,258,82,11,NULL,3,'2018-07-10 22:20:53','2018-07-10 23:07:07','f9802c89-dd13-4f4d-b40a-0b1dae473f04'),
	(332,258,96,13,NULL,1,'2018-07-10 22:44:31','2018-07-10 23:07:07','83660b17-1da7-47f2-8533-4a46f905a044'),
	(333,258,96,13,NULL,2,'2018-07-10 23:05:04','2018-07-10 23:07:07','73064dd4-0c53-40e3-98f0-64cee1af0f6d');

/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocktypes`;

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,4,181,'Text','text',3,'2014-07-30 20:59:37','2015-02-10 17:39:37','070be8db-f9b0-4605-98ae-e9b54b1af3f6'),
	(2,4,182,'Pull Quote','pullQuote',4,'2014-07-30 21:01:11','2015-02-10 17:39:37','daa4f1b9-ebde-4b0e-9cf3-027bf3b8b890'),
	(3,4,180,'Heading','heading',2,'2014-07-30 22:37:57','2015-02-10 17:39:37','1d5e20da-bc96-4a33-b045-8d1fa5870e74'),
	(4,4,183,'Image','image',5,'2014-07-30 22:37:57','2015-02-10 17:39:37','9123201b-837c-4269-9d7c-d5e11bba1e2b'),
	(5,4,185,'Quote','quote',7,'2014-07-30 22:37:57','2015-02-10 17:39:37','97ff3c80-2398-4ca5-9d03-c3b8727c6eb2'),
	(9,4,179,'New Section','newSection',1,'2015-02-09 21:38:01','2015-02-10 17:39:37','e1c6c95e-a19b-4cd8-9a83-935e91f862c0'),
	(10,4,184,'Gallery','gallery',6,'2015-02-10 01:21:43','2015-02-10 17:39:37','0f3ede99-8b78-4042-85c9-422f57f5b01b'),
	(11,82,239,'Slide','slide',1,'2018-07-07 15:35:41','2018-07-09 20:33:50','5a1e4692-fa88-4079-9c7f-f1c8efb0a4bf'),
	(12,92,216,'Product','product',1,'2018-07-07 16:01:07','2018-07-07 16:01:07','3c69773e-db31-4106-a622-ae477d78cfb3'),
	(13,96,252,'Block','block',1,'2018-07-07 16:09:01','2018-07-10 22:42:17','77082bf4-d26a-45d5-aaf2-76285ea3c33c'),
	(14,99,223,'Slide','slide',1,'2018-07-08 13:45:31','2018-07-08 13:56:10','caa49bc6-8770-4e32-a4e1-5c25633fc445'),
	(15,101,235,'Hotspot','hotspot',1,'2018-07-08 16:22:33','2018-07-08 16:42:37','035337c5-68d3-4896-bbbd-4c734dfcdd63'),
	(16,106,245,'Team Member','teamMember',1,'2018-07-10 20:23:16','2018-07-10 20:23:16','8f09da3b-ad14-4949-9f12-2cebafa3d536');

/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_articlebody
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_articlebody`;

CREATE TABLE `craft_matrixcontent_articlebody` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_text_text` text COLLATE utf8_unicode_ci,
  `field_pullQuote_pullQuote` text COLLATE utf8_unicode_ci,
  `field_pullQuote_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_heading_heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_image_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_quote_quote` text COLLATE utf8_unicode_ci,
  `field_quote_attribution` text COLLATE utf8_unicode_ci,
  `field_quote_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_image_caption` text COLLATE utf8_unicode_ci,
  `field_newSection_sectionHeading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_text_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_articlebody_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_articlebody_locale_idx` (`locale`),
  CONSTRAINT `craft_matrixcontent_articlebody_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_articlebody_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_articlebody` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_articlebody` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_articlebody` (`id`, `elementId`, `locale`, `field_text_text`, `field_pullQuote_pullQuote`, `field_pullQuote_position`, `field_heading_heading`, `field_image_position`, `field_quote_quote`, `field_quote_attribution`, `field_quote_position`, `field_image_caption`, `field_newSection_sectionHeading`, `field_text_position`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(2,9,'en','<p>\r\n	<strong>Our answer is: both.</strong> Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\r\n</p>\r\n\r\n<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-30 23:02:16','2016-06-03 17:43:25','03734d07-5274-49a2-998e-5e1a5ee4ffad'),
	(3,10,'en',NULL,'Whenever something made me uncomfortable, I would give it a try. So I moved around a bit, trying new things out.','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2016-06-03 17:43:25','beba979f-47c1-4861-99be-4ad7c7dc94b6'),
	(4,11,'en',NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,'',NULL,NULL,'2014-07-30 23:02:16','2016-06-03 17:43:25','33a161d8-2078-4461-aa49-a3e20b57faf4'),
	(5,12,'en',NULL,NULL,NULL,'The Experience',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2016-06-03 17:43:25','816aa85d-deb1-45e6-be5b-e826db10ef04'),
	(6,13,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>\r\n\r\n<ul>\r\n	<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</li>\r\n	<li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</li>\r\n	<li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</li>\r\n</ul>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-30 23:02:16','2016-06-03 17:43:25','70d10b9c-e6d8-4984-a0ef-6cebe28627d5'),
	(7,14,'en',NULL,NULL,NULL,'The Skills',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2016-06-03 17:43:25','d7307eb9-2694-4234-a409-e826719497bc'),
	(8,15,'en','<p>\r\n	Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut.\r\n</p>\r\n\r\n<ol>\r\n	<li>Optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</li>\r\n	<li>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</li>\r\n	<li>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</li>\r\n</ol>\r\n\r\n<p>\r\n	Officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-30 23:02:16','2016-06-03 17:43:25','42924c10-e5c9-4850-b1a0-a604ed6ca600'),
	(9,16,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'',NULL,NULL,'2014-07-30 23:02:16','2016-06-03 17:43:25','f77ca400-2036-4df9-a450-ed4e7e72c84a'),
	(10,17,'en',NULL,NULL,NULL,'In the End',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:02:16','2016-06-03 17:43:25','e97ef9c7-fe6d-49aa-ba4f-ed0f5fe9ec14'),
	(11,18,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-30 23:02:16','2016-06-03 17:43:25','ce4605db-8cb5-4a88-a3d9-242ed40c4b43'),
	(12,25,'en','<p>\r\n	<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium</strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\r\n</p>\r\n\r\n<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 22:04:17','2016-06-03 17:43:36','bf333a45-e1b5-45cf-b313-9dff0a5d5323'),
	(13,30,'en',NULL,'Using sophisticated global positioning technology, Happy Lager extracted Health data straight from the air we breathe.','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:36','6ba0ca69-0655-4752-84ca-1ba13a445e72'),
	(14,31,'en',NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,'',NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:36','e23d955d-9f63-4380-b805-b69cedd551ff'),
	(15,32,'en',NULL,NULL,NULL,'A People-to-People Business',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:36','912cec3b-0f42-40e8-8ecb-08c786dc05e0'),
	(16,33,'en','<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>\r\n\r\n<p>\r\n	Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem Tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 22:20:21','2016-06-03 17:43:36','85b9b0ae-5518-4c3b-be8d-2531cd731a41'),
	(17,34,'en',NULL,NULL,NULL,NULL,NULL,'Augmented reality has long sounded like a wild futuristic concept, but the technology has actually been around for years.','Charlie Roths, Developers.Google','center',NULL,NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:36','ffe0d906-2119-4b7d-81a4-fe199bfe031c'),
	(18,35,'en',NULL,NULL,NULL,'What is Happy Lager Doing About It?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:36','76d5372f-2b5c-4580-9ddb-a479fe4c642c'),
	(19,36,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>\r\n\r\n<p>\r\n	Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\r\n</p>\r\n\r\n<p>\r\n	At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 22:20:21','2016-06-03 17:43:36','38909e90-22f6-423f-983b-e637f81f8a6f'),
	(20,37,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'',NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:36','87c826a3-f1f5-400f-904a-d0b6b3c6316c'),
	(21,38,'en',NULL,NULL,NULL,'This is Only the Beginning',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:20:21','2016-06-03 17:43:37','f2120067-b7ab-475b-9d76-ff123a7cadc8'),
	(22,39,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 22:20:21','2016-06-03 17:43:37','cadbfd19-8917-4697-aa73-05f2ba9077af'),
	(23,41,'en',NULL,NULL,NULL,NULL,'left',NULL,NULL,NULL,'',NULL,NULL,'2014-07-31 22:22:28','2016-06-03 17:43:36','7e0c7548-d25a-477e-9e62-8e8a8db3d000'),
	(24,46,'en','<p>\r\n	<strong>Et iusto odio dignissimos ducimus qui blanditii raesentium</strong> voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\r\n</p>\r\n\r\n<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 23:20:59','2016-06-03 17:43:06','4b7947cc-5271-4730-a1fa-10fe2a50465c'),
	(26,48,'en',NULL,NULL,NULL,'People Love Games',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2016-06-03 17:43:06','dacd0937-e000-4bbe-9880-b7897c5886e6'),
	(27,49,'en','<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.  Libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Deserunt mollitia animi, id est laborum\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 23:20:59','2016-06-03 17:43:06','ac010813-6959-4adc-b8fa-db213fe87d8c'),
	(28,50,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'',NULL,NULL,'2014-07-31 23:20:59','2016-06-03 17:43:06','4efbf1be-ea74-45bc-a0f8-9d39356e20f0'),
	(29,51,'en',NULL,NULL,NULL,'In the Beginning, There Was Pong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2016-06-03 17:43:06','1062d157-5a0c-4bc9-8a8b-35db2d811495'),
	(30,52,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>\r\n\r\n<p>\r\n	Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\r\n</p>\r\n\r\n<p>\r\n	At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 23:20:59','2016-06-03 17:43:06','35bcecc1-cdc4-447f-9b44-76b46791e852'),
	(31,53,'en',NULL,'People learn and adapt 36% faster in the environment of play','center',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2016-06-03 17:43:06','2b74b6cf-d109-4184-ab48-edf0a668df96'),
	(32,54,'en',NULL,NULL,NULL,'Results of our Play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2016-06-03 17:43:07','de3b1cd0-0b8c-4704-8e23-9c7b01416fb8'),
	(33,55,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-07-31 23:20:59','2016-06-03 17:43:07','81b862aa-cbd2-4e73-b477-4255ca9a6806'),
	(35,62,'en','<p>\r\n	Iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-08-06 21:32:48','2016-06-03 17:42:53','b2616347-daa1-4edf-8b87-000adccafc65'),
	(36,63,'en','<p>\r\n	Nam libero tempore, cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. empobus autem quibusdam et aut officiis debis aut.\r\n</p>\r\n\r\n<p>\r\n	Tamlibero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in cpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-08-06 21:32:48','2016-06-03 17:42:53','dc45b513-a358-4eb6-88b9-95e2c16fbdf2'),
	(37,64,'en',NULL,NULL,NULL,NULL,'full',NULL,NULL,NULL,'',NULL,NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','796c768a-ac68-4d4d-9b47-3b4b2279337c'),
	(38,65,'en',NULL,NULL,NULL,'Outstanding Content Flow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','0fd7b99c-e9da-46e5-9e1a-8727f31cc031'),
	(39,66,'en','<p>\r\n	Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-08-06 21:32:48','2016-06-03 17:42:53','1c637c9c-198d-403b-a97f-ea9ea64e94a2'),
	(40,67,'en',NULL,'Sooner or later you’re going to realize, just as I did, that there’s a difference between knowing the path and walking the path.','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','83368031-d9bb-40a9-99c3-6274af92a1bd'),
	(41,68,'en','<p>\r\n	Facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. At vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-08-06 21:32:48','2016-06-03 17:42:53','f98214d4-2c42-43b1-9754-83f394991111'),
	(42,69,'en',NULL,NULL,NULL,NULL,'center',NULL,NULL,NULL,'',NULL,NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','95ad1020-f877-4ec2-99ad-9299c068ebf5'),
	(43,70,'en',NULL,NULL,NULL,'Say what you want, where you want to say it',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','bb93ae53-65ac-4430-ba65-df68abec118f'),
	(44,71,'en','<p>\r\n	Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2014-08-06 21:32:48','2016-06-03 17:42:53','4dcff9ba-b9a6-4d9c-8d20-ee42790659d1'),
	(45,73,'en',NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,'',NULL,NULL,'2014-08-06 21:34:12','2016-06-03 17:42:53','6bb7a64d-ba24-4bd3-a366-68f70f793c0c'),
	(104,230,'en','<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\r\n</p>\r\n\r\n<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n<p>\r\n	Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. deleniti atque corrupti quos dolores. Et harum quidem rerm facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.\r\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'center','2015-02-02 17:04:48','2016-06-03 17:42:35','d45d46fd-81f1-4f22-8d39-a602161ebc8e'),
	(106,235,'en',NULL,NULL,NULL,'The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-02-09 21:33:03','2015-02-10 18:08:01','f6d79bc1-5c9b-4700-a7bb-83a45847783b'),
	(107,236,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'How We Think',NULL,'2015-02-09 21:56:10','2015-02-10 18:08:01','bcf84c98-6b16-4d05-a09c-29c34702a00c'),
	(108,237,'en','<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'left','2015-02-09 21:56:10','2015-02-10 18:08:01','4f2999f5-27a6-4201-b626-6eb55952a719'),
	(109,238,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Our Story',NULL,'2015-02-09 21:56:10','2015-02-10 18:08:01','9872aa5b-3c56-458c-9e03-0f1351e9c228'),
	(110,239,'en',NULL,NULL,NULL,'It all begins in a living room with a six pack and A Clamshell iBook.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-02-09 21:56:10','2015-02-10 18:08:01','317abf7c-2a04-428b-ba8c-aef1b82903e9'),
	(111,240,'en',NULL,NULL,NULL,NULL,'left',NULL,NULL,NULL,'',NULL,NULL,'2015-02-09 21:56:10','2015-02-10 18:08:01','bcbbdbe3-eada-424f-9496-60cfd44b500f'),
	(112,241,'en','<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'right','2015-02-09 21:56:10','2015-02-10 18:08:01','241bf138-8158-42be-b07c-be4bebbf731d'),
	(113,242,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Our People',NULL,'2015-02-09 21:56:10','2015-02-10 18:08:01','9a028003-14f9-4527-babd-8baff948019c'),
	(114,243,'en','<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'right','2015-02-10 01:16:49','2015-02-10 18:08:01','0d943c2c-08c4-4111-a5bc-2a1280f31373'),
	(115,244,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-02-10 01:23:33','2015-02-10 18:08:01','1da15c1a-5f70-46b2-9af4-db2ed54b4104'),
	(120,252,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-02-10 17:25:04','2016-06-03 17:43:06','30c20562-42ba-4b78-a53c-aabc23b4e90d'),
	(121,263,'en','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'left','2018-07-05 20:06:13','2018-07-05 20:06:13','d5a92cf2-2b23-40b0-9bc9-0054907f11e1');

/*!40000 ALTER TABLE `craft_matrixcontent_articlebody` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_dualcontent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_dualcontent`;

CREATE TABLE `craft_matrixcontent_dualcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_block_textblock` text COLLATE utf8_unicode_ci,
  `field_block_imageBlockPosition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_dualcontent_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_dualcontent_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_dualcontent_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_dualcontent_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_dualcontent` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_dualcontent` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_dualcontent` (`id`, `elementId`, `locale`, `field_block_textblock`, `field_block_imageBlockPosition`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,324,'en','<h3 class=\"styled\"><strong>About Apex</strong></h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,'2018-07-09 22:29:55','2018-07-10 20:35:03','2e1f7295-8df3-4190-acfb-0c0455db24e4'),
	(2,332,'en','<h3 class=\"styled center-text\"> <strong>recording studio</strong> </h3>\n<p>10 Hour session - <strong>From £220 Per Session</strong> (Engineer included) Hourly rate outside of session bookings - <strong>£25</strong>.</p>\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young / new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.</p>\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.</p>',1,'2018-07-10 22:44:31','2018-07-10 23:07:07','58f4027e-e3c2-4dc1-8ad0-1db4a84305cb'),
	(3,333,'en','<h3 class=\"styled center-text\">\n			<strong>rehersal facilities</strong>\n		</h3>\n<p>£10 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\n			£25 for 3 hours) Opening hours and time slots are subject to availability.</p>\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\n			day\n		</p>',0,'2018-07-10 23:05:04','2018-07-10 23:07:07','6bfecbf8-a3b0-4164-bfec-ffdcdb90ed95');

/*!40000 ALTER TABLE `craft_matrixcontent_dualcontent` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_heroslider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_heroslider`;

CREATE TABLE `craft_matrixcontent_heroslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_heroslider_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_heroslider_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_heroslider_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_heroslider_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_heroslider` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_heroslider` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_heroslider` (`id`, `elementId`, `locale`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,314,'en','2018-07-08 13:54:49','2018-07-08 18:53:16','f1a2f228-e79e-42b3-9719-ba302cfd8f60'),
	(2,315,'en','2018-07-08 14:00:19','2018-07-08 18:53:16','698d087b-73ee-467c-ac1b-8a39190e0d68'),
	(3,316,'en','2018-07-08 14:00:19','2018-07-08 18:53:16','a61aaa09-7ff4-4990-be41-8ae34d9d4b73'),
	(4,317,'en','2018-07-08 14:00:19','2018-07-08 18:53:16','21b47059-768f-466b-a4f2-e712db79c0f9'),
	(5,318,'en','2018-07-08 14:00:19','2018-07-08 18:53:16','42451f1a-fc61-4965-9476-0068aec27cab');

/*!40000 ALTER TABLE `craft_matrixcontent_heroslider` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_hotspotlinks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_hotspotlinks`;

CREATE TABLE `craft_matrixcontent_hotspotlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_hotspot_hotspotTitle` text COLLATE utf8_unicode_ci,
  `field_hotspot_description` text COLLATE utf8_unicode_ci,
  `field_hotspot_hotspotLink` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_hotspotlinks_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_hotspotlinks_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_hotspotlinks_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_hotspotlinks_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_hotspotlinks` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_hotspotlinks` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_hotspotlinks` (`id`, `elementId`, `locale`, `field_hotspot_hotspotTitle`, `field_hotspot_description`, `field_hotspot_hotspotLink`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,319,'en','Apex Pickups','SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.','/','2018-07-08 16:28:44','2018-07-08 18:53:16','1836bb80-965d-47bf-982b-0b82caafbb2d'),
	(2,320,'en','Apex Studio','SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.','/apex-studio','2018-07-08 16:31:00','2018-07-08 18:53:16','c92bfbbf-3359-4f64-994f-4b3e2780886f'),
	(3,321,'en','INSTRUMENT REPAIRS','TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.','/instrument-repairs','2018-07-08 16:43:10','2018-07-08 18:53:16','89c45f51-043d-4212-bb48-7be55a122bb6');

/*!40000 ALTER TABLE `craft_matrixcontent_hotspotlinks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_pageslider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_pageslider`;

CREATE TABLE `craft_matrixcontent_pageslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_slide_slideTitle` text COLLATE utf8_unicode_ci,
  `field_slide_slideSubTile` text COLLATE utf8_unicode_ci,
  `field_slide_slideLinkText` text COLLATE utf8_unicode_ci,
  `field_slide_slideLink` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_pageslider_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_pageslider_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_pageslider_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_pageslider_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_pageslider` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_pageslider` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_pageslider` (`id`, `elementId`, `locale`, `field_slide_slideTitle`, `field_slide_slideSubTile`, `field_slide_slideLinkText`, `field_slide_slideLink`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,322,'en','PAT MCMANUS','Pickups: Apex 50\'s','View Pickups',NULL,'2018-07-08 18:53:16','2018-07-08 18:53:16','85f21c59-4dbe-434b-88fc-7124f6b9d76d'),
	(2,323,'en','Test Title','Test Subtitle','View',NULL,'2018-07-08 18:53:16','2018-07-08 18:53:16','3f279c3a-a721-4961-b5a0-94934d85d215'),
	(3,329,'en','SPACE, THE FINAL FRONTIER.','','','','2018-07-10 22:20:53','2018-07-10 23:07:07','289d2c6f-3c8a-47c5-b79c-45b1a8a76215'),
	(4,330,'en','','','','','2018-07-10 22:20:53','2018-07-10 23:07:07','ff5d45ff-a44e-4e4f-a3c7-dfdcfa08b7b5'),
	(5,331,'en','','','','','2018-07-10 22:20:53','2018-07-10 23:07:07','df0988f1-dec5-4e30-bb06-bf54f5834c6f');

/*!40000 ALTER TABLE `craft_matrixcontent_pageslider` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_pricinglist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_pricinglist`;

CREATE TABLE `craft_matrixcontent_pricinglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_product_productName` text COLLATE utf8_unicode_ci,
  `field_product_description` text COLLATE utf8_unicode_ci,
  `field_product_price` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_pricinglist_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_pricinglist_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_pricinglist_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_pricinglist_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_matrixcontent_teamgrid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_teamgrid`;

CREATE TABLE `craft_matrixcontent_teamgrid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_teamMember_teamMemberName` text COLLATE utf8_unicode_ci,
  `field_teamMember_teamMemberPosition` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_teamgrid_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_teamgrid_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_teamgrid_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_teamgrid_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_teamgrid` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_teamgrid` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_teamgrid` (`id`, `elementId`, `locale`, `field_teamMember_teamMemberName`, `field_teamMember_teamMemberPosition`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,325,'en','ORAN MCGUCKIN','Owner & creator','2018-07-10 20:35:03','2018-07-10 20:35:03','82dc0975-7c0b-4142-9c82-4c53d37b7b53'),
	(2,326,'en','DANI ROONEY','Video & photography','2018-07-10 20:35:03','2018-07-10 20:35:03','098c7d14-be06-4f8a-b59a-64c3b16f4ae7'),
	(3,327,'en','GRAHAM MCKINSTRY','Social Media, marketing & management','2018-07-10 20:35:03','2018-07-10 20:35:03','2ea35665-be6e-4fcf-b896-6fe319242f95'),
	(4,328,'en','WILLIAM MARTIN','Workshop apprentice','2018-07-10 20:35:03','2018-07-10 20:35:03','4bdb5969-3096-4f6b-b2cb-be55079ad792');

/*!40000 ALTER TABLE `craft_matrixcontent_teamgrid` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_menus`;

CREATE TABLE `craft_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maxLevels` int(10) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `structureId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_menus_name_unq_idx` (`name`),
  UNIQUE KEY `craft_menus_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_menus` WRITE;
/*!40000 ALTER TABLE `craft_menus` DISABLE KEYS */;

INSERT INTO `craft_menus` (`id`, `name`, `handle`, `maxLevels`, `type`, `structureId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Main Menu','mainMenu',3,'3',2,'2018-07-05 21:54:47','2018-07-05 21:55:09','6503bc0d-6f7f-4f3a-9402-d335a6e536af'),
	(2,'Quick Links','quickLinks',1,'3',3,'2018-07-07 14:38:25','2018-07-07 14:38:25','0dc22f26-82c2-40bb-90e2-6706254ccb44');

/*!40000 ALTER TABLE `craft_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_menus_nodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_menus_nodes`;

CREATE TABLE `craft_menus_nodes` (
  `id` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  `linkedEntryId` int(10) DEFAULT NULL,
  `customUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_menus_nodes_menuId_fk` (`menuId`),
  CONSTRAINT `craft_menus_nodes_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_menus_nodes_menuId_fk` FOREIGN KEY (`menuId`) REFERENCES `craft_menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_menus_nodes` WRITE;
/*!40000 ALTER TABLE `craft_menus_nodes` DISABLE KEYS */;

INSERT INTO `craft_menus_nodes` (`id`, `menuId`, `linkedEntryId`, `customUrl`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(264,1,74,'','2018-07-05 22:10:16','2018-07-05 22:10:16','9af7d18f-3026-4147-96b0-c3c0f330ed80'),
	(265,1,258,'','2018-07-05 22:10:46','2018-07-05 22:10:46','72618616-d38a-48e4-afde-cb7ff2bc57de'),
	(266,1,259,'','2018-07-05 22:11:12','2018-07-05 22:11:12','edbd1541-1dd6-4c34-90ed-9dd838283f58'),
	(267,1,NULL,'/blog','2018-07-05 22:11:58','2018-07-05 22:11:58','875680a2-7f85-4709-8083-95765dc1ea1d'),
	(268,1,257,'','2018-07-05 22:12:49','2018-07-05 22:12:49','c92c7888-a361-4dbc-980b-301fdfa0d9c8'),
	(269,1,NULL,'/pickups','2018-07-05 22:13:45','2018-07-05 22:13:45','8dce0747-35a4-404e-9b38-7e4a29a01c3a'),
	(270,1,NULL,'/pickups/strat-style','2018-07-05 22:29:47','2018-07-08 15:43:52','bd00733d-809e-4a3e-a247-eefd6f937cc3'),
	(271,1,262,'','2018-07-05 22:30:25','2018-07-05 22:30:25','75306846-7d21-4fc1-b405-d7c187d6a9a9'),
	(272,2,74,'','2018-07-07 14:40:30','2018-07-07 14:40:30','d647ba77-3e32-4aa6-8f97-f506b69b3cb0'),
	(273,2,258,'','2018-07-07 14:40:51','2018-07-07 14:40:51','ba3bf9ef-c785-403c-b9de-ae45ca2357da'),
	(274,2,NULL,'','2018-07-07 14:42:12','2018-07-07 14:42:12','6d809523-e654-42f7-801b-b96026bed36b'),
	(275,2,NULL,'/blog','2018-07-07 14:42:38','2018-07-07 14:42:38','0a4068f1-8498-4eb1-93ef-eff205cd9f8d');

/*!40000 ALTER TABLE `craft_menus_nodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_migrations`;

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'m000000_000000_base','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','2cb0185d-5043-4678-80f5-a5d16d6ba57a'),
	(2,NULL,'m131203_000000_allow_orphan_assets','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','e0bcebab-57e9-4f1f-927f-5fa77acaf89a'),
	(3,NULL,'m131212_000001_add_missing_fk_to_emailmessages','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','058767d3-0dff-4e5f-923c-4deefa027b0c'),
	(4,NULL,'m140123_000000_update_widget_sort_orders','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','b7a63d08-4b6c-4b0c-aa63-a356a6a3b285'),
	(5,NULL,'m140212_000000_clean_up_structures','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','b2bcab6f-c4db-49f1-aceb-ff38289b6cbf'),
	(6,NULL,'m140217_000000_add_missing_indexes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','d277ad8d-7c5e-4172-912a-90cb59ab54a8'),
	(7,NULL,'m140223_000000_add_missing_element_rows','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','f8ec71e4-6191-4dc3-a31f-12d33f550ae4'),
	(8,NULL,'m140325_000000_fix_matrix_settings','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','504a9c44-a795-41f0-a14c-55ccd048efa3'),
	(9,NULL,'m140401_000000_assignUserPermissions_permission','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','641f3038-d685-408d-b085-4bfb86821dfb'),
	(10,NULL,'m140401_000000_delete_the_deleted_files','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','cba8b5a0-69c6-4c49-9aea-e03ddd2d327b'),
	(11,NULL,'m140401_000001_structures','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','a0fd99d2-8a0e-4e6d-a944-20267e721302'),
	(12,NULL,'m140401_000002_elements_i18n_tweaks','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','ab3b0144-fffb-42c6-ba22-1ad76809f2ed'),
	(13,NULL,'m140401_000003_tag_groups','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','e40aac2c-f97f-4036-8469-94c8559b2125'),
	(14,NULL,'m140401_000004_add_unverifiedemail_column_to_users','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','747788ad-5419-40ab-a839-fe5a4ae41a83'),
	(15,NULL,'m140401_000005_translatable_matrix_fields','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','45d64ce1-b379-44c0-9281-0fdc96bc45a3'),
	(16,NULL,'m140401_000006_translatable_relation_fields','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','ad87a456-022f-4411-932f-961d4bd92b05'),
	(17,NULL,'m140401_000007_add_enabledbydefault_column_to_sections_i18n','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','f412ac5d-c1e0-4402-90ab-f7ac6c32f563'),
	(18,NULL,'m140401_000008_fullpath_to_path','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','315e1268-6e69-43c0-accf-a8cbb300d234'),
	(19,NULL,'m140401_000009_asset_field_layouts','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','b787ac57-b3ff-42fd-952b-ec6898f0b371'),
	(20,NULL,'m140401_000010_no_section_default_author','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','f889eab3-ded1-4c80-9429-7689af0cf9dc'),
	(21,NULL,'m140401_000011_categories','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','38bbd7d4-2bef-4001-a3af-56e9d190c9ce'),
	(22,NULL,'m140401_000012_templatecaches','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','6c3342d4-c42a-46ef-b8f4-306ee6093673'),
	(23,NULL,'m140401_000013_allow_temp_source_transforms','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','605943f1-e4ac-4a01-bc35-5bac785f18dc'),
	(24,NULL,'m140401_000014_entry_title_formats','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','4d1e9b79-9185-417d-9855-873db0d0df8c'),
	(25,NULL,'m140401_000015_tasks','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','c5becdf9-a039-41d6-b9f8-ce0a50c551c9'),
	(26,NULL,'m140401_000016_varchar_classes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','a990fc92-ba27-4da6-aac0-b904ef44f56b'),
	(27,NULL,'m140401_000017_add_transform_quality','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','05d987d5-1927-4d31-b4e0-35d63922a4b1'),
	(28,NULL,'m140401_000018_locale_routes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','56c216ba-f1ad-4dd5-af5f-dd3dc4c0a5b8'),
	(29,NULL,'m140401_000019_editions','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','3c7daf5b-1f85-4fa0-8099-37385d053c79'),
	(30,NULL,'m140401_000019_rackspace_auth_api','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','6f119119-2a1f-4d1b-817a-0c1095a8b59b'),
	(31,NULL,'m140401_000020_deprecationerrors_table','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','9d6692c0-985f-4021-82b3-b6d224b4b28a'),
	(32,NULL,'m140401_000021_client_user','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','a65114d4-6d13-46cc-a1ae-5534e1dd6258'),
	(33,NULL,'m140401_100000_resave_elements','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','12d3ada2-23af-47b8-96b9-cd18aaa7190b'),
	(34,NULL,'m140401_100002_delete_compiled_templates','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','0c566bb4-43d0-4d8c-9a65-598978b23825'),
	(35,NULL,'m140403_000000_allow_orphan_assets_again','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','9855ceda-7a6b-4212-8afc-9656e8a74d93'),
	(36,NULL,'m140508_000000_fix_disabled_matrix_blocks','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','3c7024ac-2dd6-4492-8a7d-684d3124e027'),
	(37,NULL,'m140520_000000_add_id_column_to_templatecachecriteria','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','362eafe1-d008-4566-8c2b-fd559d1ed4c6'),
	(38,NULL,'m140603_000000_draft_names','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','0958fea2-23ba-495f-9d29-3459628e0382'),
	(39,NULL,'m140603_000001_draft_notes','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','d3c2cb56-20a0-4f88-bb85-cc5ed3fd89a0'),
	(40,NULL,'m140603_000002_version_nums','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','61c0a466-3cdf-40e0-8fd2-333cc7cc231d'),
	(41,NULL,'m140603_000003_version_toggling','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','90c64b76-6093-455b-b9f2-a9c5955b5b2c'),
	(42,NULL,'m140603_000004_tokens','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','2cc09903-1d63-4061-a791-47355badc5ea'),
	(43,NULL,'m140603_000005_asset_sources','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','41786f40-2d85-4051-ab00-c8323fa79044'),
	(44,NULL,'m140716_000001_allow_temp_source_transforms_again','2014-07-29 18:21:30','2014-07-29 18:21:30','2014-07-29 18:21:30','bbf36cc2-afd7-458b-9a0d-cfe65c9403e2'),
	(45,NULL,'m140731_000001_resave_elements_with_assets_in_temp_sources','2014-09-06 20:05:32','2014-09-06 20:05:32','2014-09-06 20:05:32','7eba17bb-c239-4d5e-86ac-e970162f8b5b'),
	(46,NULL,'m140730_000001_add_filename_and_format_to_transformindex','2014-09-06 20:06:08','2014-09-06 20:06:08','2014-09-06 20:06:08','55a021a4-4baa-43df-897c-42e92493cff2'),
	(47,NULL,'m140815_000001_add_format_to_transforms','2014-09-06 20:06:08','2014-09-06 20:06:08','2014-09-06 20:06:08','4e95b2fc-27b6-4789-b4ae-8aa60692b601'),
	(48,NULL,'m140822_000001_allow_more_than_128_items_per_field','2014-09-06 20:06:08','2014-09-06 20:06:08','2014-09-06 20:06:08','e4a57d85-2dea-47f6-a0e2-2e355110273b'),
	(49,NULL,'m140829_000001_single_title_formats','2014-09-06 20:06:08','2014-09-06 20:06:08','2014-09-06 20:06:08','9ca412af-42a7-494f-aa2c-473e948b083f'),
	(50,NULL,'m140831_000001_extended_cache_keys','2014-09-06 20:06:08','2014-09-06 20:06:08','2014-09-06 20:06:08','f3ada99e-8bb1-45fa-b118-f3e9589f2400'),
	(51,NULL,'m140922_000001_delete_orphaned_matrix_blocks','2015-02-03 03:48:24','2015-02-03 03:48:24','2015-02-03 03:48:24','60b04e3d-f5d7-496a-9ec3-e48d1f5be4ce'),
	(52,NULL,'m141008_000001_elements_index_tune','2015-02-03 03:48:24','2015-02-03 03:48:24','2015-02-03 03:48:24','ea39ccc7-275f-4679-aa24-76020abc75f0'),
	(53,NULL,'m141009_000001_assets_source_handle','2015-02-03 03:48:24','2015-02-03 03:48:24','2015-02-03 03:48:24','dd2fb00e-060d-45a8-b86b-3dba69707ece'),
	(54,NULL,'m141024_000001_field_layout_tabs','2015-02-03 03:48:25','2015-02-03 03:48:25','2015-02-03 03:48:25','438bc7bb-f50a-428a-987c-86dba44e222f'),
	(55,NULL,'m141030_000001_drop_structure_move_permission','2015-02-03 03:48:25','2015-02-03 03:48:25','2015-02-03 03:48:25','206a115e-0c5f-4f3f-bfdc-d7db6c1f9613'),
	(56,NULL,'m141103_000001_tag_titles','2015-02-03 03:48:25','2015-02-03 03:48:25','2015-02-03 03:48:25','cbac3904-f85e-4526-bfe9-b961b5f1939f'),
	(57,NULL,'m141109_000001_user_status_shuffle','2015-02-03 03:48:25','2015-02-03 03:48:25','2015-02-03 03:48:25','dc63b23c-a125-4e13-94b8-43813dc1b290'),
	(58,NULL,'m141126_000001_user_week_start_day','2015-02-03 03:48:25','2015-02-03 03:48:25','2015-02-03 03:48:25','9e12a614-4ffb-467b-8321-4e5d8772566f'),
	(59,NULL,'m150210_000001_adjust_user_photo_size','2015-02-16 20:46:41','2015-02-16 20:46:41','2015-02-16 20:46:41','bf46909a-82d2-48b5-a0de-85012b7314ab'),
	(60,NULL,'m141030_000000_plugin_schema_versions','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','0320e042-f889-4e2e-b28e-73f987f0985a'),
	(61,NULL,'m150724_000001_adjust_quality_settings','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','2f4da78e-0e00-4e81-a30a-8c1da5bde5e4'),
	(62,NULL,'m150827_000000_element_index_settings','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','14739ea9-c18a-49ac-89ab-cc50a52d83f7'),
	(63,NULL,'m150918_000001_add_colspan_to_widgets','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','4f6b59a5-8ffb-4154-80bf-ef44daee8275'),
	(64,NULL,'m151007_000000_clear_asset_caches','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','aca1d5ee-6c86-47c7-b7f0-ebbdc44ae74a'),
	(65,NULL,'m151109_000000_text_url_formats','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','c9f2761c-2f14-4a57-9670-1601218efac9'),
	(66,NULL,'m151110_000000_move_logo','2015-12-01 16:41:26','2015-12-01 16:41:26','2015-12-01 16:41:26','b7865525-7950-4fd6-a57a-1f78f4146b31'),
	(67,NULL,'m151117_000000_adjust_image_widthheight','2015-12-01 16:41:27','2015-12-01 16:41:27','2015-12-01 16:41:27','9c722216-1b1c-447f-9dee-348ef49575bd'),
	(68,NULL,'m151127_000000_clear_license_key_status','2015-12-01 16:41:27','2015-12-01 16:41:27','2015-12-01 16:41:27','d7cb8a8c-7d63-4cd2-a075-91afcf8d5714'),
	(69,NULL,'m151127_000000_plugin_license_keys','2015-12-01 16:41:27','2015-12-01 16:41:27','2015-12-01 16:41:27','1a256308-aeb6-4df2-a305-5ed3cbed91fa'),
	(70,NULL,'m151130_000000_update_pt_widget_feeds','2015-12-01 16:41:27','2015-12-01 16:41:27','2015-12-01 16:41:27','aa5934ae-d693-4f2c-b3a3-9da9ca190e32'),
	(71,NULL,'m160114_000000_asset_sources_public_url_default_true','2016-03-09 20:04:45','2016-03-09 20:04:45','2016-03-09 20:04:45','334a0f2b-7061-41f2-845c-de30e4fa8fe0'),
	(72,NULL,'m160223_000000_sortorder_to_smallint','2016-03-09 20:04:45','2016-03-09 20:04:45','2016-03-09 20:04:45','d5428eef-5e9c-4452-800a-fbae16996e5a'),
	(73,NULL,'m160229_000000_set_default_entry_statuses','2016-03-09 20:04:45','2016-03-09 20:04:45','2016-03-09 20:04:45','6236009c-84ec-49b9-a8f8-7949771573e0'),
	(74,NULL,'m160304_000000_client_permissions','2016-03-09 20:04:45','2016-03-09 20:04:45','2016-03-09 20:04:45','99d21fb6-aeea-4869-b459-4c02f8bd5d37'),
	(75,NULL,'m160322_000000_asset_filesize','2016-06-03 17:34:14','2016-06-03 17:34:14','2016-06-03 17:34:14','787307cf-a786-46fc-8758-d3c1ba708072'),
	(76,NULL,'m160503_000000_orphaned_fieldlayouts','2016-06-03 17:34:14','2016-06-03 17:34:14','2016-06-03 17:34:14','7b5c5ce1-2fdd-40b8-8276-369e8c7f0e5e'),
	(77,NULL,'m160510_000000_tasksettings','2016-06-03 17:34:14','2016-06-03 17:34:14','2016-06-03 17:34:14','8a17688a-dfed-4679-9838-480423e660d7'),
	(78,NULL,'m160829_000000_pending_user_content_cleanup','2017-02-02 19:47:19','2017-02-02 19:47:19','2017-02-02 19:47:19','f719aeb9-b241-4dd8-adb6-62877d1aaa4c'),
	(79,NULL,'m160830_000000_asset_index_uri_increase','2017-02-02 19:47:19','2017-02-02 19:47:19','2017-02-02 19:47:19','e8fd3827-4592-45ec-9811-f3dbca641b94'),
	(80,NULL,'m160919_000000_usergroup_handle_title_unique','2017-02-02 19:47:20','2017-02-02 19:47:20','2017-02-02 19:47:20','81a44b52-35d3-44d5-a421-a4a595bd9a42'),
	(81,NULL,'m161108_000000_new_version_format','2017-02-02 19:47:20','2017-02-02 19:47:20','2017-02-02 19:47:20','422ed1ee-a039-43b5-a3bc-5450439baab0'),
	(82,NULL,'m161109_000000_index_shuffle','2017-02-02 19:47:20','2017-02-02 19:47:20','2017-02-02 19:47:20','06a73092-3fd0-4663-b0b1-fd434e340417'),
	(83,NULL,'m170612_000000_route_index_shuffle','2017-08-02 19:00:03','2017-08-02 19:00:03','2017-08-02 19:00:03','e492595f-e57c-4d00-966d-2372b4532db9'),
	(84,NULL,'m171107_000000_assign_group_permissions','2017-12-10 22:44:53','2017-12-10 22:44:53','2017-12-10 22:44:53','1de484d7-26e6-4222-b9ae-1d0eb50c271c'),
	(85,NULL,'m171117_000001_templatecache_index_tune','2017-12-10 22:44:53','2017-12-10 22:44:53','2017-12-10 22:44:53','6ebb8bc1-dbc0-4c54-a76f-4a7846bb63e9'),
	(86,NULL,'m171204_000001_templatecache_index_tune_deux','2017-12-10 22:44:53','2017-12-10 22:44:53','2017-12-10 22:44:53','0c07e8e1-73c5-49fd-92aa-061c80a17266'),
	(87,NULL,'m180406_000000_pro_upgrade','2018-06-24 18:00:42','2018-06-24 18:00:42','2018-06-24 18:00:42','a761a37c-5911-42bc-a4ef-5415c95ab27b');

/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_plugins`;

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Menus','0.9',NULL,NULL,'unknown',1,'[]','2018-07-05 21:54:01','2018-07-05 21:54:01','2018-07-10 20:19:57','674d3e8d-8597-46ac-a5df-6852619f6bd2');

/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_rackspaceaccess
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_rackspaceaccess`;

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_relations`;

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(760,80,262,NULL,261,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','13b53ba1-dd78-49c0-94a5-c0d03f620309'),
	(808,100,314,NULL,279,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','d9906d12-5b79-4aa1-8dec-d20fc0461f2b'),
	(809,100,315,NULL,280,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','7804ca3e-b33d-40d5-a02e-0eaf645169ef'),
	(810,100,316,NULL,281,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','ce9c3ebb-47ad-47f8-86b1-df07f0312e8b'),
	(811,100,317,NULL,282,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','685cdd2f-b504-456d-8a2b-4d58238681a8'),
	(812,100,318,NULL,283,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','3e9e4747-f1fa-44cb-aa9d-5038ed76d529'),
	(813,103,319,NULL,303,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','bdda8456-b1e1-446a-9c62-ee0d77063cfd'),
	(814,103,320,NULL,306,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','277d18ae-7ba1-44e9-9415-0c6315ef4d31'),
	(815,103,321,NULL,277,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','f02647ee-1229-46e9-a762-bdea62b76539'),
	(816,83,322,NULL,301,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','7dff64f8-c5a6-4f80-8022-fd174e6f789b'),
	(817,86,322,NULL,262,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','66246d29-0f23-4788-a81a-d1967ac8f00f'),
	(818,83,323,NULL,303,1,'2018-07-08 18:53:17','2018-07-08 18:53:17','e60905d1-ad2c-4f76-bc8a-b370162fd573'),
	(819,86,323,NULL,258,1,'2018-07-08 18:53:17','2018-07-08 18:53:17','a6440d9b-5838-4286-b031-d44fa43e6c21'),
	(827,98,324,NULL,276,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','fc630174-778f-4a24-b236-83b62087432e'),
	(828,107,325,NULL,310,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','7704f7dd-a719-4034-9da3-dc705a8d13df'),
	(829,107,326,NULL,307,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','f6e2b084-446c-4b19-980e-cbb1da546f17'),
	(830,107,327,NULL,309,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','5f9a65dd-f1b4-4975-9b01-9cfab9d18695'),
	(831,107,328,NULL,311,1,'2018-07-10 20:35:03','2018-07-10 20:35:03','0783bf10-2e36-4938-ab2e-94dcd1bc128b'),
	(850,83,329,NULL,279,1,'2018-07-10 23:07:07','2018-07-10 23:07:07','ce3c8331-cfd4-4025-8eca-c1f8d8ac0314'),
	(851,83,330,NULL,280,1,'2018-07-10 23:07:07','2018-07-10 23:07:07','ec108ca0-cc30-43ea-9a43-b8cba74ecfc4'),
	(852,83,331,NULL,288,1,'2018-07-10 23:07:07','2018-07-10 23:07:07','6daf0eff-6dee-4f3d-afeb-70caa02908ca'),
	(853,98,332,NULL,288,1,'2018-07-10 23:07:07','2018-07-10 23:07:07','c1f6358d-1f3b-4190-9db5-f7a6aa110ce6'),
	(854,98,333,NULL,283,1,'2018-07-10 23:07:07','2018-07-10 23:07:07','1717fb41-b617-4abf-8183-6e296bea5047');

/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_routes`;

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_routes_locale_idx` (`locale`),
  KEY `craft_routes_urlPattern_idx` (`urlPattern`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_routes` WRITE;
/*!40000 ALTER TABLE `craft_routes` DISABLE KEYS */;

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'[\"about\"]','about','about',1,'2014-09-17 01:15:41','2014-09-17 01:15:41','222c9203-357b-45a9-ab56-ad4df20ad9a0'),
	(2,NULL,'[\"search\\/results\"]','search\\/results','search/_results',2,'2015-01-25 19:35:30','2015-01-25 19:35:30','f2315ceb-90c3-45fe-b6c1-0b847b577a68');

/*!40000 ALTER TABLE `craft_routes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_searchindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_searchindex`;

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`)
VALUES
	(1,'username',0,'en',' admin '),
	(1,'firstname',0,'en',''),
	(1,'lastname',0,'en',''),
	(1,'fullname',0,'en',''),
	(1,'email',0,'en',' info refresh digital com '),
	(1,'slug',0,'en',''),
	(2,'field',1,'en',' welcome to happylager dev '),
	(2,'field',2,'en',' custom pickups recording studio guitar work shop we do it all at apex apex music co is your one stop for all your needs as a musician we offer a wide range of services such as professional instrument repairs music videos live performance videos hand wound electric pickup manufacturing music photography high quality audio recording and rehearsal facility rental discover more about apex '),
	(2,'slug',0,'en',' homepage '),
	(2,'title',0,'en',' homepage '),
	(3,'field',2,'en',' craft is the cms that s powering happylager dev it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
	(3,'field',3,'en',''),
	(3,'slug',0,'en',' we just installed craft '),
	(3,'title',0,'en',' we just installed craft '),
	(4,'field',4,'en',' center our answer is both et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat left whenever something made me uncomfortable i would give it a try so i moved around a bit trying new things out laptop desk right the experience center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat the skills center et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga coffee shop full in the end center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(4,'slug',0,'en',' barrel aged digital natives '),
	(4,'title',0,'en',' barrel aged digital natives '),
	(5,'field',6,'en',''),
	(5,'field',7,'en',' right '),
	(5,'slug',0,'en',''),
	(4,'field',15,'en',' water barley hops '),
	(4,'field',1,'en',' what s more important '),
	(4,'field',14,'en',' experience or raw skill '),
	(9,'field',5,'en',' our answer is both et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat '),
	(9,'slug',0,'en',''),
	(10,'field',6,'en',' whenever something made me uncomfortable i would give it a try so i moved around a bit trying new things out '),
	(10,'field',7,'en',' left '),
	(10,'slug',0,'en',''),
	(11,'field',9,'en',' laptop desk '),
	(11,'field',10,'en',' right '),
	(11,'slug',0,'en',''),
	(12,'field',8,'en',' the experience '),
	(12,'slug',0,'en',''),
	(13,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat '),
	(13,'slug',0,'en',''),
	(14,'field',8,'en',' the skills '),
	(14,'slug',0,'en',''),
	(15,'field',5,'en',' et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(15,'slug',0,'en',''),
	(16,'field',9,'en',' coffee shop '),
	(16,'field',10,'en',' full '),
	(16,'slug',0,'en',''),
	(17,'field',8,'en',' in the end '),
	(17,'slug',0,'en',''),
	(18,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(18,'slug',0,'en',''),
	(3,'field',15,'en',''),
	(3,'field',1,'en',''),
	(3,'field',14,'en',''),
	(3,'field',4,'en',''),
	(19,'filename',0,'en',' water barley hops_1 jpg '),
	(19,'extension',0,'en',' jpg '),
	(19,'kind',0,'en',' image '),
	(19,'slug',0,'en',''),
	(19,'title',0,'en',' water barley hops 1 '),
	(20,'filename',0,'en',' water barley hops_1 jpg '),
	(20,'extension',0,'en',' jpg '),
	(20,'kind',0,'en',' image '),
	(20,'slug',0,'en',''),
	(20,'title',0,'en',' water barley hops 1 '),
	(21,'filename',0,'en',' laptop desk_1 jpg '),
	(21,'extension',0,'en',' jpg '),
	(21,'kind',0,'en',' image '),
	(21,'slug',0,'en',''),
	(21,'title',0,'en',' laptop desk 1 '),
	(22,'filename',0,'en',' laptop desk_1 jpg '),
	(22,'extension',0,'en',' jpg '),
	(22,'kind',0,'en',' image '),
	(22,'slug',0,'en',''),
	(22,'title',0,'en',' laptop desk 1 '),
	(24,'field',15,'en',' augmented reality '),
	(24,'field',1,'en',' your iphone is no longer a way to hide '),
	(24,'field',14,'en',' but is now a way to connect with the world '),
	(24,'field',4,'en',' center et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est left using sophisticated global positioning technology happy lager extracted health data straight from the air we breathe video right a people to people business awesome cities left center nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus charlie roths developers google center augmented reality has long sounded like a wild futuristic concept but the technology has actually been around for years what is happy lager doing about it center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga augmented reality icons full this is only the beginning center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(24,'slug',0,'en',' the future of augmented reality '),
	(24,'title',0,'en',' the future of augmented reality '),
	(25,'field',5,'en',' et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est '),
	(25,'slug',0,'en',''),
	(26,'filename',0,'en',' augmented reality_1 jpg '),
	(26,'extension',0,'en',' jpg '),
	(26,'kind',0,'en',' image '),
	(26,'slug',0,'en',''),
	(26,'title',0,'en',' augmented reality 1 '),
	(27,'filename',0,'en',' augmented reality_1 jpg '),
	(27,'extension',0,'en',' jpg '),
	(27,'kind',0,'en',' image '),
	(27,'slug',0,'en',''),
	(27,'title',0,'en',' augmented reality 1 '),
	(30,'field',6,'en',' using sophisticated global positioning technology happy lager extracted health data straight from the air we breathe '),
	(30,'field',7,'en',' left '),
	(30,'slug',0,'en',''),
	(31,'field',9,'en',' video '),
	(31,'field',10,'en',' right '),
	(31,'slug',0,'en',''),
	(32,'field',8,'en',' a people to people business '),
	(32,'slug',0,'en',''),
	(33,'field',5,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(33,'slug',0,'en',''),
	(34,'field',11,'en',' augmented reality has long sounded like a wild futuristic concept but the technology has actually been around for years '),
	(34,'field',12,'en',' charlie roths developers google '),
	(34,'field',13,'en',' center '),
	(34,'slug',0,'en',''),
	(35,'field',8,'en',' what is happy lager doing about it '),
	(35,'slug',0,'en',''),
	(36,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(36,'slug',0,'en',''),
	(37,'field',9,'en',' augmented reality icons '),
	(37,'field',10,'en',' full '),
	(37,'slug',0,'en',''),
	(38,'field',8,'en',' this is only the beginning '),
	(38,'slug',0,'en',''),
	(39,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(39,'slug',0,'en',''),
	(41,'field',9,'en',' awesome cities '),
	(41,'field',10,'en',' left '),
	(41,'slug',0,'en',''),
	(45,'field',15,'en',' fist '),
	(45,'field',1,'en',' at the crossroads of good and great '),
	(45,'field',14,'en',' is a question of priority '),
	(45,'field',4,'en',' center et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est bike glasses skateboard people love games center nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum pong full in the beginning there was pong center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga center people learn and adapt 36% faster in the environment of play results of our play center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(45,'slug',0,'en',' bringing out play '),
	(45,'title',0,'en',' bringing out play '),
	(46,'field',5,'en',' et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est '),
	(46,'slug',0,'en',''),
	(48,'field',8,'en',' people love games '),
	(48,'slug',0,'en',''),
	(49,'field',5,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat deserunt mollitia animi id est laborum '),
	(49,'slug',0,'en',''),
	(50,'field',9,'en',' pong '),
	(50,'field',10,'en',' full '),
	(50,'slug',0,'en',''),
	(51,'field',8,'en',' in the beginning there was pong '),
	(51,'slug',0,'en',''),
	(52,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(52,'slug',0,'en',''),
	(53,'field',6,'en',' people learn and adapt 36% faster in the environment of play '),
	(53,'field',7,'en',' center '),
	(53,'slug',0,'en',''),
	(54,'field',8,'en',' results of our play '),
	(54,'slug',0,'en',''),
	(55,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus '),
	(55,'slug',0,'en',''),
	(9,'field',70,'en',' center '),
	(13,'field',70,'en',' center '),
	(15,'field',70,'en',' center '),
	(18,'field',70,'en',' center '),
	(46,'field',70,'en',' center '),
	(49,'field',70,'en',' center '),
	(52,'field',70,'en',' center '),
	(55,'field',70,'en',' center '),
	(319,'slug',0,'en',''),
	(319,'field',105,'en',''),
	(319,'field',104,'en',' shop our range of hand crafted pickups your tone quest starts here '),
	(319,'field',103,'en',' pickups bg '),
	(319,'field',102,'en',' apex pickups '),
	(252,'field',69,'en',' bike glasses skateboard '),
	(252,'slug',0,'en',''),
	(230,'field',70,'en',' center '),
	(39,'field',70,'en',' center '),
	(61,'field',15,'en',' news entry 1 image '),
	(61,'field',1,'en',' make complex layouts '),
	(61,'field',14,'en',' using images and pull quotes all in the flow of the text '),
	(61,'field',4,'en',' center iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut macbook right center nam libero tempore cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus empobus autem quibusdam et aut officiis debis aut tamlibero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in cpa qui officia deserunt mollitia animi id est laborum et dolorum fuga nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat gallery full outstanding content flow center et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos left sooner or later you re going to realize just as i did that there s a difference between knowing the path and walking the path center facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae bar center say what you want where you want to say it center et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(61,'slug',0,'en',' how deep the rabbit hole goes '),
	(61,'title',0,'en',' how deep the rabbit hole goes '),
	(62,'field',5,'en',' iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et as molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut '),
	(62,'slug',0,'en',''),
	(63,'field',5,'en',' nam libero tempore cum soluta nobis est eligdi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus empobus autem quibusdam et aut officiis debis aut tamlibero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debis aut rerum ssitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in cpa qui officia deserunt mollitia animi id est laborum et dolorum fuga nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat '),
	(63,'slug',0,'en',''),
	(64,'field',9,'en',' gallery '),
	(64,'field',10,'en',' full '),
	(64,'slug',0,'en',''),
	(65,'field',8,'en',' outstanding content flow '),
	(65,'slug',0,'en',''),
	(66,'field',5,'en',' et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos '),
	(66,'slug',0,'en',''),
	(67,'field',6,'en',' sooner or later you re going to realize just as i did that there s a difference between knowing the path and walking the path '),
	(67,'field',7,'en',' left '),
	(67,'slug',0,'en',''),
	(68,'field',5,'en',' facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non cusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat at vero eos et accusamus et iusto odio dignissimos ducimus qui landitiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occae cupiditate harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae '),
	(68,'slug',0,'en',''),
	(69,'field',9,'en',' bar '),
	(69,'field',10,'en',' center '),
	(69,'slug',0,'en',''),
	(70,'field',8,'en',' say what you want where you want to say it '),
	(70,'slug',0,'en',''),
	(71,'field',5,'en',' et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat ero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga '),
	(71,'slug',0,'en',''),
	(74,'extension',0,'en',' png '),
	(74,'kind',0,'en',' image '),
	(74,'slug',0,'en',' about '),
	(74,'title',0,'en',' about '),
	(73,'field',9,'en',' macbook '),
	(73,'field',10,'en',' right '),
	(73,'slug',0,'en',''),
	(74,'filename',0,'en',' gallery_1 png '),
	(74,'field',16,'en',''),
	(74,'field',17,'en',''),
	(74,'field',4,'en',' how we think the philosophy of happy lager is one third working hard and two thirds happy accidents left serendipity is a core part of how we work et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis right deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in our story it all begins in a living room with a six pack and a clamshell ibook macbook table left right small beginnings is the starting point of every hero s story at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis our people robin richards christopher robinson jonathan abbot '),
	(235,'field',8,'en',' the philosophy of happy lager is one third working hard and two thirds happy accidents '),
	(235,'slug',0,'en',''),
	(244,'slug',0,'en',''),
	(74,'field',18,'en',''),
	(74,'field',19,'en',''),
	(239,'slug',0,'en',''),
	(240,'field',9,'en',' macbook table '),
	(74,'field',24,'en',''),
	(237,'field',68,'en',' left '),
	(243,'field',5,'en',' deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in '),
	(237,'slug',0,'en',''),
	(238,'field',67,'en',' our story '),
	(238,'slug',0,'en',''),
	(239,'field',8,'en',' it all begins in a living room with a six pack and a clamshell ibook '),
	(74,'field',25,'en',''),
	(74,'field',20,'en',''),
	(74,'field',21,'en',''),
	(74,'field',26,'en',''),
	(236,'field',67,'en',' how we think '),
	(236,'slug',0,'en',''),
	(237,'field',5,'en',' serendipity is a core part of how we work et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis '),
	(74,'field',22,'en',''),
	(74,'field',23,'en',''),
	(2,'field',101,'en',' pickups bg shop our range of hand crafted pickups your tone quest starts here apex pickups studio bg sindustry standard recording rehearsal facilities coupled with professional photography and videography apex studio apex studio apex home bg 1 top quality instrument repairs and modification from neck repairs to full rebuilds and refinishes instrument repairs instrument repairs '),
	(315,'field',100,'en',' apex studio 2 '),
	(315,'slug',0,'en',''),
	(316,'field',100,'en',' apex studio 3 '),
	(237,'field',70,'en',' left '),
	(243,'field',70,'en',' right '),
	(241,'field',70,'en',' right '),
	(74,'field',27,'en',''),
	(74,'field',30,'en',''),
	(74,'field',33,'en',''),
	(74,'field',28,'en',''),
	(74,'field',31,'en',''),
	(74,'field',34,'en',''),
	(74,'field',29,'en',''),
	(74,'field',32,'en',''),
	(74,'field',35,'en',''),
	(74,'field',36,'en',' chicago office '),
	(74,'field',37,'en',' 2701 west thomas st chicago il 60622 '),
	(74,'field',38,'en',' main office 312 900 2356 '),
	(74,'field',39,'en',' creative lab 312 985 4500 '),
	(74,'field',40,'en',' happy lager pub 312 229 1122 '),
	(74,'field',41,'en',' info company com '),
	(74,'field',42,'en',' google com '),
	(74,'field',43,'en',' contact building '),
	(80,'slug',0,'en',' app development '),
	(80,'title',0,'en',' app development '),
	(328,'slug',0,'en',''),
	(258,'field',2,'en',' apex studio fully loaded recording studio rehersal facilities with video and photogrpahy packages available '),
	(258,'field',82,'en',' apex studio 1 space the final frontier apex studio 2 apex studio 9 '),
	(329,'field',83,'en',' apex studio 1 '),
	(329,'field',84,'en',' space the final frontier '),
	(329,'field',85,'en',''),
	(329,'field',86,'en',''),
	(329,'field',87,'en',''),
	(329,'slug',0,'en',''),
	(330,'field',83,'en',' apex studio 2 '),
	(258,'field',96,'en',' apex studio 9 1 recording studio 10 hour session from 220 per session engineer included hourly rate outside of session bookings 25 if you wish to work with us to produce an e p or album we are more than happy to work on a discounted price if you are a young new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey opening hours and time slots are subject to availability free parking available at all times of the day apex studio 5 0 rehersal facilities 10 per hour if you book 3 hours you will get a discounted price depending on exact hours the booking entails i e 25 for 3 hours opening hours and time slots are subject to availability a member of staff will be there on the day of booking to help set things up free parking available at all times of the day '),
	(330,'field',84,'en',''),
	(330,'field',85,'en',''),
	(330,'field',86,'en',''),
	(330,'field',87,'en',''),
	(330,'slug',0,'en',''),
	(331,'field',83,'en',' apex studio 9 '),
	(331,'field',84,'en',''),
	(331,'field',85,'en',''),
	(331,'field',86,'en',''),
	(331,'field',87,'en',''),
	(331,'slug',0,'en',''),
	(332,'field',97,'en',' recording studio 10 hour session from 220 per session engineer included hourly rate outside of session bookings 25 if you wish to work with us to produce an e p or album we are more than happy to work on a discounted price if you are a young new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey opening hours and time slots are subject to availability free parking available at all times of the day '),
	(332,'field',98,'en',' apex studio 9 '),
	(332,'field',110,'en',' 1 '),
	(332,'slug',0,'en',''),
	(333,'field',97,'en',' rehersal facilities 10 per hour if you book 3 hours you will get a discounted price depending on exact hours the booking entails i e 25 for 3 hours opening hours and time slots are subject to availability a member of staff will be there on the day of booking to help set things up free parking available at all times of the day '),
	(333,'field',98,'en',' apex studio 5 '),
	(333,'field',110,'en',' 0 '),
	(333,'slug',0,'en',''),
	(87,'field',8,'en',' keep your favs close by '),
	(87,'slug',0,'en',''),
	(88,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum '),
	(88,'slug',0,'en',''),
	(91,'field',6,'en',' what the iphone has done for personal computing diva has done for celebrity stalking '),
	(91,'field',7,'en',' center '),
	(91,'slug',0,'en',''),
	(92,'field',5,'en',' josh rubin cool hunting '),
	(92,'slug',0,'en',''),
	(328,'field',109,'en',' workshop apprentice '),
	(328,'field',108,'en',' william martin '),
	(328,'field',107,'en',' team willy '),
	(327,'slug',0,'en',''),
	(99,'field',47,'en',' the path to what i m doing started with not knowing what i wanted to do i had to make a decision about what i wanted to do as i was graduating college and i could not figure it out i majored in english because i couldn t figure out how to express my love of '),
	(99,'field',15,'en',' news link 1 image '),
	(99,'field',46,'en',' http buildwithcraft com '),
	(99,'slug',0,'en',' fast company q a with robin richards '),
	(99,'title',0,'en',' fast company q a with robin richards '),
	(327,'field',109,'en',' social media marketing management '),
	(327,'field',108,'en',' graham mckinstry '),
	(327,'field',107,'en',' team graham '),
	(101,'field',47,'en',' what a well developed site i really enjoy the design and the attention to details and performance great use of video and animations with css3 and js categories section with so many images and video had a very good scroll frame rate '),
	(101,'field',15,'en',' news link 2 image '),
	(101,'field',46,'en',' http buildwithcraft com '),
	(101,'slug',0,'en',' photography folio featured on awwwards com '),
	(101,'title',0,'en',' photography folio featured on awwwards com '),
	(61,'field',47,'en',' et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut '),
	(73,'field',44,'en',''),
	(64,'field',44,'en',''),
	(69,'field',44,'en',''),
	(326,'slug',0,'en',''),
	(326,'field',109,'en',' video photography '),
	(326,'field',108,'en',' dani rooney '),
	(325,'slug',0,'en',''),
	(326,'field',107,'en',' team dani '),
	(260,'field',76,'en',' 0759 1132 008 '),
	(325,'field',109,'en',' owner creator '),
	(325,'field',108,'en',' oran mcguckin '),
	(105,'field',15,'en',' diva cover '),
	(105,'field',47,'en',' at the 2014 webby awards patton oswald said that diva has done for women in the music industry what the 19th amendment did for women 100 years ago signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non '),
	(105,'field',1,'en',' vero eos et accusamus et iusto '),
	(105,'field',14,'en',' minus id quod maxime '),
	(105,'field',4,'en',' center vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et harum quidem rerm facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et harum quidem rerm facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et harum quidem rerm facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime '),
	(105,'slug',0,'en',' diva becomes famous '),
	(105,'title',0,'en',' diva becomes famous '),
	(45,'field',47,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis '),
	(106,'slug',0,'en',' how its made '),
	(106,'title',0,'en',' how it s made '),
	(107,'slug',0,'en',''),
	(107,'title',0,'en',' how it s made '),
	(108,'slug',0,'en',' services '),
	(108,'title',0,'en',' how it s made '),
	(80,'field',15,'en',''),
	(80,'field',47,'en',''),
	(50,'field',44,'en',''),
	(4,'field',47,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis '),
	(11,'field',44,'en',''),
	(16,'field',44,'en',''),
	(24,'field',47,'en',' nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis '),
	(109,'slug',0,'en',' how its made '),
	(109,'title',0,'en',' how it s made '),
	(110,'slug',0,'en',''),
	(110,'title',0,'en',' how it s made '),
	(111,'slug',0,'en',' services '),
	(111,'title',0,'en',' how it s made '),
	(112,'slug',0,'en',' services '),
	(112,'title',0,'en',' how it s made '),
	(31,'field',44,'en',''),
	(41,'field',44,'en',''),
	(37,'field',44,'en',''),
	(113,'field',48,'en',''),
	(113,'slug',0,'en',' how its made '),
	(113,'title',0,'en',' how it s made '),
	(325,'field',107,'en',' team oran '),
	(116,'field',15,'en',' email marketing '),
	(116,'field',47,'en',' stay connected in an ever changing world '),
	(116,'slug',0,'en',' email marketing '),
	(116,'title',0,'en',' email marketing '),
	(117,'field',15,'en',' email marketing '),
	(117,'field',47,'en',' stay connected in an ever changing world '),
	(117,'slug',0,'en',' email marketing '),
	(117,'title',0,'en',' email marketing '),
	(118,'field',15,'en',' email marketing '),
	(118,'field',47,'en',' stay connected in an ever changing world '),
	(118,'slug',0,'en',' email marketing '),
	(118,'title',0,'en',' email marketing '),
	(119,'field',15,'en',' email marketing '),
	(119,'field',47,'en',' stay connected in an ever changing world '),
	(119,'slug',0,'en',' email marketing '),
	(119,'title',0,'en',' email marketing '),
	(74,'field',106,'en',' oran mcguckin team oran owner creator dani rooney team dani video photography graham mckinstry team graham social media marketing management william martin team willy workshop apprentice '),
	(311,'filename',0,'en',' team willy jpg '),
	(309,'slug',0,'en',' team graham '),
	(309,'kind',0,'en',' image '),
	(305,'title',0,'en',' slider holder '),
	(305,'slug',0,'en',' slider holder '),
	(304,'filename',0,'en',' single coil cream jpg '),
	(303,'title',0,'en',' pickups bg '),
	(304,'field',47,'en',''),
	(288,'slug',0,'en',' apex studio 9 '),
	(257,'slug',0,'en',' contact '),
	(257,'title',0,'en',' contact '),
	(258,'slug',0,'en',' apex studio '),
	(258,'title',0,'en',' apex studio '),
	(259,'slug',0,'en',' instrument repairs '),
	(259,'title',0,'en',' instrument repairs '),
	(260,'field',37,'en',' unit 3 derrycrin road bt80 0hj cookstown '),
	(260,'field',77,'en',' https www facebook com apexmusicco '),
	(260,'field',78,'en',' apex music '),
	(260,'field',79,'en',' apex music '),
	(261,'field',1,'en',''),
	(261,'field',2,'en',''),
	(261,'slug',0,'en',' strat style '),
	(261,'title',0,'en',' strat style '),
	(262,'slug',0,'en',' apex 50s '),
	(262,'title',0,'en',' apex 50s '),
	(262,'field',80,'en',' strat style '),
	(262,'field',4,'en',' left '),
	(263,'field',5,'en',''),
	(263,'field',70,'en',' left '),
	(263,'slug',0,'en',''),
	(264,'slug',0,'en',' about '),
	(264,'title',0,'en',' about '),
	(265,'slug',0,'en',' apex studio '),
	(265,'title',0,'en',' apex studio '),
	(266,'slug',0,'en',' instrument repairs '),
	(266,'title',0,'en',' instrument repairs '),
	(267,'slug',0,'en',' blog '),
	(267,'title',0,'en',' blog '),
	(268,'slug',0,'en',' contact '),
	(268,'title',0,'en',' contact '),
	(269,'slug',0,'en',' pickups '),
	(269,'title',0,'en',' pickups '),
	(270,'slug',0,'en',' strat style '),
	(270,'title',0,'en',' strat style '),
	(271,'slug',0,'en',' apex 50s '),
	(271,'title',0,'en',' apex 50s '),
	(260,'field',81,'en',' 14 sullenboy park bt80 8hp cookstown '),
	(272,'slug',0,'en',' about '),
	(272,'title',0,'en',' about '),
	(273,'slug',0,'en',' apex studio '),
	(273,'title',0,'en',' apex studio '),
	(274,'slug',0,'en',' work shop '),
	(274,'title',0,'en',' work shop '),
	(275,'slug',0,'en',' blog '),
	(275,'title',0,'en',' blog '),
	(283,'extension',0,'en',' jpg '),
	(283,'kind',0,'en',' image '),
	(283,'slug',0,'en',' apex studio 5 '),
	(283,'title',0,'en',' apex studio 5 '),
	(284,'field',47,'en',''),
	(284,'filename',0,'en',' apex studio 6 jpg '),
	(284,'extension',0,'en',' jpg '),
	(284,'kind',0,'en',' image '),
	(284,'slug',0,'en',' apex studio 6 '),
	(284,'title',0,'en',' apex studio 6 '),
	(285,'field',47,'en',''),
	(285,'filename',0,'en',' apex studio 6 png '),
	(285,'extension',0,'en',' png '),
	(285,'kind',0,'en',' image '),
	(285,'slug',0,'en',' apex studio 6 '),
	(285,'title',0,'en',' apex studio 6 '),
	(286,'field',47,'en',''),
	(286,'filename',0,'en',' apex studio 7 jpg '),
	(286,'extension',0,'en',' jpg '),
	(286,'kind',0,'en',' image '),
	(286,'slug',0,'en',' apex studio 7 '),
	(286,'title',0,'en',' apex studio 7 '),
	(287,'field',47,'en',''),
	(287,'filename',0,'en',' apex studio 8 jpg '),
	(287,'extension',0,'en',' jpg '),
	(287,'kind',0,'en',' image '),
	(287,'slug',0,'en',' apex studio 8 '),
	(287,'title',0,'en',' apex studio 8 '),
	(288,'field',47,'en',''),
	(288,'filename',0,'en',' apex studio 9 jpg '),
	(288,'extension',0,'en',' jpg '),
	(288,'kind',0,'en',' image '),
	(2,'field',50,'en',' hero image '),
	(324,'slug',0,'en',''),
	(2,'field',51,'en',' larry page larry page happy lager delivered the most comprehensive strategy from a boutique company that i ve ever seen ryan reynolds ryan reynolds i don t know where to begin i can t recommend happy lager highly enough bob guff bob guff happy lager sells the good stuff '),
	(260,'field',41,'en',' hello apexmusic co '),
	(282,'title',0,'en',' apex studio 4 '),
	(283,'field',47,'en',''),
	(283,'filename',0,'en',' apex studio 5 jpg '),
	(282,'slug',0,'en',' apex studio 4 '),
	(282,'kind',0,'en',' image '),
	(324,'field',97,'en',' about apex lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(324,'field',98,'en',' about images 1 '),
	(74,'field',96,'en',' about images 1 about apex lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(323,'slug',0,'en',''),
	(323,'field',87,'en',' view '),
	(282,'extension',0,'en',' jpg '),
	(282,'filename',0,'en',' apex studio 4 jpg '),
	(282,'field',47,'en',''),
	(281,'title',0,'en',' apex studio 3 '),
	(260,'slug',0,'en',''),
	(281,'slug',0,'en',' apex studio 3 '),
	(281,'kind',0,'en',' image '),
	(323,'field',86,'en',' apex studio '),
	(323,'field',85,'en',' test subtitle '),
	(278,'filename',0,'en',' apex mountain svg '),
	(278,'field',47,'en',''),
	(277,'slug',0,'en',' apex home bg 1 '),
	(277,'title',0,'en',' apex home bg 1 '),
	(277,'kind',0,'en',' image '),
	(277,'extension',0,'en',' jpg '),
	(277,'filename',0,'en',' apex home bg 1 jpg '),
	(277,'field',47,'en',''),
	(276,'title',0,'en',' about images 1 '),
	(276,'slug',0,'en',' about images 1 '),
	(276,'kind',0,'en',' image '),
	(276,'extension',0,'en',' jpg '),
	(276,'filename',0,'en',' about images 1 jpg '),
	(276,'field',47,'en',''),
	(2,'field',55,'en',' logo coke logo google logo jetblue logo mtv logo newbelgium '),
	(323,'field',84,'en',' test title '),
	(323,'field',83,'en',' pickups bg '),
	(322,'slug',0,'en',''),
	(322,'field',87,'en',' view pickups '),
	(322,'field',86,'en',' apex 50s '),
	(322,'field',85,'en',' pickups apex 50 s '),
	(322,'field',84,'en',' pat mcmanus '),
	(322,'field',83,'en',' pat '),
	(149,'field',5,'en',' with a community that s always in motion we took their e commerce experience to a new level doubling sales in the first quarter sports r us is ready to take on their next challenge '),
	(149,'slug',0,'en',''),
	(151,'filename',0,'en',' strategy_1 svg '),
	(151,'extension',0,'en',' svg '),
	(151,'kind',0,'en',' image '),
	(151,'slug',0,'en',''),
	(151,'title',0,'en',' strategy 1 '),
	(281,'extension',0,'en',' jpg '),
	(281,'filename',0,'en',' apex studio 3 jpg '),
	(281,'field',47,'en',''),
	(280,'title',0,'en',' apex studio 2 '),
	(280,'slug',0,'en',' apex studio 2 '),
	(280,'kind',0,'en',' image '),
	(280,'extension',0,'en',' jpg '),
	(280,'filename',0,'en',' apex studio 2 jpg '),
	(280,'field',47,'en',''),
	(279,'title',0,'en',' apex studio 1 '),
	(279,'slug',0,'en',' apex studio 1 '),
	(279,'kind',0,'en',' image '),
	(279,'extension',0,'en',' jpg '),
	(279,'filename',0,'en',' apex studio 1 jpg '),
	(279,'field',47,'en',''),
	(278,'title',0,'en',' apex mountain '),
	(278,'slug',0,'en',' apex mountain '),
	(278,'kind',0,'en',' image '),
	(278,'extension',0,'en',' svg '),
	(309,'extension',0,'en',' jpg '),
	(301,'extension',0,'en',' png '),
	(301,'kind',0,'en',' image '),
	(301,'slug',0,'en',' pat '),
	(301,'title',0,'en',' pat '),
	(302,'field',47,'en',''),
	(302,'filename',0,'en',' pickup index bg png '),
	(302,'extension',0,'en',' png '),
	(302,'kind',0,'en',' image '),
	(302,'slug',0,'en',' pickup index bg '),
	(302,'title',0,'en',' pickup index bg '),
	(303,'field',47,'en',''),
	(303,'filename',0,'en',' pickups bg png '),
	(303,'extension',0,'en',' png '),
	(303,'kind',0,'en',' image '),
	(303,'slug',0,'en',' pickups bg '),
	(161,'field',8,'en',' we pride ourselves in our toned apps '),
	(161,'slug',0,'en',''),
	(162,'field',5,'en',' we ve been developing them libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facer possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum quod maxime placeat facernecessitatibus '),
	(162,'slug',0,'en',''),
	(2,'field',82,'en',' pat apex 50s view pickups pickups apex 50 s pat mcmanus pickups bg apex studio view test subtitle test title '),
	(321,'slug',0,'en',''),
	(321,'field',105,'en',' instrument repairs '),
	(164,'field',9,'en',' discover '),
	(164,'field',44,'en',''),
	(164,'field',10,'en',' right '),
	(164,'slug',0,'en',''),
	(165,'field',8,'en',' discover your audience '),
	(165,'slug',0,'en',''),
	(166,'field',5,'en',' your audience is human but their device is not we like to cross that gap by engaging your audience in casual conversation as one would at their local pub '),
	(166,'slug',0,'en',''),
	(321,'field',104,'en',' top quality instrument repairs and modification from neck repairs to full rebuilds and refinishes '),
	(321,'field',103,'en',' apex home bg 1 '),
	(321,'field',102,'en',' instrument repairs '),
	(320,'slug',0,'en',''),
	(320,'field',105,'en',' apex studio '),
	(169,'field',9,'en',' explore '),
	(169,'field',44,'en',''),
	(169,'field',10,'en',' right '),
	(169,'slug',0,'en',''),
	(170,'field',8,'en',' explore all possibilities '),
	(170,'slug',0,'en',''),
	(171,'field',5,'en',' your product is a journey a story at happy lager we follow that story to create holistic experience giving you the best possible product '),
	(171,'slug',0,'en',''),
	(172,'field',9,'en',' create genius '),
	(172,'field',44,'en',''),
	(172,'field',10,'en',' right '),
	(172,'slug',0,'en',''),
	(173,'field',8,'en',' create genius '),
	(173,'slug',0,'en',''),
	(174,'field',5,'en',' you are the inspiration and we are the perspiration together we can create genius and throw back a few in the process '),
	(174,'slug',0,'en',''),
	(176,'field',9,'en',' discover '),
	(175,'field',8,'en',' we pride ourselves in our toned apps '),
	(175,'slug',0,'en',''),
	(176,'field',44,'en',''),
	(176,'field',10,'en',' drop right '),
	(176,'slug',0,'en',''),
	(177,'field',5,'en',' we ve been developing them libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facer possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum quod maxime placeat facernecessitatibus '),
	(177,'slug',0,'en',''),
	(195,'field',11,'en',' seo from happy lager is the best '),
	(195,'field',12,'en',' one lucky customer '),
	(195,'field',13,'en',' center '),
	(195,'slug',0,'en',''),
	(311,'extension',0,'en',' jpg '),
	(311,'kind',0,'en',' image '),
	(311,'slug',0,'en',' team willy '),
	(311,'title',0,'en',' team willy '),
	(312,'field',47,'en',''),
	(312,'filename',0,'en',' team willy png '),
	(312,'extension',0,'en',' png '),
	(312,'kind',0,'en',' image '),
	(312,'slug',0,'en',' team willy '),
	(312,'title',0,'en',' team willy '),
	(313,'field',47,'en',''),
	(313,'filename',0,'en',' workshop bg png '),
	(313,'extension',0,'en',' png '),
	(313,'kind',0,'en',' image '),
	(313,'slug',0,'en',' workshop bg '),
	(313,'title',0,'en',' workshop bg '),
	(309,'title',0,'en',' team graham '),
	(310,'field',47,'en',''),
	(310,'filename',0,'en',' team oran jpg '),
	(310,'extension',0,'en',' jpg '),
	(310,'kind',0,'en',' image '),
	(310,'slug',0,'en',' team oran '),
	(310,'title',0,'en',' team oran '),
	(311,'field',47,'en',''),
	(306,'field',47,'en',''),
	(306,'filename',0,'en',' studio bg png '),
	(306,'extension',0,'en',' png '),
	(306,'kind',0,'en',' image '),
	(306,'slug',0,'en',' studio bg '),
	(306,'title',0,'en',' studio bg '),
	(307,'field',47,'en',''),
	(307,'filename',0,'en',' team dani jpg '),
	(307,'extension',0,'en',' jpg '),
	(307,'kind',0,'en',' image '),
	(307,'slug',0,'en',' team dani '),
	(307,'title',0,'en',' team dani '),
	(308,'field',47,'en',''),
	(308,'filename',0,'en',' team dani png '),
	(308,'extension',0,'en',' png '),
	(308,'kind',0,'en',' image '),
	(308,'slug',0,'en',' team dani '),
	(308,'title',0,'en',' team dani '),
	(309,'field',47,'en',''),
	(309,'filename',0,'en',' team graham jpg '),
	(304,'extension',0,'en',' jpg '),
	(304,'kind',0,'en',' image '),
	(304,'slug',0,'en',' single coil cream '),
	(304,'title',0,'en',' single coil cream '),
	(305,'field',47,'en',''),
	(305,'filename',0,'en',' slider holder png '),
	(305,'extension',0,'en',' png '),
	(305,'kind',0,'en',' image '),
	(288,'title',0,'en',' apex studio 9 '),
	(289,'field',47,'en',''),
	(289,'filename',0,'en',' bg texture a jpg '),
	(289,'extension',0,'en',' jpg '),
	(289,'kind',0,'en',' image '),
	(289,'slug',0,'en',' bg texture a '),
	(289,'title',0,'en',' bg texture a '),
	(290,'field',47,'en',''),
	(290,'filename',0,'en',' bg texture b jpg '),
	(290,'extension',0,'en',' jpg '),
	(290,'kind',0,'en',' image '),
	(290,'slug',0,'en',' bg texture b '),
	(290,'title',0,'en',' bg texture b '),
	(291,'field',47,'en',''),
	(291,'filename',0,'en',' bg texture c jpg '),
	(291,'extension',0,'en',' jpg '),
	(291,'kind',0,'en',' image '),
	(291,'slug',0,'en',' bg texture c '),
	(291,'title',0,'en',' bg texture c '),
	(292,'field',47,'en',''),
	(292,'filename',0,'en',' blog post 1 jpg '),
	(292,'extension',0,'en',' jpg '),
	(292,'kind',0,'en',' image '),
	(292,'slug',0,'en',' blog post 1 '),
	(292,'title',0,'en',' blog post 1 '),
	(293,'field',47,'en',''),
	(293,'filename',0,'en',' concrete texture png '),
	(293,'extension',0,'en',' png '),
	(293,'kind',0,'en',' image '),
	(293,'slug',0,'en',' concrete texture '),
	(293,'title',0,'en',' concrete texture '),
	(294,'field',47,'en',''),
	(294,'filename',0,'en',' hero logo png '),
	(294,'extension',0,'en',' png '),
	(294,'kind',0,'en',' image '),
	(294,'slug',0,'en',' hero logo '),
	(294,'title',0,'en',' hero logo '),
	(295,'field',47,'en',''),
	(295,'filename',0,'en',' hero logo svg '),
	(295,'extension',0,'en',' svg '),
	(295,'kind',0,'en',' image '),
	(295,'slug',0,'en',' hero logo '),
	(295,'title',0,'en',' hero logo '),
	(296,'field',47,'en',''),
	(296,'filename',0,'en',' menu logo png '),
	(296,'extension',0,'en',' png '),
	(296,'kind',0,'en',' image '),
	(296,'slug',0,'en',' menu logo '),
	(296,'title',0,'en',' menu logo '),
	(297,'field',47,'en',''),
	(297,'filename',0,'en',' menu logo svg '),
	(297,'extension',0,'en',' svg '),
	(297,'kind',0,'en',' image '),
	(297,'slug',0,'en',' menu logo '),
	(297,'title',0,'en',' menu logo '),
	(298,'field',47,'en',''),
	(298,'filename',0,'en',' mountain bg svg '),
	(298,'extension',0,'en',' svg '),
	(298,'kind',0,'en',' image '),
	(298,'slug',0,'en',' mountain bg '),
	(298,'title',0,'en',' mountain bg '),
	(299,'field',47,'en',''),
	(299,'filename',0,'en',' mountian light png '),
	(299,'extension',0,'en',' png '),
	(299,'kind',0,'en',' image '),
	(299,'slug',0,'en',' mountian light '),
	(299,'title',0,'en',' mountian light '),
	(300,'field',47,'en',''),
	(300,'filename',0,'en',' mountian light svg '),
	(300,'extension',0,'en',' svg '),
	(300,'kind',0,'en',' image '),
	(300,'slug',0,'en',' mountian light '),
	(300,'title',0,'en',' mountian light '),
	(301,'field',47,'en',''),
	(301,'filename',0,'en',' pat png '),
	(214,'field',8,'en',' simpler faster better '),
	(214,'slug',0,'en',''),
	(320,'field',104,'en',' sindustry standard recording rehearsal facilities coupled with professional photography and videography '),
	(320,'field',103,'en',' studio bg '),
	(320,'field',102,'en',' apex studio '),
	(318,'slug',0,'en',''),
	(318,'field',100,'en',' apex studio 5 '),
	(317,'slug',0,'en',''),
	(317,'field',100,'en',' apex studio 4 '),
	(316,'slug',0,'en',''),
	(314,'slug',0,'en',''),
	(2,'field',99,'en',' apex studio 1 apex studio 2 apex studio 3 apex studio 4 apex studio 5 '),
	(314,'field',100,'en',' apex studio 1 '),
	(226,'filename',0,'en',' skis_1 jpg '),
	(226,'extension',0,'en',' jpg '),
	(226,'kind',0,'en',' image '),
	(226,'slug',0,'en',''),
	(226,'title',0,'en',' skis 1 '),
	(230,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et harum quidem rerm facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et harum quidem rerm facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et harum quidem rerm facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime '),
	(230,'slug',0,'en',''),
	(74,'field',1,'en',' we set out with a simple goal create the design and products that we would like to see '),
	(74,'field',2,'en',' we are a group of highly effective passionate people ready to take your product to the next level temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis '),
	(244,'field',69,'en',' robin richards christopher robinson jonathan abbot '),
	(240,'field',44,'en',''),
	(240,'field',10,'en',' left '),
	(240,'slug',0,'en',''),
	(241,'field',5,'en',' small beginnings is the starting point of every hero s story at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis '),
	(241,'slug',0,'en',''),
	(242,'field',67,'en',' our people '),
	(242,'slug',0,'en',''),
	(243,'field',68,'en',' right '),
	(243,'slug',0,'en',''),
	(241,'field',68,'en',' right '),
	(36,'field',70,'en',' center '),
	(25,'field',70,'en',' center '),
	(62,'field',70,'en',' center '),
	(63,'field',70,'en',' center '),
	(66,'field',70,'en',' center '),
	(68,'field',70,'en',' center '),
	(71,'field',70,'en',' center '),
	(33,'field',70,'en',' center '),
	(105,'field',75,'en',' 1 '),
	(61,'field',75,'en',' 0 '),
	(45,'field',75,'en',' 1 '),
	(4,'field',75,'en',' 1 '),
	(24,'field',75,'en',' 0 ');

/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections`;

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'Homepage','homepage','single',1,'index',1,'2014-07-29 18:21:35','2014-07-29 18:21:35','735318f3-e53c-4ce1-8dad-4c7a5c7c5bee'),
	(2,NULL,'Blog','blog','channel',1,'blog/_entry',1,'2014-07-29 18:21:35','2018-06-24 18:35:56','f5969f9a-8d3f-487e-9695-cc4e5fbe5efd'),
	(4,NULL,'About','about','single',1,'about',1,'2014-09-17 01:15:20','2014-09-17 01:15:20','1a1f289d-3e32-4409-bfb2-03ec7e7d1b81'),
	(9,NULL,'Contact','contact','single',1,'contact',1,'2018-06-24 18:35:19','2018-06-24 18:35:19','5d17a868-d063-4ca9-95a6-825160764869'),
	(10,NULL,'Apex Studio','apexStudio','single',1,'apex-studio',1,'2018-06-24 18:35:36','2018-06-24 18:35:36','9d9a97cc-1b33-4e0f-b3c4-50179184d4d4'),
	(11,NULL,'Instrument Repairs','instrumentRepairs','single',1,'instrument-repairs',1,'2018-06-24 18:36:23','2018-06-24 18:36:23','e77f3b61-98af-423f-9bbb-cded4b717460'),
	(12,NULL,'Pickups','pickups','channel',1,'pickups/_entry',1,'2018-07-05 19:59:50','2018-07-05 19:59:50','28a51752-06d0-43f1-9ad1-08f66050b5a6');

/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections_i18n`;

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en',1,'__home__',NULL,'2014-07-29 18:21:35','2016-03-09 20:04:45','629e90fd-e1b9-4204-8c6a-ca995a89b199'),
	(2,2,'en',1,'blog/{slug}',NULL,'2014-07-29 18:21:35','2018-06-24 18:35:56','d475908b-9503-4481-9817-2a2bee5e359e'),
	(4,4,'en',1,'about',NULL,'2014-09-17 01:15:20','2016-03-09 20:04:45','66cebabf-96d9-4864-acba-7a0a728b397f'),
	(9,9,'en',1,'contact',NULL,'2018-06-24 18:35:19','2018-06-24 18:35:19','a19dad03-80b4-45f3-8e5a-765f9a06a245'),
	(10,10,'en',1,'apex-studio',NULL,'2018-06-24 18:35:36','2018-06-24 18:35:36','1dcc8f94-9af0-46e9-ab5a-04307f5ef99c'),
	(11,11,'en',1,'instrument-repairs',NULL,'2018-06-24 18:36:23','2018-06-24 18:36:23','39241bd4-fdcb-4ac8-a3a7-0af59e18e024'),
	(12,12,'en',1,'pickups/{slug}',NULL,'2018-07-05 19:59:50','2018-07-05 19:59:50','595ec427-865e-4571-8a08-4ed29008cff2');

/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sessions`;

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'0f9bc94c277306639ca8a9016137fdc7adcc60a7czozMjoiMjh2NnUzOUptVE5FRTdTYmhDMjNMU0JjVkU3eUdYbzYiOw==','2018-06-24 18:01:05','2018-06-24 18:23:32','ea70d0bf-9c8c-4b9f-a0a9-fd5b0036f638'),
	(2,1,'41bb0324d6d06f91f5362529e4778d89eac6e25fczozMjoiWDA5TmhwWWxpUkFmNlBPTTBYYl9jaERoeTRPVDJHVm0iOw==','2018-07-03 20:40:32','2018-07-03 20:40:32','b7a5f73d-6be9-444f-b919-9542d4550bc5'),
	(3,1,'1c49b3fa76bd87c9420ded5db1d540caf4d295d9czozMjoiZlRuYnJielIxVDFOanRCeTcxY0JBcGhIdWRtZkR6MmIiOw==','2018-07-05 19:34:15','2018-07-05 19:34:15','87600594-2582-4486-9066-3ebbf9d6a0d7'),
	(4,1,'7dffeeed0134e4ee67c0f21d72a5f64b2da33e67czozMjoicjZHcHl4WW1YRVphVjNVRldlTlhYUjBlUExVRTFjdmsiOw==','2018-07-07 14:37:16','2018-07-07 14:37:16','39f6e9d5-dc2d-4cd5-b1fa-906355bca099'),
	(5,1,'de9c17f10447bafd13d63822fb287db8707b3896czozMjoic3ZlSmVQSllsbDRNN0tPNnhfVmtLWVljWmJoRkg4ZnkiOw==','2018-07-08 13:29:30','2018-07-08 13:29:30','0588597d-7935-48cc-8696-336ce909ee85'),
	(6,1,'23c90d8909cca5e148e56676f68e98b1dfab9657czozMjoiNUJoQW04UFl4em4yekpxNnFscUVTOWNJQ1pFajV5VEsiOw==','2018-07-08 18:48:10','2018-07-08 18:48:10','b6fda2b9-134d-4a93-8c6e-073fb9f1982d'),
	(7,1,'525bee532bb12b9d7267d551e41d1fff43a2e090czozMjoiUkdrSWUxN1Zpckd4SUhleENYYl81UHJZMFNLc3Q1eEsiOw==','2018-07-09 20:07:30','2018-07-09 20:07:30','7d7860e0-1308-407c-bf0f-b905622203ca'),
	(8,1,'595295f067d7b1942a74fb5cd4486da8602a7f31czozMjoiNlR3dmVpTHNYRTZoX0NXQ1duTFo5QlU5NGlNa0JWTTYiOw==','2018-07-09 20:58:23','2018-07-09 20:58:23','53c694a1-050a-4631-87a9-7b0046d39ef3'),
	(9,1,'2450b6d96c39d544ad532f513da382ab790bce85czozMjoiTmkzb09ydndyY0k0U1dLS0dQb0dvZjZjZEkyck1OcU4iOw==','2018-07-10 20:19:54','2018-07-10 20:19:54','cb467a18-1349-4bc9-a800-1b49edb01938');

/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_shunnedmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_shunnedmessages`;

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_structureelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structureelements`;

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,NULL,1,1,4,0,'2018-07-05 19:58:38','2018-07-05 19:58:38','96807b85-7693-435c-8667-c7cc6bd0cada'),
	(2,1,261,1,2,3,1,'2018-07-05 19:58:38','2018-07-05 19:58:38','2f7897b7-81c3-43ba-af81-a23f33432a50'),
	(3,2,NULL,3,1,18,0,'2018-07-05 22:10:16','2018-07-05 22:10:16','166586bc-57a4-4105-b076-a97b4cc9f567'),
	(4,2,264,3,2,3,1,'2018-07-05 22:10:16','2018-07-05 22:10:16','34e9ca2e-c038-41c1-b159-9f6e7018ab32'),
	(5,2,265,3,4,5,1,'2018-07-05 22:10:46','2018-07-05 22:10:46','2c2adfbb-ece6-4eed-b554-90d7e1e85400'),
	(6,2,266,3,12,13,1,'2018-07-05 22:11:13','2018-07-05 22:11:13','c8ef722c-3a3e-4624-a4a9-9b734e689029'),
	(7,2,267,3,14,15,1,'2018-07-05 22:11:58','2018-07-05 22:11:58','47057a9e-d6a1-415b-8e46-d87a3f305ee7'),
	(8,2,268,3,16,17,1,'2018-07-05 22:12:49','2018-07-05 22:12:49','85df981d-cae2-4936-b6da-45df5a4ceeca'),
	(9,2,269,3,6,11,1,'2018-07-05 22:13:45','2018-07-05 22:13:45','17bf1bba-b6c8-4358-a509-98f681ef0936'),
	(10,2,270,3,7,10,2,'2018-07-05 22:29:47','2018-07-05 22:29:47','124ca0b6-75ea-422f-b048-a74f0bd0111b'),
	(11,2,271,3,8,9,3,'2018-07-05 22:30:25','2018-07-05 22:30:25','50994797-fb46-43d8-b02a-15d5bb0feaff'),
	(12,3,NULL,12,1,10,0,'2018-07-07 14:40:30','2018-07-07 14:40:30','3beaf878-7ac4-44a0-82ae-a90863804e9e'),
	(13,3,272,12,2,3,1,'2018-07-07 14:40:30','2018-07-07 14:40:30','269e15af-bc11-4094-b515-e88387820af6'),
	(14,3,273,12,4,5,1,'2018-07-07 14:40:51','2018-07-07 14:40:51','3042d468-720f-41fb-8921-d01f57fccc70'),
	(15,3,274,12,6,7,1,'2018-07-07 14:42:12','2018-07-07 14:42:12','55dae733-c142-4f9c-9df3-6b40adbe7cde'),
	(16,3,275,12,8,9,1,'2018-07-07 14:42:38','2018-07-07 14:42:38','955b4137-2a5d-4346-8393-fa0ac2d380ee');

/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_structures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structures`;

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'2018-07-05 19:57:52','2018-07-05 21:23:46','bd410574-9388-4757-b16b-822f7caab227'),
	(2,3,'2018-07-05 21:54:47','2018-07-05 21:55:09','5299f0df-ca0b-4226-a4d4-d3696b022f31'),
	(3,1,'2018-07-07 14:38:25','2018-07-07 14:38:25','52dd4871-8a0b-4ea8-97ba-f89ac166322d'),
	(4,1,'2018-07-07 14:39:19','2018-07-07 14:39:19','48020b14-718c-468d-99e4-df215a981f01');

/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_systemsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_systemsettings`;

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'email','{\"protocol\":\"php\",\"emailAddress\":\"admin@happylager.dev\",\"senderName\":\"Happylager\"}','2014-07-29 18:21:34','2014-07-29 18:21:34','ea5576dc-1778-49e8-a32e-19e49f3800b2');

/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_taggroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_taggroups`;

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tags`;

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_fk` (`groupId`),
  KEY `craft_tags_groupId_idx` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tasks`;

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecachecriteria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecachecriteria`;

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecacheelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecacheelements`;

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecaches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecaches`;

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  KEY `craft_templatecaches_locale_cacheKey_path_expiryDate_idx` (`locale`,`cacheKey`,`path`,`expiryDate`),
  KEY `craft_templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  KEY `craft_templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tokens`;

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups`;

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`),
  UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_usergroups_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups_users`;

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_userpermissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions`;

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;

INSERT INTO `craft_userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'accesscp','2014-07-31 23:26:48','2014-07-31 23:26:48','9d54f3b4-b41d-4259-9467-058c9afe36c9'),
	(2,'editentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','4ba56acb-117e-461a-92d8-135bc05075f3'),
	(3,'createentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','59d65aa1-2a1a-40c6-910e-f2ca44afd7ea'),
	(4,'publishentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','ce0c71f9-251d-49fe-94ef-b748be9a8549'),
	(5,'deleteentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','b32951a3-c201-4af2-a166-500036d1d84f'),
	(6,'editpeerentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','a636ccb4-0001-4d42-b0fb-98bcf89f3a54'),
	(7,'publishpeerentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','dc0947cc-eddd-4187-ae3c-55098b2481fa'),
	(8,'deletepeerentries:2','2014-07-31 23:26:48','2014-07-31 23:26:48','ec8a0ddc-00f2-4457-a1b5-4b7758d15b97'),
	(9,'editpeerentrydrafts:2','2014-07-31 23:26:48','2014-07-31 23:26:48','a4410acb-7054-4493-8866-b6add56c4dae'),
	(10,'publishpeerentrydrafts:2','2014-07-31 23:26:48','2014-07-31 23:26:48','bed1592b-2942-4379-85fe-59bb0f1ecaa9'),
	(11,'deletepeerentrydrafts:2','2014-07-31 23:26:48','2014-07-31 23:26:48','a76119b6-c268-4309-b1cf-8638d2a484f1');

/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_userpermissions_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_users`;

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_users`;

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL,
  `suspended` tinyint(1) NOT NULL,
  `pending` tinyint(1) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'admin',NULL,'','','info@refresh-digital.com','$2a$13$5j8bSRoKQZipjtIg6FXWR.kGRR3UfCL.QeMIt2yTRH1.hCNHLQKtq',NULL,0,1,0,0,0,0,0,'2018-07-10 20:19:54','::1',NULL,NULL,'2018-07-09 20:58:16',NULL,NULL,NULL,NULL,0,NULL,'2016-08-22 18:42:37','2018-07-10 20:19:54','953aedcd-73c8-4677-b0c5-4241e8fbb14c');

/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_widgets`;

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'QuickPost',1,NULL,'{\"section\":\"2\",\"entryType\":\"2\",\"fields\":[\"15\",\"47\",\"1\",\"14\",\"4\"]}',1,'2014-07-29 18:21:39','2015-02-10 23:42:35','26f2cb81-7292-4db2-a255-4b4c99cceef4'),
	(2,1,'RecentEntries',3,NULL,NULL,1,'2014-07-29 18:21:39','2015-02-10 23:42:35','5b4c637e-d56a-4248-8bb2-c2a1aa6dcdc8'),
	(3,1,'GetHelp',3,NULL,NULL,0,'2014-07-29 18:21:39','2015-02-10 23:41:10','5ecc7fca-1a1d-450c-919a-e88895c71668'),
	(4,1,'Updates',4,NULL,NULL,0,'2014-07-29 18:21:39','2015-02-10 23:41:13','d4818d12-78d1-4599-9f87-041a243faddd'),
	(5,1,'Feed',4,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}',1,'2014-07-29 18:21:39','2015-12-01 16:41:27','28fc0fd3-6f8a-41cd-ba68-6a2abcbd9b04'),
	(6,1,'QuickPost',2,NULL,'{\"section\":\"3\",\"entryType\":\"\",\"fields\":[\"15\",\"47\",\"1\",\"49\",\"14\",\"4\",\"63\"]}',1,'2015-02-10 23:42:12','2015-02-10 23:42:35','21f796f5-3bfb-4315-aee1-203f1b950a5b');

/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
