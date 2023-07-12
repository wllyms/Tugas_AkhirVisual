-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2023 at 02:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laporansiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_poin`
--

CREATE TABLE `data_poin` (
  `id_poin` int(8) NOT NULL,
  `jenis_poin` enum('PRESTASI','PELANGGARAN') NOT NULL,
  `nama_poin` varchar(300) NOT NULL,
  `point` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_poin`
--

INSERT INTO `data_poin` (`id_poin`, `jenis_poin`, `nama_poin`, `point`) VALUES
(1, 'PRESTASI', 'Siswa Teladan', '35'),
(2, 'PRESTASI', 'Juara Kelas Peringkat I', '20'),
(3, 'PRESTASI', 'Juara Kelas Peringkat II', '15'),
(4, 'PRESTASI', 'Juara Kelas Peringkat III', '10'),
(5, 'PRESTASI', 'Juara Umum', '30'),
(6, 'PRESTASI', 'Juara I Lomba Tingkat Kab/Kota', '15'),
(7, 'PRESTASI', 'Juara II Lomba Tingkat Kab/Kota', '10'),
(8, 'PRESTASI', 'Juara III Lomba Tingkat Kab/Kota', '5'),
(9, 'PRESTASI', 'Juara I Lomba Tingkat Provinsi', '30'),
(10, 'PRESTASI', 'Juara II Lomba Tingkat Provinsi', '25'),
(11, 'PRESTASI', 'Juara III Lomba Tingkat Provinsi', '20'),
(12, 'PRESTASI', 'Juara I Lomba Tingkat Nasional', '75'),
(13, 'PRESTASI', 'Juara II Lomba Tingkat Nasional', '60'),
(14, 'PRESTASI', 'Juara III Lomba Tingkat Nasional', '40'),
(16, 'PELANGGARAN', 'Hamil/menghamili', '100');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` int(11) NOT NULL,
  `nama` enum('X','XI','XII') NOT NULL,
  `jenis` enum('PAGI','SIANG') NOT NULL,
  `jurusan` enum('IPA','IPS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `nama`, `jenis`, `jurusan`) VALUES
(1, 'X', 'PAGI', 'IPA'),
(2, 'XI', 'SIANG', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `ortu_id` int(5) NOT NULL,
  `nik` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pendidikan` enum('SD','SMP','SMA/K','SEDERAJAT','S1','S2','S3') NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` int(12) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk` enum('LAKI-LAKI','PEREMPUAN') NOT NULL,
  `status` enum('KANDUNG','WALI') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`ortu_id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `alamat`, `telp`, `agama`, `jk`, `status`) VALUES
(1, 2120012, 'Yanto Kurniawan', 'SEDERAJAT', 'Swasta', '123131', 2313131, 'Kristen', 'LAKI-LAKI', 'WALI'),
(2, 2110015, 'Santi Susanti', 'S1', 'Swasta', 'jln gatsu', 1231434, 'Islam', 'PEREMPUAN', 'KANDUNG'),
(3, 2120013, 'Bagus Prakarsa', 'S2', 'PNS', 'JL PANGERAN', 1313412121, 'Hindu', 'LAKI-LAKI', 'KANDUNG');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `poin_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL,
  `jenis` enum('Pelanggaran','Prestasi') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `riwayat_id` int(5) NOT NULL,
  `siswa_id` int(5) NOT NULL,
  `poin_id` int(5) NOT NULL,
  `wali_id` int(5) NOT NULL,
  `ortu_id` int(5) NOT NULL,
  `kelas_id` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` enum('GANJIL','GENAP') NOT NULL,
  `status` enum('PRESTASI','PELANGGARAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poinn`
--

CREATE TABLE `riwayat_poinn` (
  `id_riwayat` int(10) NOT NULL,
  `nama_siswa` varchar(300) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `wali_kelas` varchar(200) NOT NULL,
  `jenis` varchar(200) NOT NULL,
  `nama_poin` varchar(200) NOT NULL,
  `poin` varchar(200) NOT NULL,
  `tangal` date NOT NULL,
  `semester` enum('GANJIL','GENAP') NOT NULL,
  `status` enum('AKTIF','TIDAK AKTIF') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_poinn`
--

INSERT INTO `riwayat_poinn` (`id_riwayat`, `nama_siswa`, `kelas`, `wali_kelas`, `jenis`, `nama_poin`, `poin`, `tangal`, `semester`, `status`) VALUES
(1, 'AMITH WILLYAMS', 'X', 'IBU SARI', 'PRESTASI', 'Siswa Teladan', '35', '2023-07-03', 'GANJIL', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_hubungan`
--

CREATE TABLE `tabel_hubungan` (
  `hub_id` int(5) NOT NULL,
  `siswa_id` int(5) NOT NULL,
  `ortu_id` int(5) NOT NULL,
  `status_hub` varchar(20) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_hubungan`
--

INSERT INTO `tabel_hubungan` (`hub_id`, `siswa_id`, `ortu_id`, `status_hub`, `keterangan`) VALUES
(1, 1, 1, 'Ayah', 'Kandung'),
(2, 5, 2, 'Ibu', 'Kandung'),
(3, 4, 3, 'Ayah', 'Kandung');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `siswa_id` int(5) NOT NULL,
  `nis` int(10) NOT NULL,
  `nisn` int(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nik` int(11) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` enum('LAKI-LAKI','PEREMPUAN') NOT NULL,
  `tingkat_kelas` enum('X','XI','XII') NOT NULL,
  `jurusan` enum('IPA','IPS') NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` int(12) NOT NULL,
  `hp` int(11) NOT NULL,
  `status` enum('AKTIF','TIDAK AKTIF') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`siswa_id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telepon`, `hp`, `status`) VALUES
(1, 2110010, 2110011, 'SMITH WILLYAMS', 2110012, 'BANJARMASIN', '2002-10-05', 'LAKI-LAKI', 'X', 'IPA', 'IBU SARI', 'JL SUNGAI ANDAI', 1212, 1212, 'AKTIF'),
(4, 1231, 2131321, 'Anang', 12313, 'sdaddad', '2023-06-16', 'LAKI-LAKI', 'XI', 'IPS', 'asdadsad', 'adada', 13123, 23131, 'AKTIF'),
(5, 21313, 123213, 'Galuh', 123133, 'Banjarbaru', '2005-06-16', 'PEREMPUAN', 'XI', 'IPA', 'Surya', 'Jln bru', 21313, 12313, 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `username`, `password`, `status`) VALUES
(1, 'Yuhuuu', 'guru', '123', 'Guru'),
(2, 'Ahayy', 'siswa', '123', 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `wali`
--

CREATE TABLE `wali` (
  `wali_id` int(5) NOT NULL,
  `nik` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('LAKI-LAKI','PEREMPUAN') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `matpel` varchar(20) NOT NULL,
  `pendidikan` enum('SD','SMP','SMA/K','SEDERAJAT','S1','S2','S3') NOT NULL,
  `status` enum('AKTIF','PENSIUN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali`
--

INSERT INTO `wali` (`wali_id`, `nik`, `nama`, `jk`, `alamat`, `matpel`, `pendidikan`, `status`) VALUES
(1, 2110015, 'Hartanto', 'LAKI-LAKI', 'jln pramuka', 'PPKN', 'S1', 'AKTIF'),
(2, 2110017, 'Hartanti', 'PEREMPUAN', 'Jln Makmur', 'INGGRIS', 'S1', 'PENSIUN'),
(3, 2110056, 'Sutrisno', 'LAKI-LAKI', 'Jln Pegadaian', 'SBK', 'S1', 'AKTIF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_poin`
--
ALTER TABLE `data_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`ortu_id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`poin_id`);

--
-- Indexes for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`riwayat_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `riwayat_poinn`
--
ALTER TABLE `riwayat_poinn`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  ADD PRIMARY KEY (`hub_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wali`
--
ALTER TABLE `wali`
  ADD PRIMARY KEY (`wali_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_poin`
--
ALTER TABLE `data_poin`
  MODIFY `id_poin` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `ortu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `poin_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `riwayat_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_poinn`
--
ALTER TABLE `riwayat_poinn`
  MODIFY `id_riwayat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  MODIFY `hub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  MODIFY `siswa_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wali`
--
ALTER TABLE `wali`
  MODIFY `wali_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD CONSTRAINT `riwayat_poin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tabel_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_2` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`poin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_3` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_poin_ibfk_5` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`kelas_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  ADD CONSTRAINT `tabel_hubungan_ibfk_1` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabel_hubungan_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `tabel_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
