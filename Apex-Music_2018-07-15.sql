# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: Apex-Music
# Generation Time: 2018-07-15 13:46:36 +0000
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
	(26,303,'pickups-bg.jpg','jpg','_pageSliderSize',1,1,0,'2018-07-10 23:16:10','2018-07-10 23:16:10','2018-07-10 23:16:12','d41b98ef-b314-4025-9ffe-467a2aca17f0'),
	(27,303,'pickups-bg.png',NULL,'_fullWidthBanner',1,1,0,'2018-07-14 14:57:18','2018-07-14 14:57:18','2018-07-14 14:57:20','e1e306f6-bd87-40cf-81d1-d715fe995cb9'),
	(31,303,'pickups-bg.jpg','jpg','_fullWidthBanner',1,1,0,'2018-07-14 14:58:57','2018-07-14 14:58:57','2018-07-14 14:58:58','1ff515fc-5171-4d78-b3cd-5eb80fcecade');

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
	(4,'Page Slider Size','pageSliderSize','crop','center-center',535,1170,'jpg',82,'2018-07-10 22:26:55','2018-07-09 20:33:17','2018-07-10 22:26:55','e96c3e13-c5ea-4d56-a113-3f6e29224e6c'),
	(5,'Full Width Banner','fullWidthBanner','crop','center-center',411,1920,'jpg',82,'2018-07-14 14:58:51','2018-07-14 14:56:57','2018-07-14 14:58:51','5ebb003e-4186-49e1-a3de-a812ef942409');

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
	(2,2,'en','Homepage','Welcome to Happylager.dev!','<h1>CUSTOM PICKUPS, RECORDING STUDIO &amp; GUITAR WORK SHOP. WE DO IT ALL AT APEX.</h1>\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.</p>\n<p><a class=\"button\" href=\"{entry:74:url}\">Discover more about apex <em class=\"fas fa-long-arrow-alt-right\"></em></a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]',NULL,NULL,'2014-07-29 18:21:35','2018-07-14 12:31:44','73fccf4e-5208-46d9-8f88-99e78ecf855e'),
	(29,74,'en','About','We set out with a simple goal: create the design and products that we would like to see.','<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.</p>','2701 West Thomas St Chicago, Il 60622','info@company.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-09-17 01:15:21','2018-07-14 15:11:42','91f0829c-6749-498c-9dd1-96680a3f0799'),
	(113,257,'en','Contact','Get in touch if you\'d like to use any of our services.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:35:19','2018-07-15 13:16:42','9c9ead30-120f-4249-aa40-39c8431c80ec'),
	(114,258,'en','Apex Studio',NULL,'<h2 class=\"styled center-text\"><strong>Apex Studio</strong></h2>\n<h1 class=\"center-text pt-s\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. </h1>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]',NULL,NULL,'2018-06-24 18:35:36','2018-07-14 13:56:36','428a67f4-02dd-4ae2-ae3f-45316aabea1d'),
	(115,259,'en','Instrument Repairs',NULL,'<h2 class=\"styled center-text\"><strong>instrument repairs</strong></h2>\n<h1 class=\"center-text pt-s\">All the latest carry on form the Apex team - all killer no filler </h1>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:36:23','2018-07-15 10:55:54','71c6bdbc-e80d-4530-a9a6-0a97448bf178'),
	(116,260,'en',NULL,NULL,NULL,'\n<ul><li>Unit 3, Derrycrin road</li><li>BT80 0HJ</li><li>Cookstown</li></ul>','hello@apexmusic.co',NULL,NULL,NULL,'0759 1132 008','https://www.facebook.com/ApexMusicCo/','#apex-music','#apex-music','\n<ul><li>14 Sullenboy park</li><li>BT80 8HP</li><li>Cookstown</li></ul>',NULL,NULL,NULL,'2018-06-24 18:39:24','2018-07-15 13:25:00','27f31143-a4e2-4cd9-b788-9886e0765af6'),
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
	(168,313,'en','Workshop Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-08 13:52:21','2018-07-10 22:27:32','d2d65879-21ec-40f8-b797-11bbc0f81d9c'),
	(171,350,'en','INTRODUCING THE TEAM: PETE','',NULL,NULL,NULL,'<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,'2018-07-15 11:52:23','2018-07-15 12:42:27','816a90ee-d570-417f-bf38-2a363d8960f6');

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
	(2,'Entry',1,0,'2014-07-29 18:21:35','2018-07-14 12:31:44','f20120a9-7cb6-4c53-8c06-6041a39cc056'),
	(74,'Entry',1,0,'2014-09-17 01:15:21','2018-07-14 15:11:42','990289b0-2685-4293-a526-2962328c9bac'),
	(237,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','e087f883-300f-4d8e-bfda-5b2978dbd68e'),
	(241,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','ab91e42c-9cd5-482e-b30c-ff1943e13934'),
	(243,'MatrixBlock',1,0,'2015-02-10 01:16:49','2015-02-10 18:08:01','2b2f630a-e0d0-4410-be21-ad4582921710'),
	(257,'Entry',1,0,'2018-06-24 18:35:19','2018-07-15 13:16:42','f9ea18c4-5739-43e2-aa77-0d444ffa586b'),
	(258,'Entry',1,0,'2018-06-24 18:35:36','2018-07-14 13:56:36','5462201f-e4c1-4117-830d-8441d7c2fa23'),
	(259,'Entry',1,0,'2018-06-24 18:36:23','2018-07-15 10:55:54','0f540059-3b80-465c-873f-d303d412e01a'),
	(260,'GlobalSet',1,0,'2018-06-24 18:39:24','2018-07-15 13:25:00','25e169bb-f41f-436b-b410-3a9b0251f2e8'),
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
	(314,'MatrixBlock',1,0,'2018-07-08 13:54:49','2018-07-14 12:31:45','c7d1d45c-4d5f-4c56-a3b8-d20c9bc417ec'),
	(315,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-14 12:31:45','3a113500-3edc-40a1-87d0-ce9650fde487'),
	(316,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-14 12:31:45','4ca74d14-f965-4835-bafb-b7bb700bd3f4'),
	(317,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-14 12:31:45','ff289ff2-83fc-4240-857f-81b5065f1020'),
	(318,'MatrixBlock',1,0,'2018-07-08 14:00:19','2018-07-14 12:31:45','9b559529-fe07-4988-a475-06714cf1a31f'),
	(319,'MatrixBlock',1,0,'2018-07-08 16:28:44','2018-07-14 12:31:45','d9c4a39d-9618-4e82-82c1-8d94953de95d'),
	(320,'MatrixBlock',1,0,'2018-07-08 16:31:00','2018-07-14 12:31:45','faa52e0f-db7e-4480-9138-60585194e0ad'),
	(321,'MatrixBlock',1,0,'2018-07-08 16:43:10','2018-07-14 12:31:45','faa2e1c5-f69c-427f-bf74-68dc1f5cc68f'),
	(322,'MatrixBlock',1,0,'2018-07-08 18:53:16','2018-07-14 12:31:45','ff9fdde4-2695-41c1-8632-05d07f73f35e'),
	(323,'MatrixBlock',1,0,'2018-07-08 18:53:16','2018-07-14 12:31:45','03a7c23f-b751-4b17-9077-b85a68a95c39'),
	(324,'MatrixBlock',1,0,'2018-07-09 22:29:55','2018-07-14 15:11:42','c914b4f2-e7a2-487d-96ec-32376587a551'),
	(325,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-14 15:11:42','abf9731b-5e46-404f-be0f-8b09eb11fc2c'),
	(326,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-14 15:11:42','43c951a2-902f-408b-815e-923ccea7f5bc'),
	(327,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-14 15:11:42','747d45e6-1b06-4eba-b262-fd7857d7a881'),
	(328,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-14 15:11:42','b46dc56e-f061-4321-9692-621b205f8c71'),
	(329,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-07-14 13:56:36','1faf6dcb-cf14-43c8-9782-e299c7fb9b8d'),
	(330,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-07-14 13:56:37','3ed48a0a-a0f3-4e72-96db-06be9b271f2d'),
	(331,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-07-14 13:56:37','4065421b-9214-4bd2-891d-ce7621100948'),
	(332,'MatrixBlock',1,0,'2018-07-10 22:44:31','2018-07-14 13:56:37','016745f4-1e8b-4538-9e16-628d9afb3417'),
	(333,'MatrixBlock',1,0,'2018-07-10 23:05:04','2018-07-14 13:56:37','e1dd702f-c42a-45ac-8c73-a889a59b7293'),
	(334,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-07-14 13:56:37','10b49b2b-9efd-44d9-9ad6-bf727615e1d6'),
	(335,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-07-14 13:56:37','70ed82e6-147d-4e82-b968-7964a19d94a8'),
	(336,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-07-14 13:56:37','f64cb26b-7108-4e7e-858b-a8503e33a8db'),
	(337,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-07-14 13:56:37','32eea8e3-3a37-4a5c-9679-bed9feb72f62'),
	(338,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-07-14 13:56:37','3f90707e-fd0e-4975-b38e-9a97fb83c28c'),
	(339,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-07-14 13:56:37','d066f305-47b1-427a-a8b6-13a4b454e96a'),
	(340,'MatrixBlock',1,0,'2018-07-14 13:56:37','2018-07-14 13:56:37','52494a9e-8778-4444-8101-6a4fa74f0cca'),
	(342,'MatrixBlock',1,0,'2018-07-14 15:07:42','2018-07-15 10:55:54','e834e952-5977-45a7-8cfe-09d6b431b82a'),
	(343,'MatrixBlock',1,0,'2018-07-14 15:07:42','2018-07-15 10:55:54','a7b9f021-63c2-4a7c-9e25-3b4503854dc1'),
	(344,'MatrixBlock',1,0,'2018-07-14 15:07:42','2018-07-15 10:55:54','87903cdf-53fd-41d1-b35e-58e22209baa7'),
	(345,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-15 10:55:54','c9044f9d-2216-4b19-9dee-2ce095136701'),
	(346,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-15 10:55:55','d164f5fd-ea4f-4a23-b01a-13714dcf9ede'),
	(347,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-15 10:55:55','e76f0845-102d-4356-91cd-9cfd9a3c8766'),
	(348,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-15 10:55:55','f9fca4f7-bb27-4af0-a88b-595dec62c1f9'),
	(350,'Entry',1,0,'2018-07-15 11:52:23','2018-07-15 12:42:27','355cb396-f850-4f2b-977d-a84afcc9fc65'),
	(351,'MatrixBlock',1,0,'2018-07-15 12:40:25','2018-07-15 12:42:27','e51844d3-9db6-4222-bef6-b3370af50fe7');

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
	(2,2,'en','homepage','__home__',1,'2014-07-29 18:21:35','2018-07-14 12:31:45','f920f3e1-d004-4e8f-8281-897f0f72e524'),
	(74,74,'en','about','about',1,'2014-09-17 01:15:21','2018-07-14 15:11:42','d101404e-29cf-4a9a-99f7-58f2f0ea1b28'),
	(226,237,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','670fc8ff-b3af-473c-a9a2-f0cc8cf9e435'),
	(230,241,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','08216ae3-a22d-4f75-a4f2-aa20e8c91e3f'),
	(232,243,'en','',NULL,1,'2015-02-10 01:16:49','2015-02-10 18:08:01','a4ffa5d7-fedd-4a82-b63d-a678e8584c52'),
	(246,257,'en','contact','contact',1,'2018-06-24 18:35:19','2018-07-15 13:16:42','9479984b-e621-4d9b-850b-098009f51d94'),
	(247,258,'en','apex-studio','apex-studio',1,'2018-06-24 18:35:36','2018-07-14 13:56:36','759b0724-7416-4de7-aebc-a761eecf7203'),
	(248,259,'en','instrument-repairs','instrument-repairs',1,'2018-06-24 18:36:23','2018-07-15 10:55:54','5c09d927-ed0f-4941-874d-9afd771dae3e'),
	(249,260,'en','',NULL,1,'2018-06-24 18:39:24','2018-07-15 13:25:00','8dd44dbe-3b8d-4776-af62-ea569bac1d7d'),
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
	(303,314,'en','',NULL,1,'2018-07-08 13:54:49','2018-07-14 12:31:45','d5a5af98-d58a-4a99-a14a-4e3e6de332ba'),
	(304,315,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-14 12:31:45','5c40b090-2a1e-4c90-b47a-5818cc67dea3'),
	(305,316,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-14 12:31:45','9461eea6-68b1-4fef-b23c-33e746684525'),
	(306,317,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-14 12:31:45','64be767d-b8a1-41f0-b78d-7576f791c987'),
	(307,318,'en','',NULL,1,'2018-07-08 14:00:19','2018-07-14 12:31:45','18a89496-3075-4dcd-a131-8c57daa0335b'),
	(308,319,'en','',NULL,1,'2018-07-08 16:28:44','2018-07-14 12:31:45','4716a65f-6328-4d49-8572-6842a624b0d7'),
	(309,320,'en','',NULL,1,'2018-07-08 16:31:00','2018-07-14 12:31:45','d05c3bc1-3da3-4139-9337-7f7cc7db1c0b'),
	(310,321,'en','',NULL,1,'2018-07-08 16:43:10','2018-07-14 12:31:45','77315ad6-9335-42e8-a5b2-92816d7a09ed'),
	(311,322,'en','',NULL,1,'2018-07-08 18:53:16','2018-07-14 12:31:45','d6a54233-4ca3-4276-b370-76058d210081'),
	(312,323,'en','',NULL,1,'2018-07-08 18:53:16','2018-07-14 12:31:45','711cc7ba-de62-47a8-83bd-46ab2b244dce'),
	(313,324,'en','',NULL,1,'2018-07-09 22:29:55','2018-07-14 15:11:42','7a0f592e-f1eb-40e8-8afa-ae6a73b5cab2'),
	(314,325,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-14 15:11:42','94bf82f3-089b-4a94-b63b-2a54bc0db58c'),
	(315,326,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-14 15:11:42','90e1cdb2-2c65-413e-a9f4-b4ec7b4e111c'),
	(316,327,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-14 15:11:42','498fea41-6841-4392-a871-b355deefac19'),
	(317,328,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-14 15:11:42','488e9a77-5e85-4667-a389-751b709cbc44'),
	(318,329,'en','',NULL,1,'2018-07-10 22:20:53','2018-07-14 13:56:36','b79a7e6e-2e73-4839-91f5-66a6aa80fb15'),
	(319,330,'en','',NULL,1,'2018-07-10 22:20:53','2018-07-14 13:56:37','450460fe-4d3d-4287-95cb-6fdc215773f8'),
	(320,331,'en','',NULL,1,'2018-07-10 22:20:53','2018-07-14 13:56:37','024b3161-16ac-4d05-8838-f03fdb249aa8'),
	(321,332,'en','',NULL,1,'2018-07-10 22:44:31','2018-07-14 13:56:37','7644856b-adb9-46c1-afda-7ba083f87d25'),
	(322,333,'en','',NULL,1,'2018-07-10 23:05:04','2018-07-14 13:56:37','b0d25227-23cb-434f-a388-0bbbe9934fa1'),
	(323,334,'en','',NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','2362a0cf-0f9f-472a-8aa8-23f0eea3f54c'),
	(324,335,'en','',NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','5fcd22d6-963f-474c-9be2-db7978675960'),
	(325,336,'en','',NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','3e1d9ec8-368b-4136-b2cc-f3fa348ac987'),
	(326,337,'en','',NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','81dcf4be-1b37-4fcf-b363-638cedd79051'),
	(327,338,'en','',NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','610cda03-410d-4057-a9c9-462bdb39f997'),
	(328,339,'en','',NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','be31be45-f66a-4347-b69c-6519db532715'),
	(329,340,'en','',NULL,1,'2018-07-14 13:56:37','2018-07-14 13:56:37','d45be9f8-cbdc-4345-8e0c-61a870979175'),
	(331,342,'en','',NULL,1,'2018-07-14 15:07:42','2018-07-15 10:55:54','6dd98b4b-aaf5-43e6-b6a9-3ffac51f60c4'),
	(332,343,'en','',NULL,1,'2018-07-14 15:07:42','2018-07-15 10:55:54','f49d2e1a-2e87-4cbb-bd73-205feb0c7cd1'),
	(333,344,'en','',NULL,1,'2018-07-14 15:07:42','2018-07-15 10:55:54','2b79c3b9-26ea-4bc8-a139-846e2c6eade1'),
	(334,345,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-15 10:55:54','9d105af9-7995-4752-8308-94db4fc55fea'),
	(335,346,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-15 10:55:55','e8710fbf-84a4-4e48-8ed1-153716c2d5f4'),
	(336,347,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-15 10:55:55','7455a015-273b-4df1-bfb1-6cf3ebe24d8d'),
	(337,348,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-15 10:55:55','af7d17eb-77f0-4c95-84b5-09586232a608'),
	(339,350,'en','introducing-the-team-pete','blog/introducing-the-team-pete',1,'2018-07-15 11:52:23','2018-07-15 12:42:27','bdbf74d9-3d83-4d1b-b178-cb7eb7f780f8'),
	(340,351,'en','',NULL,1,'2018-07-15 12:40:25','2018-07-15 12:42:27','1322859d-c569-4f86-9a7e-08f168e30185');

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
	(2,1,1,NULL,'2014-07-29 18:21:35',NULL,'2014-07-29 18:21:35','2018-07-14 12:31:45','53ea9ee4-5daf-4d0f-9955-9385092bbd60'),
	(74,4,4,NULL,'2014-09-17 01:15:21',NULL,'2014-09-17 01:15:21','2018-07-14 15:11:42','c31210d7-7e6b-465e-b232-dc2d19b10745'),
	(257,9,NULL,NULL,'2018-06-24 18:35:19',NULL,'2018-06-24 18:35:19','2018-07-15 13:16:42','bd2069bf-6c3b-4922-b657-f914a6c43a54'),
	(258,10,NULL,NULL,'2018-06-24 18:35:36',NULL,'2018-06-24 18:35:36','2018-07-14 13:56:37','6756de37-75b3-4218-84b1-b234b20ca04a'),
	(259,11,NULL,NULL,'2018-06-24 18:36:23',NULL,'2018-06-24 18:36:23','2018-07-15 10:55:55','344e43f8-036c-45a4-850d-4e070fd84d92'),
	(262,12,14,1,'2018-07-05 20:00:00',NULL,'2018-07-05 20:00:18','2018-07-05 20:06:13','bc3d46e0-2ef2-401c-b4ed-1370c37ca0b1'),
	(350,2,2,1,'2018-07-15 11:52:00',NULL,'2018-07-15 11:52:23','2018-07-15 12:42:27','1ad65f25-a9e5-4a6c-bcb9-52a0d076900a');

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
	(1,1,253,'Homepage','homepage',0,NULL,'{section.name|raw}',NULL,'2014-07-29 18:21:35','2018-07-14 12:31:28','1f72a359-0ce9-4415-82dc-88dc833073c3'),
	(2,2,269,'Article','article',1,'Title',NULL,NULL,'2014-07-29 18:21:35','2018-07-15 12:40:47','eba60966-6218-4985-b901-fff1e5f97a49'),
	(4,4,248,'About','about',1,'',NULL,NULL,'2014-09-17 01:15:21','2018-07-10 21:18:51','6ef72b30-6af9-4545-81e9-b2c900cd08d4'),
	(11,9,271,'Contact','contact',1,'',NULL,1,'2018-06-24 18:35:19','2018-07-15 13:16:16','7edd4a7b-9cf4-4286-b351-9df85c7f390b'),
	(12,10,259,'Apex Studio','apexStudio',1,'',NULL,1,'2018-06-24 18:35:36','2018-07-14 13:51:06','cbd4ca64-780d-40f0-8cd7-2d938d0ca2fb'),
	(13,11,265,'Instrument Repairs','instrumentRepairs',0,NULL,'{section.name|raw}',1,'2018-06-24 18:36:23','2018-07-14 14:32:07','eda96e9a-cade-465f-9d43-60d3cbfc02fc'),
	(14,12,263,'Pickups','pickups',1,'Title',NULL,1,'2018-07-05 19:59:50','2018-07-14 14:14:05','e34ecaa9-7579-4b2d-bc6b-3218910066e8');

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
	(23,74,4,1,'en',1,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\"}}','2014-09-17 01:24:16','2014-09-17 01:24:16','336ca4d4-871d-42ac-ada3-ffe27dc522b9'),
	(24,74,4,1,'en',2,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\"}}','2014-09-17 01:26:56','2014-09-17 01:26:56','0063288a-c8bd-4c00-9fef-58fe57a3fd63'),
	(25,74,4,1,'en',3,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"26\":\"<p><img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\",\"23\":\"\"}}','2014-09-17 01:42:45','2014-09-17 01:42:45','12a46d4a-77e3-4f6f-bb61-16fb32cada3d'),
	(26,74,4,1,'en',4,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"26\":\"<p><img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" style=\\\"float: right; margin: 0px 0px 10px 10px;\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 01:52:47','2014-09-17 01:52:47','9147669e-553c-4fe8-b71d-eacc78f9e59c'),
	(27,74,4,1,'en',5,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.\\r\\n<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 01:54:02','2014-09-17 01:54:02','4c742123-cd47-4483-97d7-7d472bfb8b54'),
	(28,74,4,1,'en',6,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 02:07:31','2014-09-17 02:07:31','75c7b220-3749-470b-b482-e5f882d5ed7a'),
	(29,74,4,1,'en',7,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 02:34:20','2014-09-17 02:34:20','fcddf00f-2eda-4931-8fc2-e901c7154f40'),
	(30,74,4,1,'en',8,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"79\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"24\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"25\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"18\":\"How we think\",\"19\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\",\"17\":\"We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.\",\"16\":\"We set out with a simple goal: Create the design and products that we would like to See.\",\"27\":[\"76\"],\"30\":\"Robin Richards\",\"33\":\"President and Co-Founder\",\"28\":[\"77\"],\"31\":\"Christopher Robinson\",\"34\":\"CEO and Co-Founder\",\"29\":[\"78\"],\"32\":\"Jonathan Abbot\",\"35\":\"Creative Director\",\"26\":\"<p>\\r\\n\\t<img src=\\\"\\/assets\\/site\\/macbook-table_1.jpg#asset:75:url\\\" alt=\\\"\\\" class=\\\"img-right\\\">Small beginnings is the starting point of every hero\\u2019s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"20\":\"Our Story\",\"21\":\"It all begins in a living room with a six pack and A Clamshell iBook.\",\"22\":\"Our People\"}}','2014-09-17 02:37:50','2014-09-17 02:37:50','4d918a56-9113-48c7-93a9-54455028197c'),
	(84,2,1,1,'en',1,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"]}}','2014-10-06 01:49:53','2014-10-06 01:49:53','edcafa30-b432-402c-8b61-3bc18be880ef'),
	(85,2,1,1,'en',2,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"new1\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}}}}}','2014-10-07 03:41:31','2014-10-07 03:41:31','86de4140-1411-4263-9ce6-bf15f34e8f57'),
	(86,2,1,1,'en',3,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"new1\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}}}}}','2014-10-07 03:44:02','2014-10-07 03:44:02','496cf5ec-dc88-43d9-a936-8224fd39ad39'),
	(87,2,1,1,'en',4,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"new1\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":\"\"}}}}}','2014-10-07 03:45:26','2014-10-07 03:45:26','2fb4e366-e0bf-4a18-8b20-569bd556800e'),
	(88,2,1,1,'en',5,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2014-10-07 03:45:44','2014-10-07 03:45:44','44b1bab7-7fbb-40ab-a99d-7aae1d4363d1'),
	(89,2,1,1,'en',6,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"55\":[\"141\",\"142\",\"143\",\"144\",\"145\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2014-10-07 03:49:02','2014-10-07 03:49:02','5fa4635a-8c16-4b9f-8451-25bb0eb6e78f'),
	(90,2,1,1,'en',7,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"50\":[\"134\"],\"55\":[\"141\",\"142\",\"143\",\"144\",\"145\"],\"51\":{\"136\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Larry Page - CEO Google\",\"photo\":[\"135\"]}},\"138\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Jonathan Abbott - Creative Director, Happy Lager\",\"photo\":[\"137\"]}},\"139\":{\"type\":\"quote\",\"enabled\":\"1\",\"fields\":{\"quote\":\"Something nice about the Happy Lager team. Uncap Happy Lager to find out how it\'s made.\",\"cite\":\"Bob Guff - Project Director, Happy Lager\",\"photo\":[\"140\"]}}}}}','2014-10-07 03:51:45','2014-10-07 03:51:45','31de3152-c3b0-4c42-bb0c-c7d2695ed4c3'),
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
	(207,74,4,1,'en',18,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"4\":{\"236\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"How We Think\"}},\"235\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"The philosophy of Happy Lager is One Third Working Hard and Two Thirds Happy Accidents.\"}},\"237\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"left\"}},\"243\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.<\\/p>\",\"position\":\"right\"}},\"238\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our Story\"}},\"239\":{\"type\":\"heading\",\"enabled\":\"1\",\"fields\":{\"heading\":\"It all begins in a living room with a six pack and A Clamshell iBook.\"}},\"240\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"219\"],\"caption\":\"\",\"position\":\"left\"}},\"241\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.<\\/p>\",\"position\":\"right\"}},\"242\":{\"type\":\"newSection\",\"enabled\":\"1\",\"fields\":{\"sectionHeading\":\"Our People\"}},\"244\":{\"type\":\"gallery\",\"enabled\":\"1\",\"fields\":{\"images\":[\"222\",\"220\",\"221\"]}}},\"2\":\"<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.<\\/p>\",\"37\":\"2701 West Thomas St Chicago, Il 60622\",\"41\":\"info@company.com\",\"36\":\"Chicago Office\",\"43\":[\"218\"],\"42\":\"google.com\",\"38\":\"Main Office: 312.900.2356\",\"39\":\"Creative Lab: 312.985.4500\",\"40\":\"Happy Lager Pub: 312.229.1122\",\"1\":\"We set out with a simple goal: create the design and products that we would like to see.\"}}','2015-02-10 18:08:01','2015-02-10 18:08:01','1eff139d-c3ac-413a-8617-7bb60e1efd4b'),
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
	(251,258,10,1,'en',10,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"\"}}},\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-10 23:07:08','2018-07-10 23:07:08','33de59fc-77b3-4af7-9868-fd49d8ed5ba3'),
	(252,2,1,1,'en',20,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.local\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"]}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"281\"]}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"282\"]}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"283\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"303\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"306\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"277\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"301\"],\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"303\"],\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-07-14 12:31:45','2018-07-14 12:31:45','6d2f9da1-0c41-42a9-9d17-26fdd6d5ff19'),
	(253,258,10,1,'en',11,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}}}}','2018-07-14 12:38:29','2018-07-14 12:38:29','d0dbda65-ca60-4ef9-b391-667ef45cfc14'),
	(254,258,10,1,'en',12,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-14 12:45:01','2018-07-14 12:45:01','8e990554-8f34-4336-a1bc-5f3b0b3cdb38'),
	(255,258,10,1,'en',13,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-14 12:53:14','2018-07-14 12:53:14','72c7312d-d0ea-4b52-b612-b7f2af091186'),
	(256,258,10,1,'en',14,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"283\"],\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"279\"],\"slideTitle\":\"SPACE, THE FINAL FRONTIER.\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"280\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"288\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}},\"112\":{\"340\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<p class=\\\"bigger\\\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\\r\\n\\t\\t\\t\\tphotography services. <\\/p>\\r\\n\\t\\t\\t<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\r\\n\\t\\t\\t\\tUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n\\t\\t\\t<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\\r\\n\\t\\t\\t\\toccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\"}}}}}','2018-07-14 13:56:37','2018-07-14 13:56:37','56295be3-5fa8-4472-9662-af4d3b2477f0'),
	(258,259,11,1,'en',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\\r\\n\",\"96\":[],\"91\":[\"303\"],\"92\":[]}}','2018-07-14 14:38:30','2018-07-14 14:38:30','d2c9e555-7c5c-49b7-a35f-60470ef88a5b'),
	(259,259,11,1,'en',3,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><span>basic guitar \\/ bass setup<\\/span><\\/h3>\\r\\n\\t\\t\\t<ul class=\\\"repairs\\\">\\r\\n\\t\\t\\t<li><i class=\\\"fas fa-check\\\"><\\/i> String change  <\\/li>\\r\\n\\t\\t\\t<li><i class=\\\"fas fa-check\\\"><\\/i> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> Pots &amp; Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n\\t\\t\\t<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><span>full guitar \\/ bass setup<\\/span><\\/h3>\\r\\n\\t\\t<ul class=\\\"repairs\\\">\\r\\n\\t\\t\\t<li><i class=\\\"fas fa-check\\\"><\\/i> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><i class=\\\"fas fa-check\\\"><\\/i> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <i class=\\\"fas fa-check\\\"><\\/i> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><span>full re-fret<\\/span><\\/h3>\\r\\n\\t\\t<ul class=\\\"repairs\\\">\\r\\n\\t\\t\\t<li><i class=\\\"fas fa-check\\\"><\\/i> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><i class=\\\"fas fa-check\\\"><\\/i> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n\\t<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"\"}}},\"91\":[\"303\"],\"92\":[]}}','2018-07-14 15:07:42','2018-07-14 15:07:42','7bcd5b67-2449-464a-b7ee-d723fb9eb31c'),
	(260,74,4,1,'en',28,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"276\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"310\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"307\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"309\"],\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"311\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-14 15:11:42','2018-07-14 15:11:42','645c28f4-ff4d-4a27-a66d-5d3bfb61c9e7'),
	(261,259,11,1,'en',4,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>basic guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> String change <\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Pots & Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>full guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>full re-fret<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"\"}}},\"91\":[\"303\"],\"92\":[]}}','2018-07-14 15:13:07','2018-07-14 15:13:07','fb4c4314-2afb-4bbb-b282-feb360fd293f'),
	(262,259,11,1,'en',5,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>basic guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> String change <\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Pots & Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>full guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>full re-fret<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"\"}}},\"91\":[\"303\"],\"92\":{\"345\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"string change\",\"description\":\"(Guitar only. Including Strings), \\u00a35 + your choice of strings (Bass)\",\"price\":\"\\u00a31o\"}},\"346\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"headstock\\/neck repair\",\"description\":\"This is a structural repair only. Any cosmetic repairs will be extra (See our finishing price list)\",\"price\":\"\\u00a360\"}},\"347\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"348\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-15 10:31:57','2018-07-15 10:31:57','044ca8fe-18d8-40e3-bf5f-163f66b2adb2'),
	(263,259,11,1,'en',6,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>basic guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> String change <\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Pots & Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>full guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"><strong>full re-fret<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"\"}}},\"91\":[\"303\"],\"92\":{\"345\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"string change\",\"description\":\"(Guitar only. Including Strings), \\u00a35 + your choice of strings (Bass)\",\"price\":\"\\u00a31o\"}},\"346\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"headstock\\/neck repair\",\"description\":\"This is a structural repair only. Any cosmetic repairs will be extra.\",\"price\":\"\\u00a360\"}},\"347\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"348\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-15 10:42:01','2018-07-15 10:42:01','eb2e8d4b-dd37-48ed-843d-e8286d4cc485'),
	(264,259,11,1,'en',7,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>basic guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> String change <\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Pots & Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"288\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>full guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>full re-fret<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"279\"],\"imageBlockPosition\":\"\"}}},\"91\":[\"303\"],\"92\":{\"345\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"string change\",\"description\":\"(Guitar only. Including Strings), \\u00a35 + your choice of strings (Bass)\",\"price\":\"\\u00a31o\"}},\"346\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"headstock\\/neck repair\",\"description\":\"This is a structural repair only. Any cosmetic repairs will be extra.\",\"price\":\"\\u00a360\"}},\"347\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"348\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-15 10:55:55','2018-07-15 10:55:55','452d98ed-ab69-40ae-b7ee-e443683c135c'),
	(267,350,2,1,'en',1,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"INTRODUCING THE TEAM: PETE\",\"slug\":\"introducing-the-team-pete\",\"postDate\":1531655543,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":[],\"15\":[\"292\"],\"1\":\"\",\"47\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}','2018-07-15 11:52:23','2018-07-15 11:52:23','c491440f-de09-4273-acbc-685d2d30395f'),
	(268,350,2,1,'en',2,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"INTRODUCING THE TEAM: PETE\",\"slug\":\"introducing-the-team-pete\",\"postDate\":1531655520,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"351\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}},\"15\":[\"292\"],\"1\":\"\",\"47\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}','2018-07-15 12:40:26','2018-07-15 12:40:26','96fa6e55-0fdc-4c05-a3f8-b20ba6773c19'),
	(269,350,2,1,'en',3,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"INTRODUCING THE TEAM: PETE\",\"slug\":\"introducing-the-team-pete\",\"postDate\":1531655520,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"351\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\r\\n<\\/p>\\r\\n<p>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC \\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"\\r\\n<\\/p>\"}}},\"15\":[\"292\"],\"47\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}','2018-07-15 12:42:27','2018-07-15 12:42:27','4fad954d-6674-4c81-848f-126b428a250d'),
	(270,257,9,1,'en',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Contact\",\"slug\":\"contact\",\"postDate\":1529865319,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"Get in touch if you\'d like to use any of our services.\"}}','2018-07-15 13:16:42','2018-07-15 13:16:42','368bac49-54fa-43fc-817a-83cfa8e8f649');

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
	(672,253,174,99,0,1,'2018-07-14 12:31:28','2018-07-14 12:31:28','d1601394-90ee-4944-a869-4a2721f8e42d'),
	(673,253,174,2,0,2,'2018-07-14 12:31:28','2018-07-14 12:31:28','96191d63-5aa9-4f98-ab26-9f8eb0dacb02'),
	(674,253,174,101,0,3,'2018-07-14 12:31:28','2018-07-14 12:31:28','237884d4-df3d-49d0-8a19-f5fdbd70c7c4'),
	(675,253,174,82,0,4,'2018-07-14 12:31:28','2018-07-14 12:31:28','3f7c9dad-7227-4b66-bf6f-0d48f62c02f4'),
	(676,253,174,88,0,5,'2018-07-14 12:31:28','2018-07-14 12:31:28','b53b4bf0-6a61-4128-9c75-bac1da90690e'),
	(697,259,181,2,0,1,'2018-07-14 13:51:06','2018-07-14 13:51:06','69e75933-0418-4f9e-bff7-daa49a40cdfd'),
	(698,259,181,82,0,2,'2018-07-14 13:51:06','2018-07-14 13:51:06','2e64ce60-a422-41cd-8366-ee6394b12652'),
	(699,259,181,96,0,3,'2018-07-14 13:51:06','2018-07-14 13:51:06','6113bb93-7484-4969-8835-bfd16abba5e1'),
	(700,259,181,112,0,4,'2018-07-14 13:51:06','2018-07-14 13:51:06','35d99313-739f-49dd-a7d3-778da83d1064'),
	(701,259,181,88,0,5,'2018-07-14 13:51:06','2018-07-14 13:51:06','3100eafc-20a0-449d-ae4a-52aa176f9bfa'),
	(702,259,182,92,0,1,'2018-07-14 13:51:06','2018-07-14 13:51:06','4b179e95-ae58-4e45-ae20-c9c939030eda'),
	(703,260,183,97,0,1,'2018-07-14 13:53:28','2018-07-14 13:53:28','48de21ee-1b65-4ff7-a463-c1a7653dff29'),
	(704,260,183,98,0,2,'2018-07-14 13:53:28','2018-07-14 13:53:28','96d40295-dba5-4ce8-965e-ec895569b310'),
	(705,260,183,110,0,3,'2018-07-14 13:53:28','2018-07-14 13:53:28','72065e41-43ae-49bf-82c9-bfa3f5ea17c8'),
	(706,261,184,113,0,1,'2018-07-14 13:56:50','2018-07-14 13:56:50','aeabbfbc-8ac5-4102-9807-db1898093ed2'),
	(707,261,184,114,0,2,'2018-07-14 13:56:50','2018-07-14 13:56:50','2b469ebb-ed61-49d6-8bef-16cf5c20deab'),
	(711,263,186,80,0,1,'2018-07-14 14:14:05','2018-07-14 14:14:05','ff394d15-bf97-4a04-92ac-932ee4339162'),
	(712,265,187,91,0,1,'2018-07-14 14:32:07','2018-07-14 14:32:07','3452e71e-cf6b-4a65-bc8d-251733bfa99f'),
	(713,265,187,2,0,2,'2018-07-14 14:32:07','2018-07-14 14:32:07','a7c15c4b-7840-40d7-9e2b-785263a7467f'),
	(714,265,187,96,0,3,'2018-07-14 14:32:07','2018-07-14 14:32:07','49676a8e-9aad-4353-be18-0d3934ea0c02'),
	(715,265,188,92,0,1,'2018-07-14 14:32:07','2018-07-14 14:32:07','cf754ad5-579f-4688-868d-4301ff31fb27'),
	(717,268,190,5,0,1,'2018-07-15 11:53:54','2018-07-15 11:53:54','9cf0459d-9132-4c26-937f-dad49dd2893b'),
	(718,269,191,15,0,1,'2018-07-15 12:40:47','2018-07-15 12:40:47','ea036fbd-3ef3-4a72-a63c-161f607abc22'),
	(719,269,191,47,0,2,'2018-07-15 12:40:47','2018-07-15 12:40:47','c5eea362-13c1-4a48-8046-987d76b2a8ca'),
	(720,269,191,4,0,3,'2018-07-15 12:40:47','2018-07-15 12:40:47','d8eea8c7-8563-43bb-8382-262841c90844'),
	(722,271,193,1,0,1,'2018-07-15 13:16:16','2018-07-15 13:16:16','43e411b5-3766-4b76-be43-cc3da5bc2479');

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
	(195,'Asset','2015-02-10 23:15:35','2015-02-10 23:15:35','da21546b-da53-49c7-8821-2685c67df6b4'),
	(196,'Asset','2015-02-10 23:15:38','2015-02-10 23:15:38','57038148-5c46-43e2-9c5b-9760e04375f2'),
	(211,'Category','2018-07-05 21:23:46','2018-07-05 21:23:46','fd97a50e-c5b2-4ec9-a401-2b1a1ec7cb8c'),
	(212,'GlobalSet','2018-07-05 23:07:08','2018-07-05 23:07:08','f6c98bd1-2536-4baa-a526-3cb841c246c0'),
	(216,'MatrixBlock','2018-07-07 16:01:07','2018-07-07 16:01:07','9b778402-eb3a-4917-af62-bf4ae1b01546'),
	(223,'MatrixBlock','2018-07-08 13:56:10','2018-07-08 13:56:10','99ee404a-fc7e-4404-a7a4-ffe150df6de9'),
	(230,'Asset','2018-07-08 14:23:27','2018-07-08 14:23:27','f0690817-574f-4f48-8562-5863247e1765'),
	(235,'MatrixBlock','2018-07-08 16:42:37','2018-07-08 16:42:37','c5dcea02-f71f-4776-9bd5-c830b339f456'),
	(239,'MatrixBlock','2018-07-09 20:33:50','2018-07-09 20:33:50','e720c10d-03c6-4e27-9bce-739a5f26d7ef'),
	(245,'MatrixBlock','2018-07-10 20:23:16','2018-07-10 20:23:16','0e351baf-af25-4879-a24b-884d477de34b'),
	(248,'Entry','2018-07-10 21:18:51','2018-07-10 21:18:51','f7699656-6b4f-4692-ae6f-5083f1e8e3b1'),
	(253,'Entry','2018-07-14 12:31:28','2018-07-14 12:31:28','c156acc0-b4d0-4718-b994-7e7d3b6755f1'),
	(259,'Entry','2018-07-14 13:51:06','2018-07-14 13:51:06','acef2203-1416-49be-b0a9-021db8c27d22'),
	(260,'MatrixBlock','2018-07-14 13:53:28','2018-07-14 13:53:28','d1dd43f5-a274-42d5-bdc3-afd509c99dd8'),
	(261,'MatrixBlock','2018-07-14 13:56:50','2018-07-14 13:56:50','2603a6fd-965c-4c22-9fb6-ea40719dd7eb'),
	(263,'Entry','2018-07-14 14:14:05','2018-07-14 14:14:05','4dfe4dbe-19f7-4668-9922-e698739b5aea'),
	(265,'Entry','2018-07-14 14:32:07','2018-07-14 14:32:07','ffdd9bf0-e32e-4308-9bbe-cff489cfa219'),
	(268,'MatrixBlock','2018-07-15 11:53:54','2018-07-15 11:53:54','9a35c4f4-4d32-434b-8430-22e917072f48'),
	(269,'Entry','2018-07-15 12:40:47','2018-07-15 12:40:47','88dfe254-3685-4019-8a0f-9f7a3664cc9c'),
	(271,'Entry','2018-07-15 13:16:16','2018-07-15 13:16:16','c2648aa6-b86d-453e-a652-2a5af4955819');

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
	(132,211,'Tab 1',1,'2018-07-05 21:23:46','2018-07-05 21:23:46','46e52f79-2cb2-40fb-a4d1-b8901bc64fcf'),
	(133,212,'Content',1,'2018-07-05 23:07:08','2018-07-05 23:07:08','6eb72fc2-7a51-4091-82c4-f5419bede2d3'),
	(137,216,'Content',1,'2018-07-07 16:01:07','2018-07-07 16:01:07','9ba87024-743f-4e58-9f6b-3c6c748bdf3b'),
	(144,223,'Content',1,'2018-07-08 13:56:10','2018-07-08 13:56:10','b5d2ac64-df2a-4a1b-9e7b-d7f3b4818f54'),
	(151,230,'Content',1,'2018-07-08 14:23:27','2018-07-08 14:23:27','dff54c35-059b-425e-86c2-9df748986afa'),
	(156,235,'Content',1,'2018-07-08 16:42:37','2018-07-08 16:42:37','0f844ecf-d4b9-438b-b7b8-d25d0f1fa434'),
	(160,239,'Content',1,'2018-07-09 20:33:50','2018-07-09 20:33:50','2a73a7e0-864a-4175-b598-5b20a76b0ecf'),
	(166,245,'Content',1,'2018-07-10 20:23:16','2018-07-10 20:23:16','3026dcea-e2a5-4885-9032-c6afc9a0d615'),
	(169,248,'Content',1,'2018-07-10 21:18:51','2018-07-10 21:18:51','1a167acc-7aeb-4d77-98a5-40b9ee44d7fa'),
	(174,253,'Content',1,'2018-07-14 12:31:28','2018-07-14 12:31:28','bb26cf84-8bab-4f0f-9ed7-0d58d1997dde'),
	(181,259,'Tab 1',1,'2018-07-14 13:51:06','2018-07-14 13:51:06','3217c4c4-777b-46e1-b6df-f8a28cb56d67'),
	(182,259,'Price List',2,'2018-07-14 13:51:06','2018-07-14 13:51:06','11f1d2ed-7b9d-48f5-abf5-3aec2d5bc7c9'),
	(183,260,'Content',1,'2018-07-14 13:53:28','2018-07-14 13:53:28','b62d39be-c15b-4b96-bd33-dcec77f6eba5'),
	(184,261,'Content',1,'2018-07-14 13:56:50','2018-07-14 13:56:50','4a7f9cce-25bc-4fdd-a320-791864220fb1'),
	(186,263,'Tab 1',1,'2018-07-14 14:14:05','2018-07-14 14:14:05','4cdc4de3-7cc1-4913-af09-83f23abd05a3'),
	(187,265,'Tab 1',1,'2018-07-14 14:32:07','2018-07-14 14:32:07','95595141-7f9f-4e44-8f86-20ccc819eb20'),
	(188,265,'Price List',2,'2018-07-14 14:32:07','2018-07-14 14:32:07','bfeda562-1587-45cd-9971-13ae62d0b399'),
	(190,268,'Content',1,'2018-07-15 11:53:54','2018-07-15 11:53:54','671f142f-d677-4a0d-86f9-ddab7cfa48c1'),
	(191,269,'Content',1,'2018-07-15 12:40:47','2018-07-15 12:40:47','fdfdba9e-77f0-471d-8631-3445d36a053a'),
	(193,271,'Tab 1',1,'2018-07-15 13:16:16','2018-07-15 13:16:16','3efc2091-3b16-4c7f-bf75-a158c0c1964b');

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
	(4,1,'Article Body','articleBody','global','',0,'Matrix','{\"maxBlocks\":null}','2014-07-30 20:59:37','2018-07-15 11:53:54','82ac4aa6-3b63-4cb9-a1f6-6cb6a5210a2e'),
	(5,NULL,'Text','text','matrixBlockType:1','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2014-07-30 20:59:37','2018-07-15 11:53:54','e03a8ea1-0b9b-4e8c-bbf5-f7197caad45c'),
	(15,1,'Featured Image','featuredImage','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"2\"}','2014-07-30 22:47:26','2015-02-10 19:33:45','0cbb9736-a84b-4e83-803c-5077f56394a9'),
	(37,7,'Address One','addressOne','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2014-09-17 02:24:38','2018-07-15 13:22:36','422c7da9-d3e4-4d0a-8225-bbbc8264f029'),
	(41,7,'Email','email','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-09-17 02:25:59','2015-02-10 19:33:15','b75266c9-d8d2-42ae-9024-0fecb8bdc994'),
	(47,1,'Short Description','shortDescription','global','Short description for use in index regions.',0,'RichText','{\"configFile\":\"Simple.json\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"columnType\":\"text\"}','2014-10-03 02:15:14','2015-02-10 23:43:38','aef80333-1412-4130-bb84-ac3bdbbcbbe2'),
	(49,1,'Featured Thumb','featuredThumb','global','Thumb image for use on home page or archives.',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\"}','2014-10-05 03:01:09','2014-10-05 03:01:09','0305c984-3934-4c7a-9de9-b0162c5b0112'),
	(64,6,'Copyright Notice','copyrightNotice','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-04 15:21:00','2015-02-04 15:21:00','5095500e-4962-429c-9b9c-7a4d0d4f930c'),
	(65,6,'Contact Us Label','contactUsLabel','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-04 15:22:02','2015-02-04 15:22:02','fcf41a5f-68b5-42dd-8ca1-cc457eb749f0'),
	(76,7,'Telephone','telephone','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:39:56','2018-06-24 18:39:56','09410765-9611-4db3-b436-32e36fdfac84'),
	(77,7,'Facebook Link','facebooklink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:42:21','2018-06-24 18:43:11','cb9caf8c-8231-4f45-8de1-04dac88982af'),
	(78,7,'Twitter Link','twitterLink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:42:34','2018-06-24 18:42:34','b6dca90b-0381-4397-bb70-20c7f778b463'),
	(79,7,'Instagram Link','instagramLink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:43:31','2018-06-24 18:43:31','a12f2d9b-af3e-4f8a-8f06-3b2941e012e8'),
	(80,1,'Category','category','global','',0,'Categories','{\"source\":\"group:1\",\"limit\":\"\",\"selectionLabel\":\"Pickup Type\"}','2018-07-05 20:02:31','2018-07-05 20:02:31','c650b624-a2de-4416-b60b-d333a627feff'),
	(81,7,'Address Two','addressTwo','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-05 23:06:15','2018-07-15 13:22:50','17549f78-026d-4186-9d0d-86e26a631574'),
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
	(96,1,'Dual Content ','dualContent','global','',0,'Matrix','{\"maxBlocks\":\"3\"}','2018-07-07 16:09:01','2018-07-14 13:53:28','a7cc2f1c-9028-4508-be57-10c26c9df0f8'),
	(97,NULL,'Textblock','textblock','matrixBlockType:13','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-07 16:09:02','2018-07-14 13:53:28','633d5828-7ed2-45bb-bc3b-e0850410f62c'),
	(98,NULL,'Image Block','imageBlock','matrixBlockType:13','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-07 16:09:02','2018-07-14 13:53:28','d6671ab2-7321-4dc2-8197-a375c13f7cab'),
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
	(110,NULL,'Image Block Position','imageBlockPosition','matrixBlockType:13','Checking this option floats the image block to the left.',0,'Lightswitch','{\"default\":\"\"}','2018-07-10 22:42:01','2018-07-14 13:53:28','49dbbde2-dc73-438f-a4b3-543e795ea549'),
	(112,1,'Video Block','videoBlock','global','',0,'Matrix','{\"maxBlocks\":\"1\"}','2018-07-14 13:50:36','2018-07-14 13:56:50','e8f7abfb-c87f-4220-8af6-231ebd937f3b'),
	(113,NULL,'Text Block','textBlock','matrixBlockType:17','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-14 13:50:36','2018-07-14 13:56:50','890ef80e-bd33-4d16-a74a-aa933a7f01c1'),
	(114,NULL,'Iframe Link','iframeLink','matrixBlockType:17','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-14 13:50:36','2018-07-14 13:56:50','859d04d5-a0d9-4b7f-abd7-3e03b6b5bfb3');

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
	(237,74,4,1,NULL,3,'2015-02-09 21:56:10','2015-02-10 18:08:01','34d7d02d-7e6d-4855-b6dc-6f56f3a68772'),
	(241,74,4,1,NULL,8,'2015-02-09 21:56:10','2015-02-10 18:08:01','48164fdb-6911-48aa-9e5d-ca33b00c1ad2'),
	(243,74,4,1,NULL,4,'2015-02-10 01:16:49','2015-02-10 18:08:01','c775fe82-489a-4460-8ef4-b1520b480667'),
	(263,262,4,1,NULL,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','21d9925b-cb04-4112-b694-f00c16762c69'),
	(314,2,99,14,NULL,1,'2018-07-08 13:54:49','2018-07-14 12:31:45','45881e6d-7b96-4725-8300-130ddd53f163'),
	(315,2,99,14,NULL,2,'2018-07-08 14:00:19','2018-07-14 12:31:45','45723b0f-26d9-4273-a4a7-573fceb12238'),
	(316,2,99,14,NULL,3,'2018-07-08 14:00:19','2018-07-14 12:31:45','001ef194-c02d-46a3-9623-b2136ae5fdd6'),
	(317,2,99,14,NULL,4,'2018-07-08 14:00:19','2018-07-14 12:31:45','05966318-2e1f-4ff7-95de-ff0ee36ac0ee'),
	(318,2,99,14,NULL,5,'2018-07-08 14:00:19','2018-07-14 12:31:45','ab71492c-ed82-4fca-80d5-2241c62f99a5'),
	(319,2,101,15,NULL,1,'2018-07-08 16:28:44','2018-07-14 12:31:45','1eafdfc5-d2c4-433e-a815-d73b7e6409aa'),
	(320,2,101,15,NULL,2,'2018-07-08 16:31:00','2018-07-14 12:31:45','7aa1fd68-75f6-4487-8b29-22879cb3e8b3'),
	(321,2,101,15,NULL,3,'2018-07-08 16:43:10','2018-07-14 12:31:45','7f2973cf-13f8-4753-a7b6-9179cf3bed61'),
	(322,2,82,11,NULL,1,'2018-07-08 18:53:16','2018-07-14 12:31:45','917b0f14-b1ea-479f-b778-8a62f60a24a6'),
	(323,2,82,11,NULL,2,'2018-07-08 18:53:17','2018-07-14 12:31:45','6a5ba15b-a482-4a68-bc19-186fe3424bdd'),
	(324,74,96,13,NULL,1,'2018-07-09 22:29:55','2018-07-14 15:11:42','4cd74b32-bdb9-4785-b0c2-bb818a2e977a'),
	(325,74,106,16,NULL,1,'2018-07-10 20:35:03','2018-07-14 15:11:42','2185759b-6ba5-47ae-b2b0-3bc22ff92b5e'),
	(326,74,106,16,NULL,2,'2018-07-10 20:35:03','2018-07-14 15:11:42','f43fb6d3-414b-4d5d-83e6-4012ca4ac688'),
	(327,74,106,16,NULL,3,'2018-07-10 20:35:03','2018-07-14 15:11:42','ced95bc0-b351-4e57-9343-f95119a8b085'),
	(328,74,106,16,NULL,4,'2018-07-10 20:35:03','2018-07-14 15:11:42','01ff7f22-7f77-4634-8cc4-2142a9b59515'),
	(329,258,82,11,NULL,1,'2018-07-10 22:20:53','2018-07-14 13:56:37','6ed9bf6a-c1fa-4250-8519-7249b17dea62'),
	(330,258,82,11,NULL,2,'2018-07-10 22:20:53','2018-07-14 13:56:37','d2f3572c-6dc7-4382-8636-59346e80d635'),
	(331,258,82,11,NULL,3,'2018-07-10 22:20:53','2018-07-14 13:56:37','f9802c89-dd13-4f4d-b40a-0b1dae473f04'),
	(332,258,96,13,NULL,1,'2018-07-10 22:44:31','2018-07-14 13:56:37','83660b17-1da7-47f2-8533-4a46f905a044'),
	(333,258,96,13,NULL,2,'2018-07-10 23:05:04','2018-07-14 13:56:37','73064dd4-0c53-40e3-98f0-64cee1af0f6d'),
	(334,258,92,12,NULL,1,'2018-07-14 12:45:01','2018-07-14 13:56:37','200bac50-1664-41e9-954b-53810bdd7d32'),
	(335,258,92,12,NULL,2,'2018-07-14 12:45:01','2018-07-14 13:56:37','4d356ae2-aa55-47a9-a4f9-d878cb7dda2a'),
	(336,258,92,12,NULL,3,'2018-07-14 12:45:01','2018-07-14 13:56:37','bbf3b27b-1194-4222-a58f-a077c6ca5484'),
	(337,258,92,12,NULL,4,'2018-07-14 12:45:01','2018-07-14 13:56:37','0795ce1f-89d2-4db4-9b77-bd09f40600e6'),
	(338,258,92,12,NULL,5,'2018-07-14 12:45:01','2018-07-14 13:56:37','87f13295-1892-447a-9935-34154fc4d119'),
	(339,258,92,12,NULL,6,'2018-07-14 12:45:01','2018-07-14 13:56:37','9afd09c1-c455-4590-9505-ef03e0a08674'),
	(340,258,112,17,NULL,1,'2018-07-14 13:56:37','2018-07-14 13:56:37','077b2c3b-e4a5-46c1-94c2-53cf8dc26dc3'),
	(342,259,96,13,NULL,1,'2018-07-14 15:07:42','2018-07-15 10:55:54','9deefd35-7b90-4453-a0e2-c37d250d4fb9'),
	(343,259,96,13,NULL,2,'2018-07-14 15:07:42','2018-07-15 10:55:54','00a17613-7c65-4099-9a9a-ad05b620c9dd'),
	(344,259,96,13,NULL,3,'2018-07-14 15:07:42','2018-07-15 10:55:54','4c692d23-54ba-40ca-9956-38a1888febce'),
	(345,259,92,12,NULL,1,'2018-07-15 10:31:57','2018-07-15 10:55:55','6dccd02f-110a-485d-baa1-3eb5e652a42f'),
	(346,259,92,12,NULL,2,'2018-07-15 10:31:57','2018-07-15 10:55:55','783307b5-17fc-44db-a4c7-1c8d43d51cc2'),
	(347,259,92,12,NULL,3,'2018-07-15 10:31:57','2018-07-15 10:55:55','78d34d84-0023-482a-8f37-a29122bdafe8'),
	(348,259,92,12,NULL,4,'2018-07-15 10:31:57','2018-07-15 10:55:55','55d7f2d8-d633-493b-96e4-91e486857b65'),
	(351,350,4,1,NULL,1,'2018-07-15 12:40:25','2018-07-15 12:42:27','ed07ab67-a7bb-4b59-a1d5-2c18b3f7f9fb');

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
	(1,4,268,'Text','text',1,'2014-07-30 20:59:37','2018-07-15 11:53:54','070be8db-f9b0-4605-98ae-e9b54b1af3f6'),
	(11,82,239,'Slide','slide',1,'2018-07-07 15:35:41','2018-07-09 20:33:50','5a1e4692-fa88-4079-9c7f-f1c8efb0a4bf'),
	(12,92,216,'Product','product',1,'2018-07-07 16:01:07','2018-07-07 16:01:07','3c69773e-db31-4106-a622-ae477d78cfb3'),
	(13,96,260,'Block','block',1,'2018-07-07 16:09:01','2018-07-14 13:53:28','77082bf4-d26a-45d5-aaf2-76285ea3c33c'),
	(14,99,223,'Slide','slide',1,'2018-07-08 13:45:31','2018-07-08 13:56:10','caa49bc6-8770-4e32-a4e1-5c25633fc445'),
	(15,101,235,'Hotspot','hotspot',1,'2018-07-08 16:22:33','2018-07-08 16:42:37','035337c5-68d3-4896-bbbd-4c734dfcdd63'),
	(16,106,245,'Team Member','teamMember',1,'2018-07-10 20:23:16','2018-07-10 20:23:16','8f09da3b-ad14-4949-9f12-2cebafa3d536'),
	(17,112,261,'Block','block',1,'2018-07-14 13:50:36','2018-07-14 13:56:50','77b72a29-72a1-48f8-9d61-30568aa39d00');

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

INSERT INTO `craft_matrixcontent_articlebody` (`id`, `elementId`, `locale`, `field_text_text`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(108,237,'en','<p>Serendipity is a core part of how we work. Et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.</p>','2015-02-09 21:56:10','2015-02-10 18:08:01','4f2999f5-27a6-4201-b626-6eb55952a719'),
	(112,241,'en','<p>Small beginnings is the starting point of every hero\'s story. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis.</p>','2015-02-09 21:56:10','2015-02-10 18:08:01','241bf138-8158-42be-b07c-be4bebbf731d'),
	(114,243,'en','<p>Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit. Luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in.</p>','2015-02-10 01:16:49','2015-02-10 18:08:01','0d943c2c-08c4-4111-a5bc-2a1280f31373'),
	(121,263,'en','','2018-07-05 20:06:13','2018-07-05 20:06:13','d5a92cf2-2b23-40b0-9bc9-0054907f11e1'),
	(122,351,'en','<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n</p>\r\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n</p>','2018-07-15 12:40:25','2018-07-15 12:42:27','fc63fdc8-49d0-48d8-a22c-893210614635');

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
	(1,324,'en','<h3 class=\"styled\"><strong>About Apex</strong></h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,'2018-07-09 22:29:55','2018-07-14 15:11:42','2e1f7295-8df3-4190-acfb-0c0455db24e4'),
	(2,332,'en','<h3 class=\"styled center-text\"> <strong>recording studio</strong> </h3>\n<p>10 Hour session - <strong>From £220 Per Session</strong> (Engineer included) Hourly rate outside of session bookings - <strong>£25</strong>.</p>\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young / new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.</p>\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.</p>',1,'2018-07-10 22:44:31','2018-07-14 13:56:37','58f4027e-e3c2-4dc1-8ad0-1db4a84305cb'),
	(3,333,'en','<h3 class=\"styled center-text\">\n			<strong>rehersal facilities</strong>\n		</h3>\n<p>£10 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\n			£25 for 3 hours) Opening hours and time slots are subject to availability.</p>\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\n			day\n		</p>',0,'2018-07-10 23:05:04','2018-07-14 13:56:37','6bfecbf8-a3b0-4164-bfec-ffdcdb90ed95'),
	(4,342,'en','<h3 class=\"styled\"><strong>basic guitar / bass setup</strong></h3>\n<ul class=\"repairs\"><li><em class=\"fas fa-check\"></em> String change </li>\n			<li><em class=\"fas fa-check\"></em> Fretboard oil/conditioned </li>\n			<li> <em class=\"fas fa-check\"></em> Pots &amp; Switches cleaned and lubricated </li>\n			<li> <em class=\"fas fa-check\"></em> Solder points touched up </li>\n			<li> <em class=\"fas fa-check\"></em> Action adjusted to make guitar/bass have optimum playability </li>\n			<li> <em class=\"fas fa-check\"></em> Intonation set </li>\n			<li> <em class=\"fas fa-check\"></em> Tuners lubricated </li>\n			<li> <em class=\"fas fa-check\"></em> All around basic clean</li>\n			</ul><p class=\"repair-price\">from £25 (exc strings)</p>',0,'2018-07-14 15:07:42','2018-07-15 10:55:54','b32781c5-bf79-41ba-8ebd-2c88cc488d65'),
	(5,343,'en','<h3 class=\"styled\"><strong>full guitar / bass setup</strong></h3>\n<ul class=\"repairs\"><li><em class=\"fas fa-check\"></em> Includes everything from a basic set-up</li>\n			<li><em class=\"fas fa-check\"></em> Fret level</li>\n			<li> <em class=\"fas fa-check\"></em> Fret crown </li>\n			<li> <em class=\"fas fa-check\"></em> fret Polish</li>\n		</ul><p class=\"repair-price\">from £70</p>',1,'2018-07-14 15:07:42','2018-07-15 10:55:54','f5dd9b6a-a584-4896-85cf-2bd53b716c76'),
	(6,344,'en','<h3 class=\"styled\"><strong>full re-fret</strong></h3>\n<ul class=\"repairs\"><li><em class=\"fas fa-check\"></em> Multiple types of fret wire available</li>\n			<li><em class=\"fas fa-check\"></em> Price will vary depending on fret wire type and for specific guitars</li>\n		</ul><p class=\"repair-price\">from £120</p>',0,'2018-07-14 15:07:42','2018-07-15 10:55:54','0fa2d8a7-7771-46a6-81f7-42dc1df7de03');

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
	(1,314,'en','2018-07-08 13:54:49','2018-07-14 12:31:45','f1a2f228-e79e-42b3-9719-ba302cfd8f60'),
	(2,315,'en','2018-07-08 14:00:19','2018-07-14 12:31:45','698d087b-73ee-467c-ac1b-8a39190e0d68'),
	(3,316,'en','2018-07-08 14:00:19','2018-07-14 12:31:45','a61aaa09-7ff4-4990-be41-8ae34d9d4b73'),
	(4,317,'en','2018-07-08 14:00:19','2018-07-14 12:31:45','21b47059-768f-466b-a4f2-e712db79c0f9'),
	(5,318,'en','2018-07-08 14:00:19','2018-07-14 12:31:45','42451f1a-fc61-4965-9476-0068aec27cab');

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
	(1,319,'en','Apex Pickups','SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.','/','2018-07-08 16:28:44','2018-07-14 12:31:45','1836bb80-965d-47bf-982b-0b82caafbb2d'),
	(2,320,'en','Apex Studio','SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.','/apex-studio','2018-07-08 16:31:00','2018-07-14 12:31:45','c92bfbbf-3359-4f64-994f-4b3e2780886f'),
	(3,321,'en','INSTRUMENT REPAIRS','TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.','/instrument-repairs','2018-07-08 16:43:10','2018-07-14 12:31:45','89c45f51-043d-4212-bb48-7be55a122bb6');

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
	(1,322,'en','PAT MCMANUS','Pickups: Apex 50\'s','View Pickups','','2018-07-08 18:53:16','2018-07-14 12:31:45','85f21c59-4dbe-434b-88fc-7124f6b9d76d'),
	(2,323,'en','Test Title','Test Subtitle','View','','2018-07-08 18:53:16','2018-07-14 12:31:45','3f279c3a-a721-4961-b5a0-94934d85d215'),
	(3,329,'en','SPACE, THE FINAL FRONTIER.','','','','2018-07-10 22:20:53','2018-07-14 13:56:36','289d2c6f-3c8a-47c5-b79c-45b1a8a76215'),
	(4,330,'en','','','','','2018-07-10 22:20:53','2018-07-14 13:56:37','ff5d45ff-a44e-4e4f-a3c7-dfdcfa08b7b5'),
	(5,331,'en','','','','','2018-07-10 22:20:53','2018-07-14 13:56:37','df0988f1-dec5-4e30-bb06-bf54f5834c6f');

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

LOCK TABLES `craft_matrixcontent_pricinglist` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_pricinglist` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_pricinglist` (`id`, `elementId`, `locale`, `field_product_productName`, `field_product_description`, `field_product_price`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,334,'en','Package 1','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-07-14 13:56:37','25147501-56a0-478b-bf4d-588a062e9daf'),
	(2,335,'en','Package 2','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-07-14 13:56:37','9c6be4f7-eac8-4557-9ba2-f380ed16dff1'),
	(3,336,'en','Package 3','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-07-14 13:56:37','191b7034-a749-4927-87d5-3d108836f201'),
	(4,337,'en','Package 4','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-07-14 13:56:37','0cf36bce-a7e0-46f9-b7b6-780a3c042df8'),
	(5,338,'en','Package 5','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-07-14 13:56:37','941c4c7e-5742-4583-a969-84956575499e'),
	(6,339,'en','Package 6','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-07-14 13:56:37','ee6eb816-534e-404c-9dfa-9e0cbb3fb2dc'),
	(7,345,'en','string change','(Guitar only. Including Strings), £5 + your choice of strings (Bass)','£1o','2018-07-15 10:31:57','2018-07-15 10:55:54','9d8c6734-f48f-4eaa-96fd-8a56ffe4dd59'),
	(8,346,'en','headstock/neck repair','This is a structural repair only. Any cosmetic repairs will be extra.','£60','2018-07-15 10:31:57','2018-07-15 10:55:55','e2db06ca-bba8-4449-9f11-6b65ca490ad3'),
	(9,347,'en','Package 1','8 hour live session shoot with full crew (4k)','£1199','2018-07-15 10:31:57','2018-07-15 10:55:55','dd93a9f6-e3dc-4395-a066-55cf87b16eb3'),
	(10,348,'en','Package 1','8 hour live session shoot with full crew (4k)','£1199','2018-07-15 10:31:57','2018-07-15 10:55:55','89e1e50f-945f-45bf-aad3-ccd8da7007d0');

/*!40000 ALTER TABLE `craft_matrixcontent_pricinglist` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,325,'en','ORAN MCGUCKIN','Owner & creator','2018-07-10 20:35:03','2018-07-14 15:11:42','82dc0975-7c0b-4142-9c82-4c53d37b7b53'),
	(2,326,'en','DANI ROONEY','Video & photography','2018-07-10 20:35:03','2018-07-14 15:11:42','098c7d14-be06-4f8a-b59a-64c3b16f4ae7'),
	(3,327,'en','GRAHAM MCKINSTRY','Social Media, marketing & management','2018-07-10 20:35:03','2018-07-14 15:11:42','2ea35665-be6e-4fcf-b896-6fe319242f95'),
	(4,328,'en','WILLIAM MARTIN','Workshop apprentice','2018-07-10 20:35:03','2018-07-14 15:11:42','4bdb5969-3096-4f6b-b2cb-be55079ad792');

/*!40000 ALTER TABLE `craft_matrixcontent_teamgrid` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_videoblock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_videoblock`;

CREATE TABLE `craft_matrixcontent_videoblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_block_textBlock` text COLLATE utf8_unicode_ci,
  `field_block_iframeLink` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_videoblock_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_videoblock_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_videoblock_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_videoblock_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_videoblock` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_videoblock` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_videoblock` (`id`, `elementId`, `locale`, `field_block_textBlock`, `field_block_iframeLink`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,340,'en','<p class=\"bigger\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\n				photography services. </p>\n			<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n				Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n			<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\n				occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>','https://www.youtube.com/embed/bTqVqk7FSmY','2018-07-14 13:56:37','2018-07-14 13:56:37','3ceeaf7b-1d38-4d24-85c9-32ed95be996e');

/*!40000 ALTER TABLE `craft_matrixcontent_videoblock` ENABLE KEYS */;
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
	(1,'Menus','0.9',NULL,NULL,'unknown',1,'[]','2018-07-05 21:54:01','2018-07-05 21:54:01','2018-07-15 12:39:09','674d3e8d-8597-46ac-a5df-6852619f6bd2');

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
	(817,86,322,NULL,262,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','66246d29-0f23-4788-a81a-d1967ac8f00f'),
	(819,86,323,NULL,258,1,'2018-07-08 18:53:17','2018-07-08 18:53:17','a6440d9b-5838-4286-b031-d44fa43e6c21'),
	(855,100,314,NULL,279,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','cb33457c-f185-4b43-9cf8-d7670aa7ddbb'),
	(856,100,315,NULL,280,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','3f12c967-46a2-4f78-87b8-d2a1a52ec0f6'),
	(857,100,316,NULL,281,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','c5eb8cc8-807a-4c4b-96dd-ddcf1478d6ed'),
	(858,100,317,NULL,282,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','2da92dbd-05d1-41bb-a409-8c321af02e27'),
	(859,100,318,NULL,283,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','7849ade9-94af-4a5e-ab9a-878b5d45c5c8'),
	(860,103,319,NULL,303,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','89fc9d6f-d928-4a40-9346-257cfc667ae2'),
	(861,103,320,NULL,306,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','34825942-9b0e-4b37-8c09-72c6b334a0a7'),
	(862,103,321,NULL,277,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','191760a8-0eb9-4059-9534-7d654005cbb1'),
	(863,83,322,NULL,301,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','6cc0d47f-67b4-47e1-924f-140fe34ee78a'),
	(864,83,323,NULL,303,1,'2018-07-14 12:31:45','2018-07-14 12:31:45','5a199f4f-2ca8-42f4-bcff-0c1cdaa6a4d4'),
	(880,83,329,NULL,279,1,'2018-07-14 13:56:36','2018-07-14 13:56:36','da65a079-6170-4cdd-b6d6-c8623783704b'),
	(881,83,330,NULL,280,1,'2018-07-14 13:56:37','2018-07-14 13:56:37','06f5676e-4bd6-4fae-a703-11dbd11c59f4'),
	(882,83,331,NULL,288,1,'2018-07-14 13:56:37','2018-07-14 13:56:37','813411cf-5e14-4d85-af61-6ab13ce8a274'),
	(883,98,332,NULL,288,1,'2018-07-14 13:56:37','2018-07-14 13:56:37','0e0560c1-99aa-43b7-9df6-5490e6dad922'),
	(884,98,333,NULL,283,1,'2018-07-14 13:56:37','2018-07-14 13:56:37','96417bc7-315b-4395-b641-496e1f4920ae'),
	(890,98,324,NULL,276,1,'2018-07-14 15:11:42','2018-07-14 15:11:42','c5d53bc1-2e62-4fbe-90a9-09241b3b8821'),
	(891,107,325,NULL,310,1,'2018-07-14 15:11:42','2018-07-14 15:11:42','e8545ded-d204-41ca-b2cd-82e7874bb39b'),
	(892,107,326,NULL,307,1,'2018-07-14 15:11:42','2018-07-14 15:11:42','8da65b73-f9cc-4608-9f24-082d0207c745'),
	(893,107,327,NULL,309,1,'2018-07-14 15:11:42','2018-07-14 15:11:42','d30a0350-31ec-44ad-9038-e5ceb2abc126'),
	(894,107,328,NULL,311,1,'2018-07-14 15:11:42','2018-07-14 15:11:42','d66d8bc5-8605-46fb-8a9e-199f561ad36f'),
	(907,91,259,NULL,303,1,'2018-07-15 10:55:54','2018-07-15 10:55:54','f3ae8dc9-ec16-4801-aafd-7adcc68fd51a'),
	(908,98,342,NULL,288,1,'2018-07-15 10:55:54','2018-07-15 10:55:54','a728f980-9d06-49da-a610-2658e3223749'),
	(909,98,343,NULL,279,1,'2018-07-15 10:55:54','2018-07-15 10:55:54','591cedf5-c67c-43cf-841b-cb6d5bab7a2f'),
	(910,98,344,NULL,279,1,'2018-07-15 10:55:54','2018-07-15 10:55:54','daff7781-1de8-4935-919c-03889bd95c5e'),
	(913,15,350,NULL,292,1,'2018-07-15 12:42:27','2018-07-15 12:42:27','7915acb4-1396-45e1-8435-5b917be0c41c');

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
	(5,'field',6,'en',''),
	(5,'field',7,'en',' right '),
	(5,'slug',0,'en',''),
	(340,'field',114,'en',' https www youtube com embed btqvqk7fsmy '),
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
	(340,'field',113,'en',' we have a range of packages to suit all needs and budgets please get in touch if you would like avail of our video and photography services lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(319,'slug',0,'en',''),
	(319,'field',105,'en',''),
	(319,'field',104,'en',' shop our range of hand crafted pickups your tone quest starts here '),
	(319,'field',103,'en',' pickups bg '),
	(319,'field',102,'en',' apex pickups '),
	(258,'field',112,'en',' https www youtube com embed btqvqk7fsmy we have a range of packages to suit all needs and budgets please get in touch if you would like avail of our video and photography services lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(339,'slug',0,'en',''),
	(339,'field',95,'en',' 1199 '),
	(339,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(339,'field',93,'en',' package 6 '),
	(74,'extension',0,'en',' png '),
	(74,'kind',0,'en',' image '),
	(74,'slug',0,'en',' about '),
	(74,'title',0,'en',' about '),
	(74,'filename',0,'en',' gallery_1 png '),
	(74,'field',16,'en',''),
	(74,'field',17,'en',''),
	(74,'field',4,'en',' how we think the philosophy of happy lager is one third working hard and two thirds happy accidents left serendipity is a core part of how we work et iusto odio dignissimos ducimus qui blanditii raesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis right deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in our story it all begins in a living room with a six pack and a clamshell ibook macbook table left right small beginnings is the starting point of every hero s story at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis our people robin richards christopher robinson jonathan abbot '),
	(351,'field',5,'en',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum section 1 10 32 of de finibus bonorum et malorum written by cicero in 45 bc sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem ut enim ad minima veniam quis nostrum exercitationem ullam corporis suscipit laboriosam nisi ut aliquid ex ea commodi consequatur quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum qui dolorem eum fugiat quo voluptas nulla pariatur '),
	(74,'field',18,'en',''),
	(74,'field',19,'en',''),
	(74,'field',24,'en',''),
	(237,'field',68,'en',' left '),
	(243,'field',5,'en',' deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit luptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in '),
	(237,'slug',0,'en',''),
	(74,'field',25,'en',''),
	(74,'field',20,'en',''),
	(74,'field',21,'en',''),
	(74,'field',26,'en',''),
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
	(338,'slug',0,'en',''),
	(338,'field',95,'en',' 1199 '),
	(338,'field',93,'en',' package 5 '),
	(338,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(337,'slug',0,'en',''),
	(337,'field',95,'en',' 1199 '),
	(337,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(337,'field',93,'en',' package 4 '),
	(336,'slug',0,'en',''),
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
	(334,'field',93,'en',' package 1 '),
	(334,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(334,'field',95,'en',' 1199 '),
	(334,'slug',0,'en',''),
	(335,'field',93,'en',' package 2 '),
	(335,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(335,'field',95,'en',' 1199 '),
	(335,'slug',0,'en',''),
	(336,'field',93,'en',' package 3 '),
	(336,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(336,'field',95,'en',' 1199 '),
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
	(257,'field',1,'en',' get in touch if you d like to use any of our services '),
	(327,'field',109,'en',' social media marketing management '),
	(327,'field',108,'en',' graham mckinstry '),
	(327,'field',107,'en',' team graham '),
	(326,'slug',0,'en',''),
	(326,'field',109,'en',' video photography '),
	(326,'field',108,'en',' dani rooney '),
	(325,'slug',0,'en',''),
	(326,'field',107,'en',' team dani '),
	(260,'field',76,'en',' 0759 1132 008 '),
	(325,'field',109,'en',' owner creator '),
	(325,'field',108,'en',' oran mcguckin '),
	(350,'title',0,'en',' introducing the team pete '),
	(351,'slug',0,'en',''),
	(350,'field',15,'en',' blog post 1 '),
	(350,'field',47,'en',' pete is probably the most important member of the team and has a job list as long as orans hair pete keeps an eye on the workshop keeps away intruders and makes sure everything is in order all the while flashing his signature toothy grin '),
	(106,'slug',0,'en',' how its made '),
	(106,'title',0,'en',' how it s made '),
	(107,'slug',0,'en',''),
	(107,'title',0,'en',' how it s made '),
	(108,'slug',0,'en',' services '),
	(108,'title',0,'en',' how it s made '),
	(80,'field',15,'en',''),
	(80,'field',47,'en',''),
	(109,'slug',0,'en',' how its made '),
	(109,'title',0,'en',' how it s made '),
	(110,'slug',0,'en',''),
	(110,'title',0,'en',' how it s made '),
	(111,'slug',0,'en',' services '),
	(111,'title',0,'en',' how it s made '),
	(112,'slug',0,'en',' services '),
	(112,'title',0,'en',' how it s made '),
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
	(343,'field',97,'en',' full guitar bass setup includes everything from a basic set up fret level fret crown fret polish from 70 '),
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
	(260,'field',37,'en',' unit 3 derrycrin roadbt80 0hjcookstown '),
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
	(260,'field',81,'en',' 14 sullenboy parkbt80 8hpcookstown '),
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
	(324,'field',110,'en',' 1 '),
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
	(74,'field',96,'en',' about images 1 1 about apex lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(323,'slug',0,'en',''),
	(323,'field',87,'en',' view '),
	(282,'extension',0,'en',' jpg '),
	(282,'filename',0,'en',' apex studio 4 jpg '),
	(282,'field',47,'en',''),
	(281,'title',0,'en',' apex studio 3 '),
	(260,'slug',0,'en',''),
	(281,'slug',0,'en',' apex studio 3 '),
	(281,'kind',0,'en',' image '),
	(258,'field',88,'en',' includefeed '),
	(323,'field',86,'en',''),
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
	(322,'field',86,'en',''),
	(258,'field',92,'en',' 8 hour live session shoot with full crew 4k 1199 package 1 8 hour live session shoot with full crew 4k 1199 package 2 8 hour live session shoot with full crew 4k 1199 package 3 8 hour live session shoot with full crew 4k 1199 package 4 8 hour live session shoot with full crew 4k 1199 package 5 8 hour live session shoot with full crew 4k 1199 package 6 '),
	(322,'field',85,'en',' pickups apex 50 s '),
	(322,'field',84,'en',' pat mcmanus '),
	(322,'field',83,'en',' pat '),
	(2,'field',88,'en',' includefeed '),
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
	(2,'field',82,'en',' pat view pickups pickups apex 50 s pat mcmanus pickups bg view test subtitle test title '),
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
	(343,'field',98,'en',' apex studio 1 '),
	(343,'field',110,'en',' 1 '),
	(343,'slug',0,'en',''),
	(344,'field',97,'en',' full re fret multiple types of fret wire available price will vary depending on fret wire type and for specific guitars from 120 '),
	(344,'field',98,'en',' apex studio 1 '),
	(344,'field',110,'en',' 0 '),
	(344,'slug',0,'en',''),
	(345,'field',93,'en',' string change '),
	(345,'field',94,'en',' guitar only including strings 5 your choice of strings bass '),
	(345,'field',95,'en',' 1o '),
	(345,'slug',0,'en',''),
	(346,'field',93,'en',' headstock neck repair '),
	(346,'field',94,'en',' this is a structural repair only any cosmetic repairs will be extra '),
	(346,'field',95,'en',' 60 '),
	(346,'slug',0,'en',''),
	(347,'field',93,'en',' package 1 '),
	(347,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(347,'field',95,'en',' 1199 '),
	(347,'slug',0,'en',''),
	(348,'field',93,'en',' package 1 '),
	(348,'field',94,'en',' 8 hour live session shoot with full crew 4k '),
	(348,'field',95,'en',' 1199 '),
	(348,'slug',0,'en',''),
	(195,'field',11,'en',' seo from happy lager is the best '),
	(195,'field',12,'en',' one lucky customer '),
	(195,'field',13,'en',' center '),
	(195,'slug',0,'en',''),
	(342,'field',97,'en',' basic guitar bass setup string change fretboard oil conditioned pots switches cleaned and lubricated solder points touched up action adjusted to make guitar bass have optimum playability intonation set tuners lubricated all around basic clean from 25 exc strings '),
	(342,'field',98,'en',' apex studio 9 '),
	(342,'field',110,'en',' 0 '),
	(342,'slug',0,'en',''),
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
	(340,'slug',0,'en',''),
	(259,'field',91,'en',' pickups bg '),
	(259,'field',2,'en',' instrument repairs all the latest carry on form the apex team all killer no filler '),
	(259,'field',96,'en',' apex studio 9 0 basic guitar bass setup string change fretboard oil conditioned pots switches cleaned and lubricated solder points touched up action adjusted to make guitar bass have optimum playability intonation set tuners lubricated all around basic clean from 25 exc strings apex studio 1 1 full guitar bass setup includes everything from a basic set up fret level fret crown fret polish from 70 apex studio 1 0 full re fret multiple types of fret wire available price will vary depending on fret wire type and for specific guitars from 120 '),
	(259,'field',92,'en',' guitar only including strings 5 your choice of strings bass 1o string change this is a structural repair only any cosmetic repairs will be extra 60 headstock neck repair 8 hour live session shoot with full crew 4k 1199 package 1 8 hour live session shoot with full crew 4k 1199 package 1 '),
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
	(74,'field',1,'en',' we set out with a simple goal create the design and products that we would like to see '),
	(74,'field',2,'en',' we are a group of highly effective passionate people ready to take your product to the next level temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis '),
	(241,'field',5,'en',' small beginnings is the starting point of every hero s story at vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis '),
	(241,'slug',0,'en',''),
	(243,'field',68,'en',' right '),
	(243,'slug',0,'en',''),
	(241,'field',68,'en',' right '),
	(350,'field',1,'en',''),
	(350,'field',4,'en',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum section 1 10 32 of de finibus bonorum et malorum written by cicero in 45 bc sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem ut enim ad minima veniam quis nostrum exercitationem ullam corporis suscipit laboriosam nisi ut aliquid ex ea commodi consequatur quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur vel illum qui dolorem eum fugiat quo voluptas nulla pariatur '),
	(350,'slug',0,'en',' introducing the team pete ');

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
	(9,1,'2450b6d96c39d544ad532f513da382ab790bce85czozMjoiTmkzb09ydndyY0k0U1dLS0dQb0dvZjZjZEkyck1OcU4iOw==','2018-07-10 20:19:54','2018-07-10 20:19:54','cb467a18-1349-4bc9-a800-1b49edb01938'),
	(10,1,'507e434e305da51d340d2621a656301cbb8d9223czozMjoiaHNqSUNvU3V5Q3RVSmpwYnE2T0xWcXNrNVk5dFZnZTIiOw==','2018-07-11 07:20:55','2018-07-11 07:20:55','c35e1154-022f-41fb-bb80-d5ea66f6d848'),
	(11,1,'a8e1e897fc6ef28033d8549b1b5f932b8b88944fczozMjoiZTBpNkZTOFR1aEx+OTVOUG5SblVMeDFSVmg4clE2SkoiOw==','2018-07-14 12:30:46','2018-07-14 12:30:46','185e0101-ee82-4455-85a4-2b1aab615da3'),
	(12,1,'53dab880ede7f405e1224da8a5f84bf2d7ab08e3czozMjoiOXZiT0xOb2pXak5Nam91STZYc2FBeG1UNDdVaTJiRksiOw==','2018-07-15 10:28:48','2018-07-15 10:28:48','faa83d54-4140-4a8c-88ed-cd545980f2e6');

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
	(1,'admin',NULL,'','','info@refresh-digital.com','$2a$13$5j8bSRoKQZipjtIg6FXWR.kGRR3UfCL.QeMIt2yTRH1.hCNHLQKtq',NULL,0,1,0,0,0,0,0,'2018-07-15 10:28:48','::1',NULL,NULL,'2018-07-15 10:28:27',NULL,NULL,NULL,NULL,0,NULL,'2016-08-22 18:42:37','2018-07-15 10:28:48','953aedcd-73c8-4677-b0c5-4241e8fbb14c');

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
