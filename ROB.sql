-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 11:57 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rob`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `FirstName`, `LastName`, `RoleID`, `Login`) VALUES
(9, 'admin', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ContactID` int(11) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ContactID`, `Address`, `Phone`, `Email`) VALUES
(1, 'Robert Kaskur Address', '+37060010001', 'robert.kaskur@example.com'),
(2, 'Bob Smith Address', '+37060010002', 'bob.smith@example.com'),
(3, 'Alan Walker Address', '+37060010003', 'alan.walker@example.com'),
(4, 'Peter Parker Address', '+37060010004', 'peter.parker@example.com'),
(5, 'Rob Williams Address', '+37060010005', 'rob.williams@example.com'),
(6, 'Angelina Jolie Address', '+37060010006', 'angelina.jolie@example.com'),
(7, 'Iron Man Address', '+37060010007', 'iron.man@example.com'),
(8, 'Spider Man Address', '+37060010008', 'spider.man@example.com'),
(9, 'Range Rover Address', '+37060010009', 'range.rover@example.com'),
(10, 'Path Finder Address', '+37060010010', 'path.finder@example.com'),
(11, 'DomantasAdamonisAddress', '+37060000000', 'Domantas.Adamonis@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(255) NOT NULL,
  `managerID` int(11) NOT NULL,
  `Balance` float NOT NULL,
  `TotalSize` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`GroupID`, `GroupName`, `managerID`, `Balance`, `TotalSize`) VALUES
(0, 'DefaultGroup', 1, 0, 0),
(1, 'GroupOne', 1, 0, 0),
(2, 'GroupTwo', 1, 0, 0),
(3, 'GroupThree', 3, 0, 0),
(4, 'GroupFour', 2, 0, 0),
(5, 'GroupFive', 2, 0, 0),
(6, 'GroupSix', 3, 0, 0),
(7, 'GroupSeven', 4, 0, 0),
(8, 'This group was created in APP', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groupbill`
--

CREATE TABLE `groupbill` (
  `groupBillID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupbill`
--

INSERT INTO `groupbill` (`groupBillID`, `GroupID`, `Date`, `Price`) VALUES
(1, 1, '2024-01-26', 194),
(2, 2, '2024-01-26', 148),
(3, 3, '2024-01-26', 189),
(4, 4, '2024-01-26', 251),
(5, 5, '2024-02-07', 144),
(6, 1, '2024-02-07', 56),
(7, 2, '2024-02-07', 86),
(8, 3, '2024-02-07', 40),
(9, 4, '2024-02-07', 10),
(10, 5, '2024-03-07', 12),
(11, 6, '2024-03-07', 82),
(12, 7, '2024-03-07', 152),
(13, 1, '2024-03-07', 36),
(14, 2, '2024-03-07', 5),
(15, 3, '2024-03-07', 18),
(16, 4, '2024-04-07', NULL),
(17, 5, '2024-04-07', NULL),
(18, 6, '2024-04-07', NULL),
(19, 7, '2024-04-07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Login` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Login`, `Username`, `Password`) VALUES
(0, 'admin', 'admin'),
(1, 'manager1', 'manager1'),
(2, 'manager2', 'manager2'),
(3, 'manager3', 'manager3'),
(4, 'Robert', 'Kaskur'),
(5, 'Bob', 'Smith'),
(6, 'Alan', 'Walker'),
(7, 'Peter', 'Parker'),
(8, 'Rob', 'Williams'),
(9, 'Angelina', 'Jolie'),
(10, 'Iron', 'Man'),
(11, 'Spider', 'Man'),
(12, 'Range', 'Rover'),
(13, 'Path', 'Finder'),
(14, 'Manager4', 'Manager4'),
(15, 'Manager created in the APP', 'MANAGER123'),
(16, 'created in the app 2', 'manageer'),
(17, 'Domantas', 'Adamonis');

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `entryID` int(11) NOT NULL,
  `LoginID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`entryID`, `LoginID`, `DateTime`) VALUES
(0, 0, '2023-11-21 00:00:00'),
(1, 1, '2023-11-01 12:34:56'),
(2, 2, '2023-11-02 09:45:12'),
(3, 3, '2023-11-03 15:23:45'),
(4, 4, '2023-11-04 18:02:34'),
(5, 5, '2023-11-05 07:56:21'),
(6, 6, '2023-11-06 14:27:59'),
(7, 7, '2023-11-07 11:08:43'),
(8, 8, '2023-11-08 17:39:32'),
(9, 9, '2023-11-09 10:15:28'),
(10, 10, '2023-11-10 22:41:09'),
(11, 11, '2023-11-11 05:12:37'),
(12, 12, '2023-11-12 16:09:54'),
(13, 13, '2023-11-13 13:22:17'),
(14, 14, '2023-11-14 19:48:32'),
(15, 0, '2024-01-27 22:12:11'),
(16, 0, '2024-01-27 22:18:50'),
(17, 1, '2024-01-27 22:21:38'),
(18, 4, '2024-01-27 22:23:31'),
(19, 4, '2024-01-27 22:35:33'),
(20, 0, '2024-01-27 22:38:36'),
(21, 2, '2024-01-27 22:38:44'),
(22, 0, '2024-01-27 22:47:47'),
(23, 0, '2024-01-27 22:54:51'),
(24, 0, '2024-01-27 23:02:22'),
(25, 0, '2024-01-27 23:04:14'),
(26, 0, '2024-01-27 23:05:06'),
(27, 0, '2024-01-28 11:43:04'),
(28, 1, '2024-01-28 12:22:03'),
(29, 4, '2024-01-28 12:55:01'),
(30, 1, '2024-01-28 13:02:53'),
(31, 0, '2024-01-28 13:14:40'),
(32, 0, '2024-01-28 13:35:48'),
(33, 0, '2024-01-28 13:38:03'),
(34, 0, '2024-01-28 13:39:23'),
(35, 17, '2024-01-28 13:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ManagerID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ManagerID`, `FirstName`, `LastName`, `RoleID`, `Login`) VALUES
(1, 'Manager1', 'Manager1', 1, 1),
(2, 'Manager2', 'Manager2', 1, 2),
(3, 'Manager3', 'Manager3', 1, 3),
(4, 'Manager4', 'Manager4', 1, 14),
(5, 'Manager created in the APP', 'MANAGER123', 1, 15),
(6, 'created in the app 2', 'manageer', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PaymentID` int(11) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PaymentID`, `PersonID`, `Amount`, `Date`) VALUES
(1, 1, 10, '2023-11-30 00:00:00'),
(2, 2, 15, '2023-11-30 00:00:00'),
(3, 3, 20, '2023-11-30 00:00:00'),
(4, 4, 25, '2023-11-30 00:00:00'),
(5, 5, 30, '2023-11-30 00:00:00'),
(6, 6, 35, '2023-11-30 00:00:00'),
(7, 7, 40, '2023-11-30 00:00:00'),
(8, 8, 45, '2023-11-30 00:00:00'),
(9, 9, 50, '2023-11-30 00:00:00'),
(10, 10, 55, '2023-11-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `PersonID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `UnitID` int(11) NOT NULL,
  `ContactID` int(11) DEFAULT NULL,
  `Login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`PersonID`, `FirstName`, `LastName`, `RoleID`, `UnitID`, `ContactID`, `Login`) VALUES
(1, 'Robert', 'Kaskur', 2, 1, 1, 4),
(2, 'Bob', 'Smith', 2, 2, 2, 5),
(3, 'Alan', 'Walker', 2, 3, 3, 6),
(4, 'Peter', 'Parker', 2, 4, 4, 7),
(5, 'Rob', 'Williams', 2, 5, 5, 8),
(6, 'Angelina', 'Jolie', 2, 6, 6, 9),
(7, 'Iron', 'Man', 2, 7, 7, 10),
(8, 'Spider', 'Man', 2, 8, 8, 11),
(9, 'Range', 'Rover', 2, 9, 9, 12),
(10, 'Path', 'Finder', 2, 10, 10, 13),
(11, 'Domantas', 'Adamonis', 2, 11, 11, 17);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `ProviderID` int(11) NOT NULL,
  `ProviderName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`ProviderID`, `ProviderName`) VALUES
(1, 'Provider0'),
(2, 'Provider2'),
(3, 'Provider3'),
(4, 'Provider4'),
(5, 'Provider5');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `requestID` int(11) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Message` text NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`requestID`, `PersonID`, `Date`, `Message`, `Status`) VALUES
(1, 1, '2023-11-21 00:00:00', 'Help', 0),
(2, 2, '2023-11-22 00:00:00', 'Looking for help with plumning', 0),
(3, 3, '2023-11-23 00:00:00', 'Something smells fishy in this ocean, badum tss', 0),
(4, 4, '2023-11-24 00:00:00', 'Need psychological support', 0),
(5, 5, '2023-11-25 00:00:00', 'My brains need some help with rest', 0),
(6, 1, '2023-11-26 00:00:00', 'Help2', 0),
(7, 2, '2023-11-27 00:00:00', 'HELP!!!', 0),
(8, 3, '2023-11-28 00:00:00', 'I am falling on these steps every time', 0),
(9, 4, '2023-11-29 00:00:00', 'Sun is too hot.', 0),
(10, 5, '2023-11-30 00:00:00', 'I have nothing more to say', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requestlog`
--

CREATE TABLE `requestlog` (
  `EntryID` int(11) NOT NULL,
  `requestID` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestlog`
--

INSERT INTO `requestlog` (`EntryID`, `requestID`, `AdminID`, `Message`) VALUES
(1, 1, 9, 'Solving'),
(2, 2, 9, 'Solving'),
(3, 3, 9, 'Solving');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `RoleName`) VALUES
(0, 'Admin'),
(1, 'Manager'),
(2, 'Person');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(11) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `ServiceRate` float NOT NULL,
  `ProviderID` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `GroupBillID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `ServiceName`, `ServiceRate`, `ProviderID`, `Date`, `GroupBillID`) VALUES
(1, 'Service1', 20, 1, '2023-11-01 00:00:00', 1),
(2, 'Service2', 45, 2, '2023-11-02 00:00:00', 2),
(3, 'Service3', 78, 3, '2023-11-03 00:00:00', 3),
(4, 'Service4', 12, 4, '2023-11-04 00:00:00', 4),
(5, 'Service5', 63, 5, '2023-11-05 00:00:00', 5),
(6, 'Service6', 34, 1, '2023-11-06 00:00:00', 1),
(7, 'Service7', 87, 2, '2023-11-07 00:00:00', 2),
(8, 'Service8', 19, 3, '2023-11-08 00:00:00', 3),
(9, 'Service9', 56, 4, '2023-11-09 00:00:00', 4),
(10, 'Service10', 31, 5, '2023-11-10 00:00:00', 5),
(11, 'Service added in the APP', 420, 3, '2024-01-27 22:22:46', 4),
(12, 'Cleaning', 50, 2, '2024-01-28 12:22:21', 4);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `UnitID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `UnitSize` float NOT NULL,
  `UnitName` varchar(255) NOT NULL,
  `PersonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`UnitID`, `GroupID`, `UnitSize`, `UnitName`, `PersonID`) VALUES
(1, 1, 69, 'UnitName1', 1),
(2, 2, 23, 'UnitName2', 2),
(3, 3, 57, 'UnitName3', 3),
(4, 4, 28, 'UnitName4', 4),
(5, 5, 63, 'UnitName5', 5),
(6, 1, 41, 'UnitName6', 6),
(7, 2, 55, 'UnitName7', 7),
(8, 8, 75, 'UnitName8', 8),
(9, 4, 21, 'UnitName9', 9),
(10, 5, 30, 'UnitName10', 10),
(11, 0, 50, 'DomantasUnit11', 11);

-- --------------------------------------------------------

--
-- Table structure for table `unitbill`
--

CREATE TABLE `unitbill` (
  `UnitBillID` int(11) NOT NULL,
  `UnitID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `TotalPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitbill`
--

INSERT INTO `unitbill` (`UnitBillID`, `UnitID`, `Date`, `TotalPrice`) VALUES
(1, 1, '2024-01-07', 25),
(2, 2, '2024-01-07', 21),
(3, 3, '2024-01-07', 80),
(4, 4, '2024-01-07', 46),
(5, 5, '2024-01-07', 78),
(6, 6, '2024-01-07', 58),
(7, 7, '2024-01-07', 49),
(8, 8, '2024-01-07', 68),
(9, 9, '2024-01-07', 94),
(10, 10, '2024-01-07', 71);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Login` (`Login`),
  ADD KEY `FK_admin_role_RoleID` (`RoleID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`GroupID`),
  ADD KEY `FK_group_manager_ManagerID` (`managerID`);

--
-- Indexes for table `groupbill`
--
ALTER TABLE `groupbill`
  ADD PRIMARY KEY (`groupBillID`),
  ADD KEY `FK_groupbill_group_GroupID` (`GroupID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Login`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`entryID`),
  ADD KEY `FK_loginlog_login_Login` (`LoginID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`),
  ADD UNIQUE KEY `Login` (`Login`),
  ADD KEY `FK_manager_role_RoleID` (`RoleID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `FK_payments_person_PersonID` (`PersonID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `Login` (`Login`),
  ADD KEY `FK_person_unit_UnitID` (`UnitID`),
  ADD KEY `FK_person_role_RoleID` (`RoleID`),
  ADD KEY `FK_person_contact_ContactID` (`ContactID`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`ProviderID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`requestID`),
  ADD KEY `FK_request_person_PersonID` (`PersonID`);

--
-- Indexes for table `requestlog`
--
ALTER TABLE `requestlog`
  ADD PRIMARY KEY (`EntryID`),
  ADD KEY `FK_requestlog_request_requestID` (`requestID`),
  ADD KEY `FK_requestlog_admin_AdminID` (`AdminID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`),
  ADD KEY `FK_service_provider_ProviderID` (`ProviderID`),
  ADD KEY `FK_service_groupbill_groupBillID` (`GroupBillID`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`UnitID`),
  ADD KEY `FK_unit_group_GroupID` (`GroupID`),
  ADD KEY `FK_unit_person_PersonID` (`PersonID`);

--
-- Indexes for table `unitbill`
--
ALTER TABLE `unitbill`
  ADD PRIMARY KEY (`UnitBillID`),
  ADD KEY `FK_unitbill_unit_UnitID` (`UnitID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `groupbill`
--
ALTER TABLE `groupbill`
  MODIFY `groupBillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `ManagerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `ProviderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `requestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `requestlog`
--
ALTER TABLE `requestlog`
  MODIFY `EntryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `unitbill`
--
ALTER TABLE `unitbill`
  MODIFY `UnitBillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK_admin_login_Login` FOREIGN KEY (`Login`) REFERENCES `login` (`Login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_admin_role_RoleID` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_contact_person_ContactID` FOREIGN KEY (`ContactID`) REFERENCES `person` (`ContactID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `FK_group_manager_ManagerID` FOREIGN KEY (`managerID`) REFERENCES `manager` (`ManagerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupbill`
--
ALTER TABLE `groupbill`
  ADD CONSTRAINT `FK_groupbill_group_GroupID` FOREIGN KEY (`GroupID`) REFERENCES `group` (`GroupID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD CONSTRAINT `FK_loginlog_login_Login` FOREIGN KEY (`LoginID`) REFERENCES `login` (`Login`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `FK_manager_login_Login` FOREIGN KEY (`Login`) REFERENCES `login` (`Login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_manager_role_RoleID` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK_payments_person_PersonID` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `FK_person_login_Login` FOREIGN KEY (`Login`) REFERENCES `login` (`Login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_person_role_RoleID` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `FK_request_person_PersonID` FOREIGN KEY (`PersonID`) REFERENCES `person` (`PersonID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `requestlog`
--
ALTER TABLE `requestlog`
  ADD CONSTRAINT `FK_requestlog_admin_AdminID` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_requestlog_request_requestID` FOREIGN KEY (`requestID`) REFERENCES `request` (`requestID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_service_groupbill_groupBillID` FOREIGN KEY (`GroupBillID`) REFERENCES `groupbill` (`groupBillID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_service_provider_ProviderID` FOREIGN KEY (`ProviderID`) REFERENCES `provider` (`ProviderID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `unit`
--
ALTER TABLE `unit`
  ADD CONSTRAINT `FK_unit_group_GroupID` FOREIGN KEY (`GroupID`) REFERENCES `group` (`GroupID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_unit_person_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `person` (`UnitID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unitbill`
--
ALTER TABLE `unitbill`
  ADD CONSTRAINT `FK_unitbill_unit_UnitID` FOREIGN KEY (`UnitID`) REFERENCES `unit` (`UnitID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
