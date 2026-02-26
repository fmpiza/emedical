-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 04:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emedicaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissionrequest`
--

CREATE TABLE `admissionrequest` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admittedpatients`
--

CREATE TABLE `admittedpatients` (
  `MRN` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bedoccupancy`
--

CREATE TABLE `bedoccupancy` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(20) NOT NULL,
  `sharinggroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloodorders`
--

CREATE TABLE `bloodorders` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `unitrequested` int(10) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `requestedby` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caesareansectionreport`
--

CREATE TABLE `caesareansectionreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cardverification`
--

CREATE TABLE `cardverification` (
  `fingerprint` int(20) NOT NULL,
  `cardtype` varchar(20) NOT NULL,
  `verifier` varchar(20) NOT NULL,
  `visitype` varchar(20) NOT NULL,
  `biometricmethod` varchar(20) NOT NULL,
  `identifiercard` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ctc`
--

CREATE TABLE `ctc` (
  `MRN` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryreport`
--

CREATE TABLE `deliveryreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discharge`
--

CREATE TABLE `discharge` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dispenseditemvsconsumers`
--

CREATE TABLE `dispenseditemvsconsumers` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dispensing`
--

CREATE TABLE `dispensing` (
  `dispensingstore` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dispensingregister`
--

CREATE TABLE `dispensingregister` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(20) NOT NULL,
  `sharinggroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `endclientvisit`
--

CREATE TABLE `endclientvisit` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exemptionpatients`
--

CREATE TABLE `exemptionpatients` (
  `MRN` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facilitystorereport`
--

CREATE TABLE `facilitystorereport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incomingreferral`
--

CREATE TABLE `incomingreferral` (
  `mrn` varchar(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investigation`
--

CREATE TABLE `investigation` (
  `laboratoryinvestigation` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `radiologyinvestigation` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `disposition` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipdpatients`
--

CREATE TABLE `ipdpatients` (
  `MRN` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipdregisterreport`
--

CREATE TABLE `ipdregisterreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `endstart` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuevoucherreport`
--

CREATE TABLE `issuevoucherreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itimrreport`
--

CREATE TABLE `itimrreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratoryresultposting`
--

CREATE TABLE `laboratoryresultposting` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `samplenumber` int(50) NOT NULL,
  `testitem` varchar(100) NOT NULL,
  `createdby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratoryresultreview`
--

CREATE TABLE `laboratoryresultreview` (
  `MRN` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `testname` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `labresultamendment`
--

CREATE TABLE `labresultamendment` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `testname` varchar(100) NOT NULL,
  `samplenumber` int(20) NOT NULL,
  `result` varchar(50) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lastofficereport`
--

CREATE TABLE `lastofficereport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `department` varchar(100) NOT NULL,
  `itemtype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `longstayedpatients`
--

CREATE TABLE `longstayedpatients` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainstorereport`
--

CREATE TABLE `mainstorereport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mtuhareport`
--

CREATE TABLE `mtuhareport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `instance` varchar(100) NOT NULL,
  `dataset` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ncd`
--

CREATE TABLE `ncd` (
  `MRN` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ncdreport`
--

CREATE TABLE `ncdreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nearlexpired`
--

CREATE TABLE `nearlexpired` (
  `storename` varchar(50) NOT NULL,
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nearlyexpired`
--

CREATE TABLE `nearlyexpired` (
  `storename` varchar(50) NOT NULL,
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nearlyexpiredreport`
--

CREATE TABLE `nearlyexpiredreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opdadmit`
--

CREATE TABLE `opdadmit` (
  `generalillness` varchar(20) NOT NULL,
  `cough` varchar(20) NOT NULL,
  `fever` varchar(20) NOT NULL,
  `lossappetite` varchar(20) NOT NULL,
  `dizzness` varchar(20) NOT NULL,
  `diarrhoea` varchar(20) NOT NULL,
  `weight` int(20) NOT NULL,
  `systolic` int(20) NOT NULL,
  `diastolic` int(20) NOT NULL,
  `temperature` int(20) NOT NULL,
  `pulserate` int(20) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `clerksheet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opdpatients`
--

CREATE TABLE `opdpatients` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ositemreport`
--

CREATE TABLE `ositemreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partographreport`
--

CREATE TABLE `partographreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `endstart` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prematurebirthreport`
--

CREATE TABLE `prematurebirthreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `itemname` varchar(100) NOT NULL,
  `dosage` int(20) NOT NULL,
  `duration` int(20) NOT NULL,
  `totalrequired` int(50) NOT NULL,
  `preparedquantity` int(50) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologygeneraltestcountreport`
--

CREATE TABLE `radiologygeneraltestcountreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologymonthlyreport`
--

CREATE TABLE `radiologymonthlyreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologyregisterreport`
--

CREATE TABLE `radiologyregisterreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologyresultamendment`
--

CREATE TABLE `radiologyresultamendment` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `testname` varchar(100) NOT NULL,
  `samplenumber` int(20) NOT NULL,
  `result` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologyresultposting`
--

CREATE TABLE `radiologyresultposting` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `samplenumber` int(20) NOT NULL,
  `testitem` varchar(50) NOT NULL,
  `createdby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologyresultreview`
--

CREATE TABLE `radiologyresultreview` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `testname` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiologytestreport`
--

CREATE TABLE `radiologytestreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rchpatients`
--

CREATE TABLE `rchpatients` (
  `MRN` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registeredpatients`
--

CREATE TABLE `registeredpatients` (
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `dob` datetime(6) NOT NULL,
  `phone` int(12) NOT NULL,
  `citizenship` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `maincategory` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `service` varchar(200) NOT NULL,
  `department` varchar(150) NOT NULL,
  `visittype` varchar(200) NOT NULL,
  `identifiercard` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `samplecollected`
--

CREATE TABLE `samplecollected` (
  `testname` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `subdepartment` varchar(100) NOT NULL,
  `samplename` varchar(100) NOT NULL,
  `suitabilitystatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `samplecollection`
--

CREATE TABLE `samplecollection` (
  `MRN` varchar(20) NOT NULL,
  `patientname` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `createdat` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `createdby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `startdispensing`
--

CREATE TABLE `startdispensing` (
  `MRN` varchar(20) NOT NULL,
  `patientname` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `costsharing` varchar(100) NOT NULL,
  `createdby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storebalance`
--

CREATE TABLE `storebalance` (
  `storename` varchar(50) NOT NULL,
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `updatednumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taarifayakutoleadawa`
--

CREATE TABLE `taarifayakutoleadawa` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(20) NOT NULL,
  `sharinggroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tatradiologyreport`
--

CREATE TABLE `tatradiologyreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbleprosy`
--

CREATE TABLE `tbleprosy` (
  `MRN` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testperageandgenderreport`
--

CREATE TABLE `testperageandgenderreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(100) NOT NULL,
  `sharinggroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `medication` varchar(100) NOT NULL,
  `dose` int(20) NOT NULL,
  `duration` int(20) NOT NULL,
  `procedurename` varchar(100) NOT NULL,
  `quantityprocedure` int(20) NOT NULL,
  `packagename` varchar(100) NOT NULL,
  `quantitypackage` int(20) NOT NULL,
  `disposition` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `triage`
--

CREATE TABLE `triage` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `MRN` varchar(20) NOT NULL,
  `weight` int(20) NOT NULL,
  `height` int(20) NOT NULL,
  `systolicpressure` int(20) NOT NULL,
  `diastolicpressure` int(20) NOT NULL,
  `temperature` int(20) NOT NULL,
  `pulserate` int(20) NOT NULL,
  `MUAC` int(20) NOT NULL,
  `oxygensaturation` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `MRN` varchar(20) NOT NULL,
  `s/no` int(255) NOT NULL,
  `facilityname` varchar(100) NOT NULL,
  `bloodmeasure` int(50) NOT NULL,
  `eyedisease` varchar(20) NOT NULL,
  `skindisease` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `DoB` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `weight` int(20) NOT NULL,
  `height` int(20) NOT NULL,
  `temperature` int(20) NOT NULL,
  `vaccinename` varchar(100) NOT NULL,
  `residencearea` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wardstatusreport`
--

CREATE TABLE `wardstatusreport` (
  `startdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `enddate` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `sharingname` varchar(20) NOT NULL,
  `sharinggroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
