-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2018 at 03:38 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readyin5`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_details`
--

CREATE TABLE `delivery_details` (
  `Emp_ID` varchar(5) NOT NULL,
  `start_time` time NOT NULL,
  `delivered_time` time NOT NULL,
  `addr_to_del` varchar(50) NOT NULL,
  `tips` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_details`
--

INSERT INTO `delivery_details` (`Emp_ID`, `start_time`, `delivered_time`, `addr_to_del`, `tips`) VALUES
('E11', '08:43:25', '09:04:28', '17196 Redmond Way\'\'', 2.5),
('E21', '13:05:25', '13:15:33', '120,Chestnut Street\'', 1),
('E34', '11:27:14', '12:00:00', '2021-Sunset Boulevard', 5),
('E62', '02:45:35', '03:02:25', '1000 N Lbj Drive', 2),
('E53', '05:05:11', '05:10:55', '12345 Lamplight village Avenue', 5);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` varchar(5) NOT NULL,
  `Emp_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_ID`, `Emp_Name`) VALUES
('E11', 'Sasha'),
('E21', 'Danny'),
('E34', 'Kevin'),
('E44', 'Krunal'),
('E53', 'Michael'),
('E60', 'Jeel'),
('E62', 'John');

-- --------------------------------------------------------

--
-- Table structure for table `food_bag`
--

CREATE TABLE `food_bag` (
  `bag_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `quantity` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `bag_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_bag`
--

INSERT INTO `food_bag` (`bag_id`, `user_id`, `product_id`, `product_name`, `quantity`, `price`, `bag_total`) VALUES
(11, 3, 1, 'Chef Boyardee Beef Ravioli ', 2, 1, 2),
(12, 2, 2, 'Hungry Man Mexican Style Fiest', 1, 3, 3),
(33, 2, 4, 'Mashed Vegetable Curry,Pav Bha', 1, 4, 4),
(35, 1, 3, 'Fried Rice Chinese Style Veget', 2, 6, 13),
(50, 1, 4, 'Mashed Vegetable Curry,Pav Bha', 2, 4, 7),
(52, 2, 3, '	 Fried Rice Chinese Style Veg', 3, 6, 19);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `user_id` int(5) NOT NULL,
  `credit_card_num` bigint(20) NOT NULL,
  `name_on_card` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `exp_date` varchar(10) NOT NULL,
  `cvv_num` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`user_id`, `credit_card_num`, `name_on_card`, `address`, `exp_date`, `cvv_num`) VALUES
(3, 3421674567678213, 'Daniel Walt', '17196 Redmond Way\'', '03/23', 454),
(2, 2121357345657788, 'Natalie Roosewalt', '120,Chestnut Street\'', '09/21', 944),
(1, 3434567891230112, 'Jack Brow', '2021-Sunset Boulevard\'', '11/22', 949),
(3, 2211324544556789, 'Maya', '800 Lbj Drive', '04/22', 848);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_category_id` int(5) NOT NULL,
  `description` mediumtext NOT NULL,
  `weight` float NOT NULL,
  `price` float NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `avg_rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category_id`, `description`, `weight`, `price`, `stock`, `avg_rating`) VALUES
(1, 'Chef Boyardee Beef Ravioli ', 1, 'Enjoy the classic beef ravioli you love, served up hot in tomato and meat sauce.', 0.5, 0.98, 15, 5),
(2, 'Hungry Man Mexican Style Fiesta', 3, 'Beef enchiladas smothered in chili sauce and cheese with Mexican style rice and authentic refried beans - includes cocada pudding. Satisfy your craving. Simply cook & serve. US Inspected and passed by Department of Agriculture', 20.31, 2.88, 20, 4),
(3, 'Fried Rice Chinese Style Vegetable', 2, 'Chinese-style rice infused with our signature sweet soy sauce, combined with grilled edamame, carrots, fire roasted corn & red bell peppers. No preservatives.', 1.58, 6.42, 15, 4),
(4, 'Mashed Vegetable Curry,Pav Bhaji', 4, 'Mashed fresh vegetables simmered in butter, and lightly spiced creating a deliciously mouthwatering dish.100% natural. No preservatives. Pav Bhaji is an authentic Indian recipe.', 10, 3.69, 20, 5),
(5, 'Spicy Hot and Sour Soup', 5, '\'Hot & Sour Vegetable Soup contains carrot, cabbage and capsicum and is seasoned with red chili powder, ginger, garlic and coriander leaves for a great savoury taste', 1.7, 1.99, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(5) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `category_name`) VALUES
(1, 'Italian'),
(2, 'Chinese'),
(3, 'Mexican'),
(4, 'Indian'),
(5, 'Asian');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `user_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `score` int(5) NOT NULL,
  `comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`user_id`, `product_id`, `score`, `comment`) VALUES
(3, 1, 8, 'pretty good, could have been better'),
(2, 2, 10, 'Excellent, recommended'),
(1, 3, 9, 'Very tasty');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `bag_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`bag_id`, `date`, `time`, `user_id`) VALUES
(11, '2018-07-18', '02:30:00.000000', 3),
(35, '2018-06-15', '08:18:24.195000', 1),
(12, '2018-06-30', '12:14:06.429000', 0),
(12, '2018-06-30', '12:14:06.429000', 2),
(52, '2018-07-15', '04:30:54.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `country`) VALUES
(1, 'Jack', 'Abcd123', NULL),
(2, 'Natalie ', 'Rsq123!', NULL),
(3, 'Daniel ', 'Xyz34', NULL),
(4, 'Rene ', 'Acbd123!', NULL),
(5, 'lipid16', 'XYZ123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` int(10) NOT NULL,
  `user_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `first_name`, `last_name`, `email`, `address`, `city`, `zip_code`, `user_role`) VALUES
(1, 'Jack', 'Williams', 'j_w10@gmail.com', '2021-Sunset Boulevard', 'Austin', 78758, 'customer'),
(2, 'Natalie', 'Jones', 'nat_jones@gmail.com', '120,Chestnut Street', 'Los Angeles', 90210, 'customer'),
(3, 'Daniel ', 'Weber', 'dw_123@gmail.com', '17196 Redmond Way', 'Washington', 98052, 'customer'),
(4, 'Rene', 'Imler', 'reneimler.dc@gmail.c', 'Apt D4, Vintage Pads Appartments', 'San Marcos', 78666, 'admin'),
(5, 'Lipi', 'Desai', 'lipid16@gmail.com', '1000 N Lbj Drive', 'San Marcos', 78666, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `food_bag`
--
ALTER TABLE `food_bag`
  ADD PRIMARY KEY (`bag_id`),
  ADD KEY `food_bag_ibfk_1` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_category_id` (`product_category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`),
  ADD KEY `product_category_id` (`product_category_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rating_ibfk_2` (`product_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `bag_id` (`bag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_bag`
--
ALTER TABLE `food_bag`
  ADD CONSTRAINT `food_bag_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_bag_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`product_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`bag_id`) REFERENCES `food_bag` (`bag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
