#
# TABLE STRUCTURE FOR: likes_media
#

DROP TABLE IF EXISTS `likes_media`;

CREATE TABLE `likes_media` (
  `user_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (2, 22);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (4, 62);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (5, 2);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (5, 19);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (6, 51);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (7, 56);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (7, 69);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (8, 7);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (9, 85);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (11, 71);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (11, 74);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (11, 77);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (12, 64);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (12, 94);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (16, 27);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (16, 62);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (17, 97);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (23, 89);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (24, 65);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (26, 3);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (26, 27);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (26, 48);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (26, 53);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (27, 32);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (27, 44);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (29, 3);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (30, 74);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (30, 80);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (30, 90);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (31, 35);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (31, 80);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (34, 37);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (35, 18);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (36, 81);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (40, 17);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (40, 23);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (41, 97);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (45, 15);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (45, 45);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (45, 74);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (46, 25);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (47, 35);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (47, 61);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (47, 75);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (48, 57);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (49, 35);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (50, 2);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (50, 35);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (50, 62);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (53, 64);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (54, 12);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (54, 31);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (54, 83);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (55, 55);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (55, 86);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (57, 20);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (57, 87);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (58, 45);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (59, 52);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (60, 77);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (64, 8);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (64, 56);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (66, 26);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (68, 4);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (68, 37);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (69, 43);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (69, 65);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (69, 73);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (71, 61);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (72, 78);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (73, 85);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (75, 4);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (76, 73);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (77, 63);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (77, 70);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (78, 31);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (78, 51);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (78, 66);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (80, 23);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (80, 66);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (81, 97);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (82, 19);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (83, 13);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (83, 58);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (83, 95);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (84, 87);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (86, 12);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (88, 38);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (90, 5);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (91, 52);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (91, 60);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (92, 80);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (93, 17);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (93, 93);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (97, 11);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (97, 89);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (98, 55);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (98, 70);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (99, 94);
INSERT INTO `likes_media` (`user_id`, `media_id`) VALUES (100, 11);


