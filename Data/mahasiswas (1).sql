-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2018 pada 08.00
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_fadila`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `nim` varchar(10) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamt` varchar(255) DEFAULT NULL,
  `notelp` varchar(15) DEFAULT NULL,
  `jenkel` varchar(20) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`nim`, `created_at`, `updated_at`, `deleted_at`, `nama`, `alamt`, `notelp`, `jenkel`, `jurusan`, `fakultas`, `status`) VALUES
('1512500000', '2018-06-19 22:11:52', '2018-06-20 06:00:19', '2018-06-20 06:00:19', 'diedit', 'edit', '123432', 'p', 'si', 'fti', 'aktif'),
('1512503432', '2018-06-19 22:18:32', '2018-06-19 22:23:59', '2018-06-19 22:23:59', 'tester', 'tljerui', '12121', 'perempuan', 'si', 'sss', 'aktif'),
('1512504543', '2018-06-19 22:19:55', '2018-06-19 22:19:55', NULL, 'fadila ahsana', 'pagaralam', '22121', 'per', 'si', 'fti', 'cuti'),
('1512504512', '2018-06-19 22:20:39', '2018-06-19 22:20:39', NULL, 'hasan fadilah', 'pagaralam', '22121', 'per', 'si', 'fti', 'aktif'),
('1512502390', '2018-06-20 05:32:54', '2018-06-20 05:36:50', NULL, 'erick nam', 'pagaralam', '12312', 'laki-laki', 'hi', 'fisip', 'aktif'),
('1512501234', '2018-06-20 05:58:59', '2018-06-20 05:59:47', NULL, 'fadila hasana', 'tl jeruk', '8987110', 'perempuan', 'SI', 'FTI', 'aktif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
