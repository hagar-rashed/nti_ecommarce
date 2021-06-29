-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 04:22 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nti_ecommarce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `street` varchar(50) NOT NULL,
  `building` varchar(10) NOT NULL,
  `floor` int(10) NOT NULL,
  `flat` int(10) NOT NULL,
  `details` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `street`, `building`, `floor`, `flat`, `details`, `user_id`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 'el-mashaya-street', '10', 3, 2, 'no details', 1, NULL, '2021-06-27 10:13:52', '2021-06-27 10:13:52'),
(2, 'alex-street ', '3', 5, 6, 'no details', 4, NULL, '2021-06-27 10:18:02', '2021-06-27 10:18:02'),
(3, 'cairo-street', '7', 1, 1, 'no details', 7, NULL, '2021-06-27 10:18:02', '2021-06-27 10:18:02'),
(4, 'giza-street', '5', 6, 6, 'no details', 8, NULL, '2021-06-27 10:19:40', '2021-06-27 10:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'samsung', 'default.png', 1, '2021-06-25 18:14:23', '2021-06-25 18:14:23'),
(2, 'LG', 'default.png', 1, '2021-06-25 18:14:23', '2021-06-25 18:14:23'),
(3, 'sony', 'default.png', 1, '2021-06-25 18:15:33', '2021-06-25 18:15:33'),
(4, 'canonne', 'default.png', 1, '2021-06-25 18:15:33', '2021-06-25 18:15:33'),
(5, 'sony', 'default.png', 1, '2021-06-25 18:51:59', '2021-06-25 18:51:59'),
(6, 'lenovo', 'default.png', 1, '2021-06-25 18:51:59', '2021-06-25 18:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `quantity` int(20) NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'defult.png',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified 1=>verified',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'defult.png', 1, '2021-06-25 12:49:41', '2021-06-25 12:51:41'),
(2, 'Health and Beauty', 'defult.png', 1, '2021-06-25 12:49:41', '2021-06-25 12:51:49'),
(3, 'sports', 'defult.png', 1, '2021-06-25 12:50:25', '2021-06-25 12:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified',
  `lat` int(50) NOT NULL,
  `long` int(50) NOT NULL,
  `rad` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `status`, `lat`, `long`, `rad`, `created_at`, `updated_at`) VALUES
(1, 'alex', 1, 0, 0, 0, '2021-06-27 10:24:41', '2021-06-27 10:24:41'),
(2, 'cairo', 1, 0, 0, 0, '2021-06-27 10:24:41', '2021-06-27 10:24:41'),
(3, 'elmansura', 1, 0, 0, 0, '2021-06-27 10:25:36', '2021-06-27 10:25:36'),
(4, 'giza', 1, 0, 0, 0, '2021-06-27 10:25:36', '2021-06-27 10:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `copouns`
--

CREATE TABLE `copouns` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `discountType` varchar(10) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified',
  `countOfUsage` int(10) NOT NULL,
  `usagePerPerson` int(10) NOT NULL,
  `minPrice` int(50) NOT NULL,
  `maxDiscount` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `copoun_product`
--

CREATE TABLE `copoun_product` (
  `copun_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `priceafterdiscount` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) NOT NULL,
  `discont` varchar(10) NOT NULL DEFAULT '0' COMMENT '0=>no descount 1=>discount ',
  `title` varchar(20) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` mediumint(5) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified',
  `lat` varchar(50) NOT NULL DEFAULT '0' COMMENT '0=>not required , 1=>required',
  `long` varchar(50) NOT NULL DEFAULT '0' COMMENT '0=>not required , 1=>required',
  `date` datetime NOT NULL,
  `location` varchar(100) NOT NULL,
  `totalcash` int(200) NOT NULL,
  `copoun_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `address_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `paymentMethod`, `status`, `lat`, `long`, `date`, `location`, `totalcash`, `copoun_id`, `user_id`, `created_at`, `updated_at`, `address_id`) VALUES
(4, 33, 'cash', 0, '0', '0', '2021-06-27 12:36:50', 'elmansura', 1000, NULL, 1, '2021-06-27 10:37:54', '2021-06-27 10:37:54', 1),
(5, 54, 'visa', 1, '0', '0', '2021-06-27 12:36:51', 'alex', 300, NULL, 3, '2021-06-27 10:37:54', '2021-06-27 10:37:54', 2),
(6, 399, 'cash', 1, '0', '0', '2021-06-27 12:37:57', 'giza', 4000, NULL, 8, '2021-06-27 10:39:09', '2021-06-27 10:39:09', 4),
(7, 111, 'visa', 1, '0', '0', '2021-06-27 12:37:57', 'cairo', 3000, NULL, 6, '2021-06-27 10:39:09', '2021-06-27 10:39:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `productorderprice` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `productorderprice`) VALUES
(4, 7, 3000),
(4, 7, 3000),
(5, 13, 10000),
(5, 9, 100),
(7, 13, 10000),
(4, 10, 200),
(6, 10, 200),
(6, 12, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `code` varchar(30) NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `quantity` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0->not active , 1->active',
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(250) NOT NULL DEFAULT '''default.png''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `code`, `price`, `quantity`, `status`, `brand_id`, `subcategory_id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'mobile-samsung', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '1223', '5000', 9, 1, 1, 3, '\'default.png\'', '2021-06-25 18:42:10', '2021-06-25 18:42:10'),
(6, 'mobile-lenovo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '156', '5000', 9, 1, 6, 3, '\'default.png\'', '2021-06-25 18:45:45', '2021-06-25 19:05:22'),
(7, 'camera-canonne', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '123', '7000', 8, 1, 4, 9, '\'default.png\'', '2021-06-25 18:55:22', '2021-06-25 18:55:22'),
(8, 'mobile-sony', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '234', '3000', 20, 1, 5, 3, '\'default.png\'', '2021-06-25 18:55:22', '2021-06-25 18:55:22'),
(9, 'shampo', 'many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '120', '50', 14, 1, NULL, 4, '\'default.png\'', '2021-06-25 19:04:33', '2021-06-25 19:04:33'),
(10, 'conditioner', 'many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '786', '70', 7, 1, NULL, 4, '\'default.png\'', '2021-06-25 19:04:33', '2021-06-25 19:04:33'),
(11, 'camera-samsung', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '23', '4000', 3, 1, 1, 9, '\'default.png\'', '2021-06-26 08:51:03', '2021-06-26 08:51:03'),
(12, 'laptop-LG', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '54', '7000', 3, 1, 2, 8, '\'default.png\'', '2021-06-26 08:51:03', '2021-06-26 08:51:03'),
(13, 'tv-samsung', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '44', '10000', 5, 1, 1, 1, '\'default.png\'', '2021-06-26 08:55:06', '2021-06-26 08:55:06'),
(14, 'TV-sony', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '33', '3000', 6, 1, 3, 1, '\'default.png\'', '2021-06-26 08:55:06', '2021-06-26 08:55:06');

-- --------------------------------------------------------

--
-- Stand-in structure for view `products_rating`
-- (See below for the actual view)
--
CREATE TABLE `products_rating` (
`id` int(10) unsigned
,`name` varchar(255)
,`details` text
,`code` varchar(30)
,`price` decimal(20,0)
,`quantity` int(5)
,`status` tinyint(1)
,`brand_id` int(10) unsigned
,`subcategory_id` int(10) unsigned
,`image` varchar(250)
,`created_at` timestamp
,`updated_at` timestamp
,`productAvg` decimal(11,0)
,`reveiwCount` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proudact_offer`
--

CREATE TABLE `proudact_offer` (
  `proudact_id` int(10) UNSIGNED DEFAULT NULL,
  `offer_id` int(10) UNSIGNED DEFAULT NULL,
  `priceafterdiscount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified',
  `long` int(11) NOT NULL,
  `lat` int(11) NOT NULL,
  `rad` int(100) NOT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `status`, `long`, `lat`, `rad`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'elmashaya', 1, 0, 0, 0, 3, '2021-06-27 10:26:45', '2021-06-27 10:26:45'),
(2, 'elshekh zaid', 1, 0, 0, 0, 4, '2021-06-27 10:26:45', '2021-06-27 10:26:45'),
(3, 'alex-region', 1, 0, 0, 0, 1, '2021-06-27 10:28:48', '2021-06-27 10:28:48'),
(4, 'west-elbald', 1, 0, 0, 0, 2, '2021-06-27 10:28:48', '2021-06-27 10:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ratevalue` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_id` int(20) UNSIGNED DEFAULT NULL,
  `user_id` int(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ratevalue`, `comment`, `date`, `product_id`, `user_id`) VALUES
(0, 'good product', '2021-06-25 22:39:41', 2, 1),
(0, 'excellent', '2021-06-25 22:39:41', 7, 8),
(0, 'good product', '2021-06-25 22:41:36', 10, 2),
(0, 'excellent', '2021-06-25 22:41:36', 8, 7),
(3, 'good product', '2021-06-25 22:43:18', 8, 6),
(4, 'excellent', '2021-06-25 22:43:18', 7, 7),
(2, 'bad product', '2021-06-25 22:44:10', 6, 2),
(3, 'good', '2021-06-25 22:44:10', 9, 3),
(5, 'excellent', '2021-06-26 19:52:25', 14, 3),
(1, 'bad-product', '2021-06-26 19:53:22', 10, 1),
(2, 'not-bad', '2021-06-26 19:54:20', 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'defult.png',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified 1=>user verified',
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `image`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'tv', 'tv_defult.png', 1, 1, '2021-06-25 13:36:30', '2021-06-25 18:38:42'),
(3, 'mobile', 'defult.png', 1, 1, '2021-06-25 13:42:03', '2021-06-25 18:38:58'),
(4, 'haircare', 'defult.png', 1, 2, '2021-06-25 13:43:08', '2021-06-25 19:02:15'),
(7, 'Sweat Waist Trimmer ', 'defult.png', 1, 3, '2021-06-25 13:47:16', '2021-06-25 13:47:16'),
(8, 'laptop', 'defult.png', 1, 1, '2021-06-25 18:53:05', '2021-06-25 18:53:05'),
(9, 'camera', 'defult.png', 1, 1, '2021-06-25 18:53:05', '2021-06-25 18:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>verified',
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_img`
--

CREATE TABLE `suppliers_img` (
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'defult.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `code` mediumint(5) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'default.png',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>not verified , 1=>user verified',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `password`, `email`, `code`, `gender`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hagar_rashed', '222222', 'hagarAli@1995', 'hagarrashed0@gmail.com ', 16822, 'f', 'default.png', 0, '2021-06-24 13:21:55', '2021-06-24 15:21:55'),
(2, 'hagar_rashed', '22222', '', 'rashed.hagar@yahoo.com ', 75065, 'm', 'default.png', 0, '2021-06-24 19:52:36', '2021-06-24 21:52:36'),
(3, 'shaker shawky', '3556', 'shakerSh@1995', 'shakershawky.1987@gmail.com ', 64702, 'm', 'default.png', 0, '2021-06-24 20:09:46', '2021-06-24 22:09:46'),
(6, 'mohammed', '22334', 'hagarMOH@1995', 'hagerrashed1@gmail.com ', 48602, 'm', 'default.png', 0, '2021-06-24 22:32:55', '2021-06-25 00:32:55'),
(7, 'hend', '012345', 'hendAli@1995', 'hend@gmail.com', 234, 'f', 'default.png', 1, '2021-06-25 22:38:22', '2021-06-26 00:38:22'),
(8, 'kareem', '904343', 'kareemAli@1995', 'kareem@yahoo.com', 543, 'm', 'default.png', 1, '2021-06-25 22:38:22', '2021-06-26 00:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `products_rating`
--
DROP TABLE IF EXISTS `products_rating`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products_rating`  AS   (select `products`.`id` AS `id`,`products`.`name` AS `name`,`products`.`details` AS `details`,`products`.`code` AS `code`,`products`.`price` AS `price`,`products`.`quantity` AS `quantity`,`products`.`status` AS `status`,`products`.`brand_id` AS `brand_id`,`products`.`subcategory_id` AS `subcategory_id`,`products`.`image` AS `image`,`products`.`created_at` AS `created_at`,`products`.`updated_at` AS `updated_at`,if(round(avg(`reviews`.`ratevalue`),0) is null,0,round(avg(`reviews`.`ratevalue`),0)) AS `productAvg`,count(`reviews`.`product_id`) AS `reveiwCount` from (`products` left join `reviews` on(`reviews`.`product_id` = `products`.`id`)) group by `reviews`.`product_id`)  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_cart_FK` (`user_id`),
  ADD KEY `product_cart_FK` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copouns`
--
ALTER TABLE `copouns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copoun_product`
--
ALTER TABLE `copoun_product`
  ADD KEY `copoun_FK` (`copun_id`),
  ADD KEY `products_FK` (`product_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code.unique` (`code`),
  ADD KEY `copoun_order_FK` (`copoun_id`),
  ADD KEY `user-order-FK` (`user_id`),
  ADD KEY `address_order_FK` (`address_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `order_product_FK` (`order_id`),
  ADD KEY `product_order_FK` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `brand_product_FK` (`brand_id`),
  ADD KEY `subcategory_brand_FK` (`subcategory_id`);

--
-- Indexes for table `proudact_offer`
--
ALTER TABLE `proudact_offer`
  ADD KEY `product_FK` (`proudact_id`),
  ADD KEY `offer_FK` (`offer_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_region_id` (`city_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD KEY `proudact_review_FK` (`product_id`),
  ADD KEY `user_review_FK` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_subcategory_FK` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email.unique` (`email`),
  ADD UNIQUE KEY `phone.unique` (`phone`),
  ADD KEY `product_supplier_FK` (`product_id`);

--
-- Indexes for table `suppliers_img`
--
ALTER TABLE `suppliers_img`
  ADD KEY `supplier_FK` (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone unique` (`phone`),
  ADD UNIQUE KEY `email.unique` (`password`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `user_wishilist_FK` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `copouns`
--
ALTER TABLE `copouns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `product_cart_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_cart_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `copoun_product`
--
ALTER TABLE `copoun_product`
  ADD CONSTRAINT `copoun_FK` FOREIGN KEY (`copun_id`) REFERENCES `copouns` (`id`),
  ADD CONSTRAINT `products_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `address_order_FK` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user-order-FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_FK` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `product_order_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `brand_product_FK` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `subcategory_brand_FK` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `proudact_offer`
--
ALTER TABLE `proudact_offer`
  ADD CONSTRAINT `offer_FK` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `product_FK` FOREIGN KEY (`proudact_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `city_region_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `proudact_review_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_review_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `category_subcategory_FK` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `product_supplier_FK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `suppliers_img`
--
ALTER TABLE `suppliers_img`
  ADD CONSTRAINT `supplier_FK` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `user_wishilist_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
