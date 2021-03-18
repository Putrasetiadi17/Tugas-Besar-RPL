-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 08.43
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health4all`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(5) NOT NULL,
  `obat` varchar(225) NOT NULL,
  `golongan` varchar(225) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `bentuk` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `obat`, `golongan`, `kategori`, `bentuk`) VALUES
(3, 'Acarbose', 'Antidiabetes', 'Obat resep', 'Tablet'),
(4, 'Actifed', 'Dekongestan dan Antihistamin', 'Obat bebas', 'Sirop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(5) NOT NULL,
  `penyakit` varchar(225) NOT NULL,
  `gejala` varchar(225) NOT NULL,
  `tingkat_berbahaya` varchar(225) NOT NULL,
  `obat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `penyakit`, `gejala`, `tingkat_berbahaya`, `obat`) VALUES
(1, 'Influenza', 'Demam, Pilek, dan Sakit Kepala', 'Tidak menimbulkan kematian', 'Paracetamol'),
(4, 'Batu Ginjal', 'Sering buang air kecil, Sakit ketika buang air kecil, Urin yang keluar sedikit', 'Berbahaya', 'Operasi'),
(5, 'Cacar Monyet', 'Demam, Menggigil, Sakit kepala, Pembengkakan kelenjar getah bening', 'Mungkin Serius', 'Paracetamol'),
(6, 'Demam Scarlet', 'Demam, Wajah dan leher memerah, Mual atau muntah, Sulit menelan', 'Bebahaya', 'Antibiotik, Paracetamol'),
(8, 'Alergi Kacang', 'Sakit kepala, Bersin, Diare, Kram perut', 'Mungkin Serius', 'Antialergi'),
(9, 'Paronikia', 'Jari kuku bengkak, Kemerahan, Sakit bila disentuh', 'Tidak menimbulkan kematian', 'Erythromycin'),
(10, 'Pemfigus', 'Lepuhan pada kulit', 'Tidak menimbulkan kematian', 'Kortokosteroid'),
(11, 'Mata Ikan', 'Penebalan, pengerasan, serta penonjolan berbentuk bulat pada kulit', 'Mungkin serius', 'Asam salisilat'),
(12, 'Mabuk Perjalanan', 'Mual, muntah', 'Tidak menimbulkan kematian', 'Domperidone'),
(14, 'Morning Sickness', 'Mual, Muntah saat hamil', 'Tidak menimbulkan kematian', 'Suplemen vitamin B6'),
(15, 'Miopi (Rabun Jauh)', 'Gabisa liat benda jauh', 'Mungkin menimbulkan kematian', 'Tidak ada'),
(16, 'Flu Burung', 'Demam, Batuk, Sakit tenggorokan, Nyeri otot, Sakit kepala', 'Mungkin Mematikan', 'Oseltamivir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(5) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id_profile`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id_rs` int(5) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `provinsi` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id_rs`, `nama`, `provinsi`, `alamat`, `no_telp`) VALUES
(1, 'RSUPN Dr. Cipto Mangunkusumo', 'DKI Jakarta', 'Jalan Diponegoro No. 71, Jakarta Pusat', '021-1500135'),
(2, 'Rumah Sakit Pondok Indah', 'Banten', 'Jl. Boulevard Bintaro Jaya No.1, Tanggerang Selatan', '021-80828888');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indeks untuk tabel `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id_rs`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profile` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id_rs` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
