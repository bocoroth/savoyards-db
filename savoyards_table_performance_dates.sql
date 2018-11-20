
-- --------------------------------------------------------

--
-- Table structure for table `performance_dates`
--

DROP TABLE IF EXISTS `performance_dates`;
CREATE TABLE `performance_dates` (
  `date_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL,
  `performance_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `performance_dates`
--

INSERT INTO `performance_dates` (`date_id`, `performance_id`, `performance_date`) VALUES
(1, 1, '1979-11-08'),
(2, 1, '1979-11-10'),
(3, 1, '1979-11-11'),
(4, 1, '1979-11-13'),
(5, 1, '1979-11-14'),
(6, 1, '1979-11-17'),
(7, 1, '1979-11-18');
