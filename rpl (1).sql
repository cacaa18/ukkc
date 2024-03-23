-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 01:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `cover` text NOT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul`, `cover`, `penulis`, `penerbit`, `tahun_terbit`, `deskripsi`) VALUES
(2, 5, 'Laut Bercerita', '934105.jpeg', 'Leila S. Chudori', 'Gramedia Pustaka Utama', '2021', 'Di sebuah senja, di sebuah rumah susun di Jakarta, mahasiswa bernama Biru Laut  disergap empat lelaki tak dikenal. Bersama kawan-kawannya, Daniel Tumbuan, Sunu Dyantoro, Alex Perazon, dia dibawa ke sebuah tempat yang tak dikenal. Berbulan-bulan mereka disekap, diinterogasi, dipukul, ditendang, digantung, dan disetrum agar bersedia menjawab satu pertanyaan penting: siapakah yang berdiri di balik gerakan aktivis dan mahasiswa saat itu.\"'),
(23, 5, 'The Chronicles of Narnia ', '903103.jpeg', 'C. S. Lewis', 'Gramedia Pustaka Utama', '2022', 'Narnia… tanah tempat para kuda bisa bicara… pengkhianatan mengintai… dan takdir menanti. Dalam perjalanan penuh tantangan, empat pelarian bertemu dan bergabung. Meski awalnya hanya berusaha membebaskan diri dari kehidupan yang kejam dan menekan, tak lama kemudian mereka mendapati diri mereka berada di tengah-tengah pertempuran dahsyat. Pertempuran yang akan memutuskan bukan hanya nasib mereka, tetapi juga nasib Narnia.\"'),
(24, 5, 'Melangkah', '198259.jpeg', 'J. S.  Khairen', 'Gramedia  Widiasarana Indonesia', '2020', 'Listrik padam di seluruh Jawa dan Bali secara misterius! Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara.\r\n\r\nSaat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik! Semua dipersulit oleh seorang buronan tingkat tinggi bertopeng pahlawan yang punya rencana mengerikan.\r\n\r\nTernyata pesan arwah nenek moyang itu benar-benar terwujud. “Akan datang kegelapan yang berderap, bersama ribuan kuda raksasa di kala malam. Mereka bangun setelah sekian lama, untuk menghancurkan Nusantara. Seorang lelaki dan seorang perempuan ditakdirkan membaurkan air di lautan dan api di pegunungan. Menyatukan tanah yang menghujam, dan udara yang terhampar.”\r\n\r\nKisah tentang persahabatan, tentang jurang ego anak dan orangtua, tentang menyeimbangkan logika dan perasaan. Juga tentang melangkah menuju masa depan. Bahwa, apa pun yang menjadi luka masa lalu, biarlah mengering bersama waktu.'),
(26, 5, 'Hello (Again), Cello', '406372.jpeg', 'Nadia Ristivani', 'Bukune', '2023', 'Akan datang masanya dua orang yang menjadikan satu sama lain nama terkuat dalam doanya bertemu. Jika tidak cepat, berbahagialah. Yang terbaik datang setelah berpikir matang-matang, bukan sekadar ‘bersantap’ asal datang.”\r\nJanji temu 4 tahun lalu.'),
(27, 5, 'Tanah Para Bandit', '762266.jpeg', 'Tere Liye', 'Penerbit Sabak Grip', '2023', 'Usia lima belas tahun, aku menemukan tempat rahasia. Lokasinya berada di tengah hutan lebat, di lereng-lereng terjal Bukit Barisan. Dengan pohon-pohon tinggi. Semak belukar yang susah ditembus. Tumbuhan pakis, lumut, juga belalai rotan. Pertama kali aku menemukannya, kakiku, tanganku, juga bagian tubuh lain tidak terhitung meninggalkan baret dari duri, onak, atau ujung daun yang tajam, pun bisa membuat luka.\"\r\nAku tidak sengaja menemukannya. Aku sedang sedih, jadi aku pergi dari rumah panggung milik Abu Syik-kakekku. Mungkin sama seperti anak perempuan lainnya, setelah dimarahi oleh orang tua, menangis, kabur dari rumah. Tapi di tengah hutan lebat begini, kemana aku harus kabur?'),
(31, 10, 'Nanti Juga Sembuh Sendiri', '395481.jpeg', 'HeloBagas', 'Gramedia Mediatama', '2022', 'Nanti Juga Sembuh Sendiri merupakan buku yang ditulis oleh Helo Bagas yang terkenal dengan cerita sebelum tidur yang diunggah pada kanal Youtube miliknya dan podcast berjudul Kita dan Waktu yang ada di Spotify. Buku ini merupakan buku keempat yang sudah diterbitkan Helo Bagas. Buku Nanti Juga Sembuh Sendiri dibuat untuk menjadi ‘teman curhat’ agar para pembaca dapat lebih jujur dengan perasaan dan apa yang dialami. Buku ini berisi kata sederhana yang dapat menghangatkan atau membuat perasaan pembaca lebih baik. Buku ini cocok untuk pembaca yang sedang mencari buku pengembangan di'),
(33, 10, 'Merawat Luka Batin', '122564.jpeg', 'Dr Jiemi Ardian', 'Gramedia Pustaka Utama', '2022', 'Merawat Luka Batin adalah buku yang ditulis oleh seorang Dokter Spesialis Kedokteran Jiwa bernama dr. Jiemi Ardian Sp.Kj. Buku ini berisi tentang proses berpikir, bukan sekadar berpikir dengan positif. Saat perasaan sedang tidak baik-baik saja, terlebih pada keadaan depresi, proses pikir kita biasanya ikut andil dalam memperburuk keadaan. Namun, sulit bagi kita untuk menyadari proses berpikir yang bermasalah ini karena kita menganggapnya sebagai cara kita melihat realitas. Menyadari pikiran yang keliru saat hal itu muncul bukanlah hal yang mudah.\r\nBuku ini memuat beberapa pola untuk membentuk cara berpikir yang tepat. Tak hanya orang-orang yang sedang merawat luka batin, para caregiver dan penyintas depresi juga bisa menarik manfaat dari buku ini. Semoga buku ini juga bisa menghapus stigma tentang depresi dan menunjukkan bahwa gangguan kejiwaan, termasuk depresi, bisa dialami siapa saja.'),
(35, 8, 'Hamka – Ulama Serba Bisa dalam Sejarah Indonesia', '788854.jpeg', 'Tim Majalah Historia', 'Gramedia Pustaka Utama', '2022', 'Buya Hamka atau Abdul Malik Karim Amrullah, lahir di Agam, Sumatera Barat, pada 17 Februari 1908. Ia merupakan putra dari pasangan Abdul Karim Amrullah dan Sitti Shafiah. Kehidupan pribadi Hamka dididik penuh dalam ajaran Islam karena ayahnya seorang ulama di tanah Minangkabau. Sementara ibunya berlatar dari keluarga seniman.\r\n\r\nSelama tinggal di Padang Panjang keseharian Hamka banyak mempelajari tentang ilmu Al-Qur’an sesuai adat Minang. Ketika remaja, sang ayah sempat mendaftarkannya ke Thawalib Sumatra yaitu sekolah Islam modern pertama di Indonesia.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(5, 'Novel'),
(8, 'Sejarah'),
(10, 'Self Improvement');

-- --------------------------------------------------------

--
-- Table structure for table `koleksi`
--

CREATE TABLE `koleksi` (
  `id_koleksi` int(12) NOT NULL,
  `id_user` int(12) DEFAULT NULL,
  `id_buku` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `koleksi`
--

INSERT INTO `koleksi` (`id_koleksi`, `id_user`, `id_buku`) VALUES
(9, 2, 26),
(10, 3, 2),
(11, 2, 27),
(12, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `tanggal_peminjaman` varchar(255) DEFAULT NULL,
  `tanggal_pengembalian` varchar(255) DEFAULT NULL,
  `status_peminjaman` enum('dipinjam','dikembalikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_user`, `id_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `status_peminjaman`) VALUES
(4, 2, 23, '2024-02-29', '2024-03-01', 'dipinjam'),
(5, 2, 2, '2024-03-01', '2024-03-06', 'dipinjam'),
(11, 8, 2, '2024-03-04', '2024-03-05', 'dipinjam'),
(12, 8, 26, '2024-03-04', '2024-03-05', 'dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_user`, `id_buku`, `ulasan`, `rating`) VALUES
(1, 1, 23, 'mau ke dunia narnia', 7),
(8, 2, 24, 'ceritanya menarik dan gak bosan', 5),
(9, 2, 26, 'hehe', 1),
(10, 2, 26, 'keren bgt', 1),
(11, 2, 26, 'keren bgtt', 1),
(12, 2, 2, 'waaa bgs', 3),
(13, 2, 2, 'bahasanya terlalu ribet', 1),
(14, 2, 2, 'nangadong hepeng', 3),
(15, 7, 2, 'sukaa', 5),
(16, 8, 2, 'waaa bgsbgt', 4),
(17, 2, 23, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `level` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `email`, `alamat`, `level`) VALUES
(1, 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', 'medan', 'admin'),
(2, 'peminjam', 'peminjam', '25d55ad283aa400af464c76d713c07ad', '', 'medan', 'peminjam'),
(3, 'petugas', 'petugas', '570c396b3fc856eceb8aa7357f32af1a', 'petugas@gmail.com', 'medan', 'petugas'),
(6, 'fabregas', 'regas', '40efbcbcb8076e9736d816cee56b374b', '', 'jl suka aja', 'peminjam'),
(7, 'maya', 'maya', 'b2693d9c2124f3ca9547b897794ac6a1', 'maya@gmail.com', 'gatau', 'peminjam'),
(8, 'ardi', 'peminjam', 'b623a7cebe5be1abc1409e528f6b4451', 'ardi@gmail.com', 'jl aja', 'peminjam'),
(9, 'petugas2', 'petugas2', 'petugas2', 'petugas2@gmail.com', 'jl kraya kasih', 'petugas'),
(11, 'petugas3', 'petugas3', NULL, 'petugas3@gmail.com', 'jl aja', 'petugas'),
(12, 'petugasperpus', 'petugasperpus', NULL, 'petugasperpus@gmail.com', 'Jl. Suka ', 'petugas'),
(13, 'petugasperpus', 'petugasperpus', NULL, 'petugasperpus@gmail.com', 'Jl. Suka ', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id_koleksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id_koleksi` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `koleksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `koleksi_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
