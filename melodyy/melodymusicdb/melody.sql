-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 02:52 PM
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
-- Database: `melody`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Starboy(Deluxe)', 2, 2, 'assets/images/artwork/starboydeluxe.jpeg'),
(2, '1989(Taylors Version)', 5, 1, 'assets/images/artwork/1989(taylorsversion).jpeg'),
(3, 'Mr.Morale & The Big Steppers', 3, 4, 'assets/images/artwork/mrmorale&thebigsteppers.jpeg'),
(4, 'Euphoria', 6, 3, 'assets/images/artwork/Euphoria.jpeg'),
(5, 'Harikathe Alla Girikathe', 1, 8, 'assets/images/artwork/harikatheallagirikathe.jpg'),
(6, '3:00AM Sessions', 7, 4, 'assets/images/artwork/threeamsessionsbadhsah.jpg'),
(7, 'Curtain Call 2', 4, 4, 'assets/images/artwork/CurtainCall2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Vasuki Vaibhav'),
(2, 'The Weeknd'),
(3, 'Kendrick Lamar'),
(4, 'Eminem'),
(5, 'Taylor Swift'),
(6, 'Labrinth'),
(7, 'Badhshah');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Blinding lights', 2, 1, 4, '3:19', 'assets/music/Blinding Lights.mp3', 1, 10),
(2, 'Lover', 5, 2, 10, '3:19', 'assets/music/Lover.mp3', 2, 4),
(3, 'Family ties', 3, 3, 1, '4:12', 'assets/music/family ties.mp3', 3, 10),
(4, 'Still dont know my name', 6, 4, 3, '2:33', 'assets/music/StillDontKnowMyName.mp3', 4, 13),
(5, 'Formula', 6, 4, 3, '1:33', 'assets/music/Formula.mp3', 5, 8),
(6, 'Call Out My Name', 2, 1, 2, '3:49', 'assets/music/Call Out My Name.mp3', 1, 29),
(7, 'The Hills', 2, 1, 2, '4:03', 'assets/music/The Hills.mp3', 2, 11),
(8, 'Innunnu Bekagide', 1, 5, 8, '3:34', 'assets/music/Innunu Bekagide.mp3', 2, 24),
(9, 'Avanalli Ivalilli', 1, 5, 8, '3:07', 'assets/music/Avanalli Ivalilli.mp3', 3, 26),
(10, 'DJ Waley Babu', 7, 6, 4, '3:01', 'assets/music/DJ Waley Babu.mp3', 3, 16),
(11, 'Jugnu', 7, 6, 4, '3:46', 'assets/music/Jugnu.mp3', 4, 21),
(12, 'Love the way you lie', 4, 7, 4, '4:27', 'assets/music/Love The Way You Lie.mp3', 5, 21),
(13, 'Rap God', 4, 7, 4, '6:34', 'assets/music/Rap God.mp3', 5, 3),
(14, 'Loyalty', 3, 3, 4, '3:48', 'assets/music/LOYALTY.mp3', 4, 8),
(15, 'Swimming Pools', 3, 3, 4, '3:52', 'assets/music/Swimming Pools.mp3', 3, 8),
(16, 'Die For You', 2, 1, 2, '3:53', 'assets/music/Die For You.mp3', 2, 11),
(17, 'Aagaga Nenapaguthale', 1, 5, 8, '5:06', 'assets/music/Aagaga Nenapaguthale.mp3', 1, 6),
(18, 'Arere Avala Naguva', 1, 5, 8, '4:51', 'assets/music/Arere Avala Naguva.mp3', 5, 2),
(19, 'Popular', 2, 1, 2, '3:36', 'assets/music/Popular.mp3', 4, 5),
(20, 'Mercy', 7, 6, 4, '2:57', 'assets/music/Mercy.mp3', 3, 3),
(21, 'Mockingbird', 4, 7, 4, '4:18', 'assets/music/Mockingbird.mp3', 2, 10),
(22, 'The Real Slim Shady', 4, 7, 4, '4:29', 'assets/music/The Real Slim Shady.mp3', 1, 10),
(23, 'Ends & Begins', 6, 4, 3, '3:40', 'assets/music/Ends & Begins.mp3', 1, 9),
(24, 'Humble', 3, 3, 4, '4:44', 'assets/music/Humble.mp3', 2, 2),
(25, 'Blank Space', 5, 2, 1, '3:53', 'assets/music/Blank Space.mp3', 3, 3),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 18),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 14),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 12),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 6),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 18),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
