-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2023 pada 13.21
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dagang_wablast`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_responses`
--

CREATE TABLE `api_responses` (
  `id` int(11) NOT NULL,
  `response_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nasabah_hp`
--

CREATE TABLE `nasabah_hp` (
  `id` int(11) NOT NULL,
  `cif` varchar(50) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `nama_identitas` varchar(150) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `send_image`
--

CREATE TABLE `send_image` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `file` varchar(5000) DEFAULT NULL,
  `caption` varchar(5000) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `terkirim` int(11) DEFAULT NULL,
  `callback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `send_link`
--

CREATE TABLE `send_link` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `link` varchar(5000) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `terkirim` int(11) DEFAULT NULL,
  `callback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `send_message`
--

CREATE TABLE `send_message` (
  `id` int(11) NOT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `pesan` varchar(5000) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `terkirim` int(11) DEFAULT NULL,
  `callback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `api_responses`
--
ALTER TABLE `api_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nasabah_hp`
--
ALTER TABLE `nasabah_hp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `send_image`
--
ALTER TABLE `send_image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `send_link`
--
ALTER TABLE `send_link`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `send_message`
--
ALTER TABLE `send_message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `api_responses`
--
ALTER TABLE `api_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nasabah_hp`
--
ALTER TABLE `nasabah_hp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `send_image`
--
ALTER TABLE `send_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `send_link`
--
ALTER TABLE `send_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `send_message`
--
ALTER TABLE `send_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
