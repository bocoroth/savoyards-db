
-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vocal_part` enum('Soprano','Alto','Tenor','Baritone','Bass','SA','TB','Speaking','Silent','SATB','Mezzo-Soprano','Contralto','Countertenor','Treble','Coloratura Soprano') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `show_id`, `name`, `subtitle`, `vocal_part`) VALUES
(1, 1, 'Jupiter', 'Aged Deity', NULL),
(2, 1, 'Apollo', 'Aged Deity', NULL),
(3, 1, 'Mars', 'Aged Deity', NULL),
(4, 1, 'Diana', 'Aged Deity', NULL),
(5, 1, 'Venus', 'Aged Deity', NULL),
(6, 1, 'Mercury', 'Aged Deity', NULL),
(7, 1, 'Thespis', 'Manager of a Travelling Theatrical Co.', NULL),
(8, 1, 'Sillimon', 'his Stage Manager', NULL),
(9, 1, 'Timidon', 'Thespian', NULL),
(10, 1, 'Tipseion', 'Thespian', NULL),
(11, 1, 'Preposteros', 'Thespian', NULL),
(12, 1, 'Stupidas', 'Thespian', NULL),
(13, 1, 'Sparkeion', 'Thespian', NULL),
(14, 1, 'Nicemis', 'Thespian', NULL),
(15, 1, 'Pretteia', 'Thespian', NULL),
(16, 1, 'Daphne', 'Thespian', NULL),
(17, 1, 'Cymon', 'Thespian', NULL),
(18, 2, 'Angelina', 'The Plaintiff', 'Soprano'),
(19, 2, 'Edwin', 'The Defendant', 'Tenor'),
(20, 2, 'The Learned Judge', NULL, 'Baritone'),
(21, 2, 'Counsel for the Plaintiff', NULL, 'Baritone'),
(22, 2, 'Usher', NULL, 'Baritone'),
(23, 2, 'Foreman of the Jury', NULL, 'Bass'),
(24, 2, 'First Bridesmaid', NULL, 'Soprano'),
(25, 2, 'Associate', NULL, 'Silent'),
(26, 2, 'Bridesmaids', NULL, 'SA'),
(27, 2, 'Gentlemen of the Jury', NULL, 'TB');
