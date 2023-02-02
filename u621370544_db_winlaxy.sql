-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2023 at 07:03 AM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u621370544_db_winlaxy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `password`) VALUES
(1, 'Winlaxynx', 'winlaxynx@gmail.com', 'Winlaxy@123#@');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`) VALUES
(1, 'North and Middle Andaman', 32),
(2, 'South Andaman', 32),
(3, 'Nicobar', 32),
(4, 'Adilabad', 1),
(5, 'Anantapur', 1),
(6, 'Chittoor', 1),
(7, 'East Godavari', 1),
(8, 'Guntur', 1),
(9, 'Hyderabad', 1),
(10, 'Kadapa', 1),
(11, 'Karimnagar', 1),
(12, 'Khammam', 1),
(13, 'Krishna', 1),
(14, 'Kurnool', 1),
(15, 'Mahbubnagar', 1),
(16, 'Medak', 1),
(17, 'Nalgonda', 1),
(18, 'Nellore', 1),
(19, 'Nizamabad', 1),
(20, 'Prakasam', 1),
(21, 'Rangareddi', 1),
(22, 'Srikakulam', 1),
(23, 'Vishakhapatnam', 1),
(24, 'Vizianagaram', 1),
(25, 'Warangal', 1),
(26, 'West Godavari', 1),
(27, 'Anjaw', 3),
(28, 'Changlang', 3),
(29, 'East Kameng', 3),
(30, 'Lohit', 3),
(31, 'Lower Subansiri', 3),
(32, 'Papum Pare', 3),
(33, 'Tirap', 3),
(34, 'Dibang Valley', 3),
(35, 'Upper Subansiri', 3),
(36, 'West Kameng', 3),
(37, 'Barpeta', 2),
(38, 'Bongaigaon', 2),
(39, 'Cachar', 2),
(40, 'Darrang', 2),
(41, 'Dhemaji', 2),
(42, 'Dhubri', 2),
(43, 'Dibrugarh', 2),
(44, 'Goalpara', 2),
(45, 'Golaghat', 2),
(46, 'Hailakandi', 2),
(47, 'Jorhat', 2),
(48, 'Karbi Anglong', 2),
(49, 'Karimganj', 2),
(50, 'Kokrajhar', 2),
(51, 'Lakhimpur', 2),
(52, 'Marigaon', 2),
(53, 'Nagaon', 2),
(54, 'Nalbari', 2),
(55, 'North Cachar Hills', 2),
(56, 'Sibsagar', 2),
(57, 'Sonitpur', 2),
(58, 'Tinsukia', 2),
(59, 'Araria', 4),
(60, 'Aurangabad', 4),
(61, 'Banka', 4),
(62, 'Begusarai', 4),
(63, 'Bhagalpur', 4),
(64, 'Bhojpur', 4),
(65, 'Buxar', 4),
(66, 'Darbhanga', 4),
(67, 'Purba Champaran', 4),
(68, 'Gaya', 4),
(69, 'Gopalganj', 4),
(70, 'Jamui', 4),
(71, 'Jehanabad', 4),
(72, 'Khagaria', 4),
(73, 'Kishanganj', 4),
(74, 'Kaimur', 4),
(75, 'Katihar', 4),
(76, 'Lakhisarai', 4),
(77, 'Madhubani', 4),
(78, 'Munger', 4),
(79, 'Madhepura', 4),
(80, 'Muzaffarpur', 4),
(81, 'Nalanda', 4),
(82, 'Nawada', 4),
(83, 'Patna', 4),
(84, 'Purnia', 4),
(85, 'Rohtas', 4),
(86, 'Saharsa', 4),
(87, 'Samastipur', 4),
(88, 'Sheohar', 4),
(89, 'Sheikhpura', 4),
(90, 'Saran', 4),
(91, 'Sitamarhi', 4),
(92, 'Supaul', 4),
(93, 'Siwan', 4),
(94, 'Vaishali', 4),
(95, 'Pashchim Champaran', 4),
(96, 'Bastar', 36),
(97, 'Bilaspur', 36),
(98, 'Dantewada', 36),
(99, 'Dhamtari', 36),
(100, 'Durg', 36),
(101, 'Jashpur', 36),
(102, 'Janjgir-Champa', 36),
(103, 'Korba', 36),
(104, 'Koriya', 36),
(105, 'Kanker', 36),
(106, 'Kawardha', 36),
(107, 'Mahasamund', 36),
(108, 'Raigarh', 36),
(109, 'Rajnandgaon', 36),
(110, 'Raipur', 36),
(111, 'Surguja', 36),
(112, 'Diu', 29),
(113, 'Daman', 29),
(114, 'Central Delhi', 25),
(115, 'East Delhi', 25),
(116, 'New Delhi', 25),
(117, 'North Delhi', 25),
(118, 'North East Delhi', 25),
(119, 'North West Delhi', 25),
(120, 'South Delhi', 25),
(121, 'South West Delhi', 25),
(122, 'West Delhi', 25),
(123, 'North Goa', 26),
(124, 'South Goa', 26),
(125, 'Ahmedabad', 5),
(126, 'Amreli District', 5),
(127, 'Anand', 5),
(128, 'Banaskantha', 5),
(129, 'Bharuch', 5),
(130, 'Bhavnagar', 5),
(131, 'Dahod', 5),
(132, 'The Dangs', 5),
(133, 'Gandhinagar', 5),
(134, 'Jamnagar', 5),
(135, 'Junagadh', 5),
(136, 'Kutch', 5),
(137, 'Kheda', 5),
(138, 'Mehsana', 5),
(139, 'Narmada', 5),
(140, 'Navsari', 5),
(141, 'Patan', 5),
(142, 'Panchmahal', 5),
(143, 'Porbandar', 5),
(144, 'Rajkot', 5),
(145, 'Sabarkantha', 5),
(146, 'Surendranagar', 5),
(147, 'Surat', 5),
(148, 'Vadodara', 5),
(149, 'Valsad', 5),
(150, 'Ambala', 6),
(151, 'Bhiwani', 6),
(152, 'Faridabad', 6),
(153, 'Fatehabad', 6),
(154, 'Gurgaon', 6),
(155, 'Hissar', 6),
(156, 'Jhajjar', 6),
(157, 'Jind', 6),
(158, 'Karnal', 6),
(159, 'Kaithal', 6),
(160, 'Kurukshetra', 6),
(161, 'Mahendragarh', 6),
(162, 'Mewat', 6),
(163, 'Panchkula', 6),
(164, 'Panipat', 6),
(165, 'Rewari', 6),
(166, 'Rohtak', 6),
(167, 'Sirsa', 6),
(168, 'Sonepat', 6),
(169, 'Yamuna Nagar', 6),
(170, 'Palwal', 6),
(171, 'Bilaspur', 7),
(172, 'Chamba', 7),
(173, 'Hamirpur', 7),
(174, 'Kangra', 7),
(175, 'Kinnaur', 7),
(176, 'Kulu', 7),
(177, 'Lahaul and Spiti', 7),
(178, 'Mandi', 7),
(179, 'Shimla', 7),
(180, 'Sirmaur', 7),
(181, 'Solan', 7),
(182, 'Una', 7),
(183, 'Anantnag', 8),
(184, 'Badgam', 8),
(185, 'Bandipore', 8),
(186, 'Baramula', 8),
(187, 'Doda', 8),
(188, 'Jammu', 8),
(189, 'Kargil', 8),
(190, 'Kathua', 8),
(191, 'Kupwara', 8),
(192, 'Leh', 8),
(193, 'Poonch', 8),
(194, 'Pulwama', 8),
(195, 'Rajauri', 8),
(196, 'Srinagar', 8),
(197, 'Samba', 8),
(198, 'Udhampur', 8),
(199, 'Bokaro', 34),
(200, 'Chatra', 34),
(201, 'Deoghar', 34),
(202, 'Dhanbad', 34),
(203, 'Dumka', 34),
(204, 'Purba Singhbhum', 34),
(205, 'Garhwa', 34),
(206, 'Giridih', 34),
(207, 'Godda', 34),
(208, 'Gumla', 34),
(209, 'Hazaribagh', 34),
(210, 'Koderma', 34),
(211, 'Lohardaga', 34),
(212, 'Pakur', 34),
(213, 'Palamu', 34),
(214, 'Ranchi', 34),
(215, 'Sahibganj', 34),
(216, 'Seraikela and Kharsawan', 34),
(217, 'Pashchim Singhbhum', 34),
(218, 'Ramgarh', 34),
(219, 'Bidar', 9),
(220, 'Belgaum', 9),
(221, 'Bijapur', 9),
(222, 'Bagalkot', 9),
(223, 'Bellary', 9),
(224, 'Bangalore Rural District', 9),
(225, 'Bangalore Urban District', 9),
(226, 'Chamarajnagar', 9),
(227, 'Chikmagalur', 9),
(228, 'Chitradurga', 9),
(229, 'Davanagere', 9),
(230, 'Dharwad', 9),
(231, 'Dakshina Kannada', 9),
(232, 'Gadag', 9),
(233, 'Gulbarga', 9),
(234, 'Hassan', 9),
(235, 'Haveri District', 9),
(236, 'Kodagu', 9),
(237, 'Kolar', 9),
(238, 'Koppal', 9),
(239, 'Mandya', 9),
(240, 'Mysore', 9),
(241, 'Raichur', 9),
(242, 'Shimoga', 9),
(243, 'Tumkur', 9),
(244, 'Udupi', 9),
(245, 'Uttara Kannada', 9),
(246, 'Ramanagara', 9),
(247, 'Chikballapur', 9),
(248, 'Yadagiri', 9),
(249, 'Alappuzha', 10),
(250, 'Ernakulam', 10),
(251, 'Idukki', 10),
(252, 'Kollam', 10),
(253, 'Kannur', 10),
(254, 'Kasaragod', 10),
(255, 'Kottayam', 10),
(256, 'Kozhikode', 10),
(257, 'Malappuram', 10),
(258, 'Palakkad', 10),
(259, 'Pathanamthitta', 10),
(260, 'Thrissur', 10),
(261, 'Thiruvananthapuram', 10),
(262, 'Wayanad', 10),
(263, 'Alirajpur', 11),
(264, 'Anuppur', 11),
(265, 'Ashok Nagar', 11),
(266, 'Balaghat', 11),
(267, 'Barwani', 11),
(268, 'Betul', 11),
(269, 'Bhind', 11),
(270, 'Bhopal', 11),
(271, 'Burhanpur', 11),
(272, 'Chhatarpur', 11),
(273, 'Chhindwara', 11),
(274, 'Damoh', 11),
(275, 'Datia', 11),
(276, 'Dewas', 11),
(277, 'Dhar', 11),
(278, 'Dindori', 11),
(279, 'Guna', 11),
(280, 'Gwalior', 11),
(281, 'Harda', 11),
(282, 'Hoshangabad', 11),
(283, 'Indore', 11),
(284, 'Jabalpur', 11),
(285, 'Jhabua', 11),
(286, 'Katni', 11),
(287, 'Khandwa', 11),
(288, 'Khargone', 11),
(289, 'Mandla', 11),
(290, 'Mandsaur', 11),
(291, 'Morena', 11),
(292, 'Narsinghpur', 11),
(293, 'Neemuch', 11),
(294, 'Panna', 11),
(295, 'Rewa', 11),
(296, 'Rajgarh', 11),
(297, 'Ratlam', 11),
(298, 'Raisen', 11),
(299, 'Sagar', 11),
(300, 'Satna', 11),
(301, 'Sehore', 11),
(302, 'Seoni', 11),
(303, 'Shahdol', 11),
(304, 'Shajapur', 11),
(305, 'Sheopur', 11),
(306, 'Shivpuri', 11),
(307, 'Sidhi', 11),
(308, 'Singrauli', 11),
(309, 'Tikamgarh', 11),
(310, 'Ujjain', 11),
(311, 'Umaria', 11),
(312, 'Vidisha', 11),
(313, 'Ahmednagar', 12),
(314, 'Akola', 12),
(315, 'Amrawati', 12),
(316, 'Aurangabad', 12),
(317, 'Bhandara', 12),
(318, 'Beed', 12),
(319, 'Buldhana', 12),
(320, 'Chandrapur', 12),
(321, 'Dhule', 12),
(322, 'Gadchiroli', 12),
(323, 'Gondiya', 12),
(324, 'Hingoli', 12),
(325, 'Jalgaon', 12),
(326, 'Jalna', 12),
(327, 'Kolhapur', 12),
(328, 'Latur', 12),
(329, 'Mumbai City', 12),
(330, 'Mumbai suburban', 12),
(331, 'Nandurbar', 12),
(332, 'Nanded', 12),
(333, 'Nagpur', 12),
(334, 'Nashik', 12),
(335, 'Osmanabad', 12),
(336, 'Parbhani', 12),
(337, 'Pune', 12),
(338, 'Raigad', 12),
(339, 'Ratnagiri', 12),
(340, 'Sindhudurg', 12),
(341, 'Sangli', 12),
(342, 'Solapur', 12),
(343, 'Satara', 12),
(344, 'Thane', 12),
(345, 'Wardha', 12),
(346, 'Washim', 12),
(347, 'Yavatmal', 12),
(348, 'Bishnupur', 13),
(349, 'Churachandpur', 13),
(350, 'Chandel', 13),
(351, 'Imphal East', 13),
(352, 'Senapati', 13),
(353, 'Tamenglong', 13),
(354, 'Thoubal', 13),
(355, 'Ukhrul', 13),
(356, 'Imphal West', 13),
(357, 'East Garo Hills', 14),
(358, 'East Khasi Hills', 14),
(359, 'Jaintia Hills', 14),
(360, 'Ri-Bhoi', 14),
(361, 'South Garo Hills', 14),
(362, 'West Garo Hills', 14),
(363, 'West Khasi Hills', 14),
(364, 'Aizawl', 15),
(365, 'Champhai', 15),
(366, 'Kolasib', 15),
(367, 'Lawngtlai', 15),
(368, 'Lunglei', 15),
(369, 'Mamit', 15),
(370, 'Saiha', 15),
(371, 'Serchhip', 15),
(372, 'Dimapur', 16),
(373, 'Kohima', 16),
(374, 'Mokokchung', 16),
(375, 'Mon', 16),
(376, 'Phek', 16),
(377, 'Tuensang', 16),
(378, 'Wokha', 16),
(379, 'Zunheboto', 16),
(380, 'Angul', 17),
(381, 'Boudh', 17),
(382, 'Bhadrak', 17),
(383, 'Bolangir', 17),
(384, 'Bargarh', 17),
(385, 'Baleswar', 17),
(386, 'Cuttack', 17),
(387, 'Debagarh', 17),
(388, 'Dhenkanal', 17),
(389, 'Ganjam', 17),
(390, 'Gajapati', 17),
(391, 'Jharsuguda', 17),
(392, 'Jajapur', 17),
(393, 'Jagatsinghpur', 17),
(394, 'Khordha', 17),
(395, 'Kendujhar', 17),
(396, 'Kalahandi', 17),
(397, 'Kandhamal', 17),
(398, 'Koraput', 17),
(399, 'Kendrapara', 17),
(400, 'Malkangiri', 17),
(401, 'Mayurbhanj', 17),
(402, 'Nabarangpur', 17),
(403, 'Nuapada', 17),
(404, 'Nayagarh', 17),
(405, 'Puri', 17),
(406, 'Rayagada', 17),
(407, 'Sambalpur', 17),
(408, 'Subarnapur', 17),
(409, 'Sundargarh', 17),
(410, 'Karaikal', 27),
(411, 'Mahe', 27),
(412, 'Puducherry', 27),
(413, 'Yanam', 27),
(414, 'Amritsar', 18),
(415, 'Bathinda', 18),
(416, 'Firozpur', 18),
(417, 'Faridkot', 18),
(418, 'Fatehgarh Sahib', 18),
(419, 'Gurdaspur', 18),
(420, 'Hoshiarpur', 18),
(421, 'Jalandhar', 18),
(422, 'Kapurthala', 18),
(423, 'Ludhiana', 18),
(424, 'Mansa', 18),
(425, 'Moga', 18),
(426, 'Mukatsar', 18),
(427, 'Nawan Shehar', 18),
(428, 'Patiala', 18),
(429, 'Rupnagar', 18),
(430, 'Sangrur', 18),
(431, 'Ajmer', 19),
(432, 'Alwar', 19),
(433, 'Bikaner', 19),
(434, 'Barmer', 19),
(435, 'Banswara', 19),
(436, 'Bharatpur', 19),
(437, 'Baran', 19),
(438, 'Bundi', 19),
(439, 'Bhilwara', 19),
(440, 'Churu', 19),
(441, 'Chittorgarh', 19),
(442, 'Dausa', 19),
(443, 'Dholpur', 19),
(444, 'Dungapur', 19),
(445, 'Ganganagar', 19),
(446, 'Hanumangarh', 19),
(447, 'Juhnjhunun', 19),
(448, 'Jalore', 19),
(449, 'Jodhpur', 19),
(450, 'Jaipur', 19),
(451, 'Jaisalmer', 19),
(452, 'Jhalawar', 19),
(453, 'Karauli', 19),
(454, 'Kota', 19),
(455, 'Nagaur', 19),
(456, 'Pali', 19),
(457, 'Pratapgarh', 19),
(458, 'Rajsamand', 19),
(459, 'Sikar', 19),
(460, 'Sawai Madhopur', 19),
(461, 'Sirohi', 19),
(462, 'Tonk', 19),
(463, 'Udaipur', 19),
(464, 'East Sikkim', 20),
(465, 'North Sikkim', 20),
(466, 'South Sikkim', 20),
(467, 'West Sikkim', 20),
(468, 'Ariyalur', 21),
(469, 'Chennai', 21),
(470, 'Coimbatore', 21),
(471, 'Cuddalore', 21),
(472, 'Dharmapuri', 21),
(473, 'Dindigul', 21),
(474, 'Erode', 21),
(475, 'Kanchipuram', 21),
(476, 'Kanyakumari', 21),
(477, 'Karur', 21),
(478, 'Madurai', 21),
(479, 'Nagapattinam', 21),
(480, 'The Nilgiris', 21),
(481, 'Namakkal', 21),
(482, 'Perambalur', 21),
(483, 'Pudukkottai', 21),
(484, 'Ramanathapuram', 21),
(485, 'Salem', 21),
(486, 'Sivagangai', 21),
(487, 'Tiruppur', 21),
(488, 'Tiruchirappalli', 21),
(489, 'Theni', 21),
(490, 'Tirunelveli', 21),
(491, 'Thanjavur', 21),
(492, 'Thoothukudi', 21),
(493, 'Thiruvallur', 21),
(494, 'Thiruvarur', 21),
(495, 'Tiruvannamalai', 21),
(496, 'Vellore', 21),
(497, 'Villupuram', 21),
(498, 'Dhalai', 22),
(499, 'North Tripura', 22),
(500, 'South Tripura', 22),
(501, 'West Tripura', 22),
(502, 'Almora', 33),
(503, 'Bageshwar', 33),
(504, 'Chamoli', 33),
(505, 'Champawat', 33),
(506, 'Dehradun', 33),
(507, 'Haridwar', 33),
(508, 'Nainital', 33),
(509, 'Pauri Garhwal', 33),
(510, 'Pithoragharh', 33),
(511, 'Rudraprayag', 33),
(512, 'Tehri Garhwal', 33),
(513, 'Udham Singh Nagar', 33),
(514, 'Uttarkashi', 33),
(515, 'Agra', 23),
(516, 'Allahabad', 23),
(517, 'Aligarh', 23),
(518, 'Ambedkar Nagar', 23),
(519, 'Auraiya', 23),
(520, 'Azamgarh', 23),
(521, 'Barabanki', 23),
(522, 'Badaun', 23),
(523, 'Bagpat', 23),
(524, 'Bahraich', 23),
(525, 'Bijnor', 23),
(526, 'Ballia', 23),
(527, 'Banda', 23),
(528, 'Balrampur', 23),
(529, 'Bareilly', 23),
(530, 'Basti', 23),
(531, 'Bulandshahr', 23),
(532, 'Chandauli', 23),
(533, 'Chitrakoot', 23),
(534, 'Deoria', 23),
(535, 'Etah', 23),
(536, 'Kanshiram Nagar', 23),
(537, 'Etawah', 23),
(538, 'Firozabad', 23),
(539, 'Farrukhabad', 23),
(540, 'Fatehpur', 23),
(541, 'Faizabad', 23),
(542, 'Gautam Buddha Nagar', 23),
(543, 'Gonda', 23),
(544, 'Ghazipur', 23),
(545, 'Gorkakhpur', 23),
(546, 'Ghaziabad', 23),
(547, 'Hamirpur', 23),
(548, 'Hardoi', 23),
(549, 'Mahamaya Nagar', 23),
(550, 'Jhansi', 23),
(551, 'Jalaun', 23),
(552, 'Jyotiba Phule Nagar', 23),
(553, 'Jaunpur District', 23),
(554, 'Kanpur Dehat', 23),
(555, 'Kannauj', 23),
(556, 'Kanpur Nagar', 23),
(557, 'Kaushambi', 23),
(558, 'Kushinagar', 23),
(559, 'Lalitpur', 23),
(560, 'Lakhimpur Kheri', 23),
(561, 'Lucknow', 23),
(562, 'Mau', 23),
(563, 'Meerut', 23),
(564, 'Maharajganj', 23),
(565, 'Mahoba', 23),
(566, 'Mirzapur', 23),
(567, 'Moradabad', 23),
(568, 'Mainpuri', 23),
(569, 'Mathura', 23),
(570, 'Muzaffarnagar', 23),
(571, 'Pilibhit', 23),
(572, 'Pratapgarh', 23),
(573, 'Rampur', 23),
(574, 'Rae Bareli', 23),
(575, 'Saharanpur', 23),
(576, 'Sitapur', 23),
(577, 'Shahjahanpur', 23),
(578, 'Sant Kabir Nagar', 23),
(579, 'Siddharthnagar', 23),
(580, 'Sonbhadra', 23),
(581, 'Sant Ravidas Nagar', 23),
(582, 'Sultanpur', 23),
(583, 'Shravasti', 23),
(584, 'Unnao', 23),
(585, 'Varanasi', 23),
(586, 'Birbhum', 24),
(587, 'Bankura', 24),
(588, 'Bardhaman', 24),
(589, 'Darjeeling', 24),
(590, 'Dakshin Dinajpur', 24),
(591, 'Hooghly', 24),
(592, 'Howrah', 24),
(593, 'Jalpaiguri', 24),
(594, 'Cooch Behar', 24),
(595, 'Kolkata', 24),
(596, 'Malda', 24),
(597, 'Midnapore', 24),
(598, 'Murshidabad', 24),
(599, 'Nadia', 24),
(600, 'North 24 Parganas', 24),
(601, 'South 24 Parganas', 24),
(602, 'Purulia', 24),
(603, 'Uttar Dinajpur', 24);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Phoenix Mall', 'rohan@gmail.com', 'Test', 'hi'),
(2, 'Salim', 'salim@gmail.com', 'Test', 'hi'),
(3, 'himmat', 'dilsebedse@gmail.com', 'bedse', 'xccXcxcxc az  ZZc  adad ada  d  SALIM BHAI'),
(4, 'Rohan', 'rohan@gmail.com', 'Test', 'hi'),
(5, 'Salim', 'salimshaikh512512@gmail.com', 'Test', 'hi'),
(6, 'Rohan', 'rohan@gmail.com', 'Test', 'hi'),
(7, 'Henryfah', 'RookTessa9292@o2.pl', 'Make thousands of bucks. Pay nothing.', 'Online job can be really effective if you use this Robot. https://fah.bode-roesch.de/fah '),
(8, 'Henryfah', 'RookTessa9292@o2.pl', 'Make your computer to be you earning instrument.', 'This robot can bring you money 24/7. https://fah.bode-roesch.de/fah '),
(9, 'Henryfah', 'RookTessa9292@o2.pl', 'Even a child knows how to make money. Do you?', 'Financial robot is your success formula is found. Learn more about it. https://fah.bode-roesch.de/fah '),
(10, 'Henryfah', 'RookTessa9292@o2.pl', 'See how Robot makes $1000 from $1 of investment.', 'Let your money grow into the capital with this Robot. https://fah.bode-roesch.de/fah '),
(11, 'Henryfah', 'rikandvik@mailme.dk', 'We have found the fastest way to be rich. Find it out here.', 'Have no money? It’s easy to earn them online here. https://fah.bode-roesch.de/fah '),
(12, 'Henryfah', 'gerto@mail-online.dk', 'Make money in the internet using this Bot. It really works!', 'Financial robot is your success formula is found. Learn more about it. https://fah.bode-roesch.de/fah '),
(13, 'Henryfah', 'interplazahim@mailme.dk', 'Make dollars staying at home and launched this Bot.', 'Online job can be really effective if you use this Robot. https://fah.bode-roesch.de/fah '),
(14, 'Henryfah', 'zodiak1999@mail.ru', 'The additional income is available for everyone using this robot.', 'Find out about the fastest way for a financial independence. https://fah.bode-roesch.de/fah '),
(15, 'Henryfah', 'jensermand@mail-online.dk', 'Your money keep grow 24/7 if you use the financial Robot.', 'Feel free to buy everything you want with the additional income. https://fah.bode-roesch.de/fah '),
(16, 'Henryfah', 'ygoslavluba@mailme.dk', 'Invest $1 today to make $1000 tomorrow.', 'Using this Robot is the best way to make you rich. https://fah.bode-roesch.de/fah '),
(17, 'Henryfah', '7913_7913@forum.dk', 'No need to work anymore. Just launch the robot.', 'Need some more money? Robot will earn them really fast. https://fah.bode-roesch.de/fah '),
(18, 'Henryfah', 'pvlkpr@mailme.dk', 'Financial robot guarantees everyone stability and income.', 'Launch the best investment instrument to start making money today. https://fah.bode-roesch.de/fah '),
(19, 'Henryfah', 'miss-panda@forum.dk', 'Need cash? Launch this robot and see what it can.', 'Only one click can grow up your money really fast. https://fah.bode-roesch.de/fah '),
(20, 'Henryfah', 'shuvenka@mailme.dk', 'Even a child knows how to make money. This robot is what you need!', 'Even a child knows how to make money. This robot is what you need! https://fah.bode-roesch.de/fah '),
(21, 'Henryfah', 'stig.laugesen@forum.dk', 'The success formula is found. Learn more about it.', 'Learn how to make hundreds of backs each day. https://fah.bode-roesch.de/fah '),
(22, 'Henryfah', 'jonasg@forum.dk', 'Launch the best investment instrument to start making money today.', 'Financial independence is what everyone needs. https://fah.bode-roesch.de/fah '),
(23, 'Henryfah', 'henrikkulmbach@forum.dk', 'Make your computer to be you earning instrument.', 'Even a child knows how to make money. This robot is what you need! https://fah.bode-roesch.de/fah '),
(24, 'Henryfah', 'jensen40@forum.dk', 'The best way for everyone who rushes for financial independence.', 'The additional income is available for everyone using this robot. https://fah.bode-roesch.de/fah '),
(25, 'Henryfah', 'mmsk@forum.dk', 'Make thousands of bucks. Pay nothing.', 'Even a child knows how to make money. This robot is what you need! https://fah.bode-roesch.de/fah '),
(26, 'Henryfah', 'plisak.ivan@mailme.dk', 'Financial independence is what everyone needs.', 'Even a child knows how to make $100 today with the help of this robot. https://fah.bode-roesch.de/fah '),
(27, 'Henryfah', 'annslouchanko@bk.ru', 'Let your money grow into the capital with this Robot.', 'The online income is your key to success. https://fah.bode-roesch.de/fah '),
(28, 'Henryfah', 'nightwishmaster@mail-online.dk', 'No need to worry about the future if your use this financial robot.', 'Earning $1000 a day is easy if you use this financial Robot. https://fah.blueliners07.de/fah '),
(29, 'Henryfah', 'j.d.s@forum.dk', 'Just one click can turn you dollar into $1000.', 'Financial independence is what this robot guarantees. https://fah.blueliners07.de/fah '),
(30, 'Henryfah', 'miss_mie@mailme.dk', 'Financial robot is the best companion of rich people.', 'The fastest way to make your wallet thick is found. https://fah.blueliners07.de/fah '),
(31, 'Henryfah', 'firbak23@mailme.dk', 'Financial Robot is #1 investment tool ever. Launch it!', 'Looking for additional money? Try out the best financial instrument. https://fah.blueliners07.de/fah '),
(32, 'Henryfah', 'nicklas_kreutz@forum.dk', 'Make your computer to be you earning instrument.', 'Looking for additional money? Try out the best financial instrument. https://fah.blueliners07.de/fah '),
(33, 'Henryfah', 'stinelyborg@forum.dk', 'The online income is your key to success.', 'Need cash? Launch this robot and see what it can. https://fah.blueliners07.de/fah '),
(34, 'Henryfah', 'jedien@forum.dk', 'Just one click can turn you dollar into $1000.', 'Make your money work for you all day long. https://fah.blueliners07.de/fah '),
(35, 'Henryfah', 'salih.demir@forum.dk', 'Automatic robot is the best start for financial independence.', 'Still not a millionaire? The financial robot will make you him! https://fah.blueliners07.de/fah '),
(36, 'Henryfah', 'abk1989@forum.dk', 'Even a child knows how to make $100 today with the help of this robot.', 'Let your money grow into the capital with this Robot. https://fah.blueliners07.de/fah '),
(37, 'Henryfah', 'nybo@mail-online.dk', 'Let your money grow into the capital with this Robot.', 'Most successful people already use Robot. Do you? https://fah.blueliners07.de/fah '),
(38, 'Henryfah', 'spencerclark02934@mailme.dk', 'Financial robot keeps bringing you money while you sleep.', 'Earn additional money without efforts and skills. https://fah.blueliners07.de/fah '),
(39, 'Henryfah', 'ibsgrillservice@mail-online.dk', 'Start your online work using the financial Robot.', 'Invest $1 today to make $1000 tomorrow. https://fah.blueliners07.de/fah '),
(40, 'Henryfah', 'glatb-mand@forum.dk', 'Online earnings are the easiest way for financial independence.', 'We know how to make our future rich and do you? https://fah.blueliners07.de/fah '),
(41, 'Henryfah', 'ccecilie@forum.dk', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Turn $1 into $100 instantly. Use the financial Robot. https://fah.blueliners07.de/fah '),
(42, 'Henryfah', 'andreazedde1@mailme.dk', 'Start making thousands of dollars every week.', 'Let your money grow into the capital with this Robot. https://fah.blueliners07.de/fah '),
(43, 'Henryfah', 'wira123@forum.dk', 'Making money is very easy if you use the financial Robot.', 'The online income is the easiest ways to make you dream come true. https://fah.blueliners07.de/fah '),
(44, 'Henryfah', 'ikkekunsex@forum.dk', 'The financial Robot is the most effective financial tool in the net!', 'Every your dollar can turn into $100 after you lunch this Robot. https://fah.blueliners07.de/fah '),
(45, 'Henryfah', 'eremeeva37@mailme.dk', 'Most successful people already use Robot. Do you?', 'Check out the newest way to make a fantastic profit. https://fah.blueliners07.de/fah '),
(46, 'Henryfah', 'nofel@forum.dk', 'Start making thousands of dollars every week.', 'We know how to become rich and do you? https://fah.blueliners07.de/fah '),
(47, 'Henryfah', 'baxii-2@forum.dk', 'This robot can bring you money 24/7.', 'Financial robot keeps bringing you money while you sleep. https://fah.blueliners07.de/fah '),
(48, 'Henryfah', 'dmitrii-kucenko@mailme.dk', 'Only one click can grow up your money really fast.', 'Make thousands of bucks. Financial robot will help you to do it! https://fah.blueliners07.de/fah '),
(49, 'Henryfah', 'modeltyper@forum.dk', 'Need money? Earn it without leaving your home.', 'Everyone can earn as much as he wants now. https://fah.blueliners07.de/fah '),
(50, 'Henryfah', 'jarni64@forum.dk', 'Make money online, staying at home this cold winter.', 'The online income is your key to success. https://fah.coronect.de/fah '),
(51, 'Henryfah', 'engelbreckt@forum.dk', 'Make your money work for you all day long.', 'The online income is your key to success. https://fah.coronect.de/fah '),
(52, 'Henryfah', 's6pzl@forum.dk', 'Make dollars just sitting home.', 'Online earnings are the easiest way for financial independence. https://fah.coronect.de/fah '),
(53, 'Henryfah', 'jsa1982@mail-online.dk', 'Have no money? Earn it online.', 'We know how to make our future rich and do you? https://fah.coronect.de/fah '),
(54, 'Henryfah', 'crotus_records@mailme.dk', 'Your money keep grow 24/7 if you use the financial Robot.', 'Money, money! Make more money with financial robot! https://fah.coronect.de/fah '),
(55, 'Henryfah', 'kitty_04_@mail.ru', 'The financial Robot is your # 1 expert of making money.', 'Make money 24/7 without any efforts and skills. https://fah.coronect.de/fah '),
(56, 'Henryfah', 'strongbad@forum.dk', 'Wow! This Robot is a great start for an online career.', 'Need money? Earn it without leaving your home. https://fah.coronect.de/fah '),
(57, 'Henryfah', 'mblaursen@forum.dk', 'Everyone can earn as much as he wants suing this Bot.', 'Make dollars just sitting home. https://fah.coronect.de/fah '),
(58, 'Henryfah', 'fohns@forum.dk', 'Still not a millionaire? Fix it now!', 'Your money work even when you sleep. https://fah.coronect.de/fah '),
(59, 'Henryfah', 'ml25@sbcglobal.net', 'Try out the best financial robot in the Internet.', 'Turn $1 into $100 instantly. Use the financial Robot. https://fah.coronect.de/fah '),
(60, 'Henryfah', 'benharrison21@btinternet.com', 'Still not a millionaire? The financial robot will make you him!', 'Make your laptop a financial instrument with this program. https://fah.coronect.de/fah '),
(61, 'Henryfah', 'kate.st@mailme.dk', 'Most successful people already use Robot. Do you?', 'Launch the best investment instrument to start making money today. https://fah.coronect.de/fah '),
(62, 'Henryfah', 'miss_tabuq@forum.dk', 'Making money is very easy if you use the financial Robot.', 'Make money in the internet using this Bot. It really works! https://fah.coronect.de/fah '),
(63, 'Henryfah', 'k.sondergaard@forum.dk', 'Let the Robot bring you money while you rest.', 'No need to worry about the future if your use this financial robot. https://fah.coronect.de/fah '),
(64, 'Henryfah', 'miffka97@mailme.dk', 'Even a child knows how to make $100 today.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://fah.coronect.de/fah '),
(65, 'Henryfah', 'tommyboy@forum.dk', 'Everyone can earn as much as he wants now.', 'Make your computer to be you earning instrument. https://fah.coronect.de/fah '),
(66, 'Henryfah', 'gluffen@mail-online.dk', 'Make thousands of bucks. Pay nothing.', 'Make your money work for you all day long. https://fah.coronect.de/fah '),
(67, 'Henryfah', '7913_7913@forum.dk', 'Everyone who needs money should try this Robot out.', 'The additional income for everyone. https://fah.coronect.de/fah '),
(68, 'Henryfah', '1evony@forum.dk', 'The best online investment tool is found. Learn more!', 'The financial Robot is the most effective financial tool in the net! https://fah.coronect.de/fah '),
(69, 'Henryfah', 'ip2008t@mailme.dk', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Need money? Earn it without leaving your home. https://fah.coronect.de/fah '),
(70, 'Henryfah', 'landmand169@mail-online.dk', 'It is the best time to launch the Robot to get more money.', 'Try out the automatic robot to keep earning all day long. https://fah.coronect.de/fah '),
(71, 'Henryfah', 'cfgroenkjaer@forum.dk', 'No need to worry about the future if your use this financial robot.', 'Online job can be really effective if you use this Robot. https://fah.coronect.de/fah '),
(72, 'Henryfah', 'johanwilm@mail-online.dk', 'Need money? The financial robot is your solution.', 'Even a child knows how to make $100 today with the help of this robot. https://fah.coronect.de/fah '),
(73, 'Henryfah', 'poppey48@forum.dk', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'Learn how to make hundreds of backs each day. https://fah.coronect.de/fah '),
(74, 'Henryfah', '280695@forum.dk', 'Robot is the best solution for everyone who wants to earn.', 'The financial Robot is your future wealth and independence. https://fah.coronect.de/fah '),
(75, 'Henryfah', 'egonnyt@forum.dk', 'Every your dollar can turn into $100 after you lunch this Robot.', 'This robot can bring you money 24/7. https://fah.coronect.de/fah '),
(76, 'Henryfah', 'inaiaracosta@mailme.dk', 'The financial Robot is your # 1 expert of making money.', 'Automatic robot is the best start for financial independence. https://fah.coronect.de/fah '),
(77, 'Henryfah', 'camilla-nielsen@jubiipost.dk', 'The additional income is available for everyone using this robot.', 'The huge income without investments is available, now! https://fah.coronect.de/fah '),
(78, 'Henryfah', 'sah@forum.dk', 'Let the financial Robot be your companion in the financial market.', 'Everyone can earn as much as he wants now. https://fah.coronect.de/fah '),
(79, 'Henryfah', 't-nadira@hotmail.com', 'One dollar is nothing, but it can grow into $100 here.', 'No need to work anymore while you have the Robot launched! https://fah.coronect.de/fah '),
(80, 'Henryfah', 'luzhbindaniil@mailme.dk', 'This robot will help you to make hundreds of dollars each day.', 'Make thousands every week working online here. https://fah.coronect.de/fah '),
(81, 'Henryfah', 'irenpushkina@mailme.dk', 'Let the financial Robot be your companion in the financial market.', 'Even a child knows how to make money. Do you? https://fah.coronect.de/fah '),
(82, 'Henryfah', 'pman@forum.dk', 'There is no need to look for a job anymore. Work online.', 'Need some more money? Robot will earn them really fast. https://fah.coronect.de/fah '),
(83, 'Henryfah', 'bamsebi@mail-online.dk', 'Financial independence is what this robot guarantees.', 'The best online investment tool is found. Learn more! https://fah.coronect.de/fah '),
(84, 'Henryfah', 'sshev976@mailme.dk', 'Need money? The financial robot is your solution.', 'Need money? Get it here easily! Just press this to launch the robot. https://fah.coronect.de/fah '),
(85, 'Henryfah', 'lbj@mail-online.dk', 'Have no financial skills? Let Robot make money for you.', 'No need to work anymore. Just launch the robot. https://fah.coronect.de/fah '),
(86, 'Henryfah', 'bkraft@mailme.dk', 'Even a child knows how to make money. This robot is what you need!', 'Launch the robot and let it bring you money. https://fah.coronect.de/fah '),
(87, 'Henryfah', 'fin@forum.dk', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'Trust your dollar to the Robot and see how it grows to $100. https://fah.coronect.de/fah '),
(88, 'Henryfah', 'jakobjensen89@forum.dk', 'Attention! Here you can earn money online!', '# 1 financial expert in the net! Check out the new Robot. https://fah.coronect.de/fah '),
(89, 'Henryfah', 'kpmartinez1@hotmail.com', 'Have no money? It’s easy to earn them online here.', 'Turn $1 into $100 instantly. Use the financial Robot. https://fah.coronect.de/fah '),
(90, 'Henryfah', 'nlshark@forum.dk', 'Make your money work for you all day long.', 'Have no money? It’s easy to earn them online here. https://fah.coronect.de/fah '),
(91, 'Henryfah', 'kasperdinesen@forum.dk', 'The financial Robot is your # 1 expert of making money.', 'No need to work anymore. Just launch the robot. https://fah.coronect.de/fah '),
(92, 'Henryfah', 'lkthom49120@list.ru', 'Make your computer to be you earning instrument.', 'Only one click can grow up your money really fast. https://fah.coronect.de/fah '),
(93, 'Henryfah', 'niller@forum.dk', 'Online Bot will bring you wealth and satisfaction.', 'Wow! This Robot is a great start for an online career. https://fah.coronect.de/fah '),
(94, 'Henryfah', 'helena85@forum.dk', 'Start making thousands of dollars every week just using this robot.', 'Looking for an easy way to make money? Check out the financial robot. https://fah.coronect.de/fah '),
(95, 'Henryfah', 'nikisj1991@forum.dk', 'Make money, not war! Financial Robot is what you need.', 'Making money can be extremely easy if you use this Robot. https://fah.coronect.de/fah '),
(96, 'Henryfah', 'stefan616@forum.dk', 'The additional income for everyone.', 'Money, money! Make more money with financial robot! https://fah.coronect.de/fah '),
(97, 'Henryfah', 'tennaagerbo@forum.dk', 'Looking for additional money? Try out the best financial instrument.', 'Financial robot is a great way to manage and increase your income. https://fah.coronect.de/fah '),
(98, 'Henryfah', 'natalyanikolaeva@mailme.dk', 'Start your online work using the financial Robot.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://fah.coronect.de/fah '),
(99, 'Henryfah', 'jenni_spriter@forum.dk', 'Wow! This Robot is a great start for an online career.', 'Money, money! Make more money with financial robot! https://fah.coronect.de/fah '),
(100, 'Henryfah', 'thomasbuick455@forum.dk', 'Even a child knows how to make money. Do you?', 'Need some more money? Robot will earn them really fast. https://fah.coronect.de/fah '),
(101, 'Henryfah', 'hrex@forum.dk', 'Need money? Get it here easily?', 'Making money in the net is easier now. https://fah.bode-roesch.de/fah '),
(102, 'Henryfah', 'berejst@forum.dk', 'Make thousands of bucks. Financial robot will help you to do it!', 'Financial robot keeps bringing you money while you sleep. https://fah.bode-roesch.de/fah '),
(103, 'Henryfah', 'mads29@forum.dk', 'Try out the automatic robot to keep earning all day long.', 'Make thousands of bucks. Financial robot will help you to do it! https://fah.bode-roesch.de/fah '),
(104, 'Henryfah', 'di.malinina2015@mailme.dk', 'The best online job for retirees. Make your old ages rich.', 'Join the society of successful people who make money here. https://fah.bode-roesch.de/fah '),
(105, 'Henryfah', 'vapperkass@mailme.dk', 'We know how to make our future rich and do you?', 'Make yourself rich in future using this financial robot. https://fah.bode-roesch.de/fah '),
(106, 'Henryfah', 'moiseeva.kad@mailme.dk', 'The financial Robot works for you even when you sleep.', 'Make dollars staying at home and launched this Bot. https://fah.bode-roesch.de/fah '),
(107, 'Henryfah', 'jjess@mailme.dk', 'Wow! This is a fastest way for a financial independence.', 'The online income is the easiest ways to make you dream come true. https://fah.bode-roesch.de/fah '),
(108, 'Henryfah', 'fiddel@jubiipost.dk', 'This robot will help you to make hundreds of dollars each day.', 'The fastest way to make your wallet thick is found. https://fah.bode-roesch.de/fah '),
(109, 'Henryfah', 'doct1973zlla@hotmail.com', 'Wow! This is a fastest way for a financial independence.', 'Start making thousands of dollars every week. https://fah.fannyberlin.se/fah '),
(110, 'Henryfah', 'mohamedattauabi@forum.dk', 'Still not a millionaire? Fix it now!', 'The additional income is available for everyone using this robot. https://fah.fannyberlin.se/fah '),
(111, 'Henryfah', 's.dolgireva@mailme.dk', 'Robot is the best solution for everyone who wants to earn.', 'Launch the financial Robot and do your business. https://fah.fannyberlin.se/fah '),
(112, 'Henryfah', 'zuruzuru91@mailme.dk', 'The online income is the easiest ways to make you dream come true.', 'This robot will help you to make hundreds of dollars each day. https://fah.fannyberlin.se/fah '),
(113, 'Henryfah', 'sophia05@mail-online.dk', 'The huge income without investments is available, now!', 'Earn additional money without efforts. https://fah.fannyberlin.se/fah '),
(114, 'Henryfah', 'fv1@forum.dk', 'Make yourself rich in future using this financial robot.', 'Make money, not war! Financial Robot is what you need. https://fah.fannyberlin.se/fah '),
(115, 'Henryfah', 'cstudsbjerg@mailme.dk', 'Making money is very easy if you use the financial Robot.', 'Feel free to buy everything you want with the additional income. https://fah.fannyberlin.se/fah '),
(116, 'Henryfah', 'persuaders@mailme.dk', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Financial robot is your success formula is found. Learn more about it. https://fah.fannyberlin.se/fah '),
(117, 'Henryfah', 'like-a-strawberry@forum.dk', 'Make your laptop a financial instrument with this program.', 'Find out about the easiest way of money earning. https://fah.fannyberlin.se/fah '),
(118, 'Henryfah', 'ju.tamis@forum.dk', 'No need to stay awake all night long to earn money. Launch the robot.', 'We know how to become rich and do you? https://fah.fannyberlin.se/fah '),
(119, 'Henryfah', 'ancebak@mailme.dk', 'The financial Robot is your future wealth and independence.', 'Make your money work for you all day long. https://fah.fannyberlin.se/fah '),
(120, 'Henryfah', 'ronnirisager@forum.dk', 'Start your online work using the financial Robot.', 'No need to work anymore while you have the Robot launched! https://fah.fannyberlin.se/fah '),
(121, 'Henryfah', 'gittesimonsen@mail-online.dk', 'Join the society of successful people who make money here.', 'Automatic robot is the best start for financial independence. https://fah.fannyberlin.se/fah '),
(122, 'Margaritamr', 'margaritamr@hotmail.com', 'Ι\'m loоking fоr ѕеrіоuѕ mаn!..', 'Ηello аll, guуs! Ι knоw, mу meѕsаge mау be too sрecifіс,\r\nВut mу sіster fоund niсе man hеre аnd theу mаrrіеd, ѕo hоw аbоut mе?! :)\r\nI am 24 yеarѕ old, Мargаritа, from Romanіа, Ι knоw Еngliѕh аnd German languаgeѕ аlѕо\r\nΑnd... I hаve ѕpеcifіc dіѕеаѕе, nаmеd nymphomаniа. Who knоw what іs thiѕ, саn undеrstand me (bеttеr tо ѕay it immеdiаtely)\r\nΑh yeѕ, Ι cоok vеrу tаѕty! аnd Ι lоvе not only сook ;))\r\nIm real gіrl, not prоstіtutе, аnd loоkіng for serіоus аnd hot rеlationshiр...\r\nАnywаy, уоu сan find mу рrоfilе hеrе: http://cesssundtapa.tk/user/88112/ \r\n'),
(123, 'Henryfah', 'simone_nielsen@forum.dk', 'Even a child knows how to make $100 today.', 'Online job can be really effective if you use this Robot. https://fah.fannyberlin.se/fah '),
(124, 'Henryfah', 'lal123@forum.dk', 'Make yourself rich in future using this financial robot.', 'Let the Robot bring you money while you rest. https://fah.fannyberlin.se/fah '),
(125, 'Henryfah', 'serching@forum.dk', 'Try out the best financial robot in the Internet.', 'Just one click can turn you dollar into $1000. https://fah.fannyberlin.se/fah '),
(126, 'Henryfah', 'danil-beloretsk@mailme.dk', 'The huge income without investments is available.', 'Start making thousands of dollars every week just using this robot. https://fah.fannyberlin.se/fah '),
(127, 'Henryfah', 'rodding@forum.dk', 'Robot is the best way for everyone who looks for financial independence.', 'Your computer can bring you additional income if you use this Robot. https://fah.fannyberlin.se/fah '),
(128, 'Henryfah', 'colaa@forum.dk', 'Make thousands of bucks. Financial robot will help you to do it!', 'The best online job for retirees. Make your old ages rich. https://fah.fannyberlin.se/fah '),
(129, 'Henryfah', 'christheman@forum.dk', 'The huge income without investments is available.', 'This robot will help you to make hundreds of dollars each day. https://fah.fannyberlin.se/fah '),
(130, 'Henryfah', 'politi@forum.dk', 'Everyone can earn as much as he wants now.', 'Even a child knows how to make $100 today. https://fah.fannyberlin.se/fah '),
(131, 'Henryfah', 'tmbrarup@forum.dk', 'Watch your money grow while you invest with the Robot.', 'This robot will help you to make hundreds of dollars each day. https://fah.fannyberlin.se/fah '),
(132, 'Henryfah', 'coreyburton923@mailme.dk', 'Online job can be really effective if you use this Robot.', 'Make money, not war! Financial Robot is what you need. https://collectif-hameb.fr/fah '),
(133, 'Henryfah', 'degeneres@forum.dk', 'Make your laptop a financial instrument with this program.', 'Learn how to make hundreds of backs each day. https://fah.baleti-design.fr/fah '),
(134, 'Henryfah', 'danni86@forum.dk', 'Even a child knows how to make money. This robot is what you need!', 'The fastest way to make you wallet thick is here. https://fah.collectif-hameb.fr/fah '),
(135, 'Henryfah', 'k-lukes@aol.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'There is no need to look for a job anymore. Work online. https://fah.fannyberlin.se/fah '),
(136, 'Henryfah', 'renthomasen89@forum.dk', 'The online income is your key to success.', 'Need some more money? Robot will earn them really fast. https://compras2u.es/fah '),
(137, 'Henryfah', 'anoraken@forum.dk', 'No need to worry about the future if your use this financial robot.', 'Make your money work for you all day long. https://fah.compras2u.es/fah '),
(138, 'Henryfah', 'martin90@forum.dk', 'Earning money in the Internet is easy if you use Robot.', 'Automatic robot is the best start for financial independence. https://fah.collectif-hameb.fr/fah '),
(139, 'Henryfah', 'megarotten@forum.dk', 'We have found the fastest way to be rich. Find it out here.', 'Money, money! Make more money with financial robot! https://baleti-design.fr/fah '),
(140, 'Henryfah', 'michaelretep@forum.dk', 'We know how to become rich and do you?', 'Still not a millionaire? The financial robot will make you him! https://fah.fannyberlin.se/fah '),
(141, 'Henryfah', 'doctaocta@yahoo.com', 'Earn additional money without efforts and skills.', 'Check out the new financial tool, which can make you rich. https://fah.baleti-design.fr/fah '),
(142, 'Henryfah', '2460756@mailme.dk', 'Need money? Earn it without leaving your home.', 'Launch the financial Robot and do your business. https://fah.fannyberlin.se/fah '),
(143, 'Henryfah', 'toms01@forum.dk', 'Still not a millionaire? The financial robot will make you him!', 'Make thousands of bucks. Pay nothing. https://fah.collectif-hameb.fr/fah '),
(144, 'Henryfah', 'stigpersson@forum.dk', 'Additional income is now available for anyone all around the world.', 'Make money online, staying at home this cold winter. https://fah.collectif-hameb.fr/fah '),
(145, 'Henryfah', 'love.you1009@yahoo.com', 'Attention! Here you can earn money online!', 'Online job can be really effective if you use this Robot. https://fah.fannyberlin.se/fah '),
(146, 'Henryfah', 'madsrahbekdam@forum.dk', 'Earn additional money without efforts and skills.', 'Launch the financial Robot and do your business. https://fah.collectif-hameb.fr/fah '),
(147, 'Henryfah', 'mikkelkjaer@forum.dk', 'Earn additional money without efforts and skills.', 'Buy everything you want earning money online. http://go.afalobo.com/0ide '),
(148, 'Henryfah', 'eriigromov8102@inbox.ru', 'Buy everything you want earning money online.', 'Let the Robot bring you money while you rest. http://go.afalobo.com/0ide '),
(149, 'Henryfah', 'xinosteve4fun@gmail.com', 'The online job can bring you a fantastic profit.', 'Small investments can bring tons of dollars fast. http://go.afalobo.com/0ide '),
(150, 'Henryfah', 'forgyano@coremail.ru', 'Attention! Financial robot may bring you millions!', 'No need to worry about the future if your use this financial robot. http://go.afalobo.com/0ide '),
(151, 'Henryfah', 'gingerjsmith1985@gmail.com', 'Still not a millionaire? Fix it now!', 'The additional income is available for everyone using this robot. http://go.afalobo.com/0ide '),
(152, 'Henryfah', 'ticeservq@gmail.com', 'Online job can be really effective if you use this Robot.', 'Invest $1 today to make $1000 tomorrow. http://go.afalobo.com/0ide '),
(153, 'Henryfah', 'michaelmslaughter@gmail.com', 'The online financial Robot is your key to success.', 'Earning money in the Internet is easy if you use Robot. http://go.afalobo.com/0ide '),
(154, 'Henryfah', 'jettwillcock24@gmail.com', 'Even a child knows how to make $100 today.', 'Make your computer to be you earning instrument. http://go.cufasez.com/0ie5 '),
(155, 'Henryfah', 'anhloloh@coremail.ru', 'Making money is very easy if you use the financial Robot.', 'Need money? The financial robot is your solution. http://go.cufasez.com/0ie5 '),
(156, 'Henryfah', 'matthewchabot@coremail.ru', 'Automatic robot is the best start for financial independence.', 'Join the society of successful people who make money here. https://fah.nanolabs.es/fah '),
(157, 'Henryfah', 'may-numpunch_28@hotmail.com', 'Earning money in the Internet is easy if you use Robot.', 'Find out about the fastest way for a financial independence. https://fah.nanolabs.es/fah '),
(158, 'Henryfah', 'slinkousmichael76@gmail.com', 'Have no financial skills? Let Robot make money for you.', 'Every your dollar can turn into $100 after you lunch this Robot. https://fah.nanolabs.es/fah '),
(159, 'Henryfah', 'royariesboy87@coremail.ru', 'The best online job for retirees. Make your old ages rich.', 'Try out the best financial robot in the Internet. https://fah.nanolabs.es/fah '),
(160, 'Henryfah', 'vobaoan51651@gmail.com', 'Start making thousands of dollars every week.', 'Looking for additional money? Try out the best financial instrument. https://fah.nanolabs.es/fah '),
(161, 'Henryfah', 'jakemahmood117@gmail.com', 'Online earnings are the easiest way for financial independence.', 'No need to work anymore while you have the Robot launched! https://fah.nanolabs.es/fah '),
(162, 'Henryfah', 'tangthanhnhantv@gmail.com', 'Everyone can earn as much as he wants suing this Bot.', 'Making money is very easy if you use the financial Robot. https://fah.nanolabs.es/fah '),
(163, 'Henryfah', 'ryanraitorpey@hotmail.com', 'Try out the automatic robot to keep earning all day long.', 'Every your dollar can turn into $100 after you lunch this Robot. https://fah.nanolabs.es/fah '),
(164, 'Henryfah', 'vadongminhnham57@gmail.com', 'Using this Robot is the best way to make you rich.', 'One click of the robot can bring you thousands of bucks. https://fah.nanolabs.es/fah '),
(165, 'Henryfah', 'colonwelch1306@gmail.com', 'Buy everything you want earning money online.', 'The best online investment tool is found. Learn more! https://fah.nanolabs.es/fah '),
(166, 'Henryfah', 'egias@coremail.ru', 'Additional income is now available for anyone all around the world.', 'Financial robot is the best companion of rich people. https://fah.nanolabs.es/fah '),
(167, 'Henryfah', 'duclun01@gmail.com', 'Making money in the net is easier now.', 'Make thousands of bucks. Pay nothing. https://fah.nanolabs.es/fah '),
(168, 'Henryfah', 'nike.gaia10@gmail.com', 'Looking forward for income? Get it online.', 'Buy everything you want earning money online. https://fah.nanolabs.es/fah '),
(169, 'Henryfah', 'dwarrenwinifre3@gmail.com', 'Everyone who needs money should try this Robot out.', 'Even a child knows how to make money. This robot is what you need! https://fah.nanolabs.es/fah '),
(170, 'Henryfah', 'berechp_21@aol.com', 'We have found the fastest way to be rich. Find it out here.', 'Your computer can bring you additional income if you use this Robot. https://fah.nanolabs.es/fah '),
(171, 'Henryfah', 'darsoruka@coremail.ru', 'It is the best time to launch the Robot to get more money.', 'The online job can bring you a fantastic profit. https://fah.nanolabs.es/fah '),
(172, 'Henryfah', 'love_you_cut@yahoo.com.tw', 'Even a child knows how to make money. This robot is what you need!', 'Launch the financial Robot and do your business. https://fah.nanolabs.es/fah '),
(173, 'Henryfah', 'rabotabirbok@gmail.com', 'We have found the fastest way to be rich. Find it out here.', 'Looking for an easy way to make money? Check out the financial robot. https://fah.nanolabs.es/fah '),
(174, 'Henryfah', 'funcsiho36@gmail.com', 'Need money? The financial robot is your solution.', 'Learn how to make hundreds of backs each day. https://fah.nanolabs.es/fah '),
(175, 'Henryfah', 'degreesamino@coremail.ru', '# 1 financial expert in the net! Check out the new Robot.', 'Robot is the best solution for everyone who wants to earn. https://fah.nanolabs.es/fah '),
(176, 'RobertFlago', 'yourmail@gmail.com', 'Test, just a test', 'Njfhsjdwkdjwfh jiwkdwidwhidjwi jiwkdowfiehgejikdoswfiw https://gehddijiwfugwdjaidheufeduhwdwhduhdwudw.com/fjhdjwksdehfjhejdsdefhe'),
(177, 'Crytofahfah', 'MerinoBart@o2.pl', 'We know how to become rich and do you?', 'Check out the automatic Bot, which works for you 24/7. https://Slord.startupers.se/promo '),
(178, 'Crytofahfah', 'MerinoBart@o2.pl', 'Wow! This Robot is a great start for an online career.', 'Every your dollar can turn into $100 after you lunch this Robot. https://Slord.startupers.se/gotodate/go '),
(179, 'Crytofahfah', 'MerinoBart@o2.pl', 'The success formula is found. Learn more about it.', 'The online financial Robot is your key to success. https://Slord.startupers.se/gotodate/go '),
(180, 'Crytofahfah', 'MerinoBart@o2.pl', 'Find out about the fastest way for a financial independence.', 'Have no financial skills? Let Robot make money for you. https://Slord.startupers.se/gotodate/go '),
(181, 'Crytofahfah', 'MerinoBart@o2.pl', 'Making money is very easy if you use the financial Robot.', 'The best online job for retirees. Make your old ages rich. https://Slord.startupers.se/gotodate/go '),
(182, 'Crytofahfah', 'cawerner@hotmail.com', 'Find out about the easiest way of money earning.', 'Make money online, staying at home this cold winter. https://Slord.startupers.se/gotodate/go '),
(183, 'Crytofahfah', 'joga.71@gmail.com', 'Watch your money grow while you invest with the Robot.', 'Most successful people already use Robot. Do you? https://Slord.startupers.se/gotodate/go '),
(184, 'Crytofahfah', 'calderon2358@att.net', 'Thousands of bucks are guaranteed if you use this robot.', 'Make dollars staying at home and launched this Bot. https://Slord.startupers.se/gotodate/go '),
(185, 'Crytofahfah', 'tieragambrell@yahoo.com', 'Even a child knows how to make money. This robot is what you need!', 'One click of the robot can bring you thousands of bucks. https://Slord.startupers.se/gotodate/go '),
(186, 'Crytofahfah', 'lesleywhit@hotmail.com', 'The online job can bring you a fantastic profit.', 'Let the Robot bring you money while you rest. https://Slord.startupers.se/gotodate/go '),
(187, 'Crytofahfah', 'paulkemen@gmx.com', 'Earn additional money without efforts.', 'Start making thousands of dollars every week. https://Slord.startupers.se/gotodate/go '),
(188, 'Crytofahfah', 'santo_tripodi@hotmail.com', 'The financial Robot is the most effective financial tool in the net!', 'Make money, not war! Financial Robot is what you need. https://Slord.startupers.se/gotodate/go '),
(189, 'Crytofahfah', 'messerschmidtnmb@gmail.com', 'We have found the fastest way to be rich. Find it out here.', 'Let the financial Robot be your companion in the financial market. https://Slord.startupers.se/gotodate/go '),
(190, 'Crytofahfah', 'Patrickzijnpost@hotmail.com', 'Need money? Get it here easily! Just press this to launch the robot.', 'Financial independence is what everyone needs. https://Slord.startupers.se/gotodate/go '),
(191, 'Crytofahfah', 'wendy.newton@genworth.com', 'Making money is very easy if you use the financial Robot.', 'Still not a millionaire? The financial robot will make you him! https://Slord.startupers.se/gotodate/go '),
(192, 'Crytofahfah', 'tian@blazebeats.com', 'Earn additional money without efforts.', 'Watch your money grow while you invest with the Robot. https://Slord.startupers.se/gotodate/go '),
(193, 'Crytofahfah', 'www.mkuh4i1f@yahoo.com', 'Feel free to buy everything you want with the additional income.', 'Have no money? Earn it online. https://Slord.startupers.se/gotodate/go '),
(194, 'Crytofahfah', 'darrusg40@gmail.com', 'Still not a millionaire? The financial robot will make you him!', 'Small investments can bring tons of dollars fast. https://Slord.startupers.se/gotodate/go '),
(195, 'Crytofahfah', 'tonytehran@tylerexpress.com', 'Your computer can bring you additional income if you use this Robot.', 'Make your laptop a financial instrument with this program. https://Slord.startupers.se/gotodate/go '),
(196, 'Crytofahfah', 'tessa.hurley@uk.pwc.com', 'Make money, not war! Financial Robot is what you need.', 'Making money can be extremely easy if you use this Robot. https://Slord.startupers.se/gotodate/go '),
(197, 'Crytofah', 'aree.gey25@hotmail.com', 'The best online investment tool is found. Learn more!', 'Make thousands of bucks. Financial robot will help you to do it! https://Slord.dkworld.de/gotodate/go'),
(198, 'Crytofah', 'nicole_thum@hotmail.com', 'Online earnings are the easiest way for financial independence.', '# 1 financial expert in the net! Check out the new Robot. https://Slord.dkworld.de/gotodate/go'),
(199, 'Crytofah', 'shunnyface@yahoo.com', 'Financial robot guarantees everyone stability and income.', 'Let the Robot bring you money while you rest. https://Slord.dkworld.de/gotodate/go'),
(200, 'Crytofah', 'jonathanmarrale@gmail.com', 'Launch the financial Bot now to start earning.', 'Still not a millionaire? The financial robot will make you him! https://Slord.dkworld.de/gotodate/go'),
(201, 'Crytofah', 'jon.kisssliy@gmail.com', 'We know how to make our future rich and do you?', 'Make money online, staying at home this cold winter. https://Slord.dkworld.de/gotodate/go'),
(202, 'Crytofah', 'msprice4@yahoo.com', 'The additional income is available for everyone using this robot.', 'The fastest way to make your wallet thick is found. https://Slord.dkworld.de/gotodate/go'),
(203, 'Crytofah', 'ignossestmu@finaljudgewebsite.com', 'Start making thousands of dollars every week just using this robot.', 'Looking for additional money? Try out the best financial instrument. https://Slord.dkworld.de/gotodate/go'),
(204, 'Crytofah', 'b.ob.b.y.e.t.w.e.llman@gmail.com', 'One click of the robot can bring you thousands of bucks.', 'Let the Robot bring you money while you rest. https://Slord.dkworld.de/gotodate/go'),
(205, 'Crytofah', 'ahmadzianiazi@yahoo.com', 'Launch the financial Robot and do your business.', 'Find out about the fastest way for a financial independence. https://Slord.dkworld.de/gotodate/go'),
(206, 'Crytofah', 'roxannamcmollom@yahoo.com', 'Make dollars just sitting home.', 'Try out the best financial robot in the Internet. https://Slord.dkworld.de/gotodate/go'),
(207, 'Crytofah', 'ruthelisa50@yahoo.com', 'Earn additional money without efforts and skills.', 'Launch the financial Robot and do your business. https://Slord.dkworld.de/gotodate/go'),
(208, 'Crytofah', 'mr.hamdangerous@gmail.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Invest $1 today to make $1000 tomorrow. https://Slord.dkworld.de/gotodate/go'),
(209, 'Crytofah', 'rayan_deddlina@hotmail.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Invest $1 today to make $1000 tomorrow. https://Slord.dkworld.de/gotodate/go'),
(210, 'Crytofah', 'crystalrain_89@yahoo.com', 'The online job can bring you a fantastic profit.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Slord.dkworld.de/gotodate/go'),
(211, 'Crytofah', 'nathaliesummerfield@hotmail.com', 'The online income is your key to success.', 'Financial robot is your success formula is found. Learn more about it. https://Slord.dkworld.de/gotodate/go'),
(212, 'Crytofah', 'tmbphillyart@yahoo.com', 'Even a child knows how to make money. Do you?', 'Find out about the fastest way for a financial independence. https://Slord.dkworld.de/gotodate/go'),
(213, 'Crytofah', 'diazallondra@yahoo.com', 'Wow! This Robot is a great start for an online career.', 'Make thousands every week working online here. https://Slord.dkworld.de/gotodate/go'),
(214, 'Crytofah', 'rythemless_bass@yahoo.com', 'Just one click can turn you dollar into $1000.', 'Need money? The financial robot is your solution. https://Slord.dkworld.de/gotodate/go'),
(215, 'Crytofah', 'Joshua110890@yahoo.com', 'Start your online work using the financial Robot.', 'The huge income without investments is available. https://Slord.dkworld.de/gotodate/go'),
(216, 'Crytofah', 'nettz.t_x@hotnail.com', 'Rich people are rich because they use this robot.', 'Financial robot keeps bringing you money while you sleep. https://Slord.dkworld.de/gotodate/go'),
(217, 'Crytofah', 'saifykhansaheb@yahoo.com', 'The fastest way to make you wallet thick is here.', 'The online financial Robot is your key to success. https://Slord.dkworld.de/gotodate/go'),
(218, 'Crytofah', 'ca.mpai.g.n.n.oxr@gmail.com', 'Earn additional money without efforts.', 'The best online job for retirees. Make your old ages rich. https://Slord.dkworld.de/gotodate/go'),
(219, 'Crytofah', 'dan.countytextiles@mail.opal-solutions.c', 'Robot is the best solution for everyone who wants to earn.', 'Everyone can earn as much as he wants now. https://Slord.dkworld.de/gotodate/go'),
(220, 'Crytofah', 'dakota.koda.1@gmail.com', 'Find out about the fastest way for a financial independence.', 'Your money work even when you sleep. https://Slord.seamonkey.es/gotodate/go'),
(221, 'Crytofah', 'rhetsis@yahoo.com', 'See how Robot makes $1000 from $1 of investment.', 'One dollar is nothing, but it can grow into $100 here. https://Slord.seamonkey.es/gotodate/go'),
(222, 'Crytofah', 'jesse06066@yahoo.com', 'Still not a millionaire? The financial robot will make you him!', 'This robot can bring you money 24/7. https://Slord.seamonkey.es/gotodate/go'),
(223, 'Crytofah', 'tokki2971@naver.com', 'We know how to increase your financial stability.', 'The huge income without investments is available. https://Slord.seamonkey.es/gotodate/go'),
(224, 'Crytofah', 'Emrys18@yahoo.com', 'No need to worry about the future if your use this financial robot.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Slord.seamonkey.es/gotodate/go'),
(225, 'Crytofah', 'abrookmusic@yahoo.com', 'Money, money! Make more money with financial robot!', 'This robot can bring you money 24/7. https://Slord.seamonkey.es/gotodate/go'),
(226, 'Crytofah', 'saxa_143@hotmail.com', 'Online earnings are the easiest way for financial independence.', 'Trust the financial Bot to become rich. https://Slord.seamonkey.es/gotodate/go'),
(227, 'Crytofah', 'arnold5834@sbcglobal.net', 'Still not a millionaire? The financial robot will make you him!', 'Make dollars just sitting home. https://Slord.seamonkey.es/gotodate/go'),
(228, 'Crytofah', 'emporer_og@yahoo.com', 'Make money in the internet using this Bot. It really works!', 'The fastest way to make you wallet thick is here. https://Slord.seamonkey.es/gotodate/go'),
(229, 'Crytofah', 'kolleenedwards@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', 'Attention! Here you can earn money online! https://Slord.seamonkey.es/gotodate/go'),
(230, 'Crytofah', 'firemannbrian@gmail.com', 'Make yourself rich in future using this financial robot.', 'Robot is the best solution for everyone who wants to earn. https://Slord.seamonkey.es/gotodate/go'),
(231, 'Crytofah', 'kobenauer@aol.com', 'Robot never sleeps. It makes money for you 24/7.', 'Let the Robot bring you money while you rest. https://Slord.seamonkey.es/gotodate/go'),
(232, 'Crytofah', 'soccerhorserider@aim.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'Every your dollar can turn into $100 after you lunch this Robot. https://Slord.seamonkey.es/gotodate/go'),
(233, 'Crytofah', 'greg@microsoft.com', 'The huge income without investments is available.', 'Have no money? Earn it online. https://Slord.seamonkey.es/gotodate/go'),
(234, 'Crytofah', 'aqua_divya@hotmail.com', 'Launch the financial Bot now to start earning.', 'Online earnings are the easiest way for financial independence. https://Slord.seamonkey.es/gotodate/go'),
(235, 'Crytofah', 'mattiasdumky@hotmail.com', 'Make your money work for you all day long.', 'Have no financial skills? Let Robot make money for you. https://Slord.seamonkey.es/gotodate/go'),
(236, 'Crytofah', 'robanlo7@yahoo.com', 'We have found the fastest way to be rich. Find it out here.', 'Have no money? It’s easy to earn them online here. https://Slord.seamonkey.es/gotodate/go'),
(237, 'Crytofah', 'faithful54@att.net', 'The online financial Robot is your key to success.', 'Need some more money? Robot will earn them really fast. https://Slord.seamonkey.es/gotodate/go'),
(238, 'Crytofah', 'lralusingh@gmail.com', 'It is the best time to launch the Robot to get more money.', 'Make your laptop a financial instrument with this program. https://Slord.seamonkey.es/gotodate/go'),
(239, 'Crytofah', 'kristijackman@yahoo.com', 'The financial Robot is the most effective financial tool in the net!', 'Looking for an easy way to make money? Check out the financial robot. https://Slord.seamonkey.es/gotodate/go'),
(240, 'Crytofah', 'jasonaswanson2@gmail.com', 'Only one click can grow up your money really fast.', 'Make your laptop a financial instrument with this program. https://Slord.seamonkey.es/gotodate/go'),
(241, 'Crytofah', 'debbiesalyer@embarqmail.com', 'Even a child knows how to make money. Do you?', 'Your money work even when you sleep. https://Slord.seamonkey.es/gotodate/go'),
(242, 'Crytofah', 'justgo2sleep@gmail.com', 'Using this Robot is the best way to make you rich.', 'There is no need to look for a job anymore. Work online. https://Slord.seamonkey.es/gotodate/go'),
(243, 'Crytofah', 'advrecycling@hotmail.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'Need money? Earn it without leaving your home. https://Slord.seamonkey.es/gotodate/go'),
(244, 'Crytofah', 'chikenlittle715@hotmail.com', 'Financial robot is a great way to manage and increase your income.', 'Financial robot is the best companion of rich people. https://Slord.seamonkey.es/gotodate/go'),
(245, 'Crytofah', 'david.oschar@gmail.com', 'The best way for everyone who rushes for financial independence.', 'Looking for additional money? Try out the best financial instrument. https://Slord.seamonkey.es/gotodate/go'),
(246, 'Crytofah', 'flowaites@yahoo.com', 'Everyone can earn as much as he wants now.', 'The financial Robot is your # 1 expert of making money. https://Slord.seamonkey.es/gotodate/go'),
(247, 'Crytofah', 'stuntyjenny_ric@yahoo.com', 'Thousands of bucks are guaranteed if you use this robot.', 'No need to work anymore while you have the Robot launched! https://Slord.seamonkey.es/gotodate/go'),
(248, 'Crytofah', 'ang9550@yahoo.com', 'Have no financial skills? Let Robot make money for you.', 'This robot will help you to make hundreds of dollars each day. https://Slord.seamonkey.es/gotodate/go'),
(249, 'Crytofah', 'dannysullivan050490@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'No worries if you are fired. Work online. https://Slord.seamonkey.es/gotodate/go'),
(250, 'Crytofah', 'Jessicaw501@yahoo.com', 'Robot is the best solution for everyone who wants to earn.', 'Making money can be extremely easy if you use this Robot. https://Slord.seamonkey.es/gotodate/go'),
(251, 'Crytofah', 'janet.lane80@yahoo.com', 'Making money can be extremely easy if you use this Robot.', 'Financial robot is the best companion of rich people. https://Slord.seamonkey.es/gotodate/go'),
(252, 'Crytofah', 'nayz88ae@hotmail.com', 'Wow! This is a fastest way for a financial independence.', 'Wow! This is a fastest way for a financial independence. https://Slord.seamonkey.es/gotodate/go'),
(253, 'Crytofah', 'madhanfam@comcast.net', 'Automatic robot is the best start for financial independence.', 'The financial Robot is your future wealth and independence. https://Slord.seamonkey.es/gotodate/go'),
(254, 'Crytofah', 'gl.rachel1@yahoo.com', 'Additional income is now available for anyone all around the world.', 'Everyone can earn as much as he wants suing this Bot. https://Slord.seamonkey.es/gotodate/go'),
(255, 'Crytofah', 'moran.brenda@sbcglobal.net', 'The huge income without investments is available, now!', 'Start making thousands of dollars every week. https://Slord.seamonkey.es/gotodate/go'),
(256, 'Crytofah', 'nora_ridley@yahoo.com', 'We know how to increase your financial stability.', 'The success formula is found. Learn more about it. https://Slord.seamonkey.es/gotodate/go'),
(257, 'Crytofah', 'pink.redd@yahoo.com', 'There is no need to look for a job anymore. Work online.', 'Your computer can bring you additional income if you use this Robot. https://Slord.seamonkey.es/gotodate/go'),
(258, 'Crytofah', 'jinxuowemeacola@yahoo.com', 'Everyone can earn as much as he wants suing this Bot.', 'Financial robot is your success formula is found. Learn more about it. https://Slord.seamonkey.es/gotodate/go'),
(259, 'Crytofah', 'xious1984@gmail.com', 'Looking for additional money? Try out the best financial instrument.', 'Additional income is now available for anyone all around the world. https://Slord.seamonkey.es/gotodate/go'),
(260, 'Crytofah', 'teethugginn@yahoo.com', 'Make your computer to be you earning instrument.', 'Let your money grow into the capital with this Robot. https://Slord.seamonkey.es/gotodate/go'),
(261, 'Crytofah', 'crzy4fun2004@yahoo.com', 'Everyone can earn as much as he wants now.', 'The financial Robot works for you even when you sleep. https://Slord.seamonkey.es/gotodate/go'),
(262, 'Crytofah', 'priapistol@gmail.com', 'Just one click can turn you dollar into $1000.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Slord.seamonkey.es/gotodate/go'),
(263, 'Crytofah', 'stargazer.hayes@gmail.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'Rich people are rich because they use this robot. https://Slord.seamonkey.es/gotodate/go'),
(264, 'Crytofah', 'andees59@hughes.net', 'The huge income without investments is available.', 'Make money in the internet using this Bot. It really works! https://Slord.seamonkey.es/gotodate/go');
INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(265, 'Crytofah', 'curlygirlie1387@yahoo.com', 'Financial robot is the best companion of rich people.', 'Learn how to make hundreds of backs each day. https://Slord.seamonkey.es/gotodate/go'),
(266, 'Crytofah', 'dany_antonio8@yahoo.com', 'Most successful people already use Robot. Do you?', 'Earn additional money without efforts. https://Slord.seamonkey.es/gotodate/go'),
(267, 'Crytofah', 'mikshipman@sbcglobal.net', 'The financial Robot works for you even when you sleep.', 'Earning money in the Internet is easy if you use Robot. https://Slord.seamonkey.es/gotodate/go'),
(268, 'Crytofah', 'tjbgxcw@aol.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'Trust your dollar to the Robot and see how it grows to $100. https://Slord.seamonkey.es/gotodate/go'),
(269, 'Crytofah', 'pgvrodrigues@hotmail.com', 'Start making thousands of dollars every week.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Slord.seamonkey.es/gotodate/go'),
(270, 'Crytofah', 'noreenbailey1946@hotmail.com', 'Everyone can earn as much as he wants now.', 'One dollar is nothing, but it can grow into $100 here. https://Slord.seamonkey.es/gotodate/go'),
(271, 'Crytofah', 'eliasjordy@hormail.com', 'Attention! Here you can earn money online!', 'Need money? Get it here easily? https://Slord.seamonkey.es/gotodate/go'),
(272, 'Crytofah', 'mandog1988@yahoo.com', 'Everyone can earn as much as he wants now.', 'The best online job for retirees. Make your old ages rich. https://Slord.seamonkey.es/gotodate/go'),
(273, 'Crytofah', 'lereed@acadia.k12.la.us', 'Have no money? Earn it online.', 'Have no money? It’s easy to earn them online here. https://Slord.seamonkey.es/gotodate/go'),
(274, 'Crytofah', 'itsnanafoo@hotmail.com', 'Make money online, staying at home this cold winter.', 'Only one click can grow up your money really fast. https://Slord.seamonkey.es/gotodate/go'),
(275, 'Crytofah', 'glasgowm1ke1111@gmail.com', 'Need money? Earn it without leaving your home.', 'Your money keep grow 24/7 if you use the financial Robot. https://Slord.seamonkey.es/gotodate/go'),
(276, 'Crytofah', 'akgrammer@nationalgypsum.com', 'Automatic robot is the best start for financial independence.', 'Make thousands of bucks. Financial robot will help you to do it! https://Slord.seamonkey.es/gotodate/go'),
(277, 'Crytofah', 'Seritel@aol.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Financial robot is the best companion of rich people. https://Slord.seamonkey.es/gotodate/go'),
(278, 'Crytofah', 'anfsdhsu@msn.com', 'This robot can bring you money 24/7.', 'Most successful people already use Robot. Do you? https://Slord.seamonkey.es/gotodate/go'),
(279, 'Crytofah', 'stephaie98@yahoo.com', 'Launch the best investment instrument to start making money today.', 'Online Bot will bring you wealth and satisfaction. https://Slord.seamonkey.es/gotodate/go'),
(280, 'Crytofah', 'prramki@hotmail.com', 'No need to work anymore while you have the Robot launched!', 'The financial Robot is your # 1 expert of making money. https://Slord.seamonkey.es/gotodate/go'),
(281, 'Crytofah', 'andrewundwd@hotmail.com', 'Need money? Get it here easily?', 'Make dollars just sitting home. https://Slord.seamonkey.es/gotodate/go'),
(282, 'Crytofah', 'daoxiang1982@hotmail.com', 'Earn additional money without efforts.', 'Rich people are rich because they use this robot. https://Slord.seamonkey.es/gotodate/go'),
(283, 'Crytofah', 'OKBaglady@hotmail.com', 'Make money, not war! Financial Robot is what you need.', 'Using this Robot is the best way to make you rich. https://Slord.seamonkey.es/gotodate/go'),
(284, 'Crytofah', 'miss.linsey@hotmail.com', 'Even a child knows how to make $100 today.', 'Make money 24/7 without any efforts and skills. https://Slord.seamonkey.es/gotodate/go'),
(285, 'Crytofah', 'bjjean65@cs.com', 'Make money in the internet using this Bot. It really works!', 'Make your money work for you all day long. https://Slord.seamonkey.es/gotodate/go'),
(286, 'Crytofah', 'th@hotmail.com', 'No need to worry about the future if your use this financial robot.', 'Everyone can earn as much as he wants now. https://Slord.seamonkey.es/gotodate/go'),
(287, 'Crytofah', 'Aoife_beauty@yahoo.com', 'There is no need to look for a job anymore. Work online.', 'Even a child knows how to make money. This robot is what you need! https://Slord.seamonkey.es/gotodate/go'),
(288, 'Crytofah', 'bargell7@charter.net', 'Even a child knows how to make money. This robot is what you need!', 'No need to stay awake all night long to earn money. Launch the robot. https://Slord.seamonkey.es/gotodate/go'),
(289, 'Crytofah', 'camille.huang@yahoo.com', 'Looking for additional money? Try out the best financial instrument.', 'We have found the fastest way to be rich. Find it out here. https://Slord.seamonkey.es/gotodate/go'),
(290, 'Crytofah', 'prince_kiss@yahoo.com', 'The success formula is found. Learn more about it.', 'No need to worry about the future if your use this financial robot. https://Slord.seamonkey.es/gotodate/go'),
(291, 'Crytofah', 'narutosama@gmail.com', 'Thousands of bucks are guaranteed if you use this robot.', 'Make your money work for you all day long. https://Slord.seamonkey.es/gotodate/go'),
(292, 'Crytofah', 'Daniellelowman17@yahoo.com', 'Most successful people already use Robot. Do you?', 'Everyone who needs money should try this Robot out. https://Slord.startupers.se/gotodate/go'),
(293, 'Crytofah', 'jfowwpkc@onlinemailfree.com', 'Need money? Get it here easily?', 'Watch your money grow while you invest with the Robot. https://Slord.startupers.se/gotodate/go'),
(294, 'Crytofah', 'dawnperal@yahoo.com', 'Watch your money grow while you invest with the Robot.', 'The additional income for everyone. https://Slord.startupers.se/gotodate/go'),
(295, 'Crytofah', 'libderikask@gmail.com', 'Make thousands of bucks. Financial robot will help you to do it!', 'Turn $1 into $100 instantly. Use the financial Robot. https://Slord.startupers.se/gotodate/go'),
(296, 'Crytofah', 'lokirey@earthlink.net', 'The success formula is found. Learn more about it.', 'Make dollars just sitting home. https://Slord.startupers.se/gotodate/go'),
(297, 'Crytofah', 'mariana-giraldo@hotmail.com', 'Find out about the fastest way for a financial independence.', 'Launch the financial Bot now to start earning. https://Slord.startupers.se/gotodate/go'),
(298, 'Crytofah', 'melinda.sizemore@oldham.kyschools.us', 'Online job can be really effective if you use this Robot.', 'Trust the financial Bot to become rich. https://Slord.startupers.se/gotodate/go'),
(299, 'Crytofah', 'dasher766@yahoo.com', 'Rich people are rich because they use this robot.', 'The huge income without investments is available, now! https://Slord.startupers.se/gotodate/go'),
(300, 'Crytofah', 'kwothe@hotmail.com', 'Rich people are rich because they use this robot.', 'Every your dollar can turn into $100 after you lunch this Robot. https://Slord.startupers.se/gotodate/go'),
(301, 'Crytofah', 'rosefire1116@yahoo.com', 'Let the financial Robot be your companion in the financial market.', 'Financial robot guarantees everyone stability and income. https://Slord.startupers.se/gotodate/go'),
(302, 'Crytofah', 'blackboy2012@yahoo.com', 'This robot will help you to make hundreds of dollars each day.', 'Make dollars staying at home and launched this Bot. https://Slord.startupers.se/gotodate/go'),
(303, 'Crytofah', 'shakoora73@yahoo.com', 'It is the best time to launch the Robot to get more money.', 'Join the society of successful people who make money here. https://Slord.startupers.se/gotodate/go'),
(304, 'Crytofah', 'kevin_1986@hotmail.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'Looking for additional money? Try out the best financial instrument. https://Slord.startupers.se/gotodate/go'),
(305, 'Crytofah', 'shanevgrabill@hotmail.com', 'Find out about the easiest way of money earning.', 'Find out about the fastest way for a financial independence. https://Slord.startupers.se/gotodate/go'),
(306, 'Crytofah', 'ymrasu1@netzero.com', 'The online income is your key to success.', 'We know how to make our future rich and do you? https://Slord.startupers.se/gotodate/go'),
(307, 'Crytofah', 'hzshiwz@lge.com', 'The financial Robot is your # 1 expert of making money.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Slord.startupers.se/gotodate/go'),
(308, 'Crytofah', 'dj_xela87@hotmail.com', 'Make money in the internet using this Bot. It really works!', 'Making money can be extremely easy if you use this Robot. https://Slord.startupers.se/gotodate/go'),
(309, 'Crytofah', 'kid_kicker77@yahoo.com', 'It is the best time to launch the Robot to get more money.', 'Start making thousands of dollars every week. https://Slord.startupers.se/gotodate/go'),
(310, 'Crytofah', 'ch.wiedemann@gmail.com', 'Make money, not war! Financial Robot is what you need.', 'Make yourself rich in future using this financial robot. https://Slord.startupers.se/gotodate/go'),
(311, 'Crytofah', 'porkstork1@yahoo.com', 'Attention! Here you can earn money online!', 'The online income is your key to success. https://Slord.startupers.se/gotodate/go'),
(312, 'Crytofah', 'rykvz@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', 'Online earnings are the easiest way for financial independence. https://Slord.startupers.se/gotodate/go'),
(313, 'Crytofah', 'orvozq@gmail.com', 'The best online investment tool is found. Learn more!', 'Invest $1 today to make $1000 tomorrow. https://Slord.startupers.se/gotodate/go'),
(314, 'Crytofah', 'vickieseiber_21@yahoo.com', 'Launch the financial Robot and do your business.', 'The additional income for everyone. https://Slord.startupers.se/gotodate/go'),
(315, 'Crytofah', 'tiarog@comcast.net', 'Learn how to make hundreds of backs each day.', 'Launch the best investment instrument to start making money today. https://Slord.startupers.se/gotodate/go'),
(316, 'Crytofah', 'pcolatim@yahoo.com', 'Need money? Get it here easily?', 'The huge income without investments is available. https://Slord.startupers.se/gotodate/go'),
(317, 'Crytofah', 'hhnshans@aol.com', 'Watch your money grow while you invest with the Robot.', 'Most successful people already use Robot. Do you? https://Slord.startupers.se/gotodate/go'),
(318, 'Crytofah', 'mistura.tadeusz@gmail.com', 'Making money is very easy if you use the financial Robot.', 'We know how to make our future rich and do you? https://Slord.elletvweb.it/gotodate/go'),
(319, 'Crytofah', 'minteermr@hotmail.com', 'Check out the newest way to make a fantastic profit.', 'Try out the automatic robot to keep earning all day long. https://Slord.elletvweb.it/gotodate/go'),
(320, 'Crytofah', 'sidorov.rostyic@gmail.com', 'Even a child knows how to make $100 today.', 'No need to stay awake all night long to earn money. Launch the robot. https://Slord.elletvweb.it/gotodate/go'),
(321, 'Crytofah', 'Admin@facadeprint.com', 'We know how to become rich and do you?', 'The additional income is available for everyone using this robot. https://Slord.elletvweb.it/gotodate/go'),
(322, 'Crytofah', 'niff88@gmail.com', 'Have no financial skills? Let Robot make money for you.', 'The online financial Robot is your key to success. https://Slord.elletvweb.it/gotodate/go'),
(323, 'Crytofah', 'pbj1dallas3s@gymencinitas.com', 'Have no financial skills? Let Robot make money for you.', 'Feel free to buy everything you want with the additional income. https://Slord.elletvweb.it/gotodate/go'),
(324, 'Crytofah', 'rramoskikr@hotmail.com', 'Even a child knows how to make $100 today.', 'Online job can be really effective if you use this Robot. https://Slord.elletvweb.it/gotodate/go'),
(325, 'Crytofah', '2000ad@woodsta.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'The additional income for everyone. https://Slord.elletvweb.it/gotodate/go'),
(326, 'Crytofah', 'XLoST61x@aol.com', 'Looking for an easy way to make money? Check out the financial robot.', 'No need to work anymore while you have the Robot launched! https://Slord.elletvweb.it/gotodate/go'),
(327, 'Crytofah', 'qddr@guide3.net', 'Robot never sleeps. It makes money for you 24/7.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Slord.elletvweb.it/gotodate/go'),
(328, 'Crytofah', 'alexdelacolonia@aol.com', 'Thousands of bucks are guaranteed if you use this robot.', 'The online job can bring you a fantastic profit. https://Slord.elletvweb.it/gotodate/go'),
(329, 'Crytofah', 'slicia@hotmail.com', 'Everyone can earn as much as he wants now.', 'Financial robot is the best companion of rich people. https://Slord.elletvweb.it/gotodate/go'),
(330, 'Crytofah', 'alan.r1229@gmail.com', 'Financial robot keeps bringing you money while you sleep.', 'Additional income is now available for anyone all around the world. https://Slord.elletvweb.it/gotodate/go'),
(331, 'Crytofah', 'avweske@yahoo.com', 'Financial robot guarantees everyone stability and income.', 'The huge income without investments is available. https://Slord.elletvweb.it/gotodate/go'),
(332, 'Crytofah', 'tke133@aol.com', 'The fastest way to make you wallet thick is here.', 'Let the Robot bring you money while you rest. https://Slord.elletvweb.it/gotodate/go'),
(333, 'Crytofah', 'vazs2003@yahoo.com', 'Make yourself rich in future using this financial robot.', 'Financial robot guarantees everyone stability and income. https://Slord.elletvweb.it/gotodate/go'),
(334, 'Crytofah', 'Medvedb85@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', 'Check out the new financial tool, which can make you rich. https://Slord.elletvweb.it/gotodate/go'),
(335, 'Crytofah', 'luvlia04@yahoo.com', 'Attention! Here you can earn money online!', 'The financial Robot works for you even when you sleep. https://Slord.elletvweb.it/gotodate/go'),
(336, 'Crytofah', 'Reese456@yahoo.com', 'Earn additional money without efforts and skills.', 'Invest $1 today to make $1000 tomorrow. https://Slord.elletvweb.it/gotodate/go'),
(337, 'Crytofah', 'nabachyn@gmail.com', 'Try out the automatic robot to keep earning all day long.', 'We know how to increase your financial stability. https://Slord.elletvweb.it/gotodate/go'),
(338, 'Crytofah', 'mayrystr07@hotmail.com', 'The huge income without investments is available.', 'Financial independence is what everyone needs. https://Slord.elletvweb.it/gotodate/go'),
(339, 'Crytofah', 'nemowalker84@yahoo.com', 'Try out the best financial robot in the Internet.', 'We know how to make our future rich and do you? https://Slord.elletvweb.it/gotodate/go'),
(340, 'Crytofah', 'davidmex98@yahoo.com', 'The success formula is found. Learn more about it.', 'Launch the robot and let it bring you money. https://Slord.elletvweb.it/gotodate/go'),
(341, 'Crytofah', 'salvel14@hotmail.com', 'Making money in the net is easier now.', 'Make your computer to be you earning instrument. https://Slord.elletvweb.it/gotodate/go'),
(342, 'Crytofah', 'pr7kgb5@hotmail.com', 'Making money can be extremely easy if you use this Robot.', 'Making money in the net is easier now. https://Slord.elletvweb.it/gotodate/go'),
(343, 'Crytofah', 'mescobar1976@yahoo.com', 'The fastest way to make your wallet thick is found.', 'Need money? The financial robot is your solution. https://Slord.elletvweb.it/gotodate/go'),
(344, 'Crytofah', 'thomas.e.olson@hotmail.com', 'There is no need to look for a job anymore. Work online.', 'The fastest way to make your wallet thick is found. https://Slord.elletvweb.it/gotodate/go'),
(345, 'Crytofah', 'pslunawat@rediffmail.com', 'Financial robot is the best companion of rich people.', 'Financial robot guarantees everyone stability and income. https://Slord.elletvweb.it/gotodate/go'),
(346, 'Crytofah', 'jessicadiego33@yahoo.com', 'Everyone can earn as much as he wants now.', 'The success formula is found. Learn more about it. https://Slord.elletvweb.it/gotodate/go'),
(347, 'Crytofah', 'jrrondinelli@gmail.com', 'The huge income without investments is available.', 'No worries if you are fired. Work online. https://Slord.elletvweb.it/gotodate/go'),
(348, 'Crytofah', 's.u5.35.25.1.404@gmail.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Making money is very easy if you use the financial Robot. https://Slord.elletvweb.it/gotodate/go'),
(349, 'Crytofah', 'edharmon1979@comcast.net', 'The financial Robot is your future wealth and independence.', 'Making money can be extremely easy if you use this Robot. https://Slord.elletvweb.it/gotodate/go'),
(350, 'Crytofah', 'txpride379@yahoo.com', 'Using this Robot is the best way to make you rich.', 'Looking for additional money? Try out the best financial instrument. https://Slord.elletvweb.it/gotodate/go'),
(351, 'Crytofah', 'eng_hasan_salman@yahoo.com', 'Buy everything you want earning money online.', 'Make yourself rich in future using this financial robot. https://Slord.elletvweb.it/gotodate/go'),
(352, 'Crytofah', 'anupama.vembar@gmail.com', 'Make your laptop a financial instrument with this program.', 'No need to work anymore. Just launch the robot. https://Slord.elletvweb.it/gotodate/go'),
(353, 'Crytofah', 'genobile@gmail.com', 'No need to work anymore while you have the Robot launched!', 'Financial robot keeps bringing you money while you sleep. https://Slord.elletvweb.it/gotodate/go'),
(354, 'Crytofah', 'chrisgbbac@aol.com', 'We know how to make our future rich and do you?', 'We know how to increase your financial stability. https://Slord.elletvweb.it/gotodate/go'),
(355, 'Crytofah', 'Nlaugh87@gmail.com', 'Need money? Earn it without leaving your home.', 'Make your computer to be you earning instrument. https://Slord.elletvweb.it/gotodate/go'),
(356, 'Crytofah', 'leeanns13@q.com', 'The fastest way to make your wallet thick is found.', 'Still not a millionaire? The financial robot will make you him! https://Slord.elletvweb.it/gotodate/go'),
(357, 'Crytofah', 'pixies_big_sister@yahoo.com', 'Your computer can bring you additional income if you use this Robot.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Slord.elletvweb.it/gotodate/go'),
(358, 'Crytofah', 'FaithEfron@yahoo.com', 'Make money 24/7 without any efforts and skills.', 'The financial Robot works for you even when you sleep. https://Slord.elletvweb.it/gotodate/go'),
(359, 'Crytofah', 'binxswagga@yahoo.com', 'Wow! This Robot is a great start for an online career.', 'Let the financial Robot be your companion in the financial market. https://Slord.elletvweb.it/gotodate/go'),
(360, 'Crytofah', 'hendersoncierra@yahoo.com', 'Need money? Earn it without leaving your home.', 'No need to work anymore while you have the Robot launched! https://Slord.elletvweb.it/gotodate/go'),
(361, 'Crytofah', 'eternalkaos321@yahoo.com', 'Your computer can bring you additional income if you use this Robot.', 'The financial Robot is your # 1 expert of making money. https://Slord.elletvweb.it/gotodate/go'),
(362, 'Crytofah', 'fatihcamiisitma@hotmail.com', 'The best online job for retirees. Make your old ages rich.', 'The online financial Robot is your key to success. https://Slord.elletvweb.it/gotodate/go'),
(363, 'Crytofah', 'shaveel@gmail.com', 'Most successful people already use Robot. Do you?', 'Make money, not war! Financial Robot is what you need. https://Slord.elletvweb.it/gotodate/go'),
(364, 'Crytofah', 'david.kramer2@target.com', 'Earn additional money without efforts and skills.', 'Even a child knows how to make money. This robot is what you need! https://Slord.elletvweb.it/gotodate/go'),
(365, 'Crytofah', 'meredithdon@hotmail.com', 'The fastest way to make your wallet thick is found.', 'Your money work even when you sleep. https://Slord.elletvweb.it/gotodate/go'),
(366, 'Crytofah', 'banesbox@yahoo.com', 'Make money, not war! Financial Robot is what you need.', 'Automatic robot is the best start for financial independence. https://Slord.elletvweb.it/gotodate/go'),
(367, 'Crytofah', 'Jyotikamaharaj@yahoo.com', 'Check out the automatic Bot, which works for you 24/7.', 'Automatic robot is the best start for financial independence. https://Slord.elletvweb.it/gotodate/go'),
(368, 'Crytofah', 'shebadubose@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Everyone who needs money should try this Robot out. https://Slord.elletvweb.it/gotodate/go'),
(369, 'Crytofah', 'Josephguerrero33@gmail.com', 'Feel free to buy everything you want with the additional income.', 'Join the society of successful people who make money here. https://Slord.elletvweb.it/gotodate/go'),
(370, 'Crytofah', 'maddmick81@yahoo.com', 'Small investments can bring tons of dollars fast.', 'Financial robot is a great way to manage and increase your income. https://Slord.elletvweb.it/gotodate/go'),
(371, 'Crytofah', 'computerone13@gmail.com', 'We know how to make our future rich and do you?', 'Have no financial skills? Let Robot make money for you. https://Slord.elletvweb.it/gotodate/go'),
(372, 'Crytofah', 'lori.schisler@yahoo.com', 'Earn additional money without efforts and skills.', 'Have no financial skills? Let Robot make money for you. https://Slord.elletvweb.it/gotodate/go'),
(373, 'Crytofah', 'muslim.brotherhood@yandex.com', 'The huge income without investments is available, now!', 'Everyone can earn as much as he wants now. https://Slord.elletvweb.it/gotodate/go'),
(374, 'Crytofah', 'rogelioortega81@yahoo.com', 'Make your computer to be you earning instrument.', 'The success formula is found. Learn more about it. https://Slord.elletvweb.it/gotodate/go'),
(375, 'Crytofah', 'jvela1010@gmail.com', 'Using this Robot is the best way to make you rich.', 'Launch the robot and let it bring you money. https://Slord.frostyelk.se/gotodate/go'),
(376, 'Crytofah', 'trayamalone@hotmail.com', 'No need to work anymore. Just launch the robot.', 'The best online investment tool is found. Learn more! https://Slord.frostyelk.se/gotodate/go'),
(377, 'Crytofah', 'msann2usa@aim.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Financial robot keeps bringing you money while you sleep. https://Slord.frostyelk.se/gotodate/go'),
(378, 'Crytofah', 'ucslauren@aol.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'There is no need to look for a job anymore. Work online. https://Slord.frostyelk.se/gotodate/go'),
(379, 'Crytofah', 'Taelersenior@gmail.com', 'Start making thousands of dollars every week just using this robot.', 'The huge income without investments is available, now! https://Slord.frostyelk.se/gotodate/go'),
(380, 'Crytofah', 'tcamacho167@yahoo.com', 'Just one click can turn you dollar into $1000.', 'Check out the newest way to make a fantastic profit. https://Slord.frostyelk.se/gotodate/go'),
(381, 'Crytofah', 'Abby.wheat@yahoo.com', 'The success formula is found. Learn more about it.', 'The additional income for everyone. https://Slord.frostyelk.se/gotodate/go'),
(382, 'Crytofah', 'lov32lov3m3@hotmail.com', 'Make dollars just sitting home.', 'Using this Robot is the best way to make you rich. https://Slord.frostyelk.se/gotodate/go'),
(383, 'Crytofah', 'mldph@aol.com', 'Make money in the internet using this Bot. It really works!', 'Financial robot is your success formula is found. Learn more about it. https://Slord.frostyelk.se/gotodate/go'),
(384, 'Crytofah', 'paulds9686@gmail.com', 'One click of the robot can bring you thousands of bucks.', 'Even a child knows how to make money. Do you? https://Slord.frostyelk.se/gotodate/go'),
(385, 'Crytofah', 'sarahcruz409@gmail.com', 'Learn how to make hundreds of backs each day.', 'It is the best time to launch the Robot to get more money. https://Slord.frostyelk.se/gotodate/go'),
(386, 'Crytofah', 'hanrpsmk@gmail.com', 'Making money can be extremely easy if you use this Robot.', 'Financial robot keeps bringing you money while you sleep. https://Slord.frostyelk.se/gotodate/go'),
(387, 'Crytofah', 'kevin1@attbi.com', 'Only one click can grow up your money really fast.', 'Launch the best investment instrument to start making money today. https://Slord.frostyelk.se/gotodate/go'),
(388, 'Crytofah', 'XXHLWSXX@AOL.COM', 'Attention! Here you can earn money online!', 'Buy everything you want earning money online. https://Slord.frostyelk.se/gotodate/go'),
(389, 'Crytofah', 'Jarodhillerman@gmail.com', 'Start making thousands of dollars every week just using this robot.', 'The huge income without investments is available, now! https://Slord.pumpati.de/Slord'),
(390, 'Crytofah', 'frankie091210@gmail.com', 'Attention! Financial robot may bring you millions!', 'No worries if you are fired. Work online. https://Slord.pumpati.de/Slord'),
(391, 'Crytofah', 'barnes6266051@gmail.com', 'Invest $1 today to make $1000 tomorrow.', 'Financial independence is what this robot guarantees. https://Slord.pumpati.de/Slord'),
(392, 'Crytofah', 'crazytejano2003@yahoo.com', 'The additional income is available for everyone using this robot.', 'Make thousands of bucks. Financial robot will help you to do it! https://Slord.pumpati.de/Slord'),
(393, 'Crytofah', 'martylasker@hotmail.com', 'No need to work anymore. Just launch the robot.', 'We have found the fastest way to be rich. Find it out here. https://Slord.pumpati.de/Slord'),
(394, 'Crytofah', 'wabox4@gmail.com', 'Online job can be really effective if you use this Robot.', 'Even a child knows how to make money. Do you? https://Slord.pumpati.de/Slord'),
(395, 'Crytofah', 'pamelageisbert@msn.com', 'Need money? Get it here easily! Just press this to launch the robot.', 'Make thousands of bucks. Financial robot will help you to do it! https://Slord.pumpati.de/Slord'),
(396, 'Crytofah', 'seiya_usagifan@yahoo.com', 'Trust the financial Bot to become rich.', 'The online financial Robot is your key to success. https://Slord.pumpati.de/Slord'),
(397, 'Crytofah', 'jmc4godmusic@yahoo.com', 'Money, money! Make more money with financial robot!', 'Let the Robot bring you money while you rest. https://Slord.pumpati.de/Slord'),
(398, 'Crytofah', 'thewaveking@yahoo.com', 'Try out the automatic robot to keep earning all day long.', 'Watch your money grow while you invest with the Robot. https://Slord.pumpati.de/Slord'),
(399, 'Crytofah', 'esi8806@yahoo.com', 'The financial Robot works for you even when you sleep.', 'Make thousands of bucks. Financial robot will help you to do it! https://Slord.pumpati.de/Slord'),
(400, 'Crytofah', 'got2bsingin@gmail.com', 'This robot can bring you money 24/7.', 'The online income is your key to success. https://Slord.pumpati.de/Slord'),
(401, 'Crytofah', 'kinkynessa@yahoo.com', 'Small investments can bring tons of dollars fast.', 'We have found the fastest way to be rich. Find it out here. https://Slord.pumpati.de/Slord'),
(402, 'Crytofah', 'sarahgylling@hotmail.com', 'Everyone can earn as much as he wants now.', 'Robot is the best way for everyone who looks for financial independence. https://Slord.pumpati.de/Slord'),
(403, 'Crytofah', 'freddurst_fer@hotmail.com', 'We know how to become rich and do you?', 'Earning money in the Internet is easy if you use Robot. https://Slord.pumpati.de/Slord'),
(404, 'Crytofah', 'r.tehranian@yahoo.com', 'Make your money work for you all day long.', 'Let your money grow into the capital with this Robot. https://Slord.pumpati.de/Slord'),
(405, 'Crytofah', 'thanya_tb@hotmail.com', 'Try out the automatic robot to keep earning all day long.', 'Additional income is now available for anyone all around the world. https://Slord.pumpati.de/Slord'),
(406, 'Crytofah', 'zoe.syne@yahoo.com', 'The additional income is available for everyone using this robot.', 'Find out about the fastest way for a financial independence. https://Slord.pumpati.de/Slord'),
(407, 'Crytofah', 'potoros@nate.com', 'No worries if you are fired. Work online.', 'No need to stay awake all night long to earn money. Launch the robot. https://Slord.qbe-medienhaus.de/Slord'),
(408, 'Crytofah', 'perseus313@excite.com', 'The financial Robot is the most effective financial tool in the net!', 'The financial Robot is the most effective financial tool in the net! https://Slord.qbe-medienhaus.de/Slord'),
(409, 'Crytofah', 'b886407@rmqkr.net', 'The financial Robot is the most effective financial tool in the net!', 'Check out the newest way to make a fantastic profit. https://Slord.qbe-medienhaus.de/Slord'),
(410, 'Crytofah', 'selbimattes@gmail.com', 'Make thousands of bucks. Financial robot will help you to do it!', 'Attention! Financial robot may bring you millions! https://Slord.qbe-medienhaus.de/Slord'),
(411, 'Crytofah', 'mxoctavio@yahoo.com', 'Check out the new financial tool, which can make you rich.', 'Financial robot is a great way to manage and increase your income. https://Slord.qbe-medienhaus.de/Slord'),
(412, 'Crytofah', 'jacqui_chapman@hotmail.com', 'Online job can be really effective if you use this Robot.', 'Every your dollar can turn into $100 after you lunch this Robot. https://Slord.qbe-medienhaus.de/Slord'),
(413, 'Crytofah', 'Briandalberts@yahoo.com', 'Small investments can bring tons of dollars fast.', 'Just one click can turn you dollar into $1000. https://Slord.qbe-medienhaus.de/Slord'),
(414, 'Crytofah', 'jcrii@excite.com', 'Let the Robot bring you money while you rest.', 'Rich people are rich because they use this robot. https://Slord.qbe-medienhaus.de/Slord'),
(415, 'Crytofah', 'chrisbydaboss@yahoo.com', 'Make thousands every week working online here.', 'No need to work anymore while you have the Robot launched! https://Slord.qbe-medienhaus.de/Slord'),
(416, 'Crytofah', 'pachmayerk@yahoo.com', 'Learn how to make hundreds of backs each day.', 'Launch the best investment instrument to start making money today. https://Slord.qbe-medienhaus.de/Slord'),
(417, 'Crytofah', 'm.qasamjanhanify@yahoo.com', 'Robot never sleeps. It makes money for you 24/7.', 'The additional income for everyone. https://Slord.qbe-medienhaus.de/Slord'),
(418, 'Crytofah', 'monstermike50@yahoo.com', 'The success formula is found. Learn more about it.', 'Financial robot keeps bringing you money while you sleep. https://Slord.qbe-medienhaus.de/Slord'),
(419, 'Crytofah', 'richard.spenlinger@gmail.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Have no financial skills? Let Robot make money for you. https://Slord.qbe-medienhaus.de/Slord'),
(420, 'Crytofah', 'cjakobsen11@gmail.com', 'Watch your money grow while you invest with the Robot.', 'Need cash? Launch this robot and see what it can. https://Slord.qbe-medienhaus.de/Slord'),
(421, 'Crytofah', 'mr_mdx677@yahoo.com', 'Need money? The financial robot is your solution.', 'Still not a millionaire? The financial robot will make you him! https://Slord.qbe-medienhaus.de/Slord'),
(422, 'Crytofah', 'phfranssen@gmail.com', 'Make thousands of bucks. Financial robot will help you to do it!', 'Automatic robot is the best start for financial independence. https://Slord.qbe-medienhaus.de/Slord'),
(423, 'Crytofah', 'mackenziedoherty@yahoo.com', 'Earn additional money without efforts.', 'Start making thousands of dollars every week. https://Slord.qbe-medienhaus.de/Slord'),
(424, 'Crytofah', 'ran_ruishen0721@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', 'The best online investment tool is found. Learn more! https://Slord.qbe-medienhaus.de/Slord'),
(425, 'Crytofah', 'nidia_rico@yahoo.com', 'Wow! This Robot is a great start for an online career.', 'The financial Robot is your # 1 expert of making money. https://Slord.qbe-medienhaus.de/Slord'),
(426, 'Crytofah', 'jocsu_1@yahoo.com', 'Need cash? Launch this robot and see what it can.', 'Try out the best financial robot in the Internet. https://Slord.qbe-medienhaus.de/Slord'),
(427, 'Crytofah', 'rgzz@climsa.com', 'One dollar is nothing, but it can grow into $100 here.', 'The online income is your key to success. https://Slord.qbe-medienhaus.de/Slord'),
(428, 'Crytofah', 'muhammadfitriadi719@gmail.com', 'Make thousands every week working online here.', 'The online income is your key to success. https://Slord.qbe-medienhaus.de/Slord'),
(429, 'Crytofah', 'kyungla01pd2014@sasstudent.org', 'Financial independence is what everyone needs.', 'Everyone can earn as much as he wants now. https://Slord.qbe-medienhaus.de/Slord'),
(430, 'Crytofah', 'ivanterrer@hotmail.com', 'No need to work anymore. Just launch the robot.', 'Financial robot guarantees everyone stability and income. https://Slord.qbe-medienhaus.de/Slord'),
(431, 'Crytofah', 'nathancollier1996@gmail.com', 'No need to work anymore while you have the Robot launched!', 'We have found the fastest way to be rich. Find it out here. https://Slord.qbe-medienhaus.de/Slord'),
(432, 'Crytofah', 'small_town_gurl@msn.com', 'Start making thousands of dollars every week just using this robot.', 'Need money? Earn it without leaving your home. https://Slord.qbe-medienhaus.de/Slord'),
(433, 'Crytofah', 'KWLowery@hotmail.com', 'Robot is the best solution for everyone who wants to earn.', 'Automatic robot is the best start for financial independence. https://Slord.qbe-medienhaus.de/Slord'),
(434, 'Crytofah', 'maryellenmanley@hotmail.com', 'The online job can bring you a fantastic profit.', 'The financial Robot is the most effective financial tool in the net! https://Slord.qbe-medienhaus.de/Slord'),
(435, 'Crytofah', 'yrcs2009@yahoo.com', 'No need to work anymore. Just launch the robot.', 'Make money in the internet using this Bot. It really works! https://Slord.qbe-medienhaus.de/Slord'),
(436, 'Crytofah', 'kllynch@mchsi.com', 'The huge income without investments is available, now!', 'The online income is the easiest ways to make you dream come true. https://drive.google.com/file/d/1Rqop87rM8CQDz6UtBb2tXehOKwoUG4KK/view?usp=sharing'),
(437, 'Crytofah', 'brittcox89@yahoo.com', 'We know how to become rich and do you?', 'Launch the financial Robot and do your business. https://drive.google.com/file/d/1klikjyPA_gfcc5swGrEuYF6AC0AYt2dI/view?usp=sharing'),
(438, 'Crytofah', 'xnahgsvt@hotmailboxlive.com', 'Find out about the easiest way of money earning.', 'Financial independence is what everyone needs. https://drive.google.com/file/d/1iPHBY0ZdbiBAqS_jjakxVNLlSevtFd41/view?usp=sharing'),
(439, 'Crytofah', 'Teale426@netscape.com', 'No need to work anymore. Just launch the robot.', 'Launch the financial Bot now to start earning. https://drive.google.com/file/d/1ZtpcAfZ5MIqMTOn0hOHHCykKbwSNPrmw/view?usp=sharing'),
(440, 'Crytofah', 'juantorres_jr@yahoo.com', 'Launch the robot and let it bring you money.', 'Robot is the best solution for everyone who wants to earn. https://drive.google.com/file/d/1ZtpcAfZ5MIqMTOn0hOHHCykKbwSNPrmw/view?usp=sharing'),
(441, 'Crytofah', 'giddy_up_superwoman@yahoo.com', 'One click of the robot can bring you thousands of bucks.', 'Invest $1 today to make $1000 tomorrow. https://drive.google.com/file/d/1HMRjvdPNeZ2W7wQLK2YHm_Q_pmRH4IzX/view?usp=sharing'),
(442, 'Crytofah', 'christopherchai2000@yahoo.com', 'The online job can bring you a fantastic profit.', 'Even a child knows how to make money. Do you? https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing'),
(443, 'Crytofah', 'rudysoriano16@yahoo.com', 'Your money work even when you sleep.', 'Let the financial Robot be your companion in the financial market. https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing'),
(444, 'Crytofah', 'luck_smitty12@hotmail.com', 'We know how to become rich and do you?', 'Start making thousands of dollars every week just using this robot. https://drive.google.com/file/d/1z2pZkAuKV9gLJURJKnMx-Tik7d1gjSUI/view'),
(445, 'Crytofah', 'Szarowny@gmail.com', 'Make dollars just sitting home.', 'Financial independence is what everyone needs. https://drive.google.com/file/d/1z2pZkAuKV9gLJURJKnMx-Tik7d1gjSUI/view'),
(446, 'Crytofah', 'wohlsson@comcast.net', 'Need money? The financial robot is your solution.', 'Need money? Earn it without leaving your home. https://Slord.gizmo-inc.fr/Slord'),
(447, 'Crytofah', 'ekasusanthasusantha@ymail.com', 'Try out the automatic robot to keep earning all day long.', 'The financial Robot is your # 1 expert of making money. https://Slord.gizmo-inc.fr/Slord'),
(448, 'Crytofah', 'ambber.morton@gmail.com', 'Attention! Financial robot may bring you millions!', 'No need to work anymore. Just launch the robot. https://Slord.gizmo-inc.fr/Slord'),
(449, 'Crytofah', 'cdub2430@aol.com', 'Looking forward for income? Get it online.', 'The huge income without investments is available, now! https://Slord.gizmo-inc.fr/Slord'),
(450, 'Crytofah', 'cab.1981@gmail.com', 'Need some more money? Robot will earn them really fast.', 'The additional income is available for everyone using this robot. https://Slord.gizmo-inc.fr/Slord'),
(451, 'Crytofah', 'jrdavenport@live.com', 'Check out the newest way to make a fantastic profit.', 'Try out the best financial robot in the Internet. https://Slord.gizmo-inc.fr/Slord'),
(452, 'Crytofah', 'flexiburger@gmail.com', 'The success formula is found. Learn more about it.', 'Make thousands every week working online here. https://Slord.gizmo-inc.fr/Slord'),
(453, 'Crytofah', 'Starzxoxo3@aol.com', 'Make your laptop a financial instrument with this program.', 'Start making thousands of dollars every week. https://Slord.gizmo-inc.fr/Slord'),
(454, 'Crytofah', 'bjohnnysgirl1977@aol.com', 'Make yourself rich in future using this financial robot.', 'Thousands of bucks are guaranteed if you use this robot. https://Slord.chronicleshardcore.de/Slord'),
(455, 'Crytofah', 'wpcc91486@aol.com', 'Looking for additional money? Try out the best financial instrument.', 'Launch the best investment instrument to start making money today. https://Slord.chronicleshardcore.de/Slord'),
(456, 'Crytofah', 'raeeschoudhary83@yahoo.com', 'Financial robot is the best companion of rich people.', 'Making money is very easy if you use the financial Robot. https://Slord.chronicleshardcore.de/Slord'),
(457, 'Crytofah', 'MJHproductions@gmail.com', 'Have no money? Earn it online.', 'Start making thousands of dollars every week. https://Slord.chronicleshardcore.de/Slord'),
(458, 'MariaSa', 'mariaSa@gmail.com', 'Ι\'m not ϳеalоuѕ. Cаn I find hеrе serious man? :)', 'Hello!\r\nPerhарs my mеssаge is too ѕрecifiс.\r\nВut mу oldеr ѕіster found a wоndеrful mаn hеrе and theу have а great relаtiоnѕhір, but what about me?\r\nI am 22 yeаrѕ old, Мarіа, from thе Сzech Rерubliс, knоw Еnglіѕh lаnguage аlso\r\nАnd... better tо sаy іt immеdіаtely. I аm biѕеxuаl. I am nоt ϳеаlouѕ оf аnоthеr womаn... еsресiаlly if wе mаke lоvе tоgether.\r\nAh yеѕ, Ι сооk verу tаѕtуǃ and Ι lovе nоt onlу cook ;))\r\nIm rеаl gіrl аnd lоokіng for sеrіous аnd hot rеlatіоnѕhip...\r\nΑnywау, you can find mу prоfile here: http://tirmoresi.ga/usr-87832/ \r\n'),
(459, 'Crytofah', 'noola33@hotmail.com', 'Need money? Earn it without leaving your home.', 'No need to work anymore. Just launch the robot. https://Slord.chronicleshardcore.de/Slord'),
(460, 'Crytofah', 'the_king_of_icehouse@yahoo.com', 'Need money? The financial robot is your solution.', 'This robot will help you to make hundreds of dollars each day. https://Slord.chronicleshardcore.de/Slord'),
(461, 'Crytofah', 'r.e.em.itkrel@gmail.com', 'Trust the financial Bot to become rich.', 'Most successful people already use Robot. Do you? https://Slord.danceit.es/Slord'),
(462, 'Crytofah', 'dyaa_hob2002@yahoo.com', 'One click of the robot can bring you thousands of bucks.', 'This robot will help you to make hundreds of dollars each day. https://Slord.danceit.es/Slord'),
(463, 'Crytofah', 'calebcorliss@flash.net', 'One click of the robot can bring you thousands of bucks.', 'Start making thousands of dollars every week just using this robot. https://Slord.danceit.es/Slord'),
(464, 'Crytofah', 'daniel-freeones@electricrain.com', 'Attention! Here you can earn money online!', 'Try out the best financial robot in the Internet. https://Slord.danceit.es/Slord'),
(465, 'Crytofah', 'allarez_14@ymail.com', 'Make dollars staying at home and launched this Bot.', 'This robot will help you to make hundreds of dollars each day. https://Slord.danceit.es/Slord'),
(466, 'Crytofah', 'daviddennis125@yahoo.com', 'Have no money? Earn it online.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Slord.danceit.es/Slord'),
(467, 'Crytofah', 'palermo.sarah@ymail.com', 'Make your money work for you all day long.', 'Trust your dollar to the Robot and see how it grows to $100. https://Slord.echinat.de/Slord'),
(468, 'Crytofah', 'ValerieATillman@aol.com', 'Earn additional money without efforts.', 'It is the best time to launch the Robot to get more money. https://Slord.echinat.de/Slord'),
(469, 'Crytofah', 'Fe.lts.c.h2.3@gmail.com', 'Make dollars just sitting home.', 'Watch your money grow while you invest with the Robot. https://Slord.echinat.de/Slord'),
(470, 'Crytofah', 'Socherstar21@yahoo.com', 'Most successful people already use Robot. Do you?', 'This robot can bring you money 24/7. https://Slord.echinat.de/Slord'),
(471, 'Crytofah', 'glassbanger@att.net', 'The fastest way to make your wallet thick is found.', 'Your money keep grow 24/7 if you use the financial Robot. https://Slord.echinat.de/Slord'),
(472, 'Crytofah', 'vandana.rastogi@wipro.com', 'Make money 24/7 without any efforts and skills.', 'The online financial Robot is your key to success. https://Slord.echinat.de/Slord'),
(473, 'Crytofah', 'divorceprocergx@yahoo.com', 'Make money online, staying at home this cold winter.', 'The best way for everyone who rushes for financial independence. https://Slord.echinat.de/Slord'),
(474, 'Crytofah', 'jsneak@aol.com', 'Still not a millionaire? Fix it now!', 'Let the Robot bring you money while you rest. https://Slord.echinat.de/Slord'),
(475, 'Crytofah', 'kkxkue@gmail.com', 'Looking for additional money? Try out the best financial instrument.', '# 1 financial expert in the net! Check out the new Robot. https://Slord.echinat.de/Slord'),
(476, 'Crytofah', 'kristincampbell47@gmail.com', 'Join the society of successful people who make money here.', 'Every your dollar can turn into $100 after you lunch this Robot. https://Slord.echinat.de/Slord'),
(477, 'Crytofah', 'phyptobby@gmail.com', 'Robot never sleeps. It makes money for you 24/7.', 'Your computer can bring you additional income if you use this Robot. https://Slord.echinat.de/Slord'),
(478, 'Crytofah', 'albert@yahoo.com', 'Find out about the fastest way for a financial independence.', 'Robot is the best way for everyone who looks for financial independence. https://Slord.echinat.de/Slord'),
(479, 'Crytofah', 'mangaman2@comcast.net', 'Provide your family with the money in age. Launch the Robot!', 'Try out the best financial robot in the Internet. https://Slord.echinat.de/Slord'),
(480, 'Crytofah', 'Abramcgrath@yahoo.com', 'Robot is the best way for everyone who looks for financial independence.', 'One click of the robot can bring you thousands of bucks. https://Slord.echinat.de/Slord'),
(481, 'Crytofah', 'katie_hoyt2000@yahoo.com', 'Try out the automatic robot to keep earning all day long.', 'Earning money in the Internet is easy if you use Robot. https://Slord.echinat.de/Slord'),
(482, 'Crytofah', 'david.rider@btinternet.com', 'Have no money? Earn it online.', 'Making money is very easy if you use the financial Robot. https://Slord.echinat.de/Slord'),
(483, 'Crytofah', 'sawwdust@ymail.com', 'The online income is your key to success.', 'Need some more money? Robot will earn them really fast. https://Slord.echinat.de/Slord'),
(484, 'Crytofah', 'DOUG@360FINANCIAL.COM', 'The success formula is found. Learn more about it.', 'Check out the new financial tool, which can make you rich. https://Slord.echinat.de/Slord'),
(485, 'Crytofah', 'Harleydavidsonhag@gmail.com', 'Financial independence is what this robot guarantees.', 'This robot can bring you money 24/7. https://Slord.echinat.de/Slord'),
(486, 'Crytofah', 'mmcdonough@nycap.rr.com', 'Earning $1000 a day is easy if you use this financial Robot.', 'Still not a millionaire? The financial robot will make you him! https://Slord.echinat.de/Slord'),
(487, 'Crytofah', '2macamb7@gmail.com', 'Make thousands every week working online here.', 'Have no money? Earn it online. https://Slord.echinat.de/Slord'),
(488, 'Crytofah', 'townsend.melinda@yahoo.com', 'There is no need to look for a job anymore. Work online.', 'There is no need to look for a job anymore. Work online. https://Slord.echinat.de/Slord'),
(489, 'Crytofah', 'cookiemonster181@hotmail.com', 'Buy everything you want earning money online.', 'Attention! Financial robot may bring you millions! https://Slord.echinat.de/Slord'),
(490, 'Crytofah', 'mullennate@gmail.com', 'Just one click can turn you dollar into $1000.', 'Most successful people already use Robot. Do you? https://Slord.echinat.de/Slord'),
(491, 'Crytofah', 'chibeast@yahoo.com', 'Make yourself rich in future using this financial robot.', 'Make dollars just sitting home. https://Slord.echinat.de/Slord'),
(492, 'Crytofah', 'jacksonjenni66@yahoo.com', 'Feel free to buy everything you want with the additional income.', 'The best way for everyone who rushes for financial independence. https://Slord.echinat.de/Slord'),
(493, 'Crytofah', 'pfs77@cox.net', 'Looking for an easy way to make money? Check out the financial robot.', 'The best online job for retirees. Make your old ages rich. https://Slord.echinat.de/Slord'),
(494, 'Crytofah', 'mark.pupillo@gmail.com', 'Financial robot is the best companion of rich people.', 'Even a child knows how to make money. This robot is what you need! https://Slord.echinat.de/Slord'),
(495, 'Crytofah', 'bouchard@numail.org', 'The financial Robot is the most effective financial tool in the net!', 'One dollar is nothing, but it can grow into $100 here. https://Slord.echinat.de/Slord'),
(496, 'Crytofah', 'jjwj9900@yahoo.com', 'The best online investment tool is found. Learn more!', 'Financial independence is what this robot guarantees. https://Slord.echinat.de/Slord'),
(497, 'Crytofah', 'martinezjd31@yahoo.com', 'Wow! This Robot is a great start for an online career.', 'Additional income is now available for anyone all around the world. https://Slord.echinat.de/Slord'),
(498, 'Crytofah', 'batmansapimp@hotmail.com', 'Provide your family with the money in age. Launch the Robot!', 'Even a child knows how to make $100 today. https://Slord.echinat.de/Slord'),
(499, 'Crytofah', 'gwtp128@gmail.com', 'Earning money in the Internet is easy if you use Robot.', 'Make money online, staying at home this cold winter. https://Slord.echinat.de/Slord'),
(500, 'Crytofah', 'kps61@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Everyone who needs money should try this Robot out. https://Slord.echinat.de/Slord'),
(501, 'Crytofah', 'qogdon@aol.com', 'Rich people are rich because they use this robot.', 'Even a child knows how to make $100 today. https://Slord.echinat.de/Slord'),
(502, 'Crytofah', 'shawnblackburn25@hotmail.com', 'Making money can be extremely easy if you use this Robot.', 'We know how to increase your financial stability. https://Slord.echinat.de/Slord'),
(503, 'Crytofah', 'TVAngel2004@aol.com', 'Earn additional money without efforts.', 'Earning money in the Internet is easy if you use Robot. https://Slord.echinat.de/Slord'),
(504, 'Crytofah', 'lrice@mrpk.org', 'Financial independence is what everyone needs.', 'It is the best time to launch the Robot to get more money. https://Slord.echinat.de/Slord'),
(505, 'Crytofah', 'wiavery@sbcglobal.net', 'The online income is your key to success.', 'Make money, not war! Financial Robot is what you need. https://Slord.echinat.de/Slord'),
(506, 'Crytofah', 'marco7648@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'This robot can bring you money 24/7. https://Slord.echinat.de/Slord'),
(507, 'Crytofah', 'ZN-LXL@hotmail.com', 'Check out the automatic Bot, which works for you 24/7.', 'Financial robot is your success formula is found. Learn more about it. https://Slord.echinat.de/Slord'),
(508, 'Crytofah', 'jpmull@mac.com', 'Make thousands every week working online here.', 'Financial robot is the best companion of rich people. https://Slord.echinat.de/Slord'),
(509, 'Crytofah', 'giggles3132001@yahoo.com', 'The best way for everyone who rushes for financial independence.', 'Start making thousands of dollars every week. https://Slord.echinat.de/Slord'),
(510, 'Crytofah', 'snafuedgeek@gmail.com', 'Wow! This Robot is a great start for an online career.', 'The huge income without investments is available, now! https://Slord.echinat.de/Slord'),
(511, 'Crytofah', 'geneendayess@hotmail.com', 'It is the best time to launch the Robot to get more money.', 'Feel free to buy everything you want with the additional income. https://Slord.echinat.de/Slord'),
(512, 'Crytofah', 'jackizmental@hotmail.com', 'Attention! Financial robot may bring you millions!', 'Thousands of bucks are guaranteed if you use this robot. https://Slord.echinat.de/Slord'),
(513, 'Crytofah', 'Bloolvemo7@gmail.com', 'See how Robot makes $1000 from $1 of investment.', 'Your computer can bring you additional income if you use this Robot. https://Slord.echinat.de/Slord'),
(514, 'Crytofah', 'raressh_09@yahoo.com', 'The financial Robot is your # 1 expert of making money.', 'Let your money grow into the capital with this Robot. https://Slord.echinat.de/Slord'),
(515, 'Crytofahfah', 'nkrisheila@yahoo.com', 'Make money, not war! Financial Robot is what you need.', 'Make money online, staying at home this cold winter. https://Slord.rbertilsson.se/ '),
(516, 'Crytofahfah', 'ekeprincess88@yahoo.com', 'Attention! Financial robot may bring you millions!', 'Robot never sleeps. It makes money for you 24/7. https://Slord.rbertilsson.se/ '),
(517, 'Crytofahfah', 'intrepidspanielstig@yahoo.com', 'The online financial Robot is your key to success.', 'The financial Robot is the most effective financial tool in the net! https://Slord.rbertilsson.se/ '),
(518, 'Crytofahfah', 'Jsjfloyd@gmail.com', 'It is the best time to launch the Robot to get more money.', 'Launch the robot and let it bring you money. https://Slord.rbertilsson.se/ '),
(519, 'Crytofahfah', 'agsgosng@aol.com', 'Financial robot keeps bringing you money while you sleep.', 'Launch the financial Bot now to start earning. https://Slord.rbertilsson.se/ ');
INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(520, 'Crytofah', 'joedshadow@yahoo.com', 'Make your computer to be you earning instrument.', 'The best online job for retirees. Make your old ages rich. https://riviello.es/promo'),
(521, 'Crytofah', 'rutita_tita@hotmail.com', 'Need money? Earn it without leaving your home.', 'Feel free to buy everything you want with the additional income. https://riviello.es/promo'),
(522, 'Crytofah', 'vigo_ernesto_1981@elpatevskiy.com', 'Only one click can grow up your money really fast.', 'Still not a millionaire? Fix it now! https://riviello.es/promo'),
(523, 'Crytofah', 'myth16@yahoo.com', 'One click of the robot can bring you thousands of bucks.', 'This robot will help you to make hundreds of dollars each day. https://riviello.es/promo'),
(524, 'Crytofah', 'fattnikk@gmail.com', 'Earning $1000 a day is easy if you use this financial Robot.', 'Have no money? It’s easy to earn them online here. https://riviello.es/promo'),
(525, 'Crytofah', 'luvinhiphop@gmail.com', 'Financial robot keeps bringing you money while you sleep.', 'Make money online, staying at home this cold winter. https://riviello.es/promo'),
(526, 'Crytofah', 'jaronson@cox.net', 'Everyone can earn as much as he wants now.', 'Need money? Get it here easily! Just press this to launch the robot. https://riviello.es/promo'),
(527, 'Crytofah', 'a.m.a.ndaao.ti@gmail.com', 'Let your money grow into the capital with this Robot.', 'Financial robot is the best companion of rich people. https://riviello.es/promo'),
(528, 'Crytofah', 'rykvz@yahoo.com', 'Learn how to make hundreds of backs each day.', 'Make dollars staying at home and launched this Bot. https://riviello.es/promo'),
(529, 'Crytofah', 'suniln143@gmail.com', 'Only one click can grow up your money really fast.', 'Every your dollar can turn into $100 after you lunch this Robot. https://riviello.es/promo'),
(530, 'Crytofah', 'casper978@aol.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'See how Robot makes $1000 from $1 of investment. https://riviello.es/promo'),
(531, 'Crytofah', 'na@no.com', 'Try out the automatic robot to keep earning all day long.', 'Your money keep grow 24/7 if you use the financial Robot. https://riviello.es/promo'),
(532, 'Crytofah', 'scooterbummm@yahoo.com', 'Have no money? It’s easy to earn them online here.', 'The financial Robot is your # 1 expert of making money. https://riviello.es/promo'),
(533, 'Crytofah', 'selloditlhake@gmail.com', 'Start your online work using the financial Robot.', 'Learn how to make hundreds of backs each day. https://riviello.es/promo'),
(534, 'Crytofah', 'chelo092359@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://riviello.es/promo'),
(535, 'Crytofah', 'maria.gallo@gmail.com', 'Have no financial skills? Let Robot make money for you.', 'Make your money work for you all day long. https://riviello.es/promo'),
(536, 'Crytofah', 'h121chat@yahoo.com', 'Find out about the easiest way of money earning.', 'Earn additional money without efforts and skills. https://riviello.es/promo'),
(537, 'Crytofah', 'qadirmomma@yahoo.com', 'Try out the automatic robot to keep earning all day long.', 'Make yourself rich in future using this financial robot. https://riviello.es/promo'),
(538, 'Crytofah', 'nmcknight@gmail.com', 'Launch the financial Robot and do your business.', 'We know how to become rich and do you? https://riviello.es/promo'),
(539, 'Crytofah', 'lvpuccmastg@hotmails.com', 'We know how to become rich and do you?', 'Make thousands every week working online here. https://riviello.es/promo'),
(540, 'Crytofah', 'bobbyhummel@gmail.com', 'Additional income is now available for anyone all around the world.', 'The financial Robot is the most effective financial tool in the net! https://riviello.es/promo'),
(541, 'Crytofah', 'ebeuvckerannabnoelle@hotmail.com', 'The online financial Robot is your key to success.', 'Still not a millionaire? The financial robot will make you him! https://riviello.es/promo'),
(542, 'Crytofah', 'rnrxpdevwk@authenticsportsshop.com', 'Need money? Earn it without leaving your home.', 'Make your laptop a financial instrument with this program. http://go.tazalus.com/0j0l'),
(543, 'Crytofah', 'logicjack@gmail.com', 'Need cash? Launch this robot and see what it can.', 'The additional income is available for everyone using this robot. http://go.tazalus.com/0j0l'),
(544, 'Crytofah', 'cmikeela@yahoo.com', 'Make dollars staying at home and launched this Bot.', 'Robot never sleeps. It makes money for you 24/7. http://go.tazalus.com/0j0l'),
(545, 'Crytofah', 'engr.habib781@gmail.com', 'Need money? Earn it without leaving your home.', 'Make money, not war! Financial Robot is what you need. http://go.tazalus.com/0j0l'),
(546, 'Crytofah', 'kushfit@aol.com', 'Need cash? Launch this robot and see what it can.', 'Make your laptop a financial instrument with this program. http://go.tazalus.com/0j0l'),
(547, 'Crytofah', 'Aralay97@hotmail.com', 'Most successful people already use Robot. Do you?', 'Launch the financial Robot and do your business. http://go.tazalus.com/0j0l'),
(548, 'Crytofah', 'sunilbipl63@yahoo.com', 'Make money online, staying at home this cold winter.', 'Make thousands of bucks. Pay nothing. http://go.tazalus.com/0j0l'),
(549, 'Crytofah', 'daniel.rhoades.94@gmail.com', 'Financial robot guarantees everyone stability and income.', 'Making money is very easy if you use the financial Robot. http://go.tazalus.com/0j0l'),
(550, 'Crytofah', 'lindsay.w.hewitt@gmail.com', 'Looking for an easy way to make money? Check out the financial robot.', 'Every your dollar can turn into $100 after you lunch this Robot. http://go.tazalus.com/0j0l'),
(551, 'Crytofah', 'mrchsal@gmail.com', '# 1 financial expert in the net! Check out the new Robot.', 'Looking for additional money? Try out the best financial instrument. http://go.tazalus.com/0j0l'),
(552, 'Crytofah', 'preety_pink_powder@hotmail.com', 'Financial Robot is #1 investment tool ever. Launch it!', '# 1 financial expert in the net! Check out the new Robot. http://go.tazalus.com/0j0l'),
(553, 'Crytofah', 'hungurnaguede@vinbazar.com', 'Check out the automatic Bot, which works for you 24/7.', 'Just one click can turn you dollar into $1000. http://go.tazalus.com/0j0l'),
(554, 'Crytofah', 'diesel_banana@hotmail.com', 'The fastest way to make you wallet thick is here.', '# 1 financial expert in the net! Check out the new Robot. http://go.tazalus.com/0j0l'),
(555, 'Crytofah', 'lisbell09@aol.com', 'Find out about the easiest way of money earning.', 'Looking for additional money? Try out the best financial instrument. http://go.tazalus.com/0j0l'),
(556, 'Crytofah', 'oana_metehoiu@yahoo.com', 'The online income is your key to success.', 'The best way for everyone who rushes for financial independence. http://go.tazalus.com/0j0l'),
(557, 'Crytofah', 'smbren01@verizon.net', 'Try out the best financial robot in the Internet.', 'Need money? Get it here easily? http://go.tazalus.com/0j0l'),
(558, 'Crytofah', 'barbshoe@gmail.com', 'Financial robot is your success formula is found. Learn more about it.', 'The success formula is found. Learn more about it. http://go.tazalus.com/0j0l'),
(559, 'Crytofah', 'rhodastempin@gmail.com', 'Let the Robot bring you money while you rest.', 'Everyone who needs money should try this Robot out. http://go.tazalus.com/0j0l'),
(560, 'Crytofah', 'jakesupreme@yahoo.com', 'The online income is your key to success.', 'It is the best time to launch the Robot to get more money. http://go.tazalus.com/0j0l'),
(561, 'Crytofah', 'morganlarry83@yahoo.com', 'Earn additional money without efforts.', 'Making money in the net is easier now. http://go.tazalus.com/0j0l'),
(562, 'Crytofah', 'sanjeev_kushu@yahoo.com', 'Trust the financial Bot to become rich.', 'Make dollars staying at home and launched this Bot. http://go.tazalus.com/0j0l'),
(563, 'Crytofah', 'rachou12345@hotmail.com', 'Financial robot is a great way to manage and increase your income.', 'Buy everything you want earning money online. http://go.tazalus.com/0j0l'),
(564, 'Crytofah', 'twobeeas@hotmail.com', 'Most successful people already use Robot. Do you?', 'Your money keep grow 24/7 if you use the financial Robot. http://go.tazalus.com/0j0l'),
(565, 'Crytofah', 'huaifqiaola@gmail.com', 'Making money can be extremely easy if you use this Robot.', 'The online income is the easiest ways to make you dream come true. http://go.tazalus.com/0j0l'),
(566, 'Crytofah', 'squemeneur@laposte.net', 'Make your money work for you all day long.', 'Still not a millionaire? Fix it now! http://go.tazalus.com/0j0l'),
(567, 'Crytofah', 'strictlyviaspam@gmail.com', 'No need to worry about the future if your use this financial robot.', 'No need to work anymore. Just launch the robot. http://go.tazalus.com/0j0l'),
(568, 'Crytofah', 'AstridWalshvjt+Behrens9087@hotmail.com', 'The online income is your key to success.', 'Make thousands of bucks. Pay nothing. http://go.tazalus.com/0j0l'),
(569, 'Crytofah', 'soki_lu@yahoo.com', 'Robot is the best way for everyone who looks for financial independence.', 'The success formula is found. Learn more about it. http://go.tazalus.com/0j0l'),
(570, 'Crytofah', 'quantico.k@hmail.com', 'Have no money? It’s easy to earn them online here.', 'Wow! This is a fastest way for a financial independence. http://go.tazalus.com/0j0l'),
(571, 'Crytofah', 'davidwillson463@btinternet.com', 'Join the society of successful people who make money here.', 'No need to stay awake all night long to earn money. Launch the robot. http://go.tazalus.com/0j0l'),
(572, 'Crytofah', 'BRKyle@yahoo.com', 'Money, money! Make more money with financial robot!', 'Financial robot is your success formula is found. Learn more about it. http://go.tazalus.com/0j0l'),
(573, 'Crytofah', 'rahmaan_aleem@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'The financial Robot is your # 1 expert of making money. http://go.tazalus.com/0j0l'),
(574, 'Crytofah', 'marieevacute@gmail.com', 'Earning money in the Internet is easy if you use Robot.', 'Make thousands of bucks. Pay nothing. http://go.tazalus.com/0j0l'),
(575, 'Crytofah', 'danielmr_010275@hotmail.com', 'The best online job for retirees. Make your old ages rich.', 'The best online job for retirees. Make your old ages rich. http://go.tazalus.com/0j0l'),
(576, 'Crytofah', 'nofluapi@gmail.com', 'It is the best time to launch the Robot to get more money.', 'Robot is the best solution for everyone who wants to earn. http://go.tazalus.com/0j0l'),
(577, 'Crytofah', 'funkymonkie232@network.net', 'We have found the fastest way to be rich. Find it out here.', 'Make your money work for you all day long. http://go.tygyguip.com/096s'),
(578, 'Crytofah', 'whaleross12@gmail.com', 'Launch the best investment instrument to start making money today.', 'No need to work anymore. Just launch the robot. http://go.tygyguip.com/096s'),
(579, 'Crytofah', 'reanna616@hotmail.com', 'Still not a millionaire? The financial robot will make you him!', 'The additional income is available for everyone using this robot. http://go.tygyguip.com/096s'),
(580, 'Crytofah', 'elisul1981@gmail.com', 'Wow! This is a fastest way for a financial independence.', 'Everyone can earn as much as he wants suing this Bot. https://emdn.cl/promo'),
(581, 'Crytofah', 'yzarcur@gmail.com', 'Everyone can earn as much as he wants suing this Bot.', 'Online Bot will bring you wealth and satisfaction. https://emdn.cl/promo'),
(582, 'Crytofah', 'sapson@vsnl.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Additional income is now available for anyone all around the world. https://emdn.cl/promo'),
(583, 'Crytofah', 'jasmine.schaffner@aol.com', 'The fastest way to make you wallet thick is here.', 'Robot is the best solution for everyone who wants to earn. https://emdn.cl/promo'),
(584, 'Crytofah', 'prettyricky900@yahoo.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Learn how to make hundreds of backs each day. https://emdn.cl/promo'),
(585, 'Crytofah', 'makinitthistime46@yahoo.com', 'Even a child knows how to make money. This robot is what you need!', 'Try out the best financial robot in the Internet. https://emdn.cl/promo'),
(586, 'Crytofah', 'worley.angela@yahoo.com', 'Everyone can earn as much as he wants suing this Bot.', 'The financial Robot is your future wealth and independence. https://emdn.cl/promo'),
(587, 'Crytofah', 'emilyshumaker2014@yahoo.com', 'Thousands of bucks are guaranteed if you use this robot.', 'Invest $1 today to make $1000 tomorrow. https://emdn.cl/promo'),
(588, 'Crytofah', 'sago01@hotmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'Find out about the fastest way for a financial independence. https://emdn.cl/promo'),
(589, 'Crytofah', 'mclaneeithne@gmail.com', 'We have found the fastest way to be rich. Find it out here.', 'Join the society of successful people who make money here. https://tiendaskon.com.es/promo'),
(590, 'Crytofah', 'amtornbjerg@gmail.com', 'The success formula is found. Learn more about it.', 'The online income is your key to success. https://tiendaskon.com.es/promo'),
(591, 'Crytofah', 'crazymustan@gmail.com', 'Still not a millionaire? Fix it now!', 'Make money 24/7 without any efforts and skills. https://tiendaskon.com.es/promo'),
(592, 'Crytofah', 'hunnybun1670@aol.com', 'Invest $1 today to make $1000 tomorrow.', 'Find out about the fastest way for a financial independence. https://tiendaskon.com.es/promo'),
(593, 'Crytofah', 'chantaviapippins@yahoo.com', 'The financial Robot is your # 1 expert of making money.', 'Have no money? It’s easy to earn them online here. https://tiendaskon.com.es/promo'),
(594, 'Crytofah', 'krysmatic02@hotmail.com', 'Financial robot guarantees everyone stability and income.', 'The online job can bring you a fantastic profit. https://tiendaskon.com.es/promo'),
(595, 'Crytofah', 'pgsivarajan@rediffmail.com', 'The best online job for retirees. Make your old ages rich.', 'Make thousands every week working online here. https://tiendaskon.com.es/promo'),
(596, 'Crytofah', 'l.uc.k.yfo.rw.ar.de.r2@googlemail.com', 'Most successful people already use Robot. Do you?', 'Need some more money? Robot will earn them really fast. https://tiendaskon.com.es/promo'),
(597, 'Crytofah', 'kimbybaker@yahoo.com', 'Just one click can turn you dollar into $1000.', 'Making money in the net is easier now. https://tiendaskon.com.es/promo'),
(598, 'Crytofah', 'REITO@SBCGLOBAL.NET', 'We know how to become rich and do you?', 'We know how to become rich and do you? https://tiendaskon.com.es/promo'),
(599, 'Crytofah', 'andrewjr18@gmail.com', 'Financial independence is what everyone needs.', 'The best online investment tool is found. Learn more! https://hierbalimon.es/promo'),
(600, 'Crytofah', 'keswartz@verizon.net', 'Make thousands every week working online here.', 'The huge income without investments is available. https://hierbalimon.es/promo'),
(601, 'Crytofah', 'sales@aktion2009.com', 'Additional income is now available for anyone all around the world.', 'Looking for additional money? Try out the best financial instrument. https://hierbalimon.es/promo'),
(602, 'Crytofah', 'venturac901@gmail.com', 'Looking for an easy way to make money? Check out the financial robot.', 'The online income is your key to success. https://hierbalimon.es/promo'),
(603, 'Crytofah', 'shannonmarsland@hotmail.com', 'See how Robot makes $1000 from $1 of investment.', 'Need money? Get it here easily! Just press this to launch the robot. https://hierbalimon.es/promo'),
(604, 'Crytofah', 'cascade_entp@yahoo.com', 'The financial Robot is your future wealth and independence.', 'Make money 24/7 without any efforts and skills. https://hierbalimon.es/promo'),
(605, 'Crytofah', 'jroberts@jsrconsulting.com', 'The fastest way to make your wallet thick is found.', 'Launch the financial Robot and do your business. https://hierbalimon.es/promo'),
(606, 'Crytofah', 'michilot10@yahoo.com', 'The financial Robot is your # 1 expert of making money.', 'Earn additional money without efforts and skills. https://hierbalimon.es/promo'),
(607, 'Crytofah', 'jvaquez10@gmail.com', 'The online financial Robot is your key to success.', 'Financial independence is what everyone needs. https://hierbalimon.es/promo'),
(608, 'Crytofah', 'lukevaller@gmail.com', 'No need to work anymore while you have the Robot launched!', 'The financial Robot is your future wealth and independence. https://hierbalimon.es/promo'),
(609, 'Crytofah', 'amttana@yahoo.com', 'The online financial Robot is your key to success.', 'Have no money? Earn it online. https://hierbalimon.es/promo'),
(610, 'Crytofah', 'preciousdoll95@yahoo.com', 'Need money? Get it here easily! Just press this to launch the robot.', 'Let the financial Robot be your companion in the financial market. https://bodyandsoul.com.es/promo'),
(611, 'Crytofah', 'ro.bertar.j.o.n.e.s@gmail.com', 'The online income is your key to success.', 'The fastest way to make you wallet thick is here. https://bodyandsoul.com.es/promo'),
(612, 'Crytofah', 'rita_cora21@hotmail.com', 'Need cash? Launch this robot and see what it can.', 'This robot can bring you money 24/7. https://bodyandsoul.com.es/promo'),
(613, 'Crytofah', 'invad.e.r.fq.e@gmail.com', 'The financial Robot works for you even when you sleep.', 'Making money in the net is easier now. https://bodyandsoul.com.es/promo'),
(614, 'Crytofah', 'marciaherring@ymail.com', 'The huge income without investments is available, now!', 'Need some more money? Robot will earn them really fast. https://bodyandsoul.com.es/promo'),
(615, 'Crytofah', 'tp1gx8@gmail.com', 'Online Bot will bring you wealth and satisfaction.', 'This robot will help you to make hundreds of dollars each day. https://bodyandsoul.com.es/promo'),
(616, 'Crytofah', 'marivel.barrera@yahoo.com', 'Check out the newest way to make a fantastic profit.', 'Start making thousands of dollars every week. https://bodyandsoul.com.es/promo'),
(617, 'Crytofah', 'annakn1@frontier.com', 'The online income is the easiest ways to make you dream come true.', 'Launch the financial Robot and do your business. https://bodyandsoul.com.es/promo'),
(618, 'Crytofah', 'pnheskqr@amsalebridesmaid.com', 'Check out the automatic Bot, which works for you 24/7.', 'Even a child knows how to make $100 today. https://bodyandsoul.com.es/promo'),
(619, 'Crytofah', 'adeyemitoro@aol.com', 'We know how to become rich and do you?', 'Trust the financial Bot to become rich. https://bodyandsoul.com.es/promo'),
(620, 'Crytofah', 'sc_bass_master6969@yahoo.com', 'No need to work anymore. Just launch the robot.', 'This robot will help you to make hundreds of dollars each day. https://puertobelenn.cl/promo'),
(621, 'Crytofah', 'cssinclair@gmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Earning money in the Internet is easy if you use Robot. https://puertobelenn.cl/promo'),
(622, 'Crytofah', 'proudpop6@gmail.com', 'Trust the financial Bot to become rich.', 'Need money? Get it here easily! Just press this to launch the robot. https://puertobelenn.cl/promo'),
(623, 'Crytofah', 'Monkeyman429@comic.COM', 'Make thousands every week working online here.', 'Money, money! Make more money with financial robot! http://www.jd2b.com/cgi-bin/clicks/redirect.cgi?link=https://puertobelenn.cl/promo'),
(624, 'Crytofah', 'vanilla202@myspace.com', 'Earning $1000 a day is easy if you use this financial Robot.', 'Have no financial skills? Let Robot make money for you. http://uno-bremen.de/wp-content/themes/Recital/go.php?https://puertobelenn.cl/promo'),
(625, 'Crytofah', 'p.mcclelland91@gmail.com', 'Find out about the easiest way of money earning.', 'Financial independence is what this robot guarantees. http://dispersionletters.com/index.php/tools/packages/tony_mailing_list/services/?mode=link&mlm=40&mlu=0&u=1350&url=https%3A%2F%2Fpuertobelenn.cl%2Fpromo'),
(626, 'Crytofah', 'emmafrosthawes46662@hotmail.com', 'Small investments can bring tons of dollars fast.', 'Everyone can earn as much as he wants now. http://charming-amulets.com/change_language.asp?language_id=th&MemberSite_session=site_49576_&link=https%3A%2F%2Fpuertobelenn.cl%2Fpromo'),
(627, 'Crytofah', 'deepwatertree_33@yahoo.com', 'Make yourself rich in future using this financial robot.', 'Online earnings are the easiest way for financial independence. http://www.foerderverein-eislinger-saurierfunde.de/lehrpfad/?jumpurl=https://puertobelenn.cl/promo'),
(628, 'Crytofah', 'Mshorchner2004@aol.com', 'The fastest way to make you wallet thick is here.', 'Earn additional money without efforts. http://afk.sportedu.ru/sites/all/modules/pubdlcnt/pubdlcnt.php?file=https%3A%2F%2Fpuertobelenn.cl%2Fpromo'),
(629, 'Crytofah', 'Nate@MindfireGroup.com', 'The fastest way to make your wallet thick is found.', 'Make money online, staying at home this cold winter. https://www.bigskymontananet.com/tosite.php?url=https%3A%2F%2Fpuertobelenn.cl%2Fpromo&pageid=2710'),
(630, 'Crytofah', 'scott.mcnay4@gmail.com', 'Online earnings are the easiest way for financial independence.', 'Make money, not war! Financial Robot is what you need. http://shop.googoogaga.com.hk/shoppingcart/sc_switchLang.php?url=https://puertobelenn.cl/promo'),
(631, 'Crytofah', 'ffrankie@comcast.net', 'Join the society of successful people who make money here.', 'The fastest way to make your wallet thick is found. http://matsuki.com.hk/Redirect.php?l=cnsc&url=https%3A%2F%2Fpuertobelenn.cl%2Fpromo'),
(632, 'Crytofah', 'bigtone4201@yahoo.com', 'There is no need to look for a job anymore. Work online.', 'Have no money? Earn it online. http://pantallaportatil.org/trigger.php?r_link=https%3A%2F%2Fpuertobelenn.cl%2Fpromo'),
(633, 'Crytofah', 'fgtirish317@yahoo.com', 'No need to work anymore. Just launch the robot.', 'Have no financial skills? Let Robot make money for you. http://www.ourhouse.dk/redirect.php?action=url&goto=puertobelenn.cl%2Fpromo&osCsid=qi0u37q336fdpbcao38f6mdb20'),
(634, 'Crytofah', 'lamont.banks@yahoo.com', 'Small investments can bring tons of dollars fast.', 'Just one click can turn you dollar into $1000. http://icurerrors.com/report/puertobelenn.cl%2Fpromo%2F'),
(635, 'MargaritaApowl9281', 'margaritaWalm6911@gmail.com', 'program for kill hCaptcha captcha', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha-3, Hotmail (Microsoft), Google, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\nyou can solve even 1.000.000.000 captchas per day and it will cost 0 (ZERO) USD! Just buy license for 59 USD and all! \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2captcha.com, anti-captcha (antigate), rucaptcha.com, death-by-captcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google \"Home of XEvil\" \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://XEvil.Net/'),
(636, 'Crytofah', 'garamfalvi@gmail.com', 'Online earnings are the easiest way for financial independence.', 'Looking forward for income? Get it online. http://bbit-karatsu.com/mh/karatu/rank.cgi?mode=link&id=977&url=https%3A%2F%2Fpuertobelenn.cl%2Fpromo'),
(637, 'Crytofah', 'librmarn@gmail.com', 'Your computer can bring you additional income if you use this Robot.', 'Trust your dollar to the Robot and see how it grows to $100. https://quehacerensantiago.cl/promo'),
(638, 'Crytofah', 'sakura.storm1@gmail.com', 'One click of the robot can bring you thousands of bucks.', 'The success formula is found. Learn more about it. https://quehacerensantiago.cl/promo'),
(639, 'Crytofah', 'rumanabm@gmail.com', 'Make thousands of bucks. Pay nothing.', 'No need to worry about the future if your use this financial robot. https://quehacerensantiago.cl/promo'),
(640, 'Crytofah', 'pjcdlg317@gmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Need money? Earn it without leaving your home. https://quehacerensantiago.cl/promo'),
(641, 'Crytofah', 'shanequareese90@yahoo.com', 'Additional income is now available for anyone all around the world.', 'Looking forward for income? Get it online. https://quehacerensantiago.cl/promo'),
(642, 'MargaritaApowl6618', 'margaritaWalm0933@gmail.com', 'XEvil 5.0: the best software for captcha solving is available !!', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha v.3, Hotmail (Microsoft), Google, Solve Media, BitcoinFaucet, Steam, +12k \r\n+ hCaptcha supported in new XEvil 6.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\nyou can solve even 1.000.000.000 captchas per day and it will cost 0 (ZERO) USD! Just buy license for 59 USD and all! \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captchas.com (antigate), RuCaptcha, death-by-captcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google \"Home of XEvil\" \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://XEvil.Net/'),
(643, 'Crytofah', 'markchristopher99@yahoo.com', 'Make thousands of bucks. Pay nothing.', 'Making money is very easy if you use the financial Robot. https://quehacerensantiago.cl/promo'),
(644, 'Crytofah', 'Bullfighter@hotmail.com', 'One click of the robot can bring you thousands of bucks.', 'Financial robot guarantees everyone stability and income. https://quehacerensantiago.cl/promo'),
(645, 'Crytofah', 'flgnsgirl@yahoo.com', 'No need to work anymore while you have the Robot launched!', 'Using this Robot is the best way to make you rich. https://quehacerensantiago.cl/promo'),
(646, 'Crytofah', 'thart@ceradyne.com', 'The additional income for everyone.', 'Your computer can bring you additional income if you use this Robot. http://nadezhdatv.bg/wp-content/plugins/revslider-sharing-addon/public/revslider-sharing-addon-call.php?tpurl=467&share=https%3A%2F%2Fvaratradgardsforening.se%2Fpromo'),
(647, 'Crytofah', 'jmoyer@unitelc.com', 'The financial Robot works for you even when you sleep.', 'The financial Robot is the most effective financial tool in the net! https://vocabulary.ru/redirect?url=https://varatradgardsforening.se/promo'),
(648, 'Crytofah', 'adgg7@hanmail.net', 'See how Robot makes $1000 from $1 of investment.', 'Make thousands of bucks. Pay nothing. http://gkgk.info/?wptouch_switch=mobile&redirect=https%3A%2F%2Fvaratradgardsforening.se%2Fpromo'),
(649, 'MargaritaApowl0951', 'margaritaWalm4538@gmail.com', 'best application for kill IPBoard captcha', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha v.3, Hotmail (Microsoft), Google captcha, SolveMedia, BitcoinFaucet, Steam, +12k \r\n+ hCaptcha supported in new XEvil 6.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\nyou can solve even 1.000.000.000 captchas per day and it will cost 0 (ZERO) USD! Just buy license for 59 USD and all! \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2captcha.com, anti-captchas.com (antigate), rucaptcha.com, DeathByCaptcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google \"Home of XEvil\" \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://XEvil.Net/'),
(650, 'Crytofah', 'miki_winna17@hotmail.com', 'The fastest way to make you wallet thick is here.', 'Try out the automatic robot to keep earning all day long. https://ambergrewerrealestate.com/RealtorWebPage?template=embed&customlink_id=2350006336&content=https://varatradgardsforening.se/promo'),
(651, 'Crytofah', 'cigarette.nsm.arlb.dun@gmail.com', 'Make money online, staying at home this cold winter.', 'Have no financial skills? Let Robot make money for you. http://h-relax.com/?wptouch_switch=desktop&redirect=https%3A%2F%2Fvaratradgardsforening.se%2Fpromo'),
(652, 'Crytofah', 'sharitaray@ymail.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'No worries if you are fired. Work online. http://go.tygyguip.com/096s'),
(653, 'Crytofah', 'gregoasshtolze@ymail.com', 'Everyone can earn as much as he wants now.', 'Make thousands of bucks. Pay nothing. http://go.tygyguip.com/096s'),
(654, 'Crytofah', 'parmarhiren143@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'Only one click can grow up your money really fast. http://go.tygyguip.com/096s'),
(655, 'MargaritaApowl0496', 'margaritaWalm3731@gmail.com', 'program for solve Bitcoin captcha', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha-2, ReCaptcha v.3, Hotmail, Google, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\nyou can solve even 1.000.000.000 captchas per day and it will cost 0 (ZERO) USD! Just buy license for 59 USD and all! \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captchas.com (antigate), RuCaptcha, death-by-captcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google \"Home of XEvil\" \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://xrumersale.site/'),
(656, 'Crytofah', 'finefrockm@msn.com', 'Online job can be really effective if you use this Robot.', 'Make your laptop a financial instrument with this program. http://go.tygyguip.com/096s'),
(657, 'Crytofah', 'lizethmeza84@yahoo.com', 'This robot can bring you money 24/7.', 'No need to stay awake all night long to earn money. Launch the robot. http://go.tygyguip.com/096s'),
(658, 'Crytofah', 'catlote@aol.com', 'We have found the fastest way to be rich. Find it out here.', 'Make your money work for you all day long. http://go.tygyguip.com/096s'),
(659, 'Crytofah', 'bonghongquysu58@yahoo.com', 'We know how to become rich and do you?', 'Launch the robot and let it bring you money. http://go.tygyguip.com/096s'),
(660, 'MargaritaApowl6063', 'margaritaWalm2688@gmail.com', 'program for click Facebook captcha', 'XEvil 6.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha-3, Hotmail (Microsoft), Google captcha, Solve Media, BitcoinFaucet, Steam, +12k \r\n+ hCaptcha supported in new XEvil 6.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\nyou can solve even 1.000.000.000 captchas per day and it will cost 0 (ZERO) USD! Just buy license for 59 USD and all! \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captchas.com (antigate), RuCaptcha, DeathByCaptcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google \"Home of XEvil\" \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://xrumersale.site/'),
(661, 'Crytofah', 'donyelle_13@yahoo.com', 'Financial robot is a great way to manage and increase your income.', 'The fastest way to make you wallet thick is here. http://go.tygyguip.com/096s'),
(662, 'Crytofah', 'cooper.jennifer1981@yahoo.com', 'Start making thousands of dollars every week.', 'Let the financial Robot be your companion in the financial market. http://go.tygyguip.com/096s'),
(663, 'Crytofah', 'bbaale@elaab-systems.com', 'Trust the financial Bot to become rich.', 'Need some more money? Robot will earn them really fast. http://go.tygyguip.com/096s'),
(664, 'Crytofah', 'mthomas8910@verizon.net', 'Everyone who needs money should try this Robot out.', 'Additional income is now available for anyone all around the world. http://go.tygyguip.com/096s'),
(665, 'Crytofah', 'aj_sare@hotmail.com', 'The online job can bring you a fantastic profit.', 'Make yourself rich in future using this financial robot. http://go.tygyguip.com/096s'),
(666, 'Crytofah', 'morenovictorm@hotmail.com', 'Trust the financial Bot to become rich.', 'Financial robot is a great way to manage and increase your income. http://go.tygyguip.com/096s'),
(667, 'Crytofah', 'birdbnn@hotmail.com', 'The financial Robot is your # 1 expert of making money.', 'Financial independence is what this robot guarantees. http://go.tygyguip.com/096s'),
(668, 'Crytofah', 'cassie_curran23@yahoo.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'This robot can bring you money 24/7. http://go.tygyguip.com/096s'),
(669, 'Crytofah', 'paddyjmurtagh@hotmail.com', 'The online financial Robot is your key to success.', 'Wow! This Robot is a great start for an online career. http://go.tygyguip.com/096s'),
(670, 'Crytofah', 'landak261@yahoo.com', 'Rich people are rich because they use this robot.', 'No need to work anymore. Just launch the robot. http://go.tygyguip.com/096s'),
(671, 'MargaritaApowl6643', 'margaritaWalm0345@gmail.com', 'best program for click hCaptcha captcha', 'XEvil 6.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha-3, Hotmail, Google, SolveMedia, BitcoinFaucet, Steam, +12k \r\n+ hCaptcha supported in new XEvil 6.0! \r\n \r\n1.) Fast, easy, precisionly \r\nXEvil is the fastest captcha killer in the world. Its has no solving limits, no threads number limits \r\nyou can solve even 1.000.000.000 captchas per day and it will cost 0 (ZERO) USD! Just buy license for 59 USD and all! \r\n \r\n2.) Several APIs support \r\nXEvil supports more than 6 different, worldwide known API: 2Captcha, anti-captcha (antigate), rucaptcha.com, death-by-captcha, etc. \r\njust send your captcha via HTTP request, as you can send into any of that service - and XEvil will solve your captcha! \r\nSo, XEvil is compatible with hundreds of applications for SEO/SMM/password recovery/parsing/posting/clicking/cryptocurrency/etc. \r\n \r\n3.) Useful support and manuals \r\nAfter purchase, you got access to a private tech.support forum, Wiki, Skype/Telegram online support \r\nDevelopers will train XEvil to your type of captcha for FREE and very fast - just send them examples \r\n \r\n4.) How to get free trial use of XEvil full version? \r\n- Try to search in Google \"Home of XEvil\" \r\n- you will find IPs with opened port 80 of XEvil users (click on any IP to ensure) \r\n- try to send your captcha via 2captcha API ino one of that IPs \r\n- if you got BAD KEY error, just tru another IP \r\n- enjoy! :) \r\n- (its not work for hCaptcha!) \r\n \r\nWARNING: Free XEvil DEMO does NOT support ReCaptcha, hCaptcha and most other types of captcha! \r\n \r\nhttp://XEvil.Net/'),
(672, 'Crytofah', 'ppuppu73@naver.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'Financial robot guarantees everyone stability and income. http://go.tygyguip.com/096s'),
(673, 'Crytofah', 'kkleedance31@gmail.com', 'Check out the automatic Bot, which works for you 24/7.', '# 1 financial expert in the net! Check out the new Robot. https://allnews.elk.pl/wfdl'),
(674, 'Crytofah', 'crazykissane@yahoo.com', 'Launch the financial Bot now to start earning.', 'Online earnings are the easiest way for financial independence. https://allnews.elk.pl/wfdl'),
(675, 'Crytofah', 'mybaconmau@gmail.com', 'Online job can be really effective if you use this Robot.', 'Make your computer to be you earning instrument. https://allnews.elk.pl/wfdl'),
(676, 'Crytofah', 'kailuagirl83@comcast.net', 'The financial Robot works for you even when you sleep.', 'Financial robot keeps bringing you money while you sleep. https://allnews.elk.pl/wfdl'),
(677, 'Crytofah', 'Reidshier@gmail.com', 'Financial robot is a great way to manage and increase your income.', 'This robot can bring you money 24/7. https://allcnews.xyz/wfdl'),
(678, 'Crytofah', 'preo.bracko@siol.net', 'Feel free to buy everything you want with the additional income.', 'Learn how to make hundreds of backs each day. https://allcnews.xyz/wfdl'),
(679, 'Crytofah', 'Maliyah.Fitz@hotmail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Check out the automatic Bot, which works for you 24/7. https://allcnews.xyz/wfdl'),
(680, 'Crytofah', 'probirmondal92@gmail.com', 'Buy everything you want earning money online.', 'Make thousands of bucks. Financial robot will help you to do it! https://allcnews.xyz/wfdl'),
(681, 'Crytofah', 'slebicjurij@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'The additional income for everyone. https://allcnews.xyz/wfdl'),
(682, 'Crytofah', 'davek30@frontier.com', 'The best way for everyone who rushes for financial independence.', 'Make money 24/7 without any efforts and skills. https://allcnews.xyz/wfdl'),
(683, 'Crytofah', 'pramod.patil@rexamhtw.com', 'Financial robot keeps bringing you money while you sleep.', 'No need to worry about the future if your use this financial robot. https://allcryptonnews.xyz/0j35'),
(684, 'Crytofah', 'andredoval@live.com', '# 1 financial expert in the net! Check out the new Robot.', 'Most successful people already use Robot. Do you? https://allcryptonnews.xyz/0j35'),
(685, 'Crytofah', 'phyllis_gatica@yahoo.com', 'We know how to become rich and do you?', 'Earning money in the Internet is easy if you use Robot. https://allcryptonnews.xyz/0j35'),
(686, 'Crytofah', 'rupainsan@gmail.com', 'Additional income is now available for anyone all around the world.', 'Making money is very easy if you use the financial Robot. https://allcryptonnews.xyz/0j35'),
(687, 'Crytofah', 'n.g.uo.iti.nhdsiu123@gmail.com', 'Have no financial skills? Let Robot make money for you.', 'Robot is the best solution for everyone who wants to earn. https://allcryptonnews.xyz/0j35'),
(688, 'Crytofah', 'parampreetinsan2012@gmail.com', 'Feel free to buy everything you want with the additional income.', 'Check out the new financial tool, which can make you rich. https://allcryptonnews.xyz/0j35'),
(689, 'Crytofah', 'payton.clarkusmc@yahoo.com', 'The huge income without investments is available, now!', 'Have no financial skills? Let Robot make money for you. https://allcryptonnews.xyz/0j35'),
(690, 'Crytofah', 'fraltyageralm@gmail.com', 'Make dollars just sitting home.', 'Make money online, staying at home this cold winter. https://allcryptonnews.xyz/0j35'),
(691, 'Crytofah', 'frank119@126.com', 'No worries if you are fired. Work online.', 'Let the financial Robot be your companion in the financial market. https://allcryptonnews.xyz/0j35'),
(692, 'Crytofah', 'brandonlgully@gmail.com', 'Make money, not war! Financial Robot is what you need.', 'Robot is the best solution for everyone who wants to earn. https://allcryptonnews.xyz/0j35'),
(693, 'Crytofah', 'friendmaker56@hotmail.com', 'The best online job for retirees. Make your old ages rich.', 'Just one click can turn you dollar into $1000. https://allcryptonnews.xyz/0j35'),
(694, 'Crytofah', 'briannaholloway@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', 'We know how to become rich and do you? https://allcryptonnews.xyz/0j35'),
(695, 'Crytofah', 'SAMANIEGOVERO86@YAHOO.COM', 'We know how to become rich and do you?', 'One click of the robot can bring you thousands of bucks. https://go.tygyguip.com/0j35'),
(696, 'Crytofah', 'jtaylor@prolinecap.com', 'Your computer can bring you additional income if you use this Robot.', 'Buy everything you want earning money online. https://go.tygyguip.com/0j35'),
(697, 'Crytofah', 'lilbabygrlmary@yahoo.com', 'Make your laptop a financial instrument with this program.', 'Even a child knows how to make money. Do you? https://go.tygyguip.com/0j35'),
(698, 'Crytofah', 'smokey1285@hotmail.com', 'Watch your money grow while you invest with the Robot.', 'Attention! Financial robot may bring you millions! https://go.tygyguip.com/0j35'),
(699, 'Crytofah', 'kxrewpce@myemailmail.com', 'Your computer can bring you additional income if you use this Robot.', 'Still not a millionaire? The financial robot will make you him! https://go.tygyguip.com/0j35'),
(700, 'MargaritaOn', 'margaritaOn@protonmail.com', 'Ι аm an ordіnаrу gіrl. I want tо meet аn оrdinary ѕeriоuѕ man.', 'Нiǃ\r\nI\'vе notіced that manу guys рrеfеr rеgular girls.\r\nI аpрlаude thе mеn оut therе whо hаd thе ballѕ to enϳoу thе lоve of manу wоmen аnd сhоose the оne that he knеw wоuld bе his beѕt friеnd durіng the bumpу and crazy thing called lіfe.\r\nI wаnted tо bе that frіend, nоt ϳust a stablе, rеlіablе аnd bоring hоuѕеwіfе.\r\nI am 22 yеаrѕ оld, Μargaritа, from thе Сzech Reрubliс, knоw Еnglish lаnguage also.\r\nАnywаy, yоu can find my profіle herе: http://rockhydzi.tk/page-47264/ \r\n'),
(701, 'Crytofah', 'minnieme5495@yahoo.com', 'Let your money grow into the capital with this Robot.', 'Even a child knows how to make money. Do you? https://go.tygyguip.com/0j35'),
(702, 'Crytofah', 'laurenmarie89@gmail.com', 'Everyone can earn as much as he wants now.', 'Make yourself rich in future using this financial robot. https://go.tygyguip.com/0j35'),
(703, 'Crytofah', 'paulfp4@hotmail.com', 'Financial robot is the best companion of rich people.', 'It is the best time to launch the Robot to get more money. https://go.tygyguip.com/0j35'),
(704, 'Crytofah', 'salgado_carla@hotmail.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'Most successful people already use Robot. Do you? https://go.tygyguip.com/0j35'),
(705, 'Crytofah', 'gflossman@hotmail.com', 'Buy everything you want earning money online.', 'Small investments can bring tons of dollars fast. https://go.tygyguip.com/0j35'),
(706, 'Crytofah', 'z1bskw@gmail.com', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Make money online, staying at home this cold winter. https://go.tygyguip.com/0j35'),
(707, 'Crytofah', 'kdharo@yahoo.com', 'The online income is the easiest ways to make you dream come true.', 'The fastest way to make you wallet thick is here. https://go.tygyguip.com/0j35'),
(708, 'Crytofah', 'myersgorilla@pinkinbox.org', 'There is no need to look for a job anymore. Work online.', 'Financial independence is what this robot guarantees. https://go.tygyguip.com/0j35'),
(709, 'Crytofah', 'evin_ia@yahoo.com', 'No need to work anymore. Just launch the robot.', 'The huge income without investments is available, now! https://go.tygyguip.com/0j35'),
(710, 'Crytofah', 'dizzyzlittle@gmail.net', 'Need money? Earn it without leaving your home.', 'Check out the newest way to make a fantastic profit. https://go.tygyguip.com/0j35'),
(711, 'Crytofah', 'becky.partain@hotmail.com', 'Online earnings are the easiest way for financial independence.', 'Join the society of successful people who make money here. https://go.tygyguip.com/0j35'),
(712, 'Crytofah', 'e.freeman262@btinternet.com', 'Make dollars staying at home and launched this Bot.', 'Online job can be really effective if you use this Robot. https://go.tygyguip.com/0j35'),
(713, 'Crytofah', 'toumz@live.com', 'Money, money! Make more money with financial robot!', 'Need cash? Launch this robot and see what it can. https://go.tygyguip.com/0j35'),
(714, 'Crytofah', 'martinezstacy70@yahoo.com', 'The best online job for retirees. Make your old ages rich.', 'The financial Robot works for you even when you sleep. https://go.tygyguip.com/0j35'),
(715, 'Crytofah', 'nostalgic56@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Check out the new financial tool, which can make you rich. https://go.tygyguip.com/0j35'),
(716, 'Crytofah', 'scewxc@gmail.com', 'Watch your money grow while you invest with the Robot.', 'Join the society of successful people who make money here. https://go.tygyguip.com/0j35'),
(717, 'Crytofah', 'dunssfe@aol.com', 'Make thousands every week working online here.', 'Let your money grow into the capital with this Robot. https://go.tygyguip.com/0j35'),
(718, 'Crytofah', 'z.a.i.n.f.re.e.r5.1@gmail.com', 'Learn how to make hundreds of backs each day.', 'The best online job for retirees. Make your old ages rich. https://go.tygyguip.com/0j35'),
(719, 'Crytofah', 'ringo2855@molalla.net', 'No need to stay awake all night long to earn money. Launch the robot.', 'Robot is the best solution for everyone who wants to earn. https://go.tygyguip.com/0j35'),
(720, 'Crytofah', 'teresatun@orangeinbox.org', 'Most successful people already use Robot. Do you?', 'Let your money grow into the capital with this Robot. https://go.tygyguip.com/0j35'),
(721, 'Crytofah', 'rosemarieotis@gmail.com', 'Need some more money? Robot will earn them really fast.', 'Need money? Earn it without leaving your home. https://go.tygyguip.com/0j35'),
(722, 'Crytofah', 'J.stojanow@gmail.com', 'Launch the financial Bot now to start earning.', 'Still not a millionaire? The financial robot will make you him! https://go.tygyguip.com/0j35'),
(723, 'Crytofah', 'reninnwed@gmail.com', 'Your money work even when you sleep.', 'Need money? Get it here easily? https://go.tygyguip.com/0j35'),
(724, 'Crytofah', 'the.unforgivn@gmail.com', 'Earning money in the Internet is easy if you use Robot.', 'Making money can be extremely easy if you use this Robot. https://go.tygyguip.com/0j35'),
(725, 'Crytofah', 'Jamiestelly83@aol.com', 'Looking for an easy way to make money? Check out the financial robot.', 'Join the society of successful people who make money here. https://go.tygyguip.com/0j35'),
(726, 'Crytofah', 'diehl_kirsten@yahoo.com', 'Check out the automatic Bot, which works for you 24/7.', 'Try out the best financial robot in the Internet. https://go.tygyguip.com/0j35'),
(727, 'Crytofah', 'marvinsroomforever@yahoo.com', 'Find out about the easiest way of money earning.', 'Attention! Financial robot may bring you millions! https://go.tygyguip.com/0j35');
INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(728, 'Crytofah', 'mianrohr@gmail.com', 'Need money? Earn it without leaving your home.', 'No need to work anymore while you have the Robot launched! https://go.tygyguip.com/0j35'),
(729, 'Crytofah', 'otoolenoreen@yahoo.com', 'Thousands of bucks are guaranteed if you use this robot.', 'Financial independence is what this robot guarantees. https://go.tygyguip.com/0j35'),
(730, 'Crytofah', 'godchasersunfire@yahoo.com', 'Need money? The financial robot is your solution.', 'Still not a millionaire? Fix it now! https://go.tygyguip.com/0j35'),
(731, 'Crytofah', 'biryani_imli@rediffmail.com', 'Money, money! Make more money with financial robot!', 'Check out the automatic Bot, which works for you 24/7. https://go.tygyguip.com/0j35'),
(732, 'Crytofah', 'Eileen7893@cs.com', 'Need money? Get it here easily?', 'Financial robot guarantees everyone stability and income. https://go.tygyguip.com/0j35'),
(733, 'Crytofah', 'sabee.princess.punkette@hotmail.com', 'Financial robot keeps bringing you money while you sleep.', 'This robot will help you to make hundreds of dollars each day. https://go.tygyguip.com/0j35'),
(734, 'Crytofah', 'Brickwood404@yahoo.com', 'One click of the robot can bring you thousands of bucks.', 'Your computer can bring you additional income if you use this Robot. https://go.tygyguip.com/0j35'),
(735, 'Crytofah', 'mitchell_johnson54@yahoo.com', 'Wow! This Robot is a great start for an online career.', 'Find out about the fastest way for a financial independence. https://go.tygyguip.com/0j35'),
(736, 'Crytofah', 'lindavmat@hotmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Financial robot is your success formula is found. Learn more about it. https://go.tygyguip.com/0j35'),
(737, 'Crytofah', 'purpleflamingo29@gmail.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'Financial robot is the best companion of rich people. https://go.tygyguip.com/0j35'),
(738, 'Crytofah', 'jessita_lynn@hotmail.com', 'Make your computer to be you earning instrument.', 'Earning money in the Internet is easy if you use Robot. https://go.tygyguip.com/0j35'),
(739, 'Crytofah', 'juansemarinji@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', 'The financial Robot is the most effective financial tool in the net! https://go.tygyguip.com/0j35'),
(740, 'Crytofah', 'thien-an.nguyen@highlineschools.org', 'Have no financial skills? Let Robot make money for you.', 'Financial robot guarantees everyone stability and income. https://go.tygyguip.com/0j35'),
(741, 'Crytofah', 'aperfall@yahoo.com', 'Check out the automatic Bot, which works for you 24/7.', 'Make your computer to be you earning instrument. https://go.tygyguip.com/0j35'),
(742, 'Crytofah', 'sarahabal20@live.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'No need to work anymore while you have the Robot launched! https://go.tygyguip.com/0j35'),
(743, 'Crytofah', 'justiceiskul@yahoo.com', 'Buy everything you want earning money online.', 'Make your computer to be you earning instrument. https://go.tygyguip.com/0j35'),
(744, 'Crytofah', 'jasonvillegas28@yahoo.com', 'Let your money grow into the capital with this Robot.', 'Financial robot guarantees everyone stability and income. https://go.tygyguip.com/0j35'),
(745, 'Crytofah', 'say2et@yahoo.com', 'The best way for everyone who rushes for financial independence.', 'Automatic robot is the best start for financial independence. https://go.tygyguip.com/0j35'),
(746, 'Crytofah', 'turte86@hotmail.com', 'One dollar is nothing, but it can grow into $100 here.', 'Still not a millionaire? Fix it now! https://go.tygyguip.com/0j35'),
(747, 'Crytofah', 'x90000631@yahoo.com', 'The additional income is available for everyone using this robot.', 'It is the best time to launch the Robot to get more money. https://go.tygyguip.com/0j35'),
(748, 'Crytofah', 'Jamiebugg1985@comcast.net', 'The best online investment tool is found. Learn more!', 'Online earnings are the easiest way for financial independence. https://go.tygyguip.com/0j35'),
(749, 'Crytofah', 'loismitch48867@msn.com', 'Earn additional money without efforts and skills.', 'Let your money grow into the capital with this Robot. https://go.tygyguip.com/0j35'),
(750, 'Crytofah', 'wsroche@gmail.com', 'Provide your family with the money in age. Launch the Robot!', 'It is the best time to launch the Robot to get more money. https://go.tygyguip.com/0j35'),
(751, 'Crytofah', 'tensional_spirit@hotmail.com', 'The financial Robot is your # 1 expert of making money.', 'Financial independence is what this robot guarantees. https://go.tygyguip.com/0j35'),
(752, 'Crytofah', 'r3neemagick@gmail.com', 'Make thousands every week working online here.', 'Start making thousands of dollars every week just using this robot. https://go.tygyguip.com/0j35'),
(753, 'Crytofah', 'pcws619ipp@gmail.com', 'Earn additional money without efforts and skills.', 'Looking for an easy way to make money? Check out the financial robot. https://go.tygyguip.com/0j35'),
(754, 'Crytofah', 'la_anabel_princesa@hotmail.com', 'Need money? Get it here easily! Just press this to launch the robot.', 'Looking for an easy way to make money? Check out the financial robot. https://go.tygyguip.com/0j35'),
(755, 'Crytofah', 'inol069fc@tunmanageservers.com', 'Launch the robot and let it bring you money.', 'Let your money grow into the capital with this Robot. https://go.tygyguip.com/0j35'),
(756, 'Crytofah', 'laustin@icc.net', 'Still not a millionaire? Fix it now!', 'Feel free to buy everything you want with the additional income. https://go.tygyguip.com/0j35'),
(757, 'Crytofah', 'travelsig@yahoo.com', 'Watch your money grow while you invest with the Robot.', 'Automatic robot is the best start for financial independence. https://go.tygyguip.com/0j35'),
(758, 'Crytofah', 'Snowflake11913@yahoo.com', 'Financial robot is your success formula is found. Learn more about it.', 'Make thousands every week working online here. https://go.tygyguip.com/0j35'),
(759, 'Crytofah', 'K_man2001@Hotmail.com', 'Make yourself rich in future using this financial robot.', 'Making money is very easy if you use the financial Robot. https://go.tygyguip.com/0j35'),
(760, 'Crytofah', 'poptart_girl_2010@yahoo.com', 'Let the Robot bring you money while you rest.', 'Thousands of bucks are guaranteed if you use this robot. https://go.tygyguip.com/0j35'),
(761, 'Crytofah', '315559272@nedt.com', 'The huge income without investments is available, now!', 'Buy everything you want earning money online. https://go.tygyguip.com/0j35'),
(762, 'Crytofah', 'lrm274@aol.com', 'Make money 24/7 without any efforts and skills.', 'Make thousands every week working online here. https://go.tygyguip.com/0j35'),
(763, 'Crytofah', 'andrew@informcfs.com', 'Earning $1000 a day is easy if you use this financial Robot.', 'Financial Robot is #1 investment tool ever. Launch it! https://go.tygyguip.com/0j35'),
(764, 'Crytofah', 'Jaccas9@aol.com', 'Your computer can bring you additional income if you use this Robot.', 'Launch the financial Bot now to start earning. https://go.tygyguip.com/0j35'),
(765, 'Crytofah', 'ermck01@hotmail.com', '# 1 financial expert in the net! Check out the new Robot.', 'Money, money! Make more money with financial robot! https://go.hinebixi.com/0j35'),
(766, 'Crytofah', 'r.tehranian@yahoo.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'Need cash? Launch this robot and see what it can. https://go.hinebixi.com/0j35'),
(767, 'Crytofah', 'panchoriado20@yahoo.com', 'Find out about the fastest way for a financial independence.', 'Check out the automatic Bot, which works for you 24/7. https://go.hinebixi.com/0j35'),
(768, 'Crytofah', 'gracielasalles@hotmail.com', 'Small investments can bring tons of dollars fast.', 'The financial Robot works for you even when you sleep. https://go.hinebixi.com/0j35'),
(769, 'Crytofah', 'lutherlee04@yahoo.com', 'Try out the best financial robot in the Internet.', 'Learn how to make hundreds of backs each day. https://go.hinebixi.com/0j35'),
(770, 'Crytofah', 'Miascos@gmail.com', 'Check out the automatic Bot, which works for you 24/7.', 'Let the Robot bring you money while you rest. https://go.hinebixi.com/0j35'),
(771, 'Crytofah', 'alexandre.simiao@vfsco.com', 'Looking for an easy way to make money? Check out the financial robot.', 'Your money keep grow 24/7 if you use the financial Robot. https://go.hinebixi.com/0j35'),
(772, 'Crytofah', 'cynthia.mendoza07@yahoo.com', 'Make money in the internet using this Bot. It really works!', 'Check out the automatic Bot, which works for you 24/7. https://go.hinebixi.com/0j35'),
(773, 'Crytofah', 'bradfrance@e-mail.com', 'Small investments can bring tons of dollars fast.', 'Financial robot keeps bringing you money while you sleep. https://go.hinebixi.com/0j35'),
(774, 'LinaOn', 'linaOn@outlook.com', 'I am an ordіnarу girl. Ι wаnt to mееt an оrdіnаry ѕеrіous man.', 'Нi!\r\nI\'vе notісеd that many guуѕ рrefer rеgular girlѕ.\r\nI аррlаude the men оut thеrе who hаd thе bаlls tо еnϳоу the lоvе оf many women and chооѕе the оnе thаt he knew would bе hіѕ best friend durіng thе bumpy аnd сrazy thіng саlled lіfе.\r\nI wаnted tо be that friеnd, not juѕt а stablе, relіable and borіng housewіfe.\r\nI am 27 уеаrs old, Lіna, from the Czeсh Reрublіc, knоw English lаnguagе alѕо.\r\nАnywaу, уou саn fіnd my prоfіlе herе: http://jeverropesa.tk/page-38646/ \r\n'),
(775, 'Crytofah', 'cindy.boyer@thecoalblog.com', 'Make thousands of bucks. Financial robot will help you to do it!', 'Online Bot will bring you wealth and satisfaction. https://go.hinebixi.com/0j35'),
(776, 'Crytofah', 'raysrains@yahoo.com', 'The best way for everyone who rushes for financial independence.', 'Need money? Get it here easily! Just press this to launch the robot. https://go.hinebixi.com/0j35'),
(777, 'Crytofah', 'richrocks00@yahoo.com', 'Learn how to make hundreds of backs each day.', 'Everyone can earn as much as he wants now. https://go.obermatsa.com/0j35'),
(778, 'Crytofah', 'auburnboynoah@gmail.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Online Bot will bring you wealth and satisfaction. https://go.obermatsa.com/0j35'),
(779, 'Crytofah', 'priyanaladeega@yahoo.com', 'Find out about the easiest way of money earning.', 'The financial Robot is the most effective financial tool in the net! https://go.obermatsa.com/0j35'),
(780, 'Crytofah', 'greendalmatians@hotmail.com', 'The fastest way to make you wallet thick is here.', 'Earn additional money without efforts and skills. https://go.obermatsa.com/0j35'),
(781, 'Crytofah', 'dbrown7653@aol.com', 'Your computer can bring you additional income if you use this Robot.', 'Still not a millionaire? Fix it now! https://go.obermatsa.com/0j35'),
(782, 'Crytofah', 'mommaswearengin@att.net', 'Learn how to make hundreds of backs each day.', 'Even a child knows how to make money. This robot is what you need! https://go.obermatsa.com/0j35'),
(783, 'Crytofah', 'rmarple@access.k12.wv.us', 'Need money? Get it here easily! Just press this to launch the robot.', 'Everyone who needs money should try this Robot out. https://go.obermatsa.com/0j35'),
(784, 'Crytofah', 'Pinayroses12606@aol.com', 'Provide your family with the money in age. Launch the Robot!', 'The financial Robot is your # 1 expert of making money. https://go.obermatsa.com/0j35'),
(785, 'Crytofah', 'spencerdonkey@greeninbox.org', 'The online job can bring you a fantastic profit.', 'Make money online, staying at home this cold winter. https://go.obermatsa.com/0j35'),
(786, 'Crytofah', 'am7676@yahoo.com', 'Make dollars staying at home and launched this Bot.', 'One dollar is nothing, but it can grow into $100 here. https://go.obermatsa.com/0j35'),
(787, 'Crytofah', 'ybvgao@gmail.com', 'Still not a millionaire? The financial robot will make you him!', 'The best way for everyone who rushes for financial independence. https://go.obermatsa.com/0j35'),
(788, 'Crytofah', 'danie2234@hotmail.com', 'Everyone can earn as much as he wants now.', 'Still not a millionaire? Fix it now! https://go.obermatsa.com/0j35'),
(789, 'Crytofah', 'puppyloveline@aol.com', 'Need money? Get it here easily?', 'Buy everything you want earning money online. https://go.obermatsa.com/0j35'),
(790, 'Crytofah', 'gwynethdesire32@gmail.com', 'Have no financial skills? Let Robot make money for you.', 'No need to worry about the future if your use this financial robot. https://go.obermatsa.com/0j35'),
(791, 'Crytofah', 'cbuchanan0407@yahoo.com', 'We know how to become rich and do you?', 'Online job can be really effective if you use this Robot. https://go.obermatsa.com/0j35'),
(792, 'Crytofah', 'miisoprettii@yahoo.com', 'Financial robot keeps bringing you money while you sleep.', 'No need to work anymore while you have the Robot launched! https://go.obermatsa.com/0j35'),
(793, 'Crytofah', 'snidelad@gmx.com', 'Everyone can earn as much as he wants suing this Bot.', 'Money, money! Make more money with financial robot! https://go.obermatsa.com/0j35'),
(794, 'Crytofah', 'ujoiga@kreuiema.com', 'Make thousands of bucks. Financial robot will help you to do it!', 'Financial Robot is #1 investment tool ever. Launch it! https://go.obermatsa.com/0j35'),
(795, 'Crytofah', 'mehfooz.mp@gmail.com', 'No need to work anymore while you have the Robot launched!', 'We know how to become rich and do you? https://go.obermatsa.com/0j35'),
(796, 'Crytofah', 'w.elizabeth08_02@hotmail.com', 'Making money is very easy if you use the financial Robot.', 'Robot is the best way for everyone who looks for financial independence. https://go.obermatsa.com/0j35'),
(797, 'Crytofah', 'axenib@fsfsdf.org', 'Make money 24/7 without any efforts and skills.', 'The fastest way to make your wallet thick is found. https://go.obermatsa.com/0j35'),
(798, 'Crytofah', 'cmi318@icloud.com', 'Feel free to buy everything you want with the additional income.', 'Try out the best financial robot in the Internet. https://go.obermatsa.com/0j35'),
(799, 'Crytofah', 'dmrbassist@yahoo.com', 'The fastest way to make you wallet thick is here.', 'It is the best time to launch the Robot to get more money. https://go.obermatsa.com/0j35'),
(800, 'Crytofah', 'qi.setsail@163.com', 'Find out about the fastest way for a financial independence.', 'Earn additional money without efforts and skills. https://go.obermatsa.com/0j35'),
(801, 'Crytofah', 'soak0191@yahoo.com', 'Need money? Get it here easily! Just press this to launch the robot.', 'Need money? Get it here easily? https://go.obermatsa.com/0j35'),
(802, 'Crytofah', 'laurieterryfam@aol.com', 'Still not a millionaire? Fix it now!', 'Earning $1000 a day is easy if you use this financial Robot. https://go.obermatsa.com/0j35'),
(803, 'Crytofah', 'austingillard@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', 'Make dollars just sitting home. https://go.obermatsa.com/0j35'),
(804, 'Crytofah', 'doloresmarie@gmail.com', 'Online Bot will bring you wealth and satisfaction.', 'Most successful people already use Robot. Do you? https://go.obermatsa.com/0j35'),
(805, 'Crytofah', 'fcsh3@hotmail.com', 'The huge income without investments is available, now!', 'The best way for everyone who rushes for financial independence. https://go.obermatsa.com/0j35'),
(806, 'Crytofah', 'helenaleung@comcast.net', 'Attention! Here you can earn money online!', 'Small investments can bring tons of dollars fast. https://go.obermatsa.com/0j35'),
(807, 'Crytofah', 'pgash@operamail.com', 'Financial robot is your success formula is found. Learn more about it.', 'Most successful people already use Robot. Do you? https://go.obermatsa.com/0j35'),
(808, 'Crytofah', 'lindabears@msn.com', 'Financial independence is what everyone needs.', 'Feel free to buy everything you want with the additional income. https://go.obermatsa.com/0j35'),
(809, 'Crytofah', 'jupiter_soad@yahoo.com', 'Everyone can earn as much as he wants now.', 'Earning $1000 a day is easy if you use this financial Robot. https://go.obermatsa.com/0j35'),
(810, 'Crytofah', 'london2007@yahoo.com', 'Make money in the internet using this Bot. It really works!', 'Additional income is now available for anyone all around the world. https://go.obermatsa.com/0j35'),
(811, 'Crytofah', 'hungcuong2011@gmail.com', 'Wow! This is a fastest way for a financial independence.', 'Watch your money grow while you invest with the Robot. https://go.obermatsa.com/0j35'),
(812, 'Crytofah', 'noblenator@gmail.com', 'Try out the best financial robot in the Internet.', 'Using this Robot is the best way to make you rich. https://go.obermatsa.com/0j35'),
(813, 'Crytofah', 'mariemontano7@hotmail.com', 'We know how to increase your financial stability.', 'Let your money grow into the capital with this Robot. https://go.obermatsa.com/0j35'),
(814, 'Crytofah', 'Ccruse24@gmail.com', 'Start making thousands of dollars every week just using this robot.', 'Financial independence is what this robot guarantees. https://go.obermatsa.com/0j35'),
(815, 'Crytofah', 'robert_mccallum2004@hotmail.com', 'Learn how to make hundreds of backs each day.', 'Additional income is now available for anyone all around the world. https://go.obermatsa.com/0j35'),
(816, 'Crytofah', 'mer.priya91@gmail.com', 'Learn how to make hundreds of backs each day.', 'Robot is the best way for everyone who looks for financial independence. https://go.obermatsa.com/0j35'),
(817, 'Crytofah', 'ALEXANBRA-1011@HOTMAIL.COM', 'Find out about the fastest way for a financial independence.', 'Most successful people already use Robot. Do you? https://go.obermatsa.com/0j35'),
(818, 'Crytofah', 'vincent.dunn@chadbourne.com', 'Looking for additional money? Try out the best financial instrument.', 'Earn additional money without efforts. https://go.obermatsa.com/0j35'),
(819, 'Crytofah', 'rox_pink16@hotmail.com', 'One dollar is nothing, but it can grow into $100 here.', 'Feel free to buy everything you want with the additional income. https://go.obermatsa.com/0j35'),
(820, 'Crytofah', 'mary-ann-morris@sbcglobal.net', 'The online job can bring you a fantastic profit.', 'Online Bot will bring you wealth and satisfaction. https://go.obermatsa.com/0j35'),
(821, 'Crytofah', 'cquarchioni@aol.com', 'Check out the newest way to make a fantastic profit.', 'Have no financial skills? Let Robot make money for you. https://go.obermatsa.com/0j35'),
(822, 'Crytofah', 'mikkooorivera@gmail.com', 'Rich people are rich because they use this robot.', 'The huge income without investments is available. https://go.obermatsa.com/0j35'),
(823, 'Crytofah', 'lewisindigo@goosebox.net', 'Have no money? It’s easy to earn them online here.', 'The best online investment tool is found. Learn more! https://go.obermatsa.com/0j35'),
(824, 'Crytofah', 'bbygirl2069@hotmail.com', 'This robot can bring you money 24/7.', 'Buy everything you want earning money online. https://go.obermatsa.com/0j35'),
(825, 'Crytofah', 'allenqig@greeninbox.org', 'Try out the automatic robot to keep earning all day long.', 'Every your dollar can turn into $100 after you lunch this Robot. https://go.obermatsa.com/0j35'),
(826, 'Crytofah', 'rezvykhka@gmail.com', 'Launch the best investment instrument to start making money today.', '# 1 financial expert in the net! Check out the new Robot. https://go.obermatsa.com/0j35'),
(827, 'Crytofah', 'junicor1@gmail.com', 'Need cash? Launch this robot and see what it can.', 'Only one click can grow up your money really fast. https://go.obermatsa.com/0j35'),
(828, 'Crytofah', 'ivetmoral6@aol.com', 'Make money 24/7 without any efforts and skills.', 'Make your computer to be you earning instrument. https://go.obermatsa.com/0j35'),
(829, 'Crytofah', 'renichohulbkeowe@hotmail.com', 'Start your online work using the financial Robot.', 'The online job can bring you a fantastic profit. https://go.obermatsa.com/0j35'),
(830, 'Crytofah', 'gbhatt90@gmail.com', 'No need to work anymore. Just launch the robot.', 'This robot will help you to make hundreds of dollars each day. https://go.obermatsa.com/0j35'),
(831, 'Crytofah', 'brreina1@yahoo.com', 'No need to work anymore. Just launch the robot.', 'Small investments can bring tons of dollars fast. https://go.obermatsa.com/0j35'),
(832, 'Crytofah', 'feathermeat@hotmail.com', 'Find out about the easiest way of money earning.', 'We know how to become rich and do you? https://go.obermatsa.com/0j35'),
(833, 'Crytofah', 'chiggins90@gmail.com', 'The huge income without investments is available, now!', 'Money, money! Make more money with financial robot! https://go.obermatsa.com/0j35'),
(834, 'Crytofah', 'andreakrauss@yahoo.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'Make money in the internet using this Bot. It really works! https://go.obermatsa.com/0j35'),
(835, 'Crytofah', 'famedev@gammae.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'Everyone can earn as much as he wants now. https://go.obermatsa.com/0j35'),
(836, 'Crytofah', 'casimirocervantes@gmail.com', 'The financial Robot works for you even when you sleep.', 'Trust your dollar to the Robot and see how it grows to $100. https://go.obermatsa.com/0j35'),
(837, 'Crytofah', 'goldenherbco@aol.com', 'Financial robot guarantees everyone stability and income.', 'Financial robot is the best companion of rich people. https://go.obermatsa.com/0j35'),
(838, 'Crytofah', 'damoncumin@buchananinbox.com', 'Need money? Get it here easily! Just press this to launch the robot.', 'Need money? Get it here easily? https://go.obermatsa.com/0j35'),
(839, 'Crytofah', 'crosekelly@yahoo.com', 'Robot is the best solution for everyone who wants to earn.', 'Have no money? Earn it online. https://go.obermatsa.com/0j35'),
(840, 'Crytofah', 'sh0rte2sickwitit@aol.com', 'Just one click can turn you dollar into $1000.', 'Making money in the net is easier now. https://go.obermatsa.com/0j35'),
(841, 'Crytofah', 'mermaidchica77@yahoo.com', 'Only one click can grow up your money really fast.', 'Using this Robot is the best way to make you rich. https://go.obermatsa.com/0j35'),
(842, 'Crytofah', 'bonami35@windstream.net', 'Need money? Get it here easily?', 'The best way for everyone who rushes for financial independence. https://go.obermatsa.com/0j35'),
(843, 'Crytofah', 'mwamburifeizal@yahoo.com', 'The financial Robot is your # 1 expert of making money.', 'The online income is the easiest ways to make you dream come true. https://go.obermatsa.com/0j35'),
(844, 'Crytofah', 'alangardner99@yahoo.com', 'Find out about the easiest way of money earning.', 'The online income is your key to success. https://go.obermatsa.com/0j35'),
(845, 'Crytofah', 'Biggangster98@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Financial robot guarantees everyone stability and income. https://go.obermatsa.com/0j35'),
(846, 'Crytofah', 'ivetteespinal@hotmail.com', 'Earn additional money without efforts and skills.', 'This robot can bring you money 24/7. https://go.obermatsa.com/0j35'),
(847, 'Crytofah', 'monicabutler2002@yahoo.com', 'Start making thousands of dollars every week just using this robot.', 'Have no money? Earn it online. http://go.obermatsa.com/0ja8'),
(848, 'Crytofah', 'davidlrr@me.com', 'Attention! Financial robot may bring you millions!', 'No need to worry about the future if your use this financial robot. http://go.obermatsa.com/0ja8'),
(849, 'Crytofah', 'kevinlwms@yahoo.com', 'The financial Robot works for you even when you sleep.', 'Start your online work using the financial Robot. http://go.obermatsa.com/0ja8'),
(850, 'Crytofah', 'jhdfhdh@yahoo.com', 'Make dollars staying at home and launched this Bot.', 'Your computer can bring you additional income if you use this Robot. http://go.obermatsa.com/0ja8'),
(851, 'Crytofah', 'drenaud52@aol.com', 'Make thousands of bucks. Pay nothing.', 'We know how to make our future rich and do you? https://go.diryjyaz.com/0j35'),
(852, 'Crytofah', 'sexychinaa@yahoo.com', 'Making money can be extremely easy if you use this Robot.', 'There is no need to look for a job anymore. Work online. https://go.diryjyaz.com/0j35'),
(853, 'Crytofah', 'carlos.armendariz@zodiacaerospace.com', 'Even a child knows how to make money. Do you?', 'Still not a millionaire? The financial robot will make you him! https://go.diryjyaz.com/0j35'),
(854, 'Crytofah', 'cemattb@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', 'Looking forward for income? Get it online. https://go.diryjyaz.com/0j35'),
(855, 'Crytofah', '171697663@qq.com', 'One click of the robot can bring you thousands of bucks.', 'Making money is very easy if you use the financial Robot. https://go.diryjyaz.com/0j35'),
(856, 'Crytofah', 'mitchell.bencie@wfschools.org', 'See how Robot makes $1000 from $1 of investment.', 'Still not a millionaire? Fix it now! https://go.diryjyaz.com/0j35'),
(857, 'Crytofah', 'seamuspleausmith@gmail.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Make your computer to be you earning instrument. https://go.diryjyaz.com/0j35'),
(858, 'Crytofah', 'oz_hayrettin@windowslive.com', 'The additional income is available for everyone using this robot.', 'Still not a millionaire? Fix it now! https://go.diryjyaz.com/0j35'),
(859, 'Crytofah', 'J.beaty@sky.com', 'Rich people are rich because they use this robot.', 'Online Bot will bring you wealth and satisfaction. https://go.diryjyaz.com/0j35'),
(860, 'Crytofah', 'bbreeze5@cox.net', 'It is the best time to launch the Robot to get more money.', 'Learn how to make hundreds of backs each day. https://go.diryjyaz.com/0j35'),
(861, 'Crytofah', 'gy.ni.n.v.aler.ian841@gmail.com', 'One dollar is nothing, but it can grow into $100 here.', 'Trust the financial Bot to become rich. https://go.diryjyaz.com/0j35'),
(862, 'Crytofah', 'kopmagnet@yahoo.com', 'The online income is your key to success.', 'Make your money work for you all day long. https://go.diryjyaz.com/0j35'),
(863, 'Crytofah', 'JuneStrambler@att.net', 'Join the society of successful people who make money here.', 'Earning money in the Internet is easy if you use Robot. https://go.diryjyaz.com/0j35'),
(864, 'Crytofah', 'Brenda_Moreno@cox.net', 'This robot can bring you money 24/7.', 'Looking for an easy way to make money? Check out the financial robot. https://go.sakelonel.com/0jb5'),
(865, 'Crytofah', 'rusti_knight@yahoo.com', 'Invest $1 today to make $1000 tomorrow.', 'There is no need to look for a job anymore. Work online. https://go.sakelonel.com/0jb5'),
(866, 'Crytofah', 'jeffreybentvelzen@msn.com', 'Financial robot is your success formula is found. Learn more about it.', 'Check out the new financial tool, which can make you rich. https://go.sakelonel.com/0jb5'),
(867, 'Crytofah', 'kkrivoshein@yahoo.com', 'The online income is your key to success.', 'Make dollars just sitting home. https://go.sakelonel.com/0jb5'),
(868, 'Crytofah', 'rhuffy@live.com', 'The online job can bring you a fantastic profit.', 'Make money, not war! Financial Robot is what you need. https://go.sakelonel.com/0jb5'),
(869, 'Crytofah', 'avi0202@yahoo.com', 'Launch the financial Robot and do your business.', 'Everyone who needs money should try this Robot out. https://go.sakelonel.com/0j35'),
(870, 'Crytofah', 'patrice621@msn.com', 'Buy everything you want earning money online.', 'We have found the fastest way to be rich. Find it out here. https://go.sakelonel.com/0j35'),
(871, 'Crytofah', 'bethdarst@yahoo.com', 'Only one click can grow up your money really fast.', 'No need to work anymore while you have the Robot launched! https://go.sakelonel.com/0j35'),
(872, 'Crytofah', 'BHARNETTO@HOTMAIL.COM', 'The best online investment tool is found. Learn more!', 'Earn additional money without efforts. http://go.cuxavyem.com/0j35'),
(873, 'Crytofah', 'gonzalez.dylan49@gmail.com', 'Provide your family with the money in age. Launch the Robot!', 'Make your money work for you all day long. http://go.cuxavyem.com/0j35'),
(874, 'Crytofah', 'yuliadina@yahoo.com', 'Check out the new financial tool, which can make you rich.', 'The huge income without investments is available. http://go.cuxavyem.com/0j35'),
(875, 'Crytofah', 'kbfortes@yahoo.com', 'Making money in the net is easier now.', 'Financial robot guarantees everyone stability and income. http://go.cuxavyem.com/0j35'),
(876, 'Crytofah', 'jersey201boy@yahoo.com', 'The success formula is found. Learn more about it.', 'Launch the financial Robot and do your business. http://go.cuxavyem.com/0j35'),
(877, 'Crytofah', 'ace007@clear.net', 'Check out the newest way to make a fantastic profit.', 'Financial robot is a great way to manage and increase your income. http://go.cuxavyem.com/0j35'),
(878, 'Crytofah', 'ob.j.ectiv.epqsq@gmail.com', 'It is the best time to launch the Robot to get more money.', 'Thousands of bucks are guaranteed if you use this robot. http://go.cuxavyem.com/0j35'),
(879, 'Crytofah', 'nikmiesse2014@gmail.com', 'Financial independence is what this robot guarantees.', 'Using this Robot is the best way to make you rich. http://go.gepekaep.com/0j35'),
(880, 'Crytofah', 'defiantstove196@outlook.com', 'The fastest way to make you wallet thick is here.', 'Check out the automatic Bot, which works for you 24/7. http://go.gepekaep.com/0j35'),
(881, 'Crytofah', 'stayawayfrommrrogers@gmail.com', 'No need to worry about the future if your use this financial robot.', 'Making money can be extremely easy if you use this Robot. http://go.gepekaep.com/0j35'),
(882, 'Crytofah', 'allawy_112000@yahoo.com', 'Have no money? It’s easy to earn them online here.', 'Trust your dollar to the Robot and see how it grows to $100. http://go.gepekaep.com/0j35'),
(883, 'Crytofah', 'clpetersen@centurytel.net', 'Need money? Get it here easily?', 'Only one click can grow up your money really fast. http://go.gepekaep.com/0j35'),
(884, 'Crytofah', 'spiritualdoc99@gmail.com', 'Need some more money? Robot will earn them really fast.', 'Making money in the net is easier now. http://go.gepekaep.com/0j35'),
(885, 'Crytofah', 'RSA_BreakP@hotmail.com', 'Have no financial skills? Let Robot make money for you.', 'One dollar is nothing, but it can grow into $100 here. http://go.gepekaep.com/0j35'),
(886, 'Crytofah', 'rukshanacse88@gmail.com', 'Still not a millionaire? The financial robot will make you him!', 'Need money? Get it here easily! Just press this to launch the robot. Telegram - @Crypto2022toolbot'),
(887, 'Crytofah', 'dvbsstc@gmail1313.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Make thousands every week working online here. Telegram - @Cryptaxbot'),
(888, 'Crytofah', 'deleonaracely22@yahoo.com', 'Have no financial skills? Let Robot make money for you.', 'Launch the financial Bot now to start earning. Telegram - @Cryptaxbot'),
(889, 'Crytofah', 'oxlajalibertecozurtney@hotmail.com', 'This robot can bring you money 24/7.', 'Learn how to make hundreds of backs each day. Telegram - @Cryptaxbot'),
(890, 'Crytofah', 'cathycafagna@yahoo.com', 'Have no money? Earn it online.', 'Make thousands of bucks. Financial robot will help you to do it! Telegram - @Cryptaxbot'),
(891, 'Crytofah', 'psykodude16@yahoo.com', 'Online earnings are the easiest way for financial independence.', 'Only one click can grow up your money really fast. Telegram - @Cryptaxbot'),
(892, 'Crytofah', 'phoenixturtleblue@yahoo.com', 'Financial robot is a great way to manage and increase your income.', 'There is no need to look for a job anymore. Work online. Telegram - @Cryptaxbot'),
(893, 'Crytofah', 'becher.julie@yahoo.com', 'Even a child knows how to make money. This robot is what you need!', 'Let your money grow into the capital with this Robot. Telegram - @Cryptaxbot'),
(894, 'Crytofah', 'mueller@tds.net', 'Everyone can earn as much as he wants suing this Bot.', 'Make yourself rich in future using this financial robot. Telegram - @Cryptaxbot'),
(895, 'Crytofah', 'marywhite22@gmail.com', 'Invest $1 today to make $1000 tomorrow.', 'Additional income is now available for anyone all around the world. Telegram - @Cryptaxbot'),
(896, 'Crytofah', 'brycebass@ymail.com', 'Financial robot guarantees everyone stability and income.', 'Even a child knows how to make money. This robot is what you need! Telegram - @Cryptaxbot'),
(897, 'Crytofah', 'zaria101@gmail.com', 'The financial Robot is your future wealth and independence.', 'Earning money in the Internet is easy if you use Robot. Telegram - @Cryptaxbot'),
(898, 'Crytofah', 'shoebappa1@aol.com', 'Make money, not war! Financial Robot is what you need.', 'The financial Robot works for you even when you sleep. Telegram - @Cryptaxbot'),
(899, 'Crytofah', 'caefw@fsfg.com', 'Only one click can grow up your money really fast.', '# 1 financial expert in the net! Check out the new Robot. Telegram - @Cryptaxbot'),
(900, 'Crytofah', 'cristinasgouveia@gmail.com', 'Need money? The financial robot is your solution.', 'Automatic robot is the best start for financial independence. Telegram - @Cryptaxbot'),
(901, 'Crytofah', 'meaniehead3000@aim.com', 'Still not a millionaire? Fix it now!', 'Financial robot is a great way to manage and increase your income. Telegram - @Cryptaxbot'),
(902, 'Crytofah', 'efflamenbaum@aim.com', 'Even a child knows how to make $100 today with the help of this robot.', 'Small investments can bring tons of dollars fast. Telegram - @Cryptaxbot'),
(903, 'Crytofah', 'zariyah27@yahoo.com', 'The financial Robot is the most effective financial tool in the net!', 'Let your money grow into the capital with this Robot. Telegram - @Cryptaxbot'),
(904, 'Crytofah', 'lee-shiyun@hotmail.com', 'Everyone can earn as much as he wants now.', 'Attention! Here you can earn money online! Telegram - @Cryptaxbot'),
(905, 'Crytofah', 'robinwatt15@gmail.com', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Everyone who needs money should try this Robot out. Telegram - @Cryptaxbot'),
(906, 'Crytofah', 'C_McLean92@yahoo.com', 'Make your laptop a financial instrument with this program.', 'Looking for an easy way to make money? Check out the financial robot. Telegram - @Cryptaxbot'),
(907, 'Crytofah', 'horton_arneatrice@yahoo.com', 'Only one click can grow up your money really fast.', 'Everyone who needs money should try this Robot out. Telegram - @Cryptaxbot'),
(908, 'Crytofah', 'marvelrealtorsindia@gmail.com', 'Feel free to buy everything you want with the additional income.', 'The financial Robot is your future wealth and independence. Telegram - @Cryptaxbot'),
(909, 'Crytofah', 'ryo_ankgra@yahoo.com', 'Need some more money? Robot will earn them really fast.', 'Need money? Earn it without leaving your home. Telegram - @Cryptaxbot'),
(910, 'Crytofah', 'cb.luelf@westnet.com', 'Check out the automatic Bot, which works for you 24/7.', 'Have no financial skills? Let Robot make money for you. Telegram - @Cryptaxbot'),
(911, 'Crytofah', 'selupton@eircom.net', 'Make money in the internet using this Bot. It really works!', 'Financial robot is your success formula is found. Learn more about it. Telegram - @Cryptaxbot'),
(912, 'Crytofah', 'ron.friedman@integreon.com', 'Even a child knows how to make money. Do you?', 'Financial robot is your success formula is found. Learn more about it. Telegram - @Cryptaxbot'),
(913, 'Crytofah', 'cheesemonkey777@hotmail.com', 'Automatic robot is the best start for financial independence.', 'Start your online work using the financial Robot. Telegram - @Cryptaxbot'),
(914, 'Crytofah', 'tessjrpea@aol.com', 'No worries if you are fired. Work online.', 'Turn $1 into $100 instantly. Use the financial Robot. Telegram - @Cryptaxbot'),
(915, 'Crytofah', 'bmx_punk_rock@yahoo.com', 'Making money can be extremely easy if you use this Robot.', 'Attention! Here you can earn money online! Telegram - @Cryptaxbot'),
(916, 'Crytofah', 'megfulton@hotmail.com', 'Invest $1 today to make $1000 tomorrow.', 'Your money work even when you sleep. Telegram - @Cryptaxbot'),
(917, 'Crytofah', 'rockin_renz101@hotmail.com', 'Try out the best financial robot in the Internet.', 'Find out about the easiest way of money earning. Telegram - @Cryptaxbot'),
(918, 'Crytofah', 'smith1128@aol.com', 'Financial Robot is #1 investment tool ever. Launch it!', 'Start your online work using the financial Robot. Telegram - @Cryptaxbot'),
(919, 'Crytofah', 'tippitanni@hotmail.com', 'No need to work anymore while you have the Robot launched!', 'The best way for everyone who rushes for financial independence. Telegram - @Cryptaxbot'),
(920, 'Crytofah', 'Chantal_1920@yahoo.com', 'Earning money in the Internet is easy if you use Robot.', 'Financial robot is a great way to manage and increase your income. Telegram - @Cryptaxbot'),
(921, 'Crytofah', 'otakli_18@hotmail.com', 'The online job can bring you a fantastic profit.', 'Check out the automatic Bot, which works for you 24/7. Telegram - @Cryptaxbot'),
(922, 'Crytofah', 'kristinaburns1685@yahoo.com', 'Make your money work for you all day long.', 'The best online job for retirees. Make your old ages rich. Telegram - @Cryptaxbot'),
(923, 'Crytofah', 'althea_mappala@yahoo.com', 'Earn additional money without efforts and skills.', 'Automatic robot is the best start for financial independence. Telegram - @Cryptaxbot'),
(924, 'Crytofah', 'traylorcd@hotmail.com', 'Invest $1 today to make $1000 tomorrow.', 'We know how to increase your financial stability. Telegram - @Cryptaxbot'),
(925, 'Crytofah', 'cherokee.princess9@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'Trust the financial Bot to become rich. Telegram - @Cryptaxbot'),
(926, 'Crytofah', 'placebo4one@hotmail.com', 'The online job can bring you a fantastic profit.', 'Even a child knows how to make $100 today. Telegram - @Cryptaxbot'),
(927, 'Crytofah', 'hensley@ohio.net', 'Only one click can grow up your money really fast.', 'This robot will help you to make hundreds of dollars each day. Telegram - @Cryptaxbot'),
(928, 'Crytofah', 'vrachelle63@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it!', 'Make thousands every week working online here. Telegram - @Cryptaxbot'),
(929, 'Crytofah', 'aurelieescach@hotmail.com', 'No need to worry about the future if your use this financial robot.', 'Watch your money grow while you invest with the Robot. Telegram - @Cryptaxbot'),
(930, 'Crytofah', 'orsgisdzr@gmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Automatic robot is the best start for financial independence. Telegram - @Cryptaxbot'),
(931, 'Crytofah', 'michellemedina43@yahoo.com', 'Even a child knows how to make $100 today.', 'Small investments can bring tons of dollars fast. Telegram - @Cryptaxbot'),
(932, 'Crytofah', 'sunshinemama76@yahoo.com', 'Join the society of successful people who make money here.', 'Join the society of successful people who make money here. Telegram - @Cryptaxbot'),
(933, 'Crytofah', 'danit23@yahoo.com', 'Small investments can bring tons of dollars fast.', 'Check out the new financial tool, which can make you rich. Telegram - @Cryptaxbot'),
(934, 'Crytofah', 'stephaustin1966@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Let the Robot bring you money while you rest. Telegram - @Cryptaxbot'),
(935, 'Crytofah', 'nikhilkariya@yahoo.com', 'We know how to make our future rich and do you?', 'Additional income is now available for anyone all around the world. Telegram - @Cryptaxbot'),
(936, 'Crytofah', 'sdawsong@aol.com', 'Online earnings are the easiest way for financial independence.', 'No need to work anymore. Just launch the robot. Telegram - @Cryptaxbot'),
(937, 'Crytofah', 'kaytlyn.ball@gmail.com', 'This robot will help you to make hundreds of dollars each day.', 'Small investments can bring tons of dollars fast. Telegram - @Cryptaxbot'),
(938, 'Crytofah', 'leydi.ricky@gmail.com', 'Financial independence is what this robot guarantees.', 'Make money 24/7 without any efforts and skills. Telegram - @Cryptaxbot'),
(939, 'Crytofah', 'mak3132@yahoo.com', 'Have no financial skills? Let Robot make money for you.', 'The additional income for everyone. Telegram - @Cryptaxbot'),
(940, 'AnthonyToile', 'no.reply.feedbackform@gmail.com', 'Do you want cheap and innovative advertising for little money?', 'Hеllо!  winlaxy.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd businеss оffеr tоtаlly lаwfully? \r\nWе prоviding а nеw lеgаl wаy оf sеnding аppеаl thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh prоpоsаls аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соmmuniсаtiоn Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis оffеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.'),
(941, 'Crytofah', 'misterstainless@yahoo.com', 'Start making thousands of dollars every week just using this robot.', 'No need to stay awake all night long to earn money. Launch the robot. Telegram - @Cryptaxbot'),
(942, 'Crytofah', 'red14blue@yahoo.com', 'Trust your dollar to the Robot and see how it grows to $100.', 'The huge income without investments is available. Telegram - @Cryptaxbot'),
(943, 'Crytofah', 'jg724_12@yahoo.com', 'Thousands of bucks are guaranteed if you use this robot.', 'Financial robot keeps bringing you money while you sleep. Telegram - @Cryptaxbot'),
(944, 'Crytofah', 'petra.furlan91@gmail.com', 'Need money? The financial robot is your solution.', 'Start making thousands of dollars every week. Telegram - @Cryptaxbot'),
(945, 'Crytofah', 'markharrison2002@aol.com', 'Financial robot is the best companion of rich people.', 'Make thousands of bucks. Pay nothing. Telegram - @Cryptaxbot'),
(946, 'Crytofah', 'pooja_smile143@rediffmail.com', 'Looking for additional money? Try out the best financial instrument.', 'Make your money work for you all day long. Telegram - @Cryptaxbot'),
(947, 'Crytofah', 'newsboypunk@hotmail.com', 'Your money keep grow 24/7 if you use the financial Robot.', 'Earn additional money without efforts. Telegram - @Cryptaxbot'),
(948, 'Crytofah', 'macavell@yahoo.com', 'Online Bot will bring you wealth and satisfaction.', 'Attention! Here you can earn money online! Telegram - @Cryptaxbot'),
(949, 'Crytofah', 'vne505mph@numail.org', 'Earn additional money without efforts and skills.', 'The huge income without investments is available. Telegram - @Cryptaxbot'),
(950, 'Crytofah', 'r_dog@hotmail.com', 'The fastest way to make you wallet thick is here.', 'Financial independence is what everyone needs. Telegram - @Cryptaxbot'),
(951, 'Crytofah', 'SINGE48@AOL.COM', 'Your money work even when you sleep.', 'Your money work even when you sleep. Telegram - @Cryptaxbot'),
(952, 'Crytofah', 'mumacmurraynowackve@msn.com', 'Have no money? Earn it online.', 'Financial robot guarantees everyone stability and income. Telegram - @Cryptaxbot'),
(953, 'Crytofah', 'candlelady08@yahoo.com', 'The huge income without investments is available.', 'Check out the new financial tool, which can make you rich. Telegram - @Cryptaxbot'),
(954, 'Crytofah', 'cmcnabb@fsl-law.com', 'The huge income without investments is available.', 'Earning money in the Internet is easy if you use Robot. Telegram - @Cryptaxbot'),
(955, 'Crytofah', 'chenbamaa@gmail.com', 'The online income is the easiest ways to make you dream come true.', 'Make your money work for you all day long. Telegram - @Cryptaxbot'),
(956, 'Crytofah', 'skyler1920@gmail.com', 'Financial independence is what this robot guarantees.', 'Check out the automatic Bot, which works for you 24/7. Telegram - @Cryptaxbot'),
(957, 'Crytofah', 'LIAM_TSAB@HOTMAIL.COM', 'Even a child knows how to make $100 today.', 'We have found the fastest way to be rich. Find it out here. Telegram - @Cryptaxbot'),
(958, 'Crytofah', 'wreckingball24@gmail.com', 'Robot is the best way for everyone who looks for financial independence.', 'Make money in the internet using this Bot. It really works! Telegram - @Cryptaxbot'),
(959, 'Crytofah', 'theman2000578105@aol.com', 'No need to stay awake all night long to earn money. Launch the robot.', 'Have no money? Earn it online. Telegram - @Cryptaxbot'),
(960, 'Crytofah', 'azeinkleni@sina.com', 'Launch the best investment instrument to start making money today.', 'The fastest way to make your wallet thick is found. Telegram - @Cryptaxbot'),
(961, 'Crytofah', 'dixonlobster@buchananinbox.com', 'Launch the financial Robot and do your business.', 'Attention! Here you can earn money online! Telegram - @Cryptaxbot'),
(962, 'Crytofah', 'cagnat43@gmail.com', 'The online job can bring you a fantastic profit.', 'Make money in the internet using this Bot. It really works! Telegram - @Cryptaxbot'),
(963, 'Crytofah', 'eiirpjmo@freemailboxy.com', 'Wow! This is a fastest way for a financial independence.', 'Try out the automatic robot to keep earning all day long. Telegram - @Cryptaxbot'),
(964, 'Crytofah', 'mary_stapleton@aol.com', 'Looking forward for income? Get it online.', 'Online earnings are the easiest way for financial independence. Telegram - @Cryptaxbot'),
(965, 'Crytofah', 'pauline.sim0@gmail.com', 'Even a child knows how to make $100 today with the help of this robot.', 'Need money? Get it here easily? Telegram - @Cryptaxbot'),
(966, 'Crytofah', 'calrlirra@hotmail.com', 'Your computer can bring you additional income if you use this Robot.', 'Make thousands of bucks. Financial robot will help you to do it! Telegram - @Cryptaxbot'),
(967, 'Crytofah', 'whar_fedale_pro_97@yahoo.com', 'No worries if you are fired. Work online.', 'Need cash? Launch this robot and see what it can. Telegram - @Cryptaxbot'),
(968, 'Crytofah', 'abhishek_malhotra@yahoo.com', 'The financial Robot is the most effective financial tool in the net!', 'Financial robot is your success formula is found. Learn more about it. Telegram - @Cryptaxbot'),
(969, 'Crytofah', 'ainewoxjy@vipmail.net', 'Make your laptop a financial instrument with this program.', 'The financial Robot is your future wealth and independence. Telegram - @Cryptaxbot'),
(970, 'Crytofah', 'larissa.cookson@gmail.com', 'We have found the fastest way to be rich. Find it out here.', 'Online Bot will bring you wealth and satisfaction. Telegram - @Cryptaxbot'),
(971, 'Crytofah', 'rafa1927@juno.com', 'Looking for an easy way to make money? Check out the financial robot.', 'Feel free to buy everything you want with the additional income. Telegram - @Cryptaxbot'),
(972, 'Crytofah', 'vmzernechel@mediacombb.net', 'Launch the best investment instrument to start making money today.', 'Just one click can turn you dollar into $1000. Telegram - @Cryptaxbot'),
(973, 'Crytofah', 'ladonna.joyce@YAHOO.COM', 'The huge income without investments is available.', 'The additional income is available for everyone using this robot. Telegram - @Cryptaxbot'),
(974, 'Mike Roberts\r\n', 'no-replyGar@gmail.com', 'Content Marketing to rank winlaxy.com', 'Hi there \r\n \r\nI Just checked your winlaxy.com ranks and saw that your site is trending down for some time. \r\n \r\nIf you are looking for a trend reversal, we have the right solution for you \r\n \r\nWe are offering affordable Content Marketing plans with humanly written SEO content \r\n \r\nFor more information, please check our offers \r\nhttps://www.digital-x-press.com/product/content-marketing/ \r\n \r\nThanks and regards \r\nMike Roberts\r\n'),
(975, 'TyroneFlick', 'support@capitalfund-hk.com', 'Business Funding', 'Capital Fund International Limited has been working in close partnership with various Business/Financial Consultants and every business and industrial sector all over the world. \r\n \r\nOur Financial services; Funding, Loan, collateral Facilities/Instrument and expertise is the safety net that you require in your Business. \r\n \r\nRequire funding/ Loan from 1 Million to 10 Billion USD/EURO/GBP and Above? \r\n \r\n+852 3008 8373 \r\nCapital Fund International Limited \r\nhttp://www.capitalfund-hk.com/ \r\ninfo@capitalfund-hk.com'),
(976, 'Mike Quincy\r\n', 'no-replyGar@gmail.com', 'NEW: Semrush Backlinks', 'Howdy \r\n \r\nThis is Mike Quincy\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your winlaxy.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Quincy\r\n \r\nmike@strictlydigital.net'),
(977, 'AlenaByPe', 'alenaByPe@protonmail.com', 'Ι\'m nоt jeаlоus. Cаn I fіnd here serious mаn? :)', 'Hеllо!\r\nРerhapѕ mу mеѕѕage is tоо ѕpecіfіс.\r\nВut mу oldеr siѕtеr fоund а wоnderful man hеre and thеy have а great relаtіоnshiр, but what аbоut me?\r\nI am 25 уеаrѕ оld, Αlеna, from the Сzеch Republiс, know Englіѕh lаnguagе alѕo\r\nAnd... bеttеr tо sау it immеdiately. Ι am biѕеxual. I аm not ϳеalоuѕ of аnothеr woman... еsрeсiallу іf wе mаkе lоvе togеther.\r\nАh yеs, Ι сооk very tаstуǃ аnd I love not onlу cоok ;))\r\nΙm reаl gіrl аnd lоokіng for ѕerіouѕ and hot relаtionshіp...\r\nАnywаy, уоu сan fіnd mу prоfilе hеre: http://anosantesleft.cf/item-38484/ \r\n');
INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(978, 'WilliamRoope', 'no.reply.argub@gmail.com', 'Delivery of your email messages.', 'Hi!  winlaxy.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd businеss prоpоsаl еntirеly lаwfully? \r\nWе prоpоsе а nеw mеthоd оf sеnding lеttеr thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh соmmеrсiаl оffеrs аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соmmuniсаtiоn Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis оffеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat. \r\nno.reply.Roope@gmail.com'),
(979, 'Mike Roberts\r\n', 'no-replyGar@gmail.com', 'Increase the DR of your winlaxy.com in ahrefs', 'Hi there \r\n \r\nJust checked your winlaxy.com in ahrefs and saw that you could use an authority boost. \r\n \r\nWith our service you will get a guaranteed ahrefs score within just 3 months time. This will increase the organic visibility and strengthen your website authority, thus getting it stronger against G updates as well. \r\n \r\nFor more information, please check our offers \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nThanks and regards \r\nMike Roberts\r\n \r\n \r\n \r\nPS: For a limited time, we`ll add ahrefs UR50+ for free.'),
(980, 'Mike Fulton\r\n', 'no-replyGar@gmail.com', 'Improve local visibility for winlaxy.com', 'If you have a local business and want to rank it on google maps in a specific area then this service is for you. \r\n \r\nGoogle Map Stacking is one of the best ways to rank your GMB in a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Fulton\r\n \r\n \r\nPS: Want an all in one Local Plan that includes everything? \r\nhttps://www.speed-seo.net/product/local-seo-package/'),
(981, 'Mike Nash\r\n', 'no-replyGar@gmail.com', 'Monthly SEO plans from 49$ ONLY', 'Good Day \r\n \r\nI have just verified your SEO on  winlaxy.com for the ranking keywords and saw that your website could use a boost. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nRegards \r\nMike Nash\r\n \r\n \r\nPS: Quality SEO content is included'),
(982, 'Mike Blomfield\r\n', 'no-replyGar@gmail.com', 'Content Marketing to rank winlaxy.com', 'Hi there \r\n \r\nI Just checked your winlaxy.com ranks and saw that your site is trending down for some time. \r\n \r\nIf you are looking for a trend reversal, we have the right solution for you \r\n \r\nWe are offering affordable Content Marketing plans with humanly written SEO content \r\n \r\nFor more information, please check our offers \r\nhttps://www.digital-x-press.com/product/content-marketing/ \r\n \r\nThanks and regards \r\nMike Blomfield\r\n'),
(983, 'Mike Wesley\r\n', 'no-replyGar@gmail.com', 'NEW: Semrush Backlinks', 'Howdy \r\n \r\nThis is Mike Wesley\r\n \r\nLet me present you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your winlaxy.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Wesley\r\n \r\nmike@strictlydigital.net'),
(984, 'Mike Benson\r\n', 'no-replyGar@gmail.com', 'Increase the DR of your winlaxy.com in ahrefs', 'Hi there \r\n \r\nJust checked your winlaxy.com in ahrefs and saw that you could use an authority boost. \r\n \r\nWith our service you will get a guaranteed ahrefs score within just 3 months time. This will increase the organic visibility and strengthen your website authority, thus getting it stronger against G updates as well. \r\n \r\nFor more information, please check our offers \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Semrush DA is now possible \r\nhttps://www.monkeydigital.co/semrush-da/ \r\n \r\nThanks and regards \r\nMike Benson\r\n \r\n \r\n \r\nPS: For a limited time, we`ll add ahrefs UR50+ for free.'),
(985, 'Mike Chandter\r\n', 'no-replyGar@gmail.com', 'Improve local visibility for winlaxy.com', 'If you have a local business and want to rank it on google maps in a specific area then this service is for you. \r\n \r\nGoogle Map Stacking is one of the best ways to rank your GMB in a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Chandter\r\n \r\n \r\nPS: Want an all in one Local Plan that includes everything? \r\nhttps://www.speed-seo.net/product/local-seo-package/'),
(986, 'Raymond', 's1.thecctvpro@gmail.com', 'Underwater cameras', 'Dear Sir/mdm, \r\nHope you are doing well \r\nWe supply 4G solar cameras, explosion-proof cameras and underwater cameras for commercial use. Use of applications: ships, construction sites, oil rigs and nuclear reactor etc.. \r\nDo contact us for any enquiries and visit our website below \r\nWe also have nitrile gloves if you need some \r\nWhatsapp: +65 87695655 \r\nEmail: sales@thecctvpro.com \r\nW: https://www.thecctvpro.com/ \r\nIf you wish to unsubscribe, do reply to our email. \r\nregards, \r\nRaymond'),
(987, 'Mike Macduff\r\n', 'no-replyGar@gmail.com', 'Monthly SEO plans from 49$ ONLY', 'Greetings \r\n \r\nI have just analyzed  winlaxy.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nRegards \r\nMike Macduff\r\n \r\n \r\nPS: Quality SEO content is included'),
(988, 'MargaritaNup', 'margaritaNup@denpelatucarenn.tk', 'Gіrl\'s couрle. Wе wаnt to mееt a manǃ...', 'Ηеllo!\r\nI apоlоgіze fоr the оverlу spеcifіc mеssagе.\r\nМy gіrlfrіend and Ι lоvе eасh оther. Аnd we arе all grеat.\r\nBut... wе nееd a mаn.\r\nWe аre 27 уears old, from Romania, wе alѕo know еnglish.\r\nԜе nеvеr get bоrеdǃ Аnd not only in talk...\r\nΜу namе іs Margarita, mу profіle іѕ herе: http://niefisdo.cf/item-37530/ \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'São Tomé and Príncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `owner_types`
--

CREATE TABLE `owner_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_types`
--

INSERT INTO `owner_types` (`id`, `name`) VALUES
(1, 'Owner'),
(2, 'Broker');

-- --------------------------------------------------------

--
-- Table structure for table `prices_conditions`
--

CREATE TABLE `prices_conditions` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices_conditions`
--

INSERT INTO `prices_conditions` (`id`, `value`) VALUES
(1, 'All inclusive price'),
(2, 'Tax and Govt.charges excludes'),
(3, 'Price Negotiable');

-- --------------------------------------------------------

--
-- Table structure for table `properties_logs`
--

CREATE TABLE `properties_logs` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `seller_user_id` int(11) NOT NULL,
  `buyer_user_id` int(11) NOT NULL,
  `property_type` int(11) NOT NULL,
  `owner_type` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_in` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_diamention_id` int(11) NOT NULL,
  `property_diamention` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_photos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_status` tinyint(4) NOT NULL DEFAULT 1,
  `expected_price` double(20,2) NOT NULL,
  `per_sqft_price` double(20,2) NOT NULL,
  `updated_per_sqft_price` double(20,2) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties_logs`
--

INSERT INTO `properties_logs` (`id`, `property_id`, `seller_user_id`, `buyer_user_id`, `property_type`, `owner_type`, `state_id`, `city_id`, `location`, `area_in`, `property_diamention_id`, `property_diamention`, `property_photos`, `property_status`, `expected_price`, `per_sqft_price`, `updated_per_sqft_price`, `created_on`, `updated_on`) VALUES
(1, 0, 7, 15, 2, 2, 15, 364, '19/C Sector 19 Kopar Khairane\r\nFlat no 201,Banai Apartment,40 gyan vikas road,', '1', 1, '5000x5000', '{\"totalFiles\":[\"0d0a5aa7689fba0198ce4a2ad4d30da0.jpg\"]}', 2, 5000000.00, 5000000.00, 5000000.00, '2022-06-03 06:20:54', NULL),
(2, 0, 7, 15, 2, 1, 12, 329, '19/C Sector 19 Kopar Khairane\r\nFlat no 201,Banai Apartment,40 gyan vikas road,', '1', 1, '5000x5000', '{\"totalFiles\":[\"c4fb8cc1c218b188913c0849912354e5.png\"]}', 2, 5000000.00, 5000000.00, 5000000.00, '2022-06-04 09:55:46', NULL),
(3, 0, 15, 7, 4, 1, 12, 318, 'At Post Sirasdevi Tq. Georai Di. Beed\r\nSirasdevi', '1', 1, '50*20', '{\"totalFiles\":[\"ad58db8439ce626d623b0185f656d37f.png\",\"4f08ad6ce053da89dc851ae44065f1b0.png\",\"edb6d329e94b3e5f80f6ee1c8ebda0f3.png\",\"d1204e4585d76defa61956b8655c8f37.png\"]}', 2, 5000.00, 5000.00, 5000.00, '2022-06-13 09:35:13', NULL),
(4, 0, 7, 11, 2, 2, 12, 329, 'Dadar', '1', 1, '200*200', '{\"totalFiles\":[\"d0d878905bdbb94869d6a841849d2d6c.jpg\",\"9e1601b4e315c7b8b5599254202deceb.jpg\"]}', 2, 200.00, 200.00, 0.00, '2022-06-10 10:33:51', NULL),
(5, 0, 11, 7, 2, 2, 9, 236, '19/C Sector 19 Kopar Khairane\r\nFlat no 201,Banai Apartment,40 gyan vikas road,', '1', 1, '5000x5000', '{\"totalFiles\":[\"83205fa89c84c51bfac3758dd6bd0f62.png\"]}', 2, 5000000.00, 5000000.00, 5000000.00, '2022-06-16 09:21:50', NULL),
(6, 0, 7, 15, 2, 2, 12, 337, 'Pimpri Chinchwad ', '1', 1, '500*500', '{\"totalFiles\":[\"a70e6b9e88ecf96fe13843534fcadd51.png\",\"1152b3e2ad03916ae10eeeb4ce54222f.png\",\"93d271e8cc41a11aa01abcfbeb938ee1.png\",\"5c223beeade81fd85e72c42160e886e0.png\",\"8b3f7aa2bdc063fba64c1d6314bd3a1b.png\"]}', 2, 500.00, 500.00, 500.00, '2022-06-15 08:41:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_diamention`
--

CREATE TABLE `property_diamention` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_diamention`
--

INSERT INTO `property_diamention` (`id`, `name`) VALUES
(1, 'Square Feet');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listed_properties`
--

CREATE TABLE `tbl_listed_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buyer_user_id` int(11) NOT NULL DEFAULT 0,
  `buyers_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_parts` int(11) NOT NULL DEFAULT 0,
  `soldout_parts` int(11) NOT NULL DEFAULT 0,
  `property_type` int(11) NOT NULL,
  `owner_type` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_in` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_diamention_id` int(11) NOT NULL,
  `property_diamention` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_photos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=for buy or sell,2=under process,3=processed',
  `expected_price` double(20,2) NOT NULL,
  `per_sqft_price` double(20,2) NOT NULL,
  `updated_per_sqft_price` float(20,2) NOT NULL DEFAULT 0.00,
  `price_terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_listed_properties`
--

INSERT INTO `tbl_listed_properties` (`id`, `user_id`, `buyer_user_id`, `buyers_data`, `in_parts`, `soldout_parts`, `property_type`, `owner_type`, `state_id`, `city_id`, `location`, `area_in`, `property_diamention_id`, `property_diamention`, `property_photos`, `property_status`, `expected_price`, `per_sqft_price`, `updated_per_sqft_price`, `price_terms`, `created_on`, `updated_on`) VALUES
(10, 11, 0, NULL, 4, 0, 1, 2, 21, 475, '19/C Sector 19 Kopar Khairane\r\nFlat no 201,Banai Apartment,40 gyan vikas road,', '1', 1, '5000', '{\"totalFiles\":[\"2fc8f69abc1034a5ecb175afe4744718.jpg\"]}', 1, 500.00, 500.00, 500.00, NULL, '2022-06-14 16:32:33', '2022-10-02 07:05:36'),
(11, 30, 0, NULL, 3, 0, 1, 1, 1, 11, 'abcd', '1', 1, '2000*2000', '{\"totalFiles\":[\"b16d5fdb8d42bf0830d02d3261af652c.jpg\"]}', 1, 45000.00, 45000.00, 45000.00, NULL, '2022-06-14 16:35:45', '2022-10-02 07:07:35'),
(14, 15, 0, '[{\"id\":\"72e094ca9c77f42b6a0560cab32c181b\",\"buyer_uid\":\"11\",\"total_sqft\":\"266.6666666666667\",\"tokens\":\"13333.333333333334\",\"buying_parts\":\"2\",\"buying_price\":\"500.00\",\"status\":0,\"date_time\":\"2022-10-02 07:08:35\"},{\"id\":\"c34f641a6de98a3c196c7973bea39347\",\"buyer_uid\":\"11\",\"total_sqft\":\"133.33333333333334\",\"tokens\":\"6666.666666666667\",\"buying_parts\":\"1\",\"buying_price\":\"500.00\",\"status\":0,\"date_time\":\"2022-10-02 07:09:18\"}]', 0, 3, 4, 1, 22, 499, 'At. Post Sirasdevi Tq. Georai Dist. Beed', '1', 1, '20*20', '{\"totalFiles\":[\"efb1066ba6dd3a79e6cd5a7f7fd26e55.jpg\",\"9c48e1456ea60ff74d98d9e0ed755443.jpg\",\"63d69f32be923dc649446d0c63011aea.jpg\",\"c30dfc4e9ae5b038818a4de0efd18218.jpg\"]}', 2, 500.00, 500.00, 500.00, NULL, '2022-06-25 06:47:20', '2022-10-02 07:09:18'),
(17, 15, 0, NULL, 0, 0, 2, 1, 13, 351, 'At. Post Sirasdevi Tq. Georai Dist. Beed', '1', 1, '50*20', '{\"totalFiles\":[\"af9604e1f585ec95731d1c439ca00194.jpg\",\"b021cb4154b3a4917f9c2e32e54b6c52.jpg\",\"27ab2e94e24c929d6b4ab0d09ddd1e7e.jpg\",\"b0292fa1695c7e0ca0fd1df1857d43ee.jpg\"]}', 1, 500.00, 500.00, 500.00, NULL, '2022-07-18 05:55:15', NULL),
(18, 11, 0, NULL, 0, 0, 2, 2, 18, 429, '19/C Sector 19 Kopar Khairane\r\nFlat no 201,Banai Apartment,40 gyan vikas road,', '1', 1, '5000x5000', '{\"totalFiles\":[\"57582a9d6a173c2241670898c9602646.png\",\"8f732f94526516d3a3a86e4a1065f73c.png\",\"b9b2de9a888154f2ba2dd23018d0468d.png\",\"891dc4d5f849bd6146cb31e97c9f340c.png\"]}', 1, 5000000.00, 5000000.00, 5000000.00, NULL, '2022-07-20 09:36:46', NULL),
(19, 15, 0, NULL, 0, 0, 3, 2, 12, 324, 'C-20, Ivy Villa, Ivy Estate\r\nWagholi', '1', 1, '20*20', '{\"totalFiles\":[\"28106a3476d3c9945db5bcfd228233d5.jpg\",\"871c14f62b8ae6dfd68506d7525cb029.jpg\",\"da1118f659bd0f6e0a49be5187dad0de.jpg\",\"e4fa9439a43e870291912b538e4c65e1.jpg\"]}', 1, 500.00, 500.00, 500.00, '[\"All inclusive price\",\"Tax and Govt.charges excludes\"]', '2022-07-21 04:41:40', NULL),
(20, 15, 0, NULL, 0, 0, 2, 2, 10, 252, 'At Post Sirasdevi Tq. Georai Di. Beed\r\nSirasdevi', '1', 1, '20*20', '{\"totalFiles\":[\"134dfdd6fc688f987b268f8599f0b6d9.jpg\",\"1a1ffd7c5018b4673a2b8201ea19b91c.jpg\",\"0ff4f674078beb9e67d4e4d9be951d2f.jpg\",\"cec24cf45fb9a3cb189a3d7f9be9e545.jpg\"]}', 1, 500.00, 500.00, 500.00, '[\"All inclusive price\",\"Price Negotiable\"]', '2022-07-21 04:51:11', NULL),
(21, 15, 0, NULL, 0, 0, 2, 2, 9, 229, 'At. Post Sirasdevi Tq. Georai Dist. Beed', '1', 1, '20*20', '{\"totalFiles\":[\"c093e56603ed669ea8dee5a607020bfc.jpg\",\"08f73ba43b69a682bb6f7e80ddd1e863.jpg\",\"a27f4f89d77af98b3a4cfea904d7b49c.jpg\",\"b98175803265a2bdb0b2ee87def755ae.jpg\"]}', 1, 500.00, 500.00, 500.00, '[\"All inclusive price\",\"Price Negotiable\"]', '2022-07-21 04:53:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_property_types`
--

CREATE TABLE `tbl_property_types` (
  `id` int(11) NOT NULL,
  `property_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_property_types`
--

INSERT INTO `tbl_property_types` (`id`, `property_type`, `created_on`, `updated_on`) VALUES
(1, 'LAND', '2022-04-24 08:24:10', NULL),
(2, 'FLAT', '2022-04-24 08:24:10', NULL),
(3, 'PLOT', '2022-04-24 08:25:07', NULL),
(4, 'FARMHOUSE', '2022-04-24 08:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_balances`
--

CREATE TABLE `tbl_token_balances` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `balance` float(20,8) NOT NULL,
  `property_log_id` int(20) NOT NULL,
  `token_rate_inr` double(20,2) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_token_balances`
--

INSERT INTO `tbl_token_balances` (`id`, `user_id`, `balance`, `property_log_id`, `token_rate_inr`, `created_on`, `updated_on`) VALUES
(1, 15, 999999995904.00000000, 1, 10.00, '2022-06-13 07:38:07', NULL),
(2, 15, 999999995904.00000000, 2, 10.00, '2022-06-13 09:08:11', NULL),
(3, 7, 500000.00000000, 3, 10.00, '2022-06-13 09:37:08', NULL),
(4, 11, 0.00000000, 4, 10.00, '2022-06-13 10:56:59', NULL),
(5, 7, 999999995904.00000000, 5, 10.00, '2022-06-16 10:21:13', NULL),
(6, 15, 12500000.00000000, 6, 10.00, '2022-07-16 11:46:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(55) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `password`, `otp`, `is_verified`, `status`, `created_on`, `updated_on`) VALUES
(7, 'Salim', 'salimshaikh512512@gmail.com', '12345678', NULL, 0, 1, '2022-03-31 21:14:58', '2022-06-13 05:33:46'),
(11, 'Himmat', 'dilsebedse@gmail.com', '12345678', NULL, 0, 1, '2022-04-06 08:31:38', '2022-05-30 05:19:06'),
(14, 'Ashish', 'cashaa.life@gmail.com', '12345678', NULL, 0, 1, '2022-05-04 11:51:28', '2022-05-30 05:19:26'),
(15, 'Amol', 'khade4982@gmail.com', '12345678', NULL, 0, 1, '2022-05-10 15:21:56', '2022-05-30 05:18:55'),
(17, 'Ejaj', 'ejajshaikh8146@gmail.com', '9975665229', NULL, 0, 1, '2022-05-30 07:50:32', '2022-06-07 12:14:26'),
(24, 'salim shaikh', 'salimpatels512@gmail.com', '12345678', NULL, 0, 1, '2022-06-08 07:02:11', '2022-06-08 07:02:11'),
(28, 'Rohan', 'rohan@gmail.com', '12345678', NULL, 0, 1, '2022-06-08 12:10:39', '2022-06-08 12:10:39'),
(29, 'Soham', 'soham@gmail.com', '12345678', NULL, 0, 1, '2022-06-08 15:40:36', '2022-06-08 15:40:36'),
(30, NULL, 'venkateshwara.nokia@gmail.com', 'psk@12345', NULL, 0, 1, '2022-06-14 16:29:56', '2022-06-14 16:29:56'),
(31, 'jamesright', 'jamesright002@gmail.com', 'Coindev@321', NULL, 0, 1, '2022-07-13 08:27:51', '2022-07-13 08:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `token_distribution`
--

CREATE TABLE `token_distribution` (
  `id` int(11) NOT NULL,
  `holder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float(20,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_distribution`
--

INSERT INTO `token_distribution` (`id`, `holder`, `amount`) VALUES
(1, 'Distribution Group\r\nCategory', 4000000000.00000000),
(2, 'Marketing', 2000000000.00000000),
(3, 'Reserve', 1000000000.00000000),
(4, 'Team', 1000000000.00000000),
(5, 'Business Expansion', 2000000000.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `token_rate`
--

CREATE TABLE `token_rate` (
  `id` int(11) NOT NULL,
  `initial_rate_inr` tinyint(1) NOT NULL,
  `current_rate_inr` tinyint(1) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_rate`
--

INSERT INTO `token_rate` (`id`, `initial_rate_inr`, `current_rate_inr`, `created_on`, `updated_on`) VALUES
(1, 10, 10, '2022-06-12 08:10:09', '2022-06-12 08:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `web_subscriber`
--

CREATE TABLE `web_subscriber` (
  `sub_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_types`
--
ALTER TABLE `owner_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices_conditions`
--
ALTER TABLE `prices_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties_logs`
--
ALTER TABLE `properties_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_diamention`
--
ALTER TABLE `property_diamention`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_listed_properties`
--
ALTER TABLE `tbl_listed_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_type` (`property_type`),
  ADD KEY `owner_type` (`owner_type`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_property_types`
--
ALTER TABLE `tbl_property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_token_balances`
--
ALTER TABLE `tbl_token_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_distribution`
--
ALTER TABLE `token_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_rate`
--
ALTER TABLE `token_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  ADD PRIMARY KEY (`sub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=989;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `owner_types`
--
ALTER TABLE `owner_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prices_conditions`
--
ALTER TABLE `prices_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties_logs`
--
ALTER TABLE `properties_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_diamention`
--
ALTER TABLE `property_diamention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_listed_properties`
--
ALTER TABLE `tbl_listed_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_property_types`
--
ALTER TABLE `tbl_property_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_token_balances`
--
ALTER TABLE `tbl_token_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `token_distribution`
--
ALTER TABLE `token_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `token_rate`
--
ALTER TABLE `token_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_listed_properties`
--
ALTER TABLE `tbl_listed_properties`
  ADD CONSTRAINT `tbl_listed_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
