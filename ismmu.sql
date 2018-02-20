-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 08:07 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ismmu`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Research university', '<p>A&nbsp;<strong>research university</strong>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/University\" title=\"University\">university</a>&nbsp;that expects all its&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_tenure\" title=\"Academic tenure\">tenured</a>&nbsp;and tenure-track&nbsp;<a href=\"https://en.wikipedia.org/wiki/Faculty_(academic_staff)\" title=\"Faculty (academic staff)\">faculty</a>&nbsp;to continuously engage in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Research\" title=\"Research\">research</a>, as opposed to merely requiring it as a condition of an initial appointment or tenure.<sup><a href=\"https://en.wikipedia.org/wiki/Research_university#cite_note-Pelikan-1\">[1]</a></sup>&nbsp;Such universities can be recognized by their strong focus on innovative research and the prestige of their brand names.<sup><a href=\"https://en.wikipedia.org/wiki/Research_university#cite_note-CollegeSolution-2\">[2]</a></sup>&nbsp;On the one hand, research universities strive to recruit faculty who are the most brilliant minds in their&nbsp;<a href=\"https://en.wikipedia.org/wiki/Discipline_(academia)\" title=\"Discipline (academia)\">disciplines</a>&nbsp;in the world, and their students enjoy the opportunity to learn from such experts.</p>', 1, '2018-02-14 13:39:43', '2018-02-14 13:39:43'),
(2, 'National university', '<p>A&nbsp;<strong>national university</strong>&nbsp;is generally a&nbsp;<a href=\"https://en.wikipedia.org/wiki/University\" title=\"University\">university</a>&nbsp;created or managed by a government, but which may at the same time operate autonomously without direct control by the state.</p>\r\n\r\n<p>Some national universities are associated with national cultural or political aspirations. For example, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/National_University_of_Ireland\" title=\"National University of Ireland\">National University of Ireland</a>&nbsp;during the early days of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Irish_Free_State\" title=\"Irish Free State\">Irish independence</a>&nbsp;collected a large amount of information about the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Irish_language\" title=\"Irish language\">Irish language</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Irish_culture\" title=\"Irish culture\">Irish culture</a>. In Argentina, the national universities are the result of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/University_reform_in_Argentina\" title=\"University reform in Argentina\">1918 Argentine university reform</a>&nbsp;and subsequent reforms, which were intended to provide a secular university system without direct clerical or government influence by bestowing self-government on the institutions.</p>', 1, '2018-02-14 13:40:06', '2018-02-14 13:40:06'),
(3, 'Pontifical university', '<p><strong>Pontifical universities</strong>&nbsp;are higher education ecclesiastical schools established or approved directly by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Holy_See\" title=\"Holy See\">Holy See</a>, composed of three main&nbsp;<strong>ecclesiastical faculties</strong>(<a href=\"https://en.wikipedia.org/wiki/Theology\" title=\"Theology\">Theology</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Philosophy\" title=\"Philosophy\">Philosophy</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_law_(Catholic_Church)\" title=\"Canon law (Catholic Church)\">Canon Law</a>) and at least one other faculty. These academic institutes deal specifically with the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Christianity\" title=\"Christianity\">Christian</a>&nbsp;revelation and related disciplines, and the Church&rsquo;s mission of spreading the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gospel\" title=\"Gospel\">Gospel</a>, as proclaimed in the Apostolic Constitution both&quot; Sapientia&nbsp;<em>christiana</em>&quot;.<sup><a href=\"https://en.wikipedia.org/wiki/Pontifical_university#cite_note-1\">[1]</a></sup>&nbsp;Many of them, on the other hand, have most of their students studying secular topics. They are governed by the apostolic constitution&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Veritatis_gaudium\" title=\"Veritatis gaudium\">Veritatis gaudium</a></em>&nbsp;issued by Pope Francis.</p>', 1, '2018-02-14 13:41:40', '2018-02-14 13:41:40'),
(4, 'Metropolitan Universities', '<p>In 1995, P.E. Mulhollan authored the study, &quot;Aligning Missions with Public Expectations: The Case of the Metropolitan Universities&quot; for the book titled&nbsp;<em>Metropolitan Universities: An Emerging Model in American Higher Education</em>&nbsp;and defined a metropolitan university, in its simplest terms, &quot;[as] an institution that accepts all of higher education&#39;s traditional values in teaching, research, and professional service, but takes upon itself the additional responsibility of providing leadership to its metropolitan region by using its human and financial resources to improve the region&#39;s&nbsp;<a href=\"https://en.wikipedia.org/wiki/Quality_of_life\" title=\"Quality of life\">quality of life</a></p>', 1, '2018-02-14 13:42:49', '2018-02-14 13:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_credit` double(8,2) NOT NULL,
  `course_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `department_name`, `course_title`, `course_code`, `course_credit`, `course_description`, `course_status`, `created_at`, `updated_at`) VALUES
(1, 'IIT', 'Database Management', '301', 3.00, 'Database Management', 1, '2018-02-14 20:11:55', '2018-02-14 20:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_chairman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `department_chairman`, `status`, `created_at`, `updated_at`) VALUES
(1, 'IIT', 'Dr. Shofiqul Islam', 1, '2018-02-14 16:53:18', '2018-02-14 16:53:18'),
(2, 'CSE', 'Dr. Shamima Korim', 1, '2018-02-14 16:53:42', '2018-02-14 16:53:42'),
(3, 'EEE', 'Dr. Wahiduzzaman', 1, '2018-02-14 16:53:57', '2018-02-14 16:53:57'),
(4, 'INFS', 'Dr. Yousuf Hayder', 1, '2018-02-14 16:54:22', '2018-02-14 16:54:22'),
(5, 'IBS', 'Dr. Arefin Siddique', 1, '2018-02-14 16:54:50', '2018-02-14 16:54:50'),
(6, 'Chemistry', 'Dr. M A Shadillah', 1, '2018-02-14 13:45:11', '2018-02-14 13:45:11'),
(7, 'Bio-chemistry', 'Professor Mark Sansom', 1, '2018-02-14 13:46:24', '2018-02-14 13:46:24'),
(8, 'Life Science', 'Dr. Stephan Uphoff', 1, '2018-02-14 13:47:30', '2018-02-14 13:47:30'),
(9, 'BBA', 'Dr. Abdullah Al Mamun', 1, '2018-02-14 13:50:12', '2018-02-14 13:50:12'),
(10, 'Bangla', 'Prof. Ashok Mukhargee', 1, '2018-02-14 13:54:20', '2018-02-14 13:54:20'),
(11, 'Physics', 'Prof. Imran Khan', 1, '2018-02-14 14:39:10', '2018-02-14 14:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `teacher_designation`, `created_at`, `updated_at`) VALUES
(1, 'Lecturer', '2018-02-14 13:50:47', '2018-02-14 13:50:47'),
(2, 'Assistance Professor', '2018-02-14 13:51:22', '2018-02-14 13:51:22'),
(3, 'Associate Professor', '2018-02-14 13:51:35', '2018-02-14 13:51:35'),
(4, 'Professor', '2018-02-14 13:51:44', '2018-02-14 13:51:44'),
(5, 'Part time', '2018-02-14 13:52:16', '2018-02-14 13:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_date`, `short_description`, `long_description`, `event_image`, `event_status`, `created_at`, `updated_at`) VALUES
(1, 'What does it mean to be LGBT', '2018-02-19 18:00:00', 'This year’s annual lecture, organised by the LGBT+ Staff Network, will be delivered by Asad Dhunna, a London based marketing and communications director', '<p>Series</p>\r\n\r\n<p><a href=\"http://www.ox.ac.uk/event/series/lgbt-history-month-lecture\">LGBT History Month Lecture</a></p>\r\n\r\n<p>Speaker</p>\r\n\r\n<p>Asad Dhunna</p>\r\n\r\n<p>Event date</p>\r\n\r\n<p>20 Feb 2018</p>\r\n\r\n<p>Event time</p>\r\n\r\n<p>18:00 - 19:30</p>\r\n\r\n<p>Venue</p>\r\n\r\n<p>Mathematical Institute</p>\r\n\r\n<p>Radcliffe Observatory Quarter</p>\r\n\r\n<p>Woodstock Road</p>\r\n\r\n<p>Oxford</p>\r\n\r\n<p>Oxfordshire</p>\r\n\r\n<p>OX2 6GG</p>\r\n\r\n<p>Venue details</p>\r\n\r\n<p>L3</p>\r\n\r\n<p>Event type</p>\r\n\r\n<p>Lectures and seminars</p>\r\n\r\n<p>Event cost</p>\r\n\r\n<p>Free</p>\r\n\r\n<p>Disabled access?</p>\r\n\r\n<p>Yes</p>\r\n\r\n<p>Booking required</p>\r\n\r\n<p>Recommended</p>\r\n\r\n<p>Online booking</p>\r\n\r\n<p><a href=\"https://www.eventbrite.co.uk/e/lgbt-history-month-lecture-2018-tickets-41276348670\">Book online here</a></p>\r\n\r\n<p>Further information</p>\r\n\r\n<p><a href=\"http://www.admin.ox.ac.uk/eop/sexualorientation/lgbthm/\">http://www.admin.ox.ac.uk/eop/sexualorientation/lgbthm/</a></p>', 'event-images/What does it mean to be LGBT.png', 1, '2018-02-14 13:34:12', '2018-02-14 13:34:12'),
(2, 'Can we build socially inclusive', '2018-02-21 18:00:00', 'Join former heads of state as they present their work on sustainability and social inclusion, in an event co-hosted with the World Leadership Alliance - Club de Madrid', '<p>It is generally assumed that current approaches to development and the environment are unsustainable and perhaps incompatible. Yet efforts to change direction have so far been piece-meal and of limited effect. Many people do not feel personally connected to the challenges or feel helpless in front of the magnitude of the problems, while powerful sectors have a vested interest in maintaining the status quo. It is therefore not surprising that the UN in adopting Agenda 2030 and the Sustainable Development Goals described it as &quot;transformative&quot;, but is the world ready for this paradigm shift and willing to support it?</p>\r\n\r\n<p>The members of the World Leadership Alliance - Club de Madrid, former Presidents and Prime Ministers, have been exercised by this challenge for some time and as part of its efforts convened a Working Group representing very diverse interests to consider the link between environmental sustainability and a shared society &ndash; one where everyone has a place within society and can play an active part in its well-being.</p>\r\n\r\n<p>Speaker</p>\r\n\r\n<p>Zlatko Lagumdzija, Wim Kok&nbsp;</p>\r\n\r\n<p>Event date 22 Feb 2018</p>\r\n\r\n<p>Event time 17:30</p>\r\n\r\n<p>Venu Blavatnik School of Government</p>\r\n\r\n<p>Radcliffe Observatory Quarter</p>\r\n\r\n<p>Woodstock Road</p>\r\n\r\n<p>Oxford</p>\r\n\r\n<p>Oxfordshire</p>\r\n\r\n<p>OX2 6GG</p>', 'event-images/Can we build socially inclusive.png', 1, '2018-02-14 13:36:51', '2018-02-14 13:36:51'),
(3, 'Contemporary Authors in Bioethics', '2018-03-06 18:00:00', 'What does it mean to be human? To be human is, in part, to be physically sexed and culturally gendered', '<p>technologies, the politics of women&#39;s health, and medical ethics. She is professor emeritus in the Department of Women&#39;s and Gender Studies at the University of Oregon. She graduated from Smith College and received her Ph.D. in History at the University of California, Berkeley. She is interested in both the history and contemporary analysis of medical ethics, gender, sexuality, and religion.</p>', 'event-images/Contemporary Authors in Bioethics.png', 1, '2018-02-14 15:13:13', '2018-02-14 15:13:13'),
(4, 'The Public Policy Challenges of Artificial Intelligence', '2018-03-06 18:00:00', 'Belfer Center for Science and International Affairs', '<p><strong>Eric Rosenbach</strong>&nbsp;is Co-Director of the Harvard Kennedy School&rsquo;s Belfer Center for Science and International Affairs and a Kennedy School Public Policy Lecturer. Rosenbach ​previously served as the Pentagon&rsquo;s ​Chief of Staff from 2015-17 and Assistant Secretary of Defense for Global Security​, responsible for leading all aspects of the Department&rsquo;s cyber activities and other key areas of defense policy. &nbsp;On Capitol Hill, Rosenbach ​served as national security advisor for then​-​Senator Chuck Hagel. In the private sector, Rosenbach worked as the Chief Security Officer for a large European telecommunications firm. &nbsp;He also led the cybersecurity practice of a global management consulting firm, advising the executives of Fortune 500 companies on strategic risk mitigation strategies.</p>', 'event-images/The Public Policy Challenges of Artificial Intelligence.png', 1, '2018-02-14 15:14:29', '2018-02-14 15:14:29'),
(5, 'The Book of Needs', '2018-03-01 18:00:00', 'created in 2015, shows just how pertinent these themes remain', '<p>The 81 drawings in&nbsp;<em>The Book of Needs</em>&nbsp;vary in size but are installed so as to be experienced as a single work, beginning with three issues of the&nbsp;<em>Courier</em>&nbsp;that introduce themes critical to the publication:&nbsp;<em>Race and History</em>&nbsp;by Claude Levi-Strauss,&nbsp;<em>Race and Culture</em>&nbsp;by Michel Leiris, and&nbsp;<em>Race and Biology</em>&nbsp;by L. C. Dunn. The exact images and articles chosen by the artist further highlight these subjects, with the dangerous consequences of racism and nationalism punctuating the expanse of drawings. While the installation speaks most directly to the years following World War II, the issues remain hauntingly relevant today.</p>', 'event-images/The Book of Needs.jpg', 1, '2018-02-14 15:23:44', '2018-02-14 15:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `holiday_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `holiday_title`, `holiday_type`, `start_date`, `end_date`, `details`, `holiday_status`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', 'Public Holiday', '2018-01-01', '2018-01-03', '<p>Lorem Ipsum is simply dummy text of the printing</p>', 1, '2018-02-14 15:36:26', '2018-02-14 15:36:26'),
(2, 'Memorial Day', 'Public Holiday', '2018-02-21', '2018-02-22', '<p>International Mother Language Day</p>', 1, '2018-02-14 15:38:11', '2018-02-14 15:38:11'),
(3, 'Christmas Day', 'Public Holiday', '2018-03-07', '2018-03-09', '<p>Lorem Ipsum is simply dummy text of the printing</p>', 1, '2018-02-14 15:38:48', '2018-02-14 15:38:48'),
(4, 'Annual Function', 'Public Holiday', '2018-04-09', '2018-03-23', '<p>Lorem Ipsum is simply dummy text of the printing</p>', 1, '2018-02-14 15:39:19', '2018-02-14 15:39:19'),
(5, 'New Year\'s Day', 'Optional Holiday', '2018-01-01', '2018-01-02', '<p><a href=\"https://www.timeanddate.com/holidays/bangladesh/new-year-day\">New Year&#39;s Day</a></p>', 1, '2018-02-14 15:42:29', '2018-02-14 15:42:29'),
(6, 'Independence Day', 'Public Holiday', '2018-03-26', '2018-03-26', '<p><a href=\"https://www.timeanddate.com/holidays/bangladesh/independence-day\">Independence Day</a></p>', 1, '2018-02-14 15:43:26', '2018-02-14 15:43:26'),
(7, 'Bengali New Year', 'Public Holiday', '2018-04-14', '2018-04-15', '<p>Government offices and most businesses are closed during a public holiday.</p>', 1, '2018-02-14 15:45:05', '2018-02-14 15:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE `libraries` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`id`, `department_name`, `book_name`, `author_name`, `book_id`, `book_description`, `book_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Database', 'Sofiq', 101, 'Database', 1, '2018-02-14 20:05:34', '2018-02-14 20:05:34'),
(2, '1', 'JAVA Programming', 'A.N.M Bazlur Rahman', 102, 'java', 1, '2018-02-14 20:05:52', '2018-02-14 20:05:52'),
(3, '1', 'C', 'sazzad', 103, 'C', 1, '2018-02-14 20:06:09', '2018-02-14 20:06:09'),
(4, '1', 'Data Structure', 'imran', 104, 'Data Structure', 1, '2018-02-14 20:06:36', '2018-02-14 20:06:36');

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
(3, '2018_02_11_180340_create_departments_table', 1),
(4, '2018_02_11_182417_create_categories_table', 1),
(5, '2018_02_11_220938_create_teachers_table', 1),
(6, '2018_02_11_232255_create_designations_table', 1),
(7, '2018_02_11_234100_create_courses_table', 1),
(8, '2018_02_12_034758_create_events_table', 1),
(9, '2018_02_12_050917_create_students_table', 1),
(10, '2018_02_12_082356_create_libraries_table', 1),
(11, '2018_02_13_071403_create_notices_table', 1),
(12, '2018_02_13_091549_create_slider_images_table', 1),
(13, '2018_02_13_104136_create_holidays_table', 1),
(14, '2018_02_13_115947_create_student_fees_table', 1),
(15, '2018_02_13_174856_create_staff_designations_table', 1),
(16, '2018_02_14_023606_create_staff_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notice_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_title`, `notice_date`, `notice_details`, `notice_status`, `created_at`, `updated_at`) VALUES
(1, 'Bus Shedule', '2018-02-14 12:09:16', '<p>Bus Shedule</p>', 1, '2018-02-14 20:08:18', '2018-02-14 20:09:16'),
(2, 'Job Circuler', '2018-02-03 08:00:00', '<p>Job Circuler</p>', 1, '2018-02-14 20:08:31', '2018-02-14 20:08:31'),
(3, 'Holiday', '2018-02-10 08:00:00', '<p>Holiday</p>', 1, '2018-02-14 20:09:07', '2018-02-14 20:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `image_name`, `slider_image`, `image_status`, `created_at`, `updated_at`) VALUES
(1, 'Students', 'slider-images/Students.png', 1, '2018-02-14 14:28:41', '2018-02-14 14:28:41'),
(2, 'campus1', 'slider-images/campus1.jpg', 1, '2018-02-14 14:29:16', '2018-02-14 14:29:16'),
(3, 'campus2', 'slider-images/campus2.png', 1, '2018-02-14 14:29:31', '2018-02-14 14:29:31'),
(4, 'campus3', 'slider-images/campus3.png', 1, '2018-02-14 14:29:42', '2018-02-14 14:29:42'),
(6, 'campus5', 'slider-images/campus5.jpg', 1, '2018-02-14 14:30:38', '2018-02-14 14:30:38'),
(7, 'campus5', 'slider-images/campus5.jpg', 1, '2018-02-14 14:32:07', '2018-02-14 14:32:07'),
(8, 'campus9', 'slider-images/campus9.jpg', 1, '2018-02-14 14:33:12', '2018-02-14 14:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_name`, `staff_email`, `staff_mobile`, `department_id`, `designation_id`, `staff_education`, `staff_address`, `staff_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rajesh', 'raj@gmail.com', '4444565756', '1', '1', 'SSC', 'Mirpur 10', 'std1.jpg', 1, '2018-02-14 15:50:55', '2018-02-14 15:50:55'),
(2, 'Pooja Patel', 'pooja@gmail.com', '444786876', '2', '1', 'SSC', '22,tilak appt. surat', 'std2.jpg', 1, '2018-02-14 15:51:54', '2018-02-14 15:51:54'),
(3, 'Sarah Smith', 'sarah@gmail.com', '44455546456', '3', '1', 'SSC', '22,tilak appt. surat', 'std3.jpg', 1, '2018-02-14 15:52:40', '2018-02-14 15:52:40'),
(4, 'Jay Soni', 'kenh@gmail.com', '444543564', '4', '1', 'B.com, B.Ed', '34, Prabhat Appartment, New Delhi', 'std5.jpg', 1, '2018-02-14 15:54:25', '2018-02-14 15:54:25'),
(5, 'Jayesh', 'test@example.com', '1234567890', '5', '1', 'B.com, B.Ed', '34,Moteejhil, Dhaka', 'std7.jpg', 1, '2018-02-14 15:55:33', '2018-02-14 15:55:33'),
(8, 'Maruf', 'maruf@gmail.com', '01835523962', '1', '6', 'cse', 'dhaka', 'event-images/Maruf.png', 1, '2018-02-14 20:33:10', '2018-02-14 20:33:10'),
(9, 'Sofiq', 'Sofiq@gmail.com', '535353', '2', '8', 'iit', 'dhaka', 'staff-images/Sofiq.jpg', 1, '2018-02-14 20:52:30', '2018-02-14 20:52:30'),
(10, 'imran', 'imran@gmail.com', '45357353753753', '11', '9', 'cse', 'dhaka', 'staff-images/imran.jpg', 1, '2018-02-14 20:53:31', '2018-02-14 20:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designations`
--

CREATE TABLE `staff_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_designations`
--

INSERT INTO `staff_designations` (`id`, `staff_designation`, `created_at`, `updated_at`) VALUES
(1, 'Clerk', '2018-02-14 15:28:24', '2018-02-14 15:28:24'),
(2, 'Librarian', '2018-02-14 15:28:34', '2018-02-14 15:28:34'),
(3, 'Peon', '2018-02-14 15:28:58', '2018-02-14 15:28:58'),
(4, 'Purchase Officer', '2018-02-14 15:29:08', '2018-02-14 15:29:08'),
(5, 'Receptionist', '2018-02-14 15:29:20', '2018-02-14 15:29:20'),
(6, 'Lab Assistent', '2018-02-14 15:29:30', '2018-02-14 15:29:30'),
(7, 'Driver', '2018-02-14 15:29:38', '2018-02-14 15:29:38'),
(8, 'Programmer', '2018-02-14 20:51:29', '2018-02-14 20:51:29'),
(9, 'Section Officer', '2018-02-14 20:51:37', '2018-02-14 20:51:37'),
(10, 'Administration Officer', '2018-02-14 20:51:50', '2018-02-14 20:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_reg_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_class_roll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_admission_date` date NOT NULL,
  `student_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_status` tinyint(4) NOT NULL,
  `admission_fee` int(11) NOT NULL,
  `admission_fee_status` tinyint(4) NOT NULL,
  `semester_fee` int(11) NOT NULL,
  `semester_fee_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `student_email`, `student_mobile`, `department_id`, `student_reg_no`, `student_class_roll`, `student_admission_date`, `student_address`, `student_image`, `student_status`, `admission_fee`, `admission_fee_status`, `semester_fee`, `semester_fee_status`, `created_at`, `updated_at`) VALUES
(1, 'Sazzad', 'sazzad@gmail.com', '01835523962', '2', '2018-0001', 'CSE-01-001', '2018-02-14', '<p>Dhaka</p>', '5.jpg', 1, 25000, 1, 45000, 0, '2018-02-14 16:57:09', '2018-02-14 16:57:09'),
(2, 'Mushfiqur Rahman', 'mushfiq@gmail.com', '1521454482', '2', '00012456', 'cse986527', '2018-01-06', '<p>Khulna, Bangladesh</p>', '14910385_1164557596968330_4086560178095874417_n.jpg', 1, 2800000, 1, 7000, 1, '2018-02-14 14:36:32', '2018-02-14 14:36:32'),
(3, 'Muhammad Imran', 'imran@gmail.com', '0145298726', '11', '2018-002', 'Phy-0001', '2018-02-01', '<p>Barishal, Bangladesh</p>', 'v800.jpg', 1, 10000, 0, 2000, 1, '2018-02-14 14:41:21', '2018-02-14 14:41:21'),
(4, 'Maruf Hoshen', 'maruf@hotmail.com', '01676254896', '3', '2017-001', 'EEE-001', '2018-02-15', '<p>Barishal, Bangladesh</p>', 'Screenshot_3.png', 1, 80000, 1, 3000, 1, '2018-02-14 14:43:38', '2018-02-14 14:43:38'),
(5, 'Shammi Diba', 'diba@yahoo.com', '0874531586', '4', '2018-0087', 'INFS-5423', '2018-01-01', '<p>Dhaka, Bangladesh</p>', 'Screenshot_4.png', 1, 8000000, 1, 63180, 1, '2018-02-14 14:46:57', '2018-02-14 14:46:57'),
(6, 'Hasna Akter', 'hasna@yahoo.com', '04587235621', '9', '2018-0048', 'BBA-1862', '2018-01-27', '<p>Chittagong, Bangladesh</p>', 'Screenshot_1.png', 1, 15000080, 1, 50000, 1, '2018-02-14 14:49:23', '2018-02-14 14:49:23'),
(7, 'Munni', 'munni@gmail.com', '0182563478', '6', '2017-98', 'chem-89562', '2017-07-10', '<p>Noakhali, Bangladesh</p>', '18671252_1898097360472054_5703889064532683268_n.jpg', 1, 856321, 1, 8500, 1, '2018-02-14 14:51:59', '2018-02-14 14:51:59'),
(8, 'Hasan ali', 'hasan@gmail.com', '0171156482', '7', '2017-698', 'B.C-654', '2017-01-11', '<p>Munshigonj</p>', '16998082_1054658807972989_998541267385621454_n.jpg', 1, 2800000, 1, 524, 1, '2018-02-14 14:53:59', '2018-02-14 14:53:59'),
(9, 'Dedar Hossain', 'dedar@gmail.com', '054893248', '10', '2017-963', 'B-0001', '2017-12-12', '<p>Laxmipur</p>', '10985281_930672050296719_3382088250458272303_n.jpg', 1, 862479, 1, 8745, 0, '2018-02-14 14:55:52', '2018-02-14 14:55:52'),
(10, 'Akm Ibrahim Mahbub', 'mahbub@gmail.com', '017452365', '10', '2018-0089', 'B-0086', '2018-02-01', '<p>Malaysia</p>', '26167527_1921319791230656_5001822552602135580_n.jpg', 1, 50000, 1, 10000, 0, '2018-02-14 14:58:05', '2018-02-14 14:58:05'),
(11, 'Rajesh Bhatt', 'rajesh@gmail.com', '4444565756', '2', '2017-0693', 'CSE-0152', '2018-02-13', '<p>New jercy</p>', 'std5.jpg', 1, 80000, 1, 7000, 1, '2018-02-14 15:34:45', '2018-02-14 15:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_roll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_date` date NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_name`, `teacher_email`, `teacher_mobile`, `department_id`, `designation_id`, `teacher_education`, `teacher_address`, `teacher_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prof. M.A Hasem', 'hasem@gmail.com', '01737786398', '2', '4', 'PHD on Artificial Intelligence', 'Jessore, Bangladesh', 'teacher-images/Musfiq.jpg', 1, '2018-02-14 13:57:22', '2018-02-14 13:57:22'),
(2, 'S.M Sofiqul Islam', 'sofiq@gmail.com', '0154789563', '1', '1', 'M.S IIT', 'Gopalgonj, Bangladesh', 'teacher-images/Musfiq.jpg', 1, '2018-02-14 13:59:00', '2018-02-14 13:59:00'),
(3, 'Abul Kalam', 'kalam@gmail.com', '01721457896', '3', '4', 'PhD', 'Dhaka, Bangladesh', 'teacher-images/Musfiq.jpg', 1, '2018-02-14 14:02:34', '2018-02-14 14:02:34'),
(4, 'Shahjahan', 'shahjahan@hotmail.com', '014547862', '4', '3', 'Electrical & Electronics', 'Dhaka, Bangladesh', 'teacher-images/Musfiq.jpg', 1, '2018-02-14 14:05:35', '2018-02-14 14:05:35'),
(5, 'Mustafa Saroar', 'saroar@hotmail.com', '01852469782', '5', '2', 'Urban and Regional Planning', 'Chittagong, Bangladesh', 'teacher-images/Musfiq.jpg', 1, '2018-02-14 14:07:03', '2018-02-14 14:07:03'),
(6, 'Musfiq', 'm@gmail.com', '5353553', '1', '1', 'cse', 'dhaka', 'teacher-images/Musfiq.jpg', 1, '2018-02-14 20:50:24', '2018-02-14 20:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Imran', 'md.imran300028@gmail.com', '$2y$10$A7mlakY8t852Fq4Zf8aFeud9OThz7NkBH0yjb1/eIoPwzm93/NbMC', NULL, '2018-02-14 16:51:17', '2018-02-14 16:51:17'),
(2, 'sofiqul', 'sofiqul@gmail.com', '$2y$10$mJuvwKU59fU1/kFneiQAo.iXRZdkgJAympWxavDFnEyN5C22f1G/i', 'XfjmdM985xfMq3sS0ClRVNIwoNlCKfHM9EbA6JL8YFXL1iOqGshK5SFqEJG3', '2018-02-14 20:05:12', '2018-02-14 20:05:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_name_unique` (`department_name`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_staff_email_unique` (`staff_email`),
  ADD UNIQUE KEY `staff_staff_mobile_unique` (`staff_mobile`);

--
-- Indexes for table `staff_designations`
--
ALTER TABLE `staff_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_email_unique` (`student_email`),
  ADD UNIQUE KEY `students_student_mobile_unique` (`student_mobile`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_teacher_email_unique` (`teacher_email`),
  ADD UNIQUE KEY `teachers_teacher_mobile_unique` (`teacher_mobile`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_designations`
--
ALTER TABLE `staff_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
