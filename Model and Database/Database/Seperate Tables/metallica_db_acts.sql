-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: metallica_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acts`
--

DROP TABLE IF EXISTS `acts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acts` (
  `act_name` varchar(47) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `act_id` int(11) NOT NULL,
  PRIMARY KEY (`act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acts`
--

LOCK TABLES `acts` WRITE;
/*!40000 ALTER TABLE `acts` DISABLE KEYS */;
INSERT INTO `acts` VALUES ('Cage the Elephant',1),('Paul McCartney',2),('Childish Gambino',3),('Arctic Monkeys',4),('David Byrne',5),('and St. Vincent',6),('Deftones',7),('St. Vincent and Greta Van Fleet',8),('Kvelertak',9),('G-Eazy',10),('Rancid',11),('Dave Matthews',12),('Dead & Company and Raphael Saadiq',13),('Aphyxion',14),('Avenged Sevenfold',15),('Gojira',16),('Mix Master Mike',17),('Royal Blood',18),('Volbeat',19),('Local H',20),('Primus',21),('The Pretty Reckless',22),('Biffy Clyro',23),('Amon Amarth',24),('Dillinger Escape Plan',25),('Iggy Pop',26),('Los Sicarios del Rock & Roll',27),('Halcón 7',28),('Cerberus',29),('Defecto',30),('I\'ll Be Damned',31),('Hatesphere',32),('BABYMETAL',33),('Heresy',34),('Metal Requiem',35),('Victimized',36),('SETLIST',37),('Zafakon',38),('Mötley Crüe',39),('Baroness',40),('Bring Me the Horizon',41),('Mastodon',42),('Ghost',43),('Jack Action',44),('Fourtones',45),('Meshuggah',46),('Faith No More',47),('Broilers',48),('A Day to Remember',49),('Body Count',50),('Testament',51),('Three Days Grace',52),('A Caustic Fate',53),('Kreator',54),('Hatebreed',55),('Exodus',56),('Within Temptation',57),('Linkin Park',58),('Sepultura',59),('Eminem',60),('Rihanna',61),('Bruce Springsteen',62),('Carrie Underwood',63),('The Black Keys',64),('Zac Brown Band',65),('Dave Grohl',66),('Alice in Chains',67),('Anthrax',68),('Children of Bodom',69),('Airbourne',70),('Devin Towsend Project',71),('Placebo',72),('Damon Albarn',73),('Skrillex',74),('Arsenal',75),('Robert Plant and the Sensational Space Shifters',76),('Rob Zombie',77),('Marteria',78),('Woodkid',79),('Alter Bridge',80),('In Extremo',81),('Klangkarussell Live',82),('Rudimental',83),('Slayer',84),('Danzig',85),('Ozzy Osbourne',86),('Keb Mo',87),('Cirse',88),('Recycled Orchestra',89),('De La Tierra',90),('Raven',91),('Mad Brain',92),('Nepentes',93),('The Stone Roses',94),('Fall Out Boy',95),('Cheap Trick',96),('M.I.A.',97),('Stereophonics',98),('Bullet for My Valentine',99),('Sigur Ros',100),('Kris Kristofferson',101),('Gogol Bordello',102),('Death',103),('Destroid',104),('Rocket from the Crypt',105),('Deftons',106),('Fu Manchu',107),('Vista Chino',108),('Trujillo Trio',109),('Red Hot Chili Peppers',110),('Infectious Grooves',111),('Bassnectar',112),('Flag',113),('Rise Against',114),('Tomahawk',115),('Dropkick Murphys',116),('Halestorm',117),('Five Finger Death Punch',118),('Stone Sour',119),('Nervecell',120),('Blink-182',121),('Memphis May Fire',122),('Crossfaith',123),('A Perfect Circle',124),('Bullet for My Valentie',125),('K\'Naan',126),('The Revivalist',127),('AWOLNATION',128),('Silversun Pickups',129),('Jim Breuer',130),('Stryker',131),('Norah Jones',132),('The Kills',133),('Passion Pit',134),('Grandaddy',135),('Big Boi',136),('Explosions in the Sky',137),('Voltax',138),('Koltdown',139),('Eric Church',140),('Best Coast',141),('Gary Clark Jr.',142),('A Place to Bury Strangers',143),('The Black Dahlia Murder',144),('Torche',145),('Landmine Marathon',146),('?Thy Will Be Done',147),('Titus Andronicus',148),('Charred Walls of the Damned',149),('Jim Breuer Heavy Metal Comedy Tour',150),('Shuli Egar',151),('Soul Rebels',152),('The Black Angels',153),('Liturgy',154),('Modest Mouse',155),('The Gaslight Anthem',156),('Lucero',157),('Fucked Up',158),('The Sword',159),('Suicidal Tendencies',160),('Red Fang',161),('Kyng',162),('Letlive',163),('Black Tusk',164),('Hot Snakes',165),('Jim Florentine',166),('Don Jamieson',167),('Roky Erickson',168),('Wooden Shjips',169),('Nightwish',170),('Oomph',171),('Trivium',172),('As I Lay Dying',173),('Devin Townsend',174),('The Computers',175),('Tenacious D',176),('Steel Panther',177),('Black Veil Brides',178),('Saxon',179),('Machine Head',180),('Amorphis',181),('Hardcore Superstar',182),('Billy Talent',183),('Refused',184),('Enter Shikari',185),('Shinedown',186),('Motörhead',187),('Eluveitie',188),('Soundgarden',189),('Channel Zero',190),('Sister',191),('Evanescence',192),('Black Label Society',193),('Death Angel',194),('Soul Rebels Brass Band',195),('Lääz Rockit',196),('Armored Saint',197),('Apocalyptica',198),('Nerve Cell',199),('Metallica',200),('Slipknot',201),('Coheed and Cambria',202),('Gloria',203),('Megadeth',204),('will.i.am',205),('Joe Satriani',206),('Dance Laury Dance',207),('Coheed & Cambria',208),('Seether',209),('Protest the Hero',210),('Matt Mays',211),('Diamond Head',212),('Lamb of God',213),('Fear Factory',214),('Tainted',215),('Panic Cell',216),('Atreyu',217),('DevilDriver',218),('Smoke Blow',219),('Behemoth',220),('Sôber',221),('Marillion',222),('High on Fire',223),('Orphaned Land',224),('Extincion',225),('Malingo',226),('U2',227),('Jeff Beck',228),('Moonalice',229),('Nine Inch Nails',230),('Limp Bizkit',231),('Killing Joke',232),('Buckcherry',233),('Thin Lizzy',234),('The Cult',235),('Cradle of Filth',236),('Down',237),('Mass Hysteria',238),('M.O.P.A.',239),('Kasier Chiefs',240),('Black Eyed Peas',241),('The Mars Volta',242),('Seasick Steve',243),('Metro Station',244),('Die Toten Hosen',245),('The Prodigy',246),('Korn',247),('Kamelot',248),('Pendulum',249),('Disturbed',250),('Black Stone Cherry',251),('Flyleaf',252),('Sonic Syndicate',253),('Drumatical Theatre',254),('\'Tenacious D',255),('Feeder',256),('Plain White T\'s',257),('Alexisonfire',258),('Mindless Self Indulgence',259),('Sweet Savage',260),('Mnemic',261),('Cold War Kids',262),('30 Seconds to Mars',263),('Serj Tankian',264),('Hellyeah',265),('Jonathan Davis',266),('Cavalera Conspiracy',267),('Shadows Fall',268),('In This Moment',269),('Pentagram',270),('Chris Rock',271),('The Raconteurs',272),('Stephen Marley',273),('The Offspring',274),('In Flames',275),('Alpha Galates',276),('Moonspell',277),('Soilwork',278),('Incubus',279),('Flogging Molly',280),('Bad Religion',281),('Pennywise',282),('Scars on Broadway',283),('Apocalyptics',284),('Flobots',285),('Neil Young',286),('Tom Waits with Kronos Quartet',287),('My Morning Jacket',288),('Tegan and Sara',289),('Jerry Lee Lewis',290),('John Mayer',291),('Regina Spektor',292),('H.I.M.',293),('Turbonegro',294),('Madonna',295),('Foo Fighters',296),('Pussycat Dolls',297),('Beastie Boys',298),('James Blunt',299),('Spinal Tap',300),('Keane',301),('Terra Naomi',302),('Corinne Bailey Rae',303),('Bloc Party',304),('Duran Duran',305),('John Legend',306),('The Black Eyed Peas',307),('Paolo Nutini',308),('Kasabian',309),('Damien Rice & David Gray',310),('Snow Patrol',311),('Razorlight',312),('Genesis',313),('SOS Allstars',314),('Heaven & Hell',315),('My Dying Bride',316),('Dirt Spawn Disease',317),('Interpol',318),('The Kooks',319),('The (Int) Noise Conspiracy',320),('Zico Chain',321),('Biok',322),('The Blood Brothers',323),('More Than a Thousand',324),('Men Eater',325),('Tool',326),('Hoobastank',327),('Zebrahead',328),('Taking Back Sunday',329),('Hawthorne Heights',330),('The Darkness',331),('Lacuna Coil',332),('Living Things',333),('Bloodsimple',334),('Unhellig',335),('Tanle Padar & the Sun',336),('Pedigree',337),('Arch Enemy',338),('Satyricon',339),('Reamonn',340),('The Rolling Stones',341),('Everclear',342),('Godsmack',343),('Monster Magnet',344),('Lost Prophets',345),('Motorhead',346),('Static X',347),('Kid Alex',348),('Vader',349),('Hoodoo Gurus',350),('Dandy Warhols',351),('Skulker',352),('The Datsuns',353),('Muse',354),('8 Foot Sativa',355),('System of a Down',356),('Sum 41',357),('Primal Scream',358),('Good Charlotte',359),('The Used',360),('Sugarcult',361),('Lagwagon',362),('Anti Flag',363),('Alien Ant Farm',364),('Die Happy',365),('Beck',366),('Sportfreunde Stiller',367),('The Notwist',368),('Bright Eyes',369),('Wir Sind Helden',370),('Tomte',371),('From Autumn to Ashes',372),('Mudvayne',373),('Arno',374),('Queens of the Stone Age',375),('Anouk',376),('Xzibit',377),('Millionaire',378),('Zwan',379),('Tricky',380),('Sober',381),('Mucho Muchacho',382),('Inme',383),('Marilyn Manson',384),('Distrubed',385),('Autumn',386),('Flint',387),('Punkreas',388),('Extrema',389),('Karenea',390),('Boysetsfire',391),('The Depressor',392),('Systematic',393),('CKY',394),('Corrosion of Conformity',395),('Kid Rock',396),('Stone Temple Pilots',397),('Barenaked Ladies',398),('Third Eye Blind',399),('Tonic',400),('The Tragically Hip',401),('Veruca Salt',402),('Vertical Horizon',403),('Guster',404),('Nine Days',405),('Sevendust',406),('Nashville Pussy',407),('Powerman 5000',408),('Dr. Dre',409),('Snoop Dogg',410),('Filter',411),('Ted Nugent',412),('Creed',413),('Rage Against the Machine',414),('Alanis Morissette',415),('Dave Matthews Band',416),('Counting Crows',417),('Wyclef Jean with the Refugee Allstars',418),('Almafuerte',419),('Pestilencia',420),('Darkness',421),('Pantera',422),('Battery',423),('Jerry Cantrell',424),('Days of the New',425),('Horsehead',426),('Lou Reed',427),('The Smashing Pumpkins',428),('Blues Traveler',429),('Kacy Crowley',430),('Terrorvision',431),('Bush',432),('Dinosaur Jr.',433),('3 Colours Red',434),('Descendents',435),('Dog Eat Dog',436),('Radish',437),('Die Fantastischen',438),('Vier',439),('Clawfinger',440),('Helmet',441),('Farmer Boys',442),('3 Cloours Red',443),('Rammstein',444),('Devo',445),('Ramones',446),('Shaolin Monks',447),('Screaming Trees',448),('Psychotica',449),('Steve Earle',450),('Waylon Jennings',451),('Wu-Tang Clan',452),('Violent Femmes',453),('Cocteau Twins',454),('The Giant Behemoth',455),('Stone Fox',456),('Hole',457),('Moist',458),('Therapy?',459),('Skid Row',460),('Slash\'s Snakepit',461),('White Zombie',462),('Warrior Soul',463),('Fight',464),('Candlebox',465),('Lenny Kravitz',466),('The Black Crowes',467),('Sonic Youth',468),('Tragically Hip',469),('Sugar',470),('Levelers',471),('The Almighty',472),('Electric Boys',473),('Mercyful Fate',474),('Kyuss',475),('Guns N\' Roses',476),('Metal Church',477),('Queensrÿche',478),('AC/DC',479),('E.S.T.',480),('Aerosmith',481),('Warrant',482),('Dio',483),('Bonham',484),('Mortal Sin',485),('Iron Maiden',486),('Helloween',487),('Manzano',488),('Royal Air Force',489),('Van Halen',490),('Scorpions',491),('Dokken',492),('Kingdom Come',493),('Deep Purple',494),('RATT',495),('Cinderella',496),('Pretty Maids',497),('Bon Jovi',498),('W.A.S.P.',499),('Crimson Glory',500),('Celtic Frost',501),('Laaz Rockit',502),('Eric Clapton',503),('Phil Collins',504),('Madness',505),('Elvis Costello',506),('King Kobra',507),('Y&T',508),('Venom',509),('Nazareth',510),('Wishbone Ash',511),('Warlock',512),('Heavy Pettin',513),('Running Wild',514),('Restless',515),('Savage Grace',516),('Tyran Pace',517),('Yngwie Malmsteen\'s Rising Force',518),('Victory',519),('ZZ Top',520),('Magnum',521),('Tommy Vance',522),('Tank',523),('Bernie Tomie',524),('Gary Moore',525),('Motley Crue',526),('Accept',527),('Bullet',528),('Sortilege',529),('Twisted Sister',530),('Lita Ford',531),('Faithful Breath',532),('H. Bomb',533),('Jess Cox',534),('Savage',535),('Sneak Attack',536),('Overkill',537),('Anti',538),('Wild Dogs',539),('Sabotage',540),('Tourist',541),('Millenium',542),('Culprit',543),('Warning',544),('Vicious Rumors',545),('Pandemonium',546),('Overdrive',547),('Modern Design',548),('Vertigo',549),('El Grupo Sexo',550),('Bitch',551),('Hans Naughty',552),('Sarge',553),('Stormer',554),('Greg Leon Invasion',555),('Roxx Regime',556),('Kaos',557),('Steeler',558),('Sound Barrier',559),('Greg Hill Band',560),('BBB',561),('Glass Target',562),('Jan King & Valentine',563),('Jon Schwartz',564),('Still Anxious',565),('Great Legacy',566),('Tymes',567),('August Redmoon',568),('Leatherwolf',569),('Roxy Roller',570),('J.P. Fires',571),('Riptide',572);
/*!40000 ALTER TABLE `acts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04  1:03:09
