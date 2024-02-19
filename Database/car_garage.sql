-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 06:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ImageID` int(11) NOT NULL,
  `ImageURL` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `KM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ImageID`, `ImageURL`, `Name`, `Price`, `Model`, `KM`) VALUES
(4, 'https://platform.cstatic-images.com/medium/in/v2/stock_photos/00e283ab-0888-4235-82dc-38c19f06cf7a/e1550790-bac6-4d6e-b1e4-a8836226fa3b.png', '', 13444.00, '2010', 5000),
(5, 'https://platform.cstatic-images.com/medium/in/v2/stock_photos/1f188042-cb21-4d12-b0c2-c9bf796fcb2e/500161f1-c5b0-4e05-acc4-ea64d0029cf5.png', '', 78999.00, '2022', 900),
(6, 'https://platform.cstatic-images.com/medium/in/v2/stock_photos/e7617927-768f-46c2-9fdb-0ddd20ab374d/9595100a-30ce-4857-ad15-f0f8d2d2c3d0.png', '', 5600.00, '2023', 1500),
(7, 'https://platform.cstatic-images.com/medium/in/v2/stock_photos/b7cbb75b-d878-4260-9cf1-82e6c94629e2/4a5d8226-7e18-4657-a339-24de4d23e0ac.png', '', 8999.00, '2023', 980),
(8, 'https://platform.cstatic-images.com/medium/in/v2/stock_photos/c7cebe61-27c0-4b89-a820-fe0b24766572/1c51062e-c1cc-498c-9de6-3c4e235c6fa7.png', '', 9000.00, '2023', 900),
(9, 'https://platform.cstatic-images.com/medium/in/v2/stock_photos/7e300871-2767-4a99-8644-d45bf4e3b59e/ead84a8d-1185-4327-a41c-58fac073687a.png', '', 7000.00, '2023', 980);

-- --------------------------------------------------------

--
-- Table structure for table `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` int(11) NOT NULL,
  `day` varchar(10) NOT NULL,
  `hours` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `day`, `hours`) VALUES
(1, 'Mon', '8:45 - 12:00, 14:00 - 18:00'),
(2, 'Tue', '8:45 - 12:00, 14:00 - 18:00'),
(3, 'Wed', '8:45 - 12:00, 14:00 - 18:00'),
(4, 'Thur', '8:45 - 12:00, 14:00 - 18:00'),
(5, 'Fri', '8:45 - 12:00, 14:00 - 18:00'),
(6, 'Sat', '08:00 - 14:00'),
(7, 'Sun', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `image_path`) VALUES
(38, 'Engine Inspection', 'https://images.unsplash.com/photo-1486262715619-67b85e0b08d3?q=80&amp;w=1932&amp;auto=format&amp;fit=crop&amp;ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
(39, 'Car Diagnotice', 'https://images.unsplash.com/photo-1517026575980-3e1e2dedeab4?w=600&amp;auto=format&amp;fit=crop&amp;q=60&amp;ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2FyJTIwRGlhZ25vc3RpYyUyMFNlcnZpY2VzfGVufDB8fDB8fHww'),
(40, 'Engine Manteniance', 'https://plus.unsplash.com/premium_photo-1682141708282-3a4f7023e1bb?w=600&amp;auto=format&amp;fit=crop&amp;q=60&amp;ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyJTIwTWFpbnRlbmFuY2V8ZW58MHx8MHx8fDA%3D'),
(41, 'Car Tyre Service', 'https://plus.unsplash.com/premium_photo-1663040170005-2c302347d703?w=600&amp;auto=format&amp;fit=crop&amp;q=60&amp;ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyJTIwdHlyZSUyMHNlcnZpY2V8ZW58MHx8MHx8fDA%3D'),
(42, 'Car Polish Service', 'https://plus.unsplash.com/premium_photo-1663036887804-4125d57b8b65?w=600&amp;auto=format&amp;fit=crop&amp;q=60&amp;ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2FyJTIwcG9saXNoJTIwc2VydmljZXxlbnwwfHwwfHx8MA%3D%3D'),
(44, 'Car Computer Service', 'https://plus.unsplash.com/premium_photo-1676998430282-cab24c39f797?w=600&amp;auto=format&amp;fit=crop&amp;q=60&amp;ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGNhciUyMHNlcnZpY2V8ZW58MHx8MHx8fDA%3D');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `Phone_number` int(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `first_name`, `last_name`, `email`, `address`, `Phone_number`, `message`, `created_at`) VALUES
(5, 'saqib', 'waheed', 'saqibbriefcase@gmail.com', 'laskjakb', 987654, 'klnkjnbabasnas', '2024-01-20 08:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_credentials`
--

CREATE TABLE `user_credentials` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_credentials`
--

INSERT INTO `user_credentials` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 'administrator'),
(2, 'employee', '213', 'employee'),
(3, 'Semanche', '213', 'employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ImageID`);

--
-- Indexes for table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_credentials`
--
ALTER TABLE `user_credentials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_credentials`
--
ALTER TABLE `user_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `catagory` (`ImageID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
