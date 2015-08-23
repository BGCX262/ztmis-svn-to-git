-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version       5.1.6-alpha-nt-max

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0
*/;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- Dumping data for table `admin`
--


/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
LOCK TABLES `admin` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

--
-- Table structure for table `course`
--
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` bigint(10) unsigned NOT NULL auto_increment,
  `course_info` varchar(200) NOT NULL,
  `fee` bigint(10) unsigned NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `course_time` varchar(20) NOT NULL,
  `course_place` char(255) NOT NULL,
  `teacher_id` bigint(10) default NULL,
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


--
-- Dumping data for table `course`
--


/*!40000 ALTER TABLE `course` DISABLE KEYS */;
LOCK TABLES `course` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

--
-- Table structure for table `faq_list`
--

DROP TABLE IF EXISTS `faq_list`;
CREATE TABLE `faq_list` (
  `faq_id` bigint(10) unsigned NOT NULL auto_increment,
  `question` text,
  `answer` text,
  PRIMARY KEY  (`faq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq_list`
--


/*!40000 ALTER TABLE `faq_list` DISABLE KEYS */;
LOCK TABLES `faq_list` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `faq_list` ENABLE KEYS */;

--
-- Table structure for table `receipt_list`
--

DROP TABLE IF EXISTS `receipt_list`;
CREATE TABLE `receipt_list` (
  `list_id` bigint(10) unsigned NOT NULL auto_increment,
  `student_id` bigint(10) unsigned NOT NULL,
  `amount` double default NULL,
  `date` datetime default NULL,
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`list_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt_list`
--


/*!40000 ALTER TABLE `receipt_list` DISABLE KEYS */;
LOCK TABLES `receipt_list` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `receipt_list` ENABLE KEYS */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) default NULL,
  `gender` char(6) default NULL,
  `phone` char(11) NOT NULL,
  `dormitory` char(6) default 'false',
  `major` varchar(20) default NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- Dumping data for table `student`
--


/*!40000 ALTER TABLE `student` DISABLE KEYS */;
LOCK TABLES `student` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `course_id` bigint(10) unsigned NOT NULL,
  `student_id` bigint(10) unsigned NOT NULL,
  PRIMARY KEY  (`course_id`,`student_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_course`
--


/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
LOCK TABLES `student_course` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) default NULL,
  `title` varchar(10) default NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY  (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- Dumping data for table `teacher`
--


/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
LOCK TABLES `teacher` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `test`
--


/*!40000 ALTER TABLE `test` DISABLE KEYS */;
LOCK TABLES `test` WRITE;
INSERT INTO `test` VALUES (1,'testname','testpassword'),(2,'testname2','testpass
word');
UNLOCK TABLES;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
LOCK TABLES `admin` WRITE;
INSERT INTO `admin` VALUES (1,'admin','admin');
UNLOCK TABLES;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;