-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-12-03 17:34:20
-- 伺服器版本: 10.1.19-MariaDB
-- PHP 版本： 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `eshop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `games`
--

CREATE TABLE `games` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `PictureLink` varchar(100) NOT NULL,
  `categories` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `games`
--

INSERT INTO `games` (`ID`, `Name`, `Price`, `PictureLink`, `categories`) VALUES
(1, 'Age of Empires III: Complete Collection', 219, 'http://cdn.akamai.steamstatic.com/steam/apps/105450/header.jpg?t=1448993548', 'strategy'),
(2, 'Age of Empires II HD', 119, 'http://cdn.akamai.steamstatic.com/steam/apps/221380/header.jpg?t=1455737649', 'strategy'),
(3, 'Company of Heroes', 119, 'http://cdn.akamai.steamstatic.com/steam/apps/4560/header.jpg?t=1478040682', 'strategy'),
(4, 'Sid Meier''s Civilization VI', 465, 'http://cdn.akamai.steamstatic.com/steam/apps/289070/header.jpg?t=1480626491', 'strategy'),
(5, 'Hearts of Iron IV', 219, 'http://cdn.akamai.steamstatic.com/steam/apps/394360/header.jpg?t=1478179412', 'strategy'),
(6, 'Total War: SHOGUN 2', 178, 'http://cdn.akamai.steamstatic.com/steam/apps/201270/header.jpg?t=1447353553', 'strategy'),
(7, 'Counter-Strike: Global Offensive', 99, 'http://cdn.akamai.steamstatic.com/steam/apps/730/header.jpg?t=1479515605', 'shooter'),
(8, 'Half-Life 2', 75, 'http://cdn.akamai.steamstatic.com/steam/apps/220/header.jpg?t=1456860366', 'shooter'),
(9, 'Left 4 Dead 2', 119, 'http://cdn.akamai.steamstatic.com/steam/apps/550/header.jpg?t=1467131981', 'shooter'),
(10, 'Tom Clancy''s Rainbow Six Siege', 268, 'http://cdn.akamai.steamstatic.com/steam/apps/359550/header.jpg?t=1480604830', 'shooter'),
(11, 'Tom Clancy''s The Division', 328, 'http://cdn.akamai.steamstatic.com/steam/apps/365590/header.jpg?t=1479806070', 'shooter'),
(12, 'DOOM', 465, 'http://cdn.akamai.steamstatic.com/steam/apps/379720/header.jpg?t=1480097058', 'shooter'),
(13, 'Watch_Dogs 2', 380, 'http://cdn.akamai.steamstatic.com/steam/apps/447040/header.jpg?t=1480602596', 'action'),
(14, 'Dishonored 2', 465, 'http://cdn.akamai.steamstatic.com/steam/apps/403640/header.jpg?t=1480631200', 'action'),
(15, 'DARK SOULS III', 339, 'http://cdn.akamai.steamstatic.com/steam/apps/374320/header.jpg?t=1475496359', 'action'),
(16, 'Grand Theft Auto V', 465, 'http://cdn.akamai.steamstatic.com/steam/apps/271590/header.jpg?t=1478726706', 'action'),
(17, 'Overwatch', 389, 'http://steam.cryotank.net/wp-content/gallery/overwatch/Overwatch-04.png', 'action'),
(18, 'Assassin''s Creed II: Deluxe Edition', 78, 'http://cdn.akamai.steamstatic.com/steam/apps/33230/header.jpg?t=1452180469', 'action'),
(19, 'Starcraft 2 Legacy of the void', 320, 'https://www.pandikey.com/images/produits_images/miniature/starcraft-2-legacy-of-the-void-646.jpg', 'strategy'),
(20, 'ROMANCE OF THE THREE KINGDOMS 13', 468, 'http://cdn.akamai.steamstatic.com/steam/apps/363150/header_tchinese.jpg?t=1476926944', 'strategy'),
(21, 'Men of War: Assault Squad 2', 178, 'http://cdn.akamai.steamstatic.com/steam/apps/244450/header.jpg?t=1469296062', 'strategy'),
(22, 'Killing Floor 2', 178, 'http://cdn.akamai.steamstatic.com/steam/apps/232090/header.jpg?t=1479478256', 'shooter'),
(23, 'H1Z1: King of the Kill', 119, 'http://cdn.akamai.steamstatic.com/steam/apps/433850/header.jpg?t=1479489741', 'shooter'),
(24, 'Resident Evil 6', 186, 'http://cdn.akamai.steamstatic.com/steam/apps/221040/header.jpg?t=1478021549', 'shooter'),
(25, 'HITMAN', 99, 'http://cdn.akamai.steamstatic.com/steam/apps/236870/header.jpg?t=1480438253', 'action'),
(26, 'Deus Ex: Mankind Divided', 429, 'http://cdn.akamai.steamstatic.com/steam/apps/337000/header.jpg?t=1478566706', 'action'),
(27, 'The Elder Scrolls V: Skyrim', 119, 'http://cdn.akamai.steamstatic.com/steam/apps/72850/header.jpg?t=1477612894', 'action'),
(28, 'XCOM 2', 465, 'http://cdn.akamai.steamstatic.com/steam/apps/268500/header.jpg?t=1479837779', 'strategy'),
(29, 'Ultimate General: Civil War', 149, 'http://cdn.akamai.steamstatic.com/steam/apps/502520/header.jpg?t=1479933466', 'strategy'),
(30, 'Plague Inc: Evolved', 99, 'http://cdn.akamai.steamstatic.com/steam/apps/246620/header_tchinese.jpg?t=1478779051', 'strategy'),
(31, 'Call of Duty: Infinite Warfare', 455, 'http://cdn.akamai.steamstatic.com/steam/apps/292730/header.jpg?t=1479411431', 'shooter'),
(32, 'Borderlands 2', 155, 'http://cdn.akamai.steamstatic.com/steam/apps/49520/header.jpg?t=1474414654', 'shooter'),
(33, 'Max Payne 3', 155, 'http://cdn.akamai.steamstatic.com/steam/apps/204100/header.jpg?t=1478120696', 'shooter'),
(34, 'Rise of the Tomb Raider', 390, 'http://cdn.akamai.steamstatic.com/steam/apps/391220/header.jpg?t=1478568158', 'adventure'),
(35, 'The Witcher 3: Wild Hunt', 310, 'http://cdn.akamai.steamstatic.com/steam/apps/292030/header.jpg?t=1479919850', 'adventure'),
(36, 'The Walking Dead: A New Frontier', 148, 'http://cdn.akamai.steamstatic.com/steam/apps/536220/header.jpg?t=1480467753', 'adventure'),
(37, 'LIMBO', 75, 'http://cdn.akamai.steamstatic.com/steam/apps/48000/header.jpg?t=1478090357', 'adventure'),
(38, 'Mirror''s Edge', 160, 'http://cdn.akamai.steamstatic.com/steam/apps/17410/header.jpg?t=1447351617', 'adventure'),
(39, 'FINAL FANTASY IX', 125, 'http://cdn.akamai.steamstatic.com/steam/apps/377840/header.jpg?t=1467079110', 'adventure'),
(40, 'Mad Max', 156, 'http://cdn.akamai.steamstatic.com/steam/apps/234140/header.jpg?t=1477011129', 'adventure'),
(41, 'Batman: Arkham Knight', 156, 'http://cdn.akamai.steamstatic.com/steam/apps/208650/header.jpg?t=1461102863', 'adventure'),
(42, 'Tale of Wuxia', 109, 'http://cdn.akamai.steamstatic.com/steam/apps/377530/header.jpg?t=1462238352', 'adventure'),
(43, 'Grim Fandango Remastered', 99, 'http://cdn.akamai.steamstatic.com/steam/apps/316790/header.jpg?t=1479170794', 'adventure'),
(44, 'Far Cry 4', 198, 'http://cdn.akamai.steamstatic.com/steam/apps/298110/header.jpg?t=1453737319', 'adventure'),
(45, 'Mafia III', 468, 'http://cdn.akamai.steamstatic.com/steam/apps/360430/header.jpg?t=1479837812', 'adventure'),
(46, 'Shadow Warrior', 219, 'http://cdn.akamai.steamstatic.com/steam/apps/233130/header.jpg?t=1462465505', 'action'),
(47, 'Street Fighter V', 465, 'http://cdn.akamai.steamstatic.com/steam/apps/310950/header.jpg?t=1474652866', 'action'),
(48, 'PAYDAY 2', 119, 'http://cdn.akamai.steamstatic.com/steam/apps/218620/header.jpg?t=1480036870', 'action');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `games`
--
ALTER TABLE `games`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
