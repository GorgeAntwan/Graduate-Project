-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2020 at 12:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gradproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `activated_courses`
--

CREATE TABLE `activated_courses` (
  `semester` varchar(6) NOT NULL,
  `year` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `course_code` varchar(8) NOT NULL,
  `coordinator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activated_courses`
--

INSERT INTO `activated_courses` (`semester`, `year`, `id`, `course_code`, `coordinator_id`) VALUES
('spring', 2019, 1, 'comp 102', 14),
('spring', 2019, 2, 'comp 104', 4),
('spring', 2019, 3, 'comp 106', 6),
('spring', 2019, 4, 'comp 108', 1),
('summer', 2019, 5, 'comp 108', 1),
('spring', 2019, 6, 'comp 206', 5),
('spring', 2020, 7, 'comp 206', 5),
('fall', 2019, 8, 'comp 207', 4),
('spring', 2019, 9, 'comp 207', 5),
('spring', 2019, 10, 'comp 208', 2),
('spring', 2020, 11, 'comp 212', 7),
('spring', 2019, 12, 'comp 212', 7),
('summer', 2019, 13, 'comp 213', 13),
('spring', 2019, 14, 'comp 213', 12),
('spring', 2019, 15, 'comp 302', 3),
('summer', 2019, 16, 'comp 302', 3),
('spring', 2019, 17, 'comp 304', 3),
('summer', 2019, 18, 'comp 304', 10),
('spring', 2019, 19, 'comp 305', 8),
('spring', 2020, 20, 'comp 306', 7),
('spring', 2019, 21, 'comp 306', 14),
('spring', 2019, 22, 'comp 308', 9),
('spring', 2019, 23, 'comp 310', 4),
('spring', 2019, 24, 'comp 402', 5),
('summer', 2019, 25, 'comp 402', 5),
('spring', 2019, 26, 'comp 404', 8),
('spring', 2020, 27, 'comp 406', 6),
('spring', 2019, 28, 'comp 406', 13),
('spring', 2019, 29, 'comp 408', 1),
('spring', 2019, 30, 'comp 312', 3),
('summer', 2019, 31, 'comp 413', 1),
('spring', 2019, 32, 'comp 413', 8),
('spring', 2019, 33, 'comp 415', 10),
('spring', 2020, 34, 'comp 415', 10),
('spring', 2019, 35, 'comp 428', 8),
('spring', 2019, 36, 'comp 434', 12),
('summer', 2019, 37, 'math 331', 4),
('spring', 2019, 38, 'math 331', 5),
('spring', 2019, 39, 'comp 416', 7);

-- --------------------------------------------------------

--
-- Table structure for table `activated_courses_has_doctor`
--

CREATE TABLE `activated_courses_has_doctor` (
  `doctor_id` int(11) NOT NULL,
  `activated_courses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activated_courses_has_doctor`
--

INSERT INTO `activated_courses_has_doctor` (`doctor_id`, `activated_courses_id`) VALUES
(1, 4),
(1, 5),
(1, 29),
(1, 31),
(2, 10),
(2, 19),
(2, 28),
(2, 29),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 30),
(4, 2),
(4, 8),
(4, 22),
(4, 23),
(4, 37),
(5, 6),
(5, 7),
(5, 9),
(5, 24),
(5, 25),
(5, 26),
(5, 38),
(6, 2),
(6, 26),
(6, 27),
(7, 11),
(7, 12),
(7, 20),
(7, 39),
(8, 19),
(8, 26),
(8, 32),
(8, 35),
(9, 22),
(10, 2),
(10, 17),
(10, 18),
(10, 33),
(10, 34),
(12, 13),
(12, 14),
(12, 36),
(13, 27),
(13, 28),
(14, 1),
(14, 3),
(14, 20),
(14, 21);

-- --------------------------------------------------------

--
-- Table structure for table `activated_courses_students`
--

CREATE TABLE `activated_courses_students` (
  `program_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `activated_courses_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `attendence` float DEFAULT NULL,
  `done` tinyint(1) DEFAULT 0,
  `done_theoritical` int(100) DEFAULT 0,
  `done_theoritical_2` int(100) NOT NULL DEFAULT 0,
  `done_theoritical_3` int(100) NOT NULL DEFAULT 0,
  `done_practical` int(100) DEFAULT 0,
  `done_practical_2` int(100) NOT NULL DEFAULT 0,
  `done_practical_3` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activated_courses_students`
--

INSERT INTO `activated_courses_students` (`program_id`, `student_id`, `activated_courses_id`, `date`, `attendence`, `done`, `done_theoritical`, `done_theoritical_2`, `done_theoritical_3`, `done_practical`, `done_practical_2`, `done_practical_3`) VALUES
(1, 1, 1, NULL, 65, 0, 0, 0, 0, 0, 0, 0),
(1, 1, 2, NULL, 80, 0, 0, 4, 0, 0, 0, 3),
(1, 1, 3, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 6, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 7, NULL, 60, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 8, NULL, 80, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 9, NULL, 88, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 2, NULL, 88, 0, 1, 5, 0, 1, 3, 0),
(1, 3, 4, NULL, 80, 0, 0, 0, 0, 0, 0, 0),
(2, 7, 3, NULL, 80, 0, 0, 0, 0, 0, 0, 0),
(2, 7, 4, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(2, 7, 6, NULL, 70, 0, 0, 0, 0, 0, 0, 0),
(2, 7, 8, NULL, 75, 0, 0, 0, 0, 0, 0, 0),
(3, 6, 1, NULL, 68, 0, 0, 0, 0, 0, 0, 0),
(3, 6, 4, NULL, 89, 0, 0, 0, 0, 0, 0, 0),
(3, 6, 18, NULL, 86, 0, 0, 0, 0, 0, 0, 0),
(3, 6, 30, NULL, 80, 0, 0, 0, 0, 0, 0, 0),
(3, 8, 7, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(3, 8, 16, NULL, 77, 0, 0, 0, 0, 0, 0, 0),
(3, 8, 20, NULL, 65, 0, 0, 0, 0, 0, 0, 0),
(3, 8, 22, NULL, 78, 0, 0, 0, 0, 0, 0, 0),
(3, 11, 18, NULL, 80, 0, 0, 0, 0, 0, 0, 0),
(3, 11, 25, NULL, 77, 0, 0, 0, 0, 0, 0, 0),
(3, 11, 31, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(3, 11, 33, NULL, 75, 0, 0, 0, 0, 0, 0, 0),
(3, 12, 1, NULL, 86, 0, 0, 0, 0, 0, 0, 0),
(3, 12, 2, NULL, 89, 0, 0, 0, 0, 0, 0, 0),
(3, 12, 8, NULL, 70, 0, 0, 0, 0, 0, 0, 0),
(3, 12, 12, NULL, 77, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 4, NULL, 70, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 5, NULL, 55, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 8, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 12, NULL, 88, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 3, NULL, 85, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 7, NULL, 80, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 16, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(7, 9, 6, NULL, 88, 0, 0, 0, 0, 0, 0, 0),
(8, 10, 3, NULL, 70, 0, 0, 0, 0, 0, 0, 0),
(8, 10, 36, NULL, 90, 0, 0, 0, 0, 0, 0, 0),
(9, 13, 19, NULL, 89, 0, 0, 0, 0, 0, 0, 0),
(9, 13, 35, NULL, 90, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assistants`
--

CREATE TABLE `assistants` (
  `name` varchar(35) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `speciality` varchar(15) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `teaching_hours` int(11) DEFAULT NULL,
  `department_iddepartment` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `is_working` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assistants`
--

INSERT INTO `assistants` (`name`, `code`, `email`, `phone`, `speciality`, `rate`, `teaching_hours`, `department_iddepartment`, `id`, `is_working`, `password`, `updated_at`, `created_at`, `remember_token`) VALUES
('ahme dali', '12454', 'ahmedali@yahoo.com', 1200069222, ' cs', NULL, 2, 1, 1, 1, '$2y$10$FueCQmqjC5U9yUkma8GgLetKXEg9HiGVcZe.7MD2ebF44i54Qclwa', '2020-06-05', '0000-00-00', NULL),
('tarek ahmed', '154654', 'tarekahmed@yahoo.com', 1200069222, 'biology', NULL, 4, 3, 2, 1, '$2y$10$/w428nICxurzOuKNO4e.beLfA6gSsYHXo/YSyQ6JuyczSJVmgoGuS', '2020-06-05', '0000-00-00', NULL),
('eman ahmed', '143765', 'eman.ahmed@ayahoo.com', 1256776456, 'applied mathema', NULL, 4, 1, 3, 1, 'eman123', '2020-06-05', '0000-00-00', NULL),
('kamel ahmed', '435653', 'kamel.ahmed@yahoo.com', 1244324556, 'pure mathematic', NULL, 2, 1, 4, 1, 'kamel123', '2020-06-05', '0000-00-00', NULL),
('maged ali', '43565', 'maged.ali@yahoo.com', 1776677998, 'physics', NULL, 2, 4, 5, 1, 'maged123', '2020-06-05', '0000-00-00', NULL),
('naglaa mohamed', '432443', 'naglaa.mohamed@yahoo.com', 1254687654, 'zoology', NULL, 0, 5, 6, 0, 'naglaa143', '0000-00-00', '0000-00-00', NULL),
('yasser ahmed', '234234', 'yasser.ahmed@yahoo.com', 1245656544, 'chemistry', NULL, 4, 2, 7, 1, 'yaser123', '2020-06-05', '0000-00-00', NULL),
('kirolos sabry', '123545', 'kirolos.sabry@yahoo.com', 1237658763, 'chemistry', NULL, 2, 3, 8, 1, 'kirolos123', '2020-06-05', '0000-00-00', NULL),
('abanob mena', '132353', 'abanob.mena@yahoo.com', 1235457467, 'cs', NULL, 4, 1, 9, 1, 'abanob123', '2020-06-05', '0000-00-00', NULL),
('mena gerges', '542346', 'mena.gerges@yahoo.com', 1276565434, 'cs statistic', NULL, 2, 1, 10, 1, 'mena123', '2020-06-05', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assistant_has_activated_courses`
--

CREATE TABLE `assistant_has_activated_courses` (
  `assistant_id` int(11) NOT NULL,
  `activated_courses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assistant_has_activated_courses`
--

INSERT INTO `assistant_has_activated_courses` (`assistant_id`, `activated_courses_id`) VALUES
(1, 2),
(2, 2),
(2, 4),
(3, 2),
(3, 6),
(4, 4),
(5, 5),
(7, 7),
(7, 26),
(8, 8),
(9, 9),
(9, 27),
(10, 10),
(12, 5),
(12, 8),
(13, 10),
(13, 20),
(14, 35),
(14, 36);

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `questionnaire_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL,
  `answer` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`questionnaire_id`, `questions_id`, `answer`) VALUES
(1, 1, 1),
(1, 2, 5),
(1, 3, 2),
(1, 4, 3),
(1, 5, 3),
(1, 6, 4),
(1, 7, 2),
(1, 8, 5),
(1, 9, 4),
(1, 10, 2),
(1, 11, 3),
(1, 12, 2),
(1, 13, 1),
(1, 14, 1),
(1, 15, 2),
(1, 16, 3),
(1, 17, 2),
(1, 18, 4),
(1, 19, 1),
(1, 20, 5),
(2, 1, 3),
(2, 2, 3),
(2, 3, 5),
(2, 4, 1),
(2, 5, 3),
(2, 6, 2),
(2, 7, 2),
(2, 8, 5),
(2, 9, 2),
(2, 10, 5),
(2, 11, 2),
(2, 12, 2),
(2, 13, 1),
(2, 14, 3),
(2, 15, 4),
(2, 16, 3),
(2, 17, 3),
(2, 18, 4),
(2, 19, 1),
(2, 20, 2),
(3, 1, 2),
(3, 2, 1),
(3, 3, 5),
(3, 4, 2),
(3, 5, 3),
(3, 6, 1),
(3, 7, 2),
(3, 8, 2),
(3, 9, 4),
(3, 10, 4),
(3, 11, 3),
(3, 12, 5),
(3, 13, 3),
(3, 14, 2),
(3, 15, 3),
(3, 16, 2),
(3, 17, 1),
(3, 18, 4),
(3, 19, 5),
(3, 20, 5),
(4, 1, 1),
(4, 2, 5),
(4, 3, 1),
(4, 4, 3),
(4, 5, 3),
(4, 6, 4),
(4, 7, 2),
(4, 8, 1),
(4, 9, 3),
(4, 10, 2),
(4, 11, 2),
(4, 12, 3),
(4, 13, 3),
(4, 14, 2),
(4, 15, 2),
(4, 16, 4),
(4, 17, 2),
(4, 18, 5),
(4, 19, 5),
(4, 20, 5),
(5, 1, 1),
(5, 2, 5),
(5, 3, 1),
(5, 4, 1),
(5, 5, 5),
(5, 6, 1),
(5, 7, 2),
(5, 8, 5),
(5, 9, 4),
(5, 10, 3),
(5, 11, 5),
(5, 12, 1),
(5, 13, 2),
(5, 14, 5),
(5, 15, 5),
(5, 16, 2),
(5, 17, 4),
(5, 18, 5),
(5, 19, 5),
(5, 20, 1),
(28, 1, 1),
(28, 2, 2),
(28, 3, 3),
(28, 4, 4),
(28, 5, 2),
(28, 6, 1),
(28, 7, 2),
(28, 8, 3),
(28, 9, 2),
(28, 10, 1),
(28, 11, 2),
(28, 12, 3),
(28, 13, 1),
(28, 14, 2),
(28, 15, 1),
(28, 16, 1),
(28, 17, 2),
(28, 18, 3),
(28, 19, 4),
(28, 20, 5),
(29, 1, 1),
(29, 2, 2),
(29, 3, 3),
(29, 4, 4),
(29, 5, 2),
(29, 6, 1),
(29, 7, 2),
(29, 8, 3),
(29, 9, 4),
(29, 10, 1),
(29, 11, 2),
(29, 12, 3),
(29, 13, 1),
(29, 14, 2),
(29, 15, 4),
(30, 1, 1),
(30, 2, 2),
(30, 3, 3),
(30, 4, 4),
(30, 5, 2),
(30, 6, 1),
(30, 7, 2),
(30, 8, 3),
(30, 9, 4),
(30, 10, 1),
(30, 11, 2),
(30, 12, 3),
(30, 13, 4),
(30, 14, 2),
(30, 15, 1),
(31, 1, 1),
(31, 2, 2),
(31, 3, 3),
(31, 4, 2),
(31, 5, 1),
(31, 6, 2),
(31, 7, 4),
(31, 8, 3),
(31, 9, 1),
(31, 10, 2),
(31, 11, 3),
(31, 12, 4),
(31, 13, 1),
(31, 14, 2),
(31, 15, 3),
(31, 16, 1),
(31, 17, 2),
(31, 18, 3),
(31, 19, 4),
(31, 20, 5),
(32, 1, 1),
(32, 2, 2),
(32, 3, 3),
(32, 4, 4),
(32, 5, 5),
(32, 6, 2),
(32, 7, 1),
(32, 8, 2),
(32, 9, 3),
(32, 10, 4),
(32, 11, 1),
(32, 12, 2),
(32, 13, 3),
(32, 14, 4),
(32, 15, 2),
(33, 1, 1),
(33, 2, 2),
(33, 3, 3),
(33, 4, 4),
(33, 5, 5),
(33, 6, 2),
(33, 7, 1),
(33, 8, 2),
(33, 9, 3),
(33, 10, 4),
(33, 11, 1),
(33, 12, 2),
(33, 13, 3),
(33, 14, 4),
(33, 15, 2),
(33, 16, 1),
(33, 17, 2),
(33, 18, 3),
(33, 19, 4),
(33, 20, 2),
(34, 1, 2),
(34, 2, 5),
(34, 3, 2),
(34, 4, 4),
(34, 5, 3),
(34, 6, 5),
(34, 7, 2),
(34, 8, 2),
(34, 9, 5),
(34, 10, 5),
(34, 11, 4),
(34, 12, 5),
(34, 13, 5),
(34, 14, 5),
(34, 16, 4),
(34, 17, 5),
(34, 18, 3),
(34, 19, 5),
(34, 20, 3),
(34, 31, 5),
(35, 1, 2),
(35, 2, 5),
(35, 3, 2),
(35, 4, 4),
(35, 5, 3),
(35, 6, 5),
(35, 7, 2),
(35, 8, 2),
(35, 9, 5),
(35, 10, 5),
(35, 11, 4),
(35, 12, 5),
(35, 13, 5),
(35, 14, 5),
(35, 16, 4),
(35, 17, 5),
(35, 18, 3),
(35, 19, 5),
(35, 20, 3),
(35, 29, NULL),
(35, 31, 5),
(36, 1, 2),
(36, 2, 5),
(36, 3, 2),
(36, 4, 4),
(36, 5, 3),
(36, 6, 5),
(36, 7, 2),
(36, 8, 2),
(36, 9, 5),
(36, 10, 5),
(36, 11, 4),
(36, 12, 5),
(36, 13, 5),
(36, 14, 5),
(36, 16, 4),
(36, 17, 5),
(36, 18, 3),
(36, 19, 5),
(36, 20, 3),
(36, 29, NULL),
(36, 31, 5),
(37, 1, 2),
(37, 2, 5),
(37, 3, 2),
(37, 4, 4),
(37, 5, 3),
(37, 6, 5),
(37, 7, 2),
(37, 8, 2),
(37, 9, 5),
(37, 10, 5),
(37, 11, 4),
(37, 12, 5),
(37, 13, 5),
(37, 14, 5),
(37, 16, 4),
(37, 17, 5),
(37, 18, 3),
(37, 19, 5),
(37, 20, 3),
(37, 29, NULL),
(37, 31, 5),
(38, 1, 2),
(38, 2, 5),
(38, 3, 2),
(38, 4, 4),
(38, 5, 3),
(38, 6, 5),
(38, 7, 2),
(38, 8, 2),
(38, 9, 5),
(38, 10, 5),
(38, 11, 4),
(38, 12, 5),
(38, 13, 5),
(38, 14, 5),
(38, 16, 4),
(38, 17, 5),
(38, 18, 3),
(38, 19, 5),
(38, 20, 3),
(38, 29, NULL),
(38, 31, 5),
(39, 1, 2),
(39, 2, 5),
(39, 3, 2),
(39, 4, 4),
(39, 5, 3),
(39, 6, 5),
(39, 7, 2),
(39, 8, 2),
(39, 9, 5),
(39, 10, 5),
(39, 11, 4),
(39, 12, 5),
(39, 13, 5),
(39, 14, 5),
(39, 16, 4),
(39, 17, 5),
(39, 18, 3),
(39, 19, 5),
(39, 20, 3),
(39, 29, NULL),
(39, 31, 5),
(40, 1, 2),
(40, 2, 5),
(40, 3, 2),
(40, 4, 4),
(40, 5, 3),
(40, 6, 5),
(40, 7, 2),
(40, 8, 2),
(40, 9, 5),
(40, 10, 5),
(40, 11, 4),
(40, 12, 5),
(40, 13, 5),
(40, 14, 5),
(40, 16, 4),
(40, 17, 5),
(40, 18, 3),
(40, 19, 5),
(40, 20, 3),
(40, 29, NULL),
(40, 31, 5),
(41, 1, 2),
(41, 2, 5),
(41, 3, 2),
(41, 4, 4),
(41, 5, 3),
(41, 6, 5),
(41, 7, 2),
(41, 8, 2),
(41, 9, 5),
(41, 10, 5),
(41, 11, 4),
(41, 12, 5),
(41, 13, 5),
(41, 14, 5),
(41, 16, 4),
(41, 17, 5),
(41, 18, 3),
(41, 19, 5),
(41, 20, 3),
(41, 29, NULL),
(41, 31, 5),
(42, 1, 2),
(42, 2, 5),
(42, 3, 2),
(42, 4, 4),
(42, 5, 3),
(42, 6, 5),
(42, 7, 2),
(42, 8, 2),
(42, 9, 5),
(42, 10, 5),
(42, 11, 4),
(42, 12, 5),
(42, 13, 5),
(42, 14, 5),
(42, 16, 4),
(42, 17, 5),
(42, 18, 3),
(42, 19, 5),
(42, 20, 3),
(42, 29, NULL),
(42, 31, 5),
(43, 1, 2),
(43, 2, 5),
(43, 3, 2),
(43, 4, 4),
(43, 5, 3),
(43, 6, 5),
(43, 7, 2),
(43, 8, 2),
(43, 9, 5),
(43, 10, 5),
(43, 11, 4),
(43, 12, 5),
(43, 13, 5),
(43, 14, 5),
(43, 16, 4),
(43, 17, 5),
(43, 18, 3),
(43, 19, 5),
(43, 20, 3),
(43, 29, NULL),
(43, 31, 5),
(44, 1, 2),
(44, 2, 5),
(44, 3, 2),
(44, 4, 4),
(44, 5, 3),
(44, 6, 5),
(44, 7, 2),
(44, 8, 2),
(44, 9, 5),
(44, 10, 5),
(44, 11, 4),
(44, 12, 5),
(44, 13, 5),
(44, 14, 5),
(44, 16, 4),
(44, 17, 5),
(44, 18, 3),
(44, 19, 5),
(44, 20, 3),
(44, 29, NULL),
(44, 31, 5),
(45, 1, 2),
(45, 2, 5),
(45, 3, 2),
(45, 4, 4),
(45, 5, 3),
(45, 6, 5),
(45, 7, 2),
(45, 8, 2),
(45, 9, 5),
(45, 10, 5),
(45, 11, 4),
(45, 12, 5),
(45, 13, 5),
(45, 14, 5),
(45, 16, 4),
(45, 17, 5),
(45, 18, 3),
(45, 19, 5),
(45, 20, 3),
(45, 29, NULL),
(45, 31, 5),
(46, 1, 2),
(46, 2, 5),
(46, 3, 2),
(46, 4, 4),
(46, 5, 3),
(46, 6, 5),
(46, 7, 2),
(46, 8, 2),
(46, 9, 5),
(46, 10, 5),
(46, 11, 4),
(46, 12, 5),
(46, 13, 5),
(46, 14, 5),
(46, 16, 4),
(46, 17, 5),
(46, 18, 3),
(46, 19, 5),
(46, 20, 3),
(46, 29, NULL),
(46, 31, 5),
(47, 1, 2),
(47, 2, 5),
(47, 3, 2),
(47, 4, 4),
(47, 5, 3),
(47, 6, 5),
(47, 7, 2),
(47, 8, 2),
(47, 9, 5),
(47, 10, 5),
(47, 11, 4),
(47, 12, 5),
(47, 13, 5),
(47, 14, 5),
(47, 16, 4),
(47, 17, 5),
(47, 18, 3),
(47, 19, 5),
(47, 20, 3),
(47, 29, NULL),
(47, 31, 5),
(48, 1, 2),
(48, 2, 5),
(48, 3, 2),
(48, 4, 4),
(48, 5, 3),
(48, 6, 5),
(48, 7, 2),
(48, 8, 2),
(48, 9, 5),
(48, 10, 5),
(48, 11, 4),
(48, 12, 5),
(48, 13, 5),
(48, 14, 5),
(48, 16, 4),
(48, 17, 5),
(48, 18, 3),
(48, 19, 5),
(48, 20, 3),
(48, 29, NULL),
(48, 31, 5),
(49, 1, 2),
(49, 2, 5),
(49, 3, 2),
(49, 4, 4),
(49, 5, 3),
(49, 6, 5),
(49, 7, 2),
(49, 8, 2),
(49, 9, 5),
(49, 10, 5),
(49, 11, 4),
(49, 12, 5),
(49, 13, 5),
(49, 14, 5),
(49, 16, 4),
(49, 17, 5),
(49, 18, 3),
(49, 19, 5),
(49, 20, 3),
(49, 29, NULL),
(49, 31, 5),
(50, 1, 2),
(50, 2, 5),
(50, 3, 2),
(50, 4, 4),
(50, 5, 3),
(50, 6, 5),
(50, 7, 2),
(50, 8, 2),
(50, 9, 5),
(50, 10, 5),
(50, 11, 4),
(50, 12, 5),
(50, 13, 5),
(50, 14, 5),
(50, 16, 4),
(50, 17, 5),
(50, 18, 3),
(50, 19, 5),
(50, 20, 3),
(50, 29, NULL),
(50, 31, 5),
(51, 1, 2),
(51, 2, 5),
(51, 3, 2),
(51, 4, 4),
(51, 5, 3),
(51, 6, 5),
(51, 7, 2),
(51, 8, 2),
(51, 9, 5),
(51, 10, 5),
(51, 11, 4),
(51, 12, 5),
(51, 13, 5),
(51, 14, 5),
(51, 16, 4),
(51, 17, 5),
(51, 18, 3),
(51, 19, 5),
(51, 20, 3),
(51, 29, NULL),
(51, 31, 5),
(52, 1, 2),
(52, 2, 5),
(52, 3, 2),
(52, 4, 4),
(52, 5, 3),
(52, 6, 5),
(52, 7, 2),
(52, 8, 2),
(52, 9, 5),
(52, 10, 5),
(52, 11, 4),
(52, 12, 5),
(52, 13, 5),
(52, 14, 5),
(52, 16, 4),
(52, 17, 5),
(52, 18, 3),
(52, 19, 5),
(52, 20, 3),
(52, 29, NULL),
(52, 31, 5),
(53, 1, 2),
(53, 2, 5),
(53, 3, 2),
(53, 4, 4),
(53, 5, 3),
(53, 6, 5),
(53, 7, 2),
(53, 8, 2),
(53, 9, 5),
(53, 10, 5),
(53, 11, 4),
(53, 12, 5),
(53, 13, 5),
(53, 14, 5),
(53, 16, 4),
(53, 17, 5),
(53, 18, 3),
(53, 19, 5),
(53, 20, 3),
(53, 29, NULL),
(53, 31, 5),
(54, 1, 2),
(54, 2, 5),
(54, 3, 2),
(54, 4, 4),
(54, 5, 3),
(54, 6, 5),
(54, 7, 2),
(54, 8, 2),
(54, 9, 5),
(54, 10, 5),
(54, 11, 4),
(54, 12, 5),
(54, 13, 5),
(54, 14, 5),
(54, 16, 4),
(54, 17, 5),
(54, 18, 3),
(54, 19, 5),
(54, 20, 3),
(54, 29, NULL),
(54, 31, 5),
(55, 1, 2),
(55, 2, 5),
(55, 3, 2),
(55, 4, 4),
(55, 5, 3),
(55, 6, 5),
(55, 7, 2),
(55, 8, 2),
(55, 9, 5),
(55, 10, 5),
(55, 11, 4),
(55, 12, 5),
(55, 13, 5),
(55, 14, 5),
(55, 16, 4),
(55, 17, 5),
(55, 18, 3),
(55, 19, 5),
(55, 20, 3),
(55, 29, NULL),
(55, 31, 5),
(56, 1, 2),
(56, 2, 5),
(56, 3, 2),
(56, 4, 4),
(56, 5, 3),
(56, 6, 5),
(56, 7, 2),
(56, 8, 2),
(56, 9, 5),
(56, 10, 5),
(56, 11, 4),
(56, 12, 5),
(56, 13, 5),
(56, 14, 5),
(56, 16, 4),
(56, 17, 5),
(56, 18, 3),
(56, 19, 5),
(56, 20, 3),
(56, 29, NULL),
(56, 31, 5),
(57, 1, 2),
(57, 2, 5),
(57, 3, 2),
(57, 4, 4),
(57, 5, 3),
(57, 6, 5),
(57, 7, 2),
(57, 8, 2),
(57, 9, 5),
(57, 10, 5),
(57, 11, 4),
(57, 12, 5),
(57, 13, 5),
(57, 14, 5),
(57, 16, 4),
(57, 17, 5),
(57, 18, 3),
(57, 19, 5),
(57, 20, 3),
(57, 29, NULL),
(57, 31, 5),
(58, 1, 2),
(58, 2, 5),
(58, 3, 2),
(58, 4, 4),
(58, 5, 3),
(58, 6, 5),
(58, 7, 2),
(58, 8, 2),
(58, 9, 5),
(58, 10, 5),
(58, 11, 4),
(58, 12, 5),
(58, 13, 5),
(58, 14, 5),
(58, 16, 4),
(58, 17, 5),
(58, 18, 3),
(58, 19, 5),
(58, 20, 3),
(58, 29, NULL),
(58, 31, 5),
(59, 1, 2),
(59, 2, 5),
(59, 3, 2),
(59, 4, 4),
(59, 5, 3),
(59, 6, 5),
(59, 7, 2),
(59, 8, 2),
(59, 9, 5),
(59, 10, 5),
(59, 11, 4),
(59, 12, 5),
(59, 13, 5),
(59, 14, 5),
(59, 16, 4),
(59, 17, 5),
(59, 18, 3),
(59, 19, 5),
(59, 20, 3),
(59, 29, NULL),
(59, 31, 5),
(60, 1, 2),
(60, 2, 5),
(60, 3, 2),
(60, 4, 4),
(60, 5, 3),
(60, 6, 5),
(60, 7, 2),
(60, 8, 2),
(60, 9, 5),
(60, 10, 5),
(60, 11, 4),
(60, 12, 5),
(60, 13, 5),
(60, 14, 5),
(60, 16, 4),
(60, 17, 5),
(60, 18, 3),
(60, 19, 5),
(60, 20, 3),
(60, 29, NULL),
(60, 31, 5),
(61, 1, 2),
(61, 2, 5),
(61, 3, 2),
(61, 4, 4),
(61, 5, 3),
(61, 6, 5),
(61, 7, 2),
(61, 8, 2),
(61, 9, 5),
(61, 10, 5),
(61, 11, 4),
(61, 12, 5),
(61, 13, 5),
(61, 14, 5),
(61, 16, 4),
(61, 17, 5),
(61, 18, 3),
(61, 19, 5),
(61, 20, 3),
(61, 29, NULL),
(61, 31, 5),
(62, 1, 2),
(62, 2, 5),
(62, 3, 2),
(62, 4, 4),
(62, 5, 3),
(62, 6, 5),
(62, 7, 2),
(62, 8, 2),
(62, 9, 5),
(62, 10, 5),
(62, 11, 4),
(62, 12, 5),
(62, 13, 5),
(62, 14, 5),
(62, 16, 4),
(62, 17, 5),
(62, 18, 3),
(62, 19, 5),
(62, 20, 3),
(62, 29, NULL),
(62, 31, 5),
(63, 1, 2),
(63, 2, 5),
(63, 3, 2),
(63, 4, 4),
(63, 5, 3),
(63, 6, 5),
(63, 7, 2),
(63, 8, 2),
(63, 9, 5),
(63, 10, 5),
(63, 11, 4),
(63, 12, 5),
(63, 13, 5),
(63, 14, 5),
(63, 16, 4),
(63, 17, 5),
(63, 18, 3),
(63, 19, 5),
(63, 20, 3),
(63, 29, NULL),
(63, 31, 5),
(64, 1, 2),
(64, 2, 5),
(64, 3, 2),
(64, 4, 4),
(64, 5, 3),
(64, 6, 5),
(64, 7, 2),
(64, 8, 2),
(64, 9, 5),
(64, 10, 5),
(64, 11, 4),
(64, 12, 5),
(64, 13, 5),
(64, 14, 5),
(64, 16, 4),
(64, 17, 5),
(64, 18, 3),
(64, 19, 5),
(64, 20, 3),
(64, 29, NULL),
(64, 31, 5),
(65, 1, 2),
(65, 2, 5),
(65, 3, 2),
(65, 4, 4),
(65, 5, 3),
(65, 6, 5),
(65, 7, 2),
(65, 8, 2),
(65, 9, 5),
(65, 10, 5),
(65, 11, 4),
(65, 12, 5),
(65, 13, 5),
(65, 14, 5),
(65, 16, 4),
(65, 17, 5),
(65, 18, 3),
(65, 19, 5),
(65, 20, 3),
(65, 29, NULL),
(65, 31, 5),
(66, 1, 2),
(66, 2, 5),
(66, 3, 2),
(66, 4, 4),
(66, 5, 3),
(66, 6, 5),
(66, 7, 2),
(66, 8, 2),
(66, 9, 5),
(66, 10, 5),
(66, 11, 4),
(66, 12, 5),
(66, 13, 5),
(66, 14, 5),
(66, 16, 4),
(66, 17, 5),
(66, 18, 3),
(66, 19, 5),
(66, 20, 3),
(66, 29, NULL),
(66, 31, 5),
(67, 1, 2),
(67, 2, 5),
(67, 3, 2),
(67, 4, 4),
(67, 5, 3),
(67, 6, 5),
(67, 7, 2),
(67, 8, 2),
(67, 9, 5),
(67, 10, 5),
(67, 11, 4),
(67, 12, 5),
(67, 13, 5),
(67, 14, 5),
(67, 16, 4),
(67, 17, 5),
(67, 18, 3),
(67, 19, 5),
(67, 20, 3),
(67, 29, NULL),
(67, 31, 5),
(68, 1, 2),
(68, 2, 5),
(68, 3, 2),
(68, 4, 4),
(68, 5, 3),
(68, 6, 5),
(68, 7, 2),
(68, 8, 2),
(68, 9, 5),
(68, 10, 5),
(68, 11, 4),
(68, 12, 5),
(68, 13, 5),
(68, 14, 5),
(68, 16, 4),
(68, 17, 5),
(68, 18, 3),
(68, 19, 5),
(68, 20, 3),
(68, 29, NULL),
(68, 31, 5),
(69, 22, 4),
(69, 23, 3),
(69, 24, 2),
(69, 25, 4),
(69, 26, 4),
(69, 27, 3),
(69, 28, 4),
(70, 21, 1),
(70, 22, 4),
(70, 23, 3),
(70, 24, 2),
(70, 25, 4),
(70, 26, 4),
(70, 27, 3),
(70, 28, 4),
(71, 21, 1),
(71, 22, 4),
(71, 23, 3),
(71, 24, 2),
(71, 25, 4),
(71, 26, 4),
(71, 27, 3),
(71, 28, 4),
(72, 21, 1),
(72, 22, 4),
(72, 23, 3),
(72, 24, 2),
(72, 25, 4),
(72, 26, 4),
(72, 27, 3),
(72, 28, 4),
(73, 21, 1),
(73, 22, 4),
(73, 23, 3),
(73, 24, 2),
(73, 25, 4),
(73, 26, 4),
(73, 27, 3),
(73, 28, 4),
(74, 21, 1),
(74, 22, 4),
(74, 23, 3),
(74, 24, 2),
(74, 25, 4),
(74, 26, 4),
(74, 27, 3),
(74, 28, 4),
(75, 21, 1),
(75, 22, 4),
(75, 23, 3),
(75, 24, 2),
(75, 25, 4),
(75, 26, 4),
(75, 27, 3),
(75, 28, 4),
(76, 1, 2),
(76, 2, 5),
(76, 3, 2),
(76, 4, 4),
(76, 5, 3),
(76, 6, 5),
(76, 7, 2),
(76, 8, 2),
(76, 9, 5),
(76, 10, 5),
(76, 11, 4),
(76, 12, 5),
(76, 13, 5),
(76, 14, 5),
(76, 16, 4),
(76, 17, 5),
(76, 18, 3),
(76, 19, 5),
(76, 20, 3),
(76, 29, NULL),
(76, 31, 5),
(77, 1, 2),
(77, 2, 5),
(77, 3, 2),
(77, 4, 4),
(77, 5, 3),
(77, 6, 5),
(77, 7, 2),
(77, 8, 2),
(77, 9, 5),
(77, 10, 5),
(77, 11, 4),
(77, 12, 5),
(77, 13, 5),
(77, 14, 5),
(77, 16, 4),
(77, 17, 5),
(77, 18, 3),
(77, 19, 5),
(77, 20, 3),
(77, 31, 5),
(80, 1, 2),
(80, 2, 5),
(80, 3, 2),
(80, 4, 4),
(80, 5, 3),
(80, 6, 5),
(80, 7, 2),
(80, 8, 2),
(80, 9, 5),
(80, 10, 5),
(80, 11, 4),
(80, 12, 5),
(80, 13, 5),
(80, 14, 5),
(80, 16, 4),
(80, 17, 5),
(80, 18, 3),
(80, 19, 5),
(80, 20, 3),
(80, 31, 5),
(81, 1, 2),
(81, 2, 5),
(81, 3, 2),
(81, 4, 4),
(81, 5, 3),
(81, 6, 5),
(81, 7, 2),
(81, 8, 2),
(81, 9, 5),
(81, 10, 5),
(81, 11, 4),
(81, 12, 5),
(81, 13, 5),
(81, 14, 5),
(81, 16, 4),
(81, 17, 5),
(81, 18, 3),
(81, 19, 5),
(81, 20, 3),
(81, 31, 5),
(82, 15, 1),
(82, 21, 1),
(82, 22, 4),
(82, 23, 3),
(82, 24, 2),
(82, 25, 4),
(82, 26, 4),
(82, 27, 3),
(82, 28, 4),
(83, 1, 2),
(83, 2, 5),
(83, 3, 2),
(83, 4, 4),
(83, 5, 3),
(83, 6, 5),
(83, 7, 2),
(83, 8, 2),
(83, 9, 5),
(83, 10, 5),
(83, 11, 4),
(83, 12, 5),
(83, 13, 5),
(83, 14, 5),
(83, 16, 4),
(83, 17, 5),
(83, 18, 3),
(83, 19, 5),
(83, 20, 3),
(84, 1, 2),
(84, 2, 5),
(84, 3, 2),
(84, 4, 4),
(84, 5, 3),
(84, 6, 5),
(84, 7, 2),
(84, 8, 2),
(84, 9, 5),
(84, 10, 5),
(84, 11, 4),
(84, 12, 5),
(84, 13, 5),
(84, 14, 5),
(84, 16, 4),
(84, 17, 5),
(84, 18, 3),
(84, 19, 5),
(84, 20, 3),
(85, 1, 2),
(85, 2, 5),
(85, 3, 2),
(85, 4, 4),
(85, 5, 3),
(85, 6, 5),
(85, 7, 2),
(85, 8, 2),
(85, 9, 5),
(85, 10, 5),
(85, 11, 4),
(85, 12, 5),
(85, 13, 5),
(85, 14, 5),
(85, 16, 4),
(85, 17, 5),
(85, 18, 3),
(85, 19, 5),
(85, 20, 3),
(86, 1, 2),
(86, 2, 5),
(86, 3, 2),
(86, 4, 4),
(86, 5, 3),
(86, 6, 5),
(86, 7, 2),
(86, 8, 2),
(86, 9, 5),
(86, 10, 5),
(86, 11, 4),
(86, 12, 5),
(86, 13, 5),
(86, 14, 5),
(86, 16, 4),
(86, 17, 5),
(86, 18, 3),
(86, 19, 5),
(86, 20, 3),
(87, 1, 2),
(87, 2, 5),
(87, 3, 2),
(87, 4, 4),
(87, 5, 3),
(87, 6, 5),
(87, 7, 2),
(87, 8, 2),
(87, 9, 5),
(87, 10, 5),
(87, 11, 4),
(87, 12, 5),
(87, 13, 5),
(87, 14, 5),
(87, 16, 4),
(87, 17, 5),
(87, 18, 3),
(87, 19, 5),
(87, 20, 3),
(88, 1, 2),
(88, 2, 5),
(88, 3, 2),
(88, 4, 4),
(88, 5, 3),
(88, 6, 5),
(88, 7, 2),
(88, 8, 2),
(88, 9, 5),
(88, 10, 5),
(88, 11, 4),
(88, 12, 5),
(88, 13, 5),
(88, 14, 5),
(88, 16, 4),
(88, 17, 5),
(88, 18, 3),
(88, 19, 5),
(88, 20, 3),
(89, 1, 2),
(89, 2, 5),
(89, 3, 2),
(89, 4, 4),
(89, 5, 3),
(89, 6, 5),
(89, 7, 2),
(89, 8, 2),
(89, 9, 5),
(89, 10, 5),
(89, 11, 4),
(89, 12, 5),
(89, 13, 5),
(89, 14, 5),
(89, 16, 4),
(89, 17, 5),
(89, 18, 3),
(89, 19, 5),
(89, 20, 3),
(90, 1, 2),
(90, 2, 5),
(90, 3, 2),
(90, 4, 4),
(90, 5, 3),
(90, 6, 5),
(90, 7, 2),
(90, 8, 2),
(90, 9, 5),
(90, 10, 5),
(90, 11, 4),
(90, 12, 5),
(90, 13, 5),
(90, 14, 5),
(90, 16, 4),
(90, 17, 5),
(90, 18, 3),
(90, 19, 5),
(90, 20, 3),
(91, 1, 2),
(91, 2, 5),
(91, 3, 2),
(91, 4, 4),
(91, 5, 3),
(91, 6, 5),
(91, 7, 2),
(91, 8, 2),
(91, 9, 5),
(91, 10, 5),
(91, 11, 4),
(91, 12, 5),
(91, 13, 5),
(91, 14, 5),
(91, 16, 4),
(91, 17, 5),
(91, 18, 3),
(91, 19, 5),
(91, 20, 3),
(92, 1, 2),
(92, 2, 5),
(92, 3, 2),
(92, 4, 4),
(92, 5, 3),
(92, 6, 5),
(92, 7, 2),
(92, 8, 2),
(92, 9, 5),
(92, 10, 5),
(92, 11, 4),
(92, 12, 5),
(92, 13, 5),
(92, 14, 5),
(92, 16, 4),
(92, 17, 5),
(92, 18, 3),
(92, 19, 5),
(92, 20, 3),
(93, 1, 2),
(93, 2, 5),
(93, 3, 2),
(93, 4, 4),
(93, 5, 3),
(93, 6, 5),
(93, 7, 2),
(93, 8, 2),
(93, 9, 5),
(93, 10, 5),
(93, 11, 4),
(93, 12, 5),
(93, 13, 5),
(93, 14, 5),
(93, 16, 4),
(93, 17, 5),
(93, 18, 3),
(93, 19, 5),
(93, 20, 3),
(94, 1, 2),
(94, 2, 5),
(94, 3, 2),
(94, 4, 4),
(94, 5, 3),
(94, 6, 5),
(94, 7, 2),
(94, 8, 2),
(94, 9, 5),
(94, 10, 5),
(94, 11, 4),
(94, 12, 5),
(94, 13, 5),
(94, 14, 5),
(94, 16, 4),
(94, 17, 5),
(94, 18, 3),
(94, 19, 5),
(94, 20, 3),
(95, 1, 2),
(95, 2, 5),
(95, 3, 2),
(95, 4, 4),
(95, 5, 3),
(95, 6, 5),
(95, 7, 2),
(95, 8, 2),
(95, 9, 5),
(95, 10, 5),
(95, 11, 4),
(95, 12, 5),
(95, 13, 5),
(95, 14, 5),
(95, 16, 4),
(95, 17, 5),
(95, 18, 3),
(95, 19, 5),
(95, 20, 3),
(96, 1, 2),
(96, 2, 5),
(96, 3, 2),
(96, 4, 4),
(96, 5, 3),
(96, 6, 5),
(96, 7, 2),
(96, 8, 2),
(96, 9, 5),
(96, 10, 5),
(96, 11, 4),
(96, 12, 5),
(96, 13, 5),
(96, 14, 5),
(96, 16, 4),
(96, 17, 5),
(96, 18, 3),
(96, 19, 5),
(96, 20, 3),
(97, 1, 2),
(97, 2, 5),
(97, 3, 2),
(97, 4, 4),
(97, 5, 3),
(97, 6, 5),
(97, 7, 2),
(97, 8, 2),
(97, 9, 5),
(97, 10, 5),
(97, 11, 4),
(97, 12, 5),
(97, 13, 5),
(97, 14, 5),
(97, 16, 4),
(97, 17, 5),
(97, 18, 3),
(97, 19, 5),
(97, 20, 3),
(98, 1, 2),
(98, 2, 5),
(98, 3, 2),
(98, 4, 4),
(98, 5, 3),
(98, 6, 5),
(98, 7, 2),
(98, 8, 2),
(98, 9, 5),
(98, 10, 5),
(98, 11, 4),
(98, 12, 5),
(98, 13, 5),
(98, 14, 5),
(98, 16, 4),
(98, 17, 5),
(98, 18, 3),
(98, 19, 5),
(98, 20, 3),
(99, 1, 2),
(99, 2, 5),
(99, 3, 2),
(99, 4, 4),
(99, 5, 3),
(99, 6, 5),
(99, 7, 2),
(99, 8, 2),
(99, 9, 5),
(99, 10, 5),
(99, 11, 4),
(99, 12, 5),
(99, 13, 5),
(99, 14, 5),
(99, 16, 4),
(99, 17, 5),
(99, 18, 3),
(99, 19, 5),
(99, 20, 3),
(100, 1, 2),
(100, 2, 5),
(100, 3, 2),
(100, 4, 4),
(100, 5, 3),
(100, 6, 5),
(100, 7, 2),
(100, 8, 2),
(100, 9, 5),
(100, 10, 5),
(100, 11, 4),
(100, 12, 5),
(100, 13, 5),
(100, 14, 5),
(100, 16, 4),
(100, 17, 5),
(100, 18, 3),
(100, 19, 5),
(100, 20, 3),
(101, 1, 2),
(101, 2, 5),
(101, 3, 2),
(101, 4, 4),
(101, 5, 3),
(101, 6, 5),
(101, 7, 2),
(101, 8, 2),
(101, 9, 5),
(101, 10, 5),
(101, 11, 4),
(101, 12, 5),
(101, 13, 5),
(101, 14, 5),
(101, 16, 4),
(101, 17, 5),
(101, 18, 3),
(101, 19, 5),
(101, 20, 3),
(102, 1, 2),
(102, 2, 5),
(102, 3, 2),
(102, 4, 4),
(102, 5, 3),
(102, 6, 5),
(102, 7, 2),
(102, 8, 2),
(102, 9, 5),
(102, 10, 5),
(102, 11, 4),
(102, 12, 5),
(102, 13, 5),
(102, 14, 5),
(102, 16, 4),
(102, 17, 5),
(102, 18, 3),
(102, 19, 5),
(102, 20, 3),
(103, 1, 2),
(103, 2, 5),
(103, 3, 2),
(103, 4, 4),
(103, 5, 3),
(103, 6, 5),
(103, 7, 2),
(103, 8, 2),
(103, 9, 5),
(103, 10, 5),
(103, 11, 4),
(103, 12, 5),
(103, 13, 5),
(103, 14, 5),
(103, 16, 4),
(103, 17, 5),
(103, 18, 3),
(103, 19, 5),
(103, 20, 3),
(104, 1, 2),
(104, 2, 5),
(104, 3, 2),
(104, 4, 4),
(104, 5, 3),
(104, 6, 5),
(104, 7, 2),
(104, 8, 2),
(104, 9, 5),
(104, 10, 5),
(104, 11, 4),
(104, 12, 5),
(104, 13, 5),
(104, 14, 5),
(104, 16, 4),
(104, 17, 5),
(104, 18, 3),
(104, 19, 5),
(104, 20, 3),
(105, 1, 2),
(105, 2, 5),
(105, 3, 2),
(105, 4, 4),
(105, 5, 3),
(105, 6, 5),
(105, 7, 2),
(105, 8, 2),
(105, 9, 5),
(105, 10, 5),
(105, 11, 4),
(105, 12, 5),
(105, 13, 5),
(105, 14, 5),
(105, 16, 4),
(105, 17, 5),
(105, 18, 3),
(105, 19, 5),
(105, 20, 3),
(106, 1, 2),
(106, 2, 5),
(106, 3, 2),
(106, 4, 4),
(106, 5, 3),
(106, 6, 5),
(106, 7, 2),
(106, 8, 2),
(106, 9, 5),
(106, 10, 5),
(106, 11, 4),
(106, 12, 5),
(106, 13, 5),
(106, 14, 5),
(106, 16, 4),
(106, 17, 5),
(106, 18, 3),
(106, 19, 5),
(106, 20, 3),
(107, 1, 2),
(107, 2, 5),
(107, 3, 2),
(107, 4, 4),
(107, 5, 3),
(107, 6, 5),
(107, 7, 2),
(107, 8, 2),
(107, 9, 5),
(107, 10, 5),
(107, 11, 4),
(107, 12, 5),
(107, 13, 5),
(107, 14, 5),
(107, 16, 4),
(107, 17, 5),
(107, 18, 3),
(107, 19, 5),
(107, 20, 3),
(108, 1, 2),
(108, 2, 5),
(108, 3, 2),
(108, 4, 4),
(108, 5, 3),
(108, 6, 5),
(108, 7, 2),
(108, 8, 2),
(108, 9, 5),
(108, 10, 5),
(108, 11, 4),
(108, 12, 5),
(108, 13, 5),
(108, 14, 5),
(108, 16, 4),
(108, 17, 5),
(108, 18, 3),
(108, 19, 5),
(108, 20, 3),
(109, 1, 2),
(109, 2, 5),
(109, 3, 2),
(109, 4, 4),
(109, 5, 3),
(109, 6, 5),
(109, 7, 2),
(109, 8, 2),
(109, 9, 5),
(109, 10, 5),
(109, 11, 4),
(109, 12, 5),
(109, 13, 5),
(109, 14, 5),
(109, 16, 4),
(109, 17, 5),
(109, 18, 3),
(109, 19, 5),
(109, 20, 3),
(110, 15, 1),
(110, 21, 1),
(110, 22, 4),
(110, 23, 3),
(110, 24, 2),
(110, 25, 4),
(110, 26, 4),
(110, 27, 3),
(110, 28, 4),
(111, 15, 1),
(111, 21, 1),
(111, 22, 4),
(111, 23, 3),
(111, 24, 2),
(111, 25, 4),
(111, 26, 4),
(111, 27, 3),
(111, 28, 4),
(112, 15, 1),
(112, 21, 1),
(112, 22, 4),
(112, 23, 3),
(112, 24, 2),
(112, 25, 4),
(112, 26, 4),
(112, 27, 3),
(112, 28, 4),
(113, 15, 1),
(113, 21, 1),
(113, 22, 4),
(113, 23, 3),
(113, 24, 2),
(113, 25, 4),
(113, 26, 4),
(113, 27, 3),
(113, 28, 4),
(114, 15, 1),
(114, 21, 1),
(114, 22, 4),
(114, 23, 3),
(114, 24, 2),
(114, 25, 4),
(114, 26, 4),
(114, 27, 3),
(114, 28, 4),
(115, 15, 1),
(115, 21, 1),
(115, 22, 4),
(115, 23, 3),
(115, 24, 2),
(115, 25, 4),
(115, 26, 4),
(115, 27, 3),
(115, 28, 4),
(116, 15, 1),
(116, 21, 1),
(116, 22, 4),
(116, 23, 3),
(116, 24, 2),
(116, 25, 4),
(116, 26, 4),
(116, 27, 3),
(116, 28, 4),
(117, 15, 1),
(117, 21, 1),
(117, 22, 4),
(117, 23, 3),
(117, 24, 2),
(117, 25, 4),
(117, 26, 4),
(117, 27, 3),
(117, 28, 4),
(118, 1, 2),
(118, 2, 5),
(118, 3, 2),
(118, 4, 4),
(118, 5, 3),
(118, 6, 5),
(118, 7, 2),
(118, 8, 2),
(118, 9, 5),
(118, 10, 5),
(118, 11, 4),
(118, 12, 5),
(118, 13, 5),
(118, 14, 5),
(118, 16, 4),
(118, 17, 5),
(118, 18, 3),
(118, 19, 5),
(118, 20, 3),
(119, 1, 2),
(119, 2, 5),
(119, 3, 2),
(119, 4, 4),
(119, 5, 3),
(119, 6, 5),
(119, 7, 2),
(119, 8, 2),
(119, 9, 5),
(119, 10, 5),
(119, 11, 4),
(119, 12, 5),
(119, 13, 5),
(119, 14, 5),
(119, 16, 4),
(119, 17, 5),
(119, 18, 3),
(119, 19, 5),
(119, 20, 3),
(120, 1, 2),
(120, 2, 5),
(120, 3, 2),
(120, 4, 4),
(120, 5, 3),
(120, 6, 5),
(120, 7, 2),
(120, 8, 2),
(120, 9, 5),
(120, 10, 5),
(120, 11, 4),
(120, 12, 5),
(120, 13, 5),
(120, 14, 5),
(120, 16, 4),
(120, 17, 5),
(120, 18, 3),
(120, 19, 5),
(120, 20, 3),
(121, 15, 1),
(121, 21, 1),
(121, 22, 4),
(121, 23, 3),
(121, 24, 2),
(121, 25, 4),
(121, 26, 4),
(121, 27, 3),
(121, 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `code` varchar(8) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `theoritical_hours` int(10) DEFAULT NULL,
  `practical_hours` int(11) DEFAULT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`code`, `name`, `description`, `theoritical_hours`, `practical_hours`, `program_id`) VALUES
('comp 102', ' Introduction to Computers', 'This course provides the fundamental concepts of computers including types of hardware and software, Internet and the web, web browsers and servers, HTML and web pages, HTML basics, formatting web pages, inserting hypertexts, tables and multimedia inside a web page, history of the internet, how the internet works, domain names, internet protocols, differences between the web and the internet, dynamic web pages, JavaScript basics, web pages that compute, basic internet security, meaning of encryption, securing a computer, user accounts and passwords, anti-virus software. ', 2, 2, 3),
('comp 104', ' Computer Programming (1) ', 'This course provides the fundamental concepts and skills of computer programming using a high-level computer programming language. There is an emphasis on both the principles and practice of computer programming.  Students learn how to design, write, and debug computer programs. No knowledge of programming is assumed. Topics should include data types, operators, conditional statements, loop statements, arrays, structures, functions and an overview of pointers. Throughout the semester, problem solving skills will be stressed and applied to solving computing problems. Weekly laboratory experiments will provide hands-on experience in topics covered in this course. ', 3, 2, 3),
('comp 106', ' Logic Design ', 'This course provides a detailed knowledge of the basics to understand and construct elementary digital circuits. Topics typically include basic definitions, digital systems, binary logic (storage, registers, logic gates, and truth tables), theorems and properties of a Boolean algebra, Boolean functions, canonical and standard forms. K-Map methods (2, 3, and 4 variables), POS and SOP simplifications, Don\'t-Care conditions, NAND, NOR, and Exclusive-OR implementations, combinatorial circuits design procedure, binary adder/subtractor, binary multiplier, decoders, encoders, multiplexers and demultiplexers. ', 3, 2, 3),
('comp 108', ' Computer Science for Mathematics ', 'This course provides an introduction to computers and how to solve mathematical problems using computers. The course begins with the fundamentals concepts of programming and then, shows how real-world problems can be solved computationally using one of a recent computer programming languages such as C++, some Mathematical packages (Maple or Mathematica) for symbolic computing, or the programming  language Matlab for numerical computing. ', 3, 2, 7),
('comp 206', ' Web Programming   ', 'This course provides a foundation to implement a full-featured Web site on the Internet, and designing and developing dynamic web pages that interacts with a database. Topics  include a comprehensive introduction to the fundamental languages of the web today (such as HTML5, CSS3 and powerful JavaScript libraries), an introduction to web programming technologies (including one or more of: Active Server Pages (ASP), PHP, Asynchronous JavaScript and XML (AJAX)) and Web databases to enhance the performance and functionality of a website. ', 3, 2, 3),
('comp 207', ' Database Systems ', 'This course provides an introduction to design and implement database systems. Topics include designing, constructing, managing and implementing database systems and their applications, entity–relationships models (ER/EER diagrams), the relational data model, the operations of the relational algebra, relational calculus, relational database design using ER and EER-to-relational mapping, functional independencies, normal forms, structured query language (SQL) and overview of current web database warehouses and languages. \r\n ', 3, 2, 3),
('comp 208', ' Automata Theory', 'The course provides foundations of theory of automata. Topics include regular languages, deterministic finite automata (DFA), nondeterministic finite automata (NFA),  NFA-ε machines, equivalence of DFA and NFA machines, equivalence of DFA and NFA-ε Machines, regular expressions, equivalence of regular expressions and finite state machines, closure properties of regular languages, pumping lemma for regular languages, proving nonregularity, finite state transducer (Moore -Mealy), decision problems for DFAs and regular languages, and pushdown automaton. ', 3, 2, 3),
('comp 212', ' Advanced Computer Programming ', 'This course is equivalent to COMP 205 (for double major computer science). It is an extension of course COMP 104. It aims to improve programming skills by using some fundamental topics not covered by COMP 104 and by using the object-oriented approach. \r\n Topics include pointers, streams and files, abstract data types, classes, objects, encapsulation, \r\nclass (static) variables and functions, instance variables and functions, access modifiers (private, public, protected), object initialization using constructors, destructors, array of objects, composition, inheritance, multiple inheritance, method overriding, polymorphism, abstract classes, and unified Modelling Language.', 3, 2, 3),
('comp 213', 'MATLAB for Geophysics   ', 'This course provides an introduction to solve problems using MATLAB.   The course teaches how real-world problems in Geophysics can be solved computationally using  a MATLAB. Topics include simple operations and working with variables, matrices,  access matrix elements, matrix operations, relational and logical operators, plotting in two-dimensions, plotting in three-dimensions, interpolation, MATLAB functions,  input / output and data management. ', 1, 3, 8),
('comp 302', ' Algorithmic Combinatorics ', 'The course explains principles for counting, and provides algorithms for listing basic combinatorial objects. Topics include: two basic counting principles, counting arrangements and selections with and without repetitions, the various methods and rules for distribution of objects into cells, how to prove identities using combinatorial arguments, principles of ordinary and exponential generating functions, how to design and solve recurrences. The course discusses algorithms for listing permutations, subsets, and integer partitions. The course also compares between such algorithms in terms of suitability of application and time complexity', 2, 0, 3),
('comp 304', ' Compiler Design ', 'A compiler is one of the most vital parts of a computer\'s system software, translating programs written in a high-level language into low-level commands that the machine can understand and execute. This course teaches the principles and techniques for construction and implementation of modern programming language compilers. It covers the theoretical aspects of compiler design as well as the multitude of practical considerations. This course will cover the following fundamental topics: language definition, lexical analysis, syntax analysis, semantic analysis, and (intermediate) code generation. \r\n \r\n ', 3, 2, 3),
('comp 305', ' Theory of Complexity ', 'This course introduces a diverse array of complexity classes (such as P, NP, NPcomplete) that are used to classify problems according to the computational resources (such as time, space) required for their solution. The course examines problems whose fundamental nature is exposed by this framework (such as SAT, and 3-SAT problems), the known relationships between complexity classes, and some problems in the area. ', 3, 0, 3),
('comp 306', ' Computer Graphics ', 'The course provides the fundamentals of computer graphics. Topics include computer graphics and their applications, elements of pictures created in computer graphics, interactive graphics system, algorithms for points, lines, circles, ellipse and other curves, 2-D and 3-D modeling, transformation techniques, two dimensional viewing, projections, rendering techniques and graphical software packages and graphics systems. Students will use a standard computer graphics API to reinforce concepts and study fundamental computer graphics algorithms. ', 3, 2, 3),
('comp 308', ' Cryptography ', 'The course focuses on the definitions and constructions of various cryptographic primitives and protocols. Topics include introduction to information security, (classical and modern) symmetric-key encryptions, mode of operation encryptions, public-key encryptions, mathematical background, hash functions, message integrity, message authentications, digital signatures, entity authentication, and key management. ', 3, 0, 3),
('comp 310', ' Advanced Web Programming ', 'This course is an extension of COMP 206. It provides an introduction to how to design and develop dynamic web sites using Java technologies. The course will cover the basics of both Java Servlets and Java Server Pages (JSP), based on the J2EE \r\nServlet specification. The course also covers basic database connectivity using the Java JDBC API. The course involves extensive hands-on development. ', 2, 2, 3),
('comp 312', ' File Organization ', 'This course provides an introduction to the use of one software package which is useful to mathematics students. Among the packages are Maple and Mathematica for symbolic computing, and Matlab for numerical computing. Topics may include the following: matrices, plotting relation curves in 2D and 3D, relational operators and control flow, symbolic computations, and how to write functions and programs', 2, 0, 3),
('comp 402', ' Bioinformatics ', 'Bioinformatics involve the application of computational methods in order to address problems in molecular biology. This course provides an introduction to algorithms and their applications in bioinformatics. Topics include sequence alignment, phylogenetic tree reconstruction, prediction of RNA and protein structure, gene finding and sequence annotation, gene expression, and biomolecular computing.  \r\n ', 3, 0, 3),
('comp 404', ' Software Engineering   ', 'Software engineering is the branch of computer science that creates practical, costeffective solutions to computing and information processing problems, preferentially by applying scientific knowledge, developing software systems in the service of mankind.  This course covers the fundamentals of software engineering, including understanding system requirements, finding appropriate engineering compromises, effective methods of design, coding, and testing, team software development, and the application of engineering tools.  \r\n ', 3, 2, 3),
('comp 406', ' Computer Project (B)  ', 'This course informally can be considered as a continuation of research or software carried out in COMP 405. They intend to allow undergraduate students to actively and productively participate in research.  This course continues the research and/or software carried out in COMP 405. It continues study, implementing of the selected research and/or software. It also continues generation of a well-documented report, and a presentation of the results. ', 4, 2, 3),
('comp 408', ' Advanced Topics in Artificial Intelligence', 'This course covers deeper details about the design and analysis of decisive and rational agents in AI that do the right thing in the face of limited information and computational resources, and how they learn from experience. It explains how various problems in AI are approached differently. Topics vary from one offering to another, but are likely to be drawn from the following list: non-classical logical languages; intelligent multi-agent systems; modern deterministic and decision-theoretic planning techniques; automated reasoning; game theory; basic supervised machine learning methods; Bayesian network inference and learning; cognitive architectures; among other topics. ', 3, 0, 3),
('comp 413', ' Selected Topics in Algorithms', 'This course covers one or more approaches in algorithms. These approaches focus on trying to design algorithms for solving problems and to accept their (worst case) exponential complexity if they are efficient and fast enough or to accept feasible solution that does near to optimal. Topics include a review of deterministic algorithms for solving problems. The course also contains selecting one or more approaches in algorithms such as approximation, heuristics, and genetic algorithms for obtaining optimal or near to optimal solutions to specific problems. ', 3, 0, 3),
('comp 415', ' Advanced Compilers ', 'This course is intended to give the students a thorough knowledge of compiler design techniques and tools for modern computer programming languages. This course covers advanced topics in design and implementation of modern compilers. Topics include a review of basic compiler design techniques, the advanced techniques behind compilers construction phases: semantic analyzer and intermediate code generator, selecting one or more approaches in compilers design such as advanced techniques in constructing compilers design and optimizations and code generation techniques.', 2, 2, 3),
('comp 416', 'Data and Web Mining   ', 'The course is a road map of data and web mining. The course consists of two parts. Part I introduces knowledge discovery in databases, data mining techniques and concepts, data warehousing, data cleaning and preparation, mining association rules, classification, prediction, clustering. Part II presents web mining, web mining classification, introduction to techniques of mining information from the web, search engines, web basics and HTTP, web personalization, working with logs, forms, and cookies, user identification and path analysis. ', 3, 0, 3),
('comp 428', 'Computer applications in chemistry ', 'This course provides an introduction to solve problems using a computer.   The course teaches how real-world problems  in Chemistry can be solved computationally using  a computer programming language such as C++ or some Mathematical packages such as MATLAB. For example, topics of MATLAB include simple operations and working with variables, matrices,  access matrix elements, matrix operations, relational and logical operators, plotting in two-dimensions, plotting in three-dimensions, interpolation, MATLAB functions,  input / output and data management. ', 1, 3, 9),
('comp 434', ' Computer applications in Geophysics   ', 'This course teaches how real-world problems  in Geophysics can be solved computationally using  a computer programming language such as C++ or some Mathematical packages such as MATLAB. Topics may include one or more of the following: solving equations numerically (Newton\'s Method,  the Secant Method, False Position Method), polynomial interpolation (Lagrange Polynomial, Newton Polynomial ), curve fitting (Linear Least Squares, Linear Regression, Polynomial Least Squares ,  Exponential Least Squares - Non Linear Curve Fitting), calculus (Limits ,  Differentiation, Integration), and image analysis . ', 1, 3, 8),
('math 331', ' Abstract Algebra for Computer Science   ', 'Group theory: finite groups, order of a group, subgroubs, cyclic groups, commutator subgroub, homeomorphisms.  Ring Theory: Rings, ideals, ring homeomorphisms integral domains, polynomial rings, zeros of polynomials and reducibility.    \r\nField Theory: finite fields, field extensions, characteristics, Galois groups, modular polynomial arithmetic. ', 2, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `iddepartment` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `leader_of_duties_ofQuality` int(11) DEFAULT NULL,
  `doctor_manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`iddepartment`, `name`, `leader_of_duties_ofQuality`, `doctor_manager_id`) VALUES
(1, 'mathematics', 1, 5),
(2, 'chemistry', 3, 3),
(3, 'biology', 4, 4),
(4, 'physics', 6, 6),
(5, 'zoology', 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `department_iddepartment` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `speciality` varchar(25) DEFAULT NULL,
  `cv` longblob DEFAULT NULL,
  `teaching_hours` int(11) DEFAULT NULL,
  `is_working` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`department_iddepartment`, `id`, `Code`, `name`, `email`, `phone`, `speciality`, `cv`, `teaching_hours`, `is_working`, `password`, `updated_at`, `created_at`, `remember_token`) VALUES
(1, 1, '12435', ' hewayda mohamed', 'hewayda.mohamed@yahoo.com', 1238746712, 'computer science', NULL, 12, 1, '$2y$10$ySxhmPQk3huI.1cugx2d7u16nG9lWvR2orOhYWS4726hNX4IUPBBi', '2020-03-31', '0000-00-00', NULL),
(1, 2, '12432', 'azza abd elrahman', 'azza.abdelrahman@yahoo.com', 1247637812, 'computer science', NULL, 10, 1, '$2y$10$s5LJU7zZU8.ZDXAvpYbtTe0L.4ts.RnFyC3pqQDCNng6Qu9HrN5Fu', '2020-04-13', '0000-00-00', NULL),
(1, 3, '12454', 'neveen samy', 'neveen.samy@yahoo.com', 1254654434, 'cs statistic', NULL, 10, 1, '$2y$10$ctun/o27LHj7Gjfw9ycsEO3dfAyOIDvuVsRKpAShZxku3OwCm6cea', '2020-04-18', '0000-00-00', NULL),
(1, 4, '125467', 'diaanasr', 'diaa00nasr@yahoo.com', 1200069222, 'computer science', NULL, 12, 1, '$2y$10$T1CV423GTahZvo2Xo2XZG.942Gb8ypyiAs4ZymxHQDxn1qAhJ7SV6', '2020-04-24', '0000-00-00', NULL),
(1, 5, '12477', 'mohamed hashim', 'mohamed.hashim@yahoo.com', 1246577951, 'computer science', NULL, 8, 1, 'hashim123', '0000-00-00', '0000-00-00', NULL),
(1, 6, '12473', 'naglaa mohamed', 'naglaa.mohamed@yahoo.com', 1265778932, 'computer science', NULL, 10, 0, 'naglaa124', '0000-00-00', '0000-00-00', NULL),
(1, 7, '12547', 'dawlat abd elaziz', 'dawlat.abdelaziz@yahoo.com', 1154566765, 'cs physics', NULL, 9, 1, 'dawlat124', '0000-00-00', '0000-00-00', NULL),
(1, 8, '12548', 'elham elshrif', 'elham.elshrif@yahoo.com', 1543277845, 'cs statistics', NULL, 10, 1, 'elham123', '0000-00-00', '0000-00-00', NULL),
(1, 9, '12653', 'hatem baheq', 'hatem.baheq@yahoo.com', 1276324521, 'computer science', NULL, 12, 1, 'hatem123', '0000-00-00', '0000-00-00', NULL),
(1, 10, '12677', 'ashraf mostafa', 'ashraf.mostafa@yahoo.com', 1299843643, 'cs statistics', NULL, 10, 1, 'ashraf124', '0000-00-00', '0000-00-00', NULL),
(2, 11, '14658', 'ahmed hassan', 'ahmed.hassan@yahoo.com', 1167853457, 'chemistry', NULL, 11, 0, 'ahmed123', '0000-00-00', '0000-00-00', NULL),
(4, 12, '14387', 'maged ali', 'maged.ali@yahoo.com', 1267856768, 'physics', NULL, 12, 1, 'maged124', '0000-00-00', '0000-00-00', NULL),
(1, 13, '14389', 'fayd ghaeb', 'fayd.ghaeb@yahoo.com', 1135468734, 'computer science', NULL, 12, 1, 'fayd123', '0000-00-00', '0000-00-00', NULL),
(1, 14, '14377', 'hussien karam', 'hussien.karam@yahoo.com', 1148577685, 'computer science', NULL, 9, 1, 'hussein124', '0000-00-00', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_duties`
--

CREATE TABLE `doctor_duties` (
  `id` int(11) NOT NULL,
  `duties` varchar(100) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_duties`
--

INSERT INTO `doctor_duties` (`id`, `duties`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'quality', 1, '0000-00-00', '0000-00-00'),
(2, 'abc', 2, '0000-00-00', '0000-00-00'),
(3, 'aabbcc', 2, '0000-00-00', '0000-00-00'),
(4, 'wwssaa', 3, '0000-00-00', '0000-00-00'),
(5, 'qqrrdd', 5, '0000-00-00', '0000-00-00'),
(6, 'hhfftt', 7, '0000-00-00', '0000-00-00'),
(7, 'ggrree', 5, '0000-00-00', '0000-00-00'),
(8, 'mmhhff', 4, '0000-00-00', '0000-00-00'),
(9, 'ttrree', 4, '0000-00-00', '0000-00-00'),
(10, 'ttrree', 6, '0000-00-00', '0000-00-00'),
(11, 'jjffww', 6, '0000-00-00', '0000-00-00'),
(12, 'jjffww', 10, '0000-00-00', '0000-00-00'),
(13, 'aabbcc', 12, '0000-00-00', '0000-00-00'),
(14, 'wwssaa', 12, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `empty_files`
--

CREATE TABLE `empty_files` (
  `id` int(11) NOT NULL,
  `original_filename` varchar(100) NOT NULL,
  `file_path` varchar(300) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empty_files`
--

INSERT INTO `empty_files` (`id`, `original_filename`, `file_path`, `created_at`, `updated_at`) VALUES
(8, 'form 11ب.docx', 'EmptyFile/IzPN4Cjs4emLU7ggdp4Ce6W1Eg0zUVK2mXrU351r.docx', '2020-04-01', '2020-04-01'),
(9, 'form 12.docx', 'EmptyFile/qn6AWvTlT5c8iBHgro6D0yt9COViCKNrGPP80j2n.docx', '2020-04-01', '2020-04-01'),
(10, 'form 13.docx', 'EmptyFile/H5imy3d4on1FHGfCz24juUvjadmEW4cYHDf3EfVZ.docx', '2020-04-01', '2020-04-01'),
(11, 'form 15.docx', 'EmptyFile/zF6M8u7SOGWml3BWTL38xFYoAdZeaUyeu4qLtfjU.docx', '2020-04-01', '2020-04-01'),
(12, 'form 16.docx', 'EmptyFile/Tw2VXhEZGoInzY66qKiCUJRbprCdmAI6xRrrNt5V.docx', '2020-04-01', '2020-04-01'),
(14, 'form11أ.docx', 'EmptyFile/t9fW0cuXozFpGm2fbrZPHVWnybYrFL1hb7T0dbQF.docx', '2020-04-02', '2020-04-02'),
(15, 'نموذج استيفاء الورقه الامتحانيه.doc', 'EmptyFile/0mv8Ynxc6kMYJ7gxEe2aUhIS1WtAlJsGbA9Un7Hh.doc', '2020-04-03', '2020-04-03');

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `exam_original_filename` varchar(200) DEFAULT NULL,
  `exam_file_path` varchar(200) DEFAULT NULL,
  `answers_original_filename` varchar(200) DEFAULT NULL,
  `answers_file_path` varchar(200) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `activated_courses_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `exam_original_filename`, `exam_file_path`, `answers_original_filename`, `answers_file_path`, `deadline`, `status`, `program_id`, `activated_courses_id`, `created_at`, `updated_at`) VALUES
(1, 'aqua.pdf', 'Exam/f80EzOmv51lXBJveMcMJF9mvD8TE0OFDfRYuK89g.pdf', 'aqua.pdf', 'File/XEIQYfpmWEyGBbP59ty2IMTALeGBZrHOhNM6blqW.pdf', NULL, NULL, 1, 2, '2020-04-02', '2020-04-27'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-04-13', '2020-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `file_missings`
--

CREATE TABLE `file_missings` (
  `f_name` varchar(45) NOT NULL,
  `f_bool` tinyint(1) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form12`
--

CREATE TABLE `form12` (
  `id` int(11) NOT NULL,
  `original_filename` varchar(60) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form12`
--

INSERT INTO `form12` (`id`, `original_filename`, `file_path`, `file_id`, `created_at`, `updated_at`) VALUES
(5, 'form 12.docx', 'Form12/xwuhvYl3UyDA5pqMyjMFzBxiyAxXeLvsLh0gQLOd.docx', 5, '2020-04-13', '2020-04-13'),
(6, 'form 12.docx', 'Form12/CoqcTHxFF6c0Myhq6LMIbLIgVHpaS4kjbwJA3rhA.docx', 1, '2020-04-27', '2020-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `form16`
--

CREATE TABLE `form16` (
  `id` int(11) NOT NULL,
  `original_filename` varchar(60) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form16`
--

INSERT INTO `form16` (`id`, `original_filename`, `file_path`, `file_id`, `created_at`, `updated_at`) VALUES
(2, 'form 16.docx', 'Form16/euNll4nexJG5Ut9RL75FhMrVVz6rvKQ0ZU7Pg88z.docx', 1, '2020-04-02', '2020-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `form_11a`
--

CREATE TABLE `form_11a` (
  `id` int(11) NOT NULL,
  `original_filename` varchar(60) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_11a`
--

INSERT INTO `form_11a` (`id`, `original_filename`, `file_path`, `file_id`, `created_at`, `updated_at`) VALUES
(2, 'form11أ.docx', 'form_11a/HyU34MQI14PY9un1srC89ftZr9kdlNzsLMh6gyNx.docx', 1, '2020-04-02', '2020-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `ilos`
--

CREATE TABLE `ilos` (
  `id` int(11) NOT NULL,
  `original_filename` varchar(60) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ilos`
--

INSERT INTO `ilos` (`id`, `original_filename`, `file_path`, `file_id`, `created_at`, `updated_at`) VALUES
(3, 'نموذج استيفاء الورقه الامتحانيه.doc', 'ILOs/GlRyRH0gBjt8r7I09saKRtovXZ7YF58OOqGgXqVE.doc', 1, '2020-04-03', '2020-04-03');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('eertre@dgd.io', '$2y$10$5zDifWwZ/hQSJOyiLXsrXeTFKfHJUt31q2pFDcLvBPZnmd43fJt3e', '2020-02-06 19:42:29'),
('example@example.com', '$2y$10$3LYUY.3uzjUKEQhhdCzI2eB0NuUk39Xk8AL3lx2155hj9gppZtH02', '2020-02-07 10:21:20'),
('eertre@dgd', '$2y$10$ykJ./ywCXcHMzWsaOcKfhOROa9YPqZKwOf.UsFAadx08bwlR9K0bO', '2020-04-18 03:56:53'),
('eertre@dgd11111', '$2y$10$zcJYJCJt.w3KAXAqQD2x/.x.lc9b9KpPOE.GuIyUuBxErzFkc13Vy', '2020-05-23 06:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `hours` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `form15_original_filename` varchar(100) DEFAULT NULL,
  `form15_file_path` varchar(200) DEFAULT NULL,
  `form11b_original_filename` varchar(100) DEFAULT NULL,
  `form11b_file_path` varchar(200) DEFAULT NULL,
  `form13_original_filename` varchar(100) DEFAULT NULL,
  `form13_file_path` varchar(200) DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `hours`, `category`, `form15_original_filename`, `form15_file_path`, `form11b_original_filename`, `form11b_file_path`, `form13_original_filename`, `form13_file_path`, `activated`, `created_at`, `updated_at`) VALUES
(1, 'pure mathematics', 134, 'Mathematics', 'form 15.docx', 'Form15/2Nm6mFBfZdHdp9zeDPYqnf5P9Uc34R1p48oOaEfc.docx', NULL, NULL, '', NULL, 1, '0000-00-00', '2020-05-09'),
(2, 'Applied Mathematics', 134, 'Mathematics', NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL),
(3, 'Computer Science', 134, 'Mathematics', 'form 15.docx', 'Form15/2KgV3THjCUSF3yKCxhZBNLGCadUQ5KOlFuDfCnZP.docx', 'form 11ب.docx', 'Form11b/wL23fA6wcHup8CYgd6XFRmQaMHDLWjG930myWS3m.docx', 'form 13.docx', 'Form13/YWfRAnDfEX8FaOdX0mY49wJ3YXOUOjAO5aeUEbDn.docx', 1, '0000-00-00', '2020-06-15'),
(4, 'CS Pure Math', 140, 'Mathematics', NULL, NULL, NULL, NULL, '', NULL, 1, '0000-00-00', NULL),
(5, 'CS Applied Math', 140, 'Mathematics', NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL),
(6, 'Pure Statstics', 134, 'Mathematics', NULL, NULL, NULL, NULL, '', NULL, 0, '0000-00-00', NULL),
(7, 'CS Mathematics', 140, 'Mathematics', NULL, NULL, NULL, NULL, '', NULL, 1, '0000-00-00', NULL),
(8, 'CS Physics', 140, 'Physics', NULL, NULL, NULL, NULL, '', NULL, 1, '0000-00-00', NULL),
(9, 'special chemistry', 140, 'chemistry', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` int(11) NOT NULL,
  `activated_courses_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `activated_courses_id`, `comment`, `updated_at`, `created_at`) VALUES
(1, 6, 'comment', NULL, NULL),
(2, 3, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL),
(4, 1, NULL, NULL, NULL),
(5, 4, NULL, NULL, NULL),
(28, 2, 'good', '2020-02-15', '2020-02-15'),
(29, 3, 'my comment', '2020-02-15', '2020-02-15'),
(30, 3, 'good', '2020-02-15', '2020-02-15'),
(31, 2, 'comment2', '2020-02-15', '2020-02-15'),
(32, 4, 'bad', '2020-02-18', '2020-02-18'),
(33, 4, 'bad', '2020-02-18', '2020-02-18'),
(34, 1, NULL, '2020-03-09', '2020-03-09'),
(35, 6, NULL, '2020-03-10', '2020-03-10'),
(36, 6, NULL, '2020-03-10', '2020-03-10'),
(37, 6, NULL, '2020-03-10', '2020-03-10'),
(38, 6, NULL, '2020-03-10', '2020-03-10'),
(39, 6, NULL, '2020-03-10', '2020-03-10'),
(40, 6, NULL, '2020-03-10', '2020-03-10'),
(41, 6, NULL, '2020-03-10', '2020-03-10'),
(42, 6, NULL, '2020-03-10', '2020-03-10'),
(43, 6, NULL, '2020-03-10', '2020-03-10'),
(44, 6, NULL, '2020-03-10', '2020-03-10'),
(45, 6, NULL, '2020-03-10', '2020-03-10'),
(46, 6, NULL, '2020-03-10', '2020-03-10'),
(47, 6, NULL, '2020-03-10', '2020-03-10'),
(48, 6, NULL, '2020-03-10', '2020-03-10'),
(49, 6, NULL, '2020-03-10', '2020-03-10'),
(50, 6, NULL, '2020-03-10', '2020-03-10'),
(51, 6, NULL, '2020-03-10', '2020-03-10'),
(52, 6, NULL, '2020-03-10', '2020-03-10'),
(53, 6, NULL, '2020-03-10', '2020-03-10'),
(54, 6, NULL, '2020-03-10', '2020-03-10'),
(55, 6, NULL, '2020-03-10', '2020-03-10'),
(56, 6, NULL, '2020-03-10', '2020-03-10'),
(57, 6, NULL, '2020-03-10', '2020-03-10'),
(58, 6, NULL, '2020-03-10', '2020-03-10'),
(59, 6, NULL, '2020-03-10', '2020-03-10'),
(60, 6, NULL, '2020-03-10', '2020-03-10'),
(61, 6, NULL, '2020-03-10', '2020-03-10'),
(62, 6, NULL, '2020-03-10', '2020-03-10'),
(63, 6, NULL, '2020-03-10', '2020-03-10'),
(64, 6, NULL, '2020-03-10', '2020-03-10'),
(65, 6, NULL, '2020-03-10', '2020-03-10'),
(66, 6, NULL, '2020-03-10', '2020-03-10'),
(67, 1, NULL, '2020-03-10', '2020-03-10'),
(68, 1, NULL, '2020-03-10', '2020-03-10'),
(69, 1, NULL, '2020-03-10', '2020-03-10'),
(70, 1, NULL, '2020-03-10', '2020-03-10'),
(71, 1, NULL, '2020-03-10', '2020-03-10'),
(72, 1, NULL, '2020-03-10', '2020-03-10'),
(73, 1, NULL, '2020-03-10', '2020-03-10'),
(74, 1, NULL, '2020-03-10', '2020-03-10'),
(75, 6, NULL, '2020-03-10', '2020-03-10'),
(76, 1, NULL, '2020-03-10', '2020-03-10'),
(77, 1, 'new comment', '2020-03-10', '2020-03-10'),
(78, 1, NULL, '2020-03-10', '2020-03-10'),
(79, 1, 'new comment', '2020-03-10', '2020-03-10'),
(80, 1, 'new comment', '2020-03-10', '2020-03-10'),
(81, 1, NULL, '2020-03-10', '2020-03-10'),
(82, 1, NULL, '2020-03-10', '2020-03-10'),
(83, 2, NULL, '2020-04-10', '2020-04-10'),
(84, 2, NULL, '2020-04-11', '2020-04-11'),
(85, 2, NULL, '2020-04-11', '2020-04-11'),
(86, 2, NULL, '2020-04-11', '2020-04-11'),
(87, 2, NULL, '2020-04-11', '2020-04-11'),
(88, 2, NULL, '2020-04-11', '2020-04-11'),
(89, 2, NULL, '2020-04-11', '2020-04-11'),
(90, 2, NULL, '2020-04-11', '2020-04-11'),
(91, 2, NULL, '2020-04-11', '2020-04-11'),
(92, 2, NULL, '2020-04-11', '2020-04-11'),
(93, 2, NULL, '2020-04-11', '2020-04-11'),
(94, 2, NULL, '2020-04-11', '2020-04-11'),
(95, 2, NULL, '2020-04-11', '2020-04-11'),
(96, 2, NULL, '2020-04-11', '2020-04-11'),
(97, 2, NULL, '2020-04-11', '2020-04-11'),
(98, 2, NULL, '2020-04-11', '2020-04-11'),
(99, 2, NULL, '2020-04-11', '2020-04-11'),
(100, 2, NULL, '2020-04-11', '2020-04-11'),
(101, 2, NULL, '2020-04-11', '2020-04-11'),
(102, 2, NULL, '2020-04-11', '2020-04-11'),
(103, 2, NULL, '2020-04-11', '2020-04-11'),
(104, 2, NULL, '2020-04-11', '2020-04-11'),
(105, 2, NULL, '2020-04-11', '2020-04-11'),
(106, 2, NULL, '2020-04-11', '2020-04-11'),
(107, 2, NULL, '2020-04-11', '2020-04-11'),
(108, 2, NULL, '2020-04-11', '2020-04-11'),
(109, 2, NULL, '2020-04-11', '2020-04-11'),
(110, 2, NULL, '2020-04-11', '2020-04-11'),
(111, 2, NULL, '2020-04-11', '2020-04-11'),
(112, 2, NULL, '2020-04-11', '2020-04-11'),
(113, 2, NULL, '2020-04-11', '2020-04-11'),
(114, 2, NULL, '2020-04-11', '2020-04-11'),
(115, 2, NULL, '2020-04-18', '2020-04-18'),
(116, 2, NULL, '2020-04-18', '2020-04-18'),
(117, 2, NULL, '2020-04-18', '2020-04-18'),
(118, 2, NULL, '2020-04-18', '2020-04-18'),
(119, 2, NULL, '2020-04-18', '2020-04-18'),
(120, 2, NULL, '2020-04-18', '2020-04-18'),
(121, 2, NULL, '2020-05-19', '2020-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `type`, `content`) VALUES
(1, 'theoritical', 'تم توضيح أهداف المقرر في بداية الفصل الدراسي'),
(2, 'theoritical', 'تحققت اهداف المقرر في نهاية الفصل الدراسي'),
(3, 'theoritical', 'أستعين بالمحاضرة كمصدر أساسي في الإستذكار'),
(4, 'theoritical', '.المحاضرات والتدريبات العلمية ترتبط بأهداف المقرر'),
(5, 'theoritical', '. تم عرض موضوعات المقرر على نحو منطقي سليم'),
(6, 'theoritical', 'يتلاءم محتوى المقرر مع الهدف من دراسته'),
(7, 'theoritical', '.يتناسب كم المحتوى الدارسي للمقرر مع المدة الزمنية لدراسته'),
(8, 'theoritical', '.المحتوى العلمي للمقرر يتضمن جوانب مفيدة للحياة'),
(9, 'theoritical', '.تسهم موضوعات المقرر في إعداد الطالب للعمل'),
(10, 'theoritical', '.توجد مصادر مرجعية متعددة لمحتوى المقرر (الكتاب الجامعي - مراجع - مواقع...الخ'),
(11, 'theoritical', '.تسهم طرق التدريس في تنمية مهارات الطالب في التعلم الذاتي'),
(12, 'theoritical', '.طرق التدريس المستخدمة تساعد على إكتساب مهارات التفكير والإبداع'),
(13, 'theoritical', '.تستخدم وسائل ومعينات سمعية وبصرية ملائمة وفعالة أثناء التدريس'),
(14, 'theoritical', '.يتم تغطية محتويات المقرر في الوقت المخصص للعملية التعليمية'),
(15, 'pratical', '.يلتزم القائمون بالتدريس بالحضور في المواعيد المعلنة'),
(16, 'theoritical', '.يستخدم المحاضر المناقشه والحوار مع الطلاب'),
(17, 'theoritical', '.يدمج المحاضر أمثلة وتطبيقات حيتية مع محتوى المقرر'),
(18, 'theoritical', '.يتواصل المحاضر مع طلابه علي نحو جيد'),
(19, 'theoritical', '.يتعامل المحاضر بإحترام مع الطالب'),
(20, 'theoritical', '.يمكن اللجوء للقاتم بالتدريس خلال الساعات المكتبية'),
(21, ' pratical', '.أرغب بدراسة مقرر دراسي آخر مع نفس الأستاذ'),
(22, 'pratical', '.عضو الهيئة المعاونة (معيد – مدرس مساعد) يتعامل معنا بإحترام'),
(23, 'pratical', '.عضو هيئه التدريس متمكن من الماده العلميه'),
(24, 'pratical', '.عضو هيئه التدريس يقدم العون اللازم للطالب'),
(25, 'pratical', '.عضو هيئة التدريس يشجع ويمارس ضغوطا للإتجاه للدروس الخصوصية'),
(26, 'pratical', '.تتوافر بالمعامل الإمكانات والتجهيزات اللازمة لتعلم المهارات المهنية والعلمية.'),
(27, 'pratical', '.يرتبط محتوي الجزء لعملي من المقرر بالتطبيقات العلميه الاساسيه للجوانب النظريه للمقرر'),
(28, 'pratical', '.يلتزم القائمون بتدريس الجزء العملي بإستخدام الإيضاح العلمي من نماذج ومواد فعالة'),
(29, 'comment', 'سجل اقتراحاتك التي تتعلق بجوانب اخري تري ايضا انها مهمه غير مدرجه');

-- --------------------------------------------------------

--
-- Table structure for table `skills_assistants`
--

CREATE TABLE `skills_assistants` (
  `id` int(11) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `assistant_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills_assistants`
--

INSERT INTO `skills_assistants` (`id`, `skills`, `assistant_id`, `created_at`, `updated_at`) VALUES
(1, 'matlab', 1, '0000-00-00', '0000-00-00'),
(2, 'c++', 1, '0000-00-00', '0000-00-00'),
(3, 'java', 2, '0000-00-00', '0000-00-00'),
(4, 'database', 3, '0000-00-00', '0000-00-00'),
(5, 'angular', 4, '0000-00-00', '0000-00-00'),
(6, 'automata', 5, '0000-00-00', '0000-00-00'),
(7, 'c++', 5, '0000-00-00', '0000-00-00'),
(8, 'matlab', 6, '0000-00-00', '0000-00-00'),
(9, 'java', 9, '0000-00-00', '0000-00-00'),
(10, 'database', 10, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `code`, `name`, `email`, `password`, `level`, `updated_at`, `created_at`, `remember_token`) VALUES
(1, '126546', 'kirolossabry', 'kirolossabry@yahoo.com', '$2y$10$12MqdHMIKZEAVu66ApG15OTlr/PrG1adIxNKlJWKjJOzjGepORRZS', 4, '2020-04-18', '0000-00-00', NULL),
(2, '234123', 'abanob alfy', 'abanob.alfy@yahoo.com', 'abanob123', 4, '0000-00-00', '0000-00-00', NULL),
(3, '346523', 'gorge antwan', 'gorgeantwan@yahoo.com', '$2y$10$AD8x8KNB01ThUbDYwwS2gOa7/OH9EJohNp8hnRMeraYUhgM76kSta', 4, '2020-04-04', '0000-00-00', NULL),
(4, '156378', 'mena gerges', 'mena.gerges@yahoo.com', '$2y$10$vUXLiCeT/tJUA0TZ9UmdAeBeSofoe78Zwgng1Nk0XJt7GMrLROfv6', 3, '2020-04-24', '0000-00-00', NULL),
(5, '334546', 'esraa ahmed', 'esraa.ahmed@yahoo.com', 'esraa123', 4, '0000-00-00', '0000-00-00', NULL),
(6, '546234', 'nance emad', 'nancy.emad@yahoo.com', 'ancy435', 2, '0000-00-00', '0000-00-00', NULL),
(7, '653342', 'omar adel', 'omar.adel@yahoo.com', 'omar132', 1, '0000-00-00', '0000-00-00', NULL),
(8, '435112', 'khaled ahmed', 'khaled.amed@yahoo.com', 'khaled123', 2, '0000-00-00', '0000-00-00', NULL),
(9, '123342', 'nasser ali', 'nasser.ali@yahoo.com', 'nasser231', 2, '0000-00-00', '0000-00-00', NULL),
(10, '123546', 'amed mohamed', 'ahmed.mohamed@yahoo.com', 'ahmed123', 2, '0000-00-00', '0000-00-00', NULL),
(11, '127654', 'ahmed maged', 'ahmedmaged@yahoo.com', 'ahmed123', 2, '0000-00-00', '0000-00-00', NULL),
(12, '156987', 'nasr ali', 'nasrali@yahoo.com', 'nasr241', 1, '0000-00-00', '0000-00-00', NULL),
(13, '165878', 'fathy ahmed', 'fathyahmed@yahoo.com', 'fathy123', 4, '0000-00-00', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE `total` (
  `activated_courses_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `t_1` float NOT NULL,
  `t_2` float NOT NULL,
  `t_3` float NOT NULL,
  `t_4` float NOT NULL,
  `t_5` float NOT NULL,
  `t_6` float NOT NULL,
  `t_7` float NOT NULL,
  `t_8` float NOT NULL,
  `t_9` float NOT NULL,
  `t_10` float NOT NULL,
  `t_11` float NOT NULL,
  `t_12` float NOT NULL,
  `t_13` float NOT NULL,
  `t_14` float NOT NULL,
  `t_16` float NOT NULL,
  `t_17` float NOT NULL,
  `t_18` float NOT NULL,
  `t_19` float NOT NULL,
  `t_20` float NOT NULL,
  `count` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `total`
--

INSERT INTO `total` (`activated_courses_id`, `id`, `doctor_id`, `t_1`, `t_2`, `t_3`, `t_4`, `t_5`, `t_6`, `t_7`, `t_8`, `t_9`, `t_10`, `t_11`, `t_12`, `t_13`, `t_14`, `t_16`, `t_17`, `t_18`, `t_19`, `t_20`, `count`, `updated_at`, `created_at`) VALUES
(8, 11, 4, 2, 4, 6, 6, 3, 3, 6, 6, 3, 3, 5, 7, 2, 4, 4, 0, 0, 0, 0, 2, '2020-02-15', '2020-02-15'),
(4, 14, 1, 32, 80, 32, 64, 48, 80, 32, 32, 80, 80, 64, 80, 80, 80, 64, 80, 48, 80, 48, 16, '2020-04-11', '2020-03-09'),
(6, 15, 5, 1, 2, 3, 4, 5, 4, 3, 5, 2, 1, 3, 4, 5, 4, 3, 2, 1, 4, 4, 1, NULL, NULL),
(11, 17, 7, 4, 10, 4, 8, 6, 10, 4, 4, 10, 10, 8, 10, 10, 10, 8, 10, 6, 10, 6, 2, '2020-03-10', '2020-03-10'),
(19, 18, 8, 4, 10, 4, 8, 6, 10, 4, 4, 10, 10, 8, 10, 10, 10, 8, 10, 6, 10, 6, 2, '2020-03-10', '2020-03-10'),
(18, 19, 10, 4, 10, 4, 8, 6, 10, 4, 4, 10, 10, 8, 10, 10, 10, 8, 10, 6, 10, 6, 2, '2020-03-10', '2020-03-10'),
(11, 20, 7, 15, 15, 6, 12, 9, 15, 6, 6, 15, 15, 12, 15, 15, 15, 12, 15, 9, 15, 9, 3, '2020-03-10', '2020-03-10'),
(15, 21, 3, 2, 5, 2, 4, 3, 5, 2, 2, 5, 5, 4, 5, 5, 5, 4, 5, 3, 5, 3, 1, '2020-03-19', '2020-03-19'),
(2, 22, 10, 24, 60, 24, 48, 36, 60, 24, 24, 60, 60, 48, 60, 60, 60, 48, 60, 36, 60, 36, 12, '2020-04-11', '2020-04-11'),
(2, 23, 6, 2, 5, 2, 4, 3, 5, 2, 2, 5, 5, 4, 5, 5, 5, 4, 5, 3, 5, 3, 1, '2020-04-18', '2020-04-18'),
(2, 24, 4, 2, 5, 2, 4, 3, 5, 2, 2, 5, 5, 4, 5, 5, 5, 4, 5, 3, 5, 3, 1, '2020-04-18', '2020-04-18'),
(1, 25, 14, 2, 5, 2, 4, 3, 5, 2, 2, 5, 5, 4, 5, 5, 5, 4, 5, 3, 5, 3, 1, '2020-04-18', '2020-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `total_assistant`
--

CREATE TABLE `total_assistant` (
  `id` int(11) NOT NULL,
  `assistant_id` int(11) NOT NULL,
  `t_15` float NOT NULL,
  `t_21` float NOT NULL,
  `t_22` float NOT NULL,
  `t_23` float NOT NULL,
  `t_24` float NOT NULL,
  `t_25` float NOT NULL,
  `t_26` float NOT NULL,
  `t_27` float NOT NULL,
  `t_28` float NOT NULL,
  `count` int(11) DEFAULT NULL,
  `activated_courses_id` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `total_assistant`
--

INSERT INTO `total_assistant` (`id`, `assistant_id`, `t_15`, `t_21`, `t_22`, `t_23`, `t_24`, `t_25`, `t_26`, `t_27`, `t_28`, `count`, `activated_courses_id`, `updated_at`, `created_at`) VALUES
(4, 1, 2, 2, 4, 6, 8, 10, 0, 0, 0, 2, 1, '2020-02-15', '2020-02-15'),
(6, 3, 1, 4, 16, 12, 8, 16, 16, 12, 16, 4, 6, '2020-03-10', '2020-03-10'),
(7, 4, 5, 2, 8, 6, 4, 8, 8, 6, 8, 2, 4, '2020-03-10', '2020-03-10'),
(8, 7, 4, 1, 4, 3, 2, 4, 4, 3, 4, 1, 7, '2020-03-10', '2020-03-10'),
(9, 8, 1, 1, 4, 3, 2, 4, 4, 3, 4, 1, 8, '2020-03-19', '2020-03-19'),
(11, 1, 3, 3, 12, 9, 6, 12, 12, 9, 12, 3, 2, '2020-04-18', '2020-04-11'),
(12, 2, 1, 1, 4, 3, 2, 4, 4, 3, 4, 1, 2, '2020-04-18', '2020-04-18'),
(13, 3, 1, 1, 4, 3, 2, 4, 4, 3, 4, 1, 2, '2020-05-19', '2020-05-19');

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
(1, 'ferfer dscdc', 'eertre@dgd', NULL, '$2y$10$eB5slzPXKs8/3BwEqYMOI.CtE4pKj/2iUmX/G6MuMDks2wN1ypu0y', NULL, '2020-02-01 12:53:24', '2020-02-01 12:53:24'),
(2, 'ferfer dscdc', 'eertre@dgd.com', NULL, '$2y$10$osPzCsGir0ZnnwYfomfZv.nDqT2HSvuScWFITmSP0F.Ef3hWXeVL6', NULL, '2020-02-01 13:12:37', '2020-02-01 13:12:37'),
(3, 'ffff', 'eertre@dgdd.com', NULL, '$2y$10$TLKoA2Q6AWXJV0DhJSz3..rUTu/VJq8Sx/tK/8IKyY26TODjlio12', NULL, '2020-02-01 13:22:04', '2020-02-01 13:22:04'),
(4, 'ferfer dscdc', 'eertre@dgd11111', NULL, '$2y$10$9zBuuAh2RCLReJWSbm57Hee7w1T7KN.3rmfoyatok24oLwC0qnW.S', NULL, '2020-02-03 11:16:17', '2020-02-03 11:16:17'),
(5, 'jjjjjjjjjjkkkkkkk', 'hhhhhhh@hhh', NULL, '$2y$10$5V8GDZEkhFr88m96r9symONahjEo9aQrLiycP/XY6MNoX3gdClLTS', NULL, '2020-02-03 12:01:34', '2020-02-03 12:01:34'),
(6, 'gggggg', 'user@example.com', NULL, '$2y$10$3B/NACrwZ.u/YENg71Icy./uWNmeg5056ykiShFBRXbMhNIJ5Ck8m', NULL, '2020-02-06 17:02:18', '2020-02-06 17:02:18'),
(7, 'yyy', 'eertre@dgd.io', NULL, '$2y$10$ZC1aMMa5tSVXMwPWhfhv0uCbh4epcrDfAENPz8wqQt6N5P/C5qv/q', 'E4MipsawGVRkFHGIXIp8SLg4KiimmMy9GUxAIkCDd0XYdI1p9SVxv8Ys64y3', '2020-02-06 18:38:25', '2020-02-06 18:38:25'),
(8, 'newsuer', 'newuser@example.com', NULL, '$2y$10$TAu4sloCX1wlqg.1bdCI3e1fbfycVhCu7QGTw7eynpRi5ctxUIpP2', NULL, '2020-03-18 20:21:57', '2020-03-18 20:21:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activated_courses`
--
ALTER TABLE `activated_courses`
  ADD PRIMARY KEY (`id`,`course_code`),
  ADD KEY `fk_activated_courses_course1_idx` (`course_code`);

--
-- Indexes for table `activated_courses_has_doctor`
--
ALTER TABLE `activated_courses_has_doctor`
  ADD PRIMARY KEY (`doctor_id`,`activated_courses_id`),
  ADD KEY `fk_activated_courses_has_doctor_doctor1_idx` (`doctor_id`),
  ADD KEY `fk_activated_courses_has_doctor_activated_courses1_idx` (`activated_courses_id`);

--
-- Indexes for table `activated_courses_students`
--
ALTER TABLE `activated_courses_students`
  ADD PRIMARY KEY (`program_id`,`student_id`,`activated_courses_id`),
  ADD KEY `fk_student_has_activated_courses_activated_courses1_idx` (`activated_courses_id`),
  ADD KEY `fk_student_has_activated_courses_student1_idx` (`student_id`),
  ADD KEY `fk_student_has_activated_courses_program1_idx` (`program_id`);

--
-- Indexes for table `assistants`
--
ALTER TABLE `assistants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_assistant_department1_idx` (`department_iddepartment`);

--
-- Indexes for table `assistant_has_activated_courses`
--
ALTER TABLE `assistant_has_activated_courses`
  ADD PRIMARY KEY (`assistant_id`,`activated_courses_id`),
  ADD KEY `fk_assistant_has_activated_courses_activated_courses1_idx` (`activated_courses_id`),
  ADD KEY `fk_assistant_has_activated_courses_assistant1_idx` (`assistant_id`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`questionnaire_id`,`questions_id`),
  ADD KEY `fk_questionnaire_has_questions_questions1_idx` (`questions_id`),
  ADD KEY `fk_questionnaire_has_questions_questionnaire1_idx` (`questionnaire_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`iddepartment`),
  ADD KEY `fk_department_doctor1_idx` (`doctor_manager_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Code` (`Code`),
  ADD KEY `fk_doctor_department1_idx` (`department_iddepartment`);

--
-- Indexes for table `doctor_duties`
--
ALTER TABLE `doctor_duties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doctor_duties_doctor1_idx` (`doctor_id`);

--
-- Indexes for table `empty_files`
--
ALTER TABLE `empty_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`,`activated_courses_id`),
  ADD KEY `fk_file_program1_idx` (`program_id`),
  ADD KEY `fk_file_activated_courses1_idx` (`activated_courses_id`);

--
-- Indexes for table `file_missings`
--
ALTER TABLE `file_missings`
  ADD PRIMARY KEY (`f_name`,`file_id`),
  ADD KEY `fk_file_missing_file1_idx` (`file_id`);

--
-- Indexes for table `form12`
--
ALTER TABLE `form12`
  ADD PRIMARY KEY (`id`,`file_id`),
  ADD KEY `fk_form12_file1_idx` (`file_id`);

--
-- Indexes for table `form16`
--
ALTER TABLE `form16`
  ADD PRIMARY KEY (`id`,`file_id`),
  ADD KEY `fk_form16_file1_idx` (`file_id`);

--
-- Indexes for table `form_11a`
--
ALTER TABLE `form_11a`
  ADD PRIMARY KEY (`id`,`file_id`),
  ADD KEY `fk_form_11a_file1_idx` (`file_id`);

--
-- Indexes for table `ilos`
--
ALTER TABLE `ilos`
  ADD PRIMARY KEY (`id`,`file_id`),
  ADD KEY `fk_ILOs_file1_idx` (`file_id`);

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
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_questionnaire_activated_courses1_idx` (`activated_courses_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_assistants`
--
ALTER TABLE `skills_assistants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Skills_assistant_assistant1_idx` (`assistant_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_assistant`
--
ALTER TABLE `total_assistant`
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
-- AUTO_INCREMENT for table `assistants`
--
ALTER TABLE `assistants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `doctor_duties`
--
ALTER TABLE `doctor_duties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `empty_files`
--
ALTER TABLE `empty_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `form12`
--
ALTER TABLE `form12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `form16`
--
ALTER TABLE `form16`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_11a`
--
ALTER TABLE `form_11a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ilos`
--
ALTER TABLE `ilos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `skills_assistants`
--
ALTER TABLE `skills_assistants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `total`
--
ALTER TABLE `total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `total_assistant`
--
ALTER TABLE `total_assistant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
