-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2013 at 12:16 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oreilly_david`
--

-- --------------------------------------------------------

--
-- Table structure for table `final_customers`
--

CREATE TABLE IF NOT EXISTS `final_customers` (
  `cust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_add` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(10) DEFAULT NULL,
  `cust_email` varchar(20) DEFAULT NULL,
  `invoice_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `po_id` (`invoice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `final_customers`
--

INSERT INTO `final_customers` (`cust_id`, `cust_name`, `cust_add`, `cust_phone`, `cust_email`, `invoice_id`) VALUES
(31, 'David Meyer', '777 My Street, My Town, My City 55522', '999-555-95', 'oik@oik.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `final_invoices`
--

CREATE TABLE IF NOT EXISTS `final_invoices` (
  `invoice_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_date` datetime DEFAULT NULL,
  `cust_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `final_invoices`
--

INSERT INTO `final_invoices` (`invoice_id`, `invoice_date`, `cust_id`) VALUES
(23, '2013-03-30 00:06:20', 31);

-- --------------------------------------------------------

--
-- Table structure for table `final_invoice_items`
--

CREATE TABLE IF NOT EXISTS `final_invoice_items` (
  `invoice_id` int(10) unsigned NOT NULL,
  `prod_id` int(10) unsigned NOT NULL,
  `prod_qty` int(100) unsigned NOT NULL,
  `prod_price` decimal(7,2) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_invoice_items`
--

INSERT INTO `final_invoice_items` (`invoice_id`, `prod_id`, `prod_qty`, `prod_price`) VALUES
(23, 1, 3, 1950.00),
(23, 3, 1, 120.00),
(23, 2, 1, 450.00),
(23, 5, 1, 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `final_products`
--

CREATE TABLE IF NOT EXISTS `final_products` (
  `prod_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(100) DEFAULT NULL,
  `prod_desc` varchar(100) DEFAULT NULL,
  `prod_price` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `final_products`
--

INSERT INTO `final_products` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`) VALUES
(1, 'iPhone 5', 'Apple''s latest and greatest!', 650.00),
(2, 'Samesung Galexy III', 'Samsung''s best phone yet!', 450.00),
(3, 'Logitech Wireless Keyboard & Mouse', 'Simply the best in wireless keyboarding!', 120.00),
(5, 'Air Jordan Tennis Shoes', '1991 Championship Court Shoes', 1500.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
