-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2018 at 01:00 PM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.1.23-4+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `savoyards`
--

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `librettist` varchar(127) DEFAULT NULL,
  `composer` varchar(127) DEFAULT NULL,
  `first_performed` date DEFAULT NULL,
  `synopsis` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(14, 'The Grand Duke', 'The Grand Duke; or, The Statutory Duel', 'W. S. Gilbert', 'Arthur Sullivan', '1896-03-07', 'In Speisesaal, a small village in the Grand Duchy of Pfennig Halbpfennig, Ernest Dummkopf\'s acting troupe is rehearsing for a production of the Greek tragedy Troilus and Cressida. Beneath the theatrical veneer, a conspiracy is afoot among the thespians to overthrow Rudolph, the Grand Duke. Ludwig, the Company comedian, who is engaged to Lisa, the Company soubrette, inadvertently betrays the conspiracy to the Grand Duke\'s detective. A plan is conceived whereby Ludwig and Ernest will fight a statutory duel (with playing cards) and the winner, which turns out to be Ludwig, will denounce the loser as the primary conspirator to the Grand Duke. Unaware of the intrigue surrounding him, Grand Duke Rudolph prepares for his wedding to the Baroness von Krakenfeldt. The Baroness reveals that Rudolph was betrothed in infancy to the Princess of Monte Carlo, which poses a problem for both couples. In the meantime, Ludwig approaches the Grand Duke in order to reveal the plot and finds him greatly agitated. Ludwig hatches a plan by which a statutory duel will be rigged and Rudolph will lose. Ludwig becomes the new Grand Duke. However, Julia, the prominent \"English\" actress of the troupe, points out that according to her contract she is required to play the part of the Grand Duchess. Lisa is disconsolate, but the show must go on. Later, Ludwig\'s wedding to Julia, in classical Greek style, is underway when the Baroness arrives, announcing that Ludwig is required to assume all of the late Duke\'s responsibilities, including the Baroness herself, and everyone goes off to celebrate the wedding of Ludwig and the Baroness. Meanwhile, the Prince and Princess of Monte Carlo arrive on the scene. The Princess, finding that Ludwig has taken over all of the extinct Grand Duke\'s responsibilities, happily asserts a prior claim to marriage over the other Grand Duchesses. The company prepares for yet another wedding!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
