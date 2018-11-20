
-- --------------------------------------------------------

--
-- Table structure for table `musicians`
--

DROP TABLE IF EXISTS `musicians`;
CREATE TABLE `musicians` (
  `musician_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `musicians`
--

INSERT INTO `musicians` (`musician_id`, `name`) VALUES
(1, 'Morton Blinn'),
(2, 'Evalyn Clough'),
(3, 'Lois Dietrich'),
(4, 'Helen Eberle'),
(5, 'Robert Eisner'),
(6, 'Mary Mechlin'),
(7, 'Nina Kay Menning'),
(8, 'Sister M. Serafina'),
(9, 'Fred Wachs'),
(10, 'Eve Cohen'),
(11, 'Harvey Meieran'),
(12, 'Phillip Wion'),
(13, 'Marjorie Eisner'),
(14, 'Ruth Ann Eisner'),
(15, 'Michael Golde'),
(16, 'Mary Ellen Pochapsky'),
(17, 'Diane Ritchey'),
(18, 'Martha Flaherty'),
(19, 'David Arons'),
(20, 'Sue Blinn'),
(21, 'John Coltman'),
(22, 'Susan Nelson'),
(23, 'Kathy Guthrie'),
(24, 'Susan Holmes'),
(25, 'Debra Daniel'),
(26, 'Ed Dzenis'),
(27, 'Eric Dzenis'),
(28, 'Malcolm Slifkin'),
(29, 'Bill Woodward'),
(30, 'James Oakes'),
(31, 'Carol Pochapsky'),
(32, 'Sandra Rasco'),
(33, 'Jeanne Humes'),
(34, 'Don Kortlandt'),
(35, 'Karl Kortlandt'),
(36, 'Joe Murphy'),
(37, 'Kenneth Juell'),
(38, 'Bill Panos');
