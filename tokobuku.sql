-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 10:52 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `novel`
--

CREATE TABLE `novel` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `penulis_buku` varchar(100) NOT NULL,
  `tahun_terbit_buku` varchar(100) NOT NULL,
  `jumlah_beli` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `total_harga` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novel`
--

INSERT INTO `novel` (`id`, `judul_buku`, `penulis_buku`, `tahun_terbit_buku`, `jumlah_beli`, `harga`, `total_harga`) VALUES
(1, 'Kata', 'Nadhifa Allya Tsana', '2018', '5', '98.000', '490.000'),
(2, 'Antares', 'Reinda', '2020', '3', '90000', '270.000'),
(3, 'Maripossa', 'Luluk HF', '2018', '2', '99000', '198000'),
(4, 'Hujan', 'Tere Liye', '2016', '6', '102000', '612000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`id`);
COMMIT;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(0, 'admin', '$2y$10$yE7sbLkdrdJ4j.BMAi4QTO2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
