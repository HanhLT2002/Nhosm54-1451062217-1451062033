-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 06:25 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoconline`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangbaihoc`
--

CREATE TABLE `bangbaihoc` (
  `maBH` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenHB` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `videoBH` longblob NOT NULL,
  `noidungBH` varchar(8000) COLLATE utf8_unicode_ci NOT NULL,
  `maKH` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangday`
--

CREATE TABLE `bangday` (
  `maGV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `maKH` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banggiaovien`
--

CREATE TABLE `banggiaovien` (
  `maGV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenGV` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sdtGV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinhGV` date NOT NULL,
  `diachiGV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `luongGV` int(100) NOT NULL,
  `anhGV` longblob NOT NULL,
  `link` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `maNV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tentaikhoan` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banggopy`
--

CREATE TABLE `banggopy` (
  `maGopy` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `chude` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(8000) COLLATE utf8_unicode_ci NOT NULL,
  `link` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banghoc`
--

CREATE TABLE `banghoc` (
  `maHV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `maKH` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banghocvien`
--

CREATE TABLE `banghocvien` (
  `maHV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenHV` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinhHV` date NOT NULL,
  `diachiHV` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdtHV` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `anhHV` longblob NOT NULL,
  `Tentaikhoan` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `Link` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `maNV` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangkhoahoc`
--

CREATE TABLE `bangkhoahoc` (
  `maKH` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenKH` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `noidungKH` varchar(8000) COLLATE utf8_unicode_ci NOT NULL,
  `loaiKH` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `anhKH` longblob NOT NULL,
  `hocphi` int(100) NOT NULL,
  `link` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangnhanvien`
--

CREATE TABLE `bangnhanvien` (
  `maNV` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `tenNV` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sdtNV` int(20) NOT NULL,
  `gioitinhNV` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `diachiNV` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinhNV` date NOT NULL,
  `anhNV` longblob NOT NULL,
  `luongNV` int(100) NOT NULL,
  `tentaikhoan` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `Link` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangtaikhoan`
--

CREATE TABLE `bangtaikhoan` (
  `ID` int(10) NOT NULL,
  `tentaikhoan` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhau` char(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangthuvien`
--

CREATE TABLE `bangthuvien` (
  `maTV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenTV` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `videoTV` longblob NOT NULL,
  `anhTV` longblob NOT NULL,
  `link` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangweb`
--

CREATE TABLE `bangweb` (
  `Link` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenweb` char(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangbaihoc`
--
ALTER TABLE `bangbaihoc`
  ADD PRIMARY KEY (`maBH`),
  ADD KEY `maKH` (`maKH`);

--
-- Indexes for table `bangday`
--
ALTER TABLE `bangday`
  ADD PRIMARY KEY (`maGV`,`maKH`);

--
-- Indexes for table `banggiaovien`
--
ALTER TABLE `banggiaovien`
  ADD PRIMARY KEY (`maGV`),
  ADD KEY `link` (`link`,`maNV`,`tentaikhoan`);

--
-- Indexes for table `banggopy`
--
ALTER TABLE `banggopy`
  ADD PRIMARY KEY (`maGopy`),
  ADD KEY `link` (`link`);

--
-- Indexes for table `banghoc`
--
ALTER TABLE `banghoc`
  ADD PRIMARY KEY (`maHV`,`maKH`);

--
-- Indexes for table `banghocvien`
--
ALTER TABLE `banghocvien`
  ADD PRIMARY KEY (`maHV`),
  ADD KEY `Tentaikhoan` (`Tentaikhoan`,`Link`,`maNV`);

--
-- Indexes for table `bangkhoahoc`
--
ALTER TABLE `bangkhoahoc`
  ADD PRIMARY KEY (`maKH`),
  ADD KEY `link` (`link`);

--
-- Indexes for table `bangnhanvien`
--
ALTER TABLE `bangnhanvien`
  ADD PRIMARY KEY (`maNV`),
  ADD KEY `tentaikhoan` (`tentaikhoan`),
  ADD KEY `Link` (`Link`);

--
-- Indexes for table `bangtaikhoan`
--
ALTER TABLE `bangtaikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bangthuvien`
--
ALTER TABLE `bangthuvien`
  ADD PRIMARY KEY (`maTV`),
  ADD KEY `link` (`link`);

--
-- Indexes for table `bangweb`
--
ALTER TABLE `bangweb`
  ADD PRIMARY KEY (`Link`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
