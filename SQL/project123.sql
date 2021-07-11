-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 03:07 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project123`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `level_a` varchar(50) NOT NULL,
  `admin_l` varchar(50) NOT NULL,
  `admin_p` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `level_a`, `admin_l`, `admin_p`) VALUES
(1, 'admin echo', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `c_time`
--

CREATE TABLE `c_time` (
  `C_time_a` int(10) NOT NULL,
  `C_time_yo` datetime NOT NULL,
  `C_time_mo` datetime NOT NULL,
  `C_time_ye` datetime NOT NULL,
  `C_time_me` datetime NOT NULL,
  `C_time_do` datetime NOT NULL,
  `C_time_de` datetime NOT NULL,
  `admin _ Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `evi`
--

CREATE TABLE `evi` (
  `Evi_name` varchar(100) NOT NULL,
  `Kpi_id` int(10) NOT NULL,
  `Personnel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e_kaset`
--

CREATE TABLE `e_kaset` (
  `E_kaset _id` int(10) NOT NULL,
  `E_kaset _name` varchar(100) NOT NULL,
  `Pek_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e_position`
--

CREATE TABLE `e_position` (
  `E_position_id` int(10) NOT NULL,
  `E_position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `i_kaset`
--

CREATE TABLE `i_kaset` (
  `I_kaset_id` int(10) NOT NULL,
  `I_kaset_name` varchar(100) NOT NULL,
  `Pik_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpi`
--

CREATE TABLE `kpi` (
  `Kpi_id` int(10) NOT NULL,
  `Kpi_name` varchar(100) NOT NULL,
  `Kpi_cancel` varchar(100) NOT NULL,
  `admin _ Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `Occupation_id` int(10) NOT NULL,
  `Occupation_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pek`
--

CREATE TABLE `pek` (
  `Pek_id` int(10) NOT NULL,
  `Pek_name` varchar(100) NOT NULL,
  `Pek_d` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `Personnel_id` int(10) NOT NULL,
  `Personnel_p` varchar(30) NOT NULL,
  `Personnel_name` varchar(30) NOT NULL,
  `Personnel_last` varchar(30) NOT NULL,
  `Personnel_c` varchar(30) NOT NULL,
  `Personnel_o` varchar(30) NOT NULL,
  `Personnel_gender` varchar(10) NOT NULL,
  `Personnel_phone` int(10) NOT NULL,
  `Personnel_d` date NOT NULL,
  `Occupation_id` int(10) NOT NULL,
  `level_p` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pik`
--

CREATE TABLE `pik` (
  `Pik_id` int(10) NOT NULL,
  `Pik_name` varchar(100) NOT NULL,
  `Pik_d` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `p_e_kaset`
--

CREATE TABLE `p_e_kaset` (
  `P_e_kaset _ds` datetime NOT NULL,
  `P_e_kaset _f` varchar(100) NOT NULL,
  `Personnel_id` int(10) NOT NULL,
  `E_kaset _id` int(10) NOT NULL,
  `C_time_a` int(10) NOT NULL,
  `C_time_yo` date NOT NULL,
  `C_time_mo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `p_i_kaset`
--

CREATE TABLE `p_i_kaset` (
  `P_i_kaset _ds` datetime NOT NULL,
  `P_i_kaset _f` varchar(100) NOT NULL,
  `Personnel_id` int(10) NOT NULL,
  `I_kaset_id` int(10) NOT NULL,
  `C_time_a` int(10) NOT NULL,
  `C_time_yo` date NOT NULL,
  `C_time_mo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `p_kpi`
--

CREATE TABLE `p_kpi` (
  `P_kpi_ds` datetime NOT NULL,
  `P_kpi_f` varchar(30) NOT NULL,
  `P_kpi_w` varchar(30) NOT NULL,
  `P_kpi_k` varchar(30) NOT NULL,
  `Personnel_id` int(10) NOT NULL,
  `C_time_a` int(10) NOT NULL,
  `C_time_yo` datetime NOT NULL,
  `C_time_mo` datetime NOT NULL,
  `Kpi_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `c_time`
--
ALTER TABLE `c_time`
  ADD PRIMARY KEY (`C_time_a`,`C_time_yo`,`C_time_mo`);

--
-- Indexes for table `e_kaset`
--
ALTER TABLE `e_kaset`
  ADD PRIMARY KEY (`E_kaset _id`);

--
-- Indexes for table `e_position`
--
ALTER TABLE `e_position`
  ADD PRIMARY KEY (`E_position_id`);

--
-- Indexes for table `i_kaset`
--
ALTER TABLE `i_kaset`
  ADD PRIMARY KEY (`I_kaset_id`);

--
-- Indexes for table `kpi`
--
ALTER TABLE `kpi`
  ADD PRIMARY KEY (`Kpi_id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`Occupation_id`);

--
-- Indexes for table `pek`
--
ALTER TABLE `pek`
  ADD PRIMARY KEY (`Pek_id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`Personnel_id`);

--
-- Indexes for table `pik`
--
ALTER TABLE `pik`
  ADD PRIMARY KEY (`Pik_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kpi`
--
ALTER TABLE `kpi`
  MODIFY `Kpi_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
