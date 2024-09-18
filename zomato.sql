-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 05:20 AM
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
-- Database: `zomato`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Customer_Name` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Address` varchar(300) DEFAULT NULL,
  `City` varchar(300) DEFAULT NULL,
  `Pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Customer_Name`, `Contact`, `Created_at`, `Address`, `City`, `Pincode`) VALUES
(1, 'ChandraPrakash', '9628797572', '2024-09-15 14:17:28', 'Raptinagar', 'Gorakhpur', 273001),
(2, 'AnandGupta', '7379593167', '2024-09-15 14:20:22', 'MedicalCollege', 'Gorakhpur', 273002),
(3, 'NeelratnJaiswal', '9792216153', '2024-09-15 14:28:34', 'Purania', 'Gorakhpur', 273003),
(4, 'AnilKumar', '9838542766', '2024-09-15 14:35:40', 'Chowk', 'Gorakhpur', 273004),
(5, 'Sanjay', '9628391225', '2024-09-15 14:35:40', 'Aishabagh', 'Gorakhpur', 273006),
(6, 'Sanjeev', '9628249445', '2024-09-15 14:35:40', 'MalviyaNagar', 'Gorakhpur', 273007),
(7, 'Ranjeet', '9792260343', '2024-09-15 14:35:40', 'Ashiyana', 'Gorakhpur', 273008),
(8, 'Sudhir', '9839010975', '2024-09-15 14:35:40', 'BanglaBazar', 'Gorakhpur', 273011),
(9, 'Ritesh', '9919496076', '2024-09-15 14:35:40', 'RashmiKhand', 'Gorakhpur', 273013);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `ID` int(11) NOT NULL,
  `Restaurant_Name` varchar(244) DEFAULT NULL,
  `Item_Name` varchar(255) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`ID`, `Restaurant_Name`, `Item_Name`, `Quantity`, `Amount`) VALUES
(1, 'Aryans', 'Shahi-paneer', 'full', 500.00),
(2, 'Aryans', 'Shahi-paneer', 'Half', 300.00),
(3, 'Aryans', 'JiraRice', 'full', 300.00),
(4, 'Aryans', 'JiraRice', 'Half', 200.00),
(5, 'Aryans', 'Soup', 'full', 200.00),
(6, 'Aryans', 'Soup', 'Half', 120.00);

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `ID` int(11) NOT NULL,
  `Rider_Name` varchar(255) DEFAULT NULL,
  `Rider_Contact` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`ID`, `Rider_Name`, `Rider_Contact`) VALUES
(1, 'Shailendra', '9919370723'),
(2, 'ArjunGupta', '7408803955'),
(3, 'SanjeevJaiswal', '9984161510'),
(4, 'SunilKumar', '9839014873'),
(5, 'Raju', '9721126342'),
(6, 'NeelratnJaiswal', '9792216153');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Contact` (`Contact`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
