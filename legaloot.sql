-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 22. 11:28
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `legaloot`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `category`
--

CREATE TABLE `category` (
  `Cid` int(11) NOT NULL,
  `Cname` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `CPCid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comments`
--

CREATE TABLE `comments` (
  `Oid` int(11) NOT NULL,
  `Otext` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `Odate` datetime NOT NULL,
  `OPid` int(11) NOT NULL,
  `OUid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `image`
--

CREATE TABLE `image` (
  `IMid` int(11) NOT NULL,
  `PIMid` int(11) NOT NULL,
  `File_path` varchar(25) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `login`
--

CREATE TABLE `login` (
  `Lid` int(11) NOT NULL,
  `Ldate` datetime NOT NULL,
  `Lip` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `Luid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `login`
--

INSERT INTO `login` (`Lid`, `Ldate`, `Lip`, `Luid`) VALUES
(1, '2024-03-22 09:07:42', '::1', 2),
(2, '2024-03-22 10:50:21', '::1', 2),
(3, '2024-03-22 10:50:52', '::1', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `naplo`
--

CREATE TABLE `naplo` (
  `Nid` int(11) NOT NULL,
  `Nurl` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Ndate` datetime NOT NULL,
  `Nip` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `NLid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `naplo`
--

INSERT INTO `naplo` (`Nid`, `Nurl`, `Ndate`, `Nip`, `NLid`) VALUES
(15, '/feri/zarodoga-main/', '2024-03-22 09:07:42', '::1', 1),
(16, '/feri/zarodoga-main/?p=termekek', '2024-03-22 09:07:45', '::1', 1),
(17, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 09:07:45', '::1', 1),
(18, '/feri/zarodoga-main/', '2024-03-22 09:07:46', '::1', 1),
(19, '/feri/zarodoga-main/?p=profil', '2024-03-22 09:07:47', '::1', 1),
(20, '/feri/zarodoga-main/', '2024-03-22 09:07:48', '::1', 1),
(21, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:09:55', '::1', 1),
(22, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:09:56', '::1', 1),
(23, '/feri/zarodoga-main/', '2024-03-22 10:09:57', '::1', 1),
(24, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:09:59', '::1', 1),
(25, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:09:59', '::1', 1),
(26, '/feri/zarodoga-main/', '2024-03-22 10:10:00', '::1', 1),
(27, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:10:01', '::1', 1),
(28, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:10:02', '::1', 1),
(29, '/feri/zarodoga-main/', '2024-03-22 10:10:02', '::1', 1),
(30, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:10:03', '::1', 1),
(31, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:10:03', '::1', 1),
(32, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:10:05', '::1', 1),
(33, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:10:06', '::1', 1),
(34, '/feri/zarodoga-main/', '2024-03-22 10:10:06', '::1', 1),
(35, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:10:07', '::1', 1),
(36, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:10:08', '::1', 1),
(37, '/feri/zarodoga-main/', '2024-03-22 10:10:09', '::1', 1),
(38, '/feri/zarodoga-main/', '2024-03-22 10:31:40', '::1', 1),
(39, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:31:45', '::1', 1),
(40, '/feri/zarodoga-main/', '2024-03-22 10:31:48', '::1', 1),
(41, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:31:55', '::1', 1),
(42, '/feri/zarodoga-main/', '2024-03-22 10:31:56', '::1', 1),
(43, '/feri/zarodoga-main/', '2024-03-22 10:33:03', '::1', 1),
(44, '/feri/zarodoga-main/', '2024-03-22 10:33:04', '::1', 1),
(45, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:33:05', '::1', 1),
(46, '/feri/zarodoga-main/', '2024-03-22 10:33:06', '::1', 1),
(47, '/feri/zarodoga-main/', '2024-03-22 10:33:53', '::1', 1),
(48, '/feri/zarodoga-main/', '2024-03-22 10:33:54', '::1', 1),
(49, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:33:55', '::1', 1),
(50, '/feri/zarodoga-main/', '2024-03-22 10:33:56', '::1', 1),
(51, '/feri/zarodoga-main/', '2024-03-22 10:48:50', '::1', 1),
(52, '/feri/zarodoga-main/', '2024-03-22 10:48:55', '::1', 1),
(53, '/feri/zarodoga-main/', '2024-03-22 10:48:56', '::1', 1),
(54, '/feri/zarodoga-main/', '2024-03-22 10:48:56', '::1', 1),
(55, '/feri/zarodoga-main/', '2024-03-22 10:49:07', '::1', 1),
(56, '/feri/zarodoga-main/', '2024-03-22 10:49:57', '::1', 1),
(57, '/feri/zarodoga-main/', '2024-03-22 10:49:58', '::1', 1),
(58, '/feri/zarodoga-main/', '2024-03-22 10:49:58', '::1', 1),
(59, '/feri/zarodoga-main/', '2024-03-22 10:49:58', '::1', 1),
(60, '/feri/zarodoga-main/', '2024-03-22 10:49:58', '::1', 1),
(61, '/feri/zarodoga-main/', '2024-03-22 10:49:58', '::1', 1),
(62, '/feri/zarodoga-main/', '2024-03-22 10:49:59', '::1', 1),
(63, '/feri/zarodoga-main/', '2024-03-22 10:49:59', '::1', 1),
(64, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 10:50:00', '::1', 1),
(65, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:50:03', '::1', 1),
(66, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 10:50:03', '::1', 1),
(67, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 10:50:04', '::1', 1),
(68, '/feri/zarodoga-main/?p=profil', '2024-03-22 10:50:05', '::1', 1),
(69, '/feri/zarodoga-main/?p=adatmod', '2024-03-22 10:50:06', '::1', 1),
(70, '/feri/zarodoga-main/?p=profil', '2024-03-22 10:50:07', '::1', 1),
(71, '/feri/zarodoga-main/?p=jelszomod', '2024-03-22 10:50:08', '::1', 1),
(72, '/feri/zarodoga-main/?p=profil', '2024-03-22 10:50:09', '::1', 1),
(73, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 10:50:11', '::1', 1),
(74, '/feri/zarodoga-main/?p=profil', '2024-03-22 10:50:13', '::1', 1),
(76, '/feri/zarodoga-main/', '2024-03-22 10:50:21', '::1', 2),
(77, '/feri/zarodoga-main/?p=profil', '2024-03-22 10:50:46', '::1', 2),
(79, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 10:50:52', '::1', 3),
(80, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 10:51:35', '::1', 3),
(81, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:51:37', '::1', 3),
(82, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:53:00', '::1', 3),
(83, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:55:58', '::1', 3),
(84, '/feri/zarodoga-main/?=fooldal', '2024-03-22 10:56:01', '::1', 3),
(85, '/feri/zarodoga-main/?p=termekek', '2024-03-22 10:59:11', '::1', 3),
(86, '/feri/zarodoga-main/?=fooldal', '2024-03-22 10:59:26', '::1', 3),
(87, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 10:59:30', '::1', 3),
(88, '/feri/zarodoga-main/?=fooldal', '2024-03-22 10:59:31', '::1', 3),
(89, '/feri/zarodoga-main/?p=termekek', '2024-03-22 11:00:16', '::1', 3),
(90, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:01:43', '::1', 3),
(91, '/feri/zarodoga-main/?p=profil', '2024-03-22 11:03:27', '::1', 3),
(92, '/feri/zarodoga-main/?p=termekek', '2024-03-22 11:03:28', '::1', 3),
(93, '/feri/zarodoga-main/?p=rolunk', '2024-03-22 11:03:29', '::1', 3),
(94, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:03:29', '::1', 3),
(95, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:25:30', '::1', 3),
(96, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:25:36', '::1', 3),
(97, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:05', '::1', 3),
(98, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:06', '::1', 3),
(99, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:06', '::1', 3),
(100, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:06', '::1', 3),
(101, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:06', '::1', 3),
(102, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:06', '::1', 3),
(103, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:07', '::1', 3),
(104, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:07', '::1', 3),
(105, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:07', '::1', 3),
(106, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:07', '::1', 3),
(107, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:26:58', '::1', 3),
(108, '/feri/zarodoga-main/?p=termekek', '2024-03-22 11:27:08', '::1', 3),
(109, '/feri/zarodoga-main/?p=fooldal', '2024-03-22 11:27:32', '::1', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `post`
--

CREATE TABLE `post` (
  `Pid` int(11) NOT NULL,
  `PUid` int(11) NOT NULL,
  `Ptitle` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Pdesc` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `Pcity` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `Ptel` varchar(12) COLLATE utf8_hungarian_ci NOT NULL,
  `Pcost` int(10) NOT NULL,
  `Ppicture` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Ptime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `post`
--

INSERT INTO `post` (`Pid`, `PUid`, `Ptitle`, `Pdesc`, `Pcity`, `Ptel`, `Pcost`, `Ppicture`, `Ptime`) VALUES
(2, 2, 'teszt', 'teszt', 'teszt', 'teszt', 0, '20240322110059_2_j7D1RIzhdc.jpg', '2024-03-22 11:00:59'),
(3, 2, 'teszt2', 'teszt2', 'teszt2', 'teszt2', 0, '20240322112730_2_9nTCF1bOlU.jpg', '2024-03-22 11:27:30');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `postcategory`
--

CREATE TABLE `postcategory` (
  `PCid` int(11) NOT NULL,
  `PCname` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `PPCid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `Uid` int(11) NOT NULL,
  `Uname` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `Ufirstname` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `Ulastname` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `Umail` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `Upw` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `Uip` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `Udate` datetime NOT NULL,
  `Ustatus` text COLLATE utf8_hungarian_ci NOT NULL COMMENT 'a/f',
  `Urole` int(11) NOT NULL COMMENT 'A/F',
  `Ustrid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`Uid`, `Uname`, `Ufirstname`, `Ulastname`, `Umail`, `Upw`, `Uip`, `Udate`, `Ustatus`, `Urole`, `Ustrid`) VALUES
(2, 'fehy', 'en', 'te', 'valami@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '::1', '2024-03-22 09:07:38', 'A', 0, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cid`),
  ADD KEY `CPCid` (`CPCid`);

--
-- A tábla indexei `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `OUid` (`OUid`);

--
-- A tábla indexei `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`IMid`),
  ADD KEY `PIMid` (`PIMid`);

--
-- A tábla indexei `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Lid`),
  ADD KEY `Luid` (`Luid`);

--
-- A tábla indexei `naplo`
--
ALTER TABLE `naplo`
  ADD PRIMARY KEY (`Nid`),
  ADD KEY `NLid` (`NLid`);

--
-- A tábla indexei `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`Pid`),
  ADD KEY `PUid` (`PUid`);

--
-- A tábla indexei `postcategory`
--
ALTER TABLE `postcategory`
  ADD PRIMARY KEY (`PCid`),
  ADD KEY `PPCid` (`PPCid`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Uid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `category`
--
ALTER TABLE `category`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `comments`
--
ALTER TABLE `comments`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `image`
--
ALTER TABLE `image`
  MODIFY `IMid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `login`
--
ALTER TABLE `login`
  MODIFY `Lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `naplo`
--
ALTER TABLE `naplo`
  MODIFY `Nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT a táblához `post`
--
ALTER TABLE `post`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `postcategory`
--
ALTER TABLE `postcategory`
  MODIFY `PCid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`CPCid`) REFERENCES `postcategory` (`PCid`);

--
-- Megkötések a táblához `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`OUid`) REFERENCES `user` (`Uid`);

--
-- Megkötések a táblához `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`PIMid`) REFERENCES `post` (`Pid`);

--
-- Megkötések a táblához `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`Luid`) REFERENCES `user` (`Uid`);

--
-- Megkötések a táblához `naplo`
--
ALTER TABLE `naplo`
  ADD CONSTRAINT `naplo_ibfk_1` FOREIGN KEY (`NLid`) REFERENCES `login` (`Lid`);

--
-- Megkötések a táblához `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`PUid`) REFERENCES `user` (`Uid`);

--
-- Megkötések a táblához `postcategory`
--
ALTER TABLE `postcategory`
  ADD CONSTRAINT `postcategory_ibfk_1` FOREIGN KEY (`PPCid`) REFERENCES `post` (`Pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
