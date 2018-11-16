
-- --------------------------------------------------------

--
-- Table structure for table `crew_position_performance`
--

DROP TABLE IF EXISTS `crew_position_performance`;
CREATE TABLE `crew_position_performance` (
  `cpp_id` int(11) NOT NULL,
  `crew_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
