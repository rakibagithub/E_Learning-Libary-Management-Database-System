-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 06:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminName` varchar(20) NOT NULL,
  `AdminID` int(10) NOT NULL,
  `APhone` varchar(14) NOT NULL,
  `AAdress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminName`, `AdminID`, `APhone`, `AAdress`) VALUES
('Azhar', 1, '01714151213', 'R#2,H#7,Sector-10,Uttara'),
('Hasib', 2, '01714151214', 'R#2,H#8,Sector-10,Uttara'),
('Rakiba', 3, '01714151217', 'R#4,H#8,Sector-10,Uttara'),
('Shuchona', 4, '01714151314', 'R#1,H#8,Sector-10,Uttara'),
('Shouvo', 5, '01714151714', 'R#5,H#8,Sector-10,Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` int(20) NOT NULL,
  `AdminID` int(20) NOT NULL,
  `BookName` varchar(25) NOT NULL,
  `BookType` text NOT NULL,
  `BFolder` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `AdminID`, `BookName`, `BookType`, `BFolder`) VALUES
(1, 1, 'Program in C', 'Programming', 'CSE'),
(2, 1, 'Program in C++', 'Programming', 'CSE'),
(3, 3, 'Programming in JAVA', 'Programming', 'CSE'),
(4, 4, 'Database Management Syste', 'Data Science', 'CSE'),
(5, 5, 'Computer Architecture & o', 'Hardware', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(20) NOT NULL,
  `Feedback` varchar(120) NOT NULL,
  `AdminID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `Feedback`, `AdminID`) VALUES
(1, 'Its really helpful for me to learn Java.', 1),
(2, 'Its really helpful for me to learn DBMS from Database tutorials.', 3),
(3, 'We need some more DBMS books.', 4),
(4, 'C++ more tutorials needed.', 5),
(5, 'Its high time need some more courses.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `RegID` int(20) NOT NULL,
  `UserID` int(20) NOT NULL,
  `AdminID` int(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`RegID`, `UserID`, `AdminID`, `Phone`, `Email`, `Address`) VALUES
(101, 1, 3, '1745789899', 'ra90@gmail.com', 'H#8,R#8,Sector-10'),
(102, 2, 2, '1745789889', 'aus9@gmail.com', ' H#5,R#8,Sector-10'),
(103, 3, 3, '1745759889', 'sini@gmail.com ', 'H#5,R#11,Sector-10'),
(104, 4, 4, '1745789589 ', 'la9@gmail.com', 'H#7,R#16,Sector-10'),
(105, 5, 5, '1745789389', 'ra@gmail.com', 'H#23,R#13,Sector-10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(20) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `UPhone` int(14) NOT NULL,
  `Email` text NOT NULL,
  `UAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `UPhone`, `Email`, `UAddress`) VALUES
(1, 'Rashida', 1745789899, 'ra90@gmail.com', 'H#8,R#8,Sector-10'),
(2, 'Sadik', 1745789889, 'aus9@gmail.com', 'H#5,R#8,Sector-10'),
(3, 'Siniya', 1745759889, 'sini@gmail.com', 'H#5,R#11,Sector-10'),
(4, 'Lamiya', 1745789589, 'la9@gmail.com', 'H#7,R#16,Sector-10'),
(5, 'Rakib', 1745789389, 'ra@gmail.com', 'H#23,R#13,Sector-10');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VideoID` int(20) NOT NULL,
  `AdminID` int(20) NOT NULL,
  `VideoName` varchar(20) NOT NULL,
  `VFolder` varchar(20) NOT NULL,
  `VideoType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`VideoID`, `AdminID`, `VideoName`, `VFolder`, `VideoType`) VALUES
(1, 1, 'JavaT1', 'Java Tutorial', 'Tutorial'),
(2, 3, 'JavaT2', 'Java Tutorial', 'Tutorial'),
(3, 4, 'DbmsT1', 'DBMS tutorial', 'Tutorial'),
(4, 4, 'SQL query 1', 'SQL Tutorial', 'Tutorial'),
(5, 5, 'C++ T1', 'C++ Tutorial', 'Tutorial');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
