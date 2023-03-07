-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2023 pada 14.22
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

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
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `qty`, `subtotal`) VALUES
(1, 1, 6, 1, 0),
(2, 1, 6, 1, 30000),
(3, 2, 6, 1, 30000),
(4, 3, 6, 1, 250000),
(5, 4, 6, 1, 250000),
(6, 5, 6, 1, 250000),
(7, 6, 6, 1, 250000),
(9, 8, 6, 1, 250000),
(10, 9, 6, 1, 250000),
(11, 10, 1, 1, 250000),
(12, 11, 1, 10, 250000),
(13, 12, 7, 10, 250000),
(14, 13, 7, 10, 500000),
(15, 14, 1, 5, 250000),
(16, 15, 7, 10, 500000),
(17, 16, 7, 10, 500000),
(18, 17, 1, 1, 50000),
(19, 18, 7, 5, 250000),
(24, 19, 8, 1, 150000),
(25, 20, 9, 5, 600000),
(26, 21, 10, 3, 600000),
(27, 22, 10, 3, 600000),
(28, 23, 10, 1, 200000),
(29, 24, 8, 2, 300000),
(30, 25, 5, 5, 350000),
(31, 26, 5, 5, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`) VALUES
(1, 'Riki', 'Bandung', '0853178974'),
(3, 'Rista', 'Sawojajar', '086978778909'),
(4, 'pandu', 'malang', '08799777666788');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(2, 'lili', 'lala', '12345', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(1, 'Lampu', 'Ini lampu', 50000, 'Lampu.png'),
(5, 'Lampu Hias', 'ini adalah lampu hias yang berbentuk bola', 70000, 'Lampu_Hias.png'),
(6, 'Lampu Hias', 'Lampu Hias berbentuk nanas ', 30000, 'Lampu_Nanas.jpg'),
(7, 'Lampu Hias Nanas Minimalis', 'ini adalah lampu hias nanas dengan bentuk minimalis', 50000, 'Lampu_Hias_Nanan.jpg'),
(8, 'kotak musik', 'kotak musik wahana kuda berputar', 150000, 'Kotak_Musik.jpg'),
(9, 'bola salju', 'bola salju dengan warna biru atau pink', 120000, 'bola_salju.jpg'),
(10, 'bola cahaya', 'bola salju yang berisi seperti salju yang memancarkan cahaya didalamnya', 200000, 'Bola_Cahaya.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_petugas`, `tgl_transaksi`) VALUES
(1, 1, 2, '2023-02-20'),
(2, 1, 2, '2023-02-20'),
(3, 1, 2, '2023-02-20'),
(4, 1, 2, '2023-02-20'),
(5, 1, 2, '2023-02-20'),
(6, 1, 2, '2023-02-20'),
(7, 1, 2, '2023-02-20'),
(8, 1, 2, '2023-02-20'),
(9, 1, 2, '2023-02-20'),
(10, 1, 2, '2023-02-20'),
(11, 1, 2, '2023-02-20'),
(12, 1, 2, '2023-02-20'),
(13, 1, 2, '2023-02-20'),
(14, 1, 2, '2023-02-20'),
(15, 1, 2, '2023-02-20'),
(16, 1, 2, '2023-02-20'),
(17, 1, 2, '2023-02-20'),
(18, 1, 2, '2023-02-20'),
(19, 3, 2, '2023-02-20'),
(20, 4, 2, '2023-02-20'),
(21, 3, 2, '2023-02-20'),
(22, 3, 2, '2023-02-20'),
(23, 1, 2, '2023-02-20'),
(24, 3, 2, '2023-03-06'),
(25, 4, 2, '2023-03-06'),
(26, 4, 2, '2023-03-06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`,`id_petugas`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
