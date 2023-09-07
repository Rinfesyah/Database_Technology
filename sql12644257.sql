-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freesqldatabase.com
-- Generation Time: Sep 07, 2023 at 08:59 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12644257`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` char(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `email`, `no_telp`) VALUES
('001', 'erik', 'erik@gmail.com', '10001'),
('002', 'thohir', 'thohir@gmail.com', '20002'),
('003', 'asep', 'asep@gmail.com', '30003'),
('004', 'rahmat', 'rahmat@gmail.com', '40004'),
('005', 'raka', 'raka@gmail.com', '50005'),
('006', 'joko', 'joko@gmail.com', '60006'),
('007', 'bowo', 'bowo@gmail.com', '70007'),
('008', 'karno', 'karno@gmail.com', '80008'),
('009', 'gusti', 'gusti@gmail.com', '90009'),
('010', 'slamet', 'slamet@gmail.com', '10010'),
('011', 'yadi', 'yadi@gmail.com', '11011'),
('012', 'ahmad', 'ahmad@gmail.com', '12012'),
('013', 'yahya', 'yahya@gmail.com', '13013'),
('014', 'sigit', 'sigit@gmail.com', '14014'),
('015', 'riki', 'riki@gmail.com', '15015'),
('016', 'amel', 'amel@gmail.com', '16016'),
('017', 'luna', 'luna@gmail.com', '17017'),
('018', 'nina', 'nina@gmail.com', '18018'),
('019', 'regi', 'regi@gmail.com', '19019'),
('020', 'alya', 'alya@gmail.com', '20020'),
('021', 'anggun', 'anggun@gmail.com', '21021');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_mata_kuliah`
--

CREATE TABLE `jadwal_mata_kuliah` (
  `tanggal` date NOT NULL,
  `jam` time DEFAULT NULL,
  `matkul_id_matkul` char(20) NOT NULL,
  `dosen_id_dosen` char(20) NOT NULL,
  `ruangan_no_ruang` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_mata_kuliah`
--

INSERT INTO `jadwal_mata_kuliah` (`tanggal`, `jam`, `matkul_id_matkul`, `dosen_id_dosen`, `ruangan_no_ruang`) VALUES
('2023-09-07', '06:00:00', 'AGM001', '011', 'T001'),
('2023-09-08', '06:00:00', 'COM001', '001', 'P001'),
('2023-09-09', '06:00:00', 'COM002', '002', 'P002'),
('2023-09-10', '06:00:00', 'FIS001', '006', 'P003'),
('2023-09-11', '06:00:00', 'FIS001', '006', 'P003'),
('2023-09-12', '06:00:00', 'MAT001', '015', 'T003'),
('2023-09-13', '06:00:00', 'BIO001', '007', 'P003'),
('2023-09-14', '06:00:00', 'ART001', '008', 'P002'),
('2023-09-15', '06:00:00', 'ART002', '009', 'T004'),
('2023-09-16', '06:00:00', 'ART002', '009', 'P002'),
('2023-09-20', '15:00:00', 'LAN002', '013', 'T003');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` char(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sks` int(2) DEFAULT NULL,
  `tipe` set('Teori','Praktek') DEFAULT NULL,
  `id_dosen` char(10) DEFAULT NULL,
  `kapasitas` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama`, `sks`, `tipe`, `id_dosen`, `kapasitas`) VALUES
('AGM001', 'Studi Agama Islam', 3, 'Teori', '011', 50),
('AGM002', 'Studi Agama Kristen', 3, 'Teori', '012', 50),
('ART001', 'Seni Lukis', 3, 'Praktek', '008', 30),
('ART002', 'Seni Tari', 2, 'Teori,Praktek', '009', 30),
('ART003', 'Seni Musik', 3, 'Praktek', '010', 30),
('BIO001', 'Biologi', 3, 'Teori', '007', 20),
('COM001', 'Pemrograman', 3, 'Teori,Praktek', '001', 40),
('COM002', 'Basis Data', 4, 'Teori,Praktek', '002', 40),
('COM003', 'Sistem Operasi', 4, 'Teori,Praktek', '003', 20),
('COM004', 'Jaringan Komputer', 4, 'Praktek', '004', 20),
('FIS001', 'Fisika', 4, 'Teori,Praktek', '006', 20),
('KIM001', 'Kimia', 3, 'Teori', '005', 20),
('LAN001', 'Filsafat', 3, 'Teori', '013', 50),
('LAN002', 'Sastra', 4, 'Teori', '014', 50),
('MAT001', 'Logika', 3, 'Teori', '015', 50),
('MAT002', 'Kalkulus', 4, 'Teori', '016', 50),
('MAT003', 'Aljabar Linear', 3, 'Teori', '017', 50);

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nim_mhs` char(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `gender` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` text,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim_mhs`, `nama`, `gender`, `alamat`, `email`, `no_telp`) VALUES
('23001', 'Ali', 'Laki-Laki', 'Jalan Merdeka No. 123', 'ali@email.com', '081234567890'),
('23002', 'Budi', 'Laki-Laki', 'Jalan Jenderal Sudirman No. 456', 'budi@email.com', '082345678901'),
('23003', 'Citra', 'Perempuan', 'Jalan Pahlawan No. 789', 'citra@email.com', '083456789012'),
('23004', 'Dewi', 'Perempuan', 'Jalan Gatot Subroto No. 101', 'dewi@email.com', '084567890123'),
('23005', 'Eko', 'Laki-Laki', 'Jalan Gajah Mada No. 555', 'eko@email.com', '085678901234'),
('23006', 'Fira', 'Perempuan', 'Jalan Diponegoro No. 777', 'fira@email.com', '086678901235'),
('23007', 'Gita', 'Perempuan', 'Jalan A Yani No. 888', 'gita@email.com', '087678901236'),
('23008', 'Hendra', 'Laki-Laki', 'Jalan Asia No. 999', 'hendra@email.com', '088678901237'),
('23009', 'Indra', 'Laki-Laki', 'Jalan Sudirman No. 111', 'indra@email.com', '089678901238'),
('23010', 'Jeni', 'Perempuan', 'Jalan Surya No. 222', 'jeni@email.com', '081112233445'),
('23011', 'Kartika', 'Perempuan', 'Jalan Puri No. 333', 'kartika@email.com', '081223344556'),
('23012', 'Lani', 'Perempuan', 'Jalan Pemuda No. 444', 'lani@email.com', '081334455667'),
('23013', 'Mira', 'Perempuan', 'Jalan Merpati No. 555', 'mira@email.com', '081445566778'),
('23014', 'Nanda', 'Laki-Laki', 'Jalan Gunung No. 666', 'nanda@email.com', '081556677889'),
('23015', 'Oscar', 'Laki-Laki', 'Jalan Sawah No. 777', 'oscar@email.com', '081667788990'),
('23016', 'Putri', 'Perempuan', 'Jalan Raya No. 888', 'putri@email.com', '081778899001'),
('23017', 'Ridwan', 'Laki-Laki', 'Jalan Buntu No. 999', 'ridwan@email.com', '081889900112'),
('23018', 'Sinta', 'Perempuan', 'Jalan Pelita No. 1010', 'sinta@email.com', '081990011223'),
('23019', 'Tono', 'Laki-Laki', 'Jalan Permai No. 1212', 'tono@email.com', '081001122334'),
('23020', 'Vina', 'Perempuan', 'Jalan Bambu No. 1313', 'vina@email.com', '082111122233'),
('23021', 'Wira', 'Laki-Laki', 'Jalan Kenari No. 1414', 'wira@email.com', '082222233344'),
('23022', 'Xena', 'Perempuan', 'Jalan Melati No. 1515', 'xena@email.com', '082333344455'),
('23023', 'Yudi', 'Laki-Laki', 'Jalan Anggrek No. 1616', 'yudi@email.com', '082444455566'),
('23024', 'Zara', 'Perempuan', 'Jalan Teratai No. 1717', 'zara@email.com', '082555566677'),
('23025', 'Andi', 'Laki-Laki', 'Jalan Merdeka No. 123', 'andi@email.com', '081234567891'),
('23026', 'Bayu', 'Laki-Laki', 'Jalan Jenderal Sudirman No. 456', 'bayu@email.com', '082345678902'),
('23027', 'Cindy', 'Perempuan', 'Jalan Pahlawan No. 789', 'cindy@email.com', '083456789013'),
('23028', 'Dian', 'Perempuan', 'Jalan Gatot Subroto No. 101', 'dian@email.com', '084567890124'),
('23029', 'Eka', 'Laki-Laki', 'Jalan Gajah Mada No. 555', 'eka@email.com', '085678901235'),
('23030', 'Ferdi', 'Laki-Laki', 'Jalan Diponegoro No. 777', 'ferdi@email.com', '086678901236'),
('23031', 'Gina', 'Perempuan', 'Jalan A Yani No. 888', 'gina@email.com', '087678901237'),
('23032', 'Hendra', 'Laki-Laki', 'Jalan Asia No. 999', 'hendra2@email.com', '088678901238'),
('23033', 'Indah', 'Perempuan', 'Jalan Sudirman No. 111', 'indah@email.com', '089678901239'),
('23034', 'Joko', 'Laki-Laki', 'Jalan Surya No. 222', 'joko@email.com', '081112233446'),
('23035', 'Kiki', 'Perempuan', 'Jalan Puri No. 333', 'kiki@email.com', '081223344557'),
('23036', 'Lina', 'Perempuan', 'Jalan Pemuda No. 444', 'lina@email.com', '081334455668'),
('23037', 'Mira', 'Perempuan', 'Jalan Merpati No. 555', 'mira2@email.com', '081445566779'),
('23038', 'Nando', 'Laki-Laki', 'Jalan Gunung No. 666', 'nando@email.com', '081556677880'),
('23039', 'Olive', 'Perempuan', 'Jalan Sawah No. 777', 'olive@email.com', '081667788991'),
('23040', 'Putra', 'Laki-Laki', 'Jalan Raya No. 888', 'putra@email.com', '081778899002'),
('23041', 'Roni', 'Laki-Laki', 'Jalan Buntu No. 999', 'roni@email.com', '081889900113'),
('23042', 'Siti', 'Perempuan', 'Jalan Pelita No. 1010', 'siti2@email.com', '081990011224'),
('23043', 'Tina', 'Perempuan', 'Jalan Permai No. 1212', 'tina@email.com', '081001122335'),
('23044', 'Vicky', 'Laki-Laki', 'Jalan Bambu No. 1313', 'vicky@email.com', '082111122244'),
('23045', 'Widi', 'Laki-Laki', 'Jalan Kenari No. 1414', 'widi@email.com', '082222233355'),
('23046', 'Xavi', 'Laki-Laki', 'Jalan Melati No. 1515', 'xavi@email.com', '082333344466'),
('23047', 'Yusuf', 'Laki-Laki', 'Jalan Anggrek No. 1616', 'yusuf@email.com', '082444455577'),
('23048', 'Zula', 'Perempuan', 'Jalan Teratai No. 1717', 'zula@email.com', '082555566688'),
('23049', 'Wulan', 'Perempuan', 'Jalan Rukun No. 1818', 'wulan@email.com', '082666677799');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `no_ruang` char(20) NOT NULL,
  `jenis` enum('Teori','Praktek') DEFAULT NULL,
  `fasilitas` text,
  `kapasitas` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`no_ruang`, `jenis`, `fasilitas`, `kapasitas`) VALUES
('P001', 'Praktek', 'KOMPUTER, WIFI, PROYEKTOR', 20),
('P002', 'Praktek', 'LAB, WIFI, PROYEKTOR', 10),
('P003', 'Praktek', 'ALAT MUSIK, ALAT LUKIS, RUANG KEDAP SUARA', 15),
('P004', 'Praktek', 'KOMPOR, BAHAN DAN ALAT MASAK, WIFI', 15),
('P005', 'Praktek', 'AVO METER, TRANSFORMATOR, KOMPONEN ELEKTRONIKA', 15),
('T001', 'Teori', 'BUKU AGAMA, WIFI, PROYEKTOR', 25),
('T002', 'Teori', 'BUKU FILSAFAT, WIFI, PROYEKTOR', 25),
('T003', 'Teori', 'BUKU MATEMATIKA, WIFI, PROYEKTOR', 25),
('T004', 'Teori', 'PERPUSTAKAAN, WIFI, PROYEKTOR', 20),
('T005', 'Teori', 'BUKU SEJARAH, WIFI, PROYEKTOR', 25);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `order_id` int(10) NOT NULL,
  `nim_mhs` char(20) NOT NULL,
  `id_matkul` char(20) NOT NULL,
  `id_dosen` char(20) NOT NULL,
  `no_ruang` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`order_id`, `nim_mhs`, `id_matkul`, `id_dosen`, `no_ruang`) VALUES
(16, '23001', 'COM001', '001', 'P001'),
(17, '23001', 'COM002', '002', 'P001'),
(18, '23001', 'COM003', '003', 'P001'),
(19, '23001', 'COM004', '004', 'P001'),
(20, '23001', 'MAT001', '015', 'T003'),
(21, '23001', 'MAT002', '016', 'T003'),
(22, '23001', 'MAT003', '017', 'T003'),
(23, '23002', 'KIM001', '005', 'P002'),
(24, '23002', 'FIS001', '006', 'P002'),
(25, '23002', 'BIO001', '007', 'P002'),
(26, '23002', 'AGM001', '011', 'T001'),
(27, '23003', 'ART001', '008', 'P003'),
(28, '23003', 'ART002', '009', 'P003'),
(29, '23003', 'ART003', '010', 'P003'),
(30, '23003', 'AGM002', '012', 'T001'),
(31, '23004', 'COM001', '001', 'P001'),
(32, '23005', 'COM002', '002', 'P001'),
(33, '23006', 'COM003', '003', 'P001'),
(34, '23007', 'COM004', '004', 'P001'),
(35, '23008', 'LAN001', '013', 'T002'),
(36, '23008', 'LAN002', '014', 'T002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `email` (`email`,`no_telp`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `jadwal_mata_kuliah`
--
ALTER TABLE `jadwal_mata_kuliah`
  ADD KEY `fk_jadwal_mata_kuliah_matkul1_idx` (`matkul_id_matkul`),
  ADD KEY `fk_jadwal_mata_kuliah_dosen1_idx` (`dosen_id_dosen`),
  ADD KEY `fk_jadwal_mata_kuliah_ruangan1_idx` (`ruangan_no_ruang`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim_mhs`),
  ADD UNIQUE KEY `email` (`email`,`no_telp`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`no_ruang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `id_matkul` (`id_matkul`,`nim_mhs`,`no_ruang`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `nim_mhs` (`nim_mhs`),
  ADD KEY `no_ruang` (`no_ruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal_mata_kuliah`
--
ALTER TABLE `jadwal_mata_kuliah`
  ADD CONSTRAINT `fk_jadwal_mata_kuliah_dosen1` FOREIGN KEY (`dosen_id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jadwal_mata_kuliah_matkul1` FOREIGN KEY (`matkul_id_matkul`) REFERENCES `matkul` (`id_matkul`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_jadwal_mata_kuliah_ruangan1` FOREIGN KEY (`ruangan_no_ruang`) REFERENCES `ruangan` (`no_ruang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`nim_mhs`) REFERENCES `mhs` (`nim_mhs`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`no_ruang`) REFERENCES `ruangan` (`no_ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
