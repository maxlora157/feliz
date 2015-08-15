--
-- Estrutura da tabela `bg_arena`
--

CREATE TABLE IF NOT EXISTS `bg_arena` (
  `bg_id` int(5) unsigned NOT NULL DEFAULT '0',
  `group_id` int(5) unsigned NOT NULL DEFAULT '0',
  `arena_name` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `min_player` int(3) unsigned NOT NULL DEFAULT '0',
  `max_player` int(3) unsigned NOT NULL DEFAULT '0',
  `base_level` smallint(6) unsigned NOT NULL DEFAULT '0',
  `score_round` int(2) unsigned NOT NULL DEFAULT '0',
  `event_timer` int(2) unsigned NOT NULL DEFAULT '0',
  `reward` int(3) unsigned NOT NULL DEFAULT '0',
  `npc_start_event` varchar(46) NOT NULL DEFAULT '',
  `npc_newjoin_event` varchar(46) NOT NULL DEFAULT '',
  `npc_walkover_event` varchar(46) NOT NULL DEFAULT '',
  `npc_var_event` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `npc_var_event_lock` int(11) unsigned NOT NULL DEFAULT '0',
  `map_event` varchar(11) NOT NULL DEFAULT '',
  `team1_x` smallint(4) unsigned NOT NULL DEFAULT '0',
  `team1_y` smallint(4) unsigned NOT NULL DEFAULT '0',
  `team1_npc_quit_event` varchar(46) NOT NULL DEFAULT '',
  `team1_npc_die_event` varchar(46) NOT NULL DEFAULT '',
  `team2_x` smallint(4) unsigned NOT NULL DEFAULT '0',
  `team2_y` smallint(4) unsigned NOT NULL DEFAULT '0',
  `team2_npc_quit_event` varchar(46) NOT NULL DEFAULT '',
  `team2_npc_die_event` varchar(46) NOT NULL DEFAULT '',
  PRIMARY KEY (`bg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE = latin1_swedish_ci;

--
-- Extraindo dados da tabela `bg_arena`
--

INSERT INTO `bg_arena` (`bg_id`, `group_id`, `arena_name`, `min_player`, `max_player`, `base_level`, `score_round`, `event_timer`, `reward`, `npc_start_event`, `npc_newjoin_event`, `npc_walkover_event`, `npc_var_event`, `npc_var_event_lock`, `map_event`, `team1_x`, `team1_y`, `team1_npc_quit_event`, `team1_npc_die_event`, `team2_x`, `team2_y`, `team2_npc_quit_event`, `team2_npc_die_event`) VALUES
(1, 1, '1º Desfiladeiro de Tierra', 1, 4, 99, 2, 2, 0, 'BG_Tierra_01::OnReadyCheck', 'BG_Tierra_01::OnNewJoin', 'BG_Tierra_01::OnCheckWO', '$@TierraBG1', 2, 'bat_a01', 50, 374, 'BG_Tierra_01::OnGuillaumeQuit', 'BG_Tierra_01::OnGuillaumeDie', 42, 16, 'BG_Tierra_01::OnCroixQuit', 'BG_Tierra_01::OnCroixDie'),
(2, 1, '2º Desfiladeiro de Tierra', 1, 2, 99, 2, 0, 0, 'BG_Tierra_02::OnReadyCheck', 'BG_Tierra_02::OnNewJoin', 'BG_Tierra_02::OnCheckWO', '$@TierraBG2', 2, 'bat_a02', 50, 374, 'BG_Tierra_02::OnGuillaumeQuit', 'BG_Tierra_02::OnGuillaumeDie', 42, 16, 'BG_Tierra_02::OnCroixQuit', 'BG_Tierra_02::OnCroixDie'),
(4, 2, '2ª Arena de Flavius', 1, 2, 99, 1, 3, 1, 'BG_Flavius_02::OnReadyCheck', 'BG_Flavius_02::OnNewJoin', 'BG_Flavius_02::OnCheckWO', '$@FlaviusBG2', 2, 'bat_b02', 10, 290, 'BG_Flavius_02::OnGuillaumeQuit', 'BG_Flavius_02::OnGuillaumeDie', 390, 10, 'BG_Flavius_02::OnCroixQuit', 'BG_Flavius_02::OnCroixDie'),
(3, 2, '1ª Arena de Flavius', 1, 2, 99, 2, 10, 2, 'BG_Flavius_01::OnReadyCheck', 'BG_Flavius_01::OnNewJoin', 'BG_Flavius_01::OnCheckWO', '$@FlaviusBG1', 2, 'bat_b01', 10, 290, 'BG_Flavius_01::OnGuillaumeQuit', 'BG_Flavius_01::OnGuillaumeDie', 390, 10, 'BG_Flavius_01::OnCroixQuit', 'BG_Flavius_01::OnCroixDie'),
(5, 3, '1ª Arena de Krieger von Midgard', 1, 2, 99, 0, 10, 0, 'BG_KVM_01::OnReadyCheck', 'BG_KVM_01::OnNewJoin', 'BG_KVM_01::OnCheckWO', '$@KvM01BG', 3, 'bat_c01', 52, 129, 'BG_KVM_01::OnGuillaumeQuit', 'BG_KVM_01::OnGuillaumeDie', 147, 55, 'BG_KVM_01::OnCroixQuit', 'BG_KVM_01::OnCroixDie'),
(6, 3, '2ª Arena de Krieger von Midgard', 1, 2, 99, 0, 2, 0, 'BG_KVM_02::OnReadyCheck', 'BG_KVM_02::OnNewJoin', 'BG_KVM_02::OnCheckWO', '$@KvM02BG', 2, 'bat_c02', 52, 129, 'BG_KVM_02::OnGuillaumeQuit', 'BG_KVM_02::OnGuillaumeDie', 147, 55, 'BG_KVM_02::OnCroixQuit', 'BG_KVM_02::OnCroixDie'),
(7, 3, '3ª Arena de Krieger von Midgard', 1, 2, 99, 0, 2, 0, 'BG_KVM_03::OnReadyCheck', 'BG_KVM_03::OnNewJoin', 'BG_KVM_03::OnCheckWO', '$@KvM03BG', 2, 'bat_c03', 52, 129, 'BG_KVM_03::OnGuillaumeQuit', 'BG_KVM_03::OnGuillaumeDie', 147, 55, 'BG_KVM_03::OnCroixQuit', 'BG_KVM_03::OnCroixDie');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bg_config`
--

CREATE TABLE IF NOT EXISTS `bg_config` (
  `conf` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `value` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`conf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bg_config`
--

INSERT INTO `bg_config` (`conf`, `value`) VALUES
('MAX_ARENAS', 7),
('ANNOUNCE', 1),
('ATCMD', 0),
('RANKING_ROWS', 10),
('ARENA_MODE', 1),
('GROUP', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bg_groups`
--

CREATE TABLE IF NOT EXISTS `bg_groups` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `status` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `bg_groups`
--

INSERT INTO `bg_groups` (`group_id`, `name`, `status`) VALUES
(0, 'Desativado', 0),
(1, 'Desfiladeiro de Tierra', 1),
(2, 'Arena de Flavius', 1),
(3, 'Krieger von Midgard', 1),
(4, 'Valfreyja', 1),
(5, 'Kingdom', 1),
(6, 'Kingdom Segunda Edicao', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bg_queue`
--

CREATE TABLE IF NOT EXISTS `bg_queue` (
  `auto_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `bg_id` int(5) unsigned NOT NULL DEFAULT '0',
  `bg_team` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auto_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=297 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bg_queue_playing`
--

CREATE TABLE IF NOT EXISTS `bg_queue_playing` (
  `auto_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `bg_id` int(5) unsigned NOT NULL DEFAULT '0',
  `bg_team` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auto_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=289 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bg_ranking`
--

CREATE TABLE IF NOT EXISTS `bg_ranking` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `bg_id` int(5) unsigned NOT NULL DEFAULT '0',
  `wins` int(4) unsigned NOT NULL DEFAULT '0',
  `loss` int(4) NOT NULL DEFAULT '0',
  `ration` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`bg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bg_ranking`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bg_rewards`
--

CREATE TABLE IF NOT EXISTS `bg_rewards` (
  `bg_id` int(5) unsigned NOT NULL DEFAULT '0',
  `object` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(254) NOT NULL DEFAULT '0',
  `type` int(1) unsigned NOT NULL DEFAULT '0',
  `for` int(1) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bg_id`,`object`,`for`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bg_rewards`
--

INSERT INTO `bg_rewards` (`bg_id`, `object`, `value`, `type`, `for`, `desc`) VALUES
(1, '7828', '5', 0, 0, ''),
(1, '7828', '3', 0, 1, ''),
(1, '7828', '3', 0, 2, ''),
(2, '7828', '5', 0, 0, ''),
(2, '7828', '3', 0, 1, ''),
(2, '7828', '3', 0, 2, ''),
(3, '7829', '5', 0, 0, ''),
(3, '7829', '3', 0, 1, ''),
(3, '7829', '3', 0, 2, ''),
(4, '7829', '5', 0, 0, ''),
(4, '7829', '3', 0, 1, ''),
(4, '7829', '3', 0, 2, ''),
(5, 'kvm_point', '5', 1, 0, 'Pontos KvM'),
(5, 'kvm_point', '1', 1, 1, 'Pontos KvM'),
(5, 'kvm_point', '3', 1, 2, 'Pontos KvM'),
(6, 'kvm_point', '5', 1, 0, 'Pontos KvM'),
(6, 'kvm_point', '1', 1, 1, 'Pontos KvM'),
(6, 'kvm_point', '3', 1, 2, 'Pontos KvM'),
(7, 'kvm_point', '5', 1, 0, 'Pontos KvM'),
(7, 'kvm_point', '1', 1, 1, 'Pontos KvM'),
(7, 'kvm_point', '3', 1, 2, 'Pontos KvM');