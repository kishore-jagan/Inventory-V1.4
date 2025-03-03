-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2025 at 06:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bin`
--

CREATE TABLE `bin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `returnable` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `item_remarks` varchar(255) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `mos` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `vendor_remarks` text NOT NULL,
  `Stock_in_out` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bin`
--

INSERT INTO `bin` (`id`, `name`, `serial_no`, `model_no`, `main_category`, `category`, `location`, `type`, `returnable`, `qty`, `price`, `total_price`, `item_remarks`, `project_name`, `project_no`, `purchase_order`, `invoice_no`, `vendor_name`, `date`, `place`, `mos`, `receiver_name`, `vendor_remarks`, `Stock_in_out`, `barcode`) VALUES
(9, 'kjliufd', '98798', 'rt78', 'ESS', 'Admin', 'Onfield', 'Rental', 'Returnable', 90, 9807.00, 882630.00, 'iouty', 'Not assigned', 'Not assigned', 'r5698', '9867', 'fgilkj', '2024-11-14', 'fgsgesdfx', 'ByTrain', 'rtydf', 'iotydt', 'Stock In', '673da14202a3e');

-- --------------------------------------------------------

--
-- Table structure for table `boxdetails`
--

CREATE TABLE `boxdetails` (
  `id` int(11) NOT NULL,
  `billNo` varchar(255) NOT NULL,
  `poNo` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `supplierName` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `mos` varchar(255) NOT NULL,
  `remark` text DEFAULT NULL,
  `recieverName` varchar(255) NOT NULL,
  `products` varchar(500) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boxdetails`
--

INSERT INTO `boxdetails` (`id`, `billNo`, `poNo`, `date`, `supplierName`, `location`, `mos`, `remark`, `recieverName`, `products`, `token`, `status`) VALUES
(1, 'IN001', 'PN001', '2024-08-28', 'Baroda Polyform', 'SK warehouse', 'ByRoad', 'None', 'Manimegalai', '[]', 'e8eb249a363eb79478695e11856aa626', 1),
(2, 'asd', 'sadds', '2024-10-22', 'aaaaaaaaaa', 'asd', 'ByRoad', 'sad', 'asdwasd', '[]', '0d66b56c115156a8b9af81671f071302', 1),
(3, 'ssasasd', 'asda', '2024-10-22', 'ska', 'sad', 'ByAir', 'sad', 'sad', '[]', 'f2b93c556ee3d2fbd2ead0eb5360ba52', 1),
(4, 'ddddddddd', 'dddddddd', '2024-10-22', 'ddddddd', 'dddddd', 'ByRoad', 'ddddddddd', 'ddddddddd', '[]', 'a5e2eae31562d87c92b43ecabafee189', 1),
(5, 'ddddddddd', 'dddddddd', '2024-10-22', 'ddddddd', 'dddddd', 'ByRoad', 'ddddddddd', 'ddddddddd', '[]', 'fb62e1611b936c15a268bd3d6742a722', 1),
(6, 'ddddddddd', 'dddddddd', '2024-10-22', 'ddddddd', 'dddddd', 'ByRoad', 'ddddddddd', 'ddddddddd', '[]', 'aad6d2d5b9d96f786370d17a52eef932', 1),
(7, 'ddddddddd', 'dddddddd', '2024-10-22', 'ddddddd', 'dddddd', 'ByRoad', 'ddddddddd', 'ddddddddd', '[]', '6a2b16f1feae670bc0c633cc285726ec', 1),
(8, 'ddddddddd', 'dddddddd', '2024-10-22', 'ddddddd', 'dddddd', 'ByRoad', 'ddddddddd', 'ddddddddd', '[]', 'd1cb391c43d5195233d60d17c4a76f2a', 1),
(9, 'ddddddddd', 'dddddddd', '2024-10-22', 'ddddddd', 'dddddd', 'ByRoad', 'ddddddddd', 'ddddddddd', '[]', '7bdbfc42f9db50c373827b2d2537236b', 1),
(10, 'zzzzzzzzzzzz', 'zzzzzzzzzzzz', '2024-10-22', 'zzzzzzzzzzz', 'zzzzzzzzzzzz', 'ByRoad', 'zzzzzzzzzzzzzz', 'zzzzzzzzzzzzz', '[]', '8c15e90f8b83a0f8fc59512442c45e75', 1),
(11, 'yyyyyyyyyyyy', 'yyyyyyyyyy', '2024-10-22', 'yyyyyyyyyy', 'yyyyyyyyyyyy', 'ByRoad', 'yyyyyyyyy', 'yyyyyyyyyyy', '[]', 'efb9918a7a4f1972fd7f26e97ebea0e7', 1),
(13, 'yyyyyyyyyyyy', 'yyyyyyyyyy', '2024-10-22', 'yyyyyyyyyy', 'yyyyyyyyyyyy', 'ByRoad', 'yyyyyyyyy', 'yyyyyyyyyyy', '[]', 'f655897eada16d4252b6edd283b284e8', 1),
(15, 'yyyyyyyyyyyy', 'yyyyyyyyyy', '2024-10-22', 'yyyyyyyyyy', 'yyyyyyyyyyyy', 'ByRoad', 'yyyyyyyyy', 'yyyyyyyyyyy', '[]', '32b2c94dcb628f9e67151ec4109ff801', 1),
(16, 'xx', 'xx', '2024-10-22', 'xx', 'xx', 'ByTrain', 'xx', 'xx', '[]', '9d1e6d506766bc6cd21d438fd9da141c', 1),
(17, 'ds213', 're356', '2024-11-15', 'jask;dlf', 'asdfer', 'ByTrain', 'upiokjhk', 'qwerfdas', '[]', '90aec072029d4c8548bfdd3e246f8113', 1),
(18, 'adsfsadad', '9708sada', '2024-11-12', 'puiosad', 'upioqrewsda', 'ByShip', 'rqwesad', 'qwerfdassad', '[]', 'b1198d748392ce731bb820ec8e39ab1a', 1),
(19, 'asddf', 'dsa', '2024-11-20', 'puiosaddf', 'sad', 'ByShip', 'das', 'qwerfdassadew', '[]', 'ccef4ee3b23784d9d72a365c89b506d9', 1),
(20, 'xcz', 'cxz', '2024-11-20', 'puiosaddfzxc', 'xzc', 'ByShip', 'xzc', 'qwerfdassadewxc', '[]', 'f5db1263a1f49ed8a2d7052dcb3d91cb', 1),
(21, 'dsf', '234', '2024-11-16', 'avvvgvsd', 'WF', 'ByShip', 'QERTQ', 'dfa', '[]', '1ea62e00667b75fa014f094536599fe2', 1),
(22, 'dsf', '234', '2024-11-16', 'avvvgvsd', 'WF', 'ByShip', 'QERTQ', 'dfa', '[]', '5e5cfa039ab3a24657110d0b04cece2d', 1),
(23, '9867', 'r5698', '2024-11-20', 'fgilkj', 'fgsgesdfx', 'ByAir', 'kjluijlk', 'rtydf', '[{\"name\":\"erdfvc\",\"qty\":\"7\"},{\"name\":\"iouf\",\"qty\":\"54\"},{\"name\":\"kjliufd\",\"qty\":\"890\"}]', 'ff3f505043c1bf8cd2a94b87ffaf8ddf', 0),
(24, '9867', 'r5698', '2024-11-20', 'fgilkj', 'fgsgesdfx', 'ByAir', 'kjluijlk', 'rtydf', '[{\"name\":\"erdfvc\",\"qty\":\"7\"},{\"name\":\"iouf\",\"qty\":\"54\"},{\"name\":\"kjliufd\",\"qty\":\"890\"}]', '1a4cf40019f98e96fd6924921617e5f8', 0),
(25, '9867', 'r5698', '2024-11-20', 'fgilkj', 'fgsgesdfx', 'ByAir', 'kjluijlk', 'rtydf', '[{\"name\":\"iouf\",\"qty\":\"54\"},{\"name\":\"kjliufd\",\"qty\":\"890\"}]', 'c85535ffffa4b421f95a3ced3827b727', 0),
(26, '9867', 'r5698', '2024-11-20', 'fgilkj', 'fgsgesdfx', 'ByAir', 'kjluijlk', 'rtydf', '[{\"name\":\"kjliufd\",\"qty\":\"890\"}]', '1e21d53db4e90d04aed37b549c8e2a8a', 0),
(27, '9867', 'r5698', '2024-11-20', 'fgilkj', 'fgsgesdfx', 'ByAir', 'kjluijlk', 'rtydf', '[]', '68cacdf524e434fce2af5c50b9c5d9da', 1),
(28, 'mine1', 'mine1', '2024-11-19', 'Mine1', 'delhi', 'ByRoad', 'ok', 'minerec', '[{\"name\":\"mine1\",\"qty\":\"2\"},{\"name\":\"mine11\",\"qty\":\"45\"}]', '59ec8a029094a21c51c9191d1b589f7f', 0),
(29, 'billmine', 'pomine', '2024-11-19', 'supmine', 'as', 'ByRoad', 'sa', 'recmine', '[{\"name\":\"sa2\",\"qty\":\"3\"}]', 'cbeefe88d0c3393f599b4de1ced27dd6', 0),
(30, 'billmine2', 'pomine2', '2024-11-19', 'supmine2', 'sa', 'ByRoad', 'sa', 'rekmlfd', '[{\"name\":\"asd\",\"qty\":\"4\"}]', '679359b176acd0d243cfb378db3935b7', 0),
(31, 'newbill', 'newpo', '2024-11-20', 'newsupp', 'new', 'ByRoad', 'new', 'newrec', '[]', '28a9130e615f56c5ba620835a2e5afb9', 1),
(32, '5549', '554955', '2024-11-21', 'King', 'Chennai', 'ByAir', 'NULL', 'Kishore', '[{\"name\":\"Pencil\",\"qty\":\"4\"},{\"name\":\"Note\",\"qty\":\"3\"}]', '32924b8cdc268027083cc60c6d34282c', 0),
(33, '12334455', '086534', '2025-02-21', 'Kishore', 'Chennai', 'ByAir', 'face karo', 'Kavi', '[]', 'df865ffec48fbf4402b932a2b5bcb240', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dispatches`
--

CREATE TABLE `dispatches` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `project_no` varchar(255) NOT NULL,
  `mos` varchar(255) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `dispatch_remarks` varchar(255) NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dispatches`
--

INSERT INTO `dispatches` (`id`, `customer_name`, `invoice_no`, `project_no`, `mos`, `sender_name`, `dispatch_remarks`, `products`, `created_at`) VALUES
(1, 'sad', 'sad', 'sad', 'ByTrain', 'asd', 'sad', '[{\"product_name\":\"xx\",\"serial_no\":\"xx\",\"model_no\":\"xx\",\"category\":\"Admin\",\"quantity\":2,\"price\":30,\"total_price\":\"60.0\"}]', '2024-11-19 06:42:10'),
(2, 'sdfdf', 'asdasd', 'adssd', 'ByRoad', 'sad', 'sda', '[{\"product_name\":\"Product 1\",\"serial_no\":\"dsf\",\"model_no\":\"cz\",\"category\":\"Mechanical\",\"quantity\":2,\"price\":4,\"total_price\":\"8.0\"}]', '2024-11-19 07:47:46'),
(3, 'etwry', 'jkl', '65', 'ByTrain', 'iok', 'tdfhghk', '[{\"product_name\":\"dddddddddd\",\"serial_no\":\"sadsadsad\",\"model_no\":\"sad\",\"category\":\"Electrical\",\"quantity\":1,\"price\":2,\"total_price\":\"2.0\"},{\"product_name\":\"kkkkkkkkkkk\",\"serial_no\":\"23534\",\"model_no\":\"3243df\",\"category\":\"Mechanical\",\"quantity\":2,\"price\":900,\"total_price\":\"1800.0\"},{\"product_name\":\"dddddddddd\",\"serial_no\":\"8923jkn\",\"model_no\":\"dsWER234\",\"category\":\"General\",\"quantity\":1,\"price\":876,\"total_price\":\"876.0\"},{\"product_name\":\"sadddd\",\"serial_no\":\"346\",\"model_no\":\"sfd3\",\"category\":\"IT\",\"quantity\":13,\"price\":7000,\"total_price\":\"91000.0\"}]', '2024-11-20 07:32:31'),
(4, 'koko', 'ujk', '76', 'ByAir', 'topo', 'rsuikml', '[{\"product_name\":\"df\",\"serial_no\":\"542\",\"model_no\":\"qerw43\",\"category\":\"Admin\",\"quantity\":4,\"price\":4300,\"total_price\":\"17200.0\"},{\"product_name\":\"iouf\",\"serial_no\":\"8796\",\"model_no\":\"tr5\",\"category\":\"Accounts\",\"quantity\":54,\"price\":8974,\"total_price\":\"484596.0\"},{\"product_name\":\"sad\",\"serial_no\":\"743\",\"model_no\":\"we78\",\"category\":\"General\",\"quantity\":3,\"price\":2300,\"total_price\":\"6900.0\"},{\"product_name\":\"sadddd\",\"serial_no\":\"346\",\"model_no\":\"sfd3\",\"category\":\"IT\",\"quantity\":31,\"price\":7000,\"total_price\":\"217000.0\"},{\"product_name\":\"ment\",\"serial_no\":\"253\",\"model_no\":\"wet324\",\"category\":\"Mechanical\",\"quantity\":13,\"price\":7432,\"total_price\":\"96616.0\"},{\"product_name\":\"tor\",\"serial_no\":\"ayt43\",\"model_no\":\"432ewr\",\"category\":\"Electrical\",\"quantity\":7,\"price\":8767,\"total_price\":\"61369.0\"},{\"product_name\":\"kjliufd\",\"serial_no\":\"98798\",\"model_no\":\"rt78\",\"category\":\"Admin\",\"quantity\":800,\"price\":9807,\"total_price\":\"7845600.0\"}]', '2024-11-20 08:47:01'),
(5, 'dgf', 'uixfd', '9785', 'ByRoad', 'kljfg', 'ijt', '[{\"product_name\":\"regi\",\"serial_no\":\"6\",\"model_no\":\"wer76\",\"category\":\"Accounts\",\"quantity\":23,\"price\":67856,\"total_price\":\"1560688.0\"}]', '2024-11-20 08:50:07'),
(6, 'ghc', 'l;k', 'dfx', 'ByRoad', 'kn', 'uikrd', '[{\"product_name\":\"regi\",\"serial_no\":\"6\",\"model_no\":\"wer76\",\"category\":\"Accounts\",\"quantity\":23,\"price\":67856,\"total_price\":\"1560688.0\"}]', '2024-11-20 08:50:43'),
(7, 'adsa', 'asd', 'sad', 'ByRoad', 'sad', 'sad', '[{\"product_name\":\"Product 1\",\"serial_no\":\"643\",\"model_no\":\"2413ew\",\"category\":\"General\",\"quantity\":2,\"price\":70346,\"total_price\":\"140692.0\"}]', '2024-11-20 08:55:36'),
(8, 'newsupp', 'new', 'new', 'ByRoad', 'newrec', 'new', '[{\"product_name\":\"erdfvc\",\"serial_no\":\"sadfdfads\",\"model_no\":\"asddfd\",\"category\":\"Accounts\",\"quantity\":7,\"price\":45,\"total_price\":\"315.0\"}]', '2024-11-20 11:11:28'),
(9, 'Ganapathi', 'KK', '101', 'ByRoad', 'King', 'ok ok', '[{\"product_name\":\"Pen\",\"serial_no\":\"234\",\"model_no\":\"2345\",\"category\":\"Electrical\",\"quantity\":5,\"price\":10,\"total_price\":\"50.0\"}]', '2024-11-21 04:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `ess`
--

CREATE TABLE `ess` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `returnable` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `item_remarks` varchar(255) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `mos` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `vendor_remarks` text NOT NULL,
  `Stock_in_out` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ess`
--

INSERT INTO `ess` (`id`, `name`, `serial_no`, `model_no`, `main_category`, `category`, `type`, `location`, `returnable`, `qty`, `price`, `total_price`, `item_remarks`, `project_name`, `project_no`, `purchase_order`, `invoice_no`, `vendor_name`, `date`, `place`, `mos`, `receiver_name`, `vendor_remarks`, `Stock_in_out`, `barcode`) VALUES
(1, 'xx', 'xx', 'xx', 'ESS', 'Admin', 'Stock', 'Inhouse', 'NonReturnable', '2', 30.00, 60.00, 'xx', 'Not assigned', 'Not assigned', 'xx', 'xx', 'xx', '2024-10-22', 'xx', 'ByTrain', 'xx', 'xx', 'Stock In', '6717516948cd4'),
(2, 'daf', '1234', 'rw53', 'ESS', 'Accounts', 'Rental', 'Inhouse', 'Returnable', '4', 89000.00, 356000.00, 'ewqr', 'Not assigned', 'Not assigned', '234', 'dsf', 'avvvgvsd', '2024-11-17', 'WF', 'ByRoad', 'dfa', 'rqwesd', 'Stock In', '673d9e9eec321'),
(6, 'ice', '5789', 'sad', 'ESS', 'Admin', 'Repair/Services', 'Warehouse', 'Returnable', '3', 5978.00, 17934.00, 'sdfiop', 'Not assigned', 'Not assigned', '9708sada', 'adsfsadad', 'puiosad', '2024-11-18', 'upioqrewsda', 'ByShip', 'qwerfdassad', 'afsdruasdf', 'Stock In', '673d9f79d7171'),
(7, 'erdfvc', '9878', 'sd45', 'ESS', 'General', 'Consumables', 'Onfield', 'NonReturnable', '7', 7985.00, 55895.00, 'yfg', 'Not assigned', 'Not assigned', 'r5698', '9867', 'fgilkj', '2024-11-20', 'fgsgesdfx', 'ByAir', 'rtydf', ',mftrd', 'Stock In', '673da0e80862d'),
(11, 'erdfvc', 'sadsad', 'sadsad', 'ESS', 'General', 'Rental', 'Inhouse', 'NonReturnable', '7', 23.00, 161.00, 'sad', 'Not assigned', 'Not assigned', 'r5698', '9867', 'fgilkj', '2024-11-20', 'fgsgesdfx', 'ByAir', 'rtydf', 'zxc', 'Stock In', '673dafffcceec'),
(12, 'iouf', 'sadds', 'dfsdfdf', 'ESS', 'Accounts', 'Rental', 'Inhouse', 'NonReturnable', '54', 12.00, 648.00, 'dsf', 'as', 'Not assigned', 'r5698', '9867', 'fgilkj', '2024-11-20', 'fgsgesdfx', 'ByAir', 'rtydf', 'asd', 'Stock In', '673db07f8fce1'),
(14, 'newproduct', 'newsn', 'newmn', 'ESS', 'General', 'Rental', 'Inhouse', 'NonReturnable', '3', 45.00, 135.00, 'new', 'Not assigned', 'Not assigned', 'newpo', 'newbill', 'newsupp', '2024-11-20', 'new', 'ByRoad', 'newrec', 'new', 'Stock In', '673dbeaa60fbd');

-- --------------------------------------------------------

--
-- Table structure for table `geoengineering`
--

CREATE TABLE `geoengineering` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `returnable` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `item_remarks` varchar(255) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `mos` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `vendor_remarks` text NOT NULL,
  `Stock_in_out` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `geoengineering`
--

INSERT INTO `geoengineering` (`id`, `name`, `serial_no`, `model_no`, `main_category`, `category`, `type`, `location`, `returnable`, `qty`, `price`, `total_price`, `item_remarks`, `project_name`, `project_no`, `purchase_order`, `invoice_no`, `vendor_name`, `date`, `place`, `mos`, `receiver_name`, `vendor_remarks`, `Stock_in_out`, `barcode`) VALUES
(1, 'asds', 'asds', 'ssda', 'GeoEngineering', 'Electrical', 'Stock', 'Inhouse', 'Returnable', 2, 40.00, 80.00, 'dsf', 'asdsad', 'sad', 'sadds', 'asd', 'aaaaaaaaaa', '2024-10-22', 'asd', 'ByRoad', 'asdwasd', 'sad', 'Stock In', '671755ec0b37a'),
(2, 'dddddddddd', 'sdxasa', 'sada', 'GeoEngineering', 'Electrical', 'Stock', 'Inhouse', 'NonReturnable', 1, 3.00, 3.00, 'sad', 'sad', 'sad', 'dddddddd', 'ddddddddd', 'ddddddd', '2024-10-22', 'dddddd', 'ByRoad', 'ddddddddd', 'sad', 'Stock In', '67175aee5ddff'),
(6, 'arc', '654', 'qrwe532', 'GeoEngineering', 'IT', 'Stock', 'Warehouse', 'NonReturnable', 4, 76464.00, 305856.00, 'wtsd', 'qertfd', '4231', 're356', 'ds213', 'jask;dlf', '2024-11-19', 'asdfer', 'ByShip', 'qwerfdas', 'wekguit', 'Stock In', '673da041a206a');

-- --------------------------------------------------------

--
-- Table structure for table `geoinformatics`
--

CREATE TABLE `geoinformatics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `returnable` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `item_remarks` varchar(255) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `mos` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `vendor_remarks` text NOT NULL,
  `Stock_in_out` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `geoinformatics`
--

INSERT INTO `geoinformatics` (`id`, `name`, `serial_no`, `model_no`, `main_category`, `category`, `type`, `location`, `returnable`, `qty`, `price`, `total_price`, `item_remarks`, `project_name`, `project_no`, `purchase_order`, `invoice_no`, `vendor_name`, `date`, `place`, `mos`, `receiver_name`, `vendor_remarks`, `Stock_in_out`, `barcode`) VALUES
(1, 'Product 1', 'dsf', 'cz', 'GeoInformatics', 'Mechanical', 'Repair/Services', 'Inhouse', 'NonReturnable', 3, 4.00, 12.00, 'sdf', 'sdf', 'sdf', 'PN001', 'IN001', 'Baroda Polyform', '2024-10-22', 'SK warehouse', 'ByRoad', 'Manimegalai', 'sdfs', 'Stock In', '67174d68d1f6d'),
(2, 'dddddddddd', '564', '34ed', 'GeoInformatics', 'Electrical', 'Rental', 'Onfield', 'NonReturnable', 5, 3490.00, 17450.00, 'ewfdcs', 'efasd', 'S32', 'sdfer', 'ytred', 'niojer', '2024-11-12', 'ioermfe', 'ByTrain', 'trew', 'rne', 'Stock In', '673d87086c0a4'),
(3, 'dddddddddd', '9834', 'asfsdfr', 'GeoInformatics', 'Mechanical', 'Assets', 'Inhouse', 'NonReturnable', 1, 7645.00, 7645.00, 'omk', 'oiwegm', 'nwgojt', 'igomrke', '3561342', 'meor', '2024-11-13', 'mio', 'ByShip', 'nrteo', 'enrj', 'Stock In', '673d875179e9a'),
(5, 'Product 1', '643', '2413ew', 'GeoInformatics', 'General', 'Consumables', 'Onfield', 'NonReturnable', 3, 70346.00, 211038.00, 'wertu', 'odoun', '978', 'PN001', 'IN001', 'Baroda Polyform', '2024-11-14', 'SK warehouse', 'ByAir', 'Manimegalai', 'dfghjk', 'Stock In', '673d889790c2c'),
(6, 'Product 2', '78956', 'jlk789', 'GeoInformatics', 'Mechanical', 'Repair/Services', 'Inhouse', 'Returnable', 10, 89056.00, 890560.00, 'khj', 'wer', 'oupi', 'PN0980', 'IN0908', 'Baroda Polyform', '2024-11-15', 'SK warehouse', 'ByAir', 'Manimegalai', 'puiotwre', 'Stock In', '673d88df58363'),
(7, 'swift', '56432', '21345', 'GeoInformatics', 'IT', 'Stock', 'Onfield', 'NonReturnable', 5, 10.00, 50.00, 'ytaewd', 'Kish', '54', '086534', '12334455', 'Kishore', '2025-02-21', 'Chennai', 'ByAir', 'Kavi', '324q3', 'Stock In', '67b80369e4c18'),
(8, 'kings', 'ytref234512', '13245hngbfd', 'GeoInformatics', 'IT', 'Stock', 'Onfield', 'NonReturnable', 6, 15.00, 90.00, 'htbgfdvcs', 'Kiash', '`42312', '086534', '12334455', 'Kishore', '2025-02-21', 'Chennai', 'ByAir', 'Kavi', 'qfdasd5342', 'Stock In', '67b8038922c86');

-- --------------------------------------------------------

--
-- Table structure for table `geoscience`
--

CREATE TABLE `geoscience` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `model_no` varchar(255) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `returnable` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `item_remarks` varchar(255) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `mos` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `vendor_remarks` text NOT NULL,
  `Stock_in_out` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `geoscience`
--

INSERT INTO `geoscience` (`id`, `name`, `serial_no`, `model_no`, `main_category`, `category`, `type`, `location`, `returnable`, `qty`, `price`, `total_price`, `item_remarks`, `project_name`, `project_no`, `purchase_order`, `invoice_no`, `vendor_name`, `date`, `place`, `mos`, `receiver_name`, `vendor_remarks`, `Stock_in_out`, `barcode`) VALUES
(1, 'zzzzzzzzzzzzzzz', 'zzzzzzzz', '2zzzzzzzzzzzz', 'GeoScience', 'Electrical', 'Rental', 'Inhouse', 'NonReturnable', 2, 10.00, 20.00, 'zzzzzzzz', 'zzzzzzzzzzz', 'zzzzzzzzzzz', 'zzzzzzzzzzzz', 'zzzzzzzzzzzz', 'zzzzzzzzzzz', '2024-10-22', 'zzzzzzzzzzzz', 'ByRoad', 'zzzzzzzzzzzzz', 'zzzzzzzzzz', 'Stock In', '6717495098fb6'),
(2, 'yyyyyyyyyyy', 'kdcnjefr', 'sdnafo', 'GeoScience', 'Electrical', 'Rental', 'Inhouse', 'NonReturnable', 3, 60.00, 180.00, 'dfqerfq3', 'QWEQR', '1242341', 'yyyyyyyyyy', 'yyyyyyyyyyyy', 'yyyyyyyyyy', '2024-11-08', 'yyyyyyyyyyyy', 'ByRoad', 'yyyyyyyyyyy', 'erqreqcas', 'Stock In', '673d859cd53cc'),
(3, 'yyyyyyyyyyy', '47657', 'jn988yuji', 'GeoScience', 'Mechanical', 'Assets', 'Warehouse', 'Returnable', 3, 3254.00, 9762.00, 'SDQERF', 'po;lkjfewdc', '123ewds', 'yyyyyyyyyy', 'yyyyyyyyyyyy', 'yyyyyyyyyy', '2024-11-09', 'yyyyyyyyyyyy', 'ByRoad', 'yyyyyyyyyyy', 'rmeklf', 'Stock In', '673d85db7c819'),
(4, 'iormekc', '2354', '235', 'GeoScience', 'IT', 'Stock', 'Onfield', 'NonReturnable', 6, 8765.00, 52590.00, 'rekd', 'oermfdl', '32erw', 'yyyyyyyyyy', 'yyyyyyyyyyyy', 'iomlkds', '2024-11-10', 'ermklfd', 'ByAir', 'rekmlfd', '3ew', 'Stock In', '673d861b783ae'),
(6, 'kkkkkkkkkkk', '23534', '3243df', 'GeoScience', 'Mechanical', 'Repair/Services', 'Warehouse', 'Returnable', 7, 900.00, 6300.00, 'fmelk', 'mkfroier', '2332', 'we23', '1256', 'ewDS', '2024-11-11', 'dERGE', 'ByTrain', 'erqfac', 'wed', 'Stock In', '673d86ba92cd7'),
(7, 'daf', '314', 'sww345', 'GeoScience', 'IT', 'Consumables', 'Warehouse', 'Returnable', 4, 5000.00, 20000.00, 'rewqq', 'fdsa', 'qer', '234', 'dsf', 'avvvgvsd', '2024-11-16', 'WF', 'ByAir', 'dfa', 'qrweasd', 'Stock In', '673d9d9ebeb8d');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `name` varchar(200) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`name`, `userName`, `phone_number`, `password`, `email_id`, `role`, `id`, `employee_id`) VALUES
('Kishore', 'kishore', '9600701778', '98c3b24124499b152e7bdfedd8a38102', 'kishore@gmail.com', 'Admin', 1, '035'),
('King Allwin', 'Kingswin', '936135746', 'c500d2c22f36955a44dec2b201cc0a5c', 'allwin@gmail.com', 'Admin', 2, '036');

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `id` int(11) NOT NULL,
  `receiverName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receiver`
--

INSERT INTO `receiver` (`id`, `receiverName`) VALUES
(1, 'zzzzzzzzzzzzz'),
(2, 'Manimegalai'),
(3, 'xx'),
(4, 'asdwasd'),
(5, 'ddddddddd'),
(6, 'kalai'),
(7, 'yyyyyyyyyyy'),
(8, 'rekmlfd'),
(9, 'dddws'),
(10, 'erqfac'),
(11, 'trew'),
(12, 'nrteo'),
(13, 'sad'),
(14, 'dfa'),
(15, 'qwerfdassadewxc'),
(16, 'qwerfdassadew'),
(17, 'qwerfdassad'),
(18, 'qwerfdas'),
(19, 'rtydf'),
(20, 'newrec'),
(21, 'Kishore'),
(22, 'Kavi');

-- --------------------------------------------------------

--
-- Table structure for table `stockout`
--

CREATE TABLE `stockout` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `serial_no` varchar(200) NOT NULL,
  `model_no` varchar(200) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `category` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` longtext NOT NULL,
  `total_price` longtext NOT NULL,
  `stock` varchar(200) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockout`
--

INSERT INTO `stockout` (`id`, `name`, `serial_no`, `model_no`, `main_category`, `category`, `qty`, `price`, `total_price`, `stock`, `date`) VALUES
(1, 'xx', 'xx', 'xx', 'ESS', 'Admin', '2', '30.00', '60', 'Stock Out', '2024-11-11'),
(2, 'Product 1', 'dsf', 'cz', 'GeoInformatics', 'Mechanical', '2', '4.00', '8', 'Stock Out', '2024-11-12'),
(3, 'dddddddddd', 'sadsadsad', 'sad', 'GeoEngineering', 'Electrical', '1', '2.00', '2', 'Stock Out', '2024-11-13'),
(4, 'kkkkkkkkkkk', '23534', '3243df', 'GeoScience', 'Mechanical', '2', '900.00', '1800', 'Stock Out', '2024-11-14'),
(5, 'dddddddddd', '8923jkn', 'dsWER234', 'GeoScience', 'General', '1', '876.00', '876', 'Stock Out', '2024-11-15'),
(6, 'sadddd', '346', 'sfd3', 'GeoInformatics', 'IT', '13', '7000.00', '91000', 'Stock Out', '2024-11-16'),
(7, 'df', '542', 'qerw43', 'ESS', 'Admin', '4', '4300.00', '17200', 'Stock Out', '2024-11-17'),
(8, 'iouf', '8796', 'tr5', 'ESS', 'Accounts', '54', '8974.00', '484596', 'Stock Out', '2024-11-18'),
(9, 'sad', '743', 'we78', 'ESS', 'General', '3', '2300.00', '6900', 'Stock Out', '2024-11-19'),
(10, 'saddd', '346', 'sfd3', 'GeoInformatics', 'IT', '31', '7000.00', '217000', 'Stock Out', '2024-11-20'),
(11, 'ment', '253', 'wet324', 'GeoEngineering', 'Mechanical', '13', '7432.00', '96616', 'Stock Out', '2024-11-20'),
(12, 'tor', 'ayt43', '432ewr', 'GeoEngineering', 'Electrical', '7', '8767.00', '61369', 'Stock Out', '2024-11-20'),
(13, 'kjliufd', '98798', 'rt78', 'ESS', 'Admin', '80', '9807.00', '7845600', 'Stock Out', '2024-11-20'),
(14, 'regi', '6', 'wer76', 'ESS', 'Accounts', '23', '67856.00', '1560688', 'Stock Out', '2024-11-20'),
(15, 'Product 2', '643', '2413ew', 'GeoInformatics', 'General', '2', '70346.00', '140692', 'Stock Out', '2024-11-20'),
(16, 'erdfvc', 'sadfdfads', 'asddfd', 'ESS', 'Accounts', '7', '45.00', '315', 'Stock Out', '2024-11-20'),
(17, 'Pen', '234', '2345', 'GeoEngineering', 'Electrical', '5', '10.00', '50', 'Stock Out', '2024-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `vendorName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `vendorName`) VALUES
(1, 'zzzzzzzzzzz'),
(2, 'Baroda Polyform'),
(3, 'xx'),
(4, 'aaaaaaaaaa'),
(5, 'ddddddd'),
(6, 'sad'),
(7, 'sdfdf'),
(8, 'yyyyyyyyyy'),
(9, 'iomlkds'),
(10, 'ewfdc'),
(11, 'ewDS'),
(12, 'niojer'),
(13, 'meor'),
(14, 'ska'),
(15, 'etwry'),
(16, 'avvvgvsd'),
(17, 'puiosaddfzxc'),
(18, 'puiosaddf'),
(19, 'puiosad'),
(20, 'jask;dlf'),
(21, 'fgilkj'),
(22, 'koko'),
(23, 'dgf'),
(24, 'ghc'),
(25, 'adsa'),
(26, 'newsupp'),
(27, 'King'),
(28, 'Ganapathi'),
(29, 'Kishore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boxdetails`
--
ALTER TABLE `boxdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `dispatches`
--
ALTER TABLE `dispatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ess`
--
ALTER TABLE `ess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_no` (`model_no`);

--
-- Indexes for table `geoengineering`
--
ALTER TABLE `geoengineering`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_no` (`model_no`);

--
-- Indexes for table `geoinformatics`
--
ALTER TABLE `geoinformatics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_no` (`model_no`);

--
-- Indexes for table `geoscience`
--
ALTER TABLE `geoscience`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_no` (`model_no`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockout`
--
ALTER TABLE `stockout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boxdetails`
--
ALTER TABLE `boxdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `dispatches`
--
ALTER TABLE `dispatches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ess`
--
ALTER TABLE `ess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `geoengineering`
--
ALTER TABLE `geoengineering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `geoinformatics`
--
ALTER TABLE `geoinformatics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `geoscience`
--
ALTER TABLE `geoscience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receiver`
--
ALTER TABLE `receiver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stockout`
--
ALTER TABLE `stockout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
