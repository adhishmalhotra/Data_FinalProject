-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 02:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'hehehehe', 'hima_paul', 'aiden_jolley', '2021-11-16 21:33:38', 'no', 30),
(2, 'no man you aren\'t useless, don\'t worry', 'hima_paul', 'test_test', '2021-11-16 21:34:11', 'no', 25),
(3, 'idk man this is getting tense', 'hima_paul', 'aiden_jolley', '2021-11-17 16:03:21', 'no', 30),
(4, 'hey a very good evening to you my friend!', 'aiden_jolley', 'aiden_jolley', '2021-11-20 18:08:04', 'no', 31),
(5, 'yeah netbeans and maven is quite tough!', 'hima_paul', 'test_test', '2021-11-20 18:10:06', 'no', 27);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(6, 'aiden_jolley', 31);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'okay, this is it!\n\nWe are making the first post. \n\nLet\'s see if it works!!', 'aiden_jolley', 'none', '2021-11-14 12:46:28', 'no', 'no', 0),
(5, 'Hello guys! Hope you\'re having a great weekend!', 'hima_paul', 'none', '2021-11-14 12:49:47', 'no', 'no', 0),
(6, 'another test real quick', 'hima_paul', 'none', '2021-11-14 12:50:40', 'no', 'no', 0),
(7, 'hello\n', 'aiden_jolley', 'none', '2021-11-15 12:36:35', 'no', 'no', 0),
(8, 'what;s good', 'aiden_jolley', 'none', '2021-11-15 12:36:40', 'no', 'no', 0),
(9, 'what\'s today\'s day? oh no its a monday', 'aiden_jolley', 'none', '2021-11-15 12:36:53', 'no', 'no', 0),
(10, 'oh no my table, its broken', 'aiden_jolley', 'none', '2021-11-15 12:37:01', 'no', 'no', 0),
(11, 'the killer is escaping ', 'aiden_jolley', 'none', '2021-11-15 12:37:13', 'no', 'no', 0),
(12, 'hello aiden', 'hima_paul', 'none', '2021-11-15 12:37:38', 'no', 'no', 0),
(13, 'how are we doing today guys', 'hima_paul', 'none', '2021-11-15 12:37:46', 'no', 'no', 0),
(14, 'i am so sleepy', 'hima_paul', 'none', '2021-11-15 12:37:57', 'no', 'no', 0),
(15, 'we got microprocessors and comp arch today', 'hima_paul', 'none', '2021-11-15 12:38:06', 'no', 'no', 0),
(16, 'i don\'t feel like attending me lectures today', 'hima_paul', 'none', '2021-11-15 12:38:19', 'no', 'no', 0),
(17, 'oh my god', 'hima_paul', 'none', '2021-11-15 12:40:33', 'no', 'no', 0),
(18, 'there are so many posts in here today', 'hima_paul', 'none', '2021-11-15 12:40:41', 'no', 'no', 0),
(19, 'its difficult to follow along', 'hima_paul', 'none', '2021-11-15 12:40:48', 'no', 'no', 0),
(20, 'hey y\'all', 'hima_paul', 'none', '2021-11-15 13:37:16', 'no', 'no', 0),
(21, 'hey there', 'aiden_jolley', 'none', '2021-11-15 13:59:50', 'no', 'no', 0),
(22, 'why aren\'t all the posts loading guys? ', 'hima_paul', 'none', '2021-11-15 19:02:32', 'no', 'no', 0),
(23, 'hello everyone i am a test user and my first name and last name both are test', 'test_test', 'none', '2021-11-16 01:05:34', 'no', 'no', 0),
(24, 'i am a useless user and i don\'t really have any purpose here ', 'test_test', 'none', '2021-11-16 01:06:08', 'no', 'no', 0),
(25, 'i am a useless user and i don\'t really have any purpose here ', 'test_test', 'none', '2021-11-16 01:06:17', 'no', 'no', 0),
(26, 'this project is really hard to make, I gotta admit', 'test_test', 'none', '2021-11-16 01:06:30', 'no', 'no', 0),
(27, 'this project is really hard to make, I gotta admit', 'test_test', 'none', '2021-11-16 01:08:15', 'no', 'no', 0),
(28, 'this project is really hard to make, I gotta admit', 'test_test', 'none', '2021-11-16 01:09:33', 'no', 'no', 0),
(29, 'good job on software design architecture presentation ', 'aiden_jolley', 'none', '2021-11-16 12:05:11', 'no', 'no', 0),
(30, 'good job on software design architecture presentation ', 'aiden_jolley', 'none', '2021-11-16 12:05:21', 'no', 'no', 0),
(31, 'good evening guys', 'aiden_jolley', 'none', '2021-11-20 18:07:42', 'no', 'no', 1),
(32, 'good evening guys', 'aiden_jolley', 'none', '2021-11-20 18:08:22', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Adhish', 'Malhotra', 'Adhish Malhotra', 'adhish@adhish.com', 'password', '2021-11-09', 'abc', 0, 0, 'no', ''),
(2, 'Hima', 'Paul', 'hima_paul', 'Hima@hima.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-09', 'assets/images/profile_pics/defaults/head_emerald.png', 12, 0, 'no', ',test_test,aiden_jolley,'),
(3, 'Aiden', 'Jolley', 'aiden_jolley', 'Aiden@aiden.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-09', 'assets/images/profile_pics/defaults/head_deep_blue.png', 11, 1, 'no', ',hima_paul,'),
(4, 'Test', 'Test', 'test_test', 'Test@test.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-09', 'assets/images/profile_pics/defaults/head_emerald.png', 6, 0, 'no', ','),
(5, 'Ad', 'Ma', 'ad_ma', 'Yomomma@yomomma.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-11-11', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
