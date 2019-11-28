-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 12:08 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databaseprog_orders`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_order` ()  BEGIN
DELETE FROM orders 
WHERE orders.user_id = 8;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`addr_id`, `user_id`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 1, 'Bilgewaterway 11', 'Bilgewater', 1111, 'Serpent Isles'),
(2, 2, 'Demacia Avenue 22', 'Demacia City', 2222, 'Demacia'),
(3, 3, 'Noxus Street 33', 'Noxus Prime', 3333, 'Noxus'),
(4, 4, 'Freljord Road 44', 'Frostheld', 4444, 'Freljord'),
(5, 5, 'Bandleway 55', 'Bandle City', 5555, 'Bandle Country'),
(6, 6, 'Piltover Boulevard 66', 'Piltover', 6666, 'Piltover'),
(7, 7, 'Zaun Street 77', 'Zaun', 6677, 'Piltover'),
(8, 8, 'Ionia Road 88', 'Jyom Pass', 8888, 'Ionia'),
(9, 9, 'Piltover Boulevard 99', 'Piltover', 6666, 'Piltover'),
(10, 10, 'Ionia Way 10', 'Lhotlan Village', 2222, 'Ionia');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cheaperthan3000`
-- (See below for the actual view)
--
CREATE TABLE `cheaperthan3000` (
`prod_id` int(11)
,`prod_name` varchar(100)
,`prod_description` varchar(256)
,`prod_stock` int(11)
,`prod_price` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `first_name_starts_with_s`
-- (See below for the actual view)
--
CREATE TABLE `first_name_starts_with_s` (
`id` int(11)
,`username` varchar(50)
,`email` varchar(50)
,`first_name` varchar(50)
,`last_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `inner_join_example`
-- (See below for the actual view)
--
CREATE TABLE `inner_join_example` (
`first_name` varchar(50)
,`last_name` varchar(50)
,`address` varchar(100)
,`country` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `addr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `prod_id`, `user_id`, `addr_id`) VALUES
(1, 3, 1, 1),
(2, 1, 2, 2),
(3, 10, 8, 8),
(4, 5, 9, 9),
(5, 8, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) DEFAULT NULL,
  `prod_description` varchar(256) DEFAULT NULL,
  `prod_stock` int(11) DEFAULT NULL,
  `prod_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_description`, `prod_stock`, `prod_price`) VALUES
(1, 'Blade of the Ruined King', 'Lifesteal item with an active slow', 3, 3300),
(2, 'Bloodthirster', 'Lifesteal - The Item', 4, 3400),
(3, 'Duskblade of Draktharr', 'Lethality and extra on-hit damage after being unseen', 2, 2900),
(4, 'Essence Reaver', 'Critical strike chance and mana restore', 3, 3300),
(5, 'Infinity Edge', 'Big critical strike chance item', 4, 3400),
(6, 'Lord Dominik\'s Regards', 'Armor penetration item', 2, 2800),
(7, 'Rapid Firecannon', 'Attack speed and increased range', 6, 2600),
(8, 'Runaan\'s Hurricane', 'Attack speed and additional attacks on nearby enemies', 2, 2600),
(9, 'Berserker\'s Greaves', 'Movement speed and attack speed', 2, 1100),
(10, 'Boots of Swiftness', 'Movement speed and slow resistance', 4, 900);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`) VALUES
(1, 'MissFortune', 'captainfortune@gmail.com', 'Sarah', 'Fortune'),
(2, 'VayneSpotting', 'iamvayne@gmail.com', 'Shauna', 'Vayne'),
(3, 'Draaaaven', 'dravendraven@gmail.com', 'Draven', 'Executioner'),
(4, 'Frosty', 'avarosan_queen@gmail.com', 'Ashe', 'Archer'),
(5, 'YordlePewPew', 'tristgunner@gmail.com', 'Tristana', 'Gunner'),
(6, 'Jinxxxx', 'jinxlol@gmail.com', 'Jinx', 'Cannon'),
(7, 'RatTatTat', 'musthavecheese@gmail.com', 'Twitch', 'Rat'),
(8, 'Four', 'fourfourfourfour@gmail.com', 'Jhin', 'Virtuoso'),
(9, 'TheSheriff', 'caitlynfrompiltover@gmail.com', 'Caitlyn', 'Sheriff'),
(10, 'FeatherBabe', 'rakanismylove@gmail.com', 'Xayah', 'Rebel');

-- --------------------------------------------------------

--
-- Structure for view `cheaperthan3000`
--
DROP TABLE IF EXISTS `cheaperthan3000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cheaperthan3000`  AS  select `products`.`prod_id` AS `prod_id`,`products`.`prod_name` AS `prod_name`,`products`.`prod_description` AS `prod_description`,`products`.`prod_stock` AS `prod_stock`,`products`.`prod_price` AS `prod_price` from `products` where `products`.`prod_price` < 3000 ;

-- --------------------------------------------------------

--
-- Structure for view `first_name_starts_with_s`
--
DROP TABLE IF EXISTS `first_name_starts_with_s`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `first_name_starts_with_s`  AS  select `users`.`id` AS `id`,`users`.`username` AS `username`,`users`.`email` AS `email`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name` from `users` where `users`.`first_name` like 'S%' ;

-- --------------------------------------------------------

--
-- Structure for view `inner_join_example`
--
DROP TABLE IF EXISTS `inner_join_example`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inner_join_example`  AS  select `users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`addresses`.`address` AS `address`,`addresses`.`country` AS `country` from (`users` join `addresses` on(`users`.`id` = `addresses`.`user_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addr_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `addr_id` (`addr_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`addr_id`) REFERENCES `addresses` (`addr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
