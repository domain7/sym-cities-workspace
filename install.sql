
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `allow_author_change` enum('yes','no') character set utf8 collate utf8_unicode_ci NOT NULL default 'yes',
  `allow_multiple_selection` enum('yes','no') character set utf8 collate utf8_unicode_ci NOT NULL default 'no',
  `default_to_current_user` enum('yes','no') NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `default_state` enum('on','off') character set utf8 collate utf8_unicode_ci NOT NULL default 'on',
  `description` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (45, 55, 'off', 'Admission Charged');

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `pre_populate` enum('yes','no') character set utf8 collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_date` ***

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `validator` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (34, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (30, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (31, 4, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (32, 5, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (33, 8, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (300, 10, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (301, 11, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (302, 12, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (303, 16, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (304, 18, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (306, 20, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (307, 22, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (308, 23, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (309, 24, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (310, 26, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (311, 29, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (312, 31, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (313, 34, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (314, 40, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (315, 46, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (317, 48, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (321, 53, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (318, 59, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (319, 60, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (320, 61, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (305, 66, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (316, 73, NULL);

-- *** STRUCTURE: `tbl_fields_sectionlink` ***
DROP TABLE IF EXISTS `tbl_fields_sectionlink`;
CREATE TABLE `tbl_fields_sectionlink` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `section_association_list` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_sectionlink` ***
INSERT INTO `tbl_fields_sectionlink` (`id`, `field_id`, `section_association_list`) VALUES (8, 9, 1);
INSERT INTO `tbl_fields_sectionlink` (`id`, `field_id`, `section_association_list`) VALUES (86, 17, 2);
INSERT INTO `tbl_fields_sectionlink` (`id`, `field_id`, `section_association_list`) VALUES (79, 25, 4);
INSERT INTO `tbl_fields_sectionlink` (`id`, `field_id`, `section_association_list`) VALUES (83, 35, 5);
INSERT INTO `tbl_fields_sectionlink` (`id`, `field_id`, `section_association_list`) VALUES (78, 36, 5);
INSERT INTO `tbl_fields_sectionlink` (`id`, `field_id`, `section_association_list`) VALUES (69, 51, 7);

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `allow_multiple_selection` enum('yes','no') character set utf8 collate utf8_unicode_ci NOT NULL default 'no',
  `static_options` text character set utf8 collate utf8_unicode_ci,
  `dynamic_options` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (172, 14, 'no', 'None, Destinations, Dining, Travel, Entertainment, Events, Tours, Accommodations, Services, Other', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (175, 28, 'no', 'Province, State, Territory', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (179, 32, 'no', NULL, 26);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (180, 37, 'no', NULL, 18);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (173, 38, 'yes', NULL, 40);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (184, 43, 'yes', NULL, 31);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (185, 44, 'yes', NULL, 26);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (186, 45, 'yes', NULL, 20);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (187, 49, 'no', NULL, 46);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (176, 65, 'no', NULL, 18);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (177, 67, 'yes', NULL, 40);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (181, 68, 'yes', NULL, 40);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (182, 74, 'no', 'Yes, No', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (178, 75, 'no', 'Yes, No', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (174, 76, 'no', 'Yes, No', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (183, 78, 'no', 'Yes, No', NULL);

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `related_field_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (8, 9, 'no', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (91, 17, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (92, 25, 'no', 18, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (94, 35, 'no', 20, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (93, 36, 'no', 20, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (95, 51, 'no', 31, 20);

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `validator` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  `pre_populate_source` varchar(15) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_taglist` ***
INSERT INTO `tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (17, 58, NULL, 'existing');

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `formatter` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `size` int(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (18, 2, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (16, 6, 'markdown_extra_with_smartypants', 12);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (17, 7, 'markdown_extra_with_smartypants', 20);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (205, 13, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (207, 15, 'markdown_extra_with_smartypants', 20);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (208, 19, 'markdown_extra_with_smartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (210, 21, 'markdown_extra_with_smartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (214, 33, 'markdown_extra_with_smartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (216, 41, 'markdown_extra_with_smartypants', 25);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (217, 47, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (218, 50, 'markdown_extra_with_smartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (220, 52, 'markdown_extra_with_smartypants', 5);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (221, 56, 'markdown_extra_with_smartypants', 5);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (219, 57, 'markdown_extra_with_smartypants', 16);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (212, 27, 'markdown_extra_with_smartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (215, 69, 'markdown_extra_with_smartypants', 16);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (213, 70, 'markdown_extra_with_smartypants', 16);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (211, 71, 'markdown_extra_with_smartypants', 16);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (209, 72, 'markdown_extra_with_smartypants', 16);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (206, 77, 'markdown_extra_with_smartypants', 3);

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL default '0',
  `destination` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `validator` varchar(255) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_upload` ***

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 1, 'main', 'Main');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 2, 'secondary', 'Secondary');

-- *** STRUCTURE: `tbl_entries_data_10` ***
DROP TABLE IF EXISTS `tbl_entries_data_10`;
CREATE TABLE `tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_10` ***
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (631, 11, 'about', 'About');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (634, 12, 'contact', 'Contact');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (636, 14, 'privacy-policy', 'Privacy Policy');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (635, 349, 'world-destinations', 'World Destinations');

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (537, 11, 'about', 'about');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (540, 12, 'contacts', 'contacts');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (541, 14, 'privacy', 'privacy');

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (278, 11, 'about-us', 'About Us');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (281, 12, 'contacts', 'Contacts');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (283, 14, 'privacy-policy', 'Privacy Policy');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (282, 349, 'the-world-is-your-oyster', 'The world is your oyster');

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (631, 11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (634, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (636, 14, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (635, 349, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `handle`, `value`) VALUES (631, 11, 'none', 'None');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `handle`, `value`) VALUES (634, 12, 'none', 'None');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `handle`, `value`) VALUES (636, 14, 'none', 'None');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `handle`, `value`) VALUES (635, 349, 'destinations', 'Destinations');

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (631, 11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (636, 14, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (634, 12, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (635, 349, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `handle`, `value`) VALUES (351, 11, 1, 1);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `handle`, `value`) VALUES (354, 12, 2, 2);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `handle`, `value`) VALUES (356, 14, 3, 3);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `handle`, `value`) VALUES (355, 349, 1, 1);

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `relation_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=637 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (631, 11, 6);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (634, 12, 6);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (636, 14, 6);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (635, 349, 4);

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 46, 'af', 'AF');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 47, 'an', 'AN');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 48, 'as', 'AS');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 49, 'oc', 'OC');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 50, 'eu', 'EU');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 51, 'na', 'NA');
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 52, 'sa', 'SA');

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 46, 'Africa is the world’s second-largest and second most-populous continent, after Asia. At about 30,221,532 km² (11,668,545 sq mi) including adjacent islands, it covers 6% of the Earth’s total surface area, and 20.4% of the total land area. With more than 900 million people (as of 2005) in 61 territories, it accounts for about 14% of the world’s human population. The continent is surrounded by the Mediterranean Sea to the north, the Suez Canal and the Red Sea to the northeast, the Indian Ocean to the southeast, and the Atlantic Ocean to the west. There are 46 countries including Madagascar, and 53 including all the island groups.', '<p>Africa is the world’s second-largest and second most-populous continent, after Asia. At about 30,221,532 km² (11,668,545 sq mi) including adjacent islands, it covers 6% of the Earth’s total surface area, and 20.4% of the total land area. With more than 900 million people (as of 2005) in 61 territories, it accounts for about 14% of the world’s human population. The continent is surrounded by the Mediterranean Sea to the north, the Suez Canal and the Red Sea to the northeast, the Indian Ocean to the southeast, and the Atlantic Ocean to the west. There are 46 countries including Madagascar, and 53 including all the island groups.</p>\n');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 47, 'Antarctica is Earth’s southernmost continent, overlying the South Pole. It is situated in the southern hemisphere, almost entirely south of the Antarctic Circle, and is surrounded by the Southern Ocean. At 14.4 million km² (5.4 million sq mi), it is the fifth-largest continent in area after Asia, Africa, North America, and South America. Some 98% of Antarctica is covered by ice, which averages at least 1.6 kilometres (1.0 mi) in thickness.', '<p>Antarctica is Earth’s southernmost continent, overlying the South Pole. It is situated in the southern hemisphere, almost entirely south of the Antarctic Circle, and is surrounded by the Southern Ocean. At 14.4 million km² (5.4 million sq mi), it is the fifth-largest continent in area after Asia, Africa, North America, and South America. Some 98% of Antarctica is covered by ice, which averages at least 1.6 kilometres (1.0 mi) in thickness.</p>\n');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 48, 'Asia is the world’s largest and most populous continent. It covers 8.6% of the Earth’s total surface area (or 29.4% of its land area) and, with almost 4 billion people, it contains more than 60% of the world’s current human population. ', '<p>Asia is the world’s largest and most populous continent. It covers 8.6% of the Earth’s total surface area (or 29.4% of its land area) and, with almost 4 billion people, it contains more than 60% of the world’s current human population.</p>\n');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 49, 'Oceania (sometimes Oceanica) is a geographical, often geopolitical, region consisting of numerous lands --- mostly islands in the Pacific Ocean and vicinity. The term is often used in many languages to define one of the continents and is one of eight terrestrial ecozones.', '<p>Oceania (sometimes Oceanica) is a geographical, often geopolitical, region consisting of numerous lands &#8212; mostly islands in the Pacific Ocean and vicinity. The term is often used in many languages to define one of the continents and is one of eight terrestrial ecozones.</p>\n');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 50, 'Europe is one of the seven traditional continents of Earth. Europe is the westernmost peninsula of Eurasia, west of Asia. Europe is bounded to the north by the Arctic Ocean, to the west by the Atlantic Ocean, to the south by the Mediterranean Sea, to the southeast by the Caucasus Mountains, the Black Sea and the waterways connecting the Black Sea to the Mediterranean. To the east, Europe is generally divided from Asia by the water divide of the Ural Mountains, the Ural River, and by the Caspian Sea.', '<p>Europe is one of the seven traditional continents of Earth. Europe is the westernmost peninsula of Eurasia, west of Asia. Europe is bounded to the north by the Arctic Ocean, to the west by the Atlantic Ocean, to the south by the Mediterranean Sea, to the southeast by the Caucasus Mountains, the Black Sea and the waterways connecting the Black Sea to the Mediterranean. To the east, Europe is generally divided from Asia by the water divide of the Ural Mountains, the Ural River, and by the Caspian Sea.</p>\n');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 51, 'North America is a continent in the Earth’s northern hemisphere and (chiefly) western hemisphere. It is bordered on the north by the Arctic Ocean, on the east by the North Atlantic Ocean, on the southeast by the Caribbean Sea, and on the south and west by the North Pacific Ocean; South America lies to the southeast. ', '<p>North America is a continent in the Earth’s northern hemisphere and (chiefly) western hemisphere. It is bordered on the north by the Arctic Ocean, on the east by the North Atlantic Ocean, on the southeast by the Caribbean Sea, and on the south and west by the North Pacific Ocean; South America lies to the southeast.</p>\n');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 52, 'South America is a continent of the Americas, situated entirely in the Western Hemisphere and mostly in the Southern Hemisphere, with about a quarter in the Northern Hemisphere. It is bordered on the west by the Pacific Ocean and on the north and east by the Atlantic Ocean. North America and the Caribbean Sea lie to the northwest. The continent does not include Central America.', '<p>South America is a continent of the Americas, situated entirely in the Western Hemisphere and mostly in the Southern Hemisphere, with about a quarter in the Northern Hemisphere. It is bordered on the west by the Pacific Ocean and on the north and east by the Atlantic Ocean. North America and the Caribbean Sea lie to the northwest. The continent does not include Central America.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 1, 'Top menu bar: control the order and content of the main menu', '<p>Top menu bar: control the order and content of the main menu</p>\n');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 2, 'Links and other subpages', '<p>Links and other subpages</p>\n');

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=633 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (631, 53, 'ca', 'CA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (426, 54, 'us', 'US');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (425, 59, 'mx', 'MX');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (497, 62, 'hk', 'HK');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (620, 63, 'au', 'AU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (469, 64, 'de', 'DE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (449, 65, 'br', 'BR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (434, 66, 'aq', 'AQ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (462, 67, 'cn', 'CN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (474, 129, 'dz', 'DZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (433, 130, 'ao', 'AO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (446, 131, 'bj', 'BJ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (452, 132, 'bw', 'BW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (442, 133, 'bf', 'BF');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (461, 134, 'cm', 'CM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (466, 135, 'cv', 'CV');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (456, 136, 'cf', 'CF');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (591, 137, 'td', 'TD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (516, 138, 'km', 'KM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (457, 139, 'cg', 'CG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (455, 140, 'cd', 'CD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (470, 141, 'dj', 'DJ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (477, 142, 'eg', 'EG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (492, 143, 'gq', 'GQ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (478, 144, 'er', 'ER');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (480, 145, 'et', 'ET');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (485, 146, 'ga', 'GA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (490, 147, 'gm', 'GM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (489, 148, 'gh', 'GH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (491, 149, 'gn', 'GN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (495, 150, 'gw', 'GW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (459, 151, 'ci', 'CI');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (512, 152, 'ke', 'KE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (528, 153, 'ls', 'LS');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (527, 154, 'lr', 'LR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (532, 155, 'ly', 'LY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (537, 156, 'mg', 'MG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (547, 157, 'mw', 'MW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (540, 158, 'ml', 'ML');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (543, 159, 'mr', 'MR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (545, 160, 'mu', 'MU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (533, 161, 'ma', 'MA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (549, 162, 'mz', 'MZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (550, 163, 'na', 'NA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (551, 164, 'ne', 'NE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (552, 165, 'ng', 'NG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (573, 166, 'rw', 'RW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (587, 167, 'st', 'ST');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (584, 168, 'sn', 'SN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (576, 169, 'sc', 'SC');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (582, 170, 'sl', 'SL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (585, 171, 'so', 'SO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (614, 172, 'za', 'ZA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (577, 173, 'sd', 'SD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (590, 174, 'sz', 'SZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (602, 175, 'tz', 'TZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (592, 176, 'tg', 'TG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (597, 177, 'tn', 'TN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (604, 178, 'ug', 'UG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (615, 179, 'zm', 'ZM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (616, 180, 'zw', 'ZW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (429, 181, 'af', 'AF');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (444, 182, 'bh', 'BH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (440, 183, 'bd', 'BD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (451, 184, 'bt', 'BT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (447, 185, 'bn', 'BN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (541, 186, 'mm', 'MM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (514, 187, 'kh', 'KH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (595, 188, 'tl', 'TL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (504, 189, 'in', 'IN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (506, 190, 'ir', 'IR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (505, 191, 'iq', 'IQ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (503, 192, 'il', 'IL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (511, 193, 'jp', 'JP');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (510, 194, 'jo', 'JO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (521, 195, 'kz', 'KZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (518, 196, 'kp', 'KP');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (519, 197, 'kr', 'KR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (520, 198, 'kw', 'KW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (513, 199, 'kg', 'KG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (522, 200, 'la', 'LA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (523, 201, 'lb', 'LB');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (548, 202, 'my', 'MY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (546, 203, 'mv', 'MV');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (542, 204, 'mn', 'MN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (556, 205, 'np', 'NP');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (559, 206, 'om', 'OM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (564, 207, 'pk', 'PK');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (563, 208, 'ph', 'PH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (569, 209, 'qa', 'QA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (572, 210, 'ru', 'RU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (574, 211, 'sa', 'SA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (579, 212, 'sg', 'SG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (526, 213, 'lk', 'LK');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (589, 214, 'sy', 'SY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (594, 215, 'tj', 'TJ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (593, 216, 'th', 'TH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (599, 217, 'tr', 'TR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (596, 218, 'tm', 'TM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (428, 219, 'ae', 'AE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (606, 220, 'uz', 'UZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (610, 221, 'vn', 'VN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (613, 222, 'ye', 'YE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (431, 223, 'al', 'AL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (427, 224, 'ad', 'AD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (432, 225, 'am', 'AM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (436, 226, 'at', 'AT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (437, 227, 'az', 'AZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (453, 228, 'by', 'BY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (441, 229, 'be', 'BE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (438, 230, 'ba', 'BA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (443, 231, 'bg', 'BG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (499, 232, 'hr', 'HR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (467, 233, 'cy', 'CY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (468, 234, 'cz', 'CZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (471, 235, 'dk', 'DK');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (476, 236, 'ee', 'EE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (481, 237, 'fi', 'FI');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (484, 238, 'fr', 'FR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (488, 239, 'ge', 'GE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (493, 240, 'gr', 'GR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (501, 241, 'hu', 'HU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (507, 242, 'is', 'IS');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (502, 243, 'ie', 'IE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (508, 244, 'it', 'IT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (531, 245, 'lv', 'LV');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (525, 246, 'li', 'LI');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (530, 247, 'lu', 'LU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (539, 248, 'mk', 'MK');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (544, 249, 'mt', 'MT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (535, 250, 'md', 'MD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (534, 251, 'mc', 'MC');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (536, 252, 'me', 'ME');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (554, 253, 'nl', 'NL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (555, 254, 'no', 'NO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (565, 255, 'pl', 'PL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (566, 256, 'pt', 'PT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (570, 257, 'ro', 'RO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (583, 258, 'sm', 'SM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (571, 259, 'rs', 'RS');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (581, 260, 'sk', 'SK');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (580, 261, 'si', 'SI');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (479, 262, 'es', 'ES');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (578, 263, 'se', 'SE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (458, 264, 'ch', 'CH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (603, 265, 'ua', 'UA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (632, 266, 'gb', 'GB');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (607, 267, 'va', 'VA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (450, 268, 'bs', 'BS');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (430, 269, 'ag', 'AG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (439, 270, 'bb', 'BB');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (454, 271, 'bz', 'BZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (464, 272, 'cr', 'CR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (465, 273, 'cu', 'CU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (473, 274, 'do', 'DO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (588, 275, 'sv', 'SV');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (487, 276, 'gd', 'GD');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (494, 277, 'gt', 'GT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (500, 278, 'ht', 'HT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (498, 279, 'hn', 'HN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (509, 280, 'jm', 'JM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (553, 281, 'ni', 'NI');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (560, 282, 'pa', 'PA');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (517, 283, 'kn', 'KN');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (524, 284, 'lc', 'LC');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (608, 285, 'vc', 'VC');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (600, 286, 'tt', 'TT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (435, 287, 'ar', 'AR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (448, 288, 'bo', 'BO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (460, 289, 'cl', 'CL');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (463, 290, 'co', 'CO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (475, 291, 'ec', 'EC');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (496, 292, 'gy', 'GY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (568, 293, 'py', 'PY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (561, 294, 'pe', 'PE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (586, 295, 'sr', 'SR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (605, 296, 'uy', 'UY');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (609, 297, 've', 'VE');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (482, 299, 'fj', 'FJ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (515, 300, 'ki', 'KI');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (538, 301, 'mh', 'MH');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (483, 302, 'fm', 'FM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (557, 303, 'nr', 'NR');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (629, 304, 'nz', 'NZ');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (567, 305, 'pw', 'PW');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (562, 306, 'pg', 'PG');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (612, 307, 'ws', 'WS');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (575, 308, 'sb', 'SB');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (598, 309, 'to', 'TO');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (601, 310, 'tv', 'TV');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (611, 311, 'vu', 'VU');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (472, 312, 'dm', 'DM');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (529, 313, 'lt', 'LT');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `handle`, `value`) VALUES (445, 316, 'bi', 'BI');

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=633 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (631, 53, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (426, 54, 'The United States of America is a federal constitutional republic comprising fifty states and a federal district. The country is situated mostly in central North America, where its forty-eight contiguous states and Washington, D.C., the capital district, lie between the Pacific and Atlantic Oceans, bordered by Canada to the north and Mexico to the south. The state of Alaska is in the northwest of the continent, with Canada to its east and Russia to the west across the Bering Strait, and the state of Hawaii is in the mid-Pacific. The United States also possesses several territories, or insular areas, scattered around the Caribbean and Pacific.\r\n\r\nAt 3.79 million square miles (9.83 million km²) and with over 300 million people, the United States is the third or fourth largest country by total area, and third largest by land area and by population. The United States is one of the world’s most ethnically diverse nations, the product of large-scale immigration from many countries. The U.S. economy is the largest national economy in the world, with a nominal 2006 gross domestic product (GDP) of more than US$13 trillion (over 19% of the world total based on purchasing power parity).\r\n\r\nThe nation was founded by thirteen colonies of Great Britain located along the Atlantic seaboard. Proclaiming themselves “states,” they issued the Declaration of Independence on July 4, 1776. The rebellious states defeated Great Britain in the American Revolutionary War, the first successful colonial war of independence. A federal convention adopted the current United States Constitution on September 17, 1787; its ratification the following year made the states part of a single republic. The Bill of Rights, comprising ten constitutional amendments, was ratified in 1791.\r\n\r\nIn the nineteenth century, the United States acquired land from France, Spain, Great Britain, Mexico, and Russia, and annexed the Republic of Texas and the Republic of Hawaii. Disputes between the agrarian South and industrial North over states’ rights and the expansion of the institution of slavery provoked the American Civil War of the 1860s. The North’s victory prevented a permanent split of the country and led to the end of slavery in the United States. The Spanish-American War and World War I confirmed the nation’s status as a military power. In 1945, the United States emerged from World War II as the first country with nuclear weapons, a permanent member of the United Nations Security Council, and a founding member of NATO. The United States entered the post–Cold War era as the only remaining superpower and a dominant economic, political, and cultural force in the world.\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/USA))', '<p>The United States of America is a federal constitutional republic comprising fifty states and a federal district. The country is situated mostly in central North America, where its forty-eight contiguous states and Washington, D.C., the capital district, lie between the Pacific and Atlantic Oceans, bordered by Canada to the north and Mexico to the south. The state of Alaska is in the northwest of the continent, with Canada to its east and Russia to the west across the Bering Strait, and the state of Hawaii is in the mid-Pacific. The United States also possesses several territories, or insular areas, scattered around the Caribbean and Pacific.</p>\n\n<p>At 3.79 million square miles (9.83 million km²) and with over 300 million people, the United States is the third or fourth largest country by total area, and third largest by land area and by population. The United States is one of the world’s most ethnically diverse nations, the product of large-scale immigration from many countries. The U.S. economy is the largest national economy in the world, with a nominal 2006 gross domestic product (GDP) of more than US$13 trillion (over 19% of the world total based on purchasing power parity).</p>\n\n<p>The nation was founded by thirteen colonies of Great Britain located along the Atlantic seaboard. Proclaiming themselves “states,” they issued the Declaration of Independence on July 4, 1776. The rebellious states defeated Great Britain in the American Revolutionary War, the first successful colonial war of independence. A federal convention adopted the current United States Constitution on September 17, 1787; its ratification the following year made the states part of a single republic. The Bill of Rights, comprising ten constitutional amendments, was ratified in 1791.</p>\n\n<p>In the nineteenth century, the United States acquired land from France, Spain, Great Britain, Mexico, and Russia, and annexed the Republic of Texas and the Republic of Hawaii. Disputes between the agrarian South and industrial North over states’ rights and the expansion of the institution of slavery provoked the American Civil War of the 1860s. The North’s victory prevented a permanent split of the country and led to the end of slavery in the United States. The Spanish-American War and World War I confirmed the nation’s status as a military power. In 1945, the United States emerged from World War II as the first country with nuclear weapons, a permanent member of the United Nations Security Council, and a founding member of NATO. The United States entered the post–Cold War era as the only remaining superpower and a dominant economic, political, and cultural force in the world.</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/USA\">Wikipedia</a>)</p>\n');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (425, 59, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (497, 62, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (620, 63, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (469, 64, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (449, 65, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (434, 66, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (462, 67, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (474, 129, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (433, 130, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (446, 131, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (452, 132, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (442, 133, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (461, 134, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (466, 135, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (456, 136, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (591, 137, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (516, 138, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (457, 139, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (455, 140, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (470, 141, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (477, 142, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (492, 143, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (478, 144, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (480, 145, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (485, 146, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (490, 147, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (489, 148, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (491, 149, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (495, 150, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (459, 151, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (512, 152, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (528, 153, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (527, 154, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (532, 155, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (537, 156, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (547, 157, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (540, 158, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (543, 159, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (545, 160, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (533, 161, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (549, 162, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (550, 163, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (551, 164, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (552, 165, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (573, 166, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (587, 167, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (584, 168, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (576, 169, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (582, 170, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (585, 171, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (614, 172, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (577, 173, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (590, 174, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (602, 175, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (592, 176, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (597, 177, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (604, 178, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (615, 179, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (616, 180, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (429, 181, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (444, 182, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (440, 183, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (451, 184, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (447, 185, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (541, 186, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (514, 187, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (595, 188, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (504, 189, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (506, 190, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (505, 191, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (503, 192, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (511, 193, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (510, 194, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (521, 195, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (518, 196, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (519, 197, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (520, 198, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (513, 199, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (522, 200, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (523, 201, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (548, 202, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (546, 203, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (542, 204, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (556, 205, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (559, 206, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (564, 207, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (563, 208, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (569, 209, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (572, 210, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (574, 211, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (579, 212, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (526, 213, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (589, 214, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (594, 215, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (593, 216, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (599, 217, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (596, 218, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (428, 219, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (606, 220, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (610, 221, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (613, 222, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (431, 223, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (427, 224, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (432, 225, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (436, 226, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (437, 227, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (453, 228, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (441, 229, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (438, 230, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (443, 231, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (499, 232, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (467, 233, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (468, 234, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (471, 235, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (476, 236, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (481, 237, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (484, 238, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (488, 239, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (493, 240, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (501, 241, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (507, 242, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (502, 243, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (508, 244, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (531, 245, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (525, 246, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (530, 247, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (539, 248, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (544, 249, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (535, 250, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (534, 251, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (536, 252, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (554, 253, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (555, 254, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (565, 255, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (566, 256, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (570, 257, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (583, 258, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (571, 259, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (581, 260, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (580, 261, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (479, 262, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (578, 263, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (458, 264, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (603, 265, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (632, 266, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (607, 267, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (450, 268, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (430, 269, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (439, 270, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (454, 271, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (464, 272, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (465, 273, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (473, 274, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (588, 275, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (487, 276, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (494, 277, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (500, 278, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (498, 279, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (509, 280, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (553, 281, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (560, 282, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (517, 283, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (524, 284, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (608, 285, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (600, 286, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (435, 287, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (448, 288, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (460, 289, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (463, 290, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (475, 291, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (496, 292, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (568, 293, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (561, 294, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (586, 295, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (605, 296, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (609, 297, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (482, 299, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (515, 300, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (538, 301, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (483, 302, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (557, 303, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (567, 305, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (562, 306, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (612, 307, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (575, 308, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (598, 309, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (601, 310, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (611, 311, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (472, 312, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (529, 313, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (445, 316, NULL, NULL);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (629, 304, 'New Zealand comes with a reputation as a unique land packed with magnificent, raw scenery : craggy coastlines, sweeping beaches, primeval forests, snow-capped alpine mountains, bubbling volcanic pools, fast-flowing rivers and glacier-fed lakes, all beneath a brilliant blue sky. Even Kiwis themselves - named after the endearing, if decidedly odd, flightless bird that has become the national emblem - seem to be filled with astonishment at the stupendous vistas of what they like to think of as “Godzone” (God’s own country). All of this provides a canvas for boundless diversions , from moody strolls along windswept beaches and multi-day tramps over alpine passes to the adrenalin-charged adventure activities of bungy jumping and whitewater rafting; in fact, some visitors take on New Zealand as a kind of large-scale assault course, aiming to tackle as many adventures as possible in the time available. The one-time albatross of isolation - even Australia is over a thousand kilometres away - has become a boon, bolstering New Zealand’s clean, green  image, which is, in truth, more an accident of geography than the result of past government policy.', '<p>New Zealand comes with a reputation as a unique land packed with magnificent, raw scenery : craggy coastlines, sweeping beaches, primeval forests, snow-capped alpine mountains, bubbling volcanic pools, fast-flowing rivers and glacier-fed lakes, all beneath a brilliant blue sky. Even Kiwis themselves - named after the endearing, if decidedly odd, flightless bird that has become the national emblem - seem to be filled with astonishment at the stupendous vistas of what they like to think of as “Godzone” (God’s own country). All of this provides a canvas for boundless diversions , from moody strolls along windswept beaches and multi-day tramps over alpine passes to the adrenalin-charged adventure activities of bungy jumping and whitewater rafting; in fact, some visitors take on New Zealand as a kind of large-scale assault course, aiming to tackle as many adventures as possible in the time available. The one-time albatross of isolation - even Australia is over a thousand kilometres away - has become a boon, bolstering New Zealand’s clean, green  image, which is, in truth, more an accident of geography than the result of past government policy.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_22` ***
DROP TABLE IF EXISTS `tbl_entries_data_22`;
CREATE TABLE `tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=628 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (626, 53, 'canada', 'Canada');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (420, 59, 'mexico', 'Mexico');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (429, 66, 'antarctica', 'Antarctica');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (444, 65, 'brazil', 'Brazil');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (464, 64, 'germany', 'Germany');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (615, 63, 'australia', 'Australia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (492, 62, 'hong-kong', 'Hong Kong');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (457, 67, 'china', 'China');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (469, 129, 'algeria', 'Algeria');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (441, 131, 'benin', 'Benin');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (447, 132, 'botswana', 'Botswana');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (456, 134, 'cameroon', 'Cameroon');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (461, 135, 'cape-verde', 'Cape Verde');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (451, 136, 'central-african-republic', 'Central African Republic');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (586, 137, 'chad', 'Chad');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (511, 138, 'comoros', 'Comoros');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (452, 139, 'congo', 'Congo');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (450, 140, 'congo-the-democratic-republic-of-the', 'Congo, The Democratic Republic of the');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (465, 141, 'djibouti', 'Djibouti');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (472, 142, 'egypt', 'Egypt');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (487, 143, 'equatorial-guinea', 'Equatorial Guinea');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (473, 144, 'eritrea', 'Eritrea');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (475, 145, 'ethiopia', 'Ethiopia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (480, 146, 'gabon', 'Gabon');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (485, 147, 'gambia', 'Gambia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (484, 148, 'ghana', 'Ghana');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (486, 149, 'guinea', 'Guinea');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (490, 150, 'guinea-bissau', 'Guinea-Bissau');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (454, 151, 'cote-divoire', 'Côte d\'Ivoire');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (507, 152, 'kenya', 'Kenya');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (523, 153, 'lesotho', 'Lesotho');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (522, 154, 'liberia', 'Liberia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (527, 155, 'libyan-arab-jamahiriya', 'Libyan Arab Jamahiriya');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (532, 156, 'madagascar', 'Madagascar');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (542, 157, 'malawi', 'Malawi');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (535, 158, 'mali', 'Mali');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (538, 159, 'mauritania', 'Mauritania');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (540, 160, 'mauritius', 'Mauritius');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (528, 161, 'morocco', 'Morocco');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (544, 162, 'mozambique', 'Mozambique');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (545, 163, 'namibia', 'Namibia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (546, 164, 'niger', 'Niger');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (547, 165, 'nigeria', 'Nigeria');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (568, 166, 'rwanda', 'Rwanda');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (582, 167, 'sao-tome-and-principe', 'Sao Tome and Principe');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (579, 168, 'senegal', 'Senegal');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (571, 169, 'seychelles', 'Seychelles');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (577, 170, 'sierra-leone', 'Sierra Leone');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (580, 171, 'somalia', 'Somalia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (609, 172, 'south-africa', 'South Africa');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (572, 173, 'sudan', 'Sudan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (585, 174, 'swaziland', 'Swaziland');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (597, 175, 'tanzania-united-republic-of', 'Tanzania, United Republic of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (587, 176, 'togo', 'Togo');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (592, 177, 'tunisia', 'Tunisia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (599, 178, 'uganda', 'Uganda');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (610, 179, 'zambia', 'Zambia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (611, 180, 'zimbabwe', 'Zimbabwe');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (439, 182, 'bahrain', 'Bahrain');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (435, 183, 'bangladesh', 'Bangladesh');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (446, 184, 'bhutan', 'Bhutan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (442, 185, 'brunei-darussalam', 'Brunei Darussalam');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (536, 186, 'myanmar', 'Myanmar');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (509, 187, 'cambodia', 'Cambodia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (590, 188, 'timor-leste', 'Timor-Leste');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (499, 189, 'india', 'India');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (501, 190, 'iran-islamic-republic-of', 'Iran, Islamic Republic Of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (500, 191, 'iraq', 'Iraq');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (498, 192, 'israel', 'Israel');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (506, 193, 'japan', 'Japan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (505, 194, 'jordan', 'Jordan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (516, 195, 'kazakhstan', 'Kazakhstan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (513, 196, 'korea-democratic-peoples-republic-of', 'Korea, Democratic People\'s Republic Of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (514, 197, 'korea-republic-of', 'Korea, Republic Of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (515, 198, 'kuwait', 'Kuwait');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (508, 199, 'kyrgyzstan', 'Kyrgyzstan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (517, 200, 'lao-peoples-democratic-republic', 'Lao People\'s Democratic Republic');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (518, 201, 'lebanon', 'Lebanon');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (543, 202, 'malaysia', 'Malaysia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (541, 203, 'maldives', 'Maldives');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (537, 204, 'mongolia', 'Mongolia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (551, 205, 'nepal', 'Nepal');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (554, 206, 'oman', 'Oman');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (559, 207, 'pakistan', 'Pakistan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (558, 208, 'philippines', 'Philippines');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (564, 209, 'qatar', 'Qatar');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (567, 210, 'russian-federation', 'Russian Federation');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (569, 211, 'saudi-arabia', 'Saudi Arabia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (574, 212, 'singapore', 'Singapore');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (521, 213, 'sri-lanka', 'Sri Lanka');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (584, 214, 'syrian-arab-republic', 'Syrian Arab Republic');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (589, 215, 'tajikistan', 'Tajikistan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (588, 216, 'thailand', 'Thailand');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (594, 217, 'turkey', 'Turkey');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (591, 218, 'turkmenistan', 'Turkmenistan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (423, 219, 'united-arab-emirates', 'United Arab Emirates');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (601, 220, 'uzbekistan', 'Uzbekistan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (605, 221, 'viet-nam', 'Viet Nam');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (608, 222, 'yemen', 'Yemen');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (426, 223, 'albania', 'Albania');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (422, 224, 'andorra', 'Andorra');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (427, 225, 'armenia', 'Armenia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (431, 226, 'austria', 'Austria');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (432, 227, 'azerbaijan', 'Azerbaijan');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (448, 228, 'belarus', 'Belarus');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (436, 229, 'belgium', 'Belgium');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (433, 230, 'bosnia-and-herzegovina', 'Bosnia and Herzegovina');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (438, 231, 'bulgaria', 'Bulgaria');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (494, 232, 'croatia', 'Croatia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (462, 233, 'cyprus', 'Cyprus');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (463, 234, 'czech-republic', 'Czech Republic');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (466, 235, 'denmark', 'Denmark');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (471, 236, 'estonia', 'Estonia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (476, 237, 'finland', 'Finland');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (479, 238, 'france', 'France');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (483, 239, 'georgia', 'Georgia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (488, 240, 'greece', 'Greece');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (496, 241, 'hungary', 'Hungary');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (502, 242, 'iceland', 'Iceland');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (497, 243, 'ireland', 'Ireland');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (503, 244, 'italy', 'Italy');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (526, 245, 'latvia', 'Latvia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (520, 246, 'liechtenstein', 'Liechtenstein');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (525, 247, 'luxembourg', 'Luxembourg');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (534, 248, 'macedonia-the-former-yugoslav-republic-of', 'Macedonia, The Former Yugoslav Republic of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (539, 249, 'malta', 'Malta');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (530, 250, 'moldova-republic-of', 'Moldova, Republic Of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (529, 251, 'monaco', 'Monaco');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (531, 252, 'montenegro', 'Montenegro');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (549, 253, 'netherlands', 'Netherlands');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (550, 254, 'norway', 'Norway');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (560, 255, 'poland', 'Poland');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (561, 256, 'portugal', 'Portugal');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (565, 257, 'romania', 'Romania');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (578, 258, 'san-marino', 'San Marino');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (566, 259, 'serbia', 'Serbia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (576, 260, 'slovakia', 'Slovakia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (575, 261, 'slovenia', 'Slovenia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (474, 262, 'spain', 'Spain');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (573, 263, 'sweden', 'Sweden');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (453, 264, 'switzerland', 'Switzerland');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (598, 265, 'ukraine', 'Ukraine');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (627, 266, 'united-kingdom', 'United Kingdom');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (602, 267, 'holy-see-vatican-city-state', 'Holy See (Vatican City State)');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (445, 268, 'bahamas', 'Bahamas');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (425, 269, 'antigua-and-barbuda', 'Antigua and Barbuda');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (434, 270, 'barbados', 'Barbados');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (449, 271, 'belize', 'Belize');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (459, 272, 'costa-rica', 'Costa Rica');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (460, 273, 'cuba', 'Cuba');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (468, 274, 'dominican-republic', 'Dominican Republic');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (583, 275, 'el-salvador', 'El Salvador');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (482, 276, 'grenada', 'Grenada');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (489, 277, 'guatemala', 'Guatemala');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (495, 278, 'haiti', 'Haiti');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (493, 279, 'honduras', 'Honduras');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (504, 280, 'jamaica', 'Jamaica');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (548, 281, 'nicaragua', 'Nicaragua');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (555, 282, 'panama', 'Panama');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (512, 283, 'saint-kitts-and-nevis', 'Saint Kitts and Nevis');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (519, 284, 'saint-lucia', 'Saint Lucia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (603, 285, 'saint-vincent-and-the-grenadines', 'Saint Vincent and the Grenadines');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (595, 286, 'trinidad-and-tobago', 'Trinidad and Tobago');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (430, 287, 'argentina', 'Argentina');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (443, 288, 'bolivia', 'Bolivia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (455, 289, 'chile', 'Chile');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (458, 290, 'colombia', 'Colombia');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (470, 291, 'ecuador', 'Ecuador');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (491, 292, 'guyana', 'Guyana');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (563, 293, 'paraguay', 'Paraguay');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (556, 294, 'peru', 'Peru');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (581, 295, 'suriname', 'Suriname');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (600, 296, 'uruguay', 'Uruguay');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (604, 297, 'venezuela', 'Venezuela');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (477, 299, 'fiji', 'Fiji');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (510, 300, 'kiribati', 'Kiribati');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (533, 301, 'marshall-islands', 'Marshall Islands');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (478, 302, 'micronesia-federated-states-of', 'Micronesia, Federated States of');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (552, 303, 'nauru', 'Nauru');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (624, 304, 'new-zealand', 'New Zealand');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (562, 305, 'palau', 'Palau');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (557, 306, 'papua-new-guinea', 'Papua New Guinea');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (607, 307, 'samoa', 'Samoa');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (570, 308, 'solomon-islands', 'Solomon Islands');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (593, 309, 'tonga', 'Tonga');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (596, 310, 'tuvalu', 'Tuvalu');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (606, 311, 'vanuatu', 'Vanuatu');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (467, 312, 'dominica', 'Dominica');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (524, 313, 'lithuania', 'Lithuania');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (428, 130, 'angola', 'Angola');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (437, 133, 'burkina-faso', 'Burkina Faso');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (440, 316, 'burundi', 'Burundi');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (421, 54, 'united-states', 'United States');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `handle`, `value`) VALUES (424, 181, 'afghanistan', 'Afghanistan');

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 54, 'usa', 'USA');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 53, 'canadian-dollar-cad', 'Canadian Dollar (CAD)');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 54, 'us-dollar-usd', 'US Dollar (USD)');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 59, 'mexican-peso-mxn', 'Mexican Peso (MXN)');

-- *** STRUCTURE: `tbl_entries_data_25` ***
DROP TABLE IF EXISTS `tbl_entries_data_25`;
CREATE TABLE `tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `relation_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=633 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (631, 53, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (426, 54, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (425, 59, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (497, 62, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (620, 63, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (469, 64, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (449, 65, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (434, 66, 47);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (462, 67, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (474, 129, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (433, 130, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (446, 131, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (452, 132, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (442, 133, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (461, 134, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (466, 135, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (456, 136, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (591, 137, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (516, 138, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (457, 139, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (455, 140, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (470, 141, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (477, 142, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (492, 143, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (478, 144, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (480, 145, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (485, 146, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (490, 147, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (489, 148, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (491, 149, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (495, 150, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (459, 151, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (512, 152, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (528, 153, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (527, 154, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (532, 155, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (537, 156, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (547, 157, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (540, 158, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (543, 159, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (545, 160, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (533, 161, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (549, 162, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (550, 163, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (551, 164, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (552, 165, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (573, 166, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (587, 167, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (584, 168, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (576, 169, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (582, 170, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (585, 171, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (614, 172, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (577, 173, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (590, 174, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (602, 175, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (592, 176, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (597, 177, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (604, 178, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (615, 179, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (616, 180, 46);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (429, 181, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (444, 182, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (440, 183, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (451, 184, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (447, 185, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (541, 186, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (514, 187, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (595, 188, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (504, 189, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (506, 190, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (505, 191, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (503, 192, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (511, 193, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (510, 194, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (521, 195, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (518, 196, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (519, 197, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (520, 198, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (513, 199, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (522, 200, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (523, 201, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (548, 202, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (546, 203, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (542, 204, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (556, 205, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (559, 206, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (564, 207, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (563, 208, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (569, 209, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (572, 210, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (574, 211, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (579, 212, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (526, 213, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (589, 214, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (594, 215, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (593, 216, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (599, 217, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (596, 218, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (428, 219, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (606, 220, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (610, 221, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (613, 222, 48);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (431, 223, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (427, 224, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (432, 225, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (436, 226, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (437, 227, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (453, 228, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (441, 229, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (438, 230, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (443, 231, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (499, 232, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (467, 233, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (468, 234, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (471, 235, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (476, 236, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (481, 237, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (484, 238, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (488, 239, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (493, 240, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (501, 241, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (507, 242, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (502, 243, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (508, 244, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (531, 245, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (525, 246, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (530, 247, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (539, 248, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (544, 249, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (535, 250, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (534, 251, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (536, 252, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (554, 253, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (555, 254, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (565, 255, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (566, 256, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (570, 257, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (583, 258, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (571, 259, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (581, 260, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (580, 261, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (479, 262, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (578, 263, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (458, 264, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (603, 265, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (632, 266, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (607, 267, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (450, 268, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (430, 269, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (439, 270, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (454, 271, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (464, 272, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (465, 273, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (473, 274, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (588, 275, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (487, 276, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (494, 277, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (500, 278, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (498, 279, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (509, 280, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (553, 281, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (560, 282, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (517, 283, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (524, 284, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (608, 285, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (600, 286, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (435, 287, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (448, 288, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (460, 289, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (463, 290, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (475, 291, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (496, 292, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (568, 293, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (561, 294, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (586, 295, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (605, 296, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (609, 297, 52);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (482, 299, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (515, 300, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (538, 301, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (483, 302, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (557, 303, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (629, 304, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (567, 305, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (562, 306, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (612, 307, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (575, 308, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (598, 309, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (601, 310, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (611, 311, 49);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (472, 312, 51);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (529, 313, 50);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (445, 316, 46);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (505, 55, 'bc', 'BC');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (420, 56, 'ab', 'AB');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (421, 57, 'sk', 'SK');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (422, 68, 'wa', 'WA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (423, 69, 'mb', 'MB');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (424, 70, 'on', 'ON');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (425, 71, 'qc', 'QC');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (426, 72, 'nb', 'NB');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (427, 73, 'ns', 'NS');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (428, 74, 'pe', 'PE');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (429, 75, 'nl', 'NL');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (430, 76, 'yt', 'YT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (431, 77, 'nt', 'NT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (432, 78, 'nu', 'NU');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (433, 79, 'al', 'AL');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (503, 80, 'ak', 'AK');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (435, 81, 'az', 'AZ');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (436, 82, 'ar', 'AR');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (438, 83, 'ca', 'CA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (506, 84, 'co', 'CO');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (440, 85, 'ct', 'CT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (441, 86, 'de', 'DE');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (442, 87, 'dc', 'DC');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (504, 88, 'fl', 'FL');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (444, 89, 'ga', 'GA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (445, 90, 'hi', 'HI');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (448, 91, 'id', 'ID');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (449, 92, 'il', 'IL');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (450, 93, 'in', 'IN');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (451, 94, 'ia', 'IA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (452, 95, 'ks', 'KS');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (453, 96, 'ky', 'KY');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (454, 97, 'la', 'LA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (456, 98, 'me', 'ME');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (457, 99, 'md', 'MD');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (458, 100, 'ma', 'MA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (459, 101, 'mi', 'MI');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (460, 102, 'mn', 'MN');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (461, 103, 'ms', 'MS');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (462, 104, 'mo', 'MO');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (464, 105, 'mt', 'MT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (465, 106, 'ne', 'NE');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (507, 107, 'nv', 'NV');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (467, 108, 'nh', 'NH');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (468, 109, 'nj', 'NJ');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (469, 110, 'nm', 'NM');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (470, 111, 'ny', 'NY');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (471, 112, 'nc', 'NC');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (472, 113, 'nd', 'ND');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (473, 114, 'oh', 'OH');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (474, 115, 'ok', 'OK');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (475, 116, 'or', 'OR');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (476, 117, 'pa', 'PA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (477, 118, 'ri', 'RI');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (478, 119, 'sc', 'SC');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (479, 120, 'sd', 'SD');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (480, 121, 'tn', 'TN');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (481, 122, 'tx', 'TX');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (482, 123, 'ut', 'UT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (483, 124, 'vt', 'VT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (484, 125, 'va', 'VA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (485, 126, 'wv', 'WV');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (486, 127, 'wi', 'WI');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (487, 128, 'wy', 'WY');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (488, 298, 'ql', 'QL');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (489, 317, 'nsw', 'NSW');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (490, 318, 'sa', 'SA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (491, 319, 'tas', 'TAS');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (492, 320, 'vic', 'VIC');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (493, 321, 'wa', 'WA');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (494, 322, 'nt', 'NT');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (495, 457, 'bj', 'BJ');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (502, 676, 'ni', 'NI');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (497, 470, 'sco', 'Sco');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (498, 476, 'eng', 'Eng');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (500, 490, 'fd', 'FD');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (499, 489, 'yuc', 'Yuc');

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (505, 55, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (420, 56, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (421, 57, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (422, 68, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (423, 69, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (424, 70, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (425, 71, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (426, 72, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (428, 74, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (429, 75, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (430, 76, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (431, 77, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (432, 78, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (433, 79, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (435, 81, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (436, 82, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (438, 83, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (506, 84, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (440, 85, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (441, 86, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (442, 87, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (504, 88, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (444, 89, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (445, 90, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (448, 91, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (449, 92, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (450, 93, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (451, 94, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (452, 95, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (453, 96, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (454, 97, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (456, 98, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (457, 99, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (458, 100, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (459, 101, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (460, 102, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (461, 103, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (462, 104, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (464, 105, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (465, 106, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (507, 107, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (467, 108, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (468, 109, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (469, 110, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (470, 111, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (471, 112, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (472, 113, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (473, 114, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (474, 115, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (475, 116, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (476, 117, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (477, 118, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (478, 119, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (479, 120, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (480, 121, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (481, 122, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (482, 123, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (483, 124, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (484, 125, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (485, 126, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (486, 127, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (487, 128, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (488, 298, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (489, 317, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (490, 318, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (491, 319, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (492, 320, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (493, 321, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (494, 322, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (503, 80, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (427, 73, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (495, 457, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (497, 470, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (498, 476, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (500, 490, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (499, 489, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (502, 676, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (421, 57, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (422, 68, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (423, 69, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (424, 70, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (425, 71, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (426, 72, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (427, 73, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (428, 74, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (429, 75, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (430, 76, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (431, 77, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (432, 78, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (433, 79, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (503, 80, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (435, 81, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (436, 82, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (506, 84, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (440, 85, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (441, 86, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (442, 87, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (504, 88, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (444, 89, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (445, 90, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (449, 92, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (450, 93, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (451, 94, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (452, 95, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (453, 96, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (454, 97, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (457, 99, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (458, 100, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (459, 101, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (460, 102, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (461, 103, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (462, 104, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (465, 106, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (507, 107, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (467, 108, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (468, 109, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (469, 110, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (470, 111, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (471, 112, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (472, 113, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (473, 114, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (474, 115, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (475, 116, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (476, 117, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (477, 118, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (478, 119, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (479, 120, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (480, 121, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (481, 122, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (482, 123, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (483, 124, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (484, 125, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (485, 126, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (486, 127, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (487, 128, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (488, 298, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (489, 317, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (490, 318, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (491, 319, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (492, 320, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (493, 321, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (494, 322, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (420, 56, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (495, 457, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (502, 676, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (498, 476, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (500, 490, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (499, 489, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (505, 55, 'province', 'Province');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (438, 83, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (448, 91, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (456, 98, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (464, 105, 'state', 'State');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (497, 470, 'province', 'Province');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (416, 57, 'saskatchewan', 'Saskatchewan');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (417, 68, 'washington', 'Washington');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (418, 69, 'manitoba', 'Manitoba');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (419, 70, 'ontario', 'Ontario');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (420, 71, 'quebec', 'Québec');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (421, 72, 'new-brunswick', 'New Brunswick');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (422, 73, 'nova-scotia', 'Nova Scotia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (423, 74, 'prince-edward-island', 'Prince Edward Island');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (424, 75, 'newfoundland', 'Newfoundland');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (425, 76, 'yukon', 'Yukon');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (426, 77, 'northwest-territories', 'Northwest Territories');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (427, 78, 'nunavut', 'Nunavut');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (430, 81, 'arizona', 'Arizona');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (431, 82, 'arkansas', 'Arkansas');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (433, 83, 'california', 'California');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (501, 84, 'colorado', 'Colorado');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (435, 85, 'connecticut', 'Connecticut');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (436, 86, 'delaware', 'Delaware');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (437, 87, 'district-of-columbia', 'District of Columbia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (439, 89, 'georgia', 'Georgia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (440, 90, 'hawaii', 'Hawaii');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (443, 91, 'idaho', 'Idaho');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (444, 92, 'illinois', 'Illinois');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (445, 93, 'indiana', 'Indiana');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (446, 94, 'iowa', 'Iowa');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (447, 95, 'kansas', 'Kansas');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (448, 96, 'kentucky', 'Kentucky');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (449, 97, 'louisiana', 'Louisiana');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (451, 98, 'maine', 'Maine');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (452, 99, 'maryland', 'Maryland');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (453, 100, 'massachusetts', 'Massachusetts');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (454, 101, 'michigan', 'Michigan');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (455, 102, 'minnesota', 'Minnesota');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (456, 103, 'mississippi', 'Mississippi');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (457, 104, 'missouri', 'Missouri');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (459, 105, 'montana', 'Montana');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (460, 106, 'nebraska', 'Nebraska');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (502, 107, 'nevada', 'Nevada');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (462, 108, 'new-hampshire', 'New Hampshire');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (463, 109, 'new-jersey', 'New Jersey');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (464, 110, 'new-mexico', 'New Mexico');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (465, 111, 'new-york', 'New York');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (466, 112, 'north-carolina', 'North Carolina');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (467, 113, 'north-dakota', 'North Dakota');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (468, 114, 'ohio', 'Ohio');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (469, 115, 'oklahoma', 'Oklahoma');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (471, 117, 'pennsylvania', 'Pennsylvania');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (472, 118, 'rhode-island', 'Rhode Island');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (473, 119, 'south-carolina', 'South Carolina');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (474, 120, 'south-dakota', 'South Dakota');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (475, 121, 'tennessee', 'Tennessee');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (476, 122, 'texas', 'Texas');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (477, 123, 'utah', 'Utah');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (478, 124, 'vermont', 'Vermont');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (479, 125, 'virginia', 'Virginia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (480, 126, 'west-virginia', 'West Virginia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (481, 127, 'wisconsin', 'Wisconsin');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (482, 128, 'wyoming', 'Wyoming');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (483, 298, 'queensland', 'Queensland');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (484, 317, 'new-south-wales', 'New South Wales');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (485, 318, 'south-australia', 'South Australia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (486, 319, 'tasmania', 'Tasmania');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (487, 320, 'victoria', 'Victoria');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (488, 321, 'western-australia', 'Western Australia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (489, 322, 'northern-territory', 'Northern Territory');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (415, 56, 'alberta', 'Alberta');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (428, 79, 'alabama', 'Alabama');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (498, 80, 'alaska', 'Alaska');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (500, 55, 'british-columbia', 'British Columbia');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (499, 88, 'florida', 'Florida');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (470, 116, 'oregon', 'Oregon');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (490, 457, 'baja', 'Baja');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (497, 676, 'north-island', 'North Island');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (492, 470, 'scotland', 'Scotland');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (493, 476, 'england', 'England');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (495, 490, 'federal-district', 'Federal District');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (494, 489, 'yucatan', 'Yucatan');

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 4, 'destinations', 'Destinations');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 6, 'company', 'Company');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 437, 'guides', 'Guides');

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (362, 58, 'vancouver', 'Vancouver');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (347, 60, 'victoria', 'Victoria');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (348, 61, 'richmond', 'Richmond');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (361, 323, 'seattle', 'Seattle');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (349, 324, 'vancouver', 'Vancouver');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (350, 325, 'brisbane', 'Brisbane');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (351, 327, 'anchorage', 'Anchorage');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (352, 328, 'juneau', 'Juneau');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (353, 329, 'sitka', 'Sitka');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (354, 330, 'fairbanks', 'Fairbanks');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (355, 331, 'whistler', 'Whistler');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (332, 336, 'sydney', 'Sydney');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (333, 381, 'jasper', 'Jasper');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (334, 382, 'banff', 'Banff');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (335, 383, 'san-francisco', 'San Francisco');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (336, 384, 'honolulu', 'Honolulu');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (337, 385, 'cape-breton', 'Cape Breton');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (360, 386, 'lake-louise', 'Lake Louise');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (356, 387, 'kelowna', 'Kelowna');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (338, 388, 'kamloops', 'Kamloops');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (339, 389, 'quebec-city', 'Québec City');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (340, 438, 'mississauga', 'Mississauga');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (341, 458, 'acapulco', 'Acapulco');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (342, 459, 'anaheim', 'Anaheim');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (343, 460, 'long-beach', 'Long Beach');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (344, 461, 'los-angeles', 'Los Angeles');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (345, 462, 'palm-springs', 'Palm Springs');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (346, 463, 'san-diego', 'San Diego');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (322, 491, 'mexico-city', 'Mexico City');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (317, 466, 'calgary', 'Calgary');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (359, 469, 'denver', 'Denver');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (327, 692, 'halifax', 'Halifax');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (319, 473, 'kingston', 'Kingston');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (320, 474, 'lake-tahoe', 'Lake Tahoe');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (328, 727, 'las-vegas', 'Las Vegas');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (220, 492, 'cancun', 'Cancun');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (323, 479, 'los-cabos', 'Los Cabos');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (330, 735, 'london', 'London');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (326, 677, 'auckland', 'Auckland');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (278, 711, 'edinburgh', 'Edinburgh');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (324, 496, 'miami', 'Miami');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (363, 742, 'montreal', 'Montreal	');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (325, 498, 'playa-del-carmen', 'Playa del Carmen');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (321, 478, 'london-canada', 'London Canada');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (357, 734, 'abbotsford', 'Abbotsford');

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (362, 58, 'bc', 'BC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (347, 60, 'bc', 'BC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (348, 61, 'bc', 'BC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (361, 323, 'wa', 'WA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (349, 324, 'wa', 'WA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (350, 325, 'ql', 'QL');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (351, 327, 'ak', 'AK');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (352, 328, 'ak', 'AK');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (353, 329, 'ak', 'AK');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (354, 330, 'ak', 'AK');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (355, 331, 'bc', 'BC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (332, 336, 'nsw', 'NSW');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (333, 381, 'ab', 'AB');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (334, 382, 'ab', 'AB');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (335, 383, 'ca', 'CA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (336, 384, 'hi', 'HI');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (337, 385, 'ns', 'NS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (360, 386, 'ab', 'AB');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (356, 387, 'bc', 'BC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (338, 388, 'bc', 'BC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (339, 389, 'qc', 'QC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (340, 438, 'on', 'ON');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (341, 458, 'bj', 'BJ');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (342, 459, 'ca', 'CA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (343, 460, 'ca', 'CA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (344, 461, 'ca', 'CA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (345, 462, 'ca', 'CA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (346, 463, 'ca', 'CA');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (220, 492, 'yuc', 'Yuc');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (317, 466, 'ab', 'AB');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (330, 735, 'eng', 'Eng');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (359, 469, 'co', 'CO');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (322, 491, 'fd', 'FD');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (327, 692, 'ns', 'NS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (319, 473, 'on', 'ON');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (320, 474, 'nv', 'NV');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (328, 727, 'nv', 'NV');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (326, 677, 'ni', 'NI');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (321, 478, 'on', 'ON');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (323, 479, 'bj', 'BJ');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (278, 711, 'sco', 'Sco');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (324, 496, 'fl', 'FL');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (363, 742, 'qc', 'QC');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (325, 498, 'yuc', 'Yuc');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (357, 734, 'bc', 'BC');

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (353, 329, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (352, 328, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (349, 324, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (350, 325, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (362, 58, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (361, 323, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (351, 327, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (332, 336, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (355, 331, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (333, 381, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (334, 382, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (347, 60, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (348, 61, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (335, 383, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (336, 384, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (337, 385, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (360, 386, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (356, 387, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (338, 388, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (339, 389, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (340, 438, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (354, 330, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (341, 458, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (342, 459, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (343, 460, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (344, 461, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (346, 463, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (317, 466, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (359, 469, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (322, 491, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (220, 492, NULL, NULL);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (319, 473, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (320, 474, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (321, 478, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (330, 735, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (323, 479, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (324, 496, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (357, 734, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (363, 742, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (325, 498, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (326, 677, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (327, 692, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (328, 727, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (278, 711, NULL, NULL);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (345, 462, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 58, 'pacific-gmt-8', 'Pacific (GMT-8)');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 60, 'pacific-gmt-8', 'Pacific (GMT-8)');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 61, 'pacific-gmt-8', 'Pacific (GMT-8)');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 323, 'pacific-gmt-8', 'Pacific (GMT-8)');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (89, 331, 'pacific-gmt-8', 'Pacific (GMT-8)');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 383, 'pacific-gmt-8', 'Pacific (GMT-8)');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 387, 'pacific-gmt-8', 'Pacific (GMT-8)');

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `relation_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (362, 58, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (347, 60, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (348, 61, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (361, 323, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (349, 324, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (350, 325, 63);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (351, 327, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (352, 328, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (353, 329, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (354, 330, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (355, 331, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (332, 336, 63);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (333, 381, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (334, 382, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (335, 383, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (336, 384, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (337, 385, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (360, 386, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (356, 387, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (338, 388, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (339, 389, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (340, 438, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (341, 458, 59);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (342, 459, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (343, 460, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (344, 461, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (345, 462, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (346, 463, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (220, 492, 59);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (317, 466, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (330, 735, 266);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (359, 469, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (322, 491, 59);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (327, 692, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (319, 473, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (320, 474, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (328, 727, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (326, 677, 304);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (321, 478, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (323, 479, 59);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (278, 711, 266);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (324, 496, 54);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (363, 742, 53);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (325, 498, 59);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (357, 734, 53);

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `relation_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_36` ***
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (498, 55, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (413, 56, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (414, 57, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (415, 68, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (416, 69, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (417, 70, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (418, 71, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (419, 72, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (420, 73, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (421, 74, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (422, 75, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (423, 76, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (424, 77, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (425, 78, 53);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (426, 79, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (496, 80, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (428, 81, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (429, 82, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (431, 83, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (499, 84, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (433, 85, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (434, 86, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (435, 87, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (497, 88, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (437, 89, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (438, 90, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (441, 91, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (442, 92, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (443, 93, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (444, 94, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (445, 95, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (446, 96, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (447, 97, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (449, 98, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (450, 99, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (451, 100, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (452, 101, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (453, 102, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (454, 103, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (455, 104, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (457, 105, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (458, 106, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (500, 107, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (460, 108, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (461, 109, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (462, 110, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (463, 111, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (464, 112, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (465, 113, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (466, 114, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (467, 115, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (468, 116, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (469, 117, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (470, 118, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (471, 119, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (472, 120, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (473, 121, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (474, 122, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (475, 123, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (476, 124, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (477, 125, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (478, 126, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (479, 127, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (480, 128, 54);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (481, 298, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (482, 317, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (483, 318, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (484, 319, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (485, 320, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (486, 321, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (487, 322, 63);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (488, 457, 59);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (495, 676, 304);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (490, 470, 266);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (491, 476, 266);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (493, 490, 59);
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (492, 489, 59);

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (344, 60, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (345, 61, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (359, 58, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (358, 323, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (346, 324, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (347, 325, 'oc', 'OC');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (348, 327, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (349, 328, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (350, 329, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (351, 330, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (352, 331, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (329, 336, 'oc', 'OC');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (330, 381, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (331, 382, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (332, 383, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (333, 384, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (334, 385, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (357, 386, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (353, 387, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (335, 388, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (336, 389, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (337, 438, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (338, 458, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (339, 459, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (340, 460, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (341, 461, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (342, 462, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (343, 463, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (217, 492, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (314, 466, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (327, 735, 'eu', 'EU');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (356, 469, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (319, 491, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (324, 692, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (316, 473, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (317, 474, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (325, 727, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (323, 677, 'oc', 'OC');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (318, 478, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (320, 479, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (275, 711, 'eu', 'EU');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (321, 496, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (360, 742, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (322, 498, 'na', 'NA');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (354, 734, 'na', 'NA');

-- *** STRUCTURE: `tbl_entries_data_38` ***
DROP TABLE IF EXISTS `tbl_entries_data_38`;
CREATE TABLE `tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=414 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_38` ***
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (220, 59, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (266, 299, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (299, 300, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (321, 301, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (267, 302, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (340, 303, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (410, 304, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (350, 305, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (345, 306, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (393, 307, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (358, 308, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (379, 309, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (382, 310, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (392, 311, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (257, 312, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (312, 313, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (239, 316, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (401, 63, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (412, 53, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (221, 54, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (259, 129, 346, 346);
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (228, 130, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (224, 181, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (236, 133, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (276, 143, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (262, 144, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (264, 145, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (269, 146, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (274, 147, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (273, 148, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (275, 149, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (279, 150, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (311, 153, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (296, 152, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (310, 154, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (315, 155, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (320, 156, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (330, 157, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (323, 158, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (326, 159, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (328, 160, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (316, 161, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (332, 162, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (333, 163, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (334, 164, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (335, 165, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (356, 166, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (369, 167, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (366, 168, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (359, 169, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (367, 171, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (395, 172, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (360, 173, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (372, 174, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (383, 175, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (378, 177, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (373, 176, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (385, 178, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (396, 179, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (397, 180, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (225, 269, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (243, 268, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (233, 270, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (246, 271, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (251, 272, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (252, 273, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (258, 274, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (370, 275, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (271, 276, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (278, 277, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (284, 278, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (282, 279, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (293, 280, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (336, 281, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (343, 282, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (300, 283, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (307, 284, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (389, 285, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (381, 286, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (238, 182, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (234, 183, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (244, 184, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (240, 185, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (298, 187, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (249, 67, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (281, 62, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (288, 189, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (290, 190, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (289, 191, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (287, 192, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (295, 193, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (294, 194, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (304, 195, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (301, 196, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (302, 197, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (303, 198, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (297, 199, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (305, 200, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (306, 201, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (331, 202, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (329, 203, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (325, 204, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (324, 186, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (339, 205, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (342, 206, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (347, 207, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (346, 208, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (352, 209, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (355, 210, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (357, 211, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (362, 212, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (309, 213, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (371, 214, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (375, 215, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (380, 217, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (374, 216, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (376, 188, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (377, 218, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (223, 219, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (387, 220, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (391, 221, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (394, 222, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (226, 223, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (222, 224, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (227, 225, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (230, 226, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (231, 227, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (245, 228, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (235, 229, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (232, 230, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (237, 231, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (283, 232, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (253, 233, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (254, 234, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (256, 235, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (261, 236, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (265, 237, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (268, 238, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (272, 239, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (255, 64, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (277, 240, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (388, 267, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (285, 241, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (291, 242, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (286, 243, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (413, 266, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (384, 265, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (247, 264, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (361, 263, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (263, 262, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (363, 261, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (364, 260, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (354, 259, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (365, 258, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (353, 257, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (349, 256, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (348, 255, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (338, 254, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (337, 253, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (319, 252, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (317, 251, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (318, 250, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (327, 249, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (322, 248, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (313, 247, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (308, 246, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (314, 245, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (292, 244, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (229, 287, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (241, 288, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (242, 65, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (248, 289, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (250, 290, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (260, 291, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (280, 292, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (351, 293, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (344, 294, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (368, 295, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (386, 296, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `handle`, `value`) VALUES (390, 297, 'northern-hemisphere', 'Northern Hemisphere');

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 4, 'destinations', 'destinations');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 6, 'information', 'information');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 437, 'guides', 'guides');

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 326, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 337, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 338, 'baja-peninsula', 'Baja Peninsula');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 345, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 346, 'southern-hemisphere', 'Southern Hemisphere');

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 326, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 337, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 338, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 345, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 346, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_43` ***
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 326, 'seattle', 'Seattle');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 326, 'vancouver', 'Vancouver');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 326, 'victoria', 'Victoria');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 337, 'sydney', 'Sydney');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 338, NULL, NULL);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 345, NULL, NULL);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 346, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_44` ***
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 326, 'british-columbia', 'British Columbia');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 326, 'california', 'California');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 326, 'oregon', 'Oregon');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 326, 'yukon', 'Yukon');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 326, 'alaska', 'Alaska');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 337, NULL, NULL);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 338, NULL, NULL);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 345, NULL, NULL);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 346, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_45` ***
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 326, 'united-states-of-america', 'United States of America');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 326, 'canada', 'Canada');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 337, 'new-zealand', 'New Zealand');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 337, 'australia', 'Australia');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 338, 'mexico', 'Mexico');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 345, NULL, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 346, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_46` ***
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 332, 'destinations', 'Destinations');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 333, 'dining', 'Dining');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 334, 'travel', 'Travel');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 335, 'entertainment', 'Entertainment');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 343, 'accommodations', 'Accommodations');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 344, 'tours', 'Tours');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 368, 'information', 'Information');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 371, 'introduction', 'Introduction');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 372, 'history', 'History');

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_47` ***
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 335, 'What to do in', 'What to do in');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 368, 'What you should know about', 'What you should know about');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 332, 'Where to go in', 'Where to go in');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 343, 'Where to stay in', 'Where to stay in');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 372, 'What to learn about the history of', 'What to learn about the history of');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 371, 'A brief introduction to', '<p>A brief introduction to</p>\n');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 334, 'How to get around', '<p>How to get around</p>\n');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 344, 'What to see and experience around', '<p>What to see and experience around</p>\n');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 333, 'What and where to eat in', '<p>What and where to eat in</p>\n');

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_48` ***

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_49` ***

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 4, 'destinations', 'Destinations');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 6, 'corporate-information', 'Corporate Information');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 437, 'city-guides', 'City Guides');

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_50` ***

-- *** STRUCTURE: `tbl_entries_data_51` ***
DROP TABLE IF EXISTS `tbl_entries_data_51`;
CREATE TABLE `tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `relation_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_51` ***

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_52` ***

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_53` ***

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_55` ***

-- *** STRUCTURE: `tbl_entries_data_56` ***
DROP TABLE IF EXISTS `tbl_entries_data_56`;
CREATE TABLE `tbl_entries_data_56` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_56` ***

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_57` ***

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_58` ***

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_59` ***

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 6, 'About, Contacts, Privacy Policy', '<p>About, Contacts, Privacy Policy</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 4, 'Detailed information for feature destinations', '<p>Detailed information for feature destinations</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 437, 'Find out all about the places you want to visit: everything from accommodations and dining to events and attractions.', '<p>Find out all about the places you want to visit: everything from accommodations and dining to events and attractions.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_60` ***

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_61` ***

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (420, 55, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (335, 56, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (336, 57, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (337, 68, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (338, 69, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (339, 70, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (340, 71, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (341, 72, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (342, 73, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (343, 74, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (344, 75, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (345, 76, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (346, 77, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (347, 78, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (348, 79, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (418, 80, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (350, 81, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (351, 82, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (353, 83, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (421, 84, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (355, 85, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (356, 86, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (357, 87, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (419, 88, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (359, 89, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (360, 90, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (363, 91, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (364, 92, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (365, 93, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (366, 94, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (367, 95, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (368, 96, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (369, 97, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (371, 98, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (372, 99, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (373, 100, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (374, 101, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (375, 102, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (376, 103, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (377, 104, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (379, 105, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (380, 106, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (422, 107, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (382, 108, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (383, 109, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (384, 110, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (385, 111, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (386, 112, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (387, 113, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (388, 114, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (389, 115, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (390, 116, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (391, 117, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (392, 118, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (393, 119, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (394, 120, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (395, 121, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (396, 122, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (397, 123, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (398, 124, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (399, 125, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (400, 126, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (401, 127, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (402, 128, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (403, 298, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (404, 317, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (405, 318, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (406, 319, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (407, 320, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (408, 321, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (409, 322, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (410, 457, 'af', 'AF');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (417, 676, 'oc', 'OC');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (412, 470, 'eu', 'EU');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (413, 476, 'eu', 'EU');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (415, 490, 'na', 'NA');
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (414, 489, 'na', 'NA');

-- *** STRUCTURE: `tbl_entries_data_66` ***
DROP TABLE IF EXISTS `tbl_entries_data_66`;
CREATE TABLE `tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_66` ***
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 46, 'africa', 'Africa');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 47, 'antartica', 'Antartica');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 48, 'asia', 'Asia');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 49, 'oceania', 'Oceania');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 50, 'europe', 'Europe');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 51, 'north-america', 'North America');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 52, 'south-america', 'South America');

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (143, 55, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 83, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 68, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 116, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 317, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 322, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 298, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 318, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 319, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 320, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 321, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 88, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (141, 80, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (133, 457, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 676, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (135, 470, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (136, 476, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (138, 490, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (137, 489, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 56, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 57, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 69, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 70, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 71, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 72, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 73, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 74, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 75, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 76, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 77, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 78, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 79, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 81, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 82, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (144, 84, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 85, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 86, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 87, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 89, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 90, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 91, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 92, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 93, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (89, 94, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 95, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 96, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 97, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (94, 98, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (95, 99, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (96, 100, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 101, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 102, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 103, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 104, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 105, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (103, 106, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (145, 107, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 108, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 109, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 110, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 111, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 112, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 113, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 114, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 115, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 117, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 118, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 119, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (117, 120, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (118, 121, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 122, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 123, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 124, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (122, 125, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 126, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 127, NULL, NULL);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 128, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (312, 329, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (311, 328, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (321, 323, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (310, 327, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (308, 324, NULL, NULL);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (291, 381, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (292, 382, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (305, 60, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (293, 383, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (294, 384, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (295, 385, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (320, 386, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (316, 387, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (317, 734, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (233, 711, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (296, 388, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (297, 389, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (322, 58, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (307, 61, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (290, 336, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (298, 438, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (299, 458, 'baja-peninsula', 'Baja Peninsula');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (300, 459, NULL, NULL);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (301, 460, NULL, NULL);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (302, 461, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (303, 462, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (304, 463, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (170, 492, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (274, 466, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (283, 677, 'southern-hemisphere', 'Southern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (319, 469, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (279, 491, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (284, 692, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (276, 473, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (277, 474, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (285, 727, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (278, 478, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (280, 479, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (287, 735, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (281, 496, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (323, 742, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (282, 498, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (314, 331, 'northern-hemisphere', 'Northern Hemisphere');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (289, 336, 'south-pacific', 'South Pacific');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (306, 60, 'pacific-northwest', 'Pacific Northwest');
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (309, 325, NULL, NULL);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (313, 330, NULL, NULL);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (315, 331, 'pacific-northwest', 'Pacific Northwest');

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_69` ***
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (291, 58, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (290, 323, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (281, 328, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (282, 329, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (261, 336, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (262, 381, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (263, 382, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (270, 458, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (271, 459, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (267, 388, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (284, 331, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (276, 60, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (277, 61, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (278, 324, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (264, 383, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (280, 327, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (265, 384, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (266, 385, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (289, 386, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (285, 387, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (268, 389, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (269, 438, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (283, 330, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (279, 325, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (272, 460, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (273, 461, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (274, 462, NULL, NULL);
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (275, 463, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (255, 677, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (246, 466, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (254, 498, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (288, 469, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (251, 491, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (149, 492, NULL, NULL);
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (259, 735, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (250, 478, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (207, 711, NULL, NULL);
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (248, 473, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (256, 692, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (249, 474, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (257, 727, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (286, 734, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (253, 496, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (252, 479, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (292, 742, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 4, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 6, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 437, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_70` ***
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 73, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 56, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 70, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 457, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 676, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 470, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 476, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (109, 490, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (108, 489, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 55, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 57, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 68, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 69, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 71, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 72, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 74, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 75, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 76, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (40, 77, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 78, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 79, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 80, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 81, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 82, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 83, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 84, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 85, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (50, 86, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (51, 87, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 88, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 89, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 90, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 91, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 92, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 93, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 94, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 95, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 96, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 97, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (65, 98, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (66, 99, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 100, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 101, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 102, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (70, 103, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (71, 104, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 105, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 106, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (116, 107, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 108, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 109, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 110, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (79, 111, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (80, 112, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (81, 113, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 114, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 115, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 116, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 117, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 118, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (87, 119, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (88, 120, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (89, 121, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (90, 122, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 123, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (92, 124, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (93, 125, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 126, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (95, 127, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 128, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (97, 298, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 317, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 318, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (100, 319, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 320, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 321, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (103, 322, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 54, NULL, NULL);
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 53, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 304, 'To a large extent New Zealand lives up to these expectations, and remains unfettered by the crowds you’d find elsewhere. What’s more, everything is easily accessible, packed into a land area little larger than Britain and with a population of just 3.8 million, over half of it tucked away in the three largest cities : Auckland, the capital Wellington, and the South Island’s Christchurch. Elsewhere, you can travel miles through steep-hilled farmland and rarely see a soul, and there are even remote spots which, it’s reliably contended, no human has ever visited.\r\n\r\nGeologically, New Zealand split off from the super-continent of Gondwanaland early, developing a unique ecosystem in which birds adapted to fill the role normally held by mammals, many becoming flightless through lack of predators. That all changed around 1200 years ago when the arrival of Polynesian navigators made this the last major land mass to be settled by humans. On sighting the new land from their canoes, Maori named it Aotearoa - “the land of the long white cloud” - and proceeded to radically alter the fragile ecosystem, dispatching forever the giant ostrich-sized moa, which formed a major part of their diet. A delicate ecological balance was achieved before the arrival of pakeha - white Europeans, predominantly of British origin - who swarmed off their square-rigged ships full of colonial zeal.\r\n\r\nThe subsequent uneasy coexistence between Maori and European societies informs both recorded history and the current wrangles over cultural identity, land and resource rights. The British didn’t invade as such, and were to some degree reluctant to enter into the 1840 Treaty of Waitangi , New Zealand’s founding document, which effectively ceded New Zealand to the British Crown while guaranteeing Maori hegemony over their land and traditional gathering and fishing rights. As time wore on and increasing numbers of settlers demanded to buy ever larger parcels of land from Maori, antipathy soon surfaced, eventually escalating to hostility. Once Maori were subdued, a policy of partial integration ensured the rapid dilution of their cultural heritage and all but destroyed Maoritanga - the Maori way of doing things. Maori, however, were left well outside the new European order, where difference was perceived as tantamount to a betrayal of the emergent sense of nationhood. Although elements of this still exist and Presbyterian and Anglican values have proved hard to shake off, the Kiwi psyche has become infused with Maori generosity and hospitality, coupled with a colonial mateyness and the unerring belief that whatever happens, “she’ll be right”. However, an underlying inferiority complex seems to linger: you may well find yourself interrogated as to your opinions of the country almost before you’ve left the airport. Balancing this out is an extraordinary enthusiasm for sports and culture , which generate a swelling pride in New Zealanders when they witness plucky Kiwis taking on the world.\r\n\r\nOnly in the last couple of decades has New Zealand come of age and developed a true national self-confidence, something partly forced on it by Britain severing the colonial apron strings in the early 1970s, and partly by the resurgence of Maori identity. Maori demands have been nurtured by a willingness on the part of most pakeha to redress the wrongs perpetrated over the last century and a half, as long as it doesn’t impinge on their high standard of living or overall feeling of control. More recently, integration has been replaced with a policy of promoting two cultures alongside each other, but with maximum interaction. In this way New Zealand is set to forge through the new century with considerable dignity and a good deal of uncertainty.\r\n\r\n        Copyright Rough Guides Ltd as trustee for its authors. Published by Rough Guides. All rights reserved.The Rough Guides name is a trademark\r\n    ', '<p>To a large extent New Zealand lives up to these expectations, and remains unfettered by the crowds you’d find elsewhere. What’s more, everything is easily accessible, packed into a land area little larger than Britain and with a population of just 3.8 million, over half of it tucked away in the three largest cities : Auckland, the capital Wellington, and the South Island’s Christchurch. Elsewhere, you can travel miles through steep-hilled farmland and rarely see a soul, and there are even remote spots which, it’s reliably contended, no human has ever visited.</p>\n\n<p>Geologically, New Zealand split off from the super-continent of Gondwanaland early, developing a unique ecosystem in which birds adapted to fill the role normally held by mammals, many becoming flightless through lack of predators. That all changed around 1200 years ago when the arrival of Polynesian navigators made this the last major land mass to be settled by humans. On sighting the new land from their canoes, Maori named it Aotearoa - “the land of the long white cloud” - and proceeded to radically alter the fragile ecosystem, dispatching forever the giant ostrich-sized moa, which formed a major part of their diet. A delicate ecological balance was achieved before the arrival of pakeha - white Europeans, predominantly of British origin - who swarmed off their square-rigged ships full of colonial zeal.</p>\n\n<p>The subsequent uneasy coexistence between Maori and European societies informs both recorded history and the current wrangles over cultural identity, land and resource rights. The British didn’t invade as such, and were to some degree reluctant to enter into the 1840 Treaty of Waitangi , New Zealand’s founding document, which effectively ceded New Zealand to the British Crown while guaranteeing Maori hegemony over their land and traditional gathering and fishing rights. As time wore on and increasing numbers of settlers demanded to buy ever larger parcels of land from Maori, antipathy soon surfaced, eventually escalating to hostility. Once Maori were subdued, a policy of partial integration ensured the rapid dilution of their cultural heritage and all but destroyed Maoritanga - the Maori way of doing things. Maori, however, were left well outside the new European order, where difference was perceived as tantamount to a betrayal of the emergent sense of nationhood. Although elements of this still exist and Presbyterian and Anglican values have proved hard to shake off, the Kiwi psyche has become infused with Maori generosity and hospitality, coupled with a colonial mateyness and the unerring belief that whatever happens, “she’ll be right”. However, an underlying inferiority complex seems to linger: you may well find yourself interrogated as to your opinions of the country almost before you’ve left the airport. Balancing this out is an extraordinary enthusiasm for sports and culture , which generate a swelling pride in New Zealanders when they witness plucky Kiwis taking on the world.</p>\n\n<p>Only in the last couple of decades has New Zealand come of age and developed a true national self-confidence, something partly forced on it by Britain severing the colonial apron strings in the early 1970s, and partly by the resurgence of Maori identity. Maori demands have been nurtured by a willingness on the part of most pakeha to redress the wrongs perpetrated over the last century and a half, as long as it doesn’t impinge on their high standard of living or overall feeling of control. More recently, integration has been replaced with a policy of promoting two cultures alongside each other, but with maximum interaction. In this way New Zealand is set to forge through the new century with considerable dignity and a good deal of uncertainty.</p>\n\n<pre><code>    Copyright Rough Guides Ltd as trustee for its authors. Published by Rough Guides. All rights reserved.The Rough Guides name is a trademark\n</code></pre>\n');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 63, NULL, NULL);
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 266, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_72` ***
DROP TABLE IF EXISTS `tbl_entries_data_72`;
CREATE TABLE `tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_72` ***
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 46, 'Africa, particularly central eastern Africa, is widely regarded within the scientific community to be the origin of humans and the Hominidae tree (great apes), as evidenced by the discovery of the earliest hominids and their possible ancestors, as well as later ones that have been dated to around seven million years ago – including Sahelanthropus tchadensis, Australopithecus africanus, A. afarensis, Homo erectus, H. habilis and H. ergaster – with the earliest Homo sapiens (human) found in Ethiopia being dated to ca. 200,000 years ago.\r\n\r\nAfrica straddles the equator and encompasses numerous climate areas; it is the only continent to stretch from the northern temperate to southern temperate zones. Because of the lack of natural regular precipitation and irrigation as well as glaciers or mountain aquifer systems, there is no natural moderating effect on the climate except near the coasts.\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/Africa))', '<p>Africa, particularly central eastern Africa, is widely regarded within the scientific community to be the origin of humans and the Hominidae tree (great apes), as evidenced by the discovery of the earliest hominids and their possible ancestors, as well as later ones that have been dated to around seven million years ago – including Sahelanthropus tchadensis, Australopithecus africanus, A. afarensis, Homo erectus, H. habilis and H. ergaster – with the earliest Homo sapiens (human) found in Ethiopia being dated to ca. 200,000 years ago.</p>\n\n<p>Africa straddles the equator and encompasses numerous climate areas; it is the only continent to stretch from the northern temperate to southern temperate zones. Because of the lack of natural regular precipitation and irrigation as well as glaciers or mountain aquifer systems, there is no natural moderating effect on the climate except near the coasts.</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/Africa\">Wikipedia</a>)</p>\n');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 47, 'On average, Antarctica is the coldest, driest and windiest continent, and has the highest average elevation of all the continents.[1] Since there is little precipitation, except at the coasts, the interior of the continent is technically the largest desert in the world. There are no permanent human residents and there is no evidence of any existing or pre-historic indigenous population. Only cold-adapted plants and animals survive there, including penguins, fur seals, mosses, lichen, and many types of algae.\r\n\r\nThe name Antarctica is a romanized version of the Greek compound word ?ntarktiké (A?????????), meaning “Opposite of the Arctic”. Although myths and speculation about a Terra Australis (“Southern Land”) date back to antiquity, the first confirmed sighting of the continent is commonly accepted to have occurred in 1820 by the Russian expedition of Mikhail Lazarev and Fabian Gottlieb von Bellingshausen. However, the continent remained largely neglected for the rest of the 19th century because of its hostile environment, lack of resources, and isolation.\r\n\r\nThe Antarctic Treaty was signed in 1959 by twelve countries; to date, forty-five countries have signed the treaty. The treaty prohibits military activities and mineral mining, supports scientific research, and protects the continent’s ecozone. Ongoing experiments are conducted by more than 4,000 scientists of many nationalities and with different research interests.\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/Antarctica))', '<p>On average, Antarctica is the coldest, driest and windiest continent, and has the highest average elevation of all the continents.[1] Since there is little precipitation, except at the coasts, the interior of the continent is technically the largest desert in the world. There are no permanent human residents and there is no evidence of any existing or pre-historic indigenous population. Only cold-adapted plants and animals survive there, including penguins, fur seals, mosses, lichen, and many types of algae.</p>\n\n<p>The name Antarctica is a romanized version of the Greek compound word ?ntarktiké (A?????????), meaning “Opposite of the Arctic”. Although myths and speculation about a Terra Australis (“Southern Land”) date back to antiquity, the first confirmed sighting of the continent is commonly accepted to have occurred in 1820 by the Russian expedition of Mikhail Lazarev and Fabian Gottlieb von Bellingshausen. However, the continent remained largely neglected for the rest of the 19th century because of its hostile environment, lack of resources, and isolation.</p>\n\n<p>The Antarctic Treaty was signed in 1959 by twelve countries; to date, forty-five countries have signed the treaty. The treaty prohibits military activities and mineral mining, supports scientific research, and protects the continent’s ecozone. Ongoing experiments are conducted by more than 4,000 scientists of many nationalities and with different research interests.</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/Antarctica\">Wikipedia</a>)</p>\n');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 48, 'Chiefly in the eastern and northern hemispheres, Asia is traditionally defined as part of the landmass of Eurasia – with the western portion of the latter occupied by Europe – lying east of the Suez Canal, east of the Ural Mountains, and south of the Caucasus Mountains and the Caspian and Black Seas. It is bounded to the east by the Pacific Ocean, to the south by the Indian Ocean, and to the north by the Arctic Ocean. Russia is considered a transcontinental country, as are Turkey, Georgia, Azerbaijan, Kazakhstan, and others, all of which include territories in Asia and in Europe. Given its size and diversity, Asia – a toponym dating back to classical antiquity – is more a cultural concept incorporating a number of regions and peoples than a homogeneous physical entity (see Subregions of Asia, Asian people).\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/Asia))', '<p>Chiefly in the eastern and northern hemispheres, Asia is traditionally defined as part of the landmass of Eurasia – with the western portion of the latter occupied by Europe – lying east of the Suez Canal, east of the Ural Mountains, and south of the Caucasus Mountains and the Caspian and Black Seas. It is bounded to the east by the Pacific Ocean, to the south by the Indian Ocean, and to the north by the Arctic Ocean. Russia is considered a transcontinental country, as are Turkey, Georgia, Azerbaijan, Kazakhstan, and others, all of which include territories in Asia and in Europe. Given its size and diversity, Asia – a toponym dating back to classical antiquity – is more a cultural concept incorporating a number of regions and peoples than a homogeneous physical entity (see Subregions of Asia, Asian people).</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/Asia\">Wikipedia</a>)</p>\n');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 49, 'Ethnologically, the islands that are included in Oceania are divided into the subregions of Melanesia, Micronesia, and Polynesia.\r\n\r\nThe exact scope of Oceania is variably defined: it generally includes New Zealand, is often taken to include parts of Australasia such as Australia and New Guinea, and sometimes all or part of the Malay Archipelago.\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/Oceania))', '<p>Ethnologically, the islands that are included in Oceania are divided into the subregions of Melanesia, Micronesia, and Polynesia.</p>\n\n<p>The exact scope of Oceania is variably defined: it generally includes New Zealand, is often taken to include parts of Australasia such as Australia and New Guinea, and sometimes all or part of the Malay Archipelago.</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/Oceania\">Wikipedia</a>)</p>\n');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 50, NULL, NULL);
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 51, 'It covers an area of about 24,490,000 square kilometers (9,450,000 sq mi), about 4.8% of the planet’s surface or about 16.4% of its land area. As of October 2006, its population was estimated at over 514,600,000. It is the third-largest continent in area, following Asia and Africa, and is fourth in population after Asia, Africa, and Europe. North America and South America are collectively known as the Americas.\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/South_america))', '<p>It covers an area of about 24,490,000 square kilometers (9,450,000 sq mi), about 4.8% of the planet’s surface or about 16.4% of its land area. As of October 2006, its population was estimated at over 514,600,000. It is the third-largest continent in area, following Asia and Africa, and is fourth in population after Asia, Africa, and Europe. North America and South America are collectively known as the Americas.</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/South_america\">Wikipedia</a>)</p>\n');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 52, 'South America was named in 1507 by cartographers Martin Waldseemüller and Matthias Ringmann after Amerigo Vespucci, who was the first European to suggest that the Americas were not the East Indies, but a New World unknown to Europeans.\r\n\r\nSouth America has an area of 17,780,000 square kilometers (6,890,000 sq mi), or almost 3.5% of the Earth’s surface. As of 2005, its population was estimated at more than 371,090,000. South America ranks fourth in area (after Asia, Africa, and North America) and fifth in population (after Asia, Africa, Europe, and North America).\r\n\r\n(Source: [Wikipedia](http://en.wikipedia.org/wiki/South_america))', '<p>South America was named in 1507 by cartographers Martin Waldseemüller and Matthias Ringmann after Amerigo Vespucci, who was the first European to suggest that the Americas were not the East Indies, but a New World unknown to Europeans.</p>\n\n<p>South America has an area of 17,780,000 square kilometers (6,890,000 sq mi), or almost 3.5% of the Earth’s surface. As of 2005, its population was estimated at more than 371,090,000. South America ranks fourth in area (after Asia, Africa, and North America) and fifth in population (after Asia, Africa, Europe, and North America).</p>\n\n<p>(Source: <a href=\"http://en.wikipedia.org/wiki/South_america\">Wikipedia</a>)</p>\n');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 371, 1, 1);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 343, 2, 2);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 332, 3, 3);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 333, 4, 4);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 335, 5, 5);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 368, 6, 6);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 344, 7, 7);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 334, 8, 8);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 372, 9, 9);

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (255, 58, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (249, 387, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (240, 60, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (241, 61, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (242, 324, 'no', 'No');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (243, 325, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (244, 327, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (245, 328, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (248, 331, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (225, 336, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (226, 381, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (228, 383, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (229, 384, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (230, 385, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (253, 386, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (227, 382, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (231, 388, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (232, 389, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (233, 438, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (247, 330, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (234, 458, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (235, 459, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (236, 460, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (237, 461, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (238, 462, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (239, 463, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 492, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (210, 466, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (223, 735, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (252, 469, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (215, 491, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (220, 692, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (212, 473, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (213, 474, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (221, 727, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (219, 677, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (214, 478, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (216, 479, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (171, 711, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (217, 496, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (256, 742, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (218, 498, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (254, 323, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (250, 734, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (246, 329, 'yes', 'Yes');

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 56, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 73, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (182, 88, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 90, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 68, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (181, 80, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (166, 298, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (167, 317, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 57, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 69, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 70, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (103, 71, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (104, 72, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 74, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 75, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 76, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 77, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 78, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 79, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 81, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 82, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (184, 84, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (118, 85, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 86, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 87, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (122, 89, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 91, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 92, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 93, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 94, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 95, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 96, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 97, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 98, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (135, 99, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (136, 100, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (137, 101, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (138, 102, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (139, 103, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 104, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 105, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (143, 106, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (185, 107, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (145, 108, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (146, 109, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (147, 110, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (148, 111, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (149, 112, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (150, 113, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (151, 114, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (152, 115, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (153, 116, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (154, 117, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (155, 118, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (156, 119, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (157, 120, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (158, 121, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (159, 122, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (160, 123, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (161, 124, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (162, 125, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (163, 126, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (164, 127, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (165, 128, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (168, 318, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (169, 319, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (170, 320, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (171, 321, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (172, 322, 'no', 'No');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (173, 457, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (180, 676, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (175, 470, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (176, 476, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (178, 490, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (177, 489, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (183, 55, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 83, 'yes', 'Yes');

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (198, 63, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 59, NULL, 'Yes');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 54, NULL, 'Yes');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 224, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 219, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 181, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 269, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 223, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 225, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 130, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 66, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 287, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 226, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 227, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 230, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 270, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 183, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 229, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 133, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 231, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 182, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 316, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 131, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 185, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 288, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 65, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 268, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 184, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 132, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 228, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 271, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 140, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 136, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 139, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 264, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 151, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 289, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 134, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 67, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 290, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 272, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 273, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 135, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 233, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 234, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 64, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 141, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 235, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 312, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 274, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 129, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 291, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 236, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 142, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 144, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 262, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 145, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 237, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 299, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 302, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 238, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 146, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (210, 266, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 276, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 239, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 148, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 147, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 149, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 143, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 240, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 277, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 150, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 292, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 62, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 279, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 232, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 278, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 241, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 243, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 192, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 189, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 191, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 190, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 242, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 244, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 280, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 194, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (89, 193, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 152, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 199, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 187, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (93, 300, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (94, 138, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (95, 283, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (96, 196, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 197, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 198, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 195, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 200, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 201, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 284, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (103, 246, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (104, 213, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 154, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 153, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 313, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 247, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 245, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 155, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 161, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 251, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 250, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 252, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 156, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 301, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (117, 248, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (118, 158, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 186, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 204, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 159, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (122, 249, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 160, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 203, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 157, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 202, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 162, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 163, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 164, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 165, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 281, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 253, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (133, 254, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 205, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (135, 303, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (207, 304, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (137, 206, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (138, 282, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (139, 294, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 306, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (141, 208, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 207, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (143, 255, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (144, 256, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (145, 305, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (146, 293, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (147, 209, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (148, 257, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (149, 259, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (150, 210, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (151, 166, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (152, 211, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (153, 308, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (154, 169, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (155, 173, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (156, 263, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (157, 212, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (158, 261, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (159, 260, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (160, 170, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (161, 258, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (162, 168, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (163, 171, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (164, 295, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (165, 167, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (166, 275, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (167, 214, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (168, 174, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (169, 137, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (170, 176, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (171, 216, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (172, 215, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (173, 188, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (174, 218, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (175, 177, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (176, 309, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (177, 217, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (178, 286, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (179, 310, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (180, 175, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (181, 265, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (182, 178, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (183, 296, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (184, 220, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (185, 267, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (186, 285, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (187, 297, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (188, 221, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (189, 311, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (190, 307, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (191, 222, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (192, 172, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (193, 179, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (194, 180, NULL, 'No');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (209, 53, 'yes', 'Yes');

-- *** STRUCTURE: `tbl_entries_data_77` ***
DROP TABLE IF EXISTS `tbl_entries_data_77`;
CREATE TABLE `tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text collate utf8_unicode_ci,
  `value_formatted` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=544 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_77` ***
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (543, 14, NULL, NULL);
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (541, 12, NULL, NULL);
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (542, 349, NULL, NULL);
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (538, 11, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_78` ***
DROP TABLE IF EXISTS `tbl_entries_data_78`;
CREATE TABLE `tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_78` ***
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (223, 58, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (222, 323, 'no', 'No');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (210, 324, 'no', 'No');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (211, 325, 'no', 'No');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (212, 327, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (213, 328, 'no', 'No');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (193, 336, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (195, 382, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (196, 383, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (197, 384, 'no', 'No');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (198, 385, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (221, 386, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (217, 387, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (199, 388, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (200, 389, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (201, 438, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (215, 330, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (202, 458, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (203, 459, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 492, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (204, 460, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (205, 461, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (206, 462, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (207, 463, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (178, 466, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (187, 677, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (220, 469, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (183, 491, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (188, 692, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (180, 473, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (181, 474, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (189, 727, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (182, 478, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (184, 479, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (191, 735, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (139, 711, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (185, 496, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (224, 742, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (186, 498, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (194, 381, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (209, 61, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (208, 60, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (216, 331, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (218, 734, 'yes', 'Yes');
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (214, 329, 'yes', 'Yes');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 4, 2, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 6, 8, 8);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 437, 3, 3);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL default '0',
  `relation_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (113, 4, 1);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (112, 6, 1);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `relation_id`) VALUES (115, 437, 1);

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (1, 1, 1, '2008-03-06 21:26:57', '2008-03-07 05:26:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (2, 1, 1, '2008-03-06 21:27:22', '2008-03-07 05:27:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 2, 1, '2008-03-06 21:29:17', '2008-03-07 05:29:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 2, 1, '2008-03-06 21:33:05', '2008-03-07 05:33:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (11, 3, 1, '2008-03-06 21:37:56', '2008-03-07 05:37:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 3, 1, '2008-03-06 21:39:05', '2008-03-07 05:39:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 3, 1, '2008-03-06 21:40:54', '2008-03-07 05:40:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 4, 1, '2008-03-12 11:13:29', '2008-03-12 18:13:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 4, 1, '2008-03-12 11:13:49', '2008-03-12 18:13:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 4, 1, '2008-03-12 11:14:15', '2008-03-12 18:14:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (49, 4, 1, '2008-03-12 11:14:33', '2008-03-12 18:14:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 4, 1, '2008-03-12 11:14:47', '2008-03-12 18:14:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (51, 4, 1, '2008-03-12 11:15:05', '2008-03-12 18:15:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 4, 1, '2008-03-12 11:15:22', '2008-03-12 18:15:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 5, 0, '2008-03-12 11:20:53', '2008-03-12 18:20:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 5, 0, '2008-03-12 12:09:59', '2008-03-12 19:09:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 6, 0, '2008-03-12 12:24:16', '2008-03-12 19:24:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 6, 0, '2008-03-12 12:25:14', '2008-03-12 19:25:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 6, 0, '2008-03-12 12:27:08', '2008-03-12 19:27:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 7, 1, '2008-03-12 12:56:51', '2008-03-12 19:56:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 5, 0, '2008-03-12 20:29:46', '2008-03-13 03:29:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (60, 7, 0, '2008-03-12 23:01:36', '2008-03-13 06:01:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 7, 0, '2008-03-12 23:03:34', '2008-03-13 06:03:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 5, 0, '2008-03-13 09:14:03', '2008-03-13 16:14:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 5, 0, '2008-03-13 09:14:22', '2008-03-13 16:14:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 5, 0, '2008-03-13 09:14:36', '2008-03-13 16:14:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 5, 0, '2008-03-13 09:14:50', '2008-03-13 16:14:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 5, 0, '2008-03-13 10:05:18', '2008-03-13 17:05:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 5, 0, '2008-03-13 10:54:12', '2008-03-13 17:54:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 6, 0, '2008-03-13 13:00:06', '2008-03-13 20:00:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (69, 6, 0, '2008-03-13 16:03:51', '2008-03-13 23:03:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 6, 0, '2008-03-13 16:13:17', '2008-03-13 23:13:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 6, 0, '2008-03-13 16:13:44', '2008-03-13 23:13:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 6, 0, '2008-03-13 16:14:15', '2008-03-13 23:14:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 6, 0, '2008-03-13 16:14:26', '2008-03-13 23:14:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 6, 0, '2008-03-13 16:14:40', '2008-03-13 23:14:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 6, 0, '2008-03-13 16:14:52', '2008-03-13 23:14:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 6, 0, '2008-03-13 16:15:01', '2008-03-13 23:15:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (77, 6, 0, '2008-03-13 16:15:14', '2008-03-13 23:15:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (78, 6, 0, '2008-03-13 16:15:30', '2008-03-13 23:15:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (79, 6, 0, '2008-03-13 16:32:08', '2008-03-13 23:32:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (80, 6, 0, '2008-03-13 16:32:17', '2008-03-13 23:32:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (81, 6, 0, '2008-03-13 16:32:26', '2008-03-13 23:32:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (82, 6, 0, '2008-03-13 16:32:29', '2008-03-13 23:32:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (83, 6, 0, '2008-03-13 16:32:31', '2008-03-13 23:32:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 6, 0, '2008-03-13 16:32:34', '2008-03-13 23:32:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 6, 0, '2008-03-13 16:32:37', '2008-03-13 23:32:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 6, 0, '2008-03-13 16:32:39', '2008-03-13 23:32:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 6, 0, '2008-03-13 16:32:42', '2008-03-13 23:32:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 6, 0, '2008-03-13 16:32:52', '2008-03-13 23:32:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 6, 0, '2008-03-13 16:32:55', '2008-03-13 23:32:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 6, 0, '2008-03-13 16:32:58', '2008-03-13 23:32:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 6, 0, '2008-03-13 16:33:00', '2008-03-13 23:33:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 6, 0, '2008-03-13 16:33:03', '2008-03-13 23:33:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 6, 0, '2008-03-13 16:33:06', '2008-03-13 23:33:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 6, 0, '2008-03-13 16:33:09', '2008-03-13 23:33:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 6, 0, '2008-03-13 16:33:27', '2008-03-13 23:33:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 6, 0, '2008-03-13 16:33:30', '2008-03-13 23:33:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 6, 0, '2008-03-13 16:33:32', '2008-03-13 23:33:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 6, 0, '2008-03-13 16:33:35', '2008-03-13 23:33:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (99, 6, 0, '2008-03-13 16:33:37', '2008-03-13 23:33:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (100, 6, 0, '2008-03-13 16:33:40', '2008-03-13 23:33:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (101, 6, 0, '2008-03-13 16:33:43', '2008-03-13 23:33:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (102, 6, 0, '2008-03-13 16:33:45', '2008-03-13 23:33:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (103, 6, 0, '2008-03-13 16:33:51', '2008-03-13 23:33:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (104, 6, 0, '2008-03-13 16:33:53', '2008-03-13 23:33:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (105, 6, 0, '2008-03-13 16:33:57', '2008-03-13 23:33:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (106, 6, 0, '2008-03-13 16:33:59', '2008-03-13 23:33:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (107, 6, 0, '2008-03-13 16:34:02', '2008-03-13 23:34:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (108, 6, 0, '2008-03-13 16:34:04', '2008-03-13 23:34:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (109, 6, 0, '2008-03-13 16:34:07', '2008-03-13 23:34:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (110, 6, 0, '2008-03-13 16:34:09', '2008-03-13 23:34:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (111, 6, 0, '2008-03-13 16:34:11', '2008-03-13 23:34:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (112, 6, 0, '2008-03-13 16:34:14', '2008-03-13 23:34:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (113, 6, 0, '2008-03-13 16:34:16', '2008-03-13 23:34:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (114, 6, 0, '2008-03-13 16:34:18', '2008-03-13 23:34:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (115, 6, 0, '2008-03-13 16:34:21', '2008-03-13 23:34:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (116, 6, 0, '2008-03-13 16:34:23', '2008-03-13 23:34:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (117, 6, 0, '2008-03-13 16:34:26', '2008-03-13 23:34:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (118, 6, 0, '2008-03-13 16:34:28', '2008-03-13 23:34:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (119, 6, 0, '2008-03-13 16:34:31', '2008-03-13 23:34:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (120, 6, 0, '2008-03-13 16:34:36', '2008-03-13 23:34:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (121, 6, 0, '2008-03-13 16:34:38', '2008-03-13 23:34:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (122, 6, 0, '2008-03-13 16:34:41', '2008-03-13 23:34:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (123, 6, 0, '2008-03-13 16:34:43', '2008-03-13 23:34:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (124, 6, 0, '2008-03-13 16:34:46', '2008-03-13 23:34:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (125, 6, 0, '2008-03-13 16:34:49', '2008-03-13 23:34:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (126, 6, 0, '2008-03-13 16:35:08', '2008-03-13 23:35:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (127, 6, 0, '2008-03-13 16:35:11', '2008-03-13 23:35:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (128, 6, 0, '2008-03-13 16:35:14', '2008-03-13 23:35:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (129, 5, 0, '2008-03-13 16:40:03', '2008-03-13 23:40:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (130, 5, 0, '2008-03-13 16:40:09', '2008-03-13 23:40:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (131, 5, 0, '2008-03-13 16:40:17', '2008-03-13 23:40:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (132, 5, 0, '2008-03-13 16:40:26', '2008-03-13 23:40:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (133, 5, 0, '2008-03-13 16:40:54', '2008-03-13 23:40:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (134, 5, 0, '2008-03-13 16:41:00', '2008-03-13 23:41:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (135, 5, 0, '2008-03-13 16:41:06', '2008-03-13 23:41:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (136, 5, 0, '2008-03-13 16:41:15', '2008-03-13 23:41:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (137, 5, 0, '2008-03-13 16:41:32', '2008-03-13 23:41:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (138, 5, 0, '2008-03-13 16:41:36', '2008-03-13 23:41:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (139, 5, 0, '2008-03-13 16:45:58', '2008-03-13 23:45:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (140, 5, 0, '2008-03-13 16:58:33', '2008-03-13 23:58:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (141, 5, 0, '2008-03-13 16:59:00', '2008-03-13 23:59:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (142, 5, 0, '2008-03-13 16:59:09', '2008-03-13 23:59:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (143, 5, 0, '2008-03-13 16:59:14', '2008-03-13 23:59:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (144, 5, 0, '2008-03-13 16:59:18', '2008-03-13 23:59:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (145, 5, 0, '2008-03-13 16:59:21', '2008-03-13 23:59:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (146, 5, 0, '2008-03-13 16:59:28', '2008-03-13 23:59:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (147, 5, 0, '2008-03-13 16:59:36', '2008-03-13 23:59:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (148, 5, 0, '2008-03-13 16:59:39', '2008-03-13 23:59:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (149, 5, 0, '2008-03-13 16:59:43', '2008-03-13 23:59:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (150, 5, 0, '2008-03-13 17:02:20', '2008-03-14 00:02:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (151, 5, 0, '2008-03-13 17:06:12', '2008-03-14 00:06:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (152, 5, 0, '2008-03-13 17:11:18', '2008-03-14 00:11:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (153, 5, 0, '2008-03-13 17:11:22', '2008-03-14 00:11:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (154, 5, 0, '2008-03-13 17:11:27', '2008-03-14 00:11:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (155, 5, 0, '2008-03-13 17:11:41', '2008-03-14 00:11:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (156, 5, 0, '2008-03-13 17:11:46', '2008-03-14 00:11:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (157, 5, 0, '2008-03-13 17:11:51', '2008-03-14 00:11:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (158, 5, 0, '2008-03-13 17:11:55', '2008-03-14 00:11:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (159, 5, 0, '2008-03-13 17:12:04', '2008-03-14 00:12:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (160, 5, 0, '2008-03-13 17:12:09', '2008-03-14 00:12:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (161, 5, 0, '2008-03-13 17:12:26', '2008-03-14 00:12:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (162, 5, 0, '2008-03-13 17:12:30', '2008-03-14 00:12:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (163, 5, 0, '2008-03-13 17:14:57', '2008-03-14 00:14:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (164, 5, 0, '2008-03-13 17:15:05', '2008-03-14 00:15:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (165, 5, 0, '2008-03-13 17:15:07', '2008-03-14 00:15:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (166, 5, 0, '2008-03-13 17:15:15', '2008-03-14 00:15:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (167, 5, 0, '2008-03-13 17:15:29', '2008-03-14 00:15:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (168, 5, 0, '2008-03-13 17:15:35', '2008-03-14 00:15:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (169, 5, 0, '2008-03-13 17:15:40', '2008-03-14 00:15:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (170, 5, 0, '2008-03-13 17:15:45', '2008-03-14 00:15:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (171, 5, 0, '2008-03-13 17:15:50', '2008-03-14 00:15:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (172, 5, 0, '2008-03-13 17:15:54', '2008-03-14 00:15:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (173, 5, 0, '2008-03-13 17:16:00', '2008-03-14 00:16:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (174, 5, 0, '2008-03-13 17:17:19', '2008-03-14 00:17:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (175, 5, 0, '2008-03-13 17:17:31', '2008-03-14 00:17:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (176, 5, 0, '2008-03-13 17:17:43', '2008-03-14 00:17:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (177, 5, 0, '2008-03-13 17:17:48', '2008-03-14 00:17:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (178, 5, 0, '2008-03-13 17:17:51', '2008-03-14 00:17:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (179, 5, 0, '2008-03-13 17:17:57', '2008-03-14 00:17:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (180, 5, 0, '2008-03-13 17:18:00', '2008-03-14 00:18:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (181, 5, 0, '2008-03-13 17:19:08', '2008-03-14 00:19:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (182, 5, 0, '2008-03-13 17:19:11', '2008-03-14 00:19:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (183, 5, 0, '2008-03-13 17:19:16', '2008-03-14 00:19:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (184, 5, 0, '2008-03-13 17:19:22', '2008-03-14 00:19:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (185, 5, 0, '2008-03-13 17:19:29', '2008-03-14 00:19:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (186, 5, 0, '2008-03-13 17:19:54', '2008-03-14 00:19:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (187, 5, 0, '2008-03-13 17:20:03', '2008-03-14 00:20:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (188, 5, 0, '2008-03-13 17:21:15', '2008-03-14 00:21:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (189, 5, 0, '2008-03-13 17:23:24', '2008-03-14 00:23:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (190, 5, 0, '2008-03-13 17:23:30', '2008-03-14 00:23:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (191, 5, 0, '2008-03-13 17:23:32', '2008-03-14 00:23:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (192, 5, 0, '2008-03-13 17:23:38', '2008-03-14 00:23:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (193, 5, 0, '2008-03-13 17:23:42', '2008-03-14 00:23:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (194, 5, 0, '2008-03-13 17:23:49', '2008-03-14 00:23:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (195, 5, 0, '2008-03-13 17:23:58', '2008-03-14 00:23:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (196, 5, 0, '2008-03-13 17:24:15', '2008-03-14 00:24:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (197, 5, 0, '2008-03-13 17:24:22', '2008-03-14 00:24:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (198, 5, 0, '2008-03-13 17:24:31', '2008-03-14 00:24:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (199, 5, 0, '2008-03-13 17:24:39', '2008-03-14 00:24:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (200, 5, 0, '2008-03-13 17:24:46', '2008-03-14 00:24:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (201, 5, 0, '2008-03-13 17:24:53', '2008-03-14 00:24:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (202, 5, 0, '2008-03-13 17:24:59', '2008-03-14 00:24:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (203, 5, 0, '2008-03-13 17:25:04', '2008-03-14 00:25:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (204, 5, 0, '2008-03-13 17:25:11', '2008-03-14 00:25:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (205, 5, 0, '2008-03-13 17:25:20', '2008-03-14 00:25:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (206, 5, 0, '2008-03-13 17:25:27', '2008-03-14 00:25:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (207, 5, 0, '2008-03-13 17:25:31', '2008-03-14 00:25:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (208, 5, 0, '2008-03-13 17:25:36', '2008-03-14 00:25:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (209, 5, 0, '2008-03-13 17:25:41', '2008-03-14 00:25:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (210, 5, 0, '2008-03-13 17:25:58', '2008-03-14 00:25:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (211, 5, 0, '2008-03-13 17:26:05', '2008-03-14 00:26:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (212, 5, 0, '2008-03-13 17:26:10', '2008-03-14 00:26:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (213, 5, 0, '2008-03-13 17:26:14', '2008-03-14 00:26:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (214, 5, 0, '2008-03-13 17:26:21', '2008-03-14 00:26:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (215, 5, 0, '2008-03-13 17:26:31', '2008-03-14 00:26:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (216, 5, 0, '2008-03-13 17:26:35', '2008-03-14 00:26:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (217, 5, 0, '2008-03-13 17:26:45', '2008-03-14 00:26:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (218, 5, 0, '2008-03-13 17:26:48', '2008-03-14 00:26:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (219, 5, 0, '2008-03-13 17:26:53', '2008-03-14 00:26:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (220, 5, 0, '2008-03-13 17:26:57', '2008-03-14 00:26:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (221, 5, 0, '2008-03-13 17:27:01', '2008-03-14 00:27:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (222, 5, 0, '2008-03-13 17:27:05', '2008-03-14 00:27:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (223, 5, 0, '2008-03-13 17:27:47', '2008-03-14 00:27:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (224, 5, 0, '2008-03-13 17:27:50', '2008-03-14 00:27:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (225, 5, 0, '2008-03-13 17:27:54', '2008-03-14 00:27:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (226, 5, 0, '2008-03-13 17:28:01', '2008-03-14 00:28:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (227, 5, 0, '2008-03-13 17:28:04', '2008-03-14 00:28:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (228, 5, 0, '2008-03-13 17:28:09', '2008-03-14 00:28:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (229, 5, 0, '2008-03-13 17:28:14', '2008-03-14 00:28:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (230, 5, 0, '2008-03-13 17:29:52', '2008-03-14 00:29:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (231, 5, 0, '2008-03-13 17:29:56', '2008-03-14 00:29:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (232, 5, 0, '2008-03-13 17:30:05', '2008-03-14 00:30:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (233, 5, 0, '2008-03-13 17:30:08', '2008-03-14 00:30:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (234, 5, 0, '2008-03-13 17:30:17', '2008-03-14 00:30:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (235, 5, 0, '2008-03-13 17:35:25', '2008-03-14 00:35:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (236, 5, 0, '2008-03-13 17:35:30', '2008-03-14 00:35:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (237, 5, 0, '2008-03-13 17:35:35', '2008-03-14 00:35:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (238, 5, 0, '2008-03-13 17:35:42', '2008-03-14 00:35:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (239, 5, 0, '2008-03-13 17:35:46', '2008-03-14 00:35:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (240, 5, 0, '2008-03-13 17:35:53', '2008-03-14 00:35:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (241, 5, 0, '2008-03-13 17:36:44', '2008-03-14 00:36:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (242, 5, 0, '2008-03-13 17:36:49', '2008-03-14 00:36:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (243, 5, 0, '2008-03-13 17:36:53', '2008-03-14 00:36:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (244, 5, 0, '2008-03-13 17:37:15', '2008-03-14 00:37:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (245, 5, 0, '2008-03-13 17:37:19', '2008-03-14 00:37:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (246, 5, 0, '2008-03-13 17:37:25', '2008-03-14 00:37:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (247, 5, 0, '2008-03-13 17:37:30', '2008-03-14 00:37:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (248, 5, 0, '2008-03-13 17:37:43', '2008-03-14 00:37:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (249, 5, 0, '2008-03-13 17:38:00', '2008-03-14 00:38:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (250, 5, 0, '2008-03-13 17:38:05', '2008-03-14 00:38:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (251, 5, 0, '2008-03-13 17:38:09', '2008-03-14 00:38:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (252, 5, 0, '2008-03-13 17:38:13', '2008-03-14 00:38:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (253, 5, 0, '2008-03-13 17:38:22', '2008-03-14 00:38:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (254, 5, 0, '2008-03-13 17:38:37', '2008-03-14 00:38:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (255, 5, 0, '2008-03-13 17:38:44', '2008-03-14 00:38:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (256, 5, 0, '2008-03-13 17:38:51', '2008-03-14 00:38:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (257, 5, 0, '2008-03-13 17:38:56', '2008-03-14 00:38:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (258, 5, 0, '2008-03-13 17:39:01', '2008-03-14 00:39:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (259, 5, 0, '2008-03-13 17:39:08', '2008-03-14 00:39:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (260, 5, 0, '2008-03-13 17:39:30', '2008-03-14 00:39:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (261, 5, 0, '2008-03-13 17:39:39', '2008-03-14 00:39:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (262, 5, 0, '2008-03-13 17:39:42', '2008-03-14 00:39:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (263, 5, 0, '2008-03-13 17:39:48', '2008-03-14 00:39:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (264, 5, 0, '2008-03-13 17:39:58', '2008-03-14 00:39:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (265, 5, 0, '2008-03-13 17:40:03', '2008-03-14 00:40:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (266, 5, 0, '2008-03-13 17:40:08', '2008-03-14 00:40:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (267, 5, 0, '2008-03-13 17:46:01', '2008-03-14 00:46:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (268, 5, 0, '2008-03-13 17:49:53', '2008-03-14 00:49:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (269, 5, 0, '2008-03-13 17:50:03', '2008-03-14 00:50:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (270, 5, 0, '2008-03-13 17:50:08', '2008-03-14 00:50:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (271, 5, 0, '2008-03-13 17:50:12', '2008-03-14 00:50:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (272, 5, 0, '2008-03-13 17:50:23', '2008-03-14 00:50:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (273, 5, 0, '2008-03-13 17:50:31', '2008-03-14 00:50:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (274, 5, 0, '2008-03-13 17:50:37', '2008-03-14 00:50:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (275, 5, 0, '2008-03-13 17:50:43', '2008-03-14 00:50:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (276, 5, 0, '2008-03-13 17:50:48', '2008-03-14 00:50:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (277, 5, 0, '2008-03-13 17:50:53', '2008-03-14 00:50:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (278, 5, 0, '2008-03-13 17:50:58', '2008-03-14 00:50:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (279, 5, 0, '2008-03-13 17:51:03', '2008-03-14 00:51:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (280, 5, 0, '2008-03-13 17:51:10', '2008-03-14 00:51:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (281, 5, 0, '2008-03-13 17:51:19', '2008-03-14 00:51:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (282, 5, 0, '2008-03-13 17:58:11', '2008-03-14 00:58:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (283, 5, 0, '2008-03-13 17:59:45', '2008-03-14 00:59:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (284, 5, 0, '2008-03-13 17:59:54', '2008-03-14 00:59:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (285, 5, 0, '2008-03-13 18:00:04', '2008-03-14 01:00:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (286, 5, 0, '2008-03-13 18:00:16', '2008-03-14 01:00:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (287, 5, 0, '2008-03-13 18:00:36', '2008-03-14 01:00:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (288, 5, 0, '2008-03-13 18:00:42', '2008-03-14 01:00:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (289, 5, 0, '2008-03-13 18:00:47', '2008-03-14 01:00:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (290, 5, 0, '2008-03-13 18:00:51', '2008-03-14 01:00:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (291, 5, 0, '2008-03-13 18:00:56', '2008-03-14 01:00:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (292, 5, 0, '2008-03-13 18:01:06', '2008-03-14 01:01:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (293, 5, 0, '2008-03-13 18:01:13', '2008-03-14 01:01:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (294, 5, 0, '2008-03-13 18:01:24', '2008-03-14 01:01:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (295, 5, 0, '2008-03-13 18:01:30', '2008-03-14 01:01:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (296, 5, 0, '2008-03-13 18:01:39', '2008-03-14 01:01:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (297, 5, 0, '2008-03-13 18:01:43', '2008-03-14 01:01:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (298, 6, 0, '2008-03-13 18:36:47', '2008-03-14 01:36:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (299, 5, 0, '2008-03-13 18:59:14', '2008-03-14 01:59:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (300, 5, 0, '2008-03-13 18:59:26', '2008-03-14 01:59:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (301, 5, 0, '2008-03-13 18:59:31', '2008-03-14 01:59:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (302, 5, 0, '2008-03-13 18:59:50', '2008-03-14 01:59:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (303, 5, 0, '2008-03-13 18:59:53', '2008-03-14 01:59:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (304, 5, 0, '2008-03-13 19:00:00', '2008-03-14 02:00:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (305, 5, 0, '2008-03-13 19:00:06', '2008-03-14 02:00:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (306, 5, 0, '2008-03-13 19:00:11', '2008-03-14 02:00:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (307, 5, 0, '2008-03-13 19:00:16', '2008-03-14 02:00:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (308, 5, 0, '2008-03-13 19:00:22', '2008-03-14 02:00:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (309, 5, 0, '2008-03-13 19:00:28', '2008-03-14 02:00:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (310, 5, 0, '2008-03-13 19:00:35', '2008-03-14 02:00:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (311, 5, 0, '2008-03-13 19:00:40', '2008-03-14 02:00:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (312, 5, 0, '2008-03-13 19:02:16', '2008-03-14 02:02:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (313, 5, 0, '2008-03-13 19:03:34', '2008-03-14 02:03:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (317, 6, 0, '2008-03-13 19:36:00', '2008-03-14 02:36:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (316, 5, 0, '2008-03-13 19:08:44', '2008-03-14 02:08:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (318, 6, 0, '2008-03-13 19:37:44', '2008-03-14 02:37:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (319, 6, 0, '2008-03-13 19:38:18', '2008-03-14 02:38:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (320, 6, 0, '2008-03-13 19:39:28', '2008-03-14 02:39:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (321, 6, 0, '2008-03-13 19:40:06', '2008-03-14 02:40:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (322, 6, 0, '2008-03-13 19:40:55', '2008-03-14 02:40:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (323, 7, 0, '2008-03-13 19:49:30', '2008-03-14 02:49:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (324, 7, 0, '2008-03-13 19:57:03', '2008-03-14 02:57:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (325, 7, 0, '2008-03-13 20:04:08', '2008-03-14 03:04:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (326, 8, 1, '2008-03-13 21:37:54', '2008-03-14 04:37:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (327, 7, 0, '2008-03-13 21:53:01', '2008-03-14 04:53:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (328, 7, 0, '2008-03-13 21:53:16', '2008-03-14 04:53:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (329, 7, 0, '2008-03-13 21:53:30', '2008-03-14 04:53:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (330, 7, 0, '2008-03-13 21:53:45', '2008-03-14 04:53:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (331, 7, 0, '2008-03-13 21:57:51', '2008-03-14 04:57:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (332, 9, 1, '2008-03-13 22:03:00', '2008-03-14 05:03:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (333, 9, 1, '2008-03-13 22:03:42', '2008-03-14 05:03:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (334, 9, 1, '2008-03-13 22:04:00', '2008-03-14 05:04:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (335, 9, 1, '2008-03-13 22:04:16', '2008-03-14 05:04:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (336, 7, 0, '2008-03-13 22:09:39', '2008-03-14 05:09:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (337, 8, 1, '2008-03-13 22:15:25', '2008-03-14 05:15:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (338, 8, 1, '2008-03-13 22:17:18', '2008-03-14 05:17:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (343, 9, 1, '2008-03-13 23:04:04', '2008-03-14 06:04:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (344, 9, 0, '2008-03-14 09:16:46', '2008-03-14 16:16:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (345, 8, 1, '2008-03-15 07:27:51', '2008-03-15 14:27:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (346, 8, 1, '2008-03-15 07:28:01', '2008-03-15 14:28:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (349, 3, 0, '2008-03-16 09:02:30', '2008-03-16 16:02:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (368, 9, 0, '2008-03-16 17:52:01', '2008-03-17 00:52:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (371, 9, 0, '2008-03-16 18:06:46', '2008-03-17 01:06:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (372, 9, 0, '2008-03-16 18:42:21', '2008-03-17 01:42:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (381, 7, 0, '2008-05-01 11:38:37', '2008-05-01 18:38:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (382, 7, 0, '2008-05-01 11:43:07', '2008-05-01 18:43:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (383, 7, 0, '2008-05-01 14:38:24', '2008-05-01 21:38:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (384, 7, 0, '2008-05-01 14:57:07', '2008-05-01 21:57:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (385, 7, 0, '2008-05-01 15:05:14', '2008-05-01 22:05:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (386, 7, 0, '2008-05-01 15:09:07', '2008-05-01 22:09:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (387, 7, 0, '2008-05-01 15:20:21', '2008-05-01 22:20:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (388, 7, 0, '2008-05-01 16:40:18', '2008-05-01 23:40:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (389, 7, 0, '2008-05-01 16:43:42', '2008-05-01 23:43:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (437, 2, 0, '2008-06-03 11:13:10', '2008-06-03 18:13:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (438, 7, 0, '2008-06-03 16:30:25', '2008-06-03 23:30:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (457, 6, 0, '2008-06-15 14:39:56', '2008-06-15 21:39:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (458, 7, 0, '2008-06-15 14:40:14', '2008-06-15 21:40:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (459, 7, 0, '2008-06-15 14:55:33', '2008-06-15 21:55:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (460, 7, 0, '2008-06-15 15:12:22', '2008-06-15 22:12:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (461, 7, 0, '2008-06-15 15:16:18', '2008-06-15 22:16:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (462, 7, 0, '2008-06-15 15:18:14', '2008-06-15 22:18:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (463, 7, 0, '2008-06-15 15:22:07', '2008-06-15 22:22:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (490, 6, 0, '2008-06-15 18:26:57', '2008-06-16 01:26:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (466, 7, 0, '2008-06-15 15:51:49', '2008-06-15 22:51:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (735, 7, 0, '2008-10-12 15:11:33', '2008-10-12 22:11:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (677, 7, 0, '2008-07-20 14:34:57', '2008-07-20 21:34:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (469, 7, 0, '2008-06-15 16:14:49', '2008-06-15 23:14:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (470, 6, 0, '2008-06-15 16:15:57', '2008-06-15 23:15:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (489, 6, 0, '2008-06-15 18:26:03', '2008-06-16 01:26:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (692, 7, 0, '2008-07-21 08:27:40', '2008-07-21 15:27:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (473, 7, 0, '2008-06-15 16:28:23', '2008-06-15 23:28:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (474, 7, 0, '2008-06-15 16:31:31', '2008-06-15 23:31:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (727, 7, 0, '2008-07-28 08:49:39', '2008-07-28 15:49:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (476, 6, 0, '2008-06-15 16:36:57', '2008-06-15 23:36:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (491, 7, 0, '2008-06-15 18:27:29', '2008-06-16 01:27:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (478, 7, 0, '2008-06-15 16:42:35', '2008-06-15 23:42:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (479, 7, 0, '2008-06-15 16:50:30', '2008-06-15 23:50:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (496, 7, 0, '2008-06-18 09:17:42', '2008-06-18 16:17:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (492, 7, 0, '2008-06-15 18:28:03', '2008-06-16 01:28:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (742, 7, 0, '2008-10-13 18:23:43', '2008-10-14 01:23:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (498, 7, 0, '2008-06-18 09:41:59', '2008-06-18 16:41:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (676, 6, 0, '2008-07-20 14:33:55', '2008-07-20 21:33:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (711, 7, 0, '2008-07-24 09:00:56', '2008-07-24 16:00:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (734, 7, 0, '2008-09-28 07:23:33', '2008-09-28 14:23:33');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'markdown', 'enabled', 1.12);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'selectbox_link_field', 'enabled', 1.18);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'debugdevkit', 'enabled', '1.0.8');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'export_ensemble', 'enabled', 1.11);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'jit_image_manipulation', 'enabled', 1.09);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'maintenance_mode', 'enabled', 1.2);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 5, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 5, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 4, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 4, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 8, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 8, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 9, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 9, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 9, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 9, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 9, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 9, '/backend/', 'AppendPageAlert', '__appendAlert');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Navigation', 'navigation', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Description', 'description', 'textarea', 1, 'no', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'URL', 'url', 'input', 2, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Heading', 'heading', 'input', 2, 'no', 8, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Description', 'description', 'textarea', 2, 'no', 12, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Body', 'body', 'textarea', 2, 'no', 13, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Sort', 'sort', 'input', 2, 'no', 14, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Navigation', 'navigation', 'selectbox_link', 2, 'no', 18, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Title', 'title', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'URL', 'url', 'input', 3, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Heading', 'heading', 'input', 3, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Description', 'description', 'textarea', 3, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Category', 'category', 'select', 3, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Body', 'body', 'textarea', 3, 'no', 5, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Sort', 'sort', 'input', 3, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Section', 'section', 'selectbox_link', 3, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Continent', 'continent', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Description', 'description', 'textarea', 4, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Country', 'country', 'input', 5, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Description', 'description', 'textarea', 5, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Name', 'name', 'input', 5, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Abbreviation', 'abbreviation', 'input', 5, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Currency', 'currency', 'input', 5, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Continent', 'continent', 'selectbox_link', 5, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Region', 'region', 'input', 6, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 6, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Type', 'type', 'select', 6, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Name', 'name', 'input', 6, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Country', 'country', 'selectbox_link', 6, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'City', 'city', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Region', 'region', 'select', 7, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Description', 'description', 'textarea', 7, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Time Zone', 'time-zone', 'input', 7, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Country', 'country', 'selectbox_link', 7, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Continent', 'continent', 'select', 7, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Geography', 'geography', 'select', 5, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Geography', 'geography', 'select', 7, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Area', 'area', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Description', 'description', 'textarea', 8, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Cities', 'cities', 'select', 8, 'no', 2, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Regions', 'regions', 'select', 8, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Countries', 'countries', 'select', 8, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Guide', 'guide', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Description', 'description', 'textarea', 9, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Title', 'title', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Guide', 'guide', 'select', 10, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Description', 'description', 'textarea', 10, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'City', 'city', 'selectbox_link', 10, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Address', 'address', 'textarea', 10, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Phone', 'phone', 'input', 10, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (56, 'Open', 'open', 'textarea', 10, 'no', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Admission', 'admission', 'checkbox', 10, 'no', 11, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Body', 'body', 'textarea', 10, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Tags', 'tags', 'taglist', 10, 'no', 12, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Heading', 'heading', 'input', 10, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'URL', 'url', 'input', 10, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Location', 'location', 'input', 10, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Feature', 'feature', 'select', 5, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'Feature', 'feature', 'select', 6, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Continent', 'continent', 'select', 6, 'no', 6, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Name', 'name', 'input', 4, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Geography', 'geography', 'select', 6, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Body', 'body', 'textarea', 7, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Body', 'body', 'textarea', 6, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Body', 'body', 'textarea', 5, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Body', 'body', 'textarea', 4, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Sort', 'sort', 'input', 9, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Feature', 'feature', 'select', 7, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'Code', 'code', 'textarea', 3, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (78, 'Guide', 'guide', 'select', 7, 'no', 9, 'sidebar', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Destinations', 'destinations', NULL, 'destination', 'destinations,feature_cities,feature_city,feature_continent,feature_continents,feature_countries,feature_country,feature_region,feature_regions,section,sections', 'login', 10);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'Corporate Information', 'information', NULL, 'content', 'corporate_information,section,sections', 'login', 12);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'RouteOne', 'routeone', NULL, NULL, 'routeone_navigation', 'login', 15);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, 10, 'Content', 'content', 'routeone', 'navigation/section/content/item/action/result', 'content,navigation_types,routeone_navigation,section_details,sections,table_of_contents', 'login,publish_content,publish_navigation,publish_section', 16);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (12, 10, 'Destinations', 'destinations', 'routeone', 'continent/country/region/city/guide/article', 'continent,continents,countries_by_continent,country,feature_cities,feature_countries,feature_regions,routeone_navigation', 'login,publish_continent,publish_country', 17);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (13, 12, 'Countries', 'countries', 'routeone/destinations', 'continent/country/region/city/guide/article', 'continent,continents,countries_by_continent,country,feature_countries,geography,region,regions,routeone_navigation', 'login,publish_city,publish_country,publish_region', 19);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (14, 12, 'Regions', 'regions', 'routeone/destinations', 'continent/country/region/city/guide/article', 'cities,city,continent,continents,countries_by_continent,country,feature_regions,geography,region,regions,routeone_navigation', 'login,publish_city,publish_region', 20);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (15, 12, 'Cities', 'cities', 'routeone/destinations', 'continent/country/region/city/guide/article', 'cities,cities_by_region,city,city_guide,city_guides,continent,continents,country,feature_cities,geography,region,regions,routeone_navigation', 'login,publish_city', 21);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, 13, 'Import', 'import', 'routeone/destinations/countries', 'continent/country/region/city/guide/article', 'continent,continents,countries_by_continent,country,country_codes,geography,routeone_navigation', 'login,publish_country', 22);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, 14, 'Import', 'import', 'routeone/destinations/regions', 'continent/country/region/city/guide/article', 'continent,continents,countries,countries_by_continent,country,region,regions,routeone_navigation,united_states_of_america', 'login,publish_region', 23);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, 12, 'City Guides', 'city-guides', 'routeone/destinations', 'continent/country/region/city/guide/article/action', 'article,articles,cities_by_region,city,city_guide,city_guides,continent,country,region,regions,routeone_navigation', 'login,publish_article,publish_city,publish_city_guide', 23);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, 12, 'Continents', 'continents', 'routeone/destinations', 'continent/country/region/city/guide/article', 'continent,continents,countries_by_continent,country,routeone_navigation', 'login,publish_continent,publish_country', 18);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (21, NULL, 'Guides', 'guides', NULL, 'destination/guide/article', 'articles_by_city_guide,city_guide,city_guides,feature_cities,feature_city,feature_continent,feature_continents,feature_countries,feature_country,feature_region,feature_regions,guide_cities,guide_city,guides_by_city,section,sections', 'login', 11);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (99, 2, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (97, 11, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (92, 12, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (93, 13, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (94, 14, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (95, 15, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (77, 16, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (78, 17, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (79, 18, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (96, 19, 'admin');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Navigation', 'navigation', 1, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Sections', 'sections', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Content', 'content', 3, 14, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Continents', 'continents', 4, NULL, 'asc', 'no', 'Destinations');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Countries', 'countries', 5, 20, 'asc', 'no', 'Destinations');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (6, 'Regions', 'regions', 6, NULL, 'asc', 'no', 'Destinations');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Cities', 'cities', 7, NULL, 'asc', 'no', 'Destinations');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Geography', 'geography', 8, NULL, 'asc', 'no', 'Destinations');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'City Guides', 'city-guides', 9, NULL, 'asc', 'no', 'Destinations');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Articles', 'articles', 10, NULL, 'asc', 'no', 'Destinations');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (8, 1, NULL, 2, 9, 'yes');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (217, 2, 3, 3, 17, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (218, 4, 18, 5, 25, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (220, 5, 20, 6, 36, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (223, 6, 26, 7, 32, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (224, 5, 20, 7, 35, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (225, 4, 18, 7, 37, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (219, 8, 40, 5, 38, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (227, 7, 31, 8, 43, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (228, 6, 26, 8, 44, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (229, 5, 20, 8, 45, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (230, 9, 46, 10, 49, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (231, 7, 31, 10, 51, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (221, 4, 18, 6, 65, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (222, 8, 40, 6, 67, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (226, 8, 40, 7, 68, 'no');
