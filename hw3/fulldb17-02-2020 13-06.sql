#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (7, 'enim');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'et');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'harum');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'illo');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'iusto');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'placeat');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'ut');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 100);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 96);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `friendship_status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (1, 22, 1, '2009-07-25 04:55:31', '2004-10-02 05:03:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (2, 13, 5, '1971-08-01 03:40:14', '1979-04-10 08:37:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (2, 20, 4, '2017-03-21 23:04:27', '1978-10-05 16:24:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (2, 43, 4, '2014-10-24 02:15:44', '1998-09-09 00:29:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (2, 67, 3, '2000-02-24 10:07:08', '2019-01-25 02:04:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (3, 60, 3, '1984-04-09 08:36:30', '2008-07-09 22:31:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (3, 78, 1, '2007-04-13 01:46:49', '1981-08-10 06:38:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (5, 76, 2, '2012-09-27 16:28:43', '1983-07-01 13:52:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (5, 90, 5, '1982-08-22 08:19:55', '1986-04-12 22:01:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (9, 11, 5, '1998-10-06 01:43:52', '1994-07-14 21:52:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (10, 35, 2, '2002-02-11 05:08:53', '2018-08-13 12:19:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (10, 81, 1, '1981-07-08 00:38:55', '1972-06-02 12:15:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (11, 23, 2, '1979-09-05 23:24:59', '1971-11-29 19:32:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (13, 55, 2, '1985-05-02 22:26:00', '1972-10-19 18:04:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (13, 73, 2, '1988-09-02 16:53:32', '1999-08-27 05:29:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (14, 5, 1, '2014-09-13 04:00:07', '1992-09-18 08:29:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (14, 11, 3, '2011-05-25 04:47:33', '1994-08-24 07:06:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (15, 72, 5, '1988-12-13 13:57:32', '1997-01-06 03:09:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (16, 40, 3, '1994-02-16 14:26:55', '1995-05-19 10:41:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (16, 54, 3, '1997-04-21 11:29:04', '1977-04-14 22:06:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (20, 97, 4, '1980-10-17 13:46:20', '1979-12-06 08:34:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (23, 24, 5, '1995-10-18 01:59:43', '1998-09-17 18:53:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (24, 70, 4, '2012-08-31 19:46:13', '2003-01-28 15:15:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (25, 25, 5, '1993-07-07 09:37:36', '1999-06-17 10:34:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (27, 49, 5, '1982-05-05 06:19:20', '2018-07-27 14:46:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (28, 56, 2, '1999-02-27 20:13:07', '2000-04-23 14:52:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (28, 99, 4, '1979-11-24 06:00:10', '1984-08-29 14:30:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (29, 8, 4, '2003-12-27 04:55:16', '1983-04-27 08:19:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (29, 97, 2, '1971-06-13 09:14:43', '1980-11-04 10:09:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (30, 74, 2, '1978-06-23 06:32:19', '1975-02-21 00:57:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (31, 9, 5, '2015-03-07 08:48:52', '1972-10-08 00:07:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (31, 21, 2, '1987-06-27 17:44:11', '1972-01-07 18:47:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (31, 73, 5, '2015-03-30 15:08:14', '1992-03-08 02:52:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (32, 60, 1, '2014-06-01 16:31:28', '1996-02-11 05:08:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (34, 10, 5, '1973-12-10 10:15:27', '1994-08-29 17:00:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (35, 16, 2, '1998-12-19 01:15:50', '1995-07-30 17:39:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (37, 54, 3, '1994-11-13 11:27:04', '1975-07-11 12:41:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (38, 22, 1, '2003-04-13 19:20:35', '1983-06-22 17:27:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (38, 26, 2, '2012-05-16 12:04:09', '1993-03-22 15:35:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (38, 67, 2, '1971-05-20 06:20:08', '1986-03-18 03:29:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (39, 48, 3, '1982-04-14 10:31:17', '1992-06-30 20:22:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (39, 73, 5, '2009-04-27 19:08:54', '2011-12-26 22:46:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (41, 17, 3, '1977-09-15 02:13:24', '2006-04-10 15:48:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (41, 51, 3, '2005-07-16 18:28:18', '2003-10-03 16:31:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (41, 64, 4, '1993-12-10 18:54:27', '1981-11-14 02:01:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (42, 38, 4, '2001-12-02 12:00:54', '2018-12-24 12:10:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (44, 34, 4, '1979-10-16 10:36:08', '2006-10-01 12:55:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (45, 68, 3, '2012-07-20 16:46:17', '2016-02-17 12:05:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (46, 34, 2, '2008-09-06 02:23:20', '1986-11-01 12:06:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (46, 42, 1, '1988-07-15 03:09:25', '2004-01-14 17:36:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (46, 61, 1, '1976-09-21 14:42:51', '1988-02-27 12:34:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (48, 45, 1, '2008-12-23 07:55:02', '2010-04-05 06:16:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (51, 14, 4, '2001-03-23 15:20:37', '1998-11-23 08:37:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (51, 61, 4, '1998-04-21 02:45:40', '1984-02-16 10:51:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (51, 100, 1, '1970-12-11 11:54:55', '1987-12-27 10:50:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (52, 6, 2, '1983-05-12 07:12:51', '1996-03-18 06:00:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (52, 74, 4, '2016-11-01 20:42:45', '1996-03-05 20:21:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (53, 91, 2, '1980-04-16 15:41:56', '2001-04-07 12:35:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (54, 1, 1, '1991-02-17 08:57:26', '1972-08-18 22:33:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (54, 51, 4, '1984-03-20 23:41:00', '1986-12-16 04:36:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (55, 78, 5, '2003-03-09 03:02:15', '1975-01-22 10:53:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (56, 45, 3, '1984-09-12 08:55:50', '2001-12-25 11:10:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (56, 66, 1, '2010-07-23 22:58:05', '2012-08-23 21:58:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (58, 16, 2, '1998-09-01 15:56:52', '1982-08-03 07:33:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (58, 68, 3, '1987-06-05 15:51:38', '2004-10-02 17:49:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (63, 12, 1, '1985-03-03 06:57:34', '1983-01-12 15:11:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (63, 83, 4, '2010-07-24 05:13:51', '2002-04-05 21:10:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (65, 56, 1, '2012-07-03 02:31:15', '2017-04-23 08:59:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (66, 44, 5, '2004-05-18 18:51:09', '1991-09-06 01:19:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (67, 70, 5, '1984-11-17 11:49:51', '2005-09-02 21:25:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (68, 5, 5, '1970-02-21 07:35:00', '2010-04-26 18:52:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (68, 24, 1, '1982-05-08 22:55:05', '2012-11-11 18:58:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (69, 10, 1, '2015-06-05 10:28:35', '1997-08-03 12:55:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (69, 61, 1, '1989-04-23 12:16:30', '1986-01-04 22:20:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (70, 35, 1, '1976-06-20 20:27:24', '1993-02-13 01:16:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (72, 9, 5, '2017-08-23 15:07:01', '1985-10-28 17:34:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (72, 91, 4, '1975-01-09 15:59:58', '1979-11-04 04:39:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (73, 67, 3, '2016-11-17 16:07:44', '2006-04-23 19:59:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (74, 51, 5, '2001-05-17 19:51:28', '1985-07-06 08:09:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (74, 54, 3, '2011-12-08 01:43:15', '2018-12-18 09:51:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (76, 41, 4, '1988-10-22 06:20:56', '1993-08-21 18:33:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (77, 33, 2, '1971-11-27 22:41:02', '1977-04-16 08:27:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (78, 36, 5, '2004-03-27 11:05:52', '1995-01-21 07:08:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (78, 48, 1, '1995-01-02 08:46:22', '1970-07-27 11:09:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (81, 21, 5, '2015-03-03 01:50:36', '1971-06-04 23:13:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (83, 4, 4, '1997-03-18 05:59:01', '1973-07-07 12:05:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (83, 40, 4, '2004-03-06 05:01:52', '1970-05-13 08:32:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (83, 80, 2, '1994-07-04 15:29:49', '1985-08-29 04:26:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (85, 17, 3, '2010-11-25 21:29:15', '1997-08-28 02:19:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (85, 51, 2, '1974-01-18 19:18:02', '2018-04-03 09:11:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (86, 36, 1, '1984-11-02 14:49:50', '1992-04-07 14:31:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (87, 42, 3, '1980-04-11 16:25:03', '1971-05-24 16:23:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (87, 60, 2, '1991-04-03 06:32:12', '2002-03-24 23:56:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (88, 78, 3, '1996-11-28 19:25:51', '2012-08-13 14:34:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (90, 36, 3, '2013-03-19 16:40:50', '1998-07-10 21:33:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (94, 29, 5, '1994-04-19 16:01:19', '1987-10-30 04:06:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (95, 43, 4, '2016-08-05 17:04:29', '1983-11-03 07:46:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (96, 92, 3, '2004-04-24 20:35:09', '1992-04-07 22:13:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (97, 24, 4, '2001-02-06 09:14:32', '2013-12-05 02:14:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`) VALUES (99, 86, 3, '2005-05-22 15:29:41', '1972-05-29 14:43:48');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'animi');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'at');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'facere');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (5, 'ut');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'voluptatem');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 3, 14, 'rerum', 32, NULL, '2015-01-13 07:37:38', '2000-09-30 07:11:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 4, 86, 'unde', 35, NULL, '1987-05-19 15:13:14', '1975-01-23 04:10:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 2, 16, 'porro', 11, NULL, '1989-07-05 17:35:05', '1992-08-26 07:55:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 97, 'vitae', 24, NULL, '2018-11-12 16:09:49', '1973-08-18 19:05:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 2, 15, 'explicabo', 26, NULL, '1997-05-16 18:45:30', '1980-03-02 02:24:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 5, 16, 'aut', 36, NULL, '1991-03-24 15:53:57', '1981-08-13 21:22:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 1, 7, 'veritatis', 44, NULL, '1976-06-10 05:13:27', '2005-06-06 23:47:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 3, 17, 'modi', 32, NULL, '2010-06-12 12:09:26', '1990-01-08 13:19:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 2, 13, 'commodi', 46, NULL, '2017-08-13 09:30:11', '1970-09-11 09:06:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 2, 74, 'sed', 41, NULL, '1986-10-29 20:31:27', '2015-12-16 10:15:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 97, 'cum', 34, NULL, '2005-04-24 22:59:13', '2012-05-18 05:39:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 1, 29, 'quidem', 29, NULL, '1993-08-12 06:57:49', '2000-03-25 16:20:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 4, 44, 'consequatur', 33, NULL, '1998-05-31 02:30:42', '2012-08-02 13:40:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 4, 81, 'temporibus', 34, NULL, '1996-04-18 02:44:39', '2018-06-10 03:52:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 4, 10, 'itaque', 26, NULL, '1994-05-01 02:20:40', '1978-10-08 09:21:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 31, 'molestiae', 49, NULL, '2018-05-01 20:37:06', '1971-08-04 13:35:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 74, 'sequi', 30, NULL, '2008-07-07 10:58:26', '2011-01-23 17:39:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 1, 53, 'et', 23, NULL, '1980-10-20 21:43:51', '2009-01-04 12:12:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 5, 28, 'nemo', 14, NULL, '1972-12-11 12:13:45', '2013-05-14 18:11:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 3, 22, 'architecto', 45, NULL, '2013-09-11 03:20:54', '1986-06-11 22:51:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 3, 38, 'sint', 10, NULL, '1970-01-13 09:35:43', '1990-09-11 20:36:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 2, 55, 'voluptas', 26, NULL, '1970-10-10 11:34:40', '1996-11-26 19:29:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 3, 96, 'eius', 28, NULL, '1970-06-09 21:55:29', '2009-03-16 02:41:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 4, 74, 'voluptatem', 27, NULL, '1974-01-10 05:55:56', '1982-04-13 01:23:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 1, 92, 'est', 8, NULL, '1998-11-07 16:58:48', '1971-07-31 01:01:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 3, 26, 'exercitationem', 4, NULL, '2002-11-10 19:26:37', '2018-04-08 05:06:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 5, 55, 'error', 43, NULL, '1979-04-24 07:25:43', '1972-05-27 12:52:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 3, 61, 'laudantium', 9, NULL, '2009-12-07 16:39:41', '1982-01-10 09:14:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 5, 27, 'unde', 15, NULL, '1984-08-09 07:09:44', '1991-04-05 18:36:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 3, 78, 'praesentium', 31, NULL, '2009-03-12 17:14:47', '2018-02-18 00:55:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 2, 47, 'architecto', 8, NULL, '2014-04-30 12:42:46', '1973-07-04 01:39:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 1, 60, 'qui', 45, NULL, '1975-03-24 17:09:39', '2003-07-16 23:48:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 2, 23, 'deserunt', 18, NULL, '1980-09-14 04:08:42', '1997-04-11 14:52:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 1, 11, 'nisi', 18, NULL, '1976-11-23 07:23:28', '1972-02-11 15:24:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 3, 62, 'et', 18, NULL, '2005-02-15 05:25:43', '1994-06-18 23:19:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 2, 94, 'aut', 35, NULL, '1998-02-17 05:57:14', '2014-05-25 06:02:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 5, 69, 'et', 19, NULL, '2018-04-25 19:14:13', '1987-02-08 03:38:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 44, 'saepe', 50, NULL, '2014-06-28 06:29:31', '1986-09-19 18:07:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 4, 19, 'iste', 50, NULL, '1983-03-23 00:02:00', '1970-07-18 18:02:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 1, 73, 'rerum', 27, NULL, '1993-01-29 14:00:19', '1976-09-05 23:44:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 65, 'dicta', 47, NULL, '1977-02-23 11:26:25', '1997-11-26 05:34:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 5, 98, 'dolor', 36, NULL, '2003-06-15 07:40:45', '2013-08-19 11:46:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 53, 'in', 1, NULL, '1977-09-16 05:46:12', '1973-04-06 05:06:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 3, 18, 'consequatur', 38, NULL, '1975-11-05 12:29:00', '1972-02-02 07:24:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 4, 1, 'magni', 37, NULL, '2001-04-24 15:11:21', '1993-07-05 12:03:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 5, 16, 'expedita', 22, NULL, '2008-10-12 13:28:24', '1990-04-12 04:07:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 3, 2, 'nemo', 43, NULL, '2009-04-22 08:44:45', '2014-11-19 16:59:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 4, 68, 'culpa', 15, NULL, '1973-07-13 22:58:11', '1986-04-12 11:36:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 2, 88, 'quia', 49, NULL, '1982-07-08 01:33:55', '1971-02-09 12:06:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 4, 75, 'qui', 2, NULL, '1994-09-24 16:24:37', '1974-12-11 17:50:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 3, 9, 'placeat', 40, NULL, '1973-06-29 01:11:41', '1983-04-27 05:37:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 4, 48, 'reiciendis', 10, NULL, '1971-07-30 23:51:29', '1971-03-05 04:09:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 4, 16, 'ab', 45, NULL, '1979-09-14 22:46:41', '1976-04-04 18:23:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 5, 43, 'dolorum', 39, NULL, '1998-04-19 09:06:42', '1987-07-21 09:47:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 2, 8, 'dignissimos', 22, NULL, '2013-09-07 16:02:29', '1991-04-07 03:16:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 45, 'officiis', 13, NULL, '2012-05-14 12:56:36', '1998-07-13 10:53:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 4, 15, 'magni', 34, NULL, '2003-05-06 18:06:11', '1994-08-03 04:48:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 3, 92, 'id', 9, NULL, '1980-11-28 16:45:37', '2006-08-18 18:00:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 4, 100, 'in', 30, NULL, '1995-01-25 19:23:08', '1999-06-15 19:17:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 1, 47, 'consequatur', 23, NULL, '1970-04-18 18:01:01', '2014-07-24 21:39:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 5, 'reprehenderit', 3, NULL, '1991-06-17 08:41:07', '1984-05-04 21:19:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 4, 47, 'dolor', 13, NULL, '1991-11-18 15:18:51', '2010-11-12 04:00:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 1, 38, 'quos', 13, NULL, '2009-09-08 14:14:50', '1984-01-22 03:57:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 1, 31, 'iusto', 4, NULL, '1978-06-20 16:02:07', '1999-12-26 09:42:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 92, 'et', 47, NULL, '1977-12-20 08:52:02', '1981-06-04 20:34:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 73, 'maiores', 1, NULL, '1977-02-19 23:27:38', '2002-07-02 07:48:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 1, 74, 'reprehenderit', 5, NULL, '1983-10-23 11:19:10', '1996-06-17 01:47:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 1, 78, 'quis', 47, NULL, '1982-08-18 08:29:39', '1988-02-06 23:13:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 5, 11, 'et', 48, NULL, '2018-05-07 13:43:50', '2004-08-09 11:06:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 2, 24, 'aspernatur', 3, NULL, '1973-03-07 05:40:53', '2012-08-18 23:22:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 1, 37, 'necessitatibus', 34, NULL, '1980-11-28 16:32:20', '2016-01-07 06:42:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 4, 91, 'consequatur', 42, NULL, '2000-09-25 00:49:09', '1995-07-27 04:13:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 3, 10, 'et', 27, NULL, '1991-07-13 13:17:07', '1970-10-22 17:07:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 5, 18, 'ipsum', 33, NULL, '1986-02-15 20:08:20', '2011-05-30 22:10:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 1, 92, 'dolor', 14, NULL, '2017-03-10 16:08:21', '1980-10-15 11:01:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 4, 10, 'quidem', 1, NULL, '2011-08-21 23:33:09', '1971-10-03 18:45:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 5, 26, 'nihil', 34, NULL, '2002-09-17 18:06:51', '1982-10-29 04:24:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 2, 'dicta', 38, NULL, '1996-08-29 12:12:37', '1980-12-21 23:44:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 4, 70, 'est', 8, NULL, '1970-12-27 14:14:58', '1981-09-21 13:34:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 2, 88, 'molestiae', 49, NULL, '1983-11-26 23:47:25', '2002-05-29 12:22:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 4, 38, 'aliquid', 23, NULL, '1999-05-22 12:51:33', '1985-07-12 23:27:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 3, 61, 'culpa', 9, NULL, '1973-10-01 03:35:18', '1982-04-17 01:14:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 1, 80, 'ut', 8, NULL, '2003-03-29 11:54:42', '1980-11-19 03:31:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 2, 1, 'aut', 11, NULL, '1992-08-06 11:47:01', '1984-08-07 11:42:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 5, 60, 'non', 38, NULL, '2002-08-30 04:37:06', '1986-03-29 11:04:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 8, 'et', 36, NULL, '2018-04-28 18:52:30', '2011-03-28 06:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 5, 91, 'voluptas', 6, NULL, '2002-11-28 17:59:01', '1974-06-05 15:03:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 5, 46, 'quod', 32, NULL, '2014-01-26 17:41:01', '1992-12-21 04:59:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 5, 81, 'illum', 46, NULL, '2000-12-03 23:09:40', '1980-03-21 05:02:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 4, 9, 'dolorum', 3, NULL, '1999-03-25 23:33:19', '1979-12-25 02:59:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 4, 27, 'dolor', 36, NULL, '1996-09-08 08:52:26', '1983-01-30 11:36:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 1, 68, 'quasi', 17, NULL, '2012-02-10 22:17:34', '1983-05-10 19:57:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 74, 'voluptates', 20, NULL, '2006-01-03 11:51:44', '2000-09-27 17:24:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 4, 15, 'quis', 15, NULL, '1976-06-23 19:29:20', '2012-10-17 01:35:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 3, 3, 'quas', 33, NULL, '2001-03-13 20:59:29', '1979-05-24 07:46:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 4, 'consequatur', 5, NULL, '2019-11-25 14:28:26', '1988-09-20 08:56:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 62, 'ex', 21, NULL, '1994-12-16 08:58:35', '2015-08-13 21:19:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 4, 51, 'alias', 16, NULL, '1975-04-26 23:09:19', '1972-10-14 10:18:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 3, 4, 'repellat', 18, NULL, '1981-07-13 17:17:49', '1972-07-31 05:52:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 3, 31, 'temporibus', 3, NULL, '1991-01-14 16:34:50', '2014-09-02 01:42:27');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'aut');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'est');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'explicabo');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'nam');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'sed');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 2, 12, 'I shall ever see you again, you dear old thing!\' said Alice, feeling very glad to find that her neck would bend about easily in any direction, like a wild beast, screamed \'Off with her head! Off--\'.', 1, 1, '2000-08-22 07:07:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 34, 60, 'King said, with a yelp of delight, which changed into alarm in another moment down went Alice like the largest telescope that ever was! Good-bye, feet!\' (for when she was coming to, but it all is!.', 0, 1, '2016-06-30 01:30:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 88, 45, 'Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three of the birds and animals that had fallen into the roof of the crowd below, and there they lay.', 0, 1, '1972-06-18 12:47:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 37, 50, 'I get\" is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as she could have been a holiday?\' \'Of course it is,\' said the Duchess: \'flamingoes and.', 0, 0, '1996-01-17 10:19:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 20, 9, 'When I used to queer things happening. While she was talking. \'How CAN I have done that, you know,\' Alice gently remarked; \'they\'d have been changed for Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF.', 1, 1, '2003-08-08 03:36:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 85, 61, 'Dormouse. \'Write that down,\' the King repeated angrily, \'or I\'ll have you got in your pocket?\' he went on again:-- \'You may go,\' said the King: \'leave out that one of the shepherd boy--and the.', 1, 0, '2004-12-21 19:50:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 24, 68, 'Queen said severely \'Who is this?\' She said this she looked up and throw us, with the clock. For instance, if you like!\' the Duchess was sitting on a branch of a water-well,\' said the Mouse. \'Of.', 0, 1, '2008-01-30 09:27:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 58, 51, 'Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like to try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all the creatures order one.', 1, 0, '2003-07-17 00:29:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 76, 78, 'CHAPTER III. A Caucus-Race and a large pool all round her head. Still she went on in the sea. The master was an old crab, HE was.\' \'I never was so small as this before, never! And I declare it\'s too.', 0, 0, '1976-08-26 22:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 94, 41, 'Caterpillar; and it was only sobbing,\' she thought, and rightly too, that very few things indeed were really impossible. There seemed to think about it, and yet it was certainly English. \'I don\'t.', 0, 0, '1978-05-27 12:43:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 13, 75, 'Duchess: \'flamingoes and mustard both bite. And the Gryphon answered, very nearly getting up and to wonder what they said. The executioner\'s argument was, that anything that looked like the Mock.', 0, 0, '1979-12-02 07:50:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 6, 29, 'Alice dodged behind a great thistle, to keep herself from being run over; and the moon, and memory, and muchness--you know you say \"What a pity!\"?\' the Rabbit angrily. \'Here! Come and help me out of.', 0, 1, '2006-04-20 11:35:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 69, 98, 'King triumphantly, pointing to the beginning of the what?\' said the Queen, tossing her head struck against the door, staring stupidly up into the jury-box, and saw that, in her life, and had just.', 0, 1, '2018-10-20 08:35:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 40, 'Alice to find that she was looking down at her feet as the large birds complained that they would die. \'The trial cannot proceed,\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked.', 1, 1, '1993-01-01 19:02:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 45, 66, 'Hatter. \'It isn\'t directed at all,\' said the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder what I eat\" is the use of this remark, and thought it over a little timidly: \'but it\'s no.', 0, 0, '2017-05-25 12:49:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 69, 47, 'At this moment Alice felt so desperate that she let the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the.', 1, 0, '1976-06-08 10:03:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 78, 2, 'I can listen all day about it!\' and he wasn\'t one?\' Alice asked. The Hatter was the matter on, What would become of me?\' Luckily for Alice, the little door was shut again, and did not look at it!\'.', 0, 1, '1985-01-06 00:03:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 7, 65, 'And oh, I wish you could keep it to half-past one as long as there seemed to have finished,\' said the White Rabbit, trotting slowly back again, and Alice heard the Queen said to the croquet-ground..', 1, 0, '1978-10-06 09:04:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 46, 43, 'Queen to-day?\' \'I should think it would all wash off in the sea, some children digging in the chimney as she had but to her feet, for it now, I suppose, by being drowned in my own tears! That WILL.', 0, 0, '1977-07-12 15:00:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 14, 66, 'Mouse, who seemed to Alice as he spoke, and added with a trumpet in one hand, and made a dreadfully ugly child: but it said in a large cat which was sitting on the Duchess\'s cook. She carried the.', 0, 0, '1971-10-18 07:06:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 52, 98, 'However, \'jury-men\' would have called him Tortoise because he was speaking, and this was of very little way forwards each time and a Long Tale They were indeed a queer-looking party that assembled.', 1, 1, '1981-06-23 22:43:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 26, 76, 'I\'ll stay down here! It\'ll be no use speaking to it,\' she thought, \'and hand round the court and got behind Alice as he spoke. \'UNimportant, of course, Alice could only see her. She is such a nice.', 1, 0, '1982-06-25 05:49:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 66, 84, 'I learn music.\' \'Ah! that accounts for it,\' said the Duchess, who seemed too much pepper in my life!\' She had just begun to think that very few little girls in my kitchen AT ALL. Soup does very well.', 1, 0, '1975-04-24 22:40:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 26, 42, 'Duchess said in a court of justice before, but she got up in a great hurry to change the subject. \'Go on with the bones and the King had said that day. \'No, no!\' said the cook. The King laid his.', 1, 1, '2014-06-28 02:41:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 62, 20, 'After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, who said in a very respectful tone, but frowning and making quite a commotion in the pool, and.', 0, 0, '1993-02-04 09:03:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 82, 75, 'Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her arm, with its legs hanging down, but generally, just as if she meant to take the place of the busy.', 0, 0, '1991-11-18 23:27:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 94, 87, 'I BEG your pardon!\' cried Alice again, in a very decided tone: \'tell her something worth hearing. For some minutes the whole court was in confusion, getting the Dormouse went on, half to herself,.', 1, 1, '2011-04-27 08:50:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 3, 62, 'I don\'t know the meaning of it now in sight, and no room at all fairly,\' Alice began, in a fight with another dig of her age knew the name of nearly everything there. \'That\'s the first minute or.', 1, 0, '2005-02-16 05:01:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 84, 17, 'The Hatter looked at the sides of it, and they can\'t prove I did: there\'s no harm in trying.\' So she set to work nibbling at the beginning,\' the King say in a shrill, loud voice, and see how the.', 0, 0, '1982-04-19 02:06:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 2, 29, 'Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter and the executioner went off like an arrow. The Cat\'s head began fading away the moment she felt that.', 0, 1, '1989-01-18 15:03:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 82, 70, 'Duchess, \'and that\'s the jury-box,\' thought Alice, \'and why it is you hate--C and D,\' she added in an angry tone, \'Why, Mary Ann, and be turned out of a candle is blown out, for she was quite pale.', 0, 0, '1995-10-06 01:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 76, 59, 'Alice. \'It must be the right height to be.\' \'It is wrong from beginning to feel very queer indeed:-- \'\'Tis the voice of the lefthand bit of the house!\' (Which was very provoking to find any. And yet.', 1, 1, '1989-05-11 12:48:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 71, 82, 'Dormouse!\' And they pinched it on both sides at once. The Dormouse shook its head impatiently, and walked two and two, as the Rabbit, and had just succeeded in curving it down \'important,\' and some.', 1, 1, '1978-05-21 09:42:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 24, 17, 'Dormouse\'s place, and Alice heard the Rabbit was no longer to be sure, this generally happens when you have just been reading about; and when Alice had no reason to be lost, as she could. \'No,\' said.', 0, 0, '1973-10-23 16:48:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 25, 38, 'The long grass rustled at her feet, for it to half-past one as long as there was silence for some time without interrupting it. \'They must go by the English, who wanted leaders, and had been broken.', 1, 0, '1995-05-27 14:11:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 82, 76, 'I am in the lock, and to stand on your shoes and stockings for you now, dears? I\'m sure I don\'t take this young lady tells us a story.\' \'I\'m afraid I don\'t take this child away with me,\' thought.', 1, 0, '2015-06-16 03:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 36, 8, 'She pitied him deeply. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the.', 0, 0, '1972-02-11 07:21:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 52, 1, 'I wonder?\' As she said to herself, \'after such a curious dream!\' said Alice, \'because I\'m not the smallest notice of them with one finger, as he came, \'Oh! the Duchess, \'chop off her knowledge, as.', 1, 0, '1980-02-05 09:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 91, 78, 'ME, and told me you had been broken to pieces. \'Please, then,\' said Alice, feeling very glad she had plenty of time as she did not look at it!\' This speech caused a remarkable sensation among the.', 0, 1, '1981-04-20 22:23:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 43, 52, 'The hedgehog was engaged in a furious passion, and went on growing, and growing, and she was small enough to look for her, and she crossed her hands on her hand, and Alice was only a child!\' The.', 1, 1, '1984-07-20 22:39:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 97, 24, 'Cat, and vanished again. Alice waited a little, half expecting to see what was the White Rabbit cried out, \'Silence in the house till she shook the house, and the blades of grass, but she knew that.', 0, 1, '2006-12-22 22:41:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 26, 91, 'Mary Ann, what ARE you talking to?\' said one of the house, and have next to her. The Cat seemed to be a lesson to you never even spoke to Time!\' \'Perhaps not,\' Alice replied eagerly, for she felt.', 0, 1, '1995-10-17 23:35:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 11, 29, 'Duchess replied, in a deep voice, \'are done with a growl, And concluded the banquet--] \'What IS a long hookah, and taking not the smallest notice of her voice. Nobody moved. \'Who cares for you?\'.', 0, 0, '1980-05-27 00:28:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 52, 95, 'I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she squeezed herself up and picking the daisies, when suddenly a footman in livery came running out of their hearing her; and the Queen, and.', 1, 1, '1976-02-18 14:06:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 54, 'I can\'t remember,\' said the Mouse to Alice for protection. \'You shan\'t be able! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography..', 1, 0, '2014-12-27 13:47:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 24, 26, 'Mock Turtle: \'crumbs would all wash off in the distance, and she hurried out of its little eyes, but it had entirely disappeared; so the King say in a great hurry to change the subject. \'Go on with.', 1, 0, '2015-11-01 14:27:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 23, 99, 'There\'s no pleasing them!\' Alice was too much pepper in my time, but never ONE with such a long argument with the Lory, with a trumpet in one hand and a Long Tale They were just beginning to grow up.', 1, 1, '2016-03-31 12:17:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 85, 94, 'I to get out at the beginning,\' the King said, with a whiting. Now you know.\' Alice had begun to dream that she knew the right size again; and the other two were using it as a lark, And will talk in.', 0, 0, '1978-03-16 12:56:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 81, 9, 'I beat him when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter went on muttering over the edge of her knowledge. \'Just think of.', 1, 0, '1989-08-27 14:31:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 10, 6, 'Let this be a Caucus-race.\' \'What IS a Caucus-race?\' said Alice; \'I might as well wait, as she could, \'If you please, sir--\' The Rabbit Sends in a very grave voice, \'until all the children she knew,.', 1, 1, '2008-09-03 00:06:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 46, 92, 'Alice glanced rather anxiously at the Gryphon answered, very nearly in the back. However, it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the little.', 0, 0, '1985-10-11 05:06:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 81, 81, 'YET,\' she said to the shore. CHAPTER III. A Caucus-Race and a fall, and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals.', 0, 1, '1997-05-31 23:28:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 99, 32, 'Alice desperately: \'he\'s perfectly idiotic!\' And she tried the effect of lying down with wonder at the bottom of a book,\' thought Alice \'without pictures or conversations?\' So she began: \'O Mouse,.', 1, 1, '1996-10-22 14:12:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 82, 90, 'There\'s no pleasing them!\' Alice was beginning to end,\' said the King, the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Cat. \'I don\'t think--\' \'Then you.', 1, 1, '2007-06-08 18:22:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 9, 24, 'You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was no label this time she found herself in a tone of this rope--Will the roof of the Lizard\'s.', 0, 1, '1990-05-26 02:45:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 41, 6, 'Alice, looking down at once, while all the while, till at last it unfolded its arms, took the hookah out of the Lobster Quadrille?\' the Gryphon at the top of her head through the wood. \'It\'s the.', 1, 1, '2007-06-07 07:56:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 48, 67, 'LOVE). Oh dear, what nonsense I\'m talking!\' Just then she noticed that one of the garden: the roses growing on it but tea. \'I don\'t see how the Dodo in an offended tone. And the Gryphon went on,.', 0, 1, '2000-12-08 07:33:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 96, 59, 'I\'ll kick you down stairs!\' \'That is not said right,\' said the White Rabbit was still in existence; \'and now for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me.', 0, 1, '1997-05-27 21:51:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 96, 48, 'So they sat down, and felt quite strange at first; but she thought it would be grand, certainly,\' said Alice in a tone of delight, and rushed at the end.\' \'If you didn\'t sign it,\' said Alice a good.', 0, 0, '1976-10-16 03:38:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 53, 41, 'I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Nothing whatever,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon answered, very.', 1, 1, '1981-01-26 22:06:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 1, 77, 'I think?\' \'I had NOT!\' cried the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said with a great hurry. \'You did!\' said the Caterpillar seemed to be a grin, and she very seldom followed it),.', 1, 0, '1981-02-09 14:45:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 66, 24, 'SAID was, \'Why is a long hookah, and taking not the smallest idea how confusing it is almost certain to disagree with you, sooner or later. However, this bottle does. I do it again and again.\' \'You.', 0, 0, '1978-04-16 07:40:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 75, 51, 'For this must ever be A secret, kept from all the time they were trying which word sounded best. Some of the court. All this time she had got so close to her, And mentioned me to sell you a present.', 1, 1, '2002-07-21 22:09:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 17, 56, 'Footman continued in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same solemn tone, only changing.', 1, 0, '1976-02-14 00:22:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 59, 27, 'Alice in a melancholy way, being quite unable to move. She soon got it out to her great disappointment it was only the pepper that makes the world am I? Ah, THAT\'S the great puzzle!\' And she went.', 0, 0, '1995-02-03 19:57:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 61, 5, 'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was speaking, and this time with the Lory, who at last came a little sharp bark just over her head struck against the roof was.', 0, 0, '1990-07-15 18:34:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 18, 42, 'So she began thinking over all she could guess, she was playing against herself, for this time she had nothing else to do, and in THAT direction,\' waving the other side. The further off from England.', 0, 1, '1999-12-14 01:34:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 86, 17, 'I\'ve often seen them so often, you know.\' Alice had been for some way of expressing yourself.\' The baby grunted again, so violently, that she was near enough to look at it!\' This speech caused a.', 1, 1, '1987-10-29 11:21:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 74, 68, 'First, because I\'m on the bank, with her head! Off--\' \'Nonsense!\' said Alice, \'I\'ve often seen them so often, of course had to be rude, so she turned away. \'Come back!\' the Caterpillar took the.', 1, 0, '1980-12-09 06:15:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 6, 83, 'So they sat down, and felt quite strange at first; but she felt a violent shake at the jury-box, and saw that, in her head, and she was nine feet high, and she did not dare to laugh; and, as there.', 1, 0, '1989-03-09 08:53:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 91, 47, 'IS it to make out who I am! But I\'d better take him his fan and a pair of gloves and the words \'DRINK ME,\' but nevertheless she uncorked it and put it right; \'not that it was certainly too much.', 0, 0, '1991-11-26 02:21:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 88, 39, 'Alice as she was beginning to write this down on their faces, and the pair of white kid gloves while she ran, as well say,\' added the Gryphon, with a little scream, half of fright and half believed.', 1, 1, '2003-08-29 00:20:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 14, 83, 'I could say if I might venture to say \'Drink me,\' but the great puzzle!\' And she began very cautiously: \'But I don\'t keep the same thing a bit!\' said the Dormouse; \'--well in.\' This answer so.', 1, 0, '1997-06-26 06:44:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 97, 9, 'Mock Turtle. \'Hold your tongue!\' said the King, rubbing his hands; \'so now let the Dormouse turned out, and, by the pope, was soon left alone. \'I wish the creatures argue. It\'s enough to try the.', 0, 1, '1999-05-20 12:47:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 30, 50, 'Classics master, though. He was an old Crab took the place of the room again, no wonder she felt sure it would not open any of them. However, on the ground near the house before she came up to the.', 0, 0, '2015-05-31 15:19:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 49, 31, 'Writhing, of course, to begin with,\' the Mock Turtle, \'but if you\'ve seen them so shiny?\' Alice looked very uncomfortable. The first witness was the BEST butter, you know.\' \'I don\'t think--\' \'Then.', 0, 1, '2005-07-19 16:01:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 26, 15, 'Mock Turtle said with some curiosity. \'What a funny watch!\' she remarked. \'It tells the day of the other side will make you dry enough!\' They all sat down again into its eyes again, to see the.', 0, 1, '1980-11-21 03:45:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 54, 1, 'CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a table set out under a tree in the after-time, be herself a grown woman; and how she was saying, and the pool a little pattering of feet in.', 1, 1, '1970-12-20 13:01:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 66, 71, 'Alice; but she did not much larger than a real nose; also its eyes were nearly out of court! Suppress him! Pinch him! Off with his head!\' or \'Off with her friend. When she got up, and reduced the.', 0, 0, '2007-02-12 18:20:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 56, 25, 'March Hare took the thimble, looking as solemn as she heard a little three-legged table, all made of solid glass; there was a large arm-chair at one and then all the things get used to it as you.', 1, 1, '2003-07-14 06:55:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 97, 17, 'Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be so stingy about it, and found quite a conversation of it in a furious passion, and went stamping about, and.', 1, 1, '1977-09-21 05:10:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 29, 14, 'Alice thought the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no sorrow, you know. But do cats eat bats, I wonder?\' And here Alice began in a great many.', 1, 0, '2016-09-13 16:50:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 58, 14, 'Queen say only yesterday you deserved to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to her chin in salt water. Her first idea was that you never to lose YOUR.', 1, 1, '1973-05-09 07:45:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 30, 31, 'RED rose-tree, and we put a white one in by mistake; and if it had fallen into a sort of life! I do hope it\'ll make me grow large again, for really I\'m quite tired and out of the creature, but on.', 0, 1, '1995-01-22 05:01:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 82, 36, 'What would become of me? They\'re dreadfully fond of beheading people here; the great concert given by the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\'.', 0, 0, '1993-12-07 21:44:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 13, 72, 'Alice put down the little golden key and hurried off at once, while all the first figure,\' said the King, the Queen, \'and take this young lady tells us a story.\' \'I\'m afraid I am, sir,\' said Alice;.', 0, 0, '2006-02-07 06:18:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 82, 1, 'That he met in the lap of her own ears for having missed their turns, and she told her sister, who was peeping anxiously into her eyes; and once she remembered trying to explain the mistake it had.', 1, 1, '2000-11-26 06:40:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 11, 95, 'Gryphon, and the reason and all the time he was going to remark myself.\' \'Have you seen the Mock Turtle is.\' \'It\'s the thing at all. \'But perhaps it was growing, and growing, and growing, and she.', 1, 0, '1988-08-25 20:47:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 83, 8, 'CHAPTER VI. Pig and Pepper For a minute or two, and the Queen to-day?\' \'I should like to see that queer little toss of her going, though she knew the meaning of half an hour or so there were no.', 1, 1, '2006-12-01 12:17:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 3, 13, 'Hatter, \'I cut some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse gave a look askance-- Said he thanked the whiting kindly, but he could think of any use, now,\' thought.', 1, 1, '2005-04-01 04:42:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 57, 52, 'Alice panted as she swam about, trying to explain it as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course had to double themselves up and ran till she got up, and.', 0, 0, '1975-11-04 19:50:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 43, 83, 'I must be shutting up like telescopes: this time it vanished quite slowly, beginning with the clock. For instance, if you drink much from a bottle marked \'poison,\' it is right?\' \'In my youth,\'.', 1, 0, '1976-03-29 11:46:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 66, 97, 'I only knew how to speak with. Alice waited a little, half expecting to see what was coming. It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an.', 0, 1, '1998-08-25 18:35:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 83, 31, 'Caterpillar. This was such a thing. After a while, finding that nothing more to come, so she helped herself to some tea and bread-and-butter, and then raised himself upon tiptoe, put his shoes on..', 1, 1, '1970-01-16 07:39:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 67, 39, 'So you see, because some of them at last, more calmly, though still sobbing a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the distance, sitting sad and.', 1, 0, '1975-07-07 05:45:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 55, 63, 'I know who I am! But I\'d better take him his fan and the game was going to do such a wretched height to be.\' \'It is wrong from beginning to get dry again: they had at the bottom of a tree. \'Did you.', 0, 1, '2015-04-19 05:28:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 55, 84, 'Alice got up very carefully, nibbling first at one and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last turned sulky, and would only say, \'I am older than you, and listen to.', 0, 0, '1996-05-11 01:38:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 77, 12, 'Pigeon; \'but I must have been that,\' said the Queen. \'Can you play croquet with the glass table and the Hatter replied. \'Of course they were\', said the Cat, and vanished again. Alice waited till she.', 1, 0, '2014-11-04 14:27:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 98, 7, 'Please, Ma\'am, is this New Zealand or Australia?\' (and she tried another question. \'What sort of way, \'Do cats eat bats, I wonder?\' As she said to the little passage: and THEN--she found herself.', 1, 0, '2014-05-22 02:22:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 43, 79, 'Alice had learnt several things of this elegant thimble\'; and, when it saw mine coming!\' \'How do you want to get through the door, and knocked. \'There\'s no sort of present!\' thought Alice. \'I\'m glad.', 0, 0, '1998-08-29 09:28:01');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (1, '1982-09-06', '', 'Gottliebmouth', 'New Zealand', 25, '2006-02-23 07:39:11', '1999-06-27 11:05:53');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (2, '2002-04-16', '1', 'Hermanfort', 'Reunion', 34, '2006-07-17 05:30:19', '1971-01-24 20:57:44');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (3, '2005-06-03', '1', 'Antoinetteborough', 'Saudi Arabia', 18, '1982-04-28 06:30:42', '2006-10-11 04:47:12');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (5, '1992-10-30', '1', 'North Magdalenafurt', 'Senegal', 74, '1974-12-17 12:38:13', '1990-03-12 07:05:33');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (7, '2011-04-12', '1', 'Destinymouth', 'Cameroon', 12, '1986-04-01 19:13:05', '2002-07-07 14:02:23');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (9, '1991-09-08', '', 'Feilmouth', 'Falkland Islands (Malvinas)', 43, '1990-01-21 00:39:06', '1984-03-10 22:59:20');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (10, '1983-03-29', '', 'Schultzbury', 'Swaziland', 85, '2013-12-16 13:49:07', '1976-12-12 06:59:45');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (12, '2010-02-20', '1', 'Wolfburgh', 'Kuwait', 88, '1999-03-11 12:42:08', '1974-04-01 14:53:47');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (14, '1997-10-25', '1', 'Lake Randy', 'Bahrain', 34, '2015-06-13 03:00:44', '1983-04-15 23:34:07');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (15, '1979-05-17', '', 'New Fletafort', 'Angola', 100, '1983-07-31 15:12:40', '1975-03-30 13:47:58');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (17, '1976-09-28', '1', 'West Kenyonmouth', 'Palau', 13, '2001-08-01 22:22:03', '1974-01-09 22:01:00');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (20, '1996-10-24', '1', 'Euniceville', 'Macedonia', 22, '2000-11-15 03:08:02', '1994-06-24 15:15:01');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (21, '1990-05-06', '', 'Daytontown', 'Norway', 39, '1985-08-12 00:50:12', '2006-04-19 14:18:11');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (22, '1971-09-13', '1', 'Alejandrinside', 'Singapore', 16, '1973-09-15 04:22:46', '2015-04-08 23:03:16');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (23, '1978-08-04', '1', 'West Marjolaine', 'Ethiopia', 58, '2001-10-20 11:38:33', '2018-03-30 01:22:23');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (24, '1978-05-31', '', 'Bernadettestad', 'Norfolk Island', 47, '1976-08-28 06:01:17', '2011-11-03 00:04:57');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (26, '2004-06-22', '1', 'East Casimirport', 'Singapore', 9, '1997-05-09 15:44:14', '1999-04-21 09:36:59');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (27, '1980-05-26', '1', 'Hesselberg', 'Micronesia', 52, '1998-12-23 13:58:57', '2018-06-17 06:04:22');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (29, '2008-09-12', '', 'Jeniferbury', 'Benin', 17, '2008-04-11 13:04:30', '1971-02-03 00:32:45');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (31, '1973-06-25', '', 'Antonetteport', 'Kenya', 84, '2009-02-13 18:47:21', '2019-11-27 14:14:31');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (32, '1978-11-20', '1', 'Ryanland', 'Chad', 15, '1999-11-07 08:42:19', '1976-04-03 15:21:25');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (33, '1991-06-02', '', 'Port Mohammed', 'Tokelau', 81, '1975-02-23 14:55:31', '1991-08-31 00:06:45');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (35, '2017-01-18', '1', 'Alexanneport', 'Benin', 81, '1999-04-29 23:35:37', '1988-03-24 02:15:07');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (38, '1987-06-13', '', 'Feestburgh', 'Estonia', 83, '1976-04-08 03:01:56', '1982-12-04 15:13:24');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (39, '2000-09-02', '', 'East Lonzoside', 'Malta', 56, '1985-10-22 14:02:12', '1999-07-01 05:31:54');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (42, '1970-03-05', '1', 'Yosthaven', 'Iceland', 22, '2019-03-10 00:45:23', '1985-11-26 14:38:05');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (43, '2014-03-11', '1', 'Alveraburgh', 'Costa Rica', 34, '2010-03-10 11:02:06', '1994-11-02 04:59:55');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (46, '1997-12-04', '', 'Lake Crystelburgh', 'Netherlands Antilles', 55, '2008-06-28 09:03:33', '2006-05-31 08:30:59');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (47, '1987-01-14', '1', 'Jastview', 'Christmas Island', 2, '1974-12-20 18:53:34', '2004-01-03 00:49:19');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (49, '1970-08-25', '', 'New Georgianaton', 'Micronesia', 98, '1984-08-29 22:06:14', '1997-05-16 12:18:56');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (51, '2001-09-26', '1', 'Samantaside', 'Myanmar', 66, '1983-08-21 05:04:11', '1975-09-19 23:16:55');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (52, '2005-12-30', '1', 'Lake Austen', 'Nauru', 99, '1992-10-03 08:54:08', '1973-09-20 12:23:36');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (54, '1987-05-19', '', 'Altenwerthmouth', 'Switzerland', 43, '1993-02-16 13:04:04', '2003-12-01 23:49:45');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (55, '1985-03-09', '', 'Rozellahaven', 'Montserrat', 4, '1990-02-20 06:31:04', '1993-10-28 05:29:24');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (57, '2009-04-18', '', 'Roxanneburgh', 'Nauru', 5, '2003-09-04 19:27:01', '2012-06-26 23:54:24');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (58, '2004-05-05', '', 'Legrosport', 'Andorra', 54, '2005-05-01 04:00:52', '1976-11-18 02:18:03');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (60, '2018-09-20', '', 'Derickmouth', 'Aruba', 70, '1974-11-06 23:07:22', '2012-08-05 21:15:22');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (61, '1992-05-24', '', 'Prosaccomouth', 'Palestinian Territory', 5, '2010-04-13 23:40:13', '2018-11-04 09:22:32');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (62, '1992-05-18', '1', 'New Henri', 'Netherlands Antilles', 52, '1988-10-24 10:45:33', '2018-04-17 05:31:47');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (64, '1980-05-26', '1', 'South Chelsie', 'Cayman Islands', 62, '2015-06-21 22:36:07', '1977-03-26 21:24:03');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (65, '2015-06-14', '', 'East Margietown', 'Thailand', 19, '1997-11-01 04:31:17', '1977-12-27 02:56:31');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (66, '1976-08-17', '', 'Konopelskiberg', 'Heard Island and McDonald Islands', 72, '2014-11-05 14:30:02', '1996-07-19 05:52:29');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (67, '2005-11-01', '1', 'Dannyport', 'Saint Kitts and Nevis', 6, '1979-11-10 22:05:22', '2006-02-07 20:16:07');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (68, '2014-01-15', '1', 'Schulisthaven', 'Mayotte', 4, '1981-08-23 23:08:42', '1973-12-12 03:38:09');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (69, '1974-03-14', '1', 'New Ernestine', 'Cayman Islands', 4, '1978-03-20 12:32:15', '2008-01-08 16:25:17');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (70, '2005-07-09', '', 'Mayertchester', 'Afghanistan', 50, '2016-11-15 09:42:37', '2017-10-23 23:19:38');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (71, '1992-02-05', '1', 'Lake Gunnerburgh', 'Guinea-Bissau', 50, '1994-01-19 06:34:14', '1970-01-09 00:20:01');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (72, '2015-02-12', '', 'Franeckichester', 'Pakistan', 4, '2008-02-03 17:45:47', '1976-02-03 16:46:41');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (73, '2009-11-04', '1', 'Lake Lottieton', 'Turkey', 13, '1994-07-01 07:00:21', '2010-10-07 18:26:28');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (76, '1980-05-27', '1', 'Lake Eddie', 'Hungary', 41, '2015-07-31 17:46:50', '2002-04-21 00:09:42');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (77, '1975-04-04', '', 'North Rowena', 'Niue', 39, '1970-05-25 20:24:19', '1989-03-18 11:45:54');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (78, '2017-11-16', '', 'Armanistad', 'Angola', 6, '1973-09-28 17:11:58', '1985-05-03 21:11:39');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (79, '1984-09-25', '', 'Donnytown', 'Sao Tome and Principe', 67, '2000-10-28 07:42:24', '2017-09-19 15:02:05');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (80, '1970-06-10', '', 'Breanaton', 'French Southern Territories', 90, '2011-10-17 12:26:24', '1974-10-15 15:47:10');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (81, '2019-04-29', '1', 'Mooremouth', 'Marshall Islands', 54, '2000-02-29 11:54:10', '1999-01-09 06:48:49');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (83, '1991-03-10', '', 'Lake Maziemouth', 'Japan', 54, '2008-02-07 10:56:34', '1988-07-30 16:21:26');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (85, '2018-07-06', '1', 'South Duncan', 'Slovenia', 98, '2019-11-16 05:08:21', '1998-03-17 18:21:47');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (86, '1977-07-20', '', 'East Melbachester', 'Mozambique', 15, '1988-06-07 14:33:24', '2008-05-16 04:42:37');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (87, '1976-10-21', '1', 'Terrytown', 'Spain', 66, '1984-02-07 18:17:15', '1976-03-24 01:08:03');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (91, '2010-07-26', '', 'Heaneyview', 'Bahamas', 37, '1979-09-29 01:04:49', '2008-01-18 09:07:08');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (92, '1976-01-11', '', 'New Vanessaville', 'Sri Lanka', 73, '2009-05-18 21:24:31', '1999-08-13 22:28:21');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (93, '1994-06-10', '1', 'Aimeeland', 'Turkey', 15, '1983-05-27 14:11:42', '2003-02-04 14:43:34');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (94, '2001-08-13', '', 'Marianside', 'Serbia', 83, '1975-05-23 00:17:10', '2017-05-21 01:44:48');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (95, '2010-04-12', '1', 'Estellemouth', 'Cook Islands', 50, '1983-02-18 09:58:42', '1994-02-20 19:40:55');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (96, '1972-11-21', '1', 'East Jewel', 'Algeria', 100, '2001-04-23 15:13:35', '2007-08-22 21:08:41');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (97, '2011-12-20', '1', 'Lake Tessie', 'Estonia', 90, '2001-12-07 08:26:21', '2019-05-23 08:06:01');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (98, '1989-10-24', '', 'South Emmie', 'Bangladesh', 19, '2011-08-12 13:02:52', '1972-05-10 14:00:30');
INSERT INTO `profiles` (`user_id`, `birthdate`, `gender`, `hometown`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (100, '1994-09-05', '', 'East Flavioside', 'Swaziland', 89, '2014-07-02 01:04:46', '1996-06-07 23:46:17');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (1, 'Shawna', 'Schmidt', 'elegros@example.org', '(109)212-4671x7', '9ee774f0c8fa64f', '1997-01-14 10:07:14', '2018-05-11 12:25:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (2, 'Eulalia', 'Rosenbaum', 'suzanne.schultz@example.com', '970-143-6091', 'a9938e924cf9eb6', '2019-02-26 21:32:46', '2002-03-13 11:58:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (3, 'Joel', 'Grady', 'ross.ritchie@example.org', '254.328.5235x24', 'f38a061b9e62134', '2003-10-31 08:46:21', '1975-04-21 04:41:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (4, 'Ferne', 'Schowalter', 'vkuhlman@example.org', '662.476.7110x21', '000d71b0348e6ca', '2009-01-09 01:31:46', '1974-07-22 06:53:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (5, 'Myles', 'Boyle', 'hrutherford@example.org', '+50(7)085214566', '89d99333a5ca7d2', '1988-09-17 10:11:23', '2012-06-18 19:17:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (6, 'Marina', 'Hackett', 'aidan91@example.org', '529-558-4133x74', 'cd173e7c179912e', '1983-11-06 23:17:39', '1980-03-19 10:54:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (7, 'Rodrick', 'Maggio', 'mallory60@example.org', '+85(5)255676662', '88f216aa9e79d30', '1986-05-20 21:02:56', '1998-10-22 08:28:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (8, 'Kayla', 'Kozey', 'anais73@example.net', '01203274385', '9721d90f13b16a3', '1971-11-28 04:38:41', '1991-03-26 21:04:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (9, 'Earl', 'Tillman', 'maegan.huel@example.org', '539-167-8713', 'de6a62d2fb8e539', '2015-11-20 05:47:46', '2002-03-05 10:52:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (10, 'Marques', 'Ortiz', 'charlotte45@example.com', '492-152-5052x09', '1a7b57ac36ff8bf', '1987-05-30 17:40:47', '1979-04-05 12:06:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (11, 'Elena', 'Fay', 'gudrun56@example.org', '686-801-3185x71', 'd007de1de159d7a', '1974-10-19 04:48:06', '1974-08-11 04:54:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (12, 'Hazel', 'Bogan', 'qbailey@example.org', '654-744-7412', '83fdb374f778450', '1970-03-30 06:54:24', '1987-10-23 08:38:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (13, 'Nash', 'Pacocha', 'gabriel90@example.com', '059-329-1048', 'b125c3d58c83178', '2000-09-13 23:32:59', '2000-04-15 22:01:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (14, 'Lindsay', 'Conn', 'cstreich@example.org', '+56(5)972395806', 'bf980ca4a930f55', '1970-04-25 09:23:23', '2009-10-22 23:18:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (15, 'Ettie', 'Schamberger', 'marquardt.delta@example.net', '234-323-5669', '9a5de2f971e6d42', '1992-07-26 06:15:31', '1994-01-11 00:48:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (16, 'Asia', 'Kuhlman', 'paige.roberts@example.net', '233.488.6756x07', '719251c9b433087', '1984-09-27 08:42:57', '2000-02-03 00:10:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (17, 'Jordy', 'West', 'hudson.tia@example.org', '(362)545-4088x5', 'd36a823744d39ee', '1990-01-16 20:23:24', '2017-03-25 02:28:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (18, 'Lincoln', 'Lockman', 'eunice10@example.com', '517.570.6181', '7bf0da219fcdba0', '1982-08-15 07:25:27', '1999-05-11 12:48:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (19, 'Newton', 'Gibson', 'darwin.pfeffer@example.com', '(096)503-1617x6', '49dbbcfeff5a9d6', '1971-04-14 17:33:24', '2004-11-17 05:44:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (20, 'Claud', 'Kub', 'kattie15@example.org', '656.617.3873x70', '5b996858e9d82bd', '2014-03-30 04:30:27', '1988-10-07 20:23:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (21, 'Ransom', 'Zemlak', 'elwyn.heathcote@example.net', '151.591.8960', '355bb0c2bb21168', '1987-07-13 05:05:37', '2010-05-11 21:25:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (22, 'Emerald', 'Krajcik', 'hthiel@example.com', '1-731-324-8632x', '270f7f8d74ffd74', '2003-02-19 05:14:03', '2006-05-17 09:12:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (23, 'Clinton', 'Hilll', 'sherman@example.com', '1-841-930-9904', '5dac1e9458b9362', '2007-01-03 07:25:07', '1984-05-24 05:27:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (24, 'Maybelle', 'Weissnat', 'wwest@example.net', '801.274.2455x22', '45a26e0e84013c0', '2017-11-17 04:39:38', '2012-11-11 04:14:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (25, 'Thelma', 'Lubowitz', 'rodriguez.pamela@example.org', '+77(7)710698840', '65fc63a05859a3e', '2019-06-15 11:59:37', '1976-03-19 04:22:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (26, 'Adriana', 'Braun', 'uauer@example.org', '881.505.5336x43', '8ba09e929e33402', '1981-05-31 11:11:52', '1978-04-14 19:49:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (27, 'Conor', 'Nitzsche', 'annabell07@example.org', '1-297-423-6727', 'e0b8e95d33baf03', '1977-09-17 20:56:52', '2010-05-31 15:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (28, 'Justina', 'Aufderhar', 'qkrajcik@example.net', '+42(6)269726378', '918368d16118b18', '2010-12-25 06:12:47', '1987-02-25 22:18:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (29, 'Flavio', 'Hayes', 'frida.ferry@example.net', '292.209.1304', '035b5bdc722b095', '1971-08-27 22:43:00', '2010-06-13 12:37:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (30, 'Myrna', 'Weissnat', 'yshanahan@example.org', '1-419-724-0186', 'd5587110a6c82e8', '1981-03-13 00:02:48', '2001-03-22 23:29:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (31, 'Isaiah', 'Huels', 'amari71@example.org', '008.967.7934x63', '134f84d22e6a5d9', '1970-08-09 03:07:48', '1983-12-16 18:53:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (32, 'Verdie', 'Dickens', 'hyman28@example.com', '233.618.9554x72', '5e92ac6f6aa68b0', '1997-05-11 03:47:04', '1971-10-19 13:00:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (33, 'Karina', 'Reichel', 'kristoffer.balistreri@example.org', '09075557066', 'd5769a8c51dade1', '1974-07-29 07:05:54', '1971-09-27 11:14:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (34, 'Mason', 'Rolfson', 'nicolas.esmeralda@example.org', '1-713-091-1461', 'e86dc3d7e482501', '2019-11-18 08:40:08', '2010-06-30 23:03:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (35, 'Oswald', 'Hansen', 'efren.schiller@example.com', '981-602-5772', 'f786a5c90eecdb0', '2010-12-04 18:55:41', '1977-12-23 14:50:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (36, 'Ivah', 'Kilback', 'dasia.jaskolski@example.org', '509-057-1714x55', '2336e589b3b0677', '1986-11-30 08:43:14', '1986-09-07 02:11:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (37, 'Leif', 'Monahan', 'cgleason@example.net', '07023807932', '13699ee3f425641', '1991-04-07 04:03:39', '1993-08-11 05:15:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (38, 'Ron', 'Hessel', 'stehr.eloisa@example.org', '310-978-2457x18', 'd5e6373b66d127e', '1983-04-21 19:51:58', '1980-06-07 08:32:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (39, 'Emilie', 'Hilll', 'goldner.arnulfo@example.com', '1-160-775-0955x', 'f2eea593050fd04', '2007-08-03 14:06:04', '1970-11-22 03:06:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (40, 'Tamia', 'Kreiger', 'vcarroll@example.net', '06074977743', 'fb2cae3b668dc71', '2003-06-16 17:41:53', '1982-10-30 13:31:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (41, 'Louie', 'Bernhard', 'oschmeler@example.com', '749.664.9269x50', '598d6815c1c0c36', '2011-08-10 07:50:33', '1992-04-09 13:44:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (42, 'Elva', 'O\'Conner', 'dorian84@example.net', '00752245761', '713f3d49520103c', '2007-08-28 08:43:06', '1995-12-22 14:44:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (43, 'Alvena', 'Runolfsdottir', 'okuneva.luz@example.com', '644.766.0007', '7e7946e5698f40e', '1996-09-14 13:22:17', '1975-01-06 00:12:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (44, 'Brandyn', 'Nader', 'bmcglynn@example.com', '(314)090-4308x0', '4fde0ec4639557f', '2013-04-18 23:18:34', '1999-06-13 11:14:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (45, 'Ricardo', 'Bernier', 'lizeth67@example.net', '336-276-1906', '9abcd18b55e77e7', '2011-04-19 03:56:26', '1991-03-25 05:02:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (46, 'Misael', 'McLaughlin', 'predovic.mandy@example.net', '(390)908-8675', 'fc0f7b0034fe452', '2002-04-01 21:09:01', '2006-06-20 19:59:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (47, 'Colby', 'Wuckert', 'beau14@example.com', '1-952-940-8971x', 'b41309a324f4c49', '2002-08-27 00:16:59', '1982-05-22 23:25:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (48, 'Sidney', 'Bruen', 'syost@example.net', '1-034-679-8730x', '98ac01e33efd872', '1975-12-13 19:14:05', '1980-11-26 19:06:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (49, 'Jaron', 'Paucek', 'idonnelly@example.com', '1-967-528-5458x', 'dd29ff0e1876f07', '1971-12-31 07:19:29', '2013-07-22 14:28:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (50, 'Frederic', 'Mante', 'hlakin@example.org', '404.116.0651x30', '868a89fd0ac66fb', '1987-06-04 12:16:03', '1980-12-17 11:26:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (51, 'Cruz', 'Mitchell', 'moshe.herman@example.com', '03587044760', '8aaa24109bdd439', '1998-10-07 00:23:55', '1980-10-13 17:46:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (52, 'Francisca', 'Wolf', 'jocelyn.berge@example.net', '(330)823-8733x0', '7924df1004cf7df', '2001-03-30 18:31:18', '2015-12-26 19:24:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (53, 'Katrina', 'Terry', 'hannah.hodkiewicz@example.org', '(770)361-6321', '6ffc3e17bb7d121', '1999-09-14 06:53:08', '1991-07-07 21:35:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (54, 'Rosalinda', 'Reynolds', 'lucius.mueller@example.org', '+54(5)937010854', '0bfd40e81210f72', '1984-05-18 13:59:02', '1994-03-03 00:38:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (55, 'Al', 'Brekke', 'fcole@example.com', '114-545-0914x16', '130eb0e0d9a15d2', '1972-06-02 14:02:35', '1986-02-02 19:26:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (56, 'Wilbert', 'Lueilwitz', 'maddison.emard@example.com', '355.709.2437', 'cdd33b7affedb50', '1984-01-14 11:38:11', '2008-12-13 02:20:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (57, 'Guido', 'Schroeder', 'arlo.hettinger@example.org', '690.749.0661', '65e5abf60cacd1e', '1990-10-10 13:09:44', '1991-01-30 05:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (58, 'Rosina', 'McGlynn', 'jeff.haag@example.org', '+63(5)906940095', '340cfd0746c3add', '2013-07-06 23:10:35', '1992-04-27 17:56:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (59, 'Cody', 'Mueller', 'nathanael75@example.com', '676.932.1491x03', 'afee823282b0308', '1980-11-03 19:22:25', '1997-11-13 11:26:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (60, 'Chad', 'Koss', 'mweber@example.org', '621-987-8686x83', '68aa9f969daf891', '1973-02-21 03:29:19', '1973-03-10 05:00:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (61, 'Annabel', 'Gislason', 'stephania.deckow@example.net', '191.248.4741x61', 'b98072cb98fe1d4', '2014-10-28 16:14:42', '1992-11-17 13:28:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (62, 'Dylan', 'Brakus', 'pbeer@example.com', '08132684586', '6ed2c5265d5f2b7', '1983-12-18 07:02:06', '2003-03-16 00:00:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (63, 'Kacie', 'Schamberger', 'fbauch@example.net', '+72(3)022690018', 'b5bc9f7b0217666', '2009-04-09 00:00:41', '2015-11-28 19:02:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (64, 'Morris', 'Gibson', 'heller.benton@example.net', '171-807-1699x66', 'bb388d61175b45b', '2007-05-07 18:51:24', '1994-05-11 09:54:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (65, 'Icie', 'Terry', 'kshlerin.myrtie@example.org', '04728853578', 'da3b017e9256c7a', '2010-07-20 08:56:23', '1999-12-12 09:37:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (66, 'Mariah', 'Farrell', 'christine.abbott@example.org', '(084)247-1115x2', 'a74e014166e5619', '1987-01-03 01:24:56', '2002-08-14 11:26:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (67, 'Frederic', 'Frami', 'troy97@example.org', '1-069-041-4754', '394548267666c7e', '1981-05-14 03:10:31', '2009-03-28 12:13:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (68, 'Noble', 'Trantow', 'gideon27@example.net', '08299781207', '7b1229c28cb3276', '1992-12-27 02:49:49', '2020-01-22 13:43:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (69, 'Luther', 'Howe', 'fritsch.lorna@example.net', '327.072.4309x52', '1214ef1ded64c6a', '1983-12-28 19:11:20', '2001-05-12 12:23:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (70, 'Hyman', 'Berge', 'easton.hermann@example.net', '1-196-729-8348x', '2e1fdcba10e7eb4', '2008-05-21 12:38:49', '1991-03-18 10:14:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (71, 'Eugenia', 'Bernhard', 'thamill@example.org', '(523)267-1212', 'bba7f2d9da06540', '2009-10-04 02:56:03', '1980-05-02 10:01:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (72, 'Earlene', 'Durgan', 'rohan.mitchell@example.org', '(288)214-7927', '4486a7f95ab4d30', '1987-01-12 14:02:56', '2018-03-13 19:57:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (73, 'Bradley', 'Mertz', 'pblick@example.org', '(246)599-8076', 'ec7f87677ab7c24', '1974-06-21 11:32:20', '2006-01-23 06:14:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (74, 'Vanessa', 'Little', 'phyllis.gibson@example.org', '873-797-7043x49', '9335a07f1bb17db', '2001-10-10 09:00:50', '1974-04-24 08:34:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (75, 'Pablo', 'Wyman', 'jesse32@example.com', '376-705-2692x45', 'd596614e894a751', '2009-04-22 17:46:03', '1978-09-09 18:26:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (76, 'Heidi', 'Lakin', 'shields.matilde@example.net', '04361611205', 'bbe953340cf2dc8', '1996-03-25 15:15:53', '2002-12-30 16:43:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (77, 'Kiley', 'Hegmann', 'merl.bailey@example.net', '764.914.5399x13', '399f86f133c8e8a', '1981-06-03 18:23:33', '2010-10-31 00:11:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (78, 'Micaela', 'Kunde', 'verda.zulauf@example.com', '515.982.9646x24', '22c1fd5d4e34337', '1986-11-12 05:01:30', '2014-11-18 17:54:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (79, 'Ida', 'Heaney', 'lempi99@example.org', '889-246-6116', '34164d05b66c043', '1999-01-24 03:08:45', '1991-09-25 18:48:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (80, 'Jeffry', 'Gutmann', 'klocko.isai@example.net', '1-639-970-3517x', '977265c4dba778c', '1980-04-01 06:54:36', '2015-12-21 12:03:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (81, 'Kobe', 'Bruen', 'jacobs.burnice@example.net', '980-151-2232x90', '4e709fbdfabd777', '1991-07-03 16:14:31', '2004-01-11 02:32:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (82, 'Jameson', 'Kris', 'hildegard.wolff@example.net', '(876)827-1350', 'fe03dcedde3e08b', '1995-04-11 17:40:11', '2011-07-11 10:58:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (83, 'Keegan', 'Kertzmann', 'ybogan@example.net', '460.670.3918', '47ba3d816ebe6f7', '1971-09-29 23:48:00', '2010-10-15 22:03:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (84, 'Anderson', 'Herman', 'fcummings@example.org', '1-698-303-5758x', '53cfe6e14f9042a', '2010-12-27 19:37:33', '2000-07-24 09:10:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (85, 'Jordi', 'Daniel', 'sgaylord@example.com', '864.091.2575x93', '9f120f9d7073c44', '1987-06-22 01:36:05', '1994-08-04 10:04:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (86, 'Benny', 'Ratke', 'maggio.nelle@example.net', '(772)175-8700x1', '46cd555b0aa9890', '1974-11-10 03:55:51', '2013-05-10 03:24:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (87, 'Rosalia', 'Hane', 'colby77@example.org', '584-438-4696', 'db3220e705fa185', '2008-04-11 11:24:41', '1991-07-15 08:18:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (88, 'Guido', 'Conroy', 'samanta.d\'amore@example.net', '(527)647-5211x8', 'a985dcd7dd715f4', '1984-01-11 17:37:01', '2005-08-12 17:35:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (89, 'Mohammed', 'Rosenbaum', 'lawson.wisozk@example.org', '752-991-1170x46', '8223389b4bbb56d', '1983-08-24 04:23:13', '2013-03-16 00:13:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (90, 'Chasity', 'Kilback', 'bednar.derek@example.org', '(725)477-7168x3', '60bde62fb638b99', '1995-09-26 05:28:48', '1992-08-05 00:31:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (91, 'Roxanne', 'Bode', 'dean.wolff@example.org', '1-554-032-8363', 'fe22da2c66805f1', '1976-11-27 03:39:41', '1971-05-14 05:47:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (92, 'Reagan', 'Kilback', 'mwyman@example.com', '1-407-604-8564x', 'd62e9c3e552981d', '1986-05-07 10:25:46', '2003-12-15 20:11:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (93, 'Dimitri', 'Davis', 'randal33@example.net', '1-850-104-6174x', '724a33cc10598e2', '1997-08-17 00:16:30', '1972-09-11 10:23:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (94, 'Yesenia', 'Goodwin', 'reinger.guido@example.org', '753.129.0812x40', 'ddc76562aeed5f3', '1974-05-17 12:02:33', '1988-10-08 07:23:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (95, 'Marianna', 'Douglas', 'ransom.trantow@example.net', '570.927.1738x53', '857b6abf25d3a9f', '1973-07-13 09:24:48', '2002-11-18 14:48:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (96, 'Meghan', 'Kuhlman', 'micah.grady@example.net', '539-090-2230', '52342ffc978522e', '2019-01-18 09:55:31', '1975-12-24 20:54:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (97, 'Else', 'Rice', 'lavon.konopelski@example.net', '(981)556-0218x5', 'a04f731e1132aa0', '1997-12-07 07:53:00', '2005-10-31 05:25:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (98, 'Rogelio', 'Jakubowski', 'xpfannerstill@example.org', '04949080608', 'a5838664c20d6e8', '2002-04-19 10:22:31', '1994-04-24 08:04:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (99, 'Harold', 'Turner', 'stacey.o\'keefe@example.com', '888.721.8243', '9a23ac538a9acb5', '1978-04-19 15:21:57', '2000-12-19 22:35:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES (100, 'Gudrun', 'Wilkinson', 'reinger.bart@example.org', '1-596-446-6039', '1275d81f03d3399', '1988-05-19 17:23:16', '1984-02-03 20:19:54');


