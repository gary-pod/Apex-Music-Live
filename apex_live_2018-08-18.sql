# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.38)
# Database: apex_live
# Generation Time: 2018-08-18 16:57:56 +0000
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
	(362,1,1,'apex-home-bg-1.jpg','image',5184,2916,2647815,'2018-08-14 18:45:48','2018-07-26 17:11:26','2018-08-18 13:58:38','698690fc-d3b8-41cf-9f7f-d3b2db54af70'),
	(363,1,1,'apex-studio-3.jpg','image',1200,800,1564184,'2018-08-14 18:45:48','2018-07-26 17:12:19','2018-08-18 13:58:39','82992ac7-dffe-4945-807b-984e9dbe54e7'),
	(364,1,1,'apex-studio-6.jpg','image',1200,800,1042050,'2018-08-14 18:45:48','2018-07-26 17:12:24','2018-08-18 13:58:41','b743636e-2da4-49b8-97e5-0258d702307c'),
	(365,1,1,'apex-studio-8.jpg','image',1200,800,836790,'2018-08-14 18:45:52','2018-07-26 17:12:27','2018-08-18 13:58:42','d7a8befe-5ebc-4648-aafc-917e373e0a13'),
	(366,1,1,'apex-studio-9.jpg','image',1200,800,1075554,'2018-08-14 18:45:52','2018-07-26 17:12:28','2018-08-18 13:58:43','bd523186-10a0-408e-9953-6eb3d12c79ae'),
	(367,1,1,'about-images-1.jpg','image',1600,900,1522216,'2018-08-14 18:45:46','2018-07-26 17:17:33','2018-08-18 13:58:34','d2e99131-8019-4fa3-803a-85332670f913'),
	(369,1,1,'apex-mountain.svg','image',509,199,2134,'2018-08-14 18:45:48','2018-07-26 17:17:41','2018-08-18 13:58:38','2f3ff7be-a42f-4924-a724-c043c3b9b0bc'),
	(370,1,1,'apex-studio-1.jpg','image',1200,800,1321204,'2018-08-14 18:45:48','2018-07-26 17:17:46','2018-08-18 13:58:39','8803d809-aea5-4b39-b246-152d425eda21'),
	(371,1,1,'apex-studio-2.jpg','image',1200,800,1098683,'2018-08-14 18:45:48','2018-07-26 17:17:48','2018-08-18 13:58:39','6c4c9bf3-e0fb-4cb4-86ed-3d65af0ab9f0'),
	(373,1,1,'apex-studio-4.jpg','image',1200,800,1241417,'2018-08-14 18:45:48','2018-07-26 17:17:58','2018-08-18 13:58:40','3ea0d5ef-d38f-49df-b2fb-6fd967497a43'),
	(374,1,1,'apex-studio-5.jpg','image',1200,800,1095680,'2018-08-14 18:45:48','2018-07-26 17:18:02','2018-08-18 13:58:40','1a91379f-e61f-42f9-948e-a52aaab95a60'),
	(376,1,1,'apex-studio-6.png','image',1200,800,1573580,'2018-08-14 18:45:50','2018-07-26 17:18:09','2018-08-18 13:58:41','9816d7e9-b065-4c95-b681-fb29d439458e'),
	(377,1,1,'apex-studio-7.jpg','image',1200,800,1100564,'2018-08-14 18:45:50','2018-07-26 17:18:11','2018-08-18 13:58:42','e8124e52-dfb3-4285-8da7-c99f1e78d075'),
	(380,1,1,'bg-texture-a.jpg','image',400,400,103218,'2018-08-14 18:45:52','2018-07-26 17:18:18','2018-08-18 13:58:43','5b7d415d-e83b-48f7-9419-075b2c4a38e5'),
	(381,1,1,'bg-texture-b.jpg','image',400,400,91908,'2018-08-14 18:45:52','2018-07-26 17:18:18','2018-08-18 13:58:43','d9b17a9a-adbf-480f-9fd0-22ccf8783f61'),
	(382,1,1,'bg-texture-c.jpg','image',400,400,82941,'2018-08-14 18:45:52','2018-07-26 17:18:19','2018-08-18 13:58:43','ce15dce8-0a1a-404c-9ff5-4dbea3d8bc79'),
	(383,1,1,'blog-post-1.jpg','image',2048,1152,315657,'2018-08-14 18:45:52','2018-07-26 17:18:20','2018-08-18 13:58:44','b522db96-fdbd-450a-81cb-47a377063556'),
	(384,1,1,'concrete-texture.png','image',400,400,367553,'2018-08-14 18:45:52','2018-07-26 17:18:21','2018-08-18 13:58:45','66478080-a359-43c6-95d8-08e1232ea771'),
	(387,1,1,'hero-logo.png','image',622,432,47187,'2018-08-14 18:45:56','2018-07-26 17:18:27','2018-08-18 13:58:46','cb238619-044a-492b-a880-1dbd04edaa80'),
	(388,1,1,'hero-logo.svg','image',598,408,8328,'2018-08-14 18:45:56','2018-07-26 17:18:27','2018-08-18 13:58:47','5d558c02-28c9-4df6-a268-db242787a80d'),
	(389,1,1,'menu-logo.png','image',144,96,8254,'2018-08-14 18:45:56','2018-07-26 17:18:28','2018-08-18 13:58:49','18edf4c9-466d-4f26-812c-cfc8b001da6a'),
	(390,1,1,'menu-logo.svg','image',72,48,7442,'2018-08-14 18:45:56','2018-07-26 17:18:28','2018-08-18 13:58:49','dbfba444-a678-4b57-b2e5-51ef3fe2da47'),
	(391,1,1,'mountain-bg.svg','image',480,180,2042,'2018-08-14 18:45:56','2018-07-26 17:18:28','2018-08-18 13:58:49','7ef385df-a9b2-4548-8dff-89f3b2fe6fd7'),
	(392,1,1,'mountian-light.png','image',478,180,19464,'2018-08-14 18:45:56','2018-07-26 17:18:29','2018-08-18 13:58:50','c02adfca-dfe7-408c-9b74-47980f767bc2'),
	(393,1,1,'mountian-light.svg','image',478,180,1308,'2018-08-14 18:45:56','2018-07-26 17:18:29','2018-08-18 13:58:50','514aa85c-3925-4faa-a068-d013ace2ae09'),
	(395,1,1,'pat.png','image',1103,504,637909,'2018-08-14 18:45:56','2018-07-26 17:18:33','2018-08-18 13:58:52','a2ab91e2-d8a8-4bd5-a730-69d751776259'),
	(396,1,1,'pickup-index-bg.png','image',2880,700,3776665,'2018-08-14 18:45:56','2018-07-26 17:18:41','2018-08-18 13:58:53','bcdff75d-a64c-4f1d-918b-7210e4acc325'),
	(397,1,1,'pickups-bg.png','image',1115,627,1369759,'2018-08-14 18:45:58','2018-07-26 17:18:44','2018-08-18 13:58:54','07c27ebb-9996-436d-9e59-f6449cea438f'),
	(400,1,1,'single-coil-cream.jpg','image',2500,2500,256023,'2018-08-14 18:45:58','2018-07-26 17:18:47','2018-08-18 13:58:58','9e756148-e0b3-425e-98fd-916f7d4f4bae'),
	(401,1,1,'slider-holder.png','image',2206,1080,1353867,'2018-08-14 18:45:58','2018-07-26 17:18:53','2018-08-18 13:58:59','90fbc3de-0a38-4985-a5b1-e5eb297cdce4'),
	(402,1,1,'studio-bg.png','image',1120,629,1445980,'2018-08-14 18:45:58','2018-07-26 17:18:55','2018-08-18 13:59:00','24733e29-9609-42ee-a57b-928661817608'),
	(403,1,1,'team-dani.jpg','image',500,500,131871,'2018-08-14 18:45:58','2018-07-26 17:18:55','2018-08-18 13:59:00','ed5138fa-377a-444b-ab31-9270108b8476'),
	(404,1,1,'team-dani.png','image',602,617,261118,'2018-08-14 18:45:58','2018-07-26 17:19:04','2018-08-18 13:59:01','b1a94e69-b29c-42b8-94bb-10b30709d779'),
	(405,1,1,'team-graham.jpg','image',500,500,186539,'2018-08-14 18:45:58','2018-07-26 17:19:05','2018-08-18 13:59:01','7bec51de-2aef-46ea-b97b-a8759549f18f'),
	(406,1,1,'team-oran.jpg','image',500,500,276319,'2018-08-14 18:45:58','2018-07-26 17:19:06','2018-08-18 13:59:01','52f9ed49-8969-4cfc-bdcd-e44e2e0d6773'),
	(407,1,1,'team-willy.jpg','image',500,500,286826,'2018-08-14 18:45:58','2018-07-26 17:19:08','2018-08-18 13:59:02','18b0e8cd-637c-4b05-bb93-b3ac71e53025'),
	(408,1,1,'team-willy.png','image',602,451,433072,'2018-08-14 18:45:58','2018-07-26 17:19:14','2018-08-18 13:59:02','f579618c-cdf9-4976-9020-e12b21963fca'),
	(410,1,1,'workshop-bg.png','image',1120,632,1458788,'2018-08-14 18:46:00','2018-07-26 17:19:20','2018-08-18 13:59:06','a7cd4ae6-4360-4a90-880f-d660015b9d1c'),
	(414,1,1,'dani.jpg','image',1500,2380,2124475,'2018-08-14 18:45:56','2018-07-29 18:53:42','2018-08-18 13:58:45','a207fd83-0f26-488c-8bb7-d251f3b87425'),
	(415,1,1,'oran.jpg','image',1500,2380,2293492,'2018-08-14 18:45:56','2018-07-29 18:54:24','2018-08-18 13:58:52','f35453b8-6804-46ba-97eb-5b2012b72223'),
	(416,1,1,'willy.jpg','image',1500,2380,2125179,'2018-08-14 18:46:00','2018-07-29 18:55:18','2018-08-18 13:59:06','2b3699fc-09d6-43ef-98ca-2f709525f291'),
	(417,1,1,'repair-1.jpg','image',400,500,144234,'2018-08-14 18:45:58','2018-07-29 18:56:38','2018-08-18 13:58:56','601a2e22-b166-4c0b-83c7-00ce0b155efc'),
	(418,1,1,'fret-level.jpg','image',400,500,130515,'2018-08-14 18:45:56','2018-07-29 18:58:15','2018-08-18 13:58:46','5358973f-0c44-485f-92f1-3f4c66f39d0c'),
	(419,1,1,'re-fret.jpg','image',400,500,173875,'2018-08-14 18:45:58','2018-07-29 18:58:34','2018-08-18 13:58:55','6c34dd87-0b71-4b50-a9fc-9c6dbc5aa444'),
	(434,1,1,'Standard-clean.mp3','audio',NULL,NULL,832877,'2018-08-17 17:58:54','2018-08-01 16:46:15','2018-08-18 13:58:23','0e2a1034-612c-4687-87fe-c8b8f074079b'),
	(435,1,1,'Standard-dist.mp3','audio',NULL,NULL,1048949,'2018-08-17 17:59:16','2018-08-01 16:46:15','2018-08-18 13:58:24','893a7474-cbf5-43e2-9457-2ca986a6e639'),
	(436,1,1,'Standard-OD.mp3','audio',NULL,NULL,740077,'2018-08-17 17:59:26','2018-08-01 16:46:18','2018-08-18 13:58:23','3b9185cf-72d0-4759-bf83-49b0160df15a'),
	(440,1,1,'Humbucker-cream-and-black.jpg','image',6000,4000,3554937,'2018-08-14 18:45:40','2018-08-01 16:53:21','2018-08-18 13:58:20','3fd761ed-d126-446c-91c1-cc7bcded6551'),
	(441,1,1,'Tele-bridge.jpg','image',6000,4000,4864352,'2018-08-14 18:45:44','2018-08-01 16:54:41','2018-08-18 13:58:26','86edfffb-8371-4424-9dd4-ef363ae5e5d1'),
	(447,1,1,'tele-brodge-black.jpg','image',2500,2500,360180,'2018-08-14 18:45:58','2018-08-01 17:28:51','2018-08-18 13:59:03','a9480df9-6e6d-410e-8244-5c4b145ac1ec'),
	(448,1,1,'humbucker-black-and-white.jpg','image',2500,2500,248915,'2018-08-14 18:45:56','2018-08-01 17:29:15','2018-08-18 13:58:48','ff848fbe-ff8e-4a64-8e31-769cf2202421'),
	(449,1,1,'humbucker-cream.jpg','image',2500,2500,242403,'2018-08-14 18:45:56','2018-08-01 17:30:04','2018-08-18 13:58:48','88fdaf6c-d9b4-4235-85bd-65c8a7f31cec'),
	(450,1,1,'single-coil-white.jpg','image',2500,2500,193356,'2018-08-14 18:45:58','2018-08-01 17:30:29','2018-08-18 13:58:59','5f8bfbd0-20f9-47e7-a0fa-787adc42a8cc'),
	(451,1,1,'single-coil-black.jpg','image',2500,2500,183928,'2018-08-14 18:45:58','2018-08-01 17:30:59','2018-08-18 13:58:57','36772097-1f4b-474f-9857-21a66aa54586'),
	(456,1,1,'Humbucker-white.jpg','image',6000,4000,3785495,'2018-08-14 18:45:40','2018-08-07 18:26:30','2018-08-18 13:58:23','27720ec3-17cd-4f97-b882-684d2db5cb54'),
	(488,1,1,'Tex-Mod-B-Clean.mp3','audio',NULL,NULL,209687,'2018-08-14 18:45:44','2018-08-07 18:56:55','2018-08-18 13:58:26','501a6ea5-703c-4bf3-9772-be31322ba6a0'),
	(489,1,1,'Tex-Mod-B-Dist.mp3','audio',NULL,NULL,296621,'2018-08-14 18:45:44','2018-08-07 18:56:57','2018-08-18 13:58:27','d957f139-8e2e-4a10-9c3a-5f54453d8b5a'),
	(490,1,1,'Tex-Mod-B-OD.mp3','audio',NULL,NULL,292025,'2018-08-14 18:45:44','2018-08-07 18:56:58','2018-08-18 13:58:27','0a74a704-8c90-498b-8f1f-48177879c3b7'),
	(491,1,1,'Tex-Mod-B_M-Clean.mp3','audio',NULL,NULL,241034,'2018-08-14 18:45:44','2018-08-07 18:56:59','2018-08-18 13:58:27','22d74b1d-5f57-41f9-aa81-9c4fe0f769aa'),
	(492,1,1,'Tex-Mod-B_M-Dist.mp3','audio',NULL,NULL,259006,'2018-08-14 18:45:44','2018-08-07 18:57:01','2018-08-18 13:58:27','898358f7-8bb9-44fb-9477-9528cf1cf1b9'),
	(493,1,1,'Tex-Mod-B_M-OD.mp3','audio',NULL,NULL,273635,'2018-08-14 18:45:44','2018-08-07 18:57:02','2018-08-18 13:58:28','b6d7a302-d6b0-4634-83a9-0f672c1272d7'),
	(494,1,1,'Tex-Mod-M-Clean.mp3','audio',NULL,NULL,253573,'2018-08-14 18:45:44','2018-08-07 18:57:03','2018-08-18 13:58:28','b72d381a-7478-423c-a816-fa045c998fff'),
	(495,1,1,'Tex-Mod-M-Dist.mp3','audio',NULL,NULL,335493,'2018-08-14 18:45:44','2018-08-07 18:57:05','2018-08-18 13:58:28','77fcd188-616b-414a-b325-b31a1bfcd999'),
	(496,1,1,'Tex-Mod-M-OD.mp3','audio',NULL,NULL,268619,'2018-08-14 18:45:44','2018-08-07 18:57:05','2018-08-18 13:58:29','a0b3dd88-ccbe-4f17-b0cb-e1aba6254a1b'),
	(497,1,1,'Tex-Mod-M_N-Clean.mp3','audio',NULL,NULL,210105,'2018-08-14 18:45:44','2018-08-07 18:57:07','2018-08-18 13:58:29','4de9f3bb-0c68-4b17-a736-99708acca13e'),
	(498,1,1,'Tex-Mod-M_N-Dist.mp3','audio',NULL,NULL,260678,'2018-08-14 18:45:44','2018-08-07 18:57:08','2018-08-18 13:58:30','f3440b76-7af4-45ec-af4d-aa609588afe8'),
	(499,1,1,'Tex-Mod-M_N-OD.mp3','audio',NULL,NULL,271545,'2018-08-14 18:45:44','2018-08-07 18:57:10','2018-08-18 13:58:30','71c7922a-ed24-4795-b9ef-3b856781d449'),
	(500,1,1,'Tex-Mod-N-Clean.mp3','audio',NULL,NULL,247721,'2018-08-14 18:45:44','2018-08-07 18:57:11','2018-08-18 13:58:30','9d59d80f-5e5c-4655-874e-dfc433217383'),
	(501,1,1,'Tex-Mod-N-Dist.mp3','audio',NULL,NULL,365586,'2018-08-14 18:45:44','2018-08-07 18:57:13','2018-08-18 13:58:30','c51a0899-c470-41c9-9f91-1e9e26ef710c'),
	(502,1,1,'Tex-Mod-N-OD.mp3','audio',NULL,NULL,217210,'2018-08-14 18:45:44','2018-08-07 18:57:14','2018-08-18 13:58:31','b89f2555-abab-4b18-9797-0fa7f7425eb3'),
	(511,1,1,'Twang-Cities-B-Clean.mp3','audio',NULL,NULL,388156,'2018-08-14 18:45:44','2018-08-07 19:28:17','2018-08-18 13:58:31','cc5026e5-42d4-41e1-b143-49adea819229'),
	(512,1,1,'Twang-Cities-B-Dist.mp3','audio',NULL,NULL,270291,'2018-08-14 18:45:44','2018-08-07 19:28:20','2018-08-18 13:58:31','630e6905-d1fe-4b1d-a00b-4fa2c40ea2bc'),
	(513,1,1,'Twang-Cities-B-OD.mp3','audio',NULL,NULL,557429,'2018-08-14 18:45:46','2018-08-07 19:28:21','2018-08-18 13:58:31','20a9e192-fbe9-4b1d-9d74-accd7ca8057a'),
	(514,1,1,'Twang-Cities-B_N-Clean.mp3','audio',NULL,NULL,342598,'2018-08-14 18:45:46','2018-08-07 19:28:22','2018-08-18 13:58:32','931c7290-e991-4ca7-9174-09b59cca2f13'),
	(515,1,1,'Twang-Cities-B_N-Dist.mp3','audio',NULL,NULL,325896,'2018-08-14 18:45:46','2018-08-07 19:28:23','2018-08-18 13:58:32','bf864f0a-1b61-4413-8bb4-1995d5462653'),
	(516,1,1,'Twang-Cities-B_N-OD.mp3','audio',NULL,NULL,401530,'2018-08-14 18:45:46','2018-08-07 19:28:24','2018-08-18 13:58:32','7472f776-e279-4257-a134-941b4e8f5b1f'),
	(517,1,1,'Twang-Cities-N-Clean.mp3','audio',NULL,NULL,402366,'2018-08-14 18:45:46','2018-08-07 19:28:25','2018-08-18 13:58:33','83cd89f0-2150-4036-9a38-bd05a05c198e'),
	(518,1,1,'Twang-Cities-N-Dist.mp3','audio',NULL,NULL,175414,'2018-08-14 18:45:46','2018-08-07 19:28:26','2018-08-18 13:58:33','403e1d42-5b1d-4100-b9e9-e9410bdd6190'),
	(538,1,1,'Twang-Cities-N-OD.mp3','audio',NULL,NULL,568296,'2018-08-14 18:45:46','2018-08-16 21:40:03','2018-08-18 13:58:33','5da6d36c-58fb-4d45-bba2-08ee8e89fb1a'),
	(539,1,1,'candle-535149_1920.jpg','image',1920,1280,562878,'2018-08-16 22:36:54','2018-08-16 21:40:12','2018-08-18 13:58:44','3434ea6d-ad5e-4813-aad2-8ec91cfc3405'),
	(540,1,1,'error-page.png','image',512,512,10178,'2018-08-14 18:45:56','2018-08-16 21:40:14','2018-08-18 13:58:46','87f19c11-1670-4fde-a1bb-46c064062835'),
	(541,1,1,'next.svg','image',28,25,2110,'2018-08-14 18:45:56','2018-08-16 21:40:16','2018-08-18 13:58:50','c313ca14-d6a3-4559-877b-b68ec1af7fc9'),
	(542,1,1,'pause.svg','image',38,44,1409,'2018-08-14 18:45:56','2018-08-16 21:40:18','2018-08-18 13:58:52','865566a6-4ea8-4559-bc7e-f0921b6be47e'),
	(543,1,1,'paypal-logo.png','image',663,162,9224,'2018-08-14 18:45:56','2018-08-16 21:40:18','2018-08-18 13:58:53','19aaf62e-f2a6-40cf-bb86-501782275624'),
	(544,1,1,'play.svg','image',40,44,1369,'2018-08-14 18:45:58','2018-08-16 21:40:21','2018-08-18 13:58:54','f3064ee7-bd8f-4d4d-908b-04ffc3a1a570'),
	(545,1,1,'previous.svg','image',29,24,2127,'2018-08-14 18:45:58','2018-08-16 21:40:21','2018-08-18 13:58:55','0481e451-3279-4a71-9f9d-c8b3e9312fd2'),
	(546,1,1,'shortcut-apple.png','image',128,128,7787,'2018-08-14 18:45:58','2018-08-16 21:40:22','2018-08-18 13:58:56','14ac7522-55cb-41f0-9636-a4b861253c8e'),
	(547,1,1,'shortcut.png','image',192,192,12737,'2018-08-14 18:45:58','2018-08-16 21:40:22','2018-08-18 13:58:56','67913b7f-9e35-4c07-bfd2-fb95b57799c3'),
	(548,1,1,'religion-864393_1920.jpg','image',1920,1279,780468,'2018-08-16 22:41:16','2018-08-16 21:41:16','2018-08-18 13:58:56','2621af6e-3982-4dca-b654-9de4ae0daf4d'),
	(549,1,1,'twang-cities-neck.mp3','audio',NULL,NULL,2540147,'2018-08-17 17:40:24','2018-08-17 16:40:25','2018-08-18 13:59:05','b314d59a-2e6b-4d90-931d-076b8884881e'),
	(550,1,1,'twang-cities-bridge-neck.mp3','audio',NULL,NULL,2344751,'2018-08-17 17:40:46','2018-08-17 16:40:45','2018-08-18 13:59:04','77c28211-c9e4-453d-9a9b-3e96aa166306'),
	(551,1,1,'twang-cities-bridge.mp3','audio',NULL,NULL,2712555,'2018-08-17 17:41:08','2018-08-17 16:41:07','2018-08-18 13:59:04','845d4096-3916-48c6-9171-8111ddf3393e'),
	(552,1,1,'texas-modern-neck.mp3','audio',NULL,NULL,1748115,'2018-08-17 17:41:22','2018-08-17 16:41:21','2018-08-18 13:59:04','d0900de3-1290-4e48-b642-19d427e2011e'),
	(553,1,1,'texas-modern-middle-neck.mp3','audio',NULL,NULL,1528686,'2018-08-17 17:41:34','2018-08-17 16:41:34','2018-08-18 13:59:03','b6309c69-f583-445c-8e99-60e7fa89f831'),
	(554,1,1,'texas-modern-middle.mp3','audio',NULL,NULL,1816033,'2018-08-17 17:41:50','2018-08-17 16:41:49','2018-08-18 13:59:04','81617dc5-d679-4b41-8059-d171b4e395a4'),
	(555,1,1,'texas-modern-bridge-middle.mp3','audio',NULL,NULL,1604964,'2018-08-17 17:42:04','2018-08-17 16:42:03','2018-08-18 13:59:03','8e124d4b-7e6b-4fa3-8136-c88452488144'),
	(556,1,1,'texas-modern-bridge.mp3','audio',NULL,NULL,1668702,'2018-08-17 17:42:20','2018-08-17 16:42:21','2018-08-18 13:59:03','e36b8a16-2822-453f-a8ae-c74b1f7db2d4'),
	(557,1,1,'apex-60s-neck.mp3','audio',NULL,NULL,2184882,'2018-08-17 17:42:42','2018-08-17 16:42:41','2018-08-18 13:58:36','891be765-997a-4937-88fb-c95ed21c8333'),
	(558,1,1,'apex-60s-middle-neck.mp3','audio',NULL,NULL,1704229,'2018-08-17 17:42:56','2018-08-17 16:42:55','2018-08-18 13:58:36','d7fefac3-b8e3-4c53-998d-ed2b18ee2813'),
	(559,1,1,'apex-60s-middle.mp3','audio',NULL,NULL,1856784,'2018-08-17 17:43:14','2018-08-17 16:43:14','2018-08-18 13:58:36','c76e699c-44c9-4a1a-a736-f82c34cd6007'),
	(560,1,1,'apex-60s-bridge-middle.mp3','audio',NULL,NULL,1564213,'2018-08-17 17:43:28','2018-08-17 16:43:27','2018-08-18 13:58:35','ded72cf5-695d-4eb9-976f-e7405846410f'),
	(561,1,1,'apex-60s-bridge.mp3','audio',NULL,NULL,1376131,'2018-08-17 17:43:38','2018-08-17 16:43:38','2018-08-18 13:58:36','bfaf4a9d-b8e5-4c00-99c5-1423098ed0df'),
	(562,1,1,'apex-50s-neck.mp3','audio',NULL,NULL,1528686,'2018-08-17 17:43:52','2018-08-17 16:43:51','2018-08-18 13:58:35','d16d1f5c-dc43-4a92-b874-72fe128c02ef'),
	(563,1,1,'apex-50s-middle-neck.mp3','audio',NULL,NULL,1184915,'2018-08-17 17:44:02','2018-08-17 16:44:01','2018-08-18 13:58:35','27784e31-e42e-4909-920b-c37c768d6d8f'),
	(564,1,1,'apex-50s-middle.mp3','audio',NULL,NULL,1420017,'2018-08-17 17:44:14','2018-08-17 16:44:14','2018-08-18 13:58:35','1682cf2a-a644-4781-b187-b0e8b01d3be8'),
	(565,1,1,'apex-50s-bridge-middle.mp3','audio',NULL,NULL,2132637,'2018-08-17 17:44:34','2018-08-17 16:44:33','2018-08-18 13:58:34','a394ecf2-a599-425d-af30-cea0bd04e79d'),
	(566,1,1,'apex-50s-bridge.mp3','audio',NULL,NULL,1668702,'2018-08-17 17:44:48','2018-08-17 16:44:47','2018-08-18 13:58:35','e07cff0a-58f2-4112-bf50-b1e342bc2c0e'),
	(567,1,1,'apex-34s-neck.mp3','audio',NULL,NULL,2404311,'2018-08-17 17:45:08','2018-08-17 16:45:07','2018-08-18 13:58:34','30eda932-73b9-45a7-b1f9-cbaec3803cb8'),
	(568,1,1,'apex-34s-bridge.mp3','audio',NULL,NULL,2660311,'2018-08-17 17:45:30','2018-08-17 16:45:29','2018-08-18 13:58:34','19655374-6d56-4418-8c3c-c4c43a55e9fa');

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

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;

INSERT INTO `craft_assetindexdata` (`id`, `sessionId`, `sourceId`, `offset`, `uri`, `size`, `recordId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,0,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Humbucker-cream-and-black.jpg',3554937,440,'2018-08-18 13:58:16','2018-08-18 13:58:18','c8d8fa86-edce-4ef7-846f-fd91b8723b6a'),
	(2,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,1,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Humbucker-white.jpg',3785495,456,'2018-08-18 13:58:16','2018-08-18 13:58:21','1a1e3c69-47a7-4309-9d8c-bdf21b8c1340'),
	(3,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,2,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Standard-OD.mp3',740077,436,'2018-08-18 13:58:16','2018-08-18 13:58:23','fb8f2e56-f257-4204-9677-15f7420ffa73'),
	(4,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,3,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Standard-clean.mp3',832877,434,'2018-08-18 13:58:16','2018-08-18 13:58:23','2a873486-b061-498e-8801-bcd864eae4e0'),
	(5,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,4,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Standard-dist.mp3',1048949,435,'2018-08-18 13:58:16','2018-08-18 13:58:24','1e97d99f-c659-4c25-b751-fdded0a26476'),
	(6,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,5,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tele-bridge.jpg',4864352,441,'2018-08-18 13:58:16','2018-08-18 13:58:24','c2c7fcd7-18c1-405c-aff8-d89c9d95351e'),
	(7,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,6,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-B-Clean.mp3',209687,488,'2018-08-18 13:58:16','2018-08-18 13:58:26','0f40920f-4344-4bff-8715-b460b0bf35b3'),
	(8,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,7,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-B-Dist.mp3',296621,489,'2018-08-18 13:58:16','2018-08-18 13:58:27','4916c6b0-c729-434d-a19c-753723d0dbb2'),
	(9,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,8,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-B-OD.mp3',292025,490,'2018-08-18 13:58:16','2018-08-18 13:58:27','83c72042-e0e8-475e-a522-ac27631ac5ac'),
	(10,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,9,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-B_M-Clean.mp3',241034,491,'2018-08-18 13:58:16','2018-08-18 13:58:27','514446b9-0b36-497a-8bdc-74385b047fcf'),
	(11,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,10,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-B_M-Dist.mp3',259006,492,'2018-08-18 13:58:16','2018-08-18 13:58:27','5786d0de-00a2-434c-8434-7aff2acc38cc'),
	(12,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,11,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-B_M-OD.mp3',273635,493,'2018-08-18 13:58:16','2018-08-18 13:58:27','3de8c7c7-8d0a-45ff-b2c2-7016810622ea'),
	(13,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,12,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-M-Clean.mp3',253573,494,'2018-08-18 13:58:16','2018-08-18 13:58:28','8cab4a6b-4e60-4b42-967e-dd212583c3d0'),
	(14,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,13,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-M-Dist.mp3',335493,495,'2018-08-18 13:58:16','2018-08-18 13:58:28','1c6f4f37-d00a-466c-9adf-ca77615c3591'),
	(15,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,14,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-M-OD.mp3',268619,496,'2018-08-18 13:58:16','2018-08-18 13:58:29','152e99d3-de64-4870-a464-6da32589febe'),
	(16,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,15,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-M_N-Clean.mp3',210105,497,'2018-08-18 13:58:16','2018-08-18 13:58:29','4506b7c1-c481-4cce-9ec3-224768b9d804'),
	(17,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,16,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-M_N-Dist.mp3',260678,498,'2018-08-18 13:58:16','2018-08-18 13:58:29','0e8876cc-349f-4b59-9c55-56913221e430'),
	(18,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,17,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-M_N-OD.mp3',271545,499,'2018-08-18 13:58:16','2018-08-18 13:58:30','edaff0de-425b-4f2d-854e-1868d81c6c6c'),
	(19,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,18,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-N-Clean.mp3',247721,500,'2018-08-18 13:58:16','2018-08-18 13:58:30','bbbe2cdb-4ac3-4690-bf7e-9761cca5a22e'),
	(20,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,19,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-N-Dist.mp3',365586,501,'2018-08-18 13:58:16','2018-08-18 13:58:30','71b28bb9-b7c1-42a0-ad76-b765a125481b'),
	(21,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,20,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Tex-Mod-N-OD.mp3',217210,502,'2018-08-18 13:58:16','2018-08-18 13:58:31','43a3cf7b-124a-4e5b-8c7a-f4f0a8c766d7'),
	(22,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,21,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-B-Clean.mp3',388156,511,'2018-08-18 13:58:16','2018-08-18 13:58:31','3bcf9620-900f-4217-82f8-be4b5d14e999'),
	(23,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,22,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-B-Dist.mp3',270291,512,'2018-08-18 13:58:16','2018-08-18 13:58:31','5002f276-8014-431a-809f-42d2cd020e97'),
	(24,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,23,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-B-OD.mp3',557429,513,'2018-08-18 13:58:16','2018-08-18 13:58:31','5f885d83-44fa-4130-9865-d57ce9740d2b'),
	(25,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,24,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-B_N-Clean.mp3',342598,514,'2018-08-18 13:58:16','2018-08-18 13:58:32','c20a82df-e1a8-465a-b89e-9bdcd756ad58'),
	(26,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,25,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-B_N-Dist.mp3',325896,515,'2018-08-18 13:58:16','2018-08-18 13:58:32','f63c0366-1f1d-430a-84b3-e4890fafadaa'),
	(27,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,26,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-B_N-OD.mp3',401530,516,'2018-08-18 13:58:16','2018-08-18 13:58:32','07830334-f305-4852-9742-d52a2b492624'),
	(28,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,27,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-N-Clean.mp3',402366,517,'2018-08-18 13:58:16','2018-08-18 13:58:32','c9646bb9-8aab-4fe4-a8b9-0901f80be353'),
	(29,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,28,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-N-Dist.mp3',175414,518,'2018-08-18 13:58:16','2018-08-18 13:58:33','9e5bf70f-e950-4cd8-a2ed-9fc66d04fe3c'),
	(30,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,29,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/Twang-Cities-N-OD.mp3',568296,538,'2018-08-18 13:58:16','2018-08-18 13:58:33','1624c13f-854f-4f92-8560-5c565c437add'),
	(31,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,30,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/about-images-1.jpg',1522216,367,'2018-08-18 13:58:16','2018-08-18 13:58:33','4936591d-860a-4452-be4b-393820f3f725'),
	(32,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,31,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-34s-bridge.mp3',2660311,568,'2018-08-18 13:58:16','2018-08-18 13:58:34','03a56210-e5c6-4124-8891-0252b9bd2169'),
	(33,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,32,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-34s-neck.mp3',2404311,567,'2018-08-18 13:58:16','2018-08-18 13:58:34','8eb606f8-da47-434f-b154-6b4582a9cdbf'),
	(34,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,33,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-50s-bridge-middle.mp3',2132637,565,'2018-08-18 13:58:16','2018-08-18 13:58:34','c6ff7b4b-3a80-4c01-9db5-06d6d127cac4'),
	(35,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,34,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-50s-bridge.mp3',1668702,566,'2018-08-18 13:58:16','2018-08-18 13:58:35','681ac177-3b67-4406-8c3f-9cf0beccf6af'),
	(36,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,35,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-50s-middle-neck.mp3',1184915,563,'2018-08-18 13:58:16','2018-08-18 13:58:35','084503b7-3a1f-4ce5-942d-68448ed0e653'),
	(37,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,36,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-50s-middle.mp3',1420017,564,'2018-08-18 13:58:16','2018-08-18 13:58:35','7a8e4fbc-b1c5-4979-8484-be3e940195c8'),
	(38,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,37,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-50s-neck.mp3',1528686,562,'2018-08-18 13:58:16','2018-08-18 13:58:35','1c3951f1-1bb6-4f8f-810f-878766c88023'),
	(39,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,38,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-60s-bridge-middle.mp3',1564213,560,'2018-08-18 13:58:16','2018-08-18 13:58:35','e7b19d8b-01fb-4c8e-a857-3f5199dc770a'),
	(40,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,39,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-60s-bridge.mp3',1376131,561,'2018-08-18 13:58:16','2018-08-18 13:58:36','571c7460-ee44-404e-8c16-51e760c1ce62'),
	(41,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,40,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-60s-middle-neck.mp3',1704229,558,'2018-08-18 13:58:16','2018-08-18 13:58:36','f61d5ba1-6172-41e7-b391-4413d741f09b'),
	(42,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,41,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-60s-middle.mp3',1856784,559,'2018-08-18 13:58:16','2018-08-18 13:58:36','c4473f16-9ae9-4a25-a28d-a9a6a76f7afd'),
	(43,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,42,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-60s-neck.mp3',2184882,557,'2018-08-18 13:58:17','2018-08-18 13:58:36','ca0b7ac2-84b7-449c-a6f5-fc445acb9daa'),
	(44,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,43,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-home-bg-1.jpg',2647815,362,'2018-08-18 13:58:17','2018-08-18 13:58:36','203e3fd6-d1ad-4261-8df8-13064f3d2594'),
	(45,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,44,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-mountain.svg',2134,369,'2018-08-18 13:58:17','2018-08-18 13:58:38','36116566-aade-406b-a7e0-b63e9cb9097b'),
	(46,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,45,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-1.jpg',1321204,370,'2018-08-18 13:58:17','2018-08-18 13:58:38','172443d0-a447-4a7f-a993-eeb1b40e836c'),
	(47,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,46,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-2.jpg',1098683,371,'2018-08-18 13:58:17','2018-08-18 13:58:39','c1c88362-9300-41e4-aca3-e80d351d1941'),
	(48,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,47,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-3.jpg',1564184,363,'2018-08-18 13:58:17','2018-08-18 13:58:39','21cf39dc-3335-490f-9ec5-1f4943991e8c'),
	(49,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,48,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-4.jpg',1241417,373,'2018-08-18 13:58:17','2018-08-18 13:58:40','362844ad-808c-4fce-9da8-766f045bbc2f'),
	(50,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,49,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-5.jpg',1095680,374,'2018-08-18 13:58:17','2018-08-18 13:58:40','59c608bc-085f-48a5-9243-37ed92332df8'),
	(51,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,50,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-6.jpg',1042050,364,'2018-08-18 13:58:17','2018-08-18 13:58:40','628a10a5-6e9d-4082-9ee9-df49b778ab4e'),
	(52,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,51,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-6.png',1573580,376,'2018-08-18 13:58:17','2018-08-18 13:58:41','7d2d6b75-7393-48ea-8b93-b586391257b7'),
	(53,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,52,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-7.jpg',1100564,377,'2018-08-18 13:58:17','2018-08-18 13:58:42','5924629f-4952-49fa-a770-8851d0656162'),
	(54,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,53,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-8.jpg',836790,365,'2018-08-18 13:58:17','2018-08-18 13:58:42','9d86b9cb-ee63-4805-aea0-f9edd9f3bc11'),
	(55,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,54,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/apex-studio-9.jpg',1075554,366,'2018-08-18 13:58:17','2018-08-18 13:58:42','a054ee4f-ba5e-4e87-9bd3-f53c3b5c2ba7'),
	(56,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,55,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/bg-texture-a.jpg',103218,380,'2018-08-18 13:58:17','2018-08-18 13:58:43','8c48fce8-b3f0-4df0-ba5f-798364be1077'),
	(57,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,56,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/bg-texture-b.jpg',91908,381,'2018-08-18 13:58:17','2018-08-18 13:58:43','e5e2ede5-5eff-4c83-bd07-e140ed81e1ae'),
	(58,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,57,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/bg-texture-c.jpg',82941,382,'2018-08-18 13:58:17','2018-08-18 13:58:43','49146269-3980-4b89-b1be-af4f9dcd40da'),
	(59,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,58,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/blog-post-1.jpg',315657,383,'2018-08-18 13:58:17','2018-08-18 13:58:44','00420b2c-e157-4433-be4c-2e83ce6b5183'),
	(60,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,59,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/candle-535149_1920.jpg',562878,539,'2018-08-18 13:58:17','2018-08-18 13:58:44','5284888c-ea3b-475d-a4b1-92b9248e1133'),
	(61,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,60,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/concrete-texture.png',367553,384,'2018-08-18 13:58:17','2018-08-18 13:58:44','28432833-7aac-4d17-aa18-9aa2067f074d'),
	(62,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,61,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/dani.jpg',2124475,414,'2018-08-18 13:58:17','2018-08-18 13:58:45','768a77aa-33de-4bf7-9da3-9d35883084bb'),
	(63,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,62,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/error-page.png',10178,540,'2018-08-18 13:58:17','2018-08-18 13:58:45','8eec7353-9496-4aa3-996d-a19b3af7a583'),
	(64,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,63,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/favicon.ico',169662,NULL,'2018-08-18 13:58:17','2018-08-18 13:58:17','eab2a456-7cd4-4a1d-977c-cf5e74b1386e'),
	(65,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,64,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/fret-level.jpg',130515,418,'2018-08-18 13:58:17','2018-08-18 13:58:46','ed0acf13-82cd-4cad-8f46-80ffe0b69e08'),
	(66,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,65,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/hero-logo.png',47187,387,'2018-08-18 13:58:17','2018-08-18 13:58:46','3387873a-8626-4c56-a961-feee3466570d'),
	(67,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,66,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/hero-logo.svg',8328,388,'2018-08-18 13:58:17','2018-08-18 13:58:47','39ce27c1-fcb1-4846-a831-b15d815e684c'),
	(68,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,67,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/humbucker-black-and-white.jpg',248915,448,'2018-08-18 13:58:17','2018-08-18 13:58:47','1a8ac802-0cab-4396-8917-42797b72fcab'),
	(69,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,68,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/humbucker-cream.jpg',242403,449,'2018-08-18 13:58:17','2018-08-18 13:58:48','85840dec-9577-4cc6-9115-f799a01155f6'),
	(70,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,69,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/menu-logo.png',8254,389,'2018-08-18 13:58:17','2018-08-18 13:58:49','97424e9c-4438-4c1f-ab88-b612323c443d'),
	(71,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,70,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/menu-logo.svg',7442,390,'2018-08-18 13:58:17','2018-08-18 13:58:49','22a72183-5a9f-444b-a2d4-0f13b1e2216e'),
	(72,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,71,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/mountain-bg.svg',2042,391,'2018-08-18 13:58:17','2018-08-18 13:58:49','d5b3e0db-8ba6-44f3-9c2f-279fcea30368'),
	(73,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,72,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/mountian-light.png',19464,392,'2018-08-18 13:58:17','2018-08-18 13:58:49','69eff118-cf80-4ca5-abf7-1fc3918257c3'),
	(74,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,73,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/mountian-light.svg',1308,393,'2018-08-18 13:58:17','2018-08-18 13:58:50','7a5d7969-9724-49dc-9b4f-fe32b42dca3c'),
	(75,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,74,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/next.svg',2110,541,'2018-08-18 13:58:17','2018-08-18 13:58:50','c1187f66-7368-4a55-ae65-d488233b8f6d'),
	(76,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,75,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/oran.jpg',2293492,415,'2018-08-18 13:58:17','2018-08-18 13:58:51','b4db25f0-b19f-4580-8ee0-7b2a5f5d6358'),
	(77,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,76,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/pat.png',637909,395,'2018-08-18 13:58:17','2018-08-18 13:58:52','6abc7a12-4f9f-43f1-91da-f6d8e591cf5e'),
	(78,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,77,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/pause.svg',1409,542,'2018-08-18 13:58:17','2018-08-18 13:58:52','e9aca2cd-3787-437d-abb5-e91957e6c028'),
	(79,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,78,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/paypal-logo.png',9224,543,'2018-08-18 13:58:17','2018-08-18 13:58:52','eb3e2423-d061-49a6-a298-9333db7aa699'),
	(80,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,79,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/pickup-index-bg.png',3776665,396,'2018-08-18 13:58:17','2018-08-18 13:58:53','15df2b69-33e0-4755-a7ce-f2bcd214d973'),
	(81,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,80,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/pickups-bg.png',1369759,397,'2018-08-18 13:58:17','2018-08-18 13:58:54','9802a0ed-3b98-4b68-8281-eadef66812e2'),
	(82,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,81,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/play.svg',1369,544,'2018-08-18 13:58:17','2018-08-18 13:58:54','46b376f0-2f58-4df1-b287-aee2747ab2ad'),
	(83,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,82,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/previous.svg',2127,545,'2018-08-18 13:58:17','2018-08-18 13:58:55','163ed968-c110-41b1-ac12-0b27c515b7a0'),
	(84,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,83,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/re-fret.jpg',173875,419,'2018-08-18 13:58:17','2018-08-18 13:58:55','d2e73df4-ce20-4cd3-9caa-1ce7bd94a897'),
	(85,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,84,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/religion-864393_1920.jpg',780468,548,'2018-08-18 13:58:17','2018-08-18 13:58:55','3aead833-cb24-4714-9711-d5140556ee63'),
	(86,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,85,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/repair-1.jpg',144234,417,'2018-08-18 13:58:17','2018-08-18 13:58:56','af1f540b-56d5-45a1-8caf-4c1b81304658'),
	(87,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,86,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/shortcut-apple.png',7787,546,'2018-08-18 13:58:17','2018-08-18 13:58:56','e91aa49f-d4db-4460-b0d0-ef3a4ee516f4'),
	(88,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,87,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/shortcut.png',12737,547,'2018-08-18 13:58:17','2018-08-18 13:58:56','2956bf07-0f03-41e5-8658-e6c09e9c5bb8'),
	(89,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,88,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/single-coil-black.jpg',183928,451,'2018-08-18 13:58:17','2018-08-18 13:58:57','c5b9e6c5-2de4-49d6-b975-a4d55046c97c'),
	(90,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,89,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/single-coil-cream.jpg',256023,400,'2018-08-18 13:58:17','2018-08-18 13:58:57','f01764a7-f087-4bd8-9248-ab1f2a10a26b'),
	(91,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,90,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/single-coil-white.jpg',193356,450,'2018-08-18 13:58:17','2018-08-18 13:58:58','388e1c8c-5b23-413a-9f3d-8b21d7b5f390'),
	(92,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,91,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/slider-holder.png',1353867,401,'2018-08-18 13:58:17','2018-08-18 13:58:59','4735b232-fac7-4378-8d1c-ae2d7205bf61'),
	(93,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,92,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/studio-bg.png',1445980,402,'2018-08-18 13:58:17','2018-08-18 13:59:00','586fdaba-1e1c-4fbc-89f2-cfd2c982d4b1'),
	(94,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,93,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/team-dani.jpg',131871,403,'2018-08-18 13:58:17','2018-08-18 13:59:00','2fd940d2-a6af-4097-8174-dabc3f04dd1b'),
	(95,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,94,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/team-dani.png',261118,404,'2018-08-18 13:58:17','2018-08-18 13:59:00','f376822e-35db-4286-8dfe-99352d77711f'),
	(96,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,95,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/team-graham.jpg',186539,405,'2018-08-18 13:58:17','2018-08-18 13:59:01','ae85d127-44e6-48c3-9d44-46334594b4c4'),
	(97,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,96,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/team-oran.jpg',276319,406,'2018-08-18 13:58:17','2018-08-18 13:59:01','477e90c3-4ded-4613-9627-c587c90b372b'),
	(98,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,97,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/team-willy.jpg',286826,407,'2018-08-18 13:58:17','2018-08-18 13:59:02','a1665857-4dd9-403f-b7af-7cf13360121a'),
	(99,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,98,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/team-willy.png',433072,408,'2018-08-18 13:58:17','2018-08-18 13:59:02','eb1776ca-4939-403a-8edb-cccfb75812a1'),
	(100,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,99,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/tele-brodge-black.jpg',360180,447,'2018-08-18 13:58:17','2018-08-18 13:59:02','2bd8a8e9-90e5-4f89-9bbc-7c9ea0d1cc99'),
	(101,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,100,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/texas-modern-bridge-middle.mp3',1604964,555,'2018-08-18 13:58:17','2018-08-18 13:59:03','1e5dcb4f-111a-44ca-a001-ca26f8593db2'),
	(102,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,101,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/texas-modern-bridge.mp3',1668702,556,'2018-08-18 13:58:17','2018-08-18 13:59:03','713853df-b14c-4c92-80f1-55503604cfda'),
	(103,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,102,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/texas-modern-middle-neck.mp3',1528686,553,'2018-08-18 13:58:17','2018-08-18 13:59:03','a1273d72-1cc6-4c4e-ab7e-e86707bdc9f3'),
	(104,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,103,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/texas-modern-middle.mp3',1816033,554,'2018-08-18 13:58:17','2018-08-18 13:59:03','419d450d-d176-46be-92d4-2a687b855258'),
	(105,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,104,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/texas-modern-neck.mp3',1748115,552,'2018-08-18 13:58:17','2018-08-18 13:59:04','c6161db1-09a1-49ce-8824-b0c163b19841'),
	(106,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,105,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/twang-cities-bridge-neck.mp3',2344751,550,'2018-08-18 13:58:17','2018-08-18 13:59:04','0c827776-a6b7-4654-8a52-f6db3e01861f'),
	(107,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,106,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/twang-cities-bridge.mp3',2712555,551,'2018-08-18 13:58:17','2018-08-18 13:59:04','e35a0d25-d0a0-4c92-93e0-e2c49cc6c583'),
	(108,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,107,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/twang-cities-neck.mp3',2540147,549,'2018-08-18 13:58:17','2018-08-18 13:59:04','8f4a8f81-3edf-42f2-83d3-982b9e0e5a08'),
	(109,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,108,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/willy.jpg',2125179,416,'2018-08-18 13:58:17','2018-08-18 13:59:05','db7d2a22-3dc9-4ff1-ab4c-94d68bf5eb04'),
	(110,'08b9a496-c6e4-4687-a04a-3f08022d22f1',1,109,'/Users/garymiskimmons/Documents/repos/apex-music/assets/images/workshop-bg.png',1458788,410,'2018-08-18 13:58:17','2018-08-18 13:59:06','2455d535-0454-4865-b41a-27a2f0489d37');

/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;


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
	(1,'Site Assets','siteAssets','Local','{\"path\":\"{assetsBasePath}\\/images\\/\",\"publicURLs\":\"1\",\"url\":\"{assetsBaseUrl}\\/images\\/\"}',1,309,'2014-07-30 22:43:56','2018-08-16 21:39:20','0193dc64-5499-4e28-95dd-f8f603154851');

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
	(1,395,'pat.jpg','jpg','_pageSliderSize',1,1,0,'2018-08-16 21:40:39','2018-08-16 21:40:39','2018-08-16 21:40:39','0e0e0aa6-38be-4148-85c2-1527b029fd8e'),
	(2,370,'apex-studio-1.jpg','jpg','_pageSliderSize',1,1,0,'2018-08-17 17:35:04','2018-08-17 17:35:04','2018-08-17 17:35:06','105d76c0-56e7-48d5-93d3-a804e67a9097'),
	(3,363,'apex-studio-3.jpg','jpg','_pageSliderSize',1,1,0,'2018-08-17 17:35:04','2018-08-17 17:35:04','2018-08-17 17:35:06','8bef9d31-c392-4f1e-86e2-f4988acdbd58'),
	(4,376,'apex-studio-6.jpg','jpg','_pageSliderSize',1,1,0,'2018-08-17 17:35:04','2018-08-17 17:35:04','2018-08-17 17:35:06','a3cd0e4e-1ce6-4a32-9f4a-76a96830e3b4'),
	(5,397,'pickups-bg.jpg','jpg','_fullWidthBanner',1,1,0,'2018-08-17 19:42:47','2018-08-17 19:42:47','2018-08-17 19:42:48','89a0c24e-6092-4f6e-a658-36c281cb176c');

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
	(4,'Page Slider Size','pageSliderSize','crop','center-center',535,1170,'jpg',82,'2018-07-10 22:26:55','2018-07-09 20:33:17','2018-08-16 07:58:00','e96c3e13-c5ea-4d56-a113-3f6e29224e6c'),
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
	(261,1,'2018-07-05 19:58:38','2018-07-29 19:19:27','df44a98b-08cc-487c-b2ba-82c25da5c2fb'),
	(355,1,'2018-07-16 22:33:39','2018-08-01 17:28:58','f1fd7d81-9336-4921-96bf-3ae99aed03f7'),
	(356,1,'2018-07-16 22:34:13','2018-08-01 17:29:20','ab3ae9f2-8a9e-4e07-8587-224c2868a765');

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
	(1,1,275,'Pickups','pickups',1,'pickups/category.html','2018-07-05 19:57:52','2018-07-16 22:30:07','897ea994-0336-4b48-ad0d-78d71c27963f');

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
  `field_paypalEmail` text COLLATE utf8_unicode_ci,
  `field_price` text COLLATE utf8_unicode_ci,
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

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_heading`, `field_body`, `field_addressOne`, `field_email`, `field_shortDescription`, `field_copyrightNotice`, `field_contactUsLabel`, `field_telephone`, `field_facebooklink`, `field_twitterLink`, `field_instagramLink`, `field_addressTwo`, `field_instagramFeed`, `field_mailingList`, `field_displayTitle`, `field_paypalEmail`, `field_price`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-07-29 18:21:32','2018-06-24 18:19:50','59077408-b18f-4041-8894-37cc7c7adff4'),
	(2,2,'en','Homepage','Welcome to Happylager.dev!','<h1>CUSTOM PICKUPS, RECORDING STUDIO &amp; GUITAR WORK SHOP. WE DO IT ALL AT APEX.</h1>\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.</p>\n<p><a class=\"button\" href=\"{entry:74:url}\">Discover more about apex <em class=\"fas fa-long-arrow-alt-right\"></em></a></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]',NULL,NULL,NULL,NULL,'2014-07-29 18:21:35','2018-08-16 20:45:38','73fccf4e-5208-46d9-8f88-99e78ecf855e'),
	(29,74,'en','About','We set out with a simple goal: create the design and products that we would like to see.','<p>We are a group of highly effective, passionate people ready to take your product to the next level. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae taque earum hic tenetur a sapiente delectus ut aut reiciendis.</p>','2701 West Thomas St Chicago, Il 60622','info@company.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-09-17 01:15:21','2018-07-29 18:55:25','91f0829c-6749-498c-9dd1-96680a3f0799'),
	(113,257,'en','Contact','Get in touch if you\'d like to use any of our services.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:35:19','2018-07-15 13:16:42','9c9ead30-120f-4249-aa40-39c8431c80ec'),
	(114,258,'en','Apex Studio',NULL,'<h2 class=\"styled center-text\"><strong>Apex Studio</strong></h2>\n<h1 class=\"center-text pt-s\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. </h1>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]',NULL,NULL,NULL,NULL,'2018-06-24 18:35:36','2018-08-17 17:40:33','428a67f4-02dd-4ae2-ae3f-45316aabea1d'),
	(115,259,'en','Instrument Repairs',NULL,'<h2 class=\"styled center-text\"><strong>instrument repairs</strong></h2>\n<h1 class=\"center-text pt-s\">All the latest carry on form the Apex team - all killer no filler </h1>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-24 18:36:23','2018-07-29 18:58:42','71c6bdbc-e80d-4530-a9a6-0a97448bf178'),
	(116,260,'en',NULL,NULL,NULL,'<ul><li>Unit 3, Derrycrin road</li><li>BT80 0HJ</li><li>Cookstown</li></ul>','oranmcguckin@apexmusic.co',NULL,NULL,NULL,'0759 1132 008','https://www.facebook.com/ApexMusicCo/','#apex-music','#apex-music','<ul><li>14 Sullenboy park</li><li>BT80 8HP</li><li>Cookstown</li></ul>',NULL,NULL,NULL,'oranmcguckin@apexmusic.co',NULL,'2018-06-24 18:39:24','2018-08-09 13:58:04','27f31143-a4e2-4cd9-b788-9886e0765af6'),
	(117,261,'en','Strat Style','','<div class=\"large-12 small-centered columns text-center\">\n			<h1>Our single coil pickups give your guitar the truest most open sound it will ever have, bringing out tones you never thought you could hear from your guitar.</h1>\n		</div>',NULL,NULL,'<p>Our single coil pickups give your guitar the truest most open sound it will ever have, bringing out tones you never thought you could hear from your guitar.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 19:58:37','2018-07-29 19:19:27','b37a1868-41fa-4fb0-9e16-d75c169f8737'),
	(118,262,'en','Apex 50s',NULL,'<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\n</p>\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\n</p>\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\n</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<div class=\"large-12 small-centered columns text-center\">\n			<h1>Our single coil pickups give your guitar the truest most open sound it will ever have, bringing out tones you never thought you could hear from your guitar.</h1>\n		</div>',NULL,'135','2018-07-05 20:00:18','2018-08-17 17:21:36','ea03d57f-e0c2-48a2-9ec2-8f4bda041ede'),
	(119,264,'en','About',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:10:16','2018-07-05 22:10:16','3fe52680-28b5-4654-9a4b-517c7d3ba9e8'),
	(120,265,'en','Apex Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:10:46','2018-07-05 22:10:46','4fef3364-7176-49b1-a36f-f44d8b855970'),
	(121,266,'en','Instrument Repairs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:11:12','2018-07-05 22:11:12','0f539fe6-389e-41ea-b78b-d0f396c3bdf0'),
	(122,267,'en','Blog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:11:58','2018-07-05 22:11:58','00e63ef9-7eb9-44a7-bebe-8283a500de07'),
	(123,268,'en','Contact',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:12:49','2018-07-05 22:12:49','82e61ec6-9cb4-41c5-9aef-163d934f8408'),
	(124,269,'en','Pickups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:13:45','2018-07-05 22:13:45','ba52780e-b977-4237-a497-df279dec0417'),
	(125,270,'en','Strat Style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:29:47','2018-07-08 15:43:52','e671d47c-4c3e-4153-8a71-15c0bdec73a4'),
	(126,271,'en','apex-50s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-05 22:30:24','2018-08-01 14:05:32','cb6bd3cf-9fc4-43ca-a108-82703419e38b'),
	(127,272,'en','About',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:40:30','2018-07-07 14:40:30','2f9ac333-5160-4314-a8da-6478f829f6c2'),
	(128,273,'en','Apex Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:40:51','2018-07-07 14:40:51','73e51575-8a99-49a9-9cc8-9228c3c3b8fb'),
	(129,274,'en','Work Shop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:42:12','2018-07-07 14:42:12','48ffb0f8-de0a-403b-92d0-2fc04defcd07'),
	(130,275,'en','Blog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-07 14:42:38','2018-07-07 14:42:38','72739562-0abb-4605-aace-bc156ff50796'),
	(171,350,'en','Introducing the team: Pete','',NULL,NULL,NULL,'<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-15 11:52:23','2018-07-26 17:20:24','816a90ee-d570-417f-bf38-2a363d8960f6'),
	(172,352,'en',NULL,NULL,'<div class=\"large-9 small-centered columns text-center\">\n			<h2>Nothing taking your fancy? If you have something custom in mind please\n				<a href=\"\"></a><a href=\"{entry:257:url}\">get in touch.</a> We can craft any pickup to your exact spec. </h2>\n		</div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]','<div class=\"large-8 small-centered columns text-center\">\n		<h1>Custom pickups, recording studio &amp; Guitar work shop. We do it all at Apex.</h1>\n	</div>',NULL,NULL,'2018-07-16 22:04:20','2018-08-17 19:42:18','4af7c8d0-c2e1-4e44-8279-5a089654aa7d'),
	(173,355,'en','Tele Style','','',NULL,NULL,'<p>A successful marketing plan relies heavily on the pulling-power of advertising copy. Writing result-oriented ad copy is difficult, as it must appeal to, entice, and convince consumers to take action. There is no magic formula to write.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-16 22:33:39','2018-08-01 17:28:58','c0416325-c091-4268-b9a3-a7216d8023f2'),
	(174,356,'en','Humbuckers','','',NULL,NULL,'<p>A successful marketing plan relies heavily on the pulling-power of advertising copy. Writing result-oriented ad copy is difficult, as it must appeal to, entice, and convince consumers to take action. There is no magic formula to write.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-16 22:34:12','2018-08-01 17:29:20','2244d404-8e36-49ec-aaae-7afcfa7f283b'),
	(176,360,'en','Test',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,'120','2018-07-17 22:16:32','2018-07-17 22:16:32','b83418a7-dbed-4daf-bc21-3fa3d6f50791'),
	(178,362,'en','Apex Home Bg 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:11:26','2018-08-18 13:58:38','e42bbc70-299a-47a2-b5c6-b16e3daa8338'),
	(179,363,'en','Apex Studio 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:12:19','2018-08-18 13:58:39','02aba82e-dd8d-4860-8c36-a64af524fe64'),
	(180,364,'en','Apex Studio 6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:12:24','2018-08-18 13:58:41','9ad6e9d8-4690-49c3-9296-b1258c31e931'),
	(181,365,'en','Apex Studio 8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:12:27','2018-08-18 13:58:42','f35b2052-2f2e-4271-98ca-11a8f4e8f373'),
	(182,366,'en','Apex Studio 9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:12:28','2018-08-18 13:58:43','7b2b8e48-b100-4a23-920b-5c094336dae7'),
	(183,367,'en','About Images 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:17:33','2018-08-18 13:58:34','9b6356a1-8069-4cec-b477-c60db410d879'),
	(185,369,'en','Apex Mountain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:17:40','2018-08-18 13:58:38','87a24e54-976b-495d-ac70-30826d418e4c'),
	(186,370,'en','Apex Studio 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:17:46','2018-08-18 13:58:39','5f1090b9-223a-4d6b-8ca5-15b4410d9f6e'),
	(187,371,'en','Apex Studio 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:17:48','2018-08-18 13:58:39','d15333bd-95e6-421c-8d30-affedefd5d4e'),
	(189,373,'en','Apex Studio 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:17:58','2018-08-18 13:58:40','93f36b90-4579-41b3-a23a-a2009a2733f5'),
	(190,374,'en','Apex Studio 5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:02','2018-08-18 13:58:40','c33b8f9d-80eb-4fcd-8937-b6e8b313102b'),
	(192,376,'en','Apex Studio 6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:09','2018-08-18 13:58:41','0e7b37c3-f016-478c-9c13-5574895b7f78'),
	(193,377,'en','Apex Studio 7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:11','2018-08-18 13:58:42','059e3478-81c3-4bc8-a80c-15398e14ccf1'),
	(196,380,'en','Bg Texture A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:18','2018-08-18 13:58:43','691a74f9-1495-4d72-bb0d-dfd404acef7a'),
	(197,381,'en','Bg Texture B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:18','2018-08-18 13:58:43','95b406c1-f267-49b3-a860-976bf309e00c'),
	(198,382,'en','Bg Texture C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:19','2018-08-18 13:58:43','ecd0c727-406e-47b0-9c95-cf0e5b737c5f'),
	(199,383,'en','Blog Post 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:20','2018-08-18 13:58:44','145dacd1-bf86-4759-86cc-03a270c70047'),
	(200,384,'en','Concrete Texture',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:21','2018-08-18 13:58:45','384ded0a-b14c-4ca4-ad74-b2367ade8008'),
	(203,387,'en','Hero Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:27','2018-08-18 13:58:46','e380acf9-9913-4c6e-bef6-1da2327419cb'),
	(204,388,'en','Hero Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:27','2018-08-18 13:58:47','b6ebd1e0-3777-4ce6-a34b-801b1074a380'),
	(205,389,'en','Menu Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:28','2018-08-18 13:58:49','fa2d5d48-f67d-4c2b-927e-fdbf9f5cf909'),
	(206,390,'en','Menu Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:28','2018-08-18 13:58:49','00eaa80c-945c-4806-8432-8a79302f720b'),
	(207,391,'en','Mountain Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:28','2018-08-18 13:58:49','c12087ee-0bbd-420f-a42a-db5a8467e22f'),
	(208,392,'en','Mountian Light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:29','2018-08-18 13:58:50','6dccdc4d-9106-4858-ba8e-189b498687d2'),
	(209,393,'en','Mountian Light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:29','2018-08-18 13:58:50','4a102112-ef3c-4512-bf35-dd6cd6836de9'),
	(211,395,'en','Pat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:33','2018-08-18 13:58:52','a549b960-a545-43bd-bfd5-01d729745156'),
	(212,396,'en','Pickup Index Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:41','2018-08-18 13:58:53','f22a3eaa-ed70-4928-86a8-e84cd6b7f837'),
	(213,397,'en','Pickups Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:44','2018-08-18 13:58:54','926e229a-c98c-42a7-94d4-e47d06657aee'),
	(216,400,'en','Single Coil Cream',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:47','2018-08-18 13:58:58','b42b92b1-e61b-4b9d-834f-9d13997b3f8f'),
	(217,401,'en','Slider Holder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:53','2018-08-18 13:58:59','943ade59-3268-4de3-b38d-fa163a1c3dcb'),
	(218,402,'en','Studio Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:55','2018-08-18 13:59:00','0ed13991-0295-4fc7-bc30-fc5bad2f3aa2'),
	(219,403,'en','Team Dani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:18:55','2018-08-18 13:59:00','d39bbc3d-f799-4caf-9496-420bf24e1fd9'),
	(220,404,'en','Team Dani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:19:04','2018-08-18 13:59:01','0f0eb84b-ce87-4fd9-a6be-3bb356f5c3cf'),
	(221,405,'en','Team Graham',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:19:05','2018-08-18 13:59:01','5f6d372b-02c2-4996-bcf9-5af3c8340af5'),
	(222,406,'en','Team Oran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:19:06','2018-08-18 13:59:01','401086f7-d089-4e14-bba3-f21b9f67c213'),
	(223,407,'en','Team Willy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:19:08','2018-08-18 13:59:02','5dfcf076-341b-4604-bfa6-58cc0b7eb036'),
	(224,408,'en','Team Willy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:19:14','2018-08-18 13:59:02','6764b86a-9258-4da1-9ea3-73befd362c81'),
	(226,410,'en','Workshop Bg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-26 17:19:20','2018-08-18 13:59:06','58404a21-e547-4828-8398-f7370f7b5626'),
	(230,414,'en','Dani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-29 18:53:42','2018-08-18 13:58:45','b5a876a0-73f6-4e53-b1bc-8dc4ec509af2'),
	(231,415,'en','Oran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-29 18:54:24','2018-08-18 13:58:51','9a035d1a-d7ea-40c1-8f35-4eb99e24d66d'),
	(232,416,'en','Willy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-29 18:55:18','2018-08-18 13:59:06','9bb0d4b5-8da3-4b57-a848-cf3b216762d7'),
	(233,417,'en','Repair 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-29 18:56:38','2018-08-18 13:58:56','55dd4fbc-5143-4c0d-a85f-aae92983c792'),
	(234,418,'en','Fret Level',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-29 18:58:15','2018-08-18 13:58:46','9f0ddbaa-7609-41d0-975d-e77288b7387c'),
	(235,419,'en','Re Fret',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-07-29 18:58:34','2018-08-18 13:58:55','a8f117ff-8511-466e-b277-93fbd3eff0cb'),
	(238,422,'en','tele style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 10:19:37','2018-08-01 10:19:37','207730d6-c1f2-404d-a44a-059b90b1940c'),
	(239,423,'en','Twang City',NULL,'<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. </p>\n<p>By changing the wire from 43AWG to 42AWG in ’52 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. </p>\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,'129','2018-08-01 10:21:47','2018-08-18 15:41:29','203456ef-cbf3-44d0-a740-03a06cce5896'),
	(240,424,'en','twang-city',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 10:23:05','2018-08-01 14:06:18','462080e1-88fe-4aae-8c30-3bf4a2660718'),
	(241,425,'en','Apex 34\'s',NULL,'<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. </p>\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. </p>\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. </p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,'155','2018-08-01 14:01:50','2018-08-17 20:09:09','c5b34f03-b1c7-4d94-9a5a-cdb80d77df7d'),
	(242,426,'en','Apex 60\'s',NULL,'<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. </p>\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. </p>\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,'139','2018-08-01 14:02:25','2018-08-18 15:40:11','11156b39-4763-418d-b754-44207a3d7588'),
	(243,427,'en','Apex Standard Humbucker',NULL,'<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. </p>\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. </p>\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. </p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,'165','2018-08-01 14:02:43','2018-08-17 20:09:43','97740951-c96e-487e-9c3a-776886e0d47f'),
	(244,428,'en','Texas Modern',NULL,'<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound. </p>\n<p>At Apex Pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these pickups will give you a full, clear clean sound and a dirty sound you just can\'t argue with.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,'139','2018-08-01 14:02:56','2018-08-17 20:01:29','3fe8a509-57d6-47ab-a351-20fdbebe226f'),
	(245,429,'en','texas-modern',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 14:03:49','2018-08-01 14:03:49','6cb94fe3-76b5-46ae-a4cb-7170d7ac4d86'),
	(246,430,'en','standard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 14:04:18','2018-08-01 16:49:10','9c0b1383-cf30-4e73-b5f1-e9e23423fbe4'),
	(247,431,'en','apex-60s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 14:04:52','2018-08-01 14:04:52','6c6125dc-5829-444c-80b1-5dbee323c75d'),
	(248,432,'en','apex-34s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 14:05:21','2018-08-01 14:22:56','73e8eb4d-4472-43e8-9d95-91f9dcc83a34'),
	(249,433,'en','Humbuckers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 14:09:19','2018-08-01 14:09:19','ffb69bac-1d84-4065-b4a9-9ec8f558b668'),
	(250,434,'en','Standard Clean',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 16:46:15','2018-08-18 13:58:23','d180d1ce-1807-48e2-b744-63125d778d5e'),
	(251,435,'en','Standard Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 16:46:15','2018-08-18 13:58:24','22007620-73cd-45f6-8c4f-ee3309fc04c5'),
	(252,436,'en','Standard Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 16:46:18','2018-08-18 13:58:23','71c79a2e-ac2a-4e86-a440-36b6b6fd2247'),
	(255,440,'en','Humbucker Cream And Black',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 16:53:21','2018-08-18 13:58:20','d90cb4db-c01d-48b6-8911-e9cc46d53dab'),
	(256,441,'en','Tele Bridge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 16:54:41','2018-08-18 13:58:26','9579ccf8-3763-4fd0-8cfa-931e354a92ca'),
	(260,447,'en','Tele Brodge Black',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 17:28:51','2018-08-18 13:59:03','05e72398-f3d1-4dea-8077-d15026f2df16'),
	(261,448,'en','Humbucker Black And White',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 17:29:15','2018-08-18 13:58:47','1713c123-65e6-4207-8dde-d97655a8059d'),
	(262,449,'en','Humbucker Cream',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 17:30:04','2018-08-18 13:58:48','4fc258b8-dee7-4626-a90d-3c5e65eb4566'),
	(263,450,'en','Single Coil White',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 17:30:29','2018-08-18 13:58:59','ec516897-654b-4411-bacb-8e324fda7ac2'),
	(264,451,'en','Single Coil Black',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-01 17:30:59','2018-08-18 13:58:57','424d13d6-ba2f-4815-aa24-17f91a7d573a'),
	(265,456,'en','Humbucker White',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:26:30','2018-08-18 13:58:23','414a6f0a-42d7-4aab-a60b-b2c864f9a084'),
	(296,488,'en','Texas Modern Bridge Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:56:55','2018-08-18 13:58:26','8e6fd159-8994-4b45-851f-419251b72036'),
	(297,489,'en','Texas Modern Bridge Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:56:57','2018-08-18 13:58:27','1c8ede5c-7176-4e0a-824d-5457426ea634'),
	(298,490,'en','Texas Modern Bridge Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:56:58','2018-08-18 13:58:27','afc1e359-6d33-4ab3-b1a4-aa3e83d34f34'),
	(299,491,'en','Texas Modern Bridge & Middle Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:56:59','2018-08-18 13:58:27','de0d08ae-989c-429f-abcd-bc3afdf55985'),
	(300,492,'en','Texas Modern Bridge & Middle Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:01','2018-08-18 13:58:27','89b957b1-6c9d-43a6-bd04-bc85e39dba64'),
	(301,493,'en','Texas Modern Bridge & Middle Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:02','2018-08-18 13:58:28','1b09f60a-abed-4393-bcff-24e1742cbe01'),
	(302,494,'en','Texas Modern Middle Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:03','2018-08-18 13:58:28','318555c1-7ed7-48d8-9915-b1c0a190739d'),
	(303,495,'en','Texas Modern Middle Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:05','2018-08-18 13:58:28','29128722-d62d-4ca0-b909-14929737d04c'),
	(304,496,'en','Texas Modern Middle Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:05','2018-08-18 13:58:29','349ea13a-64b1-453f-afab-d6c2a7ce020e'),
	(305,497,'en','Texas Modern Middle & Neck Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:07','2018-08-18 13:58:29','dae1d45f-e5da-487f-b8aa-e75299ed2aca'),
	(306,498,'en','Texas Modern Middle & Neck Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:08','2018-08-18 13:58:29','eb486718-1589-4fa7-87d4-0db246c68c59'),
	(307,499,'en','Texas Modern Middle & Neck Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:10','2018-08-18 13:58:30','c19b46a8-3330-4f6a-97e4-3d5dbc33276e'),
	(308,500,'en','Texas Modern Neck Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:11','2018-08-18 13:58:30','c1405e22-b003-4b17-a8ba-07cc635f74e7'),
	(309,501,'en','Texas Modern Neck Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:13','2018-08-18 13:58:30','0e93b945-2d8d-4fc7-b84d-0b7d14d876f5'),
	(310,502,'en','Texas Modern Neck Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 18:57:14','2018-08-18 13:58:31','a6f4c0cc-f2a8-4998-ab78-99e5cf5b8f5e'),
	(316,511,'en','Twang Cities Bridge Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:17','2018-08-18 13:58:31','4fd0b0bf-e78b-4275-963e-1390d32816fd'),
	(317,512,'en','Twang Cities Bridge Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:20','2018-08-18 13:58:31','11326001-2d6e-4223-8ffe-abed9803057f'),
	(318,513,'en','Twang Cities Bridge Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:21','2018-08-18 13:58:31','40f82ee2-7616-4eac-b223-95d69e1a25a0'),
	(319,514,'en','Twang Cities Bridge & Neck Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:22','2018-08-18 13:58:32','c85b231a-613f-4c7a-9e28-abfa56db9f8c'),
	(320,515,'en','Twang Cities Bridge & Neck Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:23','2018-08-18 13:58:32','113439c0-0227-4279-a280-b9be31fd91a5'),
	(321,516,'en','Twang Cities Bridge & Neck Overdrive',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:24','2018-08-18 13:58:32','391f9955-a36b-4ad6-b3aa-2eefa3e3dca7'),
	(322,517,'en','Twang Cities Neck Clean',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:25','2018-08-18 13:58:32','18f9aed5-2bc6-4484-be6f-d31ac1d6e434'),
	(323,518,'en','Twang Cities Neck Distortion',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-07 19:28:26','2018-08-18 13:58:33','65c335a8-6f0b-4c26-8f23-ecfc95a44b9e'),
	(331,538,'en','Twang  Cities  N  Od',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:03','2018-08-18 13:58:33','44dd62ed-f4c7-4939-8a71-69f9e1f7702e'),
	(332,539,'en','Candle 535149 1920',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:12','2018-08-18 13:58:44','8b8656d9-93c8-4c5d-8b5e-1587a412cced'),
	(333,540,'en','Error Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:14','2018-08-18 13:58:46','0a3ea565-d366-40ec-9bbf-418dbc2a70ba'),
	(334,541,'en','Next',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:16','2018-08-18 13:58:50','1611f214-032c-4249-8511-10dc969966bf'),
	(335,542,'en','Pause',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:18','2018-08-18 13:58:52','2800c656-3193-4bca-b87c-178408af8a96'),
	(336,543,'en','Paypal Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:18','2018-08-18 13:58:52','96ffcb78-7f02-4a61-9bd5-dd7224e7948c'),
	(337,544,'en','Play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:21','2018-08-18 13:58:54','2e2635ce-6056-4ba3-85e7-32d471bf853f'),
	(338,545,'en','Previous',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:21','2018-08-18 13:58:55','4c06799e-9394-4fee-b69d-7f5c24cfe0cb'),
	(339,546,'en','Shortcut Apple',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:22','2018-08-18 13:58:56','5cfe66e7-72bf-485d-b0b3-c032ace3d09d'),
	(340,547,'en','Shortcut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:40:22','2018-08-18 13:58:56','edf823e4-e6ed-4944-baa4-b521ce3e33f7'),
	(341,548,'en','Religion 864393 1920',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-16 21:41:16','2018-08-18 13:58:55','1de5296a-0af3-4ed1-87d2-93ac1728ad15'),
	(342,549,'en','Twang Cities Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:40:25','2018-08-18 13:59:04','2aed49fe-0964-430d-b8f3-38df016f9dfe'),
	(343,550,'en','Twang Cities Bridge Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:40:45','2018-08-18 13:59:04','9b7b5b68-02f6-410c-a84f-65bce575689f'),
	(344,551,'en','Twang Cities Bridge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:41:07','2018-08-18 13:59:04','36ca9151-cf86-49a1-a4d8-e11251f47444'),
	(345,552,'en','Texas Modern Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:41:21','2018-08-18 13:59:04','4d6d7372-1372-42c7-ab86-dfad6cf25cce'),
	(346,553,'en','Texas Modern Middle Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:41:34','2018-08-18 13:59:03','576eb6db-f5b3-4ae4-8f2f-6b8ab03a61e6'),
	(347,554,'en','Texas Modern Middle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:41:49','2018-08-18 13:59:04','f855d4dc-b6d9-4e86-ae25-80f1d5941465'),
	(348,555,'en','Texas Modern Bridge Middle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:42:03','2018-08-18 13:59:03','4f37c705-22f9-4846-bc33-7c07e7ed082c'),
	(349,556,'en','Texas Modern Bridge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:42:21','2018-08-18 13:59:03','ca92eb88-aafe-4ca7-891a-a4c41a33086a'),
	(350,557,'en','Apex 60S Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:42:41','2018-08-18 13:58:36','17c238f9-5b09-4e77-be56-15c5f2e9f8c3'),
	(351,558,'en','Apex 60S Middle Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:42:55','2018-08-18 13:58:36','43d883e1-a006-4588-8006-c6a9080f5bd6'),
	(352,559,'en','Apex 60S Middle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:43:14','2018-08-18 13:58:36','2a11165e-9067-45a3-a925-d1b09cbbccfb'),
	(353,560,'en','Apex 60S Bridge Middle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:43:27','2018-08-18 13:58:35','2adf7707-e57a-4ee4-8d6e-535e12781438'),
	(354,561,'en','Apex 60S Bridge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:43:38','2018-08-18 13:58:36','1b16142d-36af-4087-b0f8-2e3f50f4e2ce'),
	(355,562,'en','Apex 50S Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:43:51','2018-08-18 13:58:35','396731e9-bde4-4b15-a2a4-5af6725b558c'),
	(356,563,'en','Apex 50S Middle Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:44:01','2018-08-18 13:58:35','2181e91c-ee6f-4f8d-a3a3-4226f39b3ef0'),
	(357,564,'en','Apex 50S Middle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:44:14','2018-08-18 13:58:35','69c6f507-78ee-402c-8903-17bb181a4fe7'),
	(358,565,'en','Apex 50S Bridge Middle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:44:33','2018-08-18 13:58:34','8f95b27e-706d-4599-b727-acf97ee4a94b'),
	(359,566,'en','Apex 50S Bridge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:44:47','2018-08-18 13:58:35','5d894416-f568-49f7-a1f1-41f614247a0b'),
	(360,567,'en','Apex 34S Neck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:45:07','2018-08-18 13:58:34','83f12159-3870-4c0a-a434-5ced32f985c9'),
	(361,568,'en','Apex 34S Bridge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-17 16:45:29','2018-08-18 13:58:34','155c5135-ee9d-4486-9985-b4b4cbae6078'),
	(365,599,'en','Privacy Policy',NULL,'<p>Effective date: August 18, 2018</p>\n<p>Apex Music (\"us\", \"we\", or \"our\") operates the <a href=\"http://apexmusic.co/\">http://apexmusic.co/</a> website (the \"Service\").\n</p>\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.</p>\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from <a href=\"http://apexmusic.co/\">http://apexmusic.co/</a>\n</p>\n<h2>Information Collection And Use</h2>\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.\n</p>\n<h3>Types of Data Collected</h3>\n<h4>Personal Data</h4>\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\"Personal Data\"). Personally identifiable information may include, but is not limited to:\n</p>\n<ul><li>Email address\n</li><li>First name and last name\n</li><li>Cookies and Usage Data\n</li></ul><h4>Usage Data</h4>\n<p>We may also collect information how the Service is accessed and used (\"Usage Data\"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\n</p>\n<h4>Tracking &amp; Cookies Data</h4>\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.\n</p>\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.\n</p>\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.\n</p>\n<p>Examples of Cookies we use:\n</p>\n<ul><li><strong>Session Cookies.</strong> We use Session Cookies to operate our Service.\n</li><li><strong>Preference Cookies.</strong> We use Preference Cookies to remember your preferences and various settings.\n</li><li><strong>Security Cookies.</strong> We use Security Cookies for security purposes.\n</li></ul><h2>Use of Data</h2>\n<p>Apex Music uses the collected data for various purposes:\n</p>\n<ul><li>To provide and maintain the Service\n</li><li>To notify you about changes to our Service\n</li><li>To allow you to participate in interactive features of our Service when you choose to do so\n</li><li>To provide customer care and support\n</li><li>To provide analysis or valuable information so that we can improve the Service\n</li><li>To monitor the usage of the Service\n</li><li>To detect, prevent and address technical issues\n</li></ul><h2>Transfer Of Data</h2>\n<p>Your information, including Personal Data, may be transferred to — and maintained on — computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.\n</p>\n<p>If you are located outside United Kingdom and choose to provide information to us, please note that we transfer the data, including Personal Data, to United Kingdom and process it there.\n</p>\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.\n</p>\n<p>Apex Music will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.\n</p>\n<h2>Disclosure Of Data</h2>\n<h3>Legal Requirements</h3>\n<p>Apex Music may disclose your Personal Data in the good faith belief that such action is necessary to:\n</p>\n<ul><li>To comply with a legal obligation\n</li><li>To protect and defend the rights or property of Apex Music\n</li><li>To prevent or investigate possible wrongdoing in connection with the Service\n</li><li>To protect the personal safety of users of the Service or the public\n</li><li>To protect against legal liability\n</li></ul><h2>Security Of Data</h2>\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.\n</p>\n<h2>Service Providers</h2>\n<p>We may employ third party companies and individuals to facilitate our Service (\"Service Providers\"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.\n</p>\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\n</p>\n<h3>Analytics</h3>\n<p>We may use third-party Service Providers to monitor and analyze the use of our Service.\n</p>\n<ul><li><strong>Google Analytics</strong>\n<p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.\n</p><p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.\n</p><p>For more information on the privacy practices of Google, please visit the Google Privacy &amp; Terms web page: <a href=\"https://policies.google.com/privacy?hl=en\">https://policies.google.com/privacy?hl=en</a>\n</p></li></ul><h2>Links To Other Sites</h2>\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.\n</p>\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.\n</p>\n<h2>Children\'s Privacy</h2>\n<p>Our Service does not address anyone under the age of 18 (\"Children\").\n</p>\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.\n</p>\n<h2>Changes To This Privacy Policy</h2>\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.\n</p>\n<p>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the \"effective date\" at the top of this Privacy Policy.\n</p>\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\n</p>\n<h2>Contact Us</h2>\n<p>If you have any questions about this Privacy Policy, please contact us:\n</p>\n<ul><li>By email: oranmcguckin@apexmusic.co\n</li></ul>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"includeFeed\"]','[\"include\"]',NULL,NULL,NULL,'2018-08-18 13:59:52','2018-08-18 14:52:30','de3ef606-5993-476c-91ad-eaf6a53ef3f7');

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
	(2,'Category','{\"sources\":{\"group:1\":{\"tableAttributes\":{\"1\":\"link\"}}}}','2018-07-05 20:21:45','2018-07-05 20:21:52','aeca6c9c-8053-442d-9699-9e744f5cfd6b'),
	(3,'Asset','{\"sources\":{\"folder:1\":{\"tableAttributes\":{\"1\":\"filename\",\"2\":\"size\",\"3\":\"dateModified\"}}}}','2018-08-16 07:59:47','2018-08-16 07:59:47','50eca148-a0cb-493c-8dd8-34d38312476c');

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
	(2,'Entry',1,0,'2014-07-29 18:21:35','2018-08-16 20:45:38','f20120a9-7cb6-4c53-8c06-6041a39cc056'),
	(74,'Entry',1,0,'2014-09-17 01:15:21','2018-07-29 18:55:25','990289b0-2685-4293-a526-2962328c9bac'),
	(237,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','e087f883-300f-4d8e-bfda-5b2978dbd68e'),
	(241,'MatrixBlock',1,0,'2015-02-09 21:56:10','2015-02-10 18:08:01','ab91e42c-9cd5-482e-b30c-ff1943e13934'),
	(243,'MatrixBlock',1,0,'2015-02-10 01:16:49','2015-02-10 18:08:01','2b2f630a-e0d0-4410-be21-ad4582921710'),
	(257,'Entry',1,0,'2018-06-24 18:35:19','2018-07-15 13:16:42','f9ea18c4-5739-43e2-aa77-0d444ffa586b'),
	(258,'Entry',1,0,'2018-06-24 18:35:36','2018-08-17 17:40:33','5462201f-e4c1-4117-830d-8441d7c2fa23'),
	(259,'Entry',1,0,'2018-06-24 18:36:23','2018-07-29 18:58:42','0f540059-3b80-465c-873f-d303d412e01a'),
	(260,'GlobalSet',1,0,'2018-06-24 18:39:24','2018-08-09 13:58:04','25e169bb-f41f-436b-b410-3a9b0251f2e8'),
	(261,'Category',1,0,'2018-07-05 19:58:37','2018-07-29 19:19:27','6338fb26-9e01-4699-bea3-a7716ab2cae4'),
	(262,'Entry',1,0,'2018-07-05 20:00:18','2018-08-17 17:21:36','c142b5e1-cde3-44a3-b39d-e1aa4a554fd5'),
	(263,'MatrixBlock',1,0,'2018-07-05 20:06:13','2018-07-05 20:06:13','717be0f7-1bcb-48a1-a09e-b79384cd6928'),
	(264,'Menus_Node',1,0,'2018-07-05 22:10:16','2018-07-05 22:10:16','056a9339-1852-4b3f-bb5a-88ef3502956a'),
	(265,'Menus_Node',1,0,'2018-07-05 22:10:46','2018-07-05 22:10:46','fcbf394a-2efc-40c0-a7b7-51ef7d3dbd42'),
	(266,'Menus_Node',1,0,'2018-07-05 22:11:12','2018-07-05 22:11:12','0e9dc9f7-1722-4a49-ae69-3b186456dcc4'),
	(267,'Menus_Node',1,0,'2018-07-05 22:11:58','2018-07-05 22:11:58','1ea011c3-b67e-49cd-95e5-c2ee8d42fee0'),
	(268,'Menus_Node',1,0,'2018-07-05 22:12:49','2018-07-05 22:12:49','a1f4cd99-f88b-4085-892c-8b551bd281c1'),
	(269,'Menus_Node',1,0,'2018-07-05 22:13:45','2018-07-05 22:13:45','aa01fb62-6d03-428a-876d-2295e58d5312'),
	(270,'Menus_Node',1,0,'2018-07-05 22:29:47','2018-07-08 15:43:52','0d87bd85-bc0f-4dd5-814c-eb9d995134e3'),
	(271,'Menus_Node',1,0,'2018-07-05 22:30:24','2018-08-01 14:05:32','e8534fe5-11e5-450f-88f2-f52e2df6e619'),
	(272,'Menus_Node',1,0,'2018-07-07 14:40:30','2018-07-07 14:40:30','40118ba6-6460-42f9-935e-c1ed01b5b071'),
	(273,'Menus_Node',1,0,'2018-07-07 14:40:51','2018-07-07 14:40:51','7756b991-06b2-4d25-8321-7f90d94ca135'),
	(274,'Menus_Node',1,0,'2018-07-07 14:42:12','2018-07-07 14:42:12','29ec2ce5-2a9a-4266-a0f4-77f4e35ae1fa'),
	(275,'Menus_Node',1,0,'2018-07-07 14:42:38','2018-07-07 14:42:38','802dc356-e0a7-42dd-bd14-09cab74f2fd4'),
	(314,'MatrixBlock',1,0,'2018-07-08 13:54:49','2018-08-16 20:45:38','c7d1d45c-4d5f-4c56-a3b8-d20c9bc417ec'),
	(319,'MatrixBlock',1,0,'2018-07-08 16:28:44','2018-08-16 20:45:38','d9c4a39d-9618-4e82-82c1-8d94953de95d'),
	(320,'MatrixBlock',1,0,'2018-07-08 16:31:00','2018-08-16 20:45:38','faa52e0f-db7e-4480-9138-60585194e0ad'),
	(321,'MatrixBlock',1,0,'2018-07-08 16:43:10','2018-08-16 20:45:38','faa2e1c5-f69c-427f-bf74-68dc1f5cc68f'),
	(322,'MatrixBlock',1,0,'2018-07-08 18:53:16','2018-08-16 20:45:38','ff9fdde4-2695-41c1-8632-05d07f73f35e'),
	(323,'MatrixBlock',0,0,'2018-07-08 18:53:16','2018-08-16 20:45:38','03a7c23f-b751-4b17-9077-b85a68a95c39'),
	(324,'MatrixBlock',1,0,'2018-07-09 22:29:55','2018-07-29 18:55:25','c914b4f2-e7a2-487d-96ec-32376587a551'),
	(325,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-29 18:55:25','abf9731b-5e46-404f-be0f-8b09eb11fc2c'),
	(326,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-29 18:55:25','43c951a2-902f-408b-815e-923ccea7f5bc'),
	(327,'MatrixBlock',0,0,'2018-07-10 20:35:03','2018-07-29 18:55:25','747d45e6-1b06-4eba-b262-fd7857d7a881'),
	(328,'MatrixBlock',1,0,'2018-07-10 20:35:03','2018-07-29 18:55:25','b46dc56e-f061-4321-9692-621b205f8c71'),
	(329,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-08-17 17:40:34','1faf6dcb-cf14-43c8-9782-e299c7fb9b8d'),
	(330,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-08-17 17:40:34','3ed48a0a-a0f3-4e72-96db-06be9b271f2d'),
	(331,'MatrixBlock',1,0,'2018-07-10 22:20:53','2018-08-17 17:40:34','4065421b-9214-4bd2-891d-ce7621100948'),
	(332,'MatrixBlock',1,0,'2018-07-10 22:44:31','2018-08-17 17:40:34','016745f4-1e8b-4538-9e16-628d9afb3417'),
	(333,'MatrixBlock',1,0,'2018-07-10 23:05:04','2018-08-17 17:40:34','e1dd702f-c42a-45ac-8c73-a889a59b7293'),
	(334,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-08-17 17:40:34','10b49b2b-9efd-44d9-9ad6-bf727615e1d6'),
	(335,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-08-17 17:40:34','70ed82e6-147d-4e82-b968-7964a19d94a8'),
	(336,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-08-17 17:40:34','f64cb26b-7108-4e7e-858b-a8503e33a8db'),
	(337,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-08-17 17:40:34','32eea8e3-3a37-4a5c-9679-bed9feb72f62'),
	(338,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-08-17 17:40:34','3f90707e-fd0e-4975-b38e-9a97fb83c28c'),
	(339,'MatrixBlock',1,0,'2018-07-14 12:45:01','2018-08-17 17:40:34','d066f305-47b1-427a-a8b6-13a4b454e96a'),
	(340,'MatrixBlock',1,0,'2018-07-14 13:56:37','2018-08-17 17:40:34','52494a9e-8778-4444-8101-6a4fa74f0cca'),
	(342,'MatrixBlock',1,0,'2018-07-14 15:07:42','2018-07-29 18:58:42','e834e952-5977-45a7-8cfe-09d6b431b82a'),
	(343,'MatrixBlock',1,0,'2018-07-14 15:07:42','2018-07-29 18:58:42','a7b9f021-63c2-4a7c-9e25-3b4503854dc1'),
	(344,'MatrixBlock',1,0,'2018-07-14 15:07:42','2018-07-29 18:58:42','87903cdf-53fd-41d1-b35e-58e22209baa7'),
	(345,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-29 18:58:42','c9044f9d-2216-4b19-9dee-2ce095136701'),
	(346,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-29 18:58:42','d164f5fd-ea4f-4a23-b01a-13714dcf9ede'),
	(347,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-29 18:58:42','e76f0845-102d-4356-91cd-9cfd9a3c8766'),
	(348,'MatrixBlock',1,0,'2018-07-15 10:31:57','2018-07-29 18:58:42','f9fca4f7-bb27-4af0-a88b-595dec62c1f9'),
	(350,'Entry',1,0,'2018-07-15 11:52:23','2018-07-26 17:20:24','355cb396-f850-4f2b-977d-a84afcc9fc65'),
	(351,'MatrixBlock',1,0,'2018-07-15 12:40:25','2018-07-26 17:20:24','e51844d3-9db6-4222-bef6-b3370af50fe7'),
	(352,'GlobalSet',1,0,'2018-07-16 22:04:20','2018-08-17 19:42:18','233fbb00-8300-4e8a-9797-baaaa7b2d029'),
	(353,'MatrixBlock',1,0,'2018-07-16 22:10:19','2018-08-17 19:42:18','6c60a458-646e-4858-a284-d2edc90fcab9'),
	(354,'MatrixBlock',1,0,'2018-07-16 22:10:19','2018-08-17 19:42:18','ab8999b7-cdb9-4541-84de-8b69a4b4f293'),
	(355,'Category',1,0,'2018-07-16 22:33:39','2018-08-01 17:28:58','7a825c54-d2e3-4bff-b375-0ba5a84a2cba'),
	(356,'Category',1,0,'2018-07-16 22:34:12','2018-08-01 17:29:20','9bdbeb05-5ef2-439f-9321-8e9965d6827b'),
	(357,'MatrixBlock',1,0,'2018-07-17 20:18:27','2018-08-17 17:21:36','5f2c8f15-ebc0-4339-a711-f20df0157147'),
	(360,'Entry',0,0,'2018-07-17 22:16:32','2018-08-17 17:15:40','427bd31f-bbc7-4884-8831-fdc5fd0e2e8c'),
	(362,'Asset',1,0,'2018-07-26 17:11:26','2018-08-18 13:58:38','8470537d-6297-477f-b9d7-9cb2d12ddba5'),
	(363,'Asset',1,0,'2018-07-26 17:12:19','2018-08-18 13:58:39','6eb396d3-bce0-4c93-991d-b58988161c29'),
	(364,'Asset',1,0,'2018-07-26 17:12:24','2018-08-18 13:58:41','8392b824-3bc5-4357-9c1e-84d44f935b2c'),
	(365,'Asset',1,0,'2018-07-26 17:12:27','2018-08-18 13:58:42','d36e4c80-50c8-4665-957f-c51e9f40de9a'),
	(366,'Asset',1,0,'2018-07-26 17:12:28','2018-08-18 13:58:43','210025ce-d27a-4980-8e32-5fed56256aa6'),
	(367,'Asset',1,0,'2018-07-26 17:17:33','2018-08-18 13:58:34','2ce6f068-073c-4ca4-b865-6df1b2c91321'),
	(369,'Asset',1,0,'2018-07-26 17:17:40','2018-08-18 13:58:38','4423067b-f0e6-495d-990c-da7599fcfaaa'),
	(370,'Asset',1,0,'2018-07-26 17:17:46','2018-08-18 13:58:39','74837a4d-b7ab-4911-a597-988383a50bce'),
	(371,'Asset',1,0,'2018-07-26 17:17:48','2018-08-18 13:58:39','03301a59-b26d-4844-b6ed-0ff436d386cd'),
	(373,'Asset',1,0,'2018-07-26 17:17:58','2018-08-18 13:58:40','c45a979e-2697-42f6-88df-76844e40d314'),
	(374,'Asset',1,0,'2018-07-26 17:18:02','2018-08-18 13:58:40','a60de007-8198-44de-bcfe-71a4b3097816'),
	(376,'Asset',1,0,'2018-07-26 17:18:09','2018-08-18 13:58:41','c11cb720-5fb5-4da4-a980-27806877f6dd'),
	(377,'Asset',1,0,'2018-07-26 17:18:11','2018-08-18 13:58:42','f1416920-6c4f-44eb-875e-1a0aa957ba9b'),
	(380,'Asset',1,0,'2018-07-26 17:18:18','2018-08-18 13:58:43','6f4f0bdd-f2b6-4974-aa4c-c64ce8a230ab'),
	(381,'Asset',1,0,'2018-07-26 17:18:18','2018-08-18 13:58:43','6579b10c-32c9-4467-b660-e1d272bf615a'),
	(382,'Asset',1,0,'2018-07-26 17:18:19','2018-08-18 13:58:43','8d9e983a-bbc8-41c7-807f-ed361318e635'),
	(383,'Asset',1,0,'2018-07-26 17:18:20','2018-08-18 13:58:44','32fd7dd4-3f4d-4edb-8018-8472c1374244'),
	(384,'Asset',1,0,'2018-07-26 17:18:21','2018-08-18 13:58:45','94203d3a-826a-46a7-bd98-1fd8ee6e3097'),
	(387,'Asset',1,0,'2018-07-26 17:18:27','2018-08-18 13:58:46','938c189e-b05a-492e-bfb4-c24e0368d309'),
	(388,'Asset',1,0,'2018-07-26 17:18:27','2018-08-18 13:58:47','7e23e0e2-33dd-47ce-bf66-97276db64a05'),
	(389,'Asset',1,0,'2018-07-26 17:18:28','2018-08-18 13:58:49','6c3898ec-f7cb-4ab5-bddd-5865d48caa76'),
	(390,'Asset',1,0,'2018-07-26 17:18:28','2018-08-18 13:58:49','ad7bf5ec-6620-407c-a11e-68c1793ed431'),
	(391,'Asset',1,0,'2018-07-26 17:18:28','2018-08-18 13:58:49','c85ce489-a72d-4aba-9900-7bf34bf643ff'),
	(392,'Asset',1,0,'2018-07-26 17:18:29','2018-08-18 13:58:50','fe6db993-6be9-4dcd-9ec7-a73e56ed9eb9'),
	(393,'Asset',1,0,'2018-07-26 17:18:29','2018-08-18 13:58:50','c837fe46-511a-413f-a5e7-08b464096659'),
	(395,'Asset',1,0,'2018-07-26 17:18:33','2018-08-18 13:58:52','a1e533b7-406d-47ed-bd6d-4be5772bba9a'),
	(396,'Asset',1,0,'2018-07-26 17:18:41','2018-08-18 13:58:53','99c9aab7-8add-4854-ab46-49e95807a67f'),
	(397,'Asset',1,0,'2018-07-26 17:18:44','2018-08-18 13:58:54','4279b32e-43ce-4b84-ba73-df3e0d0f8ac1'),
	(400,'Asset',1,0,'2018-07-26 17:18:47','2018-08-18 13:58:58','54f97b59-7a43-41b6-a9e1-beb30cf03158'),
	(401,'Asset',1,0,'2018-07-26 17:18:53','2018-08-18 13:58:59','e3652c11-fd13-4533-b993-607ed5c3a534'),
	(402,'Asset',1,0,'2018-07-26 17:18:55','2018-08-18 13:59:00','ef2ea127-4c69-47c9-8402-622115ead7bd'),
	(403,'Asset',1,0,'2018-07-26 17:18:55','2018-08-18 13:59:00','d45eef8a-7550-4eba-85a4-de1f386f0f9c'),
	(404,'Asset',1,0,'2018-07-26 17:19:04','2018-08-18 13:59:01','93fe2a55-52e2-4d49-9848-31fdf38bdbf2'),
	(405,'Asset',1,0,'2018-07-26 17:19:05','2018-08-18 13:59:01','231b2c52-ec4b-45b6-bc9b-7d423a49d798'),
	(406,'Asset',1,0,'2018-07-26 17:19:06','2018-08-18 13:59:01','62cdaf13-3aa5-44d7-880e-605840972e40'),
	(407,'Asset',1,0,'2018-07-26 17:19:08','2018-08-18 13:59:02','4571b685-b048-467c-8123-8113fc510deb'),
	(408,'Asset',1,0,'2018-07-26 17:19:14','2018-08-18 13:59:02','1d0660fe-2dee-4fc2-a808-1d0d3eca2dd1'),
	(410,'Asset',1,0,'2018-07-26 17:19:20','2018-08-18 13:59:06','51cd13ab-329f-4af2-9654-e7a95f7b5ce3'),
	(414,'Asset',1,0,'2018-07-29 18:53:42','2018-08-18 13:58:45','f43f09c4-8f59-488d-8f51-b8298900a76f'),
	(415,'Asset',1,0,'2018-07-29 18:54:24','2018-08-18 13:58:51','76374d17-61fd-4814-87da-6f3e5c4dcc86'),
	(416,'Asset',1,0,'2018-07-29 18:55:18','2018-08-18 13:59:06','68583b59-eeb0-4364-b912-61d2dfa83dde'),
	(417,'Asset',1,0,'2018-07-29 18:56:38','2018-08-18 13:58:56','3271e437-bac1-423c-a961-7dbcdac5a636'),
	(418,'Asset',1,0,'2018-07-29 18:58:15','2018-08-18 13:58:46','8a873f18-a681-49f7-9e76-6871ac19b21e'),
	(419,'Asset',1,0,'2018-07-29 18:58:34','2018-08-18 13:58:55','a93506d7-95a6-4993-83fb-f0b8423d4918'),
	(422,'Menus_Node',1,0,'2018-08-01 10:19:37','2018-08-01 10:19:37','7462e7e8-06d1-4d9d-bb02-e9cea8994be3'),
	(423,'Entry',1,0,'2018-08-01 10:21:47','2018-08-18 15:41:29','19c8649d-3e98-422f-98bf-f34f8bcb6197'),
	(424,'Menus_Node',1,0,'2018-08-01 10:23:05','2018-08-01 14:06:18','fb559e22-28bd-405a-b0e0-0895f056e99d'),
	(425,'Entry',1,0,'2018-08-01 14:01:50','2018-08-17 20:09:09','3bad6c1b-8c89-4527-8664-c8b41ad29b03'),
	(426,'Entry',1,0,'2018-08-01 14:02:25','2018-08-18 15:40:11','546d8ef9-d87b-4570-ad37-b10509a06554'),
	(427,'Entry',1,0,'2018-08-01 14:02:43','2018-08-17 20:09:43','f3b70ada-679a-4c3c-a140-b00607a36b61'),
	(428,'Entry',1,0,'2018-08-01 14:02:56','2018-08-17 20:01:29','c679ea65-b9c6-47f6-9afb-8fc58b754f35'),
	(429,'Menus_Node',1,0,'2018-08-01 14:03:49','2018-08-01 14:03:49','62ba19f8-8558-4eb3-aa30-47fa113e9a21'),
	(430,'Menus_Node',1,0,'2018-08-01 14:04:18','2018-08-01 16:49:10','376d0251-783d-4abc-9141-2822add5dafe'),
	(431,'Menus_Node',1,0,'2018-08-01 14:04:52','2018-08-01 14:04:52','d79db8b3-059c-4019-ac86-66f6bc7fbfc0'),
	(432,'Menus_Node',1,0,'2018-08-01 14:05:21','2018-08-01 14:22:56','a516be40-12d7-4a1f-a9cb-f3f3fdfa468b'),
	(433,'Menus_Node',1,0,'2018-08-01 14:09:19','2018-08-01 14:09:19','942ea773-c38d-4fa3-98de-7118990d9a73'),
	(434,'Asset',1,0,'2018-08-01 16:46:15','2018-08-18 13:58:23','45f6a471-8c14-4abd-ad03-2a5bb3c3807d'),
	(435,'Asset',1,0,'2018-08-01 16:46:15','2018-08-18 13:58:24','eb4d06d9-1b90-4bd4-ae91-183a8f3283c7'),
	(436,'Asset',1,0,'2018-08-01 16:46:18','2018-08-18 13:58:23','26895f81-0d57-403d-a439-be431d024a4c'),
	(440,'Asset',1,0,'2018-08-01 16:53:21','2018-08-18 13:58:20','c63e0b71-5dba-46ac-9ba2-58dcca37c258'),
	(441,'Asset',1,0,'2018-08-01 16:54:41','2018-08-18 13:58:26','479efe45-feda-4c1e-87ef-81349c664a67'),
	(447,'Asset',1,0,'2018-08-01 17:28:51','2018-08-18 13:59:03','20a38842-121a-4bbb-a9b4-e5c105f9e23f'),
	(448,'Asset',1,0,'2018-08-01 17:29:15','2018-08-18 13:58:47','92d03b7e-fde4-4bfb-b0ad-fc3eb0b8f4df'),
	(449,'Asset',1,0,'2018-08-01 17:30:04','2018-08-18 13:58:48','eade0e68-18d4-4220-ad91-2335b85abcd5'),
	(450,'Asset',1,0,'2018-08-01 17:30:29','2018-08-18 13:58:59','33a3b5f0-80f7-4b71-a0f9-80b997d7d36d'),
	(451,'Asset',1,0,'2018-08-01 17:30:59','2018-08-18 13:58:57','cefcfa56-d3b3-4e16-bd48-77568fec08ce'),
	(455,'MatrixBlock',1,0,'2018-08-07 18:00:39','2018-08-18 15:40:12','5d1369b6-62a9-4647-a061-ee413ccd2160'),
	(456,'Asset',1,0,'2018-08-07 18:26:30','2018-08-18 13:58:23','3f59ad0b-af68-4710-b539-72aa9ee5076b'),
	(457,'MatrixBlock',1,0,'2018-08-07 18:28:33','2018-08-17 20:09:43','634b1c82-9dc9-4775-a608-ec018dd458d5'),
	(488,'Asset',1,0,'2018-08-07 18:56:55','2018-08-18 13:58:26','6ccb7482-97b9-44f7-a510-3e5454e3a07d'),
	(489,'Asset',1,0,'2018-08-07 18:56:57','2018-08-18 13:58:27','44e9cf91-26ec-4bf6-846c-bff0a4c2406b'),
	(490,'Asset',1,0,'2018-08-07 18:56:58','2018-08-18 13:58:27','a1626512-728a-40b4-a5c8-7bf1b78af426'),
	(491,'Asset',1,0,'2018-08-07 18:56:59','2018-08-18 13:58:27','c88a4647-c225-4d48-8bd6-de3ff8c1e973'),
	(492,'Asset',1,0,'2018-08-07 18:57:01','2018-08-18 13:58:27','fe4ebed9-ffcc-4e37-82f4-8411988d1897'),
	(493,'Asset',1,0,'2018-08-07 18:57:02','2018-08-18 13:58:28','7a6f7bee-b0a1-44a7-a931-75b37ca27272'),
	(494,'Asset',1,0,'2018-08-07 18:57:03','2018-08-18 13:58:28','06054be1-3420-4c29-88e4-bde9565cb979'),
	(495,'Asset',1,0,'2018-08-07 18:57:05','2018-08-18 13:58:28','b6daae22-9a81-439b-9ec8-3d2bcf60c9df'),
	(496,'Asset',1,0,'2018-08-07 18:57:05','2018-08-18 13:58:29','48ec0b9c-491a-469a-b4b9-744f329e6c3f'),
	(497,'Asset',1,0,'2018-08-07 18:57:07','2018-08-18 13:58:29','862d4f91-a0ed-4912-93ad-80cc5987749e'),
	(498,'Asset',1,0,'2018-08-07 18:57:08','2018-08-18 13:58:29','2d76d405-5f74-40a7-ac27-dcab07944495'),
	(499,'Asset',1,0,'2018-08-07 18:57:10','2018-08-18 13:58:30','b0948dc2-5806-4a3e-8cda-0816c1f244c1'),
	(500,'Asset',1,0,'2018-08-07 18:57:11','2018-08-18 13:58:30','852c3571-f2e2-44cf-969c-7311579cffe4'),
	(501,'Asset',1,0,'2018-08-07 18:57:13','2018-08-18 13:58:30','c938e9b9-2c5d-4a81-b1b8-804f064ed1c5'),
	(502,'Asset',1,0,'2018-08-07 18:57:14','2018-08-18 13:58:31','07fddf11-3cdc-4169-a681-b422811d3ab8'),
	(503,'MatrixBlock',1,0,'2018-08-07 19:08:59','2018-08-17 20:01:29','993809f5-1322-4655-a433-63e8e03f559e'),
	(510,'MatrixBlock',1,0,'2018-08-07 19:12:32','2018-08-17 20:09:09','0a854c2c-4095-443c-b471-8ff97d5929d6'),
	(511,'Asset',1,0,'2018-08-07 19:28:17','2018-08-18 13:58:31','dc63b452-b4b2-43d8-b740-19fb5b319097'),
	(512,'Asset',1,0,'2018-08-07 19:28:20','2018-08-18 13:58:31','4392614e-09a9-4768-803c-686ad96c5f42'),
	(513,'Asset',1,0,'2018-08-07 19:28:21','2018-08-18 13:58:31','b0d8aee1-667b-4b43-9490-3906d097292a'),
	(514,'Asset',1,0,'2018-08-07 19:28:22','2018-08-18 13:58:32','69e0bae3-758d-498d-88aa-f3a29ba23585'),
	(515,'Asset',1,0,'2018-08-07 19:28:23','2018-08-18 13:58:32','16f498b2-1d87-45ce-8332-5aeebc23ea97'),
	(516,'Asset',1,0,'2018-08-07 19:28:24','2018-08-18 13:58:32','0073bd1d-8e18-4e33-8d27-d929496880a2'),
	(517,'Asset',1,0,'2018-08-07 19:28:25','2018-08-18 13:58:32','5c5f051a-0947-44b5-8408-9e0eb9e00ba7'),
	(518,'Asset',1,0,'2018-08-07 19:28:26','2018-08-18 13:58:33','4aef8f1d-374f-40e4-8bbd-ad327178ad0e'),
	(520,'MatrixBlock',1,0,'2018-08-07 19:31:21','2018-08-18 15:41:29','573c0db7-7420-4a75-97a1-d52d488769f5'),
	(523,'MatrixBlock',1,0,'2018-08-12 18:16:38','2018-08-17 17:21:36','d4e8b47d-aeef-4c43-86c3-fcae6ba53c4f'),
	(531,'MatrixBlock',1,0,'2018-08-16 07:39:53','2018-08-18 15:40:12','bb14fc1b-0cb3-498c-b9a4-b1fcdebddc91'),
	(538,'Asset',1,0,'2018-08-16 21:40:03','2018-08-18 13:58:33','7b3a46dd-d5d1-4199-978c-1b60c1c569b4'),
	(539,'Asset',1,0,'2018-08-16 21:40:12','2018-08-18 13:58:44','cf156acf-2be2-4ba5-a2c9-00c81d4e8d3d'),
	(540,'Asset',1,0,'2018-08-16 21:40:14','2018-08-18 13:58:46','69a864cc-001d-4320-a8b6-ff3819d24c42'),
	(541,'Asset',1,0,'2018-08-16 21:40:16','2018-08-18 13:58:50','79fda1d6-6706-4b1c-863a-27cd8148afb1'),
	(542,'Asset',1,0,'2018-08-16 21:40:18','2018-08-18 13:58:52','4a51eb1a-53c9-49b1-b66d-457333b4e106'),
	(543,'Asset',1,0,'2018-08-16 21:40:18','2018-08-18 13:58:52','3ba6a804-f6dc-4550-8746-49c8cec6a490'),
	(544,'Asset',1,0,'2018-08-16 21:40:21','2018-08-18 13:58:54','3b98b8a9-f6bd-4042-aa50-0ce3c158ec1f'),
	(545,'Asset',1,0,'2018-08-16 21:40:21','2018-08-18 13:58:55','6853fb0b-7598-4e8f-b338-c6ebd7ce73f8'),
	(546,'Asset',1,0,'2018-08-16 21:40:22','2018-08-18 13:58:56','296aa81e-6cc9-4bcd-a5f7-b567cd9d9c9d'),
	(547,'Asset',1,0,'2018-08-16 21:40:22','2018-08-18 13:58:56','b31f9447-64fc-4cc6-aaef-b532d21a67c5'),
	(548,'Asset',1,0,'2018-08-16 21:41:16','2018-08-18 13:58:55','3277641a-7c18-4ee0-bee8-3b34ecb6321b'),
	(549,'Asset',1,0,'2018-08-17 16:40:25','2018-08-18 13:59:04','4ad62862-77f2-49d0-9195-84357a42f1ed'),
	(550,'Asset',1,0,'2018-08-17 16:40:45','2018-08-18 13:59:04','efaf0f9d-ba50-4fed-a4e1-ca44e10d80ff'),
	(551,'Asset',1,0,'2018-08-17 16:41:07','2018-08-18 13:59:04','4c13246b-ef1e-4013-9275-5e6d2cbae0a7'),
	(552,'Asset',1,0,'2018-08-17 16:41:21','2018-08-18 13:59:04','106e1ab6-d3fd-4b1f-8651-3da6228818b9'),
	(553,'Asset',1,0,'2018-08-17 16:41:34','2018-08-18 13:59:03','b6bbb62f-6662-45bf-bcf7-679e97bea9b2'),
	(554,'Asset',1,0,'2018-08-17 16:41:49','2018-08-18 13:59:04','c1f4b84d-4756-4078-b261-afc819942fdb'),
	(555,'Asset',1,0,'2018-08-17 16:42:03','2018-08-18 13:59:03','d9d23b1b-b6cd-4725-bc19-bbcc281a489a'),
	(556,'Asset',1,0,'2018-08-17 16:42:21','2018-08-18 13:59:03','b02f3747-46f5-46ab-a134-3ca578d8bb4c'),
	(557,'Asset',1,0,'2018-08-17 16:42:41','2018-08-18 13:58:36','c5d578c5-6c51-4163-94ea-452d8f119026'),
	(558,'Asset',1,0,'2018-08-17 16:42:55','2018-08-18 13:58:36','929db47a-6e87-40ee-8859-b13e48d2170a'),
	(559,'Asset',1,0,'2018-08-17 16:43:14','2018-08-18 13:58:36','d7ce2e78-e4bb-4013-bc8c-a44b1e752b7b'),
	(560,'Asset',1,0,'2018-08-17 16:43:27','2018-08-18 13:58:35','b3c91256-649f-4691-9aa7-7f91292480a9'),
	(561,'Asset',1,0,'2018-08-17 16:43:38','2018-08-18 13:58:36','67cdb307-a6ae-4cd3-9fc1-9c3ce1b9e8cf'),
	(562,'Asset',1,0,'2018-08-17 16:43:51','2018-08-18 13:58:35','66022635-591f-4072-bfbf-581917ad8184'),
	(563,'Asset',1,0,'2018-08-17 16:44:01','2018-08-18 13:58:35','ba438d52-393f-4f75-8c4b-b5d32a5bfbf0'),
	(564,'Asset',1,0,'2018-08-17 16:44:14','2018-08-18 13:58:35','dd9279f9-ee51-4091-b797-dedd12413a93'),
	(565,'Asset',1,0,'2018-08-17 16:44:33','2018-08-18 13:58:34','39d1f572-ba10-4316-bddc-96534244ed9d'),
	(566,'Asset',1,0,'2018-08-17 16:44:47','2018-08-18 13:58:35','a1f6dfa6-dad5-45d8-ae2d-c8d6751d57be'),
	(567,'Asset',1,0,'2018-08-17 16:45:07','2018-08-18 13:58:34','2a9d9d1e-7ceb-4879-9043-3c4a7108070e'),
	(568,'Asset',1,0,'2018-08-17 16:45:29','2018-08-18 13:58:34','c132cda4-002f-415f-bf2f-7d5f3abc359f'),
	(569,'MatrixBlock',1,0,'2018-08-17 16:54:05','2018-08-18 15:40:12','4c38f90f-d365-4fd2-9ed9-9a0d4bf9c8a8'),
	(570,'MatrixBlock',1,0,'2018-08-17 16:54:05','2018-08-18 15:40:12','0187f4ec-8f80-4f4f-abde-624907128c6c'),
	(571,'MatrixBlock',1,0,'2018-08-17 16:54:05','2018-08-18 15:40:12','e02f6cb6-f514-4410-a5c7-46675a2e8bfc'),
	(572,'MatrixBlock',1,0,'2018-08-17 16:54:05','2018-08-18 15:40:13','fb1f6a10-d031-4dad-b34a-e7ea9f97fb06'),
	(576,'MatrixBlock',1,0,'2018-08-17 17:00:56','2018-08-17 20:09:43','8dd1ea4d-cab1-4941-af92-b6b7f48947b1'),
	(577,'MatrixBlock',1,0,'2018-08-17 17:00:56','2018-08-17 20:09:43','8c07953b-62f6-476b-91dd-5c28dd7c7b16'),
	(578,'MatrixBlock',1,0,'2018-08-17 17:00:56','2018-08-17 20:09:43','540b39ba-d300-4375-9757-853f0222e131'),
	(579,'MatrixBlock',1,0,'2018-08-17 17:07:15','2018-08-17 20:01:29','f3c6d2ec-7a01-4544-b3e9-ac3a8d66c8da'),
	(580,'MatrixBlock',1,0,'2018-08-17 17:07:15','2018-08-17 20:01:30','d90340e9-17cd-43e5-b15d-2e79e7c3fd19'),
	(581,'MatrixBlock',1,0,'2018-08-17 17:07:15','2018-08-17 20:01:30','40f66477-c6aa-4384-9dab-fcdc72357e9b'),
	(582,'MatrixBlock',1,0,'2018-08-17 17:07:15','2018-08-17 20:01:30','3f743a21-2700-408c-8fa0-4ff2411a6c3d'),
	(583,'MatrixBlock',1,0,'2018-08-17 17:07:15','2018-08-17 20:01:30','a110708f-b205-4c2d-8441-0856f6e730c0'),
	(584,'MatrixBlock',1,0,'2018-08-17 17:08:46','2018-08-17 20:09:09','5f7cae96-386d-44e5-976f-925ff149c9cb'),
	(585,'MatrixBlock',1,0,'2018-08-17 17:08:46','2018-08-17 20:09:09','c7794813-e943-4a6d-bf04-8e3126a11978'),
	(586,'MatrixBlock',1,0,'2018-08-17 17:10:41','2018-08-18 15:41:29','1d98e1c6-edcc-4a9e-8b4f-064a2555022e'),
	(587,'MatrixBlock',1,0,'2018-08-17 17:10:41','2018-08-18 15:41:29','95f74fe2-73c9-4907-a807-2e247b189ab1'),
	(588,'MatrixBlock',1,0,'2018-08-17 17:10:41','2018-08-18 15:41:29','bafe5303-e2fd-4895-938f-b2ad003e75dc'),
	(589,'MatrixBlock',1,0,'2018-08-17 17:13:32','2018-08-17 17:21:36','6c46bfa1-52be-440e-936e-fcff0d90b468'),
	(590,'MatrixBlock',1,0,'2018-08-17 17:13:32','2018-08-17 17:21:36','65be880e-3bb3-41e0-b13d-f674f4ddf8fc'),
	(591,'MatrixBlock',1,0,'2018-08-17 17:13:32','2018-08-17 17:21:36','3dc7369b-ea27-443f-886c-588dbdbe4589'),
	(592,'MatrixBlock',1,0,'2018-08-17 17:13:32','2018-08-17 17:21:36','77593abb-5715-46be-b5e7-09ed8075a1a4'),
	(593,'MatrixBlock',1,0,'2018-08-17 17:13:32','2018-08-17 17:21:36','752e955b-3eaa-4afc-8fa0-94df49a1d0a7'),
	(594,'MatrixBlock',1,0,'2018-08-17 19:54:01','2018-08-18 15:41:29','4b97692a-1455-4f44-857b-b3069d207eb7'),
	(595,'MatrixBlock',1,0,'2018-08-17 19:59:14','2018-08-18 15:40:13','ed0305ba-da4c-4aff-b711-aabab9f983eb'),
	(596,'MatrixBlock',1,0,'2018-08-17 20:00:36','2018-08-17 20:09:43','9d2306b9-252f-4366-9797-2a0484e0ea21'),
	(597,'MatrixBlock',1,0,'2018-08-17 20:01:30','2018-08-17 20:01:30','90b28a89-561b-4795-a624-9265f81830c6'),
	(598,'MatrixBlock',1,0,'2018-08-17 20:02:15','2018-08-17 20:09:09','947dfc14-b821-41c8-86cb-e8b4950db4b0'),
	(599,'Entry',1,0,'2018-08-18 13:59:52','2018-08-18 14:52:30','4d7fc8c2-e2d6-4c37-a568-94123d13a61e');

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
	(2,2,'en','homepage','__home__',1,'2014-07-29 18:21:35','2018-08-16 20:45:38','f920f3e1-d004-4e8f-8281-897f0f72e524'),
	(74,74,'en','about','about',1,'2014-09-17 01:15:21','2018-07-29 18:55:25','d101404e-29cf-4a9a-99f7-58f2f0ea1b28'),
	(226,237,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','670fc8ff-b3af-473c-a9a2-f0cc8cf9e435'),
	(230,241,'en','',NULL,1,'2015-02-09 21:56:10','2015-02-10 18:08:01','08216ae3-a22d-4f75-a4f2-aa20e8c91e3f'),
	(232,243,'en','',NULL,1,'2015-02-10 01:16:49','2015-02-10 18:08:01','a4ffa5d7-fedd-4a82-b63d-a678e8584c52'),
	(246,257,'en','contact','contact',1,'2018-06-24 18:35:19','2018-07-15 13:16:42','9479984b-e621-4d9b-850b-098009f51d94'),
	(247,258,'en','apex-studio','apex-studio',1,'2018-06-24 18:35:36','2018-08-17 17:40:34','759b0724-7416-4de7-aebc-a761eecf7203'),
	(248,259,'en','instrument-repairs','instrument-repairs',1,'2018-06-24 18:36:23','2018-07-29 18:58:42','5c09d927-ed0f-4941-874d-9afd771dae3e'),
	(249,260,'en','',NULL,1,'2018-06-24 18:39:24','2018-08-09 13:58:04','8dd44dbe-3b8d-4776-af62-ea569bac1d7d'),
	(250,261,'en','strat-style','pickups/strat-style',1,'2018-07-05 19:58:38','2018-07-29 19:19:27','e0fa86f2-cf8e-4c19-b280-5c4114a7d2fe'),
	(251,262,'en','apex-50s','pickups/apex-50s',1,'2018-07-05 20:00:18','2018-08-17 17:21:36','02c41839-8f01-49f9-8900-4029f9cf1efb'),
	(252,263,'en','',NULL,1,'2018-07-05 20:06:13','2018-07-05 20:06:13','eb352164-4519-478a-972d-206f0a7255d1'),
	(253,264,'en','about',NULL,1,'2018-07-05 22:10:16','2018-07-05 22:10:16','12f63afc-30c3-444c-a73f-082241932d95'),
	(254,265,'en','apex-studio',NULL,1,'2018-07-05 22:10:46','2018-07-05 22:10:46','fb441222-8589-4703-b9e4-636ccd84f5d5'),
	(255,266,'en','instrument-repairs',NULL,1,'2018-07-05 22:11:12','2018-07-05 22:11:12','8783feab-fa20-48e0-a6d6-91d4707c7d2b'),
	(256,267,'en','blog',NULL,1,'2018-07-05 22:11:58','2018-07-05 22:11:58','72973090-64fb-4d4f-b22a-6b89d56fe8aa'),
	(257,268,'en','contact',NULL,1,'2018-07-05 22:12:49','2018-07-05 22:12:49','07120286-351c-497a-964f-ca36be6fa29e'),
	(258,269,'en','pickups',NULL,1,'2018-07-05 22:13:45','2018-07-05 22:13:45','c42388cb-b3ae-4c65-ba68-65056438a0a9'),
	(259,270,'en','strat-style',NULL,1,'2018-07-05 22:29:47','2018-07-08 15:43:52','6b4e955d-7ba7-41cf-9648-e1f5c90f8ebb'),
	(260,271,'en','apex-50s',NULL,1,'2018-07-05 22:30:24','2018-08-01 14:05:32','d99f60d9-0762-4766-a53f-65c787593a4b'),
	(261,272,'en','about',NULL,1,'2018-07-07 14:40:30','2018-07-07 14:40:30','409ba512-0ef0-4629-9a2d-c2b9755a4905'),
	(262,273,'en','apex-studio',NULL,1,'2018-07-07 14:40:51','2018-07-07 14:40:51','ba74d043-f8fc-4aa0-b346-6c07ee0e88ac'),
	(263,274,'en','work-shop',NULL,1,'2018-07-07 14:42:12','2018-07-07 14:42:12','f11f777a-0374-4370-a430-0f1bb4d6de63'),
	(264,275,'en','blog',NULL,1,'2018-07-07 14:42:38','2018-07-07 14:42:38','8030ac8e-adb0-455b-a21f-c35b451af183'),
	(303,314,'en','',NULL,1,'2018-07-08 13:54:49','2018-08-16 20:45:38','d5a5af98-d58a-4a99-a14a-4e3e6de332ba'),
	(308,319,'en','',NULL,1,'2018-07-08 16:28:44','2018-08-16 20:45:38','4716a65f-6328-4d49-8572-6842a624b0d7'),
	(309,320,'en','',NULL,1,'2018-07-08 16:31:00','2018-08-16 20:45:38','d05c3bc1-3da3-4139-9337-7f7cc7db1c0b'),
	(310,321,'en','',NULL,1,'2018-07-08 16:43:10','2018-08-16 20:45:38','77315ad6-9335-42e8-a5b2-92816d7a09ed'),
	(311,322,'en','',NULL,1,'2018-07-08 18:53:16','2018-08-16 20:45:38','d6a54233-4ca3-4276-b370-76058d210081'),
	(312,323,'en','',NULL,1,'2018-07-08 18:53:16','2018-08-16 20:45:38','711cc7ba-de62-47a8-83bd-46ab2b244dce'),
	(313,324,'en','',NULL,1,'2018-07-09 22:29:55','2018-07-29 18:55:25','7a0f592e-f1eb-40e8-8afa-ae6a73b5cab2'),
	(314,325,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-29 18:55:25','94bf82f3-089b-4a94-b63b-2a54bc0db58c'),
	(315,326,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-29 18:55:25','90e1cdb2-2c65-413e-a9f4-b4ec7b4e111c'),
	(316,327,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-29 18:55:25','498fea41-6841-4392-a871-b355deefac19'),
	(317,328,'en','',NULL,1,'2018-07-10 20:35:03','2018-07-29 18:55:25','488e9a77-5e85-4667-a389-751b709cbc44'),
	(318,329,'en','',NULL,1,'2018-07-10 22:20:53','2018-08-17 17:40:34','b79a7e6e-2e73-4839-91f5-66a6aa80fb15'),
	(319,330,'en','',NULL,1,'2018-07-10 22:20:53','2018-08-17 17:40:34','450460fe-4d3d-4287-95cb-6fdc215773f8'),
	(320,331,'en','',NULL,1,'2018-07-10 22:20:53','2018-08-17 17:40:34','024b3161-16ac-4d05-8838-f03fdb249aa8'),
	(321,332,'en','',NULL,1,'2018-07-10 22:44:31','2018-08-17 17:40:34','7644856b-adb9-46c1-afda-7ba083f87d25'),
	(322,333,'en','',NULL,1,'2018-07-10 23:05:04','2018-08-17 17:40:34','b0d25227-23cb-434f-a388-0bbbe9934fa1'),
	(323,334,'en','',NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','2362a0cf-0f9f-472a-8aa8-23f0eea3f54c'),
	(324,335,'en','',NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','5fcd22d6-963f-474c-9be2-db7978675960'),
	(325,336,'en','',NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','3e1d9ec8-368b-4136-b2cc-f3fa348ac987'),
	(326,337,'en','',NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','81dcf4be-1b37-4fcf-b363-638cedd79051'),
	(327,338,'en','',NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','610cda03-410d-4057-a9c9-462bdb39f997'),
	(328,339,'en','',NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','be31be45-f66a-4347-b69c-6519db532715'),
	(329,340,'en','',NULL,1,'2018-07-14 13:56:37','2018-08-17 17:40:34','d45be9f8-cbdc-4345-8e0c-61a870979175'),
	(331,342,'en','',NULL,1,'2018-07-14 15:07:42','2018-07-29 18:58:42','6dd98b4b-aaf5-43e6-b6a9-3ffac51f60c4'),
	(332,343,'en','',NULL,1,'2018-07-14 15:07:42','2018-07-29 18:58:42','f49d2e1a-2e87-4cbb-bd73-205feb0c7cd1'),
	(333,344,'en','',NULL,1,'2018-07-14 15:07:42','2018-07-29 18:58:42','2b79c3b9-26ea-4bc8-a139-846e2c6eade1'),
	(334,345,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-29 18:58:42','9d105af9-7995-4752-8308-94db4fc55fea'),
	(335,346,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-29 18:58:42','e8710fbf-84a4-4e48-8ed1-153716c2d5f4'),
	(336,347,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-29 18:58:42','7455a015-273b-4df1-bfb1-6cf3ebe24d8d'),
	(337,348,'en','',NULL,1,'2018-07-15 10:31:57','2018-07-29 18:58:42','af7d17eb-77f0-4c95-84b5-09586232a608'),
	(339,350,'en','introducing-the-team-pete','blog/introducing-the-team-pete',1,'2018-07-15 11:52:23','2018-07-26 17:20:24','bdbf74d9-3d83-4d1b-b178-cb7eb7f780f8'),
	(340,351,'en','',NULL,1,'2018-07-15 12:40:25','2018-07-26 17:20:24','1322859d-c569-4f86-9a7e-08f168e30185'),
	(341,352,'en','',NULL,1,'2018-07-16 22:04:20','2018-08-17 19:42:18','06615d3c-a378-4c6e-a2ab-bb67583a919e'),
	(342,353,'en','',NULL,1,'2018-07-16 22:10:19','2018-08-17 19:42:18','63be729b-c5e7-4afd-a9bb-f21adb0cc119'),
	(343,354,'en','',NULL,1,'2018-07-16 22:10:19','2018-08-17 19:42:18','34f251cd-fd65-407c-bae2-690e38254391'),
	(344,355,'en','tele-style','pickups/tele-style',1,'2018-07-16 22:33:39','2018-08-01 17:28:58','a23779f0-fc39-4401-97b0-a87a01bae602'),
	(345,356,'en','humbuckers','pickups/humbuckers',1,'2018-07-16 22:34:12','2018-08-01 17:29:20','b381aea2-fff6-4036-a4cc-1774a5ea5857'),
	(346,357,'en','',NULL,1,'2018-07-17 20:18:27','2018-08-17 17:21:36','4086dac4-6494-42f3-8303-da96da960b4f'),
	(349,360,'en','test','pickups/test',1,'2018-07-17 22:16:32','2018-07-17 22:16:32','d09f9f9f-2ead-43b3-a612-bff25c68ec7b'),
	(351,362,'en','apex-home-bg-1',NULL,1,'2018-07-26 17:11:26','2018-08-18 13:58:38','25e27c88-5bd6-4e75-9a45-58dc7702d9bc'),
	(352,363,'en','apex-studio-3',NULL,1,'2018-07-26 17:12:19','2018-08-18 13:58:39','32f00528-97a9-4760-9e59-8883e7b34de1'),
	(353,364,'en','apex-studio-6',NULL,1,'2018-07-26 17:12:24','2018-08-18 13:58:41','4cde9e02-7af4-4d5d-b1ea-db287d00ac59'),
	(354,365,'en','apex-studio-8',NULL,1,'2018-07-26 17:12:27','2018-08-18 13:58:42','a39e265b-64bb-4156-a9bc-acc05f5910f7'),
	(355,366,'en','apex-studio-9',NULL,1,'2018-07-26 17:12:28','2018-08-18 13:58:43','b6749f11-f0fe-4bb0-b613-94cfbb486222'),
	(356,367,'en','about-images-1',NULL,1,'2018-07-26 17:17:33','2018-08-18 13:58:34','8820b264-ca98-47d0-9d33-f5b18ef3ed4d'),
	(358,369,'en','apex-mountain',NULL,1,'2018-07-26 17:17:41','2018-08-18 13:58:38','263dc0ab-56cc-4546-a998-5e372f0b7b3b'),
	(359,370,'en','apex-studio-1',NULL,1,'2018-07-26 17:17:46','2018-08-18 13:58:39','a0066a35-29f3-4231-9f05-b7074bc826ec'),
	(360,371,'en','apex-studio-2',NULL,1,'2018-07-26 17:17:48','2018-08-18 13:58:39','d67c8bd6-f049-4c86-9ce3-9ba2aef44a07'),
	(362,373,'en','apex-studio-4',NULL,1,'2018-07-26 17:17:58','2018-08-18 13:58:40','5f11653d-5624-41cb-ba6a-725a9f766bd8'),
	(363,374,'en','apex-studio-5',NULL,1,'2018-07-26 17:18:02','2018-08-18 13:58:40','09cf7d78-28fc-42e4-9f81-81d76a77c3d3'),
	(365,376,'en','apex-studio-6',NULL,1,'2018-07-26 17:18:09','2018-08-18 13:58:41','012c0989-d8c8-45a5-bd7a-f1ad6bb28ffb'),
	(366,377,'en','apex-studio-7',NULL,1,'2018-07-26 17:18:11','2018-08-18 13:58:42','9bb295f7-31d5-433f-94ea-7ab5c7031163'),
	(369,380,'en','bg-texture-a',NULL,1,'2018-07-26 17:18:18','2018-08-18 13:58:43','f7a0a53e-acb4-4f86-b23b-1a7be0e112b1'),
	(370,381,'en','bg-texture-b',NULL,1,'2018-07-26 17:18:18','2018-08-18 13:58:43','4c043602-7379-46e6-94ba-d5846fe61ca5'),
	(371,382,'en','bg-texture-c',NULL,1,'2018-07-26 17:18:19','2018-08-18 13:58:43','e8f8ce3e-803e-4bd1-ae28-4b47fe3e3da7'),
	(372,383,'en','blog-post-1',NULL,1,'2018-07-26 17:18:20','2018-08-18 13:58:44','dad004b4-75e8-4058-8d95-eefb290005b7'),
	(373,384,'en','concrete-texture',NULL,1,'2018-07-26 17:18:21','2018-08-18 13:58:45','56e9ecac-d446-4086-8e11-f973ac9deb57'),
	(376,387,'en','hero-logo',NULL,1,'2018-07-26 17:18:27','2018-08-18 13:58:46','71aa0f66-1635-4590-b5df-a8b915ae66f9'),
	(377,388,'en','hero-logo',NULL,1,'2018-07-26 17:18:27','2018-08-18 13:58:47','7d4b58e7-4a16-4dc3-b2eb-00c4a3230a1b'),
	(378,389,'en','menu-logo',NULL,1,'2018-07-26 17:18:28','2018-08-18 13:58:49','aea1b9ef-cd18-41a5-8310-bf390071c349'),
	(379,390,'en','menu-logo',NULL,1,'2018-07-26 17:18:28','2018-08-18 13:58:49','f8a41e89-3b06-4eca-90f9-a448ae3bad24'),
	(380,391,'en','mountain-bg',NULL,1,'2018-07-26 17:18:28','2018-08-18 13:58:49','1c5c1b6a-b4d4-4d5a-b031-8c3527613fc6'),
	(381,392,'en','mountian-light',NULL,1,'2018-07-26 17:18:29','2018-08-18 13:58:50','9ad2bb01-d7d4-4bb6-91b0-768a943a0f1c'),
	(382,393,'en','mountian-light',NULL,1,'2018-07-26 17:18:29','2018-08-18 13:58:50','77f92b43-9be7-4f7a-909e-7ceb19cfa394'),
	(384,395,'en','pat',NULL,1,'2018-07-26 17:18:33','2018-08-18 13:58:52','cd4219eb-cbc3-439d-be87-2bb186355984'),
	(385,396,'en','pickup-index-bg',NULL,1,'2018-07-26 17:18:41','2018-08-18 13:58:53','9ab3137f-7c6d-4766-a006-fbb65a9d04b6'),
	(386,397,'en','pickups-bg',NULL,1,'2018-07-26 17:18:44','2018-08-18 13:58:54','3c6a9b5a-1f71-46fa-8eb3-c67a319ceb32'),
	(389,400,'en','single-coil-cream',NULL,1,'2018-07-26 17:18:47','2018-08-18 13:58:58','2b24082d-4ff5-4a87-a478-d24d17a1732c'),
	(390,401,'en','slider-holder',NULL,1,'2018-07-26 17:18:53','2018-08-18 13:58:59','48b1695c-0492-4547-a6af-931c85c2029d'),
	(391,402,'en','studio-bg',NULL,1,'2018-07-26 17:18:55','2018-08-18 13:59:00','85631644-a720-482b-a865-ad05ad4d7204'),
	(392,403,'en','team-dani',NULL,1,'2018-07-26 17:18:55','2018-08-18 13:59:00','79804fd7-8327-4b0f-9851-f3cdabc7af33'),
	(393,404,'en','team-dani',NULL,1,'2018-07-26 17:19:04','2018-08-18 13:59:01','724b2013-9519-4243-a06d-4cc9a3e32753'),
	(394,405,'en','team-graham',NULL,1,'2018-07-26 17:19:05','2018-08-18 13:59:01','c182f579-5321-43c1-bf50-517ca6dba240'),
	(395,406,'en','team-oran',NULL,1,'2018-07-26 17:19:06','2018-08-18 13:59:01','258075a0-a058-4d13-8266-5e66890584b1'),
	(396,407,'en','team-willy',NULL,1,'2018-07-26 17:19:08','2018-08-18 13:59:02','8e6c472c-5b6e-411d-ba6a-cae91ee017be'),
	(397,408,'en','team-willy',NULL,1,'2018-07-26 17:19:14','2018-08-18 13:59:02','89c2f380-728f-4965-89de-e32402963522'),
	(399,410,'en','workshop-bg',NULL,1,'2018-07-26 17:19:20','2018-08-18 13:59:06','68fad8a7-2f70-428f-bbe2-dc97893b1a56'),
	(403,414,'en','dani',NULL,1,'2018-07-29 18:53:42','2018-08-18 13:58:45','21fe4de6-5167-4485-a78f-29d51ce1addf'),
	(404,415,'en','oran',NULL,1,'2018-07-29 18:54:24','2018-08-18 13:58:51','231f5637-5457-452d-8abb-89c5679ce598'),
	(405,416,'en','willy',NULL,1,'2018-07-29 18:55:18','2018-08-18 13:59:06','34683fd2-eaf4-469c-98cb-7f6824e7b4d1'),
	(406,417,'en','repair-1',NULL,1,'2018-07-29 18:56:38','2018-08-18 13:58:56','a37ce79f-5874-4caf-b41a-4f01bedeb45f'),
	(407,418,'en','fret-level',NULL,1,'2018-07-29 18:58:15','2018-08-18 13:58:46','0b32f013-5eda-4d94-b349-6b01154118d8'),
	(408,419,'en','re-fret',NULL,1,'2018-07-29 18:58:34','2018-08-18 13:58:55','4ff7cf5e-8031-4509-95da-e56faba52e88'),
	(411,422,'en','tele-style',NULL,1,'2018-08-01 10:19:37','2018-08-01 10:19:37','cc779118-c4e9-4a59-921e-a3977a762059'),
	(412,423,'en','twang-cities','pickups/twang-cities',1,'2018-08-01 10:21:47','2018-08-18 15:41:29','7569c3c2-f9e8-4924-8786-f123e1b1ce54'),
	(413,424,'en','twang-cities',NULL,1,'2018-08-01 10:23:05','2018-08-01 14:06:18','a17e725f-8dd0-4f33-99ac-7fbb4a5ace25'),
	(414,425,'en','34s','pickups/34s',1,'2018-08-01 14:01:51','2018-08-17 20:09:09','0bdff771-e107-4ca0-8588-081fbc750dda'),
	(415,426,'en','apex-60s','pickups/apex-60s',1,'2018-08-01 14:02:25','2018-08-18 15:40:12','a45e7dc4-db1a-46d7-8d5b-36cf0b93fe45'),
	(416,427,'en','standard','pickups/standard',1,'2018-08-01 14:02:43','2018-08-17 20:09:43','28358655-ced8-44d9-ba75-715fbc84f3a7'),
	(417,428,'en','texas-modern','pickups/texas-modern',1,'2018-08-01 14:02:56','2018-08-17 20:01:29','acd338bf-a030-4481-8591-b070d6619df4'),
	(418,429,'en','texas-modern',NULL,1,'2018-08-01 14:03:49','2018-08-01 14:03:49','7765baf8-8f17-41de-ab6d-2caece00b864'),
	(419,430,'en','standard',NULL,1,'2018-08-01 14:04:18','2018-08-01 16:49:10','eafd46dd-8312-43ce-adca-c63f7f2fe653'),
	(420,431,'en','apex-60s',NULL,1,'2018-08-01 14:04:52','2018-08-01 14:04:52','c13ca226-2fda-479c-a277-fd0ecb1b402a'),
	(421,432,'en','apex-34s',NULL,1,'2018-08-01 14:05:21','2018-08-01 14:22:56','dca6f5c6-67cf-43c9-a5c9-e514f02f52a7'),
	(422,433,'en','humbuckers',NULL,1,'2018-08-01 14:09:19','2018-08-01 14:09:19','985b345b-4fa0-475f-ba5c-2ca7a95d84d1'),
	(423,434,'en','standard-clean',NULL,1,'2018-08-01 16:46:15','2018-08-18 13:58:23','ac8b7e35-3010-4c41-9769-5a07e4ca007c'),
	(424,435,'en','standard-dist',NULL,1,'2018-08-01 16:46:15','2018-08-18 13:58:24','5d731774-ffa7-467f-98c1-f5ab7ba65cea'),
	(425,436,'en','standard-od',NULL,1,'2018-08-01 16:46:18','2018-08-18 13:58:23','f8c58a3e-44f5-44b8-8a3f-d09d50c0e2d8'),
	(429,440,'en','humbucker-cream-and-black',NULL,1,'2018-08-01 16:53:21','2018-08-18 13:58:20','0af15fae-172b-4ccd-8506-06b7563e79e7'),
	(430,441,'en','tele-bridge',NULL,1,'2018-08-01 16:54:41','2018-08-18 13:58:26','06d55b5f-18e3-4887-90d9-269b1e82e42e'),
	(436,447,'en','tele-brodge-black',NULL,1,'2018-08-01 17:28:51','2018-08-18 13:59:03','fc10e0cc-a12d-4226-81f9-2f9ff1170fbf'),
	(437,448,'en','humbucker-black-and-white',NULL,1,'2018-08-01 17:29:15','2018-08-18 13:58:48','7d7fa7dc-6e46-49c8-a6be-c526be391b0d'),
	(438,449,'en','humbucker-cream',NULL,1,'2018-08-01 17:30:04','2018-08-18 13:58:48','392188f9-80df-4901-9fc8-fbb22acf7439'),
	(439,450,'en','single-coil-white',NULL,1,'2018-08-01 17:30:29','2018-08-18 13:58:59','93f50beb-1e2f-46ef-ad02-fa2fa653da58'),
	(440,451,'en','single-coil-black',NULL,1,'2018-08-01 17:30:59','2018-08-18 13:58:57','1b72e73d-f376-4539-b84d-82dacdbdf2ad'),
	(444,455,'en','',NULL,1,'2018-08-07 18:00:39','2018-08-18 15:40:12','283da054-2ca4-4d04-a3cf-2166f3f5591a'),
	(445,456,'en','humbucker-white',NULL,1,'2018-08-07 18:26:30','2018-08-18 13:58:23','3df93534-ce1b-4978-a51e-21653bdf0e89'),
	(446,457,'en','',NULL,1,'2018-08-07 18:28:33','2018-08-17 20:09:43','4e550829-e8e6-4be0-8819-056d7c022001'),
	(477,488,'en','tex-mod-b-clean',NULL,1,'2018-08-07 18:56:55','2018-08-18 13:58:26','71f71147-90fd-4b5a-b5e7-3268bca53307'),
	(478,489,'en','tex-mod-b-dist',NULL,1,'2018-08-07 18:56:57','2018-08-18 13:58:27','0f80349c-6257-48c4-a099-7ad840c21228'),
	(479,490,'en','tex-mod-b-od',NULL,1,'2018-08-07 18:56:58','2018-08-18 13:58:27','fb535e6a-3ccb-42e0-93ba-2ee8cfb49f2a'),
	(480,491,'en','tex-mod-b-m-clean',NULL,1,'2018-08-07 18:56:59','2018-08-18 13:58:27','3fe704ef-a26d-4a9d-98ed-86f0046f01d5'),
	(481,492,'en','tex-mod-b-m-dist',NULL,1,'2018-08-07 18:57:01','2018-08-18 13:58:27','107c3719-d0ee-4f11-8797-bb15e29220de'),
	(482,493,'en','tex-mod-b-m-od',NULL,1,'2018-08-07 18:57:02','2018-08-18 13:58:28','e89dcc40-7ae8-4aea-9ae3-a5aa2f2ff140'),
	(483,494,'en','tex-mod-m-clean',NULL,1,'2018-08-07 18:57:03','2018-08-18 13:58:28','8a866b50-b341-4efb-92c0-e5a4e2c94bb0'),
	(484,495,'en','tex-mod-m-dist',NULL,1,'2018-08-07 18:57:05','2018-08-18 13:58:28','3569a169-6106-4a45-aa20-bc43fa6b7456'),
	(485,496,'en','tex-mod-m-od',NULL,1,'2018-08-07 18:57:05','2018-08-18 13:58:29','711ba7fa-7c41-49cd-af38-76c5af57a62f'),
	(486,497,'en','tex-mod-m-n-clean',NULL,1,'2018-08-07 18:57:07','2018-08-18 13:58:29','addfebb4-9620-4792-8b46-9c7881b3ca5b'),
	(487,498,'en','tex-mod-m-n-dist',NULL,1,'2018-08-07 18:57:08','2018-08-18 13:58:29','2c1186b0-cd19-443b-88df-a0ee52ff740d'),
	(488,499,'en','tex-mod-m-n-od',NULL,1,'2018-08-07 18:57:10','2018-08-18 13:58:30','43fa2c09-5f25-48f6-a903-af4438614d6e'),
	(489,500,'en','tex-mod-n-clean',NULL,1,'2018-08-07 18:57:11','2018-08-18 13:58:30','056742fa-3098-4071-8f9a-c954c4eb1d01'),
	(490,501,'en','tex-mod-n-dist',NULL,1,'2018-08-07 18:57:13','2018-08-18 13:58:30','65e676f1-9377-490e-8734-93af386b9257'),
	(491,502,'en','tex-mod-n-od',NULL,1,'2018-08-07 18:57:14','2018-08-18 13:58:31','0b60f7f2-326b-4ef8-82d7-03f5e5060a57'),
	(492,503,'en','',NULL,1,'2018-08-07 19:08:59','2018-08-17 20:01:29','843d09af-a4ed-4776-adac-93eb6986d23a'),
	(499,510,'en','',NULL,1,'2018-08-07 19:12:32','2018-08-17 20:09:09','ceb9bf69-6b0d-4389-b734-10ed19d86c46'),
	(500,511,'en','twang-cities-b-clean',NULL,1,'2018-08-07 19:28:17','2018-08-18 13:58:31','20011439-4893-4e1c-8f70-13f557f4155c'),
	(501,512,'en','twang-cities-b-dist',NULL,1,'2018-08-07 19:28:20','2018-08-18 13:58:31','f68bc714-0401-48a8-8042-5ca993ec6430'),
	(502,513,'en','twang-cities-b-od',NULL,1,'2018-08-07 19:28:21','2018-08-18 13:58:31','4747e5f2-1b7a-461e-81b7-a1d9bbd5279c'),
	(503,514,'en','twang-cities-b-n-clean',NULL,1,'2018-08-07 19:28:22','2018-08-18 13:58:32','a24bfeda-e143-4fce-96f2-a341ba9f7af5'),
	(504,515,'en','twang-cities-b-n-dist',NULL,1,'2018-08-07 19:28:23','2018-08-18 13:58:32','e2b9ae9d-e396-4858-bf85-7b2c91f79cd9'),
	(505,516,'en','twang-cities-b-n-od',NULL,1,'2018-08-07 19:28:24','2018-08-18 13:58:32','c94d1766-b072-4328-8a0a-722130a3a054'),
	(506,517,'en','twang-cities-n-clean',NULL,1,'2018-08-07 19:28:25','2018-08-18 13:58:33','f9a86341-c734-4734-adc4-2031b0259dc4'),
	(507,518,'en','twang-cities-n-dist',NULL,1,'2018-08-07 19:28:26','2018-08-18 13:58:33','2eb68eb0-5765-43d4-b52b-5db5511cce8f'),
	(509,520,'en','',NULL,1,'2018-08-07 19:31:21','2018-08-18 15:41:29','2dd6ddeb-d1c4-4c86-a64b-539cc8d25b9d'),
	(512,523,'en','',NULL,1,'2018-08-12 18:16:38','2018-08-17 17:21:36','eb9047b8-4449-4951-86d0-8a0459b7cc83'),
	(520,531,'en','',NULL,1,'2018-08-16 07:39:53','2018-08-18 15:40:12','ed01f462-a7c8-47c7-832b-a2b1c248c45f'),
	(527,538,'en','twang-cities-n-od',NULL,1,'2018-08-16 21:40:03','2018-08-18 13:58:33','7556a676-66b2-446e-a721-5cace6e0df63'),
	(528,539,'en','candle-535149-1920',NULL,1,'2018-08-16 21:40:12','2018-08-18 13:58:44','a8dca0ff-afcc-45b4-80c9-c30ebdd68794'),
	(529,540,'en','error-page',NULL,1,'2018-08-16 21:40:14','2018-08-18 13:58:46','1af0cc96-1055-4409-8dc5-b9734ff551b7'),
	(530,541,'en','next',NULL,1,'2018-08-16 21:40:16','2018-08-18 13:58:50','82b7de73-00cd-4ad3-9816-c011ca1a3a04'),
	(531,542,'en','pause',NULL,1,'2018-08-16 21:40:18','2018-08-18 13:58:52','4a20f117-fbc3-454e-aec9-4acafd9c8f08'),
	(532,543,'en','paypal-logo',NULL,1,'2018-08-16 21:40:18','2018-08-18 13:58:52','d3742dde-620f-48a7-bcd3-dc31434e72fe'),
	(533,544,'en','play',NULL,1,'2018-08-16 21:40:21','2018-08-18 13:58:54','01faf9b1-a625-46cd-a633-9a9dfd4643ec'),
	(534,545,'en','previous',NULL,1,'2018-08-16 21:40:21','2018-08-18 13:58:55','dd4be8f8-547f-4c10-9daf-f3a9e20df0d1'),
	(535,546,'en','shortcut-apple',NULL,1,'2018-08-16 21:40:22','2018-08-18 13:58:56','ad27b819-3b76-45f3-a4d5-c9a81496a23b'),
	(536,547,'en','shortcut',NULL,1,'2018-08-16 21:40:22','2018-08-18 13:58:56','95fc0a19-effc-46cb-b38a-35f924c80792'),
	(537,548,'en','religion-864393-1920',NULL,1,'2018-08-16 21:41:16','2018-08-18 13:58:55','b51ef959-05f9-494d-9ed2-bf28cade00a3'),
	(538,549,'en','twang-cities-neck',NULL,1,'2018-08-17 16:40:25','2018-08-18 13:59:05','5e8f0b08-049d-44f3-bf86-d2a6ee3f131f'),
	(539,550,'en','twang-cities-bridge-neck',NULL,1,'2018-08-17 16:40:45','2018-08-18 13:59:04','05094826-bb70-4123-b364-8c8f8176807b'),
	(540,551,'en','twang-cities-bridge',NULL,1,'2018-08-17 16:41:07','2018-08-18 13:59:04','c990f815-2b8a-4e1c-8099-f608b283725c'),
	(541,552,'en','texas-modern-neck',NULL,1,'2018-08-17 16:41:21','2018-08-18 13:59:04','35dbc726-94aa-4275-992f-e618abf6d014'),
	(542,553,'en','texas-modern-middle-neck',NULL,1,'2018-08-17 16:41:34','2018-08-18 13:59:03','589774af-3c93-4b3d-ba34-90ea781aa591'),
	(543,554,'en','texas-modern-middle',NULL,1,'2018-08-17 16:41:49','2018-08-18 13:59:04','890422f1-3d37-4d42-bc11-3973bbd52489'),
	(544,555,'en','texas-modern-bridge-middle',NULL,1,'2018-08-17 16:42:03','2018-08-18 13:59:03','10fd0ec9-5afb-473b-bd1b-84ec87febded'),
	(545,556,'en','texas-modern-bridge',NULL,1,'2018-08-17 16:42:21','2018-08-18 13:59:03','a7347a89-ac0d-42c3-af6c-256f886e6d7c'),
	(546,557,'en','apex-60s-neck',NULL,1,'2018-08-17 16:42:41','2018-08-18 13:58:36','cc39996c-665b-4948-8cfb-8ed9c551a006'),
	(547,558,'en','apex-60s-middle-neck',NULL,1,'2018-08-17 16:42:55','2018-08-18 13:58:36','42e7e920-b21e-46a5-82e8-c012ab040ce9'),
	(548,559,'en','apex-60s-middle',NULL,1,'2018-08-17 16:43:14','2018-08-18 13:58:36','e364f665-a1f7-4bf6-9d1c-89e7fbce5c16'),
	(549,560,'en','apex-60s-bridge-middle',NULL,1,'2018-08-17 16:43:27','2018-08-18 13:58:35','dedf19e0-437c-48b7-85e3-4b33aa66b9cd'),
	(550,561,'en','apex-60s-bridge',NULL,1,'2018-08-17 16:43:38','2018-08-18 13:58:36','467f768c-b4e6-4a0f-b1fd-f206006d31ee'),
	(551,562,'en','apex-50s-neck',NULL,1,'2018-08-17 16:43:51','2018-08-18 13:58:35','539718f0-1da6-40ec-8a7a-34b1f230b092'),
	(552,563,'en','apex-50s-middle-neck',NULL,1,'2018-08-17 16:44:01','2018-08-18 13:58:35','d2dbebef-e06e-41be-bfd5-aecd420079ee'),
	(553,564,'en','apex-50s-middle',NULL,1,'2018-08-17 16:44:14','2018-08-18 13:58:35','8c3aacf0-4c5c-431f-895e-ad9761695381'),
	(554,565,'en','apex-50s-bridge-middle',NULL,1,'2018-08-17 16:44:33','2018-08-18 13:58:34','a7e7f683-d47b-44a7-a761-137b6059ab90'),
	(555,566,'en','apex-50s-bridge',NULL,1,'2018-08-17 16:44:47','2018-08-18 13:58:35','985d2a4e-5db1-4521-bb58-02b51abda260'),
	(556,567,'en','apex-34s-neck',NULL,1,'2018-08-17 16:45:07','2018-08-18 13:58:34','724202d5-dee7-44bf-b56d-af239c586073'),
	(557,568,'en','apex-34s-bridge',NULL,1,'2018-08-17 16:45:29','2018-08-18 13:58:34','232d8ee2-2eb4-42c4-a435-5a04ec083387'),
	(558,569,'en','',NULL,1,'2018-08-17 16:54:05','2018-08-18 15:40:12','3ecd0536-33d4-423c-a3fe-0f7dfde87ab1'),
	(559,570,'en','',NULL,1,'2018-08-17 16:54:05','2018-08-18 15:40:12','b2852b1a-cdc8-43e7-aa90-644a94a5b415'),
	(560,571,'en','',NULL,1,'2018-08-17 16:54:05','2018-08-18 15:40:13','0723a7ab-9836-42c2-9a26-0c5f1769317e'),
	(561,572,'en','',NULL,1,'2018-08-17 16:54:05','2018-08-18 15:40:13','225b7ea0-f632-422d-a11d-55e16fb85402'),
	(565,576,'en','',NULL,1,'2018-08-17 17:00:56','2018-08-17 20:09:43','626b3630-acb9-4bba-bad7-68024a8ccf0d'),
	(566,577,'en','',NULL,1,'2018-08-17 17:00:56','2018-08-17 20:09:43','ce625042-8d1f-4584-bffc-16c436e3a8af'),
	(567,578,'en','',NULL,1,'2018-08-17 17:00:56','2018-08-17 20:09:43','767867f0-5499-4184-b49a-310dce545a23'),
	(568,579,'en','',NULL,1,'2018-08-17 17:07:15','2018-08-17 20:01:29','d96aa4b9-8ae4-4435-b624-eb2301a6f796'),
	(569,580,'en','',NULL,1,'2018-08-17 17:07:15','2018-08-17 20:01:30','15c6350a-3d09-48e3-8655-8d198e3158a1'),
	(570,581,'en','',NULL,1,'2018-08-17 17:07:15','2018-08-17 20:01:30','b2fd39bf-7565-4dd4-b87c-630020260b46'),
	(571,582,'en','',NULL,1,'2018-08-17 17:07:15','2018-08-17 20:01:30','66c6c862-d0c5-4dcc-9373-ba390773f47a'),
	(572,583,'en','',NULL,1,'2018-08-17 17:07:15','2018-08-17 20:01:30','120f40a6-53dc-4b55-be5c-4d9efd10ef21'),
	(573,584,'en','',NULL,1,'2018-08-17 17:08:46','2018-08-17 20:09:09','883ee997-4ee4-4207-b04f-ee120a730f70'),
	(574,585,'en','',NULL,1,'2018-08-17 17:08:46','2018-08-17 20:09:09','ab35991f-e3e4-4e57-9045-8846031072b4'),
	(575,586,'en','',NULL,1,'2018-08-17 17:10:41','2018-08-18 15:41:29','96b16800-3990-477e-a496-11b59d2ac76d'),
	(576,587,'en','',NULL,1,'2018-08-17 17:10:41','2018-08-18 15:41:29','661016e1-007d-4953-bdcc-96843833c1e0'),
	(577,588,'en','',NULL,1,'2018-08-17 17:10:41','2018-08-18 15:41:29','9ce98fb0-9f2b-4027-b72b-583bd9209240'),
	(578,589,'en','',NULL,1,'2018-08-17 17:13:32','2018-08-17 17:21:36','18ac2a3d-8eab-4797-b5ec-912fda426b82'),
	(579,590,'en','',NULL,1,'2018-08-17 17:13:32','2018-08-17 17:21:36','810c4eb8-5a83-45a5-bbc9-c402db81817a'),
	(580,591,'en','',NULL,1,'2018-08-17 17:13:32','2018-08-17 17:21:36','bb9c93e8-0bbf-497b-94ec-963c890d8f6b'),
	(581,592,'en','',NULL,1,'2018-08-17 17:13:32','2018-08-17 17:21:36','0f67a92f-33f6-494a-bd23-294ff7e6b282'),
	(582,593,'en','',NULL,1,'2018-08-17 17:13:32','2018-08-17 17:21:36','e51de157-d7e1-4e8a-80ed-05304530a8ad'),
	(583,594,'en','',NULL,1,'2018-08-17 19:54:01','2018-08-18 15:41:29','732013dd-cfcc-4c34-8c22-cf660dab299a'),
	(584,595,'en','',NULL,1,'2018-08-17 19:59:14','2018-08-18 15:40:13','7e2b3418-89b2-4282-a27a-0436f4fbe151'),
	(585,596,'en','',NULL,1,'2018-08-17 20:00:36','2018-08-17 20:09:43','fe626de6-d5ca-4484-b87b-d697b01f425e'),
	(586,597,'en','',NULL,1,'2018-08-17 20:01:30','2018-08-17 20:01:30','4d0401cf-4a8d-4f83-8915-ad530757685e'),
	(587,598,'en','',NULL,1,'2018-08-17 20:02:15','2018-08-17 20:09:09','cca724e4-1447-4cc1-b989-13bf34fd8cae'),
	(588,599,'en','privacy-policy','privacy-policy',1,'2018-08-18 13:59:52','2018-08-18 14:52:30','3ba87c96-63eb-4959-ade1-8f0c2f787bd4');

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
	(2,1,1,NULL,'2014-07-29 18:21:35',NULL,'2014-07-29 18:21:35','2018-08-16 20:45:38','53ea9ee4-5daf-4d0f-9955-9385092bbd60'),
	(74,4,4,NULL,'2014-09-17 01:15:21',NULL,'2014-09-17 01:15:21','2018-07-29 18:55:25','c31210d7-7e6b-465e-b232-dc2d19b10745'),
	(257,9,NULL,NULL,'2018-06-24 18:35:19',NULL,'2018-06-24 18:35:19','2018-07-15 13:16:42','bd2069bf-6c3b-4922-b657-f914a6c43a54'),
	(258,10,NULL,NULL,'2018-06-24 18:35:36',NULL,'2018-06-24 18:35:36','2018-08-17 17:40:34','6756de37-75b3-4218-84b1-b234b20ca04a'),
	(259,11,NULL,NULL,'2018-06-24 18:36:23',NULL,'2018-06-24 18:36:23','2018-07-29 18:58:42','344e43f8-036c-45a4-850d-4e070fd84d92'),
	(262,12,14,1,'2018-07-05 20:00:00',NULL,'2018-07-05 20:00:18','2018-08-17 17:21:36','bc3d46e0-2ef2-401c-b4ed-1370c37ca0b1'),
	(350,2,2,1,'2018-07-15 11:52:00',NULL,'2018-07-15 11:52:23','2018-07-26 17:20:24','1ad65f25-a9e5-4a6c-bcb9-52a0d076900a'),
	(360,12,14,1,'2018-07-17 22:16:32',NULL,'2018-07-17 22:16:33','2018-07-17 22:16:33','3fd1d2e9-5f75-4e5c-bba5-3285762850e9'),
	(423,12,14,1,'2018-08-01 10:21:00',NULL,'2018-08-01 10:21:47','2018-08-18 15:41:29','1c28ceee-560e-4cdc-ba42-88fd93284591'),
	(425,12,14,1,'2018-08-01 14:01:00',NULL,'2018-08-01 14:01:51','2018-08-17 20:09:09','84ff988b-ed8d-48ef-af29-f222ad3484ff'),
	(426,12,14,1,'2018-08-01 14:02:00',NULL,'2018-08-01 14:02:25','2018-08-18 15:40:13','f2a30558-2757-4e47-aa29-ebad718e0739'),
	(427,12,14,1,'2018-08-01 14:02:00',NULL,'2018-08-01 14:02:43','2018-08-17 20:09:43','52628c04-46de-43c1-a00f-e9bbfa67c2fb'),
	(428,12,14,1,'2018-08-01 14:02:00',NULL,'2018-08-01 14:02:56','2018-08-17 20:01:30','8174ea5a-80e5-49ea-a57e-7165b333322a'),
	(599,13,15,NULL,'2018-08-18 14:44:10',NULL,'2018-08-18 13:59:52','2018-08-18 14:52:30','6882f0ec-b969-4b6e-9342-f5740e956714');

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
	(14,12,304,'Pickups','pickups',1,'Title',NULL,1,'2018-07-05 19:59:50','2018-08-12 18:15:39','e34ecaa9-7579-4b2d-bc6b-3218910066e8'),
	(15,13,313,'Privacy Policy','privacyPolicy',1,'',NULL,1,'2018-08-18 13:59:52','2018-08-18 14:50:33','838b5e78-c437-4175-bec5-8ccf4061131d');

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
	(270,257,9,1,'en',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Contact\",\"slug\":\"contact\",\"postDate\":1529865319,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"Get in touch if you\'d like to use any of our services.\"}}','2018-07-15 13:16:42','2018-07-15 13:16:42','368bac49-54fa-43fc-817a-83cfa8e8f649'),
	(271,262,12,1,'en',3,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"80\":[\"261\"],\"90\":\"<div class=\\\"large-12 small-centered columns text-center\\\">\\r\\n\\t\\t\\t<h1>Our single coil pickups give your guitar the truest most open sound it will ever have, bringing out tones you never thought you could hear from your guitar.<\\/h1>\\r\\n\\t\\t<\\/div>\"}}','2018-07-16 23:08:46','2018-07-16 23:08:46','cc6f43f3-8427-4109-bb59-f1dd4e2ce4ce'),
	(272,262,12,1,'en',4,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p><p><\\/p>\",\"80\":[\"261\"],\"15\":[\"304\"]}}','2018-07-17 19:01:15','2018-07-17 19:01:15','98e1b263-6dc7-49a5-af1a-48a970dd5620'),
	(273,262,12,1,'en',5,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"304\"]}}','2018-07-17 19:42:32','2018-07-17 19:42:32','22c5bd32-5ace-463c-82da-5d9538158cca'),
	(274,262,12,1,'en',6,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"304\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\\r\\n\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n\\t\\t\\t\\t<ul class=\\\"resistance\\\">\\r\\n\\t\\t\\t\\t\\t<li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<b>5.7K<\\/b>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<b>5.3k<\\/b>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<b>5.3K<\\/b>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":[]}}','2018-07-17 20:18:27','2018-07-17 20:18:27','5a80a370-0d33-450a-98f7-0555b600eaca'),
	(275,262,12,1,'en',7,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"304\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\",\"soundFile\":[\"358\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-17 20:27:40','2018-07-17 20:27:40','f53d647d-ebfe-4515-afdc-ade5beae1907'),
	(276,262,12,1,'en',8,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"304\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\",\"soundFile\":[\"358\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-17 20:28:08','2018-07-17 20:28:08','9fa47245-4348-499c-8c38-13684700fb45'),
	(277,262,12,1,'en',9,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"304\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\",\"soundFile\":[\"358\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-17 20:57:40','2018-07-17 20:57:40','951bbaf5-a308-4e55-ab11-e305eb52ed9d'),
	(278,360,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Test\",\"slug\":\"test\",\"postDate\":1531865792,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":[\"304\"],\"121\":\"120\",\"117\":[],\"122\":[]}}','2018-07-17 22:16:33','2018-07-17 22:16:33','a39667c8-91e6-4ecb-b6c5-342eba72915a'),
	(279,350,2,1,'en',4,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"INTRODUCING THE TEAM: PETE\",\"slug\":\"introducing-the-team-pete\",\"postDate\":1531655520,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"351\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\r\\n<\\/p>\\r\\n<p>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC \\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"\\r\\n<\\/p>\"}}},\"15\":[\"292\"],\"47\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}','2018-07-21 21:06:27','2018-07-21 21:06:27','95fe2d54-4461-4e0f-aa15-0a8e639ff3f7'),
	(280,350,2,1,'en',5,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"INTRODUCING THE TEAM: PETE\",\"slug\":\"introducing-the-team-pete\",\"postDate\":1531655520,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"351\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\r\\n<\\/p>\\r\\n<p>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC \\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"\\r\\n<\\/p>\"}}},\"15\":[\"292\"],\"47\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}','2018-07-21 21:06:39','2018-07-21 21:06:39','57fb376e-0e79-4c31-9441-1dd8611f90e0'),
	(281,2,1,1,'en',21,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.refresh-digital.com\\/public\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"362\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":\"\",\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":\"\",\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":\"\",\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\",\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\",\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-07-26 17:12:38','2018-07-26 17:12:38','6d018331-4155-4781-b80f-e5c88b0ba549'),
	(282,350,2,1,'en',6,'','{\"typeId\":\"2\",\"authorId\":\"1\",\"title\":\"Introducing the team: Pete\",\"slug\":\"introducing-the-team-pete\",\"postDate\":1531655520,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"351\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\r\\n<\\/p>\\r\\n<p>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC \\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"\\r\\n<\\/p>\"}}},\"15\":[\"383\"],\"47\":\"<p>Pete is probably the most important member of the team and has a job list as long as Orans hair. Pete keeps an eye on the workshop, keeps away intruders and makes sure everything is in order, all the while flashing his signature toothy grin.<\\/p>\"}}','2018-07-26 17:20:24','2018-07-26 17:20:24','ab970a85-204d-44cf-9b6e-9aec26c8ce25'),
	(283,74,4,1,'en',29,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":\"\",\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-26 17:21:28','2018-07-26 17:21:28','a6a8187f-0499-4715-9249-36e06ca412fc'),
	(284,2,1,1,'en',22,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.refresh-digital.com\\/public\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"362\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"396\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":\"\",\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":\"\",\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\",\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\",\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-07-26 17:22:43','2018-07-26 17:22:43','1944b18a-ca0e-4197-817c-38653310a811'),
	(285,2,1,1,'en',23,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.refresh-digital.com\\/public\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"362\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"397\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"402\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"410\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\",\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\",\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-07-26 17:24:48','2018-07-26 17:24:48','e5cdd211-ce37-4d06-84d5-860bbd585d1a'),
	(286,2,1,1,'en',24,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.refresh-digital.com\\/public\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"362\"]}},\"315\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"316\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"317\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}},\"318\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":\"\"}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"397\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"402\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"410\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"395\"],\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"\",\"fields\":{\"image\":\"\",\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-07-26 17:25:40','2018-07-26 17:25:40','23c36040-1935-4b02-a426-083c76aa39f1'),
	(287,74,4,1,'en',30,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-26 17:27:04','2018-07-26 17:27:04','39aa5ad8-87e8-4b06-b5de-6601c754fc96'),
	(288,74,4,1,'en',31,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-26 17:27:33','2018-07-26 17:27:33','b89ff639-a7b3-4bfb-965a-44850841aa76'),
	(289,74,4,1,'en',32,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-26 17:28:59','2018-07-26 17:28:59','3a241c5c-3c6a-4f1f-9566-40f05d2526d2'),
	(290,259,11,1,'en',8,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>basic guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> String change <\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Pots & Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"399\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>full guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"386\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>full re-fret<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"398\"],\"imageBlockPosition\":\"\"}}},\"91\":\"\",\"92\":{\"345\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"string change\",\"description\":\"(Guitar only. Including Strings), \\u00a35 + your choice of strings (Bass)\",\"price\":\"\\u00a31o\"}},\"346\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"headstock\\/neck repair\",\"description\":\"This is a structural repair only. Any cosmetic repairs will be extra.\",\"price\":\"\\u00a360\"}},\"347\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"348\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-26 17:30:56','2018-07-26 17:30:56','09ecf0a1-b869-468c-8d7d-3fd0a168fb08'),
	(291,74,4,1,'en',33,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-26 17:35:09','2018-07-26 17:35:09','6f1a8952-4eb0-417d-9c04-b1ee4815bd6f'),
	(292,74,4,1,'en',34,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-27 08:20:20','2018-07-27 08:20:20','c8fb5e3a-83ae-4d79-a521-193d7e982982'),
	(293,74,4,1,'en',35,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-27 08:25:35','2018-07-27 08:25:35','55981fca-b294-4a2c-a2be-3c328f83180f'),
	(294,74,4,1,'en',36,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"371\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-27 08:25:48','2018-07-27 08:25:48','996a5943-a3b7-4b2a-90cb-be42ef6cec43'),
	(295,74,4,1,'en',37,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"394\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-27 08:26:39','2018-07-27 08:26:39','18bc7657-09dc-48c6-bde5-a5cdf5eaba03'),
	(296,74,4,1,'en',38,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"412\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"385\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"409\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-27 08:32:20','2018-07-27 08:32:20','0325dba6-8c05-4c0e-83fc-d416a92ae5a0'),
	(297,74,4,1,'en',39,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"406\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-27 08:35:55','2018-07-27 08:35:55','f2e4616c-5407-4419-ad01-34a50c309c9e'),
	(298,74,4,1,'en',40,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"About\",\"slug\":\"about\",\"postDate\":1410916521,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"96\":{\"324\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>About Apex<\\/strong><\\/h3>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"imageBlock\":[\"377\"],\"imageBlockPosition\":\"1\"}}},\"106\":{\"325\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"415\"],\"teamMemberName\":\"ORAN MCGUCKIN\",\"teamMemberPosition\":\"Owner & creator\"}},\"326\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"414\"],\"teamMemberName\":\"DANI ROONEY\",\"teamMemberPosition\":\"Video & photography\"}},\"327\":{\"type\":\"teamMember\",\"enabled\":\"\",\"fields\":{\"teamMemberPhoto\":\"\",\"teamMemberName\":\"GRAHAM MCKINSTRY\",\"teamMemberPosition\":\"Social Media, marketing & management\"}},\"328\":{\"type\":\"teamMember\",\"enabled\":\"1\",\"fields\":{\"teamMemberPhoto\":[\"416\"],\"teamMemberName\":\"WILLIAM MARTIN\",\"teamMemberPosition\":\"Workshop apprentice\"}}}}}','2018-07-29 18:55:25','2018-07-29 18:55:25','c51be6fb-040c-4f66-acbc-fa4a24a557f8'),
	(299,259,11,1,'en',9,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Instrument Repairs\",\"slug\":\"instrument-repairs\",\"postDate\":1529865383,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>instrument repairs<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">All the latest carry on form the Apex team - all killer no filler <\\/h1>\",\"96\":{\"342\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>basic guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> String change <\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fretboard oil\\/conditioned <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Pots & Switches cleaned and lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Solder points touched up <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Action adjusted to make guitar\\/bass have optimum playability <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Intonation set <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Tuners lubricated <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> All around basic clean<\\/li>\\r\\n\\t\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a325 (exc strings)<\\/p>\",\"imageBlock\":[\"417\"],\"imageBlockPosition\":\"\"}},\"343\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>full guitar \\/ bass setup<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Includes everything from a basic set-up<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Fret level<\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> Fret crown <\\/li>\\r\\n\\t\\t\\t<li> <em class=\\\"fas fa-check\\\"><\\/em> fret Polish<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a370<\\/p>\",\"imageBlock\":[\"418\"],\"imageBlockPosition\":\"1\"}},\"344\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled\\\"><strong>full re-fret<\\/strong><\\/h3>\\r\\n<ul class=\\\"repairs\\\"><li><em class=\\\"fas fa-check\\\"><\\/em> Multiple types of fret wire available<\\/li>\\r\\n\\t\\t\\t<li><em class=\\\"fas fa-check\\\"><\\/em> Price will vary depending on fret wire type and for specific guitars<\\/li>\\r\\n\\t\\t<\\/ul>\\r\\n<p class=\\\"repair-price\\\">from \\u00a3120<\\/p>\",\"imageBlock\":[\"419\"],\"imageBlockPosition\":\"\"}}},\"91\":\"\",\"92\":{\"345\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"string change\",\"description\":\"(Guitar only. Including Strings), \\u00a35 + your choice of strings (Bass)\",\"price\":\"\\u00a31o\"}},\"346\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"headstock\\/neck repair\",\"description\":\"This is a structural repair only. Any cosmetic repairs will be extra.\",\"price\":\"\\u00a360\"}},\"347\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"348\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}}}}','2018-07-29 18:58:42','2018-07-29 18:58:42','73e297eb-3e1f-4a16-b4d9-a71de2d3a5ca'),
	(300,262,12,1,'en',10,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":\"\",\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/watch?v=e19h2BPkxyY\",\"soundFile\":\"\",\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-29 19:01:20','2018-07-29 19:01:20','e205e4f3-e717-41a7-a924-6460c2a68780'),
	(301,262,12,1,'en',11,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/watch?v=e19h2BPkxyY\",\"soundFile\":\"\",\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-29 19:03:09','2018-07-29 19:03:09','d5952132-fe7c-4e25-b17b-7aab3af404db'),
	(302,262,12,1,'en',12,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/watch?v=e19h2BPkxyY\",\"soundFile\":\"\",\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-29 19:03:51','2018-07-29 19:03:51','2dc2fea7-3ad2-4cc4-896e-490f2212f9d9'),
	(303,262,12,1,'en',13,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/watch?v=e19h2BPkxyY\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-29 19:52:20','2018-07-29 19:52:20','b8234ba8-4c87-406c-8a76-e9e38a3e9915'),
	(304,262,12,1,'en',14,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/watch?v=e19h2BPkxyY\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-07-29 19:55:42','2018-07-29 19:55:42','412cfa32-2700-422c-8a43-1141b51573d5'),
	(305,262,12,1,'en',15,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-08-01 10:17:00','2018-08-01 10:17:00','e7651895-fe02-4988-93bd-ed7f7b94ceca'),
	(306,423,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"twang cities\",\"slug\":\"twang-cities\",\"postDate\":1533118907,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"355\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 10:21:47','2018-08-01 10:21:47','6b2e3d1f-8be8-4ea1-a667-121f81a98fe1'),
	(307,262,12,1,'en',16,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-08-01 10:25:25','2018-08-01 10:25:25','52b122eb-a5b0-4309-9ede-2937957d121f'),
	(308,262,12,1,'en',17,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-08-01 10:26:11','2018-08-01 10:26:11','fd900a5f-c4ff-43d5-862f-9122b6486061'),
	(309,262,12,1,'en',18,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-08-01 10:28:12','2018-08-01 10:28:12','d613db1b-ccf9-4239-ba68-e782cf20280a'),
	(310,258,10,1,'en',15,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":\"\",\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":\"\",\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"370\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"363\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"376\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}},\"112\":{\"340\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<p class=\\\"bigger\\\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\\r\\n\\t\\t\\t\\tphotography services. <\\/p>\\r\\n<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\r\\n\\t\\t\\t\\tUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\\r\\n\\t\\t\\t\\toccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\"}}}}}','2018-08-01 10:29:23','2018-08-01 10:29:23','662f6ada-d8ff-4777-a7e2-5636ecde3a9e'),
	(311,258,10,1,'en',16,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"367\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":\"\",\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"370\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"363\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"376\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}},\"112\":{\"340\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<p class=\\\"bigger\\\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\\r\\n\\t\\t\\t\\tphotography services. <\\/p>\\r\\n<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\r\\n\\t\\t\\t\\tUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\\r\\n\\t\\t\\t\\toccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\"}}}}}','2018-08-01 10:30:16','2018-08-01 10:30:16','85eaf16d-02bf-4f79-89b0-9dc4e260d022'),
	(312,258,10,1,'en',17,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"366\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":\"\",\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"370\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"363\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"376\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}},\"112\":{\"340\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<p class=\\\"bigger\\\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\\r\\n\\t\\t\\t\\tphotography services. <\\/p>\\r\\n<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\r\\n\\t\\t\\t\\tUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\\r\\n\\t\\t\\t\\toccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\"}}}}}','2018-08-01 10:34:19','2018-08-01 10:34:19','0238434c-beea-46ab-b0cb-9436295d69ea'),
	(313,425,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"34s\",\"slug\":\"34s\",\"postDate\":1533132110,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:01:51','2018-08-01 14:01:51','be8dea60-907f-455f-9e3a-a8c94a4bad4f'),
	(314,425,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:02:06','2018-08-01 14:02:06','daab365f-d9b2-4921-b8ba-67e8a5a0ef7d'),
	(315,426,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132145,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":\"\",\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:02:25','2018-08-01 14:02:25','41203787-a95d-4bf9-817a-ace41c1a5ca8'),
	(316,427,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Standard\",\"slug\":\"standard\",\"postDate\":1533132163,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":\"\",\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:02:43','2018-08-01 14:02:43','21b28086-09dd-421d-95c7-02835d470157'),
	(317,428,12,1,'en',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132176,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":\"\",\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:02:56','2018-08-01 14:02:56','c04e7dd9-8f26-4031-b26f-1d8eb70822ed'),
	(318,423,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang city\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"355\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:03:10','2018-08-01 14:03:10','1f2ec702-3a1e-414e-9442-7d05cc3e17a4'),
	(319,428,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:11:17','2018-08-01 14:11:17','9f085dff-44f9-4da0-85a1-cab64c3e4247'),
	(320,426,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:11:28','2018-08-01 14:11:28','4e87544d-afbd-44c6-9b9b-c82d0ae4caae'),
	(321,425,12,1,'en',3,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 14:22:18','2018-08-01 14:22:18','fb6caf23-6770-4a29-9c70-071b2fd0ecc4'),
	(322,427,12,1,'en',2,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Standard\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":{\"437\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"434\",\"435\",\"436\"],\"soundFileTitle\":\"\"}}}}}','2018-08-01 16:46:32','2018-08-01 16:46:32','24df6f38-3bc9-4178-9825-9710f4707a81'),
	(323,427,12,1,'en',3,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Standard\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":{\"437\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"\"}}}}}','2018-08-01 16:47:59','2018-08-01 16:47:59','3c91c712-dad4-4709-9c07-059f9d968c93'),
	(324,262,12,1,'en',19,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"438\"],\"soundFileTitle\":\"Sound Sample\"}}}}}','2018-08-01 16:49:58','2018-08-01 16:49:58','0132801a-08c4-49e9-82d7-df0dd88cc1c1'),
	(325,262,12,1,'en',20,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"438\",\"439\"],\"soundFileTitle\":\"Pickup Sound Samples\"}}}}}','2018-08-01 16:50:59','2018-08-01 16:50:59','21cd80ca-a0fe-4cd9-b63c-3370f0f6cd56'),
	(326,423,12,1,'en',3,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang city\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"355\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":{\"442\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"438\"],\"soundFileTitle\":\"Twang City sound clips\"}}}}}','2018-08-01 16:58:54','2018-08-01 16:58:54','cd0af23b-1be1-4c05-ab18-4aeb2a79a990'),
	(327,423,12,1,'en',4,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang city\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"355\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":{\"442\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\",\"soundFile\":[\"438\"],\"soundFileTitle\":\"Twang City sound clips\"}}}}}','2018-08-01 17:00:24','2018-08-01 17:00:24','cc26cbe9-4a0b-454c-a376-f5de0f793884'),
	(328,262,12,1,'en',21,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"438\",\"439\"],\"soundFileTitle\":\"Pickup Sound Samples\"}}}}}','2018-08-01 17:02:27','2018-08-01 17:02:27','2397c88d-f37d-4f68-958b-e0677eb26765'),
	(329,425,12,1,'en',4,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":{\"443\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":\"\",\"soundFileTitle\":\"\"}}}}}','2018-08-01 17:06:13','2018-08-01 17:06:13','dc642c62-9c52-4722-95aa-e86ca43d1c9c'),
	(330,262,12,1,'en',22,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"438\"],\"soundFileTitle\":\"Apex 50s sound samples\"}}}}}','2018-08-01 17:06:54','2018-08-01 17:06:54','e3b4ac6d-d7be-4b7f-97e1-4c8882e628a9'),
	(331,262,12,1,'en',23,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50s sound samples\"}}}}}','2018-08-01 17:08:37','2018-08-01 17:08:37','d08abbfc-406a-40e9-a75b-00238f819ad1'),
	(332,262,12,1,'en',24,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"370\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"Apex 50s sound samples\"}}}}}','2018-08-01 17:08:57','2018-08-01 17:08:57','83206c6f-70ca-4a9c-930c-68d5f3d08bb7'),
	(333,262,12,1,'en',25,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"Apex 50s sound samples\"}}}}}','2018-08-01 17:10:23','2018-08-01 17:10:23','6800375d-2801-44b1-888a-ee00af4f9022'),
	(334,425,12,1,'en',5,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":\"\",\"121\":\"\",\"117\":[],\"122\":{\"443\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"446\"],\"soundFileTitle\":\"\"}}}}}','2018-08-01 17:13:32','2018-08-01 17:13:32','00ef2759-dc26-4537-b021-8c6e25cd97f2'),
	(335,425,12,1,'en',6,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"\",\"117\":[],\"122\":{\"443\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"446\"],\"soundFileTitle\":\"\"}}}}}','2018-08-01 17:30:11','2018-08-01 17:30:11','d8f0661b-3f95-4ba8-92dd-cf1154515c34'),
	(336,426,12,1,'en',3,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 17:30:33','2018-08-01 17:30:33','16b1fce4-18ef-4ea6-bea8-f62ad1868a97'),
	(337,428,12,1,'en',3,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"\",\"117\":[],\"122\":[]}}','2018-08-01 17:31:03','2018-08-01 17:31:03','5e070557-4702-4107-b59d-7fbaeccab0a2'),
	(338,425,12,1,'en',7,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"\",\"117\":[],\"122\":{\"443\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"446\"],\"soundFileTitle\":\"\"}}}}}','2018-08-01 17:31:09','2018-08-01 17:31:09','864e8080-c22e-4c7d-94b3-8470e24b01ab'),
	(339,423,12,1,'en',5,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang city\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"\",\"117\":[],\"122\":{\"442\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\",\"soundFile\":[\"438\"],\"soundFileTitle\":\"Twang City sound clips\"}}}}}','2018-08-01 17:31:30','2018-08-01 17:31:30','8e6153ed-7e66-49ff-b7f7-a6863b50322f'),
	(340,262,12,1,'en',26,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"Apex 50s sound samples\"}}}}}','2018-08-01 17:31:57','2018-08-01 17:31:57','7d08d7d2-3df9-491d-92d0-17df0b31c839'),
	(341,426,12,1,'en',4,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"\",\"117\":[],\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"\"}}}}}','2018-08-02 08:49:58','2018-08-02 08:49:58','f5caec93-5220-42e0-a5b8-eaf85b014cbe'),
	(342,426,12,1,'en',5,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"\",\"117\":[],\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"\"}}}}}','2018-08-03 14:32:00','2018-08-03 14:32:00','62f66ada-49ec-40e5-a8bc-9c5583cfe745'),
	(343,426,12,1,'en',6,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic&nbsp;styled tones, ranging from creamy neck jazz tones to&nbsp;sizzling hot vintage blues tones and everything in&nbsp;between. These pickups are expertly balanced and&nbsp;offer a wide array of diverse tones and endless&nbsp;response harmonically and dynamically. The pickups&nbsp;are perfected to the point of consistency across the 5&nbsp;way selector switch without having too much high&nbsp;end rendering it thin or too much low end rendering&nbsp;it muddy, they have optimum clarity for that original&nbsp;classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":[],\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"\"}}}}}','2018-08-03 14:32:20','2018-08-03 14:32:20','a065dfce-9549-4ae8-8052-b4aa3f773ede'),
	(344,427,12,1,'en',4,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone.&nbsp;<\\/p>\",\"80\":[\"356\"],\"15\":\"\",\"121\":\"165\",\"117\":[],\"122\":{\"437\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"421\"],\"soundFileTitle\":\"\"}}}}}','2018-08-03 14:36:37','2018-08-03 14:36:37','d778e67e-98d8-4abd-8b42-0827abc7a1d7'),
	(345,428,12,1,'en',4,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound&nbsp;vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound. At Apex Pickups we&nbsp;go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these&nbsp;pickups&nbsp;will give you a full, clear clean sound and a dirty sound you just can\'t argue with.<\\/p>\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"139\",\"117\":[],\"122\":[]}}','2018-08-03 14:39:20','2018-08-03 14:39:20','dd660041-08ed-4aa2-99dc-cb0ac687f9ef'),
	(346,425,12,1,'en',8,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone&nbsp;and really bring out the harmonic overtones that resonate from you and your&nbsp;axe.&nbsp;<\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":[],\"122\":{\"443\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"\",\"soundFile\":[\"446\"],\"soundFileTitle\":\"\"}}}}}','2018-08-03 14:40:05','2018-08-03 14:40:05','aaae6699-06b5-421b-b7cc-72e4ced26294'),
	(347,423,12,1,'en',6,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":[],\"122\":{\"442\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\",\"soundFile\":[\"438\"],\"soundFileTitle\":\"Twang City sound clips\"}}}}}','2018-08-03 14:41:39','2018-08-03 14:41:39','ebcc98a9-bac9-4274-8f7d-8647211763eb'),
	(348,426,12,1,'en',7,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between.&nbsp;<\\/p><p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically.&nbsp;<\\/p><p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong>Magnet Type&nbsp;<\\/strong><\\/p><p><strong>Alnico 5<\\/strong><\\/p>\",\"featureTwo\":\"<p><b>Approximate Resistance<\\/b><\\/p><p><strong>Bridge \\u2013 6K<\\/strong><br><\\/p>\\r\\n<p><strong>Middle - 5.7K\\r\\n<\\/strong><\\/p>\\r\\n<p><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/p>\\r\\n\"}}},\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/youtu.be\\/-W1oJppWt2c\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"Apex 60\'s\"}}}}}','2018-08-07 18:00:39','2018-08-07 18:00:39','d4fc4cdc-e2af-42fb-a315-95836e350911'),
	(349,262,12,1,'en',27,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"Apex 50\'s Sound Samples\"}}}}}','2018-08-07 18:01:26','2018-08-07 18:01:26','ebe6b795-1f89-48fc-b967-517c6264d353'),
	(350,426,12,1,'en',8,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong><\\/strong><\\/p><h3>Magent Type<\\/h3>\\r\\n<p><b>Alnico 5<\\/b>\\r\\n<\\/p><p><strong><\\/strong><\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance<\\/strong><\\/p>\\r\\n<p><strong>Bridge \\u2013 6K<\\/strong><br><\\/p>\\r\\n<p><strong>Middle - 5.7K\\r\\n<\\/strong><\\/p>\\r\\n<p><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/p>\"}}},\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/youtu.be\\/-W1oJppWt2c\",\"soundFile\":[\"413\"],\"soundFileTitle\":\"Apex 60\'s\"}}}}}','2018-08-07 18:02:09','2018-08-07 18:02:09','5d7a3ff9-dc8e-41ea-b4d9-978c9a72f9b2'),
	(351,427,12,1,'en',5,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard.&nbsp;<\\/p><p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound.&nbsp;<\\/p><p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><b>Magnet Type<\\/b>\\r\\n<\\/p>\\r\\n<p><b>Alnico 2<\\/b><\\/p>\",\"featureTwo\":\"<p><b>Approximate Resistance&nbsp;<\\/b>\\r\\n<\\/p>\\r\\n<p><b>18K<\\/b><\\/p>\"}}},\"122\":{\"437\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/youtu.be\\/l4oMVSZT3UY\",\"soundFile\":[\"434\",\"436\",\"435\"],\"soundFileTitle\":\"Apex Standard Sound Samples\"}}}}}','2018-08-07 18:28:33','2018-08-07 18:28:33','adcb7631-8c60-4e64-bebf-1a6ad8eae612'),
	(352,426,12,1,'en',9,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><\\/p>\\r\\n<h3>Magent Type<\\/h3>\\r\\n<p><strong>Alnico 5<\\/strong>\\r\\n<\\/p>\\r\\n<p><\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance<\\/strong><\\/p>\\r\\n<p><strong>Bridge \\u2013 6K<\\/strong><br><\\/p>\\r\\n<p><strong>Middle - 5.7K\\r\\n<\\/strong><\\/p>\\r\\n<p><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/p>\"}}},\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/youtu.be\\/-W1oJppWt2c\",\"soundFile\":[\"458\",\"460\",\"459\",\"461\",\"463\",\"462\",\"464\",\"466\",\"465\",\"467\",\"469\",\"468\",\"470\",\"472\",\"471\"],\"soundFileTitle\":\"Apex 60\'s Sound Samples\"}}}}}','2018-08-07 18:40:50','2018-08-07 18:40:50','a4849523-25b6-4d5d-a9b1-b2758d9f0408'),
	(353,262,12,1,'en',28,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\",\"soundFile\":[\"444\",\"474\",\"473\",\"475\",\"477\",\"476\",\"478\",\"480\",\"479\",\"481\",\"483\",\"482\",\"438\",\"486\",\"439\"],\"soundFileTitle\":\"Apex 50\'s Sound Samples\"}}}}}','2018-08-07 18:51:32','2018-08-07 18:51:32','e35e8251-635b-4e05-be9c-f0a2f23aeb0e'),
	(354,427,12,1,'en',6,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong>Magnet Type<\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance <\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>18K<\\/strong><\\/p>\"}}},\"122\":{\"437\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/l4oMVSZT3UY\",\"soundFile\":[\"434\",\"436\",\"435\"],\"soundFileTitle\":\"Apex Standard Sound Samples\"}}}}}','2018-08-07 18:54:01','2018-08-07 18:54:01','c9fb642f-4adc-4d81-9c39-a7ec3b2c5ab7');

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(355,428,12,1,'en',5,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound.&nbsp;<\\/p><p>At Apex Pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these pickups will give you a full, clear clean sound and a dirty sound you just can\'t argue with.<\\/p>\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"139\",\"117\":{\"503\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p><p>Alnico 5<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance&nbsp;<\\/p><p>6.6K \\u2013 Bridge\\r\\n<\\/p>\\r\\n<p>6.4K \\u2013 Middle\\r\\n<\\/p>\\r\\n<p>6.6K - Neck<\\/p>\"}}},\"122\":{\"504\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/sUeBMkV1OeQ\",\"soundFile\":[\"488\",\"490\",\"489\",\"491\",\"493\",\"492\",\"494\",\"496\",\"495\",\"497\",\"499\",\"498\",\"500\",\"502\",\"501\"],\"soundFileTitle\":\"Texas Modern Sound Samples\"}}}}}','2018-08-07 19:08:59','2018-08-07 19:08:59','931360ab-757d-477e-b56c-55493a48ab3f'),
	(356,425,12,1,'en',9,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone.&nbsp;<\\/p><p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario.&nbsp;<\\/p><p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p><p>Alnico 2<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance&nbsp;<\\/p><p>Bridge - 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 7K\\r\\n<\\/p>\\r\\n\"}}},\"122\":{\"443\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/TA3fo7fPrl4\",\"soundFile\":[\"446\",\"506\",\"505\",\"507\",\"509\",\"508\"],\"soundFileTitle\":\"Apex \'34 Sound Samples\"}}}}}','2018-08-07 19:12:32','2018-08-07 19:12:32','27429e89-9860-4afe-be32-2439c289794e'),
	(357,423,12,1,'en',7,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952.&nbsp;<\\/p><p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone.&nbsp;<\\/p><p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p><p>Alnico 5<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance<\\/p><p>Bridge \\u2013 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 5.5K<\\/p>\"}}},\"122\":{\"442\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\",\"soundFile\":[\"511\",\"513\",\"512\",\"514\",\"516\",\"515\",\"517\",\"519\",\"518\"],\"soundFileTitle\":\"Twang City Sound Clips\"}}}}}','2018-08-07 19:31:21','2018-08-07 19:31:21','8eb7259a-e37f-467c-a72c-7700fb88bf5b'),
	(358,262,12,1,'en',29,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\",\"474\",\"473\",\"475\",\"477\",\"476\",\"478\",\"480\",\"479\",\"481\",\"483\",\"482\",\"438\",\"486\",\"439\"],\"soundFileTitle\":\"Apex 50\'s Sound Samples\"}},\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}}}}}','2018-08-12 16:18:52','2018-08-12 16:18:52','53fdda56-a634-4192-a0dd-ea774f1c7a16'),
	(359,262,12,1,'en',30,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\",\"474\",\"473\",\"475\",\"477\",\"476\",\"478\",\"480\",\"479\",\"481\",\"483\",\"482\",\"438\",\"486\",\"439\"],\"soundFileTitle\":\"Apex 50\'s Sound Samples\"}},\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-12 18:16:38','2018-08-12 18:16:38','e886a359-b50b-4e75-8e52-fa2a557de94d'),
	(360,262,12,1,'en',31,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\",\"474\",\"473\",\"475\",\"477\",\"476\",\"478\",\"480\",\"479\",\"481\",\"483\",\"482\",\"438\",\"486\",\"439\"],\"soundFileTitle\":\"Apex 50\'s Sound Samples\"}},\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-12 18:24:15','2018-08-12 18:24:15','9bb884a4-c212-4fa8-84e4-e844242bb3f0'),
	(361,426,12,1,'en',10,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<ul><li><strong>Alnico 5<\\/strong>\\r\\n<\\/li><\\/ul>\",\"featureTwo\":\"<p><strong>Approximate Resistance<\\/strong><\\/p>\\r\\n<ul><li><strong>Bridge \\u2013 6K<\\/strong><\\/li><li><strong>Middle - 5.7K\\r\\n<\\/strong><\\/li><li><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/li><\\/ul>\"}}},\"122\":{\"454\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"458\",\"460\",\"459\",\"461\",\"463\",\"462\",\"464\",\"466\",\"465\",\"467\",\"469\",\"468\",\"470\",\"472\",\"471\"],\"soundFileTitle\":\"Apex 60\'s Sound Samples\"}}},\"112\":[]}}','2018-08-15 18:59:17','2018-08-15 18:59:17','faa5cf05-fdf1-46a7-9c4e-aa3c35d5f970'),
	(362,262,12,1,'en',32,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"359\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\",\"474\",\"473\",\"475\",\"477\",\"476\",\"478\",\"480\",\"479\",\"481\",\"483\",\"482\",\"438\",\"486\",\"439\"],\"soundFileTitle\":\"Apex 50\'s Sound Samples\"}},\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}},\"524\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"478\"],\"soundFileTitle\":\"Apex 50\'s Middle Clean\"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-15 19:03:03','2018-08-15 19:03:03','d4141139-3243-4fb9-8e90-76f75eed7113'),
	(363,262,12,1,'en',33,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}},\"524\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"478\"],\"soundFileTitle\":\"Apex 50\'s Middle Clean\"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-15 19:04:06','2018-08-15 19:04:06','2d08e6e7-f127-426b-a175-247a7b6a373b'),
	(364,262,12,1,'en',34,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}},\"524\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"473\"],\"soundFileTitle\":\"Apex 50\'s Bridge Distortion\"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-15 19:05:10','2018-08-15 19:05:10','b6064304-2031-4091-a1ef-3e6678b84dee'),
	(365,262,12,1,'en',35,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"521\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"444\"],\"soundFileTitle\":\"Apex 50\'s Bridge Clean\"}},\"522\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"474\"],\"soundFileTitle\":\"Apex 50\'s Bridge Overdrive\"}},\"524\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"473\"],\"soundFileTitle\":\"Apex 50\'s Bridge Distortion\"}},\"525\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"475\"],\"soundFileTitle\":\"Apex 50\'s Bridge & Middel Clean\"}},\"526\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"477\"],\"soundFileTitle\":\"Apex 50\'s Bridge & Middle Overdrive\"}},\"527\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"476\"],\"soundFileTitle\":\"Apex 50\'s Bridge & Middle Distortion\"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-15 19:07:54','2018-08-15 19:07:54','9ce51635-6942-4d01-a4d5-c538139cce40'),
	(366,423,12,1,'en',8,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<p>Alnico 5<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance<\\/p>\\r\\n<p>Bridge \\u2013 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 5.5K<\\/p>\"}}},\"122\":{\"442\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"511\"],\"soundFileTitle\":\"Twang City Bridge Clean\"}},\"528\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"513\"],\"soundFileTitle\":\"Twang Cities Bridge Overdrive\"}},\"529\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"512\"],\"soundFileTitle\":\"Twang Cities Bridge Distortion\"}},\"530\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"514\"],\"soundFileTitle\":\"Twang Cities Bridge & Neck Clean\"}}},\"112\":[]}}','2018-08-15 19:11:27','2018-08-15 19:11:27','9a4c7b70-3f57-4384-90d6-09e1cc2690d6'),
	(367,426,12,1,'en',11,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<ul><li><strong>Alnico 5<\\/strong>\\r\\n<\\/li><\\/ul>\",\"featureTwo\":\"<p><strong>Approximate Resistance<\\/strong><\\/p>\\r\\n<ul><li><strong>Bridge \\u2013 6K<\\/strong><\\/li><li><strong>Middle - 5.7K\\r\\n<\\/strong><\\/li><li><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/li><\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":\"\",\"soundFileTitle\":\"\"}}},\"112\":[]}}','2018-08-16 07:39:53','2018-08-16 07:39:53','bd15d99c-eb66-4eae-b994-bba8c0a838c8'),
	(368,2,1,1,'en',25,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.refresh-digital.com\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"362\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"397\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"402\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"410\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"395\"],\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"\",\"fields\":{\"image\":\"\",\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-08-16 07:48:30','2018-08-16 07:48:30','b5b43b9b-203a-4168-b322-2e0505f08a5d'),
	(369,425,12,1,'en',10,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<p>Alnico 2<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance <\\/p>\\r\\n<p>Bridge - 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 7K\\r\\n<\\/p>\"}}},\"122\":[],\"112\":[]}}','2018-08-16 19:34:59','2018-08-16 19:34:59','456c8207-ed4a-4b69-be89-2b2cb88ed26b'),
	(370,427,12,1,'en',7,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong>Magnet Type<\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance <\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>18K<\\/strong><\\/p>\"}}},\"122\":[],\"112\":[]}}','2018-08-16 19:35:26','2018-08-16 19:35:26','1855041e-86fd-4fc3-9df7-e049a72426b8'),
	(371,428,12,1,'en',6,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound. <\\/p>\\r\\n<p>At Apex Pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these pickups will give you a full, clear clean sound and a dirty sound you just can\'t argue with.<\\/p>\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"139\",\"117\":{\"503\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<p>Alnico 5<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance <\\/p>\\r\\n<p>6.6K \\u2013 Bridge\\r\\n<\\/p>\\r\\n<p>6.4K \\u2013 Middle\\r\\n<\\/p>\\r\\n<p>6.6K - Neck<\\/p>\"}}},\"122\":[],\"112\":[]}}','2018-08-16 19:36:02','2018-08-16 19:36:02','2d51ac7e-4b0c-4beb-8d65-63194a84a9b3'),
	(372,423,12,1,'en',9,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<p>Alnico 5<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance<\\/p>\\r\\n<p>Bridge \\u2013 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 5.5K<\\/p>\"}}},\"122\":[],\"112\":[]}}','2018-08-16 19:36:59','2018-08-16 19:36:59','1dda07d0-a784-454c-b8df-25ff4792003e'),
	(373,262,12,1,'en',36,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":[],\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-16 19:38:20','2018-08-16 19:38:20','cc8cdbfd-48b7-4147-bc5a-e419dfe3416b'),
	(374,2,1,1,'en',26,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1406658095,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h1>CUSTOM PICKUPS, RECORDING STUDIO & GUITAR WORK SHOP. WE DO IT ALL AT APEX.<\\/h1>\\r\\n<p>Apex Music Co is your one stop for all your needs as a musician. We offer a wide range of services such as professional instrument repairs, music videos, live performance videos, hand wound electric pickup manufacturing, music photography, high quality audio recording and rehearsal facility rental.<\\/p>\\r\\n<p><a class=\\\"button\\\" href=\\\"http:\\/\\/apex.refresh-digital.com\\/about#entry:74:url\\\">Discover more about apex <em class=\\\"fas fa-long-arrow-alt-right\\\"><\\/em><\\/a><\\/p>\",\"99\":{\"314\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"362\"]}}},\"101\":{\"319\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Pickups\",\"backgroundImage\":[\"397\"],\"description\":\"SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.\",\"hotspotLink\":\"\\/\"}},\"320\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"Apex Studio\",\"backgroundImage\":[\"402\"],\"description\":\"SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.\",\"hotspotLink\":\"\\/apex-studio\"}},\"321\":{\"type\":\"hotspot\",\"enabled\":\"1\",\"fields\":{\"hotspotTitle\":\"INSTRUMENT REPAIRS\",\"backgroundImage\":[\"410\"],\"description\":\"TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.\",\"hotspotLink\":\"\\/instrument-repairs\"}}},\"88\":[\"includeFeed\"],\"82\":{\"322\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"395\"],\"slideTitle\":\"PAT MCMANUS\",\"slideSubTile\":\"Pickups: Apex 50\'s\",\"slideLink\":\"\",\"slideLinkText\":\"View Pickups\"}},\"323\":{\"type\":\"slide\",\"enabled\":\"\",\"fields\":{\"image\":\"\",\"slideTitle\":\"Test Title\",\"slideSubTile\":\"Test Subtitle\",\"slideLink\":\"\",\"slideLinkText\":\"View\"}}}}}','2018-08-16 20:45:38','2018-08-16 20:45:38','1b889452-e91d-4e5c-9654-660e660906a5'),
	(375,426,12,1,'en',12,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<ul><li><strong>Alnico 5<\\/strong>\\r\\n<\\/li><\\/ul>\",\"featureTwo\":\"<p><strong>Approximate Resistance<\\/strong><\\/p>\\r\\n<ul><li><strong>Bridge \\u2013 6K<\\/strong><\\/li><li><strong>Middle - 5.7K\\r\\n<\\/strong><\\/li><li><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/li><\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 16:54:05','2018-08-17 16:54:05','95b05847-cf30-4fa0-9d68-958e52be2020'),
	(376,427,12,1,'en',8,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong>Magnet Type<\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance <\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>18K<\\/strong><\\/p>\"}}},\"122\":{\"576\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"434\"],\"soundFileTitle\":\"Apex Standard - Clean\"}},\"577\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"436\"],\"soundFileTitle\":\"Apex Standard - Overdrive\"}},\"578\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"435\"],\"soundFileTitle\":\"Apex Standard - Distortion\"}}},\"112\":[]}}','2018-08-17 17:00:56','2018-08-17 17:00:56','5b19dcf3-0e1d-4b21-bfd0-65bbddb4bb17'),
	(377,427,12,1,'en',9,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong>Magnet Type<\\/strong>\\r\\n<\\/p>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance <\\/strong>\\r\\n<\\/p>\\r\\n<ul><li><strong>18K<\\/strong><\\/li><\\/ul>\"}}},\"122\":{\"576\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"434\"],\"soundFileTitle\":\"Apex Standard - Clean\"}},\"577\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"436\"],\"soundFileTitle\":\"Apex Standard - Overdrive\"}},\"578\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"435\"],\"soundFileTitle\":\"Apex Standard - Distortion\"}}},\"112\":[]}}','2018-08-17 17:01:59','2018-08-17 17:01:59','9db465f0-6db0-4631-a6a8-9d18018a7346'),
	(378,427,12,1,'en',10,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p><strong>Magnet Type<\\/strong>\\r\\n<\\/p>\\r\\n<ul><li><strong>Alnico 2<\\/strong><\\/li><\\/ul>\",\"featureTwo\":\"<p><strong>Approximate Resistance <\\/strong>\\r\\n<\\/p>\\r\\n<ul><li><strong>18K<\\/strong><\\/li><\\/ul>\"}}},\"122\":{\"576\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"434\"],\"soundFileTitle\":\"Apex Standard - Clean\"}},\"577\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"436\"],\"soundFileTitle\":\"Apex Standard - Overdrive\"}},\"578\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"435\"],\"soundFileTitle\":\"Apex Standard - Distortion\"}}},\"112\":[]}}','2018-08-17 17:03:05','2018-08-17 17:03:05','cc94b995-44c8-4ea8-8d1f-98907f66df30'),
	(379,428,12,1,'en',7,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound. <\\/p>\\r\\n<p>At Apex Pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these pickups will give you a full, clear clean sound and a dirty sound you just can\'t argue with.<\\/p>\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"139\",\"117\":{\"503\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<ul><li>Alnico 5<\\/li><\\/ul>\",\"featureTwo\":\"<p>Approximate Resistance <\\/p>\\r\\n<ul><li>6.6K \\u2013 <strong>Bridge<\\/strong>\\r\\n<\\/li><li>6.4K \\u2013 Middle\\r\\n<\\/li><li>6.6K - Neck<\\/li><\\/ul>\"}}},\"122\":{\"579\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"556\"],\"soundFileTitle\":\"Texas Modern, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"580\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Texas Modern, Bridge & Middle - Clean \\/ Overdrive \\/ Distortion\"}},\"581\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Texas Modern, Middle - Clean \\/ Overdrive \\/ Distortion\"}},\"582\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Texas Modern, Middle & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"583\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Texas Modern, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:07:15','2018-08-17 17:07:15','3b4606e3-08f9-4014-a02d-b2115989b372'),
	(380,425,12,1,'en',11,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<p>Alnico 2<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance <\\/p>\\r\\n<p>Bridge - 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 7K\\r\\n<\\/p>\"}}},\"122\":{\"584\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"568\"],\"soundFileTitle\":\"Apex 34\'s, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"585\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"567\"],\"soundFileTitle\":\"Apex 34\'s, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:08:46','2018-08-17 17:08:46','edf41c74-bb6b-4057-a7b8-e0c6734a0d08'),
	(381,423,12,1,'en',10,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<p>Magnet Type<\\/p>\\r\\n<p>Alnico 5<\\/p>\",\"featureTwo\":\"<p>Approximate Resistance<\\/p>\\r\\n<p>Bridge \\u2013 7.5K\\r\\n<\\/p>\\r\\n<p>Neck \\u2013 5.5K<\\/p>\"}}},\"122\":{\"586\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"551\"],\"soundFileTitle\":\"Twang Cities, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"587\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"550\"],\"soundFileTitle\":\"Twang Cities, Bridge & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"588\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"549\"],\"soundFileTitle\":\"Twang Cities, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:10:41','2018-08-17 17:10:41','f9e28772-d9f9-4a20-bb17-b1cfd5b3cabf'),
	(382,262,12,1,'en',37,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.7K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Middle\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3k<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t\\t<li>Neck\\r\\n\\t\\t\\t\\t\\t\\t<strong>5.3K<\\/strong>\\r\\n\\t\\t\\t\\t\\t<\\/li>\\r\\n\\t\\t\\t\\t<\\/ul>\"}}},\"122\":{\"589\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"566\"],\"soundFileTitle\":\"Apex 50\'s, Bridge - Clean \\/ Overdrive \\/ Distortion \"}},\"590\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"565\"],\"soundFileTitle\":\"Apex 50\'s, Bridge & Middle - Clean \\/ Overdrive \\/ Distortion \"}},\"591\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"564\"],\"soundFileTitle\":\"Apex 50\'s, Middle - Clean \\/ Overdrive \\/ Distortion \"}},\"592\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 50\'s, Middle & Neck - Clean \\/ Overdrive \\/ Distortion \"}},\"593\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"562\"],\"soundFileTitle\":\"Apex 50\'s, Neck - Clean \\/ Overdrive \\/ Distortion \"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-17 17:13:32','2018-08-17 17:13:32','8505e49c-b9d7-4c74-9fc7-0966e30f4e62'),
	(383,426,12,1,'en',13,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n<strong>Alnico 5<\\/strong>\\r\\n<\\/p>\",\"featureTwo\":\"<p><strong>Approximate Resistance<\\/strong><\\/p>\\r\\n<ul><li><strong>Bridge \\u2013 6K<\\/strong><\\/li><li><strong>Middle - 5.7K\\r\\n<\\/strong><\\/li><li><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/li><\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:18:20','2018-08-17 17:18:20','0efce61c-b85a-41b2-8a2a-60398e04412f'),
	(384,426,12,1,'en',14,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n<strong>Alnico 5<\\/strong>\\r\\n<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul><li><strong>Bridge \\u2013 6K<\\/strong><\\/li><li><strong>Middle - 5.7K\\r\\n<\\/strong><\\/li><li><strong>Neck \\u2013 5.7K<\\/strong> \\r\\n<\\/li><\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:19:06','2018-08-17 17:19:06','398e4663-946c-471b-9dc5-8e279e47f407'),
	(385,262,12,1,'en',38,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n\\t\\t\\t\\t\\t<strong>Alnico 5<\\/strong>\\r\\n\\t\\t\\t\\t<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\">\\r\\n<li>Bridge<strong> 5.7K<\\/strong><\\/li>\\r\\n<li>Middle<strong> 5.3k<\\/strong><\\/li>\\r\\n<li>Neck<strong> 5.3K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"589\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"566\"],\"soundFileTitle\":\"Apex 50\'s, Bridge - Clean \\/ Overdrive \\/ Distortion \"}},\"590\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"565\"],\"soundFileTitle\":\"Apex 50\'s, Bridge & Middle - Clean \\/ Overdrive \\/ Distortion \"}},\"591\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"564\"],\"soundFileTitle\":\"Apex 50\'s, Middle - Clean \\/ Overdrive \\/ Distortion \"}},\"592\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 50\'s, Middle & Neck - Clean \\/ Overdrive \\/ Distortion \"}},\"593\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"562\"],\"soundFileTitle\":\"Apex 50\'s, Neck - Clean \\/ Overdrive \\/ Distortion \"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-17 17:20:50','2018-08-17 17:20:50','4637bdd1-c5cb-40d3-9066-72a230a84c51'),
	(386,262,12,1,'en',39,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 50s\",\"slug\":\"apex-50s\",\"postDate\":1530820800,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Apex 50\'s The Apex 50\'s the perfect aged tone your rig needs, with a beautiful mid-range these pickups really sing with your valve driven tones or even your transistor jazz cleans.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone.\\r\\n<\\/p>\\r\\n<p>The Apex 50\'s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50\'s can do virtually anything.\\r\\n<\\/p>\",\"80\":[\"261\"],\"15\":[\"400\"],\"121\":\"135\",\"117\":{\"357\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p><b>Alnico 5<\\/b><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge<strong> 5.7K<\\/strong><\\/li>\\r\\n<li>Middle<strong> 5.3k<\\/strong><\\/li>\\r\\n<li>Neck<strong> 5.3K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"589\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"566\"],\"soundFileTitle\":\"Apex 50\'s, Bridge - Clean \\/ Overdrive \\/ Distortion \"}},\"590\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"565\"],\"soundFileTitle\":\"Apex 50\'s, Bridge & Middle - Clean \\/ Overdrive \\/ Distortion \"}},\"591\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"564\"],\"soundFileTitle\":\"Apex 50\'s, Middle - Clean \\/ Overdrive \\/ Distortion \"}},\"592\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 50\'s, Middle & Neck - Clean \\/ Overdrive \\/ Distortion \"}},\"593\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"562\"],\"soundFileTitle\":\"Apex 50\'s, Neck - Clean \\/ Overdrive \\/ Distortion \"}}},\"112\":{\"523\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/e19h2BPkxyY\"}}}}}','2018-08-17 17:21:36','2018-08-17 17:21:36','6eb91ae2-9fce-4695-a2b9-237a316b5bca'),
	(387,426,12,1,'en',15,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n<b>Alnico 5<\\/b>\\r\\n<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\">\\r\\n<li>Bridge <strong>6K<\\/strong><\\/li>\\r\\n<li>Middle <strong>5.7K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.7K<\\/strong> \\r\\n<\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:23:24','2018-08-17 17:23:24','30d1e766-1034-4708-a2de-7fcff27d964c'),
	(388,427,12,1,'en',11,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<\\/p><b>Alnico 2<\\/b><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <h3>\\r\\n<ul class=\\\"resistance\\\"><li><strong>18K<\\/strong><\\/li><\\/ul>\"}}},\"122\":{\"576\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"434\"],\"soundFileTitle\":\"Apex Standard - Clean\"}},\"577\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"436\"],\"soundFileTitle\":\"Apex Standard - Overdrive\"}},\"578\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"435\"],\"soundFileTitle\":\"Apex Standard - Distortion\"}}},\"112\":[]}}','2018-08-17 17:25:18','2018-08-17 17:25:18','da2e41e8-f7de-4e97-a6c6-32c15103eae2'),
	(389,428,12,1,'en',8,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound. <\\/p>\\r\\n<p>At Apex Pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these pickups will give you a full, clear clean sound and a dirty sound you just can\'t argue with.<\\/p>\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"139\",\"117\":{\"503\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><b>Alnico 5<\\/b><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\">\\r\\n<li>Bridge <strong>6.6K<\\/strong><\\/li>\\r\\n<li>Middle <strong>6.4K<\\/strong><\\/li>\\r\\n<li>Neck <strong>6.6K <\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"579\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"556\"],\"soundFileTitle\":\"Texas Modern, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"580\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Texas Modern, Bridge & Middle - Clean \\/ Overdrive \\/ Distortion\"}},\"581\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Texas Modern, Middle - Clean \\/ Overdrive \\/ Distortion\"}},\"582\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Texas Modern, Middle & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"583\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Texas Modern, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:28:34','2018-08-17 17:28:34','e68b603f-4d36-433f-bc34-cd6166d6f30b'),
	(390,425,12,1,'en',12,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><b>Alnico 2<\\/b><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\">\\r\\n<li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>7K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"584\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"568\"],\"soundFileTitle\":\"Apex 34\'s, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"585\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"567\"],\"soundFileTitle\":\"Apex 34\'s, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:31:33','2018-08-17 17:31:33','2f015ed7-06bb-4463-8460-2f25138d1eae'),
	(391,423,12,1,'en',11,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><b>Alnico 5<\\/b><\\/p>\",\"featureTwo\":\"<H3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\">\\r\\n<li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.5K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"586\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"551\"],\"soundFileTitle\":\"Twang Cities, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"587\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"550\"],\"soundFileTitle\":\"Twang Cities, Bridge & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"588\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"549\"],\"soundFileTitle\":\"Twang Cities, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:33:54','2018-08-17 17:33:54','cd87e03d-fb47-4d07-a8ad-3102201cc01f'),
	(392,425,12,1,'en',13,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><b>Alnico 2<\\/strong><\\/b>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>7K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"584\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"568\"],\"soundFileTitle\":\"Apex 34\'s, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"585\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"567\"],\"soundFileTitle\":\"Apex 34\'s, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":[]}}','2018-08-17 17:39:13','2018-08-17 17:39:13','fa074a1e-c8ef-4c84-a00a-020474758bc1'),
	(393,258,10,1,'en',18,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Apex Studio\",\"slug\":\"apex-studio\",\"postDate\":1529865336,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<h2 class=\\\"styled center-text\\\"><strong>Apex Studio<\\/strong><\\/h2>\\r\\n<h1 class=\\\"center-text pt-s\\\">Fully loaded recording Studio, rehersal facilities with video and photogrpahy packages available. <\\/h1>\",\"96\":{\"332\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\"> <strong>recording studio<\\/strong> <\\/h3>\\r\\n<p>10 Hour session - <strong>From \\u00a3220 Per Session<\\/strong> (Engineer included) Hourly rate outside of session bookings - <strong>\\u00a325<\\/strong>.<\\/p>\\r\\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young \\/ new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.<\\/p>\\r\\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.<\\/p>\",\"imageBlock\":[\"366\"],\"imageBlockPosition\":\"1\"}},\"333\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textblock\":\"<h3 class=\\\"styled center-text\\\">\\r\\n\\t\\t\\t<strong>rehersal facilities<\\/strong>\\r\\n\\t\\t<\\/h3>\\r\\n<p>\\u00a310 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\\r\\n\\t\\t\\t\\u00a325 for 3 hours) Opening hours and time slots are subject to availability.<\\/p>\\r\\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\\r\\n\\t\\t\\tday\\r\\n\\t\\t<\\/p>\",\"imageBlock\":[\"363\"],\"imageBlockPosition\":\"\"}}},\"88\":[\"includeFeed\"],\"82\":{\"329\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"370\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"330\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"363\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}},\"331\":{\"type\":\"slide\",\"enabled\":\"1\",\"fields\":{\"image\":[\"376\"],\"slideTitle\":\"\",\"slideSubTile\":\"\",\"slideLink\":\"\",\"slideLinkText\":\"\"}}},\"92\":{\"334\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 1\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"335\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 2\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"336\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 3\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"337\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 4\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"338\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 5\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}},\"339\":{\"type\":\"product\",\"enabled\":\"1\",\"fields\":{\"productName\":\"Package 6\",\"description\":\"8 hour live session shoot with full crew (4k)\",\"price\":\"\\u00a31199\"}}},\"112\":{\"340\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<p class=\\\"bigger\\\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\\r\\n\\t\\t\\t\\tphotography services. <\\/p>\\r\\n<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\\r\\n\\t\\t\\t\\tUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\\r\\n\\t\\t\\t\\toccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/bTqVqk7FSmY\"}}}}}','2018-08-17 17:40:34','2018-08-17 17:40:34','8356fcb3-2968-4d3b-b715-dad8bdbffa12'),
	(394,423,12,1,'en',12,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 5<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.5K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"586\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"551\"],\"soundFileTitle\":\"Twang Cities, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"587\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"550\"],\"soundFileTitle\":\"Twang Cities, Bridge & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"588\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"549\"],\"soundFileTitle\":\"Twang Cities, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"594\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\"}}}}}','2018-08-17 19:54:01','2018-08-17 19:54:01','af03e80d-4e39-4acf-bf65-63d285e9ca7d'),
	(395,423,12,1,'en',13,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 5<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.5K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"586\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"551\"],\"soundFileTitle\":\"Twang Cities, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"587\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"550\"],\"soundFileTitle\":\"Twang Cities, Bridge & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"588\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"549\"],\"soundFileTitle\":\"Twang Cities, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"594\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<p>Video demo<\\/p>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\"}}}}}','2018-08-17 19:54:46','2018-08-17 19:54:46','547b44d7-320c-473f-b495-fb8f87389d0d'),
	(396,423,12,1,'en',14,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 5<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.5K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"586\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"551\"],\"soundFileTitle\":\"Twang Cities, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"587\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"550\"],\"soundFileTitle\":\"Twang Cities, Bridge & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"588\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"549\"],\"soundFileTitle\":\"Twang Cities, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"594\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<h3>Video demo<\\/h3>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\"}}}}}','2018-08-17 19:56:14','2018-08-17 19:56:14','bc02637e-7ffe-4abe-aeca-fa894987bccb'),
	(397,426,12,1,'en',16,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n<strong>Alnico 5<\\/strong>\\r\\n<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>6K<\\/strong><\\/li>\\r\\n<li>Middle <strong>5.7K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.7K<\\/strong> \\r\\n<\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":{\"595\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/-W1oJppWt2c\"}}}}}','2018-08-17 19:59:14','2018-08-17 19:59:14','96ffa918-53f9-4687-b1eb-9d7bb516954d'),
	(398,427,12,1,'en',12,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"456\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<h3>\\r\\n<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li><strong>18K<\\/strong><\\/li><\\/ul>\"}}},\"122\":{\"576\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"434\"],\"soundFileTitle\":\"Apex Standard - Clean\"}},\"577\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"436\"],\"soundFileTitle\":\"Apex Standard - Overdrive\"}},\"578\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"435\"],\"soundFileTitle\":\"Apex Standard - Distortion\"}}},\"112\":{\"596\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/l4oMVSZT3UY\"}}}}}','2018-08-17 20:00:36','2018-08-17 20:00:36','fd872461-e167-43d8-8071-a89cd92b22c8'),
	(399,428,12,1,'en',9,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Texas Modern\",\"slug\":\"texas-modern\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex Texas Moderns encapsulate the modern S type player taking the S type tone to its peak, bringing in the hot over wound vibrancy that countless players are known for, the Texas Moderns deliver a well-balanced robust sound. <\\/p>\\r\\n<p>At Apex Pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar, The Moderns ensure a sparkling clean sound with unhindered harmonic response, reading out at around 6.6K these pickups will give you a full, clear clean sound and a dirty sound you just can\'t argue with.<\\/p>\",\"80\":[\"261\"],\"15\":[\"451\"],\"121\":\"139\",\"117\":{\"503\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 5<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>6.6K<\\/strong><\\/li>\\r\\n<li>Middle <strong>6.4K<\\/strong><\\/li>\\r\\n<li>Neck <strong>6.6K <\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"579\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"556\"],\"soundFileTitle\":\"Texas Modern, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"580\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Texas Modern, Bridge & Middle - Clean \\/ Overdrive \\/ Distortion\"}},\"581\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Texas Modern, Middle - Clean \\/ Overdrive \\/ Distortion\"}},\"582\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Texas Modern, Middle & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"583\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Texas Modern, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"597\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/sUeBMkV1OeQ\"}}}}}','2018-08-17 20:01:30','2018-08-17 20:01:30','e97e9187-2a35-49d4-9bed-67c84086cbff'),
	(400,425,12,1,'en',14,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>7K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"584\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"568\"],\"soundFileTitle\":\"Apex 34\'s, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"585\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"567\"],\"soundFileTitle\":\"Apex 34\'s, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"598\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/TA3fo7fPrl4\"}}}}}','2018-08-17 20:02:15','2018-08-17 20:02:15','cfb113e6-a048-4b32-a4e1-f71a8f81c280'),
	(401,426,12,1,'en',17,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n<strong>Alnico 5<\\/strong>\\r\\n<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>6K<\\/strong><\\/li>\\r\\n<li>Middle <strong>5.7K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.7K<\\/strong> \\r\\n<\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":{\"595\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<h3>Apex 60\'s Video Demo<\\/h3>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/-W1oJppWt2c\"}}}}}','2018-08-17 20:03:58','2018-08-17 20:03:58','eade755a-3f05-487d-8f9e-be3dc149f057'),
	(402,425,12,1,'en',15,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex \'34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><b>Alnico 2<\\/strong><\\/b>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>7K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"584\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"568\"],\"soundFileTitle\":\"Apex 34\'s, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"585\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"567\"],\"soundFileTitle\":\"Apex 34\'s, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"598\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/TA3fo7fPrl4\"}}}}}','2018-08-17 20:09:00','2018-08-17 20:09:00','a059cb2c-6bd2-41d5-8ca2-cedac714912f'),
	(403,425,12,1,'en',16,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 34\'s\",\"slug\":\"34s\",\"postDate\":1533132060,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 34\'s are the heritage of our range they demonstrate diversity to the fullest combining Apex Ingenuity with classic tone. <\\/p>\\r\\n<p>The 34\'s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound, featuring a sparkling mid-range that will cut through any mix or even live scenario. <\\/p>\\r\\n<p>They produce the meaty American tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit, the 34\'s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe. <\\/p>\",\"80\":[\"356\"],\"15\":[\"449\"],\"121\":\"155\",\"117\":{\"510\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>7K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"584\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"568\"],\"soundFileTitle\":\"Apex 34\'s, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"585\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"567\"],\"soundFileTitle\":\"Apex 34\'s, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"598\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/TA3fo7fPrl4\"}}}}}','2018-08-17 20:09:09','2018-08-17 20:09:09','5c118195-fda3-475c-9613-3eafe1c97155'),
	(404,427,12,1,'en',13,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex Standard Humbucker\",\"slug\":\"standard\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Here at Apex pickups the Apex isn\'t only the top, it\'s the standard. <\\/p>\\r\\n<p>Our Standard humbucker is our bread and butter for your rock to blues to metal tones. The Standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound. <\\/p>\\r\\n<p>When clean, the standard shows off its balanced well rounded sound by delivering a solid and full tone. <\\/p>\",\"80\":[\"356\"],\"15\":[\"448\"],\"121\":\"165\",\"117\":{\"457\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 2<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance <\\/h3>\\r\\n<h3>\\r\\n<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li><strong>18K<\\/strong><\\/li><\\/ul>\"}}},\"122\":{\"576\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"434\"],\"soundFileTitle\":\"Apex Standard - Clean\"}},\"577\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"436\"],\"soundFileTitle\":\"Apex Standard - Overdrive\"}},\"578\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"435\"],\"soundFileTitle\":\"Apex Standard - Distortion\"}}},\"112\":{\"596\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/l4oMVSZT3UY\"}}}}}','2018-08-17 20:09:43','2018-08-17 20:09:43','93a4872b-b841-4c71-8ffa-175de696695a'),
	(405,599,13,1,'en',1,NULL,'{\"typeId\":\"15\",\"authorId\":null,\"title\":\"Privacy Policy\",\"slug\":\"privacy-policy\",\"postDate\":1534600792,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-08-18 13:59:52','2018-08-18 13:59:52','064ad0d7-96cb-4554-b421-4e4917eaa005'),
	(406,599,13,1,'en',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Privacy Policy\",\"slug\":\"privacy-policy\",\"postDate\":1534600792,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":{\"600\":{\"type\":\"text\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h1>Privacy Policy<\\/h1>\\r\\n\\r\\n\\r\\n<p>Effective date: August 18, 2018<\\/p>\\r\\n\\r\\n\\r\\n<p>Apex Music (\\\"us\\\", \\\"we\\\", or \\\"our\\\") operates the http:\\/\\/apexmusic.co\\/ website (the \\\"Service\\\").<\\/p>\\r\\n\\r\\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. This Privacy Policy  for Apex Music is powered by <a href=\\\"https:\\/\\/www.freeprivacypolicy.com\\/free-privacy-policy-generator.php\\\">FreePrivacyPolicy.com<\\/a>.<\\/p>\\r\\n\\r\\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from http:\\/\\/apexmusic.co\\/<\\/p>\\r\\n\\r\\n\\r\\n<h2>Information Collection And Use<\\/h2>\\r\\n\\r\\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.<\\/p>\\r\\n\\r\\n<h3>Types of Data Collected<\\/h3>\\r\\n\\r\\n<h4>Personal Data<\\/h4>\\r\\n\\r\\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\\\"Personal Data\\\"). Personally identifiable information may include, but is not limited to:<\\/p>\\r\\n\\r\\n<ul>\\r\\n<li>Email address<\\/li><li>First name and last name<\\/li><li>Cookies and Usage Data<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h4>Usage Data<\\/h4>\\r\\n\\r\\n<p>We may also collect information how the Service is accessed and used (\\\"Usage Data\\\"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.<\\/p>\\r\\n\\r\\n<h4>Tracking & Cookies Data<\\/h4>\\r\\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.<\\/p>\\r\\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.<\\/p>\\r\\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.<\\/p>\\r\\n<p>Examples of Cookies we use:<\\/p>\\r\\n<ul>\\r\\n    <li><strong>Session Cookies.<\\/strong> We use Session Cookies to operate our Service.<\\/li>\\r\\n    <li><strong>Preference Cookies.<\\/strong> We use Preference Cookies to remember your preferences and various settings.<\\/li>\\r\\n    <li><strong>Security Cookies.<\\/strong> We use Security Cookies for security purposes.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>Use of Data<\\/h2>\\r\\n    \\r\\n<p>Apex Music uses the collected data for various purposes:<\\/p>    \\r\\n<ul>\\r\\n    <li>To provide and maintain the Service<\\/li>\\r\\n    <li>To notify you about changes to our Service<\\/li>\\r\\n    <li>To allow you to participate in interactive features of our Service when you choose to do so<\\/li>\\r\\n    <li>To provide customer care and support<\\/li>\\r\\n    <li>To provide analysis or valuable information so that we can improve the Service<\\/li>\\r\\n    <li>To monitor the usage of the Service<\\/li>\\r\\n    <li>To detect, prevent and address technical issues<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>Transfer Of Data<\\/h2>\\r\\n<p>Your information, including Personal Data, may be transferred to \\u2014 and maintained on \\u2014 computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.<\\/p>\\r\\n<p>If you are located outside United Kingdom and choose to provide information to us, please note that we transfer the data, including Personal Data, to United Kingdom and process it there.<\\/p>\\r\\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.<\\/p>\\r\\n<p>Apex Music will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.<\\/p>\\r\\n\\r\\n<h2>Disclosure Of Data<\\/h2>\\r\\n\\r\\n<h3>Legal Requirements<\\/h3>\\r\\n<p>Apex Music may disclose your Personal Data in the good faith belief that such action is necessary to:<\\/p>\\r\\n<ul>\\r\\n    <li>To comply with a legal obligation<\\/li>\\r\\n    <li>To protect and defend the rights or property of Apex Music<\\/li>\\r\\n    <li>To prevent or investigate possible wrongdoing in connection with the Service<\\/li>\\r\\n    <li>To protect the personal safety of users of the Service or the public<\\/li>\\r\\n    <li>To protect against legal liability<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2>Security Of Data<\\/h2>\\r\\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.<\\/p>\\r\\n\\r\\n<h2>Service Providers<\\/h2>\\r\\n<p>We may employ third party companies and individuals to facilitate our Service (\\\"Service Providers\\\"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.<\\/p>\\r\\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.<\\/p>\\r\\n\\r\\n<h3>Analytics<\\/h3>\\r\\n<p>We may use third-party Service Providers to monitor and analyze the use of our Service.<\\/p>    \\r\\n<ul>\\r\\n        <li>\\r\\n        <p><strong>Google Analytics<\\/strong><\\/p>\\r\\n        <p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.<\\/p>\\r\\n        <p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.<\\/p>                <p>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en\\\">https:\\/\\/policies.google.com\\/privacy?hl=en<\\/a><\\/p>\\r\\n    <\\/li>\\r\\n                            <\\/ul>\\r\\n\\r\\n\\r\\n<h2>Links To Other Sites<\\/h2>\\r\\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.<\\/p>\\r\\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.<\\/p>\\r\\n\\r\\n\\r\\n<h2>Children\'s Privacy<\\/h2>\\r\\n<p>Our Service does not address anyone under the age of 18 (\\\"Children\\\").<\\/p>\\r\\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.<\\/p>\\r\\n\\r\\n\\r\\n<h2>Changes To This Privacy Policy<\\/h2>\\r\\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.<\\/p>\\r\\n<p>We will let you know via email and\\/or a prominent notice on our Service, prior to the change becoming effective and update the \\\"effective date\\\" at the top of this Privacy Policy.<\\/p>\\r\\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.<\\/p>\\r\\n\\r\\n\\r\\n<h2>Contact Us<\\/h2>\\r\\n<p>If you have any questions about this Privacy Policy, please contact us:<\\/p>\\r\\n<ul>\\r\\n        <li>By email: oranmcguckin@apexmusic.co<\\/li>\\r\\n          \\r\\n        <\\/ul>                                \"}}}}}','2018-08-18 14:09:53','2018-08-18 14:09:53','49a62371-244e-4e49-8f18-70043e608374'),
	(407,599,13,1,'en',3,'','{\"typeId\":\"15\",\"authorId\":null,\"title\":\"Privacy Policy\",\"slug\":\"privacy-policy\",\"postDate\":1534603450,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"4\":[],\"2\":\"<h1>Privacy Policy<\\/h1>\\r\\n<p>Effective date: August 18, 2018\\r\\n<\\/p>\\r\\n<p>Apex Music (\\\"us\\\", \\\"we\\\", or \\\"our\\\") operates the&nbsp;<a href=\\\"http:\\/\\/apexmusic.co\\/\\\">http:\\/\\/apexmusic.co\\/<\\/a>&nbsp;website (the \\\"Service\\\").\\r\\n<\\/p>\\r\\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. This Privacy Policy for Apex Music is powered by&nbsp;<a href=\\\"https:\\/\\/www.freeprivacypolicy.com\\/free-privacy-policy-generator.php\\\">FreePrivacyPolicy.com<\\/a>.\\r\\n<\\/p>\\r\\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from&nbsp;<a href=\\\"http:\\/\\/apexmusic.co\\/\\\">http:\\/\\/apexmusic.co\\/<\\/a>\\r\\n<\\/p>\\r\\n<h2>Information Collection And Use<\\/h2>\\r\\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.\\r\\n<\\/p>\\r\\n<h3>Types of Data Collected<\\/h3>\\r\\n<h4>Personal Data<\\/h4>\\r\\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\\\"Personal Data\\\"). Personally identifiable information may include, but is not limited to:\\r\\n<\\/p>\\r\\n<ul><li>Email address\\r\\n<\\/li><li>First name and last name\\r\\n<\\/li><li>Cookies and Usage Data\\r\\n<\\/li><\\/ul>\\r\\n<h4>Usage Data<\\/h4>\\r\\n<p>We may also collect information how the Service is accessed and used (\\\"Usage Data\\\"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\\r\\n<\\/p>\\r\\n<h4>Tracking & Cookies Data<\\/h4>\\r\\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.\\r\\n<\\/p>\\r\\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.\\r\\n<\\/p>\\r\\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.\\r\\n<\\/p>\\r\\n<p>Examples of Cookies we use:\\r\\n<\\/p>\\r\\n<ul><li><b>Session Cookies.<\\/b>&nbsp;We use Session Cookies to operate our Service.\\r\\n<\\/li><li><b>Preference Cookies.<\\/b>&nbsp;We use Preference Cookies to remember your preferences and various settings.\\r\\n<\\/li><li><b>Security Cookies.<\\/b>&nbsp;We use Security Cookies for security purposes.\\r\\n<\\/li><\\/ul>\\r\\n<h2>Use of Data<\\/h2>\\r\\n<p>Apex Music uses the collected data for various purposes:\\r\\n<\\/p>\\r\\n<ul><li>To provide and maintain the Service\\r\\n<\\/li><li>To notify you about changes to our Service\\r\\n<\\/li><li>To allow you to participate in interactive features of our Service when you choose to do so\\r\\n<\\/li><li>To provide customer care and support\\r\\n<\\/li><li>To provide analysis or valuable information so that we can improve the Service\\r\\n<\\/li><li>To monitor the usage of the Service\\r\\n<\\/li><li>To detect, prevent and address technical issues\\r\\n<\\/li><\\/ul>\\r\\n<h2>Transfer Of Data<\\/h2>\\r\\n<p>Your information, including Personal Data, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.\\r\\n<\\/p>\\r\\n<p>If you are located outside United Kingdom and choose to provide information to us, please note that we transfer the data, including Personal Data, to United Kingdom and process it there.\\r\\n<\\/p>\\r\\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.\\r\\n<\\/p>\\r\\n<p>Apex Music will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.\\r\\n<\\/p>\\r\\n<h2>Disclosure Of Data<\\/h2>\\r\\n<h3>Legal Requirements<\\/h3>\\r\\n<p>Apex Music may disclose your Personal Data in the good faith belief that such action is necessary to:\\r\\n<\\/p>\\r\\n<ul><li>To comply with a legal obligation\\r\\n<\\/li><li>To protect and defend the rights or property of Apex Music\\r\\n<\\/li><li>To prevent or investigate possible wrongdoing in connection with the Service\\r\\n<\\/li><li>To protect the personal safety of users of the Service or the public\\r\\n<\\/li><li>To protect against legal liability\\r\\n<\\/li><\\/ul>\\r\\n<h2>Security Of Data<\\/h2>\\r\\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.\\r\\n<\\/p>\\r\\n<h2>Service Providers<\\/h2>\\r\\n<p>We may employ third party companies and individuals to facilitate our Service (\\\"Service Providers\\\"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.\\r\\n<\\/p>\\r\\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\\r\\n<\\/p>\\r\\n<h3>Analytics<\\/h3>\\r\\n<p>We may use third-party Service Providers to monitor and analyze the use of our Service.\\r\\n<\\/p>\\r\\n<ul><li><b>Google Analytics<\\/b>\\r\\n<p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.\\r\\n<\\/p><p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.\\r\\n<\\/p><p>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page:&nbsp;<a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en\\\">https:\\/\\/policies.google.com\\/privacy?hl=en<\\/a>\\r\\n<\\/p><\\/li><\\/ul>\\r\\n<h2>Links To Other Sites<\\/h2>\\r\\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.\\r\\n<\\/p>\\r\\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.\\r\\n<\\/p>\\r\\n<h2>Children\'s Privacy<\\/h2>\\r\\n<p>Our Service does not address anyone under the age of 18 (\\\"Children\\\").\\r\\n<\\/p>\\r\\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.\\r\\n<\\/p>\\r\\n<h2>Changes To This Privacy Policy<\\/h2>\\r\\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.\\r\\n<\\/p>\\r\\n<p>We will let you know via email and\\/or a prominent notice on our Service, prior to the change becoming effective and update the \\\"effective date\\\" at the top of this Privacy Policy.\\r\\n<\\/p>\\r\\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\\r\\n<\\/p>\\r\\n<h2>Contact Us<\\/h2>\\r\\n<p>If you have any questions about this Privacy Policy, please contact us:\\r\\n<\\/p>\\r\\n<ul><li>By email: oranmcguckin@apexmusic.co\\r\\n<\\/li><\\/ul><p><\\/p>\"}}','2018-08-18 14:50:09','2018-08-18 14:50:09','5fa06553-a64c-4ba7-b004-35b31d0e4546'),
	(408,599,13,1,'en',4,'','{\"typeId\":\"15\",\"authorId\":null,\"title\":\"Privacy Policy\",\"slug\":\"privacy-policy\",\"postDate\":1534603450,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"Effective date: August 18, 2018\\r\\n<p>Apex Music (\\\"us\\\", \\\"we\\\", or \\\"our\\\") operates the <a href=\\\"http:\\/\\/apexmusic.co\\/\\\">http:\\/\\/apexmusic.co\\/<\\/a> website (the \\\"Service\\\").\\r\\n<\\/p>\\r\\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data. This Privacy Policy for Apex Music is powered by <a href=\\\"https:\\/\\/www.freeprivacypolicy.com\\/free-privacy-policy-generator.php\\\">FreePrivacyPolicy.com<\\/a>.\\r\\n<\\/p>\\r\\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from <a href=\\\"http:\\/\\/apexmusic.co\\/\\\">http:\\/\\/apexmusic.co\\/<\\/a>\\r\\n<\\/p>\\r\\n<h2>Information Collection And Use<\\/h2>\\r\\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.\\r\\n<\\/p>\\r\\n<h3>Types of Data Collected<\\/h3>\\r\\n<h4>Personal Data<\\/h4>\\r\\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\\\"Personal Data\\\"). Personally identifiable information may include, but is not limited to:\\r\\n<\\/p>\\r\\n<ul><li>Email address\\r\\n<\\/li><li>First name and last name\\r\\n<\\/li><li>Cookies and Usage Data\\r\\n<\\/li><\\/ul>\\r\\n<h4>Usage Data<\\/h4>\\r\\n<p>We may also collect information how the Service is accessed and used (\\\"Usage Data\\\"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\\r\\n<\\/p>\\r\\n<h4>Tracking & Cookies Data<\\/h4>\\r\\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.\\r\\n<\\/p>\\r\\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.\\r\\n<\\/p>\\r\\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.\\r\\n<\\/p>\\r\\n<p>Examples of Cookies we use:\\r\\n<\\/p>\\r\\n<ul><li><strong>Session Cookies.<\\/strong> We use Session Cookies to operate our Service.\\r\\n<\\/li><li><strong>Preference Cookies.<\\/strong> We use Preference Cookies to remember your preferences and various settings.\\r\\n<\\/li><li><strong>Security Cookies.<\\/strong> We use Security Cookies for security purposes.\\r\\n<\\/li><\\/ul>\\r\\n<h2>Use of Data<\\/h2>\\r\\n<p>Apex Music uses the collected data for various purposes:\\r\\n<\\/p>\\r\\n<ul><li>To provide and maintain the Service\\r\\n<\\/li><li>To notify you about changes to our Service\\r\\n<\\/li><li>To allow you to participate in interactive features of our Service when you choose to do so\\r\\n<\\/li><li>To provide customer care and support\\r\\n<\\/li><li>To provide analysis or valuable information so that we can improve the Service\\r\\n<\\/li><li>To monitor the usage of the Service\\r\\n<\\/li><li>To detect, prevent and address technical issues\\r\\n<\\/li><\\/ul>\\r\\n<h2>Transfer Of Data<\\/h2>\\r\\n<p>Your information, including Personal Data, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.\\r\\n<\\/p>\\r\\n<p>If you are located outside United Kingdom and choose to provide information to us, please note that we transfer the data, including Personal Data, to United Kingdom and process it there.\\r\\n<\\/p>\\r\\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.\\r\\n<\\/p>\\r\\n<p>Apex Music will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.\\r\\n<\\/p>\\r\\n<h2>Disclosure Of Data<\\/h2>\\r\\n<h3>Legal Requirements<\\/h3>\\r\\n<p>Apex Music may disclose your Personal Data in the good faith belief that such action is necessary to:\\r\\n<\\/p>\\r\\n<ul><li>To comply with a legal obligation\\r\\n<\\/li><li>To protect and defend the rights or property of Apex Music\\r\\n<\\/li><li>To prevent or investigate possible wrongdoing in connection with the Service\\r\\n<\\/li><li>To protect the personal safety of users of the Service or the public\\r\\n<\\/li><li>To protect against legal liability\\r\\n<\\/li><\\/ul>\\r\\n<h2>Security Of Data<\\/h2>\\r\\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.\\r\\n<\\/p>\\r\\n<h2>Service Providers<\\/h2>\\r\\n<p>We may employ third party companies and individuals to facilitate our Service (\\\"Service Providers\\\"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.\\r\\n<\\/p>\\r\\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\\r\\n<\\/p>\\r\\n<h3>Analytics<\\/h3>\\r\\n<p>We may use third-party Service Providers to monitor and analyze the use of our Service.\\r\\n<\\/p>\\r\\n<ul><li><strong>Google Analytics<\\/strong>\\r\\n<p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.\\r\\n<\\/p><p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.\\r\\n<\\/p><p>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en\\\">https:\\/\\/policies.google.com\\/privacy?hl=en<\\/a>\\r\\n<\\/p><\\/li><\\/ul>\\r\\n<h2>Links To Other Sites<\\/h2>\\r\\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.\\r\\n<\\/p>\\r\\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.\\r\\n<\\/p>\\r\\n<h2>Children\'s Privacy<\\/h2>\\r\\n<p>Our Service does not address anyone under the age of 18 (\\\"Children\\\").\\r\\n<\\/p>\\r\\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.\\r\\n<\\/p>\\r\\n<h2>Changes To This Privacy Policy<\\/h2>\\r\\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.\\r\\n<\\/p>\\r\\n<p>We will let you know via email and\\/or a prominent notice on our Service, prior to the change becoming effective and update the \\\"effective date\\\" at the top of this Privacy Policy.\\r\\n<\\/p>\\r\\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\\r\\n<\\/p>\\r\\n<h2>Contact Us<\\/h2>\\r\\n<p>If you have any questions about this Privacy Policy, please contact us:\\r\\n<\\/p>\\r\\n<ul><li>By email: oranmcguckin@apexmusic.co\\r\\n<\\/li><\\/ul>\"}}','2018-08-18 14:51:28','2018-08-18 14:51:28','f602bcf2-0968-4b0a-875f-6bed0ab018d3'),
	(409,599,13,1,'en',5,'','{\"typeId\":\"15\",\"authorId\":null,\"title\":\"Privacy Policy\",\"slug\":\"privacy-policy\",\"postDate\":1534603450,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Effective date: August 18, 2018<\\/p>\\r\\n<p>Apex Music (\\\"us\\\", \\\"we\\\", or \\\"our\\\") operates the <a href=\\\"http:\\/\\/apexmusic.co\\/\\\">http:\\/\\/apexmusic.co\\/<\\/a> website (the \\\"Service\\\").\\r\\n<\\/p>\\r\\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.<\\/p>\\r\\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from <a href=\\\"http:\\/\\/apexmusic.co\\/\\\">http:\\/\\/apexmusic.co\\/<\\/a>\\r\\n<\\/p>\\r\\n<h2>Information Collection And Use<\\/h2>\\r\\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.\\r\\n<\\/p>\\r\\n<h3>Types of Data Collected<\\/h3>\\r\\n<h4>Personal Data<\\/h4>\\r\\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\\\"Personal Data\\\"). Personally identifiable information may include, but is not limited to:\\r\\n<\\/p>\\r\\n<ul><li>Email address\\r\\n<\\/li><li>First name and last name\\r\\n<\\/li><li>Cookies and Usage Data\\r\\n<\\/li><\\/ul>\\r\\n<h4>Usage Data<\\/h4>\\r\\n<p>We may also collect information how the Service is accessed and used (\\\"Usage Data\\\"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.\\r\\n<\\/p>\\r\\n<h4>Tracking & Cookies Data<\\/h4>\\r\\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.\\r\\n<\\/p>\\r\\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.\\r\\n<\\/p>\\r\\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.\\r\\n<\\/p>\\r\\n<p>Examples of Cookies we use:\\r\\n<\\/p>\\r\\n<ul><li><strong>Session Cookies.<\\/strong> We use Session Cookies to operate our Service.\\r\\n<\\/li><li><strong>Preference Cookies.<\\/strong> We use Preference Cookies to remember your preferences and various settings.\\r\\n<\\/li><li><strong>Security Cookies.<\\/strong> We use Security Cookies for security purposes.\\r\\n<\\/li><\\/ul>\\r\\n<h2>Use of Data<\\/h2>\\r\\n<p>Apex Music uses the collected data for various purposes:\\r\\n<\\/p>\\r\\n<ul><li>To provide and maintain the Service\\r\\n<\\/li><li>To notify you about changes to our Service\\r\\n<\\/li><li>To allow you to participate in interactive features of our Service when you choose to do so\\r\\n<\\/li><li>To provide customer care and support\\r\\n<\\/li><li>To provide analysis or valuable information so that we can improve the Service\\r\\n<\\/li><li>To monitor the usage of the Service\\r\\n<\\/li><li>To detect, prevent and address technical issues\\r\\n<\\/li><\\/ul>\\r\\n<h2>Transfer Of Data<\\/h2>\\r\\n<p>Your information, including Personal Data, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.\\r\\n<\\/p>\\r\\n<p>If you are located outside United Kingdom and choose to provide information to us, please note that we transfer the data, including Personal Data, to United Kingdom and process it there.\\r\\n<\\/p>\\r\\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.\\r\\n<\\/p>\\r\\n<p>Apex Music will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.\\r\\n<\\/p>\\r\\n<h2>Disclosure Of Data<\\/h2>\\r\\n<h3>Legal Requirements<\\/h3>\\r\\n<p>Apex Music may disclose your Personal Data in the good faith belief that such action is necessary to:\\r\\n<\\/p>\\r\\n<ul><li>To comply with a legal obligation\\r\\n<\\/li><li>To protect and defend the rights or property of Apex Music\\r\\n<\\/li><li>To prevent or investigate possible wrongdoing in connection with the Service\\r\\n<\\/li><li>To protect the personal safety of users of the Service or the public\\r\\n<\\/li><li>To protect against legal liability\\r\\n<\\/li><\\/ul>\\r\\n<h2>Security Of Data<\\/h2>\\r\\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.\\r\\n<\\/p>\\r\\n<h2>Service Providers<\\/h2>\\r\\n<p>We may employ third party companies and individuals to facilitate our Service (\\\"Service Providers\\\"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.\\r\\n<\\/p>\\r\\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\\r\\n<\\/p>\\r\\n<h3>Analytics<\\/h3>\\r\\n<p>We may use third-party Service Providers to monitor and analyze the use of our Service.\\r\\n<\\/p>\\r\\n<ul><li><strong>Google Analytics<\\/strong>\\r\\n<p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.\\r\\n<\\/p><p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.\\r\\n<\\/p><p>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en\\\">https:\\/\\/policies.google.com\\/privacy?hl=en<\\/a>\\r\\n<\\/p><\\/li><\\/ul>\\r\\n<h2>Links To Other Sites<\\/h2>\\r\\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.\\r\\n<\\/p>\\r\\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.\\r\\n<\\/p>\\r\\n<h2>Children\'s Privacy<\\/h2>\\r\\n<p>Our Service does not address anyone under the age of 18 (\\\"Children\\\").\\r\\n<\\/p>\\r\\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.\\r\\n<\\/p>\\r\\n<h2>Changes To This Privacy Policy<\\/h2>\\r\\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.\\r\\n<\\/p>\\r\\n<p>We will let you know via email and\\/or a prominent notice on our Service, prior to the change becoming effective and update the \\\"effective date\\\" at the top of this Privacy Policy.\\r\\n<\\/p>\\r\\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\\r\\n<\\/p>\\r\\n<h2>Contact Us<\\/h2>\\r\\n<p>If you have any questions about this Privacy Policy, please contact us:\\r\\n<\\/p>\\r\\n<ul><li>By email: oranmcguckin@apexmusic.co\\r\\n<\\/li><\\/ul>\"}}','2018-08-18 14:52:30','2018-08-18 14:52:30','49094782-5594-44ce-9748-6a468a3b0733'),
	(410,426,12,1,'en',18,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Apex 60\'s\",\"slug\":\"apex-60s\",\"postDate\":1533132120,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>The Apex 60\'s S Type pickups offer a range of classic styled tones, ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between. <\\/p>\\r\\n<p>These pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically. <\\/p>\\r\\n<p>The pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy, they have optimum clarity for that original classic tone.<\\/p>\",\"80\":[\"261\"],\"15\":[\"450\"],\"121\":\"139\",\"117\":{\"455\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magent Type<\\/h3>\\r\\n<p>\\r\\n<strong>Alnico 5<\\/strong>\\r\\n<\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>6K<\\/strong><\\/li>\\r\\n<li>Middle <strong>5.7K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.7K<\\/strong> \\r\\n<\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"531\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"561\"],\"soundFileTitle\":\"Apex 60\'s Bridge - Clean \\/ Overdriven \\/ Distortion\"}},\"569\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"560\"],\"soundFileTitle\":\"Apex 60\'s Bridge & Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"570\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"559\"],\"soundFileTitle\":\"Apex 60\'s Middle - Clean \\/ Overdriven \\/ Distortion\"}},\"571\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"558\"],\"soundFileTitle\":\"Apex 60\'s Middle & Neck - Clean \\/ Overdriven \\/ Distortion\"}},\"572\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"557\"],\"soundFileTitle\":\"Apex 60\'s Neck - Clean \\/ Overdriven \\/ Distortion\"}}},\"112\":{\"595\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<h5>Apex 60\'s Video Demo<\\/h5>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/-W1oJppWt2c\"}}}}}','2018-08-18 15:40:13','2018-08-18 15:40:13','af37e50d-5805-4e4f-a174-1d4e7cf0cef2'),
	(411,423,12,1,'en',15,'','{\"typeId\":\"14\",\"authorId\":\"1\",\"title\":\"Twang City\",\"slug\":\"twang-cities\",\"postDate\":1533118860,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"2\":\"<p>Our Twang Cities take on the form of the Tele pickups that broke the scene in 1952. <\\/p>\\r\\n<p>By changing the wire from 43AWG to 42AWG in \\u201952 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone. <\\/p>\\r\\n<p>As our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock.<\\/p>\",\"80\":[\"355\"],\"15\":[\"447\"],\"121\":\"129\",\"117\":{\"520\":{\"type\":\"feature\",\"enabled\":\"1\",\"fields\":{\"featureOne\":\"<h3>Magnet Type<\\/h3>\\r\\n<p><strong>Alnico 5<\\/strong><\\/p>\",\"featureTwo\":\"<h3>Approximate Resistance<\\/h3>\\r\\n<ul class=\\\"resistance\\\"><li>Bridge <strong>7.5K<\\/strong><\\/li>\\r\\n<li>Neck <strong>5.5K<\\/strong><\\/li>\\r\\n<\\/ul>\"}}},\"122\":{\"586\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"551\"],\"soundFileTitle\":\"Twang Cities, Bridge - Clean \\/ Overdrive \\/ Distortion\"}},\"587\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"550\"],\"soundFileTitle\":\"Twang Cities, Bridge & Neck - Clean \\/ Overdrive \\/ Distortion\"}},\"588\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"soundFile\":[\"549\"],\"soundFileTitle\":\"Twang Cities, Neck - Clean \\/ Overdrive \\/ Distortion\"}}},\"112\":{\"594\":{\"type\":\"block\",\"enabled\":\"1\",\"fields\":{\"textBlock\":\"<h5>Video demo<\\/h5>\",\"iframeLink\":\"https:\\/\\/www.youtube.com\\/embed\\/xGtTwBTtF5g\"}}}}}','2018-08-18 15:41:29','2018-08-18 15:41:29','be06dcec-185c-463a-afa3-7001d99f9e88');

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
	(8,'About','2018-07-10 20:20:27','2018-07-10 20:20:27','3443253a-9f10-4418-9665-9c578ee80772'),
	(9,'Products','2018-07-17 20:01:01','2018-07-17 20:01:01','198b3bff-695a-46ce-84c1-f7f202a969c4'),
	(10,'Globals','2018-07-17 20:07:48','2018-07-17 20:07:48','38250327-1dd9-4a96-9e86-0628130d2f79');

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
	(586,216,137,93,0,1,'2018-07-07 16:01:07','2018-07-07 16:01:07','1e9934d3-ddfc-4a31-8f36-5a324b4be752'),
	(587,216,137,94,0,2,'2018-07-07 16:01:07','2018-07-07 16:01:07','d817d65b-25cd-40c8-aa4e-a265380ff9f5'),
	(588,216,137,95,0,3,'2018-07-07 16:01:07','2018-07-07 16:01:07','5e15a75a-814c-4c8f-a96f-8d865c2d05d4'),
	(597,223,144,100,0,1,'2018-07-08 13:56:10','2018-07-08 13:56:10','52d3604e-6a78-4efa-8eac-db5b5cdff258'),
	(620,235,156,102,0,1,'2018-07-08 16:42:37','2018-07-08 16:42:37','cd4c5b02-bc5c-4084-9390-bae24790d6ff'),
	(621,235,156,103,0,2,'2018-07-08 16:42:37','2018-07-08 16:42:37','60dc27eb-63e9-4279-902c-58fdb85c63dd'),
	(622,235,156,104,0,3,'2018-07-08 16:42:37','2018-07-08 16:42:37','9431cdb9-1bd0-4765-a682-b423812f3064'),
	(623,235,156,105,0,4,'2018-07-08 16:42:37','2018-07-08 16:42:37','d6ec70bd-12f6-415a-af38-8366c6e6d71a'),
	(638,239,160,83,0,1,'2018-07-09 20:33:50','2018-07-09 20:33:50','21864c98-da8d-47db-b403-d2dda8c4af57'),
	(639,239,160,84,0,2,'2018-07-09 20:33:50','2018-07-09 20:33:50','92d24bd6-1bbd-4007-a7bb-14d7c6c3a230'),
	(640,239,160,85,0,3,'2018-07-09 20:33:50','2018-07-09 20:33:50','45e9d41f-4119-45ef-a40d-9dd62331c3b8'),
	(641,239,160,86,0,4,'2018-07-09 20:33:50','2018-07-09 20:33:50','b0c0b7eb-2bda-48a8-a68d-a3a8c0c0e66a'),
	(642,239,160,87,0,5,'2018-07-09 20:33:50','2018-07-09 20:33:50','669f0e78-1c58-4b3f-b4de-75058745dbca'),
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
	(712,265,187,91,0,1,'2018-07-14 14:32:07','2018-07-14 14:32:07','3452e71e-cf6b-4a65-bc8d-251733bfa99f'),
	(713,265,187,2,0,2,'2018-07-14 14:32:07','2018-07-14 14:32:07','a7c15c4b-7840-40d7-9e2b-785263a7467f'),
	(714,265,187,96,0,3,'2018-07-14 14:32:07','2018-07-14 14:32:07','49676a8e-9aad-4353-be18-0d3934ea0c02'),
	(715,265,188,92,0,1,'2018-07-14 14:32:07','2018-07-14 14:32:07','cf754ad5-579f-4688-868d-4301ff31fb27'),
	(717,268,190,5,0,1,'2018-07-15 11:53:54','2018-07-15 11:53:54','9cf0459d-9132-4c26-937f-dad49dd2893b'),
	(718,269,191,15,0,1,'2018-07-15 12:40:47','2018-07-15 12:40:47','ea036fbd-3ef3-4a72-a63c-161f607abc22'),
	(719,269,191,47,0,2,'2018-07-15 12:40:47','2018-07-15 12:40:47','c5eea362-13c1-4a48-8046-987d76b2a8ca'),
	(720,269,191,4,0,3,'2018-07-15 12:40:47','2018-07-15 12:40:47','d8eea8c7-8563-43bb-8382-262841c90844'),
	(722,271,193,1,0,1,'2018-07-15 13:16:16','2018-07-15 13:16:16','43e411b5-3766-4b76-be43-cc3da5bc2479'),
	(727,273,195,91,0,1,'2018-07-16 22:04:45','2018-07-16 22:04:45','24efc327-73a2-4d69-895f-7e63e0146814'),
	(728,273,195,90,0,2,'2018-07-16 22:04:45','2018-07-16 22:04:45','046a2f75-25ed-4701-9c76-f2df054e1cf5'),
	(729,273,195,82,0,3,'2018-07-16 22:04:45','2018-07-16 22:04:45','32677bed-a407-4eb4-9ad9-0330d1ad9e0c'),
	(730,273,195,2,0,4,'2018-07-16 22:04:45','2018-07-16 22:04:45','74d83bbb-4397-49d6-9a66-3c412cb3f586'),
	(735,275,197,1,0,1,'2018-07-16 22:30:07','2018-07-16 22:30:07','af1e7173-1545-4877-a48a-759793fd026f'),
	(736,275,197,47,0,2,'2018-07-16 22:30:07','2018-07-16 22:30:07','e18266c4-4c24-4b29-96dd-03d34e59cd92'),
	(737,275,197,15,0,3,'2018-07-16 22:30:07','2018-07-16 22:30:07','739c7b62-7020-4584-b4be-10aac5438ae2'),
	(738,275,197,2,0,4,'2018-07-16 22:30:07','2018-07-16 22:30:07','78f0c718-db6d-4513-89da-01670fa30260'),
	(750,280,202,118,0,1,'2018-07-17 20:01:49','2018-07-17 20:01:49','edf1f9b3-0a79-4315-a80a-78f27afa6349'),
	(751,280,202,119,0,2,'2018-07-17 20:01:49','2018-07-17 20:01:49','bde6e43d-e359-4d04-a8b2-6d27f3823fdb'),
	(756,282,204,41,0,1,'2018-07-17 20:10:26','2018-07-17 20:10:26','954ad9a0-431b-4ee8-835d-ba8b9baab6b0'),
	(757,282,204,76,0,2,'2018-07-17 20:10:26','2018-07-17 20:10:26','f09e0c73-88ac-4e1e-8ba2-ec7fc4f872de'),
	(758,282,204,37,0,3,'2018-07-17 20:10:26','2018-07-17 20:10:26','d8b401fa-cff2-4b99-9e99-d1de16cc2c62'),
	(759,282,204,81,0,4,'2018-07-17 20:10:26','2018-07-17 20:10:26','3e7c6c8a-e748-44d6-96a5-9dff1e97ea14'),
	(760,282,204,77,0,5,'2018-07-17 20:10:26','2018-07-17 20:10:26','628ccece-599a-4682-be87-d9f25f476d64'),
	(761,282,204,78,0,6,'2018-07-17 20:10:26','2018-07-17 20:10:26','f7a0315d-2b13-4aa7-9441-106bd24ff843'),
	(762,282,204,79,0,7,'2018-07-17 20:10:26','2018-07-17 20:10:26','d9c4e675-0b6d-448d-9755-e23d7caed1e3'),
	(763,282,204,120,0,8,'2018-07-17 20:10:26','2018-07-17 20:10:26','271661ab-21b7-4a2e-b4e3-23821438367a'),
	(770,284,206,113,0,1,'2018-07-17 20:14:13','2018-07-17 20:14:13','f439b202-526f-426f-80d0-f6c60af7f08f'),
	(771,284,206,114,0,2,'2018-07-17 20:14:13','2018-07-17 20:14:13','740db015-277a-4a3c-b275-7e15e69e5911'),
	(795,299,221,107,0,1,'2018-07-27 08:25:18','2018-07-27 08:25:18','7b2a4801-ac0c-45b2-90b1-e44b9b16ea43'),
	(796,299,221,108,0,2,'2018-07-27 08:25:18','2018-07-27 08:25:18','784ebf4c-a011-483d-9616-d58db0efa86d'),
	(797,299,221,109,0,3,'2018-07-27 08:25:18','2018-07-27 08:25:18','45790764-d000-4d4c-a9d4-31be47a99157'),
	(803,303,225,124,0,1,'2018-08-12 16:10:04','2018-08-12 16:10:04','05817cc8-135b-4126-9d9e-5609e207795c'),
	(804,303,225,125,0,2,'2018-08-12 16:10:04','2018-08-12 16:10:04','8ff4ad34-ec7a-48a4-9c60-8f7bdc917343'),
	(805,304,226,80,0,1,'2018-08-12 18:15:39','2018-08-12 18:15:39','adb6ae95-f4e8-459c-872e-712d849b1c27'),
	(806,304,226,15,0,2,'2018-08-12 18:15:39','2018-08-12 18:15:39','9eb2c4d2-6f02-4467-bcdd-5d49c5aee403'),
	(807,304,226,2,0,3,'2018-08-12 18:15:39','2018-08-12 18:15:39','160f6b2c-0935-4d31-a5bc-40171b7cf55e'),
	(808,304,226,117,0,4,'2018-08-12 18:15:39','2018-08-12 18:15:39','0fd00c80-d212-43c6-a495-600a991643bf'),
	(809,304,226,121,0,5,'2018-08-12 18:15:39','2018-08-12 18:15:39','493d2da5-14b1-4d4d-a1c4-0d089e65b8f0'),
	(810,304,226,122,0,6,'2018-08-12 18:15:39','2018-08-12 18:15:39','91d165f2-47ef-40ca-afdb-df61cc1da9f2'),
	(811,304,226,112,0,7,'2018-08-12 18:15:39','2018-08-12 18:15:39','e2a385c2-6489-4f90-bb3d-ba46a66f01aa'),
	(816,309,231,47,0,1,'2018-08-16 21:39:20','2018-08-16 21:39:20','3c388e3a-8a23-43d4-87d5-f899ca9f0e23'),
	(820,313,234,2,0,1,'2018-08-18 14:50:33','2018-08-18 14:50:33','2d9f533c-46e6-430c-8fda-da6edf06d88e');

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
	(216,'MatrixBlock','2018-07-07 16:01:07','2018-07-07 16:01:07','9b778402-eb3a-4917-af62-bf4ae1b01546'),
	(223,'MatrixBlock','2018-07-08 13:56:10','2018-07-08 13:56:10','99ee404a-fc7e-4404-a7a4-ffe150df6de9'),
	(235,'MatrixBlock','2018-07-08 16:42:37','2018-07-08 16:42:37','c5dcea02-f71f-4776-9bd5-c830b339f456'),
	(239,'MatrixBlock','2018-07-09 20:33:50','2018-07-09 20:33:50','e720c10d-03c6-4e27-9bce-739a5f26d7ef'),
	(248,'Entry','2018-07-10 21:18:51','2018-07-10 21:18:51','f7699656-6b4f-4692-ae6f-5083f1e8e3b1'),
	(253,'Entry','2018-07-14 12:31:28','2018-07-14 12:31:28','c156acc0-b4d0-4718-b994-7e7d3b6755f1'),
	(259,'Entry','2018-07-14 13:51:06','2018-07-14 13:51:06','acef2203-1416-49be-b0a9-021db8c27d22'),
	(260,'MatrixBlock','2018-07-14 13:53:28','2018-07-14 13:53:28','d1dd43f5-a274-42d5-bdc3-afd509c99dd8'),
	(265,'Entry','2018-07-14 14:32:07','2018-07-14 14:32:07','ffdd9bf0-e32e-4308-9bbe-cff489cfa219'),
	(268,'MatrixBlock','2018-07-15 11:53:54','2018-07-15 11:53:54','9a35c4f4-4d32-434b-8430-22e917072f48'),
	(269,'Entry','2018-07-15 12:40:47','2018-07-15 12:40:47','88dfe254-3685-4019-8a0f-9f7a3664cc9c'),
	(271,'Entry','2018-07-15 13:16:16','2018-07-15 13:16:16','c2648aa6-b86d-453e-a652-2a5af4955819'),
	(273,'GlobalSet','2018-07-16 22:04:45','2018-07-16 22:04:45','dc6b4d1b-a682-4b2f-95ea-d9a774277d7d'),
	(275,'Category','2018-07-16 22:30:07','2018-07-16 22:30:07','67109432-f82a-4c32-8e7f-bb388dbf5feb'),
	(280,'MatrixBlock','2018-07-17 20:01:49','2018-07-17 20:01:49','449f2e89-68e3-4d21-9aff-ac3edc203c5e'),
	(282,'GlobalSet','2018-07-17 20:10:26','2018-07-17 20:10:26','68fefef6-3bc6-4a54-9d11-5aa7621c9d10'),
	(284,'MatrixBlock','2018-07-17 20:14:13','2018-07-17 20:14:13','be12a829-dcf0-41a1-a7c6-bc3856521eb8'),
	(299,'MatrixBlock','2018-07-27 08:25:18','2018-07-27 08:25:18','0ab82973-6e3c-42cb-bf3d-0101cd9b1d9f'),
	(303,'MatrixBlock','2018-08-12 16:10:04','2018-08-12 16:10:04','eb1ca8fb-1fba-4477-ab13-939a07d07c37'),
	(304,'Entry','2018-08-12 18:15:39','2018-08-12 18:15:39','2b2fec19-e78a-4e53-ac8c-f45a6d5b5e27'),
	(309,'Asset','2018-08-16 21:39:20','2018-08-16 21:39:20','2320971a-7c05-45ee-a792-e0c0bb828d72'),
	(313,'Entry','2018-08-18 14:50:33','2018-08-18 14:50:33','61be6625-1999-4a88-9ee7-b099d64692a4');

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
	(137,216,'Content',1,'2018-07-07 16:01:07','2018-07-07 16:01:07','9ba87024-743f-4e58-9f6b-3c6c748bdf3b'),
	(144,223,'Content',1,'2018-07-08 13:56:10','2018-07-08 13:56:10','b5d2ac64-df2a-4a1b-9e7b-d7f3b4818f54'),
	(156,235,'Content',1,'2018-07-08 16:42:37','2018-07-08 16:42:37','0f844ecf-d4b9-438b-b7b8-d25d0f1fa434'),
	(160,239,'Content',1,'2018-07-09 20:33:50','2018-07-09 20:33:50','2a73a7e0-864a-4175-b598-5b20a76b0ecf'),
	(169,248,'Content',1,'2018-07-10 21:18:51','2018-07-10 21:18:51','1a167acc-7aeb-4d77-98a5-40b9ee44d7fa'),
	(174,253,'Content',1,'2018-07-14 12:31:28','2018-07-14 12:31:28','bb26cf84-8bab-4f0f-9ed7-0d58d1997dde'),
	(181,259,'Tab 1',1,'2018-07-14 13:51:06','2018-07-14 13:51:06','3217c4c4-777b-46e1-b6df-f8a28cb56d67'),
	(182,259,'Price List',2,'2018-07-14 13:51:06','2018-07-14 13:51:06','11f1d2ed-7b9d-48f5-abf5-3aec2d5bc7c9'),
	(183,260,'Content',1,'2018-07-14 13:53:28','2018-07-14 13:53:28','b62d39be-c15b-4b96-bd33-dcec77f6eba5'),
	(187,265,'Tab 1',1,'2018-07-14 14:32:07','2018-07-14 14:32:07','95595141-7f9f-4e44-8f86-20ccc819eb20'),
	(188,265,'Price List',2,'2018-07-14 14:32:07','2018-07-14 14:32:07','bfeda562-1587-45cd-9971-13ae62d0b399'),
	(190,268,'Content',1,'2018-07-15 11:53:54','2018-07-15 11:53:54','671f142f-d677-4a0d-86f9-ddab7cfa48c1'),
	(191,269,'Content',1,'2018-07-15 12:40:47','2018-07-15 12:40:47','fdfdba9e-77f0-471d-8631-3445d36a053a'),
	(193,271,'Tab 1',1,'2018-07-15 13:16:16','2018-07-15 13:16:16','3efc2091-3b16-4c7f-bf75-a158c0c1964b'),
	(195,273,'Content',1,'2018-07-16 22:04:45','2018-07-16 22:04:45','2674fabc-f5a9-47cc-bad3-4f04134e7f91'),
	(197,275,'Tab 1',1,'2018-07-16 22:30:07','2018-07-16 22:30:07','c697b3dc-66dd-451c-90db-b7a5df8d0577'),
	(202,280,'Content',1,'2018-07-17 20:01:49','2018-07-17 20:01:49','086f9a52-f5d0-4882-94b3-99afb06130bb'),
	(204,282,'Content',1,'2018-07-17 20:10:26','2018-07-17 20:10:26','4276efb0-2533-40ae-a687-60fa3e3c7e94'),
	(206,284,'Content',1,'2018-07-17 20:14:13','2018-07-17 20:14:13','919758bc-a3e7-454b-8576-d02bcde147e4'),
	(221,299,'Content',1,'2018-07-27 08:25:18','2018-07-27 08:25:18','cc9b73c3-3e05-4f22-af72-4127ff7522fc'),
	(225,303,'Content',1,'2018-08-12 16:10:04','2018-08-12 16:10:04','33541cdd-f07a-4c16-9bbc-3c05240af8ab'),
	(226,304,'Tab 1',1,'2018-08-12 18:15:39','2018-08-12 18:15:39','47b26bdf-cae0-42f2-bb47-1bbd29f45234'),
	(231,309,'Content',1,'2018-08-16 21:39:20','2018-08-16 21:39:20','638d2d70-8307-42f7-a6eb-2375eb74cbb8'),
	(234,313,'Content',1,'2018-08-18 14:50:33','2018-08-18 14:50:33','b4d5f3ad-85da-4993-8222-5953cd8e3238');

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
	(15,1,'Featured Image','featuredImage','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":[\"folder:1\"],\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2014-07-30 22:47:26','2018-07-17 19:42:23','0cbb9736-a84b-4e83-803c-5077f56394a9'),
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
	(90,1,'Display Title ','displayTitle','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-07 15:57:14','2018-07-16 22:07:13','3eb35035-5091-4f2a-8348-28f9f99e585f'),
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
	(106,8,'Team Grid','teamGrid','global','',0,'Matrix','{\"maxBlocks\":null}','2018-07-10 20:23:16','2018-07-27 08:25:18','07e9cd56-d842-4923-899d-66146a98aa1a'),
	(107,NULL,'Team Member Photo','teamMemberPhoto','matrixBlockType:16','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-10 20:23:16','2018-07-27 08:25:18','a0106f00-0f8f-43b8-a039-9128b69b0877'),
	(108,NULL,'Team Member Name','teamMemberName','matrixBlockType:16','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-10 20:23:16','2018-07-27 08:25:18','44e1c234-08c0-4ff4-8c65-e8ed29134059'),
	(109,NULL,'Team Member Position ','teamMemberPosition','matrixBlockType:16','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-10 20:23:16','2018-07-27 08:25:18','6d800c7b-0357-4691-8efe-2a42b4036046'),
	(110,NULL,'Image Block Position','imageBlockPosition','matrixBlockType:13','Checking this option floats the image block to the left.',0,'Lightswitch','{\"default\":\"\"}','2018-07-10 22:42:01','2018-07-14 13:53:28','49dbbde2-dc73-438f-a4b3-543e795ea549'),
	(112,1,'Video Block','videoBlock','global','',0,'Matrix','{\"maxBlocks\":\"1\"}','2018-07-14 13:50:36','2018-07-17 20:14:13','e8f7abfb-c87f-4220-8af6-231ebd937f3b'),
	(113,NULL,'Text Block','textBlock','matrixBlockType:17','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-14 13:50:36','2018-07-17 20:14:13','890ef80e-bd33-4d16-a74a-aa933a7f01c1'),
	(114,NULL,'Iframe Link','iframeLink','matrixBlockType:17','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-14 13:50:36','2018-07-17 20:14:13','859d04d5-a0d9-4b7f-abd7-3e03b6b5bfb3'),
	(117,9,'Product Features','productFeatures','global','',0,'Matrix','{\"maxBlocks\":\"1\"}','2018-07-17 20:00:53','2018-07-17 20:01:49','82225d47-d2f8-4c76-a7c8-1cd0240c7fc6'),
	(118,NULL,'Feature One','featureOne','matrixBlockType:18','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-17 20:00:54','2018-07-17 20:01:49','39068273-c1ee-4686-b9f0-aa4c1cd41a85'),
	(119,NULL,'Feature Two','featureTwo','matrixBlockType:18','',0,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-07-17 20:00:54','2018-07-17 20:01:49','c776d4c0-ebce-472e-a438-d80a5fc7d564'),
	(120,7,'Paypal Email','paypalEmail','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-17 20:07:33','2018-07-17 20:09:12','58159583-20b2-4357-a082-f69337bb50a8'),
	(121,9,'Price','price','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-17 20:11:35','2018-07-17 20:11:35','bfe22d78-058a-4f88-b028-ea56a4dcc516'),
	(122,9,'Sound Block','soundBlock','global','',0,'Matrix','{\"maxBlocks\":null}','2018-07-17 20:15:52','2018-08-12 16:10:03','3ae16e43-ccb3-42d5-9633-768e50cafe9a'),
	(124,NULL,'Sound File','soundFile','matrixBlockType:19','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-07-17 20:15:52','2018-08-12 16:10:04','ddfecac0-1ba3-44dc-ad0a-0a2140afc534'),
	(125,NULL,'Sound File Title','soundFileTitle','matrixBlockType:19','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-07-17 20:15:52','2018-08-12 16:10:04','764f2dd5-cb9e-47d7-8910-e877038e1c86');

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
	(260,'Contact Meta','contactMeta',282,'2018-06-24 18:39:25','2018-07-17 20:10:26','8d5c9777-081a-4035-876d-57f11fee2ab3'),
	(352,'Pickups Home','pickupsHome',273,'2018-07-16 22:04:20','2018-07-16 22:04:45','9748edd1-4ac5-4b2a-b177-232dec81e5eb');

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
	(1,'2.6.3019','2.6.14',2,'Apex Music Co','http://apex.refresh-digital.com/','UTC',1,0,'2014-07-29 18:21:29','2018-07-21 20:32:02','3ebb42f0-5296-4d41-b31e-4dc4882dd453');

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
	(314,2,99,14,NULL,1,'2018-07-08 13:54:49','2018-08-16 20:45:38','45881e6d-7b96-4725-8300-130ddd53f163'),
	(319,2,101,15,NULL,1,'2018-07-08 16:28:44','2018-08-16 20:45:38','1eafdfc5-d2c4-433e-a815-d73b7e6409aa'),
	(320,2,101,15,NULL,2,'2018-07-08 16:31:00','2018-08-16 20:45:38','7aa1fd68-75f6-4487-8b29-22879cb3e8b3'),
	(321,2,101,15,NULL,3,'2018-07-08 16:43:10','2018-08-16 20:45:38','7f2973cf-13f8-4753-a7b6-9179cf3bed61'),
	(322,2,82,11,NULL,1,'2018-07-08 18:53:16','2018-08-16 20:45:38','917b0f14-b1ea-479f-b778-8a62f60a24a6'),
	(323,2,82,11,NULL,2,'2018-07-08 18:53:17','2018-08-16 20:45:38','6a5ba15b-a482-4a68-bc19-186fe3424bdd'),
	(324,74,96,13,NULL,1,'2018-07-09 22:29:55','2018-07-29 18:55:25','4cd74b32-bdb9-4785-b0c2-bb818a2e977a'),
	(325,74,106,16,NULL,1,'2018-07-10 20:35:03','2018-07-29 18:55:25','2185759b-6ba5-47ae-b2b0-3bc22ff92b5e'),
	(326,74,106,16,NULL,2,'2018-07-10 20:35:03','2018-07-29 18:55:25','f43fb6d3-414b-4d5d-83e6-4012ca4ac688'),
	(327,74,106,16,NULL,3,'2018-07-10 20:35:03','2018-07-29 18:55:25','ced95bc0-b351-4e57-9343-f95119a8b085'),
	(328,74,106,16,NULL,4,'2018-07-10 20:35:03','2018-07-29 18:55:25','01ff7f22-7f77-4634-8cc4-2142a9b59515'),
	(329,258,82,11,NULL,1,'2018-07-10 22:20:53','2018-08-17 17:40:34','6ed9bf6a-c1fa-4250-8519-7249b17dea62'),
	(330,258,82,11,NULL,2,'2018-07-10 22:20:53','2018-08-17 17:40:34','d2f3572c-6dc7-4382-8636-59346e80d635'),
	(331,258,82,11,NULL,3,'2018-07-10 22:20:53','2018-08-17 17:40:34','f9802c89-dd13-4f4d-b40a-0b1dae473f04'),
	(332,258,96,13,NULL,1,'2018-07-10 22:44:31','2018-08-17 17:40:34','83660b17-1da7-47f2-8533-4a46f905a044'),
	(333,258,96,13,NULL,2,'2018-07-10 23:05:04','2018-08-17 17:40:34','73064dd4-0c53-40e3-98f0-64cee1af0f6d'),
	(334,258,92,12,NULL,1,'2018-07-14 12:45:01','2018-08-17 17:40:34','200bac50-1664-41e9-954b-53810bdd7d32'),
	(335,258,92,12,NULL,2,'2018-07-14 12:45:01','2018-08-17 17:40:34','4d356ae2-aa55-47a9-a4f9-d878cb7dda2a'),
	(336,258,92,12,NULL,3,'2018-07-14 12:45:01','2018-08-17 17:40:34','bbf3b27b-1194-4222-a58f-a077c6ca5484'),
	(337,258,92,12,NULL,4,'2018-07-14 12:45:01','2018-08-17 17:40:34','0795ce1f-89d2-4db4-9b77-bd09f40600e6'),
	(338,258,92,12,NULL,5,'2018-07-14 12:45:01','2018-08-17 17:40:34','87f13295-1892-447a-9935-34154fc4d119'),
	(339,258,92,12,NULL,6,'2018-07-14 12:45:01','2018-08-17 17:40:34','9afd09c1-c455-4590-9505-ef03e0a08674'),
	(340,258,112,17,NULL,1,'2018-07-14 13:56:37','2018-08-17 17:40:34','077b2c3b-e4a5-46c1-94c2-53cf8dc26dc3'),
	(342,259,96,13,NULL,1,'2018-07-14 15:07:42','2018-07-29 18:58:42','9deefd35-7b90-4453-a0e2-c37d250d4fb9'),
	(343,259,96,13,NULL,2,'2018-07-14 15:07:42','2018-07-29 18:58:42','00a17613-7c65-4099-9a9a-ad05b620c9dd'),
	(344,259,96,13,NULL,3,'2018-07-14 15:07:42','2018-07-29 18:58:42','4c692d23-54ba-40ca-9956-38a1888febce'),
	(345,259,92,12,NULL,1,'2018-07-15 10:31:57','2018-07-29 18:58:42','6dccd02f-110a-485d-baa1-3eb5e652a42f'),
	(346,259,92,12,NULL,2,'2018-07-15 10:31:57','2018-07-29 18:58:42','783307b5-17fc-44db-a4c7-1c8d43d51cc2'),
	(347,259,92,12,NULL,3,'2018-07-15 10:31:57','2018-07-29 18:58:42','78d34d84-0023-482a-8f37-a29122bdafe8'),
	(348,259,92,12,NULL,4,'2018-07-15 10:31:57','2018-07-29 18:58:42','55d7f2d8-d633-493b-96e4-91e486857b65'),
	(351,350,4,1,NULL,1,'2018-07-15 12:40:25','2018-07-26 17:20:24','ed07ab67-a7bb-4b59-a1d5-2c18b3f7f9fb'),
	(353,352,82,11,NULL,1,'2018-07-16 22:10:19','2018-08-17 19:42:18','acfd3816-013f-4f21-99f0-9bdd995a743a'),
	(354,352,82,11,NULL,2,'2018-07-16 22:10:19','2018-08-17 19:42:18','ae6058e6-29a5-4b37-8371-97c08182a839'),
	(357,262,117,18,NULL,1,'2018-07-17 20:18:27','2018-08-17 17:21:36','088e07ef-eb16-4005-a78c-87ed2ecc0989'),
	(455,426,117,18,NULL,1,'2018-08-07 18:00:39','2018-08-18 15:40:12','cf9f6a63-cbb6-495b-b7c1-95afbae9e68b'),
	(457,427,117,18,NULL,1,'2018-08-07 18:28:33','2018-08-17 20:09:43','c48a7a2f-3034-4095-a506-98265ac73102'),
	(503,428,117,18,NULL,1,'2018-08-07 19:08:59','2018-08-17 20:01:29','adc752e9-66d2-4d45-8c9e-e75867a665aa'),
	(510,425,117,18,NULL,1,'2018-08-07 19:12:32','2018-08-17 20:09:09','9b8bacfd-1acc-445e-b51c-a674a4bdae9b'),
	(520,423,117,18,NULL,1,'2018-08-07 19:31:21','2018-08-18 15:41:29','a0ba8e75-519b-4a1a-b3b2-6997dbb5bea2'),
	(523,262,112,17,NULL,1,'2018-08-12 18:16:38','2018-08-17 17:21:36','bdca705f-8245-4a62-a615-0d0c72634b18'),
	(531,426,122,19,NULL,1,'2018-08-16 07:39:53','2018-08-18 15:40:12','a0faa36c-4722-4d4d-8ce3-9b387033e202'),
	(569,426,122,19,NULL,2,'2018-08-17 16:54:05','2018-08-18 15:40:12','0f8d6ae8-52bc-4928-847e-d47a4b404408'),
	(570,426,122,19,NULL,3,'2018-08-17 16:54:05','2018-08-18 15:40:12','e088814b-1eeb-4a9f-99d1-72d8733dc6aa'),
	(571,426,122,19,NULL,4,'2018-08-17 16:54:05','2018-08-18 15:40:13','226770db-3414-4eec-9765-0b74593b8160'),
	(572,426,122,19,NULL,5,'2018-08-17 16:54:05','2018-08-18 15:40:13','2dca4811-4cc5-4e51-9826-490528accb7d'),
	(576,427,122,19,NULL,1,'2018-08-17 17:00:56','2018-08-17 20:09:43','6e61f33a-075d-451b-9b52-e35d151091c9'),
	(577,427,122,19,NULL,2,'2018-08-17 17:00:56','2018-08-17 20:09:43','164aff27-e26b-4d3d-8470-1cbd55720f08'),
	(578,427,122,19,NULL,3,'2018-08-17 17:00:56','2018-08-17 20:09:43','dfdc6d2d-6c14-49a5-8866-3cd2827e5ef0'),
	(579,428,122,19,NULL,1,'2018-08-17 17:07:15','2018-08-17 20:01:30','84662385-d94b-4e2c-8454-e9fb76e96911'),
	(580,428,122,19,NULL,2,'2018-08-17 17:07:15','2018-08-17 20:01:30','652b9286-5f5c-44a1-998b-4b4c493a83b9'),
	(581,428,122,19,NULL,3,'2018-08-17 17:07:15','2018-08-17 20:01:30','6fd00e17-748e-41e9-94e9-f09668c9f52a'),
	(582,428,122,19,NULL,4,'2018-08-17 17:07:15','2018-08-17 20:01:30','247757ce-b552-46d4-ba74-f1e79c3bfa7c'),
	(583,428,122,19,NULL,5,'2018-08-17 17:07:15','2018-08-17 20:01:30','c7836d13-630b-4b3c-bb64-ac060372ee0a'),
	(584,425,122,19,NULL,1,'2018-08-17 17:08:46','2018-08-17 20:09:09','5564f384-f125-4e94-84f5-18fc9fa752ae'),
	(585,425,122,19,NULL,2,'2018-08-17 17:08:46','2018-08-17 20:09:09','1d77fdad-0667-4505-bd8d-7fc021b9cd46'),
	(586,423,122,19,NULL,1,'2018-08-17 17:10:41','2018-08-18 15:41:29','1cf64f6d-a268-4f0d-8590-4c403d6adeb9'),
	(587,423,122,19,NULL,2,'2018-08-17 17:10:41','2018-08-18 15:41:29','a2488e57-82df-426b-a3ea-d5adb039aa2a'),
	(588,423,122,19,NULL,3,'2018-08-17 17:10:41','2018-08-18 15:41:29','3fea3008-50b1-43a0-98a6-6ce3f7105552'),
	(589,262,122,19,NULL,1,'2018-08-17 17:13:32','2018-08-17 17:21:36','75ead320-e56a-487d-8999-6df3809a621b'),
	(590,262,122,19,NULL,2,'2018-08-17 17:13:32','2018-08-17 17:21:36','3a7f54fe-6c56-4e96-b6ac-7340d98afd87'),
	(591,262,122,19,NULL,3,'2018-08-17 17:13:32','2018-08-17 17:21:36','f811e02f-eabc-4555-b85e-6b0c3ee26b65'),
	(592,262,122,19,NULL,4,'2018-08-17 17:13:32','2018-08-17 17:21:36','f42dcfee-caa5-4db4-a6cd-0bba221b68d8'),
	(593,262,122,19,NULL,5,'2018-08-17 17:13:32','2018-08-17 17:21:36','23549475-95f0-4482-bcf0-31f2bc648f91'),
	(594,423,112,17,NULL,1,'2018-08-17 19:54:01','2018-08-18 15:41:29','406b39d1-632b-4586-b3e2-3bcf090b0247'),
	(595,426,112,17,NULL,1,'2018-08-17 19:59:14','2018-08-18 15:40:13','d0435b87-e3f6-4343-8443-ab9a55d5cbf1'),
	(596,427,112,17,NULL,1,'2018-08-17 20:00:36','2018-08-17 20:09:43','b76d7848-1e49-4de0-ba84-e98d3e571e9b'),
	(597,428,112,17,NULL,1,'2018-08-17 20:01:30','2018-08-17 20:01:30','0689afc7-b62c-4859-9e13-2dd784028cab'),
	(598,425,112,17,NULL,1,'2018-08-17 20:02:15','2018-08-17 20:09:09','d35cdd00-2dfe-475c-8211-e65670fbf5a4');

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
	(16,106,299,'Team Member','teamMember',1,'2018-07-10 20:23:16','2018-07-27 08:25:18','8f09da3b-ad14-4949-9f12-2cebafa3d536'),
	(17,112,284,'Block','block',1,'2018-07-14 13:50:36','2018-07-17 20:14:13','77b72a29-72a1-48f8-9d61-30568aa39d00'),
	(18,117,280,'Feature','feature',1,'2018-07-17 20:00:54','2018-07-17 20:01:49','26347d9a-b26b-47b6-9f5a-2862c1678b93'),
	(19,122,303,'Block','block',1,'2018-07-17 20:15:52','2018-08-12 16:10:04','187e3799-a578-4a42-91ce-5ef097a24506');

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
	(122,351,'en','<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n</p>\r\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n</p>','2018-07-15 12:40:25','2018-07-26 17:20:24','fc63fdc8-49d0-48d8-a22c-893210614635');

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
	(1,324,'en','<h3 class=\"styled\"><strong>About Apex</strong></h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,'2018-07-09 22:29:55','2018-07-29 18:55:25','2e1f7295-8df3-4190-acfb-0c0455db24e4'),
	(2,332,'en','<h3 class=\"styled center-text\"> <strong>recording studio</strong> </h3>\n<p>10 Hour session - <strong>From £220 Per Session</strong> (Engineer included) Hourly rate outside of session bookings - <strong>£25</strong>.</p>\n<p>If you wish to work with us to produce an E.P or Album we are more than happy to work on a discounted price. If you are a young / new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey.</p>\n<p>(Opening hours and time slots are subject to availability) Free parking available at all times of the day.</p>',1,'2018-07-10 22:44:31','2018-08-17 17:40:34','58f4027e-e3c2-4dc1-8ad0-1db4a84305cb'),
	(3,333,'en','<h3 class=\"styled center-text\">\n			<strong>rehersal facilities</strong>\n		</h3>\n<p>£10 per hour if you book 3 + hours you will get a discounted price (depending on exact hours the booking entails. i.e.\n			£25 for 3 hours) Opening hours and time slots are subject to availability.</p>\n<p>A member of staff will be there on the day of booking to help set things up. Free parking available at all times of the\n			day\n		</p>',0,'2018-07-10 23:05:04','2018-08-17 17:40:34','6bfecbf8-a3b0-4164-bfec-ffdcdb90ed95'),
	(4,342,'en','<h3 class=\"styled\"><strong>basic guitar / bass setup</strong></h3>\n<ul class=\"repairs\"><li><em class=\"fas fa-check\"></em> String change </li>\n			<li><em class=\"fas fa-check\"></em> Fretboard oil/conditioned </li>\n			<li> <em class=\"fas fa-check\"></em> Pots &amp; Switches cleaned and lubricated </li>\n			<li> <em class=\"fas fa-check\"></em> Solder points touched up </li>\n			<li> <em class=\"fas fa-check\"></em> Action adjusted to make guitar/bass have optimum playability </li>\n			<li> <em class=\"fas fa-check\"></em> Intonation set </li>\n			<li> <em class=\"fas fa-check\"></em> Tuners lubricated </li>\n			<li> <em class=\"fas fa-check\"></em> All around basic clean</li>\n			</ul><p class=\"repair-price\">from £25 (exc strings)</p>',0,'2018-07-14 15:07:42','2018-07-29 18:58:42','b32781c5-bf79-41ba-8ebd-2c88cc488d65'),
	(5,343,'en','<h3 class=\"styled\"><strong>full guitar / bass setup</strong></h3>\n<ul class=\"repairs\"><li><em class=\"fas fa-check\"></em> Includes everything from a basic set-up</li>\n			<li><em class=\"fas fa-check\"></em> Fret level</li>\n			<li> <em class=\"fas fa-check\"></em> Fret crown </li>\n			<li> <em class=\"fas fa-check\"></em> fret Polish</li>\n		</ul><p class=\"repair-price\">from £70</p>',1,'2018-07-14 15:07:42','2018-07-29 18:58:42','f5dd9b6a-a584-4896-85cf-2bd53b716c76'),
	(6,344,'en','<h3 class=\"styled\"><strong>full re-fret</strong></h3>\n<ul class=\"repairs\"><li><em class=\"fas fa-check\"></em> Multiple types of fret wire available</li>\n			<li><em class=\"fas fa-check\"></em> Price will vary depending on fret wire type and for specific guitars</li>\n		</ul><p class=\"repair-price\">from £120</p>',0,'2018-07-14 15:07:42','2018-07-29 18:58:42','0fa2d8a7-7771-46a6-81f7-42dc1df7de03');

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
	(1,314,'en','2018-07-08 13:54:49','2018-08-16 20:45:38','f1a2f228-e79e-42b3-9719-ba302cfd8f60');

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
	(1,319,'en','Apex Pickups','SHOP OUR RANGE OF HAND CRAFTED PICKUPS. YOUR TONE QUEST STARTS HERE.','/','2018-07-08 16:28:44','2018-08-16 20:45:38','1836bb80-965d-47bf-982b-0b82caafbb2d'),
	(2,320,'en','Apex Studio','SINDUSTRY STANDARD RECORDING & REHEARSAL FACILITIES COUPLED WITH PROFESSIONAL PHOTOGRAPHY AND VIDEOGRAPHY.','/apex-studio','2018-07-08 16:31:00','2018-08-16 20:45:38','c92bfbbf-3359-4f64-994f-4b3e2780886f'),
	(3,321,'en','INSTRUMENT REPAIRS','TOP QUALITY INSTRUMENT REPAIRS AND MODIFICATION FROM NECK REPAIRS TO FULL REBUILDS AND REFINISHES.','/instrument-repairs','2018-07-08 16:43:10','2018-08-16 20:45:38','89c45f51-043d-4212-bb48-7be55a122bb6');

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
	(1,322,'en','PAT MCMANUS','Pickups: Apex 50\'s','View Pickups','','2018-07-08 18:53:16','2018-08-16 20:45:38','85f21c59-4dbe-434b-88fc-7124f6b9d76d'),
	(2,323,'en','Test Title','Test Subtitle','View','','2018-07-08 18:53:16','2018-08-16 20:45:38','3f279c3a-a721-4961-b5a0-94934d85d215'),
	(3,329,'en','','','','','2018-07-10 22:20:53','2018-08-17 17:40:34','289d2c6f-3c8a-47c5-b79c-45b1a8a76215'),
	(4,330,'en','','','','','2018-07-10 22:20:53','2018-08-17 17:40:34','ff5d45ff-a44e-4e4f-a3c7-dfdcfa08b7b5'),
	(5,331,'en','','','','','2018-07-10 22:20:53','2018-08-17 17:40:34','df0988f1-dec5-4e30-bb06-bf54f5834c6f'),
	(6,353,'en','PAT MCMANUS','Pickups: Apex 50\'s','View Pickups ','/pickups/apex-50s','2018-07-16 22:10:19','2018-08-17 19:42:18','829b8cf4-c83c-41b2-bd1c-5247ac088be9'),
	(7,354,'en','','','','','2018-07-16 22:10:19','2018-08-17 19:42:18','7f6e84b6-bdf9-4a4d-add5-7c0fd45f874a');

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
	(1,334,'en','Package 1','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-08-17 17:40:34','25147501-56a0-478b-bf4d-588a062e9daf'),
	(2,335,'en','Package 2','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-08-17 17:40:34','9c6be4f7-eac8-4557-9ba2-f380ed16dff1'),
	(3,336,'en','Package 3','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-08-17 17:40:34','191b7034-a749-4927-87d5-3d108836f201'),
	(4,337,'en','Package 4','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-08-17 17:40:34','0cf36bce-a7e0-46f9-b7b6-780a3c042df8'),
	(5,338,'en','Package 5','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-08-17 17:40:34','941c4c7e-5742-4583-a969-84956575499e'),
	(6,339,'en','Package 6','8 hour live session shoot with full crew (4k)','£1199','2018-07-14 12:45:01','2018-08-17 17:40:34','ee6eb816-534e-404c-9dfa-9e0cbb3fb2dc'),
	(7,345,'en','string change','(Guitar only. Including Strings), £5 + your choice of strings (Bass)','£1o','2018-07-15 10:31:57','2018-07-29 18:58:42','9d8c6734-f48f-4eaa-96fd-8a56ffe4dd59'),
	(8,346,'en','headstock/neck repair','This is a structural repair only. Any cosmetic repairs will be extra.','£60','2018-07-15 10:31:57','2018-07-29 18:58:42','e2db06ca-bba8-4449-9f11-6b65ca490ad3'),
	(9,347,'en','Package 1','8 hour live session shoot with full crew (4k)','£1199','2018-07-15 10:31:57','2018-07-29 18:58:42','dd93a9f6-e3dc-4395-a066-55cf87b16eb3'),
	(10,348,'en','Package 1','8 hour live session shoot with full crew (4k)','£1199','2018-07-15 10:31:57','2018-07-29 18:58:42','89e1e50f-945f-45bf-aad3-ccd8da7007d0');

/*!40000 ALTER TABLE `craft_matrixcontent_pricinglist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_productfeatures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_productfeatures`;

CREATE TABLE `craft_matrixcontent_productfeatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_feature_featureOne` text COLLATE utf8_unicode_ci,
  `field_feature_featureTwo` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_productfeatures_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_productfeatures_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_productfeatures_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_productfeatures_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_productfeatures` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_productfeatures` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_productfeatures` (`id`, `elementId`, `locale`, `field_feature_featureOne`, `field_feature_featureTwo`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,357,'en','<h3>Magent Type</h3>\n<p><b>Alnico 5</b></p>','<h3>Approximate Resistance</h3>\n<ul class=\"resistance\"><li>Bridge<strong> 5.7K</strong></li>\n<li>Middle<strong> 5.3k</strong></li>\n<li>Neck<strong> 5.3K</strong></li>\n</ul>','2018-07-17 20:18:27','2018-08-17 17:21:36','f5ba19c6-cec9-4353-a3b8-052df11aaeff'),
	(2,455,'en','<h3>Magent Type</h3>\n<p>\n<strong>Alnico 5</strong>\n</p>','<h3>Approximate Resistance</h3>\n<ul class=\"resistance\"><li>Bridge <strong>6K</strong></li>\n<li>Middle <strong>5.7K</strong></li>\n<li>Neck <strong>5.7K</strong> \n</li>\n</ul>','2018-08-07 18:00:39','2018-08-18 15:40:12','e45d4548-5635-452d-9e0d-0ad6506e62d1'),
	(3,457,'en','<h3>Magnet Type</h3>\n<p><strong>Alnico 2</strong></p>','<h3>Approximate Resistance </h3>\n<h3>\n</h3>\n<ul class=\"resistance\"><li><strong>18K</strong></li></ul>','2018-08-07 18:28:33','2018-08-17 20:09:43','fbc084a8-749b-4aa6-a3c5-f32ddb40d5ff'),
	(4,503,'en','<h3>Magnet Type</h3>\n<p><strong>Alnico 5</strong></p>','<h3>Approximate Resistance </h3>\n<ul class=\"resistance\"><li>Bridge <strong>6.6K</strong></li>\n<li>Middle <strong>6.4K</strong></li>\n<li>Neck <strong>6.6K </strong></li>\n</ul>','2018-08-07 19:08:59','2018-08-17 20:01:29','8d68eb41-bc2e-45fa-a6b1-ee7974118408'),
	(5,510,'en','<h3>Magnet Type</h3>\n<p><strong>Alnico 2</strong></p>','<h3>Approximate Resistance </h3>\n<ul class=\"resistance\"><li>Bridge <strong>7.5K</strong></li>\n<li>Neck <strong>7K</strong></li>\n</ul>','2018-08-07 19:12:32','2018-08-17 20:09:09','aaa0889e-2f30-4a6f-b2d3-3782bb93481a'),
	(6,520,'en','<h3>Magnet Type</h3>\n<p><strong>Alnico 5</strong></p>','<h3>Approximate Resistance</h3>\n<ul class=\"resistance\"><li>Bridge <strong>7.5K</strong></li>\n<li>Neck <strong>5.5K</strong></li>\n</ul>','2018-08-07 19:31:21','2018-08-18 15:41:29','5657ea76-b2b9-460c-9767-97d3afea2263');

/*!40000 ALTER TABLE `craft_matrixcontent_productfeatures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_soundblock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_soundblock`;

CREATE TABLE `craft_matrixcontent_soundblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_block_soundFileTitle` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_soundblock_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_soundblock_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_soundblock_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_soundblock_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_soundblock` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_soundblock` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_soundblock` (`id`, `elementId`, `locale`, `field_block_soundFileTitle`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(16,531,'en','Apex 60\'s Bridge - Clean / Overdriven / Distortion','2018-08-16 07:39:53','2018-08-18 15:40:12','460a9bbd-9aae-404c-ac9e-c3ec51450d0c'),
	(17,569,'en','Apex 60\'s Bridge & Middle - Clean / Overdriven / Distortion','2018-08-17 16:54:05','2018-08-18 15:40:12','22fadfb4-d73c-4594-a389-9aa2c20398d5'),
	(18,570,'en','Apex 60\'s Middle - Clean / Overdriven / Distortion','2018-08-17 16:54:05','2018-08-18 15:40:12','77eec353-c0f4-4faf-ac4d-f9e6a13c1c57'),
	(19,571,'en','Apex 60\'s Middle & Neck - Clean / Overdriven / Distortion','2018-08-17 16:54:05','2018-08-18 15:40:12','c7646df4-a22c-4bcb-9683-e35a1db9f862'),
	(20,572,'en','Apex 60\'s Neck - Clean / Overdriven / Distortion','2018-08-17 16:54:05','2018-08-18 15:40:13','ac99c416-3792-4a66-b2ab-cc3c08200109'),
	(21,576,'en','Apex Standard - Clean','2018-08-17 17:00:56','2018-08-17 20:09:43','6255ed6c-e7bb-44ab-a742-ec205e4693ee'),
	(22,577,'en','Apex Standard - Overdrive','2018-08-17 17:00:56','2018-08-17 20:09:43','30b8d564-0dae-4c2b-aa27-3e5eb1c202d9'),
	(23,578,'en','Apex Standard - Distortion','2018-08-17 17:00:56','2018-08-17 20:09:43','4af2e412-0c96-4c8e-9200-25a3ad8d31c1'),
	(24,579,'en','Texas Modern, Bridge - Clean / Overdrive / Distortion','2018-08-17 17:07:15','2018-08-17 20:01:29','7cf75663-204a-40a7-8031-bc99dc877694'),
	(25,580,'en','Texas Modern, Bridge & Middle - Clean / Overdrive / Distortion','2018-08-17 17:07:15','2018-08-17 20:01:30','febed276-ba5e-486d-84cb-37a636f073be'),
	(26,581,'en','Texas Modern, Middle - Clean / Overdrive / Distortion','2018-08-17 17:07:15','2018-08-17 20:01:30','e303b641-fc0f-4f37-ad9e-c2aebace26eb'),
	(27,582,'en','Texas Modern, Middle & Neck - Clean / Overdrive / Distortion','2018-08-17 17:07:15','2018-08-17 20:01:30','f197b616-5cd7-4409-93df-949a0fdb99c9'),
	(28,583,'en','Texas Modern, Neck - Clean / Overdrive / Distortion','2018-08-17 17:07:15','2018-08-17 20:01:30','9ba491fd-0c17-46ef-8254-dc6d51fde561'),
	(29,584,'en','Apex 34\'s, Bridge - Clean / Overdrive / Distortion','2018-08-17 17:08:46','2018-08-17 20:09:09','f1f34dba-52cf-4505-9f7e-6ac061309fe8'),
	(30,585,'en','Apex 34\'s, Neck - Clean / Overdrive / Distortion','2018-08-17 17:08:46','2018-08-17 20:09:09','27755d12-c6e9-4c7b-b7a8-732f4a6e22dd'),
	(31,586,'en','Twang Cities, Bridge - Clean / Overdrive / Distortion','2018-08-17 17:10:41','2018-08-18 15:41:29','2dd6153c-3056-4bb6-afda-b93d5fbe144a'),
	(32,587,'en','Twang Cities, Bridge & Neck - Clean / Overdrive / Distortion','2018-08-17 17:10:41','2018-08-18 15:41:29','4ed732af-b0b7-46f2-a980-72339792397f'),
	(33,588,'en','Twang Cities, Neck - Clean / Overdrive / Distortion','2018-08-17 17:10:41','2018-08-18 15:41:29','eba38598-64e2-4673-8668-afa1c78f0b19'),
	(34,589,'en','Apex 50\'s, Bridge - Clean / Overdrive / Distortion ','2018-08-17 17:13:32','2018-08-17 17:21:36','cc189403-9ee5-4fa6-9209-697ebda84093'),
	(35,590,'en','Apex 50\'s, Bridge & Middle - Clean / Overdrive / Distortion ','2018-08-17 17:13:32','2018-08-17 17:21:36','7bcbb77e-a701-4795-8a2f-e311ca7d9abd'),
	(36,591,'en','Apex 50\'s, Middle - Clean / Overdrive / Distortion ','2018-08-17 17:13:32','2018-08-17 17:21:36','bebf9432-5955-4792-8fca-7d75aee7b0dc'),
	(37,592,'en','Apex 50\'s, Middle & Neck - Clean / Overdrive / Distortion ','2018-08-17 17:13:32','2018-08-17 17:21:36','1d2eaf7c-692a-4a4b-b267-464efd5fc36a'),
	(38,593,'en','Apex 50\'s, Neck - Clean / Overdrive / Distortion ','2018-08-17 17:13:32','2018-08-17 17:21:36','0a399909-234b-4462-947c-6338e98e9534');

/*!40000 ALTER TABLE `craft_matrixcontent_soundblock` ENABLE KEYS */;
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
	(1,325,'en','ORAN MCGUCKIN','Owner & creator','2018-07-10 20:35:03','2018-07-29 18:55:25','82dc0975-7c0b-4142-9c82-4c53d37b7b53'),
	(2,326,'en','DANI ROONEY','Video & photography','2018-07-10 20:35:03','2018-07-29 18:55:25','098c7d14-be06-4f8a-b59a-64c3b16f4ae7'),
	(3,327,'en','GRAHAM MCKINSTRY','Social Media, marketing & management','2018-07-10 20:35:03','2018-07-29 18:55:25','2ea35665-be6e-4fcf-b896-6fe319242f95'),
	(4,328,'en','WILLIAM MARTIN','Workshop apprentice','2018-07-10 20:35:03','2018-07-29 18:55:25','4bdb5969-3096-4f6b-b2cb-be55079ad792');

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
	(1,340,'en','<p class=\"bigger\">We have a range of packages to suit all needs and budgets, please get in touch if you would like avail of our video and\n				photography services. </p>\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n				Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint\n				occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>','https://www.youtube.com/embed/bTqVqk7FSmY','2018-07-14 13:56:37','2018-08-17 17:40:34','3ceeaf7b-1d38-4d24-85c9-32ed95be996e'),
	(2,523,'en','','https://www.youtube.com/embed/e19h2BPkxyY','2018-08-12 18:16:38','2018-08-17 17:21:36','e521a14a-40ce-49fb-aab1-b5dfdb112686'),
	(3,594,'en','<h5>Video demo</h5>','https://www.youtube.com/embed/xGtTwBTtF5g','2018-08-17 19:54:01','2018-08-18 15:41:29','d66efa97-e876-4491-ad8a-6645137d3c23'),
	(4,595,'en','<h5>Apex 60\'s Video Demo</h5>','https://www.youtube.com/embed/-W1oJppWt2c','2018-08-17 19:59:14','2018-08-18 15:40:13','bedda09f-d467-4321-a5b1-af45068d4219'),
	(5,596,'en','','https://www.youtube.com/embed/l4oMVSZT3UY','2018-08-17 20:00:36','2018-08-17 20:09:43','aeceb7fb-00f6-4852-a7f5-5c07a8c182ca'),
	(6,597,'en','','https://www.youtube.com/embed/sUeBMkV1OeQ','2018-08-17 20:01:30','2018-08-17 20:01:30','b08566c1-574b-429e-ba3a-6412e8aa7a01'),
	(7,598,'en','','https://www.youtube.com/embed/TA3fo7fPrl4','2018-08-17 20:02:15','2018-08-17 20:09:09','b4562bfb-b42e-4c35-913a-60be90304a6f');

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
	(271,1,262,'','2018-07-05 22:30:25','2018-08-01 14:05:32','75306846-7d21-4fc1-b405-d7c187d6a9a9'),
	(272,2,74,'','2018-07-07 14:40:30','2018-07-07 14:40:30','d647ba77-3e32-4aa6-8f97-f506b69b3cb0'),
	(273,2,258,'','2018-07-07 14:40:51','2018-07-07 14:40:51','ba3bf9ef-c785-403c-b9de-ae45ca2357da'),
	(274,2,NULL,'','2018-07-07 14:42:12','2018-07-07 14:42:12','6d809523-e654-42f7-801b-b96026bed36b'),
	(275,2,NULL,'/blog','2018-07-07 14:42:38','2018-07-07 14:42:38','0a4068f1-8498-4eb1-93ef-eff205cd9f8d'),
	(422,1,NULL,'/pickups/tele-style','2018-08-01 10:19:37','2018-08-01 10:19:37','94fffb9c-aa95-4da5-9ac9-fb4218aaba89'),
	(424,1,423,'','2018-08-01 10:23:05','2018-08-01 14:06:18','d3524180-4fe1-4556-b57e-a422466d8ab1'),
	(429,1,428,'','2018-08-01 14:03:49','2018-08-01 14:03:49','8114b1bd-5ac7-4e24-a6b4-52777b686310'),
	(430,1,427,'','2018-08-01 14:04:18','2018-08-01 16:49:10','2b21663b-b8fc-4344-99a9-82ba7f9af17a'),
	(431,1,426,'','2018-08-01 14:04:52','2018-08-01 14:04:52','304fd578-78ee-47a2-9260-e0d0c3c6f330'),
	(432,1,425,'','2018-08-01 14:05:21','2018-08-01 14:22:56','acda6477-95cf-4d1d-92fc-9e27337e9519'),
	(433,1,NULL,'Humbuckers','2018-08-01 14:09:19','2018-08-01 14:09:19','e269d26a-8eaa-4399-ab56-f115a9bb0a5d');

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
	(1,'Menus','0.9',NULL,NULL,'unknown',1,'[]','2018-07-05 21:54:01','2018-07-05 21:54:01','2018-08-16 21:40:50','674d3e8d-8597-46ac-a5df-6852619f6bd2'),
	(2,'Hacksaw','1.1.2',NULL,NULL,'unknown',1,NULL,'2018-07-17 19:36:26','2018-07-17 19:36:26','2018-08-16 21:40:50','da14701c-f831-4bcf-8d94-6c69b81a3c91');

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
	(817,86,322,NULL,262,1,'2018-07-08 18:53:16','2018-07-08 18:53:16','66246d29-0f23-4788-a81a-d1967ac8f00f'),
	(819,86,323,NULL,258,1,'2018-07-08 18:53:17','2018-07-08 18:53:17','a6440d9b-5838-4286-b031-d44fa43e6c21'),
	(937,80,360,NULL,261,1,'2018-07-17 22:16:32','2018-07-17 22:16:32','139de4fb-e5bc-43a2-ab34-63fffdf8a30d'),
	(942,15,350,NULL,383,1,'2018-07-26 17:20:24','2018-07-26 17:20:24','de1da2de-8e46-429c-94ba-3e2e26b5d2dc'),
	(998,98,324,NULL,377,1,'2018-07-29 18:55:25','2018-07-29 18:55:25','d3217a31-55b7-4a97-bf70-9eb14c750c39'),
	(999,107,325,NULL,415,1,'2018-07-29 18:55:25','2018-07-29 18:55:25','e29e4af8-106a-4656-814e-794fdf67403c'),
	(1000,107,326,NULL,414,1,'2018-07-29 18:55:25','2018-07-29 18:55:25','9f7a49f3-baf9-404e-8a8a-b9e5cb1d1e7c'),
	(1001,107,328,NULL,416,1,'2018-07-29 18:55:25','2018-07-29 18:55:25','655efc87-5c47-4952-838f-eab48b451e57'),
	(1002,98,342,NULL,417,1,'2018-07-29 18:58:42','2018-07-29 18:58:42','cd472edd-d808-40fd-b879-82ec2f91e22d'),
	(1003,98,343,NULL,418,1,'2018-07-29 18:58:42','2018-07-29 18:58:42','c7158619-8b45-44cf-af72-cf68992094b6'),
	(1004,98,344,NULL,419,1,'2018-07-29 18:58:42','2018-07-29 18:58:42','2f56a788-8446-4371-9aef-15f032cf6106'),
	(1010,15,261,NULL,400,1,'2018-07-29 19:19:27','2018-07-29 19:19:27','5dc57a49-412d-459b-8770-76d6c115b56f'),
	(1086,15,355,NULL,447,1,'2018-08-01 17:28:58','2018-08-01 17:28:58','92bf01e7-8fe8-495d-b91a-79f87fc9b59a'),
	(1087,15,356,NULL,448,1,'2018-08-01 17:29:20','2018-08-01 17:29:20','69c6e8bf-b2a8-4ab2-ab5f-ee3b55f11189'),
	(1347,100,314,NULL,362,1,'2018-08-16 20:45:38','2018-08-16 20:45:38','14b09283-7473-4790-aee1-fa1a81d0e29e'),
	(1348,103,319,NULL,397,1,'2018-08-16 20:45:38','2018-08-16 20:45:38','c9b2728d-1306-44c9-8afa-fa054fd8fd3b'),
	(1349,103,320,NULL,402,1,'2018-08-16 20:45:38','2018-08-16 20:45:38','5ad95ddc-fc77-4321-8d96-0bdbbec3865f'),
	(1350,103,321,NULL,410,1,'2018-08-16 20:45:38','2018-08-16 20:45:38','13c4d2f9-ac61-44db-b805-b1ffb0cb7b47'),
	(1351,83,322,NULL,395,1,'2018-08-16 20:45:38','2018-08-16 20:45:38','5042fd3c-2995-4f95-9013-e62cdb303f07'),
	(1418,80,262,NULL,261,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','370eb139-477d-45fc-b97e-8843e3eb494a'),
	(1419,15,262,NULL,400,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','622054b2-67ba-4274-a9ca-d821a8592826'),
	(1420,124,589,NULL,566,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','fb9d0389-57b6-46bb-82ad-da716bdc7d88'),
	(1421,124,590,NULL,565,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','6b2b9c63-0b3f-41a2-9423-51e249ed21a1'),
	(1422,124,591,NULL,564,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','2affac66-ac7a-47e5-93c2-b24f89b542d2'),
	(1423,124,592,NULL,558,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','db5c33ab-e473-40fd-bbb5-679b2af95357'),
	(1424,124,593,NULL,562,1,'2018-08-17 17:21:36','2018-08-17 17:21:36','4a0f2130-71d3-43d1-ad34-613f73f9d58b'),
	(1457,83,329,NULL,370,1,'2018-08-17 17:40:34','2018-08-17 17:40:34','51ac3337-fd01-4a75-873d-6f82b8383b5b'),
	(1458,83,330,NULL,363,1,'2018-08-17 17:40:34','2018-08-17 17:40:34','98778d6c-fc4c-46c5-abbc-7add6ca48be6'),
	(1459,83,331,NULL,376,1,'2018-08-17 17:40:34','2018-08-17 17:40:34','a1c7ada6-2de0-4c12-998e-7c25840ec631'),
	(1460,98,332,NULL,366,1,'2018-08-17 17:40:34','2018-08-17 17:40:34','3a18a543-4a3b-4f76-ae0a-a935e955fad5'),
	(1461,98,333,NULL,363,1,'2018-08-17 17:40:34','2018-08-17 17:40:34','f67a69b3-ef13-4fe2-9d10-c7fba20a56f1'),
	(1462,91,352,NULL,397,1,'2018-08-17 19:42:18','2018-08-17 19:42:18','de1877fb-0871-4cb7-9685-6a93f41b5897'),
	(1463,83,353,NULL,395,1,'2018-08-17 19:42:18','2018-08-17 19:42:18','8bd5f3e1-680c-4e6f-9c81-90f3ee423328'),
	(1491,80,428,NULL,261,1,'2018-08-17 20:01:29','2018-08-17 20:01:29','fbc5c4b8-42db-4a77-9826-c567fab935f8'),
	(1492,15,428,NULL,451,1,'2018-08-17 20:01:29','2018-08-17 20:01:29','9863aa9a-9d76-407a-a734-02da856e1b4f'),
	(1493,124,579,NULL,556,1,'2018-08-17 20:01:29','2018-08-17 20:01:29','667b878e-d8b9-4fe0-8f9c-1e2d44c0b418'),
	(1494,124,580,NULL,560,1,'2018-08-17 20:01:30','2018-08-17 20:01:30','12ff1497-9c46-4008-abb0-13704e391f5f'),
	(1495,124,581,NULL,559,1,'2018-08-17 20:01:30','2018-08-17 20:01:30','32a47242-1f64-438c-8db1-f55fadb96149'),
	(1496,124,582,NULL,558,1,'2018-08-17 20:01:30','2018-08-17 20:01:30','20f6763d-a4ac-44ef-a07e-86ecde35e600'),
	(1497,124,583,NULL,557,1,'2018-08-17 20:01:30','2018-08-17 20:01:30','33226052-e530-4410-acc7-55431ead34cd'),
	(1513,80,425,NULL,356,1,'2018-08-17 20:09:09','2018-08-17 20:09:09','8f97601f-c373-43a0-9835-1d3df8ff686c'),
	(1514,15,425,NULL,449,1,'2018-08-17 20:09:09','2018-08-17 20:09:09','9cf42983-b6a4-4d7d-944d-d65f40079bf0'),
	(1515,124,584,NULL,568,1,'2018-08-17 20:09:09','2018-08-17 20:09:09','8914f8ad-2112-4854-b5ab-d2ac2e76d732'),
	(1516,124,585,NULL,567,1,'2018-08-17 20:09:09','2018-08-17 20:09:09','87a2b472-282d-4b84-9800-1a81e3dcc074'),
	(1517,80,427,NULL,356,1,'2018-08-17 20:09:43','2018-08-17 20:09:43','c93896b1-9edb-4217-996d-89e531dc801a'),
	(1518,15,427,NULL,448,1,'2018-08-17 20:09:43','2018-08-17 20:09:43','6c9ec011-eaf8-473c-892e-6f23f11a74a7'),
	(1519,124,576,NULL,434,1,'2018-08-17 20:09:43','2018-08-17 20:09:43','56acd7b0-5a10-471e-91bb-01ac2518399d'),
	(1520,124,577,NULL,436,1,'2018-08-17 20:09:43','2018-08-17 20:09:43','53ce1854-ac31-4f3f-99f4-1be85cdaee4e'),
	(1521,124,578,NULL,435,1,'2018-08-17 20:09:43','2018-08-17 20:09:43','601d04e5-0bbd-4878-8be5-6d3a1efea576'),
	(1522,80,426,NULL,261,1,'2018-08-18 15:40:12','2018-08-18 15:40:12','3cb2e682-b9d3-4da5-85a0-925cedd0c062'),
	(1523,15,426,NULL,450,1,'2018-08-18 15:40:12','2018-08-18 15:40:12','ce7d5614-27da-416d-b4c9-bbf6b93e4aa8'),
	(1524,124,531,NULL,561,1,'2018-08-18 15:40:12','2018-08-18 15:40:12','8f3093c1-7336-4ab5-80e2-f989f2e10908'),
	(1525,124,569,NULL,560,1,'2018-08-18 15:40:12','2018-08-18 15:40:12','46242993-0a66-4ba7-8a56-51b12c7374ec'),
	(1526,124,570,NULL,559,1,'2018-08-18 15:40:12','2018-08-18 15:40:12','8f2e1c58-efe7-4432-abd4-bfd0256b26cc'),
	(1527,124,571,NULL,558,1,'2018-08-18 15:40:13','2018-08-18 15:40:13','c39ef137-b7db-4495-83ad-0c892e855d88'),
	(1528,124,572,NULL,557,1,'2018-08-18 15:40:13','2018-08-18 15:40:13','b3c832f3-0836-4bdc-8925-5ffd182c9157'),
	(1529,80,423,NULL,355,1,'2018-08-18 15:41:29','2018-08-18 15:41:29','c420dd98-4757-4cba-a403-9467dad00036'),
	(1530,15,423,NULL,447,1,'2018-08-18 15:41:29','2018-08-18 15:41:29','f0e4cbcf-2df7-4b51-ae4f-32ec6f49597f'),
	(1531,124,586,NULL,551,1,'2018-08-18 15:41:29','2018-08-18 15:41:29','f7f7dc2d-0a96-4a98-a091-019dd1b319ff'),
	(1532,124,587,NULL,550,1,'2018-08-18 15:41:29','2018-08-18 15:41:29','25607de9-9cf5-4438-91b0-aebf28c701cd'),
	(1533,124,588,NULL,549,1,'2018-08-18 15:41:29','2018-08-18 15:41:29','0195942b-989c-432b-ad62-f94d000c318a');

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
	(352,'field',90,'en',' custom pickups recording studio guitar work shop we do it all at apex '),
	(352,'field',82,'en',' pat pickups apex 50s view pickups pickups apex 50 s pat mcmanus '),
	(352,'field',2,'en',' nothing taking your fancy if you have something custom in mind please get in touch we can craft any pickup to your exact spec '),
	(352,'slug',0,'en',''),
	(353,'field',83,'en',' pat '),
	(353,'field',84,'en',' pat mcmanus '),
	(353,'field',85,'en',' pickups apex 50 s '),
	(353,'field',86,'en',' pickups apex 50s '),
	(353,'field',87,'en',' view pickups '),
	(353,'slug',0,'en',''),
	(354,'field',83,'en',''),
	(354,'field',84,'en',''),
	(354,'field',85,'en',''),
	(354,'field',86,'en',''),
	(354,'field',87,'en',''),
	(354,'slug',0,'en',''),
	(261,'field',47,'en',' our single coil pickups give your guitar the truest most open sound it will ever have bringing out tones you never thought you could hear from your guitar '),
	(261,'field',15,'en',' single coil cream '),
	(355,'field',1,'en',''),
	(355,'field',47,'en',' a successful marketing plan relies heavily on the pulling power of advertising copy writing result oriented ad copy is difficult as it must appeal to entice and convince consumers to take action there is no magic formula to write '),
	(355,'field',15,'en',' tele brodge black '),
	(355,'field',2,'en',''),
	(355,'slug',0,'en',' tele style '),
	(355,'title',0,'en',' tele style '),
	(356,'field',1,'en',''),
	(356,'field',47,'en',' a successful marketing plan relies heavily on the pulling power of advertising copy writing result oriented ad copy is difficult as it must appeal to entice and convince consumers to take action there is no magic formula to write '),
	(356,'field',15,'en',' humbucker black and white '),
	(356,'field',2,'en',''),
	(356,'slug',0,'en',' humbuckers '),
	(356,'title',0,'en',' humbuckers '),
	(262,'field',90,'en',' our single coil pickups give your guitar the truest most open sound it will ever have bringing out tones you never thought you could hear from your guitar '),
	(262,'field',15,'en',' single coil cream '),
	(262,'field',2,'en',' apex 50 s the apex 50 s the perfect aged tone your rig needs with a beautiful mid range these pickups really sing with your valve driven tones or even your transistor jazz cleans the apex 50 s are modelled to fit your raw blues tones with a lower mellower vibe so you can either stand out in your backline or hang back in your mix providing a solidrhythm tone the apex 50 s also show off how versatile they are due to their thickness in sound with a fat crunchy mid tones and balanced highs and lows the 50 s can do virtually anything '),
	(260,'field',120,'en',' oranmcguckin apexmusic co '),
	(262,'field',117,'en',' magent type alnico 5 approximate resistance bridge 5 7k middle 5 3k neck 5 3k '),
	(262,'field',121,'en',' 135 '),
	(262,'field',122,'en',' apex 50s bridge apex 50 s bridge clean overdrive distortion apex 50s bridge middle apex 50 s bridge middle clean overdrive distortion apex 50s middle apex 50 s middle clean overdrive distortion apex 60s middle neck apex 50 s middle neck clean overdrive distortion apex 50s neck apex 50 s neck clean overdrive distortion '),
	(551,'kind',0,'en',' audio '),
	(551,'extension',0,'en',' mp3 '),
	(551,'filename',0,'en',' twang cities bridge mp3 '),
	(551,'field',47,'en',''),
	(550,'title',0,'en',' twang cities bridge neck '),
	(550,'field',47,'en',''),
	(550,'filename',0,'en',' twang cities bridge neck mp3 '),
	(550,'extension',0,'en',' mp3 '),
	(550,'kind',0,'en',' audio '),
	(357,'field',118,'en',' magent type alnico 5 '),
	(357,'field',119,'en',' approximate resistance bridge 5 7k middle 5 3k neck 5 3k '),
	(357,'slug',0,'en',''),
	(425,'field',121,'en',' 155 '),
	(367,'slug',0,'en',' about images 1 '),
	(367,'title',0,'en',' about images 1 '),
	(425,'field',122,'en',' apex 34s bridge apex 34 s bridge clean overdrive distortion apex 34s neck apex 34 s neck clean overdrive distortion '),
	(425,'field',112,'en',' https www youtube com embed ta3fo7fprl4 '),
	(547,'extension',0,'en',' png '),
	(547,'kind',0,'en',' image '),
	(550,'slug',0,'en',' twang cities bridge neck '),
	(538,'field',47,'en',''),
	(572,'field',125,'en',' apex 60 s neck clean overdriven distortion '),
	(572,'slug',0,'en',''),
	(580,'field',125,'en',' texas modern bridge middle clean overdrive distortion '),
	(552,'extension',0,'en',' mp3 '),
	(360,'field',80,'en',' strat style '),
	(360,'field',15,'en',' single coil cream '),
	(360,'field',2,'en',''),
	(360,'field',117,'en',''),
	(360,'field',121,'en',' 120 '),
	(360,'field',122,'en',''),
	(360,'slug',0,'en',' test '),
	(360,'title',0,'en',' test '),
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
	(2,'field',101,'en',' pickups bg shop our range of hand crafted pickups your tone quest starts here apex pickups studio bg sindustry standard recording rehearsal facilities coupled with professional photography and videography apex studio apex studio workshop bg top quality instrument repairs and modification from neck repairs to full rebuilds and refinishes instrument repairs instrument repairs '),
	(579,'slug',0,'en',''),
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
	(258,'field',82,'en',' apex studio 1 apex studio 3 apex studio 6 '),
	(329,'field',83,'en',' apex studio 1 '),
	(329,'field',84,'en',''),
	(329,'field',85,'en',''),
	(329,'field',86,'en',''),
	(329,'field',87,'en',''),
	(329,'slug',0,'en',''),
	(330,'field',83,'en',' apex studio 3 '),
	(258,'field',96,'en',' apex studio 9 1 recording studio 10 hour session from 220 per session engineer included hourly rate outside of session bookings 25 if you wish to work with us to produce an e p or album we are more than happy to work on a discounted price if you are a young new artist or band and are still looking to work with us please do get in touch and we can give you the best advice for your music journey opening hours and time slots are subject to availability free parking available at all times of the day apex studio 3 0 rehersal facilities 10 per hour if you book 3 hours you will get a discounted price depending on exact hours the booking entails i e 25 for 3 hours opening hours and time slots are subject to availability a member of staff will be there on the day of booking to help set things up free parking available at all times of the day '),
	(330,'field',84,'en',''),
	(330,'field',85,'en',''),
	(330,'field',86,'en',''),
	(330,'field',87,'en',''),
	(330,'slug',0,'en',''),
	(331,'field',83,'en',' apex studio 6 '),
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
	(333,'field',98,'en',' apex studio 3 '),
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
	(328,'field',107,'en',' willy '),
	(327,'slug',0,'en',''),
	(257,'field',1,'en',' get in touch if you d like to use any of our services '),
	(352,'field',91,'en',' pickups bg '),
	(327,'field',109,'en',' social media marketing management '),
	(327,'field',108,'en',' graham mckinstry '),
	(327,'field',107,'en',''),
	(326,'slug',0,'en',''),
	(326,'field',109,'en',' video photography '),
	(326,'field',108,'en',' dani rooney '),
	(325,'slug',0,'en',''),
	(326,'field',107,'en',' dani '),
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
	(325,'field',107,'en',' oran '),
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
	(74,'field',106,'en',' oran mcguckin oran owner creator dani rooney dani video photography graham mckinstry social media marketing management william martin willy workshop apprentice '),
	(343,'field',97,'en',' full guitar bass setup includes everything from a basic set up fret level fret crown fret polish from 70 '),
	(362,'title',0,'en',' apex home bg 1 '),
	(363,'field',47,'en',''),
	(363,'filename',0,'en',' apex studio 3 jpg '),
	(363,'extension',0,'en',' jpg '),
	(363,'kind',0,'en',' image '),
	(363,'slug',0,'en',' apex studio 3 '),
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
	(261,'field',2,'en',' our single coil pickups give your guitar the truest most open sound it will ever have bringing out tones you never thought you could hear from your guitar '),
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
	(381,'filename',0,'en',' bg texture b jpg '),
	(380,'kind',0,'en',' image '),
	(380,'extension',0,'en',' jpg '),
	(380,'filename',0,'en',' bg texture a jpg '),
	(422,'slug',0,'en',' tele style '),
	(380,'field',47,'en',''),
	(419,'slug',0,'en',' re fret '),
	(419,'title',0,'en',' re fret '),
	(419,'kind',0,'en',' image '),
	(419,'extension',0,'en',' jpg '),
	(414,'extension',0,'en',' jpg '),
	(414,'filename',0,'en',' dani jpg '),
	(414,'field',47,'en',''),
	(571,'slug',0,'en',''),
	(572,'field',124,'en',' apex 60s neck '),
	(419,'field',47,'en',''),
	(419,'filename',0,'en',' re fret jpg '),
	(377,'title',0,'en',' apex studio 7 '),
	(377,'kind',0,'en',' image '),
	(377,'slug',0,'en',' apex studio 7 '),
	(377,'extension',0,'en',' jpg '),
	(324,'field',110,'en',' 1 '),
	(2,'field',50,'en',' hero image '),
	(324,'slug',0,'en',''),
	(2,'field',51,'en',' larry page larry page happy lager delivered the most comprehensive strategy from a boutique company that i ve ever seen ryan reynolds ryan reynolds i don t know where to begin i can t recommend happy lager highly enough bob guff bob guff happy lager sells the good stuff '),
	(260,'field',41,'en',' oranmcguckin apexmusic co '),
	(381,'field',47,'en',''),
	(380,'slug',0,'en',' bg texture a '),
	(380,'title',0,'en',' bg texture a '),
	(324,'field',97,'en',' about apex lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(324,'field',98,'en',' apex studio 7 '),
	(74,'field',96,'en',' apex studio 7 1 about apex lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(323,'slug',0,'en',''),
	(323,'field',87,'en',' view '),
	(381,'slug',0,'en',' bg texture b '),
	(381,'extension',0,'en',' jpg '),
	(381,'kind',0,'en',' image '),
	(260,'slug',0,'en',''),
	(381,'title',0,'en',' bg texture b '),
	(258,'field',88,'en',' includefeed '),
	(323,'field',86,'en',''),
	(323,'field',85,'en',' test subtitle '),
	(384,'extension',0,'en',' png '),
	(384,'kind',0,'en',' image '),
	(384,'slug',0,'en',' concrete texture '),
	(384,'title',0,'en',' concrete texture '),
	(418,'title',0,'en',' fret level '),
	(418,'kind',0,'en',' image '),
	(418,'slug',0,'en',' fret level '),
	(418,'extension',0,'en',' jpg '),
	(2,'field',55,'en',' logo coke logo google logo jetblue logo mtv logo newbelgium '),
	(323,'field',84,'en',' test title '),
	(323,'field',83,'en',''),
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
	(384,'filename',0,'en',' concrete texture png '),
	(382,'field',47,'en',''),
	(382,'filename',0,'en',' bg texture c jpg '),
	(382,'extension',0,'en',' jpg '),
	(382,'kind',0,'en',' image '),
	(382,'slug',0,'en',' bg texture c '),
	(382,'title',0,'en',' bg texture c '),
	(383,'field',47,'en',''),
	(383,'filename',0,'en',' blog post 1 jpg '),
	(383,'extension',0,'en',' jpg '),
	(383,'kind',0,'en',' image '),
	(383,'slug',0,'en',' blog post 1 '),
	(383,'title',0,'en',' blog post 1 '),
	(384,'field',47,'en',''),
	(365,'filename',0,'en',' apex studio 8 jpg '),
	(370,'filename',0,'en',' apex studio 1 jpg '),
	(370,'field',47,'en',''),
	(369,'title',0,'en',' apex mountain '),
	(369,'slug',0,'en',' apex mountain '),
	(369,'kind',0,'en',' image '),
	(369,'extension',0,'en',' svg '),
	(369,'filename',0,'en',' apex mountain svg '),
	(369,'field',47,'en',''),
	(161,'field',8,'en',' we pride ourselves in our toned apps '),
	(161,'slug',0,'en',''),
	(162,'field',5,'en',' we ve been developing them libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facer possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut officiis debitis aut rerum quod maxime placeat facernecessitatibus '),
	(162,'slug',0,'en',''),
	(2,'field',82,'en',' pat view pickups pickups apex 50 s pat mcmanus view test subtitle test title '),
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
	(321,'field',103,'en',' workshop bg '),
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
	(343,'field',98,'en',' fret level '),
	(343,'field',110,'en',' 1 '),
	(343,'slug',0,'en',''),
	(344,'field',97,'en',' full re fret multiple types of fret wire available price will vary depending on fret wire type and for specific guitars from 120 '),
	(344,'field',98,'en',' re fret '),
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
	(342,'field',98,'en',' repair 1 '),
	(342,'field',110,'en',' 0 '),
	(342,'slug',0,'en',''),
	(364,'field',47,'en',''),
	(362,'slug',0,'en',' apex home bg 1 '),
	(362,'kind',0,'en',' image '),
	(362,'extension',0,'en',' jpg '),
	(362,'filename',0,'en',' apex home bg 1 jpg '),
	(362,'field',47,'en',''),
	(367,'kind',0,'en',' image '),
	(367,'field',47,'en',''),
	(367,'filename',0,'en',' about images 1 jpg '),
	(367,'extension',0,'en',' jpg '),
	(340,'slug',0,'en',''),
	(259,'field',91,'en',''),
	(259,'field',2,'en',' instrument repairs all the latest carry on form the apex team all killer no filler '),
	(259,'field',96,'en',' repair 1 0 basic guitar bass setup string change fretboard oil conditioned pots switches cleaned and lubricated solder points touched up action adjusted to make guitar bass have optimum playability intonation set tuners lubricated all around basic clean from 25 exc strings fret level 1 full guitar bass setup includes everything from a basic set up fret level fret crown fret polish from 70 re fret 0 full re fret multiple types of fret wire available price will vary depending on fret wire type and for specific guitars from 120 '),
	(259,'field',92,'en',' guitar only including strings 5 your choice of strings bass 1o string change this is a structural repair only any cosmetic repairs will be extra 60 headstock neck repair 8 hour live session shoot with full crew 4k 1199 package 1 8 hour live session shoot with full crew 4k 1199 package 1 '),
	(364,'title',0,'en',' apex studio 6 '),
	(364,'slug',0,'en',' apex studio 6 '),
	(364,'kind',0,'en',' image '),
	(364,'extension',0,'en',' jpg '),
	(364,'filename',0,'en',' apex studio 6 jpg '),
	(363,'title',0,'en',' apex studio 3 '),
	(366,'title',0,'en',' apex studio 9 '),
	(366,'slug',0,'en',' apex studio 9 '),
	(366,'kind',0,'en',' image '),
	(366,'extension',0,'en',' jpg '),
	(366,'filename',0,'en',' apex studio 9 jpg '),
	(366,'field',47,'en',''),
	(365,'title',0,'en',' apex studio 8 '),
	(365,'slug',0,'en',' apex studio 8 '),
	(365,'kind',0,'en',' image '),
	(365,'extension',0,'en',' jpg '),
	(365,'field',47,'en',''),
	(425,'field',2,'en',' the apex 34 s are the heritage of our range they demonstrate diversity to the fullest combining apex ingenuity with classic tone the 34 s are inspired by the original humbucking pickup and deliver a beautiful well rounded brown sound featuring a sparkling mid range that will cut through any mix or even live scenario they produce the meaty american tones that are expected and deliver a drive tone that will really bring the warmth to your sound as well as the grit the 34 s balance into any tone and really bring out the harmonic overtones that resonate from you and your axe '),
	(423,'title',0,'en',' twang city '),
	(424,'slug',0,'en',' twang cities '),
	(424,'title',0,'en',' twang city '),
	(425,'field',80,'en',' humbuckers '),
	(425,'field',15,'en',' humbucker cream '),
	(377,'filename',0,'en',' apex studio 7 jpg '),
	(377,'field',47,'en',''),
	(376,'title',0,'en',' apex studio 6 '),
	(376,'slug',0,'en',' apex studio 6 '),
	(376,'kind',0,'en',' image '),
	(376,'extension',0,'en',' png '),
	(376,'filename',0,'en',' apex studio 6 png '),
	(376,'field',47,'en',''),
	(568,'slug',0,'en',' apex 34s bridge '),
	(568,'title',0,'en',' apex 34s bridge '),
	(374,'title',0,'en',' apex studio 5 '),
	(374,'slug',0,'en',' apex studio 5 '),
	(374,'kind',0,'en',' image '),
	(374,'extension',0,'en',' jpg '),
	(374,'field',47,'en',''),
	(374,'filename',0,'en',' apex studio 5 jpg '),
	(373,'title',0,'en',' apex studio 4 '),
	(373,'slug',0,'en',' apex studio 4 '),
	(373,'kind',0,'en',' image '),
	(373,'extension',0,'en',' jpg '),
	(373,'filename',0,'en',' apex studio 4 jpg '),
	(373,'field',47,'en',''),
	(422,'title',0,'en',' tele style '),
	(423,'field',80,'en',' tele style '),
	(423,'field',15,'en',' tele brodge black '),
	(423,'field',2,'en',' our twang cities take on the form of the tele pickups that broke the scene in 1952 by changing the wire from 43awg to 42awg in 52 they gave the bridge pickup a brighter sound along with the help of the copper plate and leaving the neck under wound creating a strat type tone as our most versatile pickup these pickups are all your tele needs to handle anything from country to hard rock '),
	(423,'field',117,'en',' magnet type alnico 5 approximate resistance bridge 7 5k neck 5 5k '),
	(423,'field',121,'en',' 129 '),
	(423,'field',122,'en',' twang cities bridge twang cities bridge clean overdrive distortion twang cities bridge neck twang cities bridge neck clean overdrive distortion twang cities neck twang cities neck clean overdrive distortion '),
	(541,'field',47,'en',''),
	(541,'filename',0,'en',' next svg '),
	(541,'extension',0,'en',' svg '),
	(541,'kind',0,'en',' image '),
	(541,'slug',0,'en',' next '),
	(541,'title',0,'en',' next '),
	(423,'field',112,'en',' https www youtube com embed xgttwbttf5g video demo '),
	(423,'slug',0,'en',' twang cities '),
	(371,'title',0,'en',' apex studio 2 '),
	(371,'slug',0,'en',' apex studio 2 '),
	(371,'kind',0,'en',' image '),
	(371,'extension',0,'en',' jpg '),
	(371,'filename',0,'en',' apex studio 2 jpg '),
	(371,'field',47,'en',''),
	(370,'title',0,'en',' apex studio 1 '),
	(370,'slug',0,'en',' apex studio 1 '),
	(370,'kind',0,'en',' image '),
	(370,'extension',0,'en',' jpg '),
	(214,'field',8,'en',' simpler faster better '),
	(214,'slug',0,'en',''),
	(320,'field',104,'en',' sindustry standard recording rehearsal facilities coupled with professional photography and videography '),
	(320,'field',103,'en',' studio bg '),
	(320,'field',102,'en',' apex studio '),
	(547,'slug',0,'en',' shortcut '),
	(547,'title',0,'en',' shortcut '),
	(314,'slug',0,'en',''),
	(2,'field',99,'en',' apex home bg 1 '),
	(425,'field',117,'en',' magnet type alnico 2 approximate resistance bridge 7 5k neck 7k '),
	(314,'field',100,'en',' apex home bg 1 '),
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
	(350,'slug',0,'en',' introducing the team pete '),
	(418,'filename',0,'en',' fret level jpg '),
	(418,'field',47,'en',''),
	(417,'slug',0,'en',' repair 1 '),
	(417,'title',0,'en',' repair 1 '),
	(417,'kind',0,'en',' image '),
	(387,'field',47,'en',''),
	(387,'filename',0,'en',' hero logo png '),
	(387,'extension',0,'en',' png '),
	(387,'kind',0,'en',' image '),
	(387,'slug',0,'en',' hero logo '),
	(387,'title',0,'en',' hero logo '),
	(388,'field',47,'en',''),
	(388,'filename',0,'en',' hero logo svg '),
	(388,'extension',0,'en',' svg '),
	(388,'kind',0,'en',' image '),
	(388,'slug',0,'en',' hero logo '),
	(388,'title',0,'en',' hero logo '),
	(389,'field',47,'en',''),
	(389,'filename',0,'en',' menu logo png '),
	(389,'extension',0,'en',' png '),
	(389,'kind',0,'en',' image '),
	(389,'slug',0,'en',' menu logo '),
	(389,'title',0,'en',' menu logo '),
	(390,'field',47,'en',''),
	(390,'filename',0,'en',' menu logo svg '),
	(390,'extension',0,'en',' svg '),
	(390,'kind',0,'en',' image '),
	(390,'slug',0,'en',' menu logo '),
	(390,'title',0,'en',' menu logo '),
	(391,'field',47,'en',''),
	(391,'filename',0,'en',' mountain bg svg '),
	(391,'extension',0,'en',' svg '),
	(391,'kind',0,'en',' image '),
	(391,'slug',0,'en',' mountain bg '),
	(391,'title',0,'en',' mountain bg '),
	(392,'field',47,'en',''),
	(392,'filename',0,'en',' mountian light png '),
	(392,'extension',0,'en',' png '),
	(392,'kind',0,'en',' image '),
	(392,'slug',0,'en',' mountian light '),
	(392,'title',0,'en',' mountian light '),
	(393,'field',47,'en',''),
	(393,'filename',0,'en',' mountian light svg '),
	(393,'extension',0,'en',' svg '),
	(393,'kind',0,'en',' image '),
	(393,'slug',0,'en',' mountian light '),
	(393,'title',0,'en',' mountian light '),
	(414,'kind',0,'en',' image '),
	(414,'slug',0,'en',' dani '),
	(414,'title',0,'en',' dani '),
	(415,'field',47,'en',''),
	(415,'filename',0,'en',' oran jpg '),
	(395,'field',47,'en',''),
	(395,'filename',0,'en',' pat png '),
	(395,'extension',0,'en',' png '),
	(395,'kind',0,'en',' image '),
	(395,'slug',0,'en',' pat '),
	(395,'title',0,'en',' pat '),
	(396,'field',47,'en',''),
	(396,'filename',0,'en',' pickup index bg png '),
	(396,'extension',0,'en',' png '),
	(396,'kind',0,'en',' image '),
	(396,'slug',0,'en',' pickup index bg '),
	(396,'title',0,'en',' pickup index bg '),
	(397,'field',47,'en',''),
	(397,'filename',0,'en',' pickups bg png '),
	(397,'extension',0,'en',' png '),
	(397,'kind',0,'en',' image '),
	(397,'slug',0,'en',' pickups bg '),
	(397,'title',0,'en',' pickups bg '),
	(417,'extension',0,'en',' jpg '),
	(417,'filename',0,'en',' repair 1 jpg '),
	(417,'field',47,'en',''),
	(416,'title',0,'en',' willy '),
	(416,'slug',0,'en',' willy '),
	(416,'kind',0,'en',' image '),
	(416,'extension',0,'en',' jpg '),
	(416,'filename',0,'en',' willy jpg '),
	(400,'field',47,'en',''),
	(400,'filename',0,'en',' single coil cream jpg '),
	(400,'extension',0,'en',' jpg '),
	(400,'kind',0,'en',' image '),
	(400,'slug',0,'en',' single coil cream '),
	(400,'title',0,'en',' single coil cream '),
	(401,'field',47,'en',''),
	(401,'filename',0,'en',' slider holder png '),
	(401,'extension',0,'en',' png '),
	(401,'kind',0,'en',' image '),
	(401,'slug',0,'en',' slider holder '),
	(401,'title',0,'en',' slider holder '),
	(402,'field',47,'en',''),
	(402,'filename',0,'en',' studio bg png '),
	(402,'extension',0,'en',' png '),
	(402,'kind',0,'en',' image '),
	(402,'slug',0,'en',' studio bg '),
	(402,'title',0,'en',' studio bg '),
	(403,'field',47,'en',''),
	(403,'filename',0,'en',' team dani jpg '),
	(403,'extension',0,'en',' jpg '),
	(403,'kind',0,'en',' image '),
	(403,'slug',0,'en',' team dani '),
	(403,'title',0,'en',' team dani '),
	(404,'field',47,'en',''),
	(404,'filename',0,'en',' team dani png '),
	(404,'extension',0,'en',' png '),
	(404,'kind',0,'en',' image '),
	(404,'slug',0,'en',' team dani '),
	(404,'title',0,'en',' team dani '),
	(405,'field',47,'en',''),
	(405,'filename',0,'en',' team graham jpg '),
	(405,'extension',0,'en',' jpg '),
	(405,'kind',0,'en',' image '),
	(405,'slug',0,'en',' team graham '),
	(405,'title',0,'en',' team graham '),
	(406,'field',47,'en',''),
	(406,'filename',0,'en',' team oran jpg '),
	(406,'extension',0,'en',' jpg '),
	(406,'kind',0,'en',' image '),
	(406,'slug',0,'en',' team oran '),
	(406,'title',0,'en',' team oran '),
	(407,'field',47,'en',''),
	(407,'filename',0,'en',' team willy jpg '),
	(407,'extension',0,'en',' jpg '),
	(407,'kind',0,'en',' image '),
	(407,'slug',0,'en',' team willy '),
	(407,'title',0,'en',' team willy '),
	(408,'field',47,'en',''),
	(408,'filename',0,'en',' team willy png '),
	(408,'extension',0,'en',' png '),
	(408,'kind',0,'en',' image '),
	(408,'slug',0,'en',' team willy '),
	(408,'title',0,'en',' team willy '),
	(416,'field',47,'en',''),
	(415,'slug',0,'en',' oran '),
	(415,'title',0,'en',' oran '),
	(415,'kind',0,'en',' image '),
	(415,'extension',0,'en',' jpg '),
	(410,'field',47,'en',''),
	(410,'filename',0,'en',' workshop bg png '),
	(410,'extension',0,'en',' png '),
	(410,'kind',0,'en',' image '),
	(410,'slug',0,'en',' workshop bg '),
	(410,'title',0,'en',' workshop bg '),
	(425,'slug',0,'en',' 34s '),
	(425,'title',0,'en',' apex 34 s '),
	(426,'field',80,'en',' strat style '),
	(426,'field',15,'en',' single coil white '),
	(426,'field',2,'en',' the apex 60 s s type pickups offer a range of classic styled tones ranging from creamy neck jazz tones to sizzling hot vintage blues tones and everything in between these pickups are expertly balanced and offer a wide array of diverse tones and endless response harmonically and dynamically the pickups are perfected to the point of consistency across the 5 way selector switch without having too much high end rendering it thin or too much low end rendering it muddy they have optimum clarity for that original classic tone '),
	(426,'field',117,'en',' magent type alnico 5 approximate resistance bridge 6k middle 5 7k neck 5 7k '),
	(426,'field',121,'en',' 139 '),
	(426,'field',122,'en',' apex 60s bridge apex 60 s bridge clean overdriven distortion apex 60s bridge middle apex 60 s bridge middle clean overdriven distortion apex 60s middle apex 60 s middle clean overdriven distortion apex 60s middle neck apex 60 s middle neck clean overdriven distortion apex 60s neck apex 60 s neck clean overdriven distortion '),
	(531,'field',124,'en',' apex 60s bridge '),
	(531,'field',125,'en',' apex 60 s bridge clean overdriven distortion '),
	(531,'slug',0,'en',''),
	(580,'slug',0,'en',''),
	(581,'field',124,'en',' apex 60s middle '),
	(581,'field',125,'en',' texas modern middle clean overdrive distortion '),
	(581,'slug',0,'en',''),
	(582,'field',124,'en',' apex 60s middle neck '),
	(582,'field',125,'en',' texas modern middle neck clean overdrive distortion '),
	(426,'slug',0,'en',' apex 60s '),
	(426,'title',0,'en',' apex 60 s '),
	(427,'field',80,'en',' humbuckers '),
	(427,'field',15,'en',' humbucker black and white '),
	(427,'field',2,'en',' here at apex pickups the apex isn t only the top it s the standard our standard humbucker is our bread and butter for your rock to blues to metal tones the standard has a crisp crunch tone and sustain that really holds on for dear life the pickup really demonstrates our love for resonance and harmonic content by featuring a diverse and dynamic sound when clean the standard shows off its balanced well rounded sound by delivering a solid and full tone '),
	(427,'field',117,'en',' magnet type alnico 2 approximate resistance 18k '),
	(427,'field',121,'en',' 165 '),
	(427,'field',122,'en',' standard clean apex standard clean standard overdrive apex standard overdrive standard distortion apex standard distortion '),
	(427,'field',112,'en',' https www youtube com embed l4omvszt3uy '),
	(547,'field',47,'en',''),
	(547,'filename',0,'en',' shortcut png '),
	(427,'slug',0,'en',' standard '),
	(427,'title',0,'en',' apex standard humbucker '),
	(428,'field',80,'en',' strat style '),
	(428,'field',15,'en',' single coil black '),
	(428,'field',2,'en',' the apex texas moderns encapsulate the modern s type player taking the s type tone to its peak bringing in the hot over wound vibrancy that countless players are known for the texas moderns deliver a well balanced robust sound at apex pickups we go through a series of procedures to ensure when played they squeeze every last ounce of tone out of you and your guitar the moderns ensure a sparkling clean sound with unhindered harmonic response reading out at around 6 6k these pickups will give you a full clear clean sound and a dirty sound you just can t argue with '),
	(428,'field',117,'en',' magnet type alnico 5 approximate resistance bridge 6 6k middle 6 4k neck 6 6k '),
	(428,'field',121,'en',' 139 '),
	(428,'field',122,'en',' texas modern bridge texas modern bridge clean overdrive distortion apex 60s bridge middle texas modern bridge middle clean overdrive distortion apex 60s middle texas modern middle clean overdrive distortion apex 60s middle neck texas modern middle neck clean overdrive distortion apex 60s neck texas modern neck clean overdrive distortion '),
	(428,'field',112,'en',' https www youtube com embed suebmkv1oeq '),
	(544,'extension',0,'en',' svg '),
	(544,'kind',0,'en',' image '),
	(544,'slug',0,'en',' play '),
	(544,'title',0,'en',' play '),
	(545,'field',47,'en',''),
	(545,'filename',0,'en',' previous svg '),
	(545,'extension',0,'en',' svg '),
	(545,'kind',0,'en',' image '),
	(545,'slug',0,'en',' previous '),
	(545,'title',0,'en',' previous '),
	(546,'field',47,'en',''),
	(428,'slug',0,'en',' texas modern '),
	(428,'title',0,'en',' texas modern '),
	(429,'slug',0,'en',' texas modern '),
	(429,'title',0,'en',' texas modern '),
	(430,'slug',0,'en',' standard '),
	(430,'title',0,'en',' standard '),
	(431,'slug',0,'en',' apex 60s '),
	(431,'title',0,'en',' apex 60s '),
	(432,'slug',0,'en',' apex 34s '),
	(432,'title',0,'en',' apex 34s '),
	(433,'slug',0,'en',' humbuckers '),
	(433,'title',0,'en',' humbuckers '),
	(434,'field',47,'en',''),
	(434,'filename',0,'en',' standard clean mp3 '),
	(434,'extension',0,'en',' mp3 '),
	(434,'kind',0,'en',' audio '),
	(434,'slug',0,'en',' standard clean '),
	(434,'title',0,'en',' standard clean '),
	(435,'field',47,'en',''),
	(435,'filename',0,'en',' standard dist mp3 '),
	(435,'extension',0,'en',' mp3 '),
	(435,'kind',0,'en',' audio '),
	(435,'slug',0,'en',' standard dist '),
	(435,'title',0,'en',' standard distortion '),
	(436,'field',47,'en',''),
	(436,'filename',0,'en',' standard od mp3 '),
	(436,'extension',0,'en',' mp3 '),
	(436,'kind',0,'en',' audio '),
	(436,'slug',0,'en',' standard od '),
	(436,'title',0,'en',' standard overdrive '),
	(546,'title',0,'en',' shortcut apple '),
	(546,'kind',0,'en',' image '),
	(546,'slug',0,'en',' shortcut apple '),
	(546,'extension',0,'en',' png '),
	(546,'filename',0,'en',' shortcut apple png '),
	(578,'field',125,'en',' apex standard distortion '),
	(578,'slug',0,'en',''),
	(440,'field',47,'en',''),
	(440,'filename',0,'en',' humbucker cream and black jpg '),
	(440,'extension',0,'en',' jpg '),
	(440,'kind',0,'en',' image '),
	(440,'slug',0,'en',' humbucker cream and black '),
	(440,'title',0,'en',' humbucker cream and black '),
	(441,'field',47,'en',''),
	(441,'filename',0,'en',' tele bridge jpg '),
	(441,'extension',0,'en',' jpg '),
	(441,'kind',0,'en',' image '),
	(441,'slug',0,'en',' tele bridge '),
	(441,'title',0,'en',' tele bridge '),
	(540,'slug',0,'en',' error page '),
	(540,'title',0,'en',' error page '),
	(540,'kind',0,'en',' image '),
	(540,'extension',0,'en',' png '),
	(540,'filename',0,'en',' error page png '),
	(540,'field',47,'en',''),
	(538,'filename',0,'en',' twang cities n od mp3 '),
	(538,'extension',0,'en',' mp3 '),
	(538,'kind',0,'en',' audio '),
	(538,'slug',0,'en',' twang cities n od '),
	(538,'title',0,'en',' twang cities n od '),
	(539,'field',47,'en',''),
	(539,'filename',0,'en',' candle 535149_1920 jpg '),
	(539,'extension',0,'en',' jpg '),
	(539,'kind',0,'en',' image '),
	(539,'slug',0,'en',' candle 535149 1920 '),
	(539,'title',0,'en',' candle 535149 1920 '),
	(548,'field',47,'en',''),
	(548,'filename',0,'en',' religion 864393_1920 jpg '),
	(580,'field',124,'en',' apex 60s bridge middle '),
	(447,'field',47,'en',''),
	(447,'filename',0,'en',' tele brodge black jpg '),
	(447,'extension',0,'en',' jpg '),
	(447,'kind',0,'en',' image '),
	(447,'slug',0,'en',' tele brodge black '),
	(447,'title',0,'en',' tele brodge black '),
	(448,'field',47,'en',''),
	(448,'filename',0,'en',' humbucker black and white jpg '),
	(448,'extension',0,'en',' jpg '),
	(448,'kind',0,'en',' image '),
	(448,'slug',0,'en',' humbucker black and white '),
	(448,'title',0,'en',' humbucker black and white '),
	(449,'field',47,'en',''),
	(449,'filename',0,'en',' humbucker cream jpg '),
	(449,'extension',0,'en',' jpg '),
	(449,'kind',0,'en',' image '),
	(449,'slug',0,'en',' humbucker cream '),
	(449,'title',0,'en',' humbucker cream '),
	(450,'field',47,'en',''),
	(450,'filename',0,'en',' single coil white jpg '),
	(450,'extension',0,'en',' jpg '),
	(450,'kind',0,'en',' image '),
	(450,'slug',0,'en',' single coil white '),
	(450,'title',0,'en',' single coil white '),
	(451,'field',47,'en',''),
	(451,'filename',0,'en',' single coil black jpg '),
	(451,'extension',0,'en',' jpg '),
	(451,'kind',0,'en',' image '),
	(451,'slug',0,'en',' single coil black '),
	(451,'title',0,'en',' single coil black '),
	(578,'field',124,'en',' standard distortion '),
	(576,'field',124,'en',' standard clean '),
	(576,'field',125,'en',' apex standard clean '),
	(576,'slug',0,'en',''),
	(577,'field',124,'en',' standard overdrive '),
	(577,'field',125,'en',' apex standard overdrive '),
	(577,'slug',0,'en',''),
	(455,'field',118,'en',' magent type alnico 5 '),
	(455,'field',119,'en',' approximate resistance bridge 6k middle 5 7k neck 5 7k '),
	(455,'slug',0,'en',''),
	(456,'field',47,'en',''),
	(456,'filename',0,'en',' humbucker white jpg '),
	(456,'extension',0,'en',' jpg '),
	(456,'kind',0,'en',' image '),
	(456,'slug',0,'en',' humbucker white '),
	(456,'title',0,'en',' humbucker white '),
	(457,'field',118,'en',' magnet type alnico 2 '),
	(457,'field',119,'en',' approximate resistance 18k '),
	(457,'slug',0,'en',''),
	(568,'kind',0,'en',' audio '),
	(568,'extension',0,'en',' mp3 '),
	(568,'filename',0,'en',' apex 34s bridge mp3 '),
	(568,'field',47,'en',''),
	(567,'slug',0,'en',' apex 34s neck '),
	(567,'title',0,'en',' apex 34s neck '),
	(567,'kind',0,'en',' audio '),
	(567,'extension',0,'en',' mp3 '),
	(567,'filename',0,'en',' apex 34s neck mp3 '),
	(567,'field',47,'en',''),
	(566,'title',0,'en',' apex 50s bridge '),
	(566,'slug',0,'en',' apex 50s bridge '),
	(566,'kind',0,'en',' audio '),
	(566,'extension',0,'en',' mp3 '),
	(566,'filename',0,'en',' apex 50s bridge mp3 '),
	(566,'field',47,'en',''),
	(565,'title',0,'en',' apex 50s bridge middle '),
	(565,'slug',0,'en',' apex 50s bridge middle '),
	(565,'kind',0,'en',' audio '),
	(565,'extension',0,'en',' mp3 '),
	(565,'filename',0,'en',' apex 50s bridge middle mp3 '),
	(565,'field',47,'en',''),
	(564,'slug',0,'en',' apex 50s middle '),
	(564,'title',0,'en',' apex 50s middle '),
	(564,'kind',0,'en',' audio '),
	(564,'extension',0,'en',' mp3 '),
	(564,'filename',0,'en',' apex 50s middle mp3 '),
	(564,'field',47,'en',''),
	(563,'title',0,'en',' apex 50s middle neck '),
	(563,'slug',0,'en',' apex 50s middle neck '),
	(563,'kind',0,'en',' audio '),
	(563,'extension',0,'en',' mp3 '),
	(563,'filename',0,'en',' apex 50s middle neck mp3 '),
	(563,'field',47,'en',''),
	(562,'slug',0,'en',' apex 50s neck '),
	(562,'title',0,'en',' apex 50s neck '),
	(562,'kind',0,'en',' audio '),
	(562,'extension',0,'en',' mp3 '),
	(562,'filename',0,'en',' apex 50s neck mp3 '),
	(562,'field',47,'en',''),
	(561,'title',0,'en',' apex 60s bridge '),
	(561,'slug',0,'en',' apex 60s bridge '),
	(561,'kind',0,'en',' audio '),
	(561,'extension',0,'en',' mp3 '),
	(561,'filename',0,'en',' apex 60s bridge mp3 '),
	(561,'field',47,'en',''),
	(560,'title',0,'en',' apex 60s bridge middle '),
	(560,'slug',0,'en',' apex 60s bridge middle '),
	(560,'kind',0,'en',' audio '),
	(560,'extension',0,'en',' mp3 '),
	(560,'filename',0,'en',' apex 60s bridge middle mp3 '),
	(560,'field',47,'en',''),
	(559,'title',0,'en',' apex 60s middle '),
	(559,'slug',0,'en',' apex 60s middle '),
	(559,'kind',0,'en',' audio '),
	(559,'extension',0,'en',' mp3 '),
	(559,'filename',0,'en',' apex 60s middle mp3 '),
	(559,'field',47,'en',''),
	(558,'slug',0,'en',' apex 60s middle neck '),
	(558,'title',0,'en',' apex 60s middle neck '),
	(558,'kind',0,'en',' audio '),
	(558,'extension',0,'en',' mp3 '),
	(558,'filename',0,'en',' apex 60s middle neck mp3 '),
	(558,'field',47,'en',''),
	(557,'title',0,'en',' apex 60s neck '),
	(557,'slug',0,'en',' apex 60s neck '),
	(557,'kind',0,'en',' audio '),
	(557,'extension',0,'en',' mp3 '),
	(557,'filename',0,'en',' apex 60s neck mp3 '),
	(557,'field',47,'en',''),
	(556,'title',0,'en',' texas modern bridge '),
	(556,'slug',0,'en',' texas modern bridge '),
	(556,'kind',0,'en',' audio '),
	(556,'extension',0,'en',' mp3 '),
	(556,'filename',0,'en',' texas modern bridge mp3 '),
	(556,'field',47,'en',''),
	(555,'title',0,'en',' texas modern bridge middle '),
	(555,'slug',0,'en',' texas modern bridge middle '),
	(555,'kind',0,'en',' audio '),
	(555,'extension',0,'en',' mp3 '),
	(555,'filename',0,'en',' texas modern bridge middle mp3 '),
	(555,'field',47,'en',''),
	(554,'title',0,'en',' texas modern middle '),
	(554,'slug',0,'en',' texas modern middle '),
	(554,'extension',0,'en',' mp3 '),
	(554,'kind',0,'en',' audio '),
	(554,'filename',0,'en',' texas modern middle mp3 '),
	(554,'field',47,'en',''),
	(553,'title',0,'en',' texas modern middle neck '),
	(553,'slug',0,'en',' texas modern middle neck '),
	(553,'kind',0,'en',' audio '),
	(553,'extension',0,'en',' mp3 '),
	(553,'filename',0,'en',' texas modern middle neck mp3 '),
	(553,'field',47,'en',''),
	(552,'title',0,'en',' texas modern neck '),
	(552,'slug',0,'en',' texas modern neck '),
	(552,'kind',0,'en',' audio '),
	(488,'field',47,'en',''),
	(488,'filename',0,'en',' tex mod b clean mp3 '),
	(488,'extension',0,'en',' mp3 '),
	(488,'kind',0,'en',' audio '),
	(488,'slug',0,'en',' tex mod b clean '),
	(488,'title',0,'en',' texas modern bridge clean '),
	(489,'field',47,'en',''),
	(489,'filename',0,'en',' tex mod b dist mp3 '),
	(489,'extension',0,'en',' mp3 '),
	(489,'kind',0,'en',' audio '),
	(489,'slug',0,'en',' tex mod b dist '),
	(489,'title',0,'en',' texas modern bridge distortion '),
	(490,'field',47,'en',''),
	(490,'filename',0,'en',' tex mod b od mp3 '),
	(490,'extension',0,'en',' mp3 '),
	(490,'kind',0,'en',' audio '),
	(490,'slug',0,'en',' tex mod b od '),
	(490,'title',0,'en',' texas modern bridge overdrive '),
	(491,'field',47,'en',''),
	(491,'filename',0,'en',' tex mod b_m clean mp3 '),
	(491,'extension',0,'en',' mp3 '),
	(491,'kind',0,'en',' audio '),
	(491,'slug',0,'en',' tex mod b m clean '),
	(491,'title',0,'en',' texas modern bridge middle clean '),
	(492,'field',47,'en',''),
	(492,'filename',0,'en',' tex mod b_m dist mp3 '),
	(492,'extension',0,'en',' mp3 '),
	(492,'kind',0,'en',' audio '),
	(492,'slug',0,'en',' tex mod b m dist '),
	(492,'title',0,'en',' texas modern bridge middle distortion '),
	(493,'field',47,'en',''),
	(493,'filename',0,'en',' tex mod b_m od mp3 '),
	(493,'extension',0,'en',' mp3 '),
	(493,'kind',0,'en',' audio '),
	(493,'slug',0,'en',' tex mod b m od '),
	(493,'title',0,'en',' texas modern bridge middle overdrive '),
	(494,'field',47,'en',''),
	(494,'filename',0,'en',' tex mod m clean mp3 '),
	(494,'extension',0,'en',' mp3 '),
	(494,'kind',0,'en',' audio '),
	(494,'slug',0,'en',' tex mod m clean '),
	(494,'title',0,'en',' texas modern middle clean '),
	(495,'field',47,'en',''),
	(495,'filename',0,'en',' tex mod m dist mp3 '),
	(495,'extension',0,'en',' mp3 '),
	(495,'kind',0,'en',' audio '),
	(495,'slug',0,'en',' tex mod m dist '),
	(495,'title',0,'en',' texas modern middle distortion '),
	(496,'field',47,'en',''),
	(496,'filename',0,'en',' tex mod m od mp3 '),
	(496,'extension',0,'en',' mp3 '),
	(496,'kind',0,'en',' audio '),
	(496,'slug',0,'en',' tex mod m od '),
	(496,'title',0,'en',' texas modern middle overdrive '),
	(497,'field',47,'en',''),
	(497,'filename',0,'en',' tex mod m_n clean mp3 '),
	(497,'extension',0,'en',' mp3 '),
	(497,'kind',0,'en',' audio '),
	(497,'slug',0,'en',' tex mod m n clean '),
	(497,'title',0,'en',' texas modern middle neck clean '),
	(498,'field',47,'en',''),
	(498,'filename',0,'en',' tex mod m_n dist mp3 '),
	(498,'extension',0,'en',' mp3 '),
	(498,'kind',0,'en',' audio '),
	(498,'slug',0,'en',' tex mod m n dist '),
	(498,'title',0,'en',' texas modern middle neck distortion '),
	(499,'field',47,'en',''),
	(499,'filename',0,'en',' tex mod m_n od mp3 '),
	(499,'extension',0,'en',' mp3 '),
	(499,'kind',0,'en',' audio '),
	(499,'slug',0,'en',' tex mod m n od '),
	(499,'title',0,'en',' texas modern middle neck overdrive '),
	(500,'field',47,'en',''),
	(500,'filename',0,'en',' tex mod n clean mp3 '),
	(500,'extension',0,'en',' mp3 '),
	(500,'kind',0,'en',' audio '),
	(500,'slug',0,'en',' tex mod n clean '),
	(500,'title',0,'en',' texas modern neck clean '),
	(501,'field',47,'en',''),
	(501,'filename',0,'en',' tex mod n dist mp3 '),
	(501,'extension',0,'en',' mp3 '),
	(501,'kind',0,'en',' audio '),
	(501,'slug',0,'en',' tex mod n dist '),
	(501,'title',0,'en',' texas modern neck distortion '),
	(502,'field',47,'en',''),
	(502,'filename',0,'en',' tex mod n od mp3 '),
	(502,'extension',0,'en',' mp3 '),
	(502,'kind',0,'en',' audio '),
	(502,'slug',0,'en',' tex mod n od '),
	(502,'title',0,'en',' texas modern neck overdrive '),
	(503,'field',118,'en',' magnet type alnico 5 '),
	(503,'field',119,'en',' approximate resistance bridge 6 6k middle 6 4k neck 6 6k '),
	(503,'slug',0,'en',''),
	(544,'filename',0,'en',' play svg '),
	(542,'filename',0,'en',' pause svg '),
	(542,'extension',0,'en',' svg '),
	(542,'kind',0,'en',' image '),
	(542,'slug',0,'en',' pause '),
	(542,'title',0,'en',' pause '),
	(543,'field',47,'en',''),
	(543,'filename',0,'en',' paypal logo png '),
	(543,'extension',0,'en',' png '),
	(543,'kind',0,'en',' image '),
	(543,'slug',0,'en',' paypal logo '),
	(543,'title',0,'en',' paypal logo '),
	(544,'field',47,'en',''),
	(542,'field',47,'en',''),
	(548,'extension',0,'en',' jpg '),
	(548,'kind',0,'en',' image '),
	(548,'slug',0,'en',' religion 864393 1920 '),
	(548,'title',0,'en',' religion 864393 1920 '),
	(571,'field',125,'en',' apex 60 s middle neck clean overdriven distortion '),
	(571,'field',124,'en',' apex 60s middle neck '),
	(570,'slug',0,'en',''),
	(570,'field',125,'en',' apex 60 s middle clean overdriven distortion '),
	(569,'slug',0,'en',''),
	(570,'field',124,'en',' apex 60s middle '),
	(569,'field',125,'en',' apex 60 s bridge middle clean overdriven distortion '),
	(569,'field',124,'en',' apex 60s bridge middle '),
	(510,'field',118,'en',' magnet type alnico 2 '),
	(510,'field',119,'en',' approximate resistance bridge 7 5k neck 7k '),
	(510,'slug',0,'en',''),
	(511,'field',47,'en',''),
	(511,'filename',0,'en',' twang cities b clean mp3 '),
	(511,'extension',0,'en',' mp3 '),
	(511,'kind',0,'en',' audio '),
	(511,'slug',0,'en',' twang cities b clean '),
	(511,'title',0,'en',' twang cities bridge clean '),
	(512,'field',47,'en',''),
	(512,'filename',0,'en',' twang cities b dist mp3 '),
	(512,'extension',0,'en',' mp3 '),
	(512,'kind',0,'en',' audio '),
	(512,'slug',0,'en',' twang cities b dist '),
	(512,'title',0,'en',' twang cities bridge distortion '),
	(513,'field',47,'en',''),
	(513,'filename',0,'en',' twang cities b od mp3 '),
	(513,'extension',0,'en',' mp3 '),
	(513,'kind',0,'en',' audio '),
	(513,'slug',0,'en',' twang cities b od '),
	(513,'title',0,'en',' twang cities bridge overdrive '),
	(514,'field',47,'en',''),
	(514,'filename',0,'en',' twang cities b_n clean mp3 '),
	(514,'extension',0,'en',' mp3 '),
	(514,'kind',0,'en',' audio '),
	(514,'slug',0,'en',' twang cities b n clean '),
	(514,'title',0,'en',' twang cities bridge neck clean '),
	(515,'field',47,'en',''),
	(515,'filename',0,'en',' twang cities b_n dist mp3 '),
	(515,'extension',0,'en',' mp3 '),
	(515,'kind',0,'en',' audio '),
	(515,'slug',0,'en',' twang cities b n dist '),
	(515,'title',0,'en',' twang cities bridge neck distortion '),
	(516,'field',47,'en',''),
	(516,'filename',0,'en',' twang cities b_n od mp3 '),
	(516,'extension',0,'en',' mp3 '),
	(516,'kind',0,'en',' audio '),
	(516,'slug',0,'en',' twang cities b n od '),
	(516,'title',0,'en',' twang cities bridge neck overdrive '),
	(517,'field',47,'en',''),
	(517,'filename',0,'en',' twang cities n clean mp3 '),
	(517,'extension',0,'en',' mp3 '),
	(517,'kind',0,'en',' audio '),
	(517,'slug',0,'en',' twang cities n clean '),
	(517,'title',0,'en',' twang cities neck clean '),
	(518,'field',47,'en',''),
	(518,'filename',0,'en',' twang cities n dist mp3 '),
	(518,'extension',0,'en',' mp3 '),
	(518,'kind',0,'en',' audio '),
	(518,'slug',0,'en',' twang cities n dist '),
	(518,'title',0,'en',' twang cities neck distortion '),
	(579,'field',124,'en',' texas modern bridge '),
	(579,'field',125,'en',' texas modern bridge clean overdrive distortion '),
	(520,'field',118,'en',' magnet type alnico 5 '),
	(520,'field',119,'en',' approximate resistance bridge 7 5k neck 5 5k '),
	(520,'slug',0,'en',''),
	(551,'slug',0,'en',' twang cities bridge '),
	(551,'title',0,'en',' twang cities bridge '),
	(552,'field',47,'en',''),
	(552,'filename',0,'en',' texas modern neck mp3 '),
	(262,'field',112,'en',' https www youtube com embed e19h2bpkxyy '),
	(523,'field',113,'en',''),
	(523,'field',114,'en',' https www youtube com embed e19h2bpkxyy '),
	(523,'slug',0,'en',''),
	(426,'field',112,'en',' https www youtube com embed w1ojppwt2c apex 60 s video demo '),
	(549,'field',47,'en',''),
	(549,'filename',0,'en',' twang cities neck mp3 '),
	(549,'extension',0,'en',' mp3 '),
	(549,'kind',0,'en',' audio '),
	(549,'slug',0,'en',' twang cities neck '),
	(549,'title',0,'en',' twang cities neck '),
	(582,'slug',0,'en',''),
	(583,'field',124,'en',' apex 60s neck '),
	(583,'field',125,'en',' texas modern neck clean overdrive distortion '),
	(583,'slug',0,'en',''),
	(584,'field',124,'en',' apex 34s bridge '),
	(584,'field',125,'en',' apex 34 s bridge clean overdrive distortion '),
	(584,'slug',0,'en',''),
	(585,'field',124,'en',' apex 34s neck '),
	(585,'field',125,'en',' apex 34 s neck clean overdrive distortion '),
	(585,'slug',0,'en',''),
	(586,'field',124,'en',' twang cities bridge '),
	(586,'field',125,'en',' twang cities bridge clean overdrive distortion '),
	(586,'slug',0,'en',''),
	(587,'field',124,'en',' twang cities bridge neck '),
	(587,'field',125,'en',' twang cities bridge neck clean overdrive distortion '),
	(587,'slug',0,'en',''),
	(588,'field',124,'en',' twang cities neck '),
	(588,'field',125,'en',' twang cities neck clean overdrive distortion '),
	(588,'slug',0,'en',''),
	(589,'field',124,'en',' apex 50s bridge '),
	(589,'field',125,'en',' apex 50 s bridge clean overdrive distortion '),
	(589,'slug',0,'en',''),
	(590,'field',124,'en',' apex 50s bridge middle '),
	(590,'field',125,'en',' apex 50 s bridge middle clean overdrive distortion '),
	(590,'slug',0,'en',''),
	(591,'field',124,'en',' apex 50s middle '),
	(591,'field',125,'en',' apex 50 s middle clean overdrive distortion '),
	(591,'slug',0,'en',''),
	(592,'field',124,'en',' apex 60s middle neck '),
	(592,'field',125,'en',' apex 50 s middle neck clean overdrive distortion '),
	(592,'slug',0,'en',''),
	(593,'field',124,'en',' apex 50s neck '),
	(593,'field',125,'en',' apex 50 s neck clean overdrive distortion '),
	(593,'slug',0,'en',''),
	(594,'field',113,'en',' video demo '),
	(594,'field',114,'en',' https www youtube com embed xgttwbttf5g '),
	(594,'slug',0,'en',''),
	(595,'field',113,'en',' apex 60 s video demo '),
	(595,'field',114,'en',' https www youtube com embed w1ojppwt2c '),
	(595,'slug',0,'en',''),
	(596,'field',113,'en',''),
	(596,'field',114,'en',' https www youtube com embed l4omvszt3uy '),
	(596,'slug',0,'en',''),
	(597,'field',113,'en',''),
	(597,'field',114,'en',' https www youtube com embed suebmkv1oeq '),
	(597,'slug',0,'en',''),
	(598,'field',113,'en',''),
	(598,'field',114,'en',' https www youtube com embed ta3fo7fprl4 '),
	(598,'slug',0,'en',''),
	(599,'slug',0,'en',' privacy policy '),
	(599,'title',0,'en',' privacy policy '),
	(599,'field',4,'en',''),
	(599,'field',2,'en',' effective date august 18 2018 apex music us we or our operates the http apexmusic co website the service this page informs you of our policies regarding the collection use and disclosure of personal data when you use our service and the choices you have associated with that data we use your data to provide and improve the service by using the service you agree to the collection and use of information in accordance with this policy unless otherwise defined in this privacy policy terms used in this privacy policy have the same meanings as in our terms and conditions accessible from http apexmusic co information collection and use we collect several different types of information for various purposes to provide and improve our service to you types of data collected personal data while using our service we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you personal data personally identifiable information may include but is not limited to email address first name and last name cookies and usage data usage data we may also collect information how the service is accessed and used usage data this usage data may include information such as your computer s internet protocol address e g ip address browser type browser version the pages of our service that you visit the time and date of your visit the time spent on those pages unique device identifiers and other diagnostic data tracking cookies data we use cookies and similar tracking technologies to track the activity on our service and hold certain information cookies are files with small amount of data which may include an anonymous unique identifier cookies are sent to your browser from a website and stored on your device tracking technologies also used are beacons tags and scripts to collect and track information and to improve and analyze our service you can instruct your browser to refuse all cookies or to indicate when a cookie is being sent however if you do not accept cookies you may not be able to use some portions of our service examples of cookies we use session cookies we use session cookies to operate our service preference cookies we use preference cookies to remember your preferences and various settings security cookies we use security cookies for security purposes use of data apex music uses the collected data for various purposes to provide and maintain the service to notify you about changes to our service to allow you to participate in interactive features of our service when you choose to do so to provide customer care and support to provide analysis or valuable information so that we can improve the service to monitor the usage of the service to detect prevent and address technical issues transfer of data your information including personal data may be transferred to and maintained on computers located outside of your state province country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction if you are located outside united kingdom and choose to provide information to us please note that we transfer the data including personal data to united kingdom and process it there your consent to this privacy policy followed by your submission of such information represents your agreement to that transfer apex music will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this privacy policy and no transfer of your personal data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information disclosure of data legal requirements apex music may disclose your personal data in the good faith belief that such action is necessary to to comply with a legal obligation to protect and defend the rights or property of apex music to prevent or investigate possible wrongdoing in connection with the service to protect the personal safety of users of the service or the public to protect against legal liability security of data the security of your data is important to us but remember that no method of transmission over the internet or method of electronic storage is 100% secure while we strive to use commercially acceptable means to protect your personal data we cannot guarantee its absolute security service providers we may employ third party companies and individuals to facilitate our service service providers to provide the service on our behalf to perform service related services or to assist us in analyzing how our service is used these third parties have access to your personal data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose analytics we may use third party service providers to monitor and analyze the use of our service google analytics google analytics is a web analytics service offered by google that tracks and reports website traffic google uses the data collected to track and monitor the use of our service this data is shared with other google services google may use the collected data to contextualize and personalize the ads of its own advertising network you can opt out of having made your activity on the service available to google analytics by installing the google analytics opt out browser add on the add on prevents the google analytics javascript ga js analytics js and dc js from sharing information with google analytics about visits activity for more information on the privacy practices of google please visit the google privacy terms web page https policies google com privacy hl=en links to other sites our service may contain links to other sites that are not operated by us if you click on a third party link you will be directed to that third party s site we strongly advise you to review the privacy policy of every site you visit we have no control over and assume no responsibility for the content privacy policies or practices of any third party sites or services children s privacy our service does not address anyone under the age of 18 children we do not knowingly collect personally identifiable information from anyone under the age of 18 if you are a parent or guardian and you are aware that your children has provided us with personal data please contact us if we become aware that we have collected personal data from children without verification of parental consent we take steps to remove that information from our servers changes to this privacy policy we may update our privacy policy from time to time we will notify you of any changes by posting the new privacy policy on this page we will let you know via email and or a prominent notice on our service prior to the change becoming effective and update the effective date at the top of this privacy policy you are advised to review this privacy policy periodically for any changes changes to this privacy policy are effective when they are posted on this page contact us if you have any questions about this privacy policy please contact us by email oranmcguckin apexmusic co ');

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
	(2,NULL,'Blog','blog','channel',1,'blog/_entry',1,'2014-07-29 18:21:35','2018-07-21 21:05:04','f5969f9a-8d3f-487e-9695-cc4e5fbe5efd'),
	(4,NULL,'About','about','single',1,'about',1,'2014-09-17 01:15:20','2014-09-17 01:15:20','1a1f289d-3e32-4409-bfb2-03ec7e7d1b81'),
	(9,NULL,'Contact','contact','single',1,'contact',1,'2018-06-24 18:35:19','2018-06-24 18:35:19','5d17a868-d063-4ca9-95a6-825160764869'),
	(10,NULL,'Apex Studio','apexStudio','single',1,'apex-studio',1,'2018-06-24 18:35:36','2018-06-24 18:35:36','9d9a97cc-1b33-4e0f-b3c4-50179184d4d4'),
	(11,NULL,'Instrument Repairs','instrumentRepairs','single',1,'instrument-repairs',1,'2018-06-24 18:36:23','2018-06-24 18:36:23','e77f3b61-98af-423f-9bbb-cded4b717460'),
	(12,NULL,'Pickups','pickups','channel',1,'pickups/_entry',1,'2018-07-05 19:59:50','2018-07-05 19:59:50','28a51752-06d0-43f1-9ad1-08f66050b5a6'),
	(13,NULL,'Privacy Policy','privacyPolicy','single',1,'page-single',1,'2018-08-18 13:59:52','2018-08-18 14:44:10','3a9cbd65-8c71-46a5-830c-5ed1240b5364');

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
	(12,12,'en',1,'pickups/{slug}',NULL,'2018-07-05 19:59:50','2018-07-05 19:59:50','595ec427-865e-4571-8a08-4ed29008cff2'),
	(13,13,'en',1,'privacy-policy',NULL,'2018-08-18 13:59:52','2018-08-18 13:59:52','cdb964fd-760a-4e61-9c8d-c99a6d329de6');

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
	(12,1,'53dab880ede7f405e1224da8a5f84bf2d7ab08e3czozMjoiOXZiT0xOb2pXak5Nam91STZYc2FBeG1UNDdVaTJiRksiOw==','2018-07-15 10:28:48','2018-07-15 10:28:48','faa83d54-4140-4a8c-88ed-cd545980f2e6'),
	(13,1,'aad841586c17fac7b832ff1ac3d98b3bb5f44d58czozMjoiTk9+blhRUFEzTjA5dlg5TFJiVV94Nm1vQjJma3NaenoiOw==','2018-07-16 21:59:54','2018-07-16 21:59:54','4f80466a-4d16-4caf-aa8d-75f1aa2a98b7'),
	(14,1,'d06f80fd92f4e8ac703dbdc2cd22a86cb2436827czozMjoiYzNpflJGQWdQRWFEOHZuZzdXaVBNXzBhOFNuN2VMMk8iOw==','2018-07-17 18:52:44','2018-07-17 18:52:44','a3dbe65f-6c70-47fc-bf63-14432bc64490'),
	(15,1,'11f7eecb576f498519129a91614bce81fe81612bczozMjoiS0FKMFVQN2I4MXNpUkxnaDlQMjJiYl9jS3RmVzRDdW8iOw==','2018-07-18 20:45:17','2018-07-18 20:45:17','ec0304b9-5e6b-4b9e-b784-f5cfd8fde2b0'),
	(16,1,'09041ff73277906074eed7a76fbd9b2c2b761416czozMjoiaE5BaXhHTXo3cU5GdHN5bHFveEJCakpCTWlvNTY2VnYiOw==','2018-07-21 14:41:29','2018-07-21 14:41:29','bafe439f-f2d4-4258-8ba1-a354c48c7a06'),
	(17,1,'a88d556f1c476e61d36a13c23e0a1053bc7d8b7cczozMjoiUmpwQ2FJUUwzN1Z3MmdsQ0JsaTI3Rjk3RHlDRTVTdDUiOw==','2018-07-21 15:42:39','2018-07-21 15:42:39','c7df91d0-6790-4ecd-9a24-1956c5ec49ad'),
	(18,1,'f1d1b264fbee8b8ea2aac06ec7c9e36b6fd67075czozMjoiOHVWM3RBUHRudE1+UzI3cThFS2hPVUpEb1Z5dzhKa2wiOw==','2018-07-21 20:27:09','2018-07-21 20:27:09','f58395ab-013c-491f-b131-aac4d6fb26de'),
	(19,1,'bdcb56af681a21956037e06ae248619c33a8510eczozMjoiOE5GNFAyWllDRW9hWDdEfk1zSVV4M05DZElqVmM1dkkiOw==','2018-07-24 17:34:13','2018-07-24 17:34:13','fadf6e70-cc36-4d5d-bbf1-c8db74a793b3'),
	(20,1,'5796300b4d1064de2177bd59864b2d35c735b282czozMjoiOEJiN1pBZzR5TDRtTmF1Y1pGcW8xWTNDdmwxSHI0dGsiOw==','2018-07-25 07:51:49','2018-07-25 07:51:49','dba68d76-917b-460a-a45d-ed1d973cc009'),
	(21,1,'e5b667e21eac2cf7ff971ee20194ff4eaf43d6beczozMjoiS2F1dUpockFzeFVlcnVqWHN6cjdjZFRReGdLMDNoSlgiOw==','2018-07-25 12:34:14','2018-07-25 12:34:14','ff061836-bd87-48ff-a79b-a19055cd3a69'),
	(22,1,'c5ddc52a0954a9c26b1833dd685cfc44dcd02938czozMjoieVFJb1JXRzRXcGliZTIwMjVEVThIamZzbjhPYVhzZWUiOw==','2018-07-26 17:09:18','2018-07-26 17:09:18','13355c8e-71df-42d4-b70a-ba6b3475f2a3'),
	(23,1,'9f0b568914cf6804d10279d74a758af0f71b9be6czozMjoiSVphRVJabGhTSVl3aWhQeHpLUHVnZDNFZkN4VmJtYnciOw==','2018-07-27 08:18:59','2018-07-27 08:18:59','bb204ba1-42fb-42be-8fad-c96fa93c43e1'),
	(24,1,'1917e29d07e0acf216a95d25e9c64910ff08c12bczozMjoiNm1QWXJaTlJOWG92dkN3XzFMWXJQdVR0a00zNExxfkIiOw==','2018-07-29 18:51:59','2018-07-29 18:51:59','855025b8-c7e8-4fc6-8aea-5b6b6e578b95'),
	(25,1,'ad9df2ab6791d3402756d99b64e7e69b37548d6cczozMjoia2ZBS2xJflFiYldyYnRoZlpxYzhtZ0d1TnhqSkpfcXkiOw==','2018-08-01 10:15:42','2018-08-01 10:15:42','1055a34a-d20c-4f90-a199-94521de0e95d'),
	(26,1,'c5870044019f0a373652f486b2a3426a704972f3czozMjoiejgzOXJFdDlGVFVGS3JJMVpPRG9XS25UTzhfSkg4UUciOw==','2018-08-01 14:01:25','2018-08-01 14:01:25','eab697c4-630c-4f40-986f-4bd0a94ddb5d'),
	(29,1,'e32d5966c18a9ffbffbcd8b309f24046defbee87czozMjoiVTNyYWhqX1VPRWlDTldPcUc5SXlEM19oY3JPVU55STMiOw==','2018-08-01 17:27:36','2018-08-01 17:27:36','715d0ffd-7668-4147-923e-bf1dfc00fb04'),
	(30,1,'1daf5960b54aca681becf98c0fc8ef75f2888e03czozMjoiUERlVGg1amVtN2g1NWRRb28zYktKZUprY1J+MGRpQzMiOw==','2018-08-01 19:01:27','2018-08-01 19:01:27','0cc53f25-759f-4547-928a-92c08d64a8bb'),
	(32,1,'6daad3b2c2e87a901f53a1dcbdd44d486c8fea92czozMjoia1BhekczZFU3OUVzdHNOdEdjRlI1flNJRDFWMFZhcmgiOw==','2018-08-02 08:51:09','2018-08-02 08:51:09','b8f273e8-b760-4702-9afa-9ad882b90dc2'),
	(33,1,'f55bfa412ec01ff1440aa6df2dff12ae67a52fcaczozMjoidzkzYmNMM2IwcW9lUjE5UHQzS19tNEUzR3hTek9hRzgiOw==','2018-08-03 11:53:24','2018-08-03 11:53:24','f2f03a10-051f-46f3-9758-88daa5ea9a40'),
	(34,1,'f1c09a42f62104d2d2cf1acfb5b9b27092274d28czozMjoiRGRscG9VUjV0dWh6THRMNk5ORFJaWFVhM2pjZWtOOH4iOw==','2018-08-03 12:43:38','2018-08-03 12:43:38','d1bf1578-4436-4010-8a86-2e216f81c875'),
	(35,1,'1fa3c958aef8e6c80694ebaff647a3f63ae09ac5czozMjoiSjlBR3Q1TFBmbn45TnRWSks2RURyaHpVaV9hVjZXXzgiOw==','2018-08-03 14:27:17','2018-08-03 14:27:17','69f38693-cce5-4869-b24f-27a95412dbfb'),
	(36,1,'348c7db821813b7a46b0b8e1ded741f539936e85czozMjoiTlE5SlQ0ak9XV1NJYlRUVDlPbmZ+cWtFfng1OVNjY20iOw==','2018-08-07 17:53:11','2018-08-07 17:53:11','adb7d628-8260-4a21-a114-60034e0f40ac'),
	(37,1,'a02c6a925c1ac9994a5fb82be83e1c0349f81d33czozMjoic09yaFJzNFdNSDRLYUV2Q21WZnVuU25mfmtRX0l1S1UiOw==','2018-08-08 14:05:10','2018-08-08 14:05:10','15321729-3baf-4bc2-b7f9-73bda31bc6b7'),
	(38,1,'0aa4d4e691d6b09ac551a8939c2722b8571e34b4czozMjoiUTdZUXJMZll0eE9XUGJ2ZUZxMjBtbWdfWkhsVzRFb2kiOw==','2018-08-09 13:57:40','2018-08-09 13:57:40','a656e955-d403-4eb6-9234-ed43e0262a63'),
	(39,1,'d19cf9fcf84b81a40a7cb6cd6a0566c86433afd5czozMjoibmlxNEdwcm9MYlRNalhfMVN5aFpZZGlmQmRtSmh5djIiOw==','2018-08-12 12:36:29','2018-08-12 12:36:29','3b34eb90-19c8-4424-bff2-87d71d611a0f'),
	(40,1,'15a30c9a0c39fe81214b0e367518d1c7c440f57bczozMjoiM0NiR3hyMnloUnZLcVlZQ0tBen5aYWtMc0JWaTNzNTgiOw==','2018-08-12 16:09:34','2018-08-12 16:09:34','83b4aae0-1597-457d-be44-a9dadc750e42'),
	(41,1,'9f9c848e07a33f7f01e33b9559a29f42222d15bcczozMjoiQlI4a01pWTdhOVlMREJkfmx6Y2ZldEFvREFfa2JWVU4iOw==','2018-08-12 18:14:47','2018-08-12 18:14:47','79b75505-7ede-439d-8f5b-e99fa1db2e52'),
	(42,1,'194fd84886e69caec2ca59187588730c05fc48ffczozMjoiQXNxVzJId3RIMHZTNjBBdDZSRUtianB1bnRkR3Z2RlkiOw==','2018-08-14 17:48:09','2018-08-14 17:48:09','dc23bef2-48b7-4381-adde-14281f10d634'),
	(43,1,'43292006f1db780fd3262442b29a469ca00f3694czozMjoia3FTQXRKS2Z0N3RPTEpaRWZwblV6M2g3VGV6VF9xQ3AiOw==','2018-08-15 18:58:14','2018-08-15 18:58:14','0e94186b-64f6-4a80-96ba-35d5e20f6792'),
	(44,1,'1d276ffb185f97a3109f3d574d18b73b8191816fczozMjoiczFpdWFVcmtEMjRLZ35QZlM1dDZiQzEzRGhMNlRQYVgiOw==','2018-08-16 07:33:08','2018-08-16 07:33:08','37caf0d9-6d68-4af6-a2da-5b8db4d78764'),
	(45,1,'01ac915afe5cc6f5f2788b5dde9bbfb0b3e18ef0czozMjoiWHZLeXlxcXFNTDQ5Qkx3Q2s5bVJxUTdvMDRySURRcjkiOw==','2018-08-16 07:54:49','2018-08-16 07:54:49','01913b75-ae2b-4c6a-ae26-6548667cdabb'),
	(46,1,'cebedd37a082e93a8f4564dab7c2c5d7b93aeba4czozMjoiMFhURHNRMmtMYjVqN3FXSkRIZ1k1eUVMeXhUck1KVVoiOw==','2018-08-16 19:34:01','2018-08-16 19:34:01','921a4435-a410-4da9-b0bc-d5bb85c42972'),
	(47,1,'d246dfef46f2e722cddc7d23a0191a413dbd9c31czozMjoicWU4VlRTMTZkX192N3JVUXdMbEZtZzVkeDZPQzh3WFMiOw==','2018-08-16 20:42:25','2018-08-16 20:42:25','8a3777de-196d-4969-94f2-bbd15100d13a'),
	(48,1,'05840469cae989461d7b42765496acb7e253c4d1czozMjoiVlJtXzZMSllBZDJTX3g1RXpMNGJ4NlVsV1dTWHU1OWYiOw==','2018-08-17 16:35:16','2018-08-17 16:35:16','a385cb9f-c700-4b26-a572-17145b1813d7'),
	(49,1,'a26dff88422e8f8616c39b760e3407475054b3d8czozMjoiMTB+NDBUaURVTl9reVg2ajEzbnlaZ3F+YmRmQXh0dVAiOw==','2018-08-17 19:40:59','2018-08-17 19:40:59','c582aae5-3976-4884-8098-a4985672e837');

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
	(1,1,NULL,1,1,8,0,'2018-07-05 19:58:38','2018-07-05 19:58:38','96807b85-7693-435c-8667-c7cc6bd0cada'),
	(2,1,261,1,2,3,1,'2018-07-05 19:58:38','2018-07-05 19:58:38','2f7897b7-81c3-43ba-af81-a23f33432a50'),
	(3,2,NULL,3,1,32,0,'2018-07-05 22:10:16','2018-07-05 22:10:16','166586bc-57a4-4105-b076-a97b4cc9f567'),
	(4,2,264,3,2,3,1,'2018-07-05 22:10:16','2018-07-05 22:10:16','34e9ca2e-c038-41c1-b159-9f6e7018ab32'),
	(5,2,265,3,4,5,1,'2018-07-05 22:10:46','2018-07-05 22:10:46','2c2adfbb-ece6-4eed-b554-90d7e1e85400'),
	(6,2,266,3,26,27,1,'2018-07-05 22:11:13','2018-07-05 22:11:13','c8ef722c-3a3e-4624-a4a9-9b734e689029'),
	(7,2,267,3,28,29,1,'2018-07-05 22:11:58','2018-07-05 22:11:58','47057a9e-d6a1-415b-8e46-d87a3f305ee7'),
	(8,2,268,3,30,31,1,'2018-07-05 22:12:49','2018-07-05 22:12:49','85df981d-cae2-4936-b6da-45df5a4ceeca'),
	(9,2,269,3,6,25,1,'2018-07-05 22:13:45','2018-07-05 22:13:45','17bf1bba-b6c8-4358-a509-98f681ef0936'),
	(10,2,270,3,7,14,2,'2018-07-05 22:29:47','2018-07-05 22:29:47','124ca0b6-75ea-422f-b048-a74f0bd0111b'),
	(11,2,271,3,8,9,3,'2018-07-05 22:30:25','2018-07-05 22:30:25','50994797-fb46-43d8-b02a-15d5bb0feaff'),
	(12,3,NULL,12,1,10,0,'2018-07-07 14:40:30','2018-07-07 14:40:30','3beaf878-7ac4-44a0-82ae-a90863804e9e'),
	(13,3,272,12,2,3,1,'2018-07-07 14:40:30','2018-07-07 14:40:30','269e15af-bc11-4094-b515-e88387820af6'),
	(14,3,273,12,4,5,1,'2018-07-07 14:40:51','2018-07-07 14:40:51','3042d468-720f-41fb-8921-d01f57fccc70'),
	(15,3,274,12,6,7,1,'2018-07-07 14:42:12','2018-07-07 14:42:12','55dae733-c142-4f9c-9df3-6b40adbe7cde'),
	(16,3,275,12,8,9,1,'2018-07-07 14:42:38','2018-07-07 14:42:38','955b4137-2a5d-4346-8393-fa0ac2d380ee'),
	(17,1,355,1,4,5,1,'2018-07-16 22:33:39','2018-07-16 22:33:39','7d150f60-fcda-4d64-ae12-3d76a328eecf'),
	(18,1,356,1,6,7,1,'2018-07-16 22:34:13','2018-07-16 22:34:13','922e2bff-2616-48b9-b497-a7875d1add5d'),
	(19,2,422,3,15,18,2,'2018-08-01 10:19:37','2018-08-01 10:19:37','191906a8-f44d-46c9-a1bc-5e6b5e2ec435'),
	(20,2,424,3,16,17,3,'2018-08-01 10:23:05','2018-08-01 10:23:05','9d4fc60f-3743-483b-b5fc-ae06361eef87'),
	(21,2,429,3,12,13,3,'2018-08-01 14:03:49','2018-08-01 14:03:49','b6a396a8-fe87-4477-b7ea-3026e6d1bb40'),
	(22,2,430,3,20,21,3,'2018-08-01 14:04:18','2018-08-01 14:04:18','4cf3f177-840b-4bf9-9d7c-9d2e56286ef0'),
	(23,2,431,3,10,11,3,'2018-08-01 14:04:52','2018-08-01 14:04:52','0f22615e-7a52-4a16-8c67-b71637c7c8d9'),
	(24,2,432,3,22,23,3,'2018-08-01 14:05:21','2018-08-01 14:05:21','b6aaa988-b508-4175-a208-bf2c157c8784'),
	(25,2,433,3,19,24,2,'2018-08-01 14:09:19','2018-08-01 14:09:19','666e724d-7222-4249-a6fd-fd1c93aa5e5c');

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
	(1,NULL,'2018-07-05 19:57:52','2018-07-16 22:30:07','bd410574-9388-4757-b16b-822f7caab227'),
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
	(1,'admin',NULL,'','','info@refresh-digital.com','$2a$13$5j8bSRoKQZipjtIg6FXWR.kGRR3UfCL.QeMIt2yTRH1.hCNHLQKtq',NULL,0,1,0,0,0,0,0,'2018-08-17 19:40:59','146.198.222.187',NULL,NULL,'2018-08-17 16:35:06',NULL,NULL,NULL,NULL,0,NULL,'2016-08-22 18:42:37','2018-08-17 19:40:59','953aedcd-73c8-4677-b0c5-4241e8fbb14c');

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
