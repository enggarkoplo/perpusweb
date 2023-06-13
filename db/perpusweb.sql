-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2023 pada 13.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(40) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tgllahir` varchar(50) DEFAULT NULL,
  `umur` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kelas` varchar(3) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `notelp`, `jk`, `tempat`, `tgllahir`, `umur`, `alamat`, `kelas`, `jurusan`, `foto`) VALUES
('A0006', 'enggar', '09876543', 'Laki-laki', 'palu', '06/09/2023', '20', 'ljl\r\n\r\n', 'X', 'TATA BUSANA', 'user.png'),
('A0007', 'wafi abdillah', '082282828', 'Laki-laki', 'palu', '06/09/2023', '20', 'dkosdkos\r\n', 'XII', 'TKJ', 'user.png'),
('A0008', 'nailul', '0820000000', 'Laki-laki', 'palu', '06/09/2023', '22', 'jl.kartini', 'XI', 'PERHOTELAN', 'user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(20) DEFAULT NULL,
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_penerbit` varchar(20) DEFAULT NULL,
  `id_rak` varchar(20) DEFAULT NULL,
  `judul` varchar(60) DEFAULT NULL,
  `pengarang` varchar(60) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `jmlhal` int(4) DEFAULT NULL,
  `jmlbuku` int(4) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `foto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `id_penerbit`, `id_rak`, `judul`, `pengarang`, `isbn`, `jmlhal`, `jmlbuku`, `tahun`, `sinopsis`, `foto`) VALUES
('B0001', 'K0001', 'P0002', 'Rak-01', 'Lancar JavaScript', 'Jubile Enterprice', '12345678', 140, 56, 2019, '-', 'lancar_javascript.jpg'),
('B0002', 'K0001', 'P0002', 'Rak-01', 'Belajar Otodidak CodeIgniter', 'Budi Raharjo', '12345679', 130, 61, 2020, '-', 'belajar_codeigniter.jpg'),
('B0003', 'K0001', 'P0002', 'Rak-01', 'Pro PHP & Jquery 7 Hari', 'WARDANA', '12345681', 100, 15, 2020, '-', 'web_profesional_dengan_php_jquery.jpg'),
('B0004', 'K0006', 'P0004', 'Rak-04', 'Otodidak Web Programming', 'Muhammad Ibnu Sa\'ad', '123523453424', 100, 20, 2019, '-', 'ID_OWP2020MTH01WP.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `keterangan`) VALUES
('K0001', 'Programing', ''),
('K0002', 'Sains', ''),
('K0004', 'Pendidikan', ''),
('K0005', 'Pemula', ''),
('K0006', 'Informatika', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `id_anggota` varchar(5) DEFAULT NULL,
  `tempo` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `usr_input` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tgl_pinjam`, `id_anggota`, `tempo`, `status`, `ket`, `usr_input`) VALUES
('PJM0001', '2021-12-15', 'A0002', '2021-04-18', 'Kembali', '', 'Admin'),
('PJM0002', '2021-11-15', 'A0001', '2021-04-18', 'Kembali', '', 'Admin'),
('PJM0003', '2021-10-16', 'A0001', '2021-04-19', 'Pinjam', '', 'Admin'),
('PJM0004', '2021-09-17', 'A0002', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0005', '2021-08-17', 'A0002', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0006', '2021-07-17', 'A0001', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0007', '2021-06-17', 'A0001', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0009', '2021-04-17', 'A0002', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0010', '2021-03-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0011', '2021-02-17', 'A0001', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0012', '2021-01-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0013', '2021-04-17', 'A0002', '2021-04-20', 'Pinjam', '', 'Admin'),
('PJM0014', '2021-04-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0015', '2021-04-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0016', '2021-04-20', 'A0003', '2021-04-23', 'Kembali', 'Buat Belajar', 'Admin'),
('PJM0017', '2023-06-07', 'A0004', '2023-06-10', 'Pinjam', 'blo', 'enggar'),
('PJM0018', '2023-06-07', 'A0004', '2023-06-10', 'Pinjam', '', 'enggar'),
('PJM0019', '2023-06-09', 'A0006', '2023-06-12', 'Pinjam', '', 'Admin'),
('PJM0020', '2023-06-09', 'A0006', '2023-06-12', 'Pinjam', '', 'enggar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(20) DEFAULT NULL,
  `penerbit` varchar(60) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `penerbit`, `keterangan`) VALUES
('P0001', 'Ria Ricis', ''),
('P0002', 'Boy William', ''),
('P0003', 'Radhian Sobarna', ''),
('P0004', 'Widi P', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengadaan`
--

CREATE TABLE `pengadaan` (
  `id_pengadaan` varchar(10) DEFAULT NULL,
  `id_buku` varchar(60) DEFAULT NULL,
  `asal_buku` varchar(60) DEFAULT NULL,
  `jml` int(4) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `tgl` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengadaan`
--

INSERT INTO `pengadaan` (`id_pengadaan`, `id_buku`, `asal_buku`, `jml`, `ket`, `tgl`) VALUES
('PNG0001', 'B0003', 'Sumedang', 5, '-', '2021-04-15'),
('PNG0002', 'B0002', 'Sumedang', 6, '-', '2021-04-22'),
('PNG0003', 'B0001', 'Sumedang', 6, '-', '2021-04-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` int(10) NOT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `id_pinjam` varchar(20) DEFAULT NULL,
  `terlambat` varchar(15) DEFAULT NULL,
  `denda` varchar(15) DEFAULT NULL,
  `id_admin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_kembali`, `tgl_kembali`, `id_pinjam`, `terlambat`, `denda`, `id_admin`) VALUES
(10, '2021-04-15', 'PJM0002', '-', '-', NULL),
(12, '2021-04-20', 'PJM0016', '-', '-', NULL),
(13, '2021-04-20', 'PJM0001', '2 hari', 'Rp.6000', NULL),
(14, '2023-06-07', 'PJM0010', '778 hari', 'Rp.2334000', NULL),
(15, '2023-06-07', 'PJM0015', '778 hari', 'Rp.2334000', NULL),
(16, '2023-06-07', 'PJM0014', '778 hari', 'Rp.2334000', NULL),
(17, '2023-06-07', 'PJM0012', '778 hari', 'Rp.2334000', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` varchar(20) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `level` enum('Petugas','Kepala','Administrasi') DEFAULT NULL,
  `kelas` varchar(2) NOT NULL DEFAULT '',
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `nama`, `email`, `pass`, `notelp`, `status`, `level`, `kelas`, `jurusan`, `foto`) VALUES
('U0005', 'admin', 'admin@gmail.com', '$2y$10$f7a70YgAr6D8LpRLMXE8O.j430fj4rx/e0K7C8zLXFO/P9wfUOSuu', '082292379175', 'Aktif', 'Administrasi', '', '', 'user.png'),
('U0006', 'enggar', 'enggar@gmail.com', '$2y$10$h8sNH5SZiR7lzrCptPmmkeqiLCSQLNwcGYyUD.MNDjM7XzUoirSgu', '0827272727', 'Aktif', 'Petugas', '', '', 'user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_buku`
--

CREATE TABLE `p_buku` (
  `id_pbuku` int(5) NOT NULL,
  `id_pinjam` varchar(50) DEFAULT NULL,
  `id_buku` varchar(50) DEFAULT NULL,
  `qty` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `p_buku`
--

INSERT INTO `p_buku` (`id_pbuku`, `id_pinjam`, `id_buku`, `qty`) VALUES
(28, 'PJM0001', 'B0003', '5'),
(29, 'PJM0001', 'B0002', '1'),
(30, 'PJM0001', 'B0001', '1'),
(31, 'PJM0002', 'B0003', '3'),
(32, 'PJM0002', 'B0001', '1'),
(33, 'PJM0003', 'B0003', '6'),
(34, 'PJM0003', 'B0002', '3'),
(35, 'PJM0003', 'B0001', '1'),
(36, 'PJM0004', 'B0003', '1'),
(37, 'PJM0005', 'B0003', '3'),
(38, 'PJM0006', 'B0003', '2'),
(39, 'PJM0007', 'B0002', '1'),
(41, 'PJM0009', 'B0003', '1'),
(42, 'PJM0010', 'B0001', '2'),
(43, 'PJM0011', 'B0003', '2'),
(44, 'PJM0012', 'B0002', '2'),
(45, 'PJM0013', 'B0001', '3'),
(46, 'PJM0014', 'B0002', '3'),
(47, 'PJM0015', 'B0003', '5'),
(50, 'PJM0016', 'B0004', '1'),
(51, 'PJM0016', 'B0003', '1'),
(52, 'PJM0016', 'B0002', '1'),
(53, 'PJM0017', 'B0002', '1'),
(54, 'PJM0017', 'B0002', '2'),
(55, 'PJM0017', 'B0002', '1'),
(56, 'PJM0018', 'B0004', '1'),
(57, 'PJM0019', 'B0004', '1'),
(58, 'PJM0020', 'B0002', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` varchar(20) DEFAULT NULL,
  `rak` varchar(60) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `rak`, `keterangan`) VALUES
('Rak-01', 'Khusus Pemula', ''),
('Rak-02', 'Khusus Pelajar', ''),
('Rak-03', 'Sastra', ''),
('Rak-04', 'Coding', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `p_buku`
--
ALTER TABLE `p_buku`
  ADD PRIMARY KEY (`id_pbuku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_kembali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `p_buku`
--
ALTER TABLE `p_buku`
  MODIFY `id_pbuku` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
