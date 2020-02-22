#
# TABLE STRUCTURE FOR: likes_posts
#

DROP TABLE IF EXISTS `likes_posts`;

CREATE TABLE `likes_posts` (
  `user_id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (2, 13);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (3, 94);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (8, 36);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (8, 92);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (8, 94);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (8, 100);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (9, 62);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (13, 4);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (13, 83);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (15, 5);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (16, 29);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (16, 72);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (16, 88);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (17, 88);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (17, 92);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (17, 93);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (18, 71);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (19, 92);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (20, 82);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (20, 92);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (21, 6);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (22, 89);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (22, 98);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (23, 8);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (24, 15);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (25, 98);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (27, 30);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (29, 27);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (30, 17);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (31, 12);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (31, 36);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (32, 8);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (32, 77);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (35, 8);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (37, 7);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (37, 100);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (39, 45);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (40, 93);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (41, 69);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (42, 10);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (42, 59);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (44, 89);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (45, 11);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (45, 43);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (45, 45);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (45, 58);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (45, 59);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (45, 62);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (46, 50);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (46, 67);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (47, 51);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (47, 79);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (47, 88);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (49, 61);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (49, 64);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (49, 78);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (49, 91);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (50, 18);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (52, 47);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (52, 55);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (53, 64);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (54, 24);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (56, 36);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (56, 88);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (57, 92);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (57, 93);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (59, 11);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (59, 96);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (60, 30);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (62, 36);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (62, 92);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (63, 94);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (64, 88);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (67, 83);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (68, 11);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (69, 42);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (71, 32);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (71, 89);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (72, 44);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (73, 44);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (74, 4);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (75, 61);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (76, 45);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (77, 49);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (82, 90);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (85, 72);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (86, 49);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (87, 100);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (92, 7);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (94, 3);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (95, 30);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (97, 96);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (98, 54);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (99, 41);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (99, 42);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (99, 47);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (99, 52);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (100, 15);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (100, 30);
INSERT INTO `likes_posts` (`user_id`, `posts_id`) VALUES (100, 83);


