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
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `song` (
  `song_name` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('2 x 4',1),('53rd & 3rd',2),('Ain\'t My Bitch',3),('All Day and All of the Night',4),('All Nightmare Long',5),('All Within My Hands',6),('Am I Evil?',7),('...And Justice for All',8),('(Anesthesia) - Pulling Teeth',9),('Astronomy',10),('Attitude',11),('Bad Seed',12),('Battery',13),('Better Than You',14),('Blackened',15),('Bleeding Me',16),('Blitzkrieg',17),('Brandenburg Gate',18),('Breadfan',19),('Broken',20),('Brothers in Arms',21),('The Call of Ktulu',22),('Career Spanning Medley',23),('Carpe Diem Baby',24),('The Chase Is Better Than the Catch',25),('Cheat On Me',26),('Commando',27),('Crash Course in Brain Surgery',28),('Creeping Death',29),('Cretin Hop',30),('Cure',31),('Cyanide',32),('Damage Case',33),('Damage, Inc.',34),('The Day That Never Comes',35),('Dead Kennedy Rolls',36),('Detroit Rock City',37),('Devil\'s Dance',38),('Die, Die My Darling',39),('Dirty Window',40),('Disposable Heroes',41),('Don\'t Tread On Me',42),('Dragon',43),('Dyers Eve',44),('The Ecstasy of Gold',45),('The End of the Line',46),('Enter Sandman',47),('Escape',48),('Eye of the Beholder',49),('Fade to Black',50),('Fight Fire with Fire',51),('Fixxxer',52),('For Whom the Bell Tolls',53),('The Four Horsemen',54),('Frantic',55),('The Frayed Ends of Sanity',56),('Free Speech for the Dumb',57),('Frustration',58),('Fuel',59),('The God That Failed',60),('Green Hell',61),('Harvester of Sorrow',62),('Hate Train',63),('Hell and Back',64),('Helpless',65),('Hero of the Day',66),('Hit the Lights',67),('Hole in the Sky',68),('Holier Than Thou',69),('The House Jack Built',70),('Iced Honey',71),('I Disappear',72),('I Just Want to Celebrate',73),('Instrumental Medley',74),('Invisible Kid',75),('Iron Man',76),('It\'s Electric',77),('The Judas Kiss',78),('Jump in the Fire',79),('Junior Dad',80),('Just a Bullet Away',81),('Justice Medley',82),('Killing Time',83),('Kill/Ride Medley',84),('King Nothing',85),('Last Caress',86),('Leper Messiah',87),('Let It Loose',88),('Little Dog',89),('London Dungeon',90),('Loverman',91),('Low Man\'s Lyric',92),('Mama Said',93),('Master of Puppets',94),('Mastertarium',95),('The Mechanics',96),('The Memory Remains',97),('Mercyful Fate',98),('Metal Militia',99),('- Human',100),('Mistress Dread',101),('The Money Will Roll Right In',102),('The More I See',103),('Motorbreath',104),('Motorcycle Man',105),('My Apocalypse',106),('My Friend of Misery',107),('My World',108),('The New Song',109),('No Leaf Clover',110),('No Remorse',111),('Nothing Else Matters',112),('Now I Wanna Sniff Some Glue',113),('Of Wolf & Man',114),('One',115),('Only Happy When It Rains',116),('Orion',117),('The Other New Song',118),('The Outlaw Torn',119),('Overkill',120),('Paranoid',121),('Phantom Lord',122),('Please Don\'t Judas Me',123),('Poor Twisted Me',124),('The Prince',125),('Prince Charming',126),('Pumping Blood',127),('Purify',128),('Rapid Fire',129),('Rebel of Babylon',130),('Remember Tomorrow',131),('Ride the Lightning',132),('Ronnie',133),('Sabbra Cadabra',134),('Sad But True',135),('Seek & Destroy',136),('Shoot Me Again',137),('The Shortest Straw',138),('Slither',139),('The Small Hours',140),('Some Kind of Monster',141),('So What',142),('St. Anger',143),('Stone Cold Crazy',144),('Stone Dead Forever',145),('The Struggle Within',146),('Sucking My Love',147),('Suicide & Redemption',148),('Sweet Amber',149),('Sweet Jane',150),('That Was Just Your Life',151),('The Thing That Should Not Be',152),('Thorn Within',153),('Through the Never',154),('Today Your Love, Tomorrow the Worl',155),('To Live Is to Die',156),('Too Late Too Late',157),('The Train Kept-A-Rollin\'',158),('Trapped Under Ice',159),('Tuesday\'s Gone',160),('Turn the Page',161),('The Unforgiven',162),('The Unforgiven II',163),('The Unforgiven III',164),('The Unnamed Feeling',165),('Until It Sleeps',166),('Veteran of the Psychic Wars',167),('The View',168),('The Wait',169),('Wasting My Hate',170),('(We Are) The Road Crew',171),('Welcome Home (Sanitarium)',172),('We\'re a Happy Family',173),('When a Blind Man Cries',174),('Where the Wild Things Are',175),('Wherever I May Roam',176),('Whiplash',177),('Whiskey in the Jar',178),('White Light / White Heat',179),('You Really Got Me',180);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04  1:03:07
