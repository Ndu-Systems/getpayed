-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 10:05 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getpayeddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentId` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `ManagerEmail` varchar(225) NOT NULL,
  `StoreId` int(11) NOT NULL,
  `CreateUserId` int(11) NOT NULL,
  `CreateDate` date NOT NULL,
  `ModifyUserId` int(11) NOT NULL,
  `ModifyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeId` int(11) NOT NULL,
  `IDNumber` varchar(13) NOT NULL,
  `FirstName` varchar(225) NOT NULL,
  `Surname` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `PhoneNumber` varchar(13) NOT NULL,
  `HireDate` date NOT NULL,
  `EmployeeNumber` varchar(225) NOT NULL,
  `JobTitle` varchar(225) NOT NULL,
  `Salary` decimal(10,0) NOT NULL,
  `ManagerId` int(11) NOT NULL,
  `PhysicalAddress` varchar(225) NOT NULL,
  `Province` varchar(225) NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  `StoreId` int(11) NOT NULL,
  `CreateUserId` int(11) NOT NULL,
  `CreateDate` date NOT NULL,
  `ModifyUserId` int(11) NOT NULL,
  `ModifyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `CreateUserId` int(11) NOT NULL,
  `CreateDate` date NOT NULL,
  `ModifyUserId` int(11) NOT NULL,
  `ModifyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleId`, `Name`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`) VALUES
(1, 'Admin', 1, '2018-03-07', 1, '2018-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `ShopId` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `PhysicalAddress` varchar(225) NOT NULL,
  `City` varchar(225) NOT NULL,
  `Province` varchar(225) NOT NULL,
  `CreateUserId` int(11) NOT NULL,
  `CreateDate` date NOT NULL,
  `ModifyUserId` int(11) NOT NULL,
  `ModifyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `RoleId` varchar(225) NOT NULL,
  `IsActive` varchar(10) NOT NULL,
  `CreateUserId` int(11) NOT NULL,
  `CreateDate` date NOT NULL,
  `ModifyUserId` int(11) NOT NULL,
  `ModifyDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Email`, `Password`, `RoleId`, `IsActive`, `CreateUserId`, `CreateDate`, `ModifyUserId`, `ModifyDate`) VALUES
(1, 'admin@mail.com', 'pass', '1', 'Active', 1, '2018-03-07', 1, '2018-03-07'),
(2, 'manager@mail.com', 'pass', '1', 'Active', 1, '2018-03-07', 1, '2018-03-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`ShopId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DepartmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `ShopId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
