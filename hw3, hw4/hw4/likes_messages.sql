#
# TABLE STRUCTURE FOR: likes_messages
#

DROP TABLE IF EXISTS `likes_messages`;

CREATE TABLE `likes_messages` (
  `user_id` int(10) unsigned NOT NULL,
  `messages_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`messages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (2, 91);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (4, 11);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (4, 60);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (5, 48);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (6, 40);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (7, 12);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (8, 7);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (8, 80);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (9, 32);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (9, 33);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (12, 42);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (15, 42);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (15, 98);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (16, 5);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (16, 68);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (18, 90);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (19, 35);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (19, 64);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (19, 88);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (20, 26);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (21, 42);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (21, 59);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (21, 67);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (22, 38);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (23, 87);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (24, 6);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (25, 81);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (26, 36);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (28, 79);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (29, 70);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (31, 92);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (33, 93);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (34, 25);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (34, 28);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (35, 33);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (39, 62);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (41, 6);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (42, 13);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (42, 88);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (43, 7);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (43, 34);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (44, 16);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (44, 90);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (45, 11);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (47, 26);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (48, 77);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (48, 78);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (48, 85);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (49, 85);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (49, 95);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (51, 89);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (52, 3);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (53, 22);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (53, 91);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (54, 99);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (55, 68);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (56, 50);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (57, 26);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (57, 55);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (58, 41);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (58, 72);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (59, 10);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (60, 82);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (61, 5);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (64, 32);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (64, 69);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (65, 36);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (65, 54);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (65, 56);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (67, 72);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (68, 68);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (69, 16);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (69, 67);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (69, 93);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (70, 19);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (70, 64);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (71, 72);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (71, 96);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (74, 23);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (74, 30);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (80, 50);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (82, 38);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (82, 47);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (82, 56);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (82, 95);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (83, 15);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (83, 31);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (85, 34);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (85, 35);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (85, 63);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (85, 87);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (87, 43);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (87, 66);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (90, 38);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (92, 52);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (94, 81);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (94, 85);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (98, 52);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (98, 100);
INSERT INTO `likes_messages` (`user_id`, `messages_id`) VALUES (100, 93);


