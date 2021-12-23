-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2019 at 09:14 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buy`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `aid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `block` int(4) NOT NULL,
  `road` int(4) NOT NULL,
  `house` int(3) NOT NULL,
  `flat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`aid`, `username`, `country`, `city`, `block`, `road`, `house`, `flat`) VALUES
(1, 'ebrahim', 'bahrain', 'umm al hassam', 337, 3720, 337, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `pid`, `username`, `comment`) VALUES
(1, 1, 'haris123', 'great item!'),
(2, 2, 'haris123', 'Do Recommend this Product and Seller!');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(11) NOT NULL,
  `goes` varchar(20) NOT NULL,
  `comes` varchar(20) NOT NULL,
  `text` varchar(250) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `goes`, `comes`, `text`, `time`) VALUES
(1, 'haris123', 'ebrahim', 'hello', '2019-12-21 18:57:05'),
(2, 'ebrahim', 'haris123', 'testing this', '2019-12-21 19:16:16'),
(3, 'haris123', 'ebrahim', '6565662', '2019-12-21 19:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `pid` int(15) NOT NULL,
  `received` tinyint(1) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `username`, `pid`, `received`, `time`, `total`) VALUES
(7, 'haris123', 1, 1, '2019/12/22 14:40:20', '45'),
(9, 'haris123', 2, 1, '2019/12/22 18:50:53', '10'),
(10, 'haris123', 3, 0, '2019/12/22 18:50:54', '10'),
(11, 'haris123', 9, 0, '2019/12/25 14:52:01', '15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `category` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `pic2` varchar(25) NOT NULL,
  `pic3` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `user`, `category`, `name`, `price`, `quantity`, `description`, `picture`, `pic2`, `pic3`) VALUES
(1, 'haris123', 'MensTops', 'Under Armour Shirt', '4', 40, '100% Polyester\r\nMaterial wicks sweat & dries really fast\r\nAnti odor technology prevents the growth of odor causing microbes', 'shirt1.jpg', 'shirt12.jpg', 'shirt13.jpg'),
(2, 'haris123', 'MensTops', 'Russell Athletic Sweatshirt', '5', 120, '50% Cotton, 50% Polyester\r\nV-notch at the crew neck adds modern detail to this timeless athletic staple\r\nDri-Power technology wicks sweat away, keeping you warm and dry', 'shirt2.jpg', 'shirt22.jpg', 'shirt23.jpg'),
(3, 'ebrahim', 'MensTops', 'Men\'s Flannel Long Sleeved', '5', 42, 'Yarn dyed 100% Cotton: Natural soft cotton mixed with Yarn that has been pre-dyed for everlasting colors.\r\nTraditional Plaid Pattern: Consisting of vertical and horizontal bands in two or more colors with variations in width.', 'shirt3.jpg', 'shirt32.jpg', 'shirt33.jpg'),
(5, 'haris123', 'MensTops', 'Short Sleeve Shirt', '4', 42, 'Black Country Cloth 100% Tactel nylon taffeta', 'shirt4.jpg', 'shirt42.jpg', 'shirt43.jpg'),
(8, 'Abood', 'MensShoes', 'UGG Men\'s Neumel Chukka Boot', '10', 25, 'Leather\r\nImported\r\nDyed Sheep, Fur Origin: Australia\r\nSynthetic sole\r\nShaft measures approximately mid-top from arch', 'shoes1.jpg', 'shoes12.jpg', 'shoes13.jpg'),
(9, 'ebrahim', 'MensShoes', 'Timberland Men\'s 6\" Basic Contrast Collar Boot', '15', 40, '100% Leather\r\nImported\r\nSynthetic sole\r\nShaft measures approximately 6.5\" from arch\r\nPlatform measures approximately .50\"\r\nBoot opening measures approximately n/a around', 'shoes2.jpg', 'shoes21.jpg', 'shoes23.jpg'),
(10, 'Abood', 'MensShoes', 'PUMA Men\'s Palace Guard Sneaker', '25', 40, 'Leather\r\nImported\r\nRubber sole\r\nShaft measures approximately low-top from arch\r\nFashion Lifestyle Sneaker\r\nPalace guard', 'shoes3.jpg', 'shoes32.jpg', 'shoes33.jpg'),
(11, 'haris123', 'WomanTops', 'Womans Trench Coat', '12', 20, 'Women Trench Coat Fashion Medium length Spring Autumn Long Sleeve Solid Color Double-breasted Ladies Women Trench Coat', 'coat1.png', 'coat12.png', 'coat13.png'),
(12, 'abood', 'WomanTops', 'SheepSkin Jacket', '35', 10, 'Luxury Genuine Real Sheepskin Leather Suede Coat Jacket Lady Dress Spring Autumn Women Outerwear X-Long Garment', 'jacket1.png', 'jacket12.png', 'jacket13.png'),
(13, 'ebrahim', 'Womenshoes', 'Classic Shoes', '10', 20, 'Fabric,Manmade,Imported, Rubber sole,Shaft measures', 'shoes.png', 'shoes12.png', 'shoes13.png');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `rid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`rid`, `username`, `rate`) VALUES
(1, 'haris123', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `profilepic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `username`, `password`, `telephone`, `email`, `profilepic`) VALUES
(2, 'Haris', 'Shahjahan', 'haris123', '202cb962ac59075b964b07152d234b70', '33000310', 'haris.edu14@gmail.com', 'default.png'),
(3, 'Mohammed', 'Ebrahim', 'ebrahim', '202cb962ac59075b964b07152d234b70', '36363636', 'ebrahim@gmail.com', ''),
(8, 'Sarah', 'mohammed', 'Sarah', '9cf782352b1454268d1dd4bef26bfd1c', '+97333221144', 'sarah@gmail.com', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD UNIQUE KEY `rid` (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
