-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 07:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsalastore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `vendor_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `vendor_name`) VALUES
(1, 'Nike', 'storeadmin@tsalastore.co.za'),
(2, 'adidas', 'storeadmin@tsalastore.co.za'),
(3, 'New Balance', 'storeadmin@tsalastore.co.za'),
(4, 'ASICS', 'storeadmin@tsalastore.co.za'),
(5, 'PUMA', 'storeadmin@tsalastore.co.za'),
(6, 'Skechers', 'storeadmin@tsalastore.co.za'),
(7, 'Fila', 'storeadmin@tsalastore.co.za');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL,
  `vendor_name` text NOT NULL,
  `cat_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `vendor_name`, `cat_name`) VALUES
(1, 'Men Clothes', 'storeadmin@tsalastore.co.za', 'menclothes'),
(2, 'Women Clothes', 'storeadmin@tsalastore.co.za', 'womenclothes'),
(3, 'Kids Clothes', 'storeadmin@tsalastore.co.za', 'kidsclothes'),
(4, 'Men Shoes', 'storeadmin@tsalastore.co.za', 'menshoes'),
(5, 'Women Shoes', 'storeadmin@tsalastore.co.za', 'womenshoes'),
(6, 'Kid Shoes', 'storeadmin@tsalastore.co.za', 'kidshoes'),
(7, 'Unisex Shoes', 'storeadmin@tsalastore.co.za', 'unisexshoes'),
(8, 'Watches', 'storeadmin@tsalastore.co.za', 'watches'),
(9, 'Phones', 'storeadmin@tsalastore.co.za', 'phones'),
(10, 'laptops', 'storeadmin@tsalastore.co.za', 'laptops');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `fullname`, `street`, `city`, `postalcode`, `password`, `phone`) VALUES
(43, 'Oscarndlovu01@gmail.com', 'Oscar', '146 Steve Biko Sunnyside', 'Pretoria', '1220', '12345', '686787868687'),
(50, 'test@gmail.com', 'test1', '1245 steve biko', 'Pretoria', '0001', '123456', '0123456789'),
(51, 'test@gmail.com', 'test1', '1245 steve biko', 'Pretoria', '0001', '123456', '0123456789'),
(52, 'test2@gmail.com', 'test2', '1245 steve biko', 'Pretoria', '0001', '123456', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `username`, `fullname`, `street`, `city`, `postalcode`, `phone`) VALUES
(97, 'VUSIMBOMBI7@GMAIL.COM', 'TSALA STORE', '71 BOURKE STREET', 'PRETORIA', '0002', '0614291119');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `vendor_name` text DEFAULT NULL,
  `payment_id` text DEFAULT NULL,
  `payment_status` text DEFAULT NULL,
  `buyer_email` text DEFAULT NULL,
  `buyer_phone` text DEFAULT NULL,
  `buyer_name` text DEFAULT NULL,
  `order_date` varchar(250) DEFAULT NULL,
  `delivery_status` text DEFAULT NULL,
  `shipping_method` varchar(250) DEFAULT NULL,
  `buyer_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_size` text DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `vendor_name` text DEFAULT NULL,
  `new_fashion` varchar(255) DEFAULT NULL,
  `special_offer` varchar(255) DEFAULT NULL,
  `on_sale` varchar(255) DEFAULT NULL,
  `clearance` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_size`, `product_price`, `discount_percent`, `product_qty`, `product_desc`, `color`, `product_image`, `vendor_name`, `new_fashion`, `special_offer`, `on_sale`, `clearance`, `item_type`) VALUES
(1, 7, 1, 'Nike Dunk Low SP Syracuse', '3,4,5,6,7,8,9', 1599, 15, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program. A program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released. Breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole orange outsole and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 'NIKE DUNK LOW SP SYRACUSE.jpg', 'VUSIMBOMBI7@GMAIL.COM', '', 'Yes', 'No', 'No', 'Shoes'),
(2, 4, 1, 'Nike Dunk Low Retro White Black Panda 2021', '4,5,9', 1453, 50, 100, 'From the school spirited College Colors Program to the vibrant Nike CO.JP collection. Nike Dunks have seen many colorways since the designs inception in 1985. But with each new colorway the Dunks classic colorblocking has remained in some capacity. Nike put its timeless colorblocking to work with the Nike Dunk Low Retro White Black. The upper Nike Dunk Low Retro White Black is constructed of white leather with black leather overlays and Swooshes. Classic Nike branding is featured on the nylon tongue nodding to traditional Dunk design elements. A white midsole and black outsole complete the design', 'BLACK', 'NIKE DUNK LOW RETRO WHITE BLACK PANDA 2021.jpg', 'VUSIMBOMBI7GMAIL.C0M', 'No', 'Yes', 'No', 'No', 'Shoes'),
(3, 9, 1, 'iPhone Apple', '', 10000, 15, 10, 'Black in color 64GB', 'Black ', 'iPhonexr.jpg', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'Yes', 'No', 'No', 'Phone'),
(4, 10, 1, 'Macbook Pro', '', 45000, 10, 100, 'Mcbook Pro M2', 'Silver', 'macbookpro-m2.jpg', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'Yes', 'No', 'No', 'Laptop'),
(5, 8, 1, 'Apple Watch', '', 6000, 10, 100, '', 'Silver', 'Apple Watch.jpg', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'Yes', 'No', 'No', 'Watch');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `bankaccount` text DEFAULT NULL,
  `branchcode` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `username`, `fullname`, `street`, `city`, `postalcode`, `password`, `phone`, `bankaccount`, `branchcode`) VALUES
(25, 'admin@gmail.com', 'admin', '1245 steve biko', 'Pretoria', '0001', '123456', '0123456789', '15456787667', '44485');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
