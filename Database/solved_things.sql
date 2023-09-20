-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 09:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solved_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@admin.com', '$2y$10$b3GAX6.Pd6054RRQ8C9se.zfOhTljRkduBfAKWFrmtdKwj02aSTuq');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_title` varchar(250) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `article_description` text NOT NULL,
  `article_date` date NOT NULL,
  `article_trend` tinyint(4) NOT NULL,
  `article_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `author_password` varchar(100) NOT NULL,
  `author_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_password`, `author_email`) VALUES
(5, 'Atta Elahi', '$2y$10$Z2msee.kfzu9b8faoUJg4.4GtdLrvVzlCQ8znPXunl/oEnt/IBw1u', 'attaelahikhan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  `category_color` varchar(35) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_color`, `category_image`, `category_description`) VALUES
(1, 'Academic Notes', 'tag-brown', 'Academic Notes1693984287.jpg', 'Welcome to the Academic Notes Repository! This category is your go-to destination for sharing and accessing a treasure trove of valuable educational resources. Whether you have meticulously crafted study notes, insightful assignments or helpful study materials, this platform is designed to foster a collaborative learning environment. Join our commu'),
(2, 'Technology', 'tag-orange', 'Technology1616565177.jpg', 'Welcome to the Technology Hub! This category is a vibrant space for tech enthusiasts, innovators, and thought leaders to exchange ideas and share insightful articles about the ever-evolving world of technology. Whether you\'re passionate about the latest trends, have innovative ideas to discuss, or want to explore cutting-edge tech concepts, this pl'),
(3, 'Ideas', 'tag-purple', 'Ideas1693983699.jpg', 'Welcome to our Ideas Exchange! This category is a dynamic space for creative minds and innovators to freely share, discuss and collaborate on their unique concepts, visions and insights. Whether you have a groundbreaking innovation, a visionary project idea, or simply a spark of inspiration, this platform invites you to contribute and connect with '),
(4, 'Projects Ideas', 'tag-yellow', 'Projects Ideas1693984793.jpg', 'Welcome to the Projects Ideas Hub! This category is the creative epicenter for visionaries, problem solvers and dreamers to showcase and exchange their innovative project concepts. Whether you have a bold idea for a startup a unique solution to a real-world challenge or a passion project that\'s been brewing in your mind, this platform invites you t'),
(5, 'Software Engineering', 'tag-pink', 'Software Engineering1693983007.jpg', 'Welcome to our Software Engineering Showcase! This dedicated category is a hub for all students and accomplished software engineers to proudly display their academic prowess and innovation. Whether you\'ve completed thesis, a challenging assignment or a remarkable project during your software engineering degree journey, this is the place to share yo'),
(6, 'Computer Science', 'tag-purple', 'Computer Science1693983221.jpg', 'Introducing our Computer Science Showcase! This category serves as a dedicated platform for individuals passionate about computer science to exhibit their academic achievements and groundbreaking innovations. Whether you\'ve crafted a thought-provoking thesis, tackled challenging assignments or engineered impressive projects during your computer sci'),
(7, 'AI ', 'tag-orange', 'AI 1693985707.jpg', 'Welcome to the Artificail Intelligence Hub! This category is the creative epicenter for visionaries, problem solvers, and dreamers to showcase and exchange their innovative AI concepts. Whether you have a bold idea for a startup, a unique solution to a real-world challenge, or a passion AI that\'s been brewing in your mind, this platform invites yo'),
(8, 'Articles', 'tag-yellow', 'Articles1693985500.jpg', 'Explore the Articles Corner! This category is a hub for knowledge-sharing and insightful discussions, where individuals from diverse backgrounds contribute and publish their articles on a wide range of topics. By uploading your articles here, you\'re not only making your ideas accessible to a broader audience but also contributing to the collective '),
(15, 'Thesis', 'tag-green', 'Thesis1693983514.jpg', 'Welcome to our Thesis Hub! This category is a dedicated space for academics, researchers and knowledge seekers to showcase their intellectual endeavors and share groundbreaking thesis ideas. Whether you\'ve completed a thought-provoking thesis or have a unique thesis concept in mind, this platform invites you to contribute and collaborate with a com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(35) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(7, 'Atta Elahi', 'attaelahikhan@gmail.com', '$2y$10$Z2msee.kfzu9b8faoUJg4.4GtdLrvVzlCQ8znPXunl/oEnt/IBw1u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
