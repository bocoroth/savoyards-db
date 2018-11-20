
-- --------------------------------------------------------

--
-- Table structure for table `instrument_musician_performance`
--

DROP TABLE IF EXISTS `instrument_musician_performance`;
CREATE TABLE `instrument_musician_performance` (
  `imp_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `musician_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instrument_musician_performance`
--

INSERT INTO `instrument_musician_performance` (`imp_id`, `instrument_id`, `musician_id`, `performance_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 2, 10, 1),
(11, 2, 11, 1),
(12, 2, 12, 1),
(13, 3, 13, 1),
(14, 3, 14, 1),
(15, 3, 15, 1),
(16, 3, 16, 1),
(17, 3, 17, 1),
(18, 4, 18, 1),
(19, 5, 19, 1),
(20, 5, 20, 1),
(21, 5, 21, 1),
(22, 5, 22, 1),
(23, 7, 23, 1),
(24, 7, 24, 1),
(25, 8, 25, 1),
(26, 8, 26, 1),
(27, 8, 27, 1),
(28, 8, 28, 1),
(29, 9, 29, 1),
(30, 10, 30, 1),
(31, 10, 31, 1),
(32, 10, 32, 1),
(33, 11, 33, 1),
(34, 11, 34, 1),
(35, 11, 35, 1),
(36, 11, 36, 1),
(37, 12, 37, 1),
(38, 13, 38, 1);
