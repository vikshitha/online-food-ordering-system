-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 12:00 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodrr`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `mem` ()  NO SQL
SELECT * FROM members$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Username`, `Password`) VALUES
(1234, 'Vikshitha', 'vikshi3');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `billing_id` int(10) NOT NULL,
  `member_id` int(15) NOT NULL,
  `Street_Address` varchar(100) NOT NULL,
  `P_O_Box_No` varchar(15) NOT NULL,
  `City` text NOT NULL,
  `Mobile_No` varchar(15) NOT NULL,
  `Landline_No` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`billing_id`, `member_id`, `Street_Address`, `P_O_Box_No`, `City`, `Mobile_No`, `Landline_No`) VALUES
(24, 26, 'srinivaspura cross', '20', 'bangalore', '9449521282', '0821-2588021'),
(23, 22, 'devegowda petrol bunk', '21', 'banglore', '9449321282', '0821-2588013');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `member_id` int(15) NOT NULL,
  `ccname` int(15) NOT NULL,
  `cno` int(15) NOT NULL,
  `expmonth` int(5) NOT NULL,
  `expyear` int(5) NOT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`member_id`, `ccname`, `cno`, `expmonth`, `expyear`, `cvv`) VALUES
(26, 123, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_id` int(15) NOT NULL,
  `member_id` int(15) NOT NULL,
  `food_id` int(15) NOT NULL,
  `quantity_id` int(15) NOT NULL,
  `total` float NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`cart_id`, `member_id`, `food_id`, `quantity_id`, `total`, `flag`) VALUES
(1, 22, 29, 1, 80, 1),
(2, 22, 29, 1, 80, 1),
(3, 22, 29, 1, 80, 1),
(4, 22, 45, 1, 50, 1),
(5, 22, 46, 1, 140, 1),
(6, 22, 46, 1, 140, 1),
(7, 22, 29, 1, 80, 1),
(8, 22, 46, 1, 140, 1),
(9, 22, 29, 1, 80, 1),
(10, 22, 29, 1, 80, 1),
(11, 22, 29, 1, 80, 0),
(12, 26, 51, 2, 300, 1),
(13, 26, 45, 4, 200, 0),
(14, 26, 29, 1, 80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(15) NOT NULL,
  `category_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(2, 'Snacks'),
(3, 'Rice Special'),
(5, 'Grill Special'),
(6, 'Soups'),
(7, 'Non-Veg'),
(8, 'Sweets'),
(9, 'Cakes'),
(10, 'Pizza'),
(16, 'north indian'),
(20, 'veg-special');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_orders`
--

CREATE TABLE `deleted_orders` (
  `order_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `billing_id` int(10) NOT NULL,
  `cart_id` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_orders`
--

INSERT INTO `deleted_orders` (`order_id`, `member_id`, `billing_id`, `cart_id`) VALUES
(32, 22, 23, 1),
(39, 22, 23, 8),
(36, 22, 23, 5),
(37, 22, 23, 6);

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE `food_details` (
  `food_id` int(15) NOT NULL,
  `food_name` varchar(45) NOT NULL,
  `food_description` text NOT NULL,
  `food_price` float NOT NULL,
  `food_photo` varchar(45) NOT NULL,
  `food_category` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_details`
--

INSERT INTO `food_details` (`food_id`, `food_name`, `food_description`, `food_price`, `food_photo`, `food_category`) VALUES
(1, 'cake', 'fruit-cake', 350, '<img src=\"./resturant system/images/cake.jpg\"', 0),
(28, 'masal dosa', 'breakfast', 70, 'masaldosa.jpg', 21),
(29, 'chole bhature', 'breakfast', 80, 'chole-bhature.jpg', 16),
(45, 'puliyogare', 'breakfast', 50, 'puliyogare.png', 3),
(46, 'burger', 'snacks', 140, 'burger.jpg', 5),
(47, 'parotha', 'meal', 35, 'parota.jpg', 16),
(48, 'noodles', 'snacks', 70, 'noodles.jpg', 2),
(51, 'pizza', 'italian', 150, 'pizza.jpg', 10),
(52, 'masal dosa', 'dosa', 100, 'masaldosa.jpg', 20),
(53, 'idli vada', 'breakfast', 75, 'idli-vada.jpg', 20);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `login`, `passwd`) VALUES
(15, 'teju', 'mahesh', 'tejudhinchak@gmail.com', 'cf2a5424877cea5696db372e3c67c925'),
(22, 'pallavi', 'sawant', 'pallu@gmail.com', 'e57bd18eabbcdbdb488ce922111ea206'),
(18, 'sowmya', 'hs', 'sow@gmail.com', 'd525706d6f19ea00e7d7a4574f7f5e3f'),
(21, 'srujana', 'd', 'srujl24@gmail.com', '9d6dc296ca9ab213f4d7607ddb85d9d8'),
(23, 'blah', 'blah', 'sm@gmail.com', '6f1ed002ab5595859014ebf0951522d9'),
(25, 'vikshitha', 'shetty', 'vshetty280@gmail.com', '946cc85484c4dd01e2f44fbc88afbc93'),
(26, 'yogesh', 'cl', 'yogi@gmail.com', '938e14c074c45c62eb15cc05a6f36d79');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `order_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `billing_id` int(10) NOT NULL,
  `cart_id` int(15) NOT NULL,
  `Time_of_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_date` date NOT NULL,
  `StaffID` int(15) NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`order_id`, `member_id`, `billing_id`, `cart_id`, `Time_of_order`, `delivery_date`, `StaffID`, `flag`) VALUES
(34, 22, 23, 3, '2018-11-23 14:53:41', '2018-11-23', 0, 0),
(33, 22, 23, 2, '2018-11-23 14:53:41', '2018-11-23', 0, 0),
(35, 22, 23, 4, '2018-11-23 14:53:41', '2018-11-23', 102, 1),
(42, 26, 24, 12, '2018-11-24 06:05:26', '2018-11-24', 0, 0),
(41, 22, 23, 10, '2018-11-24 05:36:00', '2018-11-24', 0, 0),
(38, 22, 23, 7, '2018-11-23 15:02:16', '2018-11-23', 0, 0),
(40, 22, 23, 9, '2018-11-23 15:09:45', '2018-11-23', 0, 0),
(43, 26, 24, 14, '2018-11-24 10:47:26', '2018-11-24', 0, 0);

--
-- Triggers `orders_details`
--
DELIMITER $$
CREATE TRIGGER `date_log` AFTER INSERT ON `orders_details` FOR EACH ROW BEGIN
SET@Time_of_order=NOW();
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `del_logs` AFTER DELETE ON `orders_details` FOR EACH ROW INSERT INTO `deleted_orders`(`order_id`, `member_id`, `billing_id`, `cart_id`) VALUES (OLD.Order_id,OLD.member_id,OLD.billing_id,OLD.cart_id)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `polls_details`
--

CREATE TABLE `polls_details` (
  `poll_id` int(15) NOT NULL,
  `member_id` int(15) NOT NULL,
  `food_id` int(15) NOT NULL,
  `rate_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polls_details`
--

INSERT INTO `polls_details` (`poll_id`, `member_id`, `food_id`, `rate_id`) VALUES
(26, 26, 29, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quantities`
--

CREATE TABLE `quantities` (
  `quantity_id` int(5) NOT NULL,
  `quantity_value` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantities`
--

INSERT INTO `quantities` (`quantity_id`, `quantity_value`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rate_id` int(5) NOT NULL,
  `rate_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rate_id`, `rate_name`) VALUES
(1, 'Excellent'),
(2, 'Good'),
(3, 'Average'),
(4, 'Bad'),
(5, 'Worse');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(15) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `Street_Address` text NOT NULL,
  `Mobile_Tel` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `firstname`, `lastname`, `Street_Address`, `Mobile_Tel`) VALUES
(102, 'karan', 'kundra', 'devegowda petrol bunk', '9449321282'),
(103, 'vikas', 'rao', 'satelite', '9449321282');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `deleted_orders`
--
ALTER TABLE `deleted_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `food_details`
--
ALTER TABLE `food_details`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `polls_details`
--
ALTER TABLE `polls_details`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `quantities`
--
ALTER TABLE `quantities`
  ADD PRIMARY KEY (`quantity_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98150;

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `food_details`
--
ALTER TABLE `food_details`
  MODIFY `food_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `polls_details`
--
ALTER TABLE `polls_details`
  MODIFY `poll_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `quantities`
--
ALTER TABLE `quantities`
  MODIFY `quantity_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rate_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
