-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 06:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL,
  `vendor_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `vendor_name` text NOT NULL,
  `cat_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `street`, `city`, `pincode`, `password`, `phone`) VALUES
(4, 'oscarn', 'oscarn@gmail.com', 'test', 'test', 'test', '123456', '0123456789'),
(5, 'Vusi Tsala', 'vusimbombi7@gmail.com', '72 water street', 'Pretoria', '0002', '1720201630@Tsala', '0691931450'),
(6, 'test', 'test@gmail.com', 'test', 'test', 'test', '123456', '0123456789'),
(7, 'oscarn', 'Oscarndlovu01@gmail.com', '146 Steve Biko Street Vandag F', 'Phalaborwa', '0002', '123456', '0157693610'),
(8, 'testuser@gmail.com', 'oscarn@gmail.com', 'sdgvbvhsdfvhc', 'bjdbxjkbhjkbjdfvk', '0125', '123456', '0123456789'),
(9, 'Vusi Tsala', 'Vusimbombi7@gmail.com', '71 Bourke street ', 'Pretoria', '0002', 'Nwa2020Mamaila#', '0614291119'),
(10, 'Nyiko Macuvele ', 'Nyiko173@gmail.com ', 'Street', 'Pretoria', '0001', 'MAINA02nukeri@', '0713722906');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `username`, `email`, `street`, `city`, `pincode`, `phone`) VALUES
(96, 'Vusi Mbombi', 'vusimbombi7@gmail.com', '72 water street', 'Pretoria', '0002', '0691931450');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_price` int(100) DEFAULT NULL,
  `product_qty` int(100) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `product_image` text NOT NULL,
  `vendor_name` text DEFAULT NULL,
  `new_fashion` varchar(255) DEFAULT NULL,
  `special_offer` varchar(255) DEFAULT NULL,
  `on_sale` varchar(255) DEFAULT NULL,
  `clearance` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `color`, `size`, `product_image`, `vendor_name`, `new_fashion`, `special_offer`, `on_sale`, `clearance`, `item_type`) VALUES
(39, 4, 1, 'testing', 30, 10, 'test d', 'yellow', 4, '1654019836_6d54f1ffcc37489ee436ba39b5ca9916.jpg', 'storeadmin@tsalastore.co.za', 'No', 'No', 'No', 'No', 'Shoes'),
(41, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'BLACK', 4, 'NIKE AIRFORCE 1 LOW 07 2.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoes'),
(42, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 3, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(43, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 4, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(44, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 3, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(45, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 4, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(46, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 4, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(47, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 5, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(48, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 5, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(49, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 6, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(50, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 6, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(51, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 4, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(52, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 4, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(53, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 5, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(54, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 5, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(55, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 6, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(56, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 6, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(57, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 7, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(58, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 7, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(59, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 8, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(60, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 8, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(61, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 9, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(62, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 7, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(63, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 7, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(64, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 8, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(65, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 8, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(66, 4, 1, 'NIKE AIR FORCE 1 LOW 07', 1499, 100, 'The radiance lives on in the Nike Air Force 1 07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine', 'WHITE', 9, 'NIKE AIRFORCE 1 LOW 07.JPG', 'VUSIMBOMBI7@G,AIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(67, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 3, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(68, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 4, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(69, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 4, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(70, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 5, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(71, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 5, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(72, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 6, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(73, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 6, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(74, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 7, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(75, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 7, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(76, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 8, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(77, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 8, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(78, 4, 4, 'JORDAN 4 RETRO FIRE RED 2020', 1999, 100, 'This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black .', 'RED & WHITE', 9, 'JORDAN 4 FIRE RED 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(79, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 3, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(80, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 4, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(81, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 4, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(82, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 5, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(83, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 5, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(84, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 6, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(85, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 6, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(86, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 7, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(87, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 7, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(88, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 8, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(89, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 8, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(90, 4, 4, 'JORDAN 4 RETRO BRED 2019', 1999, 100, 'This true-to-OG retro features a black Durabuck (synthetic nubuck) upper with grey, red, and white accents throughout. In addition to the large Nike Air logo on the heel tab, the original Nike branding is also present on the outsole and sock liner. The Air Jordan 4 \"Bred\" released on May 4, 2019', 'BLACK', 9, 'JORDAN 4 RETRO BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(91, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 3, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(92, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 4, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(93, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 4, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(94, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 5, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(95, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 5, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(96, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 6, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(97, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 6, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(98, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 7, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(99, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 7, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(100, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 8, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(101, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 8, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(102, 4, 4, 'JORDAN 4 RETRO WHITE OREO 2021', 2099, 100, 'This Air Jordan 4 features an all-White tumbled leather upper detailed with speckled Cement Grey on the plastic eyelets and midsole. A solid Grey Jumpman on the heel, Red Jumpman logos on the tongues, insole and outsole atop a White rubber sole completes the design.', 'WHITE Oreo', 9, 'JORDAN 4 WHITE OREO 2021.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(103, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 3, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(104, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 4, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(105, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 4, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(106, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 5, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(107, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 5, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(108, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 6, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(109, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 6, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(110, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 7, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(111, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 7, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(112, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 8, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(113, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 8, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(114, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 2199, 100, 'The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, with black on the Swoosh and collar and contrasting white on the quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue helps finish off the models clean and classic detailing', 'SKY BLUE', 9, 'NIKE AIR JORDAN RETRO HIGH WHITE UNIVERSITY BLUE BLACK.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(115, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 3, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(116, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 4, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(117, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 4, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(118, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 5, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(119, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 5, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(120, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 6, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(121, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 6, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(122, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 7, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(123, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 7, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(124, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 8, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(125, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 8, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(126, 4, 1, 'NIKE AIR JORDAN 1 RETRO HIGH SATIN BLACK TOE', 1999, 100, 'Following the same blueprint of the “Satin Shattered Backboard” colorway that was also a womens exclusive, this “Satin Black Toe” edition features a black and white leather upper with red satin at the heel. The Air Jordan “wings” logo on the ankle is presented in a metal medallion to complete the premium look', ' BLACK AND RED', 9, 'NIKE AIR JORDAN 1 RETRO HIGH BRED 2019.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(127, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 3, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(128, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 4, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(129, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 4, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(130, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 5, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(131, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 5, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(132, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 6, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(133, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 6, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(134, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 7, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(135, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 7, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(136, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 8, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(137, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 8, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(138, 4, 1, 'NIKE DUNK LOW SP SYRACUSE', 1549, 100, 'The Nike Dunk debuted as part of the 1985 Nike College Colors program, a program that delivered footwear in the school colors of 12 popular basketball programs allowing fans to support their favorite teams from head to toe. This Syracuse colorway was among the first collegiate colorways Nike released, breaking the mold for colorways used on basketball shoes. This Nike Dunk Low SP is composed of a white leather upper with orange blaze leather overlays. A white midsole, orange outsole, and classic Nike branding on the tongue complete the design. These sneakers released in March of 2020', 'ORANGE', 9, 'NIKE DUNK LOW SP SYRACUSE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(139, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 3, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(140, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 4, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(141, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 4, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(142, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 4, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(143, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 5, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(144, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 6, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(145, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 6, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(146, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 7, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(147, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 7, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(148, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 8, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(149, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 8, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe');
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `color`, `size`, `product_image`, `vendor_name`, `new_fashion`, `special_offer`, `on_sale`, `clearance`, `item_type`) VALUES
(150, 4, 1, 'NIKE DUNK LOW SP UNIVERSITY BLUE', 1549, 100, 'The Dunk Low SP University Blue brings a two-tone look to its retro basketball construction. The shoes upper features an all-leather build, finished with a white base thats highlighted by University Blue on the overlays and Swoosh branding', 'SKY BLUE', 9, 'NIKE DUNK LOW UNIVERSITY BLUE.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(151, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 3, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(152, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 4, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(153, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 4, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(154, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 5, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(155, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 5, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(156, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 6, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(157, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 6, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(158, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 7, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(159, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 7, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(160, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 8, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(161, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 8, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(162, 4, 1, 'NIKE DUNK LOW UNIVERSITY RED', 1549, 100, 'Before cementing its status as a streetwear icon and skateboarding staple, the Dunk began its journey on the university hardwood. The design made major waves in 1985 when it debuted in a pack of colour-coordinated products for university programmes. Now, a handful of those treasured team colours are back to commemorate the models 35th anniversary. This edition blends an upper of neutral white leather with overlays of university red. Grab this slick take on a timeless silhouette to claim a piece of footwear history', 'RED', 9, 'NIKE DUNK LOW UNIVERSITY RED.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(163, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 3, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(164, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 4, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(165, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 4, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(166, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 5, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(167, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 5, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(168, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 6, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(169, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 6, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(170, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 7, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(171, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 7, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(172, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 8, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(173, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 8, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(174, 4, 1, 'NIKE DUNK LOW SP GREEEN GLOW', 1549, 100, 'The upper of the Nike Dunk Low Green Glow (W) is composed of white leather with Green Glow leather overlays and Swoosh logos. From there, a woven Nike label is sewn to the tongue and a white \"NIKE\" is embroidered on the heel. A white midsole and Green Glow outsole completes the design', 'GREEN GLOW', 9, 'NIKE DUNK LOW SP GREEN GLOW.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'NO', 'NO', 'YES', 'NO', 'Shoe'),
(175, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 3, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(176, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 4, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(177, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 4, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(178, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 5, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(179, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 5, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(180, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 6, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(181, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 6, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(182, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 7, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(183, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 7, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(184, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 8, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(185, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 8, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe'),
(186, 4, 4, 'JORDAN 4 RETRO OFF-WHITE SAIL', 2899, 100, 'The Air Jordan 4 Sail features full-grain leather uppers with hits of mesh and translucent materials on the toebox and heel of the shoe. From there, hits of light blue on the tongues Jumpman and the outsoles Nike Swoosh provide contrast to the sail colored sneaker. These sneakers released in July of 2020', 'OFF-WHITE SAIL', 9, 'JORDAN 4 RETRO OFF-WHITE SAIL 2020.JPG', 'VUSIMBOMBI7@GMAIL.COM', 'No', 'No', 'YES', 'No', 'Shoe');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `bankaccount` text DEFAULT NULL,
  `branchcode` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `username`, `email`, `street`, `city`, `postalcode`, `password`, `phone`, `bankaccount`, `branchcode`) VALUES
(11, 'storeadmin', 'storeadmin@tsalastore.co.za', '149 leyds', 'Sunnyside', '0002', '123456', '0123456789', 'Required During Payment', 'PAN Card No.'),
(12, 'Username', 'admin@gmail.com', 'test', 'test', 'test', '123456', '0123456789', 'test', 'test'),
(13, 'Tsala Store', 'Vusimbombi7@gmail.com', '72 water street', 'Pretoria', '0002', 'Tsala@2022', '06919231450', '', ''),
(14, 'admin', 'admin@gmail.com', 'jbjbdvkbk', 'jfkhfhkv', '0124', '123456', '0123456', '', '');

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
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
