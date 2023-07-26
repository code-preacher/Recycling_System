-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 09:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recycle`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(30) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `reciever` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender`, `reciever`, `message`, `status`, `date_created`) VALUES
(1, '1', 'admin', 'It&#039;s taking long for my waste to be disposed', 0, '2021-10-22 06:22:46'),
(2, 'admin', '1', 'your payment is yet to be confirmed, please do bear a while', 0, '2021-10-22 06:25:07'),
(3, '2', 'admin', 'hello admin', 1, '2022-08-19 19:31:39'),
(4, 'admin', '2', 'hi, how are you doing', 1, '2022-08-19 19:32:14'),
(5, '2', 'admin', 'Waste hasnt been disposed since three days now', 1, '2022-08-19 19:39:04'),
(6, 'admin', '2', 'sorry about that, we will reach out to you soonest', 1, '2022-08-19 19:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `name` varchar(300) NOT NULL,
  `date_created` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `date_created`) VALUES
(1, 'Wurukum', '03-09-21 @ 10:40 AM'),
(2, 'high-level', '03-09-21 @ 10:45 AM');

-- --------------------------------------------------------

--
-- Table structure for table `location_charge`
--

CREATE TABLE `location_charge` (
  `id` int(30) NOT NULL,
  `location_id` int(30) NOT NULL,
  `waste_type` varchar(200) NOT NULL,
  `charge` int(30) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_charge`
--

INSERT INTO `location_charge` (`id`, `location_id`, `waste_type`, `charge`, `date_created`) VALUES
(1, 2, 'POLYTENE BAG', 4000, '2021-09-04 22:46:15'),
(2, 1, 'WASTE BOX (BIG PACK)', 20000, '2021-09-04 22:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `role`, `date_created`) VALUES
(1, 'Blessing Malachi', 'a@a.com', '123456', 1, '2021-09-06 09:41:40'),
(2, 'Hope', 'h@h.com', '123456', 3, '2021-10-22 07:17:58'),
(3, 'Davi Petty', 'd@d.com', '123456', 3, '2022-08-19 20:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_created` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `address`, `gender`, `phone`, `email`, `password`, `date_created`) VALUES
(1, 'Hope', 'London', 'female', '08136473738', 'h@h.com', '123456', '22-10-21 @ 8:17 AM'),
(2, 'Davi Petty', 'Texas,London', 'male', '08136473738', 'd@d.com', '123456', '19-08-22 @ 9:31 PM');

-- --------------------------------------------------------

--
-- Table structure for table `waste_info`
--

CREATE TABLE `waste_info` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `location_id` int(30) NOT NULL,
  `location_charge_id` int(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `payment_ref` varchar(200) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `delivery_status` int(10) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waste_info`
--

INSERT INTO `waste_info` (`id`, `user_id`, `location_id`, `location_charge_id`, `qty`, `charge`, `payment_ref`, `payment_status`, `delivery_status`, `date_created`) VALUES
(1, '1', 2, 2, 5, 100000, '#ref-221021-56924', 0, 0, '2021-10-22 07:19:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_charge`
--
ALTER TABLE `location_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waste_info`
--
ALTER TABLE `waste_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_charge`
--
ALTER TABLE `location_charge`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `waste_info`
--
ALTER TABLE `waste_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
