-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2021 pada 16.42
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lipi-database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keltian`
--

CREATE TABLE `keltian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prosiding` int(255) DEFAULT NULL,
  `jurnal` int(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keltian`
--

INSERT INTO `keltian` (`id`, `nama`, `avatar`, `agama`, `jenis_kelamin`, `email`, `password`, `alamat`, `prosiding`, `jurnal`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Yuyu Wahyu', 'comments-6.jpg', 'Islam', 'L', 'yuyu@gmail.com', 'yuyu1234', 'Bandung', 10, 1, 4, '2021-07-08 22:49:16', '2021-07-09 09:25:10'),
(2, 'Yudi Y M', NULL, 'Islam', 'L', 'yudi@gmail.com', 'yudi1234', 'Cimahi', 0, 1, 5, '2021-07-08 22:51:27', '2021-07-08 22:51:27'),
(3, 'Bagus E S', 'comments-5.jpg', 'Islam', 'L', 'bagus@gmail.com', 'bagus1234', 'Ciledug', 0, 0, 6, '2021-07-08 22:52:44', '2021-07-09 09:32:23'),
(4, 'Arief Budi S', NULL, 'Islam', 'L', 'arief@gmail.com', 'arief1234', 'Bojongsoang', 1, 0, 7, '2021-07-08 22:53:24', '2021-07-08 22:53:24'),
(5, 'Folin', NULL, 'Islam', 'P', 'folin@gmail.com', 'folin1234', 'Dago', 1, 0, 8, '2021-07-08 22:54:03', '2021-07-08 22:54:03'),
(6, 'Ken P', NULL, 'Islam', 'L', 'ken@gmail.com', 'ken1234', 'Pesona Bali', 2, 0, 9, '2021-07-08 22:55:02', '2021-07-08 22:55:02'),
(7, 'Teguh', NULL, 'Islam', 'L', 'teguh@gmail.com', 'teguh1234', 'Lembang', 1, 1, 10, '2021-07-08 22:55:59', '2021-07-08 22:55:59'),
(8, 'Topik Teguh', NULL, 'Islam', 'L', 'topik@gmail.com', 'topik1234', 'Cisarua', 3, 0, 11, '2021-07-08 22:56:34', '2021-07-08 22:56:34'),
(9, 'Yahya Syukri', NULL, 'Islam', 'L', 'yahya@gmail.com', 'yahya1234', 'Bandung', 2, 0, 12, '2021-07-08 22:57:10', '2021-07-08 22:57:10'),
(10, 'Yana T', NULL, 'Islam', 'L', 'yana@gmail.com', 'yana1234', 'Padalarang', 1, 0, 13, '2021-07-08 22:57:48', '2021-07-08 22:57:48'),
(11, 'Yaya S', NULL, 'Islam', 'L', 'yaya@gmail.com', 'yaya1234', 'Soreang', 1, 0, 14, '2021-07-08 22:58:39', '2021-07-08 22:58:39'),
(12, 'Agus Deni', NULL, 'Islam', 'L', 'agus@gmail.com', 'agus1234', 'Dayeuhkolot', 0, 0, 15, '2021-07-08 22:59:25', '2021-07-08 22:59:25'),
(13, 'Hendrawan', NULL, 'Islam', 'L', 'hendrawan@gmail.com', 'hendrawan1234', 'Ciwidey', 0, 0, 18, '2021-07-08 23:02:13', '2021-07-08 23:02:13'),
(14, 'Sadli', NULL, 'Islam', 'L', 'sadli@gmail.com', 'sadli1234', 'Rancabali', 0, 0, 19, '2021-07-08 23:02:56', '2021-07-08 23:02:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kunjungan`
--

INSERT INTO `kunjungan` (`id`, `judul`, `gambar`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'GCI Radar', 'Penelitian1.png', 'Radar GCI menjadi salah satu alutsista utama dalam operasi pertahanan udara dengan kemampuan deteksi hingga 450 km', '2021-07-11 07:47:57', '2021-07-11 07:56:50'),
(3, '01-00 Antena', 'Penelitian2.png', 'Primary Radar (PSR), Secondary Radar (SSR/IFF), Auxilary Antena, Frame Antena', '2021-07-11 08:20:02', '2021-07-11 08:20:02'),
(4, '02-00 Tilting Mechanism', 'Penelitian3.png', 'Main Structure, Main Cabinet, Pivot', '2021-07-11 08:20:54', '2021-07-11 08:20:54'),
(5, '03-00 Pedestal', 'Penelitian4.png', 'Main Structure, Cabinet, Cyl Hydraulic, Servo Mechanism', '2021-07-11 08:21:28', '2021-07-11 08:21:28'),
(6, '04-00 Rotating', 'Penelitian5.png', 'Main Structure, Slewing Bearing & Drive, Rotary Joint, Slip Ring,Cabinet, Bearing Base, Electro motor, Gearbox', '2021-07-11 08:21:54', '2021-07-11 08:21:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_06_23_040928_create_keltian_table', 2),
(7, '2021_07_09_151841_create_penelitian_table', 3),
(8, '2021_07_11_152312_create_kunjungan_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitian`
--

CREATE TABLE `penelitian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penelitian`
--

INSERT INTO `penelitian` (`id`, `judul`, `gambar`, `video`, `status`, `deskripsi`, `created_at`, `updated_at`) VALUES
(8, 'Antena slot waveguide delapan slot pada frekuensi 3,6 GHz untuk aplikasi WLAN', 'post-4.4.JPG', NULL, 'published', 'Beragam jenis antena dapat digunakan dalam komunikasi wireless, yang tentunya disesuaikan dengan kebutuhan komunikasi yang dilakukan. Saat ini, masih banyak penelitian mengenai antena dalam menunjang komunikasi yang lebih baik. Salah satu antena yang juga tengah dikembangkan yaitu antena slot waveguide yang digunakan sebagai antena penerima untuk sistem wireless internet.\r\n\r\nAntena slot waveguide memiliki konstruksi dan bentuk yang lebih sederhana. Antena ini dapat digunakan sebagai antena access point yang memiliki jangkauan yang lebih luas pada daerah yang memiliki interferensi sinyal yang cukup tinggi. Untuk keperluan pola radiasi dan penguatan yang diinginkan, digunakan metode array pada dinding waveguide. Semakin banyak slot, maka gain yang didapatkan semakin besar dan beamwidth yang dihasilkan semakin sempit. Berdasarkan hal diatas, pada Tugas Akhir ini telah dirancang dan direalisasikan antena slot waveguide, terdiri dari delapan buah slot yang memiliki orientasi vertikal dimana panjang masing-masing slot yaitu ½ panjang gelombang di udara ( o) dan jarak antara slot yang satu dengan yang lain yaitu ½ panjang gelombang waveguide ( g). Antena slot waveguide tersebut diaplikasikan untuk memenuhi kebutuhan wireless internet yang bekerja pada frekuensi 3,6 GHz.\r\n\r\nAntena slot waveguide untuk aplikasi WLAN pada frekuensi 3,6 GHz, dimana frekuensi disesuaikan dengan standar IEEE 802.11y-2008. Bahan yang digunakan pada perancangan antena adalah waveguide persegi dari bahan kuningan. Spesifikasi awal yang diinginkan dalam merealisasikan antena slot waveguide ini adalah frekuensi kerja 3,6 GHz, gain antena > 5 dB, VSWR < 1,5 dan impedansi saluran 50 Ω. Ukuran waveguide disesuaikan dengan frekuensi yang digunakan, dengan frekuensi 3,6 GHz, maka waveguide yang digunakan bertipe WR229 dengan a = 2,290 inch dan b = 1,145 inch.', '2021-07-09 09:43:35', '2021-07-10 05:55:05'),
(9, 'Antena Micostrip Fractal-Bowtie 2-18 Ghz untuk Electronic support Measure', 'post-2.JPG', NULL, 'published', 'Pada era perkembangan teknologi seperti saat ini Indonesia memerlukan perangkat elektronik yang canggih yang dapat membantu pertahanan sistem keamanan Indonesia, dimana 2/3 wilayah Indonesia merupakan lautan yang perlu pengamanan ekstra. Oleh karena itu untuk meningkatkan keamanan dalam menjaga dan mengawasi wilayah Indonesia, dibutuhkan sistem yang dapat meningkatkan kemampuan pertahanan Negara Kesatuan Republik Indonesia yaitu Electronic Support Measure (ESM).\r\n\r\nESM secara umum merupakan sebuah peralatan elektronik yang berfungsi untuk menerima sinyal gelombang elektromagnetik yang kemudian sinyal tersebut diproses dan dianalisa sehingga diperoleh lokasi, kuat sinyal, dan parameter lainnya. Dalam mendukung teknologi Electronic Support Measure (ESM), maka dibutuhkan device sebagai pengirim maupun penerima, yaitu sebagai transformator gelombang elegtromagnetik di udara. Antena merupakan device yang digunakan untuk melakukan proses tersebut.', '2021-07-09 09:44:19', '2021-07-10 05:57:43'),
(10, 'Antena logarithmic spiral pada frekuensi kerja 400 MHz- 4 GHz untuk high frecuency detector', 'post-2.2.JPG', NULL, 'published', 'Salah satu komponen yang sangat mempengaruhi perkembangan teknologi telekomunikasi pada daerah frekuensi gelombang mikro atau microwave adalah sebuah antena. Antena adalah transformator atau struktur transmisi antara gelombang terbimbing (saluran transmisi) dengan gelombang ruang bebas atau sebaliknya. Secara umum, tujuan dari penggunaan antena adalah untuk meningkatkan kualitas dari sebuah sinyal atau untuk memisahkan dua atau lebih sinyal yang sebelumnya dikombinasikan dengan tujuan mengefisienkan pemakaian saluran komunikasi yang ada. Radio Frekuensi merupakan media untuk komunikasi dan informasi yang menggunakan media tanpa kabel. Agar tidak terjadi interferensi frekuensi yang digunakan antar media komunikasi dan informasi tersebut maka diperlukannya regulasi alokasi frekuensi.\r\n\r\nAntena logarithmic spiral adalah salah satu pengembangan dari antena conical spiral yang berbentuk planar sehingga memiliki pola radiasi bidirectional. Antena ini memiliki jangkauan frekuensi 0,4 sampai 3,8 GHz untuk mendapatkan koefisien pantul lebih besar dari -10 dB. Antena logarithmic spiral digunakan untuk komunikasi broadband, dalam hal ini untuk High Frequency Detector. Frekuensi yang digunakan adalah frekuensi antara 400 MHz – 4 GHz.', '2021-07-10 05:42:08', '2021-07-10 05:42:08'),
(12, 'Antena Vertical Disc Monopole Ultra Wideband untuk monitoring radar', 'post-1.1.JPG', NULL, 'published', '..Perancangan antena vertical disc monopole yang terbuat dari bahan plat kuningan (brass) dengan karakteristik ultra wideband (UWB) yang beroperasi pada frekuensi 2 - 18 Ghz dan memiliki bandwidth yang lebar pada VSWR ≤ 2 , p olaradiasi omni directional, polarisasi linear , Gain 2 dB , Return Loss ≤ - 9.54 dB , Impedansi terminal 50 Ω dan b andwidth 25% dari frekuensi kerja . Antena ini memiliki prinsip kerja hanya sebagai receive (penerima) saja.\r\n\r\nAntenna Vertical Disc Monopole disebut demikian karena radiator disk yang secara vertikal ditempatkan pada groud plane. Bentuk ini berasal dari konvensional Monopole Fat dan direalisasikan dengan mengganti elemen kawat tersebut menggunakan pelat kuningan yang berbentuk disk.', '2021-07-10 16:00:09', '2021-07-10 16:03:18'),
(13, 'Antena vivaldi untuk rectenna pada UHF 470-806 MHz', 'post-3.3.JPG', NULL, 'published', 'Definisi awal dari sistem transmisi daya secara nirkabel menjelaskan bahwa sebuah unit dapat memancarkan daya listrik dari suatu tempat dan menangkapnya di suatu tempat lain di bumi tanpa menggunakan kabel atau media semacamnya. Sumber dari pemanenan energi secara nirkabel tersedia dalam berbagai bentuk seperti energi surya, energi angin, energi panas, energi elektromagnetik, energi kinetik, dan lainnya. Di antara semua energi tersebut, energi elektromagnetik memiliki jumlah yang berlimpah di udara dan tidak terbatas. Gelombang elektromagnetik berasal dari berbagai sumber seperti stasiun satelit, internet nirkabel, stasiun radio, dan penyiaran multimedia digital. Sebuah sistem pemanenan energi frekuensi radio dapat menangkap dan mengubah energi elektromagnetik menjadi sebuah tegangan searah (DC) yang berguna. Kunci dari sistem pemanen daya RF yaitu antena dan rangkaian penyearah (rectifier)\r\n\r\nSalah satu aplikasi energy harvesting yang memanfaatkan gelombang radio sebagai sumber adalah rectifying antenna (rectenna). Gelombang radio yang ada di udara bebas diterima oleh antena dan kemudian diubah menjadi tegangan DC. Penelitian ini merancang sistem rectenna sederhana yang terdiri dari antena dan rectifier. Antena yang dirancang merupakan antena mikrostrip vivaldi berjenis tapered slot dan bisa beroperasi pada sinyal TV UHF frekuensi 470-806 MHz', '2021-07-10 16:02:04', '2021-07-10 16:02:04'),
(14, 'Pengembangan Sistem Antena Radar Indonesia Sea Radar (ISRA)', 'post-1.JPG', NULL, 'published', 'Pusat Penelitian Elektronik dan Telekomunikasi (PPET) LIPI mengungkapkan, salah satu cara untuk meningkatkan kemampuan pemerintah dalam mengawasi dan melindungi perairan Indonesia adalah melalui penggunaan radar pengawas pantai.\r\n\r\nISRA adalah radar buatan LIPI yang diperkenalkan pada HUT LIPI ke-42 bulan Agustus 2009. ISRA merupakan radar pertama buatan Indonesia. Radar ini digunakan untuk memonitor pergerakan kapal di wilayah perairan Indonesia dan sebagai pemandu kapal besar di pelabuhan agar tidak bertabrakan, atau bisa juga digunakan untuk mengantisipasi masuknya kapal laut pendatang ilegal, seperti daerah pantai di pulau terluar atau Selat Malaka yang rawan didatangi kapal asing tanpa izin.', '2021-07-10 16:05:31', '2021-07-10 16:05:31'),
(15, 'Electronic Support Measure (ESM)', 'post-2.JPG', NULL, 'published', 'Saat ini perkembangan teknologi militer banyak menggunakan gelombang elektromagnetik dalam peralatan yang digunakan untuk melindungi negara. Terutama untuk daerah perbatasan negara yang kerap kali luput dari pantauan. Untuk melindungi wilayah darat, laut dan udara, diperlukan peningkatan sistem pertahanan untuk mengantisipasi dari serangan asing yang masuk ke wilayah negara secara ilegal. Salah satu sistem yang dapat meningkatkan kemampuan pertahanan tersebut adalah dengan menggunakan teknologi yang sedang dikembangkan oleh Lembaga Ilmu Pengetahuan Indonesia (LIPI) yaitu menggunakan sebuah perangkat yang bernama Electronic Support Measure (ESM).\r\n\r\nDalam telekomunikasi militer , istilah dukungan elektronik ( ES ) atau tindakan dukungan elektronik ( ESM ) menggambarkan pembagian peperangan elektronik yang melibatkan tindakan yang diambil di bawah kendali langsung seorang komandan operasional untuk mendeteksi, mencegat , mengidentifikasi, menemukan, merekam, dan/atau menganalisis sumber.', '2021-07-10 16:06:18', '2021-07-10 16:06:18'),
(16, 'Perancangan dan realisasi antena mikrostrip bowtie untuk electronic support measure pada ferkuensi 2-4 GHz', 'post-6.JPG', NULL, 'published', 'Kemampuan mata manusia sebagai salah satu indera penting sangatlah terbatas. Jarak pandang manusia biasa tidaklah lebih dari 100 meter. Apabila ada cuaca buruk, seperti kabut, maka jarak pandang ini akan menurun drastis. Peralatan yang juga dapat berfungsi sebagai ’mata’ tetapi menggunakan pancaran gelombang radio dikenal di dunia dengan nama Radar. Radar ini adalah singkatan dari Radio detection and ranging (deteksi dan penjangkauan melalui gelombang radio). Radar mampu berperan sebagai ’mata’ yang dapat ’melihat’ obyek di kejauhan. Informasi berupa jarak obyek dari posisi Radar dan kecepatan obyek dapat diperoleh dari Radar\r\n\r\nESM ini sedang dikembangkan oleh LIPI untuk nantinya digunakan dalam sistem keamanan Indonesia. ESM secara umum merupakan sebuah peralatan elektronik yang berfungsi untuk menerima sinyal gelombang elektromagnetik, kemudian sinyal tersebut diproses dan dianalisa sehingga diperoleh lokasi, kuat sinyal dan parameter lainnya. Salah satu subsistem penting dalam ESM adalah subsistem antena sebagai penerima sinyal gelombang elektromagnetik', '2021-07-10 16:07:24', '2021-07-10 16:07:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Alfian', 'alfian@gmail.com', NULL, '$2y$10$8jCr4K.PlGczKu7F2I4wOuftfEZDvvubrfQj5QHly3eWFLFl2YVai', 'Jixb0PsXxSeakkx4ZqU2aCSyAoI9FzRm0DZoM87DPJaiWpaFzDoGCPQ6WaoN', '2021-07-02 19:55:33', '2021-07-02 19:55:33'),
(2, 'admin', 'Rofi Rezkin', 'rofi@gmail.com', NULL, '$2y$10$WZOGX7z8oz4AESAdBJ.gEOqzR.mu9FngW8v8yUCwHZT0x.Tp4La1a', 'rI7YxDK0K0pmUWCdWUBnQWtxNUQW6D4VJNhACnMwU41Y1U6mMoq7sqMxWOmL', '2021-07-04 20:32:26', '2021-07-04 20:32:26'),
(3, 'admin', 'I Gede Megantara', 'megan@gmail.com', NULL, '$2y$10$NkAgB7UdAZgvL.4K7sCUYeFvqC2OlBvw5RKmVeWbpWGh8M58yHQzS', 'dfCM4ucNQd6X92YbN1CtXNykCd2ZKi4vFLO3MuzvOjrF8U80J7il3Y3hxQ0c', '2021-07-08 04:10:04', '2021-07-08 04:10:04'),
(4, 'keltian', 'Yuyu Wahyu', 'yuyu@gmail.com', NULL, '$2y$10$IlCbitgoQ1gaqfWEABtEtusiMFhIDe1/BOevzWuhmCr2S7N2jpXUK', 'BpDYBlhkhMC7wluYtr19KhOxenA7OmMD9wpHCQ3sP9CbFpmZzTUwBF68IxvN', '2021-07-08 22:49:16', '2021-07-08 22:49:16'),
(5, 'keltian', 'Yudi Y M', 'yudi@gmail.com', NULL, '$2y$10$0G82aVEcTAZuH/m8hck4GOMKOAsHHq8d97PZXZoFHjmVZhUSKuHc.', 'BbrTJBz2QPhCzeKVAx4NUJfAqDTAbitfuIXyf2z53Ofgs8clNLtrCh54IwXB', '2021-07-08 22:51:27', '2021-07-08 22:51:27'),
(6, 'keltian', 'Bagus E S', 'bagus@gmail.com', NULL, '$2y$10$9h6rPZ7S9gXmretmH6.m8OqZruXZbpesiIA8xPkbBWtLMsMLVtaEm', '0xI9HK6EeZof52FZMurK2anLXX94tthlh4VxhtQlqkG6vKGsFjyN12jA7G1r', '2021-07-08 22:52:44', '2021-07-08 22:52:44'),
(7, 'keltian', 'Arief Budi S', 'arief@gmail.com', NULL, '$2y$10$s5xL6bTvrtcHBs5wsOuxB.HGsjn0p.uSsS6RavuUTJN6dnkbt0.QK', 'Wcl5RTl2sNyfpIN8Z33lefELxCbp5UyTcNgD637hFTFdcBdNRcCvADQ3B2I1', '2021-07-08 22:53:24', '2021-07-08 22:53:24'),
(8, 'keltian', 'Folin', 'folin@gmail.com', NULL, '$2y$10$euL7XV.aqmRPBjsgymLRjuIytfv9BhBGjXKhjngO/9ijzwJcWYXPu', 'Y7jeG7RLo8J2KCQCLszIlaUFAcU5z9dwAS8utZbyooo9Qb8Rtxl9eXr9nDyk', '2021-07-08 22:54:03', '2021-07-08 22:54:03'),
(9, 'keltian', 'Ken P', 'ken@gmail.com', NULL, '$2y$10$QOQVqXerJ5sy.e9r/vSTf.4Yl88nPeGt5teZ9IdGZpGVA88ptsKoa', '085ZcwBmuAgAXKo6jzWXEWbQme9fc6T8FWmh8Jfzp0KXViLk7JNaug2Tbq6C', '2021-07-08 22:55:02', '2021-07-08 22:55:02'),
(10, 'keltian', 'Teguh', 'teguh@gmail.com', NULL, '$2y$10$JqlI27NTOg30k46uxjAi/uMjLa9tEk.jQ.h4D/lR5JCW5gcCiW51y', 'bLbVG28r7E8wVyKHVoFlnE5DYoNXPlniJckZZpxkMvTURVsxMH62oG8l6y98', '2021-07-08 22:55:59', '2021-07-08 22:55:59'),
(11, 'keltian', 'Topik Teguh', 'topik@gmail.com', NULL, '$2y$10$D6fAWb2ORP/S6dRbzrwnjOGjSBfxclyjX.WN0gZL0rdf7LCH63CCC', '9PQPn8ngrt2ZvBgAxKSJeTf60N3RYbWQaczRrCvwEoblvK4nxjgQKWZ6IkoF', '2021-07-08 22:56:34', '2021-07-08 22:56:34'),
(12, 'keltian', 'Yahya Syukri', 'yahya@gmail.com', NULL, '$2y$10$CUDpj0LW4LyHWa.1yMsjvezPMC6wiUy01Kht6FVhnXH8gajgh9I.O', 'pCSlm3ieco5fiwuGo8iZKinl2wfvYtjHNiKuC2f3p7b0qPtgYJczMiRNeDj6', '2021-07-08 22:57:10', '2021-07-08 22:57:10'),
(13, 'keltian', 'Yana T', 'yana@gmail.com', NULL, '$2y$10$w7IESf0b7E2TmlBnzGQpsegZQwGnR7LCOU5qLajuElV9Y7G2kWhWe', 'kjFCIMS9juW3lm4ea4J4PR5tSs58WSMzPFLsfMGXACf1HNzoj5xt0uCfMlBN', '2021-07-08 22:57:48', '2021-07-08 22:57:48'),
(14, 'keltian', 'Yaya S', 'yaya@gmail.com', NULL, '$2y$10$kdKZXOb3MHWhvKhnKSRY5OkK/vKPRv3gBJ.yNUWb/MS.A5hi78nWG', 'RAvwXRerRHc4WWtO09Asd7vZuKWNUVAfzH8nQh6PmFv28eH3kgT5w9747vql', '2021-07-08 22:58:39', '2021-07-08 22:58:39'),
(15, 'keltian', 'Agus Deni', 'agus@gmail.com', NULL, '$2y$10$lbp3QPdwp8P2skbGnDe.puzXLY5Ip2.thJEhO/CTqxD5jicBEzNMG', 'nZVKHbfWMYCjMIj8HVMyjyu1zhhfttiznMcbv7wuhjim1TlBqjaHTOIMMstw', '2021-07-08 22:59:25', '2021-07-08 22:59:25'),
(18, 'keltian', 'Hendrawan', 'hendrawan@gmail.com', NULL, '$2y$10$dRzDavHOEfEhl7jHRb25SODyVDxXoHFgKS0oVcPvlAhoFSJj7r9dC', 'aRKylkaAOWciLTXIIuVFL01v2L8mR7ZEBY4MdsdFh2fGCMIS9SSHluW03VWS', '2021-07-08 23:02:13', '2021-07-08 23:02:13'),
(19, 'keltian', 'Sadli', 'sadli@gmail.com', NULL, '$2y$10$D.GhZxJCiOUMvb.PpEqEceBM1Xwy28WqJ.l1E/cfNbIImN.jMN1XW', '9dKIGI4uBiFL4gTbS7DubT0YVyOpmYs5sLX2GmAsM6MuRIbFLgb3kHTQjRh5', '2021-07-08 23:02:56', '2021-07-08 23:02:56'),
(21, 'keltian', 'Anindya', 'anindya@gmail.com', NULL, '$2y$10$tIfKCsEIMabUcfdpCcg/9eNWSvVWWI23cpu6mZVuZIhKI3iBTIvmC', 'N0h6XmDDVuoROzIYKEVMJZj9BdircsJU3LTG0zJKOXaK3gzNrBaSqg9EXaDF', '2021-07-11 20:22:55', '2021-07-11 20:22:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keltian`
--
ALTER TABLE `keltian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keltian_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keltian`
--
ALTER TABLE `keltian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keltian`
--
ALTER TABLE `keltian`
  ADD CONSTRAINT `keltian_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
