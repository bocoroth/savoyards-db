
--
-- Indexes for dumped tables
--

--
-- Indexes for table `actorrole_date`
--
ALTER TABLE `actorrole_date`
  ADD PRIMARY KEY (`ard_id`),
  ADD KEY `ix_ar_id` (`ar_id`),
  ADD KEY `ix_date_id` (`date_id`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `actor_role`
--
ALTER TABLE `actor_role`
  ADD PRIMARY KEY (`ar_id`),
  ADD KEY `ix_actor_id` (`actor_id`),
  ADD KEY `ix_role_id` (`role_id`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`crew_id`);

--
-- Indexes for table `crew_position_performance`
--
ALTER TABLE `crew_position_performance`
  ADD PRIMARY KEY (`cpp_id`),
  ADD KEY `ix_crew_id` (`crew_id`),
  ADD KEY `ix_position_id` (`position_id`),
  ADD KEY `ix_performance_id` (`performance_id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`instrument_id`);

--
-- Indexes for table `instrument_musician_performance`
--
ALTER TABLE `instrument_musician_performance`
  ADD PRIMARY KEY (`imp_id`),
  ADD KEY `ix_instrument_id` (`instrument_id`),
  ADD KEY `ix_musician_id` (`musician_id`),
  ADD KEY `ix_performance_id` (`performance_id`);

--
-- Indexes for table `musicians`
--
ALTER TABLE `musicians`
  ADD PRIMARY KEY (`musician_id`);

--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`performance_id`),
  ADD KEY `ix_show_id` (`show_id`);

--
-- Indexes for table `performance_dates`
--
ALTER TABLE `performance_dates`
  ADD PRIMARY KEY (`date_id`),
  ADD KEY `ix_performance_id` (`performance_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `ix_show_id` (`show_id`) USING BTREE;

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actorrole_date`
--
ALTER TABLE `actorrole_date`
  MODIFY `ard_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `actor_role`
--
ALTER TABLE `actor_role`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crew`
--
ALTER TABLE `crew`
  MODIFY `crew_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crew_position_performance`
--
ALTER TABLE `crew_position_performance`
  MODIFY `cpp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `instrument_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `instrument_musician_performance`
--
ALTER TABLE `instrument_musician_performance`
  MODIFY `imp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `musicians`
--
ALTER TABLE `musicians`
  MODIFY `musician_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `performances`
--
ALTER TABLE `performances`
  MODIFY `performance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `performance_dates`
--
ALTER TABLE `performance_dates`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `actorrole_date`
--
ALTER TABLE `actorrole_date`
  ADD CONSTRAINT `fk_ard_ar` FOREIGN KEY (`ar_id`) REFERENCES `actor_role` (`ar_id`),
  ADD CONSTRAINT `fk_ard_date` FOREIGN KEY (`date_id`) REFERENCES `performance_dates` (`date_id`);

--
-- Constraints for table `actor_role`
--
ALTER TABLE `actor_role`
  ADD CONSTRAINT `fk_ar_actor` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `fk_ar_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `crew_position_performance`
--
ALTER TABLE `crew_position_performance`
  ADD CONSTRAINT `fk_cpp_crew` FOREIGN KEY (`crew_id`) REFERENCES `crew` (`crew_id`),
  ADD CONSTRAINT `fk_cpp_performance` FOREIGN KEY (`performance_id`) REFERENCES `performances` (`performance_id`),
  ADD CONSTRAINT `fk_cpp_position` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`);

--
-- Constraints for table `instrument_musician_performance`
--
ALTER TABLE `instrument_musician_performance`
  ADD CONSTRAINT `fk_imp_instrument` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`instrument_id`),
  ADD CONSTRAINT `fk_imp_musician` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`instrument_id`),
  ADD CONSTRAINT `fk_imp_performance` FOREIGN KEY (`performance_id`) REFERENCES `performances` (`performance_id`);

--
-- Constraints for table `performances`
--
ALTER TABLE `performances`
  ADD CONSTRAINT `fk_performance_show_id` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `performance_dates`
--
ALTER TABLE `performance_dates`
  ADD CONSTRAINT `fk_performance_date` FOREIGN KEY (`performance_id`) REFERENCES `performances` (`performance_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `fk_role_show_id` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);
