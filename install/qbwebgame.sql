-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2017 at 09:28 PM
-- Server version: 5.5.52-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qbwebgame`
--

-- --------------------------------------------------------

--
-- Table structure for table `char_info`
--

CREATE TABLE IF NOT EXISTS `char_info` (
  `name` varchar(10) NOT NULL,
  `title` varchar(40) NOT NULL,
  `race` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ht` tinyint(1) unsigned NOT NULL,
  `hp` tinyint(2) unsigned NOT NULL,
  `tp` tinyint(2) unsigned NOT NULL,
  `lp` tinyint(2) unsigned NOT NULL,
  `att` tinyint(1) unsigned NOT NULL,
  `cm` tinyint(3) unsigned NOT NULL,
  `b` tinyint(2) unsigned NOT NULL,
  `w` tinyint(2) unsigned NOT NULL,
  `h` tinyint(2) unsigned NOT NULL,
  `job` varchar(40) NOT NULL,
  `weapon` varchar(40) NOT NULL,
  `gear` varchar(40) NOT NULL,
  `item` tinyint(1) unsigned NOT NULL,
  `likes` varchar(40) NOT NULL,
  `dislikes` varchar(40) NOT NULL,
  `hobby` varchar(40) NOT NULL,
  `atype` tinyint(1) unsigned NOT NULL,
  `wcond` tinyint(1) unsigned NOT NULL,
  `helm` tinyint(1) unsigned NOT NULL,
  `shield` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `char_info`
--

INSERT INTO `char_info` (`name`, `title`, `race`, `ht`, `hp`, `tp`, `lp`, `att`, `cm`, `b`, `w`, `h`, `job`, `weapon`, `gear`, `item`, `likes`, `dislikes`, `hobby`, `atype`, `wcond`, `helm`, `shield`) VALUES
('Leina', 'Wandering Warrior', 'Human', 4, 12, 6, 0, 1, 170, 88, 60, 85, 'Adventurer', 'Sword', 'Bronze Chainmail, Shield, Circlet', 3, 'Wine', 'Corset', 'Swordplay Practice', 2, 1, 1, 1),
('Risty', 'Wasteland Bandit', 'Human', 4, 13, 5, 0, 1, 179, 90, 66, 85, 'Bandit Leader', 'Morningstar', 'Breastplate, Shield', 3, 'Meat and Alcoholics', 'Monkeys', 'Tub Bathing', 2, 1, 0, 1),
('Irma', 'Assassin from Kiba', 'Human', 4, 12, 6, 0, 1, 167, 85, 58, 83, 'Street Cleaner', 'Sword, Dagger', 'Nothing Special', 3, 'Quiescence', 'Interpersonal Relationship', 'Help cute stray cats', 1, 1, 0, 0),
('Nowa', 'Guardian of the Forest', 'Elf', 4, 10, 8, 0, 2, 158, 78, 55, 81, 'Forest Guardian', 'Staff', '''Loo'' the Monkey', 3, 'Animals', 'Loneliness', 'Collect fascinating stones', 1, 0, 0, 0),
('Tomoe', 'Warrior Shrine Maiden', 'Human', 4, 12, 6, 0, 1, 160, 87, 57, 85, 'Warrior Shrine Maiden', 'Katana', 'Ofuda, Hachigane', 3, 'Cake (taught by Leina)', 'Vulgar People', 'Waka Chanting', 1, 1, 1, 0),
('Echidna', 'Veteran Mercenary', 'Elf', 4, 12, 0, 8, 1, 162, 94, 63, 86, 'Mercenary', 'Sword, 3 Daggers', 'Shield', 3, 'Snake (especially the magical ''Kerutan'')', 'Forest Elves'' Sermon', 'Travel alone', 2, 1, 0, 1),
('Menace', 'Ancient Princess', 'Undead', 4, 12, 0, 3, 1, 157, 90, 58, 85, 'Princess', '''Setra'' the Living Septor', 'Crown', 3, 'Oil Massage', 'People not following orders', 'Practise fighting skills', 0, 1, 1, 0),
('Elina', 'Captain of the Royal Guard', 'Human', 4, 12, 9, 5, 1, 168, 85, 54, 84, 'Royal Guard Captain', 'Spear, Iron Claw', 'Nothing Special', 0, 'Leina', 'Dogs', 'Fantasing about Leina', 1, 1, 0, 0),
('Airi', 'Infernal Temptress', 'Undead', 4, 8, 0, 8, 2, 161, 86, 56, 83, 'Maid & Bodyguard', 'Scythe', 'Nothing Special', 3, 'Pretty Girls Spirit Energy', 'Disapearing from this world', 'Dancing', 0, 0, 0, 0),
('Leina3D', 'Exalted Warrior', 'Human', 4, 10, 0, 7, 1, 170, 88, 60, 85, 'Adventurer', 'Sword', 'Bronze Chainmail, Shield, Circlet', 3, 'Wine', 'Corset', 'Swordplay Practice', 2, 1, 1, 1),
('Nanaelle', 'Angel of Light', '', 4, 16, 0, 4, 1, 162, 84, 57, 82, 'Messenger from Heaven', 'Celestial Sabre', 'Nothing Special', 1, 'Males on the Earth', 'Females on the Earth', 'Hunt males on the earth', 1, 0, 0, 0),
('Katorea', 'Weapon Merchant', '', 4, 12, 4, 0, 1, 175, 120, 68, 99, 'Weapon Merchant', 'Claymore ''Giant Killer'', 3 Javelins', 'Nothing Special', 5, 'Family', 'Cockroach', 'Gardening', 1, 2, 0, 0),
('Nix', 'Master of Flame', '', 4, 10, 0, 15, 1, 165, 86, 56, 83, 'Witch (Flame)', 'Magic Wand Funicula', 'Nothing Special', 0, 'Funicula', 'All people who mocked her before', 'Cooking', 1, 0, 0, 0),
('Merfa', 'Priestess of the Capital', '', 4, 10, 0, 12, 1, 166, 96, 67, 88, 'Advanced Priestess', 'Flail', 'Shield', 0, 'Watch peoples smiles', 'Holy Postures', 'Singing', 1, 0, 0, 1),
('Mellona', 'Shapeshifter', '', 4, 7, 0, 6, 1, 0, 0, 0, 0, 'Swamp Witch''s Aide(Spy & Assasin)', 'Freely Changing', 'Nothing Special', 0, 'Crustacean', 'Unresponsive Opponent', 'Mischief Making', 0, 1, 0, 0),
('Claudette', 'Lord of Thunder', '', 4, 11, 16, 0, 1, 172, 89, 60, 87, 'General Officer', '''Thunderclap'' the Two-handed Sword', 'Helm', 3, 'Cute Things (especially Elina)', 'Irresponsibleness', 'Chess Game', 1, 0, 1, 0),
('Alice', 'Gate Opener', '', 3, 9, 12, 0, 1, 0, 0, 0, 0, 'Treasure Hunter', '2 Dagger-attached Pistols, Whip', 'Protective Suit', 0, 'Donuts', '', '', 0, 1, 0, 0),
('Ink', 'Witch Girl', '', 3, 14, 0, 5, 1, 0, 0, 0, 0, 'Student', 'Magical Stick', 'Nothing Special', 0, 'Nao Kun', '', '', 1, 0, 0, 0),
('Iroha', 'Favor Returner', '', 4, 14, 5, 0, 1, 160, 91, 59, 85, 'Housewife', '''Hourin'' & ''Ousai''', 'Nothing Special', 0, 'River Snail, Loach', '', 'Doing anything for husband', 1, 1, 0, 0),
('Stella', 'Female Soldier', 'Human', 4, 14, 6, 0, 1, 182, 92, 67, 88, 'Soldier', 'Steel Sword', 'Bikini Armor, Leather Shield, Iron Helm', 3, 'Strong Guys, Luidas Wine', 'Tasteless Men, Spell-casting Monsters', 'Sword Training', 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `echidna_far`
--

CREATE TABLE IF NOT EXISTS `echidna_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `echidna_far`
--

INSERT INTO `echidna_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 59, 17, 41, 9, 19, 19),
(52, 21, 61, 63, 57, 3, 9, 57, 57),
(54, 53, 33, 63, 17, 35, 9, 35, 3),
(56, 39, 61, 63, 17, 57, 57, 57, 3),
(58, 39, 33, 61, 47, 3, 13, 57, 57),
(60, 13, 33, 19, 57, 3, 9, 57, 47),
(62, 39, 61, 61, 57, 57, 57, 57, 57),
(64, 7, 35, 53, 17, 57, 57, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `echidna_near`
--

CREATE TABLE IF NOT EXISTS `echidna_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `echidna_near`
--

INSERT INTO `echidna_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 45, 17, 13, 19, 13, 19, 49, 57, 37, 19, 49, 13, 13, 13, 45, 13, 41, 13, 13, 45, 45, 15, 27, 13),
(4, 3, 19, 9, 33, 3, 3, 11, 57, 37, 19, 5, 15, 17, 3, 3, 9, 19, 59, 51, 3, 3, 15, 43, 19),
(6, 19, 17, 17, 33, 3, 3, 45, 19, 19, 29, 5, 15, 17, 45, 3, 45, 19, 63, 19, 19, 19, 45, 19, 45),
(8, 3, 17, 9, 33, 3, 3, 23, 57, 37, 29, 21, 15, 17, 3, 3, 9, 19, 59, 51, 3, 3, 15, 43, 3),
(10, 31, 53, 9, 19, 45, 3, 7, 57, 19, 23, 7, 45, 17, 31, 3, 53, 25, 31, 49, 53, 19, 45, 43, 45),
(12, 19, 17, 9, 19, 19, 45, 11, 57, 19, 29, 5, 45, 17, 19, 3, 45, 25, 19, 49, 19, 45, 15, 29, 45),
(14, 45, 17, 45, 23, 13, 3, 13, 19, 37, 19, 5, 13, 13, 13, 3, 13, 13, 13, 13, 45, 45, 13, 53, 45),
(16, 57, 57, 9, 61, 57, 57, 11, 57, 57, 57, 5, 19, 57, 21, 57, 9, 41, 63, 57, 21, 57, 57, 43, 57),
(18, 3, 17, 17, 33, 3, 3, 11, 57, 37, 29, 5, 15, 17, 3, 3, 9, 41, 59, 51, 21, 3, 15, 43, 3),
(20, 3, 17, 9, 33, 23, 3, 11, 57, 37, 29, 5, 15, 17, 23, 3, 9, 25, 59, 51, 3, 3, 15, 43, 3),
(22, 45, 17, 9, 23, 13, 19, 13, 19, 37, 19, 19, 15, 17, 3, 3, 31, 25, 13, 51, 45, 45, 13, 43, 45),
(24, 53, 41, 17, 33, 45, 45, 11, 1, 19, 19, 5, 7, 17, 3, 3, 45, 53, 59, 49, 21, 3, 15, 41, 17),
(26, 3, 17, 9, 33, 3, 3, 11, 57, 19, 29, 5, 15, 19, 3, 3, 9, 25, 63, 51, 3, 3, 19, 43, 19),
(28, 7, 31, 45, 19, 3, 19, 11, 23, 37, 23, 5, 53, 53, 19, 31, 9, 25, 31, 49, 41, 3, 15, 29, 3),
(30, 45, 17, 9, 33, 3, 3, 11, 57, 37, 29, 49, 15, 17, 3, 27, 27, 25, 59, 49, 3, 27, 15, 27, 3),
(32, 53, 53, 45, 33, 3, 45, 53, 19, 19, 29, 53, 45, 17, 53, 3, 31, 25, 53, 49, 31, 19, 45, 43, 17),
(34, 3, 17, 9, 33, 3, 3, 11, 1, 37, 29, 19, 15, 19, 3, 3, 9, 19, 41, 51, 41, 3, 15, 27, 19),
(36, 3, 7, 55, 33, 3, 3, 11, 1, 7, 19, 5, 15, 55, 7, 27, 9, 7, 59, 51, 7, 3, 55, 7, 55),
(38, 31, 53, 9, 19, 45, 45, 7, 57, 19, 29, 5, 45, 17, 3, 3, 45, 25, 31, 49, 3, 19, 45, 43, 45),
(40, 45, 17, 31, 33, 3, 41, 45, 23, 23, 19, 49, 23, 13, 3, 3, 9, 25, 41, 49, 3, 45, 15, 43, 3),
(42, 45, 17, 9, 19, 19, 45, 45, 57, 37, 31, 49, 19, 17, 19, 3, 9, 41, 19, 19, 45, 45, 15, 27, 45),
(44, 3, 19, 45, 33, 45, 3, 19, 57, 19, 19, 19, 15, 17, 19, 19, 45, 19, 63, 49, 19, 3, 45, 27, 45),
(46, 3, 17, 9, 33, 3, 3, 11, 1, 37, 29, 5, 15, 17, 3, 15, 9, 25, 59, 51, 3, 3, 15, 43, 3),
(48, 3, 19, 45, 19, 45, 45, 45, 57, 19, 29, 49, 19, 17, 19, 19, 9, 25, 63, 49, 19, 45, 45, 19, 45);

-- --------------------------------------------------------

--
-- Table structure for table `echidna_result`
--

CREATE TABLE IF NOT EXISTS `echidna_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(30) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `echidna_result`
--

INSERT INTO `echidna_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(3, 'Swinging', 'Restrict', 'No Thrust or Throw next turn', 'Thrust,Throw', '', '', 0, 0),
(5, 'Twin Blade Swinging', 'Restrict', 'Shield dropped,no Thrust next turn', 'Thrust', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Green or Yellow next turn', '', 'Orange', 'Green,Yellow', 7, 11),
(9, 'Thrusting', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(11, 'Lunging', 'Restrict', 'No Side Swing, Orange or Red next turn', 'Side Swing,Orange,Red', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Orange next turn', 'Orange', 'Blue', '', 3, 7),
(15, 'Swinging Down', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(17, 'Blocking', 'Score', 'No Fake next turn', 'Fake', '', '', -4, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', -1, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Foot Sweeping', 'Restrict', 'Only Move next turn', '', '', 'Move', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until drawn', 'Weapon', '', '', -6, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +2 if score w/ Blue next turn', 'Orange', '', 'Blue', 2, 0),
(31, 'Arm Wounded', 'Score', 'No Orange next turn', 'Orange', 'Shield Block,Protected Attack', '', 1, 5),
(33, 'Dodging', 'Bonus', '+1 if score w/ Side Swing next turn', '', '', 'Side Swing', 1, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 2, 6),
(37, 'Jumping Up', 'Bonus', 'No Blue, +2 if score w/ Orange next turn', 'Blue', '', 'Orange', 2, 0),
(39, 'Charging', 'Restrict', 'No Yellow or Throw next turn', 'Yellow,Throw', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Green or Yellow next turn', '', 'Red', 'Green,Yellow', 0, 4),
(43, 'Retrieving Weapon', 'Bonus', 'Picked up a weapon, no Throw next turn', 'Throw', '', 'Weapon', 0, 0),
(45, 'Parrying', 'Score', 'No Throw next turn', 'Throw', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 3, 0),
(49, 'Parrying and Stabbing', 'Score', 'No Throw next turn', '', '', '', -4, 0),
(51, 'Thrusting and Stabbing', 'Restricted', 'Shield dropped, no S/D Swing next turn', 'Side Swing,Down Swing', '', '', 0, 0),
(53, 'Body Wounded', 'Score', 'No Red or Orange next turn', '', 'Special', 'Green,Yellow,Blue', 2, 6),
(55, 'Shield Smashed', 'Score', 'Cannot use shield rest of the time', 'Shield', '', '', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Throwing Dagger', 'Restricted', 'Only Move next turn', '', '', 'Move', 0, 0),
(61, 'Dodging (Extended Range)', 'Bonus', 'Only Extended Range,+1 if score w/ Swing', '', '', 'Swing High,Swing Low', 1, 0),
(63, 'Dagger Lodged in Shield', 'Restricted', 'Only Move next turn', 'Dagger', '', 'Move', -1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `echidna_sheet`
--

CREATE TABLE IF NOT EXISTS `echidna_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL,
  `mdf2` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `echidna_sheet`
--

INSERT INTO `echidna_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`, `mdf2`) VALUES
('Throw', 'Dagger', 'Orange', 'Dagger', 36, 54, 3, 3),
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3, 1),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 2, 0),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1, -1),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1, -1),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, 0, -2),
('Thrust', 'Lunge', 'Blue', 'Weapon', 14, 50, 2, 0),
('Feint', 'High', 'Red', 'Weapon', 42, 56, 0, -2),
('Feint', 'Low', 'Blue', 'Weapon', 12, 56, 1, -1),
('Sword and Dagger', 'Side Swing', 'Blue', 'Weapon', 38, 58, 0, 0),
('Sword and Dagger', 'Thrust', 'Red', 'Weapon', 22, 60, 0, 0),
('Block and Attack', 'Down Swing', 'Orange', 'Weapon,Shield', 44, 56, 1, -1),
('Block and Attack', 'Side Swing', 'Blue', 'Weapon,Shield', 48, 56, 0, -2),
('Block and Attack', 'Thrust', 'Red', 'Weapon,Shield', 6, 56, 0, -2),
('Special', 'Foot Sweep', 'Blue', 'None', 34, 56, 1, 1),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 2, 0),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6, -6),
('Shield Block', 'High', 'Green', 'Shield', 26, 56, 1, 1),
('Shield Block', 'Low', 'Green', 'Shield', 4, 56, 1, 1),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6, -6),
('Move', 'Dodge and Draw', 'Yellow', 'None', 8, 52, -4, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 4, 2),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -2, -4),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -2, -4),
('Extended Range', 'Throw Dagger', 'White', 'Dagger', 54, 0, 5, 5),
('Extended Range', 'Thrust', 'White', 'Weapon', 60, 0, 0, -2),
('Extended Range', 'Block and Close', 'Brown', 'Shield', 56, 0, 0, 0),
('Extended Range', 'Dodge and Draw', 'Brown', 'None', 52, 0, -4, -4),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -4, -4);

-- --------------------------------------------------------

--
-- Table structure for table `elina_far`
--

CREATE TABLE IF NOT EXISTS `elina_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elina_far`
--

INSERT INTO `elina_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 11, 17, 41, 63, 1, 31),
(52, 21, 61, 11, 57, 9, 63, 55, 57),
(54, 13, 33, 45, 17, 35, 63, 35, 5),
(56, 39, 61, 11, 17, 51, 59, 55, 5),
(58, 39, 33, 35, 35, 9, 63, 55, 57),
(60, 19, 33, 19, 57, 9, 63, 55, 35),
(62, 39, 61, 57, 57, 51, 59, 55, 57),
(64, 53, 35, 11, 17, 51, 35, 55, 5);

-- --------------------------------------------------------

--
-- Table structure for table `elina_near`
--

CREATE TABLE IF NOT EXISTS `elina_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elina_near`
--

INSERT INTO `elina_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 45, 63, 19, 19, 45, 3, 45, 57, 37, 19, 49, 15, 0, 13, 45, 9, 13, 19, 0, 45, 5, 47, 19, 19),
(4, 19, 19, 19, 33, 3, 19, 9, 57, 37, 19, 19, 15, 0, 3, 27, 9, 41, 15, 0, 3, 19, 47, 43, 17),
(6, 53, 63, 11, 33, 3, 3, 31, 19, 19, 29, 53, 15, 0, 3, 27, 9, 41, 31, 0, 3, 53, 47, 19, 17),
(8, 5, 63, 11, 33, 3, 3, 21, 57, 37, 29, 21, 15, 0, 3, 27, 9, 41, 15, 0, 3, 5, 47, 43, 17),
(10, 45, 31, 11, 19, 45, 3, 45, 57, 13, 23, 7, 45, 0, 53, 27, 31, 25, 31, 0, 7, 5, 47, 43, 17),
(12, 13, 63, 11, 33, 31, 3, 9, 57, 37, 29, 49, 19, 0, 3, 27, 9, 25, 19, 0, 53, 5, 47, 43, 17),
(14, 45, 63, 11, 23, 45, 3, 19, 19, 37, 53, 49, 53, 0, 13, 27, 9, 53, 13, 0, 45, 5, 19, 53, 17),
(16, 57, 57, 11, 61, 57, 57, 9, 57, 57, 57, 49, 15, 0, 21, 57, 9, 41, 41, 0, 21, 57, 57, 43, 57),
(18, 5, 63, 11, 33, 3, 3, 9, 57, 37, 29, 49, 15, 0, 3, 27, 9, 41, 15, 0, 21, 5, 47, 43, 17),
(20, 5, 63, 11, 33, 21, 3, 9, 57, 37, 29, 49, 15, 0, 21, 27, 9, 25, 15, 0, 3, 5, 47, 43, 17),
(22, 5, 63, 19, 23, 3, 13, 19, 1, 37, 29, 19, 15, 0, 3, 27, 9, 25, 15, 0, 3, 5, 19, 43, 17),
(24, 7, 19, 11, 33, 45, 3, 9, 1, 19, 53, 49, 7, 0, 3, 27, 45, 53, 15, 0, 21, 5, 47, 41, 17),
(26, 5, 63, 19, 33, 41, 19, 9, 57, 19, 29, 49, 15, 0, 3, 27, 9, 25, 15, 0, 3, 41, 19, 43, 41),
(28, 5, 31, 31, 19, 3, 7, 9, 23, 37, 23, 49, 7, 0, 41, 53, 9, 25, 15, 0, 41, 5, 47, 43, 17),
(30, 45, 63, 11, 33, 3, 3, 9, 57, 37, 29, 27, 15, 0, 3, 27, 19, 25, 15, 0, 3, 27, 47, 19, 17),
(32, 53, 31, 19, 33, 3, 3, 53, 19, 19, 29, 7, 45, 0, 7, 27, 19, 25, 53, 0, 13, 53, 47, 43, 17),
(34, 5, 63, 11, 33, 41, 3, 9, 1, 37, 29, 41, 15, 0, 41, 41, 19, 41, 19, 0, 41, 5, 47, 19, 41),
(36, 5, 19, 11, 33, 3, 3, 9, 1, 37, 19, 49, 15, 0, 53, 27, 9, 25, 15, 0, 53, 5, 47, 19, 17),
(38, 13, 19, 11, 33, 19, 19, 31, 57, 37, 29, 49, 15, 0, 3, 27, 9, 25, 19, 0, 3, 31, 47, 43, 17),
(40, 45, 63, 19, 33, 3, 3, 45, 23, 23, 19, 53, 23, 0, 3, 27, 9, 25, 15, 0, 3, 5, 47, 43, 17),
(42, 5, 63, 11, 33, 31, 3, 9, 57, 37, 29, 49, 13, 0, 13, 27, 9, 41, 19, 0, 19, 19, 47, 19, 17),
(44, 5, 63, 11, 33, 3, 3, 9, 57, 37, 29, 49, 15, 0, 19, 19, 19, 19, 19, 0, 19, 5, 47, 19, 17),
(46, 5, 63, 11, 33, 3, 3, 9, 1, 37, 29, 49, 15, 0, 3, 27, 9, 25, 15, 0, 3, 5, 47, 43, 17),
(48, 5, 19, 11, 19, 3, 3, 9, 57, 37, 29, 49, 13, 0, 53, 53, 9, 25, 19, 0, 31, 31, 19, 19, 19);

-- --------------------------------------------------------

--
-- Table structure for table `elina_result`
--

CREATE TABLE IF NOT EXISTS `elina_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elina_result`
--

INSERT INTO `elina_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+1 if score next turn', '', '', 'All', 1, 0),
(3, 'Swinging High', 'Bonus', 'No Thrust, +1 if score w/ Skill NT', 'Thrust', '', 'Skill', 1, 0),
(5, 'Swinging Low', 'Bonus', 'No Thrust, +1 if score w/ Skill NT', 'Thrust', '', 'Skill', 1, 0),
(7, 'Dazed', 'Score', 'Only Move next turn', '', 'Skill', 'Move', 7, 11),
(9, 'Thrusting', 'Restrict', 'No Side Swing or Skill next turn', 'Side Swing,Skill', '', '', 0, 0),
(11, 'Jump Attack', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 3, 7),
(15, 'Iron Claws', 'Restrict', 'No Orange next turn', 'Orange', '', '', 0, 0),
(17, 'Protected Swing', 'Restrict', 'No Thrust or Down Swing next turn', 'Thrust,Down Swing', '', '', 0, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -4, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +1 if score w/ Blue next turn', 'Orange', '', 'Blue', 1, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Orange', '', 3, 7),
(33, 'Dodging', 'Bonus', '+1 if score w/ Orange or Skill next turn', '', '', 'Orange,Skill', 1, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Skill', 'Brown', 6, 10),
(37, 'Jumping Up', 'Bonus', 'No Blue, +3 if score w/ Orange next turn', 'Blue', '', 'Orange', 3, 0),
(39, 'Charging', 'Restrict', 'No Green or Yellow next turn', 'Green,Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Move or Orange next turn', '', 'Red', 'Move,Orange', 0, 4),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon again', '', '', 'Weapon', 0, 0),
(45, 'Parrying', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Whispering', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(49, 'Foot Sweeping', 'Restrict', 'No Orange or Red next turn', 'Orange,Red', '', '', 0, 0),
(51, 'Thrusting (Extended Range)', 'Restrict', 'Only White or Brown next turn', '', '', 'White,Brown', 0, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Skill', 'Green,Yellow', 6, 10),
(55, 'Recovering (Extended Range)', 'Recover', 'Only Extended Range next turn', '', '', '', 1, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Wire Trap (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(61, 'Dodging (Extended Range)', 'Bonus', '+1 if score next turn', '', '', 'All', 1, 0),
(63, 'Wire Trap', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elina_sheet`
--

CREATE TABLE IF NOT EXISTS `elina_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elina_sheet`
--

INSERT INTO `elina_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Iron Claws', 'Scratch Face', 'Orange', 'None', 36, 50, 3),
('Iron Claws', 'Down Swing', 'Orange', 'None', 24, 50, 2),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 1),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 0),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 64, 0),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, 2),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 54, 2),
('Feint', 'High', 'Red', 'Weapon', 42, 64, 0),
('Feint', 'Low', 'Blue', 'Weapon', 12, 64, 0),
('Spear Skill', 'Protected Side Swing', 'Blue', 'Weapon', 48, 56, 1),
('Spear Skill', 'Foot Sweep', 'Blue', 'Weapon', 22, 60, 1),
('Physical Skill', 'Whisper', 'Orange', 'None', 44, 56, 3),
('Physical Skill', 'Jump Attack', 'Red', 'None', 6, 56, 3),
('Special', 'Kick', 'Blue', 'None', 34, 56, 1),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 64, 3),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 64, -3),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 56, -6),
('Trap', 'Wire', 'Green', 'Weapon', 4, 56, -99),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -6),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 3),
('Extended Range', 'Swing', 'Black', 'Weapon', 64, 0, -6),
('Extended Range', 'Thrust', 'Black', 'Weapon', 58, 0, 2),
('Extended Range', 'Jump Attack', 'White', 'None', 54, 0, 2),
('Extended Range', 'Wire', 'White', 'Weapon', 60, 0, -99),
('Extended Range', 'Block and Close', 'Brown', 'Weapon', 56, 0, -4),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6);

-- --------------------------------------------------------

--
-- Table structure for table `irma_far`
--

CREATE TABLE IF NOT EXISTS `irma_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irma_far`
--

INSERT INTO `irma_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 55, 23, 59, 53, 41, 11, 19, 19),
(52, 21, 57, 63, 57, 5, 11, 57, 57),
(54, 53, 33, 59, 45, 35, 11, 35, 3),
(56, 39, 57, 63, 45, 57, 57, 57, 3),
(58, 39, 33, 61, 47, 5, 13, 57, 57),
(60, 13, 33, 19, 57, 5, 11, 57, 47),
(62, 39, 57, 61, 57, 57, 57, 57, 57),
(64, 7, 47, 53, 45, 57, 57, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `irma_near`
--

CREATE TABLE IF NOT EXISTS `irma_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irma_near`
--

INSERT INTO `irma_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 0, 0, 19, 3, 13, 49, 57, 37, 19, 49, 13, 0, 13, 49, 9, 41, 31, 13, 51, 49, 0, 27, 0),
(4, 5, 0, 0, 33, 3, 3, 11, 57, 37, 19, 11, 15, 0, 3, 15, 9, 19, 63, 3, 5, 5, 0, 43, 0),
(6, 19, 0, 0, 33, 3, 3, 51, 53, 19, 29, 11, 31, 0, 31, 5, 55, 19, 63, 19, 19, 19, 0, 19, 0),
(8, 5, 0, 0, 33, 3, 3, 21, 57, 37, 29, 21, 15, 0, 3, 3, 9, 19, 63, 3, 5, 5, 0, 43, 0),
(10, 31, 0, 0, 19, 45, 3, 7, 57, 13, 23, 7, 45, 0, 31, 3, 53, 25, 31, 55, 53, 31, 0, 43, 0),
(12, 31, 0, 0, 19, 53, 45, 11, 57, 13, 29, 11, 45, 0, 31, 3, 45, 25, 31, 45, 53, 49, 0, 29, 0),
(14, 49, 0, 0, 23, 13, 3, 13, 19, 37, 53, 11, 13, 0, 13, 5, 13, 13, 13, 13, 51, 49, 0, 53, 0),
(16, 57, 0, 0, 57, 57, 57, 11, 57, 57, 57, 11, 19, 0, 21, 57, 9, 41, 63, 57, 21, 57, 0, 43, 0),
(18, 5, 0, 0, 33, 3, 3, 11, 57, 37, 29, 11, 15, 0, 5, 3, 9, 41, 59, 3, 21, 5, 0, 43, 0),
(20, 5, 0, 0, 33, 21, 3, 11, 57, 37, 29, 11, 15, 0, 21, 3, 9, 25, 63, 3, 5, 5, 0, 43, 0),
(22, 49, 0, 0, 23, 13, 13, 13, 19, 37, 53, 19, 15, 0, 3, 5, 31, 25, 13, 3, 51, 49, 0, 43, 0),
(24, 53, 0, 0, 33, 45, 45, 11, 1, 53, 7, 11, 7, 0, 3, 3, 45, 53, 59, 45, 21, 5, 0, 41, 0),
(26, 5, 0, 0, 33, 3, 3, 11, 57, 19, 19, 11, 15, 0, 5, 3, 9, 25, 63, 3, 5, 5, 0, 43, 0),
(28, 53, 0, 0, 19, 3, 53, 11, 23, 37, 23, 11, 19, 0, 19, 31, 9, 25, 59, 27, 41, 5, 0, 29, 0),
(30, 49, 0, 0, 33, 3, 3, 11, 57, 37, 29, 27, 15, 0, 3, 27, 27, 25, 59, 27, 5, 27, 0, 27, 0),
(32, 53, 0, 0, 33, 3, 45, 53, 19, 13, 29, 53, 45, 0, 53, 3, 31, 25, 53, 45, 31, 53, 0, 43, 0),
(34, 5, 0, 0, 33, 3, 3, 11, 1, 37, 29, 19, 15, 0, 17, 3, 17, 25, 41, 3, 41, 5, 0, 27, 0),
(36, 5, 0, 0, 33, 3, 3, 11, 1, 7, 7, 11, 15, 0, 7, 27, 9, 25, 59, 3, 5, 5, 0, 7, 0),
(38, 31, 0, 0, 19, 45, 45, 7, 57, 13, 29, 9, 45, 0, 5, 5, 45, 25, 31, 45, 5, 31, 0, 43, 0),
(40, 49, 0, 0, 33, 3, 41, 49, 23, 23, 53, 13, 23, 0, 3, 5, 9, 25, 41, 3, 5, 49, 0, 43, 0),
(42, 49, 0, 0, 19, 13, 49, 49, 57, 37, 31, 49, 13, 0, 13, 5, 9, 41, 13, 13, 51, 49, 0, 27, 0),
(44, 5, 0, 0, 33, 55, 3, 19, 57, 7, 19, 19, 31, 0, 31, 19, 55, 19, 19, 55, 19, 5, 0, 27, 0),
(46, 5, 0, 0, 33, 3, 3, 11, 1, 37, 29, 11, 15, 0, 3, 15, 9, 25, 59, 3, 5, 5, 0, 43, 0),
(48, 5, 0, 0, 19, 55, 55, 51, 57, 19, 29, 51, 31, 0, 31, 19, 9, 25, 63, 55, 19, 51, 0, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `irma_result`
--

CREATE TABLE IF NOT EXISTS `irma_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irma_result`
--

INSERT INTO `irma_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(3, 'Swinging High', 'Restrict', 'No Red next turn', 'Red', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Green or Yellow next turn', '', 'Orange', 'Green,Yellow', 7, 11),
(9, 'Thrusting High', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(11, 'Thrusting Low', 'Restrict', 'No Red next turn', 'Red', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Orange next turn', 'Orange', 'Blue', '', 5, 9),
(15, 'Swinging Down', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(17, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Yellow next turn', 'Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use the weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +2 if score w/ Blue next turn', 'Orange', '', 'Blue', 2, 0),
(31, 'Arm Wounded', 'Score', 'No Orange next turn', 'Orange', 'Blue', '', 4, 8),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 6, 10),
(37, 'Jumping Up', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(39, 'Charging', 'Restrict', 'No Yellow next turn', 'Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Green or Yellow next turn', '', 'Red', 'Green,Yellow', 1, 5),
(43, 'Retrieving Weapon', 'Bonus', 'Can use the weapon again', '', '', 'Weapon', 0, 0),
(45, 'Parrying High, Stabbing Low', 'Score', 'No restrictions next turn', '', '', '', -3, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 5, 0),
(49, 'Parrying Low, Stabbing High', 'Score', 'No restrictions next turn', '', '', '', -3, 0),
(51, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -3, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Special', 'Green,Yellow', 6, 10),
(55, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -3, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Dagger Throw', 'Restricted', 'No Orange next turn', 'Orange', '', '', 0, 0),
(61, 'Dagger Throw (Extended Range)', 'Restricted', 'No White next turn', 'White', '', '', 0, 0),
(63, 'Dagger Lodged in Shield', 'Score', 'No Orange next turn', 'Orange, Dagger', '', '', -1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `irma_sheet`
--

CREATE TABLE IF NOT EXISTS `irma_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL,
  `mdf2` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irma_sheet`
--

INSERT INTO `irma_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`, `mdf2`) VALUES
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3, 1),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 2, 1),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1, 0),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1, 0),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, 0, -1),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 60, 0, -1),
('Feint', 'High', 'Red', 'Weapon', 42, 58, 0, 0),
('Feint', 'Low', 'Blue', 'Weapon', 12, 64, 0, 0),
('Feint', 'Side Swing', 'Blue', 'Weapon', 22, 54, -1, -1),
('Feint', 'Thrust', 'Red', 'Weapon', 38, 58, 0, 0),
('Dagger', 'Throw', 'Orange', 'Dagger', 36, 54, 0, 0),
('Special', 'Kick', 'Blue', 'None', 34, 56, 0, 0),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 2, 0),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6, -6),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 3, 2),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -6, -6),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -6, -6),
('Extended Range', 'Throw Dagger', 'White', 'Dagger', 54, 0, 0, 0),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -5, -5),
('Extended Range', 'Block and Close', 'Brown', 'Weapon', 56, 0, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6, -6);

-- --------------------------------------------------------

--
-- Table structure for table `leina3d_far`
--

CREATE TABLE IF NOT EXISTS `leina3d_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina3d_far`
--

INSERT INTO `leina3d_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 17, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 5, 11, 57, 57),
(54, 53, 33, 45, 17, 35, 11, 35, 3),
(56, 39, 61, 9, 17, 57, 57, 57, 3),
(58, 39, 33, 57, 47, 5, 13, 57, 57),
(60, 13, 33, 13, 57, 5, 11, 57, 47),
(62, 39, 61, 57, 57, 57, 57, 57, 57),
(64, 7, 35, 53, 17, 57, 57, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `leina3d_near`
--

CREATE TABLE IF NOT EXISTS `leina3d_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina3d_near`
--

INSERT INTO `leina3d_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 63, 13, 19, 13, 19, 49, 57, 37, 19, 49, 13, 13, 13, 49, 13, 41, 0, 13, 49, 49, 15, 27, 13),
(4, 5, 59, 9, 33, 3, 3, 11, 57, 37, 59, 11, 15, 17, 3, 15, 9, 59, 0, 3, 5, 5, 15, 43, 59),
(6, 19, 63, 17, 33, 3, 3, 49, 19, 19, 29, 11, 15, 17, 45, 5, 45, 19, 0, 19, 19, 19, 45, 19, 45),
(8, 5, 63, 9, 33, 3, 3, 23, 57, 37, 29, 21, 15, 17, 3, 3, 9, 19, 0, 3, 5, 5, 15, 43, 3),
(10, 31, 53, 9, 19, 45, 3, 7, 57, 13, 23, 7, 45, 17, 31, 3, 53, 25, 0, 45, 53, 19, 45, 43, 45),
(12, 19, 63, 9, 19, 19, 45, 11, 57, 19, 29, 11, 45, 17, 19, 3, 45, 25, 0, 45, 19, 49, 15, 29, 45),
(14, 49, 63, 49, 23, 13, 3, 13, 19, 37, 19, 11, 13, 13, 13, 5, 13, 13, 0, 13, 49, 49, 13, 53, 49),
(16, 57, 57, 9, 61, 57, 57, 11, 57, 61, 61, 11, 19, 57, 21, 57, 9, 41, 0, 57, 21, 57, 57, 43, 57),
(18, 5, 63, 17, 33, 3, 3, 11, 57, 37, 29, 11, 15, 17, 5, 3, 9, 41, 0, 3, 21, 5, 15, 43, 3),
(20, 5, 63, 9, 33, 23, 3, 11, 57, 37, 29, 11, 15, 17, 23, 3, 9, 25, 0, 3, 5, 5, 15, 43, 3),
(22, 49, 63, 9, 23, 13, 19, 13, 19, 37, 19, 19, 15, 17, 3, 5, 31, 25, 0, 3, 49, 49, 13, 43, 49),
(24, 53, 41, 17, 33, 45, 45, 11, 1, 19, 19, 11, 7, 17, 3, 3, 45, 53, 0, 45, 21, 5, 15, 41, 17),
(26, 5, 63, 9, 33, 3, 3, 11, 57, 59, 29, 11, 15, 59, 5, 3, 9, 25, 0, 3, 5, 5, 59, 43, 59),
(28, 7, 31, 45, 19, 3, 19, 11, 23, 37, 23, 11, 53, 53, 19, 31, 9, 25, 0, 27, 41, 5, 15, 29, 3),
(30, 49, 63, 9, 33, 3, 3, 11, 57, 37, 29, 27, 15, 17, 3, 27, 27, 25, 0, 27, 5, 27, 15, 27, 3),
(32, 53, 53, 45, 33, 3, 45, 53, 19, 19, 29, 53, 45, 17, 53, 3, 31, 25, 0, 45, 31, 19, 45, 43, 17),
(34, 5, 63, 11, 33, 3, 3, 11, 1, 37, 29, 51, 15, 51, 3, 3, 9, 51, 0, 3, 41, 5, 15, 27, 51),
(36, 5, 7, 55, 33, 3, 3, 11, 1, 7, 19, 11, 15, 55, 7, 27, 9, 7, 0, 3, 7, 5, 55, 7, 55),
(38, 31, 53, 9, 19, 45, 45, 7, 57, 19, 29, 9, 45, 17, 5, 5, 45, 25, 0, 45, 5, 19, 45, 43, 45),
(40, 49, 63, 31, 33, 3, 41, 49, 23, 23, 19, 13, 23, 13, 3, 5, 9, 25, 0, 3, 5, 49, 15, 43, 5),
(42, 49, 63, 9, 19, 19, 49, 49, 57, 37, 19, 49, 19, 17, 19, 5, 9, 41, 0, 19, 49, 49, 15, 27, 49),
(44, 5, 19, 45, 33, 45, 3, 19, 57, 19, 19, 19, 15, 17, 19, 19, 45, 19, 0, 45, 19, 5, 45, 27, 45),
(46, 5, 63, 9, 33, 3, 3, 11, 1, 37, 29, 11, 15, 17, 3, 15, 9, 25, 0, 3, 5, 5, 15, 43, 3),
(48, 5, 19, 45, 19, 45, 45, 49, 57, 19, 29, 49, 19, 17, 19, 19, 9, 25, 0, 45, 19, 49, 45, 19, 49);

-- --------------------------------------------------------

--
-- Table structure for table `leina3d_result`
--

CREATE TABLE IF NOT EXISTS `leina3d_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina3d_result`
--

INSERT INTO `leina3d_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(3, 'Swinging High', 'Restrict', 'No Red next turn', 'Red', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Yellow or Green next turn', '', 'Orange', 'Yellow,Green', 6, 10),
(9, 'Thrusting High', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(11, 'Dragon Tail', 'Restrict', 'No Red next turn', 'Red', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 4, 8),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Blocking High', 'Score', 'No Blue next turn', 'Blue', '', '', -4, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +2 if score w/ Blue next turn', 'Orange', '', 'Blue', 2, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 4, 10),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 3, 7),
(37, 'Jumping Up', 'Bonus', 'No Blue, +2 if score w/ Orange next turn', 'Blue', '', 'Orange', 2, 0),
(39, 'Charging', 'Restrict', 'No Green or Yellow next turn', 'Green,Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Green next turn', '', 'Red', 'Green', 1, 5),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon again', '', '', 'Weapon', 0, 0),
(45, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 4, 0),
(49, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(51, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(53, 'Body Wounded', 'Score', 'No Red or Orange next turn', '', 'Special', 'Green,Yellow,Blue', 3, 7),
(55, 'Shield Smashed', 'Score', 'Cannot use shield rest of the time', 'Shield', '', '', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Pushed off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(61, 'Dodging (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(63, 'Blocking Low', 'Score', 'No Orange next turn', 'Orange', '', '', -4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leina3d_sheet`
--

CREATE TABLE IF NOT EXISTS `leina3d_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina3d_sheet`
--

INSERT INTO `leina3d_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 2),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, 0),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 60, 0),
('Feint', 'High', 'Red', 'Weapon', 42, 58, 0),
('Feint', 'Low', 'Blue', 'Weapon', 12, 64, 0),
('Feint', 'Side Swing', 'Blue', 'Weapon', 22, 54, -1),
('Feint', 'Thrust', 'Red', 'Weapon', 38, 58, 0),
('Block and Attack', 'Down Swing', 'Orange', 'Weapon,Shield', 44, 56, 2),
('Block and Attack', 'Side Swing', 'Blue', 'Weapon,Shield', 48, 56, 0),
('Block and Attack', 'Thrust', 'Red', 'Weapon,Shield', 6, 56, -1),
('Special', 'Kick', 'Blue', 'None', 34, 56, 0),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, -2),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Shield Block', 'High', 'Green', 'Shield', 26, 56, 1),
('Shield Block', 'Low', 'Green', 'Shield', 4, 56, 1),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 3),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -6),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -6),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -5),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -5),
('Extended Range', 'Block and Close', 'Brown', 'Shield', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6);

-- --------------------------------------------------------

--
-- Table structure for table `leina_far`
--

CREATE TABLE IF NOT EXISTS `leina_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina_far`
--

INSERT INTO `leina_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 17, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 5, 11, 57, 57),
(54, 53, 33, 45, 17, 35, 11, 35, 3),
(56, 39, 61, 9, 17, 57, 57, 57, 3),
(58, 39, 33, 57, 47, 5, 13, 57, 57),
(60, 13, 33, 13, 57, 5, 11, 57, 47),
(62, 39, 61, 57, 57, 57, 57, 57, 57),
(64, 7, 35, 53, 17, 57, 57, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `leina_near`
--

CREATE TABLE IF NOT EXISTS `leina_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina_near`
--

INSERT INTO `leina_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 63, 13, 19, 13, 13, 49, 57, 37, 19, 49, 13, 13, 13, 49, 13, 41, 0, 13, 49, 49, 15, 27, 13),
(4, 5, 59, 59, 33, 3, 59, 11, 57, 37, 59, 11, 15, 17, 3, 15, 9, 59, 0, 3, 5, 59, 15, 43, 59),
(6, 19, 63, 17, 33, 3, 3, 49, 19, 19, 29, 11, 15, 17, 45, 5, 45, 19, 0, 19, 19, 19, 45, 19, 45),
(8, 5, 63, 9, 33, 3, 3, 21, 57, 37, 29, 21, 15, 17, 3, 3, 9, 19, 0, 3, 5, 5, 15, 43, 3),
(10, 31, 53, 9, 19, 45, 3, 7, 57, 13, 23, 7, 45, 17, 31, 3, 53, 25, 0, 45, 53, 31, 45, 43, 45),
(12, 31, 63, 9, 19, 53, 45, 11, 57, 13, 29, 11, 45, 17, 31, 3, 45, 25, 0, 45, 53, 49, 15, 29, 45),
(14, 49, 63, 49, 23, 13, 3, 13, 19, 37, 53, 11, 13, 13, 13, 5, 13, 13, 0, 13, 49, 49, 13, 53, 49),
(16, 57, 57, 9, 61, 57, 57, 11, 57, 61, 61, 11, 19, 57, 21, 57, 9, 41, 0, 57, 21, 57, 57, 43, 57),
(18, 5, 63, 17, 33, 3, 3, 11, 57, 37, 29, 11, 15, 17, 3, 3, 9, 41, 0, 3, 21, 5, 15, 43, 3),
(20, 5, 63, 9, 33, 21, 3, 11, 57, 37, 29, 11, 15, 17, 21, 3, 9, 25, 0, 3, 5, 5, 15, 43, 3),
(22, 49, 63, 9, 23, 13, 13, 13, 19, 37, 53, 19, 15, 17, 3, 5, 31, 25, 0, 3, 49, 49, 13, 43, 49),
(24, 53, 41, 17, 33, 45, 45, 11, 1, 53, 7, 11, 7, 17, 3, 3, 45, 53, 0, 45, 21, 5, 15, 41, 17),
(26, 5, 63, 59, 33, 3, 59, 11, 57, 59, 29, 11, 15, 59, 3, 3, 9, 25, 0, 3, 5, 59, 59, 43, 59),
(28, 7, 31, 45, 19, 3, 53, 11, 23, 37, 23, 11, 53, 53, 19, 31, 9, 25, 0, 27, 41, 5, 15, 29, 3),
(30, 49, 63, 9, 33, 3, 3, 11, 57, 37, 29, 27, 15, 17, 3, 27, 27, 25, 0, 27, 5, 27, 15, 27, 3),
(32, 53, 53, 45, 33, 3, 45, 53, 19, 13, 29, 53, 45, 17, 53, 3, 31, 25, 0, 45, 31, 53, 45, 43, 17),
(34, 5, 63, 11, 33, 51, 3, 11, 1, 37, 29, 51, 15, 51, 51, 51, 51, 51, 0, 3, 41, 5, 15, 27, 51),
(36, 5, 7, 55, 33, 3, 3, 11, 1, 7, 7, 11, 15, 55, 7, 27, 9, 7, 0, 3, 7, 5, 55, 7, 55),
(38, 31, 53, 9, 19, 45, 45, 7, 57, 13, 29, 9, 45, 17, 3, 5, 45, 25, 0, 45, 5, 31, 45, 43, 45),
(40, 49, 63, 31, 33, 3, 41, 49, 23, 23, 53, 13, 23, 13, 3, 5, 9, 25, 0, 3, 5, 49, 15, 43, 5),
(42, 49, 63, 9, 19, 13, 49, 49, 57, 37, 31, 49, 13, 17, 13, 5, 9, 41, 0, 13, 49, 49, 15, 27, 49),
(44, 5, 19, 45, 33, 45, 3, 19, 57, 7, 19, 19, 15, 17, 19, 19, 45, 19, 0, 45, 19, 5, 45, 27, 45),
(46, 5, 63, 9, 33, 3, 3, 11, 1, 37, 29, 11, 15, 17, 3, 15, 9, 25, 0, 3, 5, 5, 15, 43, 3),
(48, 5, 19, 45, 19, 45, 45, 49, 57, 19, 29, 49, 19, 17, 19, 19, 9, 25, 0, 45, 19, 49, 45, 19, 49);

-- --------------------------------------------------------

--
-- Table structure for table `leina_result`
--

CREATE TABLE IF NOT EXISTS `leina_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina_result`
--

INSERT INTO `leina_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(3, 'Swinging High', 'Restrict', 'No Thrust or Red next turn', 'Thrust,Red', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Thrust or Blue next turn', 'Thrust,Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Green next turn', '', 'Orange', 'Green', 6, 10),
(9, 'Thrusting High', 'Restrict', 'No Side Swing next turn', 'Side Swing', '', '', 0, 0),
(11, 'Thrusting Low', 'Restrict', 'No Side Swing or Red next turn', 'Side Swing,Red', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 3, 7),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Blocking High', 'Score', 'No Blue next turn', 'Blue', '', '', -4, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +2 if score w/ Blue next turn', 'Orange', '', 'Blue', 2, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 2, 6),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 4, 8),
(37, 'Jumping Up', 'Bonus', 'No Blue, +2 if score w/ Orange next turn', 'Blue', '', 'Orange', 2, 0),
(39, 'Charging', 'Restrict', 'No Green or Yellow next turn', 'Green,Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Move next turn', '', 'Red', 'Move', 0, 4),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon again', '', '', 'Weapon', 0, 0),
(45, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 3, 0),
(49, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(51, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Special', 'Green,Yellow', 4, 8),
(55, 'Shield Smashed', 'Score', 'Cannot use shield rest of the time', 'Shield', '', '', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Pushed off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(61, 'Dodging (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(63, 'Blocking Low', 'Score', 'No Orange next turn', 'Orange', '', '', -4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leina_sheet`
--

CREATE TABLE IF NOT EXISTS `leina_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leina_sheet`
--

INSERT INTO `leina_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 2),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, 0),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 60, 0),
('Feint', 'High', 'Red', 'Weapon', 42, 58, 0),
('Feint', 'Low', 'Blue', 'Weapon', 12, 64, 0),
('Feint', 'Side Swing', 'Blue', 'Weapon', 22, 54, -1),
('Feint', 'Thrust', 'Red', 'Weapon', 38, 58, 0),
('Block and Attack', 'Down Swing', 'Orange', 'Weapon,Shield', 44, 56, 2),
('Block and Attack', 'Side Swing', 'Blue', 'Weapon,Shield', 48, 56, 0),
('Block and Attack', 'Thrust', 'Red', 'Weapon,Shield', 6, 56, -1),
('Special', 'Kick', 'Blue', 'None', 34, 56, 0),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 2),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Shield Block', 'High', 'Green', 'Shield', 26, 56, 1),
('Shield Block', 'Low', 'Green', 'Shield', 4, 56, 1),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 3),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -6),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -6),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -5),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -5),
('Extended Range', 'Block and Close', 'Brown', 'Shield', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6);

-- --------------------------------------------------------

--
-- Table structure for table `menace_far`
--

CREATE TABLE IF NOT EXISTS `menace_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menace_far`
--

INSERT INTO `menace_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 45, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 3, 11, 57, 57),
(54, 53, 33, 45, 45, 35, 11, 35, 3),
(56, 39, 61, 9, 45, 57, 57, 57, 3),
(58, 39, 33, 47, 47, 3, 13, 57, 57),
(60, 13, 33, 13, 57, 3, 11, 57, 47),
(62, 39, 61, 57, 57, 57, 57, 57, 57),
(64, 7, 35, 53, 45, 57, 35, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `menace_near`
--

CREATE TABLE IF NOT EXISTS `menace_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menace_near`
--

INSERT INTO `menace_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 45, 0, 13, 13, 13, 13, 45, 57, 37, 31, 59, 13, 0, 13, 45, 13, 41, 13, 13, 45, 45, 63, 27, 13),
(4, 3, 0, 19, 33, 3, 19, 9, 57, 37, 19, 59, 15, 0, 3, 15, 9, 19, 15, 5, 3, 19, 63, 43, 19),
(6, 53, 0, 49, 33, 3, 3, 45, 53, 13, 29, 59, 15, 0, 45, 3, 45, 13, 53, 31, 31, 53, 19, 53, 19),
(8, 3, 0, 49, 33, 3, 3, 21, 57, 37, 29, 21, 15, 0, 3, 3, 9, 19, 15, 5, 3, 3, 63, 43, 17),
(10, 31, 0, 49, 19, 45, 3, 7, 57, 13, 23, 7, 45, 0, 31, 3, 53, 25, 31, 5, 53, 31, 63, 43, 17),
(12, 31, 0, 49, 31, 53, 45, 9, 57, 13, 29, 59, 45, 0, 31, 3, 45, 25, 31, 5, 53, 45, 63, 29, 53),
(14, 45, 0, 49, 23, 13, 3, 13, 19, 37, 53, 59, 13, 0, 13, 3, 13, 13, 13, 13, 45, 45, 13, 53, 17),
(16, 57, 0, 49, 61, 57, 57, 9, 57, 61, 61, 59, 19, 0, 21, 57, 9, 41, 41, 57, 21, 57, 57, 43, 57),
(18, 3, 0, 49, 33, 3, 3, 9, 57, 37, 29, 59, 15, 0, 3, 3, 9, 41, 15, 5, 21, 3, 63, 43, 17),
(20, 3, 0, 49, 33, 21, 3, 9, 57, 37, 29, 59, 15, 0, 21, 3, 9, 25, 15, 5, 3, 3, 63, 43, 17),
(22, 45, 0, 49, 23, 13, 13, 13, 19, 37, 53, 19, 15, 0, 3, 3, 31, 25, 13, 5, 45, 45, 13, 43, 31),
(24, 53, 0, 49, 33, 45, 45, 9, 1, 53, 7, 59, 55, 0, 3, 3, 45, 53, 15, 5, 21, 3, 63, 41, 17),
(26, 3, 0, 19, 33, 3, 19, 9, 57, 19, 29, 59, 15, 0, 3, 3, 9, 25, 19, 5, 3, 19, 19, 43, 19),
(28, 7, 0, 49, 19, 3, 53, 9, 23, 37, 23, 59, 53, 0, 19, 31, 9, 25, 55, 27, 41, 3, 63, 29, 17),
(30, 45, 0, 49, 33, 3, 3, 9, 57, 37, 29, 27, 15, 0, 3, 27, 27, 25, 15, 27, 3, 27, 63, 27, 17),
(32, 53, 0, 49, 33, 3, 45, 53, 19, 13, 29, 53, 45, 0, 53, 3, 31, 25, 53, 5, 31, 53, 63, 43, 17),
(34, 3, 0, 49, 33, 51, 3, 9, 1, 37, 29, 51, 15, 0, 51, 51, 51, 51, 41, 5, 41, 3, 63, 27, 51),
(36, 3, 0, 49, 33, 3, 3, 9, 1, 7, 7, 59, 15, 0, 55, 27, 9, 7, 55, 5, 7, 3, 63, 7, 17),
(38, 31, 0, 49, 53, 45, 45, 7, 57, 13, 29, 59, 45, 0, 3, 3, 45, 25, 31, 19, 3, 31, 7, 43, 53),
(40, 45, 0, 31, 33, 3, 41, 45, 23, 23, 53, 13, 23, 0, 3, 3, 9, 25, 41, 5, 3, 45, 63, 43, 17),
(42, 45, 0, 49, 13, 13, 45, 45, 57, 37, 31, 19, 13, 0, 13, 3, 9, 41, 13, 13, 45, 45, 63, 27, 19),
(44, 3, 0, 19, 33, 45, 3, 53, 57, 7, 53, 31, 15, 0, 31, 53, 45, 13, 53, 5, 31, 3, 19, 27, 19),
(46, 3, 0, 49, 33, 3, 3, 9, 1, 37, 29, 59, 15, 0, 3, 15, 9, 25, 15, 5, 3, 3, 63, 43, 17),
(48, 3, 0, 19, 19, 45, 45, 45, 57, 19, 29, 9, 19, 0, 19, 19, 9, 25, 19, 5, 19, 45, 19, 19, 19);

-- --------------------------------------------------------

--
-- Table structure for table `menace_result`
--

CREATE TABLE IF NOT EXISTS `menace_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menace_result`
--

INSERT INTO `menace_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+1 if score next turn', '', '', 'All', 1, 0),
(3, 'Swinging', 'Restrict', 'No Yellow, Green or Thrust next turn', 'Yellow,Green,Thrust', '', '', 0, 0),
(5, 'Shining Pyramid', 'Restrict', 'No Thrust or Blue next turn', 'Thrust,Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Move next turn', '', 'Orange', 'Move', 8, 12),
(9, 'Thrusting', 'Restrict', 'No Side Swing next turn', 'Side Swing', '', '', 0, 0),
(11, 'Shrieking', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 5, 9),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Cursing Slapping', 'Restrict', 'Only Bare Hand or Move next turn', '', '', 'Bare Hand,Move', 0, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Royal Headbutt or Yellow next turn', '', '', 'Royal Headbutt,Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'No weapon but Bare Hand damage x2 until ', 'Weapon', '', '', -6, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +1 if score w/ Blue next turn', 'Orange', '', 'Blue', 1, 0),
(31, 'Arm Wounded', 'Score', 'No Red, Orange or Bare Hand next turn', 'Red,Orange,Bare Hand', 'Bare Hand', '', 4, 8),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 6, 10),
(37, 'Jumping Up', 'Bonus', 'No Blue, +3 if score w/ Orange next turn', 'Blue', '', 'Orange', 3, 0),
(39, 'Charging', 'Restrict', 'No Green or Yellow next turn', 'Green,Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Move next turn', '', 'Red', 'Move', 1, 5),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon, no restriction next turn', '', '', 'Weapon', 0, 0),
(45, 'Parrying', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 5, 0),
(49, 'Cursing Punching', 'Restrict', 'Only Bare Hand or Move next turn', '', '', 'Bare Hand,Move', 0, 0),
(51, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Special', 'Green,Yellow', 6, 10),
(55, 'Weapon Broken', 'Score', 'No Thrust next turn', 'Thrust', '', '', -4, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Cursing Bandaging', 'Restricted', 'Only Bare Hand or Move next turn', '', '', 'Bare Hand,Move', 0, 0),
(61, 'Dodging (Extended Range)', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(63, 'Royal Headbutting', 'Restricted', 'Only Move next turn', '', '', 'Move', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menace_sheet`
--

CREATE TABLE IF NOT EXISTS `menace_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menace_sheet`
--

INSERT INTO `menace_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Super Strong', 'Orange', 'Weapon', 36, 50, 4),
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 3),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, -2),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 54, -2),
('Feint', 'High', 'Red', 'Weapon', 42, 64, 0),
('Feint', 'Low', 'Blue', 'Weapon', 12, 58, 0),
('Bare Hand', 'Shining Pyramid', 'Blue', 'None', 38, 56, 1),
('Bare Hand', 'Cursing Punch', 'Red', 'None', 6, 56, -2),
('Bare Hand', 'Royal Headbutt', 'Orange', 'None', 44, 56, 1),
('Bare Hand', 'Cursing Bandage', 'Blue', 'None', 22, 56, -4),
('Bare Hand', 'Cursing Slap', 'Red', 'None', 48, 56, -3),
('Special', 'Kick', 'Blue', 'None', 34, 56, 0),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 64, 3),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 4),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -5),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -5),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -4),
('Extended Range', 'Shriek', 'White', 'Weapon', 60, 0, -99),
('Extended Range', 'Block and Close', 'Brown', 'Weapon', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6);

-- --------------------------------------------------------

--
-- Table structure for table `nowa_far`
--

CREATE TABLE IF NOT EXISTS `nowa_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nowa_far`
--

INSERT INTO `nowa_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 59, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 5, 11, 57, 51),
(54, 53, 33, 45, 45, 35, 11, 35, 3),
(56, 39, 61, 9, 45, 51, 55, 57, 3),
(58, 39, 33, 57, 47, 5, 13, 57, 51),
(60, 13, 33, 13, 57, 5, 11, 57, 47),
(62, 39, 61, 57, 57, 51, 55, 57, 51),
(64, 7, 35, 53, 45, 51, 55, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nowa_near`
--

CREATE TABLE IF NOT EXISTS `nowa_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nowa_near`
--

INSERT INTO `nowa_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 59, 0, 19, 13, 19, 49, 57, 37, 19, 59, 13, 13, 13, 49, 13, 41, 13, 0, 49, 49, 15, 27, 0),
(4, 5, 19, 0, 33, 3, 3, 11, 57, 37, 29, 11, 15, 59, 3, 15, 9, 25, 15, 0, 5, 5, 15, 43, 0),
(6, 19, 59, 0, 33, 3, 3, 49, 19, 19, 29, 11, 15, 59, 31, 5, 45, 19, 19, 0, 19, 19, 45, 19, 0),
(8, 5, 59, 0, 33, 3, 3, 23, 57, 37, 29, 21, 15, 59, 3, 3, 9, 19, 15, 0, 5, 5, 15, 43, 0),
(10, 31, 53, 0, 19, 45, 3, 7, 57, 19, 23, 7, 45, 59, 31, 3, 53, 25, 31, 0, 53, 53, 59, 43, 0),
(12, 19, 59, 0, 19, 19, 45, 11, 57, 19, 29, 11, 45, 59, 19, 3, 45, 25, 19, 0, 53, 49, 15, 29, 0),
(14, 49, 59, 0, 23, 13, 3, 13, 19, 37, 53, 11, 13, 13, 13, 5, 13, 13, 13, 0, 49, 49, 13, 53, 0),
(16, 51, 57, 0, 61, 51, 57, 11, 57, 61, 61, 11, 19, 57, 21, 51, 9, 41, 41, 0, 21, 57, 57, 43, 0),
(18, 5, 59, 0, 33, 3, 3, 11, 57, 37, 29, 11, 15, 59, 3, 3, 9, 41, 15, 0, 21, 5, 15, 43, 0),
(20, 5, 59, 0, 33, 21, 3, 11, 57, 37, 29, 11, 15, 59, 21, 3, 9, 25, 15, 0, 5, 5, 15, 43, 0),
(22, 49, 59, 0, 23, 13, 19, 13, 19, 37, 19, 19, 15, 59, 3, 5, 31, 25, 13, 0, 49, 49, 13, 43, 0),
(24, 53, 41, 0, 33, 45, 45, 11, 1, 19, 19, 11, 7, 59, 3, 3, 45, 53, 15, 0, 21, 5, 15, 41, 0),
(26, 5, 59, 0, 33, 3, 3, 11, 57, 37, 29, 11, 15, 59, 3, 3, 9, 25, 15, 0, 5, 5, 19, 43, 0),
(28, 7, 31, 0, 19, 3, 19, 11, 23, 37, 23, 11, 53, 53, 19, 31, 9, 25, 31, 0, 41, 5, 15, 29, 0),
(30, 49, 59, 0, 33, 3, 3, 11, 57, 37, 29, 27, 15, 59, 3, 27, 27, 25, 15, 0, 5, 27, 15, 27, 0),
(32, 53, 53, 0, 33, 3, 45, 53, 19, 19, 29, 53, 45, 59, 53, 3, 31, 25, 53, 0, 31, 19, 59, 43, 0),
(34, 5, 59, 0, 33, 3, 3, 11, 1, 37, 29, 17, 15, 17, 17, 3, 17, 25, 41, 0, 41, 5, 15, 27, 0),
(36, 5, 7, 0, 33, 3, 3, 63, 63, 7, 19, 11, 15, 31, 7, 27, 9, 7, 63, 0, 7, 5, 53, 7, 0),
(38, 31, 53, 0, 53, 45, 45, 7, 57, 19, 29, 9, 45, 59, 3, 5, 45, 25, 31, 0, 5, 19, 59, 43, 0),
(40, 49, 59, 0, 33, 3, 41, 49, 23, 23, 19, 11, 23, 13, 3, 5, 9, 25, 41, 0, 5, 49, 15, 43, 0),
(42, 49, 59, 0, 19, 19, 49, 49, 57, 37, 19, 59, 19, 59, 19, 5, 9, 41, 19, 0, 49, 49, 15, 27, 0),
(44, 5, 19, 0, 33, 45, 3, 19, 57, 19, 19, 19, 15, 59, 19, 19, 45, 19, 19, 0, 19, 5, 45, 27, 0),
(46, 5, 59, 0, 33, 3, 3, 11, 1, 37, 29, 11, 15, 59, 3, 15, 9, 25, 15, 0, 5, 5, 15, 43, 0),
(48, 5, 19, 0, 19, 45, 45, 49, 57, 19, 29, 59, 31, 59, 19, 19, 9, 25, 19, 0, 19, 49, 45, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nowa_result`
--

CREATE TABLE IF NOT EXISTS `nowa_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(30) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nowa_result`
--

INSERT INTO `nowa_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(3, 'Swinging High', 'Restrict', 'No Red next turn', 'Red', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Yellow or Green next turn', '', 'Orange', 'Yellow,Green', 8, 12),
(9, 'Thrusting High', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(11, 'Thrusting Low', 'Restrict', 'No Orange next turn', 'Orange', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 3, 7),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Restrict', 'No Orange next turn', 'Orange', '', '', 0, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 2, 6),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing,Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 4, 7),
(37, 'Jumping Up', 'Bonus', 'No Blue, +2 if score w/ Orange next turn', 'Blue', '', 'Orange', 2, 0),
(39, 'Charging', 'Restrict', 'No Green or Yellow next turn', 'Green,Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Move next turn', '', 'Red', 'Move', 0, 4),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon, no orange next turn', 'Orange', '', 'Weapon', 0, 0),
(45, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 3, 0),
(49, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(51, 'Swinging (Extended Range)', 'Restrict', 'Only Brown or Black next turn', '', '', 'Brown,Black', 0, 0),
(53, 'Body Wounded', 'Score', 'No Red or Orange next turn', '', 'Special', 'Green,Yellow,Blue', 4, 7),
(55, 'Thrusting (Extended Range)', 'Restrict', 'Only Brown or White next turn', '', '', 'Brown,White', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Blocking', 'Score', 'No Orange next turn', 'Orange', '', '', -5, 0),
(61, 'Dodging (Extended Range)', 'Bonus', '+2 if score w/ Charge or Swing next turn', '', '', 'Charge,Swing High,Swing Low', 2, 0),
(63, 'Weapon Broken', 'Neutral', 'all weapon attacks -2 (cumulative)', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nowa_sheet`
--

CREATE TABLE IF NOT EXISTS `nowa_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nowa_sheet`
--

INSERT INTO `nowa_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Super Strong', 'Orange', 'Weapon', 36, 50, 3),
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 2),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 1),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 0),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 0),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, -2),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 60, -2),
('Block and Attack', 'Swing', 'Red', 'Weapon', 44, 64, -1),
('Block and Attack', 'Thrust', 'Blue', 'Weapon', 22, 60, -2),
('Feint', 'Low', 'Blue', 'Weapon', 12, 64, 0),
('Feint', 'High', 'Red', 'Weapon', 42, 58, 0),
('Special', 'Kick', 'Blue', 'None', 34, 56, 0),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 3),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Block', 'High', 'Green', 'Weapon', 26, 56, 0),
('Block', 'Low', 'Green', 'Weapon', 4, 56, 0),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 3),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, 1),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, 1),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -1),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -1),
('Extended Range', 'Block and Close', 'Brown', 'Weapon', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -4),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -4);

-- --------------------------------------------------------

--
-- Table structure for table `risty_far`
--

CREATE TABLE IF NOT EXISTS `risty_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `risty_far`
--

INSERT INTO `risty_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 17, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 5, 11, 57, 57),
(54, 53, 33, 45, 17, 35, 11, 35, 3),
(56, 39, 61, 9, 17, 57, 57, 57, 3),
(58, 39, 33, 57, 47, 5, 13, 57, 57),
(60, 13, 33, 13, 57, 5, 11, 57, 47),
(62, 39, 61, 57, 57, 57, 57, 57, 57),
(64, 7, 35, 53, 17, 57, 57, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `risty_near`
--

CREATE TABLE IF NOT EXISTS `risty_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `risty_near`
--

INSERT INTO `risty_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 63, 13, 13, 13, 0, 49, 57, 37, 31, 0, 13, 13, 13, 49, 13, 41, 13, 0, 49, 49, 15, 27, 13),
(4, 5, 59, 59, 33, 3, 0, 11, 57, 37, 59, 0, 15, 17, 3, 15, 9, 59, 15, 0, 5, 59, 15, 43, 59),
(6, 53, 63, 17, 33, 3, 0, 49, 53, 13, 29, 0, 15, 17, 45, 5, 45, 13, 53, 0, 31, 53, 45, 53, 45),
(8, 5, 63, 9, 33, 3, 0, 21, 57, 37, 29, 0, 15, 17, 3, 3, 9, 19, 15, 0, 5, 5, 15, 43, 3),
(10, 31, 53, 9, 53, 45, 0, 7, 57, 13, 23, 0, 45, 17, 31, 3, 53, 25, 31, 0, 53, 31, 45, 43, 45),
(12, 31, 63, 9, 31, 53, 0, 11, 57, 13, 29, 0, 45, 17, 31, 3, 45, 25, 31, 0, 53, 49, 15, 29, 45),
(14, 49, 63, 49, 23, 13, 0, 13, 19, 37, 53, 0, 13, 13, 13, 5, 13, 13, 13, 0, 49, 49, 13, 53, 49),
(16, 57, 57, 9, 61, 57, 0, 11, 57, 61, 61, 0, 19, 57, 21, 57, 9, 41, 41, 0, 21, 57, 57, 43, 57),
(18, 5, 63, 17, 33, 3, 0, 11, 57, 37, 29, 0, 15, 17, 3, 3, 9, 41, 15, 0, 21, 5, 15, 43, 3),
(20, 5, 63, 9, 33, 21, 0, 11, 57, 37, 29, 0, 15, 17, 21, 3, 9, 25, 15, 0, 5, 5, 15, 43, 3),
(22, 49, 63, 9, 23, 13, 0, 13, 19, 37, 53, 0, 15, 17, 3, 5, 31, 25, 13, 0, 49, 49, 13, 43, 49),
(24, 53, 41, 17, 33, 45, 0, 11, 1, 53, 7, 0, 7, 17, 53, 3, 45, 53, 15, 0, 21, 5, 15, 41, 17),
(26, 5, 63, 59, 33, 3, 0, 11, 57, 59, 29, 0, 15, 59, 3, 3, 9, 25, 59, 0, 5, 59, 59, 43, 59),
(28, 7, 31, 55, 53, 3, 0, 11, 23, 37, 23, 0, 53, 55, 19, 31, 9, 25, 31, 0, 41, 5, 15, 29, 3),
(30, 49, 63, 9, 33, 3, 0, 11, 57, 37, 29, 0, 15, 17, 3, 27, 27, 25, 15, 0, 5, 27, 15, 27, 3),
(32, 53, 53, 45, 33, 3, 0, 53, 19, 13, 29, 0, 45, 17, 53, 3, 31, 25, 53, 0, 31, 53, 45, 43, 17),
(34, 5, 63, 11, 33, 51, 0, 11, 1, 37, 29, 0, 15, 51, 51, 51, 51, 51, 41, 0, 41, 5, 15, 27, 51),
(36, 5, 7, 55, 33, 3, 0, 11, 1, 7, 7, 0, 15, 55, 7, 27, 9, 7, 41, 0, 7, 5, 55, 7, 55),
(38, 31, 53, 9, 53, 45, 0, 7, 57, 13, 29, 0, 45, 17, 3, 5, 45, 25, 31, 0, 5, 31, 45, 43, 45),
(40, 49, 63, 31, 33, 3, 0, 49, 23, 23, 53, 0, 23, 13, 3, 5, 9, 25, 41, 0, 5, 49, 15, 43, 5),
(42, 49, 63, 9, 13, 13, 0, 49, 57, 37, 31, 0, 13, 17, 13, 5, 9, 41, 13, 0, 49, 49, 15, 27, 49),
(44, 5, 53, 45, 33, 45, 0, 53, 57, 7, 53, 0, 15, 17, 31, 53, 45, 13, 53, 0, 31, 5, 45, 27, 45),
(46, 5, 63, 9, 33, 3, 0, 11, 1, 37, 29, 0, 15, 17, 3, 15, 9, 25, 15, 0, 5, 5, 15, 43, 3),
(48, 5, 19, 45, 19, 45, 0, 49, 57, 19, 29, 0, 19, 17, 19, 19, 9, 25, 19, 0, 19, 49, 45, 19, 49);

-- --------------------------------------------------------

--
-- Table structure for table `risty_result`
--

CREATE TABLE IF NOT EXISTS `risty_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `risty_result`
--

INSERT INTO `risty_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+1 if score next turn', '', '', 'All', 1, 0),
(3, 'Swinging High', 'Restrict', 'No Thrust or Red next turn', 'Thrust,Red', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Thrust or Blue next turn', 'Thrust,Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Green next turn', '', 'Orange', 'Green', 7, 11),
(9, 'Thrusting High', 'Restrict', 'No Side Swing next turn', 'Side Swing', '', '', 0, 0),
(11, 'Thrusting Low', 'Restrict', 'No Side Swing or Red next turn', 'Side Swing,Red', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 4, 8),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Blocking High', 'Score', 'No Blue next turn', 'Blue', '', '', -4, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +1 if score w/ Blue next turn', 'Orange', '', 'Blue', 1, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 3, 7),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 2, 6),
(37, 'Jumping Up', 'Bonus', 'No Blue, +3 if score w/ Orange next turn', 'Blue', '', 'Orange', 3, 0),
(39, 'Charging', 'Bonus', 'No G&Y, +2 if score w/ DSwing next turn', 'Green,Yellow', '', 'Down Swing', 2, 0),
(41, 'Knocked Down', 'Score', 'Only Move next turn', '', 'Red', 'Move', 1, 5),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon, no orange next turn', 'Orange', '', 'Weapon', 0, 0),
(45, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 4, 0),
(49, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(51, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Special', 'Green,Yellow', 2, 6),
(55, 'Shield Smashed', 'Score', 'Cannot use shield rest of the time', 'Shield', '', '', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Pushed off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(61, 'Dodging (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(63, 'Blocking Low', 'Score', 'No Orange next turn', 'Orange', '', '', -4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `risty_sheet`
--

CREATE TABLE IF NOT EXISTS `risty_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `risty_sheet`
--

INSERT INTO `risty_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Super Strong', 'Orange', 'Weapon', 36, 50, 4),
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 3),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, -1),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 60, -1),
('Feint', 'High', 'Red', 'Weapon', 42, 58, -1),
('Block and Attack', 'Down Swing', 'Orange', 'Weapon,Shield', 44, 56, 2),
('Block and Attack', 'Side Swing', 'Blue', 'Weapon,Shield', 48, 56, 0),
('Block and Attack', 'Thrust', 'Red', 'Weapon,Shield', 6, 56, -2),
('Special', 'Kick', 'Blue', 'None', 34, 56, 1),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 3),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Shield Block', 'High', 'Green', 'Shield', 26, 56, 1),
('Shield Block', 'Low', 'Green', 'Shield', 4, 56, 1),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -6),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 4),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -6),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -6),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -5),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -5),
('Extended Range', 'Block and Close', 'Brown', 'Shield', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6);

-- --------------------------------------------------------

--
-- Table structure for table `stella_far`
--

CREATE TABLE IF NOT EXISTS `stella_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stella_far`
--

INSERT INTO `stella_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 17, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 5, 11, 57, 57),
(54, 53, 33, 45, 17, 35, 11, 35, 3),
(56, 39, 61, 9, 17, 57, 57, 57, 3),
(58, 39, 33, 57, 47, 5, 13, 57, 57),
(60, 13, 33, 13, 57, 5, 11, 57, 47),
(62, 39, 61, 57, 57, 57, 57, 57, 57),
(64, 7, 35, 53, 17, 57, 57, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `stella_near`
--

CREATE TABLE IF NOT EXISTS `stella_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stella_near`
--

INSERT INTO `stella_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 63, 13, 13, 13, 0, 49, 57, 37, 31, 0, 13, 13, 13, 49, 13, 41, 13, 3, 49, 0, 13, 27, 13),
(4, 5, 59, 59, 33, 3, 0, 11, 57, 37, 59, 0, 15, 17, 3, 15, 9, 59, 15, 3, 5, 0, 59, 43, 59),
(6, 53, 63, 17, 33, 3, 0, 49, 53, 19, 29, 0, 15, 17, 45, 5, 45, 13, 53, 3, 31, 0, 53, 53, 45),
(8, 5, 63, 9, 33, 3, 0, 21, 57, 37, 29, 0, 15, 17, 3, 3, 9, 19, 15, 3, 5, 0, 15, 43, 3),
(10, 31, 53, 9, 53, 45, 0, 7, 57, 13, 23, 0, 45, 17, 31, 3, 53, 25, 31, 3, 53, 0, 53, 43, 45),
(12, 31, 63, 9, 53, 53, 0, 7, 57, 13, 29, 0, 45, 17, 31, 3, 45, 25, 31, 45, 53, 0, 13, 43, 45),
(14, 49, 63, 49, 23, 13, 0, 13, 19, 37, 53, 0, 13, 13, 13, 5, 13, 13, 13, 49, 49, 0, 13, 53, 49),
(16, 57, 57, 9, 61, 57, 0, 11, 57, 61, 61, 0, 19, 57, 21, 57, 9, 41, 41, 57, 21, 0, 57, 43, 57),
(18, 5, 63, 17, 33, 3, 0, 11, 57, 37, 29, 0, 15, 17, 3, 3, 9, 41, 15, 3, 21, 0, 41, 43, 3),
(20, 5, 63, 9, 33, 21, 0, 11, 57, 37, 29, 0, 15, 17, 21, 3, 9, 25, 15, 3, 5, 0, 15, 43, 3),
(22, 49, 63, 9, 23, 13, 0, 13, 19, 37, 53, 0, 15, 17, 3, 5, 31, 25, 13, 3, 49, 0, 13, 43, 49),
(24, 53, 41, 17, 33, 45, 0, 11, 1, 53, 7, 0, 7, 17, 7, 3, 45, 53, 15, 3, 21, 0, 7, 41, 17),
(26, 5, 63, 59, 33, 3, 0, 11, 57, 59, 29, 0, 15, 59, 3, 3, 9, 25, 59, 3, 5, 0, 59, 43, 59),
(28, 7, 31, 55, 53, 3, 0, 11, 23, 37, 23, 0, 53, 55, 19, 31, 9, 25, 31, 3, 41, 0, 53, 29, 3),
(30, 49, 63, 9, 33, 3, 0, 11, 57, 37, 29, 0, 15, 17, 3, 27, 27, 25, 15, 3, 5, 0, 27, 27, 3),
(32, 53, 53, 45, 33, 3, 0, 53, 19, 13, 29, 0, 45, 17, 53, 3, 31, 25, 53, 45, 31, 0, 53, 43, 17),
(34, 5, 63, 11, 33, 51, 0, 11, 1, 37, 29, 0, 15, 51, 51, 51, 51, 51, 41, 3, 41, 0, 53, 27, 51),
(36, 5, 7, 55, 33, 3, 0, 11, 1, 7, 7, 0, 15, 55, 7, 27, 9, 7, 41, 3, 7, 0, 7, 7, 55),
(38, 31, 53, 9, 53, 45, 0, 7, 57, 13, 29, 0, 45, 17, 3, 5, 45, 25, 31, 45, 5, 0, 53, 43, 45),
(40, 49, 63, 31, 33, 3, 0, 49, 23, 23, 53, 0, 23, 13, 3, 5, 9, 25, 41, 3, 5, 0, 7, 43, 5),
(42, 49, 63, 9, 19, 13, 0, 49, 57, 37, 31, 0, 13, 17, 53, 5, 9, 41, 19, 13, 49, 0, 31, 27, 49),
(44, 5, 53, 45, 33, 45, 0, 53, 57, 7, 53, 0, 15, 17, 19, 31, 45, 19, 53, 45, 31, 0, 53, 27, 45),
(46, 5, 63, 9, 33, 3, 0, 11, 1, 37, 29, 0, 15, 17, 3, 15, 9, 25, 15, 3, 5, 0, 15, 43, 3),
(48, 5, 19, 45, 19, 45, 0, 49, 57, 19, 29, 0, 19, 17, 19, 19, 9, 25, 19, 3, 19, 0, 53, 19, 49);

-- --------------------------------------------------------

--
-- Table structure for table `stella_result`
--

CREATE TABLE IF NOT EXISTS `stella_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stella_result`
--

INSERT INTO `stella_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+1 if score next turn', '', '', 'All', 1, 0),
(3, 'Swinging High', 'Restrict', 'No Thrust or Red next turn', 'Thrust,Red', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Thrust or Blue next turn', 'Thrust,Blue', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Green next turn', '', 'Orange', 'Green', 7, 11),
(9, 'Thrusting High', 'Restrict', 'No Side Swing next turn', 'Side Swing', '', '', 0, 0),
(11, 'Thrusting Low', 'Restrict', 'No Side Swing or Red next turn', 'Side Swing,Red', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 5, 9),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Blocking High', 'Score', 'No Blue next turn', 'Blue', '', '', -2, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow next turn', '', '', 'Yellow', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Kicking', 'Restrict', 'No Blue or Yellow next turn', 'Blue,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +2 if score w/ Blue next turn', 'Orange', '', 'Blue', 2, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 4, 8),
(33, 'Dodging', 'Bonus', '+2 if score w/ Down/Side Swing next turn', '', '', 'Down Swing,Side Swing', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 4, 8),
(37, 'Jumping Up', 'Bonus', 'No Blue, +3 if score w/ Orange next turn', 'Blue', '', 'Orange', 3, 0),
(39, 'Charging', 'Bonus', 'No G&Y, +2 if score w/ DSwing next turn', 'Green,Yellow', '', 'Down Swing', 2, 0),
(41, 'Knocked Down', 'Score', 'Only Move next turn', '', 'Red', 'Move', 2, 6),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon, no orange next turn', 'Orange', '', 'Weapon', 0, 0),
(45, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -2, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 4, 0),
(49, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -2, 0),
(51, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Special', 'Green,Yellow', 4, 8),
(55, 'Shield Smashed', 'Score', 'Cannot use shield rest of the time', 'Shield', '', '', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Pushed off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(61, 'Dodging (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(63, 'Protected Attack', 'Bonus', 'No Orange, +2 if score w/ Red next turn', 'Orange', '', 'Red', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stella_sheet`
--

CREATE TABLE IF NOT EXISTS `stella_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stella_sheet`
--

INSERT INTO `stella_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Super Strong', 'Orange', 'Weapon', 36, 50, 4),
('Down Swing', 'Strong', 'Orange', 'Weapon', 24, 50, 3),
('Side Swing', 'Strong', 'Orange', 'Weapon', 28, 64, 3),
('Side Swing', 'High', 'Red', 'Weapon', 10, 64, 1),
('Side Swing', 'Low', 'Blue', 'Weapon', 2, 58, 1),
('Thrust', 'High', 'Red', 'Weapon', 32, 54, 0),
('Thrust', 'Low', 'Blue', 'Weapon', 14, 60, 0),
('Skill', 'Wind Slash', 'Red', 'Weapon', 38, 58, 1),
('Skill', 'Fatal Slash', 'Orange', 'Weapon', 44, 56, 5),
('Block and Attack', 'Side Swing', 'Blue', 'Weapon,Shield', 48, 56, 0),
('Block and Attack', 'Thrust', 'Red', 'Weapon,Shield', 6, 56, -2),
('Special', 'Kick', 'Blue', 'None', 34, 56, 0),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 3),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Shield Block', 'High', 'Green', 'Shield', 26, 56, 1),
('Shield Block', 'Low', 'Green', 'Shield', 4, 56, 1),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -6),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 4),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, -6),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, -6),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -5),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -5),
('Extended Range', 'Block and Close', 'Brown', 'Shield', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -6),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -6);

-- --------------------------------------------------------

--
-- Table structure for table `tomoe_far`
--

CREATE TABLE IF NOT EXISTS `tomoe_far` (
  `page` tinyint(2) unsigned NOT NULL,
  `p50` tinyint(2) unsigned NOT NULL,
  `p52` tinyint(2) unsigned NOT NULL,
  `p54` tinyint(2) unsigned NOT NULL,
  `p56` tinyint(2) unsigned NOT NULL,
  `p58` tinyint(2) unsigned NOT NULL,
  `p60` tinyint(2) unsigned NOT NULL,
  `p62` tinyint(2) unsigned NOT NULL,
  `p64` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomoe_far`
--

INSERT INTO `tomoe_far` (`page`, `p50`, `p52`, `p54`, `p56`, `p58`, `p60`, `p62`, `p64`) VALUES
(50, 45, 23, 9, 53, 41, 11, 19, 19),
(52, 21, 61, 9, 57, 5, 11, 57, 51),
(54, 53, 33, 45, 45, 35, 11, 35, 3),
(56, 39, 61, 9, 45, 51, 51, 57, 3),
(58, 39, 33, 51, 47, 5, 13, 57, 51),
(60, 13, 33, 13, 57, 5, 11, 57, 47),
(62, 39, 61, 51, 57, 51, 51, 57, 51),
(64, 7, 35, 53, 45, 51, 51, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tomoe_near`
--

CREATE TABLE IF NOT EXISTS `tomoe_near` (
  `page` tinyint(2) unsigned NOT NULL,
  `p2` tinyint(2) unsigned NOT NULL,
  `p4` tinyint(2) unsigned NOT NULL,
  `p6` tinyint(2) unsigned NOT NULL,
  `p8` tinyint(2) unsigned NOT NULL,
  `p10` tinyint(2) unsigned NOT NULL,
  `p12` tinyint(2) unsigned NOT NULL,
  `p14` tinyint(2) unsigned NOT NULL,
  `p16` tinyint(2) unsigned NOT NULL,
  `p18` tinyint(2) unsigned NOT NULL,
  `p20` tinyint(2) unsigned NOT NULL,
  `p22` tinyint(2) unsigned NOT NULL,
  `p24` tinyint(2) unsigned NOT NULL,
  `p26` tinyint(2) unsigned NOT NULL,
  `p28` tinyint(2) unsigned NOT NULL,
  `p30` tinyint(2) unsigned NOT NULL,
  `p32` tinyint(2) unsigned NOT NULL,
  `p34` tinyint(2) unsigned NOT NULL,
  `p36` tinyint(2) unsigned NOT NULL,
  `p38` tinyint(2) unsigned NOT NULL,
  `p40` tinyint(2) unsigned NOT NULL,
  `p42` tinyint(2) unsigned NOT NULL,
  `p44` tinyint(2) unsigned NOT NULL,
  `p46` tinyint(2) unsigned NOT NULL,
  `p48` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomoe_near`
--

INSERT INTO `tomoe_near` (`page`, `p2`, `p4`, `p6`, `p8`, `p10`, `p12`, `p14`, `p16`, `p18`, `p20`, `p22`, `p24`, `p26`, `p28`, `p30`, `p32`, `p34`, `p36`, `p38`, `p40`, `p42`, `p44`, `p46`, `p48`) VALUES
(2, 49, 0, 0, 13, 13, 13, 49, 57, 37, 31, 49, 13, 0, 13, 49, 13, 41, 13, 0, 49, 0, 0, 27, 0),
(4, 5, 0, 0, 33, 3, 19, 11, 57, 37, 19, 63, 55, 0, 41, 15, 9, 19, 15, 0, 5, 0, 0, 43, 0),
(6, 53, 0, 0, 33, 3, 53, 49, 53, 13, 29, 13, 31, 0, 31, 5, 45, 13, 53, 0, 31, 0, 0, 53, 0),
(8, 5, 0, 0, 33, 3, 63, 21, 57, 37, 29, 21, 55, 0, 59, 3, 9, 19, 15, 0, 5, 0, 0, 43, 0),
(10, 31, 0, 0, 53, 45, 63, 7, 57, 13, 23, 7, 45, 0, 31, 3, 53, 25, 31, 0, 53, 0, 0, 43, 0),
(12, 31, 0, 0, 31, 53, 45, 11, 57, 13, 29, 63, 45, 0, 59, 3, 45, 25, 31, 0, 53, 0, 0, 29, 0),
(14, 49, 0, 0, 23, 13, 13, 13, 19, 37, 53, 63, 13, 0, 13, 5, 13, 13, 13, 0, 49, 0, 0, 53, 0),
(16, 51, 0, 0, 61, 51, 57, 11, 57, 61, 61, 63, 19, 0, 21, 51, 9, 41, 41, 0, 21, 0, 0, 43, 0),
(18, 5, 0, 0, 33, 3, 63, 11, 57, 37, 29, 63, 55, 0, 59, 3, 9, 41, 15, 0, 21, 0, 0, 43, 0),
(20, 5, 0, 0, 33, 21, 63, 11, 57, 37, 29, 63, 55, 0, 21, 3, 9, 25, 15, 0, 5, 0, 0, 43, 0),
(22, 49, 0, 0, 23, 13, 13, 13, 19, 37, 53, 19, 55, 0, 59, 5, 31, 25, 13, 0, 49, 0, 0, 43, 0),
(24, 53, 0, 0, 33, 45, 45, 11, 1, 53, 7, 53, 55, 0, 53, 3, 45, 53, 15, 0, 21, 0, 0, 41, 0),
(26, 5, 0, 0, 33, 3, 19, 11, 57, 19, 19, 63, 55, 0, 41, 3, 9, 25, 15, 0, 5, 0, 0, 43, 0),
(28, 7, 0, 0, 53, 3, 53, 11, 23, 37, 23, 63, 53, 0, 41, 31, 9, 25, 31, 0, 41, 0, 0, 29, 0),
(30, 49, 0, 0, 33, 3, 63, 11, 57, 37, 29, 27, 55, 0, 59, 27, 27, 25, 15, 0, 5, 0, 0, 27, 0),
(32, 53, 0, 0, 33, 3, 45, 53, 19, 13, 29, 53, 45, 0, 53, 3, 31, 25, 53, 0, 31, 0, 0, 43, 0),
(34, 5, 0, 0, 33, 3, 63, 11, 1, 37, 29, 63, 55, 0, 17, 3, 17, 25, 41, 0, 41, 0, 0, 27, 0),
(36, 5, 0, 0, 33, 3, 63, 11, 1, 7, 7, 63, 55, 0, 7, 27, 9, 7, 15, 0, 7, 0, 0, 7, 0),
(38, 31, 0, 0, 53, 45, 45, 7, 57, 13, 29, 63, 45, 0, 59, 5, 45, 25, 31, 0, 5, 0, 0, 43, 0),
(40, 49, 0, 0, 33, 3, 41, 49, 23, 23, 53, 13, 23, 0, 59, 5, 9, 25, 41, 0, 5, 0, 0, 43, 0),
(42, 49, 0, 0, 13, 13, 49, 49, 57, 37, 31, 49, 13, 0, 13, 5, 9, 41, 13, 0, 49, 0, 0, 27, 0),
(44, 5, 0, 0, 33, 45, 31, 53, 57, 7, 53, 31, 31, 0, 31, 53, 45, 13, 53, 0, 31, 0, 0, 27, 0),
(46, 5, 0, 0, 33, 3, 63, 11, 1, 37, 29, 63, 55, 0, 59, 15, 9, 25, 15, 0, 5, 0, 0, 43, 0),
(48, 5, 0, 0, 19, 45, 45, 49, 57, 19, 29, 49, 31, 0, 31, 19, 9, 25, 31, 0, 19, 0, 0, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tomoe_result`
--

CREATE TABLE IF NOT EXISTS `tomoe_result` (
  `page` tinyint(2) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `info` varchar(40) NOT NULL,
  `restricted` varchar(25) NOT NULL,
  `c_restricted` varchar(10) NOT NULL,
  `allowed` varchar(25) NOT NULL,
  `score` tinyint(2) NOT NULL,
  `critical` tinyint(2) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomoe_result`
--

INSERT INTO `tomoe_result` (`page`, `title`, `type`, `info`, `restricted`, `c_restricted`, `allowed`, `score`, `critical`) VALUES
(1, 'Jumping Away', 'Bonus', '+3 if score next turn', '', '', 'All', 3, 0),
(3, 'Swinging High', 'Restrict', 'No Thrust next turn', 'Thrust', '', '', 0, 0),
(5, 'Swinging Low', 'Restrict', 'No Thrust next turn', 'Thrust', '', '', 0, 0),
(7, 'Dazed', 'Score', 'Only Move next turn', '', 'Orange', 'Move', 6, 10),
(9, 'Thrusting High', 'Restrict', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(11, 'Thrusting Low', 'Restrict', 'No Orange next turn', 'Orange', '', '', 0, 0),
(13, 'Leg Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Blue', 'Green,Yellow', 3, 7),
(15, 'Swinging Down', 'Restrict', 'No Blue next turn', 'Blue', '', '', 0, 0),
(17, 'Kicked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(19, 'Knocked off Balance', 'Score', 'Only Green or Yellow next turn', '', '', 'Green,Yellow', 0, 0),
(21, 'Turned Around', 'Score', 'Only Yellow or Spin and Slash next turn', '', '', 'Yellow,Spin and Slash', 0, 0),
(23, 'Behind You', 'Neutral', 'No restrictions next turn', '', '', '', 0, 0),
(25, 'Warrior Kicking', 'Restrict', 'No Thrust or Yellow next turn', 'Thrust,Yellow', '', '', 0, 0),
(27, 'Weapon Dislodged', 'Score', 'Cannot use weapon until retrieved', 'Weapon', '', '', -5, 0),
(29, 'Ducking', 'Bonus', 'No Orange, +3 if score w/ Blue next turn', 'Orange', '', 'Blue', 3, 0),
(31, 'Arm Wounded', 'Score', 'No Red or Orange next turn', 'Red,Orange', 'Blue', '', 2, 6),
(33, 'Dodging', 'Bonus', '+2 if score next turn', '', '', 'All', 2, 0),
(35, 'Body Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', 'Special', 'Brown', 4, 8),
(37, 'Jumping Up', 'Bonus', 'No Blue, +2 if score w/ Orange next turn', 'Blue', '', 'Orange', 2, 0),
(39, 'Charging', 'Restrict', 'No Green or Yellow next turn', 'Green,Yellow', '', '', 0, 0),
(41, 'Knocked Down', 'Score', 'Only Move next turn', '', 'Red', 'Move', 0, 4),
(43, 'Retrieving Weapon', 'Bonus', 'Can use weapon, no Yellow next turn', 'Yellow', '', 'Weapon', 0, 0),
(45, 'Parrying High', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(47, 'Leg Wounded (Extended Range)', 'Score', 'Only Brown next turn', '', '', 'Brown', 3, 0),
(49, 'Parrying Low', 'Score', 'No restrictions next turn', '', '', '', -4, 0),
(51, 'Attacking (Extended Range)', 'Restrict', 'Only Brown or Black next turn', '', '', 'Brown,Black', 0, 0),
(53, 'Body Wounded', 'Score', 'Only Green or Yellow next turn', '', 'Special', 'Green,Yellow', 4, 8),
(55, 'Splitting Helm', 'Neutral', 'No restriction next turn', '', '', '', 0, 0),
(57, 'Basic Stance (Extended Range)', 'Neutral', 'Only Extended Range next turn', '', '', '', 0, 0),
(59, 'Spinning and Slashing', 'Restricted', 'Only Yellow or Green next turn', '', '', 'Yellow,Green', 0, 0),
(61, 'Dodging (Extended Range)', 'Bonus', '+2 if score w/ Charge or Swing next turn', '', '', 'Charge,Black', 2, 0),
(63, 'Block and Strike', 'Restricted', 'No Orange next turn', 'Orange', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tomoe_sheet`
--

CREATE TABLE IF NOT EXISTS `tomoe_sheet` (
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `required` varchar(20) NOT NULL,
  `page` tinyint(2) unsigned NOT NULL,
  `x` tinyint(2) unsigned NOT NULL,
  `mdf` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tomoe_sheet`
--

INSERT INTO `tomoe_sheet` (`type`, `name`, `color`, `required`, `page`, `x`, `mdf`) VALUES
('Down Swing', 'Super Strong', 'Orange', 'Weapon', 36, 50, 4),
('Down Swing', 'Split Helm', 'Orange', 'Weapon', 24, 50, 0),
('Side Swing', 'Spin and Slash', 'Orange', 'Weapon', 28, 64, 3),
('Side Swing', 'Head', 'Red', 'Weapon', 10, 64, 2),
('Side Swing', 'Body', 'Blue', 'Weapon', 2, 58, 2),
('Thrust', 'Head', 'Red', 'Weapon', 32, 54, 1),
('Thrust', 'Body', 'Blue', 'Weapon', 14, 60, 1),
('Block and Attack', 'Swing', 'Red', 'Weapon', 12, 64, 0),
('Block and Attack', 'Thrust', 'Red', 'Weapon', 22, 54, 0),
('Special', 'Kick', 'Blue', 'None', 34, 56, 2),
('Special', 'Wild Swing', 'Yellow', 'Weapon', 40, 58, 3),
('Special', 'Dislodge Weapon', 'Blue', 'Weapon', 30, 58, -4),
('Special', 'Retrieve Weapon', 'Green', 'None', 46, 52, -6),
('Move', 'Jump Up', 'Green', 'None', 18, 52, -6),
('Move', 'Dodge', 'Yellow', 'None', 8, 52, -4),
('Move', 'Duck', 'Green', 'None', 20, 52, -5),
('Move', 'Jump Away', 'Yellow', 'None', 16, 62, -4),
('Extended Range', 'Charge', 'White', 'None', 50, 0, 4),
('Extended Range', 'Swing High', 'Black', 'Weapon', 64, 0, 0),
('Extended Range', 'Swing Low', 'Black', 'Weapon', 58, 0, 0),
('Extended Range', 'Thrust High', 'White', 'Weapon', 54, 0, -1),
('Extended Range', 'Thrust Low', 'White', 'Weapon', 60, 0, -1),
('Extended Range', 'Block and Close', 'Brown', 'Weapon', 56, 0, 0),
('Extended Range', 'Dodge', 'Brown', 'None', 52, 0, -4),
('Extended Range', 'Jump Back', 'Brown', 'None', 62, 0, -4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
