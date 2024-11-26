-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2024 pada 08.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt.bendi_car`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `besaran_denda` int(12) NOT NULL,
  `id_denda` int(8) NOT NULL,
  `jenis_denda` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `harga_sewa` int(11) NOT NULL,
  `jenis` char(15) NOT NULL,
  `merek` char(15) NOT NULL,
  `no_polisi` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE `pemilik` (
  `id_petugas` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_telp` int(12) NOT NULL,
  `status/level` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `alamat` char(25) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_ktp` int(16) NOT NULL,
  `no_telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`alamat`, `nama`, `no_ktp`, `no_telp`) VALUES
('marga punduh', 'Agus Rizal', 23753105, 2147483647),
('marga punduh', 'Agus Rizal', 23753105, 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `Nama` char(20) NOT NULL,
  `Id_penyewaan` int(8) NOT NULL,
  `Alamat` char(25) NOT NULL,
  `no_telp` int(12) NOT NULL,
  `no_ktp` int(16) NOT NULL,
  `merek` char(15) NOT NULL,
  `tgl_penyewaan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tgl_pengembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`Nama`, `Id_penyewaan`, `Alamat`, `no_telp`, `no_ktp`, `merek`, `tgl_penyewaan`, `tgl_pengembalian`) VALUES
('nabila', 1, 'GG hi Abdurrahman GG saki', 2147483647, 12345678, 'Innova Reborn', '2024-11-25 13:37:55', 231),
('ricky', 2, 'bakauhenu', 89654688, 228883, 'HR-V', '2024-11-25 13:38:41', 2024);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `kd_kembali` int(8) NOT NULL,
  `kd_pinjam` int(8) NOT NULL,
  `kondisi` char(20) NOT NULL,
  `tgl_kembali` int(8) NOT NULL,
  `tgl_pinjam` int(8) NOT NULL,
  `total_bayar` char(12) NOT NULL,
  `total_denda` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`Id_penyewaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  MODIFY `Id_penyewaan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
