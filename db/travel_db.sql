-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2020 at 07:24 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL,
  `deletedBy` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `title`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 'Travel Planning', NULL, 'admin', ''),
(2, 'Destination', NULL, 'khalid', ''),
(3, 'Travel Experience ', NULL, '', ''),
(4, 'Family Travel', NULL, '', ''),
(5, 'City Guides', NULL, '', ''),
(6, 'Museum', NULL, NULL, NULL),
(7, 'Akagera National Park Nyungwe', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `hotel_desc` text,
  `owner` varchar(50) DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `title`, `addedBy`, `location`, `image`, `hotel_desc`, `owner`, `addedOn`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(11, 'Mariot Hotel Rwanda', 'admin', 'Kigali Rwanda', 'dist/img/fb25108cbc149888f08439b3981ab4fbkglmc-exterior-0030-hor-feat.jpg', 'Awesome Hotel it has everything you need', 'test', '2020-12-08 10:53:54', NULL, 'admin', NULL),
(12, 'Radison Blue', 'admin', 'KIgali, Rwanda', 'dist/img/aed37b8507ef58d861d1f7aa29fa9035radison.jpg', 'nice hotel', 'solange', '2020-12-08 16:26:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_enquiry`
--

CREATE TABLE `hotel_enquiry` (
  `enquiry_id` int NOT NULL,
  `hotel_id` int DEFAULT NULL,
  `room_type_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `total_room` int DEFAULT NULL,
  `child` int DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `message` text,
  `count` int DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `hotel_enquiry`
--

INSERT INTO `hotel_enquiry` (`enquiry_id`, `hotel_id`, `room_type_id`, `name`, `email`, `phone`, `checkin`, `checkout`, `total_room`, `child`, `adult`, `message`, `count`, `addedBy`, `deletedAt`) VALUES
(38, 11, 21, 'MUNEZA ', 'muneza@gmail.com', '0784638201', '2020-12-08', '2020-12-25', 3, 2, 2, 'Twagiye rero mucyumba', 3, 'test', '2020-12-08 14:40:36'),
(39, 11, 21, 'MUNEZA ', 'muneza@gmail.com', '0784638201', '2020-12-08', '2020-12-25', 3, 2, 2, 'Twagiye rero mucyumba', 3, 'test', NULL),
(40, 11, 21, 'MUNEZA ', 'muneza@gmail.com', '0784638201', '2020-12-08', '2020-12-25', 3, 2, 2, 'Twagiye rero mucyumba', 3, 'test', NULL),
(41, 12, 24, 'KANYANGE Delphine', 'kanya@gmail.com', '0785196634', '2020-12-09', '2020-12-24', 5, 4, 1, 'Twimakire mucyumba', 5, 'solange', NULL),
(42, 12, 24, 'KANYANGE Delphine', 'kanya@gmail.com', '0785196634', '2020-12-09', '2020-12-24', 5, 4, 1, 'Twimakire mucyumba', 5, 'solange', NULL),
(43, 12, 24, 'KANYANGE Delphine', 'kanya@gmail.com', '0784560395', '2020-12-09', '2020-12-24', 5, 4, 1, 'Twimakire mucyumba', 5, 'solange', NULL),
(44, 12, 24, 'KANYANGE Delphine', 'kanya@gmail.com', '0784560395', '2020-12-09', '2020-12-24', 5, 4, 1, 'Twimakire mucyumba', 5, 'solange', NULL),
(45, 12, 24, 'KANYANGE Delphine', 'kanya@gmail.com', '0784560395', '2020-12-09', '2020-12-24', 5, 4, 1, 'Twimakire mucyumba', 5, 'solange', NULL),
(46, 12, 24, 'KANYANGE Delphine', 'kanya@gmail.com', '0784560395', '2020-12-09', '2020-12-24', 5, 4, 1, 'Twimakire mucyumba', 5, 'solange', NULL),
(47, 12, 24, 'KANYANGE Delphine', 'delphine@gmail.com', '0784638201', '2020-12-22', '2020-12-25', 2, 1, 1, 'sawa sawa', 2, 'solange', NULL),
(48, 12, 24, 'KANYANGE Delphine', 'delphine@gmail.com', '0784638201', '2020-12-22', '2020-12-25', 2, 1, 1, 'sawa sawa', 2, 'solange', NULL),
(49, 12, 24, 'KANYANGE Delphine', 'delphine@gmail.com', '0784638201', '2020-12-22', '2020-12-25', 2, 1, 1, 'sawa sawa', 2, 'solange', NULL),
(50, 11, 22, 'NSENGIMANA Jean Pierre', 'pierre@gmail.com', '0784560395', '2020-12-10', '2020-12-26', 2, 1, 1, 'Icyumba cya peter', 2, 'solange', NULL),
(51, 11, 22, 'NSENGIMANA Jean Pierre', 'pierre@gmail.com', '0785196634', '2020-12-10', '2020-12-26', 2, 1, 1, 'Icyumba cya peter', 2, 'solange', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `title` text,
  `description` text,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `last_modified` varchar(50) CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `cat_id`, `title`, `description`, `addedBy`, `deletedAt`, `image`, `last_modified`, `deletedBy`) VALUES
(7, 2, 'kigali tour', '<p>&nbsp;</p>\r\n<p><strong><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">NICE TOUR TO TRAVEL</span></strong></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tortor eu massa pharetra ultrices. Aenean molestie non ex id cursus. Integer dictum lacus molestie dictum rhoncus. Nam a porttitor orci, quis auctor ante. Pellentesque eleifend sed mauris nec sollicitudin. Suspendisse dignissim, erat ut facilisis blandit, nisi felis posuere urna, a bibendum eros ligula at metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam imperdiet sapien ut arcu venenatis viverra. Nullam sed ultrices mauris. Pellentesque in quam id dui fringilla feugiat eget a massa. Quisque eu mattis nisl, laoreet auctor dolor. Nulla in facilisis felis, in sodales velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dui nunc, maximus vitae nisi in, sodales volutpat nisl.</span></p>', 'test', NULL, 'dist/img/de61f41049a9937eac7de030f42ccd1b96870841.jpg', 'test', NULL),
(8, 6, 'Interested InVisiting Rwanda', '<p>Visit RWANDA</p>', 'admin', NULL, 'dist/img/6a4ab8091028dcaf92e330f7a23f048bfile-20180528-80658-35bz8h.png', NULL, NULL),
(9, 7, 'Visit Gorilla', '<p>dfzgdgsadgsdfgasgsdadsaddgsdga</p>', 'delphine', NULL, 'dist/img/636f330309b0454015584d376f5cfccfingagi.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int NOT NULL,
  `hotel_id` int DEFAULT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `room_desc` text,
  `price` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `available` int DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `hotel_id`, `room_name`, `room_desc`, `price`, `image`, `capacity`, `available`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(21, 11, 'Single', 'IT HAS\r\n1.Wifi\r\n2.BreakFAST', 8500, 'dist/img/651936c558ac96d09c4c4a8c0ef7b6fb96870841.jpg', 5, 2, NULL, 'admin', NULL),
(22, 11, 'Double', 'Awesome Room', 84000, 'dist/img/cd279231be59550e11039ac49fdcecdalaxah-guestroom-9238-hor-clsc.jpg', 8, 6, NULL, 'admin', NULL),
(23, 11, 'Triple', 'yuyuyuiiyi', 1500, 'dist/img/33699b557b667d56da1ecf621784b66ammmm.jpg', 25, 25, NULL, NULL, NULL),
(24, 12, 'Single', 'COFEE,BREAKFAST', 5000, 'dist/img/b51e6c9784b591b8e055a3f7c4678e72radisonR.jpg', 20, 14, NULL, NULL, NULL),
(25, 12, 'Double', 'double double', 140000, 'dist/img/35e68c3ef85804c7219970b16debdc67doubleroom.jpg', 30, 30, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `tour_id` int NOT NULL,
  `title` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `days` int DEFAULT NULL,
  `location` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text,
  `image` varchar(200) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `available` int DEFAULT NULL,
  `owner` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedBy` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `deletedBy` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`tour_id`, `title`, `price`, `days`, `location`, `description`, `image`, `capacity`, `available`, `owner`, `addedOn`, `addedBy`, `deletedAt`, `last_modified`, `status`, `deletedBy`) VALUES
(12, 'dsfsd', 45000, 5, 'fsdfs', '<p>sdfsdfsdfdfsdfsfs</p>', 'dist/img/692a318ee212a0279846d9bf077c8cafNyungwe.jpg', 120, NULL, NULL, '2020-12-08 11:35:15', 'admin', '2020-12-08 12:10:33', NULL, NULL, 'admin'),
(13, 'Nyungwe Canopy Walk', 45000, 3, 'Nyamagabe', '<p>Nice Travelling</p>', 'dist/img/c924f921f58375ed41c08cf7bf2e6c75unnamed.png', 100, -4, 'test', '2020-12-08 12:15:15', 'admin', NULL, 'test', NULL, NULL),
(14, 'Gisenyi Beatch', 150, 3, 'Gisenyi Rubavu', '<p>Awesome Place to visit</p>', 'dist/img/5a83d883bcb37fb6f4019758c247fe15891101_37949076.png', 50, NULL, 'test', '2020-12-08 12:59:08', 'admin', NULL, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_enquiry`
--

CREATE TABLE `tour_enquiry` (
  `enquiry_id` int NOT NULL,
  `tour_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `days` int DEFAULT NULL,
  `child` int DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `message` text,
  `status` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) NOT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tour_enquiry`
--

INSERT INTO `tour_enquiry` (`enquiry_id`, `tour_id`, `name`, `email`, `phone`, `days`, `child`, `adult`, `message`, `status`, `payment_method`, `addedBy`, `deletedAt`) VALUES
(21, 13, 'Munyana Jessica', 'munyana@gmail.com', '0784638201', 3, 2, 2, 'Sawa twagiye', 'confirmed', 'Master-Card', 'test', NULL),
(22, 13, 'Munyana Jessica', 'munyana@gmail.com', '0784638201', 3, 2, 2, 'Sawa twagiye', 'confirmed', 'Master-Card', 'test', NULL),
(23, 13, 'Munyana Jessica', 'munyana@gmail.com', '0784638201', 3, 2, 2, 'Sawa twagiye', 'confirmed', 'Master-Card', 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `deletedBy` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `name`, `password`, `email`, `phone`, `user_role`, `image`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
('admin', 'admin', 'admin', 'admin@gmail.com', '0784632500', 'Admin', NULL, NULL, NULL, NULL),
('delphine', 'KANYANGE Delphine', '01234', 'kanya@gmail.com', '0785196634', 'Subscriber', 'dist/img/55e6f3cce28cabe0ac9edc20e393da39aisha-uwase.jpg', NULL, NULL, NULL),
('muhoza', 'Muhoza Solange', '123456789', 'muhoza@gmail.com', '07846325981', 'Owner', 'dist/img/934a1cf0ed0e4040c9375132f2fa7662unnamed.png', NULL, NULL, NULL),
('solange', 'UWERA Solange', '123456', 'solange@gmail.com', '0785196634', 'Owner', 'dist/img/9d90fc553d52de8663b34263921cf6ceunnamed.png', NULL, NULL, NULL),
('test', 'CARINA UWERA', '123456789', 'rigorene120@gmail.com', '0784638201', 'Owner', 'dist/img/9d81378734c3d6c847784260443c374baisha-uwase.jpg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `hotels_users_username_fk` (`addedBy`);

--
-- Indexes for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `hotel-enquiry_hotels_hotel_id_fk` (`hotel_id`),
  ADD KEY `hotel-enquiry_room_type_room_type_id_fk` (`room_type_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_categories_cat_id_fk` (`cat_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`),
  ADD KEY `room_type_hotels_hotel_id_fk` (`hotel_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`),
  ADD KEY `tours_users_username_fk` (`addedBy`);

--
-- Indexes for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `tour_enquiry_tours_tour_id_fk` (`tour_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  MODIFY `enquiry_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  MODIFY `enquiry_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  ADD CONSTRAINT `hotel-enquiry_hotels_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `hotel-enquiry_room_type_room_type_id_fk` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categories_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_hotels_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`);

--
-- Constraints for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  ADD CONSTRAINT `tour_enquiry_tours_tour_id_fk` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
