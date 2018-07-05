# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: Apex-Music
# Generation Time: 2018-07-05 23:10:41 +0000
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
	(6,1,1,'water-barley-hops.jpg','image',1420,728,182308,'2014-09-14 15:08:19','2014-07-30 22:55:13','2015-02-02 04:40:03','a4061a60-44da-4bdd-baeb-5ea173f34024'),
	(7,1,1,'laptop-desk.jpg','image',440,250,23028,'2014-09-14 15:08:17','2014-07-30 22:57:57','2015-02-02 04:39:57','2c80cb43-4d61-4ce5-9a3d-bfe4b5f4628a'),
	(8,1,1,'coffee-shop.jpg','image',1420,1360,344802,'2014-09-14 15:08:20','2014-07-30 23:01:25','2015-02-02 04:39:53','374e774f-539c-4d1d-b253-7bd5e70d121d'),
	(23,1,1,'augmented-reality.jpg','image',1420,1020,121601,'2014-09-14 15:08:18','2014-07-31 22:02:47','2015-02-02 04:39:52','3fcaa874-780d-4d64-bbc6-3939af253f04'),
	(28,1,1,'video.jpg','image',440,250,10690,'2014-09-14 15:08:17','2014-07-31 22:08:34','2015-02-02 04:40:02','194e3a17-676e-4bb8-b4c7-395f990ad7cc'),
	(29,1,1,'augmented-reality-icons.png','image',960,102,4733,'2014-09-14 15:08:28','2014-07-31 22:19:29','2015-02-02 04:39:52','7252a798-5d07-4427-977f-81db061b5f01'),
	(40,1,1,'awesome-cities.jpg','image',416,215,34386,'2014-09-14 15:08:16','2014-07-31 22:22:21','2015-02-02 04:39:52','20d28672-0cbd-4c3e-addb-0af288ea04a4'),
	(42,1,1,'fist.jpg','image',1420,904,254933,'2014-09-14 15:08:18','2014-07-31 23:14:44','2015-02-02 04:39:56','90b99d72-3104-4e84-9be8-82384c79f524'),
	(44,1,1,'pong.png','image',1420,394,6575,'2014-09-14 15:09:02','2014-07-31 23:18:18','2015-02-02 04:39:59','676cef56-6788-4b48-87bf-91058001e9f6'),
	(59,1,1,'gallery.png','image',1440,480,715290,'2014-09-14 15:10:46','2014-08-06 20:36:49','2015-02-02 04:39:56','a58240ce-a8d4-465c-9545-f128cd84f6b3'),
	(60,1,1,'bar.jpg','image',960,463,94182,'2014-09-14 15:08:17','2014-08-06 21:31:46','2015-02-02 04:39:52','4c204c73-0ace-4d40-aac0-04e6deeb3840'),
	(72,1,1,'macbook.jpg','image',440,284,23739,'2014-09-14 15:08:17','2014-08-06 21:33:56','2015-02-02 04:39:57','04cb3cc1-ae5a-4788-82e5-b9ef3176f9c3'),
	(82,1,1,'diva-interface-work.jpg','image',1400,324,50231,'2014-09-28 16:31:31','2014-09-23 03:06:38','2015-02-02 04:39:55','64c79f89-b616-40c9-b6f8-d580b78bf6a2'),
	(83,1,1,'diva-interface-detail.png','image',622,331,603612,'2014-09-23 03:10:32','2014-09-23 03:10:32','2015-02-02 04:39:54','0e8847ba-7ed8-42d0-bd87-066eebd39f14'),
	(84,1,1,'diva-mobile-detail.png','image',640,1136,108139,'2014-09-28 16:31:31','2014-09-23 03:15:27','2015-02-02 04:39:55','74f757f0-4e9b-4f64-86eb-dbd714b2a9ff'),
	(98,1,1,'news-link-1-image.jpg','image',283,204,369861,'2014-10-03 02:21:34','2014-10-03 02:21:34','2015-02-02 04:39:58','5ca307e8-896c-4c55-9b90-89b9a7219788'),
	(100,1,1,'news-link-2-image.jpg','image',283,204,367515,'2014-10-03 03:31:00','2014-10-03 03:31:00','2015-02-02 04:39:58','d59dda1e-5e9a-4eab-a299-81196c160f95'),
	(102,1,1,'news-entry-1-image.jpg','image',283,204,382424,'2014-10-03 03:33:52','2014-10-03 03:33:52','2015-02-02 04:39:58','09404fd4-7ff5-426a-a77b-8462668fc6d5'),
	(104,1,1,'diva-cover.jpg','image',570,345,392042,'2014-10-03 03:58:05','2014-10-03 03:58:05','2015-02-02 04:39:54','90f7b27d-5935-47fc-9776-180a9eaca5d7'),
	(115,1,1,'email-marketing.jpg','image',284,204,352431,'2014-10-04 15:35:41','2014-10-04 15:35:41','2015-02-02 04:39:55','90a30e26-e27f-48ef-bf41-89a715b67424'),
	(121,1,1,'seo.jpg','image',284,204,356107,'2014-10-04 15:42:04','2014-10-04 15:42:04','2015-02-02 04:40:00','406af95b-527d-4c8e-8205-ca094ae5eb6c'),
	(123,1,1,'app-development.jpg','image',284,204,354634,'2014-10-04 15:46:51','2014-10-04 15:46:51','2015-02-02 04:39:52','7e9252f2-8d14-4c38-b262-e704edefd378'),
	(125,1,1,'strategy.jpg','image',284,204,366918,'2014-10-04 15:47:46','2014-10-04 15:47:46','2015-02-02 04:40:02','aa544a56-175f-402e-a7ff-20ae44d06af3'),
	(127,1,1,'development.jpg','image',284,204,344439,'2014-10-04 15:48:41','2014-10-04 15:48:41','2015-02-02 04:39:54','a0988eaf-f4e2-430f-8835-3293c685af0c'),
	(131,1,1,'on-track-thumb.jpg','image',284,204,140750,'2014-10-05 03:08:45','2014-10-05 03:08:45','2015-02-02 04:39:59','0b4a64c9-9e9d-4e34-b348-96e530258f30'),
	(132,1,1,'sports-r-us-thumb.jpg','image',283,204,139546,'2014-10-05 03:08:45','2014-10-05 03:08:45','2015-02-02 04:40:00','e876ba98-1a17-450c-9e63-adc0e790c5c8'),
	(134,1,1,'hero-image.jpg','image',1450,916,246984,'2014-10-06 01:49:48','2014-10-06 01:49:48','2015-02-02 04:39:56','2fa678ca-6edb-46e6-8b83-02e23bb41dcf'),
	(135,1,1,'larry-page.png','image',84,84,151220,'2014-10-07 03:41:24','2014-10-07 03:41:24','2015-02-04 15:07:12','9f4d0006-dc9f-411e-b62d-b2a00c4113f1'),
	(137,1,1,'ryan-reynolds.png','image',84,84,150711,'2014-10-07 03:43:58','2014-10-07 03:43:58','2015-02-04 15:13:25','927eb8d3-348a-4700-8b5e-85648318346e'),
	(140,1,1,'bob-guff.png','image',84,84,148537,'2014-10-07 03:45:38','2014-10-07 03:45:39','2015-02-04 15:08:25','a006d888-2772-4873-9958-9fa9588872e6'),
	(141,2,2,'logo-coke.png','image',165,75,142639,'2014-10-07 03:48:12','2014-10-07 03:48:12','2014-10-07 03:48:12','b3f0c9ae-90f4-4a51-ba73-b693424572d9'),
	(142,2,2,'logo-google.png','image',165,75,140641,'2014-10-07 03:48:21','2014-10-07 03:48:21','2014-10-07 03:48:21','5747ab5f-5aee-4b20-a700-a0a2240faf8c'),
	(143,2,2,'logo-Jetblue.png','image',165,75,139791,'2014-10-07 03:48:30','2014-10-07 03:48:30','2014-10-07 03:48:30','c4705122-4f12-455a-a9af-763a50f7acbf'),
	(144,2,2,'logo-mtv.png','image',165,75,139584,'2014-10-07 03:48:40','2014-10-07 03:48:41','2014-10-07 03:48:41','55217bfe-357d-4822-80e1-b863bcf41d29'),
	(145,2,2,'logo-newbelgium.png','image',165,75,141625,'2014-10-07 03:48:50','2014-10-07 03:48:50','2014-10-07 03:48:50','26ab2e59-2e73-4ef9-817a-91e27662354f'),
	(146,1,1,'sportsrus-bigfeature.jpg','image',1513,446,382101,'2014-10-09 03:37:12','2014-10-09 03:37:12','2015-02-02 04:40:00','d3bdbf75-064b-4eae-8f2f-a03946b5b779'),
	(147,1,1,'diva-bigimage.jpg','image',1500,493,410298,'2014-10-09 03:57:41','2014-10-09 03:57:41','2015-02-02 04:39:54','69cd61b4-86b3-43c5-9aee-da43fe9dbe7c'),
	(148,1,1,'ontrack-bigimage.jpg','image',1500,493,404370,'2014-10-09 04:20:25','2014-10-09 04:20:25','2015-02-02 04:39:59','d75826de-637a-472e-be66-ef89721da151'),
	(152,3,3,'app-development.svg','image',NULL,NULL,1842,'2014-11-12 21:42:23','2014-12-03 20:14:42','2014-12-03 20:14:42','53baf170-4450-46b5-9103-07873d81740d'),
	(153,3,3,'design.svg','image',NULL,NULL,2642,'2014-11-12 21:42:23','2014-12-03 20:14:42','2014-12-03 20:14:42','6af11d38-1939-4f0c-a66c-3c7e97512b9b'),
	(154,3,3,'email-marketing.svg','image',NULL,NULL,2055,'2014-11-12 21:42:23','2014-12-03 20:14:42','2014-12-03 20:14:42','3e87c14a-b147-4d0d-b9c2-aec0b64c4b01'),
	(155,3,3,'development.svg','image',NULL,NULL,2167,'2014-11-12 21:42:23','2014-12-03 20:14:43','2014-12-03 20:14:43','036e2a88-d9bc-4dc8-a418-b71ff55194cd'),
	(156,3,3,'seo.svg','image',NULL,NULL,1632,'2014-11-12 21:42:23','2014-12-03 20:14:43','2014-12-03 20:14:43','babaebd8-bbee-4c18-b8d7-065de24e336e'),
	(157,3,3,'strategy.svg','image',NULL,NULL,2118,'2014-11-12 21:42:23','2014-12-03 20:14:43','2014-12-03 20:14:43','ea267e86-001a-40c6-b083-210a89aec3c2'),
	(163,1,1,'discover.jpg','image',1200,394,372014,'2014-12-11 01:24:36','2014-12-11 01:24:36','2015-02-02 04:39:54','301a20b4-a847-4138-b226-71ffe3d1dc56'),
	(167,1,1,'explore.jpg','image',1200,394,378032,'2014-12-11 01:27:41','2014-12-11 01:27:41','2015-02-02 04:39:55','89819ada-21c0-4791-a4d9-b0b87259e75d'),
	(168,1,1,'create-genius.jpg','image',1200,394,392282,'2014-12-11 01:28:48','2014-12-11 01:28:48','2015-02-02 04:39:53','36fd3ebb-a0ec-4ba2-9ad5-45ab717dd492'),
	(183,1,1,'moosic-app-ui.jpg','image',700,522,394407,'2014-12-11 03:33:16','2014-12-11 03:33:17','2015-02-02 04:39:58','7a3aac39-6237-4ae5-b717-870cad8a0468'),
	(218,1,1,'chicago-office.jpg','image',700,424,408964,'2014-09-14 21:55:35','2015-02-02 04:39:53','2015-02-10 19:09:21','b608a81b-4d14-4dab-b84a-03594b09d4f1'),
	(219,1,1,'macbook-table.jpg','image',363,255,385499,'2014-09-14 21:36:43','2015-02-02 04:39:57','2015-02-02 04:39:57','dedf499b-e0e7-482e-92d0-a4c1a3132e93'),
	(220,1,4,'crystal.jpg','image',560,560,109638,'2016-08-22 18:34:32','2015-02-02 04:40:00','2016-08-22 18:34:32','275961f1-dfd0-40c7-8cb6-d1d6fe0aec8a'),
	(221,1,4,'travis.jpg','image',560,560,133092,'2016-08-22 18:34:42','2015-02-02 04:40:01','2016-08-22 18:34:42','af4861ec-1bea-4c47-9457-17e009c28576'),
	(222,1,4,'liz.jpg','image',560,560,131415,'2016-08-22 18:34:07','2015-02-02 04:40:01','2016-08-22 18:34:07','ed385526-c379-4237-b2fd-3c8afc9b0140'),
	(223,1,1,'skis.jpg','image',800,800,379214,'2015-02-02 16:57:36','2015-02-02 16:54:59','2015-02-02 16:57:40','6999843c-f3e8-4030-a04a-09d1e5317a08'),
	(249,1,1,'bike.jpg','image',283,273,30193,'2015-02-10 17:22:34','2015-02-10 17:22:34','2015-02-10 17:22:34','da811e48-5673-495f-b56c-1bdc3c471e5c'),
	(250,1,1,'glasses.jpg','image',283,273,22694,'2015-02-10 17:23:54','2015-02-10 17:23:54','2015-02-10 17:23:54','dd094c64-7943-4558-a90d-a0aac84a5b2a'),
	(251,1,1,'skateboard.jpg','image',283,273,14841,'2015-02-10 17:24:39','2015-02-10 17:24:39','2015-02-10 17:24:39','adee3d6b-8d52-4e48-9d1c-2e55261cdf47');

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
	(1,NULL,1,'Site Assets','','2014-07-30 22:43:56','2014-07-30 22:43:56','20095f95-422a-46cc-a5d0-3bc6b0a4da20'),
	(2,NULL,2,'Company Logos','','2014-10-07 03:38:14','2014-10-07 03:38:14','85c04c94-eca6-46de-9f54-ab1ee2b2f943'),
	(3,NULL,3,'Service Icons','','2014-12-03 20:02:16','2014-12-03 20:08:51','91c5cfca-e0a2-4de3-bd3b-f41381cf8331'),
	(4,1,1,'staff','staff/','2015-02-10 11:48:34','2015-02-10 11:48:39','904bf52d-5339-45d8-8347-87c15d5fa9f0');

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
	(1,'Site Assets','siteAssets','Local','{\"path\":\"{assetsBasePath}\\/site\\/\",\"url\":\"{assetsBaseUrl}\\/site\\/\",\"publicURLs\":true}',1,194,'2014-07-30 22:43:56','2016-03-09 20:04:45','0193dc64-5499-4e28-95dd-f8f603154851'),
	(2,'Company Logos','companyLogos','Local','{\"path\":\"{assetsBasePath}\\/logos\\/\",\"url\":\"{assetsBaseUrl}\\/logos\\/\",\"publicURLs\":true}',2,195,'2014-10-07 03:38:14','2016-03-09 20:04:45','7d6a9bef-727c-4a0c-9791-4f423956de69'),
	(3,'Service Icons','serviceIcons','Local','{\"path\":\"{assetsBasePath}\\/images\\/service-icons\\/\",\"url\":\" {assetsBaseUrl}\\/images\\/service-icons\\/\",\"publicURLs\":true}',3,196,'2014-12-03 20:02:16','2016-03-09 20:04:45','3fc34ff2-8da7-4a35-8147-f0a2e01392b9');

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
	(1,134,'hero-image.jpg',NULL,'_AUTOx916_crop_center-center',1,1,0,'2018-06-24 18:01:13','2018-06-24 18:01:13','2018-06-24 18:01:17','cca5e24d-5c6e-477e-b869-c30e37164084'),
	(2,132,'sports-r-us-thumb.jpg',NULL,'_thumb',1,1,0,'2018-06-24 18:01:13','2018-06-24 18:01:13','2018-06-24 18:01:16','923c0692-75aa-4eed-b904-f56ad1f77ba2'),
	(3,104,'diva-cover.jpg',NULL,'_thumb',1,1,0,'2018-06-24 18:01:14','2018-06-24 18:01:14','2018-06-24 18:01:16','6323b491-c36c-4407-b4cf-b595cfaa1798'),
	(4,131,'on-track-thumb.jpg',NULL,'_thumb',1,1,0,'2018-06-24 18:01:14','2018-06-24 18:01:14','2018-06-24 18:01:16','c5eba2c8-213f-4855-a985-ab217e7d65da'),
	(5,135,'larry-page.png',NULL,'_84x84_crop_center-center',1,1,0,'2018-06-24 18:01:14','2018-06-24 18:01:14','2018-06-24 18:01:16','e84439e9-dade-4c93-a61f-d326d09f8f1e'),
	(6,137,'ryan-reynolds.png',NULL,'_84x84_crop_center-center',1,1,0,'2018-06-24 18:01:14','2018-06-24 18:01:14','2018-06-24 18:01:16','08188c0f-f0a2-42e8-843a-168deb6322f2'),
	(7,140,'bob-guff.png',NULL,'_84x84_crop_center-center',1,1,0,'2018-06-24 18:01:14','2018-06-24 18:01:14','2018-06-24 18:01:16','7982fc86-00b5-4e34-ab83-e93e83adb156'),
	(8,219,NULL,NULL,'_360xAUTO_crop_center-center',1,0,1,'2018-07-03 20:41:18','2018-07-03 20:41:18','2018-07-03 20:41:18','ca607e98-8357-420b-925c-06401f8efa44'),
	(9,222,NULL,NULL,'_small',1,0,1,'2018-07-03 20:41:18','2018-07-03 20:41:18','2018-07-03 20:41:19','6d6eb8ee-47d1-43b1-8db9-f66d1bcc069e'),
	(10,220,NULL,NULL,'_small',1,0,1,'2018-07-03 20:41:18','2018-07-03 20:41:18','2018-07-03 20:41:19','38f1519d-f374-48aa-9cc6-09471a7ee601'),
	(11,221,NULL,NULL,'_small',1,0,1,'2018-07-03 20:41:18','2018-07-03 20:41:18','2018-07-03 20:41:18','038c69cd-b38a-4244-82c9-040c1cceef17');

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
	(3,'Thumb','thumb','crop','center-center',204,280,NULL,NULL,'2014-10-03 03:48:00','2014-10-03 03:48:00','2014-10-03 03:48:00','0f910d7c-0ba2-476a-a7c9-fa489255e601');

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
  `field_subheading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_addressOne` text COLLATE utf8_unicode_ci,
  `field_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_shortDescription` text COLLATE utf8_unicode_ci,
  `field_copyrightNotice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_contactUsLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_featuredEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_telephone` text COLLATE utf8_unicode_ci,
  `field_facebooklink` text COLLATE utf8_unicode_ci,
  `field_twitterLink` text COLLATE utf8_unicode_ci,
  `field_instagramLink` text COLLATE utf8_unicode_ci,
  `field_addressTwo` text COLLATE utf8_unicode_ci,
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

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_heading`, `field_body`, `field_subheading`, `field_addressOne`, `field_email`, `field_shortDescription`, `field_copyrightNotice`, `field_contactUsLabel`, `field_featuredEntry`, `field_telephone`, `field_facebooklink`, `field_twitterLink`, `field_instagramLink`, `field_addressTwo`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-29 18:21:32','2018-06-24 18:19:50','59077408-b18f-4041-8894-37cc7c7adff4'),
	(2,2,'en','Homepage','Welcome to Happylager.dev!','<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Happylager.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-29 18:21:35','2015-02-04 15:13:27','73fccf4e-5208-46d9-8f88-99e78ecf855e'),
	(4,4,'en','Barrel Aged Digital Natives','What’s more important?',NULL,'Experience or raw skill',NULL,NULL,'<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\r\n</p>',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2014-07-30 21:02:31','2018-06-24 18:35:59','8ff26e7c-5c9d-46a7-873b-c74425789122'),
	(5,6,'en','water-barley-hops',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-30 22:55:13','2015-02-02 04:40:03','a68629d1-4b98-4993-afe5-0c48f6b764ca'),
	(6,7,'en','laptop-desk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-30 22:57:57','2015-02-02 04:39:56','a271b7be-317d-4fec-966a-643ef947b8a4'),
	(7,8,'en','coffee-shop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-30 23:01:25','2015-02-02 04:39:53','35e4f7c8-d0a8-4e57-b3a4-50271a85ad7c'),
	(12,23,'en','augmented-reality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:02:47','2015-02-02 04:39:52','fffd2381-62dc-49fb-9995-1bac4fac7761'),
	(13,24,'en','The Future of Augmented Reality','Your iPhone Is No Longer a Way To Hide',NULL,'But is now a way to connect with the world',NULL,NULL,'<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\r\n</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:04:17','2018-06-24 18:35:59','6937fd4c-d3cb-47d0-b0c2-c9dc6ede5f07'),
	(16,28,'en','video',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:08:34','2015-02-02 04:40:02','a1bdd8fe-6660-426c-81bd-1cde9683b032'),
	(17,29,'en','augmented-reality-icons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:19:29','2015-02-02 04:39:52','19970bd8-b6fa-4ecc-a4a1-5c7ca77399af'),
	(18,40,'en','awesome-cities',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 22:22:21','2015-02-02 04:39:52','3ca1cbfa-7770-42ff-bc2e-038b6f18ebf5'),
	(19,42,'en','fist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:14:44','2015-02-02 04:39:56','ca7e0cc2-05e3-4ea2-ad2d-6a3595941a00'),
	(21,44,'en','pong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:18:18','2015-02-02 04:39:59','8e35f434-8919-40d0-b406-c0bba1516ff4'),
	(22,45,'en','Bringing Out Play','At the Crossroads of Good and Great',NULL,'Is a question of priority',NULL,NULL,'<p>\r\n	Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis.\r\n</p>',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2014-07-31 23:20:59','2018-06-24 18:36:00','a54a9de6-a9ca-4876-90eb-ddddc77a2454'),
	(25,59,'en','gallery',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-08-06 20:36:49','2015-02-02 04:39:56','9cb1e47a-d7cc-44e1-b67e-72810378f2d1'),
	(26,60,'en','bar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:31:46','2015-02-02 04:39:52','d16c45e0-93f6-4afc-a6b6-037d5679cddd'),
	(27,61,'en','How Deep the Rabbit Hole Goes','Make Complex Layouts',NULL,'Using Images and Pull Quotes All in the Flow of the Text',NULL,NULL,'<p>\r\n	Et harum quidem rerum facilis. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut.\r\n</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:32:48','2018-06-24 18:36:00','46fd1164-58a6-4604-88d8-4b148d74186e'),
	(28,72,'en','macbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-08-06 21:33:56','2015-02-02 04:39:57','0ddb9a58-9710-4284-968c-455706de870d'),
	(29,74,'en','About','We set out with a simple goal: create the design and products that we would like to see.','<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.</p>',NULL,'2701 West Thomas St Chicago, Il 60622','info@company.com',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-09-17 01:15:21','2015-02-10 18:08:01','91f0829c-6749-498c-9dd1-96680a3f0799'),
	(37,82,'en','diva-interface-work',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-09-23 03:06:38','2015-02-02 04:39:55','9c945a08-e0a0-4e77-854d-8161e107b910'),
	(38,83,'en','diva-interface-detail',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-09-23 03:10:32','2015-02-02 04:39:54','b31ba700-74ef-43b2-af92-13724fda89e2'),
	(39,84,'en','diva-mobile-detail',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-09-23 03:15:27','2015-02-02 04:39:55','9f369338-235a-4007-8284-0c17b1129328'),
	(40,98,'en','news-link-1-image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-03 02:21:34','2015-02-02 04:39:58','a577fb87-628d-4797-b694-867129d18270'),
	(41,99,'en','Fast Company Q&A with Robin Richards',NULL,NULL,NULL,NULL,NULL,'<p>The path to what I\'m doing started with not knowing what I wanted to do. I had to make a decision about what I wanted to do as I was graduating college, and I could not figure it out. I majored in English because I couldn\'t figure out how to express my love of...</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-03 02:21:54','2018-06-24 18:36:00','1961ec54-68af-4c16-b386-e730ed1fd599'),
	(42,100,'en','news-link-2-image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:31:00','2015-02-02 04:39:58','2e9a45bf-7e51-4aa6-9e15-7b2f99f79782'),
	(43,101,'en','Photography Folio featured on AWWWARDS.com',NULL,NULL,NULL,NULL,NULL,'<p>What a well developed site. I really enjoy the design and the attention to details and performance: great use of video and animations (with CSS3 and JS); categories section with so many images and video had a very good scroll frame rate...</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:31:13','2018-06-24 18:36:00','7fc79857-7d61-4d4e-851f-3ae10261214c'),
	(44,102,'en','news-entry-1-image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:33:52','2015-02-02 04:39:58','8fa37f37-b510-461f-b73a-f32eeea6800d'),
	(46,104,'en','diva-cover',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:58:05','2015-02-02 04:39:54','fbbc238b-9c3b-465c-8669-6d61acbab0fb'),
	(47,105,'en','DIVA! Becomes Famous','Vero eos et accusamus et iusto',NULL,'minus id quod maxime',NULL,NULL,'<p>\r\n	At the 2014 Webby Awards, Patton Oswald said that DIVA! “has done for women in the music industry what the 19th amendment did for women 100 years ago.\" Signissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non.\r\n</p>',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2014-10-03 03:58:26','2018-06-24 18:36:00','f4c25f37-19db-4730-b97e-c564f155c7d6'),
	(57,115,'en','email-marketing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-04 15:35:41','2015-02-02 04:39:55','66f9f324-e545-4343-be06-18ab3af1fa35'),
	(63,121,'en','seo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-04 15:42:04','2015-02-02 04:40:00','8bbaba30-3585-42e8-9c27-82114b518e55'),
	(65,123,'en','app-development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-04 15:46:51','2015-02-02 04:39:52','8b137872-a6a5-4f38-8bca-af27a827d63b'),
	(67,125,'en','strategy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-04 15:47:46','2015-02-02 04:40:02','41a8ddb4-44be-4477-942c-971e46513e32'),
	(69,127,'en','development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-04 15:48:41','2015-02-02 04:39:54','5aab3a13-2c4a-4a04-8691-a5ec3bdd34a3'),
	(73,131,'en','on-track-thumb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-05 03:08:45','2015-02-02 04:39:59','088c0d08-5737-4c28-b004-dec10980b5b9'),
	(74,132,'en','sports-r-us-thumb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-05 03:08:45','2015-02-02 04:40:00','6bd2466e-a4f7-4720-8df8-68c93a20bc34'),
	(76,134,'en','hero-image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-06 01:49:48','2015-02-02 04:39:56','37a09723-dbf0-4c96-a4d4-622a20a33730'),
	(77,135,'en','Larry Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:41:24','2015-02-04 15:07:12','c6bda605-e8ba-42c3-b563-fc06229a706f'),
	(78,137,'en','Ryan Reynolds',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:43:58','2015-02-04 15:13:25','8ed39033-664c-425e-b3ff-315d639f2058'),
	(79,140,'en','Bob Guff',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:45:39','2015-02-04 15:08:25','ec37bd30-3baa-4c07-a7d9-760ed717a58d'),
	(80,141,'en','logo-coke',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:48:12','2014-10-07 03:48:12','42338e81-f5b4-4c46-a10c-5bb82beee4d4'),
	(81,142,'en','logo-google',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:48:21','2014-10-07 03:48:21','8e99bbda-f9e0-4847-a208-5653d0e65544'),
	(82,143,'en','logo-Jetblue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:48:30','2014-10-07 03:48:30','b0da247d-f1bf-47e2-b896-27c7f95ba86a'),
	(83,144,'en','logo-mtv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:48:41','2014-10-07 03:48:41','d89a5d96-b2a0-4503-89e2-919ddad424ec'),
	(84,145,'en','logo-newbelgium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-07 03:48:50','2014-10-07 03:48:50','8dfdf9b6-08c9-42b9-b61b-ed5e289e6a0b'),
	(85,146,'en','sportsrus-bigfeature',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-09 03:37:12','2015-02-02 04:40:00','c3df3726-6736-4260-ab3c-718901ab5781'),
	(86,147,'en','diva-bigimage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-09 03:57:41','2015-02-02 04:39:54','4c59d8cd-22cc-477e-abd6-4db425317506'),
	(87,148,'en','ontrack-bigimage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-10-09 04:20:25','2015-02-02 04:39:59','c59a44fc-4cc6-45ee-a4b4-62251cfab8cf'),
	(89,152,'en','app-development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-03 20:14:42','2014-12-03 20:14:42','dc8e21ed-705a-423d-aff0-c84c9489a490'),
	(90,153,'en','design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-03 20:14:42','2014-12-03 20:14:42','bd767d3b-de69-48ab-a98b-e7766592c0ef'),
	(91,154,'en','email-marketing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-03 20:14:42','2014-12-03 20:14:42','09199d55-81cf-4f30-ba12-114de135b0b6'),
	(92,155,'en','development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-03 20:14:43','2014-12-03 20:14:43','42df080b-3dcd-47f7-b68d-726337fc2318'),
	(93,156,'en','seo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-03 20:14:43','2014-12-03 20:14:43','7a2c9dc7-58f0-4666-a117-95fbc1d7eb97'),
	(94,157,'en','strategy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-03 20:14:43','2014-12-03 20:14:43','4757b0ea-fe69-4839-a71e-b84eb1420bcd'),
	(95,163,'en','discover',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-11 01:24:36','2015-02-02 04:39:54','903f1520-c0f3-4ceb-9362-6608ffd65ab3'),
	(96,167,'en','explore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-11 01:27:41','2015-02-02 04:39:55','c214b69d-617d-4469-87a6-c261a2023bc8'),
	(97,168,'en','create-genius',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-11 01:28:48','2015-02-02 04:39:53','121c9d86-ad79-4e65-9bae-8ae7b2b9c9a3'),
	(98,183,'en','moosic-app-ui',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2014-12-11 03:33:16','2015-02-02 04:39:57','748a24b6-8d19-4521-ab36-7c903558823e'),
	(99,218,'en','Happy Lager Chicago',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-02 04:39:53','2015-02-10 19:09:21','ad2881d9-fdaa-46ab-9c3d-3acbf93388f7'),
	(100,219,'en','macbook-table',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-02 04:39:57','2015-02-02 04:39:57','55426fe3-e4b1-4adf-b57c-b7c526adcd8c'),
	(101,220,'en','Crystal Stevenson',NULL,NULL,NULL,NULL,NULL,'<p><strong>Crystal Stevenson</strong><br>CEO and Co-Founder</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-02 04:40:00','2016-08-22 18:35:19','3aa45852-8850-461f-bec0-ed1cef56c053'),
	(102,221,'en','Travis Morton',NULL,NULL,NULL,NULL,NULL,'<p><strong>Travis Morton</strong><br>Creative Director</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-02 04:40:01','2016-08-22 18:35:45','7ab5021c-ec9d-4a89-afb3-ad194bdc96ff'),
	(103,222,'en','Liz Murphy',NULL,NULL,NULL,NULL,NULL,'<p><strong>Liz Murphy</strong><br>President and Co-Founder</p>',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-02 04:40:01','2016-08-22 18:36:04','ee455f67-5465-4070-a012-ccfc7dbdd7d4'),
	(104,223,'en','skis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-02 16:54:58','2015-02-02 16:57:40','272131db-e7b8-4677-b5df-90e1c19801d6'),
	(109,249,'en','bike',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-10 17:22:34','2015-02-10 17:22:34','ec3f1138-d315-4dc0-92ba-7ed9b0c698d7'),
	(110,250,'en','glasses',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-10 17:23:54','2015-02-10 17:23:54','ae914f74-1f8e-4eb6-9981-0f1b0a06d84d'),
	(111,251,'en','skateboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2015-02-10 17:24:39','2015-02-10 17:24:39','370a4a69-07e5-49c0-b1b1-73dc13cb8fe6'),
	(113,257,'en','Contact',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:35:19','2018-06-24 18:35:19','9c9ead30-120f-4249-aa40-39c8431c80ec'),
	(114,258,'en','Apex Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:35:36','2018-06-24 18:35:36','428a67f4-02dd-4ae2-ae3f-45316aabea1d'),
	(115,259,'en','Instrument Repairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:36:23','2018-06-24 18:36:23','71c6bdbc-e80d-4530-a9a6-0a97448bf178'),
	(116,260,'en',NULL,NULL,NULL,NULL,'Unit 3, Derrycrin road\r\nBT80 0HJ\r\nCookstown','hello@apexmusic.co',NULL,NULL,NULL,0,'0759 1132 008','https://www.facebook.com/ApexMusicCo/','#apex-music','#apex-music','14 Sullenboy park\r\nBT80 8HP\r\nCookstown','2018-06-24 18:39:24','2018-07-05 23:09:20','27f31143-a4e2-4cd9-b788-9886e0765af6'),
	(117,261,'en','Strat Style','','',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 19:58:37','2018-07-05 19:58:37','b37a1868-41fa-4fb0-9e16-d75c169f8737'),
	(118,262,'en','Apex 50s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 20:00:18','2018-07-05 20:06:13','ea03d57f-e0c2-48a2-9ec2-8f4bda041ede'),
	(119,264,'en','About',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:10:16','2018-07-05 22:10:16','3fe52680-28b5-4654-9a4b-517c7d3ba9e8'),
	(120,265,'en','Apex Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:10:46','2018-07-05 22:10:46','4fef3364-7176-49b1-a36f-f44d8b855970'),
	(121,266,'en','Instrument Repairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:11:12','2018-07-05 22:11:12','0f539fe6-389e-41ea-b78b-d0f396c3bdf0'),
	(122,267,'en','Blog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:11:58','2018-07-05 22:11:58','00e63ef9-7eb9-44a7-bebe-8283a500de07'),
	(123,268,'en','Contact',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:12:49','2018-07-05 22:12:49','82e61ec6-9cb4-41c5-9aef-163d934f8408'),
	(124,269,'en','Pickups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:13:45','2018-07-05 22:13:45','ba52780e-b977-4237-a497-df279dec0417'),
	(125,270,'en','Strat Style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:29:47','2018-07-05 22:33:05','e671d47c-4c3e-4153-8a71-15c0bdec73a4'),
	(126,271,'en','Apex 50s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:30:24','2018-07-05 22:30:24','cb6bd3cf-9fc4-43ca-a108-82703419e38b');

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
	(2,'Entry',1,0,'2014-07-29 18:21:35','2015-02-04 15:13:27','f20120a9-7cb6-4c53-8c06-6041a39cc056'),
	(4,'Entry',1,0,'2014-07-30 21:02:31','2018-06-24 18:35:59','8b6c79cf-8e2a-464d-a50f-833445bab37d'),
	(6,'Asset',1,0,'2014-07-30 22:55:13','2015-02-02 04:40:03','d1e0a2aa-b87a-492a-9ea4-25bbfa85e261'),
	(7,'Asset',1,0,'2014-07-30 22:57:57','2015-02-02 04:39:56','5d3dbc7c-a2c6-402f-a95a-1c1367e6346c'),
	(8,'Asset',1,0,'2014-07-30 23:01:25','2015-02-02 04:39:53','d1d0c9e7-a055-4054-af1c-24af70d98689'),
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
	(23,'Asset',1,0,'2014-07-31 22:02:47','2015-02-02 04:39:52','00efc6e7-e867-4876-a556-3339351537a6'),
	(24,'Entry',1,0,'2014-07-31 22:04:17','2018-06-24 18:35:59','09fec6f1-89bf-425e-9fe6-a2d632bb6cf3'),
	(25,'MatrixBlock',1,0,'2014-07-31 22:04:17','2016-06-03 17:43:36','dc20721f-cbcd-4c15-8289-a3882c4773ff'),
	(28,'Asset',1,0,'2014-07-31 22:08:34','2015-02-02 04:40:02','a6723024-904e-41c2-8467-5f8b2bef226e'),
	(29,'Asset',1,0,'2014-07-31 22:19:29','2015-02-02 04:39:52','75724019-641a-475d-a1dc-effdd5a50e2b'),
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
	(40,'Asset',1,0,'2014-07-31 22:22:21','2015-02-02 04:39:52','5b702218-93b2-41aa-a0ce-7054d508921c'),
	(41,'MatrixBlock',1,0,'2014-07-31 22:22:28','2016-06-03 17:43:36','331bd2de-e441-42ae-b191-135e2e099b16'),
	(42,'Asset',1,0,'2014-07-31 23:14:44','2015-02-02 04:39:56','dd4fc1cc-a290-4b04-b3f4-e262a5cd494a'),
	(44,'Asset',1,0,'2014-07-31 23:18:18','2015-02-02 04:39:59','29703024-ed2d-43ea-8b17-cedc503e4b75'),
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
	(59,'Asset',1,0,'2014-08-06 20:36:49','2015-02-02 04:39:56','ae05e691-1fcf-488c-95b9-896a9f7c04f3'),
	(60,'Asset',1,0,'2014-08-06 21:31:46','2015-02-02 04:39:52','e6edb6b5-9b94-47e1-b7a9-0da6ebf74a5d'),
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
	(72,'Asset',1,0,'2014-08-06 21:33:56','2015-02-02 04:39:57','c85d6702-ead2-483b-b357-55bbdc061056'),
	(73,'MatrixBlock',1,0,'2014-08-06 21:34:12','2016-06-03 17:42:53','f1f5b6a6-92a8-464f-ad9f-487cea36d137'),
	(74,'Entry',1,0,'2014-09-17 01:15:21','2015-02-10 18:08:01','990289b0-2685-4293-a526-2962328c9bac'),
	(82,'Asset',1,0,'2014-09-23 03:06:38','2015-02-02 04:39:55','d28b57f7-e8b3-439b-8a63-d7806ebff343'),
	(83,'Asset',1,0,'2014-09-23 03:10:32','2015-02-02 04:39:54','b2d0cf94-1092-45f6-a8fb-68ad94a0abd0'),
	(84,'Asset',1,0,'2014-09-23 03:15:27','2015-02-02 04:39:55','07d60138-94da-4442-8668-370556aa5f3e'),
	(98,'Asset',1,0,'2014-10-03 02:21:34','2015-02-02 04:39:58','972b2e4f-d209-4a02-a187-727d4c61303c'),
	(99,'Entry',1,0,'2014-10-03 02:21:54','2018-06-24 18:36:00','1676d123-be2c-4207-a808-74ff8a8d2ee5'),
	(100,'Asset',1,0,'2014-10-03 03:31:00','2015-02-02 04:39:58','c76e4c54-4e0c-4a14-8112-a9aeda69259d'),
	(101,'Entry',1,0,'2014-10-03 03:31:13','2018-06-24 18:36:00','d8f7307f-0f0a-4d57-80db-98eb06495f43'),
	(102,'Asset',1,0,'2014-10-03 03:33:52','2015-02-02 04:39:58','55091523-22b2-44cf-a9f9-b532e9732fa0'),
	(104,'Asset',1,0,'2014-10-03 03:58:05','2015-02-02 04:39:54','33965ba1-24dd-4931-a3b6-988dbd6c877f'),
	(105,'Entry',1,0,'2014-10-03 03:58:26','2018-06-24 18:36:00','f7d1047a-a505-4856-8f28-a1c37cb24e2b'),
	(115,'Asset',1,0,'2014-10-04 15:35:41','2015-02-02 04:39:55','777fa59f-7d1f-4996-8d72-295f4da6ad15'),
	(121,'Asset',1,0,'2014-10-04 15:42:04','2015-02-02 04:40:00','563ea99a-56ec-48b6-bcfc-8ec1e4d81c25'),
	(123,'Asset',1,0,'2014-10-04 15:46:51','2015-02-02 04:39:52','23affce5-c01e-40d3-9081-4b0889eb82eb'),
	(125,'Asset',1,0,'2014-10-04 15:47:46','2015-02-02 04:40:02','357b3071-b675-40de-b2b1-6ccc1f74a1e6'),
	(127,'Asset',1,0,'2014-10-04 15:48:41','2015-02-02 04:39:54','4784a8b7-19ab-4302-8eac-05d5e4cfc86c'),
	(131,'Asset',1,0,'2014-10-05 03:08:45','2015-02-02 04:39:59','ee0e582d-c752-41db-8ca0-9341367f3d68'),
	(132,'Asset',1,0,'2014-10-05 03:08:45','2015-02-02 04:40:00','93baeef4-bb9c-4be3-a465-15effe6d53ef'),
	(134,'Asset',1,0,'2014-10-06 01:49:48','2015-02-02 04:39:56','99bfeea8-df67-4cdf-ab20-4ca2520417ee'),
	(135,'Asset',1,0,'2014-10-07 03:41:24','2015-02-04 15:07:12','bc5bda0d-4296-4fa3-88bf-c02211aba8c6'),
	(136,'MatrixBlock',1,0,'2014-10-07 03:41:31','2015-02-04 15:13:27','e8ed31fa-1ada-4e41-8c1f-996805e3e994'),
	(137,'Asset',1,0,'2014-10-07 03:43:58','2015-02-04 15:13:25','1d84ba1a-c3a4-4e11-9987-ff748effbf3b'),
	(138,'MatrixBlock',1,0,'2014-10-07 03:44:02','2015-02-04 15:13:27','94c0a25f-1228-4630-a185-b23c8fd39afc'),
	(139,'MatrixBlock',1,0,'2014-10-07 03:45:26','2015-02-04 15:13:28','8ce61324-d955-4bf7-915b-78a3b502cf9d'),
	(140,'Asset',1,0,'2014-10-07 03:45:39','2015-02-04 15:08:25','c2fc1f5a-cc02-4d0a-a101-3c0c7ea186a0'),
	(141,'Asset',1,0,'2014-10-07 03:48:12','2014-10-07 03:48:12','cee65a06-138d-4945-9ff8-ac0efb0d54f1'),
	(142,'Asset',1,0,'2014-10-07 03:48:21','2014-10-07 03:48:21','5b0d43ba-81ff-4a50-95d1-89d3dc32f6b2'),
	(143,'Asset',1,0,'2014-10-07 03:48:30','2014-10-07 03:48:30','d5310a44-55df-40eb-bc4b-9298891f075b'),
	(144,'Asset',1,0,'2014-10-07 03:48:41','2014-10-07 03:48:41','06ad8c35-cd6e-4ac6-afac-42c53b355e2c'),
	(145,'Asset',1,0,'2014-10-07 03:48:50','2014-10-07 03:48:50','473d36b2-7217-4bc1-a9a2-0e7b7f2b5a00'),
	(146,'Asset',1,0,'2014-10-09 03:37:12','2015-02-02 04:40:00','6fbb9892-73dc-40de-b5ab-03f0431df5e7'),
	(147,'Asset',1,0,'2014-10-09 03:57:41','2015-02-02 04:39:54','16b3435f-f0c5-42d9-a78d-33d20ee2019f'),
	(148,'Asset',1,0,'2014-10-09 04:20:25','2015-02-02 04:39:59','36ff010a-0278-485d-bc95-64801f8f8961'),
	(152,'Asset',1,0,'2014-12-03 20:14:42','2014-12-03 20:14:42','9c47a80c-546e-4f64-9b1f-483fcca7ce69'),
	(153,'Asset',1,0,'2014-12-03 20:14:42','2014-12-03 20:14:42','2ab22020-1a24-479e-9170-20bc8c135cf4'),
	(154,'Asset',1,0,'2014-12-03 20:14:42','2014-12-03 20:14:42','17e82cde-7134-41c6-9e6e-c83ba490be5f'),
	(155,'Asset',1,0,'2014-12-03 20:14:43','2014-12-03 20:14:43','5ce35d58-4a74-47f6-997f-062d3c4c41ec'),
	(156,'Asset',1,0,'2014-12-03 20:14:43','2014-12-03 20:14:43','ac85e46c-fd0a-4f29-86fd-a4b85fd57482'),
	(157,'Asset',1,0,'2014-12-03 20:14:43','2014-12-03 20:14:43','c7587bc6-8aa8-48a1-bf04-812798ce37f5'),
	(163,'Asset',1,0,'2014-12-11 01:24:36','2015-02-02 04:39:54','b968b6cc-b80a-4cdb-b5d9-c765dd95badc'),
	(167,'Asset',1,0,'2014-12-11 01:27:41','2015-02-02 04:39:55','f911bea5-e0f0-414a-95a7-7818fbcca5d5'),
	(168,'Asset',1,0,'2014-12-11 01:28:48','2015-02-02 04:39:53','e7c277dc-c0b1-45d3-9923-3cf933829506'),
	(183,'Asset',1,0,'2014-12-11 03:33:16','2015-02-02 04:39:57','316424b0-634a-4909-a3b9-758f1800dfa6'),
	(218,'Asset',1,0,'2015-02-02 04:39:53','2015-02-10 19:09:21','99193912-f8c7-4f49-a959-ab8cb2f55edf'),
	(219,'Asset',1,0,'2015-02-02 04:39:57','2015-02-02 04:39:57','dafc6f65-673a-4a44-8466-bcfdf5a18f90'),
	(220,'Asset',1,0,'2015-02-02 04:40:00','2016-08-22 18:35:19','e316a79f-83fb-4d7a-8519-1e3833e20cd1'),
	(221,'Asset',1,0,'2015-02-02 04:40:01','2016-08-22 18:35:45','5cacd689-7569-4429-9fe5-bca474aa0afd'),
	(222,'Asset',1,0,'2015-02-02 04:40:01','2016-08-22 18:36:04','81861608-9db5-44cd-af4f-b702142de67f'),
	(223,'Asset',1,0,'2015-02-02 16:54:58','2015-02-02 16:57:40','9954c1f6-3f79-449c-83fc-a3fa03d7aa9d'),
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
	(249,'Asset',1,0,'2015-02-10 17:22:34','2015-02-10 17:22:34','b45a8350-662c-40a9-8842-d0a62ca25f66'),
	(250,'Asset',1,0,'2015-02-10 17:23:54','2015-02-10 17:23:54','33c1543f-74ff-4222-b80e-7b1a8df1ea88'),
	(251,'Asset',1,0,'2015-02-10 17:24:39','2015-02-10 17:24:39','d2f9e8d5-29d9-438a-9c15-ab6852f021b4'),
	(252,'MatrixBlock',1,0,'2015-02-10 17:25:04','2016-06-03 17:43:06','6f3bff8b-2d6e-4c16-b239-37583648b4a3'),
	(257,'Entry',1,0,'2018-06-24 18:35:19','2018-06-24 18:35:19','f9ea18c4-5739-43e2-aa77-0d444ffa586b'),
	(258,'Entry',1,0,'2018-06-24 18:35:36','2018-06-24 18:35:36','5462201f-e4c1-4117-830d-8441d7c2fa23'),
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
	(270,'Menus_Node',1,0,'2018-07-05 22:29:47','2018-07-05 22:33:05','0d87bd85-bc0f-4dd5-814c-eb9d995134e3'),
	(271,'Menus_Node',1,0,'2018-07-05 22:30:24','2018-07-05 22:30:24','e8534fe5-11e5-450f-88f2-f52e2df6e619');

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
	(2,2,'en','homepage','__home__',1,'2014-07-29 18:21:35','2015-02-04 15:13:27','f920f3e1-d004-4e8f-8281-897f0f72e524'),
	(4,4,'en','barrel-aged-digital-natives','blog/barrel-aged-digital-natives',1,'2014-07-30 21:02:32','2018-06-24 18:35:59','837aba4e-fe44-4aac-8aa1-dfa1bfe12ab8'),
	(6,6,'en','water-barley-hops',NULL,1,'2014-07-30 22:55:13','2015-02-02 04:40:03','fb83dd55-000f-4d43-a3a0-b3fdeba5b96f'),
	(7,7,'en','laptop-desk',NULL,1,'2014-07-30 22:57:57','2015-02-02 04:39:57','436c1f49-1f4e-41af-ab55-367eeb8a034d'),
	(8,8,'en','coffee-shop',NULL,1,'2014-07-30 23:01:25','2015-02-02 04:39:53','ce827e7a-fa50-4999-9b10-17602e8e08dc'),
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
	(23,23,'en','augmented-reality',NULL,1,'2014-07-31 22:02:47','2015-02-02 04:39:52','2dc291e5-f8f3-4cce-92b0-128c2b204bfe'),
	(24,24,'en','the-future-of-augmented-reality','blog/the-future-of-augmented-reality',1,'2014-07-31 22:04:17','2018-06-24 18:36:00','77d7ce01-9bd6-4e59-85ce-141ae19d6bbc'),
	(25,25,'en','',NULL,1,'2014-07-31 22:04:17','2016-06-03 17:43:36','b9525e15-4408-4d45-874a-844e72b110fe'),
	(28,28,'en','video',NULL,1,'2014-07-31 22:08:34','2015-02-02 04:40:02','97e12993-7399-4fde-8581-54c6d30754fe'),
	(29,29,'en','augmented-reality-icons',NULL,1,'2014-07-31 22:19:29','2015-02-02 04:39:52','d9d57cd0-7f22-43b7-a197-2bed68f15b51'),
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
	(40,40,'en','awesome-cities',NULL,1,'2014-07-31 22:22:21','2015-02-02 04:39:52','3cadaaf9-9f20-42dd-954f-77db3b781a45'),
	(41,41,'en','',NULL,1,'2014-07-31 22:22:28','2016-06-03 17:43:36','9c8dbe9e-60de-4583-9c42-cd2f041e0cb4'),
	(42,42,'en','fist',NULL,1,'2014-07-31 23:14:44','2015-02-02 04:39:56','41ddc4ef-ebfd-4634-bc7e-f99fbf14f905'),
	(44,44,'en','pong',NULL,1,'2014-07-31 23:18:18','2015-02-02 04:39:59','dd46e35d-9910-4081-b278-20b257b00882'),
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
	(59,59,'en','gallery',NULL,1,'2014-08-06 20:36:49','2015-02-02 04:39:56','b9005e2e-1dad-4440-8550-8134d762809c'),
	(60,60,'en','bar',NULL,1,'2014-08-06 21:31:46','2015-02-02 04:39:52','618d920e-402b-41d6-9567-5a2fdc3a4f29'),
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
	(72,72,'en','macbook',NULL,1,'2014-08-06 21:33:56','2015-02-02 04:39:57','afedb871-7471-46ae-9deb-d2613abfdad2'),
	(73,73,'en','',NULL,1,'2014-08-06 21:34:12','2016-06-03 17:42:53','32679b24-4811-4c45-859d-9cc647d5620a'),
	(74,74,'en','about','about',1,'2014-09-17 01:15:21','2015-02-10 18:08:01','d101404e-29cf-4a9a-99f7-58f2f0ea1b28'),
	(82,82,'en','diva-interface-work',NULL,1,'2014-09-23 03:06:38','2015-02-02 04:39:55','9371d43f-633a-422c-838d-0c0dca74a897'),
	(83,83,'en','diva-interface-detail',NULL,1,'2014-09-23 03:10:32','2015-02-02 04:39:54','666fc9fe-d9ed-4ffa-9137-d4cbb97efbe7'),
	(84,84,'en','diva-mobile-detail',NULL,1,'2014-09-23 03:15:27','2015-02-02 04:39:55','e4f065a7-d149-496e-b849-87532364e8f9'),
	(98,98,'en','news-link-1-image',NULL,1,'2014-10-03 02:21:34','2015-02-02 04:39:58','b60d7d9d-95e3-4c8d-ba15-cbe24767f3b1'),
	(99,99,'en','fast-company-q-a-with-robin-richards','blog/fast-company-q-a-with-robin-richards',1,'2014-10-03 02:21:54','2018-06-24 18:36:00','3cb6fb76-db09-493c-ae73-c240a48be4a4'),
	(100,100,'en','news-link-2-image',NULL,1,'2014-10-03 03:31:00','2015-02-02 04:39:58','a726c46d-6a54-4849-9a3b-7b514a4bd42b'),
	(101,101,'en','photography-folio-featured-on-awwwards-com','blog/photography-folio-featured-on-awwwards-com',1,'2014-10-03 03:31:13','2018-06-24 18:36:00','c46d3471-190e-4e29-a5e7-9b59d64e76b8'),
	(102,102,'en','news-entry-1-image',NULL,1,'2014-10-03 03:33:52','2015-02-02 04:39:58','8a74867b-e47b-4d24-b09b-283020c5b6be'),
	(104,104,'en','diva-cover',NULL,1,'2014-10-03 03:58:05','2015-02-02 04:39:54','348edfd5-8e70-4c36-8d69-9fb446cdc530'),
	(105,105,'en','diva-becomes-famous','blog/diva-becomes-famous',1,'2014-10-03 03:58:26','2018-06-24 18:36:01','70eb360b-e731-4888-b625-da2f82d7fbde'),
	(107,115,'en','email-marketing',NULL,1,'2014-10-04 15:35:41','2015-02-02 04:39:55','4ddc4034-d10f-4a77-b8f3-8dad17b98d02'),
	(109,121,'en','seo',NULL,1,'2014-10-04 15:42:04','2015-02-02 04:40:00','3b82d417-019a-4c2d-816e-9891aff85fb2'),
	(111,123,'en','app-development',NULL,1,'2014-10-04 15:46:51','2015-02-02 04:39:52','552be23c-31ac-4d22-9270-e54e2fb1f63f'),
	(113,125,'en','strategy',NULL,1,'2014-10-04 15:47:46','2015-02-02 04:40:02','d1310784-a311-461a-96be-9e49e55b8d86'),
	(115,127,'en','development',NULL,1,'2014-10-04 15:48:41','2015-02-02 04:39:54','cb328e12-4ee6-4bca-87f9-672489387b88'),
	(119,131,'en','on-track-thumb',NULL,1,'2014-10-05 03:08:45','2015-02-02 04:39:59','ea3c917e-9265-438c-b717-bc828fa4888b'),
	(120,132,'en','sports-r-us-thumb',NULL,1,'2014-10-05 03:08:45','2015-02-02 04:40:00','5a8dc470-06cf-466e-8c06-50705ea1b8c5'),
	(122,134,'en','hero-image',NULL,1,'2014-10-06 01:49:48','2015-02-02 04:39:56','54d8709c-1fbc-46ac-b213-3331e6bfa09c'),
	(123,135,'en','portrait-larry-page',NULL,1,'2014-10-07 03:41:24','2015-02-04 15:07:12','96047bed-a0fa-49e0-be55-faa3419de5c8'),
	(124,136,'en','',NULL,1,'2014-10-07 03:41:31','2015-02-04 15:13:27','460766fe-212f-4449-87ed-b594d07b4101'),
	(125,137,'en','testimonial-photo-2',NULL,1,'2014-10-07 03:43:58','2015-02-04 15:13:25','73b162ac-02e5-41d3-8a84-2b97d3ed80f3'),
	(126,138,'en','',NULL,1,'2014-10-07 03:44:02','2015-02-04 15:13:28','f2e045df-0d1b-405d-b10f-075486a3af0d'),
	(127,139,'en','',NULL,1,'2014-10-07 03:45:26','2015-02-04 15:13:28','5b2a5a5c-9da6-4458-9db1-c017154279bd'),
	(128,140,'en','testimonials-photo-3',NULL,1,'2014-10-07 03:45:39','2015-02-04 15:08:25','04362992-b3f9-4707-84d7-2aa3cd37b3dc'),
	(129,141,'en','logo-coke',NULL,1,'2014-10-07 03:48:12','2014-10-07 03:48:12','4ac5f5fd-1686-4cd7-a21b-6029b404f4f1'),
	(130,142,'en','logo-google',NULL,1,'2014-10-07 03:48:21','2014-10-07 03:48:21','80fa44fa-8fca-4361-8183-912ab00d2a04'),
	(131,143,'en','logo-jetblue',NULL,1,'2014-10-07 03:48:30','2014-10-07 03:48:30','88da86af-def6-4bc6-bce7-98a7fb4f39a0'),
	(132,144,'en','logo-mtv',NULL,1,'2014-10-07 03:48:41','2014-10-07 03:48:41','47538793-ad4c-478c-9d57-c7a4b67623b8'),
	(133,145,'en','logo-newbelgium',NULL,1,'2014-10-07 03:48:50','2014-10-07 03:48:50','addbedb0-12cb-4d4b-96a1-4ae8b6098628'),
	(134,146,'en','sportsrus-bigfeature',NULL,1,'2014-10-09 03:37:12','2015-02-02 04:40:00','1b086519-1d0b-46ae-b223-1a0adb902ac2'),
	(135,147,'en','diva-bigimage',NULL,1,'2014-10-09 03:57:41','2015-02-02 04:39:54','2f6c8be6-b05a-478d-8256-85a655767032'),
	(136,148,'en','ontrack-bigimage',NULL,1,'2014-10-09 04:20:25','2015-02-02 04:39:59','d15db8ed-3299-459a-ae18-bd0fd1d8f79c'),
	(140,152,'en','app-development',NULL,1,'2014-12-03 20:14:42','2014-12-03 20:14:42','56b5454e-86df-4be1-8208-dc1fba5304d8'),
	(141,153,'en','design',NULL,1,'2014-12-03 20:14:42','2014-12-03 20:14:42','dd08104e-b855-4842-bb74-ecc346ca4174'),
	(142,154,'en','email-marketing',NULL,1,'2014-12-03 20:14:42','2014-12-03 20:14:42','37ac582d-c447-482b-a7ce-ed5fb0712352'),
	(143,155,'en','development',NULL,1,'2014-12-03 20:14:43','2014-12-03 20:14:43','c7f85dd1-63b1-41d1-86da-300706c116e5'),
	(144,156,'en','seo',NULL,1,'2014-12-03 20:14:43','2014-12-03 20:14:43','6e2f2e3c-2e04-47a0-b9de-c062572c30fd'),
	(145,157,'en','strategy',NULL,1,'2014-12-03 20:14:43','2014-12-03 20:14:43','ce895a4c-c4bb-427b-ab57-919811a80e8d'),
	(151,163,'en','discover',NULL,1,'2014-12-11 01:24:36','2015-02-02 04:39:54','bf0d415a-9d79-4d6a-a473-badfbbdbd7a2'),
	(155,167,'en','explore',NULL,1,'2014-12-11 01:27:41','2015-02-02 04:39:55','ebd26a04-1ab0-423b-8739-aee14bd71fed'),
	(156,168,'en','create-genius',NULL,1,'2014-12-11 01:28:48','2015-02-02 04:39:53','1e541b95-755d-4ab9-a127-f273c9c495a4'),
	(171,183,'en','moosic-app-ui',NULL,1,'2014-12-11 03:33:17','2015-02-02 04:39:57','b1f6af65-48da-427a-9e50-a0ba5f4afef5'),
	(206,218,'en','contact-building',NULL,1,'2015-02-02 04:39:53','2015-02-10 19:09:21','7edfc1a2-0f0c-4883-baef-edd2eed222fd'),
	(207,219,'en','macbook-table',NULL,1,'2015-02-02 04:39:57','2015-02-02 04:39:57','ebf631e6-dad6-417e-93a9-de9982428eec'),
	(208,220,'en','staff-christopher',NULL,1,'2015-02-02 04:40:00','2016-08-22 18:35:19','162a453a-2139-4bae-a65e-d7bfb34ee655'),
	(209,221,'en','staff-jonathan',NULL,1,'2015-02-02 04:40:01','2016-08-22 18:35:45','7aad323b-73df-4014-ac7d-6d0121a29c98'),
	(210,222,'en','staff-robin',NULL,1,'2015-02-02 04:40:01','2016-08-22 18:36:04','98490d47-8536-41d6-86a8-a1e0957f15ed'),
	(211,223,'en','skis',NULL,1,'2015-02-02 16:54:59','2015-02-02 16:57:40','ac9a1b38-fcc8-41ed-8abc-e7f48bc624f2'),
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
	(238,249,'en','bike',NULL,1,'2015-02-10 17:22:34','2015-02-10 17:22:34','bd33084d-0fdd-436d-8e3b-9e3eea9c9869'),
	(239,250,'en','glasses',NULL,1,'2015-02-10 17:23:54','2015-02-10 17:23:54','2f2d6e54-7cf8-42ac-9f19-4ece65791faf'),
	(240,251,'en','skateboard',NULL,1,'2015-02-10 17:24:39','2015-02-10 17:24:39','308621e1-0e8b-460b-bfc4-41b5038a4011'),
	(241,252,'en','',NULL,1,'2015-02-10 17:25:04','2016-06-03 17:43:06','4b8471b8-4199-4a97-8834-46b09a4e6fc8'),
	(246,257,'en','contact','contact',1,'2018-06-24 18:35:19','2018-06-24 18:35:19','9479984b-e621-4d9b-850b-098009f51d94'),
	(247,258,'en','apex-studio','apex-studio',1,'2018-06-24 18:35:36','2018-06-24 18:35:36','759b0724-7416-4de7-aebc-a761eecf7203'),
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
	(259,270,'en','strat-style',NULL,1,'2018-07-05 22:29:47','2018-07-05 22:33:05','6b4e955d-7ba7-41cf-9648-e1f5c90f8ebb'),
	(260,271,'en','apex-50s',NULL,1,'2018-07-05 22:30:24','2018-07-05 22:33:05','d99f60d9-0762-4766-a53f-65c787593a4b');

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
	(2,1,1,NULL,'2014-07-29 18:21:35',NULL,'2014-07-29 18:21:35','2015-02-04 15:13:28','53ea9ee4-5daf-4d0f-9955-9385092bbd60'),
	(4,2,2,1,'2016-05-06 00:00:00',NULL,'2014-07-30 21:02:32','2016-06-03 17:43:25','d011f859-bee4-4f35-9159-392f5c7a5e6d'),
	(24,2,2,1,'2016-05-07 00:00:00',NULL,'2014-07-31 22:04:17','2016-06-03 17:43:37','30fcf618-c8df-4b22-b00a-8de18596e87f'),
	(45,2,2,1,'2016-05-05 00:00:00',NULL,'2014-07-31 23:20:59','2016-06-03 17:43:07','ad571dd1-4691-434a-b961-0133975beb03'),
	(61,2,2,1,'2016-05-04 00:00:00',NULL,'2014-08-06 21:32:48','2016-06-03 17:42:53','37b64dde-6b73-4846-930a-ca032467d95b'),
	(74,4,4,NULL,'2014-09-17 01:15:21',NULL,'2014-09-17 01:15:21','2015-02-10 18:08:01','c31210d7-7e6b-465e-b232-dc2d19b10745'),
	(99,2,6,1,'2016-05-03 00:00:00',NULL,'2014-10-03 02:21:54','2016-06-03 17:42:43','c731599d-6635-4b19-a535-e68fe63a1217'),
	(101,2,6,1,'2016-05-02 00:00:00',NULL,'2014-10-03 03:31:13','2016-06-03 17:42:26','16091360-c9c9-4546-91cd-df15e3999abd'),
	(105,2,2,1,'2016-05-01 00:00:00',NULL,'2014-10-03 03:58:26','2016-06-03 17:42:35','144b5696-381b-4f42-864b-c267b3a54cc3'),
	(257,9,NULL,NULL,'2018-06-24 18:35:19',NULL,'2018-06-24 18:35:19','2018-06-24 18:35:19','bd2069bf-6c3b-4922-b657-f914a6c43a54'),
	(258,10,NULL,NULL,'2018-06-24 18:35:36',NULL,'2018-06-24 18:35:36','2018-06-24 18:35:36','6756de37-75b3-4218-84b1-b234b20ca04a'),
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
	(1,1,104,'Homepage','homepage',0,NULL,'{section.name|raw}',NULL,'2014-07-29 18:21:35','2014-10-07 03:46:17','1f72a359-0ce9-4415-82dc-88dc833073c3'),
	(2,2,197,'Article','article',1,'Title',NULL,NULL,'2014-07-29 18:21:35','2016-06-03 17:38:06','eba60966-6218-4985-b901-fff1e5f97a49'),
	(4,4,191,'About','about',0,NULL,'{section.name|raw}',NULL,'2014-09-17 01:15:21','2015-02-10 19:30:56','6ef72b30-6af9-4545-81e9-b2c900cd08d4'),
	(6,2,92,'Link','link',1,'Title',NULL,NULL,'2014-10-03 02:11:55','2014-10-03 02:15:38','b31c607b-b75a-4a78-b14b-d94bf8faa0c3'),
	(11,9,198,'Contact','contact',0,NULL,'{section.name|raw}',1,'2018-06-24 18:35:19','2018-06-24 18:35:19','7edd4a7b-9cf4-4286-b351-9df85c7f390b'),
	(12,10,199,'Apex Studio','apexStudio',0,NULL,'{section.name|raw}',1,'2018-06-24 18:35:36','2018-06-24 18:35:36','cbd4ca64-780d-40f0-8cd7-2d938d0ca2fb'),
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
	(223,262,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"263\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"\",\"position\":\"left\"}}},\"80\":[\"261\"]}}','2018-07-05 20:06:13','2018-07-05 20:06:13','c6a085f9-1e5c-43da-bd5e-3657d114d5f4');

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
	(7,'Contact Info','2015-02-10 19:02:27','2015-02-10 19:33:07','0815347a-8e73-45fd-93c9-2244ac562559');

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
	(267,104,32,50,0,1,'2014-10-07 03:46:17','2014-10-07 03:46:17','1fc02818-7ba5-46c1-8f1a-5bbbeac3eede'),
	(268,104,32,51,0,2,'2014-10-07 03:46:17','2014-10-07 03:46:17','3bcdc24c-3ce7-4736-b151-559758ff92ae'),
	(269,104,32,55,0,3,'2014-10-07 03:46:17','2014-10-07 03:46:17','4089c855-a9f4-4be9-80ca-2e80246c8332'),
	(311,121,52,52,0,1,'2015-02-04 14:17:43','2015-02-04 14:17:43','1f412c73-9edb-4189-b988-df4e9615d6e2'),
	(312,121,52,53,0,2,'2015-02-04 14:17:43','2015-02-04 14:17:43','4132804a-aba3-497f-8de0-06a28fb06855'),
	(313,121,52,54,0,3,'2015-02-04 14:17:43','2015-02-04 14:17:43','d5f7d82c-3e40-4396-8600-2bb10c6c11b7'),
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
	(524,191,118,1,0,1,'2015-02-10 19:30:56','2015-02-10 19:30:56','8fb2c963-9bc2-4954-9fee-f6f59fa1f6e9'),
	(525,191,118,2,0,2,'2015-02-10 19:30:56','2015-02-10 19:30:56','1b43a45e-2a4a-440b-be84-6e58e634dd0e'),
	(526,191,118,4,0,3,'2015-02-10 19:30:56','2015-02-10 19:30:56','95cdac8b-79e0-4df2-80a3-021b28bd9386'),
	(535,194,121,47,0,1,'2015-02-10 23:15:32','2015-02-10 23:15:32','c117bf3f-4970-4a7e-9af5-529bcd21fac3'),
	(536,197,122,75,0,1,'2016-06-03 17:38:06','2016-06-03 17:38:06','e75a9ac3-29f7-433b-93d0-d513114fc730'),
	(537,197,122,15,0,2,'2016-06-03 17:38:06','2016-06-03 17:38:06','b5cbbfb4-72c0-4e13-b03c-cdb9c29951bb'),
	(538,197,122,47,0,3,'2016-06-03 17:38:06','2016-06-03 17:38:06','5b79cb81-9d1e-49ab-b888-763a17bc2f1c'),
	(539,197,122,1,0,4,'2016-06-03 17:38:06','2016-06-03 17:38:06','707f0d71-6324-4d13-8765-5bdb6a0d9e8c'),
	(540,197,122,14,0,5,'2016-06-03 17:38:06','2016-06-03 17:38:06','856af88a-b500-4c42-bde0-fd627bb98d65'),
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
	(570,212,133,79,0,7,'2018-07-05 23:07:08','2018-07-05 23:07:08','d7f01d73-2f13-4560-ae5e-c1facff72ccd');

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
	(104,'Entry','2014-10-07 03:46:17','2014-10-07 03:46:17','31a1e163-6326-436a-9feb-53b372c086e3'),
	(121,'MatrixBlock','2015-02-04 14:17:43','2015-02-04 14:17:43','569a9c10-0657-4dbf-87c9-005afb784b54'),
	(179,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','8d01ea64-38fa-43f7-be8a-43e4e460bfbd'),
	(180,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','0189a187-131f-46a8-b494-cd94c82d6aae'),
	(181,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','4ade673e-0245-430b-b932-c8ea86e36773'),
	(182,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','83f7b1de-657b-45bb-94e4-57d10973c78c'),
	(183,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','327aba6f-b81c-4179-9e58-208d34322ced'),
	(184,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','0964c39a-7c91-4ac2-a9e6-584a7c845d32'),
	(185,'MatrixBlock','2015-02-10 17:39:37','2015-02-10 17:39:37','b82a12f2-e814-4b74-9b32-bd1a90497a65'),
	(191,'Entry','2015-02-10 19:30:56','2015-02-10 19:30:56','4cc2a302-6fe7-4f8b-b01b-517ed624cdf7'),
	(194,'Asset','2015-02-10 23:15:32','2015-02-10 23:15:32','e4360fb7-190d-42c5-bde0-e01c03bd127c'),
	(195,'Asset','2015-02-10 23:15:35','2015-02-10 23:15:35','da21546b-da53-49c7-8821-2685c67df6b4'),
	(196,'Asset','2015-02-10 23:15:38','2015-02-10 23:15:38','57038148-5c46-43e2-9c5b-9760e04375f2'),
	(197,'Entry','2016-06-03 17:38:06','2016-06-03 17:38:06','d45c4454-78e5-415c-8e08-700061feb9b4'),
	(198,'Entry','2018-06-24 18:35:19','2018-06-24 18:35:19','364a0634-30ba-4c5b-b2a0-417b6ac0338f'),
	(199,'Entry','2018-06-24 18:35:36','2018-06-24 18:35:36','f87417e3-16ea-42fe-94eb-766e85c1c79f'),
	(200,'Entry','2018-06-24 18:36:23','2018-06-24 18:36:23','fd744e2b-7d46-4028-9444-196a6483341d'),
	(207,'Entry','2018-07-05 20:09:09','2018-07-05 20:09:09','04c3e408-dfaa-4da3-8a15-a717b93d286a'),
	(211,'Category','2018-07-05 21:23:46','2018-07-05 21:23:46','fd97a50e-c5b2-4ec9-a401-2b1a1ec7cb8c'),
	(212,'GlobalSet','2018-07-05 23:07:08','2018-07-05 23:07:08','f6c98bd1-2536-4baa-a526-3cb841c246c0');

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
	(32,104,'Content',1,'2014-10-07 03:46:17','2014-10-07 03:46:17','dc161646-b84a-4197-839c-86a62b74800c'),
	(52,121,'Content',1,'2015-02-04 14:17:43','2015-02-04 14:17:43','cef61bfe-5d6a-4e90-a0ee-dc4b4748f960'),
	(107,179,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','c58219ed-e4fb-4cc0-b8e6-a297c9c81f51'),
	(108,180,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','5a172cd7-88d1-4920-930c-c5823e670976'),
	(109,181,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','6c68be8b-8701-4ca0-ac75-ba79840627bb'),
	(110,182,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','1ea8c603-e143-45cf-a5cf-bc89530c7db1'),
	(111,183,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','01cdf814-4413-467e-9e63-9fba370a246b'),
	(112,184,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','c32e088d-9cf9-4bc1-8910-f8ceb871a213'),
	(113,185,'Content',1,'2015-02-10 17:39:37','2015-02-10 17:39:37','324a7e76-e0fb-4d79-abef-1b3d4fcbf2ed'),
	(118,191,'Content',1,'2015-02-10 19:30:56','2015-02-10 19:30:56','b110708e-31a1-4aa4-875e-1bfe711bc33d'),
	(121,194,'Content',1,'2015-02-10 23:15:32','2015-02-10 23:15:32','108bab7a-1dfc-40fb-baff-b091191490c1'),
	(122,197,'Content',1,'2016-06-03 17:38:06','2016-06-03 17:38:06','e42cc652-c7e9-4384-b048-f402aa71371b'),
	(128,207,'Tab 1',1,'2018-07-05 20:09:09','2018-07-05 20:09:09','7fbc6517-36a0-456e-8e2c-42900dcc7df8'),
	(132,211,'Tab 1',1,'2018-07-05 21:23:46','2018-07-05 21:23:46','46e52f79-2cb2-40fb-a4d1-b8901bc64fcf'),
	(133,212,'Content',1,'2018-07-05 23:07:08','2018-07-05 23:07:08','6eb72fc2-7a51-4091-82c4-f5419bede2d3');

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
	(14,1,'Subheading','subheading','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-07-30 22:42:02','2015-02-09 20:31:04','674e53a6-d62c-4322-ae09-349765f1ef17'),
	(15,1,'Featured Image','featuredImage','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"2\"}','2014-07-30 22:47:26','2015-02-10 19:33:45','0cbb9736-a84b-4e83-803c-5077f56394a9'),
	(37,7,'Address One','addressOne','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"4\"}','2014-09-17 02:24:38','2018-07-05 23:05:55','422c7da9-d3e4-4d0a-8225-bbbc8264f029'),
	(41,7,'Email','email','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-09-17 02:25:59','2015-02-10 19:33:15','b75266c9-d8d2-42ae-9024-0fecb8bdc994'),
	(44,NULL,'Caption','caption','matrixBlockType:4','',0,'RichText','{\"configFile\":\"Simple.json\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"columnType\":\"text\"}','2014-09-25 13:33:39','2015-02-10 17:39:37','7ca32393-f78c-4de0-9f8f-52b64e09584f'),
	(47,1,'Short Description','shortDescription','global','Short description for use in index regions.',0,'RichText','{\"configFile\":\"Simple.json\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"\",\"columnType\":\"text\"}','2014-10-03 02:15:14','2015-02-10 23:43:38','aef80333-1412-4130-bb84-ac3bdbbcbbe2'),
	(49,1,'Featured Thumb','featuredThumb','global','Thumb image for use on home page or archives.',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\"}','2014-10-05 03:01:09','2014-10-05 03:01:09','0305c984-3934-4c7a-9de9-b0162c5b0112'),
	(50,4,'Hero Image','heroImage','global','Choose the big homepage hero image. The image should be at least 1450×916 for best results.',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\"}','2014-10-06 01:48:43','2015-02-04 14:14:32','a2129d62-1d81-4c2f-a92d-81c03ed120dc'),
	(51,4,'Testimonials','testimonials','global','',0,'Matrix','{\"maxBlocks\":\"3\"}','2014-10-07 03:36:07','2015-02-04 14:17:43','8823155c-e84a-4a38-af30-2cb88b705e7b'),
	(52,NULL,'Quote','quote','matrixBlockType:6','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-10-07 03:36:07','2015-02-04 14:17:43','39b59166-9d91-4d17-baf9-229aca6174c2'),
	(53,NULL,'Cite','cite','matrixBlockType:6','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2014-10-07 03:36:07','2015-02-04 14:17:43','4ed4bf91-bcf9-45a9-84f7-d5d768103a09'),
	(54,NULL,'Photo','photo','matrixBlockType:6','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\"}','2014-10-07 03:36:07','2015-02-04 14:17:43','a418bde2-f4cc-4ed2-a358-44362a0cb3a9'),
	(55,4,'Client Logos','clientLogos','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:2\"],\"defaultUploadLocationSource\":\"2\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\"}','2014-10-07 03:40:02','2015-02-04 15:01:37','950b3c0e-9780-4487-a881-23d96d6075d5'),
	(64,6,'Copyright Notice','copyrightNotice','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-04 15:21:00','2015-02-04 15:21:00','5095500e-4962-429c-9b9c-7a4d0d4f930c'),
	(65,6,'Contact Us Label','contactUsLabel','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-04 15:22:02','2015-02-04 15:22:02','fcf41a5f-68b5-42dd-8ca1-cc457eb749f0'),
	(67,NULL,'Section Heading','sectionHeading','matrixBlockType:9','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"255\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-02-09 21:38:01','2015-02-10 17:39:37','8cd6b011-5271-484d-85d9-6a6b731137e9'),
	(69,NULL,'Images','images','matrixBlockType:10','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"3\"}','2015-02-10 01:21:43','2015-02-10 17:39:37','ba8a1276-24c8-43eb-94d4-b2a19c0c1bf7'),
	(70,NULL,'Position','position','matrixBlockType:1','',0,'PositionSelect','{\"options\":[\"left\",\"center\",\"right\"]}','2015-02-10 01:28:28','2015-02-10 17:39:37','cc6a4697-6d1c-4342-b9de-bce13295a885'),
	(75,1,'Featured?','featuredEntry','global','Should this entry be featured on the listing page?',0,'Lightswitch','{\"default\":\"\"}','2016-06-03 17:36:43','2016-06-03 17:44:08','a171d498-9024-4855-9a6c-b3b96765ab7c'),
	(76,7,'Telephone','telephone','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:39:56','2018-06-24 18:39:56','09410765-9611-4db3-b436-32e36fdfac84'),
	(77,7,'Facebook Link','facebooklink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:42:21','2018-06-24 18:43:11','cb9caf8c-8231-4f45-8de1-04dac88982af'),
	(78,7,'Twitter Link','twitterLink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:42:34','2018-06-24 18:42:34','b6dca90b-0381-4397-bb70-20c7f778b463'),
	(79,7,'Instagram Link','instagramLink','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-06-24 18:43:31','2018-06-24 18:43:31','a12f2d9b-af3e-4f8a-8f06-3b2941e012e8'),
	(80,1,'Category','category','global','',0,'Categories','{\"source\":\"group:1\",\"limit\":\"\",\"selectionLabel\":\"Pickup Type\"}','2018-07-05 20:02:31','2018-07-05 20:02:31','c650b624-a2de-4416-b60b-d333a627feff'),
	(81,7,'Address Two','addressTwo','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"1\",\"initialRows\":\"4\"}','2018-07-05 23:06:15','2018-07-05 23:08:47','17549f78-026d-4186-9d0d-86e26a631574');

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
	(136,2,51,6,NULL,1,'2014-10-07 03:41:31','2015-02-04 15:13:27','39a1a1f6-fef9-409d-99b2-7041b1cd3b28'),
	(138,2,51,6,NULL,2,'2014-10-07 03:44:02','2015-02-04 15:13:28','0ddf9dd2-fa23-470d-81a7-0aef5edd0264'),
	(139,2,51,6,NULL,3,'2014-10-07 03:45:26','2015-02-04 15:13:28','2df03347-33d3-4678-a443-50f013a7bce7'),
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
	(263,262,4,1,NULL,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','21d9925b-cb04-4112-b694-f00c16762c69');

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
	(6,51,121,'Testimonial','testimonial',1,'2014-10-07 03:36:07','2015-02-04 14:17:43','b3d2e2ed-d430-48c9-b89f-a38a7f8ea8b3'),
	(9,4,179,'New Section','newSection',1,'2015-02-09 21:38:01','2015-02-10 17:39:37','e1c6c95e-a19b-4cd8-9a83-935e91f862c0'),
	(10,4,184,'Gallery','gallery',6,'2015-02-10 01:21:43','2015-02-10 17:39:37','0f3ede99-8b78-4042-85c9-422f57f5b01b');

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


# Dump of table craft_matrixcontent_testimonials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_testimonials`;

CREATE TABLE `craft_matrixcontent_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_testimonial_quote` text COLLATE utf8_unicode_ci,
  `field_testimonial_cite` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_testimonials_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_testimonials_locale_idx` (`locale`),
  CONSTRAINT `craft_matrixcontent_testimonials_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_testimonials_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_testimonials` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_testimonials` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_testimonials` (`id`, `elementId`, `locale`, `field_testimonial_quote`, `field_testimonial_cite`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,136,'en','Happy Lager delivered the most comprehensive strategy from a boutique company that I’ve ever seen.','Larry Page','2014-10-07 03:41:31','2015-02-04 15:13:27','5356c09f-e6dd-44bf-8b05-1287400184ed'),
	(2,138,'en','I don’t know where to begin. I can’t recommend Happy Lager highly enough.','Ryan Reynolds','2014-10-07 03:44:02','2015-02-04 15:13:27','17eb22b7-8188-4d92-88d4-d4dcf60f3f79'),
	(3,139,'en','Happy Lager sells the good stuff.','Bob Guff','2014-10-07 03:45:26','2015-02-04 15:13:28','64b66f1a-e131-43d6-9c7b-ee2abd38e6f6');

/*!40000 ALTER TABLE `craft_matrixcontent_testimonials` ENABLE KEYS */;
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
	(1,'Main Menu','mainMenu',3,'3',2,'2018-07-05 21:54:47','2018-07-05 21:55:09','6503bc0d-6f7f-4f3a-9402-d335a6e536af');

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
	(270,1,NULL,'strat-style','2018-07-05 22:29:47','2018-07-05 22:33:05','bd00733d-809e-4a3e-a247-eefd6f937cc3'),
	(271,1,262,'','2018-07-05 22:30:25','2018-07-05 22:30:25','75306846-7d21-4fc1-b405-d7c187d6a9a9');

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
	(1,'Menus','0.9',NULL,NULL,'unknown',1,NULL,'2018-07-05 21:54:01','2018-07-05 21:54:01','2018-07-05 21:54:01','674d3e8d-8597-46ac-a5df-6852619f6bd2');

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
	(538,50,2,NULL,134,1,'2015-02-04 15:13:27','2015-02-04 15:13:27','d5a1ce8e-bbbe-4cab-9cf2-a01be0168811'),
	(539,54,136,NULL,135,1,'2015-02-04 15:13:27','2015-02-04 15:13:27','c1468ff1-535f-496d-9bd3-ec5d0aa9bf1c'),
	(540,54,138,NULL,137,1,'2015-02-04 15:13:28','2015-02-04 15:13:28','00997062-18a6-47e3-bb0b-4aabc5b30bd9'),
	(541,54,139,NULL,140,1,'2015-02-04 15:13:28','2015-02-04 15:13:28','318e3409-875c-4f62-b613-e07085aca491'),
	(542,55,2,NULL,141,1,'2015-02-04 15:13:28','2015-02-04 15:13:28','31b3672b-b801-46ff-bd6b-7df2ed1b29fa'),
	(543,55,2,NULL,142,2,'2015-02-04 15:13:28','2015-02-04 15:13:28','87242145-ad88-4d81-9c02-5acd3300ea22'),
	(544,55,2,NULL,143,3,'2015-02-04 15:13:28','2015-02-04 15:13:28','2031a470-a76b-4254-8cf6-99ed3f9f516d'),
	(545,55,2,NULL,144,4,'2015-02-04 15:13:28','2015-02-04 15:13:28','db88d69b-5824-4ee6-9bbf-b9fb51f3ec3f'),
	(546,55,2,NULL,145,5,'2015-02-04 15:13:28','2015-02-04 15:13:28','018e76e0-d8f8-4e0a-8efe-1931c519ee38'),
	(728,9,240,NULL,219,1,'2015-02-10 18:08:01','2015-02-10 18:08:01','cafe5f26-7887-40a4-9a14-8f7da4905793'),
	(729,69,244,NULL,222,1,'2015-02-10 18:08:01','2015-02-10 18:08:01','5968b313-ce84-4cf9-9335-bf62b84bcc71'),
	(730,69,244,NULL,220,2,'2015-02-10 18:08:01','2015-02-10 18:08:01','14424593-4d5e-43b0-bd16-cfdd354aab6d'),
	(731,69,244,NULL,221,3,'2015-02-10 18:08:01','2015-02-10 18:08:01','d2f16da9-f18b-4ccb-a156-7eef4e7dd0fd'),
	(741,15,101,NULL,100,1,'2016-06-03 17:42:26','2016-06-03 17:42:26','cd600c57-583e-41ee-b4e8-bcd3360a118f'),
	(742,15,105,NULL,104,1,'2016-06-03 17:42:35','2016-06-03 17:42:35','9fc7fa05-4744-4a88-aad4-5c5b64a24767'),
	(743,15,99,NULL,98,1,'2016-06-03 17:42:43','2016-06-03 17:42:43','edc2f8c0-e32b-4e66-a5b8-3a7bd4c35efb'),
	(744,15,61,NULL,102,1,'2016-06-03 17:42:53','2016-06-03 17:42:53','1755fb19-5848-43f6-8b44-df6349b08395'),
	(745,9,73,NULL,72,1,'2016-06-03 17:42:53','2016-06-03 17:42:53','072f70e9-feb5-4f80-8a1a-150a76c63aa4'),
	(746,9,64,NULL,59,1,'2016-06-03 17:42:53','2016-06-03 17:42:53','d017f690-32fe-41f2-ae62-482ac9997bee'),
	(747,9,69,NULL,60,1,'2016-06-03 17:42:53','2016-06-03 17:42:53','13fb29d7-66f4-4c26-93e0-242b2a7605f2'),
	(748,15,45,NULL,42,1,'2016-06-03 17:43:06','2016-06-03 17:43:06','cb94c8bc-ad30-493e-b5e4-4865c4a0b870'),
	(749,69,252,NULL,249,1,'2016-06-03 17:43:06','2016-06-03 17:43:06','969ac4c5-d674-4f03-a052-600c466259ad'),
	(750,69,252,NULL,250,2,'2016-06-03 17:43:06','2016-06-03 17:43:06','0463c633-7809-476e-94fc-918b3be89b3b'),
	(751,69,252,NULL,251,3,'2016-06-03 17:43:06','2016-06-03 17:43:06','83e6bc0d-ffc8-4116-98f1-f4d2a94548db'),
	(752,9,50,NULL,44,1,'2016-06-03 17:43:06','2016-06-03 17:43:06','6e21cd8c-9c64-4976-a372-319075022c4d'),
	(753,15,4,NULL,6,1,'2016-06-03 17:43:25','2016-06-03 17:43:25','f51ea115-5452-4114-bc5e-50d886dbcc63'),
	(754,9,11,NULL,7,1,'2016-06-03 17:43:25','2016-06-03 17:43:25','d6c5f965-2f70-4afe-94b1-a78c0ced1086'),
	(755,9,16,NULL,8,1,'2016-06-03 17:43:25','2016-06-03 17:43:25','4755d8b0-3c21-4971-8aa4-c97d67e28203'),
	(756,15,24,NULL,23,1,'2016-06-03 17:43:36','2016-06-03 17:43:36','d0354003-5f77-4a99-bf8c-554fa0a1bef1'),
	(757,9,31,NULL,28,1,'2016-06-03 17:43:36','2016-06-03 17:43:36','53d291ce-71ec-407f-9cf2-da054d0b56f5'),
	(758,9,41,NULL,40,1,'2016-06-03 17:43:36','2016-06-03 17:43:36','44374e75-b211-4135-b444-cc2ae7625bae'),
	(759,9,37,NULL,29,1,'2016-06-03 17:43:37','2016-06-03 17:43:37','b2c774b8-9756-493b-abf0-5ab84117092b'),
	(760,80,262,NULL,261,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','13b53ba1-dd78-49c0-94a5-c0d03f620309');

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
	(2,'field',2,'en',' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon happylager dev will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
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
	(6,'filename',0,'en',' water barley hops jpg '),
	(6,'extension',0,'en',' jpg '),
	(6,'kind',0,'en',' image '),
	(6,'slug',0,'en',' water barley hops '),
	(6,'title',0,'en',' water barley hops '),
	(7,'filename',0,'en',' laptop desk jpg '),
	(7,'extension',0,'en',' jpg '),
	(7,'kind',0,'en',' image '),
	(7,'slug',0,'en',' laptop desk '),
	(7,'title',0,'en',' laptop desk '),
	(8,'filename',0,'en',' coffee shop jpg '),
	(8,'extension',0,'en',' jpg '),
	(8,'kind',0,'en',' image '),
	(8,'slug',0,'en',' coffee shop '),
	(8,'title',0,'en',' coffee shop '),
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
	(23,'filename',0,'en',' augmented reality jpg '),
	(23,'extension',0,'en',' jpg '),
	(23,'kind',0,'en',' image '),
	(23,'slug',0,'en',' augmented reality '),
	(23,'title',0,'en',' augmented reality '),
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
	(28,'filename',0,'en',' video jpg '),
	(28,'extension',0,'en',' jpg '),
	(28,'kind',0,'en',' image '),
	(28,'slug',0,'en',' video '),
	(28,'title',0,'en',' video '),
	(29,'filename',0,'en',' augmented reality icons png '),
	(29,'extension',0,'en',' png '),
	(29,'kind',0,'en',' image '),
	(29,'slug',0,'en',' augmented reality icons '),
	(29,'title',0,'en',' augmented reality icons '),
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
	(40,'filename',0,'en',' awesome cities jpg '),
	(40,'extension',0,'en',' jpg '),
	(40,'kind',0,'en',' image '),
	(40,'slug',0,'en',' awesome cities '),
	(40,'title',0,'en',' awesome cities '),
	(41,'field',9,'en',' awesome cities '),
	(41,'field',10,'en',' left '),
	(41,'slug',0,'en',''),
	(42,'filename',0,'en',' fist jpg '),
	(42,'extension',0,'en',' jpg '),
	(42,'kind',0,'en',' image '),
	(42,'slug',0,'en',' fist '),
	(42,'title',0,'en',' fist '),
	(44,'filename',0,'en',' pong png '),
	(44,'extension',0,'en',' png '),
	(44,'kind',0,'en',' image '),
	(44,'slug',0,'en',' pong '),
	(44,'title',0,'en',' pong '),
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
	(249,'field',47,'en',''),
	(249,'filename',0,'en',' bike jpg '),
	(249,'extension',0,'en',' jpg '),
	(249,'kind',0,'en',' image '),
	(249,'slug',0,'en',''),
	(249,'title',0,'en',' bike '),
	(250,'field',47,'en',''),
	(250,'filename',0,'en',' glasses jpg '),
	(250,'extension',0,'en',' jpg '),
	(250,'kind',0,'en',' image '),
	(250,'slug',0,'en',''),
	(250,'title',0,'en',' glasses '),
	(251,'field',47,'en',''),
	(251,'filename',0,'en',' skateboard jpg '),
	(251,'extension',0,'en',' jpg '),
	(251,'kind',0,'en',' image '),
	(251,'slug',0,'en',''),
	(251,'title',0,'en',' skateboard '),
	(252,'field',69,'en',' bike glasses skateboard '),
	(252,'slug',0,'en',''),
	(230,'field',70,'en',' center '),
	(39,'field',70,'en',' center '),
	(59,'filename',0,'en',' gallery png '),
	(59,'extension',0,'en',' png '),
	(59,'kind',0,'en',' image '),
	(59,'slug',0,'en',' gallery '),
	(59,'title',0,'en',' gallery '),
	(60,'filename',0,'en',' bar jpg '),
	(60,'extension',0,'en',' jpg '),
	(60,'kind',0,'en',' image '),
	(60,'slug',0,'en',' bar '),
	(60,'title',0,'en',' bar '),
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
	(72,'filename',0,'en',' macbook jpg '),
	(72,'extension',0,'en',' jpg '),
	(72,'kind',0,'en',' image '),
	(72,'slug',0,'en',' macbook '),
	(72,'title',0,'en',' macbook '),
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
	(220,'field',47,'en',' crystal stevensonceo and co founder '),
	(222,'field',47,'en',' liz murphypresident and co founder '),
	(221,'field',47,'en',' travis mortoncreative director '),
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
	(82,'filename',0,'en',' diva interface work jpg '),
	(82,'extension',0,'en',' jpg '),
	(82,'kind',0,'en',' image '),
	(82,'slug',0,'en',' diva interface work '),
	(82,'title',0,'en',' diva interface work '),
	(83,'filename',0,'en',' diva interface detail png '),
	(83,'extension',0,'en',' png '),
	(83,'kind',0,'en',' image '),
	(83,'slug',0,'en',' diva interface detail '),
	(83,'title',0,'en',' diva interface detail '),
	(84,'filename',0,'en',' diva mobile detail png '),
	(84,'extension',0,'en',' png '),
	(84,'kind',0,'en',' image '),
	(84,'slug',0,'en',' diva mobile detail '),
	(84,'title',0,'en',' diva mobile detail '),
	(87,'field',8,'en',' keep your favs close by '),
	(87,'slug',0,'en',''),
	(88,'field',5,'en',' vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum '),
	(88,'slug',0,'en',''),
	(91,'field',6,'en',' what the iphone has done for personal computing diva has done for celebrity stalking '),
	(91,'field',7,'en',' center '),
	(91,'slug',0,'en',''),
	(92,'field',5,'en',' josh rubin cool hunting '),
	(92,'slug',0,'en',''),
	(98,'filename',0,'en',' news link 1 image jpg '),
	(98,'extension',0,'en',' jpg '),
	(98,'kind',0,'en',' image '),
	(98,'slug',0,'en',' news link 1 image '),
	(98,'title',0,'en',' news link 1 image '),
	(99,'field',47,'en',' the path to what i m doing started with not knowing what i wanted to do i had to make a decision about what i wanted to do as i was graduating college and i could not figure it out i majored in english because i couldn t figure out how to express my love of '),
	(99,'field',15,'en',' news link 1 image '),
	(99,'field',46,'en',' http buildwithcraft com '),
	(99,'slug',0,'en',' fast company q a with robin richards '),
	(99,'title',0,'en',' fast company q a with robin richards '),
	(100,'filename',0,'en',' news link 2 image jpg '),
	(100,'extension',0,'en',' jpg '),
	(100,'kind',0,'en',' image '),
	(100,'slug',0,'en',' news link 2 image '),
	(100,'title',0,'en',' news link 2 image '),
	(101,'field',47,'en',' what a well developed site i really enjoy the design and the attention to details and performance great use of video and animations with css3 and js categories section with so many images and video had a very good scroll frame rate '),
	(101,'field',15,'en',' news link 2 image '),
	(101,'field',46,'en',' http buildwithcraft com '),
	(101,'slug',0,'en',' photography folio featured on awwwards com '),
	(101,'title',0,'en',' photography folio featured on awwwards com '),
	(61,'field',47,'en',' et harum quidem rerum facilis nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo mus quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut '),
	(73,'field',44,'en',''),
	(64,'field',44,'en',''),
	(69,'field',44,'en',''),
	(102,'filename',0,'en',' news entry 1 image jpg '),
	(102,'extension',0,'en',' jpg '),
	(102,'kind',0,'en',' image '),
	(102,'slug',0,'en',' news entry 1 image '),
	(102,'title',0,'en',' news entry 1 image '),
	(260,'field',76,'en',' 0759 1132 008 '),
	(218,'field',47,'en',''),
	(104,'filename',0,'en',' diva cover jpg '),
	(104,'extension',0,'en',' jpg '),
	(104,'kind',0,'en',' image '),
	(104,'slug',0,'en',' diva cover '),
	(104,'title',0,'en',' diva cover '),
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
	(115,'filename',0,'en',' email marketing jpg '),
	(115,'extension',0,'en',' jpg '),
	(115,'kind',0,'en',' image '),
	(115,'slug',0,'en',' email marketing '),
	(115,'title',0,'en',' email marketing '),
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
	(121,'filename',0,'en',' seo jpg '),
	(121,'extension',0,'en',' jpg '),
	(121,'kind',0,'en',' image '),
	(121,'slug',0,'en',' seo '),
	(121,'title',0,'en',' seo '),
	(123,'filename',0,'en',' app development jpg '),
	(123,'extension',0,'en',' jpg '),
	(123,'kind',0,'en',' image '),
	(123,'slug',0,'en',' app development '),
	(123,'title',0,'en',' app development '),
	(125,'filename',0,'en',' strategy jpg '),
	(125,'extension',0,'en',' jpg '),
	(125,'kind',0,'en',' image '),
	(125,'slug',0,'en',' strategy '),
	(125,'title',0,'en',' strategy '),
	(127,'filename',0,'en',' development jpg '),
	(127,'extension',0,'en',' jpg '),
	(127,'kind',0,'en',' image '),
	(127,'slug',0,'en',' development '),
	(127,'title',0,'en',' development '),
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
	(131,'filename',0,'en',' on track thumb jpg '),
	(131,'extension',0,'en',' jpg '),
	(131,'kind',0,'en',' image '),
	(131,'slug',0,'en',' on track thumb '),
	(131,'title',0,'en',' on track thumb '),
	(132,'filename',0,'en',' sports r us thumb jpg '),
	(132,'extension',0,'en',' jpg '),
	(132,'kind',0,'en',' image '),
	(132,'slug',0,'en',' sports r us thumb '),
	(132,'title',0,'en',' sports r us thumb '),
	(134,'filename',0,'en',' hero image jpg '),
	(134,'extension',0,'en',' jpg '),
	(134,'kind',0,'en',' image '),
	(134,'slug',0,'en',' hero image '),
	(134,'title',0,'en',' hero image '),
	(2,'field',50,'en',' hero image '),
	(135,'filename',0,'en',' larry page png '),
	(135,'extension',0,'en',' png '),
	(135,'kind',0,'en',' image '),
	(135,'slug',0,'en',' portrait larry page '),
	(135,'title',0,'en',' larry page '),
	(2,'field',51,'en',' larry page larry page happy lager delivered the most comprehensive strategy from a boutique company that i ve ever seen ryan reynolds ryan reynolds i don t know where to begin i can t recommend happy lager highly enough bob guff bob guff happy lager sells the good stuff '),
	(260,'field',41,'en',' hello apexmusic co '),
	(136,'field',52,'en',' happy lager delivered the most comprehensive strategy from a boutique company that i ve ever seen '),
	(136,'field',53,'en',' larry page '),
	(136,'field',54,'en',' larry page '),
	(136,'slug',0,'en',''),
	(137,'filename',0,'en',' ryan reynolds png '),
	(137,'extension',0,'en',' png '),
	(137,'kind',0,'en',' image '),
	(137,'slug',0,'en',' testimonial photo 2 '),
	(137,'title',0,'en',' ryan reynolds '),
	(138,'field',52,'en',' i don t know where to begin i can t recommend happy lager highly enough '),
	(138,'field',53,'en',' ryan reynolds '),
	(138,'field',54,'en',' ryan reynolds '),
	(138,'slug',0,'en',''),
	(139,'field',52,'en',' happy lager sells the good stuff '),
	(260,'slug',0,'en',''),
	(139,'field',53,'en',' bob guff '),
	(139,'field',54,'en',' bob guff '),
	(139,'slug',0,'en',''),
	(140,'filename',0,'en',' bob guff png '),
	(140,'extension',0,'en',' png '),
	(140,'kind',0,'en',' image '),
	(140,'slug',0,'en',' testimonials photo 3 '),
	(140,'title',0,'en',' bob guff '),
	(141,'filename',0,'en',' logo coke png '),
	(141,'extension',0,'en',' png '),
	(141,'kind',0,'en',' image '),
	(141,'slug',0,'en',''),
	(141,'title',0,'en',' logo coke '),
	(142,'filename',0,'en',' logo google png '),
	(142,'extension',0,'en',' png '),
	(142,'kind',0,'en',' image '),
	(142,'slug',0,'en',''),
	(142,'title',0,'en',' logo google '),
	(143,'filename',0,'en',' logo jetblue png '),
	(143,'extension',0,'en',' png '),
	(143,'kind',0,'en',' image '),
	(143,'slug',0,'en',''),
	(143,'title',0,'en',' logo jetblue '),
	(144,'filename',0,'en',' logo mtv png '),
	(144,'extension',0,'en',' png '),
	(144,'kind',0,'en',' image '),
	(144,'slug',0,'en',''),
	(144,'title',0,'en',' logo mtv '),
	(145,'filename',0,'en',' logo newbelgium png '),
	(145,'extension',0,'en',' png '),
	(145,'kind',0,'en',' image '),
	(145,'slug',0,'en',''),
	(145,'title',0,'en',' logo newbelgium '),
	(2,'field',55,'en',' logo coke logo google logo jetblue logo mtv logo newbelgium '),
	(146,'filename',0,'en',' sportsrus bigfeature jpg '),
	(146,'extension',0,'en',' jpg '),
	(146,'kind',0,'en',' image '),
	(146,'slug',0,'en',' sportsrus bigfeature '),
	(146,'title',0,'en',' sportsrus bigfeature '),
	(147,'filename',0,'en',' diva bigimage jpg '),
	(147,'extension',0,'en',' jpg '),
	(147,'kind',0,'en',' image '),
	(147,'slug',0,'en',' diva bigimage '),
	(147,'title',0,'en',' diva bigimage '),
	(148,'filename',0,'en',' ontrack bigimage jpg '),
	(148,'extension',0,'en',' jpg '),
	(148,'kind',0,'en',' image '),
	(148,'slug',0,'en',' ontrack bigimage '),
	(148,'title',0,'en',' ontrack bigimage '),
	(149,'field',5,'en',' with a community that s always in motion we took their e commerce experience to a new level doubling sales in the first quarter sports r us is ready to take on their next challenge '),
	(149,'slug',0,'en',''),
	(151,'filename',0,'en',' strategy_1 svg '),
	(151,'extension',0,'en',' svg '),
	(151,'kind',0,'en',' image '),
	(151,'slug',0,'en',''),
	(151,'title',0,'en',' strategy 1 '),
	(152,'filename',0,'en',' app development svg '),
	(152,'extension',0,'en',' svg '),
	(152,'kind',0,'en',' image '),
	(152,'slug',0,'en',' app development '),
	(152,'title',0,'en',' app development '),
	(153,'filename',0,'en',' design svg '),
	(153,'extension',0,'en',' svg '),
	(153,'kind',0,'en',' image '),
	(153,'slug',0,'en',' design '),
	(153,'title',0,'en',' design '),
	(154,'filename',0,'en',' email marketing svg '),
	(154,'extension',0,'en',' svg '),
	(154,'kind',0,'en',' image '),
	(154,'slug',0,'en',' email marketing '),
	(154,'title',0,'en',' email marketing '),
	(155,'filename',0,'en',' development svg '),
	(155,'extension',0,'en',' svg '),
	(155,'kind',0,'en',' image '),
	(155,'slug',0,'en',' development '),
	(155,'title',0,'en',' development '),
	(156,'filename',0,'en',' seo svg '),
	(156,'extension',0,'en',' svg '),
	(156,'kind',0,'en',' image '),
	(156,'slug',0,'en',' seo '),
	(156,'title',0,'en',' seo '),
	(157,'filename',0,'en',' strategy svg '),
	(157,'extension',0,'en',' svg '),
	(157,'kind',0,'en',' image '),
	(157,'slug',0,'en',' strategy '),
	(157,'title',0,'en',' strategy '),
	(161,'field',8,'en',' we pride ourselves in our toned apps '),
	(161,'slug',0,'en',''),
	(162,'field',5,'en',' we ve been developing them libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facer possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum quod maxime placeat facernecessitatibus '),
	(162,'slug',0,'en',''),
	(163,'filename',0,'en',' discover jpg '),
	(163,'extension',0,'en',' jpg '),
	(163,'kind',0,'en',' image '),
	(163,'slug',0,'en',' discover '),
	(163,'title',0,'en',' discover '),
	(164,'field',9,'en',' discover '),
	(164,'field',44,'en',''),
	(164,'field',10,'en',' right '),
	(164,'slug',0,'en',''),
	(165,'field',8,'en',' discover your audience '),
	(165,'slug',0,'en',''),
	(166,'field',5,'en',' your audience is human but their device is not we like to cross that gap by engaging your audience in casual conversation as one would at their local pub '),
	(166,'slug',0,'en',''),
	(167,'filename',0,'en',' explore jpg '),
	(167,'extension',0,'en',' jpg '),
	(167,'kind',0,'en',' image '),
	(167,'slug',0,'en',' explore '),
	(167,'title',0,'en',' explore '),
	(168,'filename',0,'en',' create genius jpg '),
	(168,'extension',0,'en',' jpg '),
	(168,'kind',0,'en',' image '),
	(168,'slug',0,'en',' create genius '),
	(168,'title',0,'en',' create genius '),
	(183,'kind',0,'en',' image '),
	(183,'slug',0,'en',' moosic app ui '),
	(183,'title',0,'en',' moosic app ui '),
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
	(183,'filename',0,'en',' moosic app ui jpg '),
	(183,'extension',0,'en',' jpg '),
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
	(214,'field',8,'en',' simpler faster better '),
	(214,'slug',0,'en',''),
	(218,'filename',0,'en',' chicago office jpg '),
	(218,'extension',0,'en',' jpg '),
	(218,'kind',0,'en',' image '),
	(218,'slug',0,'en',' contact building '),
	(218,'title',0,'en',' happy lager chicago '),
	(219,'filename',0,'en',' macbook table jpg '),
	(219,'extension',0,'en',' jpg '),
	(219,'kind',0,'en',' image '),
	(219,'slug',0,'en',' macbook table '),
	(219,'title',0,'en',' macbook table '),
	(220,'filename',0,'en',' crystal jpg '),
	(220,'extension',0,'en',' jpg '),
	(220,'kind',0,'en',' image '),
	(220,'slug',0,'en',' staff christopher '),
	(220,'title',0,'en',' crystal stevenson '),
	(221,'filename',0,'en',' travis jpg '),
	(221,'extension',0,'en',' jpg '),
	(221,'kind',0,'en',' image '),
	(221,'slug',0,'en',' staff jonathan '),
	(221,'title',0,'en',' travis morton '),
	(222,'filename',0,'en',' liz jpg '),
	(222,'extension',0,'en',' jpg '),
	(222,'kind',0,'en',' image '),
	(222,'slug',0,'en',' staff robin '),
	(222,'title',0,'en',' liz murphy '),
	(223,'filename',0,'en',' skis jpg '),
	(223,'extension',0,'en',' jpg '),
	(223,'kind',0,'en',' image '),
	(223,'slug',0,'en',' skis '),
	(223,'title',0,'en',' skis '),
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
	(3,1,'1c49b3fa76bd87c9420ded5db1d540caf4d295d9czozMjoiZlRuYnJielIxVDFOanRCeTcxY0JBcGhIdWRtZkR6MmIiOw==','2018-07-05 19:34:15','2018-07-05 19:34:15','87600594-2582-4486-9066-3ebbf9d6a0d7');

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
	(11,2,271,3,8,9,3,'2018-07-05 22:30:25','2018-07-05 22:30:25','50994797-fb46-43d8-b02a-15d5bb0feaff');

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
	(2,3,'2018-07-05 21:54:47','2018-07-05 21:55:09','5299f0df-ca0b-4226-a4d4-d3696b022f31');

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
	(1,'admin',NULL,'','','info@refresh-digital.com','$2a$13$5j8bSRoKQZipjtIg6FXWR.kGRR3UfCL.QeMIt2yTRH1.hCNHLQKtq',NULL,0,1,0,0,0,0,0,'2018-07-05 19:34:15','::1',NULL,NULL,'2018-07-05 19:34:04',NULL,NULL,NULL,NULL,0,NULL,'2016-08-22 18:42:37','2018-07-05 19:34:15','953aedcd-73c8-4677-b0c5-4241e8fbb14c');

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
