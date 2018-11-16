
-- --------------------------------------------------------

--
-- Structure for view `VIEW_instrument_musician_performance`
--
DROP TABLE IF EXISTS `VIEW_instrument_musician_performance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`matt`@`localhost` SQL SECURITY DEFINER VIEW `VIEW_instrument_musician_performance`  AS  select `IMP`.`imp_id` AS `imp_id`,`I`.`name` AS `instrument`,`M`.`name` AS `musician`,`S`.`name` AS `show`,`P`.`year` AS `year` from ((((`instrument_musician_performance` `IMP` join `performances` `P` on((`IMP`.`performance_id` = `P`.`performance_id`))) join `musicians` `M` on((`IMP`.`musician_id` = `M`.`musician_id`))) join `instruments` `I` on((`IMP`.`instrument_id` = `I`.`instrument_id`))) join `shows` `S` on((`P`.`show_id` = `S`.`show_id`))) ;
