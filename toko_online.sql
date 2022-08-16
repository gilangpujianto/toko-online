-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 04:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'SEPATU ', 'SEPATU ORI ', 'LAKI', 300000, 10, 'sepatu.jpg'),
(2, 'HANDPHONE', 'HP IPHONE 13', 'ELEKTRONIK', 1500000, 5, 'hp.jpg'),
(3, 'KAMERA', 'KAMERA CANON EOS 77D', ' ELEKTRONIK', 6000000, 8, 'kamera.jpg'),
(4, 'LAPTOP', 'LAPTOP ASUS ZENBOOK OLED', 'ELEKTRONIK', 13000000, 10, 'laptop.png'),
(5, 'JAM', 'JAM ORI', 'LAKI', 500000, 5, 'jam1.jpg'),
(8, 'BARBEL', 'BARBEL KECIL', 'Olahraga', 250000, 15, 'barbel.jpg'),
(9, 'BARBEL BESAR', 'BARBEL BESAR & MURAH', 'Olahraga', 100000, 10, 'barbel_murah.jpg'),
(10, 'PELARI DITEMPAT', 'BISA LARI DITEMPAT', 'Olahraga', 3500000, 20, 'lari_tempat.jpg'),
(11, 'SWEATER PRIA', 'SWEATER PRIA', 'LAKI', 150000, 49, 'sweter_pria.jpg'),
(12, 'TOPI PRIA', 'TOPI PRIA', 'LAKI', 100000, 35, 'topi_pria.jpg'),
(13, 'JAM TANGAN PRIA', 'JAM TANGAN PRIA', 'LAKI', 500000, 5, 'jam_tangan_pria.jpg'),
(14, 'BAJU WANITA', 'BAJU WANITA', 'WANITA', 200000, 25, 'baju_wanita1.jpg'),
(15, 'CELANA WANITA', 'CELANA WANITA', 'WANITA', 150000, 23, 'celana_wanita.jpg'),
(16, 'TAS WANITA', 'TAS WANITA', 'WANITA', 1000000, 15, 'tas_wanita.jpg'),
(17, 'BAJU ANAK', 'BAJU ANAK ANAK', 'ANAK', 100000, 40, 'baju_anak-anak.jpg'),
(18, 'TAS ANAK', 'TAS ANAK ANAK', 'ANAK', 170000, 40, 'tas_anak_anak.jpg'),
(19, 'SWEATER ANAK', 'SWEATER ANAK-ANAK', 'ANAK', 200000, 40, 'sweter_anak.jpg'),
(20, 'ASUS ROG', 'ASUS ROG 1TERA', 'Elektronik', 2000000, 3, 'asus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(9, 'Gilang Pujianto', 'Cimanggu gg amail', '2022-08-14 00:26:59', '2022-08-15 00:26:59'),
(10, 'Neneng Intan Fitriyani', 'Cimanggu gg amail', '2022-08-14 12:46:56', '2022-08-15 12:46:56'),
(11, 'Haniff', 'Jakarta Kota', '2022-08-14 13:15:58', '2022-08-15 13:15:58'),
(12, '', '', '2022-08-14 13:18:19', '2022-08-15 13:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(11, 9, 5, 'JAM', 1, 500000, ''),
(12, 9, 4, 'LAPTOP', 2, 13000000, ''),
(13, 9, 2, 'HANDPHONE', 2, 1500000, ''),
(14, 10, 4, 'LAPTOP', 1, 13000000, ''),
(15, 10, 1, 'SEPATU ', 1, 300000, ''),
(16, 10, 10, 'PELARI DITEMPAT', 1, 3500000, ''),
(17, 10, 14, 'BAJU WANITA', 1, 200000, ''),
(18, 10, 20, 'ASUS ROG', 1, 2000000, ''),
(19, 10, 16, 'TAS WANITA', 1, 1000000, ''),
(20, 10, 18, 'TAS ANAK', 1, 170000, ''),
(21, 11, 11, 'SWEATER PRIA', 1, 150000, ''),
(22, 12, 15, 'CELANA WANITA', 2, 150000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_barang = NEW.id_barang;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'gilang', 'gilang', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
