-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 02:10 PM
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
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799798, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 7798797897, '7/27/2019', '4:00pm', '1', '2019-07-26 04:48:25', 'Accepted', '1', '2019-07-26 06:41:16'),
(2, '985645887', 'Kashish', 'Kash@gmail.com', 4654654654, '7/29/2019', '4:30pm', 'Deluxe Pedicure', '2019-07-26 05:04:38', 'Rejected', '2', '2019-07-26 06:47:04'),
(3, '965887988', 'Sanjeeta Jain', 'sna@gmail.com', 5646464646, '8/20/2019', '2:30pm', 'Loreal Hair Color(Full)', '2019-08-19 12:35:30', 'we will wait', '1', '2019-08-19 13:37:39'),
(4, '578797544', 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 123456789, '8/30/2019', '1:30am', 'Test', '2019-08-21 16:13:13', 'Awaiting to see you', '1', '2024-06-24 08:05:29'),
(5, '899118550', 'bb', 'bgfdh@fdfdsf.com', 4234235423, '8/27/2019', '1:30am', 'Loreal Hair Color(Full)', '2019-08-21 16:14:14', 'Nice day', '2', '2024-06-24 08:05:54'),
(6, '621107928', 'ABC', 'abc@gmail.com', 1234567890, '8/27/2019', '1:30am', 'Rebonding', '2019-08-21 16:22:25', 'Testing', '2', '2019-08-21 16:24:10'),
(7, '361185913', 'Hatibu Mzamo', 'khertibkhamisi@gmail.com', 768413277, '6/12/2024', '1:00am', 'Rebonding', '2024-06-24 07:50:05', 'Make sure to come on time.', '1', '2024-06-24 08:06:15'),
(8, '843024439', 'Ali Ammar Bakari', 'aliammarbakari@gmail.com', 768452187, '6/18/2024', '1:30am', 'Charcol Facial', '2024-06-24 07:53:17', '', '', '0000-00-00 00:00:00'),
(9, '213735281', 'Evans Musungu', 'evans@gmail.com', 754869532, '6/25/2024', '1:00am', 'U-Shape Hair Cut', '2024-06-24 07:54:06', 'Rejected', '2', '2024-06-24 10:50:43'),
(10, '923574200', 'Salim Mwangome', 'salim@gmail.com', 784021356, '6/28/2024', '12:00pm', 'Deluxe Pedicure', '2024-06-24 07:54:41', '', '', '0000-00-00 00:00:00'),
(11, '545523260', 'Sarah Celine', 'sarah@gmail.com', 754326857, '6/21/2024', '11:30pm', 'Normal Pedicure', '2024-06-24 10:01:06', '', '', '0000-00-00 00:00:00'),
(12, '177511106', 'eric omondi', 'ericomondi@gmail.com', 703256874, '6/12/2024', '10:30pm', 'Fruit Facial', '2024-06-24 10:44:31', '', '', '0000-00-00 00:00:00'),
(13, '206005373', 'Sarah Celine', 'sarah@gmail.com', 759302158, '6/28/2024', '3:30pm', 'Body Spa', '2024-06-24 10:45:12', '', '', '0000-00-00 00:00:00'),
(14, '520441261', 'Jully Ndambuki', 'july@gmail.com', 784201358, '6/22/2024', '2:00pm', 'ABC', '2024-06-24 10:45:48', '', '', '0000-00-00 00:00:00'),
(15, '638333234', 'sudi mzamo', 'sudi@gmail.com', 784021390, '6/29/2024', '12:00am', 'Loreal Hair Color(Full)', '2024-06-24 10:46:22', '', '', '0000-00-00 00:00:00'),
(16, '154947636', 'Denis iregi', 'denis@gmail.com', 784569235, '6/18/2024', '1:30am', 'Rebonding', '2024-06-24 10:46:54', 'Accepted', '1', '2024-06-24 10:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Sunita Verma', 'verma@gmail.com', 5546464646, 'Transgender', 'Taking Hair Spa', '2019-07-26 11:09:10', '2019-07-31 15:15:54'),
(2, 'Rahul Singh', 'singh@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2019-07-26 11:10:02', NULL),
(3, 'Khusbu', 'saini@gmail.com', 4646445464, 'Transgender', 'khjhhkjkjkuhj', '2019-07-26 11:10:28', NULL),
(4, 'Sanjeeta Jain', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2019-08-19 13:38:58', NULL),
(5, 'Test user', 'testuser@gmail.com', 1234567890, 'Female', 'Test', '2019-08-21 16:24:53', '2019-08-21 16:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621839533, '2018-07-30 15:33:22'),
(2, 2, 5, 621839533, '2019-06-04 15:33:22'),
(3, 2, 6, 621839533, '2019-07-30 15:33:22'),
(4, 2, 7, 621839533, '2019-07-30 15:33:22'),
(5, 1, 1, 904156433, '2019-07-30 15:40:42'),
(6, 1, 2, 904156433, '2019-07-30 15:40:42'),
(7, 1, 3, 904156433, '2019-07-30 15:40:42'),
(8, 1, 4, 904156433, '2019-07-30 15:40:42'),
(9, 3, 1, 225057023, '2019-07-30 16:03:32'),
(10, 3, 8, 225057023, '2019-07-30 16:03:32'),
(11, 3, 1, 970548035, '2019-07-31 04:42:45'),
(12, 3, 6, 970548035, '2019-07-31 04:42:45'),
(13, 3, 9, 970548035, '2019-07-31 04:42:45'),
(14, 4, 2, 942476283, '2019-08-19 13:39:13'),
(15, 4, 12, 942476283, '2019-08-19 13:39:13'),
(16, 5, 3, 297018570, '2019-08-21 16:25:27'),
(17, 5, 4, 297018570, '2019-08-21 16:25:27'),
(18, 5, 8, 297018570, '2019-08-21 16:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Ruiru Bypass Thika Road', 'shianmwangi74@gmail.com', 254112979506, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Rating` varchar(10) DEFAULT NULL,
  `Comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`id`, `FullName`, `PhoneNumber`, `Email`, `Rating`, `Comment`) VALUES
(1, 'Hatibu Mzamo', '768413277', 'khertibkhamisi@gmail.com', 'Three Star', 'Nice Services'),
(2, 'Sarita pandey', '703597722', 'berylatieno100@gmail.com', 'Five Stars', 'Good Services.'),
(3, 'Salim Mwangome', '756485468', 'salim@gmail.com', 'Three Star', 'Nice services'),
(4, 'Evans Musungu', '754864589', 'evans@gmail.com', 'Five Stars', 'I loved your services.'),
(5, 'Brian Shaban', '785468569', 'brian@gmail.com', 'One Star', 'Services not giving at all.'),
(6, 'Sarah Celine', '784589648', 'sarah@gmail.com', 'Four Stars', 'nice services'),
(7, 'Juliet Ndambuki', '745869578', 'juliet@gmail.com', 'Five Stars', 'Perfect services...love it'),
(8, 'Denis Iregi', '745862312', 'denis@gmail.com', 'One Star', 'Poor customer services'),
(9, 'Mohammed Mathey', '754865987', 'mohammed@gmail.com', 'One Star', 'Worst services.'),
(10, 'Sudi Mzamo', '784512365', 'sudi@gmail.com', 'Two Stars', 'Average services and customer care.'),
(11, 'Abdirazak Ali', '784562315', 'abdirazak@gmail.com', 'Three Star', 'Affordable services'),
(12, 'Swaleh Zinga', '723514589', 'swaleh@gmail.com', 'Four Stars', 'Great services'),
(13, 'Edward Gitonga', '731254860', 'edaward@gmail.com', 'Four Stars', 'Encouraging services.'),
(14, 'Jelle Kasai', '730124702', 'jellekasai@gmail.com', 'Three Star', 'Just a little bit improvement on the customer care.'),
(15, 'Eric Omondi', '758640210', 'ericomondi@gmail.com', 'Three Star', 'Kindly add on kids hair cut.');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2019-07-25 11:22:38'),
(2, 'Fruit Facial', 500, '2019-07-25 11:22:53'),
(3, 'Charcol Facial', 1000, '2019-07-25 11:23:10'),
(4, 'Deluxe Menicure', 500, '2019-07-25 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2019-07-25 11:23:47'),
(6, 'Normal Menicure', 300, '2019-07-25 11:24:01'),
(7, 'Normal Pedicure', 400, '2019-07-25 11:24:19'),
(8, 'U-Shape Hair Cut', 250, '2019-07-25 11:24:38'),
(9, 'Layer Haircut', 550, '2019-07-25 11:24:53'),
(10, 'Rebonding', 3999, '2019-07-25 11:25:08'),
(11, 'Loreal Hair Color(Full)', 1200, '2019-07-25 11:25:35'),
(12, 'Body Spa', 1500, '2019-08-19 13:36:27'),
(14, 'Test', 100, '2019-08-21 15:45:50'),
(15, 'ABC', 200, '2019-08-21 16:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` int(15) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `PhoneNumber`, `UserName`, `Password`, `created_at`) VALUES
(1, 'Hatibu Mzamo', 'khertibkhamisi@gmail.com', 768413277, 'Laden', '$2y$10$3/6BsUvI6wobSZwJozT5C.VQjFf.sBV7MVDVyBEl22hKJsFECtBM.', '2024-06-20 10:51:47'),
(2, 'Mzamo Badru', 'badrumzamo@gmail.com', 703597722, 'Badru', '$2y$10$7tWrNvucIKKJKDQfnofONO5mYUJBJRZ0Uh6tgiiVLkEqEHaqhL5Ay', '2024-06-20 10:55:54'),
(3, 'Evans Musungu', 'evans@gmail.com', 752135468, 'Evans', '$2y$10$GiyekIVDCc0b1tQWQ5Ls0uNl7KI3n.v6KDTjQotmgU5cxES/l4ygK', '2024-06-20 10:57:07'),
(4, 'Sarita pandey', 'sarita@gmail.com', 721352468, 'Sarita', '$2y$10$sV5iYl/Z2YYfIO59qijkYu14wkKDPbroLIxJbFGeRMmXLvOdWVRYq', '2024-06-20 11:07:36'),
(5, 'Jelle Kasai', 'jellekasai@gmail.com', 745812456, 'Jelle', '$2y$10$cPem11oWt7P5MKHajOAoDOte4SaIttF9KIU6w0FKlQQycqtuQ.7iS', '2024-06-20 11:08:16'),
(6, 'Suleiman Masinde', 'suleiman309@gmail.com', 754685648, 'Suleiman', '$2y$10$wAmbEN.dg5LktXDVeTeTbuKLDDFPU/HxOl4LHUOYboxlrJxNJo9L6', '2024-06-21 11:59:22'),
(7, 'Ammar Bakari', 'ammar@gmail.com', 754123548, 'Ammar', '$2y$10$keE7He4dNwiGJlSalSl7feicsEt7D2XckurodgHIjbrCNzbVmxWyS', '2024-06-23 10:57:59'),
(8, 'Swaleh Zinga', 'swaleh@gmail.com', 745876235, 'Swaleh', '$2y$10$hFebObWcDY5v.52sa4Yee.qpJxiyMNtx8n1Bq/S1YfTzBQ2fLi4QK', '2024-06-23 10:58:55'),
(9, 'Brian Shaban', 'brian@gmail.com', 745862135, 'Brian', '$2y$10$W788m43ba3HLsIXxcirqZOlnAoB94pTGiP2UWM61IHRpOrTVcxr8S', '2024-06-23 11:00:43'),
(10, 'Abdirazak Ali', 'abdirazak@gmail.com', 745812354, 'Abdirazak ', '$2y$10$frBa/0C9ETv70Juwwtc3XO2TrY.tEZMmJ7kkBRUC/onbsFEAWcWzC', '2024-06-23 11:05:53'),
(11, 'Mohammed Mathey', 'mohammed@gmail.com', 754685458, 'Mohammed', '$2y$10$a//8H4.8KGGNYtfJTcjS8.83aoEX9M1xtA4vvpB5PeguiGU7qqbIG', '2024-06-24 06:25:16'),
(12, 'Juliet Ndambuki', 'juliet@gmail.com', 784532154, 'Juliet', '$2y$10$KzZmnpF836rRX0R6lxqgROYCUfY66OnzIGx5CRIiZEHgYJF/vJAuO', '2024-06-24 06:26:19'),
(13, 'Sarah Celine', 'sarah@gmail.com', 742130589, 'Sarah', '$2y$10$umtovdyhgDqfqjqkjSVOIedMiZLBhPXx5B.DeS/b5YeBvRtR1ge5W', '2024-06-24 06:27:10'),
(14, 'Denis Iregi', 'denis@gmail.com', 754862314, 'Denis', '$2y$10$zFiwsbvgmHqbmPB7g56qE.fD.xIX5AWqo8vbDHzKe/oYAPpoUADJW', '2024-06-24 06:28:05'),
(15, 'Brian Gicheru', 'brian@gmail.com', 754623158, 'Gicheru', '$2y$10$PcYUNBLGno3sA4X68AxQ6eCEoqKSrrvJlmxaw7coNMNzxzYLSRjXC', '2024-06-24 06:30:26'),
(16, 'Eric Omondi', 'ericomondi@gmail.com', 720132501, 'Omondi', '$2y$10$1OcC/1VX/6zP5kBgdYC3zuo5PUpt7RkcwVlt/UqxIyWW0jQZgz0um', '2024-06-24 06:48:30'),
(17, 'Edward Gitonga', 'edaward@gmail.com', 756231021, 'Edward', '$2y$10$PNLrtUf1K/34kiFkgUMY1unuT798UckQLmYKhJk5..wbEYG7yTAz.', '2024-06-24 06:49:19'),
(18, 'Sudi Mzamo', 'sudi@gmail.com', 745862315, 'Sudi', '$2y$10$MjqWm4.IJaWg.u3wQgCqxu/wIO4u3093szhDCXTo8gpJ3v30sjSpm', '2024-06-24 07:41:25'),
(19, 'Salim Mwangome', 'mwangome@gmail.com', 742569876, 'Mwangome', '$2y$10$M3dYRtaNhFN7NB40m.tv1OaOpnpHSIuHg4lqa29gsGFh0Fbg31CYu', '2024-06-24 07:48:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
