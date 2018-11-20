
-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
CREATE TABLE `crew` (
  `crew_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
