-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2024 at 11:34 AM
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
-- Database: `zktabsensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_adminbiodata`
--

CREATE TABLE `accounts_adminbiodata` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `bio_tmp` longtext NOT NULL,
  `bio_no` int(11) DEFAULT NULL,
  `bio_index` int(11) DEFAULT NULL,
  `bio_type` int(11) NOT NULL,
  `major_ver` varchar(30) NOT NULL,
  `minor_ver` varchar(30) DEFAULT NULL,
  `bio_format` int(11) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL,
  `duress` tinyint(1) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_usernotification`
--

CREATE TABLE `accounts_usernotification` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `send_time` datetime(6) NOT NULL,
  `read_time` datetime(6) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `event` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_usernotification`
--

INSERT INTO `accounts_usernotification` (`id`, `content`, `send_time`, `read_time`, `status`, `user_id`, `category`, `event`) VALUES
(1, '{\"sn\": \"CL9M212260015\", \"ip_address\": \"192.168.200.120\", \"alias\": \"Auto add\", \"terminal_name\": \"MiniAC\", \"area_name\": \"Medan\", \"last_activity\": \"2024-03-13 11:08:12\"}', '2024-03-13 11:22:45.027095', NULL, 0, 1, 1, 101),
(2, '{\"sn\": \"CL9M212260015\", \"ip_address\": \"192.168.200.120\", \"alias\": \"Auto add\", \"terminal_name\": \"MiniAC\", \"area_name\": \"Medan\", \"last_activity\": \"2024-03-13 11:08:12\"}', '2024-03-18 08:23:29.552550', NULL, 0, 1, 1, 101);

-- --------------------------------------------------------

--
-- Table structure for table `acc_acccombination`
--

CREATE TABLE `acc_acccombination` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `combination_no` int(11) NOT NULL,
  `combination_name` varchar(100) NOT NULL,
  `group1` int(11) DEFAULT NULL,
  `group2` int(11) DEFAULT NULL,
  `group3` int(11) DEFAULT NULL,
  `group4` int(11) DEFAULT NULL,
  `group5` int(11) DEFAULT NULL,
  `remark` varchar(999) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_acccombination`
--

INSERT INTO `acc_acccombination` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `combination_no`, `combination_name`, `group1`, `group2`, `group3`, `group4`, `group5`, `remark`, `update_time`, `area_id`) VALUES
(1, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 1, '1', 1, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(2, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 2, '2', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(3, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 3, '3', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(4, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 4, '4', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(5, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 5, '5', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(6, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 6, '6', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(7, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 7, '7', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(8, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 8, '8', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(9, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 9, '9', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2),
(10, '2024-03-06 15:01:20.246035', NULL, '2024-03-06 15:01:20.246035', NULL, 0, 10, '10', 0, 0, 0, 0, 0, NULL, '2024-03-06 15:01:20.245042', 2);

-- --------------------------------------------------------

--
-- Table structure for table `acc_accgroups`
--

CREATE TABLE `acc_accgroups` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `group_no` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `verify_mode` int(11) NOT NULL,
  `timezone1` int(11) DEFAULT NULL,
  `timezone2` int(11) DEFAULT NULL,
  `timezone3` int(11) DEFAULT NULL,
  `is_include_holiday` smallint(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_accgroups`
--

INSERT INTO `acc_accgroups` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `group_no`, `group_name`, `verify_mode`, `timezone1`, `timezone2`, `timezone3`, `is_include_holiday`, `update_time`, `area_id`) VALUES
(1, '2024-03-06 15:01:20.241039', NULL, '2024-03-06 15:01:20.241039', NULL, 0, 1, '1', 0, 1, 0, 0, 0, '2024-03-06 15:01:20.241039', 2);

-- --------------------------------------------------------

--
-- Table structure for table `acc_accholiday`
--

CREATE TABLE `acc_accholiday` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `holiday_id` int(11) NOT NULL,
  `timezone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acc_accprivilege`
--

CREATE TABLE `acc_accprivilege` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `is_group_timezone` smallint(6) NOT NULL,
  `timezone1` int(11) DEFAULT NULL,
  `timezone2` int(11) DEFAULT NULL,
  `timezone3` int(11) DEFAULT NULL,
  `is_group_verifycode` smallint(6) NOT NULL,
  `verify_mode` int(11) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_accprivilege`
--

INSERT INTO `acc_accprivilege` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `is_group_timezone`, `timezone1`, `timezone2`, `timezone3`, `is_group_verifycode`, `verify_mode`, `update_time`, `area_id`, `employee_id`, `group_id`) VALUES
(1, '2024-03-13 08:06:29.857261', NULL, '2024-03-13 08:06:29.857261', NULL, 0, 1, 1, 0, 0, 1, -1, '2024-03-13 08:06:29.857261', 2, 1, 1),
(2, '2024-03-13 08:06:30.020113', NULL, '2024-03-13 08:06:30.020113', NULL, 0, 1, 1, 0, 0, 1, -1, '2024-03-13 08:06:30.020113', 2, 2, 1),
(3, '2024-03-13 08:06:30.185385', NULL, '2024-03-13 08:06:30.185385', NULL, 0, 1, 1, 0, 0, 1, -1, '2024-03-13 08:06:30.185385', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `acc_accterminal`
--

CREATE TABLE `acc_accterminal` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `door_name` varchar(50) DEFAULT NULL,
  `door_lock_delay` int(11) NOT NULL,
  `door_sensor_delay` int(11) NOT NULL,
  `door_sensor_type` smallint(6) NOT NULL,
  `door_alarm_delay` int(11) NOT NULL,
  `retry_times` smallint(6) NOT NULL,
  `valid_holiday` smallint(6) NOT NULL,
  `nc_time_period` int(11) NOT NULL,
  `no_time_period` int(11) NOT NULL,
  `speaker_alarm` smallint(6) NOT NULL,
  `duress_fun_on` smallint(6) NOT NULL,
  `alarm_1_1` smallint(6) NOT NULL,
  `alarm_1_n` smallint(6) NOT NULL,
  `alarm_password` smallint(6) NOT NULL,
  `duress_alarm_delay` int(11) NOT NULL,
  `anti_passback_mode` smallint(6) NOT NULL,
  `anti_door_direction` smallint(6) NOT NULL,
  `verify_mode_485` smallint(6) NOT NULL,
  `push_time` datetime(6) DEFAULT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acc_acctimezone`
--

CREATE TABLE `acc_acctimezone` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `timezone_no` int(11) NOT NULL,
  `timezone_name` varchar(100) NOT NULL,
  `sun_start` time(6) NOT NULL,
  `sun_end` time(6) NOT NULL,
  `sun_on` smallint(6) DEFAULT NULL,
  `mon_start` time(6) NOT NULL,
  `mon_end` time(6) NOT NULL,
  `mon_on` smallint(6) DEFAULT NULL,
  `tue_start` time(6) NOT NULL,
  `tue_end` time(6) NOT NULL,
  `tue_on` smallint(6) DEFAULT NULL,
  `wed_start` time(6) NOT NULL,
  `wed_end` time(6) NOT NULL,
  `wed_on` smallint(6) DEFAULT NULL,
  `thu_start` time(6) NOT NULL,
  `thu_end` time(6) NOT NULL,
  `thu_on` smallint(6) DEFAULT NULL,
  `fri_start` time(6) NOT NULL,
  `fri_end` time(6) NOT NULL,
  `fri_on` smallint(6) DEFAULT NULL,
  `sat_start` time(6) NOT NULL,
  `sat_end` time(6) NOT NULL,
  `sat_on` smallint(6) DEFAULT NULL,
  `remark` varchar(999) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_acctimezone`
--

INSERT INTO `acc_acctimezone` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `timezone_no`, `timezone_name`, `sun_start`, `sun_end`, `sun_on`, `mon_start`, `mon_end`, `mon_on`, `tue_start`, `tue_end`, `tue_on`, `wed_start`, `wed_end`, `wed_on`, `thu_start`, `thu_end`, `thu_on`, `fri_start`, `fri_end`, `fri_on`, `sat_start`, `sat_end`, `sat_on`, `remark`, `update_time`, `area_id`) VALUES
(1, '2024-03-06 15:01:20.237035', NULL, '2024-03-06 15:01:20.237035', NULL, 0, 1, '1', '00:00:00.000000', '23:59:00.000000', 1, '00:00:00.000000', '23:59:00.000000', 1, '00:00:00.000000', '23:59:00.000000', 1, '00:00:00.000000', '23:59:00.000000', 1, '00:00:00.000000', '23:59:00.000000', 1, '00:00:00.000000', '23:59:00.000000', 1, '00:00:00.000000', '23:59:00.000000', 1, NULL, '2024-03-06 15:01:20.237035', 2);

-- --------------------------------------------------------

--
-- Table structure for table `attparam`
--

CREATE TABLE `attparam` (
  `id` int(11) NOT NULL,
  `paraname` varchar(30) NOT NULL,
  `paratype` varchar(10) DEFAULT NULL,
  `paravalue` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attparam`
--

INSERT INTO `attparam` (`id`, `paraname`, `paratype`, `paravalue`) VALUES
(1, 'ruleID', 'rule_0', '0'),
(2, 'DeptID', 'rule_0', '0'),
(3, 'ApplyName', 'rule_0', 'All'),
(4, 'ruleName', 'rule_0', 'Default Attendance Rules'),
(5, 'MinsEarly', 'rule_0', '0'),
(6, 'MinsLate', 'rule_0', '0'),
(7, 'MinsNoBreakIn', 'rule_0', '60'),
(8, 'MinsNoBreakOut', 'rule_0', '60'),
(9, 'MinsNoIn', 'rule_0', '60'),
(10, 'MinsNoLeave', 'rule_0', '60'),
(11, 'MinsNotOverTime', 'rule_0', '60'),
(12, 'MinsWorkDay', 'rule_0', '480'),
(13, 'NoBreakIn', 'rule_0', '1012'),
(14, 'NoBreakOut', 'rule_0', '1012'),
(15, 'NoIn', 'rule_0', '1001'),
(16, 'NoLeave', 'rule_0', '1002'),
(17, 'OutOverTime', 'rule_0', '0'),
(18, 'TwoDay', 'rule_0', '0'),
(19, 'CheckInColor', 'rule_0', '16777151'),
(20, 'CheckOutColor', 'rule_0', '12910591'),
(21, 'DBVersion', '', '2002'),
(22, 'InstallDate', '', 'b888gontWRU9BaSjdVZNhTJuKd6xZ10VxONeMXdoJY_ROG6pcFYk'),
(23, 'SysDate', '', 'b888gontWRU9BaSjdVZNhTJuKd6xZ10VxONeMXdoJY_ROG6pcFYk'),
(24, 'ADMSDBVersion', '', '544;');

-- --------------------------------------------------------

--
-- Table structure for table `att_attcalclog`
--

CREATE TABLE `att_attcalclog` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `log_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_attcode`
--

CREATE TABLE `att_attcode` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `display_format` smallint(6) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `round_off` smallint(6) NOT NULL,
  `min_val` decimal(4,1) NOT NULL,
  `symbol_only` tinyint(1) NOT NULL,
  `order` smallint(6) NOT NULL,
  `color_setting` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_attcode`
--

INSERT INTO `att_attcode` (`id`, `code`, `alias`, `display_format`, `symbol`, `round_off`, `min_val`, `symbol_only`, `order`, `color_setting`) VALUES
(1, 'duration', 'Duration', 4, '', 1, '0.1', 0, 1, NULL),
(2, 'duty_duration', 'Duty Duration', 4, '', 1, '0.1', 0, 2, NULL),
(3, 'total_hrs', 'Total Hours', 4, '', 1, '0.1', 0, 3, NULL),
(4, 'worked_hrs', 'Worked Hours', 4, '', 1, '0.1', 0, 4, NULL),
(5, 'actual_worked', 'Actual Worked Hours', 4, '', 1, '0.1', 0, 5, NULL),
(6, 'break_duration', 'Break Duration', 4, '', 1, '0.1', 0, 6, NULL),
(7, 'break_total_hrs', 'Break Total Hours', 4, '', 1, '0.1', 0, 7, NULL),
(8, 'break_hrs', 'Break Hours', 4, '', 1, '0.1', 0, 8, NULL),
(9, 'actual_break', 'Actual Break Hours', 4, '', 1, '0.1', 0, 9, NULL),
(10, 'approval_hrs', 'Approval Hours', 4, '', 1, '0.1', 0, 10, NULL),
(11, 'early_in', 'Early In', 4, '', 1, '0.1', 0, 11, NULL),
(12, 'late_out', 'Late Out', 4, '', 1, '0.1', 0, 12, NULL),
(13, 'unschedule', 'Unscheduled', 4, '', 1, '0.1', 0, 13, NULL),
(14, 'remaining', 'Remaining', 4, '', 1, '0.1', 0, 14, NULL),
(15, 'total_ot', 'Total OT', 4, '', 1, '0.1', 0, 15, NULL),
(16, 'rule_total_ot', 'Rule Total OT', 4, '', 1, '0.1', 0, 16, NULL),
(17, 'total_leave', 'Total Leaves', 2, '', 1, '0.1', 0, 17, NULL),
(18, 'day_off', 'Day Off', 0, 'Off', 0, '0.1', 1, 18, NULL),
(19, 'weekend', 'Weekend', 0, 'W', 0, '0.1', 1, 19, NULL),
(20, 'holiday', 'Holiday', 0, 'H', 0, '0.1', 1, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `att_attemployee`
--

CREATE TABLE `att_attemployee` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `enable_attendance` tinyint(1) NOT NULL,
  `enable_schedule` tinyint(1) NOT NULL,
  `enable_overtime` tinyint(1) NOT NULL,
  `enable_holiday` tinyint(1) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `enable_compensatory` tinyint(1) NOT NULL,
  `ip_address` char(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_attemployee`
--

INSERT INTO `att_attemployee` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `enable_attendance`, `enable_schedule`, `enable_overtime`, `enable_holiday`, `emp_id`, `group_id`, `enable_compensatory`, `ip_address`) VALUES
(1, '2024-03-13 08:06:29.809726', NULL, '2024-03-13 08:06:29.809726', NULL, 0, 1, 1, 1, 1, 1, NULL, 0, NULL),
(2, '2024-03-13 08:06:29.990111', NULL, '2024-03-13 08:06:29.990111', NULL, 0, 1, 1, 1, 1, 2, NULL, 0, NULL),
(3, '2024-03-13 08:06:30.157806', NULL, '2024-03-13 08:06:30.157806', NULL, 0, 1, 1, 1, 1, 3, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `att_attgroup`
--

CREATE TABLE `att_attgroup` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_attgroup`
--

INSERT INTO `att_attgroup` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `code`, `name`, `company_id`) VALUES
(1, '2024-03-06 14:44:01.008618', NULL, '2024-03-06 14:44:01.008618', NULL, 0, '1', 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `att_attpolicy`
--

CREATE TABLE `att_attpolicy` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `use_ot` smallint(6) NOT NULL,
  `weekend1` smallint(6) NOT NULL,
  `weekend2` smallint(6) NOT NULL,
  `start_of_week` smallint(6) NOT NULL,
  `max_hrs` decimal(4,1) NOT NULL,
  `day_change` time(6) NOT NULL,
  `paring_rule` smallint(6) NOT NULL,
  `punch_period` smallint(6) NOT NULL,
  `daily_ot` tinyint(1) NOT NULL,
  `daily_ot_rule` char(32) DEFAULT NULL,
  `weekly_ot` tinyint(1) NOT NULL,
  `weekly_ot_rule` char(32) DEFAULT NULL,
  `weekend_ot` tinyint(1) NOT NULL,
  `weekend_ot_rule` char(32) DEFAULT NULL,
  `holiday_ot` tinyint(1) NOT NULL,
  `holiday_ot_rule` char(32) DEFAULT NULL,
  `late_in2absence` int(11) NOT NULL,
  `early_out2absence` int(11) NOT NULL,
  `miss_in` smallint(6) NOT NULL,
  `late_in_hrs` int(11) NOT NULL,
  `miss_out` smallint(6) NOT NULL,
  `early_out_hrs` int(11) NOT NULL,
  `require_capture` tinyint(1) NOT NULL,
  `require_work_code` tinyint(1) NOT NULL,
  `require_punch_state` tinyint(1) NOT NULL,
  `email_send_time` time(6) NOT NULL,
  `global_frequency` smallint(6) NOT NULL,
  `global_send_day` smallint(6) NOT NULL,
  `max_absent` smallint(6) NOT NULL,
  `max_early_out` smallint(6) NOT NULL,
  `max_late_in` smallint(6) NOT NULL,
  `sending_day` smallint(6) NOT NULL,
  `weekend1_color_setting` varchar(30) DEFAULT NULL,
  `weekend2_color_setting` varchar(30) DEFAULT NULL,
  `ot_pay_code_id` int(11) DEFAULT NULL,
  `overtime_policy` smallint(6) NOT NULL,
  `enable_compensatory` tinyint(1) NOT NULL,
  `bot_uid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_attpolicy`
--

INSERT INTO `att_attpolicy` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `use_ot`, `weekend1`, `weekend2`, `start_of_week`, `max_hrs`, `day_change`, `paring_rule`, `punch_period`, `daily_ot`, `daily_ot_rule`, `weekly_ot`, `weekly_ot_rule`, `weekend_ot`, `weekend_ot_rule`, `holiday_ot`, `holiday_ot_rule`, `late_in2absence`, `early_out2absence`, `miss_in`, `late_in_hrs`, `miss_out`, `early_out_hrs`, `require_capture`, `require_work_code`, `require_punch_state`, `email_send_time`, `global_frequency`, `global_send_day`, `max_absent`, `max_early_out`, `max_late_in`, `sending_day`, `weekend1_color_setting`, `weekend2_color_setting`, `ot_pay_code_id`, `overtime_policy`, `enable_compensatory`, `bot_uid`) VALUES
(1, '2024-03-06 14:44:01.021130', NULL, '2024-03-06 14:44:01.021130', NULL, 0, 1, 7, 7, 0, '12.0', '00:00:00.000000', 1, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 100, 100, 1, 60, 1, 60, 0, 0, 0, '00:00:00.000000', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, -1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `att_attreportsetting`
--

CREATE TABLE `att_attreportsetting` (
  `id` int(11) NOT NULL,
  `resign_emp` smallint(6) NOT NULL,
  `short_date` smallint(6) NOT NULL,
  `short_time` smallint(6) NOT NULL,
  `filter_by_hire_date` tinyint(1) NOT NULL,
  `auto_calculate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_attreportsetting`
--

INSERT INTO `att_attreportsetting` (`id`, `resign_emp`, `short_date`, `short_time`, `filter_by_hire_date`, `auto_calculate`) VALUES
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `att_attrule`
--

CREATE TABLE `att_attrule` (
  `param_name` varchar(20) NOT NULL,
  `param_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_attrule`
--

INSERT INTO `att_attrule` (`param_name`, `param_value`) VALUES
('global_att_rule', '{\"in_rule\": 1, \"out_rule\": 1, \"use_ot\": 1, \"punch_period\": 1, \"weekend\": [], \"mins_late_absent\": 100, \"mins_early_absent\": 100, \"miss_in\": 1, \"miss_in_mins\": 60, \"miss_out\": 1, \"miss_out_mins\": 60, \"leave_include_in\": 2, \"leave_include_out\": 2, \"training_include_in\": 2, \"training_include_out\": 2, \"check_in\": \"0\", \"check_out\": \"1\", \"break_out\": \"2\", \"break_in\": \"3\", \"overtime_in\": \"4\", \"overtime_out\": \"5\", \"enable_capture\": 0, \"enable_workcode\": 0, \"enable_funckey\": 0}');

-- --------------------------------------------------------

--
-- Table structure for table `att_attschedule`
--

CREATE TABLE `att_attschedule` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_attshift`
--

CREATE TABLE `att_attshift` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `cycle_unit` smallint(6) NOT NULL,
  `shift_cycle` int(11) NOT NULL,
  `work_weekend` tinyint(1) NOT NULL,
  `weekend_type` smallint(6) NOT NULL,
  `work_day_off` tinyint(1) NOT NULL,
  `day_off_type` smallint(6) NOT NULL,
  `auto_shift` smallint(6) NOT NULL,
  `enable_ot_rule` tinyint(1) NOT NULL,
  `frequency` smallint(6) NOT NULL,
  `ot_rule` char(32) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_breaktime`
--

CREATE TABLE `att_breaktime` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `period_start` time(6) NOT NULL,
  `duration` int(11) NOT NULL,
  `end_margin` int(11) NOT NULL,
  `func_key` smallint(6) NOT NULL,
  `available_interval_type` smallint(6) NOT NULL,
  `available_interval` int(11) NOT NULL,
  `multiple_punch` smallint(6) NOT NULL,
  `calc_type` smallint(6) NOT NULL,
  `minimum_duration` int(11) DEFAULT NULL,
  `early_in` smallint(6) NOT NULL,
  `late_in` smallint(6) NOT NULL,
  `profit_rule` tinyint(1) NOT NULL,
  `min_early_in` int(11) NOT NULL,
  `loss_rule` tinyint(1) NOT NULL,
  `min_late_in` int(11) NOT NULL,
  `loss_code_id` int(11) DEFAULT NULL,
  `profit_code_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_calculatelastdate`
--

CREATE TABLE `att_calculatelastdate` (
  `id` int(11) NOT NULL,
  `last_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_calculatetask`
--

CREATE TABLE `att_calculatetask` (
  `id` int(11) NOT NULL,
  `emp` int(11) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `event` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_changeschedule`
--

CREATE TABLE `att_changeschedule` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `att_date` date NOT NULL,
  `previous_timeinterval` varchar(100) DEFAULT NULL,
  `apply_time` datetime(6) NOT NULL,
  `apply_reason` varchar(200) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `timeinterval_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_departmentpolicy`
--

CREATE TABLE `att_departmentpolicy` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `use_ot` smallint(6) NOT NULL,
  `weekend1` smallint(6) NOT NULL,
  `weekend2` smallint(6) NOT NULL,
  `start_of_week` smallint(6) NOT NULL,
  `max_hrs` decimal(4,1) NOT NULL,
  `day_change` time(6) NOT NULL,
  `paring_rule` smallint(6) NOT NULL,
  `punch_period` smallint(6) NOT NULL,
  `daily_ot` tinyint(1) NOT NULL,
  `daily_ot_rule` char(32) DEFAULT NULL,
  `weekly_ot` tinyint(1) NOT NULL,
  `weekly_ot_rule` char(32) DEFAULT NULL,
  `weekend_ot` tinyint(1) NOT NULL,
  `weekend_ot_rule` char(32) DEFAULT NULL,
  `holiday_ot` tinyint(1) NOT NULL,
  `holiday_ot_rule` char(32) DEFAULT NULL,
  `late_in2absence` int(11) NOT NULL,
  `early_out2absence` int(11) NOT NULL,
  `miss_in` smallint(6) NOT NULL,
  `late_in_hrs` int(11) NOT NULL,
  `miss_out` smallint(6) NOT NULL,
  `early_out_hrs` int(11) NOT NULL,
  `require_capture` tinyint(1) NOT NULL,
  `require_work_code` tinyint(1) NOT NULL,
  `require_punch_state` tinyint(1) NOT NULL,
  `department_id` int(11) NOT NULL,
  `dept_frequency` smallint(6) NOT NULL,
  `dept_send_day` smallint(6) NOT NULL,
  `email_send_time` time(6) NOT NULL,
  `max_absent` smallint(6) NOT NULL,
  `max_early_out` smallint(6) NOT NULL,
  `max_late_in` smallint(6) NOT NULL,
  `sending_day` smallint(6) NOT NULL,
  `weekend1_color_setting` varchar(30) DEFAULT NULL,
  `weekend2_color_setting` varchar(30) DEFAULT NULL,
  `ot_pay_code_id` int(11) DEFAULT NULL,
  `overtime_policy` smallint(6) NOT NULL,
  `enable_compensatory` tinyint(1) NOT NULL,
  `bot_uid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_departmentschedule`
--

CREATE TABLE `att_departmentschedule` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `department_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_deptattrule`
--

CREATE TABLE `att_deptattrule` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `rule` longtext DEFAULT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_grouppolicy`
--

CREATE TABLE `att_grouppolicy` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `use_ot` smallint(6) NOT NULL,
  `weekend1` smallint(6) NOT NULL,
  `weekend2` smallint(6) NOT NULL,
  `start_of_week` smallint(6) NOT NULL,
  `max_hrs` decimal(4,1) NOT NULL,
  `day_change` time(6) NOT NULL,
  `paring_rule` smallint(6) NOT NULL,
  `punch_period` smallint(6) NOT NULL,
  `daily_ot` tinyint(1) NOT NULL,
  `daily_ot_rule` char(32) DEFAULT NULL,
  `weekly_ot` tinyint(1) NOT NULL,
  `weekly_ot_rule` char(32) DEFAULT NULL,
  `weekend_ot` tinyint(1) NOT NULL,
  `weekend_ot_rule` char(32) DEFAULT NULL,
  `holiday_ot` tinyint(1) NOT NULL,
  `holiday_ot_rule` char(32) DEFAULT NULL,
  `late_in2absence` int(11) NOT NULL,
  `early_out2absence` int(11) NOT NULL,
  `miss_in` smallint(6) NOT NULL,
  `late_in_hrs` int(11) NOT NULL,
  `miss_out` smallint(6) NOT NULL,
  `early_out_hrs` int(11) NOT NULL,
  `require_capture` tinyint(1) NOT NULL,
  `require_work_code` tinyint(1) NOT NULL,
  `require_punch_state` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `email_send_time` time(6) NOT NULL,
  `group_frequency` smallint(6) NOT NULL,
  `group_send_day` smallint(6) NOT NULL,
  `max_absent` smallint(6) NOT NULL,
  `max_early_out` smallint(6) NOT NULL,
  `max_late_in` smallint(6) NOT NULL,
  `sending_day` smallint(6) NOT NULL,
  `weekend1_color_setting` varchar(30) DEFAULT NULL,
  `weekend2_color_setting` varchar(30) DEFAULT NULL,
  `ot_pay_code_id` int(11) DEFAULT NULL,
  `overtime_policy` smallint(6) NOT NULL,
  `enable_compensatory` tinyint(1) NOT NULL,
  `bot_uid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_groupschedule`
--

CREATE TABLE `att_groupschedule` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `shift_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_holiday`
--

CREATE TABLE `att_holiday` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `duration_day` smallint(6) NOT NULL,
  `enable_ot_rule` tinyint(1) NOT NULL,
  `ot_rule` char(32) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `att_group_id` int(11) DEFAULT NULL,
  `color_setting` varchar(30) DEFAULT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_leave`
--

CREATE TABLE `att_leave` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `apply_reason` longtext DEFAULT NULL,
  `apply_time` datetime(6) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `pay_code_id` int(11) DEFAULT NULL,
  `leave_day` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_leavegroup`
--

CREATE TABLE `att_leavegroup` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_leavegroupdetail`
--

CREATE TABLE `att_leavegroupdetail` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `leave_type` int(11) NOT NULL,
  `allow_leave_day` int(11) NOT NULL,
  `min_leave_day` double NOT NULL,
  `deduct_holiday_day` smallint(6) NOT NULL,
  `leave_entitlement` int(11) DEFAULT NULL,
  `leave_interval` int(11) NOT NULL,
  `leave_distribution_time` int(11) DEFAULT NULL,
  `start_day` varchar(5) NOT NULL,
  `set_hire_day` smallint(6) NOT NULL,
  `allow_exceed_limit` smallint(6) NOT NULL,
  `allow_balance` smallint(6) NOT NULL,
  `max_balance` int(11) DEFAULT NULL,
  `entitlement_detail` varchar(999) DEFAULT NULL,
  `leave_group_id` int(11) NOT NULL,
  `pay_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_leaveyearbalance`
--

CREATE TABLE `att_leaveyearbalance` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `leave_type` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `entitlement_days` smallint(6) DEFAULT NULL,
  `leave_day` double DEFAULT NULL,
  `pre_balance` smallint(6) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `pay_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_manuallog`
--

CREATE TABLE `att_manuallog` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `punch_time` datetime(6) NOT NULL,
  `punch_state` varchar(5) NOT NULL,
  `work_code_id` int(11) DEFAULT NULL,
  `apply_reason` longtext DEFAULT NULL,
  `apply_time` datetime(6) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_overtime`
--

CREATE TABLE `att_overtime` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `overtime_type` smallint(6) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `apply_reason` longtext DEFAULT NULL,
  `apply_time` datetime(6) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `pay_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_overtimepolicy`
--

CREATE TABLE `att_overtimepolicy` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `mode` smallint(6) NOT NULL,
  `hrs_from` decimal(4,1) NOT NULL,
  `hrs_to` decimal(4,1) NOT NULL,
  `master` char(32) NOT NULL,
  `overnight_pay_code_id` int(11) DEFAULT NULL,
  `pay_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_paycode`
--

CREATE TABLE `att_paycode` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code_type` smallint(6) NOT NULL,
  `tag` smallint(6) DEFAULT NULL,
  `fixed_code` smallint(6) DEFAULT NULL,
  `is_work` tinyint(1) NOT NULL,
  `fixed_hours` decimal(8,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `is_benefit` tinyint(1) NOT NULL,
  `round_off` smallint(6) NOT NULL,
  `min_val` decimal(4,1) NOT NULL,
  `display_format` smallint(6) NOT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `display_order` smallint(6) NOT NULL,
  `desc` longtext DEFAULT NULL,
  `is_display` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `color_setting` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_paycode`
--

INSERT INTO `att_paycode` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `code`, `name`, `code_type`, `tag`, `fixed_code`, `is_work`, `fixed_hours`, `is_paid`, `is_benefit`, `round_off`, `min_val`, `display_format`, `symbol`, `display_order`, `desc`, `is_display`, `is_default`, `color_setting`) VALUES
(1, '2024-03-06 14:44:00.925594', NULL, '2024-03-06 14:44:00.925594', NULL, 0, 'REG', 'Regular', 1, NULL, 1, 1, '8.00', 1, 0, 1, '0.1', 2, 'P', 1, NULL, 1, 1, NULL),
(2, '2024-03-06 14:44:00.929144', NULL, '2024-03-06 14:44:00.929144', NULL, 0, 'L', 'Late In', 4, NULL, 2, 1, '8.00', 1, 0, 1, '1.0', 1, 'L', 2, NULL, 1, 1, NULL),
(3, '2024-03-06 14:44:00.931145', NULL, '2024-03-06 14:44:00.931145', NULL, 0, 'E', 'Early Out', 4, NULL, 3, 1, '8.00', 1, 0, 1, '1.0', 1, 'E', 3, NULL, 1, 1, NULL),
(4, '2024-03-06 14:44:00.934153', NULL, '2024-03-06 14:44:00.934153', NULL, 0, 'A', 'Absence', 4, NULL, 4, 1, '8.00', 1, 0, 1, '0.1', 2, 'A', 4, NULL, 1, 1, NULL),
(5, '2024-03-06 14:44:00.936153', NULL, '2024-03-06 14:44:00.936153', NULL, 0, 'NOT', 'Normal OT', 2, NULL, NULL, 1, '8.00', 1, 0, 1, '0.1', 2, '', 5, NULL, 1, 1, NULL),
(6, '2024-03-06 14:44:00.938144', NULL, '2024-03-06 14:44:00.938144', NULL, 0, 'WOT', 'Weekend OT', 2, NULL, NULL, 1, '8.00', 1, 0, 1, '0.1', 2, '', 6, NULL, 1, 1, NULL),
(7, '2024-03-06 14:44:00.939144', NULL, '2024-03-06 14:44:00.939144', NULL, 0, 'HOT', 'Holiday OT', 2, NULL, NULL, 1, '8.00', 1, 0, 1, '0.1', 2, '', 7, NULL, 1, 1, NULL),
(8, '2024-03-06 14:44:00.941143', NULL, '2024-03-06 14:44:00.941143', NULL, 0, 'OT1', 'OT1', 2, 6, NULL, 1, '8.00', 1, 0, 1, '0.1', 2, '', 8, NULL, 1, 1, NULL),
(9, '2024-03-06 14:44:00.942159', NULL, '2024-03-06 14:44:00.942159', NULL, 0, 'OT2', 'OT2', 2, 7, NULL, 1, '8.00', 1, 0, 1, '0.1', 2, '', 9, NULL, 1, 1, NULL),
(10, '2024-03-06 14:44:00.944143', NULL, '2024-03-06 14:44:00.944143', NULL, 0, 'OT3', 'OT3', 2, 8, NULL, 1, '8.00', 1, 0, 1, '0.1', 2, '', 10, NULL, 1, 1, NULL),
(11, '2024-03-06 14:44:00.945562', NULL, '2024-03-06 14:44:00.945562', NULL, 0, 'AL', 'Annual Leave', 3, NULL, NULL, 0, '8.00', 1, 1, 1, '0.1', 2, '', 11, NULL, 1, 1, NULL),
(12, '2024-03-06 14:44:00.946673', NULL, '2024-03-06 14:44:00.946673', NULL, 0, 'SL', 'Sick Leave', 3, NULL, NULL, 0, '8.00', 0, 1, 1, '0.1', 2, '', 12, NULL, 1, 1, NULL),
(13, '2024-03-06 14:44:00.948692', NULL, '2024-03-06 14:44:00.948692', NULL, 0, 'CL', 'Casual Leave', 3, NULL, NULL, 0, '8.00', 0, 1, 1, '0.1', 2, '', 13, NULL, 1, 1, NULL),
(14, '2024-03-06 14:44:00.949685', NULL, '2024-03-06 14:44:00.949685', NULL, 0, 'ML', 'Maternity Leave', 3, NULL, NULL, 0, '8.00', 0, 1, 1, '0.1', 2, '', 14, NULL, 1, 1, NULL),
(15, '2024-03-06 14:44:00.951729', NULL, '2024-03-06 14:44:00.951729', NULL, 0, 'COL', 'Compassionate Leave', 3, NULL, NULL, 0, '8.00', 0, 0, 1, '0.1', 2, '', 15, NULL, 1, 1, NULL),
(16, '2024-03-06 14:44:00.952762', NULL, '2024-03-06 14:44:00.952762', NULL, 0, 'BT', 'Business Trip', 3, NULL, NULL, 0, '8.00', 0, 0, 1, '0.1', 2, '', 16, NULL, 1, 1, NULL),
(17, '2024-03-06 14:44:00.954750', NULL, '2024-03-06 14:44:00.954750', NULL, 0, 'CP', 'Compensatory', 1, NULL, 5, 0, '8.00', 0, 0, 1, '0.1', 2, '', 17, NULL, 1, 1, NULL),
(18, '2024-03-06 14:44:00.955753', NULL, '2024-03-06 14:44:00.955753', NULL, 0, 'CPL', 'Compensatory Leave', 3, NULL, 6, 0, '8.00', 0, 0, 1, '0.1', 2, '', 18, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadattcode`
--

CREATE TABLE `att_payloadattcode` (
  `id` char(32) NOT NULL,
  `att_date` date NOT NULL,
  `week` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `att_code_alias` varchar(50) NOT NULL,
  `att_code_symbol` varchar(20) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `workday` decimal(4,1) NOT NULL,
  `hours` decimal(6,1) NOT NULL,
  `minutes` decimal(8,1) NOT NULL,
  `is_weekly` tinyint(1) NOT NULL,
  `att_code_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `time_card_id` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_payloadattcode`
--

INSERT INTO `att_payloadattcode` (`id`, `att_date`, `week`, `weekday`, `att_code_alias`, `att_code_symbol`, `duration`, `workday`, `hours`, `minutes`, `is_weekly`, `att_code_id`, `emp_id`, `shift_id`, `time_card_id`) VALUES
('4f79e3b1e0f111ee81ceeeda4a99435d', '2024-03-13', 11, 2, 'Duration', '', 43200, '1.0', '12.0', '720.0', 0, 1, 1, NULL, 'cfc6a37e78ff4ac3b85a8e881214d9f7'),
('508a3b91e0f111eebc1feeda4a99435d', '2024-03-13', 11, 2, 'Duration', '', 43200, '1.0', '12.0', '720.0', 0, 1, 2, NULL, '034c8c252ac34337a65a6b865433e4c2');

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadbase`
--

CREATE TABLE `att_payloadbase` (
  `uuid` varchar(36) NOT NULL,
  `att_date` date DEFAULT NULL,
  `weekday` smallint(6) DEFAULT NULL,
  `check_in` datetime(6) DEFAULT NULL,
  `check_out` datetime(6) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duty_duration` int(11) DEFAULT NULL,
  `work_day` double NOT NULL,
  `clock_in` datetime(6) DEFAULT NULL,
  `clock_out` datetime(6) DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL,
  `duty_worked` int(11) DEFAULT NULL,
  `actual_worked` int(11) DEFAULT NULL,
  `unscheduled` int(11) DEFAULT NULL,
  `remaining` int(11) DEFAULT NULL,
  `total_worked` int(11) DEFAULT NULL,
  `late` int(11) DEFAULT NULL,
  `early_leave` int(11) DEFAULT NULL,
  `short` int(11) DEFAULT NULL,
  `absent` int(11) DEFAULT NULL,
  `leave` int(11) DEFAULT NULL,
  `exception` varchar(50) DEFAULT NULL,
  `day_off` smallint(6) NOT NULL,
  `break_time_id` varchar(36) DEFAULT NULL,
  `emp_id` int(11) NOT NULL,
  `overtime_id` varchar(36) DEFAULT NULL,
  `timetable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadbreak`
--

CREATE TABLE `att_payloadbreak` (
  `uuid` varchar(36) NOT NULL,
  `break_out` datetime(6) DEFAULT NULL,
  `break_in` datetime(6) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `taken` int(11) DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `early_in` int(11) DEFAULT NULL,
  `late_in` int(11) DEFAULT NULL,
  `late` int(11) DEFAULT NULL,
  `early_leave` int(11) DEFAULT NULL,
  `absent` int(11) DEFAULT NULL,
  `work_time` int(11) DEFAULT NULL,
  `overtime` int(11) DEFAULT NULL,
  `weekend_ot` int(11) DEFAULT NULL,
  `holiday_ot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadeffectpunch`
--

CREATE TABLE `att_payloadeffectpunch` (
  `id` char(32) NOT NULL,
  `att_date` date NOT NULL,
  `punch_datetime` datetime(6) NOT NULL,
  `punch_date` date NOT NULL,
  `punch_time` time(6) NOT NULL,
  `week` smallint(6) NOT NULL,
  `weekday` smallint(6) NOT NULL,
  `work_code` varchar(20) NOT NULL,
  `punch_state` varchar(5) NOT NULL,
  `adjust_state` varchar(5) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `time_card_id` char(32) DEFAULT NULL,
  `trans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadexception`
--

CREATE TABLE `att_payloadexception` (
  `uuid` varchar(36) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `days` double DEFAULT NULL,
  `data_type` smallint(6) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `skd_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadmulpunchset`
--

CREATE TABLE `att_payloadmulpunchset` (
  `id` int(11) NOT NULL,
  `att_date` date NOT NULL,
  `weekday` smallint(6) DEFAULT NULL,
  `data_index` smallint(6) NOT NULL,
  `clock_in` datetime(6) DEFAULT NULL,
  `in_id` int(11) DEFAULT NULL,
  `clock_out` datetime(6) DEFAULT NULL,
  `out_id` int(11) DEFAULT NULL,
  `total_time` int(11) DEFAULT NULL,
  `worked_time` int(11) DEFAULT NULL,
  `data_type` smallint(6) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `timetable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadovertime`
--

CREATE TABLE `att_payloadovertime` (
  `uuid` varchar(36) NOT NULL,
  `normal_wt` int(11) DEFAULT NULL,
  `normal_ot` int(11) DEFAULT NULL,
  `weekend_ot` int(11) DEFAULT NULL,
  `holiday_ot` int(11) DEFAULT NULL,
  `ot_lv1` int(11) DEFAULT NULL,
  `ot_lv2` int(11) DEFAULT NULL,
  `ot_lv3` int(11) DEFAULT NULL,
  `total_ot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadparing`
--

CREATE TABLE `att_payloadparing` (
  `id` char(32) NOT NULL,
  `stamp` bigint(20) NOT NULL,
  `att_date` date NOT NULL,
  `week` smallint(6) NOT NULL,
  `weekday` smallint(6) NOT NULL,
  `data_type` smallint(6) NOT NULL,
  `clock_in` datetime(6) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `in_time` time(6) DEFAULT NULL,
  `clock_out` datetime(6) DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` time(6) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `worked_duration` int(11) NOT NULL,
  `data_index` int(11) NOT NULL,
  `workday` decimal(4,1) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `in_trans_id` int(11) DEFAULT NULL,
  `out_trans_id` int(11) DEFAULT NULL,
  `pay_code_id` int(11) DEFAULT NULL,
  `time_card_id` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadpaycode`
--

CREATE TABLE `att_payloadpaycode` (
  `id` char(32) NOT NULL,
  `att_date` date NOT NULL,
  `week` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `pay_code_alias` varchar(50) NOT NULL,
  `pay_code_symbol` varchar(20) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `workday` decimal(4,1) NOT NULL,
  `hours` decimal(6,1) NOT NULL,
  `minutes` decimal(8,1) NOT NULL,
  `is_weekly` tinyint(1) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `pay_code_id` int(11) NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `time_card_id` char(32) DEFAULT NULL,
  `is_exception` smallint(6) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadpunch`
--

CREATE TABLE `att_payloadpunch` (
  `uuid` varchar(36) NOT NULL,
  `att_date` date DEFAULT NULL,
  `correct_state` varchar(3) DEFAULT NULL,
  `emp_id` int(11) NOT NULL,
  `orig_id` int(11) DEFAULT NULL,
  `skd_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_payloadtimecard`
--

CREATE TABLE `att_payloadtimecard` (
  `id` char(32) NOT NULL,
  `att_date` date NOT NULL,
  `week` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `date_type` smallint(6) NOT NULL,
  `time_table_alias` varchar(50) NOT NULL,
  `check_in` datetime(6) NOT NULL,
  `check_out` datetime(6) NOT NULL,
  `work_day` decimal(4,1) NOT NULL,
  `clock_in` datetime(6) DEFAULT NULL,
  `clock_out` datetime(6) DEFAULT NULL,
  `break_out` datetime(6) DEFAULT NULL,
  `break_in` datetime(6) DEFAULT NULL,
  `lock_down` tinyint(1) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `time_table_id` int(11) DEFAULT NULL,
  `present` smallint(6) NOT NULL,
  `full_attendance` smallint(6) NOT NULL,
  `payload` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `att_payloadtimecard`
--

INSERT INTO `att_payloadtimecard` (`id`, `att_date`, `week`, `weekday`, `date_type`, `time_table_alias`, `check_in`, `check_out`, `work_day`, `clock_in`, `clock_out`, `break_out`, `break_in`, `lock_down`, `emp_id`, `time_table_id`, `present`, `full_attendance`, `payload`) VALUES
('034c8c252ac34337a65a6b865433e4c2', '2024-03-13', 11, 2, 1, '', '2024-03-13 00:00:00.000000', '2024-03-14 00:00:00.000000', '1.0', NULL, NULL, NULL, NULL, 0, 2, NULL, 0, 1, '{\"duration\": {\"duration\": 43200.0, \"workday\": 1.0, \"hours\": 12.0, \"minutes\": 720.0}}'),
('cfc6a37e78ff4ac3b85a8e881214d9f7', '2024-03-13', 11, 2, 1, '', '2024-03-13 00:00:00.000000', '2024-03-14 00:00:00.000000', '1.0', NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 1, '{\"duration\": {\"duration\": 43200.0, \"workday\": 1.0, \"hours\": 12.0, \"minutes\": 720.0}}');

-- --------------------------------------------------------

--
-- Table structure for table `att_reportparam`
--

CREATE TABLE `att_reportparam` (
  `param_name` varchar(20) NOT NULL,
  `param_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_reporttemplate`
--

CREATE TABLE `att_reporttemplate` (
  `id` int(11) NOT NULL,
  `report` varchar(50) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `template_value` longtext NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `is_auto_export` tinyint(1) NOT NULL,
  `builder_id` int(11) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `fixed_date_period` tinyint(1) NOT NULL,
  `language` varchar(10) NOT NULL,
  `status` smallint(6) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_shiftdetail`
--

CREATE TABLE `att_shiftdetail` (
  `id` int(11) NOT NULL,
  `in_time` time(6) NOT NULL,
  `out_time` time(6) NOT NULL,
  `day_index` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `time_interval_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_temporaryschedule`
--

CREATE TABLE `att_temporaryschedule` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `att_date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `time_interval_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_tempschedule`
--

CREATE TABLE `att_tempschedule` (
  `id` int(11) NOT NULL,
  `att_date` date DEFAULT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `rule_flag` smallint(6) NOT NULL,
  `work_type` smallint(6) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `time_interval_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_timeinterval`
--

CREATE TABLE `att_timeinterval` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `use_mode` smallint(6) NOT NULL,
  `in_time` time(6) NOT NULL,
  `in_ahead_margin` int(11) NOT NULL,
  `in_above_margin` int(11) NOT NULL,
  `out_ahead_margin` int(11) NOT NULL,
  `out_above_margin` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `in_required` smallint(6) NOT NULL,
  `out_required` smallint(6) NOT NULL,
  `allow_late` int(11) NOT NULL,
  `allow_leave_early` int(11) NOT NULL,
  `work_day` double NOT NULL,
  `early_in` smallint(6) NOT NULL,
  `min_early_in` int(11) NOT NULL,
  `late_out` smallint(6) NOT NULL,
  `min_late_out` int(11) NOT NULL,
  `overtime_lv` smallint(6) NOT NULL,
  `overtime_lv1` smallint(6) NOT NULL,
  `overtime_lv2` smallint(6) NOT NULL,
  `overtime_lv3` smallint(6) NOT NULL,
  `multiple_punch` smallint(6) NOT NULL,
  `available_interval_type` smallint(6) NOT NULL,
  `available_interval` int(11) NOT NULL,
  `work_time_duration` int(11) NOT NULL,
  `func_key` smallint(6) NOT NULL,
  `work_type` smallint(6) NOT NULL,
  `day_change` time(6) NOT NULL,
  `enable_early_in` tinyint(1) NOT NULL,
  `enable_late_out` tinyint(1) NOT NULL,
  `enable_overtime` tinyint(1) NOT NULL,
  `ot_rule` char(32) DEFAULT NULL,
  `color_setting` varchar(30) DEFAULT NULL,
  `enable_max_ot_limit` tinyint(1) NOT NULL,
  `max_ot_limit` int(11) NOT NULL,
  `count_early_in_interval` tinyint(1) NOT NULL,
  `count_late_out_interval` tinyint(1) NOT NULL,
  `ot_pay_code_id` int(11) DEFAULT NULL,
  `overtime_policy` smallint(6) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_timeinterval_break_time`
--

CREATE TABLE `att_timeinterval_break_time` (
  `id` int(11) NOT NULL,
  `timeinterval_id` int(11) NOT NULL,
  `breaktime_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_training`
--

CREATE TABLE `att_training` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `apply_time` datetime(6) NOT NULL,
  `apply_reason` longtext DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `pay_code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `att_webpunch`
--

CREATE TABLE `att_webpunch` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `punch_time` datetime(6) NOT NULL,
  `punch_state` varchar(5) NOT NULL,
  `work_code` varchar(20) DEFAULT NULL,
  `apply_reason` longtext DEFAULT NULL,
  `apply_time` datetime(6) NOT NULL,
  `verify_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('3002f0f76769643242789dfe78ec7267c2d7ad63', '2024-03-06 14:56:52.167913', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 11, 'add_group'),
(6, 'Can change group', 11, 'change_group'),
(8, 'Can view group', 11, 'view_group'),
(9, 'Can GroupDelete group', 11, 'group_delete_group'),
(10, 'Can view email_template_setting', 12, 'view_email_template_setting'),
(11, 'Can view ad_server_setting', 12, 'view_ad_server_setting'),
(12, 'Can view facebook_alert_setting', 12, 'view_facebook_alert_setting'),
(13, 'Can view db_migrate', 12, 'view_db_migrate'),
(14, 'Can view safe_setting', 12, 'view_safe_setting'),
(15, 'Can view twilio_setting', 12, 'view_twilio_setting'),
(16, 'Can view system_setting', 12, 'view_system_setting'),
(17, 'Can view device_config', 13, 'view_device_config'),
(18, 'Can view psnl_config_setting', 14, 'view_psnl_config_setting'),
(19, 'Can view employeeschedule_report', 15, 'view_employeeschedule_report'),
(20, 'Can view transaction_report', 16, 'view_transaction_report'),
(21, 'Can view time_card_report', 16, 'view_time_card_report'),
(22, 'Can view first_last_report', 16, 'view_first_last_report'),
(23, 'Can view first_in_last_out_report', 16, 'view_first_in_last_out_report'),
(24, 'Can view total_time_card_v2', 16, 'view_total_time_card_v2'),
(25, 'Can view daily_activity', 16, 'view_daily_activity'),
(26, 'Can view daily_overtime', 16, 'view_daily_overtime'),
(27, 'Can view daily_leave', 16, 'view_daily_leave'),
(28, 'Can view daily_late_in', 16, 'view_daily_late_in'),
(29, 'Can view daily_early_out', 16, 'view_daily_early_out'),
(30, 'Can view daily_absent', 16, 'view_daily_absent'),
(31, 'Can view daily_exception', 16, 'view_daily_exception'),
(32, 'Can view scheduled_punch_report', 16, 'view_scheduled_punch_report'),
(33, 'Can view punch_paring', 16, 'view_punch_paring'),
(34, 'Can view daily_multiple_punch_paring', 16, 'view_daily_multiple_punch_paring'),
(35, 'Can view daily_multiple_break_paring', 16, 'view_daily_multiple_break_paring'),
(36, 'Can view weekly_worked_hours', 16, 'view_weekly_worked_hours'),
(37, 'Can view weekly_overtime', 16, 'view_weekly_overtime'),
(38, 'Can view monthly_status', 16, 'view_monthly_status'),
(39, 'Can view monthly_work_hours', 16, 'view_monthly_work_hours'),
(40, 'Can view monthly_punch', 16, 'view_monthly_punch'),
(41, 'Can view monthly_overtime', 16, 'view_monthly_overtime'),
(42, 'Can view monthly_absence', 16, 'view_monthly_absence'),
(43, 'Can view emp_summary_report', 16, 'view_emp_summary_report'),
(44, 'Can view employee_overtime', 16, 'view_employee_overtime'),
(45, 'Can view employee_leave', 16, 'view_employee_leave'),
(46, 'Can view dept_summary_report', 16, 'view_dept_summary_report'),
(47, 'Can view department_overtime', 16, 'view_department_overtime'),
(48, 'Can view group_summary_report', 16, 'view_group_summary_report'),
(49, 'Can view group_overtime', 16, 'view_group_overtime'),
(50, 'Can view sage_vip', 16, 'view_sage_vip'),
(51, 'Can view leave_balance_summary_report', 16, 'view_leave_balance_summary_report'),
(52, 'Can view staff_transaction_report', 17, 'view_staff_transaction_report'),
(53, 'Can view staff_scheduledlog_report', 17, 'view_staff_scheduledlog_report'),
(54, 'Can view staff_attdetail_report', 17, 'view_staff_attdetail_report'),
(55, 'Can view staff_summary_report', 17, 'view_staff_summary_report'),
(56, 'Can view staff_multipletransaction_report', 17, 'view_staff_multipletransaction_report'),
(57, 'Can view staff_breaktime_report', 17, 'view_staff_breaktime_report'),
(58, 'Can view staff_timecard_report', 17, 'view_staff_timecard_report'),
(59, 'Can view att_workbench', 18, 'view_att_workbench'),
(60, 'Can view att_rule_page', 19, 'view_att_rule_page'),
(61, 'Can view report_setting_page', 20, 'view_report_setting_page'),
(62, 'Can view calculation_view', 20, 'view_calculation_view'),
(63, 'Can view view_by_personnel', 15, 'view_view_by_personnel'),
(64, 'Can view payrollincrease_report', 21, 'view_payrollincrease_report'),
(65, 'Can view payrolldeduction_report', 21, 'view_payrolldeduction_report'),
(66, 'Can view payrolldetail_report', 21, 'view_payrolldetail_report'),
(67, 'Can view payrollcalcparam_report', 21, 'view_payrollcalcparam_report'),
(68, 'Can view salarystructure_report', 21, 'view_salarystructure_report'),
(69, 'Can view staff_salarystructure_report', 22, 'view_staff_salarystructure_report'),
(70, 'Can view staff_payrollincrease_report', 22, 'view_staff_payrollincrease_report'),
(71, 'Can view staff_payrolldeduction_report', 22, 'view_staff_payrolldeduction_report'),
(72, 'Can view staff_payrolldetail_report', 22, 'view_staff_payrolldetail_report'),
(73, 'Can view staff_payrollcalcparam_report', 22, 'view_staff_payrollcalcparam_report'),
(74, 'Can view socialsecuritydeduction_report', 21, 'view_socialsecuritydeduction_report'),
(75, 'Can view taxdeduction_report', 21, 'view_taxdeduction_report'),
(76, 'Can view payroll_reportcalculator', 21, 'view_payroll_reportcalculator'),
(77, 'Can view payroll_company_stamp_setting', 23, 'view_payroll_company_stamp_setting'),
(78, 'Can view payroll_social_security_deduction_setting', 23, 'view_payroll_social_security_deduction_setting'),
(79, 'Can view payroll_tax_deduction_setting', 23, 'view_payroll_tax_deduction_setting'),
(80, 'Can view payroll_slip_date_setting', 23, 'view_payroll_slip_date_setting'),
(81, 'Can view meeting_attendance_report', 24, 'view_meeting_attendance_report'),
(82, 'Can view meeting_room_scheduled', 24, 'view_meeting_room_scheduled'),
(83, 'Can view ep_dashboard', 25, 'view_ep_dashboard'),
(84, 'Can view daily_detail_report', 26, 'view_daily_detail_report'),
(85, 'Can view department_summary_report', 26, 'view_department_summary_report'),
(86, 'Can view unusual_employees_report', 26, 'view_unusual_employees_report'),
(87, 'Can view ep_real_time_monitoring', 25, 'view_ep_real_time_monitoring'),
(88, 'Can add content type', 163, 'add_contenttype'),
(89, 'Can change content type', 163, 'change_contenttype'),
(90, 'Can delete content type', 163, 'delete_contenttype'),
(91, 'Can view content type', 163, 'view_contenttype'),
(92, 'Can add log entry', 164, 'add_logentry'),
(93, 'Can change log entry', 164, 'change_logentry'),
(94, 'Can delete log entry', 164, 'delete_logentry'),
(95, 'Can view log entry', 164, 'view_logentry'),
(96, 'Can add session', 165, 'add_session'),
(97, 'Can change session', 165, 'change_session'),
(98, 'Can delete session', 165, 'delete_session'),
(99, 'Can view session', 165, 'view_session'),
(100, 'Can add Token', 166, 'add_token'),
(101, 'Can change Token', 166, 'change_token'),
(102, 'Can delete Token', 166, 'delete_token'),
(103, 'Can view Token', 166, 'view_token'),
(104, 'Can add token', 167, 'add_tokenproxy'),
(105, 'Can change token', 167, 'change_tokenproxy'),
(106, 'Can delete token', 167, 'delete_tokenproxy'),
(107, 'Can view token', 167, 'view_tokenproxy'),
(108, 'Can add API Request Log', 28, 'add_apirequestlog'),
(109, 'Can change API Request Log', 28, 'change_apirequestlog'),
(110, 'Can delete API Request Log', 28, 'delete_apirequestlog'),
(111, 'Can view API Request Log', 28, 'view_apirequestlog'),
(112, 'Can add crontab', 168, 'add_crontabschedule'),
(113, 'Can change crontab', 168, 'change_crontabschedule'),
(114, 'Can delete crontab', 168, 'delete_crontabschedule'),
(115, 'Can view crontab', 168, 'view_crontabschedule'),
(116, 'Can add interval', 169, 'add_intervalschedule'),
(117, 'Can change interval', 169, 'change_intervalschedule'),
(118, 'Can delete interval', 169, 'delete_intervalschedule'),
(119, 'Can view interval', 169, 'view_intervalschedule'),
(120, 'Can add periodic task', 170, 'add_periodictask'),
(121, 'Can change periodic task', 170, 'change_periodictask'),
(122, 'Can delete periodic task', 170, 'delete_periodictask'),
(123, 'Can view periodic task', 170, 'view_periodictask'),
(124, 'Can add periodic tasks', 171, 'add_periodictasks'),
(125, 'Can change periodic tasks', 171, 'change_periodictasks'),
(126, 'Can delete periodic tasks', 171, 'delete_periodictasks'),
(127, 'Can view periodic tasks', 171, 'view_periodictasks'),
(128, 'Can add solar event', 172, 'add_solarschedule'),
(129, 'Can change solar event', 172, 'change_solarschedule'),
(130, 'Can delete solar event', 172, 'delete_solarschedule'),
(131, 'Can view solar event', 172, 'view_solarschedule'),
(132, 'Can add clocked', 173, 'add_clockedschedule'),
(133, 'Can change clocked', 173, 'change_clockedschedule'),
(134, 'Can delete clocked', 173, 'delete_clockedschedule'),
(135, 'Can view clocked', 173, 'view_clockedschedule'),
(136, 'Can view base.models.adminLog', 27, 'view_adminlog'),
(137, 'Can add attendance rule', 174, 'add_attparam'),
(138, 'Can change attendance rule', 174, 'change_attparam'),
(139, 'Can delete attendance rule', 174, 'delete_attparam'),
(140, 'Can view attendance rule', 174, 'view_attparam'),
(141, 'Can add attParamDepts', 175, 'add_attparamdepts'),
(142, 'Can change attParamDepts', 175, 'change_attparamdepts'),
(143, 'Can delete attParamDepts', 175, 'delete_attparamdepts'),
(144, 'Can view attParamDepts', 175, 'view_attparamdepts'),
(145, 'Can add base_model_autoAttExportTask', 30, 'add_autoattexporttask'),
(146, 'Can change base_model_autoAttExportTask', 30, 'change_autoattexporttask'),
(147, 'Can delete base_model_autoAttExportTask', 30, 'delete_autoattexporttask'),
(148, 'Can view base_model_autoAttExportTask', 30, 'view_autoattexporttask'),
(149, 'Can add base_model_autoExportTask', 31, 'add_autoexporttask'),
(150, 'Can change base_model_autoExportTask', 31, 'change_autoexporttask'),
(151, 'Can delete base_model_autoExportTask', 31, 'delete_autoexporttask'),
(152, 'Can view base_model_autoExportTask', 31, 'view_autoexporttask'),
(153, 'Can delete base_model_bookmark', 33, 'delete_bookmark'),
(154, 'Can change base_model_bookmark', 33, 'change_bookmark'),
(155, 'Can add base_model_lineNotifySetting', 38, 'add_linenotifysetting'),
(156, 'Can change base_model_lineNotifySetting', 38, 'change_linenotifysetting'),
(157, 'Can delete base_model_lineNotifySetting', 38, 'delete_linenotifysetting'),
(158, 'Can view base_model_lineNotifySetting', 38, 'view_linenotifysetting'),
(159, 'Can add base.models.securityPolicy', 43, 'add_securitypolicy'),
(160, 'Can change base.models.securityPolicy', 43, 'change_securitypolicy'),
(161, 'Can delete base.models.securityPolicy', 43, 'delete_securitypolicy'),
(162, 'Can view base.models.securityPolicy', 43, 'view_securitypolicy'),
(163, 'Can add model_send_email', 176, 'add_sendemail'),
(164, 'Can change model_send_email', 176, 'change_sendemail'),
(165, 'Can delete model_send_email', 176, 'delete_sendemail'),
(166, 'Can view model_send_email', 176, 'view_sendemail'),
(167, 'Can add sftp_setting', 44, 'add_sftpsetting'),
(168, 'Can change sftp_setting', 44, 'change_sftpsetting'),
(169, 'Can delete sftp_setting', 44, 'delete_sftpsetting'),
(170, 'Can view sftp_setting', 44, 'view_sftpsetting'),
(171, 'Can view base_integrationTable_area', 42, 'view_syncarea'),
(172, 'Can view base_integrationTable_department', 39, 'view_syncdepartment'),
(173, 'Can view base_integrationTable_employee', 41, 'view_syncemployee'),
(174, 'Can view base_integrationTable_position', 40, 'view_syncjob'),
(175, 'Can add System Rule', 177, 'add_sysparam'),
(176, 'Can change System Rule', 177, 'change_sysparam'),
(177, 'Can delete System Rule', 177, 'delete_sysparam'),
(178, 'Can view System Rule', 177, 'view_sysparam'),
(179, 'Can add System Parameter related to Department', 178, 'add_sysparamdept'),
(180, 'Can change System Parameter related to Department', 178, 'change_sysparamdept'),
(181, 'Can delete System Parameter related to Department', 178, 'delete_sysparamdept'),
(182, 'Can view System Parameter related to Department', 178, 'view_sysparamdept'),
(183, 'Can view base.models.systemLog', 45, 'view_systemlog'),
(184, 'Can add base.model.systemSetting', 179, 'add_systemsetting'),
(185, 'Can change base.model.systemSetting', 179, 'change_systemsetting'),
(186, 'Can delete base.model.systemSetting', 179, 'delete_systemsetting'),
(187, 'Can view base.model.systemSetting', 179, 'view_systemsetting'),
(188, 'Can add Abstract Permission', 8, 'add_abstractpermission'),
(189, 'Can change Abstract Permission', 8, 'change_abstractpermission'),
(190, 'Can delete Abstract Permission', 8, 'delete_abstractpermission'),
(191, 'Can view Abstract Permission', 8, 'view_abstractpermission'),
(192, 'Can add System Setting Permission', 9, 'add_systemsettingpermission'),
(193, 'Can change System Setting Permission', 9, 'change_systemsettingpermission'),
(194, 'Can delete System Setting Permission', 9, 'delete_systemsettingpermission'),
(195, 'Can view System Setting Permission', 9, 'view_systemsettingpermission'),
(196, 'Can add base.model.emailTemplate', 35, 'add_emailtemplate'),
(197, 'Can change base.model.emailTemplate', 35, 'change_emailtemplate'),
(198, 'Can delete base.model.emailTemplate', 35, 'delete_emailtemplate'),
(199, 'Can view base.model.emailTemplate', 35, 'view_emailtemplate'),
(200, 'Can view base.models.eventAlertSetting', 36, 'view_eventalertsetting'),
(201, 'Can change base.models.eventAlertSetting', 36, 'change_eventalertsetting'),
(202, 'Can delete base_model_autoImportTask', 32, 'delete_autoimporttask'),
(203, 'Can change base_model_autoImportTask', 32, 'change_autoimporttask'),
(204, 'Can view base_model_autoImportTask', 32, 'view_autoimporttask'),
(205, 'Can view base_model_messengersentlog', 47, 'view_messengersentlog'),
(206, 'Can add zoom setting', 48, 'add_zoomsetting'),
(207, 'Can change zoom setting', 48, 'change_zoomsetting'),
(208, 'Can delete zoom setting', 48, 'delete_zoomsetting'),
(209, 'Can view zoom setting', 48, 'view_zoomsetting'),
(210, 'Can add line notify for employee', 37, 'add_linenotifyforemployee'),
(211, 'Can change line notify for employee', 37, 'change_linenotifyforemployee'),
(212, 'Can delete line notify for employee', 37, 'delete_linenotifyforemployee'),
(213, 'Can view line notify for employee', 37, 'view_linenotifyforemployee'),
(214, 'Can AddLineNotifyService linenotifyforemployee', 37, 'add_line_notify_service_linenotifyforemployee'),
(215, 'Can ManualExport autoexporttask', 31, 'manual_export_autoexporttask'),
(216, 'Can EnableTask autoexporttask', 31, 'enable_task_autoexporttask'),
(217, 'Can DisableTask autoexporttask', 31, 'disable_task_autoexporttask'),
(218, 'Can AddDefault autoimporttask', 32, 'add_default_autoimporttask'),
(219, 'Can AddUserDefine autoimporttask', 32, 'add_user_define_autoimporttask'),
(220, 'Can ManualImport autoimporttask', 32, 'manual_import_autoimporttask'),
(221, 'Can EnableTask autoimporttask', 32, 'enable_task_autoimporttask'),
(222, 'Can DisableTask autoimporttask', 32, 'disable_task_autoimporttask'),
(223, 'Can ManualAttExport autoattexporttask', 30, 'manual_att_export_autoattexporttask'),
(224, 'Can EnableTask autoattexporttask', 30, 'enable_task_autoattexporttask'),
(225, 'Can DisableTask autoattexporttask', 30, 'disable_task_autoattexporttask'),
(226, 'Can DBBackupAuto dbbackuplog', 34, 'd_b_backup_auto_dbbackuplog'),
(227, 'Can DBBackupManually dbbackuplog', 34, 'd_b_backup_manually_dbbackuplog'),
(228, 'Can DBRestoreManually dbbackuplog', 34, 'd_b_restore_manually_dbbackuplog'),
(229, 'Can view bookmark', 33, 'view_bookmark'),
(230, 'Can add iclock_model_bioData', 64, 'add_biodata'),
(231, 'Can change iclock_model_bioData', 64, 'change_biodata'),
(232, 'Can delete iclock_model_bioData', 64, 'delete_biodata'),
(233, 'Can view iclock_model_bioData', 64, 'view_biodata'),
(234, 'Can delete iclock_model_bioPhoto', 69, 'delete_biophoto'),
(235, 'Can view iclock_model_bioPhoto', 69, 'view_biophoto'),
(236, 'Can add iclock_model_deviceConfig', 68, 'add_devicemoduleconfig'),
(237, 'Can change iclock_model_deviceConfig', 68, 'change_devicemoduleconfig'),
(238, 'Can delete iclock_model_deviceConfig', 68, 'delete_devicemoduleconfig'),
(239, 'Can view iclock_model_deviceConfig', 68, 'view_devicemoduleconfig'),
(240, 'Can delete terminal_model_errorCommandLog', 70, 'delete_errorcommandlog'),
(241, 'Can view terminal_model_errorCommandLog', 70, 'view_errorcommandlog'),
(242, 'Can delete iclock_model_privateMessage', 65, 'delete_privatemessage'),
(243, 'Can change iclock_model_privateMessage', 65, 'change_privatemessage'),
(244, 'Can view iclock_model_privateMessage', 65, 'view_privatemessage'),
(245, 'Can delete iclock_model_publicMessage', 66, 'delete_publicmessage'),
(246, 'Can change iclock_model_publicMessage', 66, 'change_publicmessage'),
(247, 'Can view iclock_model_publicMessage', 66, 'view_publicmessage'),
(248, 'Can add terminal.models.shortMessage', 180, 'add_shortmessage'),
(249, 'Can change terminal.models.shortMessage', 180, 'change_shortmessage'),
(250, 'Can delete terminal.models.shortMessage', 180, 'delete_shortmessage'),
(251, 'Can view terminal.models.shortMessage', 180, 'view_shortmessage'),
(252, 'Can add iclock_model_terminal', 58, 'add_terminal'),
(253, 'Can change iclock_model_terminal', 58, 'change_terminal'),
(254, 'Can delete iclock_model_terminal', 58, 'delete_terminal'),
(255, 'Can view iclock_model_terminal', 58, 'view_terminal'),
(256, 'Can delete iclock_model_terminalCommand', 62, 'delete_terminalcommand'),
(257, 'Can view iclock_model_terminalCommand', 62, 'view_terminalcommand'),
(258, 'Can add iclock_model_terminalEmployee', 181, 'add_terminalemployee'),
(259, 'Can change iclock_model_terminalEmployee', 181, 'change_terminalemployee'),
(260, 'Can delete iclock_model_terminalEmployee', 181, 'delete_terminalemployee'),
(261, 'Can view iclock_model_terminalEmployee', 181, 'view_terminalemployee'),
(262, 'Can delete iclock_model_terminalLog', 60, 'delete_terminallog'),
(263, 'Can view iclock_model_terminalLog', 60, 'view_terminallog'),
(264, 'Can add iclock_model_terminalParameter', 72, 'add_terminalparameter'),
(265, 'Can change iclock_model_terminalParameter', 72, 'change_terminalparameter'),
(266, 'Can delete iclock_model_terminalParameter', 72, 'delete_terminalparameter'),
(267, 'Can view iclock_model_terminalParameter', 72, 'view_terminalparameter'),
(268, 'Can delete iclock_model_terminalUploadLog', 61, 'delete_terminaluploadlog'),
(269, 'Can view iclock_model_terminalUploadLog', 61, 'view_terminaluploadlog'),
(270, 'Can add iclock_model_terminalWorkCode', 67, 'add_terminalworkcode'),
(271, 'Can change iclock_model_terminalWorkCode', 67, 'change_terminalworkcode'),
(272, 'Can delete iclock_model_terminalWorkCode', 67, 'delete_terminalworkcode'),
(273, 'Can view iclock_model_terminalWorkCode', 67, 'view_terminalworkcode'),
(274, 'Can view iclock_model_transaction', 59, 'view_transaction'),
(275, 'Can add transaction.proof.command', 182, 'add_transactionproofcmd'),
(276, 'Can change transaction.proof.command', 182, 'change_transactionproofcmd'),
(277, 'Can delete transaction.proof.command', 182, 'delete_transactionproofcmd'),
(278, 'Can view transaction.proof.command', 182, 'view_transactionproofcmd'),
(279, 'Can delete iclock.models.terminalCommandLog', 63, 'delete_terminalcommandlog'),
(280, 'Can view iclock.models.terminalCommandLog', 63, 'view_terminalcommandlog'),
(281, 'Can add Device Setting Permission', 183, 'add_devicesettingpermission'),
(282, 'Can change Device Setting Permission', 183, 'change_devicesettingpermission'),
(283, 'Can delete Device Setting Permission', 183, 'delete_devicesettingpermission'),
(284, 'Can view Device Setting Permission', 183, 'view_devicesettingpermission'),
(285, 'Can TerminalNewArea terminal', 58, 'terminal_new_area_terminal'),
(286, 'Can TerminalClearCommand terminal', 58, 'terminal_clear_command_terminal'),
(287, 'Can TerminalClearAttendanceData terminal', 58, 'terminal_clear_attendance_data_terminal'),
(288, 'Can TerminalDeleteCapture terminal', 58, 'terminal_delete_capture_terminal'),
(289, 'Can TerminalClearAll terminal', 58, 'terminal_clear_all_terminal'),
(290, 'Can TerminalReUploadData terminal', 58, 'terminal_re_upload_data_terminal'),
(291, 'Can TerminalReUploadTransaction terminal', 58, 'terminal_re_upload_transaction_terminal'),
(292, 'Can TerminalReloadData terminal', 58, 'terminal_reload_data_terminal'),
(293, 'Can TerminalDataCompare terminal', 58, 'terminal_data_compare_terminal'),
(294, 'Can TerminalManualSync terminal', 58, 'terminal_manual_sync_terminal'),
(295, 'Can TerminalReboot terminal', 58, 'terminal_reboot_terminal'),
(296, 'Can TerminalReadInformation terminal', 58, 'terminal_read_information_terminal'),
(297, 'Can TerminalEnrollRemotely terminal', 58, 'terminal_enroll_remotely_terminal'),
(298, 'Can TerminalDuplicatePunchPeriod terminal', 58, 'terminal_duplicate_punch_period_terminal'),
(299, 'Can TerminalCapture terminal', 58, 'terminal_capture_terminal'),
(300, 'Can TerminalUpgradeFirmware terminal', 58, 'terminal_upgrade_firmware_terminal'),
(301, 'Can TerminalDaylightSavingTime terminal', 58, 'terminal_daylight_saving_time_terminal'),
(302, 'Can TerminalPunchStateChangeSetting terminal', 58, 'terminal_punch_state_change_setting_terminal'),
(303, 'Can TerminalPullFile terminal', 58, 'terminal_pull_file_terminal'),
(304, 'Can TerminalSetOption terminal', 58, 'terminal_set_option_terminal'),
(305, 'Can USBDataUpload transaction', 59, 'u_s_b_data_upload_transaction'),
(306, 'Can AttCaptureDownload transaction', 59, 'att_capture_download_transaction'),
(307, 'Can TerminalUploadLogBulkDelete terminaluploadlog', 61, 'terminal_upload_log_bulk_delete_terminaluploadlog'),
(308, 'Can TerminalCommandBulkDelete terminalcommand', 62, 'terminal_command_bulk_delete_terminalcommand'),
(309, 'Can TerminalCommandLogBulkDelete terminalcommandlog', 63, 'terminal_command_log_bulk_delete_terminalcommandlog'),
(310, 'Can AddPublicMessage publicmessage', 66, 'add_public_message_publicmessage'),
(311, 'Can SendPublicMessage publicmessage', 66, 'send_public_message_publicmessage'),
(312, 'Can AddPrivateMessage privatemessage', 65, 'add_private_message_privatemessage'),
(313, 'Can SendPrivateMessage privatemessage', 65, 'send_private_message_privatemessage'),
(314, 'Can SendWorkCode terminalworkcode', 67, 'send_work_code_terminalworkcode'),
(315, 'Can RemoveWorkCode terminalworkcode', 67, 'remove_work_code_terminalworkcode'),
(316, 'Can BioPhotoApprove biophoto', 69, 'bio_photo_approve_biophoto'),
(317, 'Can BioPhotoQRCode biophoto', 69, 'bio_photo_q_r_code_biophoto'),
(318, 'Can ImportBioPhoto biophoto', 69, 'import_bio_photo_biophoto'),
(319, 'Can view deviceemployee', 71, 'view_deviceemployee'),
(320, 'Can change model_deviceemployee', 71, 'change_deviceemployee'),
(321, 'Can AreaTransfer deviceemployee', 71, 'area_transfer_deviceemployee'),
(322, 'Can ReSync2Device deviceemployee', 71, 're_sync2_device_deviceemployee'),
(323, 'Can ReUpload deviceemployee', 71, 're_upload_deviceemployee'),
(324, 'Can DeleteBioData deviceemployee', 71, 'delete_bio_data_deviceemployee'),
(325, 'Can EnrollFingerprint deviceemployee', 71, 'enroll_fingerprint_deviceemployee'),
(326, 'Can EnrollPalm deviceemployee', 71, 'enroll_palm_deviceemployee'),
(327, 'Can EnrollFacePhoto deviceemployee', 71, 'enroll_face_photo_deviceemployee'),
(328, 'Can add psnl_model_area', 50, 'add_area'),
(329, 'Can change psnl_model_area', 50, 'change_area'),
(330, 'Can delete psnl_model_area', 50, 'delete_area'),
(331, 'Can view psnl_model_area', 50, 'view_area'),
(332, 'Can add model_assign_area_to_employee', 184, 'add_assignareaemployee'),
(333, 'Can change model_assign_area_to_employee', 184, 'change_assignareaemployee'),
(334, 'Can delete model_assign_area_to_employee', 184, 'delete_assignareaemployee'),
(335, 'Can view model_assign_area_to_employee', 184, 'view_assignareaemployee'),
(336, 'Can add psnl_model_certification', 51, 'add_certification'),
(337, 'Can change psnl_model_certification', 51, 'change_certification'),
(338, 'Can delete psnl_model_certification', 51, 'delete_certification'),
(339, 'Can view psnl_model_certification', 51, 'view_certification'),
(340, 'Can add psnl_model_department', 52, 'add_department'),
(341, 'Can change psnl_model_department', 52, 'change_department'),
(342, 'Can delete psnl_model_department', 52, 'delete_department'),
(343, 'Can view psnl_model_department', 52, 'view_department'),
(344, 'Can add model_employee', 53, 'add_employee'),
(345, 'Can change model_employee', 53, 'change_employee'),
(346, 'Can delete model_employee', 53, 'delete_employee'),
(347, 'Can view model_employee', 53, 'view_employee'),
(348, 'Can delete employee certification', 56, 'delete_employeecertification'),
(349, 'Can change employee certification', 56, 'change_employeecertification'),
(350, 'Can view employee certification', 56, 'view_employeecertification'),
(351, 'Can add pnsl_model_empProfile', 185, 'add_employeeprofile'),
(352, 'Can change pnsl_model_empProfile', 185, 'change_employeeprofile'),
(353, 'Can delete pnsl_model_empProfile', 185, 'delete_employeeprofile'),
(354, 'Can view pnsl_model_empProfile', 185, 'view_employeeprofile'),
(355, 'Can add psnl.models.employment', 186, 'add_employment'),
(356, 'Can change psnl.models.employment', 186, 'change_employment'),
(357, 'Can delete psnl.models.employment', 186, 'delete_employment'),
(358, 'Can view psnl.models.employment', 186, 'view_employment'),
(359, 'Can add psnl_model_position', 54, 'add_position'),
(360, 'Can change psnl_model_position', 54, 'change_position'),
(361, 'Can delete psnl_model_position', 54, 'delete_position'),
(362, 'Can view psnl_model_position', 54, 'view_position'),
(363, 'Can delete psnl_model_resign', 55, 'delete_resign'),
(364, 'Can change psnl_model_resign', 55, 'change_resign'),
(365, 'Can view psnl_model_resign', 55, 'view_resign'),
(366, 'Can add employee calendar', 187, 'add_employeecalendar'),
(367, 'Can change employee calendar', 187, 'change_employeecalendar'),
(368, 'Can delete employee calendar', 187, 'delete_employeecalendar'),
(369, 'Can view employee calendar', 187, 'view_employeecalendar'),
(370, 'Can add personnel.models.employeeCustomAttribute', 57, 'add_employeecustomattribute'),
(371, 'Can change personnel.models.employeeCustomAttribute', 57, 'change_employeecustomattribute'),
(372, 'Can delete personnel.models.employeeCustomAttribute', 57, 'delete_employeecustomattribute'),
(373, 'Can view personnel.models.employeeCustomAttribute', 57, 'view_employeecustomattribute'),
(374, 'Can add personnel.models.employeeExtraInfo', 188, 'add_employeeextrainfo'),
(375, 'Can change personnel.models.employeeExtraInfo', 188, 'change_employeeextrainfo'),
(376, 'Can delete personnel.models.employeeExtraInfo', 188, 'delete_employeeextrainfo'),
(377, 'Can view personnel.models.employeeExtraInfo', 188, 'view_employeeextrainfo'),
(378, 'Can add psnl.model.company', 49, 'add_company'),
(379, 'Can change psnl.model.company', 49, 'change_company'),
(380, 'Can delete psnl.model.company', 49, 'delete_company'),
(381, 'Can view psnl.model.company', 49, 'view_company'),
(382, 'Can add Personnel Setting Permission', 10, 'add_personnelsettingpermission'),
(383, 'Can change Personnel Setting Permission', 10, 'change_personnelsettingpermission'),
(384, 'Can delete Personnel Setting Permission', 10, 'delete_personnelsettingpermission'),
(385, 'Can view Personnel Setting Permission', 10, 'view_personnelsettingpermission'),
(386, 'Can Import department', 52, 'import_department'),
(387, 'Can SetDepartment department', 52, 'set_department_department'),
(388, 'Can Import position', 54, 'import_position'),
(389, 'Can SetPosition position', 54, 'set_position_position'),
(390, 'Can Import area', 50, 'import_area'),
(391, 'Can SetArea area', 50, 'set_area_area'),
(392, 'Can Import certification', 51, 'import_certification'),
(393, 'Can ImportEmployee employee', 53, 'import_employee_employee'),
(394, 'Can ImportDocument employee', 53, 'import_document_employee'),
(395, 'Can ImportPhoto employee', 53, 'import_photo_employee'),
(396, 'Can ImportUSBData employee', 53, 'import_u_s_b_data_employee'),
(397, 'Can AdjustDepartment employee', 53, 'adjust_department_employee'),
(398, 'Can PositionTransfer employee', 53, 'position_transfer_employee'),
(399, 'Can AdjustArea employee', 53, 'adjust_area_employee'),
(400, 'Can PassProbation employee', 53, 'pass_probation_employee'),
(401, 'Can Resignation employee', 53, 'resignation_employee'),
(402, 'Can EnableApp employee', 53, 'enable_app_employee'),
(403, 'Can DisableApp employee', 53, 'disable_app_employee'),
(404, 'Can ResynchronizeDevice employee', 53, 'resynchronize_device_employee'),
(405, 'Can ReUploadFromDevice employee', 53, 're_upload_from_device_employee'),
(406, 'Can DeleteBiometricTemplates employee', 53, 'delete_biometric_templates_employee'),
(407, 'Can ExportUSBData employee', 53, 'export_u_s_b_data_employee'),
(408, 'Can AddEmployeeResign resign', 55, 'add_employee_resign_resign'),
(409, 'Can Reinstatement resign', 55, 'reinstatement_resign'),
(410, 'Can Import resign', 55, 'import_resign'),
(411, 'Can DisableAttendanceFunction resign', 55, 'disable_attendance_function_resign'),
(412, 'Can AddEmployeeCert employeecertification', 56, 'add_employee_cert_employeecertification'),
(413, 'Can Import employeecertification', 56, 'import_employeecertification'),
(414, 'Can add workflow_node_instance', 189, 'add_nodeinstance'),
(415, 'Can change workflow_node_instance', 189, 'change_nodeinstance'),
(416, 'Can delete workflow_node_instance', 189, 'delete_nodeinstance'),
(417, 'Can view workflow_node_instance', 189, 'view_nodeinstance'),
(418, 'Can delete workflow_model_workflowEngine', 74, 'delete_workflowengine'),
(419, 'Can change workflow_model_workflowEngine', 74, 'change_workflowengine'),
(420, 'Can view workflow_model_workflowEngine', 74, 'view_workflowengine'),
(421, 'Can add workflow instance', 190, 'add_workflowinstance'),
(422, 'Can change workflow instance', 190, 'change_workflowinstance'),
(423, 'Can delete workflow instance', 190, 'delete_workflowinstance'),
(424, 'Can view workflow instance', 190, 'view_workflowinstance'),
(425, 'Can add workflow_model_workflowNode', 75, 'add_workflownode'),
(426, 'Can change workflow_model_workflowNode', 75, 'change_workflownode'),
(427, 'Can delete workflow_model_workflowNode', 75, 'delete_workflownode'),
(428, 'Can view workflow_model_workflowNode', 75, 'view_workflownode'),
(429, 'Can add workflow_model_workflowRole', 73, 'add_workflowrole'),
(430, 'Can change workflow_model_workflowRole', 73, 'change_workflowrole'),
(431, 'Can delete workflow_model_workflowRole', 73, 'delete_workflowrole'),
(432, 'Can view workflow_model_workflowRole', 73, 'view_workflowrole'),
(433, 'Can WorkFlowRoleAssignEmployee workflowrole', 73, 'work_flow_role_assign_employee_workflowrole'),
(434, 'Can WorkFlowSetupForDepartment workflowengine', 74, 'work_flow_setup_for_department_workflowengine'),
(435, 'Can WorkFlowSetupForPosition workflowengine', 74, 'work_flow_setup_for_position_workflowengine'),
(436, 'Can WorkFlowSetupForEmployee workflowengine', 74, 'work_flow_setup_for_employee_workflowengine'),
(437, 'Can add att_calc_log', 191, 'add_attcalclog'),
(438, 'Can change att_calc_log', 191, 'change_attcalclog'),
(439, 'Can delete att_calc_log', 191, 'delete_attcalclog'),
(440, 'Can view att_calc_log', 191, 'view_attcalclog'),
(441, 'Can change att.models.attCode', 77, 'change_attcode'),
(442, 'Can view att.models.attCode', 77, 'view_attcode'),
(443, 'Can add att.models.attEmployee', 192, 'add_attemployee'),
(444, 'Can change att.models.attEmployee', 192, 'change_attemployee'),
(445, 'Can delete att.models.attEmployee', 192, 'delete_attemployee'),
(446, 'Can view att.models.attEmployee', 192, 'view_attemployee'),
(447, 'Can add att.models.attGroup', 78, 'add_attgroup'),
(448, 'Can change att.models.attGroup', 78, 'change_attgroup'),
(449, 'Can delete att.models.attGroup', 78, 'delete_attgroup'),
(450, 'Can view att.models.attGroup', 78, 'view_attgroup'),
(451, 'Can change att.models.attPolicy', 79, 'change_attpolicy'),
(452, 'Can view att.models.attPolicy', 79, 'view_attpolicy'),
(453, 'Can add att.model.calculateItem', 98, 'add_attreportsetting'),
(454, 'Can change att.model.calculateItem', 98, 'change_attreportsetting'),
(455, 'Can delete att.model.calculateItem', 98, 'delete_attreportsetting'),
(456, 'Can view att.model.calculateItem', 98, 'view_attreportsetting'),
(457, 'Can add att_model_attRule', 82, 'add_attrule'),
(458, 'Can change att_model_attRule', 82, 'change_attrule'),
(459, 'Can delete att_model_attRule', 82, 'delete_attrule'),
(460, 'Can view att_model_attRule', 82, 'view_attrule'),
(461, 'Can delete att_model_schedule', 87, 'delete_attschedule'),
(462, 'Can view att_model_schedule', 87, 'view_attschedule'),
(463, 'Can add att_model_shift', 86, 'add_attshift'),
(464, 'Can change att_model_shift', 86, 'change_attshift'),
(465, 'Can delete att_model_shift', 86, 'delete_attshift'),
(466, 'Can view att_model_shift', 86, 'view_attshift'),
(467, 'Can add att_model_breakTime', 94, 'add_breaktime'),
(468, 'Can change att_model_breakTime', 94, 'change_breaktime'),
(469, 'Can delete att_model_breakTime', 94, 'delete_breaktime'),
(470, 'Can view att_model_breakTime', 94, 'view_breaktime'),
(471, 'Can add att_model_changeSchedule', 95, 'add_changeschedule'),
(472, 'Can change att_model_changeSchedule', 95, 'change_changeschedule'),
(473, 'Can delete att_model_changeSchedule', 95, 'delete_changeschedule'),
(474, 'Can view att_model_changeSchedule', 95, 'view_changeschedule'),
(475, 'Can delete att.models.departmentPolicy', 80, 'delete_departmentpolicy'),
(476, 'Can change att.models.departmentPolicy', 80, 'change_departmentpolicy'),
(477, 'Can view att.models.departmentPolicy', 80, 'view_departmentpolicy'),
(478, 'Can delete att_model_deptSchedule', 96, 'delete_departmentschedule'),
(479, 'Can view att_model_deptSchedule', 96, 'view_departmentschedule'),
(480, 'Can delete att_model_deptAttRule', 93, 'delete_deptattrule'),
(481, 'Can change att_model_deptAttRule', 93, 'change_deptattrule'),
(482, 'Can view att_model_deptAttRule', 93, 'view_deptattrule'),
(483, 'Can delete att.models.groupPolicy', 81, 'delete_grouppolicy'),
(484, 'Can change att.models.groupPolicy', 81, 'change_grouppolicy'),
(485, 'Can view att.models.groupPolicy', 81, 'view_grouppolicy'),
(486, 'Can delete att.models.groupSchedule', 97, 'delete_groupschedule'),
(487, 'Can view att.models.groupSchedule', 97, 'view_groupschedule'),
(488, 'Can delete att_model_holiday', 92, 'delete_holiday'),
(489, 'Can change att_model_holiday', 92, 'change_holiday'),
(490, 'Can view att_model_holiday', 92, 'view_holiday'),
(491, 'Can delete att_model_leave', 89, 'delete_leave'),
(492, 'Can change att_model_leave', 89, 'change_leave'),
(493, 'Can view att_model_leave', 89, 'view_leave'),
(494, 'Can delete att_model_manualLog', 84, 'delete_manuallog'),
(495, 'Can change att_model_manualLog', 84, 'change_manuallog'),
(496, 'Can view att_model_manualLog', 84, 'view_manuallog'),
(497, 'Can delete att_model_overtime', 91, 'delete_overtime'),
(498, 'Can change att_model_overtime', 91, 'change_overtime'),
(499, 'Can view att_model_overtime', 91, 'view_overtime'),
(500, 'Can add att.models.overtimePolicy', 193, 'add_overtimepolicy'),
(501, 'Can change att.models.overtimePolicy', 193, 'change_overtimepolicy'),
(502, 'Can delete att.models.overtimePolicy', 193, 'delete_overtimepolicy'),
(503, 'Can view att.models.overtimePolicy', 193, 'view_overtimepolicy'),
(504, 'Can add att.models.payCode', 76, 'add_paycode'),
(505, 'Can change att.models.payCode', 76, 'change_paycode'),
(506, 'Can delete att.models.payCode', 76, 'delete_paycode'),
(507, 'Can view att.models.payCode', 76, 'view_paycode'),
(508, 'Can add payload att code', 194, 'add_payloadattcode'),
(509, 'Can change payload att code', 194, 'change_payloadattcode'),
(510, 'Can delete payload att code', 194, 'delete_payloadattcode'),
(511, 'Can view payload att code', 194, 'view_payloadattcode'),
(512, 'Can add payload base', 195, 'add_payloadbase'),
(513, 'Can change payload base', 195, 'change_payloadbase'),
(514, 'Can delete payload base', 195, 'delete_payloadbase'),
(515, 'Can view payload base', 195, 'view_payloadbase'),
(516, 'Can add payload break', 196, 'add_payloadbreak'),
(517, 'Can change payload break', 196, 'change_payloadbreak'),
(518, 'Can delete payload break', 196, 'delete_payloadbreak'),
(519, 'Can view payload break', 196, 'view_payloadbreak'),
(520, 'Can add payload effect punch', 197, 'add_payloadeffectpunch'),
(521, 'Can change payload effect punch', 197, 'change_payloadeffectpunch'),
(522, 'Can delete payload effect punch', 197, 'delete_payloadeffectpunch'),
(523, 'Can view payload effect punch', 197, 'view_payloadeffectpunch'),
(524, 'Can add payload exception', 198, 'add_payloadexception'),
(525, 'Can change payload exception', 198, 'change_payloadexception'),
(526, 'Can delete payload exception', 198, 'delete_payloadexception'),
(527, 'Can view payload exception', 198, 'view_payloadexception'),
(528, 'Can add payload mul punch set', 199, 'add_payloadmulpunchset'),
(529, 'Can change payload mul punch set', 199, 'change_payloadmulpunchset'),
(530, 'Can delete payload mul punch set', 199, 'delete_payloadmulpunchset'),
(531, 'Can view payload mul punch set', 199, 'view_payloadmulpunchset'),
(532, 'Can add payload overtime', 200, 'add_payloadovertime'),
(533, 'Can change payload overtime', 200, 'change_payloadovertime'),
(534, 'Can delete payload overtime', 200, 'delete_payloadovertime'),
(535, 'Can view payload overtime', 200, 'view_payloadovertime'),
(536, 'Can add payload paring', 201, 'add_payloadparing'),
(537, 'Can change payload paring', 201, 'change_payloadparing'),
(538, 'Can delete payload paring', 201, 'delete_payloadparing'),
(539, 'Can view payload paring', 201, 'view_payloadparing'),
(540, 'Can add payload pay code', 202, 'add_payloadpaycode'),
(541, 'Can change payload pay code', 202, 'change_payloadpaycode'),
(542, 'Can delete payload pay code', 202, 'delete_payloadpaycode'),
(543, 'Can view payload pay code', 202, 'view_payloadpaycode'),
(544, 'Can add payload punch', 203, 'add_payloadpunch'),
(545, 'Can change payload punch', 203, 'change_payloadpunch'),
(546, 'Can delete payload punch', 203, 'delete_payloadpunch'),
(547, 'Can view payload punch', 203, 'view_payloadpunch'),
(548, 'Can add att.models.payloadTimeCard', 204, 'add_payloadtimecard'),
(549, 'Can change att.models.payloadTimeCard', 204, 'change_payloadtimecard'),
(550, 'Can delete att.models.payloadTimeCard', 204, 'delete_payloadtimecard'),
(551, 'Can view att.models.payloadTimeCard', 204, 'view_payloadtimecard'),
(552, 'Can add att_model_reportParameter', 83, 'add_reportparam'),
(553, 'Can change att_model_reportParameter', 83, 'change_reportparam'),
(554, 'Can delete att_model_reportParameter', 83, 'delete_reportparam'),
(555, 'Can view att_model_reportParameter', 83, 'view_reportparam'),
(556, 'Can add att_model_reportTemplate', 205, 'add_reporttemplate'),
(557, 'Can change att_model_reportTemplate', 205, 'change_reporttemplate'),
(558, 'Can delete att_model_reportTemplate', 205, 'delete_reporttemplate'),
(559, 'Can view att_model_reportTemplate', 205, 'view_reporttemplate'),
(560, 'Can add att_model_shiftDetail', 206, 'add_shiftdetail'),
(561, 'Can change att_model_shiftDetail', 206, 'change_shiftdetail'),
(562, 'Can delete att_model_shiftDetail', 206, 'delete_shiftdetail'),
(563, 'Can view att_model_shiftDetail', 206, 'view_shiftdetail'),
(564, 'Can delete att.models.temporarySchedule', 88, 'delete_temporaryschedule'),
(565, 'Can view att.models.temporarySchedule', 88, 'view_temporaryschedule'),
(566, 'Can delete att_model_tempSchedule', 207, 'delete_tempschedule'),
(567, 'Can change att_model_tempSchedule', 207, 'change_tempschedule'),
(568, 'Can view att_model_tempSchedule', 207, 'view_tempschedule'),
(569, 'Can delete att_model_timeInterval', 85, 'delete_timeinterval'),
(570, 'Can change att_model_timeInterval', 85, 'change_timeinterval'),
(571, 'Can view att_model_timeInterval', 85, 'view_timeinterval'),
(572, 'Can delete att_model_training', 90, 'delete_training'),
(573, 'Can change att_model_training', 90, 'change_training'),
(574, 'Can view att_model_training', 90, 'view_training'),
(575, 'Can add Att Setting Permission', 2, 'add_attsettingpermission'),
(576, 'Can change Att Setting Permission', 2, 'change_attsettingpermission'),
(577, 'Can delete Att Setting Permission', 2, 'delete_attsettingpermission'),
(578, 'Can view Att Setting Permission', 2, 'view_attsettingpermission'),
(579, 'Can add Report Permission', 3, 'add_reportpermission'),
(580, 'Can change Report Permission', 3, 'change_reportpermission'),
(581, 'Can delete Report Permission', 3, 'delete_reportpermission'),
(582, 'Can view Report Permission', 3, 'view_reportpermission'),
(583, 'Can delete menu_att_leavegroup', 99, 'delete_leavegroup'),
(584, 'Can change menu_att_leavegroup', 99, 'change_leavegroup'),
(585, 'Can view menu_att_leavegroup', 99, 'view_leavegroup'),
(586, 'Can add att_model_leavegroupdetail', 100, 'add_leavegroupdetail'),
(587, 'Can change att_model_leavegroupdetail', 100, 'change_leavegroupdetail'),
(588, 'Can delete att_model_leavegroupdetail', 100, 'delete_leavegroupdetail'),
(589, 'Can view att_model_leavegroupdetail', 100, 'view_leavegroupdetail'),
(590, 'Can add att_model_leaveYearBalance', 101, 'add_leaveyearbalance'),
(591, 'Can change att_model_leaveYearBalance', 101, 'change_leaveyearbalance'),
(592, 'Can delete att_model_leaveYearBalance', 101, 'delete_leaveyearbalance'),
(593, 'Can view att_model_leaveYearBalance', 101, 'view_leaveyearbalance'),
(594, 'Can add att.models.webPunch', 208, 'add_webpunch'),
(595, 'Can change att.models.webPunch', 208, 'change_webpunch'),
(596, 'Can delete att.models.webPunch', 208, 'delete_webpunch'),
(597, 'Can view att.models.webPunch', 208, 'view_webpunch'),
(598, 'Can add calculate last date', 209, 'add_calculatelastdate'),
(599, 'Can change calculate last date', 209, 'change_calculatelastdate'),
(600, 'Can delete calculate last date', 209, 'delete_calculatelastdate'),
(601, 'Can view calculate last date', 209, 'view_calculatelastdate'),
(602, 'Can add calculate task', 210, 'add_calculatetask'),
(603, 'Can change calculate task', 210, 'change_calculatetask'),
(604, 'Can delete calculate task', 210, 'delete_calculatetask'),
(605, 'Can view calculate task', 210, 'view_calculatetask'),
(606, 'Can add Att Configurations Permission', 4, 'add_attconfigurationspermission'),
(607, 'Can change Att Configurations Permission', 4, 'change_attconfigurationspermission'),
(608, 'Can delete Att Configurations Permission', 4, 'delete_attconfigurationspermission'),
(609, 'Can view Att Configurations Permission', 4, 'view_attconfigurationspermission'),
(610, 'Can add Schedule View Permission', 5, 'add_scheduleviewpermission'),
(611, 'Can change Schedule View Permission', 5, 'change_scheduleviewpermission'),
(612, 'Can delete Schedule View Permission', 5, 'delete_scheduleviewpermission'),
(613, 'Can view Schedule View Permission', 5, 'view_scheduleviewpermission'),
(614, 'Can add Staff Report Permission', 6, 'add_staffreportpermission'),
(615, 'Can change Staff Report Permission', 6, 'change_staffreportpermission'),
(616, 'Can delete Staff Report Permission', 6, 'delete_staffreportpermission'),
(617, 'Can view Staff Report Permission', 6, 'view_staffreportpermission'),
(618, 'Can add att.menus.userGuid', 7, 'add_attuserguidepermission'),
(619, 'Can change att.menus.userGuid', 7, 'change_attuserguidepermission'),
(620, 'Can delete att.menus.userGuid', 7, 'delete_attuserguidepermission'),
(621, 'Can view att.menus.userGuid', 7, 'view_attuserguidepermission'),
(622, 'Can SetGroup attgroup', 78, 'set_group_attgroup'),
(623, 'Can AddDepartmentPolicy departmentpolicy', 80, 'add_department_policy_departmentpolicy'),
(624, 'Can AddGroupPolicy grouppolicy', 81, 'add_group_policy_grouppolicy'),
(625, 'Can AddAttSchedule attschedule', 87, 'add_att_schedule_attschedule'),
(626, 'Can Import attschedule', 87, 'import_attschedule'),
(627, 'Can AddDepartmentHoliday holiday', 92, 'add_department_holiday_holiday'),
(628, 'Can AddLeave leave', 89, 'add_leave_leave'),
(629, 'Can BulkAddLeave leave', 89, 'bulk_add_leave_leave'),
(630, 'Can ApproveLeave leave', 89, 'approve_leave_leave'),
(631, 'Can Reject leave', 89, 'reject_leave'),
(632, 'Can Revoke leave', 89, 'revoke_leave'),
(633, 'Can Import leave', 89, 'import_leave'),
(634, 'Can AddManualLog manuallog', 84, 'add_manual_log_manuallog'),
(635, 'Can BulkAddManualLog manuallog', 84, 'bulk_add_manual_log_manuallog'),
(636, 'Can Approve manuallog', 84, 'approve_manuallog'),
(637, 'Can Reject manuallog', 84, 'reject_manuallog'),
(638, 'Can Revoke manuallog', 84, 'revoke_manuallog'),
(639, 'Can Import manuallog', 84, 'import_manuallog'),
(640, 'Can AddOvertime overtime', 91, 'add_overtime_overtime'),
(641, 'Can BulkAddOvertime overtime', 91, 'bulk_add_overtime_overtime'),
(642, 'Can Approve overtime', 91, 'approve_overtime'),
(643, 'Can Reject overtime', 91, 'reject_overtime'),
(644, 'Can Revoke overtime', 91, 'revoke_overtime'),
(645, 'Can Import overtime', 91, 'import_overtime'),
(646, 'Can AddNormalTimetable timeinterval', 85, 'add_normal_timetable_timeinterval'),
(647, 'Can AddFlexibleTimetable timeinterval', 85, 'add_flexible_timetable_timeinterval'),
(648, 'Can AddTemporarySchedule temporaryschedule', 88, 'add_temporary_schedule_temporaryschedule'),
(649, 'Can ImportTemporarySchedule temporaryschedule', 88, 'import_temporary_schedule_temporaryschedule'),
(650, 'Can AddTraining training', 90, 'add_training_training'),
(651, 'Can BulkAddTraining training', 90, 'bulk_add_training_training'),
(652, 'Can Approve training', 90, 'approve_training'),
(653, 'Can Reject training', 90, 'reject_training'),
(654, 'Can Revoke training', 90, 'revoke_training'),
(655, 'Can Import training', 90, 'import_training'),
(656, 'Can BatchAddDepartmentRule deptattrule', 93, 'batch_add_department_rule_deptattrule'),
(657, 'Can Approve changeschedule', 95, 'approve_changeschedule'),
(658, 'Can Reject changeschedule', 95, 'reject_changeschedule'),
(659, 'Can Revoke changeschedule', 95, 'revoke_changeschedule'),
(660, 'Can AddDepartmentSchedule departmentschedule', 96, 'add_department_schedule_departmentschedule'),
(661, 'Can AddGroupSchedule groupschedule', 97, 'add_group_schedule_groupschedule'),
(662, 'Can AssignLeaveGroup leavegroup', 99, 'assign_leave_group_leavegroup'),
(663, 'Can AddLeaveGroup leavegroup', 99, 'add_leave_group_leavegroup'),
(664, 'Can add base_model_user', 29, 'add_myuser'),
(665, 'Can change base_model_user', 29, 'change_myuser'),
(666, 'Can add iclock_model_bioData', 211, 'add_adminbiodata'),
(667, 'Can change iclock_model_bioData', 211, 'change_adminbiodata'),
(668, 'Can delete iclock_model_bioData', 211, 'delete_adminbiodata'),
(669, 'Can view iclock_model_bioData', 211, 'view_adminbiodata'),
(670, 'Can add accounts.models.userNotification', 46, 'add_usernotification'),
(671, 'Can change accounts.models.userNotification', 46, 'change_usernotification'),
(672, 'Can delete accounts.models.userNotification', 46, 'delete_usernotification'),
(673, 'Can view accounts.models.userNotification', 46, 'view_usernotification'),
(674, 'can_enter_menu_system_module', 212, 'enter_system_module'),
(675, 'can_enter_personnel_module', 212, 'enter_personnel_module'),
(676, 'can_enter_terminal_module', 212, 'enter_terminal_module'),
(677, 'can_enter_attendance_module', 212, 'enter_attendance_module'),
(678, 'can_enter_payroll_module', 212, 'enter_payroll_module'),
(679, 'can_enter_access_module', 212, 'enter_access_module'),
(680, 'can_enter_visitor_module', 212, 'enter_visitor_module'),
(681, 'can_enter_meeting_module', 212, 'enter_meeting_module'),
(682, 'can_enter_ep_module', 212, 'enter_ep_module'),
(683, 'Can view myuser', 29, 'view_myuser'),
(684, 'Can ChangePassword myuser', 29, 'change_password_myuser'),
(685, 'Can UserDelete myuser', 29, 'user_delete_myuser'),
(686, 'Can MarkerAll usernotification', 46, 'marker_all_usernotification'),
(687, 'Can add StaffToken', 213, 'add_stafftoken'),
(688, 'Can change StaffToken', 213, 'change_stafftoken'),
(689, 'Can delete StaffToken', 213, 'delete_stafftoken'),
(690, 'Can view StaffToken', 213, 'view_stafftoken'),
(691, 'Can view pendingleave', 102, 'view_pendingleave'),
(692, 'Can StaffAddLeave pendingleave', 102, 'staff_add_leave_pendingleave'),
(693, 'Can Revoke pendingleave', 102, 'revoke_pendingleave'),
(694, 'Can view pendingovertime', 103, 'view_pendingovertime'),
(695, 'Can StaffAddOverTime pendingovertime', 103, 'staff_add_over_time_pendingovertime'),
(696, 'Can Revoke pendingovertime', 103, 'revoke_pendingovertime'),
(697, 'Can view pendingmanuallog', 104, 'view_pendingmanuallog'),
(698, 'Can StaffAddManualLog pendingmanuallog', 104, 'staff_add_manual_log_pendingmanuallog'),
(699, 'Can Revoke pendingmanuallog', 104, 'revoke_pendingmanuallog'),
(700, 'Can view pendingtraining', 105, 'view_pendingtraining'),
(701, 'Can StaffAddTraining pendingtraining', 105, 'staff_add_training_pendingtraining'),
(702, 'Can Revoke pendingtraining', 105, 'revoke_pendingtraining'),
(703, 'Can view pendingchangeschedule', 106, 'view_pendingchangeschedule'),
(704, 'Can view approvalleave', 107, 'view_approvalleave'),
(705, 'Can StaffApproveLeave approvalleave', 107, 'staff_approve_leave_approvalleave'),
(706, 'Can Reject approvalleave', 107, 'reject_approvalleave'),
(707, 'Can view approvalovertime', 108, 'view_approvalovertime'),
(708, 'Can Approve approvalovertime', 108, 'approve_approvalovertime'),
(709, 'Can Reject approvalovertime', 108, 'reject_approvalovertime'),
(710, 'Can view approvalmanuallog', 109, 'view_approvalmanuallog'),
(711, 'Can Approve approvalmanuallog', 109, 'approve_approvalmanuallog'),
(712, 'Can Reject approvalmanuallog', 109, 'reject_approvalmanuallog'),
(713, 'Can view approvaltraining', 110, 'view_approvaltraining'),
(714, 'Can Approve approvaltraining', 110, 'approve_approvaltraining'),
(715, 'Can Reject approvaltraining', 110, 'reject_approvaltraining'),
(716, 'Can view approvalchangeschedule', 111, 'view_approvalchangeschedule'),
(717, 'Can Approve approvalchangeschedule', 111, 'approve_approvalchangeschedule'),
(718, 'Can Reject approvalchangeschedule', 111, 'reject_approvalchangeschedule'),
(719, 'Can view pendingreservation', 112, 'view_pendingreservation'),
(720, 'Can StaffAddReservation pendingreservation', 112, 'staff_add_reservation_pendingreservation'),
(721, 'Can Revoke pendingreservation', 112, 'revoke_pendingreservation'),
(722, 'Can view approvalreservation', 113, 'view_approvalreservation'),
(723, 'Can Approve approvalreservation', 113, 'approve_approvalreservation'),
(724, 'Can Reject approvalreservation', 113, 'reject_approvalreservation'),
(725, 'Can view pendingmeetingentity', 114, 'view_pendingmeetingentity'),
(726, 'Can Revoke pendingmeetingentity', 114, 'revoke_pendingmeetingentity'),
(727, 'Can AddMeetingAttender pendingmeetingentity', 114, 'add_meeting_attender_pendingmeetingentity'),
(728, 'Can view pendingmeetingmanuallog', 115, 'view_pendingmeetingmanuallog'),
(729, 'Can StaffAddMeetingManualLog pendingmeetingmanuallog', 115, 'staff_add_meeting_manual_log_pendingmeetingmanuallog'),
(730, 'Can Revoke pendingmeetingmanuallog', 115, 'revoke_pendingmeetingmanuallog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(731, 'Can view approvalmeetingentity', 116, 'view_approvalmeetingentity'),
(732, 'Can Approve approvalmeetingentity', 116, 'approve_approvalmeetingentity'),
(733, 'Can Reject approvalmeetingentity', 116, 'reject_approvalmeetingentity'),
(734, 'Can view approvalmeetingmanuallog', 117, 'view_approvalmeetingmanuallog'),
(735, 'Can Approve approvalmeetingmanuallog', 117, 'approve_approvalmeetingmanuallog'),
(736, 'Can Reject approvalmeetingmanuallog', 117, 'reject_approvalmeetingmanuallog'),
(737, 'Can delete app_model_announcement', 118, 'delete_announcement'),
(738, 'Can delete app_model_actionLog', 121, 'delete_appactionlog'),
(739, 'Can delete app_model_appList', 119, 'delete_applist'),
(740, 'Can delete app_model_notification', 120, 'delete_appnotification'),
(741, 'Can delete mobile_model_gpsForDepartment', 123, 'delete_gpsfordepartment'),
(742, 'Can change mobile_model_gpsForDepartment', 123, 'change_gpsfordepartment'),
(743, 'Can view mobile_model_gpsForDepartment', 123, 'view_gpsfordepartment'),
(744, 'Can delete mobile_model_gpsForEmployee', 122, 'delete_gpsforemployee'),
(745, 'Can change mobile_model_gpsForEmployee', 122, 'change_gpsforemployee'),
(746, 'Can view mobile_model_gpsForEmployee', 122, 'view_gpsforemployee'),
(747, 'Can add mobile_model_gpsLocation', 124, 'add_gpslocation'),
(748, 'Can change mobile_model_gpsLocation', 124, 'change_gpslocation'),
(749, 'Can delete mobile_model_gpsLocation', 124, 'delete_gpslocation'),
(750, 'Can view mobile_model_gpsLocation', 124, 'view_gpslocation'),
(751, 'Can add mobile api request log', 125, 'add_mobileapirequestlog'),
(752, 'Can change mobile api request log', 125, 'change_mobileapirequestlog'),
(753, 'Can delete mobile api request log', 125, 'delete_mobileapirequestlog'),
(754, 'Can view mobile api request log', 125, 'view_mobileapirequestlog'),
(755, 'Can view appactionlog', 121, 'view_appactionlog'),
(756, 'Can view applist', 119, 'view_applist'),
(757, 'Can PushNotification applist', 119, 'push_notification_applist'),
(758, 'Can ForceOffline applist', 119, 'force_offline_applist'),
(759, 'Can Disable applist', 119, 'disable_applist'),
(760, 'Can Enable applist', 119, 'enable_applist'),
(761, 'Can view announcement', 118, 'view_announcement'),
(762, 'Can AddPublicNotice announcement', 118, 'add_public_notice_announcement'),
(763, 'Can AddPrivateNotice announcement', 118, 'add_private_notice_announcement'),
(764, 'Can view appnotification', 120, 'view_appnotification'),
(765, 'Can AddGPSForDepartment gpsfordepartment', 123, 'add_g_p_s_for_department_gpsfordepartment'),
(766, 'Can AddGPSForEmployee gpsforemployee', 122, 'add_g_p_s_for_employee_gpsforemployee'),
(767, 'Can add payroll_model_deductionFormula', 127, 'add_deductionformula'),
(768, 'Can change payroll_model_deductionFormula', 127, 'change_deductionformula'),
(769, 'Can delete payroll_model_deductionFormula', 127, 'delete_deductionformula'),
(770, 'Can view payroll_model_deductionFormula', 127, 'view_deductionformula'),
(771, 'Can delete payroll_model_empLoan', 132, 'delete_emploan'),
(772, 'Can change payroll_model_empPayrollProfile', 126, 'change_emppayrollprofile'),
(773, 'Can view payroll_model_empPayrollProfile', 126, 'view_emppayrollprofile'),
(774, 'Can add payroll_model_exceptionFormula', 128, 'add_exceptionformula'),
(775, 'Can change payroll_model_exceptionFormula', 128, 'change_exceptionformula'),
(776, 'Can delete payroll_model_exceptionFormula', 128, 'delete_exceptionformula'),
(777, 'Can view payroll_model_exceptionFormula', 128, 'view_exceptionformula'),
(778, 'Can delete payroll_model_extraDeduction', 137, 'delete_extradeduction'),
(779, 'Can change payroll_model_extraDeduction', 137, 'change_extradeduction'),
(780, 'Can view payroll_model_extraDeduction', 137, 'view_extradeduction'),
(781, 'Can delete payroll_model_extraIncrease', 136, 'delete_extraincrease'),
(782, 'Can change payroll_model_extraIncrease', 136, 'change_extraincrease'),
(783, 'Can view payroll_model_extraIncrease', 136, 'view_extraincrease'),
(784, 'Can add payroll_model_increasementFormula', 129, 'add_increasementformula'),
(785, 'Can change payroll_model_increasementFormula', 129, 'change_increasementformula'),
(786, 'Can delete payroll_model_increasementFormula', 129, 'delete_increasementformula'),
(787, 'Can view payroll_model_increasementFormula', 129, 'view_increasementformula'),
(788, 'Can add payroll_model_leaveFormula', 130, 'add_leaveformula'),
(789, 'Can change payroll_model_leaveFormula', 130, 'change_leaveformula'),
(790, 'Can delete payroll_model_leaveFormula', 130, 'delete_leaveformula'),
(791, 'Can view payroll_model_leaveFormula', 130, 'view_leaveformula'),
(792, 'Can add payroll_model_overtimeFormula', 131, 'add_overtimeformula'),
(793, 'Can change payroll_model_overtimeFormula', 131, 'change_overtimeformula'),
(794, 'Can delete payroll_model_overtimeFormula', 131, 'delete_overtimeformula'),
(795, 'Can view payroll_model_overtimeFormula', 131, 'view_overtimeformula'),
(796, 'Can add payroll_model_payroll_payload', 214, 'add_payrollpayload'),
(797, 'Can change payroll_model_payroll_payload', 214, 'change_payrollpayload'),
(798, 'Can delete payroll_model_payroll_payload', 214, 'delete_payrollpayload'),
(799, 'Can view payroll_model_payroll_payload', 214, 'view_payrollpayload'),
(800, 'Can add payroll payload pay code', 215, 'add_payrollpayloadpaycode'),
(801, 'Can change payroll payload pay code', 215, 'change_payrollpayloadpaycode'),
(802, 'Can delete payroll payload pay code', 215, 'delete_payrollpayloadpaycode'),
(803, 'Can view payroll payload pay code', 215, 'view_payrollpayloadpaycode'),
(804, 'Can delete payroll_model_Reimbursement', 133, 'delete_reimbursement'),
(805, 'Can delete payroll_model_SalaryAdvance', 134, 'delete_salaryadvance'),
(806, 'Can delete payroll_model_salarystructure', 135, 'delete_salarystructure'),
(807, 'Can change payroll_model_salarystructure', 135, 'change_salarystructure'),
(808, 'Can view payroll_model_salarystructure', 135, 'view_salarystructure'),
(809, 'Can add Payroll Report Permission', 216, 'add_payrollreportpermission'),
(810, 'Can change Payroll Report Permission', 216, 'change_payrollreportpermission'),
(811, 'Can delete Payroll Report Permission', 216, 'delete_payrollreportpermission'),
(812, 'Can view Payroll Report Permission', 216, 'view_payrollreportpermission'),
(813, 'Can add Staff Payroll Report Permission', 217, 'add_staffpayrollreportpermission'),
(814, 'Can change Staff Payroll Report Permission', 217, 'change_staffpayrollreportpermission'),
(815, 'Can delete Staff Payroll Report Permission', 217, 'delete_staffpayrollreportpermission'),
(816, 'Can view Staff Payroll Report Permission', 217, 'view_staffpayrollreportpermission'),
(817, 'Can add payroll_model_empExpenseExemption', 141, 'add_empexpenseexemption'),
(818, 'Can change payroll_model_empExpenseExemption', 141, 'change_empexpenseexemption'),
(819, 'Can delete payroll_model_empExpenseExemption', 141, 'delete_empexpenseexemption'),
(820, 'Can view payroll_model_empExpenseExemption', 141, 'view_empexpenseexemption'),
(821, 'Can add payroll_model_socialSecurityDeduction', 138, 'add_socialsecuritydeduction'),
(822, 'Can change payroll_model_socialSecurityDeduction', 138, 'change_socialsecuritydeduction'),
(823, 'Can delete payroll_model_socialSecurityDeduction', 138, 'delete_socialsecuritydeduction'),
(824, 'Can view payroll_model_socialSecurityDeduction', 138, 'view_socialsecuritydeduction'),
(825, 'Can add payroll_model_specialPayment', 140, 'add_specialpayment'),
(826, 'Can change payroll_model_specialPayment', 140, 'change_specialpayment'),
(827, 'Can delete payroll_model_specialPayment', 140, 'delete_specialpayment'),
(828, 'Can view payroll_model_specialPayment', 140, 'view_specialpayment'),
(829, 'Can add payroll_model_taxDeduction', 139, 'add_taxdeduction'),
(830, 'Can change payroll_model_taxDeduction', 139, 'change_taxdeduction'),
(831, 'Can delete payroll_model_taxDeduction', 139, 'delete_taxdeduction'),
(832, 'Can view payroll_model_taxDeduction', 139, 'view_taxdeduction'),
(833, 'Can add Payroll Setting Permission', 218, 'add_payrollsettingpermission'),
(834, 'Can change Payroll Setting Permission', 218, 'change_payrollsettingpermission'),
(835, 'Can delete Payroll Setting Permission', 218, 'delete_payrollsettingpermission'),
(836, 'Can view Payroll Setting Permission', 218, 'view_payrollsettingpermission'),
(837, 'Can add payroll_model_payrollPayloadEmpExpenseExemption', 219, 'add_payrollpayloadexpenseexemption'),
(838, 'Can change payroll_model_payrollPayloadEmpExpenseExemption', 219, 'change_payrollpayloadexpenseexemption'),
(839, 'Can delete payroll_model_payrollPayloadEmpExpenseExemption', 219, 'delete_payrollpayloadexpenseexemption'),
(840, 'Can view payroll_model_payrollPayloadEmpExpenseExemption', 219, 'view_payrollpayloadexpenseexemption'),
(841, 'Can AddSpecialPaymentAction specialpayment', 140, 'add_special_payment_action_specialpayment'),
(842, 'Can view emploan', 132, 'view_emploan'),
(843, 'Can AddEmpLoanAction emploan', 132, 'add_emp_loan_action_emploan'),
(844, 'Can view reimbursement', 133, 'view_reimbursement'),
(845, 'Can AddReimbursementAction reimbursement', 133, 'add_reimbursement_action_reimbursement'),
(846, 'Can view salaryadvance', 134, 'view_salaryadvance'),
(847, 'Can AddSalaryAdvanceAction salaryadvance', 134, 'add_salary_advance_action_salaryadvance'),
(848, 'Can AddSalaryStructureAction salarystructure', 135, 'add_salary_structure_action_salarystructure'),
(849, 'Can AddExtraIncreaseAction extraincrease', 136, 'add_extra_increase_action_extraincrease'),
(850, 'Can AddExtraDeductionAction extradeduction', 137, 'add_extra_deduction_action_extradeduction'),
(851, 'Can AddEmpExpenseExemptionAction empexpenseexemption', 141, 'add_emp_expense_exemption_action_empexpenseexemption'),
(852, 'Can add acc_combination', 145, 'add_acccombination'),
(853, 'Can change acc_combination', 145, 'change_acccombination'),
(854, 'Can delete acc_combination', 145, 'delete_acccombination'),
(855, 'Can view acc_combination', 145, 'view_acccombination'),
(856, 'Can add acc_groups', 144, 'add_accgroups'),
(857, 'Can change acc_groups', 144, 'change_accgroups'),
(858, 'Can delete acc_groups', 144, 'delete_accgroups'),
(859, 'Can view acc_groups', 144, 'view_accgroups'),
(860, 'Can add acc_holiday', 143, 'add_accholiday'),
(861, 'Can change acc_holiday', 143, 'change_accholiday'),
(862, 'Can delete acc_holiday', 143, 'delete_accholiday'),
(863, 'Can view acc_holiday', 143, 'view_accholiday'),
(864, 'Can add acc_privilege', 146, 'add_accprivilege'),
(865, 'Can change acc_privilege', 146, 'change_accprivilege'),
(866, 'Can delete acc_privilege', 146, 'delete_accprivilege'),
(867, 'Can view acc_privilege', 146, 'view_accprivilege'),
(868, 'Can change menu_access_terminal', 147, 'change_accterminal'),
(869, 'Can view menu_access_terminal', 147, 'view_accterminal'),
(870, 'Can add acc_timezone', 142, 'add_acctimezone'),
(871, 'Can change acc_timezone', 142, 'change_acctimezone'),
(872, 'Can delete acc_timezone', 142, 'delete_acctimezone'),
(873, 'Can view acc_timezone', 142, 'view_acctimezone'),
(874, 'Can CloneToArea acctimezone', 142, 'clone_to_area_acctimezone'),
(875, 'Can CloneToArea accholiday', 143, 'clone_to_area_accholiday'),
(876, 'Can CloneToArea accgroups', 144, 'clone_to_area_accgroups'),
(877, 'Can SetEmployeeGroup accgroups', 144, 'set_employee_group_accgroups'),
(878, 'Can CloneToArea acccombination', 145, 'clone_to_area_acccombination'),
(879, 'Can AdjustEmployeePrivilege accprivilege', 146, 'adjust_employee_privilege_accprivilege'),
(880, 'Can OpenDoor accterminal', 147, 'open_door_accterminal'),
(881, 'Can CancelAlarm accterminal', 147, 'cancel_alarm_accterminal'),
(882, 'Can SetParameter accterminal', 147, 'set_parameter_accterminal'),
(883, 'Can add visitor.field.reason', 150, 'add_reason'),
(884, 'Can change visitor.field.reason', 150, 'change_reason'),
(885, 'Can delete visitor.field.reason', 150, 'delete_reason'),
(886, 'Can view visitor.field.reason', 150, 'view_reason'),
(887, 'Can change menu.visitor.reservation', 149, 'change_reservation'),
(888, 'Can delete menu.visitor.reservation', 149, 'delete_reservation'),
(889, 'Can add menu.visitor', 148, 'add_visitor'),
(890, 'Can change menu.visitor', 148, 'change_visitor'),
(891, 'Can delete menu.visitor', 148, 'delete_visitor'),
(892, 'Can view menu.visitor', 148, 'view_visitor'),
(893, 'Can change visitor.model.configuration', 152, 'change_visitorconfig'),
(894, 'Can view visitor.model.configuration', 152, 'view_visitorconfig'),
(895, 'Can delete model.visitor.log', 151, 'delete_visitorlog'),
(896, 'Can view model.visitor.log', 151, 'view_visitorlog'),
(897, 'Can view visitor.model.VisitorBioData', 154, 'view_visitorbiodata'),
(898, 'Can delete visitor.model.VisitorBioPhoto', 153, 'delete_visitorbiophoto'),
(899, 'Can view visitor.model.VisitorBioPhoto', 153, 'view_visitorbiophoto'),
(900, 'Can add visitor.models.visitorTransaction', 155, 'add_visitortransaction'),
(901, 'Can change visitor.models.visitorTransaction', 155, 'change_visitortransaction'),
(902, 'Can delete visitor.models.visitorTransaction', 155, 'delete_visitortransaction'),
(903, 'Can view visitor.models.visitorTransaction', 155, 'view_visitortransaction'),
(904, 'Can ExitRegistration visitor', 148, 'exit_registration_visitor'),
(905, 'Can view reservation', 149, 'view_reservation'),
(906, 'Can AddReservation reservation', 149, 'add_reservation_reservation'),
(907, 'Can Approve reservation', 149, 'approve_reservation'),
(908, 'Can Reject reservation', 149, 'reject_reservation'),
(909, 'Can Revoke reservation', 149, 'revoke_reservation'),
(910, 'Can ReservationQRCode reservation', 149, 'reservation_q_r_code_reservation'),
(911, 'Can EnableVisitor visitorlog', 151, 'enable_visitor_visitorlog'),
(912, 'Can DisableVisitor visitorlog', 151, 'disable_visitor_visitorlog'),
(913, 'Can VisitorBioPhotoApprove visitorbiophoto', 153, 'visitor_bio_photo_approve_visitorbiophoto'),
(914, 'Can VisitorBioPhotoQRCode visitorbiophoto', 153, 'visitor_bio_photo_q_r_code_visitorbiophoto'),
(915, 'Can add meeting.models.meetingEntity', 158, 'add_meetingentity'),
(916, 'Can change meeting.models.meetingEntity', 158, 'change_meetingentity'),
(917, 'Can delete meeting.models.meetingEntity', 158, 'delete_meetingentity'),
(918, 'Can view meeting.models.meetingEntity', 158, 'view_meetingentity'),
(919, 'Can delete meeting.models.manualLog', 159, 'delete_meetingmanuallog'),
(920, 'Can change meeting.models.manualLog', 159, 'change_meetingmanuallog'),
(921, 'Can view meeting.models.manualLog', 159, 'view_meetingmanuallog'),
(922, 'Can add meeting.models.meetingPayloadBase', 220, 'add_meetingpayloadbase'),
(923, 'Can change meeting.models.meetingPayloadBase', 220, 'change_meetingpayloadbase'),
(924, 'Can delete meeting.models.meetingPayloadBase', 220, 'delete_meetingpayloadbase'),
(925, 'Can view meeting.models.meetingPayloadBase', 220, 'view_meetingpayloadbase'),
(926, 'Can delete meeting.models.meetingRoom', 156, 'delete_meetingroom'),
(927, 'Can change meeting.models.meetingRoom', 156, 'change_meetingroom'),
(928, 'Can view meeting.models.meetingRoom', 156, 'view_meetingroom'),
(929, 'Can add meeting.models.device', 157, 'add_meetingroomdevice'),
(930, 'Can change meeting.models.device', 157, 'change_meetingroomdevice'),
(931, 'Can delete meeting.models.device', 157, 'delete_meetingroomdevice'),
(932, 'Can view meeting.models.device', 157, 'view_meetingroomdevice'),
(933, 'Can view meeting.models.transaction', 160, 'view_meetingtransaction'),
(934, 'Can add Meeting Report Permission', 221, 'add_meetingreportpermission'),
(935, 'Can change Meeting Report Permission', 221, 'change_meetingreportpermission'),
(936, 'Can delete Meeting Report Permission', 221, 'delete_meetingreportpermission'),
(937, 'Can view Meeting Report Permission', 221, 'view_meetingreportpermission'),
(938, 'Can AddMeetingRoom meetingroom', 156, 'add_meeting_room_meetingroom'),
(939, 'Can MeetingCalculation meetingentity', 158, 'meeting_calculation_meetingentity'),
(940, 'Can Approve meetingentity', 158, 'approve_meetingentity'),
(941, 'Can Revoke meetingentity', 158, 'revoke_meetingentity'),
(942, 'Can Reject meetingentity', 158, 'reject_meetingentity'),
(943, 'Can AddMeetingAttender meetingentity', 158, 'add_meeting_attender_meetingentity'),
(944, 'Can SyncMeeting2Device meetingentity', 158, 'sync_meeting2_device_meetingentity'),
(945, 'Can AddMeetingManualLog meetingmanuallog', 159, 'add_meeting_manual_log_meetingmanuallog'),
(946, 'Can Approve meetingmanuallog', 159, 'approve_meetingmanuallog'),
(947, 'Can Reject meetingmanuallog', 159, 'reject_meetingmanuallog'),
(948, 'Can Revoke meetingmanuallog', 159, 'revoke_meetingmanuallog'),
(949, 'Can add ep.models.epSetup', 161, 'add_epsetup'),
(950, 'Can change ep.models.epSetup', 161, 'change_epsetup'),
(951, 'Can delete ep.models.epSetup', 161, 'delete_epsetup'),
(952, 'Can view ep.models.epSetup', 161, 'view_epsetup'),
(953, 'Can add ep.models.epTransaction', 162, 'add_eptransaction'),
(954, 'Can change ep.models.epTransaction', 162, 'change_eptransaction'),
(955, 'Can delete ep.models.epTransaction', 162, 'delete_eptransaction'),
(956, 'Can view ep.models.epTransaction', 162, 'view_eptransaction'),
(957, 'Can add Ep Dashboard Permission', 222, 'add_epdashboardpermission'),
(958, 'Can change Ep Dashboard Permission', 222, 'change_epdashboardpermission'),
(959, 'Can delete Ep Dashboard Permission', 222, 'delete_epdashboardpermission'),
(960, 'Can view Ep Dashboard Permission', 222, 'view_epdashboardpermission'),
(961, 'Can add Report Permission', 223, 'add_epreportpermission'),
(962, 'Can change Report Permission', 223, 'change_epreportpermission'),
(963, 'Can delete Report Permission', 223, 'delete_epreportpermission'),
(964, 'Can view Report Permission', 223, 'view_epreportpermission');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(128) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `emp_pin` varchar(30) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `tele_phone` varchar(30) DEFAULT NULL,
  `auth_time_dept` int(11) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `login_type` int(11) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `can_manage_all_dept` tinyint(1) NOT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `login_ip` varchar(32) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `assign_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `password`, `update_time`, `first_name`, `last_name`, `emp_pin`, `email`, `tele_phone`, `auth_time_dept`, `login_id`, `login_type`, `login_count`, `is_staff`, `is_active`, `is_superuser`, `is_public`, `can_manage_all_dept`, `del_flag`, `date_joined`, `last_login`, `session_key`, `login_ip`, `photo`, `assign_company`) VALUES
(1, 'timothyzkt', 'pbkdf2_sha256$390000$NAX39sBxhV1tJlQ3iYtKMn$ECIPQuuu75XOjZXdniU2jdNeO2MOmYTH6oOKECAFWTE=', '2024-03-06 14:56:52.056170', '', '', NULL, 'henantimothy@gmail.com', NULL, 0, 0, 0, 11, 1, 1, 1, 0, 0, 0, '2024-03-06 14:56:52.056170', '2024-03-18 08:24:47.514868', NULL, NULL, 'user/default.gif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_auth_area`
--

CREATE TABLE `auth_user_auth_area` (
  `id` int(11) NOT NULL,
  `myuser_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_auth_dept`
--

CREATE TABLE `auth_user_auth_dept` (
  `id` int(11) NOT NULL,
  `myuser_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_profile`
--

CREATE TABLE `auth_user_profile` (
  `id` int(11) NOT NULL,
  `login_name` varchar(30) NOT NULL,
  `pin_tabs` longtext NOT NULL,
  `disabled_fields` longtext NOT NULL,
  `column_order` longtext NOT NULL,
  `preferences` longtext NOT NULL,
  `pwd_update_time` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `employee_fields` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_profile`
--

INSERT INTO `auth_user_profile` (`id`, `login_name`, `pin_tabs`, `disabled_fields`, `column_order`, `preferences`, `pwd_update_time`, `user_id`, `employee_fields`) VALUES
(1, 'timothyzkt', '', '', '', '{\"need_set_protection_question\": false}', NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_adminlog`
--

CREATE TABLE `base_adminlog` (
  `id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `targets` longtext DEFAULT NULL,
  `targets_repr` longtext DEFAULT NULL,
  `action_status` smallint(6) NOT NULL,
  `description` longtext DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `can_routable` tinyint(1) NOT NULL,
  `op_time` datetime(6) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_adminlog`
--

INSERT INTO `base_adminlog` (`id`, `action`, `targets`, `targets_repr`, `action_status`, `description`, `ip_address`, `can_routable`, `op_time`, `content_type_id`, `user_id`) VALUES
(1, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-06 14:57:03.218692', 29, 1),
(2, 'Add', '[2]', 'Medan', 0, 'Department Name=Medan', '::1', 0, '2024-03-06 14:57:33.537805', 52, 1),
(3, 'Modify', '[2]', 'Medan', 0, 'Superior(None->Department)', '::1', 0, '2024-03-06 15:00:22.010156', 52, 1),
(4, 'Modify', '[2]', 'Medan', 0, '', '::1', 0, '2024-03-06 15:00:53.346677', 52, 1),
(5, 'Delete', '', 'Medan', 0, '', '::1', 0, '2024-03-06 15:01:10.848980', 52, 1),
(6, 'Add', '[2]', 'Medan', 0, 'Area Name=Medan', '::1', 0, '2024-03-06 15:01:20.252027', 50, 1),
(7, 'Add', '[1]', 'CL9M212260015', 0, 'Device IP=192.168.1.201,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', '::1', 0, '2024-03-06 15:16:59.127403', 58, 1),
(8, 'Delete', '', 'CL9M212260015', 0, '', '::1', 0, '2024-03-06 15:18:44.252040', 58, 1),
(9, 'Add', '[2]', 'CL9M212260015', 0, 'Device IP=192.168.200.66,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', '::1', 0, '2024-03-06 15:19:14.448571', 58, 1),
(10, 'Delete', '', 'CL9M212260015', 0, '', '::1', 0, '2024-03-06 15:19:30.365686', 58, 1),
(11, 'Add', '[3]', 'CL9M212260015', 0, 'Device IP=192.168.200.254,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=Mini AC,Area=Medan', '::1', 0, '2024-03-06 15:20:03.505612', 58, 1),
(12, 'Delete', '', 'CL9M212260015', 0, '', '::1', 0, '2024-03-06 15:20:35.700222', 58, 1),
(13, 'Add', '[4]', 'CL9M212260015', 0, 'Device IP=255.255.255.0,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', '::1', 0, '2024-03-06 15:21:06.594412', 58, 1),
(14, 'Delete', '', 'CL9M212260015', 0, '', '::1', 0, '2024-03-06 15:21:16.183180', 58, 1),
(15, 'Add', '[5]', 'CL9M212260015', 0, 'Device IP=192.168.200.77,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', '::1', 0, '2024-03-06 15:24:07.028624', 58, 1),
(16, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-06 17:42:13.144850', 29, 1),
(17, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-13 07:59:35.290067', 29, 1),
(18, 'Delete', '', 'CL9M212260015', 0, '', '::1', 0, '2024-03-13 07:59:48.103259', 58, 1),
(19, 'New Area', '[]', '', -1, '(1048, \"Column \'company_id\' cannot be null\")', '::1', 0, '2024-03-13 08:00:25.128975', 58, 1),
(20, 'New Area', '[]', '', -1, 'Duplicate area code', '::1', 0, '2024-03-13 08:00:32.074225', 58, 1),
(21, 'New Area', '[]', '', -1, '(1048, \"Column \'company_id\' cannot be null\")', '::1', 0, '2024-03-13 08:00:36.334261', 58, 1),
(22, 'New Area', '[]', '', -1, '(1048, \"Column \'company_id\' cannot be null\")', '::1', 0, '2024-03-13 08:00:50.380244', 58, 1),
(23, 'Add', '[6]', 'CL', 0, 'Device IP=192.168.200.120,Request Heartbeat=5,Serial Number=CL,Device Name=CL,Area=Medan', '::1', 0, '2024-03-13 08:04:06.933411', 58, 1),
(24, 'Modify', '[7]', 'CL9M212260015', 0, 'Area(1->Medan)', '::1', 0, '2024-03-13 08:06:19.917942', 58, 1),
(25, 'Delete', '', 'CL', 0, '', '::1', 0, '2024-03-13 08:09:16.096096', 58, 1),
(26, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-13 10:41:22.737771', 29, 1),
(27, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-13 11:23:16.900271', 29, 1),
(28, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-13 20:32:23.272965', 29, 1),
(29, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-14 23:24:25.001945', 29, 1),
(30, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-15 11:03:15.514654', 29, 1),
(31, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-18 00:20:18.443614', 29, 1),
(32, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-18 08:23:18.799646', 29, 1),
(33, 'Login', '[1]', 'timothyzkt', 0, '', '::1', 0, '2024-03-18 08:24:47.598472', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_attparamdepts`
--

CREATE TABLE `base_attparamdepts` (
  `id` int(11) NOT NULL,
  `rulename` varchar(40) NOT NULL,
  `deptid` int(11) NOT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `optime` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_autoattexporttask`
--

CREATE TABLE `base_autoattexporttask` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `task_code` varchar(30) NOT NULL,
  `task_name` varchar(30) NOT NULL,
  `params` longtext DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  `process_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_autoexporttask`
--

CREATE TABLE `base_autoexporttask` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `task_code` varchar(30) NOT NULL,
  `task_name` varchar(30) NOT NULL,
  `params` longtext DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  `process_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_autoimporttask`
--

CREATE TABLE `base_autoimporttask` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `task_code` varchar(30) NOT NULL,
  `task_name` varchar(30) NOT NULL,
  `params` longtext DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  `process_time` datetime(6) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_bookmark`
--

CREATE TABLE `base_bookmark` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `filters` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `time_saved` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_dbbackuplog`
--

CREATE TABLE `base_dbbackuplog` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `db_type` varchar(50) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `backup_file` varchar(100) NOT NULL,
  `backup_time` datetime(6) NOT NULL,
  `backup_status` smallint(6) NOT NULL,
  `remark` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_emailtemplate`
--

CREATE TABLE `base_emailtemplate` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `template` longtext NOT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_emailtemplate`
--

INSERT INTO `base_emailtemplate` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `category`, `sub_category`, `event`, `receiver`, `subject`, `template`, `enable`) VALUES
(1, '2024-03-06 14:44:00.233679', NULL, '2024-03-06 14:44:00.233679', NULL, 0, 11, 0, 1, 1, NULL, '', 0),
(2, '2024-03-06 14:44:00.235721', NULL, '2024-03-06 14:44:00.235721', NULL, 0, 11, 0, 2, 1, NULL, '', 0),
(3, '2024-03-06 14:44:00.236734', NULL, '2024-03-06 14:44:00.236734', NULL, 0, 11, 0, 3, 1, NULL, '', 0),
(4, '2024-03-06 14:44:00.238744', NULL, '2024-03-06 14:44:00.238744', NULL, 0, 11, 0, 7, 1, NULL, '', 0),
(5, '2024-03-06 14:44:00.241749', NULL, '2024-03-06 14:44:00.241749', NULL, 0, 12, 121, 4, 1, NULL, '', 0),
(6, '2024-03-06 14:44:00.265802', NULL, '2024-03-06 14:44:00.265802', NULL, 0, 12, 121, 5, 1, NULL, '', 0),
(7, '2024-03-06 14:44:00.266803', NULL, '2024-03-06 14:44:00.266803', NULL, 0, 12, 121, 6, 1, NULL, '', 0),
(8, '2024-03-06 14:44:00.268794', NULL, '2024-03-06 14:44:00.268794', NULL, 0, 12, 122, 4, 1, NULL, '', 0),
(9, '2024-03-06 14:44:00.269793', NULL, '2024-03-06 14:44:00.269793', NULL, 0, 12, 122, 5, 1, NULL, '', 0),
(10, '2024-03-06 14:44:00.270793', NULL, '2024-03-06 14:44:00.270793', NULL, 0, 12, 122, 6, 1, NULL, '', 0),
(11, '2024-03-06 14:44:00.272803', NULL, '2024-03-06 14:44:00.272803', NULL, 0, 12, 123, 4, 1, NULL, '', 0),
(12, '2024-03-06 14:44:00.273802', NULL, '2024-03-06 14:44:00.273802', NULL, 0, 12, 123, 5, 1, NULL, '', 0),
(13, '2024-03-06 14:44:00.274802', NULL, '2024-03-06 14:44:00.274802', NULL, 0, 12, 123, 6, 1, NULL, '', 0),
(14, '2024-03-06 14:44:00.275793', NULL, '2024-03-06 14:44:00.275793', NULL, 0, 12, 124, 4, 1, NULL, '', 0),
(15, '2024-03-06 14:44:00.277803', NULL, '2024-03-06 14:44:00.277803', NULL, 0, 12, 124, 5, 1, NULL, '', 0),
(16, '2024-03-06 14:44:00.278802', NULL, '2024-03-06 14:44:00.278802', NULL, 0, 12, 124, 6, 1, NULL, '', 0),
(17, '2024-03-06 14:44:00.279688', NULL, '2024-03-06 14:44:00.279688', NULL, 0, 12, 125, 4, 1, NULL, '', 0),
(18, '2024-03-06 14:44:00.281697', NULL, '2024-03-06 14:44:00.281697', NULL, 0, 12, 125, 5, 1, NULL, '', 0),
(19, '2024-03-06 14:44:00.282694', NULL, '2024-03-06 14:44:00.282694', NULL, 0, 12, 125, 6, 1, NULL, '', 0),
(20, '2024-03-06 14:44:00.283705', NULL, '2024-03-06 14:44:00.283705', NULL, 0, 13, 1310, 4, 1, NULL, '', 0),
(21, '2024-03-06 14:44:00.284704', NULL, '2024-03-06 14:44:00.284704', NULL, 0, 13, 1310, 5, 1, NULL, '', 0),
(22, '2024-03-06 14:44:00.285750', NULL, '2024-03-06 14:44:00.285750', NULL, 0, 13, 1310, 6, 1, NULL, '', 0),
(23, '2024-03-06 14:44:00.287755', NULL, '2024-03-06 14:44:00.287755', NULL, 0, 13, 1311, 4, 1, NULL, '', 0),
(24, '2024-03-06 14:44:00.288756', NULL, '2024-03-06 14:44:00.288756', NULL, 0, 13, 1311, 5, 1, NULL, '', 0),
(25, '2024-03-06 14:44:00.289765', NULL, '2024-03-06 14:44:00.289765', NULL, 0, 13, 1311, 6, 1, NULL, '', 0),
(26, '2024-03-06 14:44:00.290756', NULL, '2024-03-06 14:44:00.290756', NULL, 0, 14, 149, 4, 1, NULL, '', 0),
(27, '2024-03-06 14:44:00.292768', NULL, '2024-03-06 14:44:00.292768', NULL, 0, 14, 149, 5, 1, NULL, '', 0),
(28, '2024-03-06 14:44:00.293766', NULL, '2024-03-06 14:44:00.293766', NULL, 0, 14, 149, 6, 1, NULL, '', 0),
(29, '2024-03-06 14:44:00.294766', NULL, '2024-03-06 14:44:00.294766', NULL, 0, 15, 0, 201, 1, NULL, '', 0),
(30, '2024-03-06 14:44:00.295755', NULL, '2024-03-06 14:44:00.295755', NULL, 0, 16, 0, 202, 1, NULL, '', 0),
(31, '2024-03-06 14:44:00.297771', NULL, '2024-03-06 14:44:00.297771', NULL, 0, 17, 0, 203, 1, NULL, '', 0),
(32, '2024-03-06 14:44:00.298770', NULL, '2024-03-06 14:44:00.298770', NULL, 0, 21, 0, 1, 2, NULL, '', 0),
(33, '2024-03-06 14:44:00.299770', NULL, '2024-03-06 14:44:00.299770', NULL, 0, 21, 0, 2, 2, NULL, '', 0),
(34, '2024-03-06 14:44:00.300760', NULL, '2024-03-06 14:44:00.300760', NULL, 0, 21, 0, 3, 2, NULL, '', 0),
(35, '2024-03-06 14:44:00.302755', NULL, '2024-03-06 14:44:00.302755', NULL, 0, 21, 0, 7, 2, NULL, '', 0),
(36, '2024-03-06 14:44:00.303768', NULL, '2024-03-06 14:44:00.303768', NULL, 0, 22, 0, 201, 2, NULL, '', 0),
(37, '2024-03-06 14:44:00.304782', NULL, '2024-03-06 14:44:00.304782', NULL, 0, 32, 321, 4, 3, NULL, '', 0),
(38, '2024-03-06 14:44:00.305767', NULL, '2024-03-06 14:44:00.305767', NULL, 0, 32, 321, 5, 3, NULL, '', 0),
(39, '2024-03-06 14:44:00.307082', NULL, '2024-03-06 14:44:00.307082', NULL, 0, 32, 321, 6, 3, NULL, '', 0),
(40, '2024-03-06 14:44:00.309102', NULL, '2024-03-06 14:44:00.309102', NULL, 0, 32, 322, 4, 3, NULL, '', 0),
(41, '2024-03-06 14:44:00.310093', NULL, '2024-03-06 14:44:00.310093', NULL, 0, 32, 322, 5, 3, NULL, '', 0),
(42, '2024-03-06 14:44:00.311105', NULL, '2024-03-06 14:44:00.311105', NULL, 0, 32, 322, 6, 3, NULL, '', 0),
(43, '2024-03-06 14:44:00.312568', NULL, '2024-03-06 14:44:00.312568', NULL, 0, 32, 323, 4, 3, NULL, '', 0),
(44, '2024-03-06 14:44:00.313579', NULL, '2024-03-06 14:44:00.313579', NULL, 0, 32, 323, 5, 3, NULL, '', 0),
(45, '2024-03-06 14:44:00.314579', NULL, '2024-03-06 14:44:00.314579', NULL, 0, 32, 323, 6, 3, NULL, '', 0),
(46, '2024-03-06 14:44:00.315569', NULL, '2024-03-06 14:44:00.315569', NULL, 0, 32, 324, 4, 3, NULL, '', 0),
(47, '2024-03-06 14:44:00.316568', NULL, '2024-03-06 14:44:00.316568', NULL, 0, 32, 324, 5, 3, NULL, '', 0),
(48, '2024-03-06 14:44:00.318569', NULL, '2024-03-06 14:44:00.318569', NULL, 0, 32, 324, 6, 3, NULL, '', 0),
(49, '2024-03-06 14:44:00.319579', NULL, '2024-03-06 14:44:00.319579', NULL, 0, 32, 325, 4, 3, NULL, '', 0),
(50, '2024-03-06 14:44:00.320578', NULL, '2024-03-06 14:44:00.320578', NULL, 0, 32, 325, 5, 3, NULL, '', 0),
(51, '2024-03-06 14:44:00.321568', NULL, '2024-03-06 14:44:00.321568', NULL, 0, 32, 325, 6, 3, NULL, '', 0),
(52, '2024-03-06 14:44:00.322568', NULL, '2024-03-06 14:44:00.322568', NULL, 0, 33, 3310, 4, 3, NULL, '', 0),
(53, '2024-03-06 14:44:00.324578', NULL, '2024-03-06 14:44:00.324578', NULL, 0, 33, 3310, 5, 3, NULL, '', 0),
(54, '2024-03-06 14:44:00.325568', NULL, '2024-03-06 14:44:00.325568', NULL, 0, 33, 3310, 6, 3, NULL, '', 0),
(55, '2024-03-06 14:44:00.327081', NULL, '2024-03-06 14:44:00.327081', NULL, 0, 33, 3311, 4, 3, NULL, '', 0),
(56, '2024-03-06 14:44:00.328302', NULL, '2024-03-06 14:44:00.328302', NULL, 0, 33, 3311, 5, 3, NULL, '', 0),
(57, '2024-03-06 14:44:00.329322', NULL, '2024-03-06 14:44:00.329322', NULL, 0, 33, 3311, 6, 3, NULL, '', 0),
(58, '2024-03-06 14:44:00.330322', NULL, '2024-03-06 14:44:00.330322', NULL, 0, 34, 349, 4, 3, NULL, '', 0),
(59, '2024-03-06 14:44:00.332333', NULL, '2024-03-06 14:44:00.332333', NULL, 0, 34, 349, 5, 3, NULL, '', 0),
(60, '2024-03-06 14:44:00.333320', NULL, '2024-03-06 14:44:00.333320', NULL, 0, 34, 349, 6, 3, NULL, '', 0),
(61, '2024-03-06 14:44:00.334319', NULL, '2024-03-06 14:44:00.334319', NULL, 0, 42, 421, 4, 4, NULL, '', 0),
(62, '2024-03-06 14:44:00.336320', NULL, '2024-03-06 14:44:00.336320', NULL, 0, 42, 421, 5, 4, NULL, '', 0),
(63, '2024-03-06 14:44:00.337320', NULL, '2024-03-06 14:44:00.337320', NULL, 0, 42, 421, 6, 4, NULL, '', 0),
(64, '2024-03-06 14:44:00.338332', NULL, '2024-03-06 14:44:00.338332', NULL, 0, 42, 422, 4, 4, NULL, '', 0),
(65, '2024-03-06 14:44:00.339320', NULL, '2024-03-06 14:44:00.339320', NULL, 0, 42, 422, 5, 4, NULL, '', 0),
(66, '2024-03-06 14:44:00.341321', NULL, '2024-03-06 14:44:00.341321', NULL, 0, 42, 422, 6, 4, NULL, '', 0),
(67, '2024-03-06 14:44:00.342320', NULL, '2024-03-06 14:44:00.342320', NULL, 0, 42, 423, 4, 4, NULL, '', 0),
(68, '2024-03-06 14:44:00.344321', NULL, '2024-03-06 14:44:00.344321', NULL, 0, 42, 423, 5, 4, NULL, '', 0),
(69, '2024-03-06 14:44:00.345320', NULL, '2024-03-06 14:44:00.345320', NULL, 0, 42, 423, 6, 4, NULL, '', 0),
(70, '2024-03-06 14:44:00.346322', NULL, '2024-03-06 14:44:00.346322', NULL, 0, 42, 424, 4, 4, NULL, '', 0),
(71, '2024-03-06 14:44:00.347320', NULL, '2024-03-06 14:44:00.347320', NULL, 0, 42, 424, 5, 4, NULL, '', 0),
(72, '2024-03-06 14:44:00.349334', NULL, '2024-03-06 14:44:00.349334', NULL, 0, 42, 424, 6, 4, NULL, '', 0),
(73, '2024-03-06 14:44:00.350337', NULL, '2024-03-06 14:44:00.350337', NULL, 0, 42, 425, 4, 4, NULL, '', 0),
(74, '2024-03-06 14:44:00.351319', NULL, '2024-03-06 14:44:00.351319', NULL, 0, 42, 425, 5, 4, NULL, '', 0),
(75, '2024-03-06 14:44:00.353320', NULL, '2024-03-06 14:44:00.353320', NULL, 0, 42, 425, 6, 4, NULL, '', 0),
(76, '2024-03-06 14:44:00.354331', NULL, '2024-03-06 14:44:00.354331', NULL, 0, 43, 4310, 4, 4, NULL, '', 0),
(77, '2024-03-06 14:44:00.355336', NULL, '2024-03-06 14:44:00.355336', NULL, 0, 43, 4310, 5, 4, NULL, '', 0),
(78, '2024-03-06 14:44:00.356844', NULL, '2024-03-06 14:44:00.356844', NULL, 0, 43, 4310, 6, 4, NULL, '', 0),
(79, '2024-03-06 14:44:00.358282', NULL, '2024-03-06 14:44:00.358282', NULL, 0, 43, 4311, 4, 4, NULL, '', 0),
(80, '2024-03-06 14:44:00.359282', NULL, '2024-03-06 14:44:00.359282', NULL, 0, 43, 4311, 5, 4, NULL, '', 0),
(81, '2024-03-06 14:44:00.360283', NULL, '2024-03-06 14:44:00.360283', NULL, 0, 43, 4311, 6, 4, NULL, '', 0),
(82, '2024-03-06 14:44:00.361286', NULL, '2024-03-06 14:44:00.361286', NULL, 0, 44, 449, 4, 4, NULL, '', 0),
(83, '2024-03-06 14:44:00.362283', NULL, '2024-03-06 14:44:00.362283', NULL, 0, 44, 449, 5, 4, NULL, '', 0),
(84, '2024-03-06 14:44:00.364282', NULL, '2024-03-06 14:44:00.364282', NULL, 0, 44, 449, 6, 4, NULL, '', 0),
(85, '2024-03-06 14:44:00.365287', NULL, '2024-03-06 14:44:00.365287', NULL, 0, 0, 0, 101, 5, NULL, '', 0),
(86, '2024-03-06 14:44:00.366283', NULL, '2024-03-06 14:44:00.366283', NULL, 0, 0, 0, 102, 5, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `base_eventalertsetting`
--

CREATE TABLE `base_eventalertsetting` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `sub_module` varchar(50) NOT NULL,
  `email_alert` tinyint(1) NOT NULL,
  `app_alert` tinyint(1) NOT NULL,
  `sms_alert` tinyint(1) NOT NULL,
  `whatapp_alert` tinyint(1) NOT NULL,
  `facebook_alert` tinyint(1) NOT NULL,
  `lineapp_alert` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_eventalertsetting`
--

INSERT INTO `base_eventalertsetting` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `event_id`, `event`, `module`, `sub_module`, `email_alert`, `app_alert`, `sms_alert`, `whatapp_alert`, `facebook_alert`, `lineapp_alert`) VALUES
(1, '2024-03-06 14:44:00.371283', NULL, '2024-03-06 14:44:00.371283', NULL, 0, 1, 'menu_att_manualLog', 'menu_attendance', 'menu_group_approvalManagement', 1, 1, 0, 0, 0, 0),
(2, '2024-03-06 14:44:00.373286', NULL, '2024-03-06 14:44:00.373286', NULL, 0, 2, 'menu_att_leave', 'menu_attendance', 'menu_group_approvalManagement', 1, 1, 0, 0, 0, 0),
(3, '2024-03-06 14:44:00.374611', NULL, '2024-03-06 14:44:00.374611', NULL, 0, 3, 'menu_att_overtime', 'menu_attendance', 'menu_group_approvalManagement', 1, 1, 0, 0, 0, 0),
(4, '2024-03-06 14:44:00.375653', NULL, '2024-03-06 14:44:00.375653', NULL, 0, 4, 'menu_att_training', 'menu_attendance', 'menu_group_approvalManagement', 1, 1, 0, 0, 0, 0),
(5, '2024-03-06 14:44:00.376709', NULL, '2024-03-06 14:44:00.376709', NULL, 0, 5, 'menu_att_adjustSchedule', 'menu_attendance', 'menu_group_approvalManagement', 1, 1, 0, 0, 0, 0),
(6, '2024-03-06 14:44:00.377723', NULL, '2024-03-06 14:44:00.377723', NULL, 0, 6, 'payCode.default.lateIn', 'menu_attendance', 'menu_group_att_rule', 1, 1, 0, 0, 0, 0),
(7, '2024-03-06 14:44:00.379732', NULL, '2024-03-06 14:44:00.379732', NULL, 0, 7, 'payCode.default.earlyOut', 'menu_attendance', 'menu_group_att_rule', 1, 1, 0, 0, 0, 0),
(8, '2024-03-06 14:44:00.380733', NULL, '2024-03-06 14:44:00.380733', NULL, 0, 8, 'payCode.default.absence', 'menu_attendance', 'menu_group_att_rule', 1, 1, 0, 0, 0, 0),
(9, '2024-03-06 14:44:00.381722', NULL, '2024-03-06 14:44:00.381722', NULL, 0, 9, 'menu.visitor.registration', 'menu.visitor.registration.visitor', 'menu.visitor.reservation', 1, 0, 0, 0, 0, 0),
(10, '2024-03-06 14:44:00.383732', NULL, '2024-03-06 14:44:00.383732', NULL, 0, 10, 'meeting.menus.meeting', 'meeting.menus.meeting', 'meeting.menus.meeting', 1, 0, 0, 0, 0, 0),
(11, '2024-03-06 14:44:00.384732', NULL, '2024-03-06 14:44:00.384732', NULL, 0, 11, 'meeting.menus.manualLog', 'meeting.menus.meeting', 'meeting.menus.manualLog', 1, 0, 0, 0, 0, 0),
(12, '2024-03-06 14:44:00.385731', NULL, '2024-03-06 14:44:00.385731', NULL, 0, 12, 'menu_device_publicMessage', 'menu_group_device_deviceManagement', 'menu_mobile_announcement', 0, 1, 0, 0, 0, 0),
(13, '2024-03-06 14:44:00.387651', NULL, '2024-03-06 14:44:00.387651', NULL, 0, 13, 'menu_device_privateMessage', 'menu_group_device_deviceManagement', 'menu_mobile_announcement', 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `base_linenotifyforemployee`
--

CREATE TABLE `base_linenotifyforemployee` (
  `id` int(11) NOT NULL,
  `line_notify_token` varchar(200) DEFAULT NULL,
  `send_photo` tinyint(1) NOT NULL,
  `push_time` time(6) DEFAULT NULL,
  `is_valid` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `message_type` int(11) DEFAULT NULL,
  `message_head` varchar(100) DEFAULT NULL,
  `message_tail` varchar(100) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_linenotifysetting`
--

CREATE TABLE `base_linenotifysetting` (
  `id` int(11) NOT NULL,
  `include_sub_department` int(11) DEFAULT NULL,
  `line_notify_token` varchar(200) DEFAULT NULL,
  `message_type` int(11) DEFAULT NULL,
  `message_head` varchar(100) DEFAULT NULL,
  `message_tail` varchar(100) DEFAULT NULL,
  `push_time` time(6) DEFAULT NULL,
  `is_valid` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `line_notify_dept_id` int(11) DEFAULT NULL,
  `send_photo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_messengersentlog`
--

CREATE TABLE `base_messengersentlog` (
  `id` bigint(20) NOT NULL,
  `action` smallint(6) NOT NULL,
  `targets` longtext DEFAULT NULL,
  `targets_repr` longtext DEFAULT NULL,
  `action_status` smallint(6) NOT NULL,
  `description` longtext DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `can_routable` tinyint(1) NOT NULL,
  `op_time` datetime(6) NOT NULL,
  `bot_uid` varchar(100) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_securitypolicy`
--

CREATE TABLE `base_securitypolicy` (
  `id` int(11) NOT NULL,
  `single_login` tinyint(1) NOT NULL,
  `security_code` tinyint(1) NOT NULL,
  `code_length` int(11) NOT NULL,
  `valid_duration` int(11) NOT NULL,
  `failed_locked` tinyint(1) NOT NULL,
  `lock_failed_count` int(11) NOT NULL,
  `lock_duration` int(11) NOT NULL,
  `enforce_pwd_change` tinyint(1) NOT NULL,
  `enforce_pwd_expiration` tinyint(1) NOT NULL,
  `validity_period` int(11) NOT NULL,
  `password_level` smallint(6) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `app_single_user_login` tinyint(1) NOT NULL,
  `session_timeout` int(11) NOT NULL,
  `export_encryption` tinyint(1) NOT NULL,
  `export_encryption_password` varchar(128) DEFAULT NULL,
  `failed_times` int(11) NOT NULL,
  `backup_encryption` tinyint(1) NOT NULL,
  `backup_encryption_password` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_securitypolicy`
--

INSERT INTO `base_securitypolicy` (`id`, `single_login`, `security_code`, `code_length`, `valid_duration`, `failed_locked`, `lock_failed_count`, `lock_duration`, `enforce_pwd_change`, `enforce_pwd_expiration`, `validity_period`, `password_level`, `is_default`, `app_single_user_login`, `session_timeout`, `export_encryption`, `export_encryption_password`, `failed_times`, `backup_encryption`, `backup_encryption_password`) VALUES
(1, 0, 0, 5, 1, 0, 5, 60, 0, 0, 90, 2, 1, 0, 60, 1, '673dabbfde240664be0ef39cff1ff5b0', 0, 1, '673dabbfde240664be0ef39cff1ff5b0');

-- --------------------------------------------------------

--
-- Table structure for table `base_sendemail`
--

CREATE TABLE `base_sendemail` (
  `id` int(11) NOT NULL,
  `purpose` int(11) NOT NULL,
  `email_to` longtext NOT NULL,
  `email_cc` longtext DEFAULT NULL,
  `email_bcc` longtext DEFAULT NULL,
  `email_subject` varchar(40) NOT NULL,
  `email_content` longtext DEFAULT NULL,
  `send_time` datetime(6) DEFAULT NULL,
  `send_status` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_sftpsetting`
--

CREATE TABLE `base_sftpsetting` (
  `id` int(11) NOT NULL,
  `host` varchar(39) NOT NULL,
  `port` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(128) DEFAULT NULL,
  `user_key` longtext DEFAULT NULL,
  `is_sftp` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_sysparam`
--

CREATE TABLE `base_sysparam` (
  `id` int(11) NOT NULL,
  `para_name` varchar(30) NOT NULL,
  `para_type` varchar(10) DEFAULT NULL,
  `para_value` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_sysparam`
--

INSERT INTO `base_sysparam` (`id`, `para_name`, `para_type`, `para_value`) VALUES
(1, 'rule_id', 'rule_0', '0'),
(2, 'dept_id', 'rule_0', '0'),
(3, 'apply_name', 'rule_0', 'All'),
(4, 'rule_name', 'rule_0', 'Default Attendance Rules'),
(5, 'minutes_early', 'rule_0', '0'),
(6, 'minutes_late', 'rule_0', '0'),
(7, 'minutes_no_break_in', 'rule_0', '60'),
(8, 'minutes_no_break_out', 'rule_0', '60'),
(9, 'minutes_no_in', 'rule_0', '60'),
(10, 'minutes_no_leave', 'rule_0', '60'),
(11, 'minutes_not_over_time', 'rule_0', '60'),
(12, 'minutes_work_day', 'rule_0', '480'),
(13, 'no_break_in', 'rule_0', '1012'),
(14, 'no_break_out', 'rule_0', '1012'),
(15, 'no_in', 'rule_0', '1001'),
(16, 'no_leave', 'rule_0', '1002'),
(17, 'out_over_time', 'rule_0', '0'),
(18, 'two_day', 'rule_0', '0'),
(19, 'check_in_color', 'rule_0', '16777151'),
(20, 'check_out_color', 'rule_0', '12910591'),
(21, 'db_version', '', '2002'),
(22, 'installdate', '', 'b7c5paC2Iw6POitH_u32ICyaSBRwf4I9k6eX-uIKiwYHJ3pnj3nb'),
(23, 'sys_date', '', 'b7c5paC2Iw6POitH_u32ICyaSBRwf4I9k6eX-uIKiwYHJ3pnj3nb'),
(24, 'ADMSDBVersion', '', '544'),
(25, 'active_date', '', '330ephb6G-14EUcKXpTm7MphM07EQU0gYWxqXlLngGc5FBQqEaCG');

-- --------------------------------------------------------

--
-- Table structure for table `base_sysparamdept`
--

CREATE TABLE `base_sysparamdept` (
  `id` int(11) NOT NULL,
  `rule_name` varchar(40) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `op_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_systemlog`
--

CREATE TABLE `base_systemlog` (
  `id` int(11) NOT NULL,
  `execute_time` datetime(6) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `execute_status` smallint(6) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_systemsetting`
--

CREATE TABLE `base_systemsetting` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_zoomsetting`
--

CREATE TABLE `base_zoomsetting` (
  `id` int(11) NOT NULL,
  `jwt_token` varchar(512) NOT NULL,
  `zoom_user_email` varchar(128) NOT NULL,
  `zoom_enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-06 14:57:33.537805', '2', 'Medan', 1, 'Department Name=Medan', 52, 1),
(2, '2024-03-06 15:00:22.008156', '2', 'Medan', 2, 'Superior(None->Department)', 52, 1),
(3, '2024-03-06 15:00:53.344661', '2', 'Medan', 2, '', 52, 1),
(4, '2024-03-06 15:01:20.252027', '2', 'Medan', 1, 'Area Name=Medan', 50, 1),
(5, '2024-03-06 15:16:59.126403', '1', 'CL9M212260015', 1, 'Device IP=192.168.1.201,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', 58, 1),
(6, '2024-03-06 15:19:14.447567', '2', 'CL9M212260015', 1, 'Device IP=192.168.200.66,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', 58, 1),
(7, '2024-03-06 15:20:03.505612', '3', 'CL9M212260015', 1, 'Device IP=192.168.200.254,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=Mini AC,Area=Medan', 58, 1),
(8, '2024-03-06 15:21:06.592395', '4', 'CL9M212260015', 1, 'Device IP=255.255.255.0,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', 58, 1),
(9, '2024-03-06 15:24:07.027624', '5', 'CL9M212260015', 1, 'Device IP=192.168.200.77,Time Zone=7,Request Heartbeat=5,Serial Number=CL9M212260015,Device Name=MiniAC,Area=Medan', 58, 1),
(10, '2024-03-13 08:04:06.926655', '6', 'CL', 1, 'Device IP=192.168.200.120,Request Heartbeat=5,Serial Number=CL,Device Name=CL,Area=Medan', 58, 1),
(11, '2024-03-13 08:06:19.917942', '7', 'CL9M212260015', 2, 'Area(1->Medan)', 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_clockedschedule`
--

CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL,
  `clocked_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL,
  `minute` varchar(240) NOT NULL,
  `hour` varchar(96) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(124) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  `timezone` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_celery_beat_crontabschedule`
--

INSERT INTO `django_celery_beat_crontabschedule` (`id`, `minute`, `hour`, `day_of_week`, `day_of_month`, `month_of_year`, `timezone`) VALUES
(1, '0', '4', '*', '*', '*', 'Asia/Bangkok'),
(2, '15', '0', '*', '*', '*', 'Asia/Bangkok'),
(3, '25', '0', '*', '*', '*', 'Asia/Bangkok'),
(4, '30', '0', '*', '*', '*', 'Asia/Bangkok'),
(5, '1', '0', '*', '*', '*', 'Asia/Bangkok'),
(6, '5', '0', '*', '*', '*', 'Asia/Bangkok'),
(7, '10', '0', '*', '*', '*', 'Asia/Bangkok'),
(8, '20', '0', '*', '1', '1', 'Asia/Bangkok'),
(9, '0', '2', '*', '*', '*', 'Asia/Bangkok'),
(10, '30', '2', '*', '*', '*', 'Asia/Bangkok'),
(11, '40', '0', '*', '*', '*', 'Asia/Bangkok');

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_celery_beat_intervalschedule`
--

INSERT INTO `django_celery_beat_intervalschedule` (`id`, `every`, `period`) VALUES
(1, 3, 'seconds'),
(2, 200, 'seconds'),
(3, 60, 'seconds'),
(4, 10, 'seconds');

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_periodictask`
--

CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_celery_beat_periodictask`
--

INSERT INTO `django_celery_beat_periodictask` (`id`, `name`, `task`, `args`, `kwargs`, `queue`, `exchange`, `routing_key`, `expires`, `enabled`, `last_run_at`, `total_run_count`, `date_changed`, `description`, `crontab_id`, `interval_id`, `solar_id`, `one_off`, `start_time`, `priority`, `headers`, `clocked_id`, `expire_seconds`) VALUES
(1, 'celery.backend_cleanup', 'celery.backend_cleanup', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:11.333839', '', 1, NULL, NULL, 0, NULL, NULL, '{}', NULL, 43200),
(2, 'iclock.tasks.data_sync', 'iclock.tasks.data_sync', '[]', '{}', NULL, NULL, NULL, NULL, 1, '2024-03-18 03:12:39.937479', 20195, '2024-03-18 10:12:42.385015', '', NULL, 1, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(3, 'iclock.tasks.device_online_monitor', 'iclock.tasks.device_online_monitor', '[]', '{}', NULL, NULL, NULL, NULL, 1, '2024-03-18 03:10:03.795029', 438, '2024-03-18 10:12:42.080613', '', NULL, 2, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(4, 'iclock.tasks.data_clean', 'iclock.tasks.data_clean', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:12.373949', '', 2, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(5, 'iclock.tasks.zip_clean', 'iclock.tasks.zip_clean', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:12.572668', '', 3, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(6, 'mobile.task.upload_gps', 'mobile.task.upload_gps', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:12.839369', '', 4, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(7, 'psnl.tasks.employment_status_monitoring', 'psnl.tasks.employment_status_monitoring', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:13.075909', '', 5, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(8, 'psnl.tasks.resigned_scanner', 'psnl.tasks.resigned_scanner', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:13.316660', '', 6, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(9, 'psnl.tasks.document_expired_alert', 'psnl.tasks.document_expired_alert', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:13.501689', '', 7, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(10, 'meeting.tasks.meeting_monitor', 'meeting.tasks.meeting_monitor', '[]', '{}', NULL, NULL, NULL, NULL, 1, '2024-03-18 03:11:42.072059', 1398, '2024-03-18 10:12:42.309986', '', NULL, 3, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(11, 'att.tasks.restore_leaveyearbalance_all', 'att.tasks.restore_leaveyearbalance_all', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:13.928285', '', 8, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(12, 'base.tasks.daily_licence_verify', 'base.tasks.daily_licence_verify', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:14.204110', '', 9, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(13, 'base.tasks.daily_aof_rewrite', 'base.tasks.daily_aof_rewrite', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:14.467172', '', 10, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(14, 'beat_tasks.run_minute_task', 'beat_tasks.run_minute_task', '[]', '{}', NULL, NULL, NULL, NULL, 1, '2024-03-18 03:11:42.018547', 1398, '2024-03-18 10:12:42.237809', '', NULL, 3, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(15, 'att.tasks.auto_calculate_daily', 'att.tasks.auto_calculate_daily', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:14.833975', '', 11, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(16, 'att.tasks.run_calculation', 'att.tasks.run_calculation', '[]', '{}', NULL, NULL, NULL, NULL, 1, '2024-03-18 03:12:34.265049', 7479, '2024-03-18 10:12:42.145149', '', NULL, 4, NULL, 0, NULL, NULL, '{}', NULL, NULL),
(17, 'visitor.tasks.dataClean', 'visitor.tasks.data_clean', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2024-03-18 08:24:15.394668', '', 2, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_periodictasks`
--

CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_celery_beat_periodictasks`
--

INSERT INTO `django_celery_beat_periodictasks` (`ident`, `last_update`) VALUES
(1, '2024-03-18 08:24:15.394668');

-- --------------------------------------------------------

--
-- Table structure for table `django_celery_beat_solarschedule`
--

CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL,
  `event` varchar(24) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(145, 'acc', 'acccombination'),
(144, 'acc', 'accgroups'),
(143, 'acc', 'accholiday'),
(146, 'acc', 'accprivilege'),
(147, 'acc', 'accterminal'),
(142, 'acc', 'acctimezone'),
(211, 'accounts', 'adminbiodata'),
(29, 'accounts', 'myuser'),
(46, 'accounts', 'usernotification'),
(212, 'accounts', 'userprofile'),
(164, 'admin', 'logentry'),
(191, 'att', 'attcalclog'),
(77, 'att', 'attcode'),
(4, 'att', 'attconfigurationspermission'),
(192, 'att', 'attemployee'),
(78, 'att', 'attgroup'),
(79, 'att', 'attpolicy'),
(98, 'att', 'attreportsetting'),
(82, 'att', 'attrule'),
(87, 'att', 'attschedule'),
(2, 'att', 'attsettingpermission'),
(86, 'att', 'attshift'),
(7, 'att', 'attuserguidepermission'),
(20, 'att', 'att_configurations_permission'),
(19, 'att', 'att_setting_permission'),
(18, 'att', 'att_user_guide_permission'),
(94, 'att', 'breaktime'),
(209, 'att', 'calculatelastdate'),
(210, 'att', 'calculatetask'),
(95, 'att', 'changeschedule'),
(80, 'att', 'departmentpolicy'),
(96, 'att', 'departmentschedule'),
(93, 'att', 'deptattrule'),
(81, 'att', 'grouppolicy'),
(97, 'att', 'groupschedule'),
(92, 'att', 'holiday'),
(89, 'att', 'leave'),
(99, 'att', 'leavegroup'),
(100, 'att', 'leavegroupdetail'),
(101, 'att', 'leaveyearbalance'),
(84, 'att', 'manuallog'),
(91, 'att', 'overtime'),
(193, 'att', 'overtimepolicy'),
(76, 'att', 'paycode'),
(194, 'att', 'payloadattcode'),
(195, 'att', 'payloadbase'),
(196, 'att', 'payloadbreak'),
(197, 'att', 'payloadeffectpunch'),
(198, 'att', 'payloadexception'),
(199, 'att', 'payloadmulpunchset'),
(200, 'att', 'payloadovertime'),
(201, 'att', 'payloadparing'),
(202, 'att', 'payloadpaycode'),
(203, 'att', 'payloadpunch'),
(204, 'att', 'payloadtimecard'),
(83, 'att', 'reportparam'),
(3, 'att', 'reportpermission'),
(205, 'att', 'reporttemplate'),
(16, 'att', 'report_permission'),
(5, 'att', 'scheduleviewpermission'),
(15, 'att', 'schedule_view_permission'),
(206, 'att', 'shiftdetail'),
(6, 'att', 'staffreportpermission'),
(17, 'att', 'staff_report_permission'),
(88, 'att', 'temporaryschedule'),
(207, 'att', 'tempschedule'),
(85, 'att', 'timeinterval'),
(90, 'att', 'training'),
(208, 'att', 'webpunch'),
(11, 'auth', 'group'),
(1, 'auth', 'permission'),
(166, 'authtoken', 'token'),
(167, 'authtoken', 'tokenproxy'),
(8, 'base', 'abstractpermission'),
(27, 'base', 'adminlog'),
(174, 'base', 'attparam'),
(175, 'base', 'attparamdepts'),
(30, 'base', 'autoattexporttask'),
(31, 'base', 'autoexporttask'),
(32, 'base', 'autoimporttask'),
(33, 'base', 'bookmark'),
(34, 'base', 'dbbackuplog'),
(35, 'base', 'emailtemplate'),
(36, 'base', 'eventalertsetting'),
(37, 'base', 'linenotifyforemployee'),
(38, 'base', 'linenotifysetting'),
(47, 'base', 'messengersentlog'),
(43, 'base', 'securitypolicy'),
(176, 'base', 'sendemail'),
(44, 'base', 'sftpsetting'),
(42, 'base', 'syncarea'),
(39, 'base', 'syncdepartment'),
(41, 'base', 'syncemployee'),
(40, 'base', 'syncjob'),
(177, 'base', 'sysparam'),
(178, 'base', 'sysparamdept'),
(45, 'base', 'systemlog'),
(179, 'base', 'systemsetting'),
(9, 'base', 'systemsettingpermission'),
(12, 'base', 'system_setting_permission'),
(48, 'base', 'zoomsetting'),
(163, 'contenttypes', 'contenttype'),
(173, 'django_celery_beat', 'clockedschedule'),
(168, 'django_celery_beat', 'crontabschedule'),
(169, 'django_celery_beat', 'intervalschedule'),
(170, 'django_celery_beat', 'periodictask'),
(171, 'django_celery_beat', 'periodictasks'),
(172, 'django_celery_beat', 'solarschedule'),
(222, 'ep', 'epdashboardpermission'),
(223, 'ep', 'epreportpermission'),
(161, 'ep', 'epsetup'),
(162, 'ep', 'eptransaction'),
(25, 'ep', 'ep_dashboard_permission'),
(26, 'ep', 'ep_report_permission'),
(64, 'iclock', 'biodata'),
(69, 'iclock', 'biophoto'),
(71, 'iclock', 'deviceemployee'),
(68, 'iclock', 'devicemoduleconfig'),
(183, 'iclock', 'devicesettingpermission'),
(13, 'iclock', 'device_setting_permission'),
(70, 'iclock', 'errorcommandlog'),
(65, 'iclock', 'privatemessage'),
(66, 'iclock', 'publicmessage'),
(180, 'iclock', 'shortmessage'),
(58, 'iclock', 'terminal'),
(62, 'iclock', 'terminalcommand'),
(63, 'iclock', 'terminalcommandlog'),
(181, 'iclock', 'terminalemployee'),
(60, 'iclock', 'terminallog'),
(72, 'iclock', 'terminalparameter'),
(61, 'iclock', 'terminaluploadlog'),
(67, 'iclock', 'terminalworkcode'),
(59, 'iclock', 'transaction'),
(182, 'iclock', 'transactionproofcmd'),
(158, 'meeting', 'meetingentity'),
(159, 'meeting', 'meetingmanuallog'),
(220, 'meeting', 'meetingpayloadbase'),
(221, 'meeting', 'meetingreportpermission'),
(156, 'meeting', 'meetingroom'),
(157, 'meeting', 'meetingroomdevice'),
(160, 'meeting', 'meetingtransaction'),
(24, 'meeting', 'meeting_report_permission'),
(118, 'mobile', 'announcement'),
(121, 'mobile', 'appactionlog'),
(119, 'mobile', 'applist'),
(120, 'mobile', 'appnotification'),
(123, 'mobile', 'gpsfordepartment'),
(122, 'mobile', 'gpsforemployee'),
(124, 'mobile', 'gpslocation'),
(125, 'mobile', 'mobileapirequestlog'),
(127, 'payroll', 'deductionformula'),
(141, 'payroll', 'empexpenseexemption'),
(132, 'payroll', 'emploan'),
(126, 'payroll', 'emppayrollprofile'),
(128, 'payroll', 'exceptionformula'),
(137, 'payroll', 'extradeduction'),
(136, 'payroll', 'extraincrease'),
(129, 'payroll', 'increasementformula'),
(130, 'payroll', 'leaveformula'),
(131, 'payroll', 'overtimeformula'),
(214, 'payroll', 'payrollpayload'),
(219, 'payroll', 'payrollpayloadexpenseexemption'),
(215, 'payroll', 'payrollpayloadpaycode'),
(216, 'payroll', 'payrollreportpermission'),
(218, 'payroll', 'payrollsettingpermission'),
(21, 'payroll', 'payroll_report_permission'),
(23, 'payroll', 'payroll_setting_permission'),
(133, 'payroll', 'reimbursement'),
(134, 'payroll', 'salaryadvance'),
(135, 'payroll', 'salarystructure'),
(138, 'payroll', 'socialsecuritydeduction'),
(140, 'payroll', 'specialpayment'),
(217, 'payroll', 'staffpayrollreportpermission'),
(22, 'payroll', 'staff_payroll_report_permission'),
(139, 'payroll', 'taxdeduction'),
(50, 'personnel', 'area'),
(184, 'personnel', 'assignareaemployee'),
(51, 'personnel', 'certification'),
(49, 'personnel', 'company'),
(52, 'personnel', 'department'),
(53, 'personnel', 'employee'),
(187, 'personnel', 'employeecalendar'),
(56, 'personnel', 'employeecertification'),
(57, 'personnel', 'employeecustomattribute'),
(188, 'personnel', 'employeeextrainfo'),
(185, 'personnel', 'employeeprofile'),
(186, 'personnel', 'employment'),
(10, 'personnel', 'personnelsettingpermission'),
(14, 'personnel', 'personnel_setting_permission'),
(54, 'personnel', 'position'),
(55, 'personnel', 'resign'),
(28, 'rest_framework_tracking', 'apirequestlog'),
(165, 'sessions', 'session'),
(111, 'staff', 'approvalchangeschedule'),
(107, 'staff', 'approvalleave'),
(109, 'staff', 'approvalmanuallog'),
(108, 'staff', 'approvalovertime'),
(110, 'staff', 'approvaltraining'),
(106, 'staff', 'pendingchangeschedule'),
(102, 'staff', 'pendingleave'),
(104, 'staff', 'pendingmanuallog'),
(103, 'staff', 'pendingovertime'),
(105, 'staff', 'pendingtraining'),
(213, 'staff', 'stafftoken'),
(116, 'staff_meeting', 'approvalmeetingentity'),
(117, 'staff_meeting', 'approvalmeetingmanuallog'),
(114, 'staff_meeting', 'pendingmeetingentity'),
(115, 'staff_meeting', 'pendingmeetingmanuallog'),
(113, 'staff_visitor', 'approvalreservation'),
(112, 'staff_visitor', 'pendingreservation'),
(150, 'visitor', 'reason'),
(149, 'visitor', 'reservation'),
(148, 'visitor', 'visitor'),
(154, 'visitor', 'visitorbiodata'),
(153, 'visitor', 'visitorbiophoto'),
(152, 'visitor', 'visitorconfig'),
(151, 'visitor', 'visitorlog'),
(155, 'visitor', 'visitortransaction'),
(189, 'workflow', 'nodeinstance'),
(74, 'workflow', 'workflowengine'),
(190, 'workflow', 'workflowinstance'),
(75, 'workflow', 'workflownode'),
(73, 'workflow', 'workflowrole');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'personnel', '0001_initial', '2024-03-06 14:43:23.188217'),
(2, 'contenttypes', '0001_initial', '2024-03-06 14:43:23.211665'),
(3, 'contenttypes', '0002_remove_content_type_name', '2024-03-06 14:43:23.252224'),
(4, 'workflow', '0001_initial', '2024-03-06 14:43:23.961581'),
(5, 'iclock', '0001_initial', '2024-03-06 14:43:24.117038'),
(6, 'auth', '0001_initial', '2024-03-06 14:43:24.305096'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-06 14:43:24.374972'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-06 14:43:24.395507'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-06 14:43:24.406672'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-06 14:43:24.416679'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-06 14:43:24.423688'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-06 14:43:24.432680'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-06 14:43:24.443146'),
(14, 'base', '0001_initial', '2024-03-06 14:43:24.737327'),
(15, 'accounts', '0001_initial', '2024-03-06 14:43:24.898250'),
(16, 'base', '0002_auto_20200901_1642', '2024-03-06 14:43:25.156868'),
(17, 'att', '0001_initial', '2024-03-06 14:43:25.270386'),
(18, 'att', '0002_auto_20200901_1642', '2024-03-06 14:43:29.072424'),
(19, 'personnel', '0002_auto_20200901_1642', '2024-03-06 14:43:29.991484'),
(20, 'acc', '0001_initial', '2024-03-06 14:43:30.056955'),
(21, 'acc', '0002_auto_20200901_1642', '2024-03-06 14:43:30.607219'),
(22, 'acc', '0003_auto_20200901_1642', '2024-03-06 14:43:31.017621'),
(23, 'acc', '0004_auto_20210721_1158', '2024-03-06 14:43:31.300892'),
(24, 'acc', '0005_auto_20210908_1006', '2024-03-06 14:43:31.331059'),
(25, 'accounts', '0002_auto_20200901_1642', '2024-03-06 14:43:31.830974'),
(26, 'accounts', '0003_auto_20201021_1551', '2024-03-06 14:43:31.851763'),
(27, 'accounts', '0004_auto_20201229_0852', '2024-03-06 14:43:31.931200'),
(28, 'accounts', '0005_auto_20210908_1006', '2024-03-06 14:43:31.952229'),
(29, 'accounts', '0006_myuser_assign_company', '2024-03-06 14:43:31.983175'),
(30, 'accounts', '0007_auto_20220106_1103', '2024-03-06 14:43:32.002771'),
(31, 'accounts', '0008_auto_20230223_1026', '2024-03-06 14:43:32.044846'),
(32, 'accounts', '0009_userprofile_employee_fields', '2024-03-06 14:43:32.072069'),
(33, 'accounts', '0010_901_notification_category', '2024-03-06 14:43:32.099388'),
(34, 'admin', '0001_initial', '2024-03-06 14:43:32.217501'),
(35, 'admin', '0002_logentry_remove_auto_add', '2024-03-06 14:43:32.241151'),
(36, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-06 14:43:32.261529'),
(37, 'personnel', '0003_auto_20201229_0852', '2024-03-06 14:43:32.477021'),
(38, 'personnel', '0004_auto_20210908_1006', '2024-03-06 14:43:33.761659'),
(39, 'base', '0003_auto_20201229_0852', '2024-03-06 14:43:33.921348'),
(40, 'base', '0004_auto_20210908_1006', '2024-03-06 14:43:34.301462'),
(41, 'base', '0005_auto_20211201_1434', '2024-03-06 14:43:34.326106'),
(42, 'personnel', '0005_auto_20211201_1434', '2024-03-06 14:43:35.150723'),
(43, 'personnel', '0006_auto_20211201_1516', '2024-03-06 14:43:35.331247'),
(44, 'personnel', '0007_auto_20211201_1602', '2024-03-06 14:43:35.756298'),
(45, 'personnel', '0008_auto_20220106_1103', '2024-03-06 14:43:35.853754'),
(46, 'personnel', '0009_auto_20220419_1516', '2024-03-06 14:43:35.893123'),
(47, 'personnel', '0010_auto_20221202_1852', '2024-03-06 14:43:35.930527'),
(48, 'personnel', '0011_auto_20230223_1026', '2024-03-06 14:43:36.433901'),
(49, 'base', '0006_autoimporttask_company', '2024-03-06 14:43:36.524230'),
(50, 'base', '0007_auto_20221202_1852', '2024-03-06 14:43:36.531221'),
(51, 'att', '0003_auto_20200909_1810', '2024-03-06 14:43:36.564261'),
(52, 'att', '0004_auto_20201021_1551', '2024-03-06 14:43:36.605507'),
(53, 'att', '0005_auto_20201106_1538', '2024-03-06 14:43:36.634875'),
(54, 'att', '0006_auto_20201116_1052', '2024-03-06 14:43:36.642436'),
(55, 'att', '0007_auto_20201229_0852', '2024-03-06 14:43:37.414661'),
(56, 'att', '0008_auto_20210908_1006', '2024-03-06 14:43:38.680852'),
(57, 'att', '0009_reporttemplate_employee', '2024-03-06 14:43:38.762032'),
(58, 'att', '0010_auto_20220106_1103', '2024-03-06 14:43:39.028132'),
(59, 'att', '0011_auto_20220118_1536', '2024-03-06 14:43:39.078431'),
(60, 'att', '0012_auto_20220419_1516', '2024-03-06 14:43:39.116264'),
(61, 'att', '0013_auto_20221202_1852', '2024-03-06 14:43:39.422369'),
(62, 'att', '0014_auto_20230223_1026', '2024-03-06 14:43:40.589035'),
(63, 'att', '0015_alter_holiday_end_date', '2024-03-06 14:43:40.606559'),
(64, 'auth', '0009_alter_user_last_name_max_length', '2024-03-06 14:43:40.618898'),
(65, 'auth', '0010_alter_group_name_max_length', '2024-03-06 14:43:40.670943'),
(66, 'auth', '0011_update_proxy_permissions', '2024-03-06 14:43:40.744824'),
(67, 'auth', '0012_alter_user_first_name_max_length', '2024-03-06 14:43:40.755800'),
(68, 'authtoken', '0001_initial', '2024-03-06 14:43:40.844164'),
(69, 'authtoken', '0002_auto_20160226_1747', '2024-03-06 14:43:40.915594'),
(70, 'authtoken', '0003_tokenproxy', '2024-03-06 14:43:40.925624'),
(71, 'personnel', '0012_901_attr_type_change', '2024-03-06 14:43:40.939874'),
(72, 'base', '0008_auto_20230223_1026', '2024-03-06 14:43:41.126969'),
(73, 'base', '0009_auto_20230411_1415', '2024-03-06 14:43:41.144082'),
(74, 'base', '0010_901_zoomsetting', '2024-03-06 14:43:41.166858'),
(75, 'base', '0011_901_backup_db_encrypt', '2024-03-06 14:43:41.316796'),
(76, 'base', '0012_linenotifysetting_send_photo_linenotifyforemployee', '2024-03-06 14:43:41.426255'),
(77, 'base', '0013_alter_syncarea_area_name_and_more', '2024-03-06 14:43:41.474570'),
(78, 'base', '0014_eventalertsetting_lineapp_alert', '2024-03-06 14:43:41.487040'),
(79, 'django_celery_beat', '0001_initial', '2024-03-06 14:43:41.605470'),
(80, 'django_celery_beat', '0002_auto_20161118_0346', '2024-03-06 14:43:41.668530'),
(81, 'django_celery_beat', '0003_auto_20161209_0049', '2024-03-06 14:43:41.690027'),
(82, 'django_celery_beat', '0004_auto_20170221_0000', '2024-03-06 14:43:41.699523'),
(83, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2024-03-06 14:43:41.708159'),
(84, 'django_celery_beat', '0006_auto_20180322_0932', '2024-03-06 14:43:41.749724'),
(85, 'django_celery_beat', '0007_auto_20180521_0826', '2024-03-06 14:43:41.773014'),
(86, 'django_celery_beat', '0008_auto_20180914_1922', '2024-03-06 14:43:41.795952'),
(87, 'django_celery_beat', '0006_auto_20180210_1226', '2024-03-06 14:43:41.814585'),
(88, 'django_celery_beat', '0006_periodictask_priority', '2024-03-06 14:43:41.826756'),
(89, 'django_celery_beat', '0009_periodictask_headers', '2024-03-06 14:43:41.840370'),
(90, 'django_celery_beat', '0010_auto_20190429_0326', '2024-03-06 14:43:41.958752'),
(91, 'django_celery_beat', '0011_auto_20190508_0153', '2024-03-06 14:43:42.024541'),
(92, 'django_celery_beat', '0012_periodictask_expire_seconds', '2024-03-06 14:43:42.045344'),
(93, 'django_celery_beat', '0013_auto_20200609_0727', '2024-03-06 14:43:42.059073'),
(94, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2024-03-06 14:43:42.074754'),
(95, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2024-03-06 14:43:42.084778'),
(96, 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2024-03-06 14:43:42.092876'),
(97, 'django_celery_beat', '0017_alter_crontabschedule_month_of_year', '2024-03-06 14:43:42.101383'),
(98, 'django_celery_beat', '0018_improve_crontab_helptext', '2024-03-06 14:43:42.108391'),
(99, 'visitor', '0001_initial', '2024-03-06 14:43:42.121079'),
(100, 'visitor', '0002_reservation_visitor_visitorconfig_visitorlog', '2024-03-06 14:43:42.796244'),
(101, 'iclock', '0002_auto_20200901_1642', '2024-03-06 14:43:44.453217'),
(102, 'ep', '0001_initial', '2024-03-06 14:43:44.710850'),
(103, 'ep', '0002_auto_20201217_1608', '2024-03-06 14:43:44.933534'),
(104, 'ep', '0003_auto_20201229_0852', '2024-03-06 14:43:44.940543'),
(105, 'iclock', '0003_auto_20201229_0852', '2024-03-06 14:43:45.268172'),
(106, 'iclock', '0004_auto_20210908_1006', '2024-03-06 14:43:45.747654'),
(107, 'iclock', '0005_terminalworkcode_company', '2024-03-06 14:43:45.991343'),
(108, 'iclock', '0006_auto_20220419_1516', '2024-03-06 14:43:46.172408'),
(109, 'iclock', '0007_auto_20221202_1852', '2024-03-06 14:43:46.304456'),
(110, 'iclock', '0008_auto_20230223_1026', '2024-03-06 14:43:46.331102'),
(111, 'iclock', '0009_auto_20230411_1415', '2024-03-06 14:43:46.647679'),
(112, 'iclock', '0010_901_push_version_width', '2024-03-06 14:43:46.701189'),
(113, 'iclock', '0012_alter_biophoto_first_name_alter_biophoto_last_name_and_more', '2024-03-06 14:43:46.799205'),
(114, 'meeting', '0001_initial', '2024-03-06 14:43:47.898389'),
(115, 'meeting', '0002_meetingroom_enable_room', '2024-03-06 14:43:47.916290'),
(116, 'meeting', '0003_auto_20210908_1006', '2024-03-06 14:43:48.829786'),
(117, 'meeting', '0004_901_meetingzoom', '2024-03-06 14:43:48.928382'),
(118, 'mobile', '0001_initial', '2024-03-06 14:43:48.998621'),
(119, 'mobile', '0002_auto_20200901_1642', '2024-03-06 14:43:49.943318'),
(120, 'mobile', '0003_auto_20201229_0852', '2024-03-06 14:43:50.601231'),
(121, 'mobile', '0004_mobileapirequestlog', '2024-03-06 14:43:50.746636'),
(122, 'payroll', '0001_initial', '2024-03-06 14:43:51.031574'),
(123, 'payroll', '0002_auto_20200901_1642', '2024-03-06 14:43:52.251938'),
(124, 'payroll', '0003_auto_20200901_1642', '2024-03-06 14:43:53.556529'),
(125, 'payroll', '0004_auto_20210908_1006', '2024-03-06 14:43:53.934213'),
(126, 'payroll', '0005_auto_20221202_1852', '2024-03-06 14:43:53.975188'),
(127, 'payroll', '0006_901_salary_th', '2024-03-06 14:43:54.804248'),
(128, 'payroll', '0007_extradeduction_special_type_and_more', '2024-03-06 14:43:55.030885'),
(129, 'personnel', '0013_alter_area_area_name_alter_certification_cert_name_and_more', '2024-03-06 14:43:55.731042'),
(130, 'rest_framework_tracking', '0001_initial', '2024-03-06 14:43:55.865658'),
(131, 'rest_framework_tracking', '0002_auto_20170118_1713', '2024-03-06 14:43:55.927347'),
(132, 'rest_framework_tracking', '0003_add_errors', '2024-03-06 14:43:55.950698'),
(133, 'rest_framework_tracking', '0004_add_verbose_name', '2024-03-06 14:43:55.970439'),
(134, 'rest_framework_tracking', '0005_auto_20171219_1537', '2024-03-06 14:43:56.043485'),
(135, 'rest_framework_tracking', '0006_view_and_view_method_nullable', '2024-03-06 14:43:56.172388'),
(136, 'rest_framework_tracking', '0006_auto_20180315_1442', '2024-03-06 14:43:56.246168'),
(137, 'rest_framework_tracking', '0007_merge_20180419_1646', '2024-03-06 14:43:56.253179'),
(138, 'rest_framework_tracking', '0008_auto_20200201_2048', '2024-03-06 14:43:56.278577'),
(139, 'rest_framework_tracking', '0009_view_method_max_length_200', '2024-03-06 14:43:56.302487'),
(140, 'rest_framework_tracking', '0010_auto_20200609_1404', '2024-03-06 14:43:56.536299'),
(141, 'rest_framework_tracking', '0011_auto_20201117_2016', '2024-03-06 14:43:56.564559'),
(142, 'sessions', '0001_initial', '2024-03-06 14:43:56.592673'),
(143, 'staff', '0001_initial', '2024-03-06 14:43:56.713604'),
(144, 'staff', '0002_approvalchangeschedule_approvalleave_approvalmanuallog_approvalovertime_approvaltraining_pendingchan', '2024-03-06 14:43:56.740738'),
(145, 'staff_meeting', '0001_initial', '2024-03-06 14:43:56.755977'),
(146, 'visitor', '0003_reservation_email', '2024-03-06 14:43:56.787983'),
(147, 'visitor', '0004_auto_20210908_1006', '2024-03-06 14:43:57.561008'),
(148, 'visitor', '0005_auto_20211201_1434', '2024-03-06 14:43:57.592009'),
(149, 'staff_visitor', '0001_initial', '2024-03-06 14:43:57.606006'),
(150, 'visitor', '0006_auto_20220419_1516', '2024-03-06 14:43:57.646512'),
(151, 'visitor', '0007_auto_20221202_1852', '2024-03-06 14:43:57.678676'),
(152, 'visitor', '0008_auto_20230411_1415', '2024-03-06 14:43:57.925462'),
(153, 'visitor', '0009_alter_visitorbiophoto_first_name_and_more', '2024-03-06 14:43:57.967458'),
(154, 'workflow', '0002_auto_20211201_1434', '2024-03-06 14:43:58.046174'),
(155, 'workflow', '0003_auto_20221202_1852', '2024-03-06 14:43:58.092875'),
(156, 'workflow', '0004_auto_20230223_1026', '2024-03-06 14:43:58.299119'),
(157, 'workflow', '0005_auto_20230411_1415', '2024-03-06 14:43:59.307034');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ep_epsetup`
--

CREATE TABLE `ep_epsetup` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `temp_alarm` tinyint(1) NOT NULL,
  `temp_warning` decimal(4,1) NOT NULL,
  `temp_warning_F` decimal(4,1) DEFAULT NULL,
  `temp_unit` smallint(6) NOT NULL,
  `mask_alarm` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_epsetup`
--

INSERT INTO `ep_epsetup` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `temp_alarm`, `temp_warning`, `temp_warning_F`, `temp_unit`, `mask_alarm`, `is_default`) VALUES
(1, '2024-03-06 14:44:02.075619', NULL, '2024-03-06 14:44:02.075619', NULL, 0, 1, '37.3', '99.2', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ep_eptransaction`
--

CREATE TABLE `ep_eptransaction` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `area` varchar(30) NOT NULL,
  `check_datetime` datetime(6) DEFAULT NULL,
  `check_date` date NOT NULL,
  `check_time` time(6) NOT NULL,
  `temperature` decimal(4,1) NOT NULL,
  `is_mask` int(11) NOT NULL,
  `upload_time` datetime(6) NOT NULL,
  `source` smallint(6) NOT NULL,
  `terminal_sn` varchar(50) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  `emp_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_biodata`
--

CREATE TABLE `iclock_biodata` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `bio_tmp` longtext NOT NULL,
  `bio_no` int(11) DEFAULT NULL,
  `bio_index` int(11) DEFAULT NULL,
  `bio_type` int(11) NOT NULL,
  `major_ver` varchar(30) NOT NULL,
  `minor_ver` varchar(30) NOT NULL,
  `bio_format` int(11) DEFAULT NULL,
  `valid` int(11) NOT NULL,
  `duress` int(11) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_biodata`
--

INSERT INTO `iclock_biodata` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `bio_tmp`, `bio_no`, `bio_index`, `bio_type`, `major_ver`, `minor_ver`, `bio_format`, `valid`, `duress`, `update_time`, `sn`, `employee_id`) VALUES
(1, NULL, NULL, '2024-03-13 08:06:32.128173', NULL, 0, '{\"0\": \"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\", \"1\": \"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\", \"2\": \"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\", \"3\": \"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\", \"4\": \"apUBEFwDWQUIAAwAAXfbBYtEsUVSkVOT8EQwZ2FRJkOtRI3BQX4l55rm94aXVInyfXROU5FgC2cVSjH7h7e0nIICj55zkJNjZYR6gummv4dJErF4vo8K8GSEAXh/mO7i3bqj51aorsOKu6qRV7g1lkOtoFfhNs5KCjRVuMc/56xDPdavH8HNO79juRbWWb3K00EeyO9RklML1VEXo3toSyCkAi9/aWNq2yInJjbpy2gXT9xdROjVM4+1lS9G/o00gu6Hfv/ioLD7FjAYVks0FbYc4JDsAuoQ4+qZPOd2gQ1hfsYckDTaM9g23DzX1uVUX0LezMDS8hLEKu4mwSTMKMPC4HC6Xqo8trqkOLw2xDSNksPPqa6VUmlK3liZhpKUkdCHWKn+ZDiY2toYGbqT6pWskRdITiCOjeaV05tmuf0PA4+BeULxTXUqdDhxGnkLbZJJAfKuEkhE/rRUSXpqe3MOYZ9BtvYvA5iYRjWGpUpTqhFHXyKsS1Wiqk93tLbfUbmjmThU3S87VNi/K0q2Oz/FgcMtUA7UKUXKwgdZ1MOvXqEvGOET4pjkJueUaSrpM21uf4dTREKI9XbmwOAbosM8Pf7+AyKg97K0tjf9Zd0z9Xn+L+FxamgTZ9Tv5jmmL/UhsD/ZHpWa0caYRDbbZtPS4xIz0cI/p+rGqLTGxqbQIs7CP76NPKWUhtC7topWwDKStJSulIyrqphYsCJWIKOikxBsHu9AoZjr5ZuWlmjqVKigd4qMfGuarBCfhngkn6L4ARmOfRndCn14cW5ZcHMOaWhjEnmUFJpX6kgWeORlem0uXyJNY1EmYSkoKitEfC6oY212QrdLNsk3TSrvc0y8gX8Z4q0DG8K5Czda1BMpXtMvLMXiswzwq/YoXsUbMU7C5wNynhOY+drrEOXy7ZR68u8dYvzrF2cJB8nvA+AE8R7n2JICEGmlpjZrkvi6PQsN/2gsce/r6vViYbs6rG/CraBb3mXOW9oh1FfWyXZVQ05gQ84RjuvKCXjDxsskcdveACHfs6y/uot+ybK6Xo+yvnDfrqJsEuulqiOmlaDco5Zgb57iXmubvJpvl6mUl5KgYHGP9fR9i/l0dgf1+HmBsfx7fmGA/31eRrxxeo60cVbpoE2SzWssGOs=\"}', 0, 0, 8, '12', '0', 0, 1, 0, '2024-03-13 08:06:32.128173', 'CL9M212260015', 1),
(2, NULL, NULL, '2024-03-13 08:06:32.173253', NULL, 0, '{\"0\": \"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\", \"1\": \"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\", \"2\": \"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\", \"3\": \"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\", \"4\": \"apUBEFwDUm4IAAwAAfkdBc+9Vb5e9XshWrV+5EehKmJbJb+iPlljkOaN2ZD2kbWVaxWbc2eJk45oBb6EeIH04lqVYWeCfXs+k3V2+pD9RvSdMR6x9n1OjJd3jmiLa7qlpGEQk7fZ8WsTQYSpr0mo7ZtdronITTS/rUSy4UFJmPyrfbnf8zHHo7U5lc8zMCy0MbUpvwMhzSP/JWm3qQGtAwUl4n4tGIMaLRQadvEZlJjVHQUdCw/qM3sIGnB3AARz4Q2ggBnw6mDbe/gHj/X0ravw8EAP6Y4EGOTuNN9m5SQN42HnF5/FxAvd16AsWtMoJcNl0LHPs3IDzbb3H8HZsztux4xZgWZHRbNGQWmxS2NJvTWPV0lks9e2lPbnqKkufAwiOmiZY59juQv4tZZqk7Ox3pSvzxJLC8mHimRBaoiDgk+KX3l3bVu/domfMXt2kLFeeMztbw6PamkJF25hdK9PbmKcnVJc/4N8m+tuc7brTzdSg3PSjczFULnjf/t/Z3l+v4cjQsW7JcbhsTlsxzKqJTEvFbazqxXWta8p0rmlLY3XHvolHBs1YRafGecbnx1TD4kx7xPaN43QFxV5FI8NAQZ78TxwfeSN9gZJFAtSzXgJb/HsHSvlCChg+tp4E53qnj/BWiUTxVgpl8nUNBDOzCg/scudO7XJDj8Y2tgb3d48XOO7REMUCYRIScvKTC3Ojle5stNTRa/sfkH4Tlx5XF9gAWJjY4Ucv295ZbNpZepXMMFidEcDa1N7mXnfDH0H3Hl4q3unWgZ8hxbKsLNzf34srmJk7VSGppEV63Rzij5Ql19RXliaVlAFLVGkNb1VIE9CRX7Xc0dLRKZKRLt6ZXEf0R3fCzU1Y8MLrrew3SjDLxc28ytVOsc3OaLbsz/eoZ8hhO8bcgl/FuqumhMf7p+PEfqVizWl/6cd+h0Dev4SfzMP+PPlmudxyZfqc6oFKH+WDfRuVunIb+gEWOR+lOy3oB2jWiYZIVcq1SRT3DEwyHKwVIo8Vh5GOEo843xIMLeBzFw9h4VA10nyN8JNvnbeUHKxM5W2VGWZmVzdnALG5WHlY2Zl5qZvqYprcK2X9nDxsLBwdfa3aXlpW3u1BhaGAXpLvJx2mrG4t4qYjZKOlJWTl5CluQQ=\"}', 0, 0, 8, '12', '0', 0, 1, 0, '2024-03-13 08:06:32.173253', 'CL9M212260015', 2),
(3, NULL, NULL, '2024-03-13 08:06:32.188263', NULL, 0, '{\"0\": \"apUBEBAC3DgJADoMAYSoAP4jZ0n7pyNr/pc/lROvpiRBW74VyKObt6hP2Nkiw43uJelS8IKIFCjObPzdSfllEK0xtL1MMYSum9uvcc7Xz+sHvzqjrA044O4WUGVBe9yuFtlrfJxUp0dY2PurSCqhs98Ta0jqkqb8MJmq5zhgLeDYECldaI1Oj0cAQdqlkz5BXg4OZSayFwJbw+4H5wImNvq7cJtKgFJCaWQ7nByCJd77jbnDA298Po0aKFwJKaB7pgJ1rYhseOWcS+TPGWqiKGXxPQPWZeaO8Sr07gX5cLvvF+isQ7PtrZEOK3IeXC6jvZwZ/9s+8IcdM7AAXtppKAqJj5p/Ys9FO8BXPN5nDDSdL797fKuAB9IgkFbfLpJS+cUDYG1xbmRqUvk70YRoKTxiq0xwF/kKKjlrFG3V+qwya+ZsNPgUDCZm5RYbborsTdObAci+V7t8vZ67YsZVpO4FaMF7KcDAbvy00FGgXQVEwN5n4FcuOQGqzkgmZe7mfd3V1KVefE7Z23jwnFGClQ1YUy0w3L2WphjiKgBeWPRQvuda/kKGPhScyjr2gSl44TQAl2FlwT/HT5ZfUXKfxPQvSkUa7wpXZtrs1qb1ajsPUlmDpxAnKKxjA4q50sGtLmzw+cmtf1eK22dSZyhL1scRcmLlVYF72kYNApE52YJYiDubvzN9kRFRJv2wulgF\"}', 0, 0, 9, '58', '12', 0, 1, 0, '2024-03-13 08:06:32.188263', 'CL9M212260015', 3);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_biophoto`
--

CREATE TABLE `iclock_biophoto` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `enroll_sn` varchar(50) DEFAULT NULL,
  `register_photo` varchar(100) NOT NULL,
  `register_time` datetime(6) NOT NULL,
  `approval_photo` varchar(100) DEFAULT NULL,
  `approval_state` smallint(6) NOT NULL,
  `approval_time` datetime(6) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_biophoto`
--

INSERT INTO `iclock_biophoto` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `first_name`, `last_name`, `email`, `enroll_sn`, `register_photo`, `register_time`, `approval_photo`, `approval_state`, `approval_time`, `remark`, `employee_id`) VALUES
(1, '2024-03-13 08:06:33.151805', NULL, '2024-03-13 08:06:33.151805', NULL, 0, '', NULL, NULL, 'CL9M212260015', 'e7fc9ef3-ea5e-4c5f-895f-df93cfd4d987.jpg', '2024-03-13 08:06:33.151805', '3.jpg', 3, '2024-03-13 08:06:33.151805', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_devicemoduleconfig`
--

CREATE TABLE `iclock_devicemoduleconfig` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `enable_registration` tinyint(1) NOT NULL,
  `enable_resigned_filter` tinyint(1) NOT NULL,
  `enable_auto_add` tinyint(1) NOT NULL,
  `enable_name_upload` tinyint(1) NOT NULL,
  `enable_name_download` tinyint(1) NOT NULL,
  `enable_card_upload` tinyint(1) NOT NULL,
  `encryption` tinyint(1) NOT NULL,
  `timezone` smallint(6) NOT NULL,
  `global_setup` tinyint(1) NOT NULL,
  `heartbeat` int(11) NOT NULL,
  `transfer_mode` smallint(6) NOT NULL,
  `transfer_interval` int(11) NOT NULL,
  `transfer_time` varchar(100) NOT NULL,
  `transaction_retention` int(11) NOT NULL,
  `command_retention` int(11) NOT NULL,
  `dev_log_retention` int(11) NOT NULL,
  `upload_log_retention` int(11) NOT NULL,
  `edit_policy` smallint(6) NOT NULL,
  `import_policy` smallint(6) NOT NULL,
  `mobile_policy` smallint(6) NOT NULL,
  `device_policy` smallint(6) NOT NULL,
  `api_policy` smallint(6) NOT NULL,
  `sync_mode` smallint(6) NOT NULL,
  `sync_time` varchar(100) NOT NULL,
  `visitor_policy` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_devicemoduleconfig`
--

INSERT INTO `iclock_devicemoduleconfig` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `enable_registration`, `enable_resigned_filter`, `enable_auto_add`, `enable_name_upload`, `enable_name_download`, `enable_card_upload`, `encryption`, `timezone`, `global_setup`, `heartbeat`, `transfer_mode`, `transfer_interval`, `transfer_time`, `transaction_retention`, `command_retention`, `dev_log_retention`, `upload_log_retention`, `edit_policy`, `import_policy`, `mobile_policy`, `device_policy`, `api_policy`, `sync_mode`, `sync_time`, `visitor_policy`) VALUES
(1, '2024-03-06 14:44:00.597446', NULL, '2024-03-06 15:27:43.039260', NULL, 0, 0, 0, 1, 1, 1, 1, 0, 7, 1, 5, 1, 1, '00:00;14:05', 9999, 9999, 9999, 9999, 0, 0, 0, 3, 3, 1, '00:00;12:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_errorcommandlog`
--

CREATE TABLE `iclock_errorcommandlog` (
  `id` int(11) NOT NULL,
  `error_code` varchar(16) DEFAULT NULL,
  `error_msg` varchar(50) DEFAULT NULL,
  `data_origin` longtext DEFAULT NULL,
  `cmd` varchar(50) DEFAULT NULL,
  `additional` longtext DEFAULT NULL,
  `upload_time` datetime(6) NOT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_privatemessage`
--

CREATE TABLE `iclock_privatemessage` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `last_send` datetime(6) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_publicmessage`
--

CREATE TABLE `iclock_publicmessage` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `last_send` datetime(6) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_shortmessage`
--

CREATE TABLE `iclock_shortmessage` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `duration` int(11) NOT NULL,
  `msg_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminal`
--

CREATE TABLE `iclock_terminal` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `real_ip` char(39) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `terminal_tz` smallint(6) NOT NULL,
  `heartbeat` int(11) NOT NULL,
  `transfer_mode` smallint(6) NOT NULL,
  `transfer_interval` int(11) NOT NULL,
  `transfer_time` varchar(100) NOT NULL,
  `product_type` smallint(6) DEFAULT NULL,
  `is_attendance` smallint(6) NOT NULL,
  `is_registration` smallint(6) NOT NULL,
  `purpose` smallint(6) DEFAULT NULL,
  `controller_type` smallint(6) DEFAULT NULL,
  `authentication` smallint(6) NOT NULL,
  `style` varchar(20) DEFAULT NULL,
  `upload_flag` varchar(10) DEFAULT NULL,
  `fw_ver` varchar(100) DEFAULT NULL,
  `push_protocol` varchar(50) NOT NULL,
  `push_ver` varchar(50) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `is_tft` tinyint(1) NOT NULL,
  `terminal_name` varchar(30) DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `oem_vendor` varchar(50) DEFAULT NULL,
  `log_stamp` varchar(30) DEFAULT NULL,
  `op_log_stamp` varchar(30) DEFAULT NULL,
  `capture_stamp` varchar(30) DEFAULT NULL,
  `user_count` int(11) DEFAULT NULL,
  `transaction_count` int(11) DEFAULT NULL,
  `fp_count` int(11) DEFAULT NULL,
  `fp_alg_ver` varchar(10) DEFAULT NULL,
  `face_count` int(11) DEFAULT NULL,
  `face_alg_ver` varchar(10) DEFAULT NULL,
  `fv_count` int(11) DEFAULT NULL,
  `fv_alg_ver` varchar(10) DEFAULT NULL,
  `palm_count` int(11) DEFAULT NULL,
  `palm_alg_ver` varchar(10) DEFAULT NULL,
  `lock_func` smallint(6) NOT NULL,
  `last_activity` datetime(6) DEFAULT NULL,
  `upload_time` datetime(6) DEFAULT NULL,
  `push_time` datetime(6) DEFAULT NULL,
  `is_access` smallint(6) NOT NULL,
  `area_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_terminal`
--

INSERT INTO `iclock_terminal` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `sn`, `alias`, `ip_address`, `real_ip`, `state`, `terminal_tz`, `heartbeat`, `transfer_mode`, `transfer_interval`, `transfer_time`, `product_type`, `is_attendance`, `is_registration`, `purpose`, `controller_type`, `authentication`, `style`, `upload_flag`, `fw_ver`, `push_protocol`, `push_ver`, `language`, `is_tft`, `terminal_name`, `platform`, `oem_vendor`, `log_stamp`, `op_log_stamp`, `capture_stamp`, `user_count`, `transaction_count`, `fp_count`, `fp_alg_ver`, `face_count`, `face_alg_ver`, `fv_count`, `fv_alg_ver`, `palm_count`, `palm_alg_ver`, `lock_func`, `last_activity`, `upload_time`, `push_time`, `is_access`, `area_id`) VALUES
(7, '2024-03-13 08:06:06.431826', NULL, '2024-03-13 08:06:19.867697', NULL, 0, 'CL9M212260015', 'Auto add', '192.168.200.120', '192.168.200.120', 1, 7, 10, 1, 1, '00:00;14:05', 41, 1, 0, NULL, 0, 1, NULL, '1111100000', 'ZAM170-NF-Ver1.5.40', '2.4.1', 'Ver 2.0.32S-20200714', 69, 1, 'MiniAC', 'ZAM170_TFT', 'HIT Corporation', '1710326573.0', '1710320627.811047', '0', 3, 23, 0, '10.0', 1, '58.0', 0, '3.0', 2, '12.0', 15, '2024-03-13 11:08:12.898359', '2024-03-13 08:06:32.188263', '2024-03-13 08:06:23.051620', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminalcommand`
--

CREATE TABLE `iclock_terminalcommand` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `commit_time` datetime(6) NOT NULL,
  `transfer_time` datetime(6) DEFAULT NULL,
  `return_time` datetime(6) DEFAULT NULL,
  `return_value` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminalcommandlog`
--

CREATE TABLE `iclock_terminalcommandlog` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `commit_time` datetime(6) NOT NULL,
  `transfer_time` datetime(6) DEFAULT NULL,
  `return_time` datetime(6) DEFAULT NULL,
  `return_value` int(11) DEFAULT NULL,
  `package` int(11) DEFAULT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_terminalcommandlog`
--

INSERT INTO `iclock_terminalcommandlog` (`id`, `content`, `commit_time`, `transfer_time`, `return_time`, `return_value`, `package`, `terminal_id`) VALUES
(1, 'INFO', '2024-03-13 08:06:19.909977', '2024-03-13 08:06:27.355508', '2024-03-13 08:06:28.183806', 0, NULL, 7),
(2, 'CHECK ALL', '2024-03-13 08:06:19.909977', '2024-03-13 08:06:27.355508', '2024-03-13 08:06:33.272732', 0, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminalemployee`
--

CREATE TABLE `iclock_terminalemployee` (
  `id` int(11) NOT NULL,
  `terminal_sn` varchar(50) NOT NULL,
  `emp_code` varchar(20) NOT NULL,
  `privilege` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminallog`
--

CREATE TABLE `iclock_terminallog` (
  `id` int(11) NOT NULL,
  `terminal_tz` smallint(6) DEFAULT NULL,
  `admin` varchar(50) DEFAULT NULL,
  `action_name` smallint(6) DEFAULT NULL,
  `action_time` datetime(6) DEFAULT NULL,
  `object` varchar(50) DEFAULT NULL,
  `param1` int(11) DEFAULT NULL,
  `param2` int(11) DEFAULT NULL,
  `param3` int(11) DEFAULT NULL,
  `upload_time` datetime(6) DEFAULT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_terminallog`
--

INSERT INTO `iclock_terminallog` (`id`, `terminal_tz`, `admin`, `action_name`, `action_time`, `object`, `param1`, `param2`, `param3`, `upload_time`, `terminal_id`) VALUES
(1, 7, '0', 0, '2024-03-04 11:14:12.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.506333', 7),
(2, 7, '0', 4, '2024-03-04 11:16:17.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.506333', 7),
(3, 7, '0', 4, '2024-03-04 11:20:31.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.521284', 7),
(4, 7, '0', 4, '2024-03-04 11:22:17.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.521284', 7),
(5, 7, '0', 4, '2024-03-04 11:30:52.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.521284', 7),
(6, 7, '0', 4, '2024-03-04 11:32:04.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.536302', 7),
(7, 7, '0', 4, '2024-03-04 11:34:25.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.536302', 7),
(8, 7, '0', 4, '2024-03-04 11:37:32.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.542318', 7),
(9, 7, '0', 4, '2024-03-04 11:45:07.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.542318', 7),
(10, 7, '0', 22, '2024-03-04 11:47:05.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.551343', 7),
(11, 7, '0', 0, '2024-03-04 11:47:31.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.551343', 7),
(12, 7, '0', 4, '2024-03-04 11:47:50.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.551343', 7),
(13, 7, '0', 4, '2024-03-04 12:01:20.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.551343', 7),
(14, 7, '0', 4, '2024-03-04 12:04:10.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.566392', 7),
(15, 7, '0', 4, '2024-03-04 12:32:06.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.566392', 7),
(16, 7, '0', 4, '2024-03-04 12:36:24.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.566392', 7),
(17, 7, '0', 4, '2024-03-04 12:42:04.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.566392', 7),
(18, 7, '0', 4, '2024-03-04 12:44:54.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.566392', 7),
(19, 7, '0', 4, '2024-03-04 12:48:45.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.581359', 7),
(20, 7, '0', 4, '2024-03-04 12:50:53.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.581359', 7),
(21, 7, '0', 4, '2024-03-04 12:54:55.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.581359', 7),
(22, 7, '0', 4, '2024-03-04 12:55:05.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.581359', 7),
(23, 7, '0', 4, '2024-03-04 12:55:58.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.596375', 7),
(24, 7, '0', 4, '2024-03-04 13:35:20.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.596375', 7),
(25, 7, '0', 4, '2024-03-04 13:48:50.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.596375', 7),
(26, 7, '0', 4, '2024-03-04 14:37:33.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.596375', 7),
(27, 7, '0', 4, '2024-03-04 14:40:58.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.611359', 7),
(28, 7, '0', 4, '2024-03-04 14:43:17.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.611359', 7),
(29, 7, '0', 4, '2024-03-04 15:01:40.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.611359', 7),
(30, 7, '0', 4, '2024-03-04 15:01:46.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.611359', 7),
(31, 7, '0', 4, '2024-03-04 15:01:57.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.626391', 7),
(32, 7, '0', 0, '2024-03-06 15:34:29.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.626391', 7),
(33, 7, '0', 4, '2024-03-06 15:36:33.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.626391', 7),
(34, 7, '0', 4, '2024-03-06 15:41:44.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.626391', 7),
(35, 7, '0', 4, '2024-03-06 15:57:40.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.626391', 7),
(36, 7, '0', 4, '2024-03-06 15:59:18.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.642371', 7),
(37, 7, '0', 4, '2024-03-06 16:01:27.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.642371', 7),
(38, 7, '0', 4, '2024-03-06 16:04:50.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.642371', 7),
(39, 7, '0', 4, '2024-03-06 16:04:56.000000', 'duress mng set', 0, 0, 0, '2024-03-13 08:06:24.642371', 7),
(40, 7, '0', 4, '2024-03-06 16:04:59.000000', 'anti passback set', 0, 0, 0, '2024-03-13 08:06:24.656415', 7),
(41, 7, '0', 4, '2024-03-06 16:05:54.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.656415', 7),
(42, 7, '0', 0, '2024-03-06 16:09:16.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.656415', 7),
(43, 7, '0', 4, '2024-03-06 16:09:33.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.656415', 7),
(44, 7, '0', 4, '2024-03-06 16:15:58.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.656415', 7),
(45, 7, '0', 4, '2024-03-06 16:17:47.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.671430', 7),
(46, 7, '0', 4, '2024-03-06 16:24:21.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.671430', 7),
(47, 7, '0', 0, '2024-03-13 08:56:14.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.671430', 7),
(48, 7, '0', 4, '2024-03-13 08:56:49.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.671430', 7),
(49, 7, '0', 4, '2024-03-13 08:57:43.000000', '0', 0, 0, 0, '2024-03-13 08:06:24.686429', 7),
(50, 7, '0', 5, '2024-03-13 09:02:32.000000', 'DHCP', 0, 0, 0, '2024-03-13 08:06:24.686429', 7),
(51, 7, '0', 4, '2024-03-13 09:03:47.000000', '0', 0, 0, 0, '2024-03-13 09:03:47.806181', 7);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminalparameter`
--

CREATE TABLE `iclock_terminalparameter` (
  `id` int(11) NOT NULL,
  `param_type` varchar(10) DEFAULT NULL,
  `param_name` varchar(30) NOT NULL,
  `param_value` varchar(100) NOT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_terminalparameter`
--

INSERT INTO `iclock_terminalparameter` (`id`, `param_type`, `param_name`, `param_value`, `terminal_id`) VALUES
(1, NULL, 'IRTempDetectionFunOn', '', 7),
(2, NULL, '~MaxUserPhotoCount', '1000', 7),
(3, NULL, 'VideoTID', '', 7),
(4, NULL, 'MultiBioVersion', '0:0:0:0:0:0:0:0:12.0:58.12', 7),
(5, NULL, '~DeviceName', 'MiniAC', 7),
(6, NULL, 'UserPicURLFunOn', '1', 7),
(7, NULL, 'FPCount', '0', 7),
(8, NULL, 'BioPhotoFun', '1', 7),
(9, NULL, '~MaxFingerCount', '100', 7),
(10, NULL, '~MaxAttLogCount', '15', 7),
(11, NULL, 'PhotoFunOn', '1', 7),
(12, NULL, 'UserCount', '3', 7),
(13, NULL, 'MultiBioDataSupport', '0:0:0:0:0:0:0:0:1:1', 7),
(14, NULL, 'MultiBioDataCount', '0:0:0:0:0:0:0:0:2:1', 7),
(15, NULL, '~MaxUserCount', '10', 7),
(16, NULL, 'FPVersion', '10', 7),
(17, NULL, 'MultiBioPhotoCount', '0:0:0:0:0:0:0:0:0:1', 7),
(18, NULL, 'TransactionCount', '23', 7),
(19, NULL, '~OEMVendor', 'HIT Corporation', 7),
(20, NULL, '~LockFunOn', '15', 7),
(21, NULL, 'SubcontractingUpgradeFunOn', '', 7),
(22, NULL, 'MAC', '00:17:61:12:f1:4f', 7),
(23, NULL, 'PvFunOn', '1', 7),
(24, NULL, 'CardProtFormat', '1', 7),
(25, NULL, '~Platform', 'ZAM170_TFT', 7),
(26, NULL, 'FingerFunOn', '0', 7),
(27, NULL, 'RegDeviceType', '', 7),
(28, NULL, 'FvFunOn', '0', 7),
(29, NULL, '~MaxPvCount', '800', 7),
(30, NULL, 'MaxMultiBioDataCount', '0:0:0:0:0:0:0:0:800:800', 7),
(31, NULL, 'FWVersion', 'ZAM170-NF-Ver1.5.40', 7),
(32, NULL, 'FaceFunOn', '1', 7),
(33, NULL, 'Language', '69', 7),
(34, NULL, 'PvCount', '2', 7),
(35, NULL, '~MaxFvCount', '10', 7),
(36, NULL, 'FaceVersion', '58', 7),
(37, NULL, 'VisilightFun', '1', 7),
(38, NULL, 'FvCount', '0', 7),
(39, NULL, 'MultiBioPhotoSupport', '0:0:0:0:0:0:0:0:0:1', 7),
(40, NULL, 'IPAddress', '192.168.200.120', 7),
(41, NULL, 'FaceCount', '1', 7),
(42, NULL, 'MaxMultiBioPhotoCount', '0:0:0:0:0:0:0:0:0:800', 7),
(43, NULL, 'MaskDetectionFunOn', '', 7),
(44, NULL, 'FvVersion', '3', 7),
(45, NULL, '~MaxFaceCount', '800', 7),
(46, NULL, 'PushVersion', 'Ver 2.0.32S-20200714', 7),
(47, NULL, 'VisualIntercomFunOn', '', 7),
(48, NULL, 'BioDataFun', '', 7),
(49, NULL, 'PvVersion', '12', 7),
(50, NULL, 'Identifier', '01110', 7),
(51, NULL, 'ZKFaceVersion', '58', 7),
(52, NULL, '~ZKFPVersion', '10', 7),
(53, NULL, 'faceTempNumber', '12', 7),
(54, NULL, 'VOLUME', '70', 7),
(55, NULL, 'AutoServerFunOn', '1', 7),
(56, NULL, 'IsSupportNFC', '0', 7),
(57, NULL, 'MultiCardInterTimeFunOn', '1', 7),
(58, NULL, 'Reader1IOState', '1', 7),
(59, NULL, '~AlgVer', '10', 7),
(60, NULL, 'FreeFlashSize', '204176', 7),
(61, NULL, 'MaxMCUCardBits', '', 7),
(62, NULL, 'DtFmt', '9', 7),
(63, NULL, 'Brightness', '0', 7),
(64, NULL, '~MaxBioPhotoCount', '800', 7),
(65, NULL, 'MachineTZFunOn', '1', 7),
(66, NULL, 'AccSupportFunList', '001001001010100000000000100000000010001110100000000000000000000000000000000000000000000000000000', 7),
(67, NULL, 'BackupDev', '0', 7),
(68, NULL, 'IsTFT', '1', 7),
(69, NULL, '~SerialNumber', 'CL9M212260015', 7),
(70, NULL, '~DSTF', '1', 7),
(71, NULL, 'authKey', '', 7),
(72, NULL, 'FlashSize', '396432', 7),
(73, NULL, 'MainTime', '1970-01-01 00:00:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminaluploadlog`
--

CREATE TABLE `iclock_terminaluploadlog` (
  `id` int(11) NOT NULL,
  `event` varchar(80) NOT NULL,
  `content` varchar(80) NOT NULL,
  `upload_count` int(11) NOT NULL,
  `error_count` int(11) NOT NULL,
  `upload_time` datetime(6) NOT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_terminaluploadlog`
--

INSERT INTO `iclock_terminaluploadlog` (`id`, `event`, `content`, `upload_count`, `error_count`, `upload_time`, `terminal_id`) VALUES
(1, 'Operation Log', ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,', 56, 0, '2024-03-13 08:06:24.686429', 7),
(2, 'Transaction', 'Duplicate:9', 22, 0, '2024-03-13 08:06:29.403031', 7),
(3, 'User', '1,2,3', 3, 0, '2024-03-13 08:06:30.185385', 7),
(4, 'BioData[Palm] Create', '1,1,1,1,1,2,2,2,2,2', 10, 0, '2024-03-13 08:06:32.188263', 7),
(5, 'BioData[Bio-Photo] Create', '3', 1, 0, '2024-03-13 08:06:32.188263', 7),
(6, 'BioPhoto', '3', 1, 0, '2024-03-13 08:06:33.151805', 7),
(7, 'Operation Log', '', 1, 0, '2024-03-13 09:03:47.808476', 7);

-- --------------------------------------------------------

--
-- Table structure for table `iclock_terminalworkcode`
--

CREATE TABLE `iclock_terminalworkcode` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `code` varchar(8) NOT NULL,
  `alias` varchar(24) NOT NULL,
  `last_activity` datetime(6) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iclock_transaction`
--

CREATE TABLE `iclock_transaction` (
  `id` int(11) NOT NULL,
  `emp_code` varchar(20) NOT NULL,
  `punch_time` datetime(6) NOT NULL,
  `punch_state` varchar(5) NOT NULL,
  `verify_type` int(11) NOT NULL,
  `work_code` varchar(20) DEFAULT NULL,
  `terminal_sn` varchar(50) DEFAULT NULL,
  `terminal_alias` varchar(50) DEFAULT NULL,
  `area_alias` varchar(100) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `gps_location` longtext DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `purpose` smallint(6) DEFAULT NULL,
  `crc` varchar(100) DEFAULT NULL,
  `is_attendance` smallint(6) DEFAULT NULL,
  `reserved` varchar(100) DEFAULT NULL,
  `upload_time` datetime(6) DEFAULT NULL,
  `sync_status` smallint(6) DEFAULT NULL,
  `sync_time` datetime(6) DEFAULT NULL,
  `is_mask` smallint(6) DEFAULT NULL,
  `temperature` decimal(4,1) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  `company_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iclock_transaction`
--

INSERT INTO `iclock_transaction` (`id`, `emp_code`, `punch_time`, `punch_state`, `verify_type`, `work_code`, `terminal_sn`, `terminal_alias`, `area_alias`, `longitude`, `latitude`, `gps_location`, `mobile`, `source`, `purpose`, `crc`, `is_attendance`, `reserved`, `upload_time`, `sync_status`, `sync_time`, `is_mask`, `temperature`, `emp_id`, `terminal_id`, `company_code`) VALUES
(1, '1', '2024-03-04 11:57:53.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABABAFAHAFADA', 1, NULL, '2024-03-13 08:06:23.358755', 0, NULL, 255, '255.0', 1, 7, '1'),
(2, '3', '2024-03-04 11:58:12.000000', '255', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABABAFAIABACA', 1, NULL, '2024-03-13 08:06:23.402393', 0, NULL, 255, '255.0', 3, 7, '1'),
(3, '1', '2024-03-04 11:59:07.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABABAFAJAAAHA', 1, NULL, '2024-03-13 08:06:23.413239', 0, NULL, 255, '255.0', 1, 7, '1'),
(4, '1', '2024-03-04 12:47:14.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABACAEAHABAEA', 1, NULL, '2024-03-13 08:06:23.429770', 0, NULL, 255, '255.0', 1, 7, '1'),
(5, '2', '2024-03-04 12:47:50.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABACAEAHAFAAA', 1, NULL, '2024-03-13 08:06:23.441041', 0, NULL, 255, '255.0', 2, 7, '1'),
(6, '3', '2024-03-04 14:39:56.000000', '255', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABAEADAJAFAGA', 1, NULL, '2024-03-13 08:06:23.447518', 0, NULL, 255, '255.0', 3, 7, '1'),
(7, '3', '2024-03-04 14:43:15.000000', '255', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAEABAEAEADABAFA', 1, NULL, '2024-03-13 08:06:23.463463', 0, NULL, 255, '255.0', 3, 7, '1'),
(8, '1', '2024-03-06 15:40:48.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAGABAFAEAAAEAIA', 1, NULL, '2024-03-13 08:06:23.471868', 0, NULL, 255, '255.0', 1, 7, '1'),
(9, '3', '2024-03-06 16:24:14.000000', '255', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAAGABAGACAEABAEA', 1, NULL, '2024-03-13 08:06:23.479626', 0, NULL, 255, '255.0', 3, 7, '1'),
(10, '1', '2024-03-01 08:48:57.000000', '0', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABAAAIAEAIAFAHA', 1, NULL, '2024-03-13 08:06:29.274983', 0, NULL, 255, '255.0', 1, 7, '1'),
(11, '1', '2024-03-01 09:47:17.000000', '1', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABAAAJAEAHABAHA', 1, NULL, '2024-03-13 08:06:29.282986', 0, NULL, 255, '255.0', 1, 7, '1'),
(12, '1', '2024-03-01 09:51:37.000000', '0', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABAAAJAFABADAHA', 1, NULL, '2024-03-13 08:06:29.297993', 0, NULL, 255, '255.0', 1, 7, '1'),
(13, '1', '2024-03-01 09:51:57.000000', '1', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABAAAJAFABAFAHA', 1, NULL, '2024-03-13 08:06:29.297993', 0, NULL, 255, '255.0', 1, 7, '1'),
(14, '2', '2024-03-01 10:12:04.000000', '0', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAAABACAAAEA', 1, NULL, '2024-03-13 08:06:29.313002', 0, NULL, 255, '255.0', 2, 7, '1'),
(15, '3', '2024-03-01 10:15:44.000000', '0', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAAABAFAEAEA', 1, NULL, '2024-03-13 08:06:29.327992', 0, NULL, 255, '255.0', 3, 7, '1'),
(16, '3', '2024-03-01 10:16:26.000000', '1', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAAABAGACAGA', 1, NULL, '2024-03-13 08:06:29.327992', 0, NULL, 255, '255.0', 3, 7, '1'),
(17, '3', '2024-03-01 10:26:12.000000', '0', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAAACAGABACA', 1, NULL, '2024-03-13 08:06:29.343000', 0, NULL, 255, '255.0', 3, 7, '1'),
(18, '1', '2024-03-01 10:35:08.000000', '0', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAAADAFAAAIA', 1, NULL, '2024-03-13 08:06:29.358026', 0, NULL, 255, '255.0', 1, 7, '1'),
(19, '2', '2024-03-01 13:36:36.000000', '1', 15, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABADADAGADAGA', 1, NULL, '2024-03-13 08:06:29.358026', 0, NULL, 255, '255.0', 2, 7, '1'),
(20, '1', '2024-03-01 17:58:48.000000', '1', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAHAFAIAEAIA', 1, NULL, '2024-03-13 08:06:29.373039', 0, NULL, 255, '255.0', 1, 7, '1'),
(21, '2', '2024-03-01 17:58:58.000000', '1', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADAAABABAHAFAIAFAIA', 1, NULL, '2024-03-13 08:06:29.373039', 0, NULL, 255, '255.0', 2, 7, '1'),
(22, '1', '2024-03-13 09:00:31.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADABADAAAJAAAAADABA', 1, NULL, '2024-03-13 09:00:32.346733', 0, NULL, 255, '255.0', 1, 7, '1'),
(23, '2', '2024-03-13 10:42:53.000000', '255', 25, '', 'CL9M212260015', 'Auto add', 'Medan', NULL, NULL, NULL, NULL, 1, 41, 'CAAACAEAAADABADABAAAEACAFADA', 1, NULL, '2024-03-13 10:42:53.531563', 0, NULL, 255, '255.0', 2, 7, '1');

-- --------------------------------------------------------

--
-- Table structure for table `iclock_transactionproofcmd`
--

CREATE TABLE `iclock_transactionproofcmd` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `terminal_count` int(11) DEFAULT NULL,
  `server_count` int(11) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `reserved_init` int(11) DEFAULT NULL,
  `reserved_float` double DEFAULT NULL,
  `reserved_char` varchar(30) DEFAULT NULL,
  `terminal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingentity`
--

CREATE TABLE `meeting_meetingentity` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `meeting_date` date NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `duration` int(11) NOT NULL,
  `in_required` tinyint(1) NOT NULL,
  `in_start` datetime(6) NOT NULL,
  `in_end` datetime(6) NOT NULL,
  `out_required` tinyint(1) NOT NULL,
  `out_start` datetime(6) NOT NULL,
  `out_end` datetime(6) NOT NULL,
  `apply_reason` varchar(200) NOT NULL,
  `apply_time` datetime(6) NOT NULL,
  `calculation_time` datetime(6) DEFAULT NULL,
  `sync_time` datetime(6) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `auto_recording` varchar(50) NOT NULL,
  `enable_virtual` tinyint(1) NOT NULL,
  `enable_waiting_room` tinyint(1) NOT NULL,
  `host_video` tinyint(1) NOT NULL,
  `jbh_anytime` tinyint(1) NOT NULL,
  `link_data` longtext DEFAULT NULL,
  `mute_upon_entry` tinyint(1) NOT NULL,
  `participant_video` tinyint(1) NOT NULL,
  `preferences` longtext DEFAULT NULL,
  `time_zone` smallint(6) NOT NULL,
  `view_date` date NOT NULL,
  `virutal_uuid` varchar(50) DEFAULT NULL,
  `zoom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingentity_attender`
--

CREATE TABLE `meeting_meetingentity_attender` (
  `id` int(11) NOT NULL,
  `meetingentity_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingmanuallog`
--

CREATE TABLE `meeting_meetingmanuallog` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `punch_time` datetime(6) NOT NULL,
  `punch_state` varchar(5) NOT NULL,
  `apply_reason` varchar(200) NOT NULL,
  `apply_time` datetime(6) NOT NULL,
  `meeting_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingpayloadbase`
--

CREATE TABLE `meeting_meetingpayloadbase` (
  `id` char(32) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `duration` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `clock_in` datetime(6) DEFAULT NULL,
  `clock_out` datetime(6) DEFAULT NULL,
  `attended_duration` int(11) NOT NULL,
  `late_in` int(11) NOT NULL,
  `early_out` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingroom`
--

CREATE TABLE `meeting_meetingroom` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `code` varchar(32) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `state` smallint(6) NOT NULL,
  `enable_room` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingroomdevice`
--

CREATE TABLE `meeting_meetingroomdevice` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_meetingtransaction`
--

CREATE TABLE `meeting_meetingtransaction` (
  `id` int(11) NOT NULL,
  `emp_code` varchar(50) NOT NULL,
  `punch_datetime` datetime(6) NOT NULL,
  `punch_date` date NOT NULL,
  `punch_time` time(6) NOT NULL,
  `punch_state` varchar(5) NOT NULL,
  `source` smallint(6) NOT NULL,
  `upload_time` datetime(6) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_announcement`
--

CREATE TABLE `mobile_announcement` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `category` smallint(6) NOT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `system_sender` varchar(50) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `init_sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_appactionlog`
--

CREATE TABLE `mobile_appactionlog` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `client` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `params` longtext DEFAULT NULL,
  `describe` longtext DEFAULT NULL,
  `request_status` smallint(6) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `remote_ip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_applist`
--

CREATE TABLE `mobile_applist` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `login_time` datetime(6) NOT NULL,
  `last_active` datetime(6) NOT NULL,
  `token` longtext NOT NULL,
  `device_token` longtext NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `client_category` smallint(6) NOT NULL,
  `active` smallint(6) DEFAULT NULL,
  `enable` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_appnotification`
--

CREATE TABLE `mobile_appnotification` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `system_sender` varchar(50) DEFAULT NULL,
  `category` smallint(6) NOT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `payload` longtext DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `notification_time` datetime(6) NOT NULL,
  `read_status` smallint(6) NOT NULL,
  `read_time` datetime(6) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `init_sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_gpsfordepartment`
--

CREATE TABLE `mobile_gpsfordepartment` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `distance` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_gpsfordepartment_location`
--

CREATE TABLE `mobile_gpsfordepartment_location` (
  `id` int(11) NOT NULL,
  `gpsfordepartment_id` int(11) NOT NULL,
  `gpslocation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_gpsforemployee`
--

CREATE TABLE `mobile_gpsforemployee` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `distance` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_gpsforemployee_location`
--

CREATE TABLE `mobile_gpsforemployee_location` (
  `id` int(11) NOT NULL,
  `gpsforemployee_id` int(11) NOT NULL,
  `gpslocation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_gpslocation`
--

CREATE TABLE `mobile_gpslocation` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_mobileapirequestlog`
--

CREATE TABLE `mobile_mobileapirequestlog` (
  `id` int(11) NOT NULL,
  `username_persistent` varchar(200) DEFAULT NULL,
  `requested_at` datetime(6) NOT NULL,
  `response_ms` int(10) UNSIGNED NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deductionformula`
--

CREATE TABLE `payroll_deductionformula` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `formula` varchar(100) NOT NULL,
  `remark` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_empexpenseexemption`
--

CREATE TABLE `payroll_empexpenseexemption` (
  `id` int(11) NOT NULL,
  `exemption_name` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `issued_time` datetime(6) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `year` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_emploan`
--

CREATE TABLE `payroll_emploan` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `loan_amount` double NOT NULL,
  `loan_time` datetime(6) NOT NULL,
  `refund_cycle` smallint(6) NOT NULL,
  `per_cycle_refund` double NOT NULL,
  `loan_clean_time` datetime(6) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_emppayrollprofile`
--

CREATE TABLE `payroll_emppayrollprofile` (
  `id` int(11) NOT NULL,
  `payment_mode` smallint(6) DEFAULT NULL,
  `payment_type` smallint(6) DEFAULT NULL,
  `bank_name` varchar(30) DEFAULT NULL,
  `bank_account` varchar(30) DEFAULT NULL,
  `personnel_id` varchar(30) DEFAULT NULL,
  `agent_id` varchar(30) DEFAULT NULL,
  `agent_account` varchar(30) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_emppayrollprofile`
--

INSERT INTO `payroll_emppayrollprofile` (`id`, `payment_mode`, `payment_type`, `bank_name`, `bank_account`, `personnel_id`, `agent_id`, `agent_account`, `employee_id`) VALUES
(1, 1, 1, '', '', '', '', '', 1),
(2, 1, 1, '', '', '', '', '', 2),
(3, 1, 1, '', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_exceptionformula`
--

CREATE TABLE `payroll_exceptionformula` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `formula` varchar(100) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `pay_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_exceptionformula`
--

INSERT INTO `payroll_exceptionformula` (`id`, `name`, `formula`, `remark`, `pay_code_id`) VALUES
(1, 'Early Out', '((({Basic Salary}/30)/8)/60)*{E}', '', 3),
(2, 'Late In', '(({Basic Salary}/30)/8)/60*{L}', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_extradeduction`
--

CREATE TABLE `payroll_extradeduction` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `amount` double NOT NULL,
  `issued_time` datetime(6) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `special_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_extraincrease`
--

CREATE TABLE `payroll_extraincrease` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `amount` double NOT NULL,
  `issued_time` datetime(6) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `special_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_increasementformula`
--

CREATE TABLE `payroll_increasementformula` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `formula` varchar(100) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `apply_mode` smallint(6) NOT NULL,
  `special_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_leaveformula`
--

CREATE TABLE `payroll_leaveformula` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `formula` varchar(100) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `pay_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_overtimeformula`
--

CREATE TABLE `payroll_overtimeformula` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `formula` varchar(100) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `pay_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_overtimeformula`
--

INSERT INTO `payroll_overtimeformula` (`id`, `name`, `formula`, `remark`, `pay_code_id`) VALUES
(1, 'Weekend OT', '((({Basic Salary}/30)/8)*1)*{WOT}', '', 6),
(2, 'Normal OT', '((({Basic Salary}/30)/8)*1.5)*{NOT}', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_payrollpayload`
--

CREATE TABLE `payroll_payrollpayload` (
  `id` int(11) NOT NULL,
  `calc_time` date DEFAULT NULL,
  `basic_salary` double DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `format_dict` longtext DEFAULT NULL,
  `payment_mode` smallint(6) DEFAULT NULL,
  `increase` double DEFAULT NULL,
  `deduction` double DEFAULT NULL,
  `increase_formula` longtext DEFAULT NULL,
  `deduction_formula` longtext DEFAULT NULL,
  `increase_formula_name` longtext DEFAULT NULL,
  `deduction_formula_name` longtext DEFAULT NULL,
  `extra_increase` double DEFAULT NULL,
  `extra_deduction` double DEFAULT NULL,
  `total_loan_amount` double DEFAULT NULL,
  `refund_loan_amount` double DEFAULT NULL,
  `unrefund_loan_amount` double DEFAULT NULL,
  `loan_deduction` double DEFAULT NULL,
  `loan_increase` double DEFAULT NULL,
  `advance_increase` double DEFAULT NULL,
  `advance_deduction` double DEFAULT NULL,
  `reimbursement` double DEFAULT NULL,
  `total_increase_formula` longtext DEFAULT NULL,
  `total_increase_formula_name` longtext DEFAULT NULL,
  `total_increase_expression` longtext DEFAULT NULL,
  `total_increase` double DEFAULT NULL,
  `total_deduction_formula` longtext DEFAULT NULL,
  `total_deduction_formula_name` longtext DEFAULT NULL,
  `total_deduction_expression` longtext DEFAULT NULL,
  `total_deduction` double DEFAULT NULL,
  `total_salary_expression` longtext DEFAULT NULL,
  `total_salary` double DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `calc_end_time` date DEFAULT NULL,
  `net_pay` double DEFAULT NULL,
  `social_security_deduction` double DEFAULT NULL,
  `tax_deduction` double DEFAULT NULL,
  `total_income_per_year` double DEFAULT NULL,
  `total_tax_deduction_per_year` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_payrollpayloadexpenseexemption`
--

CREATE TABLE `payroll_payrollpayloadexpenseexemption` (
  `id` int(11) NOT NULL,
  `exemption_id` int(11) DEFAULT NULL,
  `payload_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_payrollpayloadpaycode`
--

CREATE TABLE `payroll_payrollpayloadpaycode` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `formula` longtext DEFAULT NULL,
  `formula_name` longtext DEFAULT NULL,
  `pay_code_id` int(11) NOT NULL,
  `payload_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_reimbursement`
--

CREATE TABLE `payroll_reimbursement` (
  `id` int(11) NOT NULL,
  `rmb_amount` double NOT NULL,
  `rmb_time` datetime(6) NOT NULL,
  `rmb_file` varchar(200) DEFAULT NULL,
  `rmb_remark` varchar(300) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salaryadvance`
--

CREATE TABLE `payroll_salaryadvance` (
  `id` int(11) NOT NULL,
  `advance_amount` double NOT NULL,
  `advance_time` datetime(6) NOT NULL,
  `advance_remark` varchar(300) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salarystructure`
--

CREATE TABLE `payroll_salarystructure` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `salary_amount` double NOT NULL,
  `effective_date` date NOT NULL,
  `salary_remark` varchar(300) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salarystructure_deductionformula`
--

CREATE TABLE `payroll_salarystructure_deductionformula` (
  `id` int(11) NOT NULL,
  `salarystructure_id` int(11) NOT NULL,
  `deductionformula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salarystructure_exceptionformula`
--

CREATE TABLE `payroll_salarystructure_exceptionformula` (
  `id` int(11) NOT NULL,
  `salarystructure_id` int(11) NOT NULL,
  `exceptionformula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salarystructure_increasementformula`
--

CREATE TABLE `payroll_salarystructure_increasementformula` (
  `id` int(11) NOT NULL,
  `salarystructure_id` int(11) NOT NULL,
  `increasementformula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salarystructure_leaveformula`
--

CREATE TABLE `payroll_salarystructure_leaveformula` (
  `id` int(11) NOT NULL,
  `salarystructure_id` int(11) NOT NULL,
  `leaveformula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salarystructure_overtimeformula`
--

CREATE TABLE `payroll_salarystructure_overtimeformula` (
  `id` int(11) NOT NULL,
  `salarystructure_id` int(11) NOT NULL,
  `overtimeformula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_socialsecuritydeduction`
--

CREATE TABLE `payroll_socialsecuritydeduction` (
  `id` int(11) NOT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_socialsecuritydeduction`
--

INSERT INTO `payroll_socialsecuritydeduction` (`id`, `country_code`, `used`, `data`) VALUES
(1, 'default', 1, '{\"minimum\": \"1650\", \"minimum_social_security\": \"83\", \"min_max_percent\": [{\"min\": \"1650\", \"max\": \"15000\", \"percent\": \"5\"}], \"maximum\": \"15000\", \"maximum_social_security\": \"750\"}');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_specialpayment`
--

CREATE TABLE `payroll_specialpayment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_taxdeduction`
--

CREATE TABLE `payroll_taxdeduction` (
  `id` int(11) NOT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_taxdeduction`
--

INSERT INTO `payroll_taxdeduction` (`id`, `country_code`, `used`, `data`) VALUES
(1, 'default', 1, '{\"min_max_percent\": [{\"min_tax_deduction\": \"0\", \"max_tax_deduction\": \"150000\", \"percent_tax_deduction\": \"0\"}, {\"min_tax_deduction\": \"150000\", \"max_tax_deduction\": \"300000\", \"percent_tax_deduction\": \"5\"}, {\"min_tax_deduction\": \"300000\", \"max_tax_deduction\": \"500000\", \"percent_tax_deduction\": \"10\"}, {\"min_tax_deduction\": \"500000\", \"max_tax_deduction\": \"750000\", \"percent_tax_deduction\": \"15\"}, {\"min_tax_deduction\": \"750000\", \"max_tax_deduction\": \"1000000\", \"percent_tax_deduction\": \"20\"}, {\"min_tax_deduction\": \"1000000\", \"max_tax_deduction\": \"2000000\", \"percent_tax_deduction\": \"25\"}, {\"min_tax_deduction\": \"2000000\", \"max_tax_deduction\": \"4000000\", \"percent_tax_deduction\": \"30\"}], \"maximum\": \"4000000\", \"maximum_percent\": \"35\"}');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_area`
--

CREATE TABLE `personnel_area` (
  `id` int(11) NOT NULL,
  `area_code` varchar(30) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `parent_area_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `device_count` int(11) NOT NULL,
  `employee_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_area`
--

INSERT INTO `personnel_area` (`id`, `area_code`, `area_name`, `is_default`, `parent_area_id`, `company_id`, `device_count`, `employee_count`) VALUES
(1, '1', 'Not Authorized', 1, NULL, 1, 0, 0),
(2, '2', 'Medan', 0, NULL, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_assignareaemployee`
--

CREATE TABLE `personnel_assignareaemployee` (
  `id` int(11) NOT NULL,
  `assigned_time` datetime(6) NOT NULL,
  `area_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_certification`
--

CREATE TABLE `personnel_certification` (
  `id` int(11) NOT NULL,
  `cert_code` varchar(20) NOT NULL,
  `cert_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_company`
--

CREATE TABLE `personnel_company` (
  `id` int(11) NOT NULL,
  `company_code` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `logo_pos` smallint(6) NOT NULL,
  `name_pos` smallint(6) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `website` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_company`
--

INSERT INTO `personnel_company` (`id`, `company_code`, `company_name`, `is_default`, `address`, `address2`, `change_time`, `change_user`, `city`, `country`, `create_time`, `create_user`, `email`, `fax`, `logo`, `logo_pos`, `name_pos`, `phone`, `postal_code`, `state`, `status`, `website`) VALUES
(1, '1', 'company.default', 1, NULL, NULL, '2024-03-06 14:43:35.969664', NULL, NULL, NULL, '2024-03-06 14:43:36.017032', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_department`
--

CREATE TABLE `personnel_department` (
  `id` int(11) NOT NULL,
  `dept_code` varchar(50) NOT NULL,
  `dept_name` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `parent_dept_id` int(11) DEFAULT NULL,
  `dept_manager_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_department`
--

INSERT INTO `personnel_department` (`id`, `dept_code`, `dept_name`, `is_default`, `parent_dept_id`, `dept_manager_id`, `company_id`) VALUES
(1, '1', 'Department', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employee`
--

CREATE TABLE `personnel_employee` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `emp_code` varchar(20) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `passport` varchar(30) DEFAULT NULL,
  `driver_license_automobile` varchar(30) DEFAULT NULL,
  `driver_license_motorcycle` varchar(30) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `self_password` varchar(128) DEFAULT NULL,
  `device_password` varchar(20) DEFAULT NULL,
  `dev_privilege` int(11) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `acc_group` varchar(5) DEFAULT NULL,
  `acc_timezone` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `office_tel` varchar(20) DEFAULT NULL,
  `contact_tel` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `national` varchar(50) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `enroll_sn` varchar(20) DEFAULT NULL,
  `ssn` varchar(20) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `verify_mode` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `emp_type` smallint(6) DEFAULT NULL,
  `enable_payroll` tinyint(1) NOT NULL,
  `app_status` smallint(6) DEFAULT NULL,
  `app_role` smallint(6) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `login_ip` varchar(32) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `leave_group` int(11) DEFAULT NULL,
  `emp_code_digit` bigint(20) DEFAULT NULL,
  `superior_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_employee`
--

INSERT INTO `personnel_employee` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `emp_code`, `first_name`, `last_name`, `nickname`, `passport`, `driver_license_automobile`, `driver_license_motorcycle`, `photo`, `self_password`, `device_password`, `dev_privilege`, `card_no`, `acc_group`, `acc_timezone`, `gender`, `birthday`, `address`, `postcode`, `office_tel`, `contact_tel`, `mobile`, `national`, `religion`, `title`, `enroll_sn`, `ssn`, `update_time`, `hire_date`, `verify_mode`, `city`, `emp_type`, `enable_payroll`, `app_status`, `app_role`, `email`, `last_login`, `is_active`, `session_key`, `login_ip`, `department_id`, `position_id`, `leave_group`, `emp_code_digit`, `superior_id`, `company_id`) VALUES
(1, '2024-03-18 08:06:29.779774', NULL, '2024-03-13 08:06:29.779774', NULL, 0, '1', 'dummy01', NULL, NULL, NULL, NULL, NULL, '', 'pbkdf2_sha256$390000$ZVafrW0cKAKer8tV8ZPNfZ$kbMr/pFsuJTulWsuw/aqpgU9jjSfVhnl6ZxZoRRVWPw=', NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CL9M212260015', NULL, '2024-03-13 08:06:29.869792', '2024-03-13', 0, NULL, NULL, 1, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, 1),
(2, '2024-03-13 08:06:29.975185', NULL, '2024-03-13 08:06:29.975185', NULL, 0, '2', 'dummy02', NULL, NULL, NULL, NULL, NULL, '', 'pbkdf2_sha256$390000$DlMsp4hpJItggyiztfmIqY$R4fTULwnSuD2/+5VQXMnL259nzscNR2J+8zws99WoDE=', NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CL9M212260015', NULL, '2024-03-13 08:06:30.035146', '2024-03-13', 0, NULL, NULL, 1, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 2, NULL, 1),
(3, '2024-03-13 08:06:30.140364', NULL, '2024-03-13 08:06:30.140364', NULL, 0, '3', 'tumow', NULL, NULL, NULL, NULL, NULL, '', 'pbkdf2_sha256$390000$dUEnd2kWwSZY3dB36nUJB3$W8K6MuRDyrp+CWgsanq3l6SeRAxdqaUVsQZV/t/wLeQ=', NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CL9M212260015', NULL, '2024-03-13 08:06:30.185385', '2024-03-13', 0, NULL, NULL, 1, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employeecalendar`
--

CREATE TABLE `personnel_employeecalendar` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `calendar` varchar(100) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employeecertification`
--

CREATE TABLE `personnel_employeecertification` (
  `id` int(11) NOT NULL,
  `expire_on` date DEFAULT NULL,
  `email_alert` tinyint(1) NOT NULL,
  `before` int(11) DEFAULT NULL,
  `certification_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `certification_code` varchar(20) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `file_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employeecustomattribute`
--

CREATE TABLE `personnel_employeecustomattribute` (
  `id` int(11) NOT NULL,
  `attr_name` varchar(50) NOT NULL,
  `attr_type` smallint(6) NOT NULL,
  `attr_value` varchar(999) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  `is_unique` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employeeextrainfo`
--

CREATE TABLE `personnel_employeeextrainfo` (
  `id` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employeeprofile`
--

CREATE TABLE `personnel_employeeprofile` (
  `id` int(11) NOT NULL,
  `column_order` longtext NOT NULL,
  `preferences` longtext NOT NULL,
  `pwd_update_time` datetime(6) DEFAULT NULL,
  `emp_id` int(11) NOT NULL,
  `disabled_fields` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_employeeprofile`
--

INSERT INTO `personnel_employeeprofile` (`id`, `column_order`, `preferences`, `pwd_update_time`, `emp_id`, `disabled_fields`) VALUES
(1, '', '', NULL, 1, ''),
(2, '', '', NULL, 2, ''),
(3, '', '', NULL, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employee_area`
--

CREATE TABLE `personnel_employee_area` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_employee_area`
--

INSERT INTO `personnel_employee_area` (`id`, `employee_id`, `area_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employee_flow_role`
--

CREATE TABLE `personnel_employee_flow_role` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `workflowrole_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_employment`
--

CREATE TABLE `personnel_employment` (
  `id` int(11) NOT NULL,
  `employment_type` smallint(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active_time` datetime(6) DEFAULT NULL,
  `inactive_time` datetime(6) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_position`
--

CREATE TABLE `personnel_position` (
  `id` int(11) NOT NULL,
  `position_code` varchar(50) NOT NULL,
  `position_name` varchar(100) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `parent_position_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel_position`
--

INSERT INTO `personnel_position` (`id`, `position_code`, `position_name`, `is_default`, `parent_position_id`, `company_id`) VALUES
(1, '1', 'Position', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_resign`
--

CREATE TABLE `personnel_resign` (
  `id` int(11) NOT NULL,
  `resign_date` date NOT NULL,
  `resign_type` int(11) DEFAULT NULL,
  `disableatt` tinyint(1) NOT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rest_framework_tracking_apirequestlog`
--

CREATE TABLE `rest_framework_tracking_apirequestlog` (
  `id` int(11) NOT NULL,
  `requested_at` datetime(6) NOT NULL,
  `response_ms` int(10) UNSIGNED NOT NULL
) ;

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
(1, 'admin', '2024-03-15 18:03:25', '2024-03-15 18:03:25');

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
-- Table structure for table `staff_stafftoken`
--

CREATE TABLE `staff_stafftoken` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sync_area`
--

CREATE TABLE `sync_area` (
  `id` int(11) NOT NULL,
  `post_time` datetime(6) DEFAULT NULL,
  `flag` smallint(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `sync_ret` varchar(200) DEFAULT NULL,
  `area_code` varchar(30) NOT NULL,
  `area_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sync_department`
--

CREATE TABLE `sync_department` (
  `id` int(11) NOT NULL,
  `post_time` datetime(6) DEFAULT NULL,
  `flag` smallint(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `sync_ret` varchar(200) DEFAULT NULL,
  `dept_code` varchar(50) NOT NULL,
  `dept_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sync_employee`
--

CREATE TABLE `sync_employee` (
  `id` int(11) NOT NULL,
  `post_time` datetime(6) DEFAULT NULL,
  `flag` smallint(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `sync_ret` varchar(200) DEFAULT NULL,
  `emp_code` varchar(20) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dept_code` varchar(50) DEFAULT NULL,
  `dept_name` varchar(200) DEFAULT NULL,
  `job_code` varchar(50) DEFAULT NULL,
  `job_name` varchar(100) DEFAULT NULL,
  `area_code` varchar(30) DEFAULT NULL,
  `area_name` varchar(100) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `multi_area` tinyint(1) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sync_job`
--

CREATE TABLE `sync_job` (
  `id` int(11) NOT NULL,
  `post_time` datetime(6) DEFAULT NULL,
  `flag` smallint(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `sync_ret` varchar(200) DEFAULT NULL,
  `job_code` varchar(50) NOT NULL,
  `job_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$EJTvubbZHaQxFeFptbmnGu2vKacVO5bl9p6Xb9dhoBaEJUZrIvCri', NULL, '2024-03-15 17:00:00', '2024-03-15 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_reason`
--

CREATE TABLE `visitor_reason` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `visit_reason` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_reservation`
--

CREATE TABLE `visitor_reservation` (
  `workflowinstance_ptr_id` int(11) NOT NULL,
  `vis_first_name` varchar(25) DEFAULT NULL,
  `vis_last_name` varchar(25) DEFAULT NULL,
  `cert_no` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `visit_quantity` int(11) NOT NULL,
  `visit_date` datetime(6) NOT NULL,
  `apply_time` datetime(6) NOT NULL,
  `apply_reason` longtext DEFAULT NULL,
  `cert_type_id` int(11) NOT NULL,
  `visit_department_id` int(11) DEFAULT NULL,
  `visit_reason_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitor`
--

CREATE TABLE `visitor_visitor` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `visitor_code` varchar(20) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `cert_no` varchar(50) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `ssn` varchar(20) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `visit_quantity` int(11) NOT NULL,
  `entry_carrying_goods` varchar(200) DEFAULT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `exit_time` datetime(6) DEFAULT NULL,
  `exit_carrying_goods` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `cert_type_id` int(11) NOT NULL,
  `visit_department_id` int(11) DEFAULT NULL,
  `visit_reason_id` int(11) DEFAULT NULL,
  `visited_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitorbiodata`
--

CREATE TABLE `visitor_visitorbiodata` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `bio_tmp` longtext NOT NULL,
  `bio_no` int(11) DEFAULT NULL,
  `bio_index` int(11) DEFAULT NULL,
  `bio_type` int(11) NOT NULL,
  `major_ver` varchar(30) NOT NULL,
  `minor_ver` varchar(30) DEFAULT NULL,
  `bio_format` int(11) DEFAULT NULL,
  `valid` int(11) NOT NULL,
  `duress` int(11) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `visitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitorbiophoto`
--

CREATE TABLE `visitor_visitorbiophoto` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `enroll_sn` varchar(50) DEFAULT NULL,
  `register_photo` varchar(100) NOT NULL,
  `register_time` datetime(6) NOT NULL,
  `approval_photo` varchar(100) DEFAULT NULL,
  `approval_state` smallint(6) NOT NULL,
  `approval_time` datetime(6) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `visitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitorconfig`
--

CREATE TABLE `visitor_visitorconfig` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `qr_code_policy` smallint(6) NOT NULL,
  `code_prefix` varchar(5) NOT NULL,
  `code_width` int(11) NOT NULL,
  `code_start` int(11) NOT NULL,
  `access_limited` longtext DEFAULT NULL,
  `auto_delete_data` smallint(6) NOT NULL,
  `data_retention` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor_visitorconfig`
--

INSERT INTO `visitor_visitorconfig` (`id`, `create_time`, `create_user`, `change_time`, `change_user`, `status`, `qr_code_policy`, `code_prefix`, `code_width`, `code_start`, `access_limited`, `auto_delete_data`, `data_retention`) VALUES
(1, '2024-03-06 14:44:01.972704', NULL, '2024-03-06 14:44:01.972704', NULL, 0, 1, 'V', 8, 1, NULL, 0, 9999);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitorlog`
--

CREATE TABLE `visitor_visitorlog` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `visitor_status` smallint(6) DEFAULT NULL,
  `visitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitortransaction`
--

CREATE TABLE `visitor_visitortransaction` (
  `id` int(11) NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `create_user` varchar(150) DEFAULT NULL,
  `change_time` datetime(6) DEFAULT NULL,
  `change_user` varchar(150) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `visitor_code` varchar(50) NOT NULL,
  `area` varchar(30) NOT NULL,
  `punch_time` datetime(6) DEFAULT NULL,
  `punch_state` varchar(5) NOT NULL,
  `verify_type` int(11) NOT NULL,
  `temperature` decimal(4,1) NOT NULL,
  `is_mask` int(11) NOT NULL,
  `upload_time` datetime(6) NOT NULL,
  `source` smallint(6) NOT NULL,
  `terminal_sn` varchar(50) DEFAULT NULL,
  `terminal_alias` varchar(50) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  `visitor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitor_acc_groups`
--

CREATE TABLE `visitor_visitor_acc_groups` (
  `id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `accgroups_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_visitor_area`
--

CREATE TABLE `visitor_visitor_area` (
  `id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_nodeinstance`
--

CREATE TABLE `workflow_nodeinstance` (
  `id` int(11) NOT NULL,
  `node_name` varchar(30) NOT NULL,
  `order_id` int(11) NOT NULL,
  `approval_status` smallint(6) NOT NULL,
  `approval_time` datetime(6) DEFAULT NULL,
  `approval_remark` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `targeted` tinyint(1) NOT NULL,
  `approver_employee_id` int(11) DEFAULT NULL,
  `workflow_instance_id` int(11) DEFAULT NULL,
  `workflow_node_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflowengine`
--

CREATE TABLE `workflow_workflowengine` (
  `id` int(11) NOT NULL,
  `workflow_code` varchar(50) NOT NULL,
  `workflow_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(50) NOT NULL,
  `workflow_type` smallint(6) NOT NULL,
  `applicant_position_id` int(11) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `departments_id` int(11) DEFAULT NULL,
  `is_leave` tinyint(1) NOT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflowengine_employee`
--

CREATE TABLE `workflow_workflowengine_employee` (
  `id` int(11) NOT NULL,
  `workflowengine_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflowinstance`
--

CREATE TABLE `workflow_workflowinstance` (
  `id` int(11) NOT NULL,
  `approval_time` datetime(6) DEFAULT NULL,
  `approval_status` smallint(6) NOT NULL,
  `approval_remark` longtext DEFAULT NULL,
  `approver` varchar(30) DEFAULT NULL,
  `approver_instance` longtext DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `workflow_engine_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflownode`
--

CREATE TABLE `workflow_workflownode` (
  `id` int(11) NOT NULL,
  `node_name` varchar(30) NOT NULL,
  `order_id` int(11) NOT NULL,
  `approver_by_overall` tinyint(1) NOT NULL,
  `notify_by_overall` tinyint(1) NOT NULL,
  `workflow_engine_id` int(11) DEFAULT NULL,
  `from_day` int(11) DEFAULT NULL,
  `to_day` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflownode_approver`
--

CREATE TABLE `workflow_workflownode_approver` (
  `id` int(11) NOT NULL,
  `workflownode_id` int(11) NOT NULL,
  `workflowrole_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflownode_notifier`
--

CREATE TABLE `workflow_workflownode_notifier` (
  `id` int(11) NOT NULL,
  `workflownode_id` int(11) NOT NULL,
  `workflowrole_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_workflowrole`
--

CREATE TABLE `workflow_workflowrole` (
  `id` int(11) NOT NULL,
  `role_code` varchar(30) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `parent_role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_adminbiodata`
--
ALTER TABLE `accounts_adminbiodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_adminbiodata_admin_id_1e6d2d45_fk_auth_user_id` (`admin_id`);

--
-- Indexes for table `accounts_usernotification`
--
ALTER TABLE `accounts_usernotification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_usernotification_user_id_b86755b3_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `acc_acccombination`
--
ALTER TABLE `acc_acccombination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_acccombination_area_id_combination_no_619eb4f5_uniq` (`area_id`,`combination_no`),
  ADD KEY `acc_acccombination_area_id_0d22c34e` (`area_id`);

--
-- Indexes for table `acc_accgroups`
--
ALTER TABLE `acc_accgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_accgroups_area_id_group_no_5130a89c_uniq` (`area_id`,`group_no`),
  ADD KEY `acc_accgroups_area_id_b83745c3` (`area_id`);

--
-- Indexes for table `acc_accholiday`
--
ALTER TABLE `acc_accholiday`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_accholiday_area_id_holiday_id_6630c2eb_uniq` (`area_id`,`holiday_id`),
  ADD KEY `acc_accholiday_area_id_d15c19da` (`area_id`),
  ADD KEY `acc_accholiday_holiday_id_a9efe924_fk_att_holiday_id` (`holiday_id`),
  ADD KEY `acc_accholiday_timezone_id_450d2d1e_fk_acc_acctimezone_id` (`timezone_id`);

--
-- Indexes for table `acc_accprivilege`
--
ALTER TABLE `acc_accprivilege`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_accprivilege_area_id_employee_id_group_id_f3b297d8_uniq` (`area_id`,`employee_id`,`group_id`),
  ADD KEY `acc_accprivilege_employee_id_5fc55f95_fk_personnel_employee_id` (`employee_id`),
  ADD KEY `acc_accprivilege_group_id_c5ed7003_fk_acc_accgroups_id` (`group_id`),
  ADD KEY `acc_accprivilege_area_id_2123ff6f` (`area_id`);

--
-- Indexes for table `acc_accterminal`
--
ALTER TABLE `acc_accterminal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_accterminal_terminal_id_fc92cce2_fk_iclock_terminal_id` (`terminal_id`);

--
-- Indexes for table `acc_acctimezone`
--
ALTER TABLE `acc_acctimezone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acc_acctimezone_area_id_timezone_no_0cb8250f_uniq` (`area_id`,`timezone_no`),
  ADD KEY `acc_acctimezone_area_id_e9ce7a7a` (`area_id`);

--
-- Indexes for table `attparam`
--
ALTER TABLE `attparam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attparam_paraname_paratype_6f176d25_uniq` (`paraname`,`paratype`);

--
-- Indexes for table `att_attcalclog`
--
ALTER TABLE `att_attcalclog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `att_attcode`
--
ALTER TABLE `att_attcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `att_attemployee`
--
ALTER TABLE `att_attemployee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`),
  ADD KEY `att_attemployee_group_id_18d3954d_fk_att_attgroup_id` (`group_id`);

--
-- Indexes for table `att_attgroup`
--
ALTER TABLE `att_attgroup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `att_attgroup_company_id_code_0e94d13b_uniq` (`company_id`,`code`),
  ADD KEY `att_attgroup_company_id_cd1b54f8` (`company_id`);

--
-- Indexes for table `att_attpolicy`
--
ALTER TABLE `att_attpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_attpolicy_ot_pay_code_id_b189b952_fk_att_paycode_id` (`ot_pay_code_id`);

--
-- Indexes for table `att_attreportsetting`
--
ALTER TABLE `att_attreportsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `att_attrule`
--
ALTER TABLE `att_attrule`
  ADD PRIMARY KEY (`param_name`);

--
-- Indexes for table `att_attschedule`
--
ALTER TABLE `att_attschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_attschedule_employee_id_caa61686_fk_personnel_employee_id` (`employee_id`),
  ADD KEY `att_attschedule_shift_id_13d2db9a_fk_att_attshift_id` (`shift_id`);

--
-- Indexes for table `att_attshift`
--
ALTER TABLE `att_attshift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_attshift_company_id_2c0a4f56` (`company_id`);

--
-- Indexes for table `att_breaktime`
--
ALTER TABLE `att_breaktime`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `att_breaktime_alias_6212d9cf_uniq` (`alias`),
  ADD KEY `att_breaktime_loss_code_id_2ffb5432_fk_att_paycode_id` (`loss_code_id`),
  ADD KEY `att_breaktime_profit_code_id_63cdbbcc_fk_att_paycode_id` (`profit_code_id`),
  ADD KEY `att_breaktime_company_id_fbb9a2b7` (`company_id`);

--
-- Indexes for table `att_calculatelastdate`
--
ALTER TABLE `att_calculatelastdate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_calculatelastdate_last_date_1441abdc` (`last_date`);

--
-- Indexes for table `att_calculatetask`
--
ALTER TABLE `att_calculatetask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_calculatetask_start_date_7bbaa889` (`start_date`),
  ADD KEY `att_calculatetask_end_date_75d1d6d2` (`end_date`);

--
-- Indexes for table `att_changeschedule`
--
ALTER TABLE `att_changeschedule`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `att_changeschedule_timeinterval_id_d41ac077_fk_att_timei` (`timeinterval_id`);

--
-- Indexes for table `att_departmentpolicy`
--
ALTER TABLE `att_departmentpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_departmentpolicy_department_id_77059a9d_fk_personnel` (`department_id`),
  ADD KEY `att_departmentpolicy_ot_pay_code_id_390411dd_fk_att_paycode_id` (`ot_pay_code_id`);

--
-- Indexes for table `att_departmentschedule`
--
ALTER TABLE `att_departmentschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_departmentschedu_department_id_c68fca3d_fk_personnel` (`department_id`),
  ADD KEY `att_departmentschedule_shift_id_c37d5ade_fk_att_attshift_id` (`shift_id`);

--
-- Indexes for table `att_deptattrule`
--
ALTER TABLE `att_deptattrule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_deptattrule_department_id_f333c8f0` (`department_id`);

--
-- Indexes for table `att_grouppolicy`
--
ALTER TABLE `att_grouppolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_grouppolicy_group_id_b2e4dfe8_fk_att_attgroup_id` (`group_id`),
  ADD KEY `att_grouppolicy_ot_pay_code_id_1ec83080_fk_att_paycode_id` (`ot_pay_code_id`);

--
-- Indexes for table `att_groupschedule`
--
ALTER TABLE `att_groupschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_groupschedule_group_id_c341493f_fk_att_attgroup_id` (`group_id`),
  ADD KEY `att_groupschedule_shift_id_287e7fc0_fk_att_attshift_id` (`shift_id`),
  ADD KEY `att_groupschedule_start_date_638b6d85` (`start_date`);

--
-- Indexes for table `att_holiday`
--
ALTER TABLE `att_holiday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_holiday_department_id_fbbbd185` (`department_id`),
  ADD KEY `att_holiday_att_group_id_9ddf13ba_fk_att_attgroup_id` (`att_group_id`);

--
-- Indexes for table `att_leave`
--
ALTER TABLE `att_leave`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `att_leave_pay_code_id_2fadf493_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `att_leavegroup`
--
ALTER TABLE `att_leavegroup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `att_leavegroup_company_id_a1c75fcb` (`company_id`);

--
-- Indexes for table `att_leavegroupdetail`
--
ALTER TABLE `att_leavegroupdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_leavegroupdetail_leave_group_id_28f69ada_fk_att_leave` (`leave_group_id`),
  ADD KEY `att_leavegroupdetail_pay_code_id_5013b373_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `att_leaveyearbalance`
--
ALTER TABLE `att_leaveyearbalance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `att_leaveyearbalance_employee_id_year_pay_code_id_2ec71517_uniq` (`employee_id`,`year`,`pay_code_id`),
  ADD KEY `att_leaveyearbalance_pay_code_id_82632aca_fk_att_paycode_id` (`pay_code_id`),
  ADD KEY `att_leaveyearbalance_employee_id_14febdb3` (`employee_id`);

--
-- Indexes for table `att_manuallog`
--
ALTER TABLE `att_manuallog`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `att_manuallog_work_code_id_09ac4580` (`work_code_id`);

--
-- Indexes for table `att_overtime`
--
ALTER TABLE `att_overtime`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `att_overtime_pay_code_id_05600ee0_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `att_overtimepolicy`
--
ALTER TABLE `att_overtimepolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_overtimepolicy_overnight_pay_code_i_274ce1b0_fk_att_payco` (`overnight_pay_code_id`),
  ADD KEY `att_overtimepolicy_pay_code_id_285b0a61_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `att_paycode`
--
ALTER TABLE `att_paycode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `att_payloadattcode`
--
ALTER TABLE `att_payloadattcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_payloadattcode_att_code_id_0d635efd_fk_att_attcode_id` (`att_code_id`),
  ADD KEY `att_payloadattcode_emp_id_36569f54_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadattcode_shift_id_731faddf_fk_att_attshift_id` (`shift_id`),
  ADD KEY `att_payloadattcode_att_date_19b2621e` (`att_date`),
  ADD KEY `att_payloadattcode_time_card_id_e8a37c7a` (`time_card_id`);

--
-- Indexes for table `att_payloadbase`
--
ALTER TABLE `att_payloadbase`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `break_time_id` (`break_time_id`),
  ADD UNIQUE KEY `overtime_id` (`overtime_id`),
  ADD KEY `att_payloadbase_emp_id_2c0f6a7b_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadbase_timetable_id_a389e3d8_fk_att_timeinterval_id` (`timetable_id`);

--
-- Indexes for table `att_payloadbreak`
--
ALTER TABLE `att_payloadbreak`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `att_payloadeffectpunch`
--
ALTER TABLE `att_payloadeffectpunch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_payloadeffectpun_trans_id_94affbe6_fk_iclock_tr` (`trans_id`),
  ADD KEY `att_payloadeffectpunch_emp_id_67e28e01_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadeffectpunch_att_date_1e3de2d4` (`att_date`),
  ADD KEY `att_payloadeffectpunch_time_card_id_52f69aaf` (`time_card_id`);

--
-- Indexes for table `att_payloadexception`
--
ALTER TABLE `att_payloadexception`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `att_payloadexception_item_id_a08bfe48_fk_att_leave` (`item_id`),
  ADD KEY `att_payloadexception_skd_id_b2e9ecaa` (`skd_id`);

--
-- Indexes for table `att_payloadmulpunchset`
--
ALTER TABLE `att_payloadmulpunchset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_payloadmulpunchset_emp_id_f47610c8_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadmulpunchset_timetable_id_9a439a09` (`timetable_id`);

--
-- Indexes for table `att_payloadovertime`
--
ALTER TABLE `att_payloadovertime`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `att_payloadparing`
--
ALTER TABLE `att_payloadparing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_payloadparing_emp_id_c5daac4f_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadparing_in_trans_id_50a8040e_fk_iclock_transaction_id` (`in_trans_id`),
  ADD KEY `att_payloadparing_out_trans_id_8b2375b9_fk_iclock_transaction_id` (`out_trans_id`),
  ADD KEY `att_payloadparing_pay_code_id_aa241cca_fk_att_paycode_id` (`pay_code_id`),
  ADD KEY `att_payloadparing_att_date_5daaa45d` (`att_date`),
  ADD KEY `att_payloadparing_time_card_id_3adc3517` (`time_card_id`);

--
-- Indexes for table `att_payloadpaycode`
--
ALTER TABLE `att_payloadpaycode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_payloadpaycode_emp_id_78e75279_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadpaycode_pay_code_id_4a096cc7_fk_att_paycode_id` (`pay_code_id`),
  ADD KEY `att_payloadpaycode_shift_id_79a0901e_fk_att_attshift_id` (`shift_id`),
  ADD KEY `att_payloadpaycode_att_date_aa048d7b` (`att_date`),
  ADD KEY `att_payloadpaycode_time_card_id_1696b969` (`time_card_id`);

--
-- Indexes for table `att_payloadpunch`
--
ALTER TABLE `att_payloadpunch`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `att_payloadpunch_emp_id_053da2f0_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `att_payloadpunch_orig_id_16b26416_fk_iclock_transaction_id` (`orig_id`),
  ADD KEY `att_payloadpunch_skd_id_17596d82` (`skd_id`);

--
-- Indexes for table `att_payloadtimecard`
--
ALTER TABLE `att_payloadtimecard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `att_payloadtimecard_emp_id_att_date_time_table_id_9df16bc5_uniq` (`emp_id`,`att_date`,`time_table_id`),
  ADD KEY `att_payloadtimecard_time_table_id_6e0b0137_fk_att_timei` (`time_table_id`),
  ADD KEY `att_payloadtimecard_att_date_48c1dc00` (`att_date`);

--
-- Indexes for table `att_reportparam`
--
ALTER TABLE `att_reportparam`
  ADD PRIMARY KEY (`param_name`);

--
-- Indexes for table `att_reporttemplate`
--
ALTER TABLE `att_reporttemplate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_reporttemplate_builder_id_e1bb15c6_fk_auth_user_id` (`builder_id`),
  ADD KEY `att_reporttemplate_employee_id_4f80d866_fk_personnel_employee_id` (`employee_id`);

--
-- Indexes for table `att_shiftdetail`
--
ALTER TABLE `att_shiftdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_shiftdetail_time_interval_id_777dde8f_fk_att_timeinterval_id` (`time_interval_id`),
  ADD KEY `att_shiftdetail_shift_id_7d694501_fk_att_attshift_id` (`shift_id`);

--
-- Indexes for table `att_temporaryschedule`
--
ALTER TABLE `att_temporaryschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_temporaryschedul_employee_id_2b2b94c2_fk_personnel` (`employee_id`),
  ADD KEY `att_temporaryschedule_att_date_8aed8916` (`att_date`),
  ADD KEY `att_temporaryschedule_time_interval_id_2be60ee4` (`time_interval_id`);

--
-- Indexes for table `att_tempschedule`
--
ALTER TABLE `att_tempschedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att_tempschedule_employee_id_b89c7e54_fk_personnel_employee_id` (`employee_id`),
  ADD KEY `att_tempschedule_time_interval_id_08dd8eb3` (`time_interval_id`);

--
-- Indexes for table `att_timeinterval`
--
ALTER TABLE `att_timeinterval`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `att_timeinterval_ot_pay_code_id_17438af8_fk_att_paycode_id` (`ot_pay_code_id`),
  ADD KEY `att_timeinterval_company_id_9824d651` (`company_id`);

--
-- Indexes for table `att_timeinterval_break_time`
--
ALTER TABLE `att_timeinterval_break_time`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `att_timeinterval_break_t_timeinterval_id_breaktim_6e1bfb4e_uniq` (`timeinterval_id`,`breaktime_id`),
  ADD KEY `att_timeinterval_bre_breaktime_id_08462308_fk_att_break` (`breaktime_id`);

--
-- Indexes for table `att_training`
--
ALTER TABLE `att_training`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `att_training_pay_code_id_5790afdd_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `att_webpunch`
--
ALTER TABLE `att_webpunch`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_auth_area`
--
ALTER TABLE `auth_user_auth_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_auth_area_myuser_id_area_id_02a19d63_uniq` (`myuser_id`,`area_id`),
  ADD KEY `auth_user_auth_area_area_id_d1e54c70_fk_personnel_area_id` (`area_id`);

--
-- Indexes for table `auth_user_auth_dept`
--
ALTER TABLE `auth_user_auth_dept`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_auth_dept_myuser_id_department_id_61d83386_uniq` (`myuser_id`,`department_id`),
  ADD KEY `auth_user_auth_dept_department_id_5866c514_fk_personnel` (`department_id`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_myuser_id_group_id_664bdfc3_uniq` (`myuser_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_profile`
--
ALTER TABLE `auth_user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_myuser_id_permission_id_a558717f_uniq` (`myuser_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_adminlog`
--
ALTER TABLE `base_adminlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_adminlog_content_type_id_3e553c30_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `base_adminlog_user_id_ecf659f8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_attparamdepts`
--
ALTER TABLE `base_attparamdepts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rulename` (`rulename`);

--
-- Indexes for table `base_autoattexporttask`
--
ALTER TABLE `base_autoattexporttask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_code` (`task_code`);

--
-- Indexes for table `base_autoexporttask`
--
ALTER TABLE `base_autoexporttask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_code` (`task_code`);

--
-- Indexes for table `base_autoimporttask`
--
ALTER TABLE `base_autoimporttask`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_code` (`task_code`),
  ADD KEY `base_autoimporttask_company_id_d18431a1` (`company_id`);

--
-- Indexes for table `base_bookmark`
--
ALTER TABLE `base_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_bookmark_content_type_id_b6a0e799_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `base_bookmark_user_id_5f2d5ca2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_dbbackuplog`
--
ALTER TABLE `base_dbbackuplog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_emailtemplate`
--
ALTER TABLE `base_emailtemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_eventalertsetting`
--
ALTER TABLE `base_eventalertsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_linenotifyforemployee`
--
ALTER TABLE `base_linenotifyforemployee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `base_linenotifysetting`
--
ALTER TABLE `base_linenotifysetting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_linenotifysetting_line_notify_dept_id_line_dd79374f_uniq` (`line_notify_dept_id`,`line_notify_token`,`message_type`),
  ADD KEY `base_linenotifysetting_line_notify_dept_id_0643a5ed` (`line_notify_dept_id`);

--
-- Indexes for table `base_messengersentlog`
--
ALTER TABLE `base_messengersentlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_messengersentlo_content_type_id_e6e9b3d5_fk_django_co` (`content_type_id`),
  ADD KEY `base_messengersentlog_emp_id_44eba15e_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `base_messengersentlog_user_id_64034c70_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_securitypolicy`
--
ALTER TABLE `base_securitypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_sendemail`
--
ALTER TABLE `base_sendemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_sftpsetting`
--
ALTER TABLE `base_sftpsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_sysparam`
--
ALTER TABLE `base_sysparam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_sysparam_para_name_para_type_3086789a_uniq` (`para_name`,`para_type`);

--
-- Indexes for table `base_sysparamdept`
--
ALTER TABLE `base_sysparamdept`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rule_name` (`rule_name`);

--
-- Indexes for table `base_systemlog`
--
ALTER TABLE `base_systemlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_systemsetting`
--
ALTER TABLE `base_systemsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_zoomsetting`
--
ALTER TABLE `base_zoomsetting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jwt_token` (`jwt_token`),
  ADD UNIQUE KEY `zoom_user_email` (`zoom_user_email`);

--
-- Indexes for table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_celery_beat_periodictasks`
--
ALTER TABLE `django_celery_beat_periodictasks`
  ADD PRIMARY KEY (`ident`);

--
-- Indexes for table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `ep_epsetup`
--
ALTER TABLE `ep_epsetup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ep_eptransaction`
--
ALTER TABLE `ep_eptransaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ep_eptransaction_emp_code_check_datetime_0b54f31f_uniq` (`emp_code`,`check_datetime`),
  ADD KEY `ep_eptransaction_emp_id_1006883f_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `ep_eptransaction_terminal_id_4490b209_fk_iclock_terminal_id` (`terminal_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `iclock_biodata`
--
ALTER TABLE `iclock_biodata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iclock_biodata_employee_id_bio_no_bio_i_bc5286ed_uniq` (`employee_id`,`bio_no`,`bio_index`,`bio_type`,`bio_format`,`major_ver`,`minor_ver`),
  ADD KEY `iclock_biodata_employee_id_ff748ea7` (`employee_id`);

--
-- Indexes for table `iclock_biophoto`
--
ALTER TABLE `iclock_biophoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_biophoto_employee_id_3dba5819_fk_personnel_employee_id` (`employee_id`);

--
-- Indexes for table `iclock_devicemoduleconfig`
--
ALTER TABLE `iclock_devicemoduleconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iclock_errorcommandlog`
--
ALTER TABLE `iclock_errorcommandlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_errorcommandl_terminal_id_3b2d7cbd_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `iclock_privatemessage`
--
ALTER TABLE `iclock_privatemessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_privatemessag_employee_id_e84a34c0_fk_personnel` (`employee_id`),
  ADD KEY `iclock_privatemessag_message_id_e3145d3b_fk_iclock_sh` (`message_id`);

--
-- Indexes for table `iclock_publicmessage`
--
ALTER TABLE `iclock_publicmessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_publicmessage_message_id_7d125e28_fk_iclock_sh` (`message_id`),
  ADD KEY `iclock_publicmessage_terminal_id_c3b5e4cf_fk_iclock_terminal_id` (`terminal_id`);

--
-- Indexes for table `iclock_shortmessage`
--
ALTER TABLE `iclock_shortmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iclock_terminal`
--
ALTER TABLE `iclock_terminal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sn` (`sn`),
  ADD KEY `iclock_terminal_area_id_c019c6f0` (`area_id`);

--
-- Indexes for table `iclock_terminalcommand`
--
ALTER TABLE `iclock_terminalcommand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_terminalcomma_terminal_id_3dcf836f_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `iclock_terminalcommandlog`
--
ALTER TABLE `iclock_terminalcommandlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_terminalcomma_terminal_id_35ea8b2b_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `iclock_terminalemployee`
--
ALTER TABLE `iclock_terminalemployee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iclock_terminallog`
--
ALTER TABLE `iclock_terminallog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_terminallog_terminal_id_667b3ea7_fk_iclock_terminal_id` (`terminal_id`);

--
-- Indexes for table `iclock_terminalparameter`
--
ALTER TABLE `iclock_terminalparameter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iclock_terminalparameter_terminal_id_param_name_8abbb5c0_uniq` (`terminal_id`,`param_name`);

--
-- Indexes for table `iclock_terminaluploadlog`
--
ALTER TABLE `iclock_terminaluploadlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_terminaluploa_terminal_id_9c9a7664_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `iclock_terminalworkcode`
--
ALTER TABLE `iclock_terminalworkcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `iclock_terminalworkc_company_id_77625f26_fk_personnel` (`company_id`);

--
-- Indexes for table `iclock_transaction`
--
ALTER TABLE `iclock_transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iclock_transaction_company_code_emp_code_pu_2665c3d7_uniq` (`company_code`,`emp_code`,`punch_time`),
  ADD KEY `iclock_transaction_emp_id_60fa3521_fk_personnel_employee_id` (`emp_id`),
  ADD KEY `iclock_transaction_terminal_id_451c81c2_fk_iclock_terminal_id` (`terminal_id`);

--
-- Indexes for table `iclock_transactionproofcmd`
--
ALTER TABLE `iclock_transactionproofcmd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iclock_transactionpr_terminal_id_08b81e1e_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `meeting_meetingentity`
--
ALTER TABLE `meeting_meetingentity`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `meeting_meetingentity_room_id_bc2c738e_fk_meeting_meetingroom_id` (`room_id`),
  ADD KEY `meeting_meetingentity_zoom_id_7f87d666_fk_base_zoomsetting_id` (`zoom_id`);

--
-- Indexes for table `meeting_meetingentity_attender`
--
ALTER TABLE `meeting_meetingentity_attender`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_meetingentity_at_meetingentity_id_employe_b556fc2d_uniq` (`meetingentity_id`,`employee_id`),
  ADD KEY `meeting_meetingentit_employee_id_ee898064_fk_personnel` (`employee_id`);

--
-- Indexes for table `meeting_meetingmanuallog`
--
ALTER TABLE `meeting_meetingmanuallog`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `meeting_meetingmanua_meeting_id_a672eaaf_fk_meeting_m` (`meeting_id`);

--
-- Indexes for table `meeting_meetingpayloadbase`
--
ALTER TABLE `meeting_meetingpayloadbase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_meetingpaylo_emp_id_ed6ec148_fk_personnel` (`emp_id`),
  ADD KEY `meeting_meetingpaylo_meeting_id_ca9d20cc_fk_meeting_m` (`meeting_id`);

--
-- Indexes for table `meeting_meetingroom`
--
ALTER TABLE `meeting_meetingroom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `meeting_meetingroomdevice`
--
ALTER TABLE `meeting_meetingroomdevice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_id` (`device_id`),
  ADD KEY `meeting_meetingroomd_room_id_e000d78d_fk_meeting_m` (`room_id`);

--
-- Indexes for table `meeting_meetingtransaction`
--
ALTER TABLE `meeting_meetingtransaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_meetingtransaction_emp_id_punch_datetime_65665dce_uniq` (`emp_id`,`punch_datetime`),
  ADD KEY `meeting_meetingtrans_meeting_id_e4e505e5_fk_meeting_m` (`meeting_id`),
  ADD KEY `meeting_meetingtrans_terminal_id_047426f2_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_announcement`
--
ALTER TABLE `mobile_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_announcement_admin_id_6af3868c_fk_auth_user_id` (`admin_id`),
  ADD KEY `mobile_announcement_init_sender_id_2f5e35bd_fk_personnel` (`init_sender_id`),
  ADD KEY `mobile_announcement_receiver_id_ddf2a860_fk_personnel` (`receiver_id`);

--
-- Indexes for table `mobile_appactionlog`
--
ALTER TABLE `mobile_appactionlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_applist`
--
ALTER TABLE `mobile_applist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_appnotification`
--
ALTER TABLE `mobile_appnotification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_appnotification_admin_id_29c27197_fk_auth_user_id` (`admin_id`),
  ADD KEY `mobile_appnotificati_init_sender_id_d8aff845_fk_personnel` (`init_sender_id`),
  ADD KEY `mobile_appnotificati_receiver_id_90c4a355_fk_personnel` (`receiver_id`);

--
-- Indexes for table `mobile_gpsfordepartment`
--
ALTER TABLE `mobile_gpsfordepartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_gpsfordepartm_department_id_988ccf22_fk_personnel` (`department_id`);

--
-- Indexes for table `mobile_gpsfordepartment_location`
--
ALTER TABLE `mobile_gpsfordepartment_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_gpsfordepartment__gpsfordepartment_id_gpsl_58226033_uniq` (`gpsfordepartment_id`,`gpslocation_id`),
  ADD KEY `mobile_gpsfordepartm_gpslocation_id_48b82e9e_fk_mobile_gp` (`gpslocation_id`);

--
-- Indexes for table `mobile_gpsforemployee`
--
ALTER TABLE `mobile_gpsforemployee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_gpsforemploye_employee_id_982b7cef_fk_personnel` (`employee_id`);

--
-- Indexes for table `mobile_gpsforemployee_location`
--
ALTER TABLE `mobile_gpsforemployee_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_gpsforemployee_lo_gpsforemployee_id_gpsloc_9ceb93bf_uniq` (`gpsforemployee_id`,`gpslocation_id`),
  ADD KEY `mobile_gpsforemploye_gpslocation_id_497a214f_fk_mobile_gp` (`gpslocation_id`);

--
-- Indexes for table `mobile_gpslocation`
--
ALTER TABLE `mobile_gpslocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payroll_deductionformula`
--
ALTER TABLE `payroll_deductionformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `payroll_empexpenseexemption`
--
ALTER TABLE `payroll_empexpenseexemption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_empexpenseex_employee_id_5372811d_fk_personnel` (`employee_id`);

--
-- Indexes for table `payroll_emploan`
--
ALTER TABLE `payroll_emploan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_emploan_employee_id_97a251ef_fk_personnel_employee_id` (`employee_id`);

--
-- Indexes for table `payroll_emppayrollprofile`
--
ALTER TABLE `payroll_emppayrollprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `payroll_exceptionformula`
--
ALTER TABLE `payroll_exceptionformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `payroll_exceptionformula_pay_code_id_97609b51_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `payroll_extradeduction`
--
ALTER TABLE `payroll_extradeduction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_extradeducti_employee_id_53072441_fk_personnel` (`employee_id`),
  ADD KEY `payroll_extradeducti_special_type_id_50673042_fk_payroll_s` (`special_type_id`);

--
-- Indexes for table `payroll_extraincrease`
--
ALTER TABLE `payroll_extraincrease`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_extraincreas_employee_id_f902e6bb_fk_personnel` (`employee_id`),
  ADD KEY `payroll_extraincreas_special_type_id_d15ce699_fk_payroll_s` (`special_type_id`);

--
-- Indexes for table `payroll_increasementformula`
--
ALTER TABLE `payroll_increasementformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `payroll_increasement_special_type_id_88016f0b_fk_payroll_s` (`special_type_id`);

--
-- Indexes for table `payroll_leaveformula`
--
ALTER TABLE `payroll_leaveformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `payroll_leaveformula_pay_code_id_63c7b4bd_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `payroll_overtimeformula`
--
ALTER TABLE `payroll_overtimeformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `payroll_overtimeformula_pay_code_id_36d2f10e_fk_att_paycode_id` (`pay_code_id`);

--
-- Indexes for table `payroll_payrollpayload`
--
ALTER TABLE `payroll_payrollpayload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_payrollpaylo_employee_id_bc868f2b_fk_personnel` (`employee_id`);

--
-- Indexes for table `payroll_payrollpayloadexpenseexemption`
--
ALTER TABLE `payroll_payrollpayloadexpenseexemption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_payrollpaylo_exemption_id_2effb718_fk_payroll_e` (`exemption_id`),
  ADD KEY `payroll_payrollpaylo_payload_id_46c8357d_fk_payroll_p` (`payload_id`);

--
-- Indexes for table `payroll_payrollpayloadpaycode`
--
ALTER TABLE `payroll_payrollpayloadpaycode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_payrollpaylo_pay_code_id_c057af1f_fk_att_payco` (`pay_code_id`),
  ADD KEY `payroll_payrollpaylo_payload_id_f085c4e8_fk_payroll_p` (`payload_id`);

--
-- Indexes for table `payroll_reimbursement`
--
ALTER TABLE `payroll_reimbursement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_reimbursemen_employee_id_c4bbde36_fk_personnel` (`employee_id`);

--
-- Indexes for table `payroll_salaryadvance`
--
ALTER TABLE `payroll_salaryadvance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_salaryadvanc_employee_id_2abd43e5_fk_personnel` (`employee_id`);

--
-- Indexes for table `payroll_salarystructure`
--
ALTER TABLE `payroll_salarystructure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_salarystruct_employee_id_98996e15_fk_personnel` (`employee_id`);

--
-- Indexes for table `payroll_salarystructure_deductionformula`
--
ALTER TABLE `payroll_salarystructure_deductionformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_salarystructure__salarystructure_id_deduc_794e8449_uniq` (`salarystructure_id`,`deductionformula_id`),
  ADD KEY `payroll_salarystruct_deductionformula_id_b174d5b6_fk_payroll_d` (`deductionformula_id`);

--
-- Indexes for table `payroll_salarystructure_exceptionformula`
--
ALTER TABLE `payroll_salarystructure_exceptionformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_salarystructure__salarystructure_id_excep_a5e869ff_uniq` (`salarystructure_id`,`exceptionformula_id`),
  ADD KEY `payroll_salarystruct_exceptionformula_id_8f6dadb3_fk_payroll_e` (`exceptionformula_id`);

--
-- Indexes for table `payroll_salarystructure_increasementformula`
--
ALTER TABLE `payroll_salarystructure_increasementformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_salarystructure__salarystructure_id_incre_749132b3_uniq` (`salarystructure_id`,`increasementformula_id`),
  ADD KEY `payroll_salarystruct_increasementformula__3cd77082_fk_payroll_i` (`increasementformula_id`);

--
-- Indexes for table `payroll_salarystructure_leaveformula`
--
ALTER TABLE `payroll_salarystructure_leaveformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_salarystructure__salarystructure_id_leave_4efdce30_uniq` (`salarystructure_id`,`leaveformula_id`),
  ADD KEY `payroll_salarystruct_leaveformula_id_049f9024_fk_payroll_l` (`leaveformula_id`);

--
-- Indexes for table `payroll_salarystructure_overtimeformula`
--
ALTER TABLE `payroll_salarystructure_overtimeformula`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_salarystructure__salarystructure_id_overt_0d0a0e81_uniq` (`salarystructure_id`,`overtimeformula_id`),
  ADD KEY `payroll_salarystruct_overtimeformula_id_40ad89ef_fk_payroll_o` (`overtimeformula_id`);

--
-- Indexes for table `payroll_socialsecuritydeduction`
--
ALTER TABLE `payroll_socialsecuritydeduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_specialpayment`
--
ALTER TABLE `payroll_specialpayment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `payroll_taxdeduction`
--
ALTER TABLE `payroll_taxdeduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personnel_area`
--
ALTER TABLE `personnel_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_area_company_id_area_code_aa39c55c_uniq` (`company_id`,`area_code`),
  ADD KEY `personnel_area_parent_area_id_39028fda_fk_personnel_area_id` (`parent_area_id`),
  ADD KEY `personnel_area_company_id_59750eb5` (`company_id`);

--
-- Indexes for table `personnel_assignareaemployee`
--
ALTER TABLE `personnel_assignareaemployee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnel_assignarea_area_id_6f049d6a_fk_personnel` (`area_id`),
  ADD KEY `personnel_assignarea_employee_id_a3d4dd25_fk_personnel` (`employee_id`);

--
-- Indexes for table `personnel_certification`
--
ALTER TABLE `personnel_certification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cert_code` (`cert_code`),
  ADD UNIQUE KEY `cert_name` (`cert_name`);

--
-- Indexes for table `personnel_company`
--
ALTER TABLE `personnel_company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_code` (`company_code`);

--
-- Indexes for table `personnel_department`
--
ALTER TABLE `personnel_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_department_company_id_dept_code_dfa8fff7_uniq` (`company_id`,`dept_code`),
  ADD KEY `personnel_department_parent_dept_id_d0b44024_fk_personnel` (`parent_dept_id`),
  ADD KEY `personnel_department_dept_manager_id_c5124a7d_fk_personnel` (`dept_manager_id`),
  ADD KEY `personnel_department_company_id_00867fd8` (`company_id`);

--
-- Indexes for table `personnel_employee`
--
ALTER TABLE `personnel_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_employee_company_id_emp_code_81daa575_uniq` (`company_id`,`emp_code`),
  ADD KEY `personnel_employee_department_id_068bbd08` (`department_id`),
  ADD KEY `personnel_employee_position_id_c9321343` (`position_id`),
  ADD KEY `personnel_employee_superior_id_ad6e1c47_fk_personnel_employee_id` (`superior_id`),
  ADD KEY `personnel_employee_company_id_95b3fd72` (`company_id`);

--
-- Indexes for table `personnel_employeecalendar`
--
ALTER TABLE `personnel_employeecalendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_employeecalendar_employee_id_calendar_10f7278d_uniq` (`employee_id`,`calendar`);

--
-- Indexes for table `personnel_employeecertification`
--
ALTER TABLE `personnel_employeecertification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_employeecertif_employee_id_certificatio_7bcf4c7d_uniq` (`employee_id`,`certification_id`),
  ADD KEY `personnel_employeece_certification_id_faabed40_fk_personnel` (`certification_id`);

--
-- Indexes for table `personnel_employeecustomattribute`
--
ALTER TABLE `personnel_employeecustomattribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attr_name` (`attr_name`);

--
-- Indexes for table `personnel_employeeextrainfo`
--
ALTER TABLE `personnel_employeeextrainfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `personnel_employeeprofile`
--
ALTER TABLE `personnel_employeeprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`);

--
-- Indexes for table `personnel_employee_area`
--
ALTER TABLE `personnel_employee_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_employee_area_employee_id_area_id_00b3d777_uniq` (`employee_id`,`area_id`),
  ADD KEY `personnel_employee_area_area_id_64c21925_fk_personnel_area_id` (`area_id`);

--
-- Indexes for table `personnel_employee_flow_role`
--
ALTER TABLE `personnel_employee_flow_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_employee_flow__employee_id_workflowrole_46b0e5e0_uniq` (`employee_id`,`workflowrole_id`),
  ADD KEY `personnel_employee_f_workflowrole_id_4704db32_fk_workflow_` (`workflowrole_id`);

--
-- Indexes for table `personnel_employment`
--
ALTER TABLE `personnel_employment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `personnel_position`
--
ALTER TABLE `personnel_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personnel_position_company_id_position_code_4708726e_uniq` (`company_id`,`position_code`),
  ADD KEY `personnel_position_parent_position_id_a496a36b_fk_personnel` (`parent_position_id`),
  ADD KEY `personnel_position_company_id_f06c5d2a` (`company_id`);

--
-- Indexes for table `personnel_resign`
--
ALTER TABLE `personnel_resign`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

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
-- Indexes for table `staff_stafftoken`
--
ALTER TABLE `staff_stafftoken`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `sync_area`
--
ALTER TABLE `sync_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sync_area_area_code_area_name_200046d1_uniq` (`area_code`,`area_name`);

--
-- Indexes for table `sync_department`
--
ALTER TABLE `sync_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sync_department_dept_code_dept_name_93923213_uniq` (`dept_code`,`dept_name`);

--
-- Indexes for table `sync_employee`
--
ALTER TABLE `sync_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sync_employee_emp_code_521bf06d_uniq` (`emp_code`);

--
-- Indexes for table `sync_job`
--
ALTER TABLE `sync_job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sync_job_job_code_job_name_4ec5619e_uniq` (`job_code`,`job_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitor_reason`
--
ALTER TABLE `visitor_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_reservation`
--
ALTER TABLE `visitor_reservation`
  ADD PRIMARY KEY (`workflowinstance_ptr_id`),
  ADD KEY `visitor_reservation_cert_type_id_4f047f2a_fk_personnel` (`cert_type_id`),
  ADD KEY `visitor_reservation_visit_reason_id_c9ac83ac_fk_visitor_r` (`visit_reason_id`),
  ADD KEY `visitor_reservation_visit_department_id_2d293e10` (`visit_department_id`);

--
-- Indexes for table `visitor_visitor`
--
ALTER TABLE `visitor_visitor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_code` (`visitor_code`),
  ADD KEY `visitor_visitor_cert_type_id_f62ea604_fk_personnel` (`cert_type_id`),
  ADD KEY `visitor_visitor_visit_reason_id_4b9a2d23_fk_visitor_reason_id` (`visit_reason_id`),
  ADD KEY `visitor_visitor_visit_department_id_f7dbdcb4` (`visit_department_id`),
  ADD KEY `visitor_visitor_visited_id_8043a7ea` (`visited_id`);

--
-- Indexes for table `visitor_visitorbiodata`
--
ALTER TABLE `visitor_visitorbiodata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_visitorbiodata_visitor_id_bio_no_bio_in_225ce182_uniq` (`visitor_id`,`bio_no`,`bio_index`,`bio_type`,`bio_format`,`major_ver`,`minor_ver`),
  ADD KEY `visitor_visitorbiodata_visitor_id_b944ed37` (`visitor_id`);

--
-- Indexes for table `visitor_visitorbiophoto`
--
ALTER TABLE `visitor_visitorbiophoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_visitorbioph_visitor_id_9816daf7_fk_visitor_v` (`visitor_id`);

--
-- Indexes for table `visitor_visitorconfig`
--
ALTER TABLE `visitor_visitorconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_visitorlog`
--
ALTER TABLE `visitor_visitorlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_visitorlog_visitor_id_ebaafde1_fk_visitor_visitor_id` (`visitor_id`);

--
-- Indexes for table `visitor_visitortransaction`
--
ALTER TABLE `visitor_visitortransaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_visitortransaction_visitor_code_punch_time_2b871513_uniq` (`visitor_code`,`punch_time`),
  ADD KEY `visitor_visitortrans_visitor_id_0ee95624_fk_visitor_v` (`visitor_id`),
  ADD KEY `visitor_visitortrans_terminal_id_7527ef69_fk_iclock_te` (`terminal_id`);

--
-- Indexes for table `visitor_visitor_acc_groups`
--
ALTER TABLE `visitor_visitor_acc_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_visitor_acc_groups_visitor_id_accgroups_id_bb522609_uniq` (`visitor_id`,`accgroups_id`),
  ADD KEY `visitor_visitor_acc__accgroups_id_b1487149_fk_acc_accgr` (`accgroups_id`);

--
-- Indexes for table `visitor_visitor_area`
--
ALTER TABLE `visitor_visitor_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_visitor_area_visitor_id_area_id_27d158cc_uniq` (`visitor_id`,`area_id`),
  ADD KEY `visitor_visitor_area_area_id_b402c047_fk_personnel_area_id` (`area_id`);

--
-- Indexes for table `workflow_nodeinstance`
--
ALTER TABLE `workflow_nodeinstance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workflow_nodeinstanc_workflow_instance_id_afe84fe4_fk_workflow_` (`workflow_instance_id`),
  ADD KEY `workflow_nodeinstanc_workflow_node_id_166f36c4_fk_workflow_` (`workflow_node_id`),
  ADD KEY `workflow_nodeinstanc_approver_employee_id_d36cd45d_fk_personnel` (`approver_employee_id`);

--
-- Indexes for table `workflow_workflowengine`
--
ALTER TABLE `workflow_workflowengine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workflow_code` (`workflow_code`),
  ADD KEY `workflow_workfloweng_applicant_position_i_8a65e03a_fk_personnel` (`applicant_position_id`),
  ADD KEY `workflow_workfloweng_content_type_id_f7345c20_fk_django_co` (`content_type_id`),
  ADD KEY `workflow_workflowengine_departments_id_0f06d4c7` (`departments_id`),
  ADD KEY `workflow_workflowengine_leave_type_id_7f03c9cc_fk_att_paycode_id` (`leave_type_id`),
  ADD KEY `workflow_workflowengine_company_id_c42adcb0` (`company_id`);

--
-- Indexes for table `workflow_workflowengine_employee`
--
ALTER TABLE `workflow_workflowengine_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workflow_workflowengine__workflowengine_id_employ_8128deb2_uniq` (`workflowengine_id`,`employee_id`),
  ADD KEY `workflow_workfloweng_employee_id_803a409e_fk_personnel` (`employee_id`);

--
-- Indexes for table `workflow_workflowinstance`
--
ALTER TABLE `workflow_workflowinstance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workflow_workflowins_workflow_engine_id_1e6ac40f_fk_workflow_` (`workflow_engine_id`),
  ADD KEY `workflow_workflowinstance_employee_id_c7cff08e` (`employee_id`);

--
-- Indexes for table `workflow_workflownode`
--
ALTER TABLE `workflow_workflownode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workflow_workflownod_workflow_engine_id_04c8f470_fk_workflow_` (`workflow_engine_id`);

--
-- Indexes for table `workflow_workflownode_approver`
--
ALTER TABLE `workflow_workflownode_approver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workflow_workflownode_ap_workflownode_id_workflow_7543ba37_uniq` (`workflownode_id`,`workflowrole_id`),
  ADD KEY `workflow_workflownod_workflowrole_id_c8e00d42_fk_workflow_` (`workflowrole_id`);

--
-- Indexes for table `workflow_workflownode_notifier`
--
ALTER TABLE `workflow_workflownode_notifier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workflow_workflownode_no_workflownode_id_workflow_cac02b37_uniq` (`workflownode_id`,`workflowrole_id`),
  ADD KEY `workflow_workflownod_workflowrole_id_73de7fc2_fk_workflow_` (`workflowrole_id`);

--
-- Indexes for table `workflow_workflowrole`
--
ALTER TABLE `workflow_workflowrole`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workflow_workflowrole_company_id_role_code_a4e809d7_uniq` (`company_id`,`role_code`),
  ADD UNIQUE KEY `workflow_workflowrole_company_id_role_name_afcc5f2b_uniq` (`company_id`,`role_name`),
  ADD KEY `workflow_workflowrol_parent_role_id_91433355_fk_workflow_` (`parent_role_id`),
  ADD KEY `workflow_workflowrole_company_id_bbb75590` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_adminbiodata`
--
ALTER TABLE `accounts_adminbiodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_usernotification`
--
ALTER TABLE `accounts_usernotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `acc_acccombination`
--
ALTER TABLE `acc_acccombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `acc_accgroups`
--
ALTER TABLE `acc_accgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `acc_accholiday`
--
ALTER TABLE `acc_accholiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_accprivilege`
--
ALTER TABLE `acc_accprivilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `acc_accterminal`
--
ALTER TABLE `acc_accterminal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acc_acctimezone`
--
ALTER TABLE `acc_acctimezone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attparam`
--
ALTER TABLE `attparam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `att_attcalclog`
--
ALTER TABLE `att_attcalclog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_attcode`
--
ALTER TABLE `att_attcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `att_attemployee`
--
ALTER TABLE `att_attemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `att_attgroup`
--
ALTER TABLE `att_attgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `att_attpolicy`
--
ALTER TABLE `att_attpolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `att_attreportsetting`
--
ALTER TABLE `att_attreportsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `att_attschedule`
--
ALTER TABLE `att_attschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_attshift`
--
ALTER TABLE `att_attshift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_breaktime`
--
ALTER TABLE `att_breaktime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_calculatelastdate`
--
ALTER TABLE `att_calculatelastdate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_calculatetask`
--
ALTER TABLE `att_calculatetask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `att_departmentpolicy`
--
ALTER TABLE `att_departmentpolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_departmentschedule`
--
ALTER TABLE `att_departmentschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_deptattrule`
--
ALTER TABLE `att_deptattrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_grouppolicy`
--
ALTER TABLE `att_grouppolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_groupschedule`
--
ALTER TABLE `att_groupschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_holiday`
--
ALTER TABLE `att_holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_leavegroup`
--
ALTER TABLE `att_leavegroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_leavegroupdetail`
--
ALTER TABLE `att_leavegroupdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_leaveyearbalance`
--
ALTER TABLE `att_leaveyearbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_overtimepolicy`
--
ALTER TABLE `att_overtimepolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_paycode`
--
ALTER TABLE `att_paycode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `att_payloadmulpunchset`
--
ALTER TABLE `att_payloadmulpunchset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_reporttemplate`
--
ALTER TABLE `att_reporttemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_shiftdetail`
--
ALTER TABLE `att_shiftdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_temporaryschedule`
--
ALTER TABLE `att_temporaryschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_tempschedule`
--
ALTER TABLE `att_tempschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_timeinterval`
--
ALTER TABLE `att_timeinterval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_timeinterval_break_time`
--
ALTER TABLE `att_timeinterval_break_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_auth_area`
--
ALTER TABLE `auth_user_auth_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_auth_dept`
--
ALTER TABLE `auth_user_auth_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_profile`
--
ALTER TABLE `auth_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_adminlog`
--
ALTER TABLE `base_adminlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `base_attparamdepts`
--
ALTER TABLE `base_attparamdepts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_autoattexporttask`
--
ALTER TABLE `base_autoattexporttask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_autoexporttask`
--
ALTER TABLE `base_autoexporttask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_autoimporttask`
--
ALTER TABLE `base_autoimporttask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_bookmark`
--
ALTER TABLE `base_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_dbbackuplog`
--
ALTER TABLE `base_dbbackuplog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_emailtemplate`
--
ALTER TABLE `base_emailtemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `base_eventalertsetting`
--
ALTER TABLE `base_eventalertsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `base_linenotifyforemployee`
--
ALTER TABLE `base_linenotifyforemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_linenotifysetting`
--
ALTER TABLE `base_linenotifysetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_messengersentlog`
--
ALTER TABLE `base_messengersentlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_securitypolicy`
--
ALTER TABLE `base_securitypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_sendemail`
--
ALTER TABLE `base_sendemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_sftpsetting`
--
ALTER TABLE `base_sftpsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_sysparam`
--
ALTER TABLE `base_sysparam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `base_sysparamdept`
--
ALTER TABLE `base_sysparamdept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_systemlog`
--
ALTER TABLE `base_systemlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_systemsetting`
--
ALTER TABLE `base_systemsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_zoomsetting`
--
ALTER TABLE `base_zoomsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_clockedschedule`
--
ALTER TABLE `django_celery_beat_clockedschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_crontabschedule`
--
ALTER TABLE `django_celery_beat_crontabschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_celery_beat_intervalschedule`
--
ALTER TABLE `django_celery_beat_intervalschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_celery_beat_periodictask`
--
ALTER TABLE `django_celery_beat_periodictask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_celery_beat_solarschedule`
--
ALTER TABLE `django_celery_beat_solarschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `ep_epsetup`
--
ALTER TABLE `ep_epsetup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ep_eptransaction`
--
ALTER TABLE `ep_eptransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_biodata`
--
ALTER TABLE `iclock_biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iclock_biophoto`
--
ALTER TABLE `iclock_biophoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iclock_devicemoduleconfig`
--
ALTER TABLE `iclock_devicemoduleconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iclock_errorcommandlog`
--
ALTER TABLE `iclock_errorcommandlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_privatemessage`
--
ALTER TABLE `iclock_privatemessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_publicmessage`
--
ALTER TABLE `iclock_publicmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_shortmessage`
--
ALTER TABLE `iclock_shortmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_terminal`
--
ALTER TABLE `iclock_terminal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `iclock_terminalcommand`
--
ALTER TABLE `iclock_terminalcommand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iclock_terminalcommandlog`
--
ALTER TABLE `iclock_terminalcommandlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `iclock_terminalemployee`
--
ALTER TABLE `iclock_terminalemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_terminallog`
--
ALTER TABLE `iclock_terminallog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `iclock_terminalparameter`
--
ALTER TABLE `iclock_terminalparameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `iclock_terminaluploadlog`
--
ALTER TABLE `iclock_terminaluploadlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `iclock_terminalworkcode`
--
ALTER TABLE `iclock_terminalworkcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iclock_transaction`
--
ALTER TABLE `iclock_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `iclock_transactionproofcmd`
--
ALTER TABLE `iclock_transactionproofcmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_meetingentity_attender`
--
ALTER TABLE `meeting_meetingentity_attender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_meetingroom`
--
ALTER TABLE `meeting_meetingroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_meetingroomdevice`
--
ALTER TABLE `meeting_meetingroomdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_meetingtransaction`
--
ALTER TABLE `meeting_meetingtransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mobile_announcement`
--
ALTER TABLE `mobile_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_appactionlog`
--
ALTER TABLE `mobile_appactionlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_applist`
--
ALTER TABLE `mobile_applist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_appnotification`
--
ALTER TABLE `mobile_appnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_gpsfordepartment`
--
ALTER TABLE `mobile_gpsfordepartment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_gpsfordepartment_location`
--
ALTER TABLE `mobile_gpsfordepartment_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_gpsforemployee`
--
ALTER TABLE `mobile_gpsforemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_gpsforemployee_location`
--
ALTER TABLE `mobile_gpsforemployee_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_gpslocation`
--
ALTER TABLE `mobile_gpslocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobile_mobileapirequestlog`
--
ALTER TABLE `mobile_mobileapirequestlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_deductionformula`
--
ALTER TABLE `payroll_deductionformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_empexpenseexemption`
--
ALTER TABLE `payroll_empexpenseexemption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_emploan`
--
ALTER TABLE `payroll_emploan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_emppayrollprofile`
--
ALTER TABLE `payroll_emppayrollprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payroll_exceptionformula`
--
ALTER TABLE `payroll_exceptionformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payroll_extradeduction`
--
ALTER TABLE `payroll_extradeduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_extraincrease`
--
ALTER TABLE `payroll_extraincrease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_increasementformula`
--
ALTER TABLE `payroll_increasementformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_leaveformula`
--
ALTER TABLE `payroll_leaveformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_overtimeformula`
--
ALTER TABLE `payroll_overtimeformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payroll_payrollpayload`
--
ALTER TABLE `payroll_payrollpayload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_payrollpayloadexpenseexemption`
--
ALTER TABLE `payroll_payrollpayloadexpenseexemption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_payrollpayloadpaycode`
--
ALTER TABLE `payroll_payrollpayloadpaycode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_reimbursement`
--
ALTER TABLE `payroll_reimbursement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salaryadvance`
--
ALTER TABLE `payroll_salaryadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salarystructure`
--
ALTER TABLE `payroll_salarystructure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salarystructure_deductionformula`
--
ALTER TABLE `payroll_salarystructure_deductionformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salarystructure_exceptionformula`
--
ALTER TABLE `payroll_salarystructure_exceptionformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salarystructure_increasementformula`
--
ALTER TABLE `payroll_salarystructure_increasementformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salarystructure_leaveformula`
--
ALTER TABLE `payroll_salarystructure_leaveformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_salarystructure_overtimeformula`
--
ALTER TABLE `payroll_salarystructure_overtimeformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_socialsecuritydeduction`
--
ALTER TABLE `payroll_socialsecuritydeduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_specialpayment`
--
ALTER TABLE `payroll_specialpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_taxdeduction`
--
ALTER TABLE `payroll_taxdeduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_area`
--
ALTER TABLE `personnel_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personnel_assignareaemployee`
--
ALTER TABLE `personnel_assignareaemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_certification`
--
ALTER TABLE `personnel_certification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_company`
--
ALTER TABLE `personnel_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personnel_department`
--
ALTER TABLE `personnel_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personnel_employee`
--
ALTER TABLE `personnel_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personnel_employeecalendar`
--
ALTER TABLE `personnel_employeecalendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_employeecertification`
--
ALTER TABLE `personnel_employeecertification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_employeecustomattribute`
--
ALTER TABLE `personnel_employeecustomattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_employeeextrainfo`
--
ALTER TABLE `personnel_employeeextrainfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_employeeprofile`
--
ALTER TABLE `personnel_employeeprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personnel_employee_area`
--
ALTER TABLE `personnel_employee_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personnel_employee_flow_role`
--
ALTER TABLE `personnel_employee_flow_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_employment`
--
ALTER TABLE `personnel_employment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_position`
--
ALTER TABLE `personnel_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personnel_resign`
--
ALTER TABLE `personnel_resign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_framework_tracking_apirequestlog`
--
ALTER TABLE `rest_framework_tracking_apirequestlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `sync_area`
--
ALTER TABLE `sync_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sync_department`
--
ALTER TABLE `sync_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sync_employee`
--
ALTER TABLE `sync_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sync_job`
--
ALTER TABLE `sync_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_reason`
--
ALTER TABLE `visitor_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitor`
--
ALTER TABLE `visitor_visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitorbiodata`
--
ALTER TABLE `visitor_visitorbiodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitorbiophoto`
--
ALTER TABLE `visitor_visitorbiophoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitorconfig`
--
ALTER TABLE `visitor_visitorconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_visitorlog`
--
ALTER TABLE `visitor_visitorlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitortransaction`
--
ALTER TABLE `visitor_visitortransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitor_acc_groups`
--
ALTER TABLE `visitor_visitor_acc_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_visitor_area`
--
ALTER TABLE `visitor_visitor_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_nodeinstance`
--
ALTER TABLE `workflow_nodeinstance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflowengine`
--
ALTER TABLE `workflow_workflowengine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflowengine_employee`
--
ALTER TABLE `workflow_workflowengine_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflowinstance`
--
ALTER TABLE `workflow_workflowinstance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflownode`
--
ALTER TABLE `workflow_workflownode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflownode_approver`
--
ALTER TABLE `workflow_workflownode_approver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflownode_notifier`
--
ALTER TABLE `workflow_workflownode_notifier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflow_workflowrole`
--
ALTER TABLE `workflow_workflowrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_adminbiodata`
--
ALTER TABLE `accounts_adminbiodata`
  ADD CONSTRAINT `accounts_adminbiodata_admin_id_1e6d2d45_fk_auth_user_id` FOREIGN KEY (`admin_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_usernotification`
--
ALTER TABLE `accounts_usernotification`
  ADD CONSTRAINT `accounts_usernotification_user_id_b86755b3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `acc_acccombination`
--
ALTER TABLE `acc_acccombination`
  ADD CONSTRAINT `acc_acccombination_area_id_0d22c34e_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`);

--
-- Constraints for table `acc_accgroups`
--
ALTER TABLE `acc_accgroups`
  ADD CONSTRAINT `acc_accgroups_area_id_b83745c3_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`);

--
-- Constraints for table `acc_accholiday`
--
ALTER TABLE `acc_accholiday`
  ADD CONSTRAINT `acc_accholiday_area_id_d15c19da_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`),
  ADD CONSTRAINT `acc_accholiday_holiday_id_a9efe924_fk_att_holiday_id` FOREIGN KEY (`holiday_id`) REFERENCES `att_holiday` (`id`),
  ADD CONSTRAINT `acc_accholiday_timezone_id_450d2d1e_fk_acc_acctimezone_id` FOREIGN KEY (`timezone_id`) REFERENCES `acc_acctimezone` (`id`);

--
-- Constraints for table `acc_accprivilege`
--
ALTER TABLE `acc_accprivilege`
  ADD CONSTRAINT `acc_accprivilege_area_id_2123ff6f_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`),
  ADD CONSTRAINT `acc_accprivilege_employee_id_5fc55f95_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `acc_accprivilege_group_id_c5ed7003_fk_acc_accgroups_id` FOREIGN KEY (`group_id`) REFERENCES `acc_accgroups` (`id`);

--
-- Constraints for table `acc_accterminal`
--
ALTER TABLE `acc_accterminal`
  ADD CONSTRAINT `acc_accterminal_terminal_id_fc92cce2_fk_iclock_terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `acc_acctimezone`
--
ALTER TABLE `acc_acctimezone`
  ADD CONSTRAINT `acc_acctimezone_area_id_e9ce7a7a_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`);

--
-- Constraints for table `att_attemployee`
--
ALTER TABLE `att_attemployee`
  ADD CONSTRAINT `att_attemployee_emp_id_52457e3c_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_attemployee_group_id_18d3954d_fk_att_attgroup_id` FOREIGN KEY (`group_id`) REFERENCES `att_attgroup` (`id`);

--
-- Constraints for table `att_attgroup`
--
ALTER TABLE `att_attgroup`
  ADD CONSTRAINT `att_attgroup_company_id_cd1b54f8_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`);

--
-- Constraints for table `att_attpolicy`
--
ALTER TABLE `att_attpolicy`
  ADD CONSTRAINT `att_attpolicy_ot_pay_code_id_b189b952_fk_att_paycode_id` FOREIGN KEY (`ot_pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_attschedule`
--
ALTER TABLE `att_attschedule`
  ADD CONSTRAINT `att_attschedule_employee_id_caa61686_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_attschedule_shift_id_13d2db9a_fk_att_attshift_id` FOREIGN KEY (`shift_id`) REFERENCES `att_attshift` (`id`);

--
-- Constraints for table `att_attshift`
--
ALTER TABLE `att_attshift`
  ADD CONSTRAINT `att_attshift_company_id_2c0a4f56_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`);

--
-- Constraints for table `att_breaktime`
--
ALTER TABLE `att_breaktime`
  ADD CONSTRAINT `att_breaktime_company_id_fbb9a2b7_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `att_breaktime_loss_code_id_2ffb5432_fk_att_paycode_id` FOREIGN KEY (`loss_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `att_breaktime_profit_code_id_63cdbbcc_fk_att_paycode_id` FOREIGN KEY (`profit_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_changeschedule`
--
ALTER TABLE `att_changeschedule`
  ADD CONSTRAINT `att_changeschedule_timeinterval_id_d41ac077_fk_att_timei` FOREIGN KEY (`timeinterval_id`) REFERENCES `att_timeinterval` (`id`),
  ADD CONSTRAINT `att_changeschedule_workflowinstance_ptr_cee602bb_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `att_departmentpolicy`
--
ALTER TABLE `att_departmentpolicy`
  ADD CONSTRAINT `att_departmentpolicy_department_id_77059a9d_fk_personnel` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `att_departmentpolicy_ot_pay_code_id_390411dd_fk_att_paycode_id` FOREIGN KEY (`ot_pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_departmentschedule`
--
ALTER TABLE `att_departmentschedule`
  ADD CONSTRAINT `att_departmentschedu_department_id_c68fca3d_fk_personnel` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `att_departmentschedule_shift_id_c37d5ade_fk_att_attshift_id` FOREIGN KEY (`shift_id`) REFERENCES `att_attshift` (`id`);

--
-- Constraints for table `att_deptattrule`
--
ALTER TABLE `att_deptattrule`
  ADD CONSTRAINT `att_deptattrule_department_id_f333c8f0_fk_personnel` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`);

--
-- Constraints for table `att_grouppolicy`
--
ALTER TABLE `att_grouppolicy`
  ADD CONSTRAINT `att_grouppolicy_group_id_b2e4dfe8_fk_att_attgroup_id` FOREIGN KEY (`group_id`) REFERENCES `att_attgroup` (`id`),
  ADD CONSTRAINT `att_grouppolicy_ot_pay_code_id_1ec83080_fk_att_paycode_id` FOREIGN KEY (`ot_pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_groupschedule`
--
ALTER TABLE `att_groupschedule`
  ADD CONSTRAINT `att_groupschedule_group_id_c341493f_fk_att_attgroup_id` FOREIGN KEY (`group_id`) REFERENCES `att_attgroup` (`id`),
  ADD CONSTRAINT `att_groupschedule_shift_id_287e7fc0_fk_att_attshift_id` FOREIGN KEY (`shift_id`) REFERENCES `att_attshift` (`id`);

--
-- Constraints for table `att_holiday`
--
ALTER TABLE `att_holiday`
  ADD CONSTRAINT `att_holiday_att_group_id_9ddf13ba_fk_att_attgroup_id` FOREIGN KEY (`att_group_id`) REFERENCES `att_attgroup` (`id`),
  ADD CONSTRAINT `att_holiday_department_id_fbbbd185_fk_personnel_department_id` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`);

--
-- Constraints for table `att_leave`
--
ALTER TABLE `att_leave`
  ADD CONSTRAINT `att_leave_pay_code_id_2fadf493_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `att_leave_workflowinstance_ptr_39aaa9d9_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `att_leavegroup`
--
ALTER TABLE `att_leavegroup`
  ADD CONSTRAINT `att_leavegroup_company_id_a1c75fcb_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`);

--
-- Constraints for table `att_leavegroupdetail`
--
ALTER TABLE `att_leavegroupdetail`
  ADD CONSTRAINT `att_leavegroupdetail_leave_group_id_28f69ada_fk_att_leave` FOREIGN KEY (`leave_group_id`) REFERENCES `att_leavegroup` (`id`),
  ADD CONSTRAINT `att_leavegroupdetail_pay_code_id_5013b373_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_leaveyearbalance`
--
ALTER TABLE `att_leaveyearbalance`
  ADD CONSTRAINT `att_leaveyearbalance_employee_id_14febdb3_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_leaveyearbalance_pay_code_id_82632aca_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_manuallog`
--
ALTER TABLE `att_manuallog`
  ADD CONSTRAINT `att_manuallog_work_code_id_09ac4580_fk_iclock_te` FOREIGN KEY (`work_code_id`) REFERENCES `iclock_terminalworkcode` (`id`),
  ADD CONSTRAINT `att_manuallog_workflowinstance_ptr_22a3fbd0_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `att_overtime`
--
ALTER TABLE `att_overtime`
  ADD CONSTRAINT `att_overtime_pay_code_id_05600ee0_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `att_overtime_workflowinstance_ptr_6bd6a6f4_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `att_overtimepolicy`
--
ALTER TABLE `att_overtimepolicy`
  ADD CONSTRAINT `att_overtimepolicy_overnight_pay_code_i_274ce1b0_fk_att_payco` FOREIGN KEY (`overnight_pay_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `att_overtimepolicy_pay_code_id_285b0a61_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_payloadattcode`
--
ALTER TABLE `att_payloadattcode`
  ADD CONSTRAINT `att_payloadattcode_att_code_id_0d635efd_fk_att_attcode_id` FOREIGN KEY (`att_code_id`) REFERENCES `att_attcode` (`id`),
  ADD CONSTRAINT `att_payloadattcode_emp_id_36569f54_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_payloadattcode_shift_id_731faddf_fk_att_attshift_id` FOREIGN KEY (`shift_id`) REFERENCES `att_attshift` (`id`);

--
-- Constraints for table `att_payloadbase`
--
ALTER TABLE `att_payloadbase`
  ADD CONSTRAINT `att_payloadbase_emp_id_2c0f6a7b_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_payloadbase_timetable_id_a389e3d8_fk_att_timeinterval_id` FOREIGN KEY (`timetable_id`) REFERENCES `att_timeinterval` (`id`);

--
-- Constraints for table `att_payloadeffectpunch`
--
ALTER TABLE `att_payloadeffectpunch`
  ADD CONSTRAINT `att_payloadeffectpun_trans_id_94affbe6_fk_iclock_tr` FOREIGN KEY (`trans_id`) REFERENCES `iclock_transaction` (`id`),
  ADD CONSTRAINT `att_payloadeffectpunch_emp_id_67e28e01_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `att_payloadexception`
--
ALTER TABLE `att_payloadexception`
  ADD CONSTRAINT `att_payloadexception_item_id_a08bfe48_fk_att_leave` FOREIGN KEY (`item_id`) REFERENCES `att_leave` (`workflowinstance_ptr_id`);

--
-- Constraints for table `att_payloadmulpunchset`
--
ALTER TABLE `att_payloadmulpunchset`
  ADD CONSTRAINT `att_payloadmulpunchset_emp_id_f47610c8_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `att_payloadparing`
--
ALTER TABLE `att_payloadparing`
  ADD CONSTRAINT `att_payloadparing_emp_id_c5daac4f_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_payloadparing_in_trans_id_50a8040e_fk_iclock_transaction_id` FOREIGN KEY (`in_trans_id`) REFERENCES `iclock_transaction` (`id`),
  ADD CONSTRAINT `att_payloadparing_out_trans_id_8b2375b9_fk_iclock_transaction_id` FOREIGN KEY (`out_trans_id`) REFERENCES `iclock_transaction` (`id`),
  ADD CONSTRAINT `att_payloadparing_pay_code_id_aa241cca_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_payloadpaycode`
--
ALTER TABLE `att_payloadpaycode`
  ADD CONSTRAINT `att_payloadpaycode_emp_id_78e75279_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_payloadpaycode_pay_code_id_4a096cc7_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `att_payloadpaycode_shift_id_79a0901e_fk_att_attshift_id` FOREIGN KEY (`shift_id`) REFERENCES `att_attshift` (`id`);

--
-- Constraints for table `att_payloadpunch`
--
ALTER TABLE `att_payloadpunch`
  ADD CONSTRAINT `att_payloadpunch_emp_id_053da2f0_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_payloadpunch_orig_id_16b26416_fk_iclock_transaction_id` FOREIGN KEY (`orig_id`) REFERENCES `iclock_transaction` (`id`);

--
-- Constraints for table `att_payloadtimecard`
--
ALTER TABLE `att_payloadtimecard`
  ADD CONSTRAINT `att_payloadtimecard_emp_id_47caeab4_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `att_payloadtimecard_time_table_id_6e0b0137_fk_att_timei` FOREIGN KEY (`time_table_id`) REFERENCES `att_timeinterval` (`id`);

--
-- Constraints for table `att_reporttemplate`
--
ALTER TABLE `att_reporttemplate`
  ADD CONSTRAINT `att_reporttemplate_builder_id_e1bb15c6_fk_auth_user_id` FOREIGN KEY (`builder_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `att_reporttemplate_employee_id_4f80d866_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `att_shiftdetail`
--
ALTER TABLE `att_shiftdetail`
  ADD CONSTRAINT `att_shiftdetail_shift_id_7d694501_fk_att_attshift_id` FOREIGN KEY (`shift_id`) REFERENCES `att_attshift` (`id`),
  ADD CONSTRAINT `att_shiftdetail_time_interval_id_777dde8f_fk_att_timeinterval_id` FOREIGN KEY (`time_interval_id`) REFERENCES `att_timeinterval` (`id`);

--
-- Constraints for table `att_temporaryschedule`
--
ALTER TABLE `att_temporaryschedule`
  ADD CONSTRAINT `att_temporaryschedul_employee_id_2b2b94c2_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `att_tempschedule`
--
ALTER TABLE `att_tempschedule`
  ADD CONSTRAINT `att_tempschedule_employee_id_b89c7e54_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `att_timeinterval`
--
ALTER TABLE `att_timeinterval`
  ADD CONSTRAINT `att_timeinterval_company_id_9824d651_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `att_timeinterval_ot_pay_code_id_17438af8_fk_att_paycode_id` FOREIGN KEY (`ot_pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `att_timeinterval_break_time`
--
ALTER TABLE `att_timeinterval_break_time`
  ADD CONSTRAINT `att_timeinterval_bre_breaktime_id_08462308_fk_att_break` FOREIGN KEY (`breaktime_id`) REFERENCES `att_breaktime` (`id`),
  ADD CONSTRAINT `att_timeinterval_bre_timeinterval_id_2287017e_fk_att_timei` FOREIGN KEY (`timeinterval_id`) REFERENCES `att_timeinterval` (`id`);

--
-- Constraints for table `att_training`
--
ALTER TABLE `att_training`
  ADD CONSTRAINT `att_training_pay_code_id_5790afdd_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `att_training_workflowinstance_ptr_0aef1508_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `att_webpunch`
--
ALTER TABLE `att_webpunch`
  ADD CONSTRAINT `att_webpunch_workflowinstance_ptr_c5f1c02e_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_auth_area`
--
ALTER TABLE `auth_user_auth_area`
  ADD CONSTRAINT `auth_user_auth_area_area_id_d1e54c70_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`),
  ADD CONSTRAINT `auth_user_auth_area_myuser_id_5fb9a803_fk_auth_user_id` FOREIGN KEY (`myuser_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_auth_dept`
--
ALTER TABLE `auth_user_auth_dept`
  ADD CONSTRAINT `auth_user_auth_dept_department_id_5866c514_fk_personnel` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `auth_user_auth_dept_myuser_id_18a51b27_fk_auth_user_id` FOREIGN KEY (`myuser_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_myuser_id_d03e8dcc_fk_auth_user_id` FOREIGN KEY (`myuser_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_profile`
--
ALTER TABLE `auth_user_profile`
  ADD CONSTRAINT `auth_user_profile_user_id_f9aded29_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_myuser_id_679b1527_fk_auth_user_id` FOREIGN KEY (`myuser_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_adminlog`
--
ALTER TABLE `base_adminlog`
  ADD CONSTRAINT `base_adminlog_content_type_id_3e553c30_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `base_adminlog_user_id_ecf659f8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_autoimporttask`
--
ALTER TABLE `base_autoimporttask`
  ADD CONSTRAINT `base_autoimporttask_company_id_d18431a1_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`);

--
-- Constraints for table `base_bookmark`
--
ALTER TABLE `base_bookmark`
  ADD CONSTRAINT `base_bookmark_content_type_id_b6a0e799_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `base_bookmark_user_id_5f2d5ca2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_linenotifyforemployee`
--
ALTER TABLE `base_linenotifyforemployee`
  ADD CONSTRAINT `base_linenotifyforem_employee_id_42fb91f8_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `base_linenotifysetting`
--
ALTER TABLE `base_linenotifysetting`
  ADD CONSTRAINT `base_linenotifysetti_line_notify_dept_id_0643a5ed_fk_personnel` FOREIGN KEY (`line_notify_dept_id`) REFERENCES `personnel_department` (`id`);

--
-- Constraints for table `base_messengersentlog`
--
ALTER TABLE `base_messengersentlog`
  ADD CONSTRAINT `base_messengersentlo_content_type_id_e6e9b3d5_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `base_messengersentlog_emp_id_44eba15e_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `base_messengersentlog_user_id_64034c70_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ep_eptransaction`
--
ALTER TABLE `ep_eptransaction`
  ADD CONSTRAINT `ep_eptransaction_emp_id_1006883f_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `ep_eptransaction_terminal_id_4490b209_fk_iclock_terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_biodata`
--
ALTER TABLE `iclock_biodata`
  ADD CONSTRAINT `iclock_biodata_employee_id_ff748ea7_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `iclock_biophoto`
--
ALTER TABLE `iclock_biophoto`
  ADD CONSTRAINT `iclock_biophoto_employee_id_3dba5819_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `iclock_errorcommandlog`
--
ALTER TABLE `iclock_errorcommandlog`
  ADD CONSTRAINT `iclock_errorcommandl_terminal_id_3b2d7cbd_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_privatemessage`
--
ALTER TABLE `iclock_privatemessage`
  ADD CONSTRAINT `iclock_privatemessag_employee_id_e84a34c0_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `iclock_privatemessag_message_id_e3145d3b_fk_iclock_sh` FOREIGN KEY (`message_id`) REFERENCES `iclock_shortmessage` (`id`);

--
-- Constraints for table `iclock_publicmessage`
--
ALTER TABLE `iclock_publicmessage`
  ADD CONSTRAINT `iclock_publicmessage_message_id_7d125e28_fk_iclock_sh` FOREIGN KEY (`message_id`) REFERENCES `iclock_shortmessage` (`id`),
  ADD CONSTRAINT `iclock_publicmessage_terminal_id_c3b5e4cf_fk_iclock_terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_terminal`
--
ALTER TABLE `iclock_terminal`
  ADD CONSTRAINT `iclock_terminal_area_id_c019c6f0_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`);

--
-- Constraints for table `iclock_terminalcommand`
--
ALTER TABLE `iclock_terminalcommand`
  ADD CONSTRAINT `iclock_terminalcomma_terminal_id_3dcf836f_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_terminalcommandlog`
--
ALTER TABLE `iclock_terminalcommandlog`
  ADD CONSTRAINT `iclock_terminalcomma_terminal_id_35ea8b2b_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_terminallog`
--
ALTER TABLE `iclock_terminallog`
  ADD CONSTRAINT `iclock_terminallog_terminal_id_667b3ea7_fk_iclock_terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_terminalparameter`
--
ALTER TABLE `iclock_terminalparameter`
  ADD CONSTRAINT `iclock_terminalparam_terminal_id_443872e3_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_terminaluploadlog`
--
ALTER TABLE `iclock_terminaluploadlog`
  ADD CONSTRAINT `iclock_terminaluploa_terminal_id_9c9a7664_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_terminalworkcode`
--
ALTER TABLE `iclock_terminalworkcode`
  ADD CONSTRAINT `iclock_terminalworkc_company_id_77625f26_fk_personnel` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`);

--
-- Constraints for table `iclock_transaction`
--
ALTER TABLE `iclock_transaction`
  ADD CONSTRAINT `iclock_transaction_emp_id_60fa3521_fk_personnel_employee_id` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `iclock_transaction_terminal_id_451c81c2_fk_iclock_terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `iclock_transactionproofcmd`
--
ALTER TABLE `iclock_transactionproofcmd`
  ADD CONSTRAINT `iclock_transactionpr_terminal_id_08b81e1e_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `meeting_meetingentity`
--
ALTER TABLE `meeting_meetingentity`
  ADD CONSTRAINT `meeting_meetingentit_workflowinstance_ptr_dbd9ab40_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`),
  ADD CONSTRAINT `meeting_meetingentity_room_id_bc2c738e_fk_meeting_meetingroom_id` FOREIGN KEY (`room_id`) REFERENCES `meeting_meetingroom` (`id`),
  ADD CONSTRAINT `meeting_meetingentity_zoom_id_7f87d666_fk_base_zoomsetting_id` FOREIGN KEY (`zoom_id`) REFERENCES `base_zoomsetting` (`id`);

--
-- Constraints for table `meeting_meetingentity_attender`
--
ALTER TABLE `meeting_meetingentity_attender`
  ADD CONSTRAINT `meeting_meetingentit_employee_id_ee898064_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `meeting_meetingentit_meetingentity_id_b96dbc7d_fk_meeting_m` FOREIGN KEY (`meetingentity_id`) REFERENCES `meeting_meetingentity` (`workflowinstance_ptr_id`);

--
-- Constraints for table `meeting_meetingmanuallog`
--
ALTER TABLE `meeting_meetingmanuallog`
  ADD CONSTRAINT `meeting_meetingmanua_meeting_id_a672eaaf_fk_meeting_m` FOREIGN KEY (`meeting_id`) REFERENCES `meeting_meetingentity` (`workflowinstance_ptr_id`),
  ADD CONSTRAINT `meeting_meetingmanua_workflowinstance_ptr_bd514862_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `meeting_meetingpayloadbase`
--
ALTER TABLE `meeting_meetingpayloadbase`
  ADD CONSTRAINT `meeting_meetingpaylo_emp_id_ed6ec148_fk_personnel` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `meeting_meetingpaylo_meeting_id_ca9d20cc_fk_meeting_m` FOREIGN KEY (`meeting_id`) REFERENCES `meeting_meetingentity` (`workflowinstance_ptr_id`);

--
-- Constraints for table `meeting_meetingroomdevice`
--
ALTER TABLE `meeting_meetingroomdevice`
  ADD CONSTRAINT `meeting_meetingroomd_device_id_a09e8a7d_fk_iclock_te` FOREIGN KEY (`device_id`) REFERENCES `iclock_terminal` (`id`),
  ADD CONSTRAINT `meeting_meetingroomd_room_id_e000d78d_fk_meeting_m` FOREIGN KEY (`room_id`) REFERENCES `meeting_meetingroom` (`id`);

--
-- Constraints for table `meeting_meetingtransaction`
--
ALTER TABLE `meeting_meetingtransaction`
  ADD CONSTRAINT `meeting_meetingtrans_emp_id_fbcdd686_fk_personnel` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `meeting_meetingtrans_meeting_id_e4e505e5_fk_meeting_m` FOREIGN KEY (`meeting_id`) REFERENCES `meeting_meetingentity` (`workflowinstance_ptr_id`),
  ADD CONSTRAINT `meeting_meetingtrans_terminal_id_047426f2_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`);

--
-- Constraints for table `mobile_announcement`
--
ALTER TABLE `mobile_announcement`
  ADD CONSTRAINT `mobile_announcement_admin_id_6af3868c_fk_auth_user_id` FOREIGN KEY (`admin_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `mobile_announcement_init_sender_id_2f5e35bd_fk_personnel` FOREIGN KEY (`init_sender_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `mobile_announcement_receiver_id_ddf2a860_fk_personnel` FOREIGN KEY (`receiver_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `mobile_appnotification`
--
ALTER TABLE `mobile_appnotification`
  ADD CONSTRAINT `mobile_appnotificati_init_sender_id_d8aff845_fk_personnel` FOREIGN KEY (`init_sender_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `mobile_appnotificati_receiver_id_90c4a355_fk_personnel` FOREIGN KEY (`receiver_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `mobile_appnotification_admin_id_29c27197_fk_auth_user_id` FOREIGN KEY (`admin_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mobile_gpsfordepartment`
--
ALTER TABLE `mobile_gpsfordepartment`
  ADD CONSTRAINT `mobile_gpsfordepartm_department_id_988ccf22_fk_personnel` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`);

--
-- Constraints for table `mobile_gpsfordepartment_location`
--
ALTER TABLE `mobile_gpsfordepartment_location`
  ADD CONSTRAINT `mobile_gpsfordepartm_gpsfordepartment_id_23e9af3a_fk_mobile_gp` FOREIGN KEY (`gpsfordepartment_id`) REFERENCES `mobile_gpsfordepartment` (`id`),
  ADD CONSTRAINT `mobile_gpsfordepartm_gpslocation_id_48b82e9e_fk_mobile_gp` FOREIGN KEY (`gpslocation_id`) REFERENCES `mobile_gpslocation` (`id`);

--
-- Constraints for table `mobile_gpsforemployee`
--
ALTER TABLE `mobile_gpsforemployee`
  ADD CONSTRAINT `mobile_gpsforemploye_employee_id_982b7cef_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `mobile_gpsforemployee_location`
--
ALTER TABLE `mobile_gpsforemployee_location`
  ADD CONSTRAINT `mobile_gpsforemploye_gpsforemployee_id_a52023d5_fk_mobile_gp` FOREIGN KEY (`gpsforemployee_id`) REFERENCES `mobile_gpsforemployee` (`id`),
  ADD CONSTRAINT `mobile_gpsforemploye_gpslocation_id_497a214f_fk_mobile_gp` FOREIGN KEY (`gpslocation_id`) REFERENCES `mobile_gpslocation` (`id`);

--
-- Constraints for table `payroll_empexpenseexemption`
--
ALTER TABLE `payroll_empexpenseexemption`
  ADD CONSTRAINT `payroll_empexpenseex_employee_id_5372811d_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_emploan`
--
ALTER TABLE `payroll_emploan`
  ADD CONSTRAINT `payroll_emploan_employee_id_97a251ef_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_emppayrollprofile`
--
ALTER TABLE `payroll_emppayrollprofile`
  ADD CONSTRAINT `payroll_emppayrollpr_employee_id_6c97078c_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_exceptionformula`
--
ALTER TABLE `payroll_exceptionformula`
  ADD CONSTRAINT `payroll_exceptionformula_pay_code_id_97609b51_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `payroll_extradeduction`
--
ALTER TABLE `payroll_extradeduction`
  ADD CONSTRAINT `payroll_extradeducti_employee_id_53072441_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `payroll_extradeducti_special_type_id_50673042_fk_payroll_s` FOREIGN KEY (`special_type_id`) REFERENCES `payroll_specialpayment` (`id`);

--
-- Constraints for table `payroll_extraincrease`
--
ALTER TABLE `payroll_extraincrease`
  ADD CONSTRAINT `payroll_extraincreas_employee_id_f902e6bb_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `payroll_extraincreas_special_type_id_d15ce699_fk_payroll_s` FOREIGN KEY (`special_type_id`) REFERENCES `payroll_specialpayment` (`id`);

--
-- Constraints for table `payroll_increasementformula`
--
ALTER TABLE `payroll_increasementformula`
  ADD CONSTRAINT `payroll_increasement_special_type_id_88016f0b_fk_payroll_s` FOREIGN KEY (`special_type_id`) REFERENCES `payroll_specialpayment` (`id`);

--
-- Constraints for table `payroll_leaveformula`
--
ALTER TABLE `payroll_leaveformula`
  ADD CONSTRAINT `payroll_leaveformula_pay_code_id_63c7b4bd_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `payroll_overtimeformula`
--
ALTER TABLE `payroll_overtimeformula`
  ADD CONSTRAINT `payroll_overtimeformula_pay_code_id_36d2f10e_fk_att_paycode_id` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `payroll_payrollpayload`
--
ALTER TABLE `payroll_payrollpayload`
  ADD CONSTRAINT `payroll_payrollpaylo_employee_id_bc868f2b_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_payrollpayloadexpenseexemption`
--
ALTER TABLE `payroll_payrollpayloadexpenseexemption`
  ADD CONSTRAINT `payroll_payrollpaylo_exemption_id_2effb718_fk_payroll_e` FOREIGN KEY (`exemption_id`) REFERENCES `payroll_empexpenseexemption` (`id`),
  ADD CONSTRAINT `payroll_payrollpaylo_payload_id_46c8357d_fk_payroll_p` FOREIGN KEY (`payload_id`) REFERENCES `payroll_payrollpayload` (`id`);

--
-- Constraints for table `payroll_payrollpayloadpaycode`
--
ALTER TABLE `payroll_payrollpayloadpaycode`
  ADD CONSTRAINT `payroll_payrollpaylo_pay_code_id_c057af1f_fk_att_payco` FOREIGN KEY (`pay_code_id`) REFERENCES `att_paycode` (`id`),
  ADD CONSTRAINT `payroll_payrollpaylo_payload_id_f085c4e8_fk_payroll_p` FOREIGN KEY (`payload_id`) REFERENCES `payroll_payrollpayload` (`id`);

--
-- Constraints for table `payroll_reimbursement`
--
ALTER TABLE `payroll_reimbursement`
  ADD CONSTRAINT `payroll_reimbursemen_employee_id_c4bbde36_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_salaryadvance`
--
ALTER TABLE `payroll_salaryadvance`
  ADD CONSTRAINT `payroll_salaryadvanc_employee_id_2abd43e5_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_salarystructure`
--
ALTER TABLE `payroll_salarystructure`
  ADD CONSTRAINT `payroll_salarystruct_employee_id_98996e15_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `payroll_salarystructure_deductionformula`
--
ALTER TABLE `payroll_salarystructure_deductionformula`
  ADD CONSTRAINT `payroll_salarystruct_deductionformula_id_b174d5b6_fk_payroll_d` FOREIGN KEY (`deductionformula_id`) REFERENCES `payroll_deductionformula` (`id`),
  ADD CONSTRAINT `payroll_salarystruct_salarystructure_id_5ca7cdb5_fk_payroll_s` FOREIGN KEY (`salarystructure_id`) REFERENCES `payroll_salarystructure` (`id`);

--
-- Constraints for table `payroll_salarystructure_exceptionformula`
--
ALTER TABLE `payroll_salarystructure_exceptionformula`
  ADD CONSTRAINT `payroll_salarystruct_exceptionformula_id_8f6dadb3_fk_payroll_e` FOREIGN KEY (`exceptionformula_id`) REFERENCES `payroll_exceptionformula` (`id`),
  ADD CONSTRAINT `payroll_salarystruct_salarystructure_id_3c087208_fk_payroll_s` FOREIGN KEY (`salarystructure_id`) REFERENCES `payroll_salarystructure` (`id`);

--
-- Constraints for table `payroll_salarystructure_increasementformula`
--
ALTER TABLE `payroll_salarystructure_increasementformula`
  ADD CONSTRAINT `payroll_salarystruct_increasementformula__3cd77082_fk_payroll_i` FOREIGN KEY (`increasementformula_id`) REFERENCES `payroll_increasementformula` (`id`),
  ADD CONSTRAINT `payroll_salarystruct_salarystructure_id_8752401c_fk_payroll_s` FOREIGN KEY (`salarystructure_id`) REFERENCES `payroll_salarystructure` (`id`);

--
-- Constraints for table `payroll_salarystructure_leaveformula`
--
ALTER TABLE `payroll_salarystructure_leaveformula`
  ADD CONSTRAINT `payroll_salarystruct_leaveformula_id_049f9024_fk_payroll_l` FOREIGN KEY (`leaveformula_id`) REFERENCES `payroll_leaveformula` (`id`),
  ADD CONSTRAINT `payroll_salarystruct_salarystructure_id_cf98fdd7_fk_payroll_s` FOREIGN KEY (`salarystructure_id`) REFERENCES `payroll_salarystructure` (`id`);

--
-- Constraints for table `payroll_salarystructure_overtimeformula`
--
ALTER TABLE `payroll_salarystructure_overtimeformula`
  ADD CONSTRAINT `payroll_salarystruct_overtimeformula_id_40ad89ef_fk_payroll_o` FOREIGN KEY (`overtimeformula_id`) REFERENCES `payroll_overtimeformula` (`id`),
  ADD CONSTRAINT `payroll_salarystruct_salarystructure_id_64f75042_fk_payroll_s` FOREIGN KEY (`salarystructure_id`) REFERENCES `payroll_salarystructure` (`id`);

--
-- Constraints for table `personnel_area`
--
ALTER TABLE `personnel_area`
  ADD CONSTRAINT `personnel_area_company_id_59750eb5_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `personnel_area_parent_area_id_39028fda_fk_personnel_area_id` FOREIGN KEY (`parent_area_id`) REFERENCES `personnel_area` (`id`);

--
-- Constraints for table `personnel_assignareaemployee`
--
ALTER TABLE `personnel_assignareaemployee`
  ADD CONSTRAINT `personnel_assignarea_area_id_6f049d6a_fk_personnel` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`),
  ADD CONSTRAINT `personnel_assignarea_employee_id_a3d4dd25_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_department`
--
ALTER TABLE `personnel_department`
  ADD CONSTRAINT `personnel_department_company_id_00867fd8_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `personnel_department_dept_manager_id_c5124a7d_fk_personnel` FOREIGN KEY (`dept_manager_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `personnel_department_parent_dept_id_d0b44024_fk_personnel` FOREIGN KEY (`parent_dept_id`) REFERENCES `personnel_department` (`id`);

--
-- Constraints for table `personnel_employee`
--
ALTER TABLE `personnel_employee`
  ADD CONSTRAINT `personnel_employee_company_id_95b3fd72_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `personnel_employee_department_id_068bbd08_fk_personnel` FOREIGN KEY (`department_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `personnel_employee_position_id_c9321343_fk_personnel_position_id` FOREIGN KEY (`position_id`) REFERENCES `personnel_position` (`id`),
  ADD CONSTRAINT `personnel_employee_superior_id_ad6e1c47_fk_personnel_employee_id` FOREIGN KEY (`superior_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_employeecalendar`
--
ALTER TABLE `personnel_employeecalendar`
  ADD CONSTRAINT `personnel_employeeca_employee_id_165e0779_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_employeecertification`
--
ALTER TABLE `personnel_employeecertification`
  ADD CONSTRAINT `personnel_employeece_certification_id_faabed40_fk_personnel` FOREIGN KEY (`certification_id`) REFERENCES `personnel_certification` (`id`),
  ADD CONSTRAINT `personnel_employeece_employee_id_b7bd3867_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_employeeextrainfo`
--
ALTER TABLE `personnel_employeeextrainfo`
  ADD CONSTRAINT `personnel_employeeex_employee_id_41e2b04d_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_employeeprofile`
--
ALTER TABLE `personnel_employeeprofile`
  ADD CONSTRAINT `personnel_employeepr_emp_id_3a69c313_fk_personnel` FOREIGN KEY (`emp_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_employee_area`
--
ALTER TABLE `personnel_employee_area`
  ADD CONSTRAINT `personnel_employee_a_employee_id_8e5cec21_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `personnel_employee_area_area_id_64c21925_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`);

--
-- Constraints for table `personnel_employee_flow_role`
--
ALTER TABLE `personnel_employee_flow_role`
  ADD CONSTRAINT `personnel_employee_f_employee_id_c27f8a56_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `personnel_employee_f_workflowrole_id_4704db32_fk_workflow_` FOREIGN KEY (`workflowrole_id`) REFERENCES `workflow_workflowrole` (`id`);

--
-- Constraints for table `personnel_employment`
--
ALTER TABLE `personnel_employment`
  ADD CONSTRAINT `personnel_employment_employee_id_f797c7d9_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `personnel_position`
--
ALTER TABLE `personnel_position`
  ADD CONSTRAINT `personnel_position_company_id_f06c5d2a_fk_personnel_company_id` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `personnel_position_parent_position_id_a496a36b_fk_personnel` FOREIGN KEY (`parent_position_id`) REFERENCES `personnel_position` (`id`);

--
-- Constraints for table `personnel_resign`
--
ALTER TABLE `personnel_resign`
  ADD CONSTRAINT `personnel_resign_employee_id_dd9b7e08_fk_personnel_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `staff_stafftoken`
--
ALTER TABLE `staff_stafftoken`
  ADD CONSTRAINT `staff_stafftoken_user_id_39c937fa_fk_personnel_employee_id` FOREIGN KEY (`user_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `visitor_reservation`
--
ALTER TABLE `visitor_reservation`
  ADD CONSTRAINT `visitor_reservation_cert_type_id_4f047f2a_fk_personnel` FOREIGN KEY (`cert_type_id`) REFERENCES `personnel_certification` (`id`),
  ADD CONSTRAINT `visitor_reservation_visit_department_id_2d293e10_fk_personnel` FOREIGN KEY (`visit_department_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `visitor_reservation_visit_reason_id_c9ac83ac_fk_visitor_r` FOREIGN KEY (`visit_reason_id`) REFERENCES `visitor_reason` (`id`),
  ADD CONSTRAINT `visitor_reservation_workflowinstance_ptr_3787bcd6_fk_workflow_` FOREIGN KEY (`workflowinstance_ptr_id`) REFERENCES `workflow_workflowinstance` (`id`);

--
-- Constraints for table `visitor_visitor`
--
ALTER TABLE `visitor_visitor`
  ADD CONSTRAINT `visitor_visitor_cert_type_id_f62ea604_fk_personnel` FOREIGN KEY (`cert_type_id`) REFERENCES `personnel_certification` (`id`),
  ADD CONSTRAINT `visitor_visitor_visit_department_id_f7dbdcb4_fk_personnel` FOREIGN KEY (`visit_department_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `visitor_visitor_visit_reason_id_4b9a2d23_fk_visitor_reason_id` FOREIGN KEY (`visit_reason_id`) REFERENCES `visitor_reason` (`id`),
  ADD CONSTRAINT `visitor_visitor_visited_id_8043a7ea_fk_personnel_employee_id` FOREIGN KEY (`visited_id`) REFERENCES `personnel_employee` (`id`);

--
-- Constraints for table `visitor_visitorbiodata`
--
ALTER TABLE `visitor_visitorbiodata`
  ADD CONSTRAINT `visitor_visitorbiodata_visitor_id_b944ed37_fk_visitor_visitor_id` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_visitor` (`id`);

--
-- Constraints for table `visitor_visitorbiophoto`
--
ALTER TABLE `visitor_visitorbiophoto`
  ADD CONSTRAINT `visitor_visitorbioph_visitor_id_9816daf7_fk_visitor_v` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_visitor` (`id`);

--
-- Constraints for table `visitor_visitorlog`
--
ALTER TABLE `visitor_visitorlog`
  ADD CONSTRAINT `visitor_visitorlog_visitor_id_ebaafde1_fk_visitor_visitor_id` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_visitor` (`id`);

--
-- Constraints for table `visitor_visitortransaction`
--
ALTER TABLE `visitor_visitortransaction`
  ADD CONSTRAINT `visitor_visitortrans_terminal_id_7527ef69_fk_iclock_te` FOREIGN KEY (`terminal_id`) REFERENCES `iclock_terminal` (`id`),
  ADD CONSTRAINT `visitor_visitortrans_visitor_id_0ee95624_fk_visitor_v` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_visitor` (`id`);

--
-- Constraints for table `visitor_visitor_acc_groups`
--
ALTER TABLE `visitor_visitor_acc_groups`
  ADD CONSTRAINT `visitor_visitor_acc__accgroups_id_b1487149_fk_acc_accgr` FOREIGN KEY (`accgroups_id`) REFERENCES `acc_accgroups` (`id`),
  ADD CONSTRAINT `visitor_visitor_acc__visitor_id_8ce09562_fk_visitor_v` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_visitor` (`id`);

--
-- Constraints for table `visitor_visitor_area`
--
ALTER TABLE `visitor_visitor_area`
  ADD CONSTRAINT `visitor_visitor_area_area_id_b402c047_fk_personnel_area_id` FOREIGN KEY (`area_id`) REFERENCES `personnel_area` (`id`),
  ADD CONSTRAINT `visitor_visitor_area_visitor_id_98d7ed05_fk_visitor_visitor_id` FOREIGN KEY (`visitor_id`) REFERENCES `visitor_visitor` (`id`);

--
-- Constraints for table `workflow_nodeinstance`
--
ALTER TABLE `workflow_nodeinstance`
  ADD CONSTRAINT `workflow_nodeinstanc_approver_employee_id_d36cd45d_fk_personnel` FOREIGN KEY (`approver_employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `workflow_nodeinstanc_workflow_instance_id_afe84fe4_fk_workflow_` FOREIGN KEY (`workflow_instance_id`) REFERENCES `workflow_workflowinstance` (`id`),
  ADD CONSTRAINT `workflow_nodeinstanc_workflow_node_id_166f36c4_fk_workflow_` FOREIGN KEY (`workflow_node_id`) REFERENCES `workflow_workflownode` (`id`);

--
-- Constraints for table `workflow_workflowengine`
--
ALTER TABLE `workflow_workflowengine`
  ADD CONSTRAINT `workflow_workfloweng_applicant_position_i_8a65e03a_fk_personnel` FOREIGN KEY (`applicant_position_id`) REFERENCES `personnel_position` (`id`),
  ADD CONSTRAINT `workflow_workfloweng_company_id_c42adcb0_fk_personnel` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `workflow_workfloweng_content_type_id_f7345c20_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `workflow_workfloweng_departments_id_0f06d4c7_fk_personnel` FOREIGN KEY (`departments_id`) REFERENCES `personnel_department` (`id`),
  ADD CONSTRAINT `workflow_workflowengine_leave_type_id_7f03c9cc_fk_att_paycode_id` FOREIGN KEY (`leave_type_id`) REFERENCES `att_paycode` (`id`);

--
-- Constraints for table `workflow_workflowengine_employee`
--
ALTER TABLE `workflow_workflowengine_employee`
  ADD CONSTRAINT `workflow_workfloweng_employee_id_803a409e_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `workflow_workfloweng_workflowengine_id_6ebcc5f2_fk_workflow_` FOREIGN KEY (`workflowengine_id`) REFERENCES `workflow_workflowengine` (`id`);

--
-- Constraints for table `workflow_workflowinstance`
--
ALTER TABLE `workflow_workflowinstance`
  ADD CONSTRAINT `workflow_workflowins_employee_id_c7cff08e_fk_personnel` FOREIGN KEY (`employee_id`) REFERENCES `personnel_employee` (`id`),
  ADD CONSTRAINT `workflow_workflowins_workflow_engine_id_1e6ac40f_fk_workflow_` FOREIGN KEY (`workflow_engine_id`) REFERENCES `workflow_workflowengine` (`id`);

--
-- Constraints for table `workflow_workflownode`
--
ALTER TABLE `workflow_workflownode`
  ADD CONSTRAINT `workflow_workflownod_workflow_engine_id_04c8f470_fk_workflow_` FOREIGN KEY (`workflow_engine_id`) REFERENCES `workflow_workflowengine` (`id`);

--
-- Constraints for table `workflow_workflownode_approver`
--
ALTER TABLE `workflow_workflownode_approver`
  ADD CONSTRAINT `workflow_workflownod_workflownode_id_d814c941_fk_workflow_` FOREIGN KEY (`workflownode_id`) REFERENCES `workflow_workflownode` (`id`),
  ADD CONSTRAINT `workflow_workflownod_workflowrole_id_c8e00d42_fk_workflow_` FOREIGN KEY (`workflowrole_id`) REFERENCES `workflow_workflowrole` (`id`);

--
-- Constraints for table `workflow_workflownode_notifier`
--
ALTER TABLE `workflow_workflownode_notifier`
  ADD CONSTRAINT `workflow_workflownod_workflownode_id_57298016_fk_workflow_` FOREIGN KEY (`workflownode_id`) REFERENCES `workflow_workflownode` (`id`),
  ADD CONSTRAINT `workflow_workflownod_workflowrole_id_73de7fc2_fk_workflow_` FOREIGN KEY (`workflowrole_id`) REFERENCES `workflow_workflowrole` (`id`);

--
-- Constraints for table `workflow_workflowrole`
--
ALTER TABLE `workflow_workflowrole`
  ADD CONSTRAINT `workflow_workflowrol_company_id_bbb75590_fk_personnel` FOREIGN KEY (`company_id`) REFERENCES `personnel_company` (`id`),
  ADD CONSTRAINT `workflow_workflowrol_parent_role_id_91433355_fk_workflow_` FOREIGN KEY (`parent_role_id`) REFERENCES `workflow_workflowrole` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
