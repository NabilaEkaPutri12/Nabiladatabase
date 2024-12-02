-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2024 pada 16.03
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
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `harga_sewa` int(11) NOT NULL,
  `jenis` char(15) NOT NULL,
  `merek` char(15) NOT NULL,
  `no_polisi` int(4) NOT NULL,
  `id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`harga_sewa`, `jenis`, `merek`, `no_polisi`, `id`) VALUES
(5000000, 'Mobil', 'Alphard', 1231, 1),
(7000000, 'Mobil', 'BMW', 1232, 2),
(2000000, 'Mobil', 'Ayla', 1233, 3),
(3000000, 'Mobil', 'Brio', 1234, 4),
(6000000, 'Mobil', 'Innova Riborn', 1235, 5),
(7000000, 'Mobil', 'Rubicon', 1236, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `usename` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `usename`, `password`) VALUES
(1, 'nabila', '1212'),
(2, 'Nabila Eka Putri', '1212'),
(3, 'bila', '1201'),
(4, 'Kaila Salsabila', '3112');

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
('ricky', 2, 'bakauhenu', 89654688, 228883, 'HR-V', '2024-11-25 13:38:41', 2024),
('M Agus Rizal', 3, 'Punduh Pidada', 2147483647, 18090525, 'Innova Reborn', '2024-11-26 07:18:34', 2024),
('ripan', 4, 'GG hi Abdurrahman GG saki', 8765, 123, 'Alphard', '2024-12-02 10:38:27', 2024),
('Kaila', 5, 'gg saki', 897654, 12345678, 'Aila', '2024-12-02 14:08:18', 2024);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_telepon` int(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama`, `no_telepon`, `username`, `password`) VALUES
(1, 'Nabila', 81234567, 'bila', '1201');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`Id_penyewaan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  MODIFY `Id_penyewaan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
