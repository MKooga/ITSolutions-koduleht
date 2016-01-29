-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Jaan 29, 2016 kell 10:51 PL
-- Serveri versioon: 10.1.9-MariaDB
-- PHP versioon: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `itstuff`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `contact_info`
--

CREATE TABLE `contact_info` (
  `Contact_id` int(11) NOT NULL,
  `Contact_name` varchar(100) NOT NULL,
  `Contact_description` varchar(255) NOT NULL,
  `Contact_email` varchar(255) NOT NULL,
  `Contact_phone` int(11) NOT NULL,
  `Contact_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `contact_info`
--

INSERT INTO `contact_info` (`Contact_id`, `Contact_name`, `Contact_description`, `Contact_email`, `Contact_phone`, `Contact_img`) VALUES
(1, 'Hardi Kaiv', 'Contact details', 'hardi.kaiv@khk.ee', 56612321, 'assets/placeholder.gif');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `logo`
--

CREATE TABLE `logo` (
  `Logo_id` int(11) NOT NULL,
  `Logo_name` varchar(255) NOT NULL,
  `Logo_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Logo_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `logo`
--

INSERT INTO `logo` (`Logo_id`, `Logo_name`, `Logo_time`, `Logo_img`) VALUES
(1, 'SolutionsIT', '2016-01-27 20:09:18', 'assets/placeholder.gif'),
(2, 'SolutionsIT', '2016-01-27 20:09:59', 'assets/placeholder.gif'),
(3, 'SolutionsIT', '2016-01-27 20:10:03', 'assets/placeholder.gif');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `portfolio`
--

CREATE TABLE `portfolio` (
  `Portfolio_id` int(11) NOT NULL,
  `Portfolio_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Portfolio_name` varchar(255) NOT NULL,
  `Portfolio_img` varchar(255) NOT NULL,
  `Portfolio_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `portfolio`
--

INSERT INTO `portfolio` (`Portfolio_id`, `Portfolio_time`, `Portfolio_name`, `Portfolio_img`, `Portfolio_description`) VALUES
(1, '2016-01-27 20:08:36', 'Job1', 'assets/placeholder.gif', 'Job1'),
(2, '2016-01-29 21:01:25', 'Job2', 'assets/placeholder.gif', 'Job2');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `services`
--

CREATE TABLE `services` (
  `Service_id` int(11) NOT NULL,
  `Service_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Service_title` varchar(255) NOT NULL,
  `Service_name` varchar(255) NOT NULL,
  `Service_img` varchar(255) NOT NULL,
  `Service_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `services`
--

INSERT INTO `services` (`Service_id`, `Service_time`, `Service_title`, `Service_name`, `Service_img`, `Service_description`) VALUES
(1, '2016-01-27 20:07:57', 'Web development', 'Web development', 'assets/placeholder.gif', 'Web development'),
(2, '2016-01-29 20:46:49', 'Data Recovery', 'Data Recovery', 'assets/placeholder.gif', 'Data Recovery'),
(3, '2016-01-29 20:46:59', 'IT Maintenence', 'IT Maintenence', 'assets/placeholder.gif', 'IT Maintenence');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `social_links`
--

CREATE TABLE `social_links` (
  `Links_id` int(11) NOT NULL,
  `Link_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Link_source` varchar(255) NOT NULL,
  `Link_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `social_links`
--

INSERT INTO `social_links` (`Links_id`, `Link_time`, `Link_source`, `Link_img`) VALUES
(1, '2016-01-29 21:17:02', 'https://www.facebook.com', 'assets/fb-art.jpg');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `team_contact`
--

CREATE TABLE `team_contact` (
  `Contact_id` int(11) NOT NULL,
  `Contact_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Contact_name` varchar(255) NOT NULL,
  `Contact_img` varchar(255) NOT NULL,
  `Contact_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `team_contact`
--

INSERT INTO `team_contact` (`Contact_id`, `Contact_time`, `Contact_name`, `Contact_img`, `Contact_description`) VALUES
(1, '2016-01-29 21:29:32', 'Contact', 'assets/placeholder.gif', 'Company description');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `users`
--

INSERT INTO `users` (`User_id`, `User_name`, `Password`) VALUES
(1, 'kasutajanimi', 'parool'),
(2, 'kasutajanimi', 'parool');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`Contact_id`);

--
-- Indeksid tabelile `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`Logo_id`);

--
-- Indeksid tabelile `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`Portfolio_id`);

--
-- Indeksid tabelile `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Service_id`);

--
-- Indeksid tabelile `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`Links_id`);

--
-- Indeksid tabelile `team_contact`
--
ALTER TABLE `team_contact`
  ADD PRIMARY KEY (`Contact_id`);

--
-- Indeksid tabelile `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `Contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabelile `logo`
--
ALTER TABLE `logo`
  MODIFY `Logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT tabelile `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `Portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabelile `services`
--
ALTER TABLE `services`
  MODIFY `Service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT tabelile `social_links`
--
ALTER TABLE `social_links`
  MODIFY `Links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT tabelile `team_contact`
--
ALTER TABLE `team_contact`
  MODIFY `Contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT tabelile `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
