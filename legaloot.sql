-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 23. 11:27
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
  `Pcost` int(10) NOT NULL,
  `Ptime` datetime NOT NULL,
  `PIMid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
  `Upw` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `Utelszam` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `Uip` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `Udate` datetime NOT NULL,
  `Ustatus` text COLLATE utf8_hungarian_ci NOT NULL COMMENT 'a/f',
  `Urole` int(11) NOT NULL COMMENT 'A/F',
  `Ustrid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
  MODIFY `Lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `naplo`
--
ALTER TABLE `naplo`
  MODIFY `Nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `post`
--
ALTER TABLE `post`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `postcategory`
--
ALTER TABLE `postcategory`
  MODIFY `PCid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT;

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
