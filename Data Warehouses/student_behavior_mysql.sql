/*
SQLyog Community v8.82 
MySQL - 5.6.21 : Database - student_behavior_dw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student_behavior_dw` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `student_behavior_dw`;

/*Table structure for table `dimabsencereason` */

DROP TABLE IF EXISTS `dimabsencereason`;

CREATE TABLE `dimabsencereason` (
  `AbsenceReasonKey` int(11) NOT NULL AUTO_INCREMENT,
  `AbsenceReasonAlternateKey` int(11) NOT NULL,
  `AbsenceReasonCode` char(3) NOT NULL,
  `AbsenceReasonDesc` varchar(30) NOT NULL,
  `AbsenceReasonAbbv` char(3) NOT NULL,
  `AbsenceReasonType` varchar(20) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`AbsenceReasonKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dimabsencereason` */

/*Table structure for table `dimdate` */

DROP TABLE IF EXISTS `dimdate`;

CREATE TABLE `dimdate` (
  `DateKey` int(11) NOT NULL,
  `DateAlternateKey` date NOT NULL,
  `DateSerial` int(11) NOT NULL,
  `YearId` int(11) NOT NULL,
  `YearName` char(4) NOT NULL,
  `YearStart` date NOT NULL,
  `YearEnd` date NOT NULL,
  `HalfId` int(11) NOT NULL,
  `HalfName` char(7) NOT NULL,
  `QtrId` int(11) NOT NULL,
  `QtrName` char(7) NOT NULL,
  `QuaterStart` date NOT NULL,
  `QuaterEnd` date NOT NULL,
  `MonthId` int(11) NOT NULL,
  `MonthName` char(6) NOT NULL,
  `MonthStart` int(11) NOT NULL,
  `MonthEnd` int(11) NOT NULL,
  `DayInMonth` int(11) NOT NULL,
  `DayId` int(11) NOT NULL,
  `DayName` char(1) NOT NULL,
  `DOW` char(3) NOT NULL,
  `DOWNum` int(11) NOT NULL,
  `DOY` int(11) NOT NULL,
  `WeekId` int(11) NOT NULL,
  `WeekName` varchar(20) NOT NULL,
  `WOY` int(11) NOT NULL,
  `WeekStart` int(11) NOT NULL,
  `WeekEnd` int(11) NOT NULL,
  `FiscalYear` char(4) NOT NULL,
  `FiscalYearStart` date NOT NULL,
  `FiscalYearEnd` date NOT NULL,
  `FiscalHalf` char(7) NOT NULL,
  `FiscalQtr` char(7) NOT NULL,
  `FiscalMonth` char(6) NOT NULL,
  `FiscalMonthNum` int(11) NOT NULL,
  `FiscalWeek` varchar(20) NOT NULL,
  `FiscalWeekNum` int(11) NOT NULL,
  `FiscalDOY` int(11) NOT NULL,
  `ContractYear` char(4) NOT NULL,
  `ContractQtr` char(7) NOT NULL,
  `ContractMonth` char(6) NOT NULL,
  `ContractMonthNum` int(11) NOT NULL,
  `PayPeriodMonthId` int(11) NOT NULL,
  `PayMonth` char(6) NOT NULL,
  `PayYear` char(4) NOT NULL,
  `FiscalWeekStart` int(11) NOT NULL,
  `FiscalWeekEnd` int(11) NOT NULL,
  `SchoolYear` char(7) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime NOT NULL,
  PRIMARY KEY (`DateKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dimdate` */

/*Table structure for table `dimschool` */

DROP TABLE IF EXISTS `dimschool`;

CREATE TABLE `dimschool` (
  `SchoolKey` int(11) NOT NULL AUTO_INCREMENT,
  `SchoolAlternateKey` int(11) NOT NULL,
  `CDESchoolId` int(11) NOT NULL,
  `SchoolNumber` int(11) NOT NULL,
  `SchoolName` varchar(50) NOT NULL,
  `SchoolNumName` varchar(50) NOT NULL,
  `SchoolNameNum` varchar(50) NOT NULL,
  `StatusFlag` char(1) NOT NULL,
  `DistrictAreaCode` char(2) NOT NULL,
  `DistrictAreaName` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `ZipCode` char(5) NOT NULL,
  `Latitude` varchar(30) NOT NULL,
  `Longitude` varchar(30) NOT NULL,
  `County` varchar(30) NOT NULL,
  `NumberOfStudents` int(10) NOT NULL,
  `AdvisoryGroupCode` int(10) NOT NULL,
  `AdvisoryGroupName` varchar(30) NOT NULL,
  `PrincipalLastName` varchar(50) NOT NULL,
  `PrincipalFirstName` varchar(50) NOT NULL,
  `SchoolTypeCode` int(11) NOT NULL,
  `SchoolTypeName` varchar(20) NOT NULL,
  `SchoolLevelCode` int(11) NOT NULL,
  `SchoolLevelName` varchar(20) NOT NULL,
  `ELASchoolType` varchar(20) NOT NULL,
  `ELAServiceType` varchar(20) NOT NULL,
  `MinimumGradeTaught` int(11) NOT NULL,
  `MaximumGradeTaught` int(11) NOT NULL,
  `TitleIInd` varchar(20) NOT NULL,
  `HardToServeFlag` bit(1) NOT NULL,
  `AltSchoolFlag` bit(1) DEFAULT NULL,
  `CharterSchoolFlag` bit(1) DEFAULT NULL,
  `BRClass` char(2) NOT NULL,
  `CDESchoolNumber` int(11) NOT NULL,
  `CDEDescription` varchar(20) NOT NULL,
  `DPSFlag` bit(1) NOT NULL,
  `CDEMinimumGradeTaught` int(11) NOT NULL,
  `CDEMaximumGradeTaught` int(11) NOT NULL,
  `ImageUrl` varchar(50) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SchoolKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dimschool` */

/*Table structure for table `dimstudent` */

DROP TABLE IF EXISTS `dimstudent`;

CREATE TABLE `dimstudent` (
  `StudentKey` int(11) NOT NULL AUTO_INCREMENT,
  `StudentAlternateKey` int(11) NOT NULL,
  `ODSStudentId` int(11) NOT NULL,
  `StateStudentId` int(11) DEFAULT NULL,
  `PermNum` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` char(1) DEFAULT NULL,
  `Generation` varchar(10) DEFAULT NULL,
  `LanguageId` int(11) NOT NULL,
  `Language` varchar(20) NOT NULL,
  `GTDate` datetime DEFAULT NULL,
  `IEPDate` datetime DEFAULT NULL,
  `ClassAffiliateId` int(11) NOT NULL,
  `ClassAffiliate` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`StudentKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dimstudent` */

/*Table structure for table `factbehaviorresolution` */

DROP TABLE IF EXISTS `factbehaviorresolution`;

CREATE TABLE `factbehaviorresolution` (
  `BehaviorResolutionKey` int(11) NOT NULL AUTO_INCREMENT,
  `BehaviorResolutionAlternateKey` int(11) NOT NULL,
  `StudentBehaviorFK` int(11) NOT NULL,
  `ResolutionStartDateFK` int(11) NOT NULL,
  `ResolutionEndDateFK` int(11) NOT NULL,
  `BehaviorResolution` varchar(30) NOT NULL,
  `ExpulsionServiceFlag` bit(1) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`BehaviorResolutionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `factbehaviorresolution` */

/*Table structure for table `factstudentabsence` */

DROP TABLE IF EXISTS `factstudentabsence`;

CREATE TABLE `factstudentabsence` (
  `StudentAbsenceKey` int(11) NOT NULL AUTO_INCREMENT,
  `StudentAbsenceAlternateKey` int(11) NOT NULL,
  `AbsenceDateFK` int(11) NOT NULL,
  `SchoolFK` int(11) NOT NULL,
  `StudentFK` int(11) NOT NULL,
  `AbsenceReasonFK` int(11) NOT NULL,
  `Grade` varchar(2) NOT NULL,
  `SectionId` int(11) NOT NULL,
  `AbsencePeriods` int(11) DEFAULT NULL,
  `AbsenceMinutes` int(11) DEFAULT NULL,
  `Tardy` int(11) DEFAULT NULL,
  `CurrentFlag` bit(1) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`StudentAbsenceKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `factstudentabsence` */

/*Table structure for table `factstudentbehavior` */

DROP TABLE IF EXISTS `factstudentbehavior`;

CREATE TABLE `factstudentbehavior` (
  `StudentBehaviorKey` int(11) NOT NULL AUTO_INCREMENT,
  `StudentBehaviorAlternateKey` int(11) NOT NULL,
  `BehaviorDateFK` int(11) NOT NULL,
  `StudentFK` int(11) NOT NULL,
  `SchoolFK` int(11) NOT NULL,
  `BehaviorType` varchar(20) NOT NULL,
  `BehaviorLocation` varchar(20) NOT NULL,
  `Grade` varchar(2) NOT NULL,
  `BehaviorRole` varchar(20) NOT NULL,
  `ViolenceFlag` bit(1) NOT NULL,
  `WeaponId` int(11) NOT NULL,
  `CurrentFlag` bit(1) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `ETLProcessId` varchar(20) NOT NULL,
  `CreationDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`StudentBehaviorKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `factstudentbehavior` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
