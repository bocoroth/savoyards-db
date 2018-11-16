
-- --------------------------------------------------------

--
-- Table structure for table `actor_role`
--

DROP TABLE IF EXISTS `actor_role`;
CREATE TABLE `actor_role` (
  `ar_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
