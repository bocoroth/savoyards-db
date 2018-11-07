
-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `performance_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `confirmed` bit(1) NOT NULL DEFAULT b'1',
  `year` year(4) NOT NULL,
  `opening_date` date NOT NULL,
  `venue` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
