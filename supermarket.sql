-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 08:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `forecast`
--

CREATE TABLE `forecast` (
  `forecast_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `predicted_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `available_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `available_quantity`) VALUES
(1, 'Apple', 1200, 2300),
(2, 'Banana', 500, 1000),
(3, 'Orange', 1800, 750),
(4, 'Milk', 2900, 200),
(5, 'Bread', 2500, 80);

-- --------------------------------------------------------

--
-- Table structure for table `salesorder`
--

CREATE TABLE `salesorder` (
  `salesdata_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Total` int(10) NOT NULL,
  `CompetitorPrice` decimal(10,2) DEFAULT NULL,
  `CompetitorCount` int(11) DEFAULT NULL,
  `Promotion` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salesorder`
--

INSERT INTO `salesorder` (`salesdata_id`, `product_id`, `date`, `Quantity`, `Total`, `CompetitorPrice`, `CompetitorCount`, `Promotion`) VALUES
(1, 4, '2023-10-01', 9, 0, 76832.00, 2, 'No'),
(2, 5, '2023-12-05', 2, 0, 57908.00, 2, 'No'),
(3, 5, '2023-02-07', 6, 0, 59657.00, 2, 'No'),
(4, 5, '2023-07-19', 1, 0, 68798.00, 3, 'Yes'),
(5, 5, '2023-11-11', 4, 0, 64150.00, 3, 'Yes'),
(6, 4, '2023-10-31', 8, 0, 53464.00, 5, 'Yes'),
(7, 1, '2023-10-12', 9, 0, 78880.00, 4, 'Yes'),
(8, 3, '2023-06-16', 5, 0, 94474.00, 2, 'No'),
(9, 4, '2023-03-18', 8, 0, 92514.00, 3, 'Yes'),
(10, 2, '2023-03-23', 4, 0, 69693.00, 2, 'Yes'),
(11, 1, '2023-01-06', 9, 0, 93591.00, 3, 'Yes'),
(12, 3, '2023-02-04', 3, 0, 69096.00, 3, 'No'),
(13, 5, '2023-01-20', 3, 0, 76454.00, 5, 'No'),
(14, 1, '2023-09-05', 2, 0, 81397.00, 4, 'No'),
(15, 4, '2023-03-02', 1, 0, 51087.00, 2, 'Yes'),
(16, 4, '2023-04-16', 7, 0, 87947.00, 4, 'No'),
(17, 3, '2023-01-15', 6, 0, 79177.00, 5, 'No'),
(18, 4, '2023-11-15', 2, 0, 98069.00, 3, 'Yes'),
(19, 4, '2023-07-13', 5, 0, 90303.00, 3, 'Yes'),
(20, 2, '2023-07-11', 10, 0, 52206.00, 4, 'Yes'),
(21, 1, '2023-05-11', 5, 0, 89073.00, 2, 'No'),
(22, 2, '2023-07-06', 9, 0, 51298.00, 2, 'Yes'),
(23, 1, '2023-09-18', 3, 0, 66868.00, 4, 'No'),
(24, 3, '2023-12-15', 6, 0, 65027.00, 3, 'Yes'),
(25, 3, '2023-03-13', 3, 0, 56335.00, 5, 'No'),
(26, 1, '2023-02-14', 3, 0, 89931.00, 2, 'No'),
(27, 3, '2023-06-27', 1, 0, 63642.00, 2, 'No'),
(28, 3, '2023-10-20', 3, 0, 72618.00, 1, 'No'),
(29, 5, '2023-03-09', 10, 0, 60479.00, 4, 'No'),
(30, 5, '2023-10-14', 5, 0, 59320.00, 3, 'No'),
(31, 3, '2023-03-18', 6, 0, 53171.00, 1, 'Yes'),
(32, 4, '2023-06-11', 10, 0, 85122.00, 5, 'Yes'),
(33, 2, '2023-10-04', 10, 0, 54658.00, 2, 'Yes'),
(34, 5, '2023-01-20', 9, 0, 73569.00, 2, 'Yes'),
(35, 4, '2023-03-26', 8, 0, 87709.00, 1, 'Yes'),
(36, 3, '2023-03-01', 5, 0, 79538.00, 2, 'No'),
(37, 4, '2023-11-09', 3, 0, 62416.00, 3, 'No'),
(38, 5, '2023-03-08', 3, 0, 63874.00, 4, 'Yes'),
(39, 5, '2023-03-13', 6, 0, 77212.00, 4, 'Yes'),
(40, 2, '2023-10-19', 1, 0, 78788.00, 1, 'Yes'),
(41, 3, '2023-03-20', 5, 0, 54048.00, 2, 'No'),
(42, 2, '2023-11-30', 5, 0, 65762.00, 4, 'No'),
(43, 5, '2023-03-07', 10, 0, 53542.00, 5, 'No'),
(44, 3, '2023-05-16', 2, 0, 79522.00, 1, 'Yes'),
(45, 2, '2023-03-30', 1, 0, 59471.00, 3, 'No'),
(46, 2, '2023-09-27', 8, 0, 93737.00, 1, 'Yes'),
(47, 1, '2023-11-09', 3, 0, 87789.00, 4, 'Yes'),
(48, 4, '2023-12-19', 10, 0, 61701.00, 1, 'No'),
(49, 3, '2023-11-20', 8, 0, 84676.00, 3, 'No'),
(50, 5, '2023-11-13', 6, 0, 54168.00, 2, 'Yes'),
(51, 4, '2023-04-13', 6, 0, 68147.00, 4, 'Yes'),
(52, 5, '2023-02-05', 9, 0, 83118.00, 1, 'Yes'),
(53, 3, '2023-09-20', 9, 0, 91784.00, 2, 'Yes'),
(54, 4, '2023-03-11', 9, 0, 57110.00, 1, 'Yes'),
(55, 1, '2023-04-01', 7, 0, 78059.00, 2, 'Yes'),
(56, 4, '2023-07-18', 8, 0, 60754.00, 1, 'No'),
(57, 4, '2023-10-02', 8, 0, 89300.00, 1, 'No'),
(58, 5, '2023-01-17', 4, 0, 54977.00, 5, 'No'),
(59, 4, '2023-04-12', 4, 0, 68731.00, 2, 'Yes'),
(60, 1, '2023-04-30', 3, 0, 72023.00, 3, 'Yes'),
(61, 3, '2023-04-15', 10, 0, 99776.00, 4, 'No'),
(62, 4, '2023-09-20', 6, 0, 96052.00, 1, 'Yes'),
(63, 2, '2023-07-29', 1, 0, 83925.00, 2, 'No'),
(64, 3, '2023-04-18', 10, 0, 83804.00, 2, 'Yes'),
(65, 5, '2023-03-21', 3, 0, 62968.00, 3, 'No'),
(66, 3, '2023-07-10', 3, 0, 83344.00, 4, 'Yes'),
(67, 1, '2023-01-25', 9, 0, 52404.00, 5, 'Yes'),
(68, 5, '2023-08-05', 1, 0, 52248.00, 2, 'No'),
(69, 4, '2023-12-14', 6, 0, 77004.00, 2, 'Yes'),
(70, 2, '2023-08-13', 5, 0, 85571.00, 5, 'Yes'),
(71, 5, '2023-11-12', 5, 0, 99358.00, 5, 'No'),
(72, 5, '2023-02-27', 9, 0, 63368.00, 4, 'Yes'),
(73, 1, '2023-03-11', 6, 0, 85235.00, 4, 'Yes'),
(74, 3, '2023-08-11', 7, 0, 95366.00, 3, 'Yes'),
(75, 1, '2023-07-23', 3, 0, 64839.00, 2, 'No'),
(76, 2, '2023-03-26', 4, 0, 86569.00, 1, 'Yes'),
(77, 4, '2023-07-19', 8, 0, 57993.00, 3, 'Yes'),
(78, 1, '2023-07-22', 4, 0, 55695.00, 5, 'Yes'),
(79, 3, '2023-10-19', 8, 0, 92575.00, 4, 'No'),
(80, 3, '2023-04-03', 6, 0, 67987.00, 4, 'No'),
(81, 2, '2023-05-21', 2, 0, 68653.00, 1, 'Yes'),
(82, 5, '2023-10-10', 5, 0, 68211.00, 4, 'Yes'),
(83, 3, '2023-06-10', 10, 0, 71431.00, 3, 'Yes'),
(84, 2, '2023-04-13', 5, 0, 77554.00, 4, 'No'),
(85, 2, '2023-06-25', 8, 0, 69820.00, 5, 'No'),
(86, 3, '2023-03-12', 6, 0, 70021.00, 1, 'No'),
(87, 2, '2023-10-01', 10, 0, 51703.00, 3, 'No'),
(88, 4, '2023-05-19', 6, 0, 78694.00, 4, 'No'),
(89, 3, '2023-08-06', 4, 0, 80862.00, 4, 'Yes'),
(90, 4, '2023-09-22', 5, 0, 91878.00, 3, 'Yes'),
(91, 4, '2023-02-12', 5, 0, 90783.00, 5, 'Yes'),
(92, 5, '2023-06-07', 4, 0, 94663.00, 2, 'No'),
(93, 1, '2023-03-21', 8, 0, 81887.00, 2, 'Yes'),
(94, 5, '2023-09-29', 3, 0, 50626.00, 2, 'No'),
(95, 2, '2023-09-18', 7, 0, 84515.00, 1, 'No'),
(96, 1, '2023-05-24', 9, 0, 69359.00, 1, 'Yes'),
(97, 1, '2023-11-08', 8, 0, 80084.00, 1, 'Yes'),
(98, 1, '2023-12-07', 6, 0, 52111.00, 3, 'Yes'),
(99, 3, '2023-08-29', 9, 0, 85531.00, 1, 'Yes'),
(100, 5, '2023-05-27', 3, 0, 97886.00, 1, 'No'),
(101, 2, '2023-02-21', 9, 0, 56078.00, 4, 'No'),
(102, 2, '2023-11-08', 3, 0, 63438.00, 5, 'Yes'),
(103, 3, '2023-12-18', 4, 0, 57139.00, 3, 'Yes'),
(104, 3, '2023-04-04', 8, 0, 59539.00, 4, 'Yes'),
(105, 4, '2023-04-03', 4, 0, 82616.00, 3, 'Yes'),
(106, 4, '2023-09-29', 5, 0, 98708.00, 2, 'No'),
(107, 1, '2023-09-19', 4, 0, 66457.00, 3, 'No'),
(108, 5, '2023-10-22', 3, 0, 59061.00, 3, 'No'),
(109, 4, '2023-01-25', 5, 0, 96390.00, 3, 'Yes'),
(110, 2, '2023-05-22', 10, 0, 95857.00, 2, 'No'),
(111, 5, '2023-06-17', 9, 0, 70228.00, 4, 'No'),
(112, 2, '2023-04-22', 8, 0, 98057.00, 3, 'No'),
(113, 5, '2023-08-05', 3, 0, 58424.00, 1, 'Yes'),
(114, 2, '2023-12-17', 10, 0, 56439.00, 2, 'Yes'),
(115, 5, '2023-01-05', 6, 0, 73335.00, 3, 'Yes'),
(116, 5, '2023-02-27', 3, 0, 84663.00, 3, 'Yes'),
(117, 4, '2023-12-12', 7, 0, 50602.00, 3, 'Yes'),
(118, 3, '2023-03-13', 6, 0, 81144.00, 2, 'No'),
(119, 3, '2023-11-26', 1, 0, 83668.00, 4, 'Yes'),
(120, 3, '2023-01-22', 9, 0, 90825.00, 3, 'No'),
(121, 5, '2023-12-16', 4, 0, 65050.00, 3, 'Yes'),
(122, 1, '2023-09-28', 5, 0, 75878.00, 1, 'Yes'),
(123, 4, '2023-12-13', 9, 0, 85736.00, 5, 'No'),
(124, 1, '2023-07-31', 8, 0, 51651.00, 5, 'No'),
(125, 3, '2023-11-12', 7, 0, 50203.00, 2, 'No'),
(126, 5, '2023-06-21', 7, 0, 81885.00, 3, 'Yes'),
(127, 3, '2023-04-17', 1, 0, 61633.00, 2, 'No'),
(128, 1, '2023-05-04', 4, 0, 79752.00, 1, 'Yes'),
(129, 5, '2023-07-04', 7, 0, 51214.00, 2, 'Yes'),
(130, 5, '2023-06-09', 6, 0, 80937.00, 4, 'No'),
(131, 2, '2023-01-30', 7, 0, 66764.00, 3, 'No'),
(132, 1, '2023-04-13', 3, 0, 98841.00, 5, 'No'),
(133, 3, '2023-12-15', 2, 0, 76115.00, 3, 'Yes'),
(134, 1, '2023-01-10', 1, 0, 79229.00, 5, 'Yes'),
(135, 2, '2023-08-24', 2, 0, 85000.00, 1, 'No'),
(136, 1, '2023-07-17', 6, 0, 84382.00, 3, 'Yes'),
(137, 3, '2023-02-25', 4, 0, 93882.00, 1, 'Yes'),
(138, 3, '2023-07-22', 1, 0, 55794.00, 2, 'Yes'),
(139, 3, '2023-06-02', 7, 0, 86433.00, 1, 'Yes'),
(140, 5, '2023-06-01', 5, 0, 56436.00, 1, 'Yes'),
(141, 3, '2023-07-23', 2, 0, 50535.00, 3, 'No'),
(142, 2, '2023-10-18', 3, 0, 78628.00, 3, 'Yes'),
(143, 5, '2023-06-06', 6, 0, 77359.00, 3, 'Yes'),
(144, 3, '2023-03-08', 3, 0, 54907.00, 5, 'No'),
(145, 5, '2023-02-22', 8, 0, 74679.00, 3, 'No'),
(146, 2, '2023-01-08', 10, 0, 64325.00, 5, 'Yes'),
(147, 5, '2023-10-22', 1, 0, 50897.00, 5, 'No'),
(148, 5, '2023-11-18', 5, 0, 75002.00, 5, 'Yes'),
(149, 3, '2023-09-25', 3, 0, 74876.00, 2, 'Yes'),
(150, 2, '2023-12-18', 7, 0, 77630.00, 5, 'Yes'),
(151, 4, '2023-11-13', 3, 0, 73374.00, 3, 'Yes'),
(152, 1, '2023-05-29', 8, 0, 55404.00, 3, 'No'),
(153, 2, '2023-03-10', 3, 0, 91810.00, 1, 'No'),
(154, 2, '2023-12-01', 9, 0, 96154.00, 5, 'Yes'),
(155, 4, '2023-01-05', 1, 0, 77467.00, 2, 'No'),
(156, 3, '2023-01-07', 5, 0, 95407.00, 3, 'Yes'),
(157, 2, '2023-12-22', 1, 0, 70788.00, 5, 'No'),
(158, 2, '2023-03-15', 4, 0, 52114.00, 2, 'No'),
(159, 5, '2023-10-15', 2, 0, 69206.00, 1, 'Yes'),
(160, 4, '2023-10-12', 10, 0, 76770.00, 2, 'No'),
(161, 3, '2023-04-14', 9, 0, 70329.00, 3, 'No'),
(162, 5, '2023-07-12', 2, 0, 82129.00, 3, 'Yes'),
(163, 4, '2023-10-19', 10, 0, 68197.00, 3, 'No'),
(164, 1, '2023-04-14', 9, 0, 83043.00, 5, 'Yes'),
(165, 4, '2023-01-26', 1, 0, 65732.00, 2, 'Yes'),
(166, 1, '2023-08-20', 10, 0, 70910.00, 2, 'Yes'),
(167, 2, '2023-11-06', 1, 0, 69415.00, 1, 'Yes'),
(168, 1, '2023-07-03', 10, 0, 73473.00, 3, 'No'),
(169, 5, '2023-09-16', 8, 0, 98972.00, 5, 'Yes'),
(170, 4, '2023-06-08', 4, 0, 92419.00, 1, 'Yes'),
(171, 2, '2023-05-24', 9, 0, 83977.00, 3, 'No'),
(172, 5, '2023-07-16', 9, 0, 85813.00, 4, 'No'),
(173, 2, '2023-09-15', 9, 0, 61351.00, 4, 'Yes'),
(174, 5, '2023-11-09', 7, 0, 76835.00, 5, 'No'),
(175, 3, '2023-09-13', 2, 0, 74458.00, 1, 'Yes'),
(176, 1, '2023-12-25', 6, 0, 84357.00, 3, 'Yes'),
(177, 2, '2023-09-12', 9, 0, 59913.00, 2, 'Yes'),
(178, 4, '2023-12-06', 9, 0, 85793.00, 5, 'Yes'),
(179, 3, '2023-04-03', 7, 0, 73252.00, 1, 'Yes'),
(180, 5, '2023-06-23', 8, 0, 65731.00, 2, 'Yes'),
(181, 4, '2023-04-20', 6, 0, 65192.00, 1, 'Yes'),
(182, 1, '2023-02-03', 1, 0, 93342.00, 2, 'No'),
(183, 3, '2023-03-24', 4, 0, 97208.00, 1, 'Yes'),
(184, 3, '2023-08-09', 3, 0, 99718.00, 2, 'Yes'),
(185, 5, '2023-01-25', 5, 0, 56572.00, 2, 'No'),
(186, 3, '2023-03-25', 8, 0, 91364.00, 1, 'Yes'),
(187, 5, '2023-04-02', 7, 0, 64156.00, 3, 'No'),
(188, 4, '2023-07-06', 8, 0, 94681.00, 3, 'No'),
(189, 4, '2023-06-22', 2, 0, 59584.00, 2, 'No'),
(190, 1, '2023-08-05', 9, 0, 85477.00, 1, 'No'),
(191, 1, '2023-11-28', 5, 0, 65600.00, 2, 'Yes'),
(192, 5, '2023-01-31', 8, 0, 67838.00, 2, 'Yes'),
(193, 3, '2023-05-02', 4, 0, 51810.00, 4, 'No'),
(194, 3, '2023-07-30', 5, 0, 51782.00, 4, 'Yes'),
(195, 2, '2023-06-30', 7, 0, 62385.00, 4, 'Yes'),
(196, 2, '2023-08-20', 6, 0, 83151.00, 4, 'No'),
(197, 4, '2023-10-27', 10, 0, 52555.00, 1, 'No'),
(198, 5, '2023-01-09', 3, 0, 81040.00, 5, 'Yes'),
(199, 5, '2023-01-20', 8, 0, 86387.00, 1, 'No'),
(200, 1, '2023-09-06', 4, 0, 81002.00, 5, 'Yes'),
(201, 2, '2023-02-18', 6, 0, 57351.00, 5, 'Yes'),
(202, 3, '2023-03-06', 4, 0, 54434.00, 3, 'Yes'),
(203, 4, '2023-07-10', 6, 0, 97270.00, 4, 'No'),
(204, 3, '2023-09-02', 10, 0, 88730.00, 1, 'No'),
(205, 1, '2023-05-24', 10, 0, 55058.00, 4, 'No'),
(206, 3, '2023-01-01', 5, 0, 95460.00, 1, 'No'),
(207, 2, '2023-11-12', 7, 0, 65257.00, 5, 'Yes'),
(208, 4, '2023-02-27', 8, 0, 94559.00, 1, 'Yes'),
(209, 3, '2023-03-29', 9, 0, 93272.00, 5, 'No'),
(210, 5, '2023-10-13', 10, 0, 81692.00, 2, 'No'),
(211, 5, '2023-11-10', 5, 0, 63256.00, 1, 'Yes'),
(212, 3, '2023-06-19', 8, 0, 55416.00, 1, 'Yes'),
(213, 3, '2023-11-15', 10, 0, 87390.00, 4, 'Yes'),
(214, 3, '2023-11-04', 7, 0, 91300.00, 3, 'Yes'),
(215, 2, '2023-02-21', 10, 0, 98580.00, 4, 'No'),
(216, 2, '2023-03-27', 6, 0, 99419.00, 2, 'No'),
(217, 4, '2023-10-07', 10, 0, 56269.00, 4, 'Yes'),
(218, 1, '2023-08-16', 8, 0, 66930.00, 4, 'Yes'),
(219, 1, '2023-02-01', 10, 0, 82582.00, 4, 'No'),
(220, 3, '2023-03-04', 4, 0, 89507.00, 3, 'No'),
(221, 1, '2023-04-28', 6, 0, 77589.00, 5, 'Yes'),
(222, 4, '2023-06-26', 2, 0, 66030.00, 2, 'No'),
(223, 5, '2023-07-02', 10, 0, 96861.00, 2, 'Yes'),
(224, 1, '2023-11-15', 2, 0, 83230.00, 4, 'No'),
(225, 5, '2023-06-03', 6, 0, 50775.00, 1, 'No'),
(226, 3, '2023-08-02', 6, 0, 96769.00, 2, 'Yes'),
(227, 3, '2023-01-16', 10, 0, 99550.00, 2, 'Yes'),
(228, 3, '2023-01-25', 9, 0, 94024.00, 1, 'No'),
(229, 1, '2023-06-23', 2, 0, 51029.00, 3, 'No'),
(230, 1, '2023-08-15', 1, 0, 96054.00, 2, 'No'),
(231, 4, '2023-04-18', 7, 0, 89043.00, 5, 'Yes'),
(232, 2, '2023-06-25', 3, 0, 90548.00, 5, 'No'),
(233, 3, '2023-10-01', 3, 0, 69572.00, 5, 'Yes'),
(234, 5, '2023-03-01', 3, 0, 77335.00, 4, 'Yes'),
(235, 4, '2023-11-14', 10, 0, 55208.00, 5, 'No'),
(236, 1, '2023-05-07', 3, 0, 56118.00, 1, 'Yes'),
(237, 4, '2023-10-31', 4, 0, 82671.00, 5, 'No'),
(238, 4, '2023-09-13', 6, 0, 76375.00, 1, 'Yes'),
(239, 2, '2023-11-19', 4, 0, 54304.00, 4, 'Yes'),
(240, 3, '2023-04-04', 9, 0, 72126.00, 2, 'Yes'),
(241, 5, '2023-01-12', 5, 0, 71466.00, 4, 'No'),
(242, 2, '2023-08-04', 3, 0, 58791.00, 1, 'Yes'),
(243, 1, '2023-03-11', 6, 0, 79166.00, 1, 'Yes'),
(244, 3, '2023-12-27', 5, 0, 64737.00, 3, 'No'),
(245, 2, '2023-08-30', 5, 0, 58435.00, 3, 'No'),
(246, 4, '2023-11-25', 2, 0, 86302.00, 5, 'No'),
(247, 5, '2023-09-22', 2, 0, 52928.00, 5, 'Yes'),
(248, 5, '2023-09-24', 3, 0, 91403.00, 3, 'No'),
(249, 2, '2023-08-29', 6, 0, 90476.00, 2, 'No'),
(250, 2, '2023-09-19', 6, 0, 57624.00, 3, 'No'),
(251, 3, '2023-08-26', 10, 0, 61458.00, 2, 'No'),
(252, 2, '2023-05-04', 8, 0, 66573.00, 1, 'Yes'),
(253, 4, '2023-12-02', 3, 0, 87597.00, 5, 'Yes'),
(254, 3, '2023-08-04', 4, 0, 69713.00, 2, 'No'),
(255, 3, '2023-07-10', 2, 0, 70514.00, 5, 'No'),
(256, 4, '2023-10-23', 2, 0, 96904.00, 1, 'Yes'),
(257, 3, '2023-07-28', 7, 0, 83654.00, 3, 'Yes'),
(258, 5, '2023-06-28', 7, 0, 56826.00, 5, 'No'),
(259, 2, '2023-10-09', 7, 0, 66741.00, 3, 'No'),
(260, 1, '2023-07-29', 6, 0, 78706.00, 4, 'Yes'),
(261, 3, '2023-02-10', 1, 0, 92777.00, 2, 'Yes'),
(262, 2, '2023-11-07', 6, 0, 54083.00, 2, 'No'),
(263, 5, '2023-02-17', 8, 0, 70396.00, 1, 'Yes'),
(264, 2, '2023-02-15', 8, 0, 76431.00, 5, 'No'),
(265, 5, '2023-01-21', 4, 0, 67838.00, 2, 'No'),
(266, 3, '2023-07-23', 3, 0, 62680.00, 3, 'Yes'),
(267, 4, '2023-05-28', 2, 0, 60017.00, 3, 'Yes'),
(268, 2, '2023-10-24', 4, 0, 51550.00, 3, 'No'),
(269, 5, '2023-02-05', 6, 0, 73215.00, 2, 'Yes'),
(270, 5, '2023-11-03', 7, 0, 99627.00, 2, 'No'),
(271, 4, '2023-01-25', 5, 0, 72490.00, 3, 'Yes'),
(272, 5, '2023-09-01', 9, 0, 50274.00, 4, 'Yes'),
(273, 1, '2023-09-02', 4, 0, 85013.00, 2, 'No'),
(274, 1, '2023-01-14', 8, 0, 76108.00, 5, 'No'),
(275, 4, '2023-07-19', 5, 0, 76965.00, 5, 'Yes'),
(276, 1, '2023-08-02', 5, 0, 81339.00, 2, 'Yes'),
(277, 5, '2023-03-30', 7, 0, 78867.00, 1, 'No'),
(278, 3, '2023-11-20', 8, 0, 83671.00, 3, 'No'),
(279, 5, '2023-05-26', 5, 0, 98706.00, 5, 'Yes'),
(280, 4, '2023-01-06', 10, 0, 72530.00, 4, 'No'),
(281, 2, '2023-04-25', 8, 0, 52736.00, 4, 'No'),
(282, 1, '2023-11-24', 1, 0, 75441.00, 5, 'No'),
(283, 4, '2023-02-07', 4, 0, 83676.00, 2, 'Yes'),
(284, 1, '2023-09-15', 6, 0, 83971.00, 1, 'Yes'),
(285, 3, '2023-09-25', 2, 0, 78170.00, 4, 'Yes'),
(286, 3, '2023-10-15', 4, 0, 51142.00, 3, 'No'),
(287, 5, '2023-03-13', 1, 0, 72319.00, 4, 'Yes'),
(288, 5, '2023-10-01', 9, 0, 69095.00, 4, 'Yes'),
(289, 3, '2023-08-07', 5, 0, 76595.00, 3, 'Yes'),
(290, 2, '2023-04-30', 8, 0, 66053.00, 3, 'No'),
(291, 5, '2023-02-07', 7, 0, 81729.00, 4, 'Yes'),
(292, 3, '2023-05-06', 4, 0, 79620.00, 3, 'Yes'),
(293, 5, '2023-06-12', 5, 0, 71002.00, 5, 'No'),
(294, 1, '2023-02-07', 10, 0, 56902.00, 5, 'Yes'),
(295, 1, '2023-11-12', 9, 0, 81500.00, 3, 'Yes'),
(296, 3, '2023-07-23', 1, 0, 84878.00, 1, 'No'),
(297, 3, '2023-05-03', 2, 0, 86910.00, 5, 'Yes'),
(298, 2, '2023-09-22', 6, 0, 93175.00, 1, 'No'),
(299, 5, '2023-02-14', 9, 0, 77901.00, 2, 'Yes'),
(300, 3, '2023-02-17', 4, 0, 64309.00, 5, 'Yes'),
(301, 5, '2023-10-23', 7, 0, 95579.00, 2, 'Yes'),
(302, 3, '2023-04-13', 10, 0, 61833.00, 1, 'Yes'),
(303, 4, '2023-03-15', 1, 0, 79752.00, 2, 'Yes'),
(304, 3, '2023-04-26', 10, 0, 52590.00, 5, 'No'),
(305, 3, '2023-12-14', 2, 0, 72946.00, 5, 'No'),
(306, 1, '2023-07-25', 6, 0, 55816.00, 4, 'Yes'),
(307, 1, '2023-11-26', 4, 0, 62806.00, 3, 'Yes'),
(308, 5, '2023-11-13', 8, 0, 54138.00, 3, 'Yes'),
(309, 2, '2023-08-01', 3, 0, 97102.00, 4, 'No'),
(310, 2, '2023-08-01', 10, 0, 98220.00, 2, 'Yes'),
(311, 4, '2023-04-08', 3, 0, 76628.00, 2, 'Yes'),
(312, 2, '2023-06-05', 3, 0, 63561.00, 1, 'Yes'),
(313, 1, '2023-02-25', 4, 0, 87027.00, 4, 'Yes'),
(314, 2, '2023-09-23', 10, 0, 51913.00, 4, 'Yes'),
(315, 5, '2023-02-16', 10, 0, 97786.00, 1, 'Yes'),
(316, 3, '2023-04-30', 2, 0, 66257.00, 4, 'Yes'),
(317, 4, '2023-07-10', 8, 0, 83012.00, 4, 'No'),
(318, 1, '2023-09-03', 9, 0, 70215.00, 4, 'Yes'),
(319, 4, '2023-02-03', 4, 0, 68225.00, 1, 'No'),
(320, 5, '2023-06-22', 7, 0, 60684.00, 3, 'Yes'),
(321, 1, '2023-08-29', 9, 0, 99531.00, 1, 'Yes'),
(322, 5, '2023-03-14', 3, 0, 63998.00, 5, 'Yes'),
(323, 5, '2023-07-14', 9, 0, 56792.00, 3, 'Yes'),
(324, 1, '2023-12-17', 6, 0, 75617.00, 2, 'Yes'),
(325, 5, '2023-07-18', 9, 0, 72132.00, 4, 'No'),
(326, 2, '2023-07-17', 8, 0, 92616.00, 2, 'No'),
(327, 5, '2023-01-25', 5, 0, 71119.00, 2, 'No'),
(328, 2, '2023-11-26', 5, 0, 83549.00, 1, 'Yes'),
(329, 4, '2023-04-25', 7, 0, 77724.00, 3, 'No'),
(330, 1, '2023-09-26', 5, 0, 92417.00, 1, 'Yes'),
(331, 5, '2023-05-30', 4, 0, 80030.00, 3, 'No'),
(332, 1, '2023-01-13', 6, 0, 59105.00, 3, 'No'),
(333, 3, '2023-04-05', 10, 0, 69958.00, 5, 'No'),
(334, 2, '2023-03-05', 3, 0, 52487.00, 4, 'Yes'),
(335, 2, '2023-06-19', 6, 0, 56510.00, 3, 'No'),
(336, 5, '2023-07-19', 3, 0, 79913.00, 4, 'Yes'),
(337, 1, '2023-07-31', 5, 0, 77573.00, 4, 'No'),
(338, 2, '2023-06-28', 3, 0, 52777.00, 1, 'Yes'),
(339, 4, '2023-01-03', 8, 0, 68457.00, 4, 'Yes'),
(340, 1, '2023-12-07', 7, 0, 52754.00, 1, 'Yes'),
(341, 1, '2023-04-30', 1, 0, 58394.00, 1, 'No'),
(342, 4, '2023-05-15', 10, 0, 72242.00, 3, 'No'),
(343, 4, '2023-10-29', 10, 0, 84713.00, 2, 'Yes'),
(344, 2, '2023-05-21', 3, 0, 75991.00, 4, 'Yes'),
(345, 1, '2023-12-23', 6, 0, 98741.00, 4, 'No'),
(346, 4, '2023-07-18', 8, 0, 98344.00, 4, 'No'),
(347, 1, '2023-03-22', 10, 0, 87970.00, 3, 'No'),
(348, 3, '2023-11-21', 2, 0, 66565.00, 5, 'No'),
(349, 1, '2023-06-26', 4, 0, 53445.00, 1, 'Yes'),
(350, 3, '2023-01-30', 10, 0, 63900.00, 3, 'Yes'),
(351, 4, '2023-03-22', 2, 0, 78961.00, 5, 'Yes'),
(352, 3, '2023-05-15', 3, 0, 52754.00, 1, 'Yes'),
(353, 2, '2023-03-31', 3, 0, 94369.00, 3, 'Yes'),
(354, 5, '2023-05-09', 1, 0, 64419.00, 3, 'No'),
(355, 2, '2023-02-17', 6, 0, 90495.00, 1, 'Yes'),
(356, 3, '2023-11-28', 10, 0, 65800.00, 3, 'No'),
(357, 3, '2023-11-29', 3, 0, 50936.00, 3, 'No'),
(358, 3, '2023-01-04', 4, 0, 91401.00, 4, 'No'),
(359, 2, '2023-12-01', 6, 0, 93592.00, 4, 'No'),
(360, 3, '2023-06-18', 9, 0, 59407.00, 1, 'No'),
(361, 4, '2023-05-06', 9, 0, 55810.00, 3, 'Yes'),
(362, 1, '2023-10-27', 6, 0, 86544.00, 5, 'Yes'),
(363, 4, '2023-11-23', 2, 0, 78749.00, 5, 'No'),
(364, 5, '2023-06-18', 4, 0, 63017.00, 5, 'Yes'),
(365, 5, '2023-11-16', 5, 0, 90954.00, 5, 'No'),
(366, 5, '2023-10-05', 1, 0, 59718.00, 4, 'Yes'),
(367, 1, '2023-05-01', 4, 0, 63601.00, 4, 'No'),
(368, 4, '2023-03-22', 9, 0, 54998.00, 2, 'Yes'),
(369, 2, '2023-04-12', 6, 0, 69845.00, 5, 'Yes'),
(370, 1, '2023-07-09', 5, 0, 86742.00, 5, 'No'),
(371, 3, '2023-09-03', 6, 0, 53516.00, 3, 'Yes'),
(372, 3, '2023-02-18', 2, 0, 95648.00, 4, 'Yes'),
(373, 4, '2023-02-05', 5, 0, 85402.00, 3, 'Yes'),
(374, 1, '2023-09-30', 3, 0, 93853.00, 5, 'Yes'),
(375, 3, '2023-06-20', 9, 0, 77356.00, 2, 'Yes'),
(376, 2, '2023-06-02', 10, 0, 79795.00, 3, 'Yes'),
(377, 4, '2023-04-28', 5, 0, 62870.00, 2, 'No'),
(378, 2, '2023-10-11', 10, 0, 67892.00, 3, 'No'),
(379, 4, '2023-04-28', 7, 0, 65140.00, 4, 'No'),
(380, 4, '2023-10-04', 9, 0, 72675.00, 5, 'No'),
(381, 1, '2023-06-04', 6, 0, 95978.00, 1, 'Yes'),
(382, 2, '2023-06-07', 1, 0, 59176.00, 2, 'Yes'),
(383, 3, '2023-09-02', 7, 0, 77470.00, 5, 'No'),
(384, 1, '2023-05-19', 9, 0, 78065.00, 1, 'No'),
(385, 1, '2023-02-20', 6, 0, 86576.00, 1, 'No'),
(386, 4, '2023-09-17', 2, 0, 62524.00, 5, 'No'),
(387, 4, '2023-06-05', 8, 0, 90833.00, 5, 'No'),
(388, 2, '2023-07-03', 4, 0, 70772.00, 1, 'No'),
(389, 3, '2023-02-13', 4, 0, 62228.00, 3, 'Yes'),
(390, 3, '2023-02-13', 3, 0, 81843.00, 5, 'No'),
(391, 2, '2023-08-25', 1, 0, 98990.00, 3, 'No'),
(392, 3, '2023-02-04', 9, 0, 93236.00, 1, 'No'),
(393, 3, '2023-12-01', 9, 0, 82811.00, 2, 'No'),
(394, 1, '2023-04-22', 3, 0, 63101.00, 4, 'No'),
(395, 3, '2023-06-15', 8, 0, 76546.00, 3, 'Yes'),
(396, 5, '2023-07-26', 4, 0, 74123.00, 4, 'Yes'),
(397, 3, '2023-01-23', 6, 0, 73092.00, 1, 'Yes'),
(398, 1, '2023-09-03', 1, 0, 83401.00, 5, 'Yes'),
(399, 1, '2023-12-09', 3, 0, 99645.00, 2, 'Yes'),
(400, 2, '2023-10-30', 6, 0, 56904.00, 2, 'No'),
(401, 4, '2023-06-18', 3, 0, 95054.00, 2, 'No'),
(402, 4, '2023-03-20', 3, 0, 71586.00, 2, 'No'),
(403, 5, '2023-03-17', 5, 0, 85254.00, 4, 'No'),
(404, 1, '2023-07-29', 9, 0, 70545.00, 5, 'Yes'),
(405, 4, '2023-01-03', 2, 0, 85103.00, 4, 'No'),
(406, 2, '2023-09-19', 6, 0, 51746.00, 5, 'Yes'),
(407, 1, '2023-12-15', 6, 0, 69865.00, 3, 'Yes'),
(408, 5, '2023-02-22', 2, 0, 99578.00, 3, 'Yes'),
(409, 5, '2023-09-25', 3, 0, 84120.00, 5, 'No'),
(410, 5, '2023-03-30', 4, 0, 92985.00, 4, 'Yes'),
(411, 3, '2023-03-01', 2, 0, 98532.00, 4, 'Yes'),
(412, 4, '2023-01-13', 10, 0, 89026.00, 4, 'Yes'),
(413, 1, '2023-02-09', 2, 0, 80773.00, 1, 'Yes'),
(414, 4, '2023-07-13', 6, 0, 72110.00, 3, 'Yes'),
(415, 3, '2023-10-05', 7, 0, 92179.00, 1, 'No'),
(416, 5, '2023-06-02', 6, 0, 57133.00, 1, 'Yes'),
(417, 5, '2023-08-11', 7, 0, 80964.00, 1, 'Yes'),
(418, 5, '2023-07-30', 1, 0, 73486.00, 3, 'Yes'),
(419, 3, '2023-06-11', 7, 0, 83138.00, 5, 'Yes'),
(420, 2, '2023-05-10', 9, 0, 75251.00, 5, 'No'),
(421, 2, '2023-06-27', 3, 0, 97007.00, 5, 'Yes'),
(422, 2, '2023-07-07', 6, 0, 88016.00, 5, 'No'),
(423, 5, '2023-06-18', 7, 0, 69836.00, 2, 'Yes'),
(424, 2, '2023-08-26', 4, 0, 92424.00, 2, 'Yes'),
(425, 4, '2023-05-29', 1, 0, 73551.00, 5, 'No'),
(426, 4, '2023-12-10', 9, 0, 93167.00, 5, 'No'),
(427, 3, '2023-07-30', 3, 0, 78121.00, 4, 'Yes'),
(428, 5, '2023-09-12', 1, 0, 85171.00, 5, 'Yes'),
(429, 3, '2023-06-26', 8, 0, 83790.00, 5, 'Yes'),
(430, 1, '2023-04-23', 4, 0, 91679.00, 5, 'Yes'),
(431, 3, '2023-10-01', 10, 0, 77506.00, 4, 'No'),
(432, 2, '2023-10-01', 2, 0, 75048.00, 2, 'No'),
(433, 1, '2023-09-11', 4, 0, 90355.00, 2, 'No'),
(434, 5, '2023-05-09', 9, 0, 93618.00, 3, 'Yes'),
(435, 2, '2023-04-15', 8, 0, 95063.00, 1, 'Yes'),
(436, 2, '2023-08-11', 1, 0, 69566.00, 1, 'No'),
(437, 3, '2023-01-12', 7, 0, 93581.00, 5, 'No'),
(438, 2, '2023-06-28', 9, 0, 80186.00, 1, 'Yes'),
(439, 1, '2023-11-19', 4, 0, 62985.00, 1, 'No'),
(440, 5, '2023-11-17', 7, 0, 61492.00, 2, 'No'),
(441, 5, '2023-05-02', 1, 0, 94696.00, 1, 'No'),
(442, 1, '2023-09-10', 3, 0, 80172.00, 1, 'No'),
(443, 4, '2023-03-23', 8, 0, 80071.00, 3, 'Yes'),
(444, 5, '2023-03-22', 5, 0, 68820.00, 2, 'Yes'),
(445, 2, '2023-12-06', 8, 0, 61980.00, 5, 'Yes'),
(446, 4, '2023-01-21', 4, 0, 80253.00, 4, 'No'),
(447, 2, '2023-10-15', 1, 0, 53646.00, 1, 'No'),
(448, 5, '2023-08-27', 8, 0, 93764.00, 3, 'Yes'),
(449, 2, '2023-05-25', 1, 0, 81513.00, 2, 'No'),
(450, 3, '2023-06-27', 8, 0, 82514.00, 1, 'No'),
(451, 2, '2023-07-15', 10, 0, 71592.00, 1, 'Yes'),
(452, 4, '2023-10-12', 6, 0, 51564.00, 1, 'Yes'),
(453, 5, '2023-05-28', 2, 0, 79363.00, 4, 'Yes'),
(454, 2, '2023-11-21', 8, 0, 93260.00, 2, 'Yes'),
(455, 4, '2023-02-12', 3, 0, 58583.00, 5, 'No'),
(456, 3, '2023-07-27', 5, 0, 90623.00, 5, 'No'),
(457, 2, '2023-05-26', 3, 0, 71987.00, 1, 'Yes'),
(458, 4, '2023-03-26', 1, 0, 87208.00, 5, 'Yes'),
(459, 3, '2023-07-28', 5, 0, 73752.00, 2, 'No'),
(460, 4, '2023-04-27', 3, 0, 95501.00, 2, 'Yes'),
(461, 5, '2023-07-01', 1, 0, 95739.00, 1, 'No'),
(462, 2, '2023-11-04', 6, 0, 71081.00, 4, 'No'),
(463, 5, '2023-11-01', 3, 0, 82749.00, 3, 'No'),
(464, 3, '2023-02-12', 10, 0, 74992.00, 1, 'No'),
(465, 5, '2023-09-28', 2, 0, 68750.00, 5, 'Yes'),
(466, 4, '2023-09-18', 4, 0, 56047.00, 2, 'Yes'),
(467, 3, '2023-01-08', 8, 0, 55321.00, 5, 'No'),
(468, 1, '2023-08-24', 10, 0, 64338.00, 4, 'No'),
(469, 5, '2023-10-03', 2, 0, 84160.00, 1, 'Yes'),
(470, 1, '2023-06-10', 1, 0, 98857.00, 4, 'Yes'),
(471, 4, '2023-12-16', 5, 0, 86398.00, 2, 'Yes'),
(472, 4, '2023-04-19', 5, 0, 95923.00, 1, 'Yes'),
(473, 4, '2023-04-16', 3, 0, 71070.00, 3, 'No'),
(474, 2, '2023-02-07', 5, 0, 74111.00, 1, 'No'),
(475, 4, '2023-03-11', 8, 0, 68547.00, 3, 'No'),
(476, 2, '2023-05-11', 7, 0, 77441.00, 3, 'Yes'),
(477, 1, '2023-01-01', 6, 0, 52417.00, 4, 'No'),
(478, 1, '2023-07-01', 5, 0, 65443.00, 4, 'Yes'),
(479, 5, '2023-09-07', 8, 0, 68054.00, 4, 'Yes'),
(480, 5, '2023-07-26', 10, 0, 70684.00, 3, 'No'),
(481, 1, '2023-12-06', 4, 0, 93115.00, 2, 'No'),
(482, 4, '2023-09-26', 8, 0, 51952.00, 5, 'Yes'),
(483, 4, '2023-01-11', 9, 0, 98711.00, 5, 'Yes'),
(484, 5, '2023-06-03', 3, 0, 66396.00, 2, 'No'),
(485, 3, '2023-10-01', 3, 0, 88383.00, 3, 'Yes'),
(486, 3, '2023-03-15', 4, 0, 81863.00, 4, 'No'),
(487, 4, '2023-03-05', 7, 0, 80183.00, 3, 'No'),
(488, 5, '2023-05-18', 4, 0, 63758.00, 2, 'No'),
(489, 2, '2023-01-26', 4, 0, 98130.00, 5, 'Yes'),
(490, 3, '2023-11-18', 2, 0, 67967.00, 5, 'No'),
(491, 3, '2023-06-14', 9, 0, 54018.00, 4, 'Yes'),
(492, 5, '2023-12-26', 1, 0, 73637.00, 1, 'Yes'),
(493, 3, '2023-11-14', 9, 0, 91368.00, 4, 'No'),
(494, 1, '2023-12-10', 2, 0, 69247.00, 4, 'Yes'),
(495, 1, '2023-05-18', 6, 0, 56386.00, 5, 'Yes'),
(496, 3, '2023-05-31', 5, 0, 73361.00, 4, 'Yes'),
(497, 3, '2023-02-13', 10, 0, 83184.00, 3, 'No'),
(498, 4, '2023-08-22', 3, 0, 82215.00, 3, 'Yes'),
(499, 1, '2023-03-31', 3, 0, 55165.00, 3, 'No'),
(500, 1, '2023-10-05', 5, 0, 88364.00, 3, 'No'),
(501, 4, '2023-03-28', 10, 0, 89633.00, 2, 'No'),
(502, 4, '2023-09-20', 4, 0, 88097.00, 3, 'No'),
(503, 5, '2023-07-13', 2, 0, 93499.00, 1, 'Yes'),
(504, 2, '2023-06-13', 5, 0, 87270.00, 4, 'No'),
(505, 1, '2023-10-05', 6, 0, 96063.00, 1, 'Yes'),
(506, 3, '2023-03-02', 2, 0, 85534.00, 1, 'Yes'),
(507, 3, '2023-06-27', 9, 0, 88413.00, 2, 'Yes'),
(508, 1, '2023-11-22', 10, 0, 94753.00, 5, 'No'),
(509, 4, '2023-02-26', 6, 0, 58323.00, 2, 'Yes'),
(510, 2, '2023-11-09', 6, 0, 98154.00, 3, 'No'),
(511, 2, '2023-01-24', 2, 0, 59089.00, 2, 'No'),
(512, 4, '2023-10-19', 1, 0, 64156.00, 3, 'Yes'),
(513, 3, '2023-05-04', 2, 0, 96454.00, 5, 'Yes'),
(514, 5, '2023-09-24', 1, 0, 54119.00, 3, 'No'),
(515, 2, '2023-06-08', 6, 0, 96820.00, 4, 'Yes'),
(516, 3, '2023-04-20', 8, 0, 54400.00, 1, 'No'),
(517, 2, '2023-01-10', 10, 0, 53072.00, 5, 'Yes'),
(518, 5, '2023-08-31', 8, 0, 78099.00, 3, 'Yes'),
(519, 3, '2023-01-31', 1, 0, 87044.00, 1, 'Yes'),
(520, 3, '2023-11-23', 3, 0, 64608.00, 4, 'Yes'),
(521, 3, '2023-01-08', 5, 0, 80155.00, 3, 'No'),
(522, 3, '2023-11-01', 10, 0, 77075.00, 5, 'No'),
(523, 1, '2023-10-24', 10, 0, 81601.00, 5, 'No'),
(524, 3, '2023-03-20', 9, 0, 98555.00, 2, 'No'),
(525, 2, '2023-10-26', 3, 0, 67426.00, 2, 'No'),
(526, 1, '2023-01-25', 1, 0, 78474.00, 1, 'No'),
(527, 5, '2023-03-23', 5, 0, 64316.00, 1, 'No'),
(528, 1, '2023-07-25', 8, 0, 88013.00, 5, 'No'),
(529, 4, '2023-05-27', 1, 0, 58277.00, 4, 'Yes'),
(530, 5, '2023-07-30', 1, 0, 78116.00, 1, 'Yes'),
(531, 2, '2023-09-09', 4, 0, 62651.00, 2, 'No'),
(532, 1, '2023-06-26', 2, 0, 90681.00, 4, 'No'),
(533, 4, '2023-02-15', 8, 0, 90986.00, 5, 'Yes'),
(534, 4, '2023-11-29', 5, 0, 96828.00, 4, 'Yes'),
(535, 1, '2023-01-18', 7, 0, 75305.00, 2, 'Yes'),
(536, 4, '2023-10-05', 8, 0, 55681.00, 1, 'No'),
(537, 4, '2023-09-13', 5, 0, 55541.00, 2, 'No'),
(538, 2, '2023-03-18', 5, 0, 64989.00, 5, 'Yes'),
(539, 5, '2023-01-26', 4, 0, 67277.00, 4, 'No'),
(540, 2, '2023-05-16', 9, 0, 61069.00, 5, 'No'),
(541, 1, '2023-08-18', 8, 0, 64834.00, 3, 'No'),
(542, 1, '2023-06-07', 8, 0, 52889.00, 5, 'No'),
(543, 5, '2023-09-16', 8, 0, 69122.00, 2, 'No'),
(544, 2, '2023-04-03', 3, 0, 88787.00, 1, 'Yes'),
(545, 2, '2023-01-30', 5, 0, 64762.00, 4, 'Yes'),
(546, 1, '2023-10-25', 1, 0, 92381.00, 3, 'No'),
(547, 4, '2023-01-01', 1, 0, 58530.00, 4, 'No'),
(548, 4, '2023-08-21', 1, 0, 71540.00, 2, 'Yes'),
(549, 5, '2023-07-18', 2, 0, 80268.00, 2, 'No'),
(550, 5, '2023-10-21', 7, 0, 64399.00, 3, 'Yes'),
(551, 4, '2023-09-21', 4, 0, 60113.00, 4, 'No'),
(552, 4, '2023-12-19', 10, 0, 99493.00, 5, 'Yes'),
(553, 4, '2023-08-16', 3, 0, 56957.00, 5, 'Yes'),
(554, 3, '2023-10-01', 2, 0, 63539.00, 4, 'Yes'),
(555, 1, '2023-09-29', 8, 0, 75300.00, 3, 'Yes'),
(556, 2, '2023-01-05', 5, 0, 82724.00, 2, 'Yes'),
(557, 4, '2023-02-02', 6, 0, 99358.00, 2, 'No'),
(558, 5, '2023-04-26', 2, 0, 95896.00, 4, 'No'),
(559, 2, '2023-10-28', 3, 0, 76027.00, 1, 'Yes'),
(560, 4, '2023-01-20', 3, 0, 98658.00, 3, 'Yes'),
(561, 4, '2023-03-09', 9, 0, 62731.00, 5, 'Yes'),
(562, 5, '2023-11-23', 1, 0, 94041.00, 2, 'Yes'),
(563, 5, '2023-05-13', 2, 0, 62361.00, 5, 'No'),
(564, 2, '2023-10-07', 9, 0, 59524.00, 4, 'No'),
(565, 4, '2023-08-01', 10, 0, 51313.00, 2, 'Yes'),
(566, 1, '2023-10-14', 10, 0, 78128.00, 1, 'No'),
(567, 4, '2023-08-25', 9, 0, 52934.00, 2, 'Yes'),
(568, 4, '2023-02-05', 3, 0, 52082.00, 2, 'No'),
(569, 5, '2023-04-16', 9, 0, 80491.00, 3, 'No'),
(570, 1, '2023-07-26', 6, 0, 89702.00, 4, 'Yes'),
(571, 5, '2023-04-04', 4, 0, 94475.00, 1, 'Yes'),
(572, 4, '2023-01-24', 1, 0, 62096.00, 5, 'No'),
(573, 4, '2023-11-26', 3, 0, 69336.00, 1, 'No'),
(574, 1, '2023-03-08', 4, 0, 72945.00, 1, 'No'),
(575, 4, '2023-10-18', 1, 0, 79024.00, 1, 'No'),
(576, 4, '2023-06-10', 2, 0, 99949.00, 3, 'Yes'),
(577, 4, '2023-01-07', 3, 0, 90265.00, 4, 'No'),
(578, 5, '2023-02-17', 8, 0, 73313.00, 5, 'No'),
(579, 1, '2023-08-05', 5, 0, 87365.00, 3, 'No'),
(580, 1, '2023-11-22', 4, 0, 83291.00, 5, 'Yes'),
(581, 4, '2023-03-08', 8, 0, 55775.00, 3, 'Yes'),
(582, 2, '2023-10-22', 1, 0, 73692.00, 2, 'Yes'),
(583, 3, '2023-08-15', 9, 0, 88850.00, 3, 'Yes'),
(584, 1, '2023-08-31', 8, 0, 69879.00, 1, 'No'),
(585, 5, '2023-11-24', 9, 0, 83674.00, 1, 'No'),
(586, 2, '2023-03-08', 2, 0, 56931.00, 4, 'Yes'),
(587, 4, '2023-05-09', 5, 0, 82542.00, 2, 'No'),
(588, 4, '2023-12-19', 7, 0, 98733.00, 2, 'No'),
(589, 3, '2023-05-06', 6, 0, 65089.00, 4, 'No'),
(590, 1, '2023-12-15', 5, 0, 59197.00, 2, 'No'),
(591, 1, '2023-11-24', 1, 0, 70109.00, 3, 'No'),
(592, 5, '2023-05-11', 3, 0, 87595.00, 5, 'No'),
(593, 2, '2023-10-25', 3, 0, 93359.00, 1, 'Yes'),
(594, 3, '2023-11-20', 7, 0, 70630.00, 1, 'Yes'),
(595, 5, '2023-04-14', 8, 0, 73714.00, 2, 'Yes'),
(596, 4, '2023-10-10', 7, 0, 69435.00, 4, 'Yes'),
(597, 1, '2023-12-24', 7, 0, 96078.00, 1, 'Yes'),
(598, 3, '2023-06-25', 1, 0, 62476.00, 3, 'No'),
(599, 3, '2023-06-14', 9, 0, 55443.00, 3, 'No'),
(600, 3, '2023-12-28', 4, 0, 83876.00, 1, 'Yes'),
(601, 5, '2023-10-22', 6, 0, 72549.00, 5, 'Yes'),
(602, 1, '2023-04-16', 5, 0, 83247.00, 4, 'Yes'),
(603, 1, '2023-04-02', 1, 0, 74007.00, 3, 'No'),
(604, 5, '2023-02-21', 8, 0, 96215.00, 5, 'Yes'),
(605, 3, '2023-06-14', 6, 0, 57652.00, 1, 'Yes'),
(606, 4, '2023-10-14', 1, 0, 82104.00, 2, 'Yes'),
(607, 1, '2023-03-08', 5, 0, 79290.00, 2, 'No'),
(608, 4, '2023-02-20', 4, 0, 76182.00, 2, 'Yes'),
(609, 5, '2023-03-02', 1, 0, 85041.00, 3, 'No'),
(610, 4, '2023-08-16', 1, 0, 71668.00, 3, 'No'),
(611, 5, '2023-06-06', 8, 0, 80393.00, 5, 'Yes'),
(612, 1, '2023-09-12', 1, 0, 67541.00, 3, 'Yes'),
(613, 1, '2023-01-25', 9, 0, 74429.00, 4, 'Yes'),
(614, 2, '2023-11-21', 5, 0, 96983.00, 4, 'Yes'),
(615, 5, '2023-04-17', 6, 0, 78894.00, 2, 'Yes'),
(616, 4, '2023-01-25', 4, 0, 88787.00, 3, 'Yes'),
(617, 4, '2023-01-14', 10, 0, 99358.00, 2, 'Yes'),
(618, 5, '2023-09-23', 8, 0, 75048.00, 1, 'Yes'),
(619, 5, '2023-07-21', 9, 0, 72234.00, 3, 'No'),
(620, 1, '2023-06-24', 1, 0, 91017.00, 4, 'No'),
(621, 5, '2023-09-30', 9, 0, 97264.00, 1, 'Yes'),
(622, 4, '2023-04-10', 2, 0, 63228.00, 3, 'No'),
(623, 1, '2023-10-19', 9, 0, 57580.00, 5, 'No'),
(624, 4, '2023-02-28', 5, 0, 57314.00, 4, 'Yes'),
(625, 2, '2023-05-27', 1, 0, 79264.00, 3, 'No'),
(651, 6, '2023-07-06', 5, 3500, NULL, 2, 'no'),
(652, 7, '2023-07-06', 12, 240000, NULL, 5, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_stocked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `quantity_stocked`) VALUES
(1, 1, 79),
(2, 2, 117),
(3, 3, 101),
(4, 4, 104),
(5, 5, 169),
(8, 1, 81),
(9, 2, 249),
(10, 3, 153),
(11, 4, 168),
(12, 5, 131),
(15, 5, 54),
(16, 4, 212),
(17, 3, 248),
(18, 2, 154),
(19, 1, 177),
(20, 5, 173),
(21, 4, 83),
(22, 3, 249),
(23, 2, 146),
(24, 1, 135),
(25, 5, 188),
(26, 4, 82),
(27, 3, 199),
(28, 2, 101),
(29, 1, 56),
(30, 5, 129),
(31, 4, 226),
(32, 3, 95),
(33, 2, 147),
(34, 1, 199),
(35, 5, 105),
(36, 4, 77),
(37, 3, 221),
(38, 2, 226),
(39, 1, 219),
(40, 5, 164),
(41, 4, 115),
(42, 3, 233),
(43, 2, 171),
(44, 1, 107),
(45, 5, 170),
(46, 4, 81),
(47, 3, 244),
(48, 2, 129),
(49, 1, 65),
(50, 5, 88),
(51, 4, 196),
(52, 3, 66),
(53, 2, 94),
(54, 1, 220),
(55, 5, 168),
(56, 4, 130),
(57, 3, 97),
(58, 2, 245),
(59, 1, 87),
(60, 5, 248),
(61, 4, 130),
(62, 3, 58),
(63, 2, 249),
(64, 1, 222),
(65, 5, 111),
(66, 4, 243),
(67, 3, 231),
(68, 2, 178),
(69, 1, 147),
(70, 5, 150),
(71, 4, 60),
(72, 3, 199),
(73, 2, 166),
(74, 1, 186),
(75, 5, 179),
(76, 4, 90),
(77, 3, 62),
(78, 2, 191),
(79, 1, 119),
(80, 5, 174),
(81, 4, 62),
(82, 3, 140),
(83, 2, 62),
(84, 1, 243),
(85, 5, 179),
(86, 4, 116),
(87, 3, 195),
(88, 2, 178),
(89, 1, 55),
(90, 5, 91),
(91, 4, 240),
(92, 3, 76),
(93, 2, 212),
(94, 1, 184),
(95, 5, 232),
(96, 4, 157),
(97, 3, 243),
(98, 2, 92),
(99, 1, 81),
(100, 5, 79),
(101, 4, 105),
(102, 3, 237),
(103, 2, 222),
(104, 1, 147),
(105, 5, 221),
(106, 4, 214),
(107, 3, 158),
(108, 2, 98),
(109, 1, 166),
(110, 5, 85),
(111, 4, 80),
(112, 3, 95),
(113, 2, 187),
(114, 1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_type`, `name`, `username`, `password`, `email`) VALUES
(1, 'Sales Manager', 'tarzan mark', 'tarzan', '$2b$10$QsqQ4VR1O0wghf2CSn/Ji.NVwrXXp79IItZl4hcC2wOkrXoQNld5S', 'salesmanager@atlas.com'),
(2, 'Cashier', 'tarzan mark', 'cashier', '$2b$10$BKhbuxS28I5AIVXvrlVAIuwWc0.tLgMuzIdsgJVA6SRgz2.TgXvAS', 'cashier@saleswave.com'),
(3, 'Sales Manager', 'tarzan mark', 'salesmanager1', '$2b$10$y4/VTfyZEbUVljpsuhxPkumISXhJuW9wCW.8/oTOkurhMv/FIqIKu', 'salesmanager1@atlas.com'),
(4, 'Sales Manager', 'shamim', 'sham', '$2b$10$co0MO/CjGwao7oxSiTt.JOjxOdH.VTFAvCmb7NVR5r7lIK3vCVRvW', 'sham@saleswave.com'),
(5, 'Sales Manager', 'ivan', 'ivo', '$2b$10$mi5jApnwoPhExxg91KvO3uLzhJT312bRQPqry2GFYfHlvx1AdKKd.', 'ivo@saleswave'),
(6, 'Cashier', 'mark', 'mark@sale', '$2b$10$IhL1Ymfvq6BRrnz6JVFLwuoqtqjd5VnTHo47WAV96cSyCRavem9pa', 'mark@saleswave'),
(7, 'Cashier', 'kagggwe', 'ivo', '$2b$10$dWypLWp8P/lVx2xMaGICz.OHcGANjuZilWsP2M/N9/YTIz/W.x4fm', 'cashier@was'),
(8, 'Cashier', 'cashier', 'cashier4', '$2b$10$pKV9iHt8qGUQ.guT.Y.vGur5VzkrKVnnBs4ZSPGcSbX/bW7zaAnwK', 'cashier@saleswave');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forecast`
--
ALTER TABLE `forecast`
  ADD PRIMARY KEY (`forecast_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `salesorder`
--
ALTER TABLE `salesorder`
  ADD PRIMARY KEY (`salesdata_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forecast`
--
ALTER TABLE `forecast`
  MODIFY `forecast_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `salesorder`
--
ALTER TABLE `salesorder`
  MODIFY `salesdata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forecast`
--
ALTER TABLE `forecast`
  ADD CONSTRAINT `forecast_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;