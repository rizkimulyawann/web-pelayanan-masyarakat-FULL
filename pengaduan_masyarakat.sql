-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2024 pada 04.42
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('11111111', 'masyarakat', 'masyarakat', 'd9a8c6c010a37fdc9850fe6d8c064880', '00008888'),
('1173021303030002', 'Agus Setiawan', 'Agus Setiawan', '827ccb0eea8a706c4c34a16891f84e7b', '082453371821'),
('1173021303030003', 'Hafizal', 'Hafizal', '827ccb0eea8a706c4c34a16891f84e7b', '084735462516'),
('1173021303030004', 'Randi', 'Randi', '827ccb0eea8a706c4c34a16891f84e7b', '083134526171'),
('1173021303030005', 'Mahira', 'Mahira', '827ccb0eea8a706c4c34a16891f84e7b', '084756573615'),
('1173021303030006', 'Putri', 'Putri', '827ccb0eea8a706c4c34a16891f84e7b', '083425361719'),
('1173021303030007', 'Ismail', 'Ismail', '827ccb0eea8a706c4c34a16891f84e7b', '086475462571'),
('1173021303030008', 'Maryam', 'Maryam', '827ccb0eea8a706c4c34a16891f84e7b', '082637289138'),
('1173021303030010', 'Sulaiman', 'Sulaiman', '827ccb0eea8a706c4c34a16891f84e7b', '082256764736');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(5) NOT NULL,
  `tgl_pengaduan` varchar(20) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('proses','selesai','ditolak') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2020-02-13', '1376012310010005', 'pak itiak urang masuak rumah wak', '130220204341itiak.png', 'selesai'),
(2, '2023-12-17', '1376012310010001', 'Saya ingin melaporkan tindak pidana korupsi', '1712202350241.png', 'selesai'),
(3, '2023-12-17', '1173021303030010', '', '1712202323403.jpg', 'selesai'),
(6, '2023-12-30', '1173021303030001', 'Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti', '301220231228pencurian laptop.jpeg', 'selesai'),
(9, '2023-12-30', '1173021303030004', 'Pada Hari ini tepatnya di desa Buloh Panggoi terdapat Pencurian yang mengakibatkan kehilangannya 1 buah Laptop mohon di tindak lanjuti', '301220232539pencurian laptop.jpeg', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(5) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp_petugas` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp_petugas`, `level`) VALUES
(1, 'ANDRIA ZULFA, S.E., M.Si., Ph.D., CGCAE', 'admin', '21232f297a57a5a743894a0e4a801fc3', '081215951492', 'admin'),
(5, 'MASHURI, S.Kom', 'Mashuri', '827ccb0eea8a706c4c34a16891f84e7b', '082385764625', 'petugas'),
(6, 'FAUZIANA, SH. MH', 'Fauzianah', '827ccb0eea8a706c4c34a16891f84e7b', '085276684657', 'petugas'),
(7, 'T. ZULFIKAR, S.KH', 'Zulfikar', '827ccb0eea8a706c4c34a16891f84e7b', '086456471931', 'petugas'),
(8, 'BAHARUDDIN, SP.,MSM', 'Baharuddin', '827ccb0eea8a706c4c34a16891f84e7b', '084657281928', 'petugas'),
(9, 'MARTINA, S.STP.,MSP', 'Martina', '827ccb0eea8a706c4c34a16891f84e7b', '084235372847', 'petugas'),
(10, 'FAKHMY BASYIR, ST, M.S', 'Fahmi', '827ccb0eea8a706c4c34a16891f84e7b', '083584920124', 'petugas'),
(11, 'KARTIWIYATI, S.Sos', 'Kartiwiyati', '827ccb0eea8a706c4c34a16891f84e7b', '086372814938', 'petugas'),
(12, 'DEWI HANIFAH, S.Sos, MSM', 'Dewi', '827ccb0eea8a706c4c34a16891f84e7b', '081257389281', 'petugas'),
(13, 'CUT ELOK FARIANI, SP', 'Cut Elok', '827ccb0eea8a706c4c34a16891f84e7b', '085278578329', 'petugas'),
(15, 'rizki', 'rizki', '827ccb0eea8a706c4c34a16891f84e7b', '082229281176', 'petugas'),
(16, 'petugas', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', '00009999', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(5) NOT NULL,
  `id_pengaduan` int(5) NOT NULL,
  `tgl_tanggapan` varchar(20) NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(1, 1, '2020-02-13', 'berarti awak nan punyo tu mah', 2),
(2, 2, '2023-12-17', 'Baik Segera di tindak lanjuti', 1),
(4, 3, '2023-12-30', 'BAIK SEGERA AKAN KAMI PROSES TINDAK LANJUTNYA', 6),
(5, 6, '2023-12-30', 'Baik Terimakasih Atas Laporannya Badrul,, kami akan segera menindak lanjuti masalah terkait', 7),
(8, 9, '2023-12-30', 'Baik akan segera kami tindak lanjuti', 8),
(9, 13, '2024-01-02', 'hasil tindak lanjut telah di invesigasi', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
