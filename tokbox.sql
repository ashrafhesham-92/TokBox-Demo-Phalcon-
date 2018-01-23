-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2018 at 02:17 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.1.12-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `session_id`, `token`) VALUES
(1, '1_MX40NjA0MDk2Mn5-MTUxNjI3NzM5MTEyMn5abHRjalgwT3ZxYkZiK0wyWGdCZ1orSXl-UH4', 'T1==cGFydG5lcl9pZD00NjA0MDk2MiZzaWc9NTU4ZjQ5NWVhZDBjNDQwMzE4MGU5YTYxMzliZmIzZDJhMjY1Mzc1ODpzZXNzaW9uX2lkPTFfTVg0ME5qQTBNRGsyTW41LU1UVXhOakkzTnpNNU1URXlNbjVhYkhSamFsZ3dUM1p4WWtaaUswd3lXR2RDWjFvclNYbC1VSDQmY3JlYXRlX3RpbWU9MTUxNjI3NzM5MSZyb2xlPW1vZGVyYXRvciZub25jZT0xNTE2Mjc3MzkxLjQxNTI3NTYyODAyNDgmZXhwaXJlX3RpbWU9MTUxNjg4MjE5MSZjb25uZWN0aW9uX2RhdGE9bmFtZSUzRHRlc3RVc2Vy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
