-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 01:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_samples`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Kids see ghosts', 'Kids See Ghosts is the eponymous debut studio album by American hip hop duo Kids See Ghosts, composed of rapper-producers Kanye West and Kid Cudi. It was released on June 8, 2018, through Wicked Awesome Records and GOOD Music, and distributed by Def Jam R', 'images/album.jpg', 15.00),
(2, 'The Eminem Show', 'The Eminem Show is the eponymous debut studio album by American hip hop duo Kids See Ghosts, composed of rapper-producers Kanye West and Kid Cudi', 'images/album3.jpg', 8.00),
(3, 'The Marshall Mathers LP', 'The Marshall LP is the eponymous debut studio album by American hip hop duo Kids See Ghosts, composed of rapper-producers Kanye West and Kid Cudi', 'images/album4.jpg', 3.00),
(4, 'The Off Season', 'Off season is the eponymous debut studio album by American hip hop duo Kids See Ghosts, composed of rapper-producers Kanye West and Kid Cudi', 'images/album2.jpg', 8.00),
(5, 'Four', 'Four (stylized as all caps) is the fourth studio album by English-Irish boy band One Direction, released on 17 November 2014 by Columbia Records and Syco Music.[citation needed] the album was preceded by', 'images/album5.jpg', 12.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
