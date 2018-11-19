
-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `vocal_part` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `show_id`, `name`, `subtitle`, `vocal_part`) VALUES
(1, 1, 'Jupiter', 'Aged Deity', NULL),
(2, 1, 'Apollo', 'Aged Deity', NULL),
(3, 1, 'Mars', 'Aged Deity', NULL),
(4, 1, 'Diana', 'Aged Deity', NULL),
(5, 1, 'Venus', 'Aged Deity', NULL),
(6, 1, 'Mercury', 'Aged Deity', NULL),
(7, 1, 'Thespis', 'Manager of a Travelling Theatrical Co.', NULL),
(8, 1, 'Sillimon', 'his Stage Manager', NULL),
(9, 1, 'Timidon', 'Thespian', NULL),
(10, 1, 'Tipseion', 'Thespian', NULL),
(11, 1, 'Preposteros', 'Thespian', NULL),
(12, 1, 'Stupidas', 'Thespian', NULL),
(13, 1, 'Sparkeion', 'Thespian', NULL),
(14, 1, 'Nicemis', 'Thespian', NULL),
(15, 1, 'Pretteia', 'Thespian', NULL),
(16, 1, 'Daphne', 'Thespian', NULL),
(17, 1, 'Cymon', 'Thespian', NULL);
