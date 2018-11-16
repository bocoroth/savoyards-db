
-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
CREATE TABLE `instruments` (
  `instrument_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`instrument_id`, `name`) VALUES
(1, 'Violin'),
(2, 'Viola'),
(3, 'Cello'),
(4, 'Bass'),
(5, 'Flute'),
(6, 'Piccolo'),
(7, 'Oboe'),
(8, 'Clarinet'),
(9, 'Bassoon'),
(10, 'Horn'),
(11, 'Trumpet'),
(12, 'Trombone'),
(13, 'Percussion');
