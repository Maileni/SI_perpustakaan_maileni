-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2023 pada 09.53
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
-- Database: `maiperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `sampul`, `judul`, `penulis`, `penerbit`, `jenis_buku`, `stok`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Better Together by Christine Riccio Hardcover _ Indigo Chapters.jpeg', 'Better Together', 'Asmara putri', 'Gramedia', 'Buku Novel', '6', 1, '2023-05-02 17:22:40', '2023-05-02 17:22:40'),
(2, 'Citah, Hewan Darat Tercepat.jpeg', 'citah hewan yang tercepat', 'Rahayu Kusuma', 'Gramedia', 'Buku Ensiklopedia', '7', 1, '2023-05-02 17:23:52', '2023-05-02 17:23:52'),
(3, 'dongeng.jpeg', 'cinderella', 'Rahayu Kusuma', 'Gramedia', 'Buku Novel', '8', 1, '2023-05-02 17:24:33', '2023-05-02 17:24:33'),
(4, 'ipa.jpeg', 'ilmu pengetahuan alam', 'Juandiga Satria', 'Gramedia', 'Buku Pelajaran', '8', 1, '2023-05-02 17:28:18', '2023-05-02 17:28:18');

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
(4, '2023_01_25_051402_create_books_table', 1),
(5, '2023_01_30_113602_create_profiles_table', 1),
(6, '2023_04_26_064745_create_table_pinjam', 1);

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
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(10) UNSIGNED NOT NULL,
  `book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`id`, `book`, `user`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '9', 1, '2023-05-02 17:25:28', '2023-05-02 17:26:31'),
(2, '2', '9', 2, '2023-05-02 17:25:33', '2023-05-02 17:26:36'),
(3, '3', '9', NULL, '2023-05-02 17:25:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `address`, `phone`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin4@gmail.com', NULL, '$2y$10$JmVp0JRgyMWebih32Coax.q8t3DOK3yFxfm781rNMpyIbDVpgX1FC', 'perempuan', 'xpplg2', 'rpl', 'Jln Sindang Barang', '333', 'admin', NULL, '2023-05-01 22:57:46', '2023-05-01 22:57:46'),
(4, 'Ahmad Faliansyah', 'ahmad123@gmail.com', NULL, '$2y$10$yA91EyzQb468gG5/9M2j/eJnR8WduxAyyrmtq6Nl9vCIhpdYNt1hC', 'Laki-Laki', 'XII', 'PPLG2', 'Jln Pagelaran', '08993850742', 'user', NULL, '2023-05-02 05:43:22', '2023-05-02 05:43:22'),
(5, 'Amelia Putri Sulaeman', 'amel123@gmail.com', NULL, '$2y$10$QmzIXz.oz9GWkwGmFfVjM./5IjD6IoTYG1xxiWau/2aPnjeTZyff2', 'perempuan', 'XII', 'PPLG2', 'Jln Yasiba', '085781638727', 'user', NULL, '2023-05-02 05:46:30', '2023-05-02 05:46:30'),
(6, 'Andi Abdul Rahman', 'Andi123@gmail.com', NULL, '$2y$10$NjZODj6VwsxfuLEhvk5r4unmdI7kCh4Bk/69WYbgCwbL56FLo75C2', 'Laki-Laki', 'X1', 'PPLG', 'Bogor', '082293411875', 'user', NULL, '2023-05-02 05:58:56', '2023-05-02 05:58:56'),
(8, 'Ariyanto Hermawan', 'Ariyanto123@gmail.com', NULL, '$2y$10$Orr4bZMC0OD0CWJNqvm8EOHK60f6O/80/ioi64pBF/DbM5GNh/M9a', 'Laki-Laki', 'X1', 'PPLG', 'Bogor', '088766345367', 'user', NULL, '2023-05-02 06:23:54', '2023-05-02 06:23:54'),
(9, 'Maileni', 'maileni123@gmail.com', NULL, '$2y$10$k4UyFYDBLo7RHh6SBgE77.UtYVMocrcYKQJBfMR8YPcPTXUzoJVRq', 'Perempuan', 'X1', 'PPLG', 'Jln Sindang Barang', '089639417883', 'user', NULL, '2023-05-02 07:24:25', '2023-05-02 07:24:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
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
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
