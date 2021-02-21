-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 11:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `title`) VALUES
(2, 'Health', 'Health Category'),
(3, 'Sports', 'Sports Category'),
(4, 'Lifestyle', 'LifeStyle Category'),
(7, 'Technology', 'Technology'),
(8, 'Codding', 'Codding'),
(10, 'Science ', 'Science category'),
(11, 'Test ', 'Test category'),
(16, 'Others', 'Others Category');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `cat`) VALUES
(1, 'SSC Result 2020', '<p>First post content5 will be go here. First post content5 will be go here.First post content5 will be go here.First post content5 will be go here.First post content5 will be go here.</p>\r\n\r\n<p>First post content5 will be go here. First post content5 will be go here.First post content5 will be go here.First post content5 will be go here.First post content5 will be go here.</p>', 4),
(2, 'HSC Result 2021', '<p>second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.</p>\r\n\r\n<p>second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.second post content5 will be go here.</p>', 4),
(3, 'EWU Result 2022', '<p>third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.</p>\r\n<p>third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.third post content5 will be go here.</p>', 4),
(4, 'BCS Result 2021', '<p>fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.</p>\r\n<p>fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.fourth post content5 will be go here.</p>\r\n', 7),
(5, 'Hello ', '<p>Hello I am Abid ,Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid Hello I am Abid</p>\r\n', 4),
(6, 'This test post', '<p>This test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test postThis test post</p>', 3),
(8, 'This test post three', '<p>This test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post threeThis test post three</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ui`
--

CREATE TABLE `tbl_ui` (
  `id` int(11) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ui`
--

INSERT INTO `tbl_ui` (`id`, `color`) VALUES
(1, '#00ff00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '123', 1),
(4, 'Author', '123', 2),
(6, 'Contributer', '123', 3),
(7, 'Abid', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ui`
--
ALTER TABLE `tbl_ui`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_ui`
--
ALTER TABLE `tbl_ui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
