-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 03:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirpolkam.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `Id` int(11) NOT NULL,
  `Kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`Id`, `Kategori`) VALUES
(1, 'Benih'),
(2, 'Insektisida'),
(3, 'Fungisida'),
(4, 'Herbisida'),
(5, 'Pupuk'),
(6, 'Pakan Ternak'),
(7, 'Karet'),
(8, 'DLL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(5) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level` int(5) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `username`, `password`, `level`, `created`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2022-07-18 21:42:03'),
(2, 'kasir', 'c7911af3adbd12a035b289556d96470a', 2, '2022-07-18 21:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(11) NOT NULL,
  `barcode` varchar(128) NOT NULL,
  `nama_produk` varchar(128) NOT NULL,
  `kategori` int(11) NOT NULL,
  `satuan` int(11) NOT NULL,
  `harga` varchar(128) NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `barcode`, `nama_produk`, `kategori`, `satuan`, `harga`, `stok`, `terjual`) VALUES
(1, 'B1', 'Jagung Paragon', 1, 1, '115000', 0, ''),
(2, 'B2', 'Paria Lipa PM', 1, 2, '37000', 8, '1'),
(3, 'B3', 'Gambas Prima PM', 1, 3, '32000', 0, ''),
(4, 'B4', 'Gambar Primavera', 1, 54, '37000', 28, ''),
(5, 'B5', 'Gambas Mutiara Bumi', 1, 4, '28000', 0, ''),
(6, 'B6', 'Timun Zatavy', 1, 5, '17000', 0, ''),
(7, 'B7', 'Timun Zatavy', 1, 6, '70000', 17, ''),
(8, 'B8', 'Kacang Panjang Kanton Tavi', 1, 7, '130000', 17, ''),
(9, 'B9', 'Kacang Panjang Kanton Tavi', 1, 8, '30000', 0, ''),
(10, 'B10', 'Kacang Panjang Kanton Tavi SP', 1, 54, '15000', 3, ''),
(11, 'B11', 'Terong Kenari', 1, 9, '20000', 0, ''),
(12, 'B12', 'Cabe Pandawa Lima Satria', 1, 54, '25000', 0, ''),
(13, 'B13', 'Cabe Pelita 8', 1, 9, '40000', 0, ''),
(14, 'B14', 'Cabe Akar', 1, 54, '125000', 0, ''),
(15, 'B15', 'Cabe Rawit Midun', 1, 54, '35000', 0, ''),
(16, 'B16', 'Cabe Keriting Mutiara Bumi', 1, 54, '155000', 0, ''),
(17, 'B17', 'Terong Lezata SP', 1, 54, '16500', 0, ''),
(18, 'B18', 'Terong Yuvita SP', 1, 54, '22500', 0, ''),
(19, 'B19', 'Timun Mira', 1, 54, '58000', 0, ''),
(20, 'B20', 'Terong Ronggo', 1, 54, '25000', 0, ''),
(21, 'B21', 'Timun Batara', 1, 6, '68000', 0, ''),
(22, 'B22', 'Bayam Maestro', 1, 10, '25000', 0, ''),
(23, 'B23', 'Kangkung Bika', 1, 11, '50000', 0, ''),
(24, 'B24', 'Kangkung Bangkok', 1, 54, '15000', 0, ''),
(25, 'K1', 'Plus Getah Merah 1000', 7, 17, '38000', 2, ''),
(26, 'K2', 'Plus Getah 1000 Putih', 7, 54, '38000', 2, ''),
(27, 'K3', 'Ethrel', 7, 54, '58000', 1, ''),
(28, 'K4', 'Alfapol', 7, 12, '23000', 6, ''),
(29, 'D1', 'Tali Rafia Matahari', 8, 41, '9000', 1, ''),
(30, 'D2', 'Tali Rafia Matahari', 8, 42, '80000', 10, ''),
(31, 'D3', 'Tali Rafia Winstar', 8, 54, '80000', 7, ''),
(32, 'D4', 'Tali Rafia Cap Panglima', 8, 54, '20000', 4, ''),
(33, 'D5', 'Mulsa Cap Lonceng', 8, 43, '400000', 0, ''),
(34, 'D6', 'Mulsa Cap Lonceng', 8, 44, '400000', 0, ''),
(35, 'D7', 'Mulsa Cap Lonceng', 8, 45, '750000', 0, ''),
(36, 'D8', 'Mulsa Gembok Mas', 8, 46, '320000', 0, ''),
(37, 'D9', 'Mulsa CBA', 8, 45, '550000', 0, ''),
(38, 'D10', 'Mulsa Cap Agro Planet', 8, 43, '300000', 0, ''),
(39, 'D11', 'Mulsa Cap Agro Planet', 8, 45, '500000', 0, ''),
(40, 'D12', 'Mulsa Cap Cahaya Tani', 8, 47, '264000', 0, ''),
(41, 'D13', 'Mulsa Cap Cahaya Tani', 8, 47, '280000', 0, ''),
(42, 'D14', 'Poly Bag', 8, 48, '25000', 0, ''),
(43, 'D15', 'Poly Bag', 8, 55, '26000', 0, ''),
(44, 'D16', 'Poly Bag', 8, 49, '26000', 0, ''),
(45, 'D17', 'Benang Cifa', 8, 54, '23000', 0, ''),
(46, 'D18', 'Sarung Tangan', 8, 54, '5000', 0, ''),
(47, 'D19', 'Jaring', 8, 54, '400000', 0, ''),
(48, 'D20', 'Tray Semai 105', 8, 50, '20000', 0, ''),
(49, 'D21', 'Tray Semai 128', 8, 50, '20000', 0, ''),
(50, 'D22', 'Tray Semai 50', 8, 50, '20000', 0, ''),
(51, 'D23', 'Tray Semai 72', 8, 50, '20000', 0, ''),
(52, 'D24', 'Sprayer Solo Indonesia', 8, 54, '350000', 0, ''),
(53, 'D25', 'Sprayer Elektrik Nokaku', 8, 54, '500000', 0, ''),
(54, 'D26', 'Sprayer', 8, 51, '45000', 0, ''),
(55, 'D27', 'Petrokum (Racun Tikus)', 8, 54, '6000', 0, ''),
(56, 'D28', 'Terpal', 8, 52, '180000', 0, ''),
(57, 'D29', 'Terpai', 8, 53, '180000', 0, ''),
(58, 'D30', 'Karet', 8, 54, '7000', 0, ''),
(59, 'D31', 'Gembor', 8, 54, '75000', 0, ''),
(60, 'PT1', '311-V', 6, 54, '12000', 47, ''),
(61, 'PT2', '512-V', 6, 54, '12000', 33, ''),
(62, 'PT3', 'Jangung Pecah', 6, 54, '9500', 75, ''),
(63, 'PT4', 'Dedak Ayam', 6, 54, '3500', 65, ''),
(64, 'PT5', 'Vita Chick', 6, 54, '2500', 25, ''),
(65, 'PT6', 'Neobro', 6, 54, '3000', 0, ''),
(66, 'PT7', 'Makanan Kucing', 6, 54, '13000', 0, ''),
(67, 'PT8', 'Makanan Kucing Felibate', 6, 54, '15000', 0, ''),
(68, 'PT9', 'Makanan Kucing Lifecat', 6, 54, '15000', 0, ''),
(69, 'I1', 'Alika', 2, 12, '75000', 5, ''),
(70, 'I2', 'Alika', 2, 13, '165000', 2, ''),
(71, 'I3', 'Curacron', 2, 13, '80000', 2, ''),
(72, 'I4', 'Curacron', 2, 12, '37500', 3, ''),
(73, 'I5', 'Confidor', 2, 14, '39000', 5, ''),
(74, 'I6', 'Confidor', 2, 15, '60000', 0, ''),
(75, 'I7', 'Spontan', 2, 16, '40000', 0, ''),
(76, 'I8', 'Spontan', 2, 17, '75000', 0, ''),
(77, 'I9', 'Prevathon', 2, 12, '80000', 0, ''),
(78, 'I10', 'Prevathon', 2, 13, '150000', 0, ''),
(79, 'I11', 'Abenz 22 EC', 2, 12, '85000', 0, ''),
(80, 'I12', 'Abenz 22 EC', 2, 13, '160000', 0, ''),
(81, 'I13', 'Regent Biru', 2, 18, '26000', 0, ''),
(82, 'I14', 'Regent Biru', 2, 12, '46000', 0, ''),
(83, 'I15', 'Furadan 3 GR', 2, 19, '52000', 0, ''),
(84, 'I16', 'Furadan 3 GR', 2, 11, '28000', 0, ''),
(85, 'I17', 'Demolish', 2, 12, '95000', 0, ''),
(86, 'I18', 'Demolish', 2, 18, '55000', 0, ''),
(87, 'I19', 'Abacel 18EC', 2, 12, '45000', 0, ''),
(88, 'I20', 'Abacel 18EC', 2, 17, '125000', 0, ''),
(89, 'I21', 'Pegasus', 2, 20, '85000', 0, ''),
(90, 'I22', 'Matarin', 2, 13, '55000', 0, ''),
(91, 'I23', 'Matarin', 2, 17, '80000', 0, ''),
(92, 'I24', 'Metindo 25 WP', 2, 14, '25000', 0, ''),
(93, 'I25', 'Metindo 25 WP', 2, 21, '55000', 0, ''),
(94, 'I26', 'Matador', 2, 18, '20000', 0, ''),
(95, 'I27', 'Matador', 2, 20, '32500', 0, ''),
(96, 'I28', 'Matador', 2, 13, '70000', 0, ''),
(97, 'I29', 'Lannate 25 WP', 2, 14, '28000', 0, ''),
(98, 'I30', 'Lannate 25 WP', 2, 22, '7500', 0, ''),
(99, 'I31', 'Dangke', 2, 54, '32500', 0, ''),
(100, 'I32', 'Dursban', 2, 12, '22000', 0, ''),
(101, 'I33', 'Dursban', 2, 13, '45000', 0, ''),
(102, 'I34', 'Decis 2.5 EC', 2, 18, '20000', 0, ''),
(103, 'I35', 'Decis 2.5 EC', 2, 12, '33000', 0, ''),
(104, 'I36', 'Decis 2.5 EC', 2, 13, '70000', 0, ''),
(105, 'I37', 'Okrite 20 EC', 2, 12, '55000', 0, ''),
(106, 'I38', 'Tamabas 500 EC', 2, 23, '60000', 0, ''),
(107, 'I39', 'Stargate 600 SC', 2, 54, '140000', 0, ''),
(108, 'I40', 'Morgent', 2, 54, '40000', 0, ''),
(109, 'I41', 'Cronus', 2, 54, '125000', 0, ''),
(110, 'I42', 'Starelle', 2, 54, '37500', 0, ''),
(111, 'I43', 'Metindo 40SP', 2, 54, '65000', 0, ''),
(112, 'I44', 'Meurtiur', 2, 13, '115000', 0, ''),
(113, 'I45', 'Meurtiur', 2, 12, '55000', 0, ''),
(114, 'I46', 'Petrogenol', 2, 54, '10000', 0, ''),
(115, 'I47', 'Vampyr', 2, 12, '105000', 0, ''),
(116, 'I48', 'Vampyr', 2, 16, '175000', 0, ''),
(117, 'I49', 'Santoat', 2, 12, '40000', 0, ''),
(118, 'I50', 'Santoat', 2, 13, '67000', 0, ''),
(119, 'I51', 'Acendo 75 SP', 2, 14, '28000', 0, ''),
(120, 'I52', 'Sibutox', 2, 54, '27500', 0, ''),
(121, 'I53', 'Marshall', 2, 12, '30000', 0, ''),
(122, 'I54', 'Marshall', 2, 13, '100000', 0, ''),
(123, 'I55', 'Marshall', 2, 11, '40000', 0, ''),
(124, 'I56', 'Sanvin', 2, 26, '90000', 0, ''),
(125, 'F1', 'Amistartop 325 SC', 3, 18, '70000', 5, ''),
(126, 'F2', 'Amistartop 325 SC', 3, 12, '130000', 1, ''),
(127, 'F3', 'Amistartop 325 SC', 3, 13, '285000', 2, ''),
(128, 'F4', 'Antracol 70 WP', 3, 21, '52000', 3, ''),
(129, 'F5', 'Antracol 70 WP', 3, 7, '83000', 3, ''),
(130, 'F6', 'Redomil Gold', 3, 14, '43000', 0, ''),
(131, 'F7', 'Bion M', 3, 7, '190000', 0, ''),
(132, 'F8', 'Nefos', 3, 7, '130000', 0, ''),
(133, 'F9', 'Copcide 77', 3, 26, '100000', 0, ''),
(134, 'F10', 'Copcide 77', 3, 11, '200000', 0, ''),
(135, 'F11', 'Scorpio', 3, 54, '135000', 0, ''),
(136, 'F12', 'Glumon', 3, 12, '60000', 0, ''),
(137, 'F13', 'Glumon', 3, 18, '35000', 0, ''),
(138, 'F14', 'Dithane M-45 80 WP', 3, 11, '130000', 0, ''),
(139, 'F15', 'Dithane M-45 80 WP', 3, 7, '70000', 0, ''),
(140, 'F16', 'Dithane M-45 80 WP', 3, 56, '35000', 0, ''),
(141, 'F17', 'Antila 80 WP', 3, 11, '90000', 0, ''),
(142, 'F18', 'Heksa 50SC', 3, 54, '60000', 0, ''),
(143, 'F19', 'Rovral', 3, 54, '75000', 0, ''),
(144, 'F20', 'Flasher', 3, 54, '200000', 0, ''),
(145, 'F21', 'Nemispor', 3, 11, '115000', 0, ''),
(146, 'H1', 'Roundup', 4, 28, '135000', 2, ''),
(147, 'H2', 'Round', 4, 16, '40000', 2, ''),
(148, 'H3', 'Roundup', 4, 29, '550000', 1, ''),
(149, 'H4', 'Gramaxone', 4, 28, '110000', 4, ''),
(150, 'H5', 'Gramaxone', 4, 13, '45000', 0, ''),
(151, 'H6', 'Gramaxone', 4, 17, '65000', 0, ''),
(152, 'H7', 'Gramaxone', 4, 30, '530000', 0, ''),
(153, 'H8', 'Gramaxone', 4, 31, '1750000', 0, ''),
(154, 'H9', 'Noxone', 4, 28, '110000', 0, ''),
(155, 'H10', 'Basmilang', 4, 28, '125000', 0, ''),
(156, 'P1', 'NPK Mutiara', 5, 34, '900000', 4, ''),
(157, 'P2', 'NPK Mutiara', 5, 35, '19000', 0, ''),
(158, 'P3', 'NPK Mutiara', 5, 36, '22000', 20, ''),
(159, 'P4', 'NPK Laoying 16.16.16', 5, 34, '725000', 0, ''),
(160, 'P5', 'NPK Laoying 16.16.16', 5, 35, '18500', 50, ''),
(161, 'P6', 'Mestac Laoying', 5, 34, '460000', 0, ''),
(162, 'P7', 'Mestac Laoying', 5, 35, '9500', 0, ''),
(163, 'P8', 'NPK Kacil Mas 16.16.16', 5, 35, '17500', 0, ''),
(164, 'P9', 'KCL Meroke Jerman', 5, 34, '850000', 0, ''),
(165, 'P10', 'KCL Meroke Jerman', 5, 35, '17500', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id_role` int(11) NOT NULL,
  `nama_role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id_role`, `nama_role`) VALUES
(1, 'Administrator'),
(2, 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `tb_satuan`
--

CREATE TABLE `tb_satuan` (
  `Id` int(11) NOT NULL,
  `Satuan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_satuan`
--

INSERT INTO `tb_satuan` (`Id`, `Satuan`) VALUES
(1, '1750 Butir'),
(2, '50 Butir'),
(3, '75 S/10 Gram'),
(4, '20 x 10 Gram'),
(5, '150 Butir'),
(6, '800 Butir'),
(7, '500 Gram'),
(8, 'Per / Ons'),
(9, '10 Gram'),
(10, '50 Gram'),
(11, '1 Kg'),
(12, '100 ML'),
(13, '250 ML'),
(14, '100 Gram'),
(15, '60 ML'),
(16, '200 ML'),
(17, '500 ML'),
(18, '50 ML'),
(19, '2 KG'),
(20, '80 ML'),
(21, '250 Gram'),
(22, '15 Gram'),
(23, '400 ML'),
(24, '600 SC'),
(25, '40 SP'),
(26, '400 Gram'),
(27, '50 SC'),
(28, '1 Liter'),
(29, '4 Liter'),
(30, '5 Liter'),
(31, '20 Liter'),
(32, '20 Gram'),
(33, '5 Gram'),
(34, 'Sak'),
(35, 'Kg'),
(36, 'Kemasan'),
(37, 'Sak (25 Kg)'),
(38, '50 KG'),
(39, 'KNO 3 Merah'),
(40, 'KNO 3 Putih'),
(41, 'Satuan'),
(42, 'Bal'),
(43, '120 x 250 m'),
(44, '90 x 300 m'),
(45, '120 x 500 m'),
(46, '60 cm x 8 Kg'),
(47, '90 x 335 m'),
(48, '8 x 12 m'),
(49, '30 x 35 m'),
(50, 'Lobang'),
(51, '2 Liter'),
(52, '2 x 8 m'),
(53, '3 x 4 m'),
(54, 'Lainnya'),
(55, '8 x 10 m'),
(56, '200 Gram');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok_keluar`
--

CREATE TABLE `tb_stok_keluar` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `barcode` int(11) NOT NULL,
  `jumlah` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_stok_keluar`
--

INSERT INTO `tb_stok_keluar` (`id`, `tanggal`, `barcode`, `jumlah`, `keterangan`) VALUES
(1, '2022-07-24 20:34:00', 2, '1', 'rusak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stok_masuk`
--

CREATE TABLE `tb_stok_masuk` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `barcode` int(11) NOT NULL,
  `jumlah` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_stok_masuk`
--

INSERT INTO `tb_stok_masuk` (`id`, `tanggal`, `barcode`, `jumlah`, `keterangan`, `supplier`) VALUES
(1, '2022-07-24 20:12:00', 1, '0', 'penambahan', 1),
(2, '2022-07-24 20:12:00', 2, '10', 'penambahan', 2),
(3, '2022-07-24 20:13:00', 3, '0', 'penambahan', 2),
(4, '2022-07-24 20:13:00', 4, '28', 'penambahan', 2),
(5, '2022-07-24 20:13:00', 5, '0', 'penambahan', 3),
(7, '2022-07-24 20:14:00', 6, '20', 'penambahan', 2),
(8, '2022-07-24 20:15:00', 7, '17', 'penambahan', 2),
(9, '2022-07-24 20:15:00', 8, '15', 'penambahan', 2),
(10, '2022-07-24 20:16:00', 9, '0', 'penambahan', 2),
(11, '2022-07-24 20:16:00', 10, '3', 'penambahan', 2),
(12, '2022-07-24 20:17:00', 69, '5', 'penambahan', 7),
(13, '2022-07-24 20:17:00', 70, '2', 'penambahan', 7),
(14, '2022-07-24 20:18:00', 71, '2', 'penambahan', 7),
(15, '2022-07-24 20:18:00', 72, '3', 'penambahan', 7),
(16, '2022-07-24 20:18:00', 73, '5', 'penambahan', 8),
(17, '2022-07-24 20:19:00', 125, '5', 'penambahan', 7),
(18, '2022-07-24 20:19:00', 126, '1', 'penambahan', 7),
(19, '2022-07-24 20:20:00', 127, '2', 'penambahan', 7),
(20, '2022-07-24 20:20:00', 128, '3', 'penambahan', 8),
(21, '2022-07-24 20:20:00', 129, '3', 'penambahan', 8),
(22, '2022-07-24 20:21:00', 146, '2', 'penambahan', 26),
(23, '2022-07-24 20:21:00', 147, '2', 'penambahan', 26),
(24, '2022-07-24 20:21:00', 148, '1', 'penambahan', 26),
(25, '2022-07-24 20:22:00', 149, '4', 'penambahan', 7),
(26, '2022-07-24 20:22:00', 150, '0', 'penambahan', 7),
(27, '2022-07-24 20:22:00', 156, '4', 'penambahan', 29),
(28, '2022-07-24 20:23:00', 157, '0', 'penambahan', 29),
(29, '2022-07-24 20:23:00', 158, '20', 'penambahan', 29),
(30, '2022-07-24 20:24:00', 159, '0', 'penambahan', 30),
(31, '2022-07-24 20:24:00', 160, '50', 'penambahan', 30),
(32, '2022-07-24 20:24:00', 60, '47', 'penambahan', 53),
(33, '2022-07-24 20:25:00', 61, '33', 'penambahan', 53),
(34, '2022-07-24 20:25:00', 62, '75', 'penambahan', 53),
(35, '2022-07-24 20:25:00', 63, '65', 'penambahan', 53),
(36, '2022-07-24 20:26:00', 64, '25', 'penambahan', 53),
(37, '2022-07-24 20:26:00', 25, '2', 'penambahan', 53),
(38, '2022-07-24 20:26:00', 26, '2', 'penambahan', 53),
(39, '2022-07-24 20:27:00', 27, '1', 'penambahan', 8),
(40, '2022-07-24 20:27:00', 28, '6', 'penambahan', 53),
(41, '2022-07-24 20:28:00', 29, '1', 'penambahan', 47),
(42, '2022-07-24 20:28:00', 30, '10', 'penambahan', 47),
(43, '2022-07-24 20:28:00', 31, '7', 'penambahan', 53),
(44, '2022-07-24 20:28:00', 32, '4', 'penambahan', 48),
(45, '2022-07-24 20:29:00', 33, '0', 'penambahan', 49);

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id`, `nama`) VALUES
(1, 'Benih Pertiwi'),
(2, 'Panah Merah'),
(3, 'Prabu Agro Mandiri'),
(4, 'Bintang Asia'),
(5, 'Akar'),
(6, 'Mutiara Bumi'),
(7, 'Syngenta'),
(8, 'Bayer'),
(9, 'Agricon'),
(10, 'FMC'),
(11, 'Advansia'),
(12, 'D-BASF'),
(13, 'Fajar Nasional Cipta'),
(14, 'DGW'),
(15, 'Excel Megindo'),
(16, 'Mitra Kreasi'),
(17, 'Dupon'),
(18, 'DOW'),
(19, 'MKD'),
(20, 'Golden Farm'),
(21, 'Santani'),
(22, 'Biotis'),
(23, 'Kapal Terbang'),
(24, 'Kresna'),
(25, 'Primasid'),
(26, 'Monagro Kimia'),
(27, 'Petrokimia'),
(28, 'Corteva'),
(29, 'Mutiara'),
(30, 'Laoying'),
(31, 'Kancil Mas'),
(32, 'Meroke'),
(33, 'Mahkota'),
(34, 'Pusri'),
(35, 'Cap Burung'),
(36, 'Tawon'),
(37, 'Pak Tani'),
(38, 'Petrokimia Gresik'),
(39, 'M-100'),
(40, 'Tabita Jaya'),
(41, 'Bunga Tani'),
(42, 'NPK Walet'),
(43, 'SLP'),
(44, 'Agung Lestari'),
(45, 'Bimagro'),
(46, 'Cap Singa'),
(47, 'Matahari'),
(48, 'Panglima'),
(49, 'Lonceng'),
(50, 'Agro Planet'),
(51, 'Cahaya Tani'),
(52, 'Yoto'),
(53, 'Lain');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `barcode` varchar(128) NOT NULL,
  `qty` varchar(128) NOT NULL,
  `total_bayar` varchar(128) NOT NULL,
  `jumlah_uang` varchar(128) NOT NULL,
  `nota` varchar(15) NOT NULL,
  `kasir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `tanggal`, `barcode`, `qty`, `total_bayar`, `jumlah_uang`, `nota`, `kasir`) VALUES
(1, '2022-07-24 20:35:56', '2', '1', '37000', '37000', 'XN53ZP1GCCJ714A', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tb_satuan`
--
ALTER TABLE `tb_satuan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_stok_keluar`
--
ALTER TABLE `tb_stok_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_stok_masuk`
--
ALTER TABLE `tb_stok_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_satuan`
--
ALTER TABLE `tb_satuan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tb_stok_keluar`
--
ALTER TABLE `tb_stok_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_stok_masuk`
--
ALTER TABLE `tb_stok_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
