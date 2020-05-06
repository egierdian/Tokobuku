-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 08:54 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kd_buku` char(7) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahun_terbit` varchar(10) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul`, `penerbit`, `pengarang`, `tahun_terbit`, `harga`, `stok`) VALUES
('B0003', 'Teknik Persuasi yang Efektif', 'Interaksara', 'Robert.', '2018', 90000, 95),
('B0001', 'Bikin Mading Lebih Keren', 'Info Komputer', 'Pramana Sukmajati', '2012', 150000, 95),
('B0002', 'Ice Breaker', 'Penerbit Andi', 'Adi Soenarno', '2019', 70000, 190),
('B0004', 'Agar Siapa Saja Mau Berubah', 'Serambi', 'Pramana Sukmajati', '2009', 150000, 98),
('B0005', 'Buku Tulis 32 Lembar', 'Sidu', 'Sidu', '2010', 2500, 890);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `no_transaksi` varchar(7) NOT NULL,
  `kd_buku` varchar(7) NOT NULL,
  `harga` double NOT NULL,
  `jumlah_beli` int(12) NOT NULL,
  `subtotal` double NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`no_transaksi`, `kd_buku`, `harga`, `jumlah_beli`, `subtotal`, `tanggal`) VALUES
('TR0001', 'B0003', 90000, 3, 270000, '2019-07-03'),
('TR0002', 'B0004', 150000, 5, 750000, '2019-07-03'),
('TR0004', 'B0004', 150000, 2, 300000, '2019-07-03'),
('TR0003', 'B0002', 70000, 2, 140000, '2019-07-03'),
('TR0006', 'B0004', 150000, 1, 150000, '2019-07-03'),
('TR0005', 'B0004', 150000, 90, 13500000, '2019-07-03'),
('TR0007', 'B0002', 70000, 54, 3780000, '2019-07-03'),
('TR0008', 'B0003', 90000, 93, 8370000, '2019-07-04'),
('TR0009', 'B0001', 150000, 2, 300000, '2019-07-04'),
('TR0010', 'B0003', 90000, 1, 90000, '2019-07-04'),
('TR0011', 'B0003', 90000, 1, 90000, '2019-07-04'),
('TR0012', 'B0003', 90000, 1, 90000, '2019-07-04'),
('TR0013', 'B0001', 150000, 2, 300000, '2019-07-04'),
('TR0013', 'B0003', 90000, 1, 90000, '2019-07-04'),
('TR0014', 'B0005', 2500, 100, 250000, '2019-07-06'),
('TR0015', 'B0005', 2500, 10, 25000, '2019-07-07'),
('TR0015', 'B0001', 150000, 1, 150000, '2019-07-07'),
('TR0016', 'B0003', 90000, 1, 90000, '2019-07-25'),
('TR0017', 'B0003', 90000, 1, 90000, '2019-07-27'),
('TR0018', 'B0003', 90000, 1, 90000, '2019-07-27'),
('TR0018', 'B0001', 150000, 2, 300000, '2019-07-27'),
('TR0019', 'B0003', 90000, 3, 270000, '2020-03-03'),
('TR0019', 'B0004', 150000, 2, 300000, '2020-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `head_transaksi`
--

CREATE TABLE `head_transaksi` (
  `no_transaksi` varchar(7) NOT NULL,
  `tanggal` date NOT NULL,
  `total` double NOT NULL,
  `bayar` double NOT NULL,
  `kembali` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head_transaksi`
--

INSERT INTO `head_transaksi` (`no_transaksi`, `tanggal`, `total`, `bayar`, `kembali`) VALUES
('TR0008', '2019-07-04', 8370000, 9000000, 630000),
('TR0007', '2019-07-03', 3780000, 3780000, 0),
('TR0006', '2019-07-03', 150000, 200000, 50000),
('TR0005', '2019-07-03', 13500000, 20000000, 6500000),
('TR0004', '2019-07-03', 300000, 300000, 0),
('TR0003', '2019-07-03', 140000, 200000, 60000),
('TR0002', '2019-07-03', 750000, 800000, 50000),
('TR0001', '2019-07-03', 270000, 300000, 30000),
('TR0009', '2019-07-04', 300000, 300000, 0),
('TR0010', '2019-07-04', 90000, 90000, 0),
('TR0011', '2019-07-04', 90000, 100000, 10000),
('TR0012', '2019-07-04', 90000, 100000, 10000),
('TR0013', '2019-07-04', 390000, 400000, 10000),
('TR0014', '2019-07-06', 250000, 300000, 50000),
('TR0015', '2019-07-07', 175000, 200000, 25000),
('TR0016', '2019-07-25', 90000, 100000, 10000),
('TR0017', '2019-07-27', 90000, 90000, 0),
('TR0018', '2019-07-27', 390000, 400000, 10000),
('TR0019', '2020-03-03', 570000, 600000, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(7) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(14) NOT NULL,
  `password` varchar(16) NOT NULL,
  `hak_akses` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `jk`, `agama`, `alamat`, `telp`, `password`, `hak_akses`) VALUES
('IDK0002', 'Haryadi', 'Laki-Laki', 'Islam', 'Majalengka', '08914829482', '123', 'Kasir'),
('IDK0003', 'Nanda', 'Perempuan', 'Islam', 'Cimahi', '082111595911', 'iniaja', 'Kasir'),
('IDK0001', 'Egi Erdian', 'Laki-Laki', 'Islam', 'Cimahi', '082127703277', 'Egi', 'Admin'),
('IDK0004', 'Fitri Febriyani', 'Perempuan', 'Islam', 'Kerkof - Cimahi', '08214184814', '123', 'Kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`no_transaksi`,`kd_buku`);

--
-- Indexes for table `head_transaksi`
--
ALTER TABLE `head_transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
