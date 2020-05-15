-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 06:23 PM
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
-- Database: `rumahkita`
--

-- --------------------------------------------------------

--
-- Table structure for table `notaris`
--

CREATE TABLE `notaris` (
  `NIP` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `No. Telepon` varchar(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notaris`
--

INSERT INTO `notaris` (`NIP`, `Nama`, `No. Telepon`, `Alamat`) VALUES
('12345', 'Adi', '081221800812', 'Jl. Diponegoro no.13'),
('12345', 'Adi', '089613873849', 'Jl. Raya Ramai no.50'),
('65133', 'Irvan', '081313130808', 'Jl. Hasiap no.211'),
('21212', 'Tika', '085345120987', 'Jl. Jendral Sudirman no.130');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `Nama` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `No_Telepon` varchar(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`Nama`, `Email`, `No_Telepon`, `Alamat`, `password`) VALUES
('admin', 'admin', '2', '3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `penjual`
--

CREATE TABLE `penjual` (
  `Id_Penjual` varchar(20) NOT NULL,
  `Nama_Penjual` varchar(50) NOT NULL,
  `No_Rumah` varchar(20) NOT NULL,
  `No_Telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjual`
--

INSERT INTO `penjual` (`Id_Penjual`, `Nama_Penjual`, `No_Rumah`, `No_Telepon`) VALUES
('56', 'admin', '12', '0128039810');

-- --------------------------------------------------------

--
-- Table structure for table `rumah`
--

CREATE TABLE `rumah` (
  `No_Rumah` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Tipe Rumah` varchar(20) NOT NULL,
  `Id_Penjual` varchar(20) NOT NULL,
  `Harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rumah`
--

INSERT INTO `rumah` (`No_Rumah`, `Alamat`, `Tipe Rumah`, `Id_Penjual`, `Harga`) VALUES
('12', '23', '34', '56', 10000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`Id_Penjual`);

--
-- Indexes for table `rumah`
--
ALTER TABLE `rumah`
  ADD PRIMARY KEY (`No_Rumah`),
  ADD KEY `Id_Penjual` (`Id_Penjual`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rumah`
--
ALTER TABLE `rumah`
  ADD CONSTRAINT `rumah_ibfk_1` FOREIGN KEY (`Id_Penjual`) REFERENCES `penjual` (`Id_Penjual`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
