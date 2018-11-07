
-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `vocal_part` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
