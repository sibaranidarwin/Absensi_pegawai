-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2024 at 06:22 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `att_attemployee`
--

CREATE TABLE `att_attemployee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `create_time` datetime NOT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_attendance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_overtime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_holiday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_compensatory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `att_attemployee`
--

INSERT INTO `att_attemployee` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `enable_attendance`, `enable_schedule`, `enable_overtime`, `enable_holiday`, `emp_id`, `group_id`, `enable_compensatory`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, '2024-03-16 08:06:29', '', '2024-03-16 08:06:29.809726', NULL, '0', '1', '1', '1', '1', '1', NULL, '0', NULL, NULL, NULL),
(2, '2024-03-13 08:06:29', '', '2024-03-13 08:06:29.990111', NULL, '0', '1', '1', '1', '1', '2', NULL, '0', NULL, NULL, NULL),
(3, '2024-03-13 08:06:30', '', '2024-03-13 08:06:30.157806', NULL, '0', '1', '1', '1', '1', '3', NULL, '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Content Creator', '2024-03-15 18:03:25', '2024-03-15 18:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `half_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_08_25_125219_create_roles_table', 1),
(6, '2020_08_25_125921_create_role_user_table', 1),
(7, '2020_08_25_202641_create_employees_table', 1),
(8, '2020_08_26_074103_create_attendances_table', 1),
(9, '2020_08_26_123244_create_departments_table', 1),
(10, '2020_08_27_204750_create_leaves_table', 1),
(11, '2020_08_29_112051_create_holidays_table', 1),
(12, '2020_08_29_145328_create_expenses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employee`
--

CREATE TABLE `personnel_employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `change_user` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `emp_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license_automobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license_motorcycle` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_password` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dev_privilege` int(11) DEFAULT NULL,
  `card_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_timezone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enroll_sn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `verify_mode` int(11) DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_type` smallint(6) DEFAULT NULL,
  `enable_payroll` tinyint(1) NOT NULL,
  `app_status` smallint(6) DEFAULT NULL,
  `app_role` smallint(6) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `session_key` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `leave_group` int(11) DEFAULT NULL,
  `emp_code_digit` bigint(20) DEFAULT NULL,
  `superior_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnel_employee`
--

INSERT INTO `personnel_employee` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `emp_code`, `first_name`, `last_name`, `nickname`, `passport`, `driver_license_automobile`, `driver_license_motorcycle`, `photo`, `self_password`, `device_password`, `dev_privilege`, `card_no`, `acc_group`, `acc_timezone`, `gender`, `birthday`, `address`, `postcode`, `office_tel`, `contact_tel`, `mobile`, `national`, `religion`, `title`, `enroll_sn`, `ssn`, `update_time`, `hire_date`, `verify_mode`, `city`, `emp_type`, `enable_payroll`, `app_status`, `app_role`, `email`, `last_login`, `is_active`, `session_key`, `login_ip`, `department_id`, `position_id`, `leave_group`, `emp_code_digit`, `superior_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '2024-03-16 08:06:29', NULL, '2024-03-13 08:06:29', NULL, 0, '1', 'dummy01', NULL, NULL, NULL, NULL, NULL, '', 'pbkdf2_sha256$390000$ZVafrW0cKAKer8tV8ZPNfZ$kbMr/pFsuJTulWsuw/aqpgU9jjSfVhnl6ZxZoRRVWPw=', NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CL9M212260015', NULL, '2024-03-13 08:06:29', '2024-03-13', 0, NULL, NULL, 1, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, 1, NULL, NULL),
(2, '2024-03-13 08:06:29', NULL, '2024-03-13 08:06:29', NULL, 0, '2', 'dummy02', NULL, NULL, NULL, NULL, NULL, '', 'pbkdf2_sha256$390000$DlMsp4hpJItggyiztfmIqY$R4fTULwnSuD2/+5VQXMnL259nzscNR2J+8zws99WoDE=', NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CL9M212260015', NULL, '2024-03-13 08:06:30', '2024-03-13', 0, NULL, NULL, 1, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 2, NULL, 1, NULL, NULL),
(3, '2024-03-13 08:06:30', NULL, '2024-03-13 08:06:30', NULL, 0, '3', 'tumow', NULL, NULL, NULL, NULL, NULL, '', 'pbkdf2_sha256$390000$dUEnd2kWwSZY3dB36nUJB3$W8K6MuRDyrp+CWgsanq3l6SeRAxdqaUVsQZV/t/wLeQ=', NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CL9M212260015', NULL, '2024-03-13 08:06:30', '2024-03-13', 0, NULL, NULL, 1, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 3, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-03-15 18:03:25', '2024-03-15 18:03:25'),
(2, 'employee', '2024-03-15 18:03:25', '2024-03-15 18:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$EJTvubbZHaQxFeFptbmnGu2vKacVO5bl9p6Xb9dhoBaEJUZrIvCri', NULL, '2024-03-15 18:03:25', '2024-03-15 18:03:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `att_attemployee`
--
ALTER TABLE `att_attemployee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personnel_employee`
--
ALTER TABLE `personnel_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `att_attemployee`
--
ALTER TABLE `att_attemployee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_employee`
--
ALTER TABLE `personnel_employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
