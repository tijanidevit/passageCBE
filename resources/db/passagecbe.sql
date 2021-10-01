-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 11:40 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passagecbe`
--

-- --------------------------------------------------------

--
-- Table structure for table `passages`
--

CREATE TABLE `passages` (
  `id` int(11) NOT NULL,
  `passage` text NOT NULL,
  `instructions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passages`
--

INSERT INTO `passages` (`id`, `passage`, `instructions`) VALUES
(1, 'In the town of Agra there lived a rich businessman. But he was also quite a miser. Various people used to flock outside his house everyday hoping for some kind of generosity, but they always had to return home disappointed. He used to ward them off with false promises and then never lived up to his word. Then one day, a poet named Raidas arrived at his house and said that he wanted to read out his poems to the rich man. As the rich man was very fond of poetry, he welcomed him in with open arms.\r\n\r\n<br>\r\nRaidas started to recite all his poems one by one. The rich man was very pleased and especially so when he heard and especially so when he heard the poem that Raidas had written on him. In those days it was a custom for rich man and kings to show their appreciation through a reward or a gift, as that was the only means of earning that a poor poet possessed. So the rich man promised Raidas some gifts and asked him to come and collect them the next day, Raidas was pleased.\r\n\r\n<br />\r\n\r\n   The next morning when he arrived at the house, the rich man pretended that he had never laid eyes on him before. When Raidas reminded him of his promise, he said that although Raidas was a good poet he liked the poems which were written on him and rest of the poems were very ordinary. He also said that he had earlier promised a reward to Raidas not because he was really pleased or impressed but to simply encourage him. Raidas was extremely upset, but as there was nothing that he could do, he quietly left the house. On his way home he saw his brother Kuber riding a horse. So he stopped him and asked for his help after narrating the whole incident. Kuber took him to his own house in order to come up with a plan. Alter giving it to some thought he asked Raidas to go to a friend’s house with five gold coins and request the friend to plan a dinner where the rich man would also be invited. He then narrated his plan to him.\r\n<br />\r\nRaidas had one trustworthy friend whose name was Mayadas. So he went up to him and told him his plan. The next day, Mayadas went to the rich man’s house and invited him for the dinner. He said that he intended to serve his guests in vessels of gold, which the guests would get to take home after the meal. The rich man was thrilled to hear this and jumped at the offer. After the rich man arrived at Mayadas house, he was surprised to see no other guests there but Raidas. Anyhow, they welcomed him in and started a polite conversation. The rich man had come on an empty stomach and so was hungrier by the minute. Finally at midnight the rich man could bear his hunger no longer and asked Mayadas to serve the food. Mayadas sounded extremely surprised when he asked him what food he was talking about. The rich man tried to remind him that he had been invited for dinner. At this point Raidas asked him for the proof of the invitation. The rich man had no answer. At this point, Raidas reminded the rich man of the same treatment that he had meted out to him. The rich man realized his mistake and begged for forgiveness. He said that Raidas was a good poet and had not asked him for any reward. He himself had promised to give him some gifts and then cheated him out of them. To make up for his mistake he took out the necklace that he was wearing and gifted it to Raidas. Then they all sat down to eat a happy meal', 'Read through and understand the passage');

-- --------------------------------------------------------

--
-- Table structure for table `passage_questions`
--

CREATE TABLE `passage_questions` (
  `id` int(11) NOT NULL,
  `passage_id` int(11) NOT NULL,
  `question` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passage_questions`
--

INSERT INTO `passage_questions` (`id`, `passage_id`, `question`) VALUES
(1, 1, 'Why was the rich businessman thrilled on being invited over to dinner by Mayadas?'),
(2, 1, 'Which of the following is true in the context of the passage?'),
(3, 1, 'What did Raidas and Mayadas do when the rich man came over for the dinner?'),
(4, 1, 'Why did people flock outside the rich businessman’s house every day?'),
(5, 1, 'Why did the people always return home disappointed from the businessman’s home?');

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL,
  `passage_question_id` int(11) NOT NULL,
  `option` varchar(170) NOT NULL,
  `is_answer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `passage_question_id`, `option`, `is_answer`) VALUES
(1, 1, 'He was thrilled to have dinner for free.', 0),
(2, 1, 'No one had ever invited him over for dinner since he was very miserly.', 0),
(3, 1, 'Mayadas had promised to serve in gold dishes which the guests were all', 1),
(4, 1, 'Mayadas had promised many delicacies in the dinner.', 0),
(5, 2, 'It was Raidas’s brother Kuber’s plan to teach the rich businessman a lesson', 1),
(6, 2, 'The rich businessman had to return an empty stomach from Mayada’s house', 0),
(7, 2, 'Mayadas was a trustworthy friend of the rich businessman.', 0),
(8, 2, 'All are true', 0),
(9, 3, 'They were thrilled to have a businessman as their guest and served him well.', 0),
(10, 3, 'They served him in gold utensils which he later took with himself.', 0),
(11, 3, 'They did not serve him any food until he learnt a lesson on what he had done with Raidas.', 1),
(12, 3, 'All of the above', 0),
(13, 4, 'The business man was very kind-hearted and generous.', 0),
(14, 4, 'They sought an explanation from him on not keeping the promises made to them.', 0),
(15, 4, 'All of them wanted to recite poem to him as he was fond of poems.', 0),
(16, 4, 'They would hope for some generosity from the businessman since he was rich.', 1),
(17, 5, 'He would donate less than what he had promised to them.', 0),
(18, 5, 'He made promises to them but never kept his words.', 1),
(19, 5, 'The rich man would only reward those who had written poetry on him.', 0),
(20, 5, 'Both (B) and (C).', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passages`
--
ALTER TABLE `passages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passage_questions`
--
ALTER TABLE `passage_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passages`
--
ALTER TABLE `passages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passage_questions`
--
ALTER TABLE `passage_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
