
-- --------------------------------------------------------

--
-- Table structure for table `performance_dates`
--

CREATE TABLE `performance_dates` (
  `date_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL,
  `performance_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
