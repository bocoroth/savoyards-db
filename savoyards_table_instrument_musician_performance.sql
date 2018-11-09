
-- --------------------------------------------------------

--
-- Table structure for table `instrument_musician_performance`
--

CREATE TABLE `instrument_musician_performance` (
  `imp_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `musician_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
