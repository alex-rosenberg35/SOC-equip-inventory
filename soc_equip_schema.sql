-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: db406865769.db.1and1.com
-- Generation Time: Oct 01, 2013 at 02:13 PM
-- Server version: 5.1.71
-- PHP Version: 5.3.3-7+squeeze17
-- 
-- Database: `db406865769`
-- 
CREATE DATABASE `db406865769` DEFAULT CHARACTER SET latin1 COLLATE latin1_german2_ci;
USE db406865769;

-- --------------------------------------------------------

-- 
-- Table structure for table `tblCRN700ID`
-- 

CREATE TABLE `tblCRN700ID` (
  `ID700` text COLLATE latin1_general_ci NOT NULL,
  `CRN` char(5) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID700`(9),`CRN`),
  KEY `CRN` (`CRN`,`ID700`(9))
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblCRN700ID`
-- 

INSERT INTO `tblCRN700ID` VALUES ('700000356', '22298');
INSERT INTO `tblCRN700ID` VALUES ('700000356', '22306');
INSERT INTO `tblCRN700ID` VALUES ('700000633', '22306');
INSERT INTO `tblCRN700ID` VALUES ('700001313', '22305');
INSERT INTO `tblCRN700ID` VALUES ('700002150', '22303');
INSERT INTO `tblCRN700ID` VALUES ('700002428', '22305');
INSERT INTO `tblCRN700ID` VALUES ('700002643', '22302');
INSERT INTO `tblCRN700ID` VALUES ('700003510', '22297');
INSERT INTO `tblCRN700ID` VALUES ('700003659', '22303');
INSERT INTO `tblCRN700ID` VALUES ('700004162', '22305');
INSERT INTO `tblCRN700ID` VALUES ('700004314', '22297');
INSERT INTO `tblCRN700ID` VALUES ('700004551', '22298');
INSERT INTO `tblCRN700ID` VALUES ('700004561', '22303');
INSERT INTO `tblCRN700ID` VALUES ('700004595', '22305');
INSERT INTO `tblCRN700ID` VALUES ('700004603', '22306');
INSERT INTO `tblCRN700ID` VALUES ('700004735', '22306');
INSERT INTO `tblCRN700ID` VALUES ('700005167', '22303');
INSERT INTO `tblCRN700ID` VALUES ('700005207', '22298');
INSERT INTO `tblCRN700ID` VALUES ('700005926', '22298');
INSERT INTO `tblCRN700ID` VALUES ('700006009', '22305');
INSERT INTO `tblCRN700ID` VALUES ('700006039', '22302');
INSERT INTO `tblCRN700ID` VALUES ('700006207', '22297');
INSERT INTO `tblCRN700ID` VALUES ('700006494', '22297');
INSERT INTO `tblCRN700ID` VALUES ('700007104', '22297');
INSERT INTO `tblCRN700ID` VALUES ('700007607', '22303');
INSERT INTO `tblCRN700ID` VALUES ('700008234', '22302');
INSERT INTO `tblCRN700ID` VALUES ('700008331', '22302');
INSERT INTO `tblCRN700ID` VALUES ('700008913', '22298');
INSERT INTO `tblCRN700ID` VALUES ('700009209', '22302');
INSERT INTO `tblCRN700ID` VALUES ('700009903', '22306');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblCourseCRN`
-- 

CREATE TABLE `tblCourseCRN` (
  `CRN` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `Department` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `CourseName` varchar(8) COLLATE latin1_general_ci NOT NULL COMMENT 'e.g., JRN14, AVF 26, etc.',
  `Section` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `Instructor` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `TeachingAssistant` varchar(35) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`CRN`),
  KEY `ClassNAME` (`CourseName`,`Section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblCourseCRN`
-- 

INSERT INTO `tblCourseCRN` VALUES ('22297', 'RTVF', 'RTVF145', '1', 'George Washington', 'Thomas Jefferson');
INSERT INTO `tblCourseCRN` VALUES ('22298', 'RTVF', 'RTVF147', '1', 'John Adams', 'Millard Fillmore');
INSERT INTO `tblCourseCRN` VALUES ('22302', 'JRN', 'JRN17', '1', 'Herbert Hoover', 'Theda Bara');
INSERT INTO `tblCourseCRN` VALUES ('22306', 'RTVF', 'RTVF27', '1', 'Martin Scorcese', 'DW Griffith');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblCourseEquip`
-- 

CREATE TABLE `tblCourseEquip` (
  `Course` varchar(8) COLLATE latin1_general_ci NOT NULL COMMENT 'e.g., RTVF125  or JRN16',
  `EquipmentType` varchar(8) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Course`,`EquipmentType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblCourseEquip`
-- 

INSERT INTO `tblCourseEquip` VALUES ('JRN14', 'AVC');
INSERT INTO `tblCourseEquip` VALUES ('JRN15', 'JF');
INSERT INTO `tblCourseEquip` VALUES ('JRN16', 'AVC');
INSERT INTO `tblCourseEquip` VALUES ('JRN17', 'AVC');
INSERT INTO `tblCourseEquip` VALUES ('RTVF107A', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF107A', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF107A', 'LM');
INSERT INTO `tblCourseEquip` VALUES ('RTVF107A', 'SLR');
INSERT INTO `tblCourseEquip` VALUES ('RTVF145', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF145', 'AVC');
INSERT INTO `tblCourseEquip` VALUES ('RTVF145', 'HD');
INSERT INTO `tblCourseEquip` VALUES ('RTVF145', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF147 ', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF147 ', 'DVC');
INSERT INTO `tblCourseEquip` VALUES ('RTVF147 ', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF164 ', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF164 ', 'HD');
INSERT INTO `tblCourseEquip` VALUES ('RTVF164 ', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF165', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF165', 'HD');
INSERT INTO `tblCourseEquip` VALUES ('RTVF165', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF21 ', 'AFMA');
INSERT INTO `tblCourseEquip` VALUES ('RTVF26', 'AVC');
INSERT INTO `tblCourseEquip` VALUES ('RTVF27', 'Bolex');
INSERT INTO `tblCourseEquip` VALUES ('RTVF27', 'FS');
INSERT INTO `tblCourseEquip` VALUES ('RTVF41 ', 'AFMA');
INSERT INTO `tblCourseEquip` VALUES ('RTVF41 ', 'ZA');
INSERT INTO `tblCourseEquip` VALUES ('RTVF47 ', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF47 ', 'Bolex');
INSERT INTO `tblCourseEquip` VALUES ('RTVF47 ', 'FMA');
INSERT INTO `tblCourseEquip` VALUES ('RTVF47 ', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF60', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF60', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF64 ', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF64 ', 'AVC');
INSERT INTO `tblCourseEquip` VALUES ('RTVF64 ', 'L3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF80 ', 'A3L');
INSERT INTO `tblCourseEquip` VALUES ('RTVF80 ', 'HD');
INSERT INTO `tblCourseEquip` VALUES ('RTVF80 ', 'L3L');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblGearHours`
-- 

CREATE TABLE `tblGearHours` (
  `EquipmentType` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `EquipmentDescription` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `DurationInHours` tinyint(4) DEFAULT NULL,
  `SunOpen` smallint(6) DEFAULT NULL,
  `SunClose` smallint(6) DEFAULT NULL,
  `MonOpen` smallint(6) DEFAULT NULL,
  `MondayClose` smallint(6) DEFAULT NULL,
  `TueOpen` smallint(6) DEFAULT NULL,
  `TueClose` smallint(6) DEFAULT NULL,
  `WedOpen` smallint(6) DEFAULT NULL,
  `WedClose` smallint(6) DEFAULT NULL,
  `ThuOpen` smallint(6) DEFAULT NULL,
  `ThuClose` smallint(6) DEFAULT NULL,
  `FriOpen` smallint(6) DEFAULT NULL,
  `FriClose` smallint(6) DEFAULT NULL,
  `SatOpen` smallint(6) DEFAULT NULL,
  `SatClose` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`EquipmentType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblGearHours`
-- 

INSERT INTO `tblGearHours` VALUES ('35MM', '35mm Still Cameras', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('A3L', 'ARRI 3-light Kit', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('AVC', 'AVC-Cameras', 24, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('BOLEX', 'Bolex-Kits', 48, 900, 1800, 900, 1800, 900, 1800, 900, 1800, 900, 1800, 900, 1700, 0, 0);
INSERT INTO `tblGearHours` VALUES ('DVC', 'DV Camera', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('FS', 'Film-Splicer', 0, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('JVC100', 'JVC100 HD Cameras', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('JVC700', 'JVC700U HD Cameras', 24, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('L3L', 'Lowel 3-light Kit', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('LM', 'Light Meters', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('MAAF', 'AF-designated Marantz Audio Ki', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('MAF', 'F-designated Marantz audio kit', 48, 900, 1800, 900, 1800, 900, 1800, 900, 1800, 900, 1800, 900, 1700, 0, 0);
INSERT INTO `tblGearHours` VALUES ('MAJF', 'JF-designated Marantz Audio Ki', 24, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);
INSERT INTO `tblGearHours` VALUES ('ZA', 'Zoom Audio Kit', 48, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400, 0, 2400);

-- --------------------------------------------------------

-- 
-- Table structure for table `tblInventory`
-- 

CREATE TABLE `tblInventory` (
  `EquipType` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `EquipID` varchar(8) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`EquipType`,`EquipID`),
  UNIQUE KEY `EquipmentID` (`EquipID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblInventory`
-- 

INSERT INTO `tblInventory` VALUES ('A3L', 'A3L-01');
INSERT INTO `tblInventory` VALUES ('A3L', 'A3L-02');
INSERT INTO `tblInventory` VALUES ('A3L', 'A3L-03');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-01');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-02');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-03');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-04');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-05');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-06');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-07');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-08');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-09');
INSERT INTO `tblInventory` VALUES ('AFMA', 'AFMA-10');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-01');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-02');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-03');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-04');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-05');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-06');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-07');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-08');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-09');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-10');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-11');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-12');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-13');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-14');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-15');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-16');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-17');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-18');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-19');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-20');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-21');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-22');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-23');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-24');
INSERT INTO `tblInventory` VALUES ('AVC', 'AVC-25');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-01');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-02');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-03');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-04');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-05');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-06');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-07');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-08');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-09');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-10');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-11');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-12');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-13');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-14');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-15');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-16');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-17');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-18');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-19');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-20');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-21');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-22');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-23');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-24');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-25');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-26');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-27');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-28');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-29');
INSERT INTO `tblInventory` VALUES ('Bolex', 'Bolex-30');
INSERT INTO `tblInventory` VALUES ('DVC', 'DVC-01');
INSERT INTO `tblInventory` VALUES ('DVC', 'DVC-02');
INSERT INTO `tblInventory` VALUES ('DVC', 'DVC-03');
INSERT INTO `tblInventory` VALUES ('DVC', 'DVC-04');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-01');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-02');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-03');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-04');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-05');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-06');
INSERT INTO `tblInventory` VALUES ('FMA', 'FMA-07');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-01');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-02');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-03');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-04');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-05');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-06');
INSERT INTO `tblInventory` VALUES ('FS', 'FS-07');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-01');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-02');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-03');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-04');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-05');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-06');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-07');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-08');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-A');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-B');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-C');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-D');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-E');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-F');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-G');
INSERT INTO `tblInventory` VALUES ('HD', 'HD-H');
INSERT INTO `tblInventory` VALUES ('JF', 'JF-A');
INSERT INTO `tblInventory` VALUES ('JF', 'JF-B');
INSERT INTO `tblInventory` VALUES ('JF', 'JF-C');
INSERT INTO `tblInventory` VALUES ('JF', 'JF-D');
INSERT INTO `tblInventory` VALUES ('JF', 'JF-E');
INSERT INTO `tblInventory` VALUES ('JF', 'JF-F');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-01');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-02');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-03');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-04');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-05');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-06');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-07');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-08');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-09');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-10');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-11');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-12');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-13');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-14');
INSERT INTO `tblInventory` VALUES ('L3L', 'L3L-15');
INSERT INTO `tblInventory` VALUES ('LM', 'LM-A');
INSERT INTO `tblInventory` VALUES ('LM', 'LM-B');
INSERT INTO `tblInventory` VALUES ('LM', 'LM-C');
INSERT INTO `tblInventory` VALUES ('LM', 'LM-D');
INSERT INTO `tblInventory` VALUES ('LM', 'LM-E');
INSERT INTO `tblInventory` VALUES ('LM', 'LM-F');
INSERT INTO `tblInventory` VALUES ('SLR', 'SLR-01');
INSERT INTO `tblInventory` VALUES ('SLR', 'SLR-02');
INSERT INTO `tblInventory` VALUES ('SLR', 'SLR-03');
INSERT INTO `tblInventory` VALUES ('ZA', 'ZA-01');
INSERT INTO `tblInventory` VALUES ('ZA', 'ZA-02');
INSERT INTO `tblInventory` VALUES ('ZA', 'ZA-03');
INSERT INTO `tblInventory` VALUES ('ZA', 'ZA-04');
INSERT INTO `tblInventory` VALUES ('ZA', 'ZA-05');
INSERT INTO `tblInventory` VALUES ('ZA', 'ZA-06');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblKitInventory`
-- 

CREATE TABLE `tblKitInventory` (
  `EquipmentCode` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `EquipmentID` varchar(8) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblKitInventory`
-- 

INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-01');
INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-02');
INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-03');
INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-04');
INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-05');
INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-06');
INSERT INTO `tblKitInventory` VALUES ('FS', 'FS-07');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-01');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-02');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-03');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-04');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-05');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-06');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-07');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-08');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-09');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-10');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-11');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-12');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-13');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-14');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-15');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-16');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-17');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-18');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-19');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-20');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-21');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-22');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-23');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-24');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-25');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-26');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-27');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-28');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-29');
INSERT INTO `tblKitInventory` VALUES ('Bolex', 'Bolex-30');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-01');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-02');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-03');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-04');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-05');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-06');
INSERT INTO `tblKitInventory` VALUES ('FMA', 'FMA-07');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-05');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-11');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-20');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-01');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-02');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-03');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-04');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-05');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-06');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-07');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-08');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-09');
INSERT INTO `tblKitInventory` VALUES ('AFMA', 'AFMA-10');
INSERT INTO `tblKitInventory` VALUES ('ZA', 'ZA-01');
INSERT INTO `tblKitInventory` VALUES ('ZA', 'ZA-02');
INSERT INTO `tblKitInventory` VALUES ('ZA', 'ZA-03');
INSERT INTO `tblKitInventory` VALUES ('ZA', 'ZA-04');
INSERT INTO `tblKitInventory` VALUES ('ZA', 'ZA-05');
INSERT INTO `tblKitInventory` VALUES ('ZA', 'ZA-06');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-A');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-B');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-C');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-D');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-E');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-F');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-G');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-H');
INSERT INTO `tblKitInventory` VALUES ('SLR', 'SLR-01');
INSERT INTO `tblKitInventory` VALUES ('SLR', 'SLR-02');
INSERT INTO `tblKitInventory` VALUES ('SLR', 'SLR-03');
INSERT INTO `tblKitInventory` VALUES ('LM', 'LM-A');
INSERT INTO `tblKitInventory` VALUES ('LM', 'LM-B');
INSERT INTO `tblKitInventory` VALUES ('LM', 'LM-C');
INSERT INTO `tblKitInventory` VALUES ('LM', 'LM-D');
INSERT INTO `tblKitInventory` VALUES ('LM', 'LM-E');
INSERT INTO `tblKitInventory` VALUES ('LM', 'LM-F');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-02');
INSERT INTO `tblKitInventory` VALUES ('DVC', 'DVC-01');
INSERT INTO `tblKitInventory` VALUES ('DVC', 'DVC-02');
INSERT INTO `tblKitInventory` VALUES ('DVC', 'DVC-03');
INSERT INTO `tblKitInventory` VALUES ('DVC', 'DVC-04');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-01');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-02');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-03');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-04');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-05');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-06');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-07');
INSERT INTO `tblKitInventory` VALUES ('HD', 'HD-08');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-01');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-02');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-03');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-04');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-05');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-06');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-07');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-08');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-09');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-10');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-11');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-12');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-13');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-14');
INSERT INTO `tblKitInventory` VALUES ('L3L', 'L3L-15');
INSERT INTO `tblKitInventory` VALUES ('A3L', 'A3L-01');
INSERT INTO `tblKitInventory` VALUES ('A3L', 'A3L-02');
INSERT INTO `tblKitInventory` VALUES ('A3L', 'A3L-03');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-03');
INSERT INTO `tblKitInventory` VALUES ('JF', 'JF-A');
INSERT INTO `tblKitInventory` VALUES ('JF', 'JF-B');
INSERT INTO `tblKitInventory` VALUES ('JF', 'JF-C');
INSERT INTO `tblKitInventory` VALUES ('JF', 'JF-D');
INSERT INTO `tblKitInventory` VALUES ('JF', 'JF-E');
INSERT INTO `tblKitInventory` VALUES ('JF', 'JF-F');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-14');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-01');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-04');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-06');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-07');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-08');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-09');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-10');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-12');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-13');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-14');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-15');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-16');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-17');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-18');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-19');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-21');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-22');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-23');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-24');
INSERT INTO `tblKitInventory` VALUES ('AVC', 'AVC-25');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblKitStatus`
-- 

CREATE TABLE `tblKitStatus` (
  `STATUS` tinyint(1) NOT NULL,
  `STATUS_DESCRIPTION` varchar(25) COLLATE latin1_general_ci NOT NULL COMMENT 'reserved, infield, instock,service,',
  PRIMARY KEY (`STATUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblKitStatus`
-- 

INSERT INTO `tblKitStatus` VALUES (1, 'In stock');
INSERT INTO `tblKitStatus` VALUES (2, 'Reserved');
INSERT INTO `tblKitStatus` VALUES (3, 'Checked out');
INSERT INTO `tblKitStatus` VALUES (4, 'Out for service');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblKits`
-- 

CREATE TABLE `tblKits` (
  `KIT_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KIT_TYPE_ID` char(10) COLLATE latin1_general_ci NOT NULL,
  `STATUS` tinyint(1) NOT NULL COMMENT 'reserved,infield,outforservice',
  `KITNAME` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `UNUSED2` varchar(10) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`KIT_ID`),
  KEY `KIT_TYPE_ID` (`KIT_TYPE_ID`),
  KEY `KIT_TYPE_ID_2` (`KIT_TYPE_ID`,`STATUS`),
  KEY `ndxType_ID` (`KIT_TYPE_ID`,`KIT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `tblKits`
-- 

INSERT INTO `tblKits` VALUES (1, 'FILM', 1, 'F-001', '');
INSERT INTO `tblKits` VALUES (2, 'FILM', 1, 'F-002', '');
INSERT INTO `tblKits` VALUES (3, 'FILM', 1, 'F-003', '');
INSERT INTO `tblKits` VALUES (4, 'FILM', 1, 'F-004', '');
INSERT INTO `tblKits` VALUES (5, 'AUDIO', 1, 'A-001', '');
INSERT INTO `tblKits` VALUES (6, 'AUDIO', 1, 'A-002', '');
INSERT INTO `tblKits` VALUES (7, 'AUDIO', 1, 'A-003', '');
INSERT INTO `tblKits` VALUES (8, 'AUDIO', 1, 'A-004', '');
INSERT INTO `tblKits` VALUES (9, 'VIDEO', 1, 'V-001', '');
INSERT INTO `tblKits` VALUES (10, 'VIDEO', 1, 'V-002', '');
INSERT INTO `tblKits` VALUES (11, 'VIDEO', 1, 'V-003', '');
INSERT INTO `tblKits` VALUES (12, 'VIDEO', 1, 'V-004', '');
INSERT INTO `tblKits` VALUES (13, 'VIDEO', 1, 'V-005', '');
INSERT INTO `tblKits` VALUES (14, 'VIDEO', 1, 'V-006', '');
INSERT INTO `tblKits` VALUES (15, 'TRIPOD', 1, 'F-005', '');
INSERT INTO `tblKits` VALUES (16, 'TRIPOD', 1, 'F-006', '');
INSERT INTO `tblKits` VALUES (17, 'TRIPOD', 1, 'T-001', '');
INSERT INTO `tblKits` VALUES (18, 'TRIPOD', 1, 'T-002', '');
INSERT INTO `tblKits` VALUES (19, 'TRIPOD', 1, 'T-003', '');
INSERT INTO `tblKits` VALUES (20, 'TRIPOD', 1, 'T-004', '');
INSERT INTO `tblKits` VALUES (21, 'TRIPOD', 1, 'T-005', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblRole`
-- 

CREATE TABLE `tblRole` (
  `Role` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `RoleDescription` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblRole`
-- 

INSERT INTO `tblRole` VALUES ('Developer', 'Developer');
INSERT INTO `tblRole` VALUES ('Instructor', 'Instructor');
INSERT INTO `tblRole` VALUES ('SA', 'Student Assistant');
INSERT INTO `tblRole` VALUES ('Student', 'Student');
INSERT INTO `tblRole` VALUES ('TA', 'Teaching Assistant');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblSystem`
-- 

CREATE TABLE `tblSystem` (
  `TxnNumber` bigint(20) NOT NULL,
  `SysAdmin` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `a` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `b` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `c` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `d` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblSystem`
-- 

INSERT INTO `tblSystem` VALUES (0, 'sysadmin', 'a', 'b', 'c', 'd');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblTempKit`
-- 

CREATE TABLE `tblTempKit` (
  `KITNAME` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblTempKit`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tblTransactionType`
-- 

CREATE TABLE `tblTransactionType` (
  `TransactionID` tinyint(2) NOT NULL,
  `TransactionDescription` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `Notes` tinyblob,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblTransactionType`
-- 

INSERT INTO `tblTransactionType` VALUES (1, 'Request kit', NULL);
INSERT INTO `tblTransactionType` VALUES (2, 'Request approved', NULL);
INSERT INTO `tblTransactionType` VALUES (3, 'Request denied', NULL);
INSERT INTO `tblTransactionType` VALUES (4, 'Check out', NULL);
INSERT INTO `tblTransactionType` VALUES (5, 'Check in', NULL);
INSERT INTO `tblTransactionType` VALUES (6, 'Send for service', NULL);
INSERT INTO `tblTransactionType` VALUES (7, 'Send warning message', NULL);
INSERT INTO `tblTransactionType` VALUES (8, 'Cancel reservation', NULL);
INSERT INTO `tblTransactionType` VALUES (9, 'Kit prepared', NULL);
INSERT INTO `tblTransactionType` VALUES (10, 'Kit approved', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tblTransactions`
-- 

CREATE TABLE `tblTransactions` (
  `TRANSACTION_NO` double unsigned NOT NULL AUTO_INCREMENT,
  `TRANSACTION_TYPE` tinyint(4) NOT NULL COMMENT 'reservation,checkin,checkout,service',
  `TRANSACTION_DATE` date NOT NULL,
  `ID700` char(9) COLLATE latin1_general_ci NOT NULL,
  `KIT_ID` int(10) NOT NULL,
  `UNUSED1` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TRANSACTION_NO`),
  KEY `USER_ID` (`ID700`,`TRANSACTION_DATE`,`TRANSACTION_TYPE`),
  KEY `TRANSACTION_DATE` (`TRANSACTION_DATE`,`TRANSACTION_TYPE`,`ID700`),
  KEY `TRANSACTION_TYPE` (`TRANSACTION_TYPE`,`TRANSACTION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `tblTransactions`
-- 

INSERT INTO `tblTransactions` VALUES (1, 1, '2011-11-05', '700004551', 14, '0000-00-00 00:00:00');
INSERT INTO `tblTransactions` VALUES (2, 1, '2011-11-05', '700004314', 10, '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `tblUser`
-- 

CREATE TABLE `tblUser` (
  `ID700` text COLLATE latin1_general_ci NOT NULL,
  `IDNetwork` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `LastName` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `FirstName` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Password` varchar(32) COLLATE latin1_general_ci NOT NULL,
  `Role` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID700`(9)),
  UNIQUE KEY `IDNetwork` (`IDNetwork`),
  KEY `LAST_NAME` (`LastName`,`FirstName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `tblUser`
-- 

INSERT INTO `tblUser` VALUES ('700000356', 'hroger27', 'Rogers', 'Hugh', '', 'Student');
INSERT INTO `tblUser` VALUES ('700000633', 'sferdi18', 'Ferdinando', 'Simon', '', 'Student');
INSERT INTO `tblUser` VALUES ('700001313', 'rcourt67', 'Courtenay', 'Rise', '', 'Student');
INSERT INTO `tblUser` VALUES ('700002060', 'eketch2', 'Ketcheman', 'Edward', '', 'Student');
INSERT INTO `tblUser` VALUES ('700002150', 'ekelle1', 'Kelle', 'Edward', '', 'Student');
INSERT INTO `tblUser` VALUES ('700002428', 'igosti50', 'Gostigo', 'Iohn', '', 'Student');
INSERT INTO `tblUser` VALUES ('700002643', 'dgland22', 'Glande', 'Darby', '', 'Student');
INSERT INTO `tblUser` VALUES ('700003510', 'cvaugh18', 'Vaughan', 'Catherine', '', 'Student');
INSERT INTO `tblUser` VALUES ('700003659', 'rholec79', 'Holecroft', 'Robert', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004162', 'rwanch39', 'Wanchese', 'Ralfe', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004297', 'trotte60', 'Rottenbury', 'Thomas', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004314', 'npetma66', 'Petman', 'Nicholas', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004551', 'ihewes11', 'Hewes', 'Iohn', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004561', 'mwingi12', 'Wingina', 'Manteo', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004595', 'mmaruy10', 'Maruyn', 'Martin', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004603', 'eclefs94', 'Clefs', 'Erasmus', '', 'Student');
INSERT INTO `tblUser` VALUES ('700004735', 'mgardy8', 'Gardyner', 'Marilyn', '', 'Student');
INSERT INTO `tblUser` VALUES ('700005167', 'tluddi45', 'Luddington', 'Thomas', '', 'Student');
INSERT INTO `tblUser` VALUES ('700005207', 'enugen7', 'Nugen', 'Edward', '', 'Student');
INSERT INTO `tblUser` VALUES ('700005926', 'wacton63', 'Acton', 'William', '', 'Student');
INSERT INTO `tblUser` VALUES ('700006009', 'bwood95', 'Wood', 'Beniamin', '', 'Student');
INSERT INTO `tblUser` VALUES ('700006039', 'estaff79', 'Stafford', 'Edward', '', 'Student');
INSERT INTO `tblUser` VALUES ('700006207', 'tfoxe25', 'Foxe', 'Thomas', '', 'Student');
INSERT INTO `tblUser` VALUES ('700006260', 'ilinse4', 'Linsey', 'Iohn', '', 'Student');
INSERT INTO `tblUser` VALUES ('700006494', 'thario5', 'Hariot', 'Thomas', '', 'Student');
INSERT INTO `tblUser` VALUES ('700007104', 'wgreen7', 'Greeneuille', 'William', '', 'Student');
INSERT INTO `tblUser` VALUES ('700007325', 'iwood60', 'Wood', 'Iohn', '', 'Student');
INSERT INTO `tblUser` VALUES ('700007607', 'hgreen81', 'Greene', 'Henrie', '', 'Student');
INSERT INTO `tblUser` VALUES ('700008234', 'mpride6', 'Prideox', 'Miriam', '', 'Student');
INSERT INTO `tblUser` VALUES ('700008331', 'ibrowe40', 'Browewich', 'Iames', '', 'Student');
INSERT INTO `tblUser` VALUES ('700008913', 'mkenda36', 'Kendall', 'Mary', '', 'Student');
INSERT INTO `tblUser` VALUES ('700009209', 'ggrang7', 'Grange', 'Gilbert', '', 'Student');
INSERT INTO `tblUser` VALUES ('700009903', 'pamade58', 'Amades', 'Philip', '', 'Student');

-- --------------------------------------------------------

-- 
-- Table structure for table `test`
-- 

CREATE TABLE `test` (
  `ID700` text COLLATE latin1_general_ci NOT NULL,
  `EquipType` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `EquipID` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `TimeOut` decimal(4,2) NOT NULL COMMENT 'Fake time assume 1:30 PM is 13.5',
  `TimeReturn` decimal(4,2) NOT NULL COMMENT 'Fake time see TimeOut',
  KEY `EquipTypeEquipID` (`EquipType`,`EquipID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `test`
-- 

INSERT INTO `test` VALUES ('', 'AVC', 'AVC-05', '8.00', '11.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-05', '19.00', '23.50');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-04', '14.00', '23.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-03', '14.00', '17.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-02', '13.00', '17.50');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-01', '9.00', '13.50');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-08', '14.50', '23.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-08', '14.50', '23.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-09', '9.50', '23.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-10', '11.00', '20.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-11', '18.00', '23.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-12', '9.00', '19.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-13', '8.00', '14.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-14', '13.00', '22.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-16', '11.00', '15.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-17', '12.00', '18.00');
INSERT INTO `test` VALUES ('', 'AVC', 'AVC-18', '9.00', '20.00');
