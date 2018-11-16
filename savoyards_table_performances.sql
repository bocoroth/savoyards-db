
-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

DROP TABLE IF EXISTS `performances`;
CREATE TABLE `performances` (
  `performance_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `confirmed` bit(1) NOT NULL DEFAULT b'1',
  `year` year(4) NOT NULL,
  `season` int(11) NOT NULL,
  `opening_date` date NOT NULL,
  `venue` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `footnotes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performances`
--

INSERT INTO `performances` (`performance_id`, `show_id`, `active`, `confirmed`, `year`, `season`, `opening_date`, `venue`, `description`, `footnotes`) VALUES
(1, 6, b'1', b'1', 1979, 41, '1979-11-08', 'The Jewish Community Center', '', '');
