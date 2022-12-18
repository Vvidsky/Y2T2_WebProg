DROP DATABASE IF EXISTS minorcineplex;
CREATE DATABASE IF NOT EXISTS `minorcineplex` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `minorcineplex`;

CREATE TABLE `user` (
	`email` 		VARCHAR(64) 	PRIMARY KEY,
    `password`		VARCHAR(256)	NOT NULL,
	`first_name`  	VARCHAR(256)	NOT NULL,
	`last_name` 	VARCHAR(256)	NOT NULL,
    `age`			INT				NOT NULL
);
INSERT INTO `user` VALUES
("Boont1lh@yahoo.com", "try4881hatsection", "Boonpipob","Chaipoowapat",29),
("Somwan1234@gmail.com", "slave92madewest10", "Dok-rak","Somwan",30),
("Wis.Sansurin1995@yahoo.com", "slave92madewest10", "Wismita","Sansurin",31),
("gedts50b3y@gmail.com", "slave92madewest10", "Phaibun","Kanjanapas",30),
("PantPCV2@hotmail.com", "slave92madewest10", "Panas","Punyawong",33),
("Kuleekpaii@hotmail.com", "slave92madewest10", "Kunanan","Leekpai",34),
("KheChua43125@gmail.com", "slave92madewest10", "Khemin","Chuasiriporn",35),
("Night.Temi775@hotmail.com", "slave92madewest10", "Ratri","Temirak",36),
("YPP.1997@hotmail.com", "slave92madewest10",  "Yu-phin","Sriwarunyu",37),
("BoonC.one@hotmail.com", "slave92madewest10", "Tham-boon","Chumphorn",38);

CREATE TABLE `admin` (
	`email` 		VARCHAR(64) 	PRIMARY KEY,
    `password`		VARCHAR(256)	NOT NULL,
	`first_name`  	VARCHAR(256)	NOT NULL,
	`last_name` 	VARCHAR(256)	NOT NULL,
    `age`			INT				NOT NULL
);
INSERT INTO `admin` VALUES
("phwngphka.phngsphithaks@gmail.com","iZJ1GkDf8Zk1765w", "Chutima","Vittayakhetprapa",19),
("cxmdech.kittithr@gmail.com", "5z9E6rNZDl404D99", "Pakorn","Somkhumnung",20),
("klanxnhngay.thidawrrn@nthiphithaks.net.th", "hRd4c6JXZSz91pW7", "Chisanuphong","Samuttheva",21),
("rucya.thephsuwrrn@yahoo.com", "railfeet54chief38", "Kwanchira","Talumpuk",22),
("xdiruc26@gmail.com","bespringit3566", "Chutimol","Jenpanichsakul",23),
("dnudech85@darnglawrrn.ac.th", "snowgathersuch5661", "Mintra","Adusaradee",24),
("techphn43@yahoo.com","satlotwash131", "Kamolrat","Pojjumnean",25),
("fkittithr@yahoo.com","their66hurry88stop", "Chaveephong","Rodkongruy",26),
("vdirekwithya@gmail.com", "feardivision9035river", "Jirapat","Siwawong",27),
("tnkla.khrxngcinda@hotmail.com", "join2424poorhour", "Krittipong","Phumchat",28);

CREATE TABLE `movie` (
	`movie_ID` 		INT PRIMARY KEY,
    `movie_name` 	VARCHAR(256)	NOT NULL,
    `movie_genre` 	VARCHAR(256)	NOT NULL,
    `movie_rate` 	INT				NOT NULL,
    `release_date` 	DATE			NOT NULL,
    `movie_length` 	INT				NOT NULL,
    `soundtrack` 	CHAR(2)			NOT NULL,
    `subtitle` 		CHAR(2),
	`movie_starRate`	VARCHAR(3),
    `synopsis` 			VARCHAR(1000),
    `movie_image`		VARCHAR(1000)	NOT NULL,
	CONSTRAINT chk_soundtrack CHECK (soundtrack IN ('EN', 'TH', 'JP', 'KR')),	-- soundtrack that's available
    CONSTRAINT chk_subtitle CHECK (subtitle IN ('EN', 'TH', 'JP', 'KR'))		-- subtitle that's available
);
INSERT INTO `movie` VALUES
(1, "Rang Zong", "Horror", 18,  date("2021-10-28"), 131, "TH", NULL, 4.5, "A horrifying story of a shaman's inheritance in the Isan region of Thailand. What could be possessing a family member might not be the Goddess they make it out to be.", "https://cdn.majorcineplex.com/uploads/movie/3257/thumb_3257.jpg"),
(2, "Escape Room 2 No Way Out", "Thriller", 15, date("2021-11-11"), 88, "TH", NULL, 4.2, "its horror movie sequel Escape Room 2  Directed by Adam Robitel (Insidious: The Last Key), Escape Room follows six strangers as they navigate a series of escape rooms that, as they quickly come to realize, are designed to try and kill them.", "https://cdn.majorcineplex.com/uploads/movie/2934/thumb_2934.jpg"),
(3, "Ford v Ferrari", "Thriller", 15, date("2019-12-05"), 152, "EN", "TH", 3.5, "Academy Award-winners Matt Damon and Christian Bale star in FORD v FERRARI, based on the remarkable true story of the visionary American car designer Carroll Shelby (Damon) and the fearless British-born driver Ken Miles (Bale), who together battled corporate interference, the laws of physics, and their own personal demons to build a revolutionary race car for Ford Motor Company and take on the dominating race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966.", "https://gdb.voanews.com/A9D05195-C4C0-4C7F-B2A5-FF0909527067_w408_r0_s.jpg"),
(4, "Doraemon The Movie 2020", "Animation", 0, date("2020-11-19"), 110, "TH", NULL, 5.0, NULL, "https://f.ptcdn.info/667/071/000/qk1d6f140KHvJ12qFim-o.jpg"),
(5, "Insidious The Last Key", "Horror", 15, date("2018-05-10"), 103, "EN", "TH", 4.0, "The creative minds behind the hit \"Insidious\" trilogy return for \"Insidious: The Last Key.\" In the supernatural thriller, which welcomes back franchise standout Lin Shaye as Dr. Elise Rainier, the brilliant parapsychologist faces her most fearsome and personal haunting yet: in her own family home.", "https://m.media-amazon.com/images/M/MV5BMjQ3NTgzNjk4MF5BMl5BanBnXkFtZTgwNDE0MTUxNDM@._V1_.jpg"),
(6, "The Conjuring (Digital)", "Horror", 15, date("2021-05-26"), 112, "EN", "TH", 3.0, "A family encounters spirits living among them in their New England farmhouse.", "https://www.i-moviehd.com/wp-content/uploads/2019/07/The-Conjuring-2013-%E0%B8%84%E0%B8%99%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2%E0%B8%81%E0%B8%9C%E0%B8%B5.png"),
(7, "The Conjuring 3", "Horror", 15, date("2021-07-01"), 113, "EN", "TH", 3.5, "A chilling story of terror, murder and unknown evil that shocked even experienced real-life paranormal investigators Ed and Lorraine Warren. One of the most sensational cases from their files, it starts with a fight for the soul of a young boy, then takes them beyond anything they’d ever seen before, to mark the first time in U.S. history that a murder suspect would claim demonic possession as a defense.", "https://cdni-cf.bugaboo.tv/dm/sz-md/i/images/2021/01/20/thumb_2905_1611122528_1958.jpg"),
(8, "No Game No Life Zero", "Animation", 0, date("2018-02-08"), 106, "JP", "TH", 4.8, "Adaption of the sixth Light Novel of series, it follows the story of two new characters - Riku and Shuvi - during the events of the Ancient War, prior to the 10 pledges.", "https://m.media-amazon.com/images/I/812jZCymKyL._SL1280_.jpg"),
(9, "Parasite", "Drama", 15, date("2019-07-22"), 132, "KR",  "TH", 4.2, "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.", "https://m.media-amazon.com/images/I/81Z4sJVge8L._AC_SL1500_.jpg"),
(10, "Ousama Ranking", "Animation", 0, date("2018-04-25"), 122, "EN", "TH", 5.0, "The story is about a little prince named Bojji who is deaf but above all naive, because despite many criticisms from his people about his accession to the throne, he does his best and dreams of becoming the greatest of kings. One day, he meets Kage (Shadow), a survivor of a wiped out assassin clan, who understands his words despite Bojji being unable to speak due to his disability. The story follows the pair as they navigate the world and all of its adventures and darkness.", "https://www.online-station.net/wp-content/uploads/2021/12/02ousamaranking2ndcour-01.jpg"),
(11, "Kimetsu no Yaiba", "Animation", 0, date("2018-04-25"), 150, "EN", "TH", 5.0, "A boy raised by boars, who wears a boar's head, boards the Infinity Train on a new mission with the Flame Pillar along with another boy who reveals his true power when he sleeps. Their mission is to defeat a demon who has been tormenting people and killing the demon slayers who oppose it.", "https://m.media-amazon.com/images/M/MV5BZjZjNzI5MDctY2Y4YS00NmM4LTljMmItZTFkOTExNGI3ODRhXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_UY1200_CR115,0,630,1200_AL_.jpg"),
(12, "Kimetsu no yaiba Mugen Train", "Animation", 0, date("2018-04-25"), 150, "JP", "TH", 5.0, "A boy raised by boars, who wears a boar's head, boards the Infinity Train on a new mission with the Flame Pillar along with another boy who reveals his true power when he sleeps. Their mission is to defeat a demon who has been tormenting people and killing the demon slayers who oppose it.", "https://cdn.majorcineplex.com/uploads/movie/3015/thumb_3015.jpg"),
(13, "Inception", "Action", 0, date("2018-04-25"), 200, "KR", "TH", 5.0, "Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's every move.", "https://images.fandango.com/ImageRenderer/400/0/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/223263/IN_EM_TOUTS_sm.jpg"),
(14, "The Imitation Game", "Thriller", 13, date("2018-04-25"), 150, "EN", "TH", 5.0, "In 1939, newly created British intelligence agency MI6 recruits Cambridge mathematics alumnus Alan Turing (Benedict Cumberbatch) to crack Nazi codes, including Enigma -- which cryptanalysts had thought unbreakable. Turing's team, including Joan Clarke (Keira Knightley), analyze Enigma messages while he builds a machine to decipher them. Turing and team finally succeed and become heroes, but in 1952, the quiet genius encounters disgrace when authorities reveal he is gay and send him to prison.", "https://movie05home.files.wordpress.com/2018/07/imitation_game.jpg?w=1100"),
(15, "The Dark Society", "Drama", 10, date("2018-04-25"), 200, "KR", "TH", 5.0, "Two years after the mysterious disappearance of the ancient magical book, the universe has become an even more dangerous place.", "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/drama-movie-poster-template-design-aca536dd594f745b32bee67980c8690d_screen.jpg");