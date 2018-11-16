
-- --------------------------------------------------------

--
-- Table structure for table `actorrole_date`
--

DROP TABLE IF EXISTS `actorrole_date`;
CREATE TABLE `actorrole_date` (
  `ard_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
