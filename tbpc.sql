-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 29, 2021 at 04:48 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tbpc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pc`
--

CREATE TABLE `tb_pc` (
  `kodepc` varchar(10) NOT NULL,
  `merek` varchar(10) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `penyimpanan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pc`
--

INSERT INTO `tb_pc` (`kodepc`, `merek`, `ram`, `penyimpanan`) VALUES
('PC01', 'Asus', '12', '256'),
('PC02', 'Samsung', '6', '128'),
('PC03', 'Lenovo', '8', '256'),
('PC04', 'HP', '12', '256'),
('PC05', 'Acer', '8', '256'),
('PC06', 'Asus', '12', '215');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `kodepenyewa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`kodepenyewa`, `nama`, `alamat`, `telepon`) VALUES
('P01', 'Bambang', 'Jl. Kasturi', '0987564312893'),
('P02', 'Hari', 'Intan Sari', '098965278172'),
('P03', 'Toni', 'Loktabat Utara', '0987564512763'),
('P04', 'Ilham', 'Banjarbaru Asri', '0967543215467'),
('P05', 'Zaka', 'Jl. Sidodadi', '0987564321458'),
('P06', 'Dana', 'Jl. Karamunting ', '0987567432134');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `kodepc` varchar(10) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `ram` varchar(200) NOT NULL,
  `penyimpanan` varchar(200) NOT NULL,
  `kodepenyewa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tanggalsewa` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `hargasewa` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`kodepc`, `merek`, `ram`, `penyimpanan`, `kodepenyewa`, `nama`, `alamat`, `telepon`, `tanggalsewa`, `tanggalkembali`, `hargasewa`) VALUES
('PC01', 'Asus', '12', '256', 'P03', 'Toni', 'Loktabat Utara', '0987564512763', '2021-12-04', '2021-12-06', 200000),
('PC02', 'Samsung', '6', '128', 'P02', 'Hari', 'Intan Sari', '0989652781726', '2021-12-16', '2021-12-18', 400000),
('PC03', 'Lenovo', '8', '256', 'P05', 'Zaka', 'Jl. Sidodadi', '0987564321458', '2021-12-07', '2021-12-10', 400000),
('PC04', 'HP', '11', '256', 'P04', 'Ilham', 'Banjarbaru Asri', '0967543215467', '2021-12-17', '2021-12-18', 100000),
('PC05', 'Acer', '8', '256', 'P06', 'Dana', 'Jl. Karamunting', '0987567432134', '2021-12-16', '2021-12-18', 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pc`
--
ALTER TABLE `tb_pc`
  ADD PRIMARY KEY (`kodepc`);

--
-- Indexes for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`kodepenyewa`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`kodepc`,`kodepenyewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
