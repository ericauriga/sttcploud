-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 04:40 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_activity`
--

CREATE TABLE IF NOT EXISTS `oc_activity` (
`activity_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `user` varchar(64) COLLATE utf8_bin NOT NULL,
  `affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `subjectparams` varchar(255) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `messageparams` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_activity`
--

INSERT INTO `oc_activity` (`activity_id`, `timestamp`, `priority`, `type`, `user`, `affecteduser`, `app`, `subject`, `subjectparams`, `message`, `messageparams`, `file`, `link`) VALUES
(1, 1612687719, 40, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', 'a:1:{i:0;s:23:"/ownCloudUserManual.pdf";}', '', 'a:0:{}', '/ownCloudUserManual.pdf', 'http://localhost/STTPCloud/index.php/apps/files?dir=%5C'),
(3, 1612694159, 30, 'shared', '191011011', 'admin', 'files', 'shared_with_by', 'a:2:{i:0;s:23:"/ownCloudUserManual.pdf";i:1;s:9:"191011011";}', '', 'a:0:{}', '/ownCloudUserManual.pdf', 'http://localhost/STTPCloud/index.php/apps/files?dir=%5C'),
(6, 1612699225, 40, 'file_deleted', '191013011', '191013011', 'files', 'deleted_by', 'a:2:{i:0;s:23:"/ownCloudUserManual.pdf";i:1;s:9:"191013011";}', '', 'a:0:{}', '/ownCloudUserManual.pdf', 'http://localhost/STTPCloud/index.php/apps/files?dir=%5C'),
(7, 1612699334, 40, 'file_created', 'admin', 'admin', 'files', 'created_self', 'a:1:{i:0;s:32:"/photos/Buffer_UAS_191013011.mp4";}', '', 'a:0:{}', '/photos/Buffer_UAS_191013011.mp4', 'http://localhost/STTPCloud/index.php/apps/files?dir=%2Fphotos'),
(8, 1612699351, 40, 'file_created', 'admin', 'admin', 'files', 'created_self', 'a:1:{i:0;s:25:"/Buffer_UAS_191013011.mp4";}', '', 'a:0:{}', '/Buffer_UAS_191013011.mp4', 'http://localhost/STTPCloud/index.php/apps/files?dir=%5C'),
(9, 1612699395, 40, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', 'a:1:{i:0;s:32:"/photos/Buffer_UAS_191013011.mp4";}', '', 'a:0:{}', '/photos/Buffer_UAS_191013011.mp4', 'http://localhost/STTPCloud/index.php/apps/files?dir=%2Fphotos'),
(10, 1612800238, 40, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', 'a:1:{i:0;s:25:"/Buffer_UAS_191013011.mp4";}', '', 'a:0:{}', '/Buffer_UAS_191013011.mp4', 'http://localhost/sttpcloud/index.php/apps/files?dir=%5C'),
(11, 1612800250, 40, 'file_deleted', 'admin', 'admin', 'files', 'deleted_self', 'a:1:{i:0;s:25:"/Buffer_UAS_191013011.mp4";}', '', 'a:0:{}', '/Buffer_UAS_191013011.mp4', 'http://localhost/sttpcloud/index.php/apps/files?dir=%5C');

-- --------------------------------------------------------

--
-- Table structure for table `oc_activity_mq`
--

CREATE TABLE IF NOT EXISTS `oc_activity_mq` (
`mail_id` int(11) NOT NULL,
  `amq_timestamp` int(11) NOT NULL DEFAULT '0',
  `amq_latest_send` int(11) NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `amq_appid` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subjectparams` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_appconfig`
--

CREATE TABLE IF NOT EXISTS `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_appconfig`
--

INSERT INTO `oc_appconfig` (`appid`, `configkey`, `configvalue`) VALUES
('activity', 'enabled', 'yes'),
('activity', 'installed_version', '1.1.24'),
('activity', 'types', 'filesystem'),
('backgroundjob', 'lastjob', '3'),
('bookmarks', 'enabled', 'no'),
('bookmarks', 'installed_version', '0.4'),
('bookmarks', 'ocsid', '166042'),
('bookmarks', 'types', ''),
('calendar', 'enabled', 'no'),
('calendar', 'installed_version', '0.6.4'),
('calendar', 'ocsid', '166043'),
('calendar', 'types', ''),
('contacts', 'backend_ldap', 'false'),
('contacts', 'enabled', 'yes'),
('contacts', 'installed_version', '0.3.0.18'),
('contacts', 'ocsid', '166044'),
('contacts', 'types', ''),
('core', 'global_cache_gc_lastrun', '1612802887'),
('core', 'installedat', '1612685977.3533'),
('core', 'lastcron', '1612806065'),
('core', 'lastupdateResult', '[]'),
('core', 'lastupdatedat', '1612805997'),
('core', 'public_caldav', 'calendar/share.php'),
('core', 'public_calendar', 'calendar/share.php'),
('core', 'public_documents', 'documents/public.php'),
('core', 'public_files', 'files_sharing/public.php'),
('core', 'public_gallery', 'gallery/public.php'),
('core', 'public_webdav', 'files_sharing/publicwebdav.php'),
('core', 'remote_caldav', 'calendar/appinfo/remote.php'),
('core', 'remote_calendar', 'calendar/appinfo/remote.php'),
('core', 'remote_carddav', 'contacts/appinfo/remote.php'),
('core', 'remote_contacts', 'contacts/appinfo/remote.php'),
('core', 'remote_files', 'files/appinfo/remote.php'),
('core', 'remote_filesync', 'files/appinfo/filesync.php'),
('core', 'remote_webdav', 'files/appinfo/remote.php'),
('documents', 'enabled', 'yes'),
('documents', 'installed_version', '0.8.3'),
('documents', 'ocsid', '166045'),
('documents', 'types', ''),
('external', 'enabled', 'yes'),
('external', 'installed_version', '1.1'),
('external', 'ocsid', '166046'),
('external', 'sites', '[["eKRS STTP","http:\\/\\/ekrs.sttpyk.ac.id\\/"]]'),
('external', 'types', ''),
('files', 'enabled', 'yes'),
('files', 'installed_version', '1.1.9'),
('files', 'types', 'filesystem'),
('files_pdfviewer', 'enabled', 'yes'),
('files_pdfviewer', 'installed_version', '0.5.1'),
('files_pdfviewer', 'ocsid', '166049'),
('files_pdfviewer', 'types', ''),
('files_sharing', 'enabled', 'yes'),
('files_sharing', 'installed_version', '0.5.4'),
('files_sharing', 'ocsid', '166050'),
('files_sharing', 'types', 'filesystem'),
('files_texteditor', 'enabled', 'yes'),
('files_texteditor', 'installed_version', '0.4'),
('files_texteditor', 'ocsid', '166051'),
('files_texteditor', 'types', ''),
('files_trashbin', 'enabled', 'yes'),
('files_trashbin', 'installed_version', '0.6.3'),
('files_trashbin', 'types', 'filesystem'),
('files_versions', 'enabled', 'yes'),
('files_versions', 'installed_version', '1.0.6'),
('files_versions', 'types', 'filesystem'),
('files_videoviewer', 'enabled', 'yes'),
('files_videoviewer', 'installed_version', '0.1.3'),
('files_videoviewer', 'ocsid', '166054'),
('files_videoviewer', 'types', ''),
('firstrunwizard', 'enabled', 'yes'),
('firstrunwizard', 'installed_version', '1.1'),
('firstrunwizard', 'ocsid', '166055'),
('firstrunwizard', 'types', ''),
('gallery', 'enabled', 'yes'),
('gallery', 'installed_version', '0.5.5'),
('gallery', 'types', 'filesystem'),
('search_lucene', 'enabled', 'yes'),
('search_lucene', 'installed_version', '0.5.3'),
('search_lucene', 'ocsid', '166057'),
('search_lucene', 'types', 'filesystem'),
('templateeditor', 'enabled', 'yes'),
('templateeditor', 'installed_version', '0.1'),
('templateeditor', 'types', ''),
('updater', 'enabled', 'no'),
('updater', 'installed_version', '0.4.1'),
('updater', 'types', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bookmarks`
--

CREATE TABLE IF NOT EXISTS `oc_bookmarks` (
`id` int(11) NOT NULL,
  `url` varchar(4096) COLLATE utf8_bin NOT NULL DEFAULT '',
  `title` varchar(140) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(4096) COLLATE utf8_bin NOT NULL DEFAULT '',
  `public` smallint(6) DEFAULT '0',
  `added` int(10) unsigned DEFAULT '0',
  `lastmodified` int(10) unsigned DEFAULT '0',
  `clickcount` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bookmarks_tags`
--

CREATE TABLE IF NOT EXISTS `oc_bookmarks_tags` (
  `bookmark_id` bigint(20) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_clndr_calendars`
--

CREATE TABLE IF NOT EXISTS `oc_clndr_calendars` (
`id` int(10) unsigned NOT NULL,
  `userid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `ctag` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarorder` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8_bin,
  `components` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_clndr_calendars`
--

INSERT INTO `oc_clndr_calendars` (`id`, `userid`, `displayname`, `uri`, `active`, `ctag`, `calendarorder`, `calendarcolor`, `timezone`, `components`) VALUES
(3, '191013012', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(4, '191013011', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(5, '191013009', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(6, '191013010', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(7, '191013013', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(8, '191011014', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(9, '123', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL'),
(10, 'admin', 'Pribadi', 'pribadi', 1, 1, 0, NULL, NULL, 'VEVENT,VTODO,VJOURNAL');

-- --------------------------------------------------------

--
-- Table structure for table `oc_clndr_objects`
--

CREATE TABLE IF NOT EXISTS `oc_clndr_objects` (
`id` int(10) unsigned NOT NULL,
  `calendarid` int(10) unsigned NOT NULL DEFAULT '0',
  `objecttype` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `startdate` datetime DEFAULT '1970-01-01 00:00:00',
  `enddate` datetime DEFAULT '1970-01-01 00:00:00',
  `repeating` int(11) DEFAULT '0',
  `summary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `calendardata` longtext COLLATE utf8_bin,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_clndr_repeat`
--

CREATE TABLE IF NOT EXISTS `oc_clndr_repeat` (
`id` int(10) unsigned NOT NULL,
  `eventid` int(10) unsigned NOT NULL DEFAULT '0',
  `calid` int(10) unsigned NOT NULL DEFAULT '0',
  `startdate` datetime DEFAULT '1970-01-01 00:00:00',
  `enddate` datetime DEFAULT '1970-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_clndr_share_calendar`
--

CREATE TABLE IF NOT EXISTS `oc_clndr_share_calendar` (
  `owner` varchar(255) COLLATE utf8_bin NOT NULL,
  `share` varchar(255) COLLATE utf8_bin NOT NULL,
  `sharetype` varchar(6) COLLATE utf8_bin NOT NULL,
  `calendarid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `permissions` smallint(6) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_clndr_share_event`
--

CREATE TABLE IF NOT EXISTS `oc_clndr_share_event` (
  `owner` varchar(255) COLLATE utf8_bin NOT NULL,
  `share` varchar(255) COLLATE utf8_bin NOT NULL,
  `sharetype` varchar(6) COLLATE utf8_bin NOT NULL,
  `eventid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `permissions` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_contacts_addressbooks`
--

CREATE TABLE IF NOT EXISTS `oc_contacts_addressbooks` (
`id` int(10) unsigned NOT NULL,
  `userid` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uri` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ctag` int(10) unsigned NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_contacts_addressbooks`
--

INSERT INTO `oc_contacts_addressbooks` (`id`, `userid`, `displayname`, `uri`, `description`, `ctag`, `active`) VALUES
(1, 'admin', 'Contacts', 'contacts', '', 1612685979, 1),
(3, '191013012', 'Contacts', 'contacts', '', 1612698898, 1),
(4, '191013011', 'Contacts', 'contacts', '', 1612699204, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_contacts_cards`
--

CREATE TABLE IF NOT EXISTS `oc_contacts_cards` (
`id` int(10) unsigned NOT NULL,
  `addressbookid` int(10) unsigned NOT NULL DEFAULT '0',
  `fullname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `carddata` longtext COLLATE utf8_bin,
  `uri` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_contacts_cards_properties`
--

CREATE TABLE IF NOT EXISTS `oc_contacts_cards_properties` (
`id` int(10) unsigned NOT NULL,
  `userid` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `contactid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_documents_invite`
--

CREATE TABLE IF NOT EXISTS `oc_documents_invite` (
  `es_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Related editing session id',
  `uid` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `sent_on` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_documents_member`
--

CREATE TABLE IF NOT EXISTS `oc_documents_member` (
`member_id` int(10) unsigned NOT NULL COMMENT 'Unique per user and session',
  `es_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Related editing session id',
  `uid` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `color` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `last_activity` int(10) unsigned DEFAULT NULL,
  `is_guest` smallint(5) unsigned NOT NULL DEFAULT '0',
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_documents_member`
--

INSERT INTO `oc_documents_member` (`member_id`, `es_id`, `uid`, `color`, `last_activity`, `is_guest`, `token`, `status`) VALUES
(1, '401c413e2700de35c6fd228aecee18', 'admin', '#995b0f', 1612698408, 0, '', 2),
(2, '401c413e2700de35c6fd228aecee18', 'admin', '#995b0f', 1612801197, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_documents_op`
--

CREATE TABLE IF NOT EXISTS `oc_documents_op` (
`seq` int(10) unsigned NOT NULL COMMENT 'Sequence number',
  `es_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Editing session id',
  `member` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'User and time specific',
  `opspec` longtext COLLATE utf8_bin COMMENT 'json-string'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_documents_op`
--

INSERT INTO `oc_documents_op` (`seq`, `es_id`, `member`, `opspec`) VALUES
(1, '401c413e2700de35c6fd228aecee18', 1, '{"optype":"AddMember","memberid":"1","timestamp":"1612698384", "setProperties":{"fullName":"admin","color":"#995b0f","imageUrl":"admin"}}'),
(2, '401c413e2700de35c6fd228aecee18', 1, '{"optype":"AddCursor","memberid":"1","timestamp":1612698387750}'),
(3, '401c413e2700de35c6fd228aecee18', 1, '{"optype":"MoveCursor","memberid":"1","timestamp":1612698392402,"position":5,"length":0,"selectionType":"Range"}'),
(4, '401c413e2700de35c6fd228aecee18', 1, '{"optype":"RemoveCursor","memberid":"1","timestamp":1612698407808}'),
(5, '401c413e2700de35c6fd228aecee18', 2, '{"optype":"AddMember","memberid":"2","timestamp":"1612801181", "setProperties":{"fullName":"Admin STTP","color":"#995b0f","imageUrl":"admin"}}'),
(6, '401c413e2700de35c6fd228aecee18', 1, '{"optype":"RemoveMember","memberid":"1","timestamp":1612801184}'),
(7, '401c413e2700de35c6fd228aecee18', 2, '{"optype":"AddCursor","memberid":"2","timestamp":1612801184537}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_documents_revisions`
--

CREATE TABLE IF NOT EXISTS `oc_documents_revisions` (
  `es_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Related editing session id',
  `seq_head` int(10) unsigned NOT NULL COMMENT 'Sequence head number',
  `member_id` int(10) unsigned NOT NULL COMMENT 'the member that saved the revision',
  `file_id` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'Relative to storage e.g. /welcome.odt',
  `save_hash` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'used to lookup revision in documents folder of member, eg hash.odt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_documents_session`
--

CREATE TABLE IF NOT EXISTS `oc_documents_session` (
  `es_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Editing session id',
  `genesis_url` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'Relative to owner documents storage /welcome.odt',
  `genesis_hash` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'To be sure the genesis did not change',
  `file_id` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'Relative to storage e.g. /welcome.odt',
  `owner` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'oC user who created the session'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_documents_session`
--

INSERT INTO `oc_documents_session` (`es_id`, `genesis_url`, `genesis_hash`, `file_id`, `owner`) VALUES
('401c413e2700de35c6fd228aecee18', '/documents/c034ca6f69fcfa81b55cd2856b72ca1f192dc92f.odt', 'c034ca6f69fcfa81b55cd2856b72ca1f192dc92f', '5', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filecache`
--

CREATE TABLE IF NOT EXISTS `oc_filecache` (
`fileid` int(11) NOT NULL,
  `storage` int(11) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `mimetype` int(11) NOT NULL DEFAULT '0',
  `mimepart` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `storage_mtime` int(11) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_filecache`
--

INSERT INTO `oc_filecache` (`fileid`, `storage`, `path`, `path_hash`, `parent`, `name`, `mimetype`, `mimepart`, `size`, `mtime`, `storage_mtime`, `encrypted`, `unencrypted_size`, `etag`, `permissions`) VALUES
(1, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 6492648, 1612800260, 1612800238, 0, 0, '60216104462cf', 31),
(2, 1, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 1, 'cache', 2, 1, 0, 1612685976, 1612685976, 0, 0, '601fa29941ed4', 31),
(3, 1, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 1, 'files', 2, 1, 4466743, 1612800251, 1612800251, 0, 0, '602160fb707c0', 31),
(4, 1, 'files/documents', '2d30f25cef1a92db784bc537e8bf128d', 3, 'documents', 2, 1, 23383, 1612685976, 1612685976, 0, 0, '601fa299464d7', 31),
(5, 1, 'files/documents/example.odt', 'f51311bd6910ec7356d79286dcb24dec', 4, 'example.odt', 4, 3, 23383, 1612685976, 1612685976, 0, 0, '601fa2994c283', 27),
(6, 1, 'files/music', '1f8cfec283cd675038bb95b599fdc75a', 3, 'music', 2, 1, 3764804, 1612685976, 1612685976, 0, 0, '601fa29947764', 31),
(7, 1, 'files/music/projekteva-letitrain.mp3', 'da7d05a957a2bbbf0e74b12c1b5fcfee', 6, 'projekteva-letitrain.mp3', 6, 5, 3764804, 1612685976, 1612685976, 0, 0, '601fa2994ebc8', 27),
(9, 1, 'files/photos', '923e51351db3e8726f22ba0fa1c04d5a', 3, 'photos', 2, 1, 678556, 1612699396, 1612699396, 0, 0, '601fd704b0d4e', 31),
(10, 1, 'files/photos/paris.jpg', '65154b90b985bff20d4923f224ca1c33', 9, 'paris.jpg', 9, 8, 228761, 1612685976, 1612685976, 0, 0, '601fa29951826', 27),
(11, 1, 'files/photos/san francisco.jpg', 'e86e87a4ecd557753734e1d34fbeecec', 9, 'san francisco.jpg', 9, 8, 216071, 1612685977, 1612685977, 0, 0, '601fa29952c16', 27),
(12, 1, 'files/photos/squirrel.jpg', 'e462c24fc17cb1a3fa3bca86d7f89593', 9, 'squirrel.jpg', 9, 8, 233724, 1612685977, 1612685977, 0, 0, '601fa29954059', 27),
(19, 1, 'thumbnails', '3b8779ba05b8f0aed49650f3ff8beb4b', 1, 'thumbnails', 2, 1, 251748, 1612796902, 1612697375, 0, 0, '602153e64464d', 31),
(20, 1, 'thumbnails/7', '6faab433a48974ab4ae1fb6910b507e5', 19, '7', 2, 1, 1654, 1612693659, 1612693659, 0, 0, '601fc09b6904b', 31),
(21, 1, 'thumbnails/7/54-54.png', '8813bf0a28dc84441e331d32de248845', 20, '54-54.png', 11, 8, 1654, 1612693659, 1612693659, 0, 0, '601fc09b617b6', 27),
(34, 1, 'thumbnails/10', '41b3c4f2913327d69bd8a0251f061ee7', 19, '10', 2, 1, 82235, 1612796895, 1612796894, 0, 0, '602153df22956', 31),
(35, 1, 'thumbnails/10/54-54.png', '61453bd715fdcbcd6d30b475cbe6db0d', 34, '54-54.png', 11, 8, 1347, 1612697374, 1612697374, 0, 0, '601fcf1e1646c', 27),
(36, 1, 'thumbnails/11', 'b8747019c45f55093926501ad0a5476e', 19, '11', 2, 1, 93146, 1612796896, 1612796896, 0, 0, '602153e04a3ca', 31),
(37, 1, 'thumbnails/11/54-54.png', '9895c988677fd676f5f113bb6e9da3ef', 36, '54-54.png', 11, 8, 1484, 1612697374, 1612697374, 0, 0, '601fcf1ec5cfd', 27),
(38, 1, 'thumbnails/12', '8f5aef7e96ff2fdf0521f79e40b29e7a', 19, '12', 2, 1, 74713, 1612796902, 1612796902, 0, 0, '602153e64571a', 31),
(39, 1, 'thumbnails/12/54-54.png', '34a99a058a9287c711a32382e253a611', 38, '54-54.png', 11, 8, 1459, 1612697375, 1612697375, 0, 0, '601fcf1f67202', 27),
(40, 1, 'documents', '21f64da1e5792c8295b964d159a14491', 1, 'documents', 2, 1, 23383, 1612698384, 1612698384, 0, 0, '601fd310c34f5', 31),
(41, 1, 'documents/c034ca6f69fcfa81b55cd2856b72ca1f192dc92f.odt', '4de00d1f38fb1b47348950be80e19f28', 40, 'c034ca6f69fcfa81b55cd2856b72ca1f192dc92f.odt', 4, 3, 23383, 1612698384, 1612698384, 0, 0, '601fd310bd916', 27),
(42, 4, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 6492648, 1612698896, 1612698896, 0, 0, '601fd511d8732', 31),
(43, 4, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 42, 'cache', 2, 1, 0, 1612698896, 1612698896, 0, 0, '601fd511dc7e6', 31),
(44, 4, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 42, 'files', 2, 1, 6492648, 1612698897, 1612698897, 0, 0, '601fd511df499', 31),
(45, 4, 'files/documents', '2d30f25cef1a92db784bc537e8bf128d', 44, 'documents', 2, 1, 23383, 1612698896, 1612698896, 0, 0, '601fd511e5a97', 31),
(46, 4, 'files/documents/example.odt', 'f51311bd6910ec7356d79286dcb24dec', 45, 'example.odt', 4, 3, 23383, 1612698897, 1612698897, 0, 0, '601fd511f3491', 27),
(47, 4, 'files/music', '1f8cfec283cd675038bb95b599fdc75a', 44, 'music', 2, 1, 3764804, 1612698897, 1612698897, 0, 0, '601fd511e838d', 31),
(48, 4, 'files/music/projekteva-letitrain.mp3', 'da7d05a957a2bbbf0e74b12c1b5fcfee', 47, 'projekteva-letitrain.mp3', 6, 5, 3764804, 1612698897, 1612698897, 0, 0, '601fd51204964', 27),
(49, 4, 'files/ownCloudUserManual.pdf', 'c8edba2d1b8eb651c107b43532c34445', 44, 'ownCloudUserManual.pdf', 7, 3, 2025905, 1612698897, 1612698897, 0, 0, '601fd511ebd0f', 27),
(50, 4, 'files/photos', '923e51351db3e8726f22ba0fa1c04d5a', 44, 'photos', 2, 1, 678556, 1612698897, 1612698897, 0, 0, '601fd511ee933', 31),
(51, 4, 'files/photos/paris.jpg', '65154b90b985bff20d4923f224ca1c33', 50, 'paris.jpg', 9, 8, 228761, 1612698897, 1612698897, 0, 0, '601fd5120a2d9', 27),
(52, 4, 'files/photos/san francisco.jpg', 'e86e87a4ecd557753734e1d34fbeecec', 50, 'san francisco.jpg', 9, 8, 216071, 1612698897, 1612698897, 0, 0, '601fd5120db88', 27),
(53, 4, 'files/photos/squirrel.jpg', 'e462c24fc17cb1a3fa3bca86d7f89593', 50, 'squirrel.jpg', 9, 8, 233724, 1612698897, 1612698897, 0, 0, '601fd5121097f', 27),
(54, 5, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 6492648, 1612699231, 1612699225, 0, 0, '601fd65f0c08e', 31),
(55, 5, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 54, 'cache', 2, 1, 0, 1612699201, 1612699201, 0, 0, '601fd642e58f9', 31),
(56, 5, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 54, 'files', 2, 1, 4466743, 1612699225, 1612699225, 0, 0, '601fd6597c8ab', 31),
(57, 5, 'files/documents', '2d30f25cef1a92db784bc537e8bf128d', 56, 'documents', 2, 1, 23383, 1612699202, 1612699202, 0, 0, '601fd642eec5c', 31),
(58, 5, 'files/documents/example.odt', 'f51311bd6910ec7356d79286dcb24dec', 57, 'example.odt', 4, 3, 23383, 1612699202, 1612699202, 0, 0, '601fd64309618', 27),
(59, 5, 'files/music', '1f8cfec283cd675038bb95b599fdc75a', 56, 'music', 2, 1, 3764804, 1612699202, 1612699202, 0, 0, '601fd642f161d', 31),
(60, 5, 'files/music/projekteva-letitrain.mp3', 'da7d05a957a2bbbf0e74b12c1b5fcfee', 59, 'projekteva-letitrain.mp3', 6, 5, 3764804, 1612699202, 1612699202, 0, 0, '601fd6430ed34', 27),
(62, 5, 'files/photos', '923e51351db3e8726f22ba0fa1c04d5a', 56, 'photos', 2, 1, 678556, 1612699202, 1612699202, 0, 0, '601fd64303de6', 31),
(63, 5, 'files/photos/paris.jpg', '65154b90b985bff20d4923f224ca1c33', 62, 'paris.jpg', 9, 8, 228761, 1612699202, 1612699202, 0, 0, '601fd64314025', 27),
(64, 5, 'files/photos/san francisco.jpg', 'e86e87a4ecd557753734e1d34fbeecec', 62, 'san francisco.jpg', 9, 8, 216071, 1612699202, 1612699202, 0, 0, '601fd64317f88', 27),
(65, 5, 'files/photos/squirrel.jpg', 'e462c24fc17cb1a3fa3bca86d7f89593', 62, 'squirrel.jpg', 9, 8, 233724, 1612699202, 1612699202, 0, 0, '601fd6431b4db', 27),
(66, 5, 'files_trashbin', 'fb66dca5f27af6f15c1d1d81e6f8d28b', 54, 'files_trashbin', 2, 1, 0, 1612699231, 1612699225, 0, 0, '601fd65f0ca7f', 31),
(67, 5, 'files_trashbin/files', '3014a771cbe30761f2e9ff3272110dbf', 66, 'files', 2, 1, 0, 1612699231, 1612699231, 0, 0, '601fd65f0d4c4', 31),
(68, 5, 'files_trashbin/versions', 'c639d144d3f1014051e14a98beac5705', 66, 'versions', 2, 1, 0, 1612699225, 1612699225, 0, 0, '601fd65eedeff', 31),
(69, 5, 'files_trashbin/keyfiles', '728c7d8454e585e21166e28b78be8546', 66, 'keyfiles', 2, 1, 0, 1612699225, 1612699225, 0, 0, '601fd6593c18b', 31),
(70, 5, 'files_trashbin/share-keys', 'efadb182f5229706b54ec20d20e8c46d', 66, 'share-keys', 2, 1, 0, 1612699225, 1612699225, 0, 0, '601fd65945b02', 31),
(74, 1, 'thumbnails/10/1923-916-with-aspect.png', '30fd8b7603e760b74ff677285b06459a', 34, '1923-916-with-aspect.png', 11, 8, 80888, 1612796895, 1612796895, 0, 0, '602153df19e88', 27),
(75, 1, 'thumbnails/11/1923-916-with-aspect.png', '0564b19a57a82ec1f77f13f91d6bc6ef', 36, '1923-916-with-aspect.png', 11, 8, 91662, 1612796896, 1612796896, 0, 0, '602153e0435a1', 27),
(76, 1, 'thumbnails/12/1923-916-with-aspect.png', 'e22dd6665553e332f7fc8de07c11a01f', 38, '1923-916-with-aspect.png', 11, 8, 73254, 1612796902, 1612796902, 0, 0, '602153e63c0da', 27),
(77, 1, 'files_trashbin', 'fb66dca5f27af6f15c1d1d81e6f8d28b', 1, 'files_trashbin', 2, 1, 0, 1612800260, 1612800238, 0, 0, '6021610446e4a', 31),
(78, 1, 'files_trashbin/files', '3014a771cbe30761f2e9ff3272110dbf', 77, 'files', 2, 1, 0, 1612800260, 1612800260, 0, 0, '60216104478ce', 31),
(79, 1, 'files_trashbin/versions', 'c639d144d3f1014051e14a98beac5705', 77, 'versions', 2, 1, 0, 1612800238, 1612800238, 0, 0, '602160ee5f502', 31),
(80, 1, 'files_trashbin/keyfiles', '728c7d8454e585e21166e28b78be8546', 77, 'keyfiles', 2, 1, 0, 1612800238, 1612800238, 0, 0, '602160ee6903f', 31),
(81, 1, 'files_trashbin/share-keys', 'efadb182f5229706b54ec20d20e8c46d', 77, 'share-keys', 2, 1, 0, 1612800238, 1612800238, 0, 0, '602160ee727e6', 31);

-- --------------------------------------------------------

--
-- Table structure for table `oc_files_trash`
--

CREATE TABLE IF NOT EXISTS `oc_files_trash` (
`auto_id` int(11) NOT NULL,
  `id` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_file_map`
--

CREATE TABLE IF NOT EXISTS `oc_file_map` (
  `logic_path` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `logic_path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `physic_path` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `physic_path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_file_map`
--

INSERT INTO `oc_file_map` (`logic_path`, `logic_path_hash`, `physic_path`, `physic_path_hash`) VALUES
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/music', '014e4d157dafd54ca713b8f557107839', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/music', '014e4d157dafd54ca713b8f557107839'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/12', '0391dee53435ae4bc0f986ab744d3a97', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/12', '0391dee53435ae4bc0f986ab744d3a97'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin/files/ownCloudUserManual.pdf.d1612699225', '05627017353dd427b083fec335db0dc4', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin/files/owncloudusermanual.pdf.d1612699225', '11eef652c71f82d2eaf8f7b4dc5f7f40'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/music/projekteva-letitrain.mp3', '06e5fb0f0fc12fa2f15229f1669a5657', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/music/projekteva-letitrain.mp3', '06e5fb0f0fc12fa2f15229f1669a5657'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011014/avatar.jpg', '07c9bb856caf63c45a7105b0c9b6b492', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011014/avatar.jpg', '07c9bb856caf63c45a7105b0c9b6b492'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/files/Buffer_UAS_191013011.mp4.d1612800238', '0b979a4414ad25bc0c7cf57165c5ee9a', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/files/buffer-uas-191013011.mp4.d1612800238', '274aad1bf7912192c72596218dadbf53'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin', '0eb4c76b31ac9c727e15cbedb4d25020', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin', 'b1d6f1933309816a0b18138b3c76c1fc'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/cache', '0eeb49c7ec36ebad6d6779af7d3387a0', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/cache', '0eeb49c7ec36ebad6d6779af7d3387a0'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos/san francisco.jpg', '0efe96df15a8c86104e63579ff8b6edc', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos/san-francisco.jpg', '9b67112cbc4cb8c4c8897df632473032'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013013/avatar.png', '0fbebde27806b4a8b85ef108c0bd5424', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013013/avatar.png', '0fbebde27806b4a8b85ef108c0bd5424'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/avatar.png', '0fd7e6b6691468bf7fe02a0d2057284b', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/avatar.png', '0fd7e6b6691468bf7fe02a0d2057284b'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files', '11931c07b22ccc067be2553c0b3ed173', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files', '11931c07b22ccc067be2553c0b3ed173'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_versions/photos', '12c0d9cad95b20d23bf7337a896a1315', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-versions/photos', '5adeb3ece2bca9006c232fc5bb13690a'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_versions', '19ae02aeb3dc1300e81c7b3315217977', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-versions', '17a1e2bf4ff3d5863876448e3eebbc4a'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/avatar.png', '19d5cfb7cc1bff09d1d549cd32c9905e', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/avatar.png', '19d5cfb7cc1bff09d1d549cd32c9905e'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/12/1923-916-with-aspect.png', '1c15c6b4eb64d2e09743e8d66538eaf0', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/12/1923-916-with-aspect.png', '1c15c6b4eb64d2e09743e8d66538eaf0'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/documents/example.odt', '1ddb7ea61d942cb2385fa1d53b721fc8', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/documents/example.odt', '1ddb7ea61d942cb2385fa1d53b721fc8'),
('C:\\xampp\\htdocs\\STTPCloud\\data/files/ownCloudUserManual.pdf', '2037f997cb8c501390a379bd81e46be9', 'C:\\xampp\\htdocs\\STTPCloud\\data/files/owncloudusermanual.pdf', '3ba4f0404d2ad4d48f1e744dee47b679'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_versions', '21717cd5bcec4d4b61bbb33ee58dccf1', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-versions', 'af98aaef30ef6188a081c3deb33cb2a8'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/ownCloudUserManual.pdf', '233891dc8c173c141ee8a528f3dfd3f1', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/owncloudusermanual.pdf', 'ce5a2cb74f6587cce6f3d0d55ea90fab'),
('C:\\xampp\\htdocs\\STTPCloud\\data/123/avatar.png', '240d84b8a5fc907bee33ab3e615ec5c4', 'C:\\xampp\\htdocs\\STTPCloud\\data/123/avatar.png', '240d84b8a5fc907bee33ab3e615ec5c4'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos/squirrel.jpg', '24ff0a62aaaecba715a3d4a94e3abe7e', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos/squirrel.jpg', '24ff0a62aaaecba715a3d4a94e3abe7e'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin/versions/ownCloudUserManual.pdf.d1612699225', '262a5ddbc4fadefa2b0409c5b598eddf', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin/versions/owncloudusermanual.pdf.d1612699225', '17bf9764729376aeeb17f6ea86bd8d24'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/ownCloudUserManual.pdf', '27dcad31bb6763476acbf7f75083c149', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/owncloudusermanual.pdf', 'f5a459a896796eeb5d8ea5f2b4473e40'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/documents/example.odt', '2a5880cf8223f2ec5c351270e03246f5', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/documents/example.odt', '2a5880cf8223f2ec5c351270e03246f5'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files', '2b25385dd9f33785c4df8688f378ffc9', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files', '2b25385dd9f33785c4df8688f378ffc9'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/squirrel.jpg', '2c3f7cc21e8d099f2ca87ff553c067c9', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/squirrel.jpg', '2c3f7cc21e8d099f2ca87ff553c067c9'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos/paris.jpg', '2dc40f7fc345aa97a2060deee1ce179e', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos/paris.jpg', '2dc40f7fc345aa97a2060deee1ce179e'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/avatar.jpg', '2ebf0ce4d5487a67f43fd4c364467450', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/avatar.jpg', '2ebf0ce4d5487a67f43fd4c364467450'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin/files', '2f8d13a86120d05956838f178bd476f0', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin/files', 'c38b6ffca911d3eb111070c8cff92b6c'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/music/projekteva-letitrain.mp3', '39006201d6271285b8766f72831e86e0', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/music/projekteva-letitrain.mp3', '39006201d6271285b8766f72831e86e0'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos/squirrel.jpg', '3a27aa9813f3f4db2216216389c807a5', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos/squirrel.jpg', '3a27aa9813f3f4db2216216389c807a5'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/share-keys', '3d0ced2b4f26c4aca39baf894321f1b1', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/share-keys', 'faac5fa81955747435fed45cdd2988c2'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013010/avatar.jpg', '3d356d1a41d5795bb79aa898af7af5ef', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013010/avatar.jpg', '3d356d1a41d5795bb79aa898af7af5ef'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/music', '3f086dbdd7f8f0b2f6416b57215fb81d', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/music', '3f086dbdd7f8f0b2f6416b57215fb81d'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos/san francisco.jpg', '3f928b34c2e0402e6709f5cc95064483', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos/san-francisco.jpg', '406241689407df4142185ab21939604d'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files_encryption/keyfiles.backup', '408ce2136632fcffebf2ffcfe10374ae', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files-encryption/keyfiles.backup', '67ce457cca5bd8090926d2a85b0cadbc'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin', '43e1229b54e3c1e6e576f089ae31f530', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin', '43e1229b54e3c1e6e576f089ae31f530'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/82', '44c57eeb0f5bd9101c8a349e65e97e8b', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/82', '44c57eeb0f5bd9101c8a349e65e97e8b'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011', '45f62dc59fcccdc756a2a6308d506458', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011', '45f62dc59fcccdc756a2a6308d506458'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/documents/example.odt', '46698fa087e5ce464d24443b4773446d', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/documents/example.odt', '46698fa087e5ce464d24443b4773446d'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/84', '488b5cf8a0db692b3681262ca816d607', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/84', '488b5cf8a0db692b3681262ca816d607'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/avatar.jpg', '4aab2a644f57ed07cdba8637f9c5b3e8', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/avatar.jpg', '4aab2a644f57ed07cdba8637f9c5b3e8'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos', '4d15fe8655fa46344ee7696d006a3312', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos', '4d15fe8655fa46344ee7696d006a3312'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/documents/example.odt', '514538d76a2fd4a2895aacb5418f937b', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/documents/example.odt', '514538d76a2fd4a2895aacb5418f937b'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files_encryption/keyfiles', '52e600ef9df12fe04e33518008bbdd3f', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files-encryption/keyfiles', '0a79bec5143c22c252591c9125a42239'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_versions/ownCloudUserManual.pdf', '53c69d3e58e4d399e3930a85544b04a2', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-versions/owncloudusermanual.pdf', '5c7ffa3cfa3d36d5e6d51ac724ff22c2'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/11', '546d2631b0634229148bc68fb5c78895', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/11', '546d2631b0634229148bc68fb5c78895'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/versions', '54d19b749bd483f760d0c220c86427dd', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/versions', 'c761cfa4904a596a40a79b0a040dfce6'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/files/Buffer_UAS_191013011.mp4.d1612699395', '5632dd8403dcde8f2f3ebb0064fcd295', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/files/buffer-uas-191013011.mp4.d1612699395', 'b2e217c7a287fea3acfd32533dea9498'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/8', '58a27bb7e64cad42ff25fa4bc1a3745f', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/8', '58a27bb7e64cad42ff25fa4bc1a3745f'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/documents/c034ca6f69fcfa81b55cd2856b72ca1f192dc92f.odt', '59aebadb284c3581ed97ddbf27c51101', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/documents/c034ca6f69fcfa81b55cd2856b72ca1f192dc92f.odt', '59aebadb284c3581ed97ddbf27c51101'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/san francisco.jpg', '5a4acaa69262fb524ae21d1067fdd7ca', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/san-francisco.jpg', 'e4f92e5866eaaf01b7c95b685a67318b'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/avatar.png', '5d23f013d5b3192c73de3e4c465ee31a', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/avatar.png', '5d23f013d5b3192c73de3e4c465ee31a'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/3', '5e548f70df986f62594a371014b42191', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/3', '5e548f70df986f62594a371014b42191'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/files', '5ec94b6b0723ae3965d47d23e725212f', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/files', 'e52416838d372ac98526962ad3259334'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails', '5f779b6bc8c328c6c7d1ed484b70a501', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails', '5f779b6bc8c328c6c7d1ed484b70a501'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos/squirrel.jpg', '61bff149412fe3fe5e300192c72b53cb', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos/squirrel.jpg', '61bff149412fe3fe5e300192c72b53cb'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_encryption/keyfiles', '63af19b2a39818bd214faf47f8233dd7', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-encryption/keyfiles', '58ecfa71314ab37e440af799286e5676'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin/versions', '649a8e1295aa87d3b4900a1441fbd223', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin/versions', '6495540d9c92cfd455efd959cd66f4b0'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/10/54-54.png', '698fe7bce11fd341098edb3993f4cdbe', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/10/54-54.png', '698fe7bce11fd341098edb3993f4cdbe'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/music', '6ae43ea7c64d3824005915c4340b8fe9', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/music', '6ae43ea7c64d3824005915c4340b8fe9'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/thumbnails/24', '6de33b051a461d8dc8c22848f2373a27', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/thumbnails/24', '6de33b051a461d8dc8c22848f2373a27'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/thumbnails/71', '70201153517321c5fc5e52847b1a78c2', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/thumbnails/71', '70201153517321c5fc5e52847b1a78c2'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/7/54-54.png', '72574f1aefd3b4ad527ecb7fd276e6a4', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/7/54-54.png', '72574f1aefd3b4ad527ecb7fd276e6a4'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos/paris.jpg', '74dc9aed47cec82157d44f6e6e5ff07c', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos/paris.jpg', '74dc9aed47cec82157d44f6e6e5ff07c'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013013/avatar.jpg', '7550752d357a942148cd948ec5c15bc9', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013013/avatar.jpg', '7550752d357a942148cd948ec5c15bc9'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos/paris.jpg', '769bf8e40b8bd4fab05bb2520c376dd1', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/photos/paris.jpg', '769bf8e40b8bd4fab05bb2520c376dd1'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin/keyfiles', '77be553c490da7e039cdd863dd82cd4c', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin/keyfiles', 'e2f5311bc791029cd3a517f8c5b4b72d'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/documents', '784c9e8a0874bb31fc65d99dc4397f9c', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/documents', '784c9e8a0874bb31fc65d99dc4397f9c'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/documents', '7bc323d8f514d28e8c2e794f22a93b9a', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/documents', '7bc323d8f514d28e8c2e794f22a93b9a'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/keyfiles', '7d4be51c179cf13d8912ffad8fb322c5', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/keyfiles', 'aff92ccf007f4ec7aa9ff3bae0369efd'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/10/1923-916-with-aspect.png', '802281a47efdb2840e9faa1f755542f2', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/10/1923-916-with-aspect.png', '802281a47efdb2840e9faa1f755542f2'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/music', '81276f0733cc8de5a352f22b15ec41d0', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/music', '81276f0733cc8de5a352f22b15ec41d0'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/files/Buffer_UAS_191013011.mp4.d1612800250', '833f46a2edb1362f633dd99fcc8484f8', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/files/buffer-uas-191013011.mp4.d1612800250', '588871c4edf20b05225ca5843de762dc'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/10', '8bc6a7259389017d5100c799b7774695', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/10', '8bc6a7259389017d5100c799b7774695'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/12/54-54.png', '8fb26ed15464e10d6522dcb10ebe09cb', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/12/54-54.png', '8fb26ed15464e10d6522dcb10ebe09cb'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/Buffer_UAS_191013011.mp4', '9069e9db00034d3fc49520bf8d41aad9', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/buffer-uas-191013011.mp4', '2def3ac1691f0c0fd74e32b26316d8b8'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/music/projekteva-letitrain.mp3', '914fb13221546f9f33cca612cc893d72', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/music/projekteva-letitrain.mp3', '914fb13221546f9f33cca612cc893d72'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/Buffer_UAS_191013011.mp4', '917324ac17c71e885d5f4a26d1d2d219', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/buffer-uas-191013011.mp4', '09d7c2ef1a5d659b2c63861c10ff43b3'),
('C:\\xampp\\htdocs\\STTPCloud\\data/123/avatar.jpg', '9ab8b4af84af415e85512bc3951b3f83', 'C:\\xampp\\htdocs\\STTPCloud\\data/123/avatar.jpg', '9ab8b4af84af415e85512bc3951b3f83'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/ownCloudUserManual.pdf', '9af8df756ffcc2277310ec7f844a64d5', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files/owncloudusermanual.pdf', '73b9cd6bc3218fec806bac476f5f26ef'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/7', '9d6ed74249e89b06218b4fdad6b21d0d', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/7', '9d6ed74249e89b06218b4fdad6b21d0d'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/72', '9f17b8a78b4f026034df709c5cfe0f98', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/72', '9f17b8a78b4f026034df709c5cfe0f98'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013009/avatar.jpg', 'a04b19b07f6840b5d48be481f0744574', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013009/avatar.jpg', 'a04b19b07f6840b5d48be481f0744574'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/documents', 'a6b46ee625116333fdf5d0706a2fd243', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/documents', 'a6b46ee625116333fdf5d0706a2fd243'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/music/projekteva-letitrain.mp3', 'aaecf9dd0fac4ac86aa44dc43a49ce2a', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/music/projekteva-letitrain.mp3', 'aaecf9dd0fac4ac86aa44dc43a49ce2a'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/cache', 'abf3b4681578c0de50b0326176a7110f', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/cache', 'abf3b4681578c0de50b0326176a7110f'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos', 'b07c0f576c27905e4fa6d4ea5b4e1818', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/files/photos', 'b07c0f576c27905e4fa6d4ea5b4e1818'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin/share-keys', 'b0c964a987c988a79dea3ae2156e905c', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin/share-keys', '3678fde97943fd5fd2dab5fe32fee438'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_versions/photos/Buffer_UAS_191013011.mp4', 'b22493bd1a814f63246465db345c9812', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-versions/photos/buffer-uas-191013011.mp4', 'b49e04ccc09c9e194f9b46459e11a9dc'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos/san francisco.jpg', 'b84a7842cf824c95e32e0b02bb69f790', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos/san-francisco.jpg', 'e7c360f462be19489bdd80f44e7feb0e'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_trashbin', 'bccf46a3dc03704df7315128230abc5d', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-trashbin', '28296b6a564c0083460b6e0fae97f91c'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_trashbin/files/ownCloudUserManual.pdf.d1612687720', 'bed830fa0323822db58e9131b9abc7f2', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-trashbin/files/owncloudusermanual.pdf.d1612687720', 'd293e53d0a9f7509e32f0e7c6d2d5107'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/thumbnails/61', 'bef862e1ab41363e051126fdb2cbd7fc', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/thumbnails/61', 'bef862e1ab41363e051126fdb2cbd7fc'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/29', 'c2e7c3881f0a156f90db928bcc809373', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/29', 'c2e7c3881f0a156f90db928bcc809373'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files', 'c3160d4032c4e8a244c3282653352e16', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files', 'c3160d4032c4e8a244c3282653352e16'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos', 'c36316ae86771f6484d61f8bbb6587d5', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos', 'c36316ae86771f6484d61f8bbb6587d5'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_encryption/keyfiles.backup', 'c3c2f5962279edca9ea4c976b9b0bb2b', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-encryption/keyfiles.backup', '29e041d731f7cdfda112f4cc34ba813e'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013009/avatar.png', 'cac7aa165747d264905312227bc9ba2f', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013009/avatar.png', 'cac7aa165747d264905312227bc9ba2f'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_versions/ownCloudUserManual.pdf', 'caea75991b481769970fbb4c5b9ff63b', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-versions/owncloudusermanual.pdf', '779e9bf7d6b7ebc6d16bfa8942c333e5'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/3/1-1.png', 'cec85754a76df7c18c04501a6f91c0da', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/3/1-1.png', 'cec85754a76df7c18c04501a6f91c0da'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files_encryption/keyfiles.backup', 'cecc851002bfd0836ee1109bfeaabbc7', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files-encryption/keyfiles.backup', '0af730831f6d55588388d6014c535d8b'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/documents', 'cf8b711387b5f56fabff39f8585ff6c1', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/documents', 'cf8b711387b5f56fabff39f8585ff6c1'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012/avatar.jpg', 'cfb5041680a41a9915c2f3aa47e91465', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012/avatar.jpg', 'cfb5041680a41a9915c2f3aa47e91465'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011014/avatar.png', 'd02cd93700a9c8a1bd103dce3cddfdaf', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011014/avatar.png', 'd02cd93700a9c8a1bd103dce3cddfdaf'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/avatar.png', 'd15297d9de8c2aeeb269f0d003519220', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/avatar.png', 'd15297d9de8c2aeeb269f0d003519220'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files', 'd15ac861466497e4bdca636abcd8e023', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files', 'd15ac861466497e4bdca636abcd8e023'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files_encryption/keyfiles', 'd2995ff3cd4d4f3ab09db686e7828423', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files-encryption/keyfiles', '293face4beaeb84d5c8f2b3e9340da2b'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/paris.jpg', 'd74133071e945ff63c6f16b5dc7e8116', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/photos/paris.jpg', 'd74133071e945ff63c6f16b5dc7e8116'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/cache', 'd9589d9367129d1bab84f737657658ad', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/cache', 'd9589d9367129d1bab84f737657658ad'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/73', 'e17f0b1d5ec5b9239e2e3d763109e1ab', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/73', 'e17f0b1d5ec5b9239e2e3d763109e1ab'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos', 'e2fac155f182ca4fa7921d6a8fc9ead2', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/photos', 'e2fac155f182ca4fa7921d6a8fc9ead2'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/cache', 'e98beef0a7c289ae6bec3e3f0f317836', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/cache', 'e98beef0a7c289ae6bec3e3f0f317836'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011', 'ebd45f6fcea8ac3a5f51685e61ec9370', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011', 'ebd45f6fcea8ac3a5f51685e61ec9370'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/11/54-54.png', 'ed1004b3b7dfa8c70eff1b572e2a7ffa', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/11/54-54.png', 'ed1004b3b7dfa8c70eff1b572e2a7ffa'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files_encryption/keyfiles.backup', 'eda63aa12e841761c2992cecd1f3da15', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files-encryption/keyfiles.backup', '77a5be161fac53f05189076a09500704'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013010/avatar.png', 'efaecbe17846ed510c15651f25586357', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013010/avatar.png', 'efaecbe17846ed510c15651f25586357'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013012', 'f1d6889a83384d9bca4fafb7c7b580ce', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013012', 'f1d6889a83384d9bca4fafb7c7b580ce'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/11/1923-916-with-aspect.png', 'f3a40afb45bc465f6e8e48904dc40737', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/11/1923-916-with-aspect.png', 'f3a40afb45bc465f6e8e48904dc40737'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/thumbnails/24/1-1.png', 'f41b68b4330e8401cba0f3840522fd7c', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/thumbnails/24/1-1.png', 'f41b68b4330e8401cba0f3840522fd7c'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/avatar.jpg', 'f4e5ba437f77c4079e2ff37e45b2a415', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/avatar.jpg', 'f4e5ba437f77c4079e2ff37e45b2a415'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/83', 'fae162ff57011b91a191d167ec0d19ee', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/thumbnails/83', 'fae162ff57011b91a191d167ec0d19ee'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files_encryption/keyfiles', 'fdde5b10a29b6329e63fd8754a75fe9e', 'C:\\xampp\\htdocs\\STTPCloud\\data/191013011/files-encryption/keyfiles', '09563d32faf92cbc96cf543eacdbd769'),
('C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/documents', 'fe447b9bf2df8965af4b852be0789d9c', 'C:\\xampp\\htdocs\\STTPCloud\\data/admin/files/documents', 'fe447b9bf2df8965af4b852be0789d9c'),
('C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/ownCloudUserManual.pdf', 'ffc4b89940cd9e6a07ec219d48faf3b9', 'C:\\xampp\\htdocs\\STTPCloud\\data/191011011/files/owncloudusermanual.pdf', '57cc32b52befc5063449d54dbbd98d4a');

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallery_sharing`
--

CREATE TABLE IF NOT EXISTS `oc_gallery_sharing` (
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `gallery_id` int(11) NOT NULL DEFAULT '0',
  `recursive` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_groups`
--

CREATE TABLE IF NOT EXISTS `oc_groups` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_groups`
--

INSERT INTO `oc_groups` (`gid`) VALUES
('Dosen'),
('Mahasiswa'),
('Pegawai'),
('admin');

-- --------------------------------------------------------

--
-- Table structure for table `oc_group_admin`
--

CREATE TABLE IF NOT EXISTS `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_group_user`
--

CREATE TABLE IF NOT EXISTS `oc_group_user` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_group_user`
--

INSERT INTO `oc_group_user` (`gid`, `uid`) VALUES
('Dosen', '123'),
('Mahasiswa', '191011014'),
('Mahasiswa', '191013009'),
('Mahasiswa', '191013010'),
('Mahasiswa', '191013011'),
('Mahasiswa', '191013012'),
('Mahasiswa', '191013013'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `oc_jobs`
--

CREATE TABLE IF NOT EXISTS `oc_jobs` (
`id` int(10) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `argument` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_jobs`
--

INSERT INTO `oc_jobs` (`id`, `class`, `argument`, `last_run`) VALUES
(1, 'OC\\Cache\\FileGlobalGC', 'null', 1612802887),
(2, 'OCA\\Activity\\BackgroundJob\\EmailNotification', 'null', 1612806002),
(3, 'OCA\\Activity\\BackgroundJob\\ExpireActivities', 'null', 1612777831);

-- --------------------------------------------------------

--
-- Table structure for table `oc_locks`
--

CREATE TABLE IF NOT EXISTS `oc_locks` (
`id` int(10) unsigned NOT NULL,
  `userid` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `owner` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `timeout` int(10) unsigned DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scope` smallint(6) DEFAULT NULL,
  `depth` smallint(6) DEFAULT NULL,
  `uri` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_lucene_status`
--

CREATE TABLE IF NOT EXISTS `oc_lucene_status` (
  `fileid` int(11) NOT NULL DEFAULT '0',
  `status` varchar(1) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_lucene_status`
--

INSERT INTO `oc_lucene_status` (`fileid`, `status`) VALUES
(1, 'I'),
(2, 'I'),
(3, 'I'),
(4, 'I'),
(5, 'I'),
(6, 'I'),
(7, 'I'),
(9, 'I'),
(10, 'I'),
(11, 'I'),
(12, 'I'),
(19, 'I'),
(20, 'I'),
(21, 'I'),
(34, 'I'),
(35, 'I'),
(36, 'I'),
(37, 'I'),
(38, 'I'),
(39, 'I'),
(40, 'I'),
(41, 'I'),
(73, 'I');

-- --------------------------------------------------------

--
-- Table structure for table `oc_mimetypes`
--

CREATE TABLE IF NOT EXISTS `oc_mimetypes` (
`id` int(11) NOT NULL,
  `mimetype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_mimetypes`
--

INSERT INTO `oc_mimetypes` (`id`, `mimetype`) VALUES
(3, 'application'),
(10, 'application/octet-stream'),
(7, 'application/pdf'),
(4, 'application/vnd.oasis.opendocument.text'),
(5, 'audio'),
(6, 'audio/mpeg'),
(1, 'httpd'),
(2, 'httpd/unix-directory'),
(8, 'image'),
(9, 'image/jpeg'),
(11, 'image/png'),
(12, 'video'),
(13, 'video/mp4');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pictures_images_cache`
--

CREATE TABLE IF NOT EXISTS `oc_pictures_images_cache` (
  `uid_owner` varchar(64) COLLATE utf8_bin NOT NULL,
  `path` varchar(256) COLLATE utf8_bin NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_preferences`
--

CREATE TABLE IF NOT EXISTS `oc_preferences` (
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_preferences`
--

INSERT INTO `oc_preferences` (`userid`, `appid`, `configkey`, `configvalue`) VALUES
('123', 'files', 'quota', '50 GB'),
('191011014', 'files', 'quota', '10 GB'),
('191013009', 'files', 'quota', '10 GB'),
('191013010', 'files', 'quota', '10 GB'),
('191013011', 'core', 'lang', 'id'),
('191013011', 'files', 'quota', '5 GB'),
('191013011', 'firstrunwizard', 'show', '0'),
('191013011', 'login', 'lastLogin', '1612797450'),
('191013012', 'files', 'quota', '5 GB'),
('191013012', 'firstrunwizard', 'show', '0'),
('191013012', 'login', 'lastLogin', '1612698896'),
('191013013', 'files', 'quota', '5 GB'),
('admin', 'contacts', 'contacts_properties_indexed', 'yes'),
('admin', 'contacts', 'lastgroup', 'all'),
('admin', 'core', 'lang', 'id'),
('admin', 'documents', 'save_path', '/'),
('admin', 'firstrunwizard', 'show', '0'),
('admin', 'login', 'lastLogin', '1612797578'),
('admin', 'settings', 'email', 'admin.cloud@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_privatedata`
--

CREATE TABLE IF NOT EXISTS `oc_privatedata` (
`keyid` int(10) unsigned NOT NULL,
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `app` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `key` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_properties`
--

CREATE TABLE IF NOT EXISTS `oc_properties` (
`id` int(11) NOT NULL,
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyvalue` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_share`
--

CREATE TABLE IF NOT EXISTS `oc_share` (
`id` int(11) NOT NULL,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` int(11) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_source` int(11) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_share_external`
--

CREATE TABLE IF NOT EXISTS `oc_share_external` (
`id` int(11) NOT NULL,
  `remote` varchar(512) COLLATE utf8_bin NOT NULL COMMENT 'Url of the remove owncloud instance',
  `share_token` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'md5 hash of the mountpoint'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_storages`
--

CREATE TABLE IF NOT EXISTS `oc_storages` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
`numeric_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_storages`
--

INSERT INTO `oc_storages` (`id`, `numeric_id`) VALUES
('home::191013011', 5),
('home::191013012', 4),
('home::admin', 1),
('local::C:\\xampp\\htdocs\\STTPCloud\\data/', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_users`
--

CREATE TABLE IF NOT EXISTS `oc_users` (
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_users`
--

INSERT INTO `oc_users` (`uid`, `displayname`, `password`) VALUES
('123', 'Dr.Noviarti, SP.MSc', '$2a$08$s/kNUpHo5bTYfm8iuP5lyueTrtXZl0T2f3SjbIHO3hxua2UbWIl/q'),
('191011014', 'Joni Sarwan', '$2a$08$qHPoBJ51bR/9DA10vu9NEOFa.ZCF.tHCkcdBsYdCVAOWfetvOkrKK'),
('191013009', 'Fitri Permata Sari', '$2a$08$mBbN4g3arD9HtxY4WYcMheaKNZYGHnpaPvcp5Mth.b/vbT7DmhRrW'),
('191013010', 'Luciana Eka Putri', '$2a$08$jFEWtoagVhwzKKWVdcNS7eN/mHDB0/7.wiGz4idUDHtR3T.2qRtsW'),
('191013011', 'Wira Auriga', '$2a$08$OxvFHalYva3uWS1ESHwjB.OkZCZz2CqS4AfKVJZ8YVe0PWvNqB9kW'),
('191013012', 'Ramzil Huda', '$2a$08$gfsU1gf.mgNX2Q7Qab1NfuRuCYiUYZ35VgYDOutRzufVQZSJdgjrm'),
('191013013', 'Lidia Devega', '$2a$08$1Q9ozbW8jBHBUYkRUZNB.eqHnhvEKQ0oSqZ2Gqsn4L1UnElBOJ042'),
('admin', 'Admin STTP', '$2a$08$2yaDsJDfq3bvRijirEjC6u/N2R.iiEt9OzVg/g9TMTUaejZuHoHpm');

-- --------------------------------------------------------

--
-- Table structure for table `oc_vcategory`
--

CREATE TABLE IF NOT EXISTS `oc_vcategory` (
`id` int(10) unsigned NOT NULL,
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_vcategory`
--

INSERT INTO `oc_vcategory` (`id`, `uid`, `type`, `category`) VALUES
(1, 'admin', 'event', 'Ulang tahun'),
(2, 'admin', 'event', 'Bisnis'),
(3, 'admin', 'event', 'Panggilan'),
(4, 'admin', 'event', 'Klien'),
(5, 'admin', 'event', 'Pengirim'),
(6, 'admin', 'event', 'Hari Libur'),
(7, 'admin', 'event', 'Ide'),
(8, 'admin', 'event', 'Perjalanan'),
(9, 'admin', 'event', 'Peringatan'),
(10, 'admin', 'event', 'Rapat'),
(11, 'admin', 'event', 'Lainnya'),
(12, 'admin', 'event', 'Pribadi'),
(13, 'admin', 'event', 'Proyek'),
(14, 'admin', 'event', 'Pertanyaan'),
(15, 'admin', 'event', 'Kantor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_vcategory_to_object`
--

CREATE TABLE IF NOT EXISTS `oc_vcategory_to_object` (
  `objid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_activity`
--
ALTER TABLE `oc_activity`
 ADD PRIMARY KEY (`activity_id`), ADD KEY `activity_user_time` (`affecteduser`,`timestamp`), ADD KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`), ADD KEY `activity_filter_app` (`affecteduser`,`app`,`timestamp`);

--
-- Indexes for table `oc_activity_mq`
--
ALTER TABLE `oc_activity_mq`
 ADD PRIMARY KEY (`mail_id`), ADD KEY `amp_user` (`amq_affecteduser`), ADD KEY `amp_latest_send_time` (`amq_latest_send`), ADD KEY `amp_timestamp_time` (`amq_timestamp`);

--
-- Indexes for table `oc_appconfig`
--
ALTER TABLE `oc_appconfig`
 ADD PRIMARY KEY (`appid`,`configkey`), ADD KEY `appconfig_config_key_index` (`configkey`), ADD KEY `appconfig_appid_key` (`appid`);

--
-- Indexes for table `oc_bookmarks`
--
ALTER TABLE `oc_bookmarks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_bookmarks_tags`
--
ALTER TABLE `oc_bookmarks_tags`
 ADD UNIQUE KEY `bookmark_tag` (`bookmark_id`,`tag`);

--
-- Indexes for table `oc_clndr_calendars`
--
ALTER TABLE `oc_clndr_calendars`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_clndr_objects`
--
ALTER TABLE `oc_clndr_objects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_clndr_repeat`
--
ALTER TABLE `oc_clndr_repeat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_contacts_addressbooks`
--
ALTER TABLE `oc_contacts_addressbooks`
 ADD PRIMARY KEY (`id`), ADD KEY `c_addressbook_userid_index` (`userid`);

--
-- Indexes for table `oc_contacts_cards`
--
ALTER TABLE `oc_contacts_cards`
 ADD PRIMARY KEY (`id`), ADD KEY `c_addressbookid_index` (`addressbookid`);

--
-- Indexes for table `oc_contacts_cards_properties`
--
ALTER TABLE `oc_contacts_cards_properties`
 ADD PRIMARY KEY (`id`), ADD KEY `cp_contactid_index` (`contactid`), ADD KEY `cp_name_index` (`name`), ADD KEY `cp_value_index` (`value`);

--
-- Indexes for table `oc_documents_member`
--
ALTER TABLE `oc_documents_member`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `oc_documents_op`
--
ALTER TABLE `oc_documents_op`
 ADD PRIMARY KEY (`seq`), ADD UNIQUE KEY `documents_op_eis_idx` (`es_id`,`seq`);

--
-- Indexes for table `oc_documents_revisions`
--
ALTER TABLE `oc_documents_revisions`
 ADD UNIQUE KEY `documents_rev_eis_idx` (`es_id`,`seq_head`);

--
-- Indexes for table `oc_documents_session`
--
ALTER TABLE `oc_documents_session`
 ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `oc_filecache`
--
ALTER TABLE `oc_filecache`
 ADD PRIMARY KEY (`fileid`), ADD UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`), ADD KEY `fs_parent_name_hash` (`parent`,`name`), ADD KEY `fs_storage_mimetype` (`storage`,`mimetype`), ADD KEY `fs_storage_mimepart` (`storage`,`mimepart`), ADD KEY `fs_storage_size` (`storage`,`size`,`fileid`);

--
-- Indexes for table `oc_files_trash`
--
ALTER TABLE `oc_files_trash`
 ADD PRIMARY KEY (`auto_id`), ADD KEY `id_index` (`id`), ADD KEY `timestamp_index` (`timestamp`), ADD KEY `user_index` (`user`);

--
-- Indexes for table `oc_file_map`
--
ALTER TABLE `oc_file_map`
 ADD PRIMARY KEY (`logic_path_hash`), ADD UNIQUE KEY `file_map_pp_index` (`physic_path_hash`);

--
-- Indexes for table `oc_groups`
--
ALTER TABLE `oc_groups`
 ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `oc_group_admin`
--
ALTER TABLE `oc_group_admin`
 ADD PRIMARY KEY (`gid`,`uid`), ADD KEY `group_admin_uid` (`uid`);

--
-- Indexes for table `oc_group_user`
--
ALTER TABLE `oc_group_user`
 ADD PRIMARY KEY (`gid`,`uid`);

--
-- Indexes for table `oc_jobs`
--
ALTER TABLE `oc_jobs`
 ADD PRIMARY KEY (`id`), ADD KEY `job_class_index` (`class`);

--
-- Indexes for table `oc_locks`
--
ALTER TABLE `oc_locks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_lucene_status`
--
ALTER TABLE `oc_lucene_status`
 ADD PRIMARY KEY (`fileid`), ADD KEY `status_index` (`status`);

--
-- Indexes for table `oc_mimetypes`
--
ALTER TABLE `oc_mimetypes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `mimetype_id_index` (`mimetype`);

--
-- Indexes for table `oc_preferences`
--
ALTER TABLE `oc_preferences`
 ADD PRIMARY KEY (`userid`,`appid`,`configkey`);

--
-- Indexes for table `oc_privatedata`
--
ALTER TABLE `oc_privatedata`
 ADD PRIMARY KEY (`keyid`);

--
-- Indexes for table `oc_properties`
--
ALTER TABLE `oc_properties`
 ADD PRIMARY KEY (`id`), ADD KEY `property_index` (`userid`);

--
-- Indexes for table `oc_share`
--
ALTER TABLE `oc_share`
 ADD PRIMARY KEY (`id`), ADD KEY `item_share_type_index` (`item_type`,`share_type`), ADD KEY `file_source_index` (`file_source`), ADD KEY `token_index` (`token`);

--
-- Indexes for table `oc_share_external`
--
ALTER TABLE `oc_share_external`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`), ADD KEY `sh_external_user` (`user`);

--
-- Indexes for table `oc_storages`
--
ALTER TABLE `oc_storages`
 ADD PRIMARY KEY (`numeric_id`), ADD UNIQUE KEY `storages_id_index` (`id`);

--
-- Indexes for table `oc_users`
--
ALTER TABLE `oc_users`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `oc_vcategory`
--
ALTER TABLE `oc_vcategory`
 ADD PRIMARY KEY (`id`), ADD KEY `uid_index` (`uid`), ADD KEY `type_index` (`type`), ADD KEY `category_index` (`category`);

--
-- Indexes for table `oc_vcategory_to_object`
--
ALTER TABLE `oc_vcategory_to_object`
 ADD PRIMARY KEY (`categoryid`,`objid`,`type`), ADD KEY `vcategory_objectd_index` (`objid`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_activity`
--
ALTER TABLE `oc_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_activity_mq`
--
ALTER TABLE `oc_activity_mq`
MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_bookmarks`
--
ALTER TABLE `oc_bookmarks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_clndr_calendars`
--
ALTER TABLE `oc_clndr_calendars`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_clndr_objects`
--
ALTER TABLE `oc_clndr_objects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_clndr_repeat`
--
ALTER TABLE `oc_clndr_repeat`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_contacts_addressbooks`
--
ALTER TABLE `oc_contacts_addressbooks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_contacts_cards`
--
ALTER TABLE `oc_contacts_cards`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_contacts_cards_properties`
--
ALTER TABLE `oc_contacts_cards_properties`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_documents_member`
--
ALTER TABLE `oc_documents_member`
MODIFY `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Unique per user and session',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_documents_op`
--
ALTER TABLE `oc_documents_op`
MODIFY `seq` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sequence number',AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_filecache`
--
ALTER TABLE `oc_filecache`
MODIFY `fileid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `oc_files_trash`
--
ALTER TABLE `oc_files_trash`
MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_jobs`
--
ALTER TABLE `oc_jobs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_locks`
--
ALTER TABLE `oc_locks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_mimetypes`
--
ALTER TABLE `oc_mimetypes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_privatedata`
--
ALTER TABLE `oc_privatedata`
MODIFY `keyid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_properties`
--
ALTER TABLE `oc_properties`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_share`
--
ALTER TABLE `oc_share`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_share_external`
--
ALTER TABLE `oc_share_external`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_storages`
--
ALTER TABLE `oc_storages`
MODIFY `numeric_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_vcategory`
--
ALTER TABLE `oc_vcategory`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
