-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Sep 2024 pada 17.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(2, 'siswa', 'siswa', 'siswa', 'siswa'),
(7, 'Andre', 'andre', '123', 'alumni'),
(8, 'Andre Setiawan', 'andree', '123', 'alumni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jekel` enum('laki-laki','perempuan') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `agama` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `tahun_masuk` varchar(100) NOT NULL,
  `tahun_keluar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama`, `jekel`, `tgl_lahir`, `alamat`, `agama`, `email`, `no_hp`, `tahun_masuk`, `tahun_keluar`) VALUES
(1, 'aaa', 'laki-laki', '2024-09-06', 'aaa', 'kristen', 'admin@gmail.com', 2013, '222', '2222'),
(2, 'ttt', '', '0000-00-00', '', '', 'coba@gmail.com', 12345, '2015', '2018'),
(3, 'Arga', 'laki-laki', '2024-09-23', 'kudus', 'kristen', 'coba@gmail.com', 222, '222', '222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(30) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `judul`, `deskripsi`, `tempat`, `tanggal`, `email`, `no_hp`) VALUES
(1, 'Expo Panen Project SMKLH', 'Expo Panen Project SMKLH adalah sebuah kegiatan yang bertujuan untuk memamerkan atau menunjukkan hasil karya yang pernah dibuat oleh siswa dan siswi di SMK Luqman Al Hakim Kudus.', 'SMK Luqman Al Hakim Kudus', '2024-09-23', 'admin@gmail.com', '0811223456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `perusahaan` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `kualifikasi` text NOT NULL,
  `berkas` text NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `judul`, `perusahaan`, `tanggal`, `tempat`, `kualifikasi`, `berkas`, `no_hp`, `email`, `posisi`, `deskripsi`) VALUES
(1, 'Lowongan Supervisor Produksi Packaging Novell Pharm Group', 'Novell Pharm Group', '2024-09-20', 'Novell Pharm Group', 'Pendidikan Apoteker |\r\nMemahami CPOB |\r\nMemiliki kemampuan komunikasi dan jiwa kepemimpinan yang baik |\r\nBerorientasi pada target dan hasil kerja |\r\nMampu bekerja dengan smartworker hardworker, dan high pressure |\r\nBersedia bekerja dengan sistem shift |\r\nPenempatan di Plant Sayung, Demak.', 'Surat lamaran kerja |\r\nDaftar riwayat hidup |\r\nFotocopy KTP |\r\nFotocopy KK |\r\nFotocopy Ijazah |\r\nPas foto 4x6 2 lembar', '089911111', 'recruitment@plant.eterconpharma.com', 'Supervisor Produksi Packaging', 'Info Loker Novell Pharm Group Saat ini kami sedang membuka lowongan pekerjaan untuk posisi SUPERVISOR PRODUKSI PACKAGING, penempatan di\r\nPLANT JAWA TENGAH, Kualifikasi :'),
(2, 'Lowongan Spv Inventory, Delivery and Good Stock', 'CV. Panca Gemilang', '2024-09-20', 'JI. Semarang purwodadi Km. 16, Ds. Kembangarum, Mranggen Demak', 'Wanita usia maksimal 30 tahun |\r\nPendidikan minimal SMA |\r\nSiap bekerja sistem 2 shift |\r\nMau belajar dan diarahkan |\r\nBerpengalaman di industri plastik lebih diutamanakan |\r\nPenempatan di Mranggen.', 'Surat lamaran kerja |\r\nDaftar riwayat hidup |\r\nFotocopy KTP |\r\nFotocopy KK |\r\nFotocopy Ijazah |\r\nPas foto 4x6 2 lembar |', '085600158765 | HRD', 'hrd.pancagemilang@gmail.com', 'Spv Inventory, Delivery and Good Stock', 'CV. Panca Gemilang adalah produsen kantong/tas plastik HD atau dikenal dengan sebutan tas kresek dan Plastik PP atau dikenal dengan sebutan plastik kiloan (untuk pengemasan makanan/minuman dan produk konsumsi/bumbu dapur dll) yang pabriknya berlokasi di Mranggen, Demak. Dibutuhkan Segera '),
(3, 'Account Officer Program (AOP) Bank Artha Graha Internasional', 'Bank Artha Graha Internasional', '2024-09-20', 'Bank Artha Graha Internasional', 'Laki-laki/Perempuan | \r\nUsia maksimal 25 tahun | \r\nPendidikan minimum S1 untuk semua jurusan | \r\nIPK terakhir minimal 3.00 skala 4.00 | \r\nFresh Graduate dipersilahkan melamar | \r\nMemiliki ketertarikan terhadap marketing perbankan | \r\nBersedia ditempatkan di seluruh cabang | BAGI seluruh Indonesia | \r\nMampu berkomunikasi dengan baik dan benar | \r\nBersedia bekerja di hari senin-sabtu (khusus sabtu jam operasional hanya setengah hari) | \r\nBersedia mengikuti Program Pendidikan dan Pelatihan selama 3 bulan', 'Surat lamaran kerja |\r\nDaftar riwayat hidup |\r\nFotocopy KTP |\r\nFotocopy KK |\r\nFotocopy Ijazah |\r\nPas foto 4x6 2 lembar', '081234556', 'personalia_pandanaran@ag.co.id', 'Account Officer Program (AOP)', 'Account Officer Program (AOP) Bank Artha Graha Internasional adalah sebuah Program Pendidikan dan Pelatihan yang diselenggarakan untuk menemukan dan menghasilkan seorang Account Officer yang terdidik dan berwawasan luas. \r\nProgram ini akan berlangsung selama kurang lebih 6 bulan dan yang mana setelah program ini selesai, peserta AOP langsung diangkat menjadi karyawan tetap Bank Artha Graha Internasional dengan masa ikatan dinas minimum 3 tahun. '),
(4, 'Lowongan Admin Processing BFI Finance Branch Semarang', 'BFI Finance Branch Semarang', '2024-09-20', 'BFI Finance Branch Semarang', 'Pria | \r\nUsia Maksimal 25 Tahun | \r\nPendidikan minimal D3 | \r\nTeliti dan menguasai Ms. Office | \r\nTerbuka untuk mahasiswa tingkat akhir/ lulusan baru | \r\nDiutamakan berdomisili di Semarang', 'Surat lamaran kerja |\r\nDaftar riwayat hidup |\r\nFotocopy KTP |\r\nFotocopy KK |\r\nFotocopy Ijazah |\r\nPas foto 4x6 2 lembar', '0811223456', 'bfi@gmail.com', 'Admin Processing', 'Rekrutmen BFI Finance Branch Semarang Membuka Lowongan Pekerjaan\r\n\r\nJob Description\r\nMembantu proses administrasi pada bagian operasional back office\r\nPengecekan nomer rangka dan nomer mesin kendaraan serta verifikasi dokumen debitur.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `responden`
--

CREATE TABLE `responden` (
  `id_responden` int(25) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tahun_angkatan` varchar(200) NOT NULL,
  `kritik` text NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `responden`
--

INSERT INTO `responden` (`id_responden`, `nama`, `tahun_angkatan`, `kritik`, `saran`) VALUES
(1, 'Argha', '2017', 'Fasilitas kurang lengkap', 'Fasilitas ditingkatkan lagi'),
(2, 'Andre', '2020', 'Kegiatan terlalu padat', 'Dikasih waktu istirahat lebih panjang'),
(4, 'Sinta', '2021', 'Tidak ada', 'Tidak ada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indeks untuk tabel `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id_responden`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `responden`
--
ALTER TABLE `responden`
  MODIFY `id_responden` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
