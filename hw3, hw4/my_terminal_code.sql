ruska@ruska-MS-7918:~ $ ls
 bin                                 snap          Музыка
 build                               Видео         Общедоступные
 examples.desktop                    Документы    'Рабочий стол'
 geekbrains                          Загрузки      Шаблоны
 mysql-apt-config_0.8.10-1_all.deb   Изображения
ruska@ruska-MS-7918:~ $ cd geekbrains/
ruska@ruska-MS-7918:~/geekbrains $ ls
bigdata  git
ruska@ruska-MS-7918:~/geekbrains $ cd bigdata/
ruska@ruska-MS-7918:~/geekbrains/bigdata $ ls
basedata
ruska@ruska-MS-7918:~/geekbrains/bigdata $ cd basedata/
ruska@ruska-MS-7918:~/geekbrains/bigdata/basedata (master)*$ ls
hw1  hw2  hw3  Readme.txt
ruska@ruska-MS-7918:~/geekbrains/bigdata/basedata (master)*$ cd hw3
ruska@ruska-MS-7918:~/geekbrains/bigdata/basedata/hw3 (master)*$ ls
'fulldb-17-02-2020-13-06-beta(1).sql'   fulldb.zip
'fulldb17-02-2020 13-06.sql'            Script-1.sql
ruska@ruska-MS-7918:~/geekbrains/bigdata/basedata/hw3 (master)*$ mysql vk < fulldb17-02-2020 13-06.sql
bash: fulldb17-02-2020: Нет такого файла или каталога
ruska@ruska-MS-7918:~/geekbrains/bigdata/basedata/hw3 (master)*$ mysql vk < "fulldb17-02-2020 13-06.sql"
ruska@ruska-MS-7918:~/geekbrains/bigdata/basedata/hw3 (master)*$ sudo -s
[sudo] пароль для ruska: 
root@ruska-MS-7918:~/geekbrains/bigdata/basedata/hw3 (master)*$ mycli
Password: 
Version: 1.8.1
Chat: https://gitter.im/dbcli/mycli
Mail: https://groups.google.com/forum/#!forum/mycli-users
Home: http://mycli.net
Thanks to the contributor - Chris Anderton
mysql root@localhost:(none)> show DATABASES
+--------------------+
| Database           |
|--------------------|
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sample             |
| sys                |
| vk                 |
+--------------------+
7 rows in set
Time: 0.002s
mysql root@localhost:(none)> use vk
You are now connected to database "vk" as user "root"
Time: 0.002s
mysql root@localhost:vk> DESCRIBE users
+------------+--------------+--------+-------+-------------------+-----------------------------------------------+
| Field      | Type         | Null   | Key   | Default           | Extra                                         |
|------------+--------------+--------+-------+-------------------+-----------------------------------------------|
| id         | int unsigned | NO     | PRI   | <null>            | auto_increment                                |
| first_name | varchar(100) | NO     |       | <null>            |                                               |
| last_name  | varchar(100) | NO     |       | <null>            |                                               |
| email      | varchar(120) | NO     | UNI   | <null>            |                                               |
| phone      | varchar(15)  | NO     | UNI   | <null>            |                                               |
| password   | varchar(15)  | YES    |       | <null>            |                                               |
| created_at | datetime     | YES    |       | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at | datetime     | YES    |       | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+------------+--------------+--------+-------+-------------------+--------------:
Time: 0.005s
mysql root@localhost:vk> SELECT * FROM users
+------+--------------+---------------+-----------------------------------+-----------------+-----------------+---------------------+---------------------+
|   id | first_name   | last_name     | email                             | phone           | password        | created_at          | updated_at          |
|------+--------------+---------------+-----------------------------------+-----------------+-----------------+---------------------+---------------------|
|    1 | Shawna       | Schmidt       | elegros@example.org               | (109)212-4671x7 | 9ee774f0c8fa64f | 1997-01-14 10:07:14 | 2018-05-11 12:25:19 |
|    2 | Eulalia      | Rosenbaum     | suzanne.schultz@example.com       | 970-143-6091    | a9938e924cf9eb6 | 2019-02-26 21:32:46 | 2002-03-13 11:58:45 |
|    3 | Joel         | Grady         | ross.ritchie@example.org          | 254.328.5235x24 | f38a061b9e62134 | 2003-10-31 08:46:21 | 1975-04-21 04:41:37 |
|    4 | Ferne        | Schowalter    | vkuhlman@example.org              | 662.476.7110x21 | 000d71b0348e6ca | 2009-01-09 01:31:46 | 1974-07-22 06:53:24 |
|    5 | Myles        | Boyle         | hrutherford@example.org           | +50(7)085214566 | 89d99333a5ca7d2 | 1988-09-17 10:11:23 | 2012-06-18 19:17:45 |
|    6 | Marina       | Hackett       | aidan91@example.org               | 529-558-4133x74 | cd173e7c179912e | 1983-11-06 23:17:39 | 1980-03-19 10:54:37 |
|    7 | Rodrick      | Maggio        | mallory60@example.org             | +85(5)255676662 | 88f216aa9e79d30 | 1986-05-20 21:02:56 | 1998-10-22 08:28:58 |
|    8 | Kayla        | Kozey         | anais73@example.net               | 01203274385     | 9721d90f13b16a3 | 1971-11-28 04:38:41 | 1991-03-26 21:04:12 |
|    9 | Earl         | Tillman       | maegan.huel@example.org           | 539-167-8713    | de6a62d2fb8e539 | 2015-11-20 05:47:46 | 2002-03-05 10:52:39 |
|   10 | Marques      | Ortiz         | charlotte45@example.com           | 492-152-5052x09 | 1a7b57ac36ff8bf | 1987-05-30 17:40:47 | 1979-04-05 12:06:14 |
|   11 | Elena        | Fay           | gudrun56@example.org              | 686-801-3185x71 | d007de1de159d7a | 1974-10-19 04:48:06 | 1974-08-11 04:54:35 |
|   12 | Hazel        | Bogan         | qbailey@example.org               | 654-744-7412    | 83fdb374f778450 | 1970-03-30 06:54:24 | 1987-10-23 08:38:07 |
|   13 | Nash         | Pacocha       | gabriel90@example.com             | 059-329-1048    | b125c3d58c83178 | 2000-09-13 23:32:59 | 2000-04-15 22:01:40 |
|   14 | Lindsay      | Conn          | cstreich@example.org              | +56(5)972395806 | bf980ca4a930f55 | 1970-04-25 09:23:23 | 2009-10-22 23:18:05 |
|   15 | Ettie        | Schamberger   | marquardt.delta@example.net       | 234-323-5669    | 9a5de2f971e6d42 | 1992-07-26 06:15:31 | 1994-01-11 00:48:36 |
|   16 | Asia         | Kuhlman       | paige.roberts@example.net         | 233.488.6756x07 | 719251c9b433087 | 1984-09-27 08:42:57 | 2000-02-03 00:10:22 |
|   17 | Jordy        | West          | hudson.tia@example.org            | (362)545-4088x5 | d36a823744d39ee | 1990-01-16 20:23:24 | 2017-03-25 02:28:25 |
|   18 | Lincoln      | Lockman       | eunice10@example.com              | 517.570.6181    | 7bf0da219fcdba0 | 1982-08-15 07:25:27 | 1999-05-11 12:48:14 |
|   19 | Newton       | Gibson        | darwin.pfeffer@example.com        | (096)503-1617x6 | 49dbbcfeff5a9d6 | 1971-04-14 17:33:24 | 2004-11-17 05:44:42 |
|   20 | Claud        | Kub           | kattie15@example.org              | 656.617.3873x70 | 5b996858e9d82bd | 2014-03-30 04:30:27 | 1988-10-07 20:23:36 |
|   21 | Ransom       | Zemlak        | elwyn.heathcote@example.net       | 151.591.8960    | 355bb0c2bb21168 | 1987-07-13 05:05:37 | 2010-05-11 21:25:21 |
|   22 | Emerald      | Krajcik       | hthiel@example.com                | 1-731-324-8632x | 270f7f8d74ffd74 | 2003-02-19 05:14:03 | 2006-05-17 09:12:39 |
|   23 | Clinton      | Hilll         | sherman@example.com               | 1-841-930-9904  | 5dac1e9458b9362 | 2007-01-03 07:25:07 | 1984-05-24 05:27:53 |
|   24 | Maybelle     | Weissnat      | wwest@example.net                 | 801.274.2455x22 | 45a26e0e84013c0 | 2017-11-17 04:39:38 | 2012-11-11 04:14:30 |
|   25 | Thelma       | Lubowitz      | rodriguez.pamela@example.org      | +77(7)710698840 | 65fc63a05859a3e | 2019-06-15 11:59:37 | 1976-03-19 04:22:57 |
|   26 | Adriana      | Braun         | uauer@example.org                 | 881.505.5336x43 | 8ba09e929e33402 | 1981-05-31 11:11:52 | 1978-04-14 19:49:07 |
|   27 | Conor        | Nitzsche      | annabell07@example.org            | 1-297-423-6727  | e0b8e95d33baf03 | 1977-09-17 20:56:52 | 2010-05-31 15:40:34 |
|   28 | Justina      | Aufderhar     | qkrajcik@example.net              | +42(6)269726378 | 918368d16118b18 | 2010-12-25 06:12:47 | 1987-02-25 22:18:16 |
|   29 | Flavio       | Hayes         | frida.ferry@example.net           | 292.209.1304    | 035b5bdc722b095 | 1971-08-27 22:43:00 | 2010-06-13 12:37:18 |
|   30 | Myrna        | Weissnat      | yshanahan@example.org             | 1-419-724-0186  | d5587110a6c82e8 | 1981-03-13 00:02:48 | 2001-03-22 23:29:52 |
|   31 | Isaiah       | Huels         | amari71@example.org               | 008.967.7934x63 | 134f84d22e6a5d9 | 1970-08-09 03:07:48 | 1983-12-16 18:53:50 |
|   32 | Verdie       | Dickens       | hyman28@example.com               | 233.618.9554x72 | 5e92ac6f6aa68b0 | 1997-05-11 03:47:04 | 1971-10-19 13:00:37 |
|   33 | Karina       | Reichel       | kristoffer.balistreri@example.org | 09075557066     | d5769a8c51dade1 | 1974-07-29 07:05:54 | 1971-09-27 11:14:20 |
|   34 | Mason        | Rolfson       | nicolas.esmeralda@example.org     | 1-713-091-1461  | e86dc3d7e482501 | 2019-11-18 08:40:08 | 2010-06-30 23:03:40 |
|   35 | Oswald       | Hansen        | efren.schiller@example.com        | 981-602-5772    | f786a5c90eecdb0 | 2010-12-04 18:55:41 | 1977-12-23 14:50:45 |
|   36 | Ivah         | Kilback       | dasia.jaskolski@example.org       | 509-057-1714x55 | 2336e589b3b0677 | 1986-11-30 08:43:14 | 1986-09-07 02:11:20 |
|   37 | Leif         | Monahan       | cgleason@example.net              | 07023807932     | 13699ee3f425641 | 1991-04-07 04:03:39 | 1993-08-11 05:15:34 |
|   38 | Ron          | Hessel        | stehr.eloisa@example.org          | 310-978-2457x18 | d5e6373b66d127e | 1983-04-21 19:51:58 | 1980-06-07 08:32:46 |
|   39 | Emilie       | Hilll         | goldner.arnulfo@example.com       | 1-160-775-0955x | f2eea593050fd04 | 2007-08-03 14:06:04 | 1970-11-22 03:06:14 |
|   40 | Tamia        | Kreiger       | vcarroll@example.net              | 06074977743     | fb2cae3b668dc71 | 2003-06-16 17:41:53 | 1982-10-30 13:31:39 |
|   41 | Louie        | Bernhard      | oschmeler@example.com             | 749.664.9269x50 | 598d6815c1c0c36 | 2011-08-10 07:50:33 | 1992-04-09 13:44:43 |
|   42 | Elva         | O'Conner      | dorian84@example.net              | 00752245761     | 713f3d49520103c | 2007-08-28 08:43:06 | 1995-12-22 14:44:40 |
|   43 | Alvena       | Runolfsdottir | okuneva.luz@example.com           | 644.766.0007    | 7e7946e5698f40e | 1996-09-14 13:22:17 | 1975-01-06 00:12:53 |
|   44 | Brandyn      | Nader         | bmcglynn@example.com              | (314)090-4308x0 | 4fde0ec4639557f | 2013-04-18 23:18:34 | 1999-06-13 11:14:43 |
|   45 | Ricardo      | Bernier       | lizeth67@example.net              | 336-276-1906    | 9abcd18b55e77e7 | 2011-04-19 03:56:26 | 1991-03-25 05:02:02 |
|   46 | Misael       | McLaughlin    | predovic.mandy@example.net        | (390)908-8675   | fc0f7b0034fe452 | 2002-04-01 21:09:01 | 2006-06-20 19:59:21 |
|   47 | Colby        | Wuckert       | beau14@example.com                | 1-952-940-8971x | b41309a324f4c49 | 2002-08-27 00:16:59 | 1982-05-22 23:25:18 |
|   48 | Sidney       | Bruen         | syost@example.net                 | 1-034-679-8730x | 98ac01e33efd872 | 1975-12-13 19:14:05 | 1980-11-26 19:06:42 |
|   49 | Jaron        | Paucek        | idonnelly@example.com             | 1-967-528-5458x | dd29ff0e1876f07 | 1971-12-31 07:19:29 | 2013-07-22 14:28:10 |
|   50 | Frederic     | Mante         | hlakin@example.org                | 404.116.0651x30 | 868a89fd0ac66fb | 1987-06-04 12:16:03 | 1980-12-17 11:26:16 |
|   51 | Cruz         | Mitchell      | moshe.herman@example.com          | 03587044760     | 8aaa24109bdd439 | 1998-10-07 00:23:55 | 1980-10-13 17:46:06 |
|   52 | Francisca    | Wolf          | jocelyn.berge@example.net         | (330)823-8733x0 | 7924df1004cf7df | 2001-03-30 18:31:18 | 2015-12-26 19:24:17 |
|   53 | Katrina      | Terry         | hannah.hodkiewicz@example.org     | (770)361-6321   | 6ffc3e17bb7d121 | 1999-09-14 06:53:08 | 1991-07-07 21:35:33 |
|   54 | Rosalinda    | Reynolds      | lucius.mueller@example.org        | +54(5)937010854 | 0bfd40e81210f72 | 1984-05-18 13:59:02 | 1994-03-03 00:38:14 |
|   55 | Al           | Brekke        | fcole@example.com                 | 114-545-0914x16 | 130eb0e0d9a15d2 | 1972-06-02 14:02:35 | 1986-02-02 19:26:18 |
|   56 | Wilbert      | Lueilwitz     | maddison.emard@example.com        | 355.709.2437    | cdd33b7affedb50 | 1984-01-14 11:38:11 | 2008-12-13 02:20:24 |
|   57 | Guido        | Schroeder     | arlo.hettinger@example.org        | 690.749.0661    | 65e5abf60cacd1e | 1990-10-10 13:09:44 | 1991-01-30 05:05:43 |
|   58 | Rosina       | McGlynn       | jeff.haag@example.org             | +63(5)906940095 | 340cfd0746c3add | 2013-07-06 23:10:35 | 1992-04-27 17:56:01 |
|   59 | Cody         | Mueller       | nathanael75@example.com           | 676.932.1491x03 | afee823282b0308 | 1980-11-03 19:22:25 | 1997-11-13 11:26:09 |
|   60 | Chad         | Koss          | mweber@example.org                | 621-987-8686x83 | 68aa9f969daf891 | 1973-02-21 03:29:19 | 1973-03-10 05:00:49 |
|   61 | Annabel      | Gislason      | stephania.deckow@example.net      | 191.248.4741x61 | b98072cb98fe1d4 | 2014-10-28 16:14:42 | 1992-11-17 13:28:06 |
|   62 | Dylan        | Brakus        | pbeer@example.com                 | 08132684586     | 6ed2c5265d5f2b7 | 1983-12-18 07:02:06 | 2003-03-16 00:00:00 |
|   63 | Kacie        | Schamberger   | fbauch@example.net                | +72(3)022690018 | b5bc9f7b0217666 | 2009-04-09 00:00:41 | 2015-11-28 19:02:45 |
|   64 | Morris       | Gibson        | heller.benton@example.net         | 171-807-1699x66 | bb388d61175b45b | 2007-05-07 18:51:24 | 1994-05-11 09:54:50 |
|   65 | Icie         | Terry         | kshlerin.myrtie@example.org       | 04728853578     | da3b017e9256c7a | 2010-07-20 08:56:23 | 1999-12-12 09:37:13 |
|   66 | Mariah       | Farrell       | christine.abbott@example.org      | (084)247-1115x2 | a74e014166e5619 | 1987-01-03 01:24:56 | 2002-08-14 11:26:29 |
|   67 | Frederic     | Frami         | troy97@example.org                | 1-069-041-4754  | 394548267666c7e | 1981-05-14 03:10:31 | 2009-03-28 12:13:39 |
|   68 | Noble        | Trantow       | gideon27@example.net              | 08299781207     | 7b1229c28cb3276 | 1992-12-27 02:49:49 | 2020-01-22 13:43:56 |
|   69 | Luther       | Howe          | fritsch.lorna@example.net         | 327.072.4309x52 | 1214ef1ded64c6a | 1983-12-28 19:11:20 | 2001-05-12 12:23:38 |
|   70 | Hyman        | Berge         | easton.hermann@example.net        | 1-196-729-8348x | 2e1fdcba10e7eb4 | 2008-05-21 12:38:49 | 1991-03-18 10:14:25 |
|   71 | Eugenia      | Bernhard      | thamill@example.org               | (523)267-1212   | bba7f2d9da06540 | 2009-10-04 02:56:03 | 1980-05-02 10:01:55 |
|   72 | Earlene      | Durgan        | rohan.mitchell@example.org        | (288)214-7927   | 4486a7f95ab4d30 | 1987-01-12 14:02:56 | 2018-03-13 19:57:03 |
|   73 | Bradley      | Mertz         | pblick@example.org                | (246)599-8076   | ec7f87677ab7c24 | 1974-06-21 11:32:20 | 2006-01-23 06:14:37 |
|   74 | Vanessa      | Little        | phyllis.gibson@example.org        | 873-797-7043x49 | 9335a07f1bb17db | 2001-10-10 09:00:50 | 1974-04-24 08:34:03 |
|   75 | Pablo        | Wyman         | jesse32@example.com               | 376-705-2692x45 | d596614e894a751 | 2009-04-22 17:46:03 | 1978-09-09 18:26:56 |
|   76 | Heidi        | Lakin         | shields.matilde@example.net       | 04361611205     | bbe953340cf2dc8 | 1996-03-25 15:15:53 | 2002-12-30 16:43:41 |
|   77 | Kiley        | Hegmann       | merl.bailey@example.net           | 764.914.5399x13 | 399f86f133c8e8a | 1981-06-03 18:23:33 | 2010-10-31 00:11:46 |
|   78 | Micaela      | Kunde         | verda.zulauf@example.com          | 515.982.9646x24 | 22c1fd5d4e34337 | 1986-11-12 05:01:30 | 2014-11-18 17:54:02 |
|   79 | Ida          | Heaney        | lempi99@example.org               | 889-246-6116    | 34164d05b66c043 | 1999-01-24 03:08:45 | 1991-09-25 18:48:55 |
|   80 | Jeffry       | Gutmann       | klocko.isai@example.net           | 1-639-970-3517x | 977265c4dba778c | 1980-04-01 06:54:36 | 2015-12-21 12:03:22 |
|   81 | Kobe         | Bruen         | jacobs.burnice@example.net        | 980-151-2232x90 | 4e709fbdfabd777 | 1991-07-03 16:14:31 | 2004-01-11 02:32:15 |
|   82 | Jameson      | Kris          | hildegard.wolff@example.net       | (876)827-1350   | fe03dcedde3e08b | 1995-04-11 17:40:11 | 2011-07-11 10:58:15 |
|   83 | Keegan       | Kertzmann     | ybogan@example.net                | 460.670.3918    | 47ba3d816ebe6f7 | 1971-09-29 23:48:00 | 2010-10-15 22:03:48 |
|   84 | Anderson     | Herman        | fcummings@example.org             | 1-698-303-5758x | 53cfe6e14f9042a | 2010-12-27 19:37:33 | 2000-07-24 09:10:30 |
|   85 | Jordi        | Daniel        | sgaylord@example.com              | 864.091.2575x93 | 9f120f9d7073c44 | 1987-06-22 01:36:05 | 1994-08-04 10:04:13 |
|   86 | Benny        | Ratke         | maggio.nelle@example.net          | (772)175-8700x1 | 46cd555b0aa9890 | 1974-11-10 03:55:51 | 2013-05-10 03:24:18 |
|   87 | Rosalia      | Hane          | colby77@example.org               | 584-438-4696    | db3220e705fa185 | 2008-04-11 11:24:41 | 1991-07-15 08:18:20 |
|   88 | Guido        | Conroy        | samanta.d'amore@example.net       | (527)647-5211x8 | a985dcd7dd715f4 | 1984-01-11 17:37:01 | 2005-08-12 17:35:52 |
|   89 | Mohammed     | Rosenbaum     | lawson.wisozk@example.org         | 752-991-1170x46 | 8223389b4bbb56d | 1983-08-24 04:23:13 | 2013-03-16 00:13:27 |
|   90 | Chasity      | Kilback       | bednar.derek@example.org          | (725)477-7168x3 | 60bde62fb638b99 | 1995-09-26 05:28:48 | 1992-08-05 00:31:56 |
|   91 | Roxanne      | Bode          | dean.wolff@example.org            | 1-554-032-8363  | fe22da2c66805f1 | 1976-11-27 03:39:41 | 1971-05-14 05:47:16 |
|   92 | Reagan       | Kilback       | mwyman@example.com                | 1-407-604-8564x | d62e9c3e552981d | 1986-05-07 10:25:46 | 2003-12-15 20:11:31 |
|   93 | Dimitri      | Davis         | randal33@example.net              | 1-850-104-6174x | 724a33cc10598e2 | 1997-08-17 00:16:30 | 1972-09-11 10:23:31 |
|   94 | Yesenia      | Goodwin       | reinger.guido@example.org         | 753.129.0812x40 | ddc76562aeed5f3 | 1974-05-17 12:02:33 | 1988-10-08 07:23:18 |
|   95 | Marianna     | Douglas       | ransom.trantow@example.net        | 570.927.1738x53 | 857b6abf25d3a9f | 1973-07-13 09:24:48 | 2002-11-18 14:48:35 |
|   96 | Meghan       | Kuhlman       | micah.grady@example.net           | 539-090-2230    | 52342ffc978522e | 2019-01-18 09:55:31 | 1975-12-24 20:54:07 |
|   97 | Else         | Rice          | lavon.konopelski@example.net      | (981)556-0218x5 | a04f731e1132aa0 | 1997-12-07 07:53:00 | 2005-10-31 05:25:21 |
|   98 | Rogelio      | Jakubowski    | xpfannerstill@example.org         | 04949080608     | a5838664c20d6e8 | 2002-04-19 10:22:31 | 1994-04-24 08:04:38 |
|   99 | Harold       | Turner        | stacey.o'keefe@example.com        | 888.721.8243    | 9a23ac538a9acb5 | 1978-04-19 15:21:57 | 2000-12-19 22:35:32 |
|  100 | Gudrun       | Wilkinson     | reinger.bart@example.org          | 1-596-446-6039  | 1275d81f03d3399 | 1988-05-19 17:23:16 | 1984-02-03 20:19:54 |
+------+--------------+---------------+-----------------------------------+-----------------+-----------------+---------------------+---------------------+
100 rows in set

[1]+  Остановлен    mycli
root@ruska-MS-7918:~/geekbrains/bigdata/basedata/hw3 (master)*$ 


