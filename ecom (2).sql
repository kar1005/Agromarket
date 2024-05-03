-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 11:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL,
  `about_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`, `about_time`) VALUES
(1, 'About Us ', 'An Online Marketplace for Farmers and Buyers\r\n', 'Changes have also occurred in the local food chain. Despite the fact that many farmers have faced hardships as a result of restaurant and market shutdown or prohibitions, there is undeniably an increasing demand for fresh items from local sources. Consider developing a buying or selling organic food ecommerce marketplace for farmers and suppliers to enable local producers interact directly with customers or restaurants (B2B agriculture marketplace).During the epidemic, many farmers chose to go digital to overcome challenges and improve their businesses using ecommerce app development companies. This article is created for the producers who have decided to go online in order to increase sales volume. This blog covers everything an entrepreneur (who may or may not be a farmer) needs to know about creating an online producers’ marketplace, from the business concept to the must-have elements.', '2023-01-21 15:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_username`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(11, 'Khushi', 'admin@gmail.com', '$2y$10$GY4xuPcBO8Gp/o5BQ9w5fuzCtA3qFa8KpXGULv3mVzUzOgNxJ1FN2', 'kruparelia2004', 'profile0.png', '7041892332', 'India', 'Buisnessman', ' Owner of agromarket   ');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'OUR CUSTOMER ', 'We provide best customer service support.                             '),
(2, 'BEST PRICES', 'We provide lowest Prices to get best offer in our website.'),
(3, 'FAST DELIVERY', 'We can super fast delivery from your products.');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(36, 'Rahul | Brown Rice', 53, 54),
(37, 'relation', 53, 54);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`, `p_price`, `product_weight`, `product_type`) VALUES
(25, 53, '::1', 50, '57', '1.0', 'physical_product'),
(26, 69, '::1', 10, '57', '1.0', 'physical_product');

-- --------------------------------------------------------

--
-- Table structure for table `cart_meta`
--

CREATE TABLE `cart_meta` (
  `meta_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(12, 'Grains ', 'yes', 'cap.jpg'),
(13, 'Fruits and Vegetables', 'yes', 'fav.jpg'),
(14, 'Milk and Eggs', 'no', 'ead.jpg'),
(15, 'Fish and Meat', 'no', 'fam.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'info@agromarket.com', 'Contact Us', 'Feel free to contact us, we will reply as soon as possible.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(10) NOT NULL,
  `country_name` text NOT NULL,
  `country_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`) VALUES
(1, 'India', ''),
(246, 'USA', ''),
(247, 'UK', ''),
(248, 'Pakistan', ''),
(249, 'Nepal', ''),
(250, 'Bangladesh', ''),
(251, 'Myanmar', ''),
(252, 'Indonesia', ''),
(253, 'Shri Lanka', ''),
(254, 'Afghanistan', '');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `vendor_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(7, '29', 62, 'Season sale', '55', 'SS14', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  `customer_role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_username`, `customer_contact`, `customer_image`, `customer_ip`, `customer_confirm_code`, `customer_role`) VALUES
(19, 'admin', 'admin@gmail.com', '$2y$10$Hi6A2FmBEhR0/omRd0u30e7m/NbyTiPhG9k5Bz0SD1CF.trCgUuDS', 'admin', '123', 'splashlogo.png', '::1', '', 'vendor'),
(20, 'user', 'user@gmail.com', '$2y$10$tpij/WkcoVOg/6Msc7wgQugdNzLLv0vqcTNcBGHvMbRIZHqB4/aCy', 'user123', '2222222222', 'enggday.png', '::1', '', 'vendor'),
(21, 'khushi', 'kruparelia@gmail.com', '$2y$10$1jQu3x.mk4y6xqeNBO2Q3en7jIabxT0AvTF9KGKFeHG2b/2BZh0hC', 'k123', '9377139766', 'enggday.png', '::1', '', 'customer'),
(22, 'Netra', 'nchudasama@gmail.com', '$2y$10$9ZVE/Po1DG7GV7eZa.1fceTbGGhf7GZkSDMsSTa6ncnH0cGI/HtSe', 'nc123', '4444444444', 'pic04.jpg', '::1', '', 'customer'),
(23, 'Evva', 'egokani@gmail.com', '$2y$10$kLbqJiWZIUg30Wztv7Pv4.qCMXswZeG4PND82TmPIgS5WNPM7Pkge', 'eg123', '5555555555', 'banner.jpg', '::1', '', 'customer'),
(24, 'Devanshi', 'dlukka@gmail.com', '$2y$10$qlrJajxnHXOJHw4Dlq6vrezJhfsCUMU04HuWxPt7Ynv/CubkdNta.', 'd123', '7777777777', 'pic01.jpg', '::1', '', 'customer'),
(25, 'Aastha', 'ajoshi@gmail.com', '$2y$10$uuhZ/wzHUc.YLANfac3xYuaV3rhyFw5KrnSuj.g3qTpv9ayrX1jZW', 'a123', '3333333333', 'pic04.jpg', '::1', '', 'customer'),
(26, 'Rahul', 'rahul@gmail.com', '$2y$10$4yUvQdynZW1N03SpnbQDd.AdDLlHntYx/r.r/FXkepz9kcK16EQ7W', 'r123', '8888888888', 'banner.jpg', '::1', '', 'vendor'),
(27, 'Manish', 'manish@gmail.com', '$2y$10$o0XmgxU027yRA4NAF9BbJuhZmF5dFutyWzOVgibnDELrXwX04F0CC', 'm123', '9999999999', 'pic01.jpg', '::1', '', 'vendor'),
(28, 'Princy', 'princy@gmail.com', '$2y$10$vCKZvMwGP4Kn.r4opto8AugqrfWwNDIQyKOkAJA3yeTPmSi0bh4w2', 'p123', '1234567890', 'pic02.jpg', '::1', '', 'vendor'),
(29, 'Abhinav', 'abhinav@gmail.com', '$2y$10$6U13vSDLgL6qFAPMJAQC2ezpj.hNS8I2ba27Jx/rXeXYCzpryhfom', 'abhi123', '456137890', 'enggday.png', '::1', '', 'vendor');

-- --------------------------------------------------------

--
-- Table structure for table `customers_address`
--

CREATE TABLE `customers_address` (
  `address_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers_address`
--

INSERT INTO `customers_address` (`address_id`, `customer_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 26, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'Khushi', 'Ruparelia', '1', 'Patel colony , Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008'),
(2, 22, 'Netra', 'Chudasama', '1', 'Ring Road , Rajkot', 'L G Road , Rajkot', 'Gujarat', 'Rajkot', '361004', 'Netra', 'Chudasama', '1', 'Ring Road , Rajkot', 'L G Road, Rajkot', 'Guajrat', 'Rajkot', '361004'),
(3, 21, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'Khushi', 'Ruparelia', '1', 'Patel colony , Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008'),
(4, 23, 'Evva', 'Gokani', '1', 'Park Colony', 'Pancheshwar Tower', 'Gujarat', 'Jamnagar', '361004', 'Evva', 'Gokani', '1', 'Park Conony', 'Pancheshwar Tower', 'Gujarat', 'Jamnagar', '361004'),
(5, 27, 'Manish', 'Chauhan', '1', 'Gokulnagar-2', 'Rangmal appartment', 'Gujarat', 'Jamnagar', '361004', 'Manish', 'Chauhan', '1', 'Gokulnagar-2', 'Rangmal appatment', 'Gujarat', 'Jamnagar', '361004');

-- --------------------------------------------------------

--
-- Table structure for table `customers_history`
--

CREATE TABLE `customers_history` (
  `history_id` int(10) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers_history`
--

INSERT INTO `customers_history` (`history_id`, `ip_address`, `customer_id`, `product_id`) VALUES
(325, '::1', 20, 51),
(341, '::1', 20, 52),
(349, '::1', 26, 52),
(350, '::1', 27, 57),
(351, '::1', 27, 54),
(363, '::1', 27, 52),
(371, '::1', 22, 56),
(372, '::1', 22, 53),
(398, '::1', 21, 51),
(404, '::1', 26, 58),
(408, '::1', 26, 56),
(412, '::1', 22, 58),
(414, '::1', 21, 53),
(422, '::1', 23, 62),
(423, '::1', 29, 57),
(424, '::1', 28, 56),
(434, '::1', 23, 70),
(439, '::1', 0, 53),
(440, '::1', 21, 56),
(441, '::1', 0, 68),
(442, '::1', 27, 53),
(445, '::1', 0, 69);

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(10, 10, 200, 2023, 1, '1', '2023-01-12 05:48:46', 'pending'),
(11, 10, 200, 20230112, 2, '2', '2023-01-12 05:50:24', 'pending'),
(12, 10, 200, 2147483647, 1, '1', '2023-01-12 05:51:09', 'pending'),
(13, 10, 100, 20230329, 1, '1', '2023-03-29 03:17:45', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `download_title` text NOT NULL,
  `download_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `vendor_id`, `product_id`, `variation_id`, `download_title`, `download_file`) VALUES
(16, '27', 58, 0, 'Corn details', 'cornd1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Technical Support');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `enable_vendor` text NOT NULL,
  `new_product_status` text NOT NULL,
  `edited_product_status` text NOT NULL,
  `order_status_change` text NOT NULL,
  `order_status_for_withdraw` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `meta_author`, `meta_description`, `meta_keywords`, `enable_vendor`, `new_product_status`, `edited_product_status`, `order_status_change`, `order_status_for_withdraw`) VALUES
(1, 'Agromarket', 'Khushi', 'A multivendor e commerce website for farm products.', 'modren,ecommerce,store,multivendor', 'yes', 'pending', 'yes', 'yes', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `hide_admin_orders`
--

CREATE TABLE `hide_admin_orders` (
  `hide_id` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(6, 56, 'Wheat', 'ashirvad.jpg'),
(7, 66, 'Wheat', 'ashirvad.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(7, 'Cargill', 'yes', 'email-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `payment_method` text NOT NULL,
  `order_date` text NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `order_note` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `payment_method`, `order_date`, `order_total`, `order_note`, `order_status`) VALUES
(2, 26, 1770060286, 'Above 10', '0.0', 'pay offline', 'April 23, 2023 12:44', '171.0', '', 'completed'),
(3, 22, 611225379, 'Simple', '20.0', 'pay offline', 'April 23, 2023 09:12', '270.0', '', 'completed'),
(4, 21, 737873105, '', '0.0', 'pay offline', 'April 24, 2023 09:24', '160.0', '', 'completed'),
(5, 21, 1732204765, 'Simple', '20.0', 'pay offline', 'April 24, 2023 09:28', '220.0', '', 'completed'),
(6, 22, 305942249, '', '0.0', 'pay offline', 'April 24, 2023 09:31', '192.0', '', 'cancelled'),
(7, 26, 92631765, '', '0.0', 'pay offline', 'April 24, 2023 01:44', '128.0', '', 'completed'),
(8, 21, 155811991, 'Simple', '20.0', 'pay offline', 'May 11, 2023 09:40', '1160.0', '', 'completed'),
(9, 23, 1448513026, 'Fast Delivery', '100.0', 'pay offline', 'May 11, 2023 09:51', '415.0', '', 'completed'),
(10, 23, 1602877182, 'Simple', '20.0', 'pay offline', 'May 12, 2023 09:51', '350.0', '', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_addresses`
--

CREATE TABLE `orders_addresses` (
  `address_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `is_shipping_address` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL,
  `order_notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_addresses`
--

INSERT INTO `orders_addresses` (`address_id`, `order_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `is_shipping_address`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`, `order_notes`) VALUES
(2, 2, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'yes', '', '', '', '', '', '', '', '', ''),
(3, 3, 'Netra', 'Chudasama', '1', 'Ring Road , Rajkot', 'L G Road , Rajkot', 'Gujarat', 'Rajkot', '361004', 'yes', '', '', '', '', '', '', '', '', ''),
(4, 4, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'none', '', '', '', '', '', '', '', '', ''),
(5, 5, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'yes', '', '', '', '', '', '', '', '', ''),
(6, 6, 'Netra', 'Chudasama', '1', 'Ring Road , Rajkot', 'L G Road , Rajkot', 'Gujarat', 'Rajkot', '361004', 'none', '', '', '', '', '', '', '', '', ''),
(7, 7, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'none', '', '', '', '', '', '', '', '', ''),
(8, 8, 'Khushi', 'Ruparelia', '1', 'Patel colony, Jamnagar', 'Swaminarayan Nagar, Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'yes', '', '', '', '', '', '', '', '', ''),
(9, 9, 'Evva', 'Gokani', '1', 'Park Colony', 'Pancheshwar Tower', 'Gujarat', 'Jamnagar', '361004', 'yes', '', '', '', '', '', '', '', '', ''),
(10, 10, 'Evva', 'Gokani', '1', 'Park Colony', 'Pancheshwar Tower', 'Gujarat', 'Jamnagar', '361004', 'yes', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `item_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`item_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(4, 2, 51, '57.0', 3),
(5, 3, 56, '50.0', 5),
(6, 4, 58, '32.0', 5),
(7, 5, 56, '50.0', 4),
(8, 6, 58, '32.0', 6),
(9, 7, 58, '32.0', 4),
(10, 8, 53, '57.0', 20),
(11, 9, 62, '63.0', 5),
(12, 10, 70, '55.0', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items_meta`
--

CREATE TABLE `orders_items_meta` (
  `meta_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_notes`
--

CREATE TABLE `orders_notes` (
  `note_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `sub_order_id` text NOT NULL,
  `item_id` int(10) NOT NULL,
  `note_content` text NOT NULL,
  `note_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders_notes`
--

INSERT INTO `orders_notes` (`note_id`, `order_id`, `sub_order_id`, `item_id`, `note_content`, `note_date`) VALUES
(5, 2, '', 4, 'stock reduced from 0 to -3.', 'April 23, 2023 12:44'),
(6, 3, '', 5, 'stock reduced from 150 to 145.', 'April 23, 2023 09:12'),
(7, 4, '', 6, 'stock reduced from 37 to 32.', 'April 24, 2023 09:24'),
(8, 5, '', 7, 'stock reduced from 145 to 141.', 'April 24, 2023 09:28'),
(9, 6, '', 8, 'stock reduced from 32 to 26.', 'April 24, 2023 09:31'),
(10, 7, '', 9, 'stock reduced from 26 to 22.', 'April 24, 2023 01:44'),
(11, 8, '', 10, 'stock reduced from 100 to 80.', 'May 11, 2023 09:40'),
(12, 9, '', 11, 'stock reduced from 50 to 45.', 'May 11, 2023 09:51'),
(13, 10, '', 12, 'stock reduced from 90 to 84.', 'May 12, 2023 09:51');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(11, 611225379, 270, 'UBL/Omni Paisa', 348237, 1455, '23/4'),
(12, 737873105, 160, 'Bank Code', 5634535, 1455, '24/4'),
(13, 1732204765, 220, 'UBL/Omni Paisa', 4356345, 34534, '24/4'),
(14, 305942249, 192, 'Easy paisa', 158415, 55686, '25/4');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) NOT NULL,
  `commission_percentage` int(10) NOT NULL,
  `minimum_withdraw_limit` int(10) NOT NULL,
  `days_before_withdraw` int(10) NOT NULL,
  `enable_paypal` text NOT NULL,
  `paypal_email` text NOT NULL,
  `paypal_sandbox` text NOT NULL,
  `paypal_currency_code` text NOT NULL,
  `paypal_app_client_id` text NOT NULL,
  `paypal_app_client_secret` text NOT NULL,
  `enable_stripe` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `stripe_publishable_key` text NOT NULL,
  `stripe_currency_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `commission_percentage`, `minimum_withdraw_limit`, `days_before_withdraw`, `enable_paypal`, `paypal_email`, `paypal_sandbox`, `paypal_currency_code`, `paypal_app_client_id`, `paypal_app_client_secret`, `enable_stripe`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_currency_code`) VALUES
(2, 5, 20000, 3, 'No', 'kruparelia@gmail.com', 'No', 'INR', 'sjduqiwdn', 'dfwefef', 'Yes', 'sk_test_51MzaYWSA1NXLBUfsxtzBc1kEFUi2wK2ckaz892FmfQe6GGeFdPupjP9WuOMzb4evBTzZCgzNE3mnOdtRKZ0If98z00AJCs0GsR', 'pk_test_51MzaYWSA1NXLBUfscETI14EZS3CkwoWLg0Yzsyxv5v6AMmimrPxuqcyAf9o1mMF1hTFKYFZpcCTHD9v8X2sJs2jX00kbd4whOI', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(10, 10, 2023, '4', 1, '1', 'pending'),
(11, 10, 20230112, '5', 2, '2', 'pending'),
(12, 10, 2147483647, '4', 1, '1', 'pending'),
(13, 10, 20230329, '4', 1, '1', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_seo_desc` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `product_type` text NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_views` int(10) NOT NULL,
  `product_vendor_status` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `vendor_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `product_views`, `product_vendor_status`, `status`) VALUES
(51, '26', 20, 12, 7, '2023-04-24 04:22:44', 'Bhaliya wheat', 'Good Quality Wheat', 'wheat-1', 'img.jpg', 'img2.jpg', 'img3.jpg', 70, 57, 'Best Bhal region wheat that you can get with assured quality', '', '', 'best quality , farm fresh', 'Assured', 'physical_product', '1.0', 6, 'active', 'product'),
(52, 'admin_11', 20, 12, 7, '2023-04-24 04:11:10', 'American Corn', 'Farm Fresh Sweet Corn', 'corn-1', 'cornimg2.jpg', 'cornimg1.png', 'corn7.jpg', 30, 25, 'Tasty and Sweet American corn', '', '', 'fresh american corn', 'Best Seller', 'physical_product', '1.0', 6, 'paused', 'product'),
(53, '26', 20, 12, 7, '2023-06-28 03:17:58', 'Rice', 'South Asia Rice', 'rice-1', 'rice.jpg', 'rice11.jpg', 'rice12.jpg', 60, 57, 'uniformity of size and shape, whiteness, long and thin uncooked grains ', '', '', 'whiteness, long grains', 'Best Seller', 'physical_product', '1.0', 6, 'active', 'product'),
(54, '26', 20, 12, 7, '2023-04-23 06:57:51', 'Brown Rice', 'healthy brown rice', 'brice-1', 'brice1.jpg', 'brice4.jpg', 'brice7.jpg', 70, 66, 'Calories: 108.\r\nProtein: 3 grams.\r\nFat: 1 gram.\r\nCarbohydrates: 22 grams.\r\nFiber: 2 grams.\r\nSugar: 0 grams.', '', '', 'brown healthy rice', 'Good Quality', 'physical_product', '1.0', 1, 'active', 'bundle'),
(55, '26', 15, 13, 7, '2023-04-24 04:10:59', 'Apples', 'Farm fresh apples', 'apple-1', 'apple1.jpg', 'apple2.jpg', 'apple.jpg', 40, 33, 'Healthy and nutricious apples direct from the farm', 'Texture includes firmness, crispness, and juiciness ', 'https://www.pexels.com/video/apple-tree-with-abundance-of-fruit-bearings-2931589/', 'red tasty apples', 'Nutricious', 'physical_product', '0.5', 0, 'active', 'product'),
(56, '27', 20, 12, 7, '2023-06-28 05:52:56', 'Wheat', 'Good Quality wheat', 'wheat-2', 'wheat1.jpg', 'wheat14.jpg', 'wheat13.jpg', 54, 60, 'Wheat that is rich with nutrition and minerals', '', '', 'fine wheat', 'Best Seller', 'physical_product', '1.0', 9, 'pending', 'product'),
(57, 'admin_11', 21, 12, 7, '2023-05-11 16:45:33', 'Cotton', 'Best Quality cotton', 'cotton-1', 'cotton7.jpg', 'cotton11.jpg', 'cotton9.jpg', 25, 23, 'he fibers are composed of about 87 to 90 percent cellulose (a carbohydrate plant substance), 5 to 8 percent water, and 4 to 6 percent natural impurities.', '', '', 'fiber rich cotton', 'Assured', 'physical_product', '0.5', 3, 'active', 'product'),
(58, '27', 20, 12, 7, '2023-05-11 05:14:09', 'American Corn', 'Best quality corn', 'corn-2', 'corn7.jpg', 'corn12.jpg', 'corn4.jpg', 35, 32, 'fresh sweet american corn', '', '', 'fresh american corn', 'Good Quality', 'digital_product', '0.0', 9, 'trash', 'product'),
(59, 'admin_11', 20, 12, 7, '2023-04-23 15:41:12', 'American Corn', 'fresh american corn', 'corn-2', 'corn1.jpg', 'corn6.jpg', 'corn8.jpg', 35, 32, 'good quality sweet american corn', '', '', 'fresh american corn', 'Good Quality', 'physical_product', '1.0', 0, 'active', 'product'),
(60, '27', 22, 12, 7, '2023-04-24 03:43:54', 'Chickpea', 'Nutritious high fiber chickpeas', 'chickpea-1', 'chickpea1.jpg', 'chcikpea15.jpg', 'chickpea8.jpg', 60, 50, 'Fine and good quality assured chickeas', '', '', 'high fiber chickpea', 'Assured', 'physical_product', '1.0', 0, 'active', 'product'),
(61, '28', 21, 12, 7, '2023-04-24 04:18:03', 'Groundnut', 'Good quality groundnuts', 'gn-1', 'gn5.jpg', 'gn6.jpg', 'gn3.jpg', 40, 34, 'the famous of gujarat soil rich groundnut', '', '', 'groundnut, fresh, rich, protein', 'Best Seller', 'physical_product', '1.0', 1, 'active', 'product'),
(62, '29', 26, 14, 7, '2023-05-11 16:22:30', 'Cow Milk', 'Good quality milk', 'milk-1', 'milk6.jpg', 'milk1.jpg', 'milk11.jpg', 65, 63, 'High Protein and fiber milk enough to give you energy', '', '', 'Fresh cow milk', 'Best Seller', 'physical_product', '1.0', 3, 'active', 'product'),
(63, '29', 26, 14, 7, '2023-05-11 05:53:51', 'Curd', 'cow milk curd', 'curd-1', 'curd6.jpg', 'curd8.jpg', 'curd7.jpg', 40, 34, 'freshly made curd from cow milk. Refreshes your mood', 'High of proteins and good quality', '', 'curd milk curd', 'Assured', 'physical_product', '1.0', 0, 'active', 'product'),
(64, '29', 25, 14, 7, '2023-05-11 16:46:04', 'Eggs', 'fresh eggs', 'eggs-1', 'egg2.jpg', 'egg4.jpg', 'egg6.jpg', 54, 50, 'Protein rich eggs', '', '', 'eggs fresh best', 'Good Quality', 'physical_product', '1.0', 0, 'trash', 'product'),
(65, '29', 21, 12, 7, '2023-05-11 16:46:41', 'Cotton', 'best cotton of india', 'cotton-2', 'cotton5.jpg', 'cotton14.jpg', 'cotton4.jpg', 35, 27, 'Best cotton at a very cheap and affordable price', 'The cotton can be used for a long time period', '', 'cotton nice low price', 'Assured', 'physical_product', '1.0', 0, 'active', 'product'),
(66, '29', 20, 12, 7, '2023-05-12 05:42:43', 'Wheat', 'good quality wheat', 'wheat-3', 'wheat7.jpg', 'wheat13.jpg', 'wheat16.jpg', 54, 53, 'Wheat that is the best', '', '', 'best quality, low price', 'Best Seller', 'physical_product', '1.0', 1, 'pending', 'product'),
(67, '29', 21, 12, 7, '2023-05-11 16:52:40', 'Groundnut', 'Good and fine nuts', 'gn-2', 'gn7.jpg', 'gn6.jpg', 'gn4.jpg', 54, 51, 'Groundnut that tastes best when roated. The sweetest seeds.', '', '', 'best quality, low price', 'Best Seller', 'physical_product', '1.0', 0, 'active', 'product'),
(68, '28', 17, 13, 7, '2023-06-27 15:51:31', 'Grapes', 'sweet grapes green', 'grapes-1', 'grapes1.jpg', 'grapes2.jpg', 'grapes3.jpg', 60, 57, 'Farm Fresh grapes ', 'Grapes can be eaten upto 7 days after buying ', '', 'fresh grapes good', 'Good Quality', 'physical_product', '1.0', 1, 'active', 'product'),
(69, '28', 17, 13, 7, '2023-06-28 05:50:24', 'Banana', 'Sweet ripe bananas', 'banana-1', 'banana.jpg', 'banana2.jpg', 'banana3.jpg', 70, 57, 'Sweet ripe bananas helps improve bone strength', 'Rich in nutrients and helps improve digestion and heart helath', '', 'ripe bananas', 'Assured', 'physical_product', '1.0', 1, 'active', 'product'),
(70, '28', 22, 12, 7, '2023-05-12 04:24:45', 'Gram', 'Protein rich', 'gram-1', 'gram.jpg', 'gram2.jpg', 'gram3.jpg', 60, 55, 'Gram that is  rich in essential vitamins, fibre and helps in improving digestion. It has a high content of protein and offers a variety of health benefits.', '', '', 'good quality gram protein', 'Assured', 'physical_product', '1.0', 3, 'active', 'product'),
(71, '28', 22, 12, 7, '2023-05-12 03:47:42', 'Chana Dal', 'Best quality chana dal', 'cdal-1', 'cdal1.jpg', 'cdal5.jpg', 'cdal3.jpg', 50, 48, 'Chana dal that is the best for your health', '', '', 'best quality, low price', 'Best Seller', 'physical_product', '1.0', 0, 'active', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `products_stock`
--

CREATE TABLE `products_stock` (
  `stock_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `stock_status` text NOT NULL,
  `enable_stock` text NOT NULL,
  `stock_quantity` text NOT NULL,
  `allow_backorders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products_stock`
--

INSERT INTO `products_stock` (`stock_id`, `product_id`, `variation_id`, `stock_status`, `enable_stock`, `stock_quantity`, `allow_backorders`) VALUES
(213, 51, 0, 'instock', 'yes', '55', 'no'),
(214, 52, 0, 'instock', 'yes', '25', 'no'),
(215, 53, 0, 'instock', 'yes', '80', 'notify'),
(216, 54, 0, 'instock', 'yes', '30', 'notify'),
(217, 55, 0, 'instock', 'no', '0', 'no'),
(218, 56, 0, 'instock', 'yes', '141', 'yes'),
(219, 57, 0, 'instock', 'yes', '92', 'no'),
(220, 58, 0, 'instock', 'yes', '22', 'notify'),
(221, 59, 0, 'instock', 'yes', '20', 'no'),
(222, 60, 0, 'instock', 'yes', '67', 'notify'),
(223, 61, 0, 'instock', 'yes', '110', 'yes'),
(224, 62, 0, 'instock', 'yes', '45', 'no'),
(225, 63, 0, 'instock', 'yes', '30', 'notify'),
(226, 64, 0, 'instock', 'yes', '45', 'no'),
(227, 65, 0, 'instock', 'yes', '370', 'notify'),
(228, 66, 0, 'instock', 'no', '0', 'no'),
(229, 67, 0, 'instock', 'yes', '40', 'no'),
(230, 68, 0, 'instock', 'yes', '50', 'no'),
(231, 69, 0, 'instock', 'no', '0', 'no'),
(232, 70, 0, 'instock', 'yes', '84', 'yes'),
(233, 71, 0, 'instock', 'no', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `attribute_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `attribute_name` text NOT NULL,
  `attribute_values` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(12, 'Leafy green vegetables', 'yes', 'leafyv.jpg'),
(13, 'Root vegetables', 'yes', 'roootv.jpg'),
(14, 'Onion and Garlic', 'yes', 'onionag.jpg'),
(15, 'Apples and Pears', 'yes', 'appleap.jpg'),
(16, 'Citrus Fruits', 'yes', 'citrusf.jpg'),
(17, 'Tropical Fruits', 'no', 'tropical.jpg'),
(18, 'Berries', 'no', 'berries.jpg'),
(19, 'Melons', 'no', 'melons.jpg'),
(20, 'Whole Grains', 'yes', 'cerelas.jpg'),
(21, 'Oil Seeds', 'no', 'oilseeds.jpg'),
(22, 'Pulses', 'yes', 'pulses.jpg'),
(23, 'Red Meat', 'no', 'redmeat.jpg'),
(24, 'Fish', 'no', 'fish.jpg'),
(25, 'Eggs', 'no', 'eggs.jpg'),
(26, 'Dairy Products', 'yes', 'dairyp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `variation_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(10) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `review_title` text NOT NULL,
  `review_rating` int(10) NOT NULL,
  `review_content` text NOT NULL,
  `review_date` text NOT NULL,
  `review_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `review_title`, `review_rating`, `review_content`, `review_date`, `review_status`) VALUES
(55, 22, 56, 'Nice Product', 4, 'Wheat quality is nice and rich', 'April 23, 2023', 'active'),
(56, 21, 56, 'Good Product', 3, 'Wheat was fine but the packaging was not good', 'April 24, 2023', 'spam'),
(57, 26, 58, 'Nice Product', 4, 'xfsdgdefg', 'April 24, 2023', 'active'),
(58, 21, 53, 'Nice Product', 3, 'Rice where not too old. seemed little fresh', 'May 11, 2023', 'active'),
(59, 23, 62, 'Good Product', 5, 'The milk quality was really good', 'May 11, 2023', 'active'),
(60, 23, 70, 'Liked Product', 4, 'This is a very good product. The quality of gram is very nice', 'May 12, 2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_meta`
--

CREATE TABLE `reviews_meta` (
  `meta_id` int(10) NOT NULL,
  `review_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(7, 'Amul Dairy', 'blog1.jpg', '\r\nGCMMF, which sells dairy products under the Amul brand, is expecting 20 per cent growth in its revenue this fiscal to around Rs 66,000 crore on rising demand, its MD Jayen Mehta said. Gujarat Co-operative Milk Marketing Federation Ltd (GCMMF) registered a turnover of Rs 55,055 crore in 2022-23, up 18.5 per cent from the previous year.\r\n\r\nIn an interview with PTI, the GCMMF MD (in charge) said it had clocked a strong growth in revenue last fiscal, as demand for branded dairy products rose si ..\r\n\r\nRead more at:\r\nhttps://economictimes.indiatimes.com/industry/cons-products/food/amul-expects-20-pc-revenue-growth-to-rs-66000-cr-in-fy24-currently-no-plans-to-hike-milk-prices/articleshow/99357325.cms?utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst\r\n\r\n', 'View more', 'https://economictimes.indiatimes.com/industry/cons-products/food/amul-expects-20-pc-revenue-growth-to-rs-66000-cr-in-fy24-currently-no-plans-to-hike-milk-prices/articleshow/99357325.cms');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `shipping_type` int(10) NOT NULL,
  `shipping_zone` int(10) NOT NULL,
  `shipping_country` int(10) NOT NULL,
  `shipping_weight` decimal(10,1) NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_type`, `shipping_zone`, `shipping_country`, `shipping_weight`, `shipping_cost`) VALUES
(178, 19, 14, 0, '10.0', '100.0'),
(179, 20, 15, 0, '10.0', '0.0'),
(182, 20, 17, 0, '5.0', '0.0'),
(183, 20, 17, 0, '50.0', '100.0'),
(184, 20, 17, 0, '100.0', '250.0'),
(187, 22, 15, 0, '5.0', '0.0'),
(188, 22, 15, 0, '20.0', '30.0'),
(189, 22, 15, 0, '50.0', '100.0'),
(190, 22, 17, 0, '5.0', '0.0'),
(191, 22, 17, 0, '20.0', '40.0'),
(192, 22, 17, 0, '50.0', '150.0'),
(193, 20, 15, 0, '30.0', '20.0'),
(194, 20, 15, 0, '50.0', '50.0'),
(195, 23, 18, 0, '3.0', '0.0'),
(196, 23, 18, 0, '10.0', '20.0'),
(197, 23, 18, 0, '30.0', '50.0'),
(198, 23, 18, 0, '100.0', '100.0'),
(199, 23, 19, 0, '5.0', '20.0'),
(200, 23, 19, 0, '20.0', '50.0'),
(201, 23, 19, 0, '50.0', '70.0'),
(202, 20, 15, 0, '100.0', '500.0'),
(203, 26, 20, 0, '5.0', '20.0'),
(204, 26, 20, 0, '10.0', '30.0'),
(205, 27, 20, 0, '5.0', '100.0'),
(206, 27, 20, 0, '10.0', '500.0'),
(207, 28, 21, 0, '5.0', '0.0'),
(208, 28, 21, 0, '10.0', '20.0'),
(209, 28, 21, 0, '20.0', '30.0'),
(213, 29, 21, 0, '5.0', '20.0'),
(214, 29, 21, 0, '10.0', '40.0'),
(215, 29, 21, 0, '20.0', '60.0');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_type`
--

CREATE TABLE `shipping_type` (
  `type_id` int(11) NOT NULL,
  `vendor_id` text NOT NULL,
  `type_name` text NOT NULL,
  `type_order` int(11) NOT NULL,
  `type_default` varchar(255) NOT NULL,
  `type_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shipping_type`
--

INSERT INTO `shipping_type` (`type_id`, `vendor_id`, `type_name`, `type_order`, `type_default`, `type_local`) VALUES
(19, 'admin_11', 'Demo', 4, 'yes', 'yes'),
(20, '26', 'Simple', 1, 'yes', 'yes'),
(21, '26', 'Simple', 1, 'yes', 'no'),
(22, '26', 'Fast Delivery', 3, 'no', 'yes'),
(23, '27', 'Simple', 2, 'no', 'yes'),
(25, '27', 'Fast Delivery', 5, 'yes', 'yes'),
(26, '29', 'Simple', 1, 'yes', 'yes'),
(27, '29', 'Fast Delivery', 2, 'yes', 'yes'),
(28, '28', 'Simple', 1, 'yes', 'yes'),
(29, '28', 'Fast Delivery', 2, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(8, 'slide 1 ', 'img1.jpg', 'localhost:8080/ecom/'),
(9, 'slide 2', 'img2.jpg', 'localhost:8080/ecom/'),
(10, 'slide 3 ', 'img3.jpg', 'localhost:8080/ecom/'),
(11, 'slide 4', 'img4.jpg', 'localhost:8080/ecom/');

-- --------------------------------------------------------

--
-- Table structure for table `store_settings`
--

CREATE TABLE `store_settings` (
  `settings_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `store_cover_image` text NOT NULL,
  `store_profile_image` text NOT NULL,
  `store_name` text NOT NULL,
  `store_country` text NOT NULL,
  `store_address_1` text NOT NULL,
  `store_address_2` text NOT NULL,
  `store_state` text NOT NULL,
  `store_city` text NOT NULL,
  `store_postcode` text NOT NULL,
  `paypal_email` text NOT NULL,
  `phone_no` text NOT NULL,
  `store_email` text NOT NULL,
  `seo_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`settings_id`, `vendor_id`, `store_cover_image`, `store_profile_image`, `store_name`, `store_country`, `store_address_1`, `store_address_2`, `store_state`, `store_city`, `store_postcode`, `paypal_email`, `phone_no`, `store_email`, `seo_title`, `meta_author`, `meta_description`, `meta_keywords`) VALUES
(4, '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '26', 'banner.jpg', 'pic01.jpg', 'Govind Stores', '1', 'Vikas Gruh , Jamnagar', 'Patel colony , Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'rahul@gmail.com', '4444444444', 'yes', 'Govind Stores', 'Rahul', 'A shop for farm products', 'offline stores for farm essentials'),
(6, '27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'admin_11', 'logo.png', 'empty-image.png', 'Agromarket', '1', 'Patel colony, Jamnagar', 'Swaminarayannagar , Jamnagar', 'Gujarat', 'Jamnagar', '361008', 'khushiruparelia2004@gmail.com', '7041892332', 'yes', 'agromarket', 'admin', 'best farm products', 'farm fresh');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `sub_id` int(10) NOT NULL,
  `sub_email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`sub_id`, `sub_email`) VALUES
(3, 'khushiruparelia2004@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(4, 'Payment Terms', 'payment-term', 'There are some of the Payment Terms of our site.'),
(5, 'Shipping Terms ', 'ship-term', 'The Shipping of products is available on the basis of the shipping area provided by the vendors.');

-- --------------------------------------------------------

--
-- Table structure for table `variations_meta`
--

CREATE TABLE `variations_meta` (
  `meta_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_accounts`
--

CREATE TABLE `vendor_accounts` (
  `account_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `current_balance` decimal(10,1) NOT NULL,
  `pending_clearance` decimal(10,1) NOT NULL,
  `withdrawals` decimal(10,1) NOT NULL,
  `month_earnings` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_accounts`
--

INSERT INTO `vendor_accounts` (`account_id`, `vendor_id`, `current_balance`, `pending_clearance`, `withdrawals`, `month_earnings`) VALUES
(2, 20, '0.0', '0.0', '0.0', '0.0'),
(3, 26, '1103.0', '162.5', '0.0', '1265.5'),
(4, 27, '589.1', '-182.4', '0.0', '406.7'),
(5, 28, '0.0', '333.5', '0.0', '333.5'),
(6, 29, '399.3', '0.0', '0.0', '399.3');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_commissions`
--

CREATE TABLE `vendor_commissions` (
  `commission_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `commission_paid_date` text NOT NULL,
  `commission_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_commissions`
--

INSERT INTO `vendor_commissions` (`commission_id`, `vendor_id`, `order_id`, `commission_paid_date`, `commission_status`) VALUES
(13, 27, 5, 'April 26, 2023 03:52:57', 'cleared'),
(14, 27, 7, 'April 27, 2023 04:00:34', 'cleared'),
(15, 27, 9, 'April 27, 2023 08:16:46', 'cleared'),
(16, 26, 4, 'May 14, 2023 04:11:19', 'pending'),
(17, 26, 10, 'May 14, 2023 04:12:18', 'cleared'),
(18, 29, 11, 'May 14, 2023 04:22:14', 'cleared'),
(19, 28, 12, 'May 15, 2023 04:22:27', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `net_amount` decimal(10,1) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `order_id`, `vendor_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `order_total`, `net_amount`, `order_status`) VALUES
(4, 2, '26', 1805945214, 'Above 10', '0.0', '171.0', '162.5', 'completed'),
(5, 3, '27', 122341555, 'Simple', '20.0', '270.0', '237.5', 'completed'),
(6, 4, '27', 1073310390, '', '0.0', '160.0', '152.0', 'pending'),
(7, 5, '27', 548550634, 'Simple', '20.0', '220.0', '190.0', 'completed'),
(8, 6, '27', 142031785, '', '0.0', '192.0', '182.4', 'cancelled'),
(9, 7, '27', 708444913, '', '0.0', '128.0', '121.6', 'completed'),
(10, 8, '26', 307513063, 'Simple', '20.0', '1160.0', '1083.0', 'completed'),
(11, 9, '29', 1260089311, 'Fast Delivery', '100.0', '415.0', '299.3', 'completed'),
(12, 10, '28', 2013414326, 'Simple', '20.0', '350.0', '313.5', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdraws`
--

CREATE TABLE `vendor_withdraws` (
  `withdraw_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `method` text NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(24, 20, 51),
(25, 21, 53),
(26, 26, 54),
(27, 22, 58);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_meta`
--

CREATE TABLE `wishlist_meta` (
  `meta_id` int(10) NOT NULL,
  `wishlist_id` int(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `zone_name` text NOT NULL,
  `zone_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `vendor_id`, `zone_name`, `zone_order`) VALUES
(14, 'admin_11', 'Jamnagar', 1),
(15, '26', 'Jamnagar', 1),
(16, 'admin_11', 'Rajkot', 2),
(17, '26', 'Rajkot', 2),
(18, '27', 'Jamnagar', 1),
(19, '27', 'Rajkot', 2),
(20, '29', 'Jamnagar', 1),
(21, '28', 'Jamnagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zones_locations`
--

CREATE TABLE `zones_locations` (
  `location_id` int(10) NOT NULL,
  `zone_id` int(10) NOT NULL,
  `location_code` text NOT NULL,
  `location_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `zones_locations`
--

INSERT INTO `zones_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(134, 14, '1', 'country'),
(135, 14, '361008', 'postcode'),
(136, 15, '1', 'country'),
(137, 15, '361008', 'postcode'),
(138, 15, '361004', 'postcode'),
(139, 16, '1', 'country'),
(140, 16, '3587458', 'postcode'),
(141, 16, '3454584', 'postcode'),
(142, 17, '1', 'country'),
(143, 17, '361005', 'postcode'),
(144, 17, '361006', 'postcode'),
(145, 18, '1', 'country'),
(146, 18, '361008', 'postcode'),
(147, 18, '361006', 'postcode'),
(148, 19, '1', 'country'),
(149, 19, '361004', 'postcode'),
(150, 19, '361005', 'postcode'),
(151, 20, '1', 'country'),
(152, 20, '246', 'country'),
(153, 20, '247', 'country'),
(154, 20, '361008', 'postcode'),
(155, 20, '361004', 'postcode'),
(156, 20, '438427', 'postcode'),
(157, 20, '345892', 'postcode'),
(158, 21, '1', 'country'),
(159, 21, '246', 'country'),
(160, 21, '361008', 'postcode'),
(161, 21, '361004', 'postcode'),
(162, 21, '347839', 'postcode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_meta`
--
ALTER TABLE `cart_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_address`
--
ALTER TABLE `customers_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `customers_history`
--
ALTER TABLE `customers_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  ADD PRIMARY KEY (`hide_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `orders_notes`
--
ALTER TABLE `orders_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_stock`
--
ALTER TABLE `products_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`variation_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_type`
--
ALTER TABLE `shipping_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `store_settings`
--
ALTER TABLE `store_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `variations_meta`
--
ALTER TABLE `variations_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  ADD PRIMARY KEY (`commission_id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zones_locations`
--
ALTER TABLE `zones_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cart_meta`
--
ALTER TABLE `cart_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customers_address`
--
ALTER TABLE `customers_address`
  MODIFY `address_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers_history`
--
ALTER TABLE `customers_history`
  MODIFY `history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  MODIFY `hide_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  MODIFY `address_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_notes`
--
ALTER TABLE `orders_notes`
  MODIFY `note_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `products_stock`
--
ALTER TABLE `products_stock`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `attribute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `variation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `shipping_type`
--
ALTER TABLE `shipping_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store_settings`
--
ALTER TABLE `store_settings`
  MODIFY `settings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `variations_meta`
--
ALTER TABLE `variations_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1287;

--
-- AUTO_INCREMENT for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  MODIFY `commission_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  MODIFY `withdraw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `zones_locations`
--
ALTER TABLE `zones_locations`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
