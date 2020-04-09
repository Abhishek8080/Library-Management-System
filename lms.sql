-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 05:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(20) NOT NULL,
  `books_qty` varchar(20) NOT NULL,
  `available_qty` varchar(20) NOT NULL,
  `librarian_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`, `librarian_username`) VALUES
(2, 'game of thrones', 'books_image/e395fbb266170c90a24f153ec3e23acfgame_of_thrones_2011_series_logo_coat_of_arms_96006_1600x1200.jpg', 'abhi', 'abhi', '12-01-2019', '500', '100', '92', 'abc'),
(3, 'Java:The Complete reference', 'books_image/23c602b0aed143a6b3e13d37756bc5a2download.jpg', 'Herbert Schildt', 'Oracle Press', '08-01-2019', '870', '50', '50', 'abc'),
(4, 'Dive Into python', 'books_image/a8fce89457a9f8b150c7b43269382c1a24038.jpg', 'Mark Pilgrim', 'APress Media,LLC', '10-01-2019', '450', '55', '55', 'abc'),
(5, 'HARRY POTTRER', 'books_image/90f6fc1357de035e8dc3a497a929f92c9781338099133_p0_v5_s550x406.jpg', 'HARRY', 'HARRY', '12-10-2019', '500', '40', '40', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(5) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(4, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'sf', '14-01-2019', '16-01-2019', ' abhi'),
(5, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'sf', '14-01-2019', '15-01-2019', ' abhi'),
(6, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'Light Next Door', '14-01-2019', '', ' abhi'),
(7, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(8, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(9, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(10, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(11, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(12, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(13, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '02-03-2019', '', ' abhi'),
(14, '1234567890', 'Abhishek Tripathi', '6', '9767430112', 'possible.abhishek90@gmail.com', 'game of thrones', '22-03-2019', '', ' abhi');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'abc', 'def', 'abc', 'def', 'abc@gmail.com', '9999999999');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(10, 'abc', 'abhi', 'warning', 'kindly return book before due date!!', 'y'),
(11, 'abc', 'abhi', '', 'return book: Game of Thrones as soon as possible\r\n                                            ', 'y'),
(12, 'abc', 'abhi', 'warning', 'please return book\r\n                                            ', 'y'),
(13, 'abc', 'abhi', 'warning', 'please return book\r\n                                            ', 'y'),
(16, 'abc', 'abhi', 'warning', 'return our book as soon as possible\r\n\r\n                                            ', 'y'),
(19, 'abc', 'abhi', 'gsuwgjg', '\r\n                      shgxusgu                      ', 'y'),
(24, 'abc', 'abhi', '', '\r\n                         plzz return book                   ', 'y'),
(25, 'abc', 'abhi', 'warning', '\r\n          return book                                  ', 'y'),
(26, 'ABC', 'abhi', '', 'PLZ RETURN BOOK\r\n                                            ', 'y'),
(27, 'abc', 'abhi', 'warning', 'RETURN BOOK\r\n                                            ', 'y'),
(28, 'ABC', 'abhi', '', 'HII\r\n                                            ', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(1, 'Abhishek', 'Tripathi', 'abhi', 'abhi', 'possible.abhishek90@gmail.com', '9767430112', '6', '1234567890', 'yes'),
(19, 'pankaj', 'tawde', 'pankaj', '123', 'pankaj@gmail.com', '9920843149', '6', '1700930092', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
