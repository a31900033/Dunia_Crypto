-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.20-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table ridwan_network.abouts
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `about_me` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.abouts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` (`id`, `about_me`, `created_at`, `updated_at`) VALUES
	(1, '<div>Halo sobat investor crypto! Selamat datang di website <strong>Ridwan Network. </strong>Nama saya Muhamad Ridwan Efendi, saya adalah seorang Crypto Analysis. Pekerjaan saya adalah menganalisa tentang suatu Cryptocurrency yang ada. Contoh analisis yang saya lakukan diantaranya adalah mencari tahu aset-aset apa yang sekiranya bakal \'To The Moon\', aset mana yang akan anjlok, dan lain-lain.&nbsp;<br><br>Saya sudah berkecimpung di dunia Analisis Cryptocurrency sejak 2016 silam, saya juga sering membantu orang-orang dalam membantu masuk ke dunia investasi crypto.&nbsp; Dengan adanya website ini saya ingin membagikan ilmu yang saya punya kepada kalian yang telah berkunjung ke dalam website ini. Di website ini kalian akan melihat artikel-artikel mengenai crypto, seperti rekomendasi aset crypto, informasi crypto terbaru, tips &amp; trick investasi crypro, dan masih banyak lagi.&nbsp;<br><br>Website ini terbuka untuk siapa saja, mau anda baru masuk ke dunia crypto, atau yang sudah ahli, bisa mengambil informasi dari website ini. Enjoy!<br><br></div><h1><strong>TO THE MOON!!!</strong></h1>', '2022-01-06 01:01:09', '2022-01-06 16:22:46');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.contacts: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `name`, `email`, `phone_number`, `message`, `created_at`, `updated_at`) VALUES
	(6, 'Wisam Barik Jaya Perkasa', 'wisamjp@gmail.com', '0807811235678', 'Hi kak! Website kakak ini sangan membantu sekali buat saya yang dulunya awam soal crypto. Sekarang saya udah profit banyak banget, saya mau berterimakasih kepada kakak.', '2022-01-05 14:51:49', '2022-01-05 14:51:49');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.migrations: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_01_05_125838_create_contacts_table', 2),
	(6, '2022_01_05_233359_create_abouts_table', 3),
	(7, '2022_01_06_101259_create_posts_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.posts: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `judul`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
	(2, 'Rekomendasi 10 Aset Crypto Minggu', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequu...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequuntur provident magni voluptatum animi ratione quasi molestiae consectetur maxime dolores minus ad natus facilis. <br><br><strong>1. Doge Coin</strong><br>Commodi accusantium odit inventore vero asperiores quis dolorem, iusto animi debitis reiciendis expedita quam eveniet labore, omnis deleniti. Amet recusandae molestias quaerat illo veniam eveniet. <br><br><strong>2. Bitcoin</strong><br>Ducimus ratione quibusdam tenetur quod consequatur aut officia eaque repudiandae dolores earum doloribus facere commodi nisi amet maxime quae voluptatibus aliquid, nobis nihil deleniti vel, enim ut impedit ex. <br><br><strong>3. Binance Coin</strong><br>Laboriosam corrupti neque numquam ea reiciendis eos, suscipit fugiat, architecto sapiente mollitia quam quis? Expedita, non quo.<br><br><strong>4. Cardano</strong><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum. <br><br><strong>5.&nbsp; Litecoin</strong><br>Unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi?&nbsp;</div>', '2022-01-06 12:48:23', '2022-01-06 12:48:23'),
	(3, 'Hati-Hati Buat Kalian Yang Invest di Doge Coin', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat ape...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.</div>', '2022-01-06 12:49:58', '2022-01-06 12:49:58'),
	(4, 'Khusus Pemula!! Wajib Baca Ini Dulu Sebelum Mau Investasi di Crypto', 'Belajar trading crypto atau perdagangan kripto penting bagi seseorang sebelum melakukannya. Pemahama...', '<div>Belajar trading crypto atau perdagangan kripto penting bagi seseorang sebelum melakukannya. Pemahaman yang komprehensif tentang aset dan teknologi yang terlibat dalam cryptocurrency atau mata uang kripto merupakan dasar untuk pemula.<br><br><strong>1. Siapkan uangmu<br></strong>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br><strong>2. Kalian tidak akan selalu untung<br></strong>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br></div><h1><strong>TO THE MOON!!</strong></h1>', '2022-01-06 12:54:13', '2022-01-06 15:38:45'),
	(5, 'Tips & Trick Investasi Crypto Bagi Pemula', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequu...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequuntur provident magni voluptatum animi ratione quasi molestiae consectetur maxime dolores minus ad natus facilis.<br><br><strong>Tips &amp; Trick Pertama</strong><br>Commodi accusantium odit inventore vero asperiores quis dolorem, iusto animi debitis reiciendis expedita quam eveniet labore, omnis deleniti. Amet recusandae molestias quaerat illo veniam eveniet.<br><br><strong>Tips &amp; Trick Kedua</strong><br>Ducimus ratione quibusdam tenetur quod consequatur aut officia eaque repudiandae dolores earum doloribus facere commodi nisi amet maxime quae voluptatibus aliquid, nobis nihil deleniti vel, enim ut impedit ex.<br><br><strong>Tips &amp; Trick Ketiga</strong><br>Laboriosam corrupti neque numquam ea reiciendis eos, suscipit fugiat, architecto sapiente mollitia quam quis? Expedita, non quo.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequuntur provident magni voluptatum animi ratione quasi molestiae consectetur maxime dolores minus ad natus facilis.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>', '2022-01-06 15:43:48', '2022-01-06 15:43:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- membuang struktur untuk table ridwan_network.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel ridwan_network.users: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Ridwan', 'admin', '$2y$10$aHGCFR20jUHZB8KU6PETY.p5nIrM6WQzyIXt0ZByCgXoeaub5K8yq', NULL, '2022-01-05 02:00:44', '2022-01-05 02:00:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
