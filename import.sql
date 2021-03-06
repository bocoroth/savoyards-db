-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2018 at 05:09 PM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.1.24-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `savoyards`
--
CREATE DATABASE IF NOT EXISTS `savoyards` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `savoyards`;

-- --------------------------------------------------------

--
-- Table structure for table `actorrole_date`
--

DROP TABLE IF EXISTS `actorrole_date`;
CREATE TABLE `actorrole_date` (
  `ard_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actor_role`
--

DROP TABLE IF EXISTS `actor_role`;
CREATE TABLE `actor_role` (
  `ar_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crew_position_performance`
--

DROP TABLE IF EXISTS `crew_position_performance`;
CREATE TABLE `crew_position_performance` (
  `cpp_id` int(11) NOT NULL,
  `crew_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
CREATE TABLE `crew` (
  `crew_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instrument_musician_performance`
--

DROP TABLE IF EXISTS `instrument_musician_performance`;
CREATE TABLE `instrument_musician_performance` (
  `imp_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `musician_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instrument_musician_performance`
--

INSERT INTO `instrument_musician_performance` (`imp_id`, `instrument_id`, `musician_id`, `performance_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 2, 10, 1),
(11, 2, 11, 1),
(12, 2, 12, 1),
(13, 3, 13, 1),
(14, 3, 14, 1),
(15, 3, 15, 1),
(16, 3, 16, 1),
(17, 3, 17, 1),
(18, 4, 18, 1),
(19, 5, 19, 1),
(20, 5, 20, 1),
(21, 5, 21, 1),
(22, 5, 22, 1),
(23, 7, 23, 1),
(24, 7, 24, 1),
(25, 8, 25, 1),
(26, 8, 26, 1),
(27, 8, 27, 1),
(28, 8, 28, 1),
(29, 9, 29, 1),
(30, 10, 30, 1),
(31, 10, 31, 1),
(32, 10, 32, 1),
(33, 11, 33, 1),
(34, 11, 34, 1),
(35, 11, 35, 1),
(36, 11, 36, 1),
(37, 12, 37, 1),
(38, 13, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
CREATE TABLE `instruments` (
  `instrument_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`instrument_id`, `name`) VALUES
(1, 'Violin'),
(2, 'Viola'),
(3, 'Cello'),
(4, 'Bass'),
(5, 'Flute'),
(6, 'Piccolo'),
(7, 'Oboe'),
(8, 'Clarinet'),
(9, 'Bassoon'),
(10, 'Horn'),
(11, 'Trumpet'),
(12, 'Trombone'),
(13, 'Percussion');

-- --------------------------------------------------------

--
-- Table structure for table `musicians`
--

DROP TABLE IF EXISTS `musicians`;
CREATE TABLE `musicians` (
  `musician_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `musicians`
--

INSERT INTO `musicians` (`musician_id`, `name`) VALUES
(1, 'Morton Blinn'),
(2, 'Evalyn Clough'),
(3, 'Lois Dietrich'),
(4, 'Helen Eberle'),
(5, 'Robert Eisner'),
(6, 'Mary Mechlin'),
(7, 'Nina Kay Menning'),
(8, 'Sister M. Serafina'),
(9, 'Fred Wachs'),
(10, 'Eve Cohen'),
(11, 'Harvey Meieran'),
(12, 'Phillip Wion'),
(13, 'Marjorie Eisner'),
(14, 'Ruth Ann Eisner'),
(15, 'Michael Golde'),
(16, 'Mary Ellen Pochapsky'),
(17, 'Diane Ritchey'),
(18, 'Martha Flaherty'),
(19, 'David Arons'),
(20, 'Sue Blinn'),
(21, 'John Coltman'),
(22, 'Susan Nelson'),
(23, 'Kathy Guthrie'),
(24, 'Susan Holmes'),
(25, 'Debra Daniel'),
(26, 'Ed Dzenis'),
(27, 'Eric Dzenis'),
(28, 'Malcolm Slifkin'),
(29, 'Bill Woodward'),
(30, 'James Oakes'),
(31, 'Carol Pochapsky'),
(32, 'Sandra Rasco'),
(33, 'Jeanne Humes'),
(34, 'Don Kortlandt'),
(35, 'Karl Kortlandt'),
(36, 'Joe Murphy'),
(37, 'Kenneth Juell'),
(38, 'Bill Panos');

-- --------------------------------------------------------

--
-- Table structure for table `performance_dates`
--

DROP TABLE IF EXISTS `performance_dates`;
CREATE TABLE `performance_dates` (
  `date_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL,
  `performance_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `performance_dates`
--

INSERT INTO `performance_dates` (`date_id`, `performance_id`, `performance_date`) VALUES
(1, 1, '1979-11-08'),
(2, 1, '1979-11-10'),
(3, 1, '1979-11-11'),
(4, 1, '1979-11-13'),
(5, 1, '1979-11-14'),
(6, 1, '1979-11-17'),
(7, 1, '1979-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

DROP TABLE IF EXISTS `performances`;
CREATE TABLE `performances` (
  `performance_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `confirmed` bit(1) NOT NULL DEFAULT b'1',
  `year` year(4) NOT NULL,
  `season` int(11) NOT NULL,
  `opening_date` date NOT NULL,
  `venue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `footnotes` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `performances`
--

INSERT INTO `performances` (`performance_id`, `show_id`, `active`, `confirmed`, `year`, `season`, `opening_date`, `venue`, `description`, `footnotes`) VALUES
(1, 6, b'1', b'1', 1979, 41, '1979-11-08', 'The Jewish Community Center', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vocal_part` enum('Soprano','Alto','Tenor','Baritone','Bass','SA','TB','Speaking','Silent','SATB','Mezzo-Soprano','Contralto','Countertenor','Treble','Coloratura Soprano') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `show_id`, `name`, `subtitle`, `vocal_part`) VALUES
(1, 1, 'Jupiter', 'Aged Deity', NULL),
(2, 1, 'Apollo', 'Aged Deity', NULL),
(3, 1, 'Mars', 'Aged Deity', NULL),
(4, 1, 'Diana', 'Aged Deity', NULL),
(5, 1, 'Venus', 'Aged Deity', NULL),
(6, 1, 'Mercury', 'Aged Deity', NULL),
(7, 1, 'Thespis', 'Manager of a Travelling Theatrical Co.', NULL),
(8, 1, 'Sillimon', 'his Stage Manager', NULL),
(9, 1, 'Timidon', 'Thespian', NULL),
(10, 1, 'Tipseion', 'Thespian', NULL),
(11, 1, 'Preposteros', 'Thespian', NULL),
(12, 1, 'Stupidas', 'Thespian', NULL),
(13, 1, 'Sparkeion', 'Thespian', NULL),
(14, 1, 'Nicemis', 'Thespian', NULL),
(15, 1, 'Pretteia', 'Thespian', NULL),
(16, 1, 'Daphne', 'Thespian', NULL),
(17, 1, 'Cymon', 'Thespian', NULL),
(18, 2, 'Angelina', 'The Plaintiff', 'Soprano'),
(19, 2, 'Edwin', 'The Defendant', 'Tenor'),
(20, 2, 'The Learned Judge', NULL, 'Baritone'),
(21, 2, 'Counsel for the Plaintiff', NULL, 'Baritone'),
(22, 2, 'Usher', NULL, 'Baritone'),
(23, 2, 'Foreman of the Jury', NULL, 'Bass'),
(24, 2, 'First Bridesmaid', NULL, 'Soprano'),
(25, 2, 'Associate', NULL, 'Silent'),
(26, 2, 'Bridesmaids', NULL, 'SA'),
(27, 2, 'Gentlemen of the Jury', NULL, 'TB');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
CREATE TABLE `shows` (
  `show_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `librettist` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `composer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_performed` date DEFAULT NULL,
  `synopsis` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `name`, `full_name`, `librettist`, `composer`, `first_performed`, `synopsis`) VALUES
(1, 'Thespis', 'Thespis, or The Gods Grown Old', 'W. S. Gilbert', 'Arthur Sullivan', '1871-12-26', 'The Gods on Mount Olympus are old and tired, so they decide to leave Mount Olympus and take a holiday. Meanwhile, a troupe of traveling actors lead by Thespis, the legendary Greek father of drama, take their place. When the actors turn out to be comically inept rulers, and having seen the ensuing mayhem down below, the angry gods return, sending the actors back to Earth as \"eminent tragedians, whom no one ever goes to see\".'),
(2, 'Trial By Jury', 'Trial By Jury', 'W. S. Gilbert', 'Arthur Sullivan', '1875-03-25', 'Can you sue someone for breaking off an engagement? In Gilbert and Sullivan’s courtroom farce Trial by Jury, it’s a very serious crime! The fickle and bigoted defendant, Edwin, has fallen in love with another woman and has jilted the plaintiff, the beautiful Angelina. Unfortunately for Edwin, all of the members of the jury (and the judge) have fallen for Angelina themselves. Edwin proposes that in order to solve the conflict, he “marry this lady today and the other tomorrow,” which, naturally, Angelina objects to. Ultimately, the resolution that pleases everyone is for the judge to marry Angelina himself!'),
(3, 'The Sorcerer', 'The Sorcerer', 'W. S. Gilbert', 'Arthur Sullivan', '1877-11-17', 'The rich but witless Alexis has a vision (preached to teamsters, lunatic asylums, and technical institutes) that the joy of marriage shall overrule all earthly unhappiness. Practicing what he\'s preached, Alexis is recently betrothed to the beautiful Aline. At his wedding ceremony, he plots the final realization of his vision: to bring the joy of marriage to the entire town. Alexis calls in the old family sorcerer, Jonathan Wellington Wells to concoct the perfect love potion. Naturally, this backfires and hilarity ensues.'),
(4, 'H.M.S. Pinafore', 'H.M.S. Pinafore; or, The Lass That Loved a Sailor', 'W. S. Gilbert', 'Arthur Sullivan', '1878-05-25', 'The gentlemanly Captain Corcoran of the good ship Pinafore has a daughter, Josephine, who is in love with a lowly but gallant sailor named Ralph Rackstraw. The Captain forbids the marriage, wanting to match Josephine instead with the well-bred Sir Joseph, First Lord of the Admiralty. In the meantime, the Captain finds himself in nearly the same position as his daughter: his former nanny, Little Buttercup, falls in love with him, but he hesitates to reciprocate due to his higher social rank. The whole situation is turned on its head when Little Buttercup reveals a game-changing secret she has kept for decades.'),
(5, 'Pirates of Penzance', 'The Pirates of Penzance; or, The Slave of Duty', 'W. S. Gilbert', 'Arthur Sullivan', '1879-12-31', 'Mistakenly apprenticed to a pirate (instead of a pilot) by his nursemaid Ruth at the age of eight, the handsome Frederic is now twenty-one and, though quite fond of the group of joyous and fun-loving pirates, chooses to abandon his profession and “lead a blameless life henceforth,” dedicating himself instead to their eradication. Shortly after leaving them, he encounters a gaggle of beautiful maidens (one of whom, Mabel, steals his heart) and their father, the eccentric Major-General. The whole group has a run-in with the pirates themselves before escaping on the false premise that the Major-General is an orphan -- a fact these tenderhearted pirates simply cannot help but take into account, given the fact that the majority of them are orphans themselves and “know what it’s like.” Just as Frederic is ready to lead a band of lily-livered policemen to take out the Pirate King and his men, a secret is uncovered that will change his fate forever, but, naturally, all comes out right in the end.'),
(6, 'Patience', 'Patience; or, Bunthorne\'s Bride', 'W. S. Gilbert', 'Arthur Sullivan', '1881-04-23', 'All of the maidens in the village are besotted with Reginald Bunthorne, a moody and handsome poet, but he has eyes only for the simple milkmaid, Patience. The problem? Bunthorne’s artistic ways are all just an act to attract women to him--he doesn’t even like poetry! Besides, Patience is in love with her childhood sweetheart, who happens to be a real poet named Archibald Grosvenor, but feels she cannot marry him because he is just too perfect. In the meantime, the serious (and decidedly non-poetic) platoon of Heavy Dragoon Guards that were meant to marry the village maidens find themselves dismayed and perplexed by their sudden loss of prospects.'),
(7, 'Iolanthe', 'Iolanthe; or, The Peer and the Peri', 'W. S. Gilbert', 'Arthur Sullivan', '1882-11-25', 'The titular character Iolanthe is a fairy who has committed a capital offense by marrying a mortal; rather than being killed, she was instead banished from the fairy kingdom, never to see her husband again. Twenty-five years later, at the start of the show, the fairies still miss Iolanthe deeply and convince the Fairy Queen to allow her to return. Iolanthe reveals that she bore her mortal husband a son, Strephon, who is a fairy down to the waist but has mortal legs. Strephon also happens to have fallen in love with the Lord Chancellor’s beautiful and much sought-after ward, Phyllis, who loves him in return but does not know of his mixed lineage. Strephon enlists his mother and the rest of the fairies to help him win his lover’s hand by convincing the Lord Chancellor (who loves Phyllis himself) and the government to allow them to marry. Seeing Strephon in the company of a young woman (fairies do not age, and so Iolanthe looks to be a girl of seventeen), the Peers try to convince Phyllis that her love is being unfaithful, and as punishment, the fairies make Strephon a member of Parliament, magically able to pass any bill he wants. In the meantime, the fairies all fall in love with members of the House of Peers, and the Fairy Queen finds herself with a political and moral mess on her hands. In true Gilbert and Sullivan fashion, the tangled plot unravels and all ends well.'),
(8, 'Princess Ida', 'Princess Ida; or, Castle Adamant', 'W. S. Gilbert', 'Arthur Sullivan', '1884-01-05', 'Prince Hilarion has been waiting for his wedding day for twenty years. He is about to meet Princess Ida to whom he was betrothed, as a baby. Unfortunately, Princess Ida has decided that she does not want to honor the commitment, and has, instead, gone off and started a women\'s college. But Hilarion does not give up hope! In an attempt to woo her, Hilarion, dresses up as a maiden and sneaks into the women\'s compound, accompanied by his friends, Cyril and Florian, who are forced to dress up, as well. Once the \"maidens\" are in the compound, various girls attending the college discover their secret. These girls attempt to keep their knowledge from Ida, but eventually she Ida discovers and apprehends the intruders. It looks like violence is sure to erupt, but Ida finally relinquishes and agrees to marry Hilarion.'),
(9, 'The Mikado', 'The Mikado; or, The Town of Titipu', 'W. S. Gilbert', 'Arthur Sullivan', '1885-03-14', 'Nanki-Poo, the son of the Mikado (the Japanese emperor), has fled in disguise to avoid marrying a much older suitor, and to find and marry his own beloved, the beautiful Yum-Yum. Yum-Yum, however, is the ward of Ko-Ko, the lord high executioner, and has become betrothed to him against her will. In the meantime, Ko-Ko finds his job difficult to carry out as the Mikado puts pressure on him to fulfill his quota of killings, but the executioner realizes he is too soft-hearted to kill anyone. His solution is to trade a month of marriage to Yum-Yum for Nanki-Poo’s life (though he only pretends to kill him), but, of course, the plan backfires as Ko-Ko finds himself subject to capital punishment for allegedly killing the Mikado’s son. As usual in Gilbert’s imaginative plots, the tangled web unravels, and everyone lives happily ever after. '),
(10, 'Ruddigore', 'Ruddigore; or, The Witch\'s Curse', 'W. S. Gilbert', 'Arthur Sullivan', '1887-01-22', 'All of the Baronets of the locale of Ruddigore are under a terrible curse enacted by a witch long ago--each of the successive Baronets must commit some kind of a crime every single day, or else they will die in terrible agony. Robin Oakapple has been living as a farmer for years, working up the courage to ask the beautiful village maiden Rose Maybud for her hand, but he is hiding a secret--he is actually Sir Ruthven, the Baronet of Ruddigore, and has been hiding in disguise while his younger brother Despard assumed the title--and the curse. Betrayed by his foster-brother Richard, Robin is discovered and must take on the responsibility of committing a crime every day in order to appease the curse--and the ghosts of all his ancestors past, who are none too happy with his attempt to shirk his title. Robin must somehow find a way to lead the honest life he loves--but how?'),
(11, 'The Yeomen of the Guard', 'The Yeomen of the Guard; or, The Merryman and His Maid', 'W. S. Gilbert', 'Arthur Sullivan', '1888-10-03', 'In the 16th century\'s Tower of London, the gentleman Colonel Fairfax is wrongly accused of sorcery and sentenced to death within the hour. Fairfax hatches a plan to avoid letting his estate fall into the hands of his scheming cousin (incidentally, his accuser) by secretly marrying Elsie Maynard, a strolling singer. She agrees to be blindfolded during the ceremony and expects to be a wealthy widow upon Fairfax\'s imminent demise, leaving her free to marry her lover, the jester Jack Point. However, Fairfax miraculously escapes his fate and chaos ensues. Following his escape, Fairfax woos Elsie, and after a number of plot complications are resolved, she falls in love with him.'),
(12, 'The Gondoliers', 'The Gondoliers; or, The King of Barataria', 'W. S. Gilbert', 'Arthur Sullivan', '1889-12-07', 'Two charming Venetian gondoliers, Giuseppe and Marco, are informed that due to an error of identity when they were young boys, one of them is the heir to the throne of Barataria.  They are delighted with the situation and agree to share the responsibilities of governing their new kingdom until it can be ascertained which of them is which, but matters are complicated when the Duke and Duchess of Plaza Toro reveal that their beautiful daughter, Casilda, was married to the future king as an infant.  The problem?  Giuseppe and Marco are both newly married to the contadine Tessa and Gianetta, and Casilda is in love with her father’s attendant, Luiz. '),
(13, 'Utopia, Limited', 'Utopia, Limited; or, The Flowers of Progress', 'W. S. Gilbert', 'Arthur Sullivan', '1893-10-07', 'King Paramount of the south seas island of Utopia decides that his people should adopt all English customs and institutions, but he goes a bit overboard and decrees that the kingdom and each of its inhabitants should become a \"company limited\" based on the English \"companies act\" of 1862. The king\'s daughter, Princess Zara, brings six \"flowers of progress\" from England to train the Utopian people in \"English\" customs. But the reforms are too successful, which upsets the judges of the Utopian Supreme Court, the \"Public Exploder\" and ultimately the entire populace, which revolts against them. Zara realizes that an essential element has been forgotten, namely \"government by party\". Introduce that and the result would be \"general and unexampled prosperity\".'),
(14, 'The Grand Duke', 'The Grand Duke; or, The Statutory Duel', 'W. S. Gilbert', 'Arthur Sullivan', '1896-03-07', 'In Speisesaal, a small village in the Grand Duchy of Pfennig Halbpfennig, Ernest Dummkopf\'s acting troupe is rehearsing for a production of the Greek tragedy Troilus and Cressida. Beneath the theatrical veneer, a conspiracy is afoot among the thespians to overthrow Rudolph, the Grand Duke. Ludwig, the Company comedian, who is engaged to Lisa, the Company soubrette, inadvertently betrays the conspiracy to the Grand Duke\'s detective. A plan is conceived whereby Ludwig and Ernest will fight a statutory duel (with playing cards) and the winner, which turns out to be Ludwig, will denounce the loser as the primary conspirator to the Grand Duke. Unaware of the intrigue surrounding him, Grand Duke Rudolph prepares for his wedding to the Baroness von Krakenfeldt. The Baroness reveals that Rudolph was betrothed in infancy to the Princess of Monte Carlo, which poses a problem for both couples. In the meantime, Ludwig approaches the Grand Duke in order to reveal the plot and finds him greatly agitated. Ludwig hatches a plan by which a statutory duel will be rigged and Rudolph will lose. Ludwig becomes the new Grand Duke. However, Julia, the prominent \"English\" actress of the troupe, points out that according to her contract she is required to play the part of the Grand Duchess. Lisa is disconsolate, but the show must go on. Later, Ludwig\'s wedding to Julia, in classical Greek style, is underway when the Baroness arrives, announcing that Ludwig is required to assume all of the late Duke\'s responsibilities, including the Baroness herself, and everyone goes off to celebrate the wedding of Ludwig and the Baroness. Meanwhile, the Prince and Princess of Monte Carlo arrive on the scene. The Princess, finding that Ludwig has taken over all of the extinct Grand Duke\'s responsibilities, happily asserts a prior claim to marriage over the other Grand Duchesses. The company prepares for yet another wedding!'),
(15, 'Cox and Box', 'Cox and Box; or, The Long-Lost Brothers', 'F. C. Burnand', 'Arthur Sullivan', '1866-05-26', 'Sergeant Bouncer, an old soldier, has a scheme to get double rent from a single room. By day he lets it to Mr. Box (a printer who is out all night) and by night to Mr. Cox (a hatter who works all day). Whenever either of them asks any awkward questions he sings at length about his days in the militia.\r\n\r\nHis plan works well until Mr. Cox is, unexpectedly, given a day\'s holiday and the two lodgers meet. Left alone while Bouncer sorts out another room, they discover they share more than the same bed. Cox is engaged to the widow Penelope Ann Wiggins - a fate that Box escaped by pretending to commit suicide.\r\n\r\nThey try gambling Penelope Ann away until news arrives that she has been lost at sea and has left her fortune to her \'intended\'. They then both try to claim her for themselves. Another letter arrives - she has been found and will arrive any minute. Now they both try to disclaim her! However, she doesn\'t appear personally, instead leaving a letter to inform them that she intends to marry a Mr. Knox! Relieved, Cox and Box swear eternal friendship and discover, curiously enough, that they are long-lost brothers.'),
(16, 'The Devil and Daniel Webster', 'The Devil and Daniel Webster: An Opera in One Act', 'Steven Vincent Benet', 'Douglas Moore', '1939-05-18', 'Set in New Hampshire in the 1840s, the community of Cross Corners is celebrating the marriage of Jabez and Mary Stone. Jabez has recently become extremely successful.  In fact, there is some talk of his being nominated to run for governor. The celebration is a huge success, especially since the famous New Englander, Daniel Webster, appears as a guest at the party. There is another guest in attendance - a Boston lawyer named Scratch - who carries a black box under his arm. Jabez is terrified when he sees him. When a lost soul, in the form of a moth, flies out of the box, the crowd realizes that Jabez has sold his soul to the Devil, and they flee in a panic. Webster is asked to help save Jabez, and he immediately demands a trial for his client. Scratch, an excellent lawyer himself, fills the jury with infamous American traitors and renegades, including the hanging judge from the Salem witch trials. This jury of damned souls leaves Webster little hope of winning the case. However, in a blaze of oratory genius, Webster turns the tables on Scratch. Webster wins the case, and the crowd drives the Devil out of New Hampshire.'),
(17, 'Amahl and the Night Visitors', 'Amahl and the Night Visitors', 'Gian Carlo Menotti', 'Gian Carlo Menotti', '1951-12-24', 'A young disabled boy named Amahl, who lives in poverty with his widowed mother near Bethlehem, sees a bright star in the sky one night and tells his mother to go look, but she brushes him off, buried in concern over their bleak future and lack of means with which to support themselves. That night, three kings come across their meager hut and seek shelter, for they have traveled long and far following the star of which Amahl had spoken. They bring with them treasure and gifts to give to “the Child” who has just been born and who will reign over all. Blinded by the lure of the gold and what it could do for her family. the Mother attempts to steal just a bit of the treasure, but is caught red-handed. What no one expects is a gift far greater than gold--blessed by the Child, Amahl finds himself suddenly cured of his disability. '),
(18, 'The Telephone', 'The Telephone, or L\'Amour à trois', 'Gian Carlo Menotti', 'Gian Carlo Menotti', '1947-02-18', 'Ben, bearing a gift, comes to visit Lucy at her apartment; he wants to propose to her before he leaves on a trip. Despite his attempts to get her attention for sufficient time to ask his question, Lucy is occupied with interminable conversations on the telephone. Between her calls, when Lucy leaves the room, Ben even tries to cut the telephone cord - unsuccessfully. Not wanting to miss his train, Ben leaves without asking Lucy for her hand in marriage. But Ben makes one last attempt: He calls Lucy from a telephone booth outside on the street and makes his proposal. She consents, and the two join in a romantic duet over the phone line, at the end of which Lucy makes sure that Ben remembers her phone number.'),
(19, 'Gianni Schicchi', 'Gianni Schicchi', 'Giovacchino Forzano', 'Giacomo Puccini', '1918-12-14', 'Buoso Donati has just died, surrounded by his relatives, who have heard that he has left all his money to the monks. They search for the will and Rinuccio, who finds it, refuses to hand it over till his Aunt Zita promises to let him marry Lauretta, daughter of Gianni Schicchi. He sends for Schicchi and when they have read the will and found their fears to be true, tells them that only Schicchi has the ingenuity to save them.\r\nAlthough they resent Schicchi as an upstart, when he arrives with Lauretta they beg him to help them. Resenting their attitude, he only agrees when Lauretta appeals to him, since her happiness depends on it. Since no one outside the family knows that Buoso is dead, Schicchi disguises himself as Buoso, summons a lawyer and dictates a will. The relatives all have particular properties in mind and he leaves each one as requested, but reserves for himself the prize items of the house, a mule and the mill at Signa.\r\nThe furious relatives are powerless to stop him, as he reminds them that the penalty for falsifying a will is having the right hand chopped off and banishment from Florence.\r\nHe chases them away, except for Rinuccio, who remains with Lauretta. Schicchi addresses the audience, begging its indulgence for his sins since it has produced such a happy result.');

-- --------------------------------------------------------

--
-- Structure for view `VIEW_instrument_musician_performance`
--
DROP TABLE IF EXISTS `VIEW_instrument_musician_performance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`matt`@`localhost` SQL SECURITY DEFINER VIEW `VIEW_instrument_musician_performance`  AS  select `IMP`.`imp_id` AS `imp_id`,`I`.`name` AS `instrument`,`M`.`name` AS `musician`,`S`.`name` AS `show`,`P`.`year` AS `year` from ((((`instrument_musician_performance` `IMP` join `performances` `P` on((`IMP`.`performance_id` = `P`.`performance_id`))) join `musicians` `M` on((`IMP`.`musician_id` = `M`.`musician_id`))) join `instruments` `I` on((`IMP`.`instrument_id` = `I`.`instrument_id`))) join `shows` `S` on((`P`.`show_id` = `S`.`show_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actorrole_date`
--
ALTER TABLE `actorrole_date`
  ADD PRIMARY KEY (`ard_id`),
  ADD KEY `ix_ar_id` (`ar_id`),
  ADD KEY `ix_date_id` (`date_id`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `actor_role`
--
ALTER TABLE `actor_role`
  ADD PRIMARY KEY (`ar_id`),
  ADD KEY `ix_actor_id` (`actor_id`),
  ADD KEY `ix_role_id` (`role_id`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`crew_id`);

--
-- Indexes for table `crew_position_performance`
--
ALTER TABLE `crew_position_performance`
  ADD PRIMARY KEY (`cpp_id`),
  ADD KEY `ix_crew_id` (`crew_id`),
  ADD KEY `ix_position_id` (`position_id`),
  ADD KEY `ix_performance_id` (`performance_id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`instrument_id`);

--
-- Indexes for table `instrument_musician_performance`
--
ALTER TABLE `instrument_musician_performance`
  ADD PRIMARY KEY (`imp_id`),
  ADD KEY `ix_instrument_id` (`instrument_id`),
  ADD KEY `ix_musician_id` (`musician_id`),
  ADD KEY `ix_performance_id` (`performance_id`);

--
-- Indexes for table `musicians`
--
ALTER TABLE `musicians`
  ADD PRIMARY KEY (`musician_id`);

--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`performance_id`),
  ADD KEY `ix_show_id` (`show_id`);

--
-- Indexes for table `performance_dates`
--
ALTER TABLE `performance_dates`
  ADD PRIMARY KEY (`date_id`),
  ADD KEY `ix_performance_id` (`performance_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `ix_show_id` (`show_id`) USING BTREE;

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actorrole_date`
--
ALTER TABLE `actorrole_date`
  MODIFY `ard_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `actor_role`
--
ALTER TABLE `actor_role`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crew`
--
ALTER TABLE `crew`
  MODIFY `crew_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crew_position_performance`
--
ALTER TABLE `crew_position_performance`
  MODIFY `cpp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `instrument_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `instrument_musician_performance`
--
ALTER TABLE `instrument_musician_performance`
  MODIFY `imp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `musicians`
--
ALTER TABLE `musicians`
  MODIFY `musician_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `performances`
--
ALTER TABLE `performances`
  MODIFY `performance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `performance_dates`
--
ALTER TABLE `performance_dates`
  MODIFY `date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `actorrole_date`
--
ALTER TABLE `actorrole_date`
  ADD CONSTRAINT `fk_ard_ar` FOREIGN KEY (`ar_id`) REFERENCES `actor_role` (`ar_id`),
  ADD CONSTRAINT `fk_ard_date` FOREIGN KEY (`date_id`) REFERENCES `performance_dates` (`date_id`);

--
-- Constraints for table `actor_role`
--
ALTER TABLE `actor_role`
  ADD CONSTRAINT `fk_ar_actor` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `fk_ar_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `crew_position_performance`
--
ALTER TABLE `crew_position_performance`
  ADD CONSTRAINT `fk_cpp_crew` FOREIGN KEY (`crew_id`) REFERENCES `crew` (`crew_id`),
  ADD CONSTRAINT `fk_cpp_performance` FOREIGN KEY (`performance_id`) REFERENCES `performances` (`performance_id`),
  ADD CONSTRAINT `fk_cpp_position` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`);

--
-- Constraints for table `instrument_musician_performance`
--
ALTER TABLE `instrument_musician_performance`
  ADD CONSTRAINT `fk_imp_instrument` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`instrument_id`),
  ADD CONSTRAINT `fk_imp_musician` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`instrument_id`),
  ADD CONSTRAINT `fk_imp_performance` FOREIGN KEY (`performance_id`) REFERENCES `performances` (`performance_id`);

--
-- Constraints for table `performances`
--
ALTER TABLE `performances`
  ADD CONSTRAINT `fk_performance_show_id` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);

--
-- Constraints for table `performance_dates`
--
ALTER TABLE `performance_dates`
  ADD CONSTRAINT `fk_performance_date` FOREIGN KEY (`performance_id`) REFERENCES `performances` (`performance_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `fk_role_show_id` FOREIGN KEY (`show_id`) REFERENCES `shows` (`show_id`);
