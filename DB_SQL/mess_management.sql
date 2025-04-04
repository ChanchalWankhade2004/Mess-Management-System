-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 05:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mess_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `email`, `password`) VALUES
('Boyiddhanath Roy', 'boyiddha@gmail.com', '1702137'),
('Liton Roy', 'liton@gmail.com', '1702120'),
('Motaleb Hossen', 'motaleb@gmail.com', '1702129');

-- --------------------------------------------------------

--
-- Table structure for table `bazarcost`
--

CREATE TABLE `bazarcost` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bazarcost`
--

INSERT INTO `bazarcost` (`id`, `date`, `amount`) VALUES
(1, '1-11-2022', 1000),
(2, '2-11-2022', 1000),
(3, '3-11-2022', 0),
(4, '4-11-2022', 1200),
(5, '5-11-2022', 0),
(6, '6-11-2022', 300),
(7, '7-11-2022', 0),
(8, '8-11-2022', 1200),
(9, '9-11-2022', 0),
(10, '10-11-2022', 0),
(11, '11-11-2022', 0),
(12, '12-11-2022', 0),
(13, '13-11-2022', 1000),
(14, '14-11-2022', 0),
(15, '15-11-2022', 0),
(16, '16-11-2022', 0),
(17, '17-11-2022', 0),
(18, '18-11-2022', 0),
(19, '19-11-2022', 0),
(20, '20-11-2022', 0),
(21, '21-11-2022', 0),
(22, '22-11-2022', 0),
(23, '23-11-2022', 0),
(24, '24-11-2022', 0),
(25, '25-11-2022', 0),
(26, '26-11-2022', 0),
(27, '27-11-2022', 0),
(28, '28-11-2022', 0),
(29, '29-11-2022', 0),
(30, '30-11-2022', 0),
(31, '31-11-2022', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bazardate`
--

CREATE TABLE `bazardate` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `room_no` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bazardate`
--

INSERT INTO `bazardate` (`id`, `date`, `name`, `room_no`, `phone`) VALUES
(1, '1-11-2022', 'Boyiddhanath Roy', 300, '01785441285'),
(2, '2-11-2022', '', 0, ''),
(3, '3-11-2022', 'Liton Roy', 402, '03874873435'),
(4, '4-11-2022', '', 0, ''),
(5, '5-11-2022', 'karen', 300, '03874873435'),
(6, '6-11-2022', '', 0, ''),
(7, '7-11-2022', '', 0, ''),
(8, '8-11-2022', 'motaleb', 300, '012365'),
(9, '9-11-2022', '', 0, ''),
(10, '10-11-2022', '', 0, ''),
(11, '11-11-2022', '', 0, ''),
(12, '12-11-2022', '', 0, ''),
(13, '13-11-2022', '', 0, ''),
(14, '14-11-2022', '', 0, ''),
(15, '15-11-2022', '', 0, ''),
(16, '16-11-2022', '', 0, ''),
(17, '17-11-2022', '', 0, ''),
(18, '18-11-2022', '', 0, ''),
(19, '19-11-2022', '', 0, ''),
(20, '20-11-2022', '', 0, ''),
(21, '21-11-2022', '', 0, ''),
(22, '22-11-2022', '', 0, ''),
(23, '23-11-2022', '', 0, ''),
(24, '24-11-2022', '', 0, ''),
(25, '25-11-2022', '', 0, ''),
(26, '26-11-2022', '', 0, ''),
(27, '27-11-2022', '', 0, ''),
(28, '28-11-2022', '', 0, ''),
(29, '29-11-2022', '', 0, ''),
(30, '30-11-2022', '', 0, ''),
(31, '31-11-2022', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `uname` varchar(100) NOT NULL,
  `message` varchar(450) NOT NULL,
  `datetime` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `name` varchar(100) NOT NULL,
  `room_no` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`name`, `room_no`, `phone`, `date`, `amount`) VALUES
('Boyiddhanath Roy', 300, '17835734342', '2013-11-22', 500),
('karen', 331, '362084', '0000-00-00', 0),
('ismayelhossen123', 300, '977653', '2013-11-22', 1000),
('Liton Roy', 112, '98753204', '2013-11-22', 750),
('abc', 112, '95414344', '2013-11-22', 1200),
('motaleb', 112, '74133311', '2013-11-22', 500),
('masud', 300, '3098765541', '2019-11-22', 500),
('sujon', 300, '27322222', '2013-11-22', 500),
('antor', 112, '22222222222', '0000-00-00', 0),
('hakim', 112, '987545222222', '2013-11-22', 300),
('jim', 112, '987654321111', '2019-11-22', 700),
('antor', 331, '01846093644', '0000-00-00', 0),
('vudeb', 402, '0187384210', '0000-00-00', 0),
('turin', 112, '08762000', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `extracost`
--

CREATE TABLE `extracost` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extracost`
--

INSERT INTO `extracost` (`id`, `date`, `description`, `amount`) VALUES
(9, '2022-11-03', 'wheel', 400),
(10, '2022-11-11', 'vimber', 350),
(11, '2022-11-08', 'oil', 200),
(12, '2022-11-15', 'paper', 100);

-- --------------------------------------------------------

--
-- Table structure for table `fixedcost`
--

CREATE TABLE `fixedcost` (
  `id` int(11) NOT NULL,
  `net` int(11) NOT NULL,
  `khala` int(11) NOT NULL,
  `khori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fixedcost`
--

INSERT INTO `fixedcost` (`id`, `net`, `khala`, `khori`) VALUES
(1, 2000, 2500, 2700);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Sl_no` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `Entry_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Sl_no`, `user_name`, `email`, `password`, `phone`, `room_no`, `Entry_Date`) VALUES
(1, 'Boyiddhanath ', 'boyiddha@gmail.com', '36565', '17835734388', '302', '2025-03-24'),
(3, 'karen', 'karen@gmail.com', '535632', '362084', '331', '2025-03-24'),

-- --------------------------------------------------------

--
-- Table structure for table `mealcount`
--

CREATE TABLE `mealcount` (
  `phone` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `meal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mealcount`
--

INSERT INTO `mealcount` (`phone`, `date`, `meal`) VALUES
('17835734342', '2022-11-01', 1),
('362084', '2022-11-01', 1),
('977653', '2022-11-01', 1),
('98753204', '2022-11-01', 1),
('95414344', '2022-11-01', 1),
('74133311', '2022-11-01', 1),
('3098765541', '2022-11-01', 1),
('27322222', '2022-11-01', 1),
('22222222222', '2022-11-01', 1),
('987545222222', '2022-11-01', 1),
('987654321111', '2022-11-01', 1),
('17835734342', '2022-11-02', 0),
('362084', '2022-11-02', 0.5),
('977653', '2022-11-02', 1),
('98753204', '2022-11-02', 1.5),
('95414344', '2022-11-02', 2),
('74133311', '2022-11-02', 2.5),
('3098765541', '2022-11-02', 2.5),
('27322222', '2022-11-02', 3),
('22222222222', '2022-11-02', 3.5),
('17835734342', '2022-11-03', 1.5),
('362084', '2022-11-03', 1.5),
('977653', '2022-11-03', 2),
('98753204', '2022-11-03', 2.5),
('95414344', '2022-11-03', 2),
('74133311', '2022-11-03', 1.5),
('3098765541', '2022-11-03', 1),
('27322222', '2022-11-03', 0),
('22222222222', '2022-11-03', 0.5),
('987545222222', '2022-11-03', 1),
('987654321111', '2022-11-03', 3.5),
('17835734342', '2022-11-05', 0.5),
('362084', '2022-11-05', 0.5),
('977653', '2022-11-05', 1),
('98753204', '2022-11-05', 1),
('95414344', '2022-11-05', 1.5),
('74133311', '2022-11-05', 1.5),
('3098765541', '2022-11-05', 2),
('27322222', '2022-11-05', 2),
('22222222222', '2022-11-05', 2),
('987545222222', '2022-11-05', 2),
('987654321111', '2022-11-05', 2),
('17835734342', '2022-11-06', 1),
('362084', '2022-11-06', 1),
('977653', '2022-11-06', 1),
('98753204', '2022-11-06', 1),
('95414344', '2022-11-06', 1),
('74133311', '2022-11-06', 1),
('3098765541', '2022-11-06', 1.5),
('27322222', '2022-11-06', 1.5),
('22222222222', '2022-11-06', 2),
('987545222222', '2022-11-06', 2),
('987654321111', '2022-11-06', 2.5),
('17835734342', '2022-11-07', 2),
('362084', '2022-11-07', 2),
('977653', '2022-11-07', 2),
('98753204', '2022-11-07', 2),
('95414344', '2022-11-07', 2),
('74133311', '2022-11-07', 2),
('3098765541', '2022-11-07', 2),
('27322222', '2022-11-07', 2),
('22222222222', '2022-11-07', 2.5),
('987545222222', '2022-11-07', 2.5),
('987654321111', '2022-11-07', 2),
('17835734388', '2022-11-19', 0.5),
('362084', '2022-11-19', 1),
('977653', '2022-11-19', 1),
('98753204', '2022-11-19', 1),
('95414344', '2022-11-19', 1),
('74133311', '2022-11-19', 1),
('3098765541', '2022-11-19', 1),
('27322222', '2022-11-19', 1),
('22222222222', '2022-11-19', 1),
('987545222222', '2022-11-19', 1),
('987654321111', '2022-11-19', 1),
('01846093644', '2022-11-19', 1),
('0187384210', '2022-11-19', 1),
('08762000', '2022-11-19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `sl_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `Joining_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`sl_no`, `name`, `email`, `password`, `phone`, `address`, `room_no`, `Joining_Date`) VALUES
(47, 'Boyiddhanath ', 'boyiddha@gmail.com', '34567', '17835734388', 'pirganj.', '302', '2022-11-01'),
(48, 'karen', 'karen@gmail.com', '534534', '362084', 'thakurgaon', '331', '2022-11-02'),
(49, 'ismayelhossen123', 'ismayelhossen123@gmail.com', '362311', '977653', 'pirganj', '300', '2022-11-03'),
(50, 'Liton Roy', 'liton@gmail.com', '986353', '98753204', 'nilphama', '112', '2022-11-04'),
(51, 'abc', 'abc@gmail.com', '873089', '95414344', 'pirganj', '112', '2022-11-04'),
(52, 'motaleb', 'motaleb@gmail.com', '523967', '74133311', 'pirganj', '112', '2022-11-05'),
(53, 'masud', 'masud@gmail.com', '9871000', '3098765541', 'pirganj', '300', '2022-11-06'),
(54, 'sujon', 'sujon@gmail.com', '88523', '27322222', 'pirganj', '300', '2022-11-01'),
(55, 'antor', 'antor@gmail.com', '355555', '22222222222', 'pirganj', '112', '2022-11-02'),
(56, 'hakim', 'hakim@gmail.com', '37842', '987545222222', 'pirganj', '112', '2022-11-05'),
(57, 'jim', 'jim@gmail.com', '383633333', '987654321111', 'pirganj', '112', '2022-11-03'),
(58, 'antor', 'aroy@gmail.com', '354957', '01846093644', 'pirganj', '331', '2022-11-09'),
(59, 'vudeb', 'vudeb@gmail.com', '387423', '0187384210', 'pirganj', '402', '2022-11-09'),
(60, 'turin', 'turin@gmail.com', '988761000', '08762000', 'pirganj', '112', '2022-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `managername` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`managername`, `message`, `datetime`) VALUES
('Manager: Boyiddhanath (17835734388)', 'নোটিস - আগামিকাল মিল off থাকবে । কালকে খালা আসবে না । ', '13/11/22, 05:04 PM'),
('Manager: Boyiddhanath (17835734388)', 'যারা এখনো মিলের টাকা জমা দেয়নি তারা অবশ্যই ১৫ তারিখের মধ্যে দিয়ে দিবেন । অন্যথায় মিল বন্ধ হয়ে যাবে ।।  ধন্যবাদ । ', '13/11/22, 05:05 PM');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `manager_name` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `manager_name`, `filename`, `created_date`) VALUES
(37, 'Liton Roy', 'january-2022.pdf', '2022-11-13'),
(38, 'Motaleb Hossen', 'February-2022.pdf', '2022-11-13'),
(39, 'Anowar Hossen', 'March-2022.pdf', '2022-11-13'),
(40, 'Rejaul Haque', 'April-2022.pdf', '2022-11-13'),
(41, 'Belal Hossen', 'May-2022.pdf', '2022-11-13'),
(42, 'Prokash Roy', 'June-2022.pdf', '2022-11-13'),
(43, 'Kamini Kumar', 'July-2022.pdf', '2022-11-13'),
(44, 'Boyiddhanath Roy', 'August-2022.pdf', '2022-11-13'),
(45, 'Nahin shahariar', 'September-2022.pdf', '2022-11-13'),
(46, 'Ab Hakim', 'October-2022.pdf', '2022-11-13'),
(47, 'Sourov Roy', 'November-2022.pdf', '2022-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `sl_no` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `effective_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`sl_no`, `description`, `effective_date`) VALUES
(1, 'Market List', 'If a member\'s meal is active, they must take turns shopping. No excuses like final exams or job exams will be accepted. If someone shopped once last month, they must shop twice this month; if they shopped twice last month, they need to shop only once this month.', '2022-11-01'),
(2, 'Market List', 'The manager will visit the rooms a maximum of 2 times to collect the market list. If a member fails to provide the list after two visits, the manager has the authority to assign their name to the market list.', '2022-11-01'),
(3, 'Market List', 'If someone cannot shop after providing the market list, they must manage their replacement themselves. The manager is not responsible for arranging a substitute.', '2022-11-01'),
(4, 'Market List', 'Failure to do the assigned shopping will result in a fine of 50 Taka.', '2022-11-01'),
(5, 'Market List', 'The manager must notify the assigned shopper the night before.', '2022-11-01'),
(6, 'Meal Deduction', 'A member can lose a maximum of 3 meals (lunch and dinner are considered separately). If they lose more than 3 meals, the manager will be fined for the extra lost meals.', '2022-11-01'),
(7, 'Meal Deduction', 'If a meal is eaten by a cat or crow, no refund will be given.', '2022-11-01'),
(8, 'Meal Deduction', 'The fine for losing a lunch meal is 50 Taka, and for a dinner meal, it is 30 Taka.', '2022-11-01'),
(9, 'Meal Deduction', 'If someone takes extra food to their room, they will be fined the same amount as meal loss penalties.', '2022-11-01'),
(10, 'Meal Deduction', 'Complaints about meal loss must be reported to the manager by 5:00 PM for lunch and 10:00 PM for dinner; otherwise, they will not be considered.', '2022-11-01'),
(11, 'Feast Cooking', 'A 20 Taka contribution is required per feast cooking. Members should either write their names on the designated notice or inform the manager.', '2022-11-01'),
(12, 'Feast Cooking', 'If someone cooks for a feast but does not write their name, they will be fined 100 Taka.', '2022-11-01'),
(13, 'Minimum Meals Requirement', 'Each member must eat at least 10 meals per month, including the feast meal at the end of the month.', '2022-11-01'),
(14, 'Minimum Meals Requirement', 'During Eid-ul-Fitr, Eid-ul-Adha, and Durga Puja, if the mess is closed, no minimum meal requirement will be enforced.', '2022-11-01'),
(15, 'Guest Meal', 'The cost per guest meal is 30 Taka, and the maid (buya) will receive an extra 5 Taka per guest meal. If there are more than 8 guest meals, the firewood and maid cost must be covered.', '2022-11-01'),
(16, 'Payment & Deposits', 'Each member must deposit a minimum of 500 Taka to the current month\'s manager by the 10th of the month; failure to do so may result in meal suspension.', '2022-11-01'),
(17, 'Payment & Deposits', 'Outstanding dues to the previous month\'s manager must be cleared between the 5th and 10th of the month. A 50 Taka fine will be imposed for late payments, and if the dues are not cleared by the 30th, a 200 Taka fine will be charged.', '2022-11-01'),
(18, 'Payment & Deposits', 'The previous month\'s manager must settle the maid’s salary, firewood costs, and WiFi bill by the 10th of the month.', '2022-11-01'),



--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `bazardate`
--
ALTER TABLE `bazardate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extracost`
--
ALTER TABLE `extracost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixedcost`
--
ALTER TABLE `fixedcost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Sl_no`,`email`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sl_no`,`email`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `extracost`
--
ALTER TABLE `extracost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fixedcost`
--
ALTER TABLE `fixedcost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `Sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
