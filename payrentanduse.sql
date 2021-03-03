-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2020 at 02:56 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrentanduse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(100) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`e_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `e_mail`, `DOB`, `password`, `address`, `phone_no`, `gender`) VALUES
('R Abhishek', 'admin1@gmail.com', '1998-09-01', 'abhishek', 'Bhubaneswar', '9337103657', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

DROP TABLE IF EXISTS `bookdetails`;
CREATE TABLE IF NOT EXISTS `bookdetails` (
  `bookingId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `vendorname` varchar(100) NOT NULL,
  `vendoremail` varchar(100) NOT NULL,
  `bookingDate` date NOT NULL,
  `vehiclenumber` varchar(100) NOT NULL,
  `vehicletype` varchar(100) NOT NULL,
  `vehiclecolour` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY (`bookingId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`bookingId`, `name`, `useremail`, `vendorname`, `vendoremail`, `bookingDate`, `vehiclenumber`, `vehicletype`, `vehiclecolour`, `price`) VALUES
(1, 'R Abhilash', 'abhi@yahoo.co.in', 'Abhilash', 'abhilash@gmail.com', '2020-08-19', 'OR02AC7300', 'ROYAL ENFIELD', 'RED', '5000'),
(2, 'R Abhilash', 'abhi@yahoo.co.in', 'Abhilash', 'abhilash@gmail.com', '2020-08-19', 'OAX2345', 'ROYAL ENFIELD', 'BLUE', '5000'),
(3, 'Ritz ', 'ritz@gmail.com', 'Tommy', 'tommy@gmail.com', '2020-08-14', 'OR02AC7500', 'SANTRO', 'RED', '10000'),
(4, 'Abhi', 'abhi@gmail.co.in', 'Abhishek', 'abhishek@gmail.com', '2020-08-26', 'OR02AC7300', 'ROYAL ENFIELD', 'RED', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `carddetails`
--

DROP TABLE IF EXISTS `carddetails`;
CREATE TABLE IF NOT EXISTS `carddetails` (
  `cardNumber` varchar(20) NOT NULL,
  `cardType` varchar(20) NOT NULL,
  `expirationMonth` varchar(20) NOT NULL,
  `expirationYear` varchar(20) NOT NULL,
  `cvv` int(11) NOT NULL,
  `price` varchar(10) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  PRIMARY KEY (`cardNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carddetails`
--

INSERT INTO `carddetails` (`cardNumber`, `cardType`, `expirationMonth`, `expirationYear`, `cvv`, `price`, `e_mail`) VALUES
('11111', 'HDFC', 'Jan', '2020', 111, '90000', 'abhi@yahoo.co.in'),
('22222', 'HDFC', 'Jan', '2020', 222, '90010', 'ritz@gmail.com'),
('44444', 'HDFC', 'Jan', '2020', 444, '490000', 'abhi@gmail.co.in');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `useremail` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `currentDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`useremail`, `username`, `feedback`, `rating`, `currentDate`) VALUES
('abhi@yahoo.co.in', 'R Abhilash', 'Nice Application', '9', '2020-08-12'),
('abhi@yahoo.co.in', 'R Abhilash', 'Nice App', '7', '2020-08-12'),
('ritz@gmail.com', 'Ritz ', 'User friendly....', '8', '2020-08-12'),
('abhi@gmail.co.in', 'Abhi', 'Nice App', '9', '2020-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `fourwheeler`
--

DROP TABLE IF EXISTS `fourwheeler`;
CREATE TABLE IF NOT EXISTS `fourwheeler` (
  `vehiclenumber` varchar(100) NOT NULL,
  `vehicletype` varchar(100) NOT NULL,
  `vehiclecolour` varchar(100) NOT NULL,
  `enginenumber` varchar(100) NOT NULL,
  `chassisnumber` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  PRIMARY KEY (`vehiclenumber`),
  UNIQUE KEY `enginenumber` (`enginenumber`),
  UNIQUE KEY `chassisnumber` (`chassisnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twowheeler`
--

DROP TABLE IF EXISTS `twowheeler`;
CREATE TABLE IF NOT EXISTS `twowheeler` (
  `vehiclenumber` varchar(100) NOT NULL,
  `vehicletype` varchar(100) NOT NULL,
  `vehiclecolour` varchar(100) NOT NULL,
  `enginenumber` varchar(100) NOT NULL,
  `chassisnumber` varchar(100) NOT NULL,
  `price` varchar(15) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  PRIMARY KEY (`vehiclenumber`),
  UNIQUE KEY `enginenumber` (`enginenumber`),
  UNIQUE KEY `chassisnumber` (`chassisnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(100) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`e_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `e_mail`, `DOB`, `password`, `address`, `phone_no`, `gender`) VALUES
('R Abhilash', 'abhi@yahoo.co.in', '2002-07-31', 'abhi@', 'india', '9337103657', 'Male'),
('Ritz ', 'ritz@gmail.com', '2002-08-02', 'ritz@', 'Bihar', '7077952719', 'Female'),
('Abhi', 'abhi@gmail.co.in', '2002-07-31', 'abhi@', 'india', '5487946231', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `name` varchar(100) NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`e_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
