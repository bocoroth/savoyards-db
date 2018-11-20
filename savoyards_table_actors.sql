
-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
