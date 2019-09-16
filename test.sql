-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 08:28 AM
-- Server version: 5.6.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount`
--

CREATE TABLE `amount` (
  `id` int(11) NOT NULL,
  `associateid` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT '',
  `paid` decimal(11,0) DEFAULT '0' COMMENT 'This contains paid amount which come in an associates amount which is Rs 25',
  `collect` decimal(11,0) DEFAULT '0' COMMENT 'This contains collected amount which is the remaing amount after deducting rs 25',
  `total` decimal(11,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amount`
--

INSERT INTO `amount` (`id`, `associateid`, `date`, `paid`, `collect`, `total`) VALUES
(1, 1, '04-07-2016', '25', '275', '300'),
(2, 3, '04-07-2016', '25', '175', '200'),
(3, 3, '04-07-2016', '25', '175', '200'),
(4, 3, '04-07-2016', '25', '175', '200'),
(5, 2, '04-07-2016', '25', '475', '500'),
(6, 3, '01-07-1982', '25', '25', '300'),
(7, 1, '05-07-2016', '25', '475', '500'),
(8, 1, '05-07-1985', '25', '25', '500'),
(9, 2, '05-07-2016', '25', '475', '500'),
(10, 2, '05-07-2016', '25', '775', '800'),
(11, 1, '21-07-2016', '25', '475', '500'),
(12, 1, '21-07-2016', '25', '975', '1000'),
(13, 1, '21-07-2016', '25', '475', '500'),
(14, 2, '21-07-2016', '25', '975', '1000'),
(15, 2, '21-07-2016', '6', '6', '6');

-- --------------------------------------------------------

--
-- Table structure for table `applicationuser`
--

CREATE TABLE `applicationuser` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT '',
  `phone` varchar(50) DEFAULT '',
  `email` varchar(200) DEFAULT '' COMMENT 'The Role Value For Adimin is 0 and for Receptionist is 1. \nDefult Value is set to 0',
  `password` varchar(200) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicationuser`
--

INSERT INTO `applicationuser` (`id`, `fullname`, `phone`, `email`, `password`) VALUES
(1, 'Rizwan Khan', '1234567890', 'riz.insure@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 's', 's', 's', 'f7ba31201f79519907f0f8f4419137b9'),
(4, 'Rizwan Khan', '9850703546', 'rr@gmail.com', 'fa42ca2a23e2d0116f49d3e2e910ac8c'),
(5, 'Arham Khan', '00000000', '0', '0'),
(6, 'test', '0000', '0', '0'),
(7, 'Khurram Khan', '123', '123@gmail.com', '35f9a8538cd00a22f6f30f1dbfefbf78'),
(8, 'ss', 'ss', 'ss', 'b418011e3194c6938613aaa1df48df88'),
(9, 'ewe', 'we', 'we', 'ae28a165bd0ce9fb921fccd7ebad3b00'),
(10, 'adg', 'asdg', 'asdg', '283c339e50dc9aae5aa2a23256fd6a77'),
(11, 'qq', 'qq', 'qq', 'a04087d368a5349870843477164bbcdf'),
(12, 'test', 'tet', 'st', '19d4003b4558336aab95fcb9329abd19'),
(13, 'asdg', 'asdg', '111', '19918091cfe6464fd78bf83ab88b6b14'),
(14, 'ere', 'er', 'er', '29c5a845b64163fbab14486336e703dc'),
(16, 'adg', 'sdg', 'dgd', 'a40322b173bbd0e8a7a359b5a6074c4d'),
(18, 'yy', 'yy', 'yy', '9f84f795d4f30a52b1a1a96dd9f10e03'),
(19, 'zz', 'zz', 'zz', 'dcc5f6092cdb1ff73e2429e7feb1ab9b'),
(20, 'i', 'i', 'i', '2fcecf822fc48774c7bc4ad6b266b52d');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `articleId` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assoicates`
--

CREATE TABLE `assoicates` (
  `id` int(11) NOT NULL,
  `supervisor` int(11) DEFAULT '0' COMMENT 'This must be a supervisor id and it was not a foreg key constraints',
  `categoryid` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT '',
  `uniqueid` varchar(50) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `day` int(50) DEFAULT '0',
  `dob` varchar(50) DEFAULT '',
  `date` varchar(50) DEFAULT '',
  `serving` varchar(50) DEFAULT '',
  `servingleft` varchar(50) DEFAULT '',
  `paid` decimal(10,1) DEFAULT '0.0',
  `paidbalance` varchar(50) DEFAULT '',
  `comments` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assoicates`
--

INSERT INTO `assoicates` (`id`, `supervisor`, `categoryid`, `name`, `uniqueid`, `mobile`, `day`, `dob`, `date`, `serving`, `servingleft`, `paid`, `paidbalance`, `comments`) VALUES
(1, 6, 3, 'Rizwan Khan', 'RR100', '9673615896', 4, '20-06-1984', '04-08-2016', '6', '0', '2870.0', 'Paid ', 'All paid ok i added this ok then'),
(2, -1, 3, 'Chandrahas Ninave', 'CC101', '1234567890', 2, '05-05-1985', '04-07-2016', '2', '0', '2870.0', 'Paid ', ''),
(3, 2, 3, 'Gunvant Bhople', 'GC102', '1234567890', 1, '10-10-1986', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(4, 1, 3, 'Swapnil Bamal', 'SR103', '1234567890', 1, '04-07-1986', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(5, -1, 3, 'PRASHANT', 'PP104', '1234567890', 1, '11-07-1979', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(6, -1, 3, 'PRIYANKA', 'PP105', '1234567890', 1, '04-05-1990', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(7, -1, 3, 'AASTHA', 'AA106', '1234567890', 1, '06-06-2001', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(8, 7, 3, 'YOGESH J', 'YA107', '1234567890', 1, '01-07-1994', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(9, -1, 3, 'RAMAN KUTHE', 'RR108', '1234567890', 1, '06-07-2001', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(10, 9, 3, 'SURBHI', 'SR109', '1234567890', 1, '04-07-2001', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(11, -1, 3, 'Bhumi', 'BB110', '1234567890', 1, '04-12-1989', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(12, -1, 3, 'Test', 'TT111', '1234567890', 1, '04-02-1966', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(13, -1, 3, 'ttttt', 'tt112', '1593571590', 1, '04-09-1984', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(14, 3, 3, 'Tausif', 'TG113', '1234567890', 1, '04-07-1986', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(15, 3, 3, 'Ravi', 'RG114', '1478523690', 1, '01-07-1995', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(16, 1, 3, 'Oves Khan', 'OR115', '1234567890', 1, '01-07-1990', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(17, 1, 3, 'Vinay Shakare', 'VR116', '1234567890', 1, '29-06-1989', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(18, 1, 3, 'Tausif Khan', 'TR117', '1234567890', 1, '04-11-1991', '04-07-2016', '1', '0', '2870.0', 'Paid ', ''),
(19, 1, 3, 'Refresh', 'RR119', '1234567890', 1, '11-07-2016', '02-07-2010', '1', '0', '2870.0', 'Paid ', 'paid'),
(20, 1, 3, 'asf', 'aR120', '1234567890', 1, '12-07-2016', '12-6-2016', '0', '0', '0.0', 'Paid ', 'sdgad'),
(21, 6, 3, 'Shazim', 'SP121', '1234567890', 1, '12-07-2016', '12-6-2016', '0', '0', '0.0', 'Paid ', '');

-- --------------------------------------------------------

--
-- Table structure for table `atomicinteger`
--

CREATE TABLE `atomicinteger` (
  `id` int(11) NOT NULL,
  `guestid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `associateid` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This just hold the unique sequential uuid for guest id, member id and associates id';

--
-- Dumping data for table `atomicinteger`
--

INSERT INTO `atomicinteger` (`id`, `guestid`, `memberid`, `associateid`) VALUES
(1, 100, 112, 122);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `title` varchar(200) NOT NULL,
  `Author` varchar(200) NOT NULL,
  `isbn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`title`, `Author`, `isbn`) VALUES
('My Title', 'BBB', 14),
('My Title', 'BBB', 14),
('An Introduction to SQL', 'CCC', 4),
('An ABC OF SQL', 'XXaa', 10),
('Reference Of SQL', 'SCS', 4),
('Pitfalls of SQL', 'XXX', 5),
('Book Title', 'Author', 1212);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `author` varchar(200) NOT NULL,
  `isbn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`author`, `isbn`) VALUES
('ABV', 1),
('ABV', 1),
('BBB', 14),
('ABV', 1),
('BBB', 14),
('CCC', 4),
('XXaa', 10),
('SCS', 4),
('XXX', 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT '' COMMENT 'It can be A Guest, Member , D Or Kid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='The category table will hold the following types of category . \nGuest \nMember\nD\nKid\n ';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Guest'),
(2, 'Member'),
(3, 'Associates'),
(4, 'Kid');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `deleted`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(1, 'Lenco Builders, LLC', NULL, 'Abingdon', 'MD', '21009', NULL, '0000-00-00', NULL, '(410) 679-3009 (410)', NULL, '', 0, NULL, NULL, 0),
(2, 'Tahoe Mold and Water, Inc.', NULL, 'Tahoe City', 'CA', '96145', NULL, '0000-00-00', NULL, '(888) 583-6653', NULL, '', 0, NULL, NULL, 0),
(3, 'Ernest Design Build, LLC', NULL, 'Jacksonville', 'FL', '32082', NULL, '0000-00-00', NULL, '(904) 384-5365 (904)', NULL, '', 0, NULL, NULL, 0),
(4, 'Fairway Homes, LLC', NULL, 'Aberdeen', 'SD', '57401', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(5, 'TLC Home', NULL, 'Arnold', 'MD', '21012', NULL, '0000-00-00', NULL, '(410) 562-1087', NULL, '', 0, NULL, NULL, 0),
(6, 'Gregg\'s Gardens, LLC', NULL, 'Henrico', 'VA', '23233', NULL, '0000-00-00', NULL, '(804) 971-8137', NULL, '', 0, NULL, NULL, 0),
(7, 'AJ\'s Tree Care', NULL, 'New Braunfels', 'TX', '78130', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(8, 'Viking Decorators', NULL, 'Silver Spring', 'MD', '20906', NULL, '0000-00-00', NULL, '(301) 924-1500', NULL, '', 0, NULL, NULL, 0),
(9, 'Aaron Acosta Drywall', NULL, 'Burnsville', 'MN', '55306', NULL, '0000-00-00', NULL, '(952) 807-6931', NULL, '', 0, NULL, NULL, 0),
(10, 'Advantage Tile and Grout Cleaning, LLC', NULL, 'Westminster', 'CO', '80035', NULL, '0000-00-00', NULL, '(303) 439-8453', NULL, '', 0, NULL, NULL, 0),
(11, 'Aaron Anderson Construction', NULL, 'Chatsworth', 'CA', '91311', NULL, '0000-00-00', NULL, '(818) 618-3574', NULL, '', 0, NULL, NULL, 0),
(12, 'Allied Exteriors', NULL, 'Littleton', 'CO', '80122', NULL, '0000-00-00', NULL, '(720) 621-8772 (303)', NULL, '', 0, NULL, NULL, 0),
(13, 'Independent Field Service, LLC', NULL, 'Marcellus', 'NY', '13108', NULL, '0000-00-00', NULL, '(315) 481-4077', NULL, '', 0, NULL, NULL, 0),
(14, 'Aaron D Barstad Painting', NULL, 'Silverton', 'OR', '97381', NULL, '0000-00-00', NULL, '(503) 409-3705', NULL, '', 0, NULL, NULL, 0),
(15, 'Freestyle Finish', NULL, 'Fort Collins', 'CO', '80521', NULL, '0000-00-00', NULL, '(970) 214-8605', NULL, '', 0, NULL, NULL, 0),
(16, 'Booher Construction Company', NULL, 'Tolono', 'IL', '61880', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(17, 'Dr. Rooter, LLC', NULL, 'West Palm Beach', 'FL', '33407', NULL, '0000-00-00', NULL, '(561) 628-1953', NULL, '', 0, NULL, NULL, 0),
(18, 'H2O True, LLC', NULL, 'Midwest City', 'OK', '73110', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(19, 'G.P.W.A.', NULL, 'Flowery Branch', 'GA', '30542', NULL, '0000-00-00', NULL, '(770) 318-6197', NULL, '', 0, NULL, NULL, 0),
(20, 'Stone Lion Painting and Design, LLC', NULL, 'Terryville', 'CT', '6786', NULL, '0000-00-00', NULL, '(860) 518-0806', NULL, '', 0, NULL, NULL, 0),
(21, 'Happy Medium', NULL, 'Houston', 'TX', '77018', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(22, 'Expert Xteriors, LLC (formerly Pro Home Exteriors, LLC)', NULL, 'Wichita', 'KS', '67219', NULL, '0000-00-00', NULL, '(316) 821-9818', NULL, '', 0, NULL, NULL, 0),
(23, 'A Charnick Roofing', NULL, 'Levittown', 'PA', '19054', NULL, '0000-00-00', NULL, '(267) 566-9197', NULL, '', 0, NULL, NULL, 0),
(24, 'Homejoy', NULL, 'Mountain View', 'CA', '94043', NULL, '0000-00-00', NULL, '(415) 728-2057', NULL, '', 0, NULL, NULL, 0),
(25, 'Aaron Clark Electric, LLC', NULL, 'Washington', 'PA', '15301', NULL, '0000-00-00', NULL, '(412) 217-3050', NULL, '', 0, NULL, NULL, 0),
(26, 'Clopton\'s Land and Home Improvement, LLC', NULL, 'Lexington', 'TX', '78947', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(27, 'A. Deihl Plumbing', NULL, 'Santa Paula', 'CA', '93060', NULL, '0000-00-00', NULL, '(562) 415-4407', NULL, '', 0, NULL, NULL, 0),
(28, 'The Vac Dudes', NULL, 'Aliso Viejo', 'CA', '92656', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(29, 'Aaron Dorner\'s Outside Solutions, LLC', NULL, 'Medina', 'OH', '44258', NULL, '0000-00-00', NULL, '(330) 416-7937', NULL, '', 0, NULL, NULL, 0),
(30, 'TailorCraft Builders, Inc.', NULL, 'Severna Park', 'MD', '21146', NULL, '0000-00-00', NULL, '(443) 790-8185', NULL, '', 0, NULL, NULL, 0),
(31, 'AE Landscape Solutions', NULL, 'Shawnee', 'KS', '66218', NULL, '0000-00-00', NULL, '(913) 530-8503', NULL, '', 0, NULL, NULL, 0),
(32, 'AM Inspection Services, LLC', NULL, 'Pittsburg', 'PA', '15223', NULL, '0000-00-00', NULL, '(412) 508-5960', NULL, '', 0, NULL, NULL, 0),
(33, 'Gadco Lawn Care, LLC', NULL, 'Franklin', 'TN', '37064', NULL, '0000-00-00', NULL, '(615) 791-0573', NULL, '', 0, NULL, NULL, 0),
(34, 'Gannage Design', NULL, 'Lihue', 'HI', '96766', NULL, '0000-00-00', NULL, '(808) 212-3699', NULL, '', 0, NULL, NULL, 0),
(35, 'Town and Country Landscape Management, LLC', NULL, 'West End', 'NC', '27376', NULL, '0000-00-00', NULL, '(910) 673-5296', NULL, '', 0, NULL, NULL, 0),
(36, 'Colorpro Painters', NULL, 'Pasadena', 'TX', '77504', NULL, '0000-00-00', NULL, '(281) 851-6407', NULL, '', 0, NULL, NULL, 0),
(37, 'Majac Enterprises', NULL, 'Eudora', 'KS', '66025', NULL, '0000-00-00', NULL, '(816) 365-7073', NULL, '', 0, NULL, NULL, 0),
(38, 'The Hoff Group, LLC', NULL, 'Candler', 'NC', '28715', NULL, '0000-00-00', NULL, '(828) 423-2652', NULL, '', 0, NULL, NULL, 0),
(39, 'Howard III Industries, LLC', NULL, 'Juniper', 'FL', '32766', NULL, '0000-00-00', NULL, '(407) 405-5445', NULL, '', 0, NULL, NULL, 0),
(40, 'Dynamic Electric Services', NULL, 'Carrollton', 'TX', '75006', NULL, '0000-00-00', NULL, '(214) 404-9695', NULL, '', 0, NULL, NULL, 0),
(41, 'Kaczor CAD', NULL, 'Boelus', 'NE', '68820', NULL, '0000-00-00', NULL, '(308) 750-1646', NULL, '', 0, NULL, NULL, 0),
(42, 'Summit Restoration, Inc.', NULL, 'Omaha', 'NE', '68117', NULL, '0000-00-00', NULL, '(402) 578-5417', NULL, '', 0, NULL, NULL, 0),
(43, 'Grapids Irrigation', NULL, 'Grand Rapids', 'MI', '49503', NULL, '0000-00-00', NULL, '(616) 235-6666', NULL, '', 0, NULL, NULL, 0),
(44, 'Aaron Kensinger', NULL, 'East Rochester', 'OH', '44625', NULL, '0000-00-00', NULL, '(330) 206-2221', NULL, '', 0, NULL, NULL, 0),
(45, 'Blue Ox Tree Service, Inc.', NULL, 'Milford', 'OH', '45150', NULL, '0000-00-00', NULL, '(513) 831-8733 (513)', NULL, '', 0, NULL, NULL, 0),
(46, 'RPM Contracting', NULL, 'Clayton', 'OH', '45315', NULL, '0000-00-00', NULL, '(937) 608-0318', NULL, '', 0, NULL, NULL, 0),
(47, 'Top Quality Overhead Door', NULL, 'Bluejacket', 'OK', '74333', NULL, '0000-00-00', NULL, '(918) 541-0355', NULL, '', 0, NULL, NULL, 0),
(48, 'On Time Communications, Inc.', NULL, 'Highland Park', 'NJ', '8904', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(49, 'IHI, Inc.', NULL, 'Collinsville', 'IL', '62234', NULL, '0000-00-00', NULL, '(618) 606-1451 (314)', NULL, '', 0, NULL, NULL, 0),
(50, 'AK Timber Services, LLC', NULL, 'Portland', 'OR', '97219', NULL, '0000-00-00', NULL, '(971) 404-7624', NULL, '', 0, NULL, NULL, 0),
(51, 'Aaron\'s Pool Care', NULL, 'Salina', 'KS', '67401', NULL, '0000-00-00', NULL, '(785) 643-1101', NULL, '', 0, NULL, NULL, 0),
(52, 'Lemons Cabinets', NULL, 'Fort Worth', 'TX', '76140', NULL, '0000-00-00', NULL, '(817) 293-3795', NULL, '', 0, NULL, NULL, 0),
(53, 'Closets for Less of Bucks', NULL, 'Holland', 'PA', '18966', NULL, '0000-00-00', NULL, '(215) 504-5898 (215)', NULL, '', 0, NULL, NULL, 0),
(54, 'Amen Hauling', NULL, 'Cedar Falls', 'IA', '50613', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(55, 'Mays Flooring & Insulation', NULL, 'Mount Vernon', 'IL', '62864', NULL, '0000-00-00', NULL, '(618) 214-0217', NULL, '', 0, NULL, NULL, 0),
(56, 'GP Contracting', NULL, 'Fort Collins', 'CO', '80526', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(57, 'Bath Fitter of Colorado', NULL, 'Englewood', 'CO', '80110', NULL, '0000-00-00', NULL, '(303) 788-0200', NULL, '', 0, NULL, NULL, 0),
(58, 'American Plumbing Professionals', NULL, 'Nashville', 'TN', '37211', NULL, '0000-00-00', NULL, '(423) 855-1200', NULL, '', 0, NULL, NULL, 0),
(59, 'A M Construction, Inc.', NULL, 'China Grove', 'NC', '28023', NULL, '0000-00-00', NULL, '(704) 791-8976', NULL, '', 0, NULL, NULL, 0),
(60, 'Montagna Wood Flooring', NULL, 'Wells Main', 'ME', '4090', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(61, 'Aaron Moore Construction', NULL, 'Harrison', 'AR', '72601', NULL, '0000-00-00', NULL, '(870) 688-0676', NULL, '', 0, NULL, NULL, 0),
(62, 'Home Helpers-Direct Link', NULL, 'Burlington', 'WI', '53105', NULL, '0000-00-00', NULL, '(262) 757-0012', NULL, '', 0, NULL, NULL, 0),
(63, 'Rain Pro\'s', NULL, 'Federal Way', 'WA', '98023', NULL, '0000-00-00', NULL, '(253) 678-7111', NULL, '', 0, NULL, NULL, 0),
(64, 'Sentry Roofing, Inc.', NULL, 'Covington', 'IN', '47932', NULL, '0000-00-00', NULL, '(217) 446-2133', NULL, '', 0, NULL, NULL, 0),
(65, 'Paape Brothers Carpentry, Inc.', NULL, 'Crete', 'IL', '60417', NULL, '0000-00-00', NULL, '(708) 878-8737', NULL, '', 0, NULL, NULL, 0),
(66, 'AP Builders', NULL, 'Shokan', 'NY', '12481', NULL, '0000-00-00', NULL, '(845) 657-7019', NULL, '', 0, NULL, NULL, 0),
(67, 'ProSource of Kansas City West', NULL, 'Merriam', 'KS', '66203', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(68, 'Green Care Direct', NULL, 'Vestavia Hills', 'AL', '35266', NULL, '0000-00-00', NULL, '(205) 500-1478', NULL, '', 0, NULL, NULL, 0),
(69, 'Hydrodynamics, Inc.', NULL, 'Hazleton', 'PA', '18201', NULL, '0000-00-00', NULL, '(800) 813-1373', NULL, '', 0, NULL, NULL, 0),
(70, 'The Pump Works, Inc.', NULL, 'Marshalls Creek', 'PA', '18335', NULL, '0000-00-00', NULL, '(888) 675-2776 (570)', NULL, '', 0, NULL, NULL, 0),
(71, 'Appalachian Home Inspections', NULL, 'Dungannon', 'VA', '24245', NULL, '0000-00-00', NULL, '(423) 571-0566', NULL, '', 0, NULL, NULL, 0),
(72, 'Get R Done Painting', NULL, 'Post Falls', 'ID', '83854', NULL, '0000-00-00', NULL, '(208) 704-4276', NULL, '', 0, NULL, NULL, 0),
(73, 'ACR Construction, LLC', NULL, 'Millsboro', 'DE', '19966', NULL, '0000-00-00', NULL, '(302) 296-7631', NULL, '', 0, NULL, NULL, 0),
(74, 'Aaron\'s Land Care', NULL, 'Clinton', 'WI', '53525', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(75, 'Grizzly Flooring', NULL, 'Meridian', 'ID', '83646', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(76, 'True Tech Home Services', NULL, 'Midwest', 'OK', '73110', NULL, '0000-00-00', NULL, '(405) 455-5555', NULL, '', 0, NULL, NULL, 0),
(77, 'T Rock Commercial', NULL, 'Flower Mound', 'TX', '76226', NULL, '0000-00-00', NULL, '(214) 244-3619 (214)', NULL, '', 0, NULL, NULL, 0),
(78, 'Excel Electric, LLC', NULL, 'Mechanicsville', 'VA', '23116', NULL, '0000-00-00', NULL, '(804) 503-8777', NULL, '', 0, NULL, NULL, 0),
(79, 'Soco Roofing, Inc.', NULL, 'Silvis', 'IL', '61282', NULL, '0000-00-00', NULL, '(309) 292-5252', NULL, '', 0, NULL, NULL, 0),
(80, 'Digital Wire, LLC', NULL, 'Baton Rouge', 'LA', '70808', NULL, '0000-00-00', NULL, '(225) 302-2306', NULL, '', 0, NULL, NULL, 0),
(81, 'Aaron\'s Plumbing', NULL, 'Assaria', 'KS', '67416', NULL, '0000-00-00', NULL, '(785) 493-5604', NULL, '', 0, NULL, NULL, 0),
(82, 'Smart Pest Solutions, LLC', NULL, 'Carlisle', 'IA', '50047', NULL, '0000-00-00', NULL, '(515) 251-2998 (515)', NULL, '', 0, NULL, NULL, 0),
(83, 'Duluth Coating Solutions, Inc.', NULL, 'Duluth', 'MN', '55811', NULL, '0000-00-00', NULL, '(218) 729-4585 (218)', NULL, '', 0, NULL, NULL, 0),
(84, 'A. W. Toppin Electrical Service, LLC', NULL, 'Shelton', 'CT', '6484', NULL, '0000-00-00', NULL, '(203) 610-2000', NULL, '', 0, NULL, NULL, 0),
(85, 'Pro Platinum, LLC', NULL, 'Kansas City', 'MO', '64114', NULL, '0000-00-00', NULL, '(913) 908-3512', NULL, '', 0, NULL, NULL, 0),
(86, 'EnerSol, LLC', NULL, 'Holland', 'OH', '43528', NULL, '0000-00-00', NULL, '(419) 367-8387', NULL, '', 0, NULL, NULL, 0),
(87, 'Midway Contracting Group, LLC', NULL, 'Tinley Park', 'IL', '60477', NULL, '0000-00-00', NULL, '(708) 342-1200', NULL, '', 0, NULL, NULL, 0),
(88, 'Eco-Land Services', NULL, 'Vancouver', 'WA', '98685', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(89, 'Diamond Cut Landscaping', NULL, 'Warren', 'NJ', '7059', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(90, 'A R M Builders, Inc.', NULL, 'Los Angeles', 'CA', '90038', NULL, '0000-00-00', NULL, '(818) 445-8678', NULL, '', 0, NULL, NULL, 0),
(91, 'Cousins Lawn Maintenance, LLC', NULL, 'Stewartsville', 'NJ', '8886', NULL, '0000-00-00', NULL, '(908) 268-3802', NULL, '', 0, NULL, NULL, 0),
(92, 'Yatt Construction, LLC', NULL, 'Springfield', 'VA', '22310', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(93, 'Affordable Cleaners, LLC', NULL, 'Atlantic City', 'NJ', '8401', NULL, '0000-00-00', NULL, '(609) 214-1091', NULL, '', 0, NULL, NULL, 0),
(94, 'Liberty 1 Flooring, Inc.', NULL, 'Harrisburg', 'PA', '17110', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(95, 'Chehade Construction', NULL, 'Huntington Beach', 'CA', '92649', NULL, '0000-00-00', NULL, '(714) 658-3057', NULL, '', 0, NULL, NULL, 0),
(96, 'Chehade Construction', NULL, 'Huntington Beach', 'CA', '92649', NULL, '0000-00-00', NULL, '(714) 913-5112', NULL, '', 0, NULL, NULL, 0),
(97, 'Bob\'s Carpentery', NULL, 'Sacramento', 'CA', '95835', NULL, '0000-00-00', NULL, '(510) 881-3588', NULL, '', 0, NULL, NULL, 0),
(98, 'Midatlantic Handyman Services', NULL, 'Meherrin', 'VA', '23954', NULL, '0000-00-00', NULL, '(434) 664-7276', NULL, '', 0, NULL, NULL, 0),
(99, 'America\'s Star', NULL, 'Maplewood', 'NJ', '7040', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(100, 'Abe Brander', NULL, 'Lakewood', 'NJ', '8701', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(101, 'Alef Electrical Contracting, Inc.', NULL, 'New York', 'NY', '10018', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(102, 'Home Inspection Services, LLC', NULL, 'New City', 'NY', '10956', NULL, '0000-00-00', NULL, '(845) 821-4063', NULL, '', 0, NULL, NULL, 0),
(103, 'Sunset Fence, Inc.', NULL, 'Jacksonville', 'FL', '32226', NULL, '0000-00-00', NULL, '(904) 696-1234 (904)', NULL, '', 0, NULL, NULL, 0),
(104, 'The Radon Specialist', NULL, 'Kernersville', 'NC', '27284', NULL, '0000-00-00', NULL, '(336) 416-2117', NULL, '', 0, NULL, NULL, 0),
(105, 'So Cal Drywall Services', NULL, 'Chino', 'CA', '91708', NULL, '0000-00-00', NULL, '(909) 770-4979', NULL, '', 0, NULL, NULL, 0),
(106, 'Your Choice Landscape', NULL, 'Garland', 'TX', '75041', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(107, 'All-American Overhead Construction', NULL, 'Salinas', 'CA', '93907', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(108, 'Artisan Window Cleaning', NULL, 'Austin', 'TX', '78716', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(109, 'EKM Clean Service Enterprises', NULL, 'Dalton', 'MA', '1226', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(110, 'A G Electric', NULL, 'San Antonio', 'TX', '78254', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(111, 'Art Of Interiors', NULL, 'Houston', 'TX', '77030', NULL, '0000-00-00', NULL, '(281) 748-5730', NULL, '', 0, NULL, NULL, 0),
(112, 'Advance Fence, Inc.', NULL, 'Round Lake', 'IL', '60073', NULL, '0000-00-00', NULL, '(224) 772-4631', NULL, '', 0, NULL, NULL, 0),
(113, 'Home Work Plus', NULL, 'Pflugerville', 'TX', '78660', NULL, '0000-00-00', NULL, '(512) 552-4978', NULL, '', 0, NULL, NULL, 0),
(114, 'HRP Group, Inc.', NULL, 'Elizabeth', 'NJ', '7208', NULL, '0000-00-00', NULL, '(908) 347-0486', NULL, '', 0, NULL, NULL, 0),
(115, 'Home Helpers of San Antonio', NULL, 'San Antonio', 'TX', '78251', NULL, '0000-00-00', NULL, '(210) 627-7018', NULL, '', 0, NULL, NULL, 0),
(116, 'Krypton Properties, LLC', NULL, 'Milford', 'NH', '3055', NULL, '0000-00-00', NULL, '(603) 921-1713', NULL, '', 0, NULL, NULL, 0),
(117, 'Leites Group', NULL, 'New York', 'NY', '11772', NULL, '0000-00-00', NULL, '(631) 438-0095', NULL, '', 0, NULL, NULL, 0),
(118, 'Royal Electric and Services, LLC', NULL, 'Royal Palm Beach', 'FL', '33411', NULL, '0000-00-00', NULL, '(561) 578-2210', NULL, '', 0, NULL, NULL, 0),
(119, 'R.B. Electric', NULL, 'Moreno Valley', 'CA', '92551', NULL, '0000-00-00', NULL, '(909) 465-3177', NULL, '', 0, NULL, NULL, 0),
(120, 'Net-Lion Communications', NULL, 'Newville', 'PA', '17241', NULL, '0000-00-00', NULL, '(717) 386-2725', NULL, '', 0, NULL, NULL, 0),
(121, 'Glass Market Services', NULL, 'San Diego', 'CA', '92139', NULL, '0000-00-00', NULL, '(619) 463-4527', NULL, '', 0, NULL, NULL, 0),
(122, 'Metro Art and Design Granite and Marble', NULL, 'Springdale', 'AR', '72764', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(123, 'Abraham D Smith', NULL, 'Boston', 'MA', '2360', NULL, '0000-00-00', NULL, '(508) 726-2504', NULL, '', 0, NULL, NULL, 0),
(124, 'Root-X', NULL, 'Justice', 'IL', '60458', NULL, '0000-00-00', NULL, '(630) 240-3049', NULL, '', 0, NULL, NULL, 0),
(125, 'Valencia Concrete Construction', NULL, 'Moreno Valley', 'CA', '92553', NULL, '0000-00-00', NULL, '(951) 488-7253 (951)', NULL, '', 0, NULL, NULL, 0),
(126, 'Abe\'s Furniture Repair', NULL, 'Auburndale', 'MA', '2466', NULL, '0000-00-00', NULL, '(617) 641-2951', NULL, '', 0, NULL, NULL, 0),
(127, 'Ace Lawn Care, LLC', NULL, 'Casper', 'WY', '82609', NULL, '0000-00-00', NULL, '(307) 577-5205', NULL, '', 0, NULL, NULL, 0),
(128, 'Acy Buckland', NULL, 'Newark', 'NY', '14513', NULL, '0000-00-00', NULL, '(585) 455-8724', NULL, '', 0, NULL, NULL, 0),
(129, 'Earthly Cleaning Solutions, Inc.', NULL, 'Rutherford', 'NJ', '7070', NULL, '0000-00-00', NULL, '(201) 968-7610 (201)', NULL, '', 0, NULL, NULL, 0),
(130, 'All In All Services, LLC', NULL, 'Glendale', 'AZ', '85302', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(131, 'AV Builders Group, Inc.', NULL, 'Salinas', 'CA', '93906', NULL, '0000-00-00', NULL, '(831) 596-8788', NULL, '', 0, NULL, NULL, 0),
(132, '1st Communications', NULL, 'Chippewa Falls', 'WI', '54729', NULL, '0000-00-00', NULL, '(715) 828-6287', NULL, '', 0, NULL, NULL, 0),
(133, 'Baker Electric, LLC', NULL, 'Kettering', 'OH', '45429', NULL, '0000-00-00', NULL, '(937) 299-5349', NULL, '', 0, NULL, NULL, 0),
(134, 'A B Decorating, Inc.', NULL, 'Downers Grove', 'IL', '60515', NULL, '0000-00-00', NULL, '(630) 918-2083', NULL, '', 0, NULL, NULL, 0),
(135, 'FAB Industries, LLC', NULL, 'Lakewood', 'CO', '80214', NULL, '0000-00-00', NULL, '(303) 232-3400', NULL, '', 0, NULL, NULL, 0),
(136, 'Eco Irrigation', NULL, 'Leander', 'TX', '78646', NULL, '0000-00-00', NULL, '(512) 778-9919', NULL, '', 0, NULL, NULL, 0),
(137, 'A.C. Bentley Concrete', NULL, 'Watsonville', 'CA', '95076', NULL, '0000-00-00', NULL, '(831) 419-0368', NULL, '', 0, NULL, NULL, 0),
(138, 'Curb Magic', NULL, 'Rochester', 'NY', '14625', NULL, '0000-00-00', NULL, '(585) 244-2000', NULL, '', 0, NULL, NULL, 0),
(139, 'Analytic Energy LLC', NULL, 'East Northport', 'NY', '11731', NULL, '0000-00-00', NULL, '(631) 964-2800', NULL, '', 0, NULL, NULL, 0),
(140, 'Rock Solid Home Inspections', NULL, 'Niota', 'TN', '37826', NULL, '0000-00-00', NULL, '(423) 745-5765', NULL, '', 0, NULL, NULL, 0),
(141, 'Bowling Built Construction', NULL, 'Canton', 'GA', '30115', NULL, '0000-00-00', NULL, '(770) 652-3155', NULL, '', 0, NULL, NULL, 0),
(142, 'Bremer Electric', NULL, 'Burnsville', 'MN', '55337', NULL, '0000-00-00', NULL, '(612) 532-8818', NULL, '', 0, NULL, NULL, 0),
(143, 'Bristow Drywall', NULL, 'Algona', 'IA', '50511', NULL, '0000-00-00', NULL, '(515) 320-0701', NULL, '', 0, NULL, NULL, 0),
(144, 'Hanson Overhead Garage Door Service, Inc.', NULL, 'Santa Rosa', 'CA', '95405', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(145, 'Adam Clark Construction, LLC', NULL, 'Tyron', 'PA', '16686', NULL, '0000-00-00', NULL, '(814) 404-7129', NULL, '', 0, NULL, NULL, 0),
(146, 'Northern Energy Solutions', NULL, 'Burlington', 'VT', '5401', NULL, '0000-00-00', NULL, '(802) 522-3977', NULL, '', 0, NULL, NULL, 0),
(147, 'AC Pressure Washing', NULL, 'Schenectady', 'NY', '12309', NULL, '0000-00-00', NULL, '(518) 322-8983', NULL, '', 0, NULL, NULL, 0),
(148, 'Connolly Custom Concrete', NULL, 'North Pole', 'AK', '99705', NULL, '0000-00-00', NULL, '(480) 298-9791', NULL, '', 0, NULL, NULL, 0),
(149, 'Fortress Home Improvements, LLC', NULL, 'Murray', 'UT', '84107', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(150, 'Coupe\'s Cuts, Inc.', NULL, 'Carmel', 'NY', '10512', NULL, '0000-00-00', NULL, '(845) 224-5556', NULL, '', 0, NULL, NULL, 0),
(151, 'Accessible Home Health Care of Palm Beach', NULL, 'Boynton Beach', 'FL', '33426', NULL, '0000-00-00', NULL, '(561) 364-2880', NULL, '', 0, NULL, NULL, 0),
(152, 'Pinnacle Properties of Wisconsin, LLC', NULL, 'Appleton', 'WI', '54911', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(153, 'Relic Property Solutions, LLC', NULL, 'Owensville', 'IN', '47665', NULL, '0000-00-00', NULL, '(812) 724-2272', NULL, '', 0, NULL, NULL, 0),
(154, 'ASAP Services 24/7', NULL, 'Walled Lake', 'MI', '48390', NULL, '0000-00-00', NULL, '(248) 697-7771', NULL, '', 0, NULL, NULL, 0),
(155, 'AD Construction Services, LLC', NULL, 'Leewood', 'KS', '66206', NULL, '0000-00-00', NULL, '(913) 952-3415', NULL, '', 0, NULL, NULL, 0),
(156, 'AY Duncan Custom Furniture', NULL, 'Montrose', 'CO', '81403', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(157, 'Belmont Builders, Inc.', NULL, 'River Grove', 'IL', '60171', NULL, '0000-00-00', NULL, '(773) 858-7976', NULL, '', 0, NULL, NULL, 0),
(158, 'Premium Screens', NULL, 'Simi Valley', 'CA', '93063', NULL, '0000-00-00', NULL, '(805) 558-1189', NULL, '', 0, NULL, NULL, 0),
(159, 'Select Sealcoating and Paving', NULL, 'West Bloomfield', 'MI', '48324', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(160, 'A2 Tile', NULL, 'Whitmore Lake', 'MI', '48189', NULL, '0000-00-00', NULL, '(734) 218-3310', NULL, '', 0, NULL, NULL, 0),
(161, 'Surface Savers', NULL, 'Boca Raton', 'FL', '33433', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(162, 'Adam Flynn\'s Electric', NULL, 'Walnut Creek', 'CA', '94597', NULL, '0000-00-00', NULL, '(925) 947-6073 (925)', NULL, '', 0, NULL, NULL, 0),
(163, 'Adam\'s Pool Service', NULL, 'Las Vegas', 'NV', '89131', NULL, '0000-00-00', NULL, '(702) 306-8694', NULL, '', 0, NULL, NULL, 0),
(164, 'Forest Floors of Holland, Inc.', NULL, 'Holland', 'MI', '49423', NULL, '0000-00-00', NULL, '(616) 836-3578', NULL, '', 0, NULL, NULL, 0),
(165, 'Adam\'s Innovations', NULL, 'Overland Park', 'KS', '66207', NULL, '0000-00-00', NULL, '(913) 912-9145', NULL, '', 0, NULL, NULL, 0),
(166, 'Frazier Design', NULL, 'Fayetteville', 'NC', '28311', NULL, '0000-00-00', NULL, '(910) 488-9321', NULL, '', 0, NULL, NULL, 0),
(167, '911 Cleaning Service', NULL, 'Middletown', 'NY', '10941', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(168, 'Silverprodjs', NULL, 'Brooklyn', 'NY', '11231', NULL, '0000-00-00', NULL, '(347) 938-6146', NULL, '', 0, NULL, NULL, 0),
(169, 'Adam Painting & Home Improvement, Inc.', NULL, 'Harrison', 'NY', '10528', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(170, 'NW Creative Resurfacing, LLC', NULL, 'Vancouver', 'WA', '98683', NULL, '0000-00-00', NULL, '(360) 608-9291', NULL, '', 0, NULL, NULL, 0),
(171, 'Premier Custom Baths', NULL, 'Saint Marys', 'KS', '66536', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(172, 'Adam Electric, LLC', NULL, 'South Windsor', 'CT', '6074', NULL, '0000-00-00', NULL, '(860) 608-2135 (860)', NULL, '', 0, NULL, NULL, 0),
(173, 'Adam Hill', NULL, 'Butler', 'MO', '64730', NULL, '0000-00-00', NULL, '(816) 803-2061', NULL, '', 0, NULL, NULL, 0),
(174, 'AMH Electric', NULL, 'Ingleside', 'IL', '60041', NULL, '0000-00-00', NULL, '(847) 815-6872', NULL, '', 0, NULL, NULL, 0),
(175, 'HMC Builders, LLC', NULL, 'Clemson', 'SC', '29633', NULL, '0000-00-00', NULL, '(864) 303-4402', NULL, '', 0, NULL, NULL, 0),
(176, 'Empire Inspections and Appraisals', NULL, 'Harriman', 'NY', '10926', NULL, '0000-00-00', NULL, '(914) 714-8929', NULL, '', 0, NULL, NULL, 0),
(177, 'HALO Senior Care, LLC', NULL, 'Austin', 'TX', '78741', NULL, '0000-00-00', NULL, '(512) 212-7212', NULL, '', 0, NULL, NULL, 0),
(178, 'Southern Touch Custom Detail', NULL, 'Austin', 'TX', '78717', NULL, '0000-00-00', NULL, '(512) 590-5119', NULL, '', 0, NULL, NULL, 0),
(179, 'AP Kennedy Electrical Services', NULL, 'Lake Cormorant', 'MS', '38641', NULL, '0000-00-00', NULL, '(901) 282-8401', NULL, '', 0, NULL, NULL, 0),
(180, 'K.E.P. Construction, Inc.', NULL, 'Quincy', 'MA', '2116', NULL, '0000-00-00', NULL, '(857) 204-7600', NULL, '', 0, NULL, NULL, 0),
(181, 'Kershaw Landscape', NULL, 'Derry', 'NH', '3038', NULL, '0000-00-00', NULL, '(603) 434-5958', NULL, '', 0, NULL, NULL, 0),
(182, 'Action 1 Construction, Inc.', NULL, 'Mt. Prospect', 'IL', '60605', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(183, 'CornerStone Construction and Remodeling, LLC', NULL, 'Cologne', 'MN', '55322', NULL, '0000-00-00', NULL, '(952) 292-9824', NULL, '', 0, NULL, NULL, 0),
(184, 'Mowinators', NULL, 'Kingsford Heights', 'IN', '46346', NULL, '0000-00-00', NULL, '(219) 369-7438', NULL, '', 0, NULL, NULL, 0),
(185, 'Kus Construction, Inc.', NULL, 'Chicago', 'IL', '60601', NULL, '0000-00-00', NULL, '(773) 344-0047', NULL, '', 0, NULL, NULL, 0),
(186, 'Littlefield Construction', NULL, 'Hull', 'MA', '2045', NULL, '0000-00-00', NULL, '(781) 248-2388', NULL, '', 0, NULL, NULL, 0),
(187, 'Absolute Plumbing & Heating, Inc.', NULL, 'Philadelphia', 'PA', '19149', NULL, '0000-00-00', NULL, '(215) 331-9800 (215)', NULL, '', 0, NULL, NULL, 0),
(188, 'Lola\'s Landscape', NULL, 'Franklin', 'MA', '2038', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(189, 'Long\'s Landscaping', NULL, 'Spring Hope', 'NC', '27882', NULL, '0000-00-00', NULL, '(919) 665-9512', NULL, '', 0, NULL, NULL, 0),
(190, 'The Stage Coach', NULL, 'Dunbar', 'PA', '15431', NULL, '0000-00-00', NULL, '(724) 322-4399 (724)', NULL, '', 0, NULL, NULL, 0),
(191, 'AMAC Electrical Service, LLC', NULL, 'Green Lane', 'PA', '18054', NULL, '0000-00-00', NULL, '(215) 429-7334', NULL, '', 0, NULL, NULL, 0),
(192, 'Mance Outdoor Solutions', NULL, 'Granite City', 'IL', '62040', NULL, '0000-00-00', NULL, '(618) 407-0204', NULL, '', 0, NULL, NULL, 0),
(193, 'Diamond Scape, LLC', NULL, 'Morrisville', 'PA', '19067', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(194, 'Champion Window Cleaners', NULL, 'Anderson', 'SC', '29621', NULL, '0000-00-00', NULL, '(704) 222-5710 (704)', NULL, '', 0, NULL, NULL, 0),
(195, 'PREVENT Home Care Services', NULL, 'Clinton', 'TN', '37716', NULL, '0000-00-00', NULL, '(865) 399-0002', NULL, '', 0, NULL, NULL, 0),
(196, 'Meihls Water Solutions', NULL, 'Sterling', 'MI', '48659', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(197, 'Mixon Landscape Solutions, LLC', NULL, 'Baton Rouge', 'LA', '70810', NULL, '0000-00-00', NULL, '(225) 278-6908', NULL, '', 0, NULL, NULL, 0),
(198, 'Brown Dog Landscaping, LLC', NULL, 'Knightdale', 'NC', '27545', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(199, 'Heavens Best Carpet Cleaning of Simi Valley', NULL, 'Simi Valley', 'CA', '93065', NULL, '0000-00-00', NULL, '(805) 428-4768', NULL, '', 0, NULL, NULL, 0),
(200, 'Tom Berry\'s Lawn Service', NULL, 'Henderson', 'NV', '89052', NULL, '0000-00-00', NULL, '(702) 260-7095', NULL, '', 0, NULL, NULL, 0),
(201, 'CabinCare', NULL, 'Cumberland', 'WI', '54829', NULL, '0000-00-00', NULL, '(612) 735-9455', NULL, '', 0, NULL, NULL, 0),
(202, 'AMO, Inc.', NULL, 'Traverse City', 'MI', '49686', NULL, '0000-00-00', NULL, '(231) 932-7379 (231)', NULL, '', 0, NULL, NULL, 0),
(203, 'Adam\'s House Painting Plus', NULL, 'San Antonio', 'TX', '78227', NULL, '0000-00-00', NULL, '(210) 639-8865', NULL, '', 0, NULL, NULL, 0),
(204, 'Osmer Woodworking, Inc.', NULL, 'Dixon', 'IL', '61021', NULL, '0000-00-00', NULL, '(815) 973-5809', NULL, '', 0, NULL, NULL, 0),
(205, 'Roof-to-Deck (Milwaukee)', NULL, 'Brookfield', 'WI', '53045', NULL, '0000-00-00', NULL, '(262) 754-1170', NULL, '', 0, NULL, NULL, 0),
(206, 'Positively Clean, LP', NULL, 'Denton', 'TX', '76210', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(207, 'Luminarias Limited, LLC', NULL, 'Albuquerque', 'NM', '87111', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(208, 'Peltier Design', NULL, 'Seattle', 'WA', '98103', NULL, '0000-00-00', NULL, '(206) 708-4748', NULL, '', 0, NULL, NULL, 0),
(209, 'Blademasters Landscape Managment, Inc.', NULL, 'Moorestown', 'NJ', '8057', NULL, '0000-00-00', NULL, '(856) 235-2928 (609)', NULL, '', 0, NULL, NULL, 0),
(210, 'All Pro Window Cleaning', NULL, 'Lincoln', 'CA', '95648', NULL, '0000-00-00', NULL, '(916) 765-5623', NULL, '', 0, NULL, NULL, 0),
(211, 'UrbanBuilt RVA, LLC', NULL, 'Richmond', 'VA', '23260', NULL, '0000-00-00', NULL, '(804) 432-7995', NULL, '', 0, NULL, NULL, 0),
(212, 'A.P.Q. Electric Company, Inc.', NULL, 'Denver', 'CO', '80212', NULL, '0000-00-00', NULL, '(720) 732-2244', NULL, '', 0, NULL, NULL, 0),
(213, 'Riverview Plumbing LLC', NULL, 'Riverview', 'FL', '33579', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(214, 'A.R. Woodworking, Inc.', NULL, 'Glendale', 'NY', '11385', NULL, '0000-00-00', NULL, '(917) 335-0622', NULL, '', 0, NULL, NULL, 0),
(215, 'Vista Window Cleaning', NULL, 'Minocqua', 'WI', '54548', NULL, '0000-00-00', NULL, '(715) 892-3163', NULL, '', 0, NULL, NULL, 0),
(216, 'Advanced Rooter Plumbing, LLC', NULL, 'Westport', 'CT', '6880', NULL, '0000-00-00', NULL, '(203) 571-7828 (914)', NULL, '', 0, NULL, NULL, 0),
(217, 'Grade A Plumbing', NULL, 'Hatboro', 'PA', '19040', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(218, 'Adam Ricany Electrical Contractor, LLC', NULL, 'Brick', 'NJ', '8723', NULL, '0000-00-00', NULL, '(732) 773-5714', NULL, '', 0, NULL, NULL, 0),
(219, 'Harmony Care', NULL, 'Sanford', 'FL', '32773', NULL, '0000-00-00', NULL, '(941) 840-1491', NULL, '', 0, NULL, NULL, 0),
(220, 'Adam\'s Quality Flooring', NULL, 'Benicia', 'CA', '94510', NULL, '0000-00-00', NULL, '(707) 333-8177', NULL, '', 0, NULL, NULL, 0),
(221, '4 Seasons Heating and Cooling', NULL, 'Milledgeville', 'GA', '31061', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(222, 'Missouri Holiday Decor', NULL, 'Barnhart', 'MO', '63012', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(223, 'Premier Construction Services, LLC', NULL, 'West Des Moines', 'IA', '50266', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(224, 'Yardscape, Inc.', NULL, 'Middletown', 'DE', '19709', NULL, '0000-00-00', NULL, '(302) 540-0311', NULL, '', 0, NULL, NULL, 0),
(225, 'Century Shower Door Co., Inc.', NULL, 'Torrance', 'CA', '90502', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(226, 'Century Shower Door', NULL, 'Torrance', 'CA', '90502', NULL, '0000-00-00', NULL, '(800) 824-9350', NULL, '', 0, NULL, NULL, 0),
(227, 'Adam\'s Door Service', NULL, 'Creston', 'OH', '44217', NULL, '0000-00-00', NULL, '(440) 622-3507', NULL, '', 0, NULL, NULL, 0),
(228, 'A Spear Hardwood Flooring', NULL, 'Southhadley', 'MA', '1075', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(229, 'A Clean Start, LLC', NULL, 'Fort Collins', 'CO', '80525', NULL, '0000-00-00', NULL, '(970) 310-3056', NULL, '', 0, NULL, NULL, 0),
(230, 'Central Air Solutions, LLC', NULL, 'Haverhill', 'MA', '1832', NULL, '0000-00-00', NULL, '(978) 360-4434', NULL, '', 0, NULL, NULL, 0),
(231, 'Glorious Earth Landscapes', NULL, 'Santa Fe', 'NM', '87501', NULL, '0000-00-00', NULL, '(505) 989-1388', NULL, '', 0, NULL, NULL, 0),
(232, 'AS/AC, LLC', NULL, 'Metairie', 'LA', '70003', NULL, '0000-00-00', NULL, '(504) 920-2722', NULL, '', 0, NULL, NULL, 0),
(233, 'Artisan Masonry, LLC', NULL, 'Kingston', 'NH', '3848', NULL, '0000-00-00', NULL, '(603) 642-8200', NULL, '', 0, NULL, NULL, 0),
(234, 'Stineman\'s Floor Covering', NULL, 'Longview', 'TX', '75604', NULL, '0000-00-00', NULL, '(903) 576-1599', NULL, '', 0, NULL, NULL, 0),
(235, 'Making It Rain', NULL, 'Cary', 'NC', '27513', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(236, 'A. Sutton General Contractor, LLC', NULL, 'Pennsville', 'NJ', '8070', NULL, '0000-00-00', NULL, '(609) 202-0022', NULL, '', 0, NULL, NULL, 0),
(237, 'Spectrum Welding and Fabrication', NULL, 'Bergenes', 'VT', '5491', NULL, '0000-00-00', NULL, '(802) 349-5017', NULL, '', 0, NULL, NULL, 0),
(238, 'MMR Contractors, LLC', NULL, 'Harwood', 'MD', '20776', NULL, '0000-00-00', NULL, '(301) 873-4914', NULL, '', 0, NULL, NULL, 0),
(239, 'Sandless Finish, LLC', NULL, 'New York', 'NY', '10075', NULL, '0000-00-00', NULL, '(888) 901-7445', NULL, '', 0, NULL, NULL, 0),
(240, 'Adam Vincik', NULL, 'Butler', 'PA', '16002', NULL, '0000-00-00', NULL, '(724) 272-9105', NULL, '', 0, NULL, NULL, 0),
(241, 'Old Dominion Hardwood Co.', NULL, 'Hardy', 'VA', '24101', NULL, '0000-00-00', NULL, '(540) 206-9988', NULL, '', 0, NULL, NULL, 0),
(242, 'Walker Energy Services', NULL, 'Alberquerque', 'NM', '87123', NULL, '0000-00-00', NULL, '(505) 385-8838', NULL, '', 0, NULL, NULL, 0),
(243, 'Investor\'s NW, LLC', NULL, 'Mount Vernon', 'WA', '98274', NULL, '0000-00-00', NULL, '(360) 333-7577', NULL, '', 0, NULL, NULL, 0),
(244, 'South Metro Custom Remodeling, Inc.', NULL, 'Shakopee', 'MN', '55379', NULL, '0000-00-00', NULL, '(612) 916-6916', NULL, '', 0, NULL, NULL, 0),
(245, 'Air Express, LLC', NULL, 'Tampa', 'FL', '33613', NULL, '0000-00-00', NULL, '(813) 992-5516', NULL, '', 0, NULL, NULL, 0),
(246, 'Mr. Tint of New England', NULL, 'West Springfield', 'MA', '1106', NULL, '0000-00-00', NULL, '(413) 737-6000 (413)', NULL, '', 0, NULL, NULL, 0),
(247, 'Smart Home Comfort, LLC', NULL, 'Adamstown', 'PA', '19501', NULL, '0000-00-00', NULL, '(717) 682-6886', NULL, '', 0, NULL, NULL, 0),
(248, 'Adam Wilbanks Construction', NULL, 'Danville', 'CA', '94526', NULL, '0000-00-00', NULL, '(925) 785-9061', NULL, '', 0, NULL, NULL, 0),
(249, 'Willwood Builders, Corporation', NULL, 'Seaside Park', 'NJ', '8752', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(250, 'Adam Wolfe', NULL, 'Jacksonville', 'FL', '32244', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(251, 'Adamm\'s Stained Glass', NULL, 'Santa Monica', 'CA', '90401', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(252, 'A Alvarado Electric', NULL, 'Kennewick', 'WA', '99336', NULL, '0000-00-00', NULL, '(509) 438-0400', NULL, '', 0, NULL, NULL, 0),
(253, 'Orellana\'s Painting and Cleaning Two, Inc.', NULL, 'Provo', 'UT', '84601', NULL, '0000-00-00', NULL, '(801) 358-3272', NULL, '', 0, NULL, NULL, 0),
(254, 'ACR Home Improvement', NULL, 'Stafford', 'VA', '22554', NULL, '0000-00-00', NULL, '(540) 659-6039 (540)', NULL, '', 0, NULL, NULL, 0),
(255, 'S&S Design and Build, Inc.', NULL, 'Grafton', 'WI', '53024', NULL, '0000-00-00', NULL, '(414) 303-1656', NULL, '', 0, NULL, NULL, 0),
(256, 'Adel Mikhail Overhead Doors', NULL, 'Howell', 'NJ', '7731', NULL, '0000-00-00', NULL, '(732) 363-2122 (908)', NULL, '', 0, NULL, NULL, 0),
(257, 'Global Murals', NULL, 'Woodridge', 'IL', '60517', NULL, '0000-00-00', NULL, '(847) 275-9947', NULL, '', 0, NULL, NULL, 0),
(258, 'Sew Pretty Creations', NULL, 'Pocono Pines', 'PA', '18350', NULL, '0000-00-00', NULL, '(570) 350-2383', NULL, '', 0, NULL, NULL, 0),
(259, 'Simon Joseph, LLC', NULL, 'Plano', 'TX', '75093', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(260, 'Maria and Brothers Cleaning Services, LLC', NULL, 'Sterling Heights', 'MI', '48310', NULL, '0000-00-00', NULL, '(586) 630-7894', NULL, '', 0, NULL, NULL, 0),
(261, 'AMC Enterprises, LLC', NULL, 'Manassas', 'VA', '20111', NULL, '0000-00-00', NULL, '(703) 477-6678', NULL, '', 0, NULL, NULL, 0),
(262, 'RR Paving and Masonry', NULL, 'New Rochelle', 'NY', '10805', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(263, 'AAC Heating and Cooling Services', NULL, 'Fairless Hills', 'PA', '19030', NULL, '0000-00-00', NULL, '(267) 471-9232', NULL, '', 0, NULL, NULL, 0),
(264, 'Gingerich Concrete', NULL, 'Hotchkiss', 'CO', '81419', NULL, '0000-00-00', NULL, '(970) 985-8486', NULL, '', 0, NULL, NULL, 0),
(265, 'VA Construction', NULL, 'Fairfax', 'VA', '22030', NULL, '0000-00-00', NULL, '(703) 932-8306', NULL, '', 0, NULL, NULL, 0),
(266, 'Servpreme, LLC', NULL, 'New Jersey', 'NJ', '7011', NULL, '0000-00-00', NULL, '(201) 286-4804', NULL, '', 0, NULL, NULL, 0),
(267, 'Comfort Zone Cooling and Heating, Inc.', NULL, 'Brooklyn', 'NY', '11209', NULL, '0000-00-00', NULL, '(718) 219-2019', NULL, '', 0, NULL, NULL, 0),
(268, 'A-Tooz Siding Construction', NULL, 'Federal Way', 'WA', '98003', NULL, '0000-00-00', NULL, '(206) 458-3578 (253)', NULL, '', 0, NULL, NULL, 0),
(269, 'Adolf Yanez Tile Co.', NULL, 'Antelope', 'CA', '95843', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(270, 'Caldera Landscape Maintenance', NULL, 'Bentonville', 'AR', '72712', NULL, '0000-00-00', NULL, '(479) 464-0195 (479)', NULL, '', 0, NULL, NULL, 0),
(271, 'Brick Logik, LLC', NULL, 'Aurora', 'IL', '60504', NULL, '0000-00-00', NULL, '(708) 363-7022', NULL, '', 0, NULL, NULL, 0),
(272, 'Thompson\'s Appliance Repair', NULL, 'Rockwood', 'MI', '48173', NULL, '0000-00-00', NULL, '(734) 709-4355', NULL, '', 0, NULL, NULL, 0),
(273, 'DW\'s Lawn Service', NULL, 'Baton Rouge', 'LA', '70810', NULL, '0000-00-00', NULL, '(225) 939-0403', NULL, '', 0, NULL, NULL, 0),
(274, 'Adrian Baca', NULL, 'Miami', 'FL', '33196', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(275, 'Berry Heating and Cooling, LLC', NULL, 'Festus', 'MO', '63028', NULL, '0000-00-00', NULL, '(636) 208-9623', NULL, '', 0, NULL, NULL, 0),
(276, 'New Revolution, LLC', NULL, 'Tolleson', 'AZ', '85353', NULL, '0000-00-00', NULL, '(602) 909-3309', NULL, '', 0, NULL, NULL, 0),
(277, 'Buyten Electric, LLC', NULL, 'Reno', 'NV', '89502', NULL, '0000-00-00', NULL, '(775) 354-9310', NULL, '', 0, NULL, NULL, 0),
(278, 'ABC Pressure Washing', NULL, 'Kingwood', 'TX', '77339', NULL, '0000-00-00', NULL, '(832) 922-9811', NULL, '', 0, NULL, NULL, 0),
(279, 'Adrian\'s Landscaping', NULL, 'Aieaa', 'HI', '96701', NULL, '0000-00-00', NULL, '(808) 450-1632', NULL, '', 0, NULL, NULL, 0),
(280, 'TDS Lawn Maintenance', NULL, 'Apopka', 'FL', '32712', NULL, '0000-00-00', NULL, '(407) 361-1826 (407)', NULL, '', 0, NULL, NULL, 0),
(281, 'Never Winter Pools', NULL, 'San Diego', 'CA', '92110', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(282, 'Franklin Drywall, LLC', NULL, 'Jeffersonville', 'IN', '47130', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(283, 'Adrian Kenary Masonry', NULL, 'Kings Park', 'NY', '11754', NULL, '0000-00-00', NULL, '(631) 269-5723', NULL, '', 0, NULL, NULL, 0),
(284, 'Rockin\'-A-Trim Carpentry, Inc.', NULL, 'Atascosa', 'TX', '78002', NULL, '0000-00-00', NULL, '(210) 347-9694', NULL, '', 0, NULL, NULL, 0),
(285, 'Factor Appliance', NULL, 'Rockville', 'MD', '20850', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(286, 'Traditional Builders Plus', NULL, 'Santa Fe', 'NM', '87505', NULL, '0000-00-00', NULL, '(505) 603-8205', NULL, '', 0, NULL, NULL, 0),
(287, 'Heartwood Enterprises, Inc.', NULL, 'Indianapolis', 'IN', '46268', NULL, '0000-00-00', NULL, '(317) 872-0756', NULL, '', 0, NULL, NULL, 0),
(288, 'Transylvania Painting', NULL, 'Fredericksburg', 'VA', '22407', NULL, '0000-00-00', NULL, '(540) 295-7948', NULL, '', 0, NULL, NULL, 0),
(289, 'Northwest Fence', NULL, 'Houston', 'TX', '77041', NULL, '0000-00-00', NULL, '(832) 453-6126', NULL, '', 0, NULL, NULL, 0),
(290, 'Adrian Paramo', NULL, 'Scranton', 'PA', '18505', NULL, '0000-00-00', NULL, '(570) 575-3224', NULL, '', 0, NULL, NULL, 0),
(291, 'Rico Cleaning Services', NULL, 'Atlanta', 'GA', '30092', NULL, '0000-00-00', NULL, '(678) 764-6574', NULL, '', 0, NULL, NULL, 0),
(292, 'Dunav Electric, Corp.', NULL, 'Centennial', 'CO', '80015', NULL, '0000-00-00', NULL, '(720) 951-2189', NULL, '', 0, NULL, NULL, 0),
(293, 'Red Oaks West, Inc.', NULL, 'Salt Lake City', 'UT', '84101', NULL, '0000-00-00', NULL, '(801) 860-6911', NULL, '', 0, NULL, NULL, 0),
(294, 'Junk Platoon USA', NULL, 'Lake in the Hills', 'IL', '60156', NULL, '0000-00-00', NULL, '(815) 703-1711 (847)', NULL, '', 0, NULL, NULL, 0),
(295, 'Call Us 2 Clean', NULL, 'Puyallup', 'WA', '98375', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(296, 'Adriana my Designer', NULL, 'Encinitas', 'CA', '92024', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(297, 'Quality Cleaning Rose, LLC', NULL, 'Brunswick', 'OH', '44212', NULL, '0000-00-00', NULL, '(216) 355-1241', NULL, '', 0, NULL, NULL, 0),
(298, 'Linnea\'s Cleaning Service', NULL, 'Sarasota', 'FL', '34232', NULL, '0000-00-00', NULL, '(941) 705-8488', NULL, '', 0, NULL, NULL, 0),
(299, 'AC Custom Metal Work, LLC', NULL, 'Renton', 'WA', '98058', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(300, 'Maid\'rianne\'s / Clean Spirit', NULL, 'Shalimar', 'FL', '32579', NULL, '0000-00-00', NULL, '(850) 217-2502', NULL, '', 0, NULL, NULL, 0),
(301, 'BetterLiving Sunrooms and Awnings of Mid Missouri', NULL, 'Jefferson City', 'MO', '65109', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(302, 'New England Professional Cleaning', NULL, 'Lowell', 'MA', '1852', NULL, '0000-00-00', NULL, '(978) 201-2236', NULL, '', 0, NULL, NULL, 0),
(303, 'Limpia, Inc.', NULL, 'Morrisville', 'PA', '19067', NULL, '0000-00-00', NULL, '(215) 208-2865', NULL, '', 0, NULL, NULL, 0),
(304, 'Couture Cleaning, LLC', NULL, 'Philadelphia', 'PA', '19118', NULL, '0000-00-00', NULL, '(215) 879-1508', NULL, '', 0, NULL, NULL, 0),
(305, 'Om Tao Feng Shui', NULL, 'Los Gatos', 'CA', '95030', NULL, '0000-00-00', NULL, '(408) 768-9496', NULL, '', 0, NULL, NULL, 0),
(306, 'Excel Quality Cleaning Service, LLC', NULL, 'Pasadena', 'TX', '77504', NULL, '0000-00-00', NULL, '(832) 387-8275', NULL, '', 0, NULL, NULL, 0),
(307, 'Chagas Electric Company, LLC', NULL, 'West New Haven', 'CT', '6516', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(308, 'A-K Flooring, LLC', NULL, 'Cottonwood', 'UT', '84121', NULL, '0000-00-00', NULL, '(801) 548-9417', NULL, '', 0, NULL, NULL, 0),
(309, 'Best Valana', NULL, 'Corona', 'NY', '11368', NULL, '0000-00-00', NULL, '(646) 353-5347', NULL, '', 0, NULL, NULL, 0),
(310, 'Image Design, Inc.', NULL, 'Medinah', 'IL', '60157', NULL, '0000-00-00', NULL, '(630) 709-2284', NULL, '', 0, NULL, NULL, 0),
(311, 'Aguiar Pavers', NULL, 'Redmond', 'WA', '98052', NULL, '0000-00-00', NULL, '(425) 678-0147', NULL, '', 0, NULL, NULL, 0),
(312, 'Flo\'s Home Cleaning', NULL, 'Cathedral City', 'CA', '92234', NULL, '0000-00-00', NULL, '(888) 290-4268', NULL, '', 0, NULL, NULL, 0),
(313, 'Vela Mechanical', NULL, 'El Prado', 'NM', '87529', NULL, '0000-00-00', NULL, '(575) 779-3955', NULL, '', 0, NULL, NULL, 0),
(314, 'Ahina Roofing', NULL, 'Honolulu', 'HI', '96795', NULL, '0000-00-00', NULL, '(808) 259-9609 (808)', NULL, '', 0, NULL, NULL, 0),
(315, 'Trinline Construction, Inc.', NULL, 'Loganville', 'GA', '30052', NULL, '0000-00-00', NULL, '(770) 616-2411', NULL, '', 0, NULL, NULL, 0),
(316, 'Accurate Air Technology', NULL, 'East Elmhurst', 'NY', '11370', NULL, '0000-00-00', NULL, '(718) 288-3773', NULL, '', 0, NULL, NULL, 0),
(317, 'The Repair Man HVAC, LLC', NULL, 'Midlothian', 'TX', '76065', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(318, 'Kingdom Janitorial Service', NULL, 'Norristown', 'PA', '19401', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(319, 'Winter Lights, Inc.', NULL, 'Springfield', 'MO', '65804', NULL, '0000-00-00', NULL, '(417) 882-2536', NULL, '', 0, NULL, NULL, 0),
(320, 'AJ\'s Handyman Services, Inc.', NULL, 'Merritt Island', 'FL', '32952', NULL, '0000-00-00', NULL, '(321) 298-4122', NULL, '', 0, NULL, NULL, 0),
(321, 'Artisan Contracting, LLC', NULL, 'Eugene', 'OR', '97404', NULL, '0000-00-00', NULL, '(541) 343-3702', NULL, '', 0, NULL, NULL, 0),
(322, 'TNG Contractors, LLC', NULL, 'Nashville', 'TN', '37210', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(323, 'Metro USA Construction, Inc.', NULL, 'Jamaica', 'NY', '11435', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(324, 'Akeel Steel Works', NULL, 'East Hartford', 'CT', '6118', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(325, 'Kinzo, Inc.', NULL, 'Laurel', 'MD', '20707', NULL, '0000-00-00', NULL, '(240) 417-1670', NULL, '', 0, NULL, NULL, 0),
(326, 'Turnkey, Inc.', NULL, 'Houston', 'TX', '77076', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(327, 'Go Green Cleaning Service', NULL, 'Mililani', 'HI', '96789', NULL, '0000-00-00', NULL, '(808) 284-3596', NULL, '', 0, NULL, NULL, 0),
(328, 'Construction Pros of New Jersey, LLC', NULL, 'Hillsborough', 'NJ', '8844', NULL, '0000-00-00', NULL, '(888) 377-3176', NULL, '', 0, NULL, NULL, 0),
(329, 'All Access Security Solutions, Inc.', NULL, 'Berkeley', 'CA', '94705', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(330, 'Energy Solutions Home Auditors, LLC', NULL, 'Blauvelt', 'NY', '10913', NULL, '0000-00-00', NULL, '(484) 678-9800', NULL, '', 0, NULL, NULL, 0),
(331, 'APT Construction', NULL, 'Fremont', 'CA', '94537', NULL, '0000-00-00', NULL, '(510) 795-4191 (510)', NULL, '', 0, NULL, NULL, 0),
(332, 'A-A Quick Dry Carpet Cleaning', NULL, 'Naperville', 'IL', '60540', NULL, '0000-00-00', NULL, '(630) 369-3733', NULL, '', 0, NULL, NULL, 0),
(333, 'AJ Budget, Inc.', NULL, 'Cranston', 'RI', '2920', NULL, '0000-00-00', NULL, '(401) 461-3660 (401)', NULL, '', 0, NULL, NULL, 0),
(334, 'American Property Restoration, Inc.', NULL, 'Lawrenceville', 'GA', '30340', NULL, '0000-00-00', NULL, '(770) 733-3584 (770)', NULL, '', 0, NULL, NULL, 0),
(335, 'Al Ewing Construction', NULL, 'Denver', 'CO', '80219', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(336, 'Al Greene', NULL, 'Eustis', 'FL', '32736', NULL, '0000-00-00', NULL, '(352) 250-6794', NULL, '', 0, NULL, NULL, 0),
(337, 'Prairie Pine Furnishings', NULL, 'Danvers', 'MN', '56231', NULL, '0000-00-00', NULL, '(320) 760-8472', NULL, '', 0, NULL, NULL, 0),
(338, 'Homewatch Caregivers - Huntsville', NULL, 'Hunstville', 'AL', '35802', NULL, '0000-00-00', NULL, '(256) 763-0855', NULL, '', 0, NULL, NULL, 0),
(339, 'Al Hopkins Plumbing, LLC', NULL, 'Indianapolis', 'IN', '46235', NULL, '0000-00-00', NULL, '(317) 213-6681', NULL, '', 0, NULL, NULL, 0),
(340, 'Al\'s Lawn Service', NULL, 'Akron', 'OH', '44306', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(341, 'Drywall Plus, Inc.', NULL, 'Lombard', 'IL', '60148', NULL, '0000-00-00', NULL, '(630) 495-9928 (630)', NULL, '', 0, NULL, NULL, 0),
(342, 'TopGun Plumbing, LLC', NULL, 'Bothell', 'WA', '98021', NULL, '0000-00-00', NULL, '(425) 984-4197', NULL, '', 0, NULL, NULL, 0),
(343, 'D and M Quality Roofing', NULL, 'San Jose', 'CA', '95112', NULL, '0000-00-00', NULL, '(408) 313-1108', NULL, '', 0, NULL, NULL, 0),
(344, 'Al\'s Home Improvements', NULL, 'Mission Viejo', 'CA', '92692', NULL, '0000-00-00', NULL, '(949) 600-6489', NULL, '', 0, NULL, NULL, 0),
(345, 'Al Miller Construction', NULL, 'Glenn Campbell', 'PA', '15742', NULL, '0000-00-00', NULL, '(814) 952-4739', NULL, '', 0, NULL, NULL, 0),
(346, 'Acumen Construction Company', NULL, 'Landsdale', 'PA', '19001', NULL, '0000-00-00', NULL, '(267) 222-2203', NULL, '', 0, NULL, NULL, 0),
(347, 'Rocking M Services', NULL, 'Grand Saline', 'TX', '75140', NULL, '0000-00-00', NULL, '(903) 962-3806 (214)', NULL, '', 0, NULL, NULL, 0),
(348, 'Advanced Controlled Environment', NULL, 'Orange', 'CA', '92868', NULL, '0000-00-00', NULL, '(909) 285-4223', NULL, '', 0, NULL, NULL, 0),
(349, 'Ricchezza Building Solutions', NULL, 'Philadelphia', 'PA', '19147', NULL, '0000-00-00', NULL, '(215) 336-8437 (267)', NULL, '', 0, NULL, NULL, 0),
(350, 'Rios Construction, LLC', NULL, 'Lansing', 'MI', '48917', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(351, 'ERH Contracting', NULL, 'Bronx', 'NY', '10460', NULL, '0000-00-00', NULL, '(646) 448-9989', NULL, '', 0, NULL, NULL, 0),
(352, 'Express Pest Control', NULL, 'Olmsted Falls', 'OH', '44138', NULL, '0000-00-00', NULL, '(440) 891-9411', NULL, '', 0, NULL, NULL, 0),
(353, 'Bethwood Pest Elimination, LLC', NULL, 'Bethany', 'CT', '6524', NULL, '0000-00-00', NULL, '(203) 393-7326', NULL, '', 0, NULL, NULL, 0),
(354, 'Albert\'s General Services', NULL, 'Williamsville', 'NY', '14221', NULL, '0000-00-00', NULL, '(716) 689-8691', NULL, '', 0, NULL, NULL, 0),
(355, 'Abbey Carpet & Floor', NULL, 'Great Bend', 'KS', '67530', NULL, '0000-00-00', NULL, '(620) 793-6845 (620)', NULL, '', 0, NULL, NULL, 0),
(356, 'Terk\'s Aluminum', NULL, 'New Port Richey', 'FL', '34652', NULL, '0000-00-00', NULL, '(727) 845-8375 (727)', NULL, '', 0, NULL, NULL, 0),
(357, 'A & R', NULL, 'Bossier City', 'LA', '71112', NULL, '0000-00-00', NULL, '(318) 572-9158', NULL, '', 0, NULL, NULL, 0),
(358, 'Pearl Mechanical, LLC', NULL, 'BERNALILLO', 'NM', '87004', NULL, '0000-00-00', NULL, '(505) 867-0292', NULL, '', 0, NULL, NULL, 0),
(359, 'Weber Ceramics, Inc.', NULL, 'Monticello', 'MN', '55362', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(360, 'Al White Pool Service', NULL, 'Boca Raton', 'FL', '33486', NULL, '0000-00-00', NULL, '(561) 395-1420', NULL, '', 0, NULL, NULL, 0),
(361, 'MJ\'s Home and Lawn Care Services', NULL, 'St. Petersburg', 'FL', '33713', NULL, '0000-00-00', NULL, '(727) 557-9632 (727)', NULL, '', 0, NULL, NULL, 0),
(362, 'Design Enterprises, LLC', NULL, 'Killingworth', 'CT', '6419', NULL, '0000-00-00', NULL, '(860) 663-5488 (860)', NULL, '', 0, NULL, NULL, 0),
(363, 'Dura Oak of Dallas', NULL, 'Dallas', 'TX', '75227', NULL, '0000-00-00', NULL, '(214) 381-4133 (214)', NULL, '', 0, NULL, NULL, 0),
(364, 'American Legacy Contracting, Inc.', NULL, 'Payson', 'UT', '84651', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(365, 'Revive Remodeling, LLC', NULL, 'New Albany', 'OH', '43054', NULL, '0000-00-00', NULL, '(614) 575-2266', NULL, '', 0, NULL, NULL, 0),
(366, 'Betters Renovations', NULL, 'South Portland', 'ME', '4106', NULL, '0000-00-00', NULL, '(207) 767-0128 (207)', NULL, '', 0, NULL, NULL, 0),
(367, 'Ecoscape', NULL, 'Santa Cruz', 'CA', '95060', NULL, '0000-00-00', NULL, '(831) 459-8106', NULL, '', 0, NULL, NULL, 0),
(368, 'Total Concept Services, Inc.', NULL, 'Edmonds', 'WA', '98020', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(369, 'Bull\'s Lawn and Landscaping', NULL, 'Ft. Worth', 'TX', '76118', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0);
INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `deleted`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(370, 'Picture Perfect Landscaping and More', NULL, 'Springbrook Twp', 'PA', '18444', NULL, '0000-00-00', NULL, '(570) 842-2790 (570)', NULL, '', 0, NULL, NULL, 0),
(371, 'Alan Christiansen Architect', NULL, 'Des Moines', 'IA', '50311', NULL, '0000-00-00', NULL, '(515) 720-9311', NULL, '', 0, NULL, NULL, 0),
(372, 'Alan Clark Architect', NULL, 'Decatur', 'GA', '30030', NULL, '0000-00-00', NULL, '(404) 219-4642', NULL, '', 0, NULL, NULL, 0),
(373, 'Bama Air Systems Mechanical Contractors', NULL, 'Cullman', 'AL', '35055', NULL, '0000-00-00', NULL, '(256) 734-4182 (256)', NULL, '', 0, NULL, NULL, 0),
(374, 'Archer Plumbing Company, Inc.', NULL, 'Cincinnati', 'OH', '45217', NULL, '0000-00-00', NULL, '(513) 641-0020', NULL, '', 0, NULL, NULL, 0),
(375, 'Alcon Framing, Inc.', NULL, 'San Marcos', 'CA', '92078', NULL, '0000-00-00', NULL, '(760) 207-3699', NULL, '', 0, NULL, NULL, 0),
(376, 'Solid Surface Solutions', NULL, 'Pacific', 'WA', '98047', NULL, '0000-00-00', NULL, '(253) 863-9282', NULL, '', 0, NULL, NULL, 0),
(377, 'Alan\'s Window Fashions', NULL, 'Nashua', 'NH', '3064', NULL, '0000-00-00', NULL, '(603) 594-9260', NULL, '', 0, NULL, NULL, 0),
(378, 'A F Product Company', NULL, 'Forsyth', 'MO', '65653', NULL, '0000-00-00', NULL, '(417) 545-1787', NULL, '', 0, NULL, NULL, 0),
(379, 'A Plus Homeworks, LLC', NULL, 'Broken Arrow', 'OK', '74011', NULL, '0000-00-00', NULL, '(918) 688-6504', NULL, '', 0, NULL, NULL, 0),
(380, 'Big G Furniture Repair', NULL, 'Tyler', 'TX', '75707', NULL, '0000-00-00', NULL, '(603) 305-5425 (903)', NULL, '', 0, NULL, NULL, 0),
(381, 'Goodnoe Enterprises, LLC', NULL, 'Roebling', 'NJ', '8554', NULL, '0000-00-00', NULL, '(267) 229-8119', NULL, '', 0, NULL, NULL, 0),
(382, 'Alan Hide', NULL, 'Jacksonville', 'FL', '32211', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(383, 'Hadlock Home Inspections', NULL, 'Chimacum', 'WA', '98325', NULL, '0000-00-00', NULL, '(360) 440-4968', NULL, '', 0, NULL, NULL, 0),
(384, 'Alan Kanter Architect', NULL, 'Carmel', 'CA', '93923', NULL, '0000-00-00', NULL, '(831) 601-5181', NULL, '', 0, NULL, NULL, 0),
(385, 'A. King Handyman Services, LLC', NULL, 'Grand Junction', 'CO', '81504', NULL, '0000-00-00', NULL, '(970) 250-2024', NULL, '', 0, NULL, NULL, 0),
(386, 'South Strand Property Maintenance, LLC', NULL, 'Surfside Beach', 'SC', '29575', NULL, '0000-00-00', NULL, '(843) 238-8844', NULL, '', 0, NULL, NULL, 0),
(387, 'Knuth Construction, Inc.', NULL, 'Bondurant', 'IA', '50035', NULL, '0000-00-00', NULL, '(515) 210-2425', NULL, '', 0, NULL, NULL, 0),
(388, 'Gardens of the Wine Country', NULL, 'Santa Rosa', 'CA', '95405', NULL, '0000-00-00', NULL, '(707) 538-5120 (707)', NULL, '', 0, NULL, NULL, 0),
(389, 'Fasick Concrete, Inc.', NULL, 'Lakewood', 'CO', '80214', NULL, '0000-00-00', NULL, '(303) 435-8128', NULL, '', 0, NULL, NULL, 0),
(390, 'RC Flawless Windows', NULL, 'Red Hook', 'NY', '12571', NULL, '0000-00-00', NULL, '(845) 489-2512 (845)', NULL, '', 0, NULL, NULL, 0),
(391, 'Lambert\'s Service Now', NULL, 'Downey', 'CA', '90242', NULL, '0000-00-00', NULL, '(562) 861-2727 (562)', NULL, '', 0, NULL, NULL, 0),
(392, 'Leone Carpentry', NULL, 'Granby', 'MA', '1033', NULL, '0000-00-00', NULL, '(413) 563-3431', NULL, '', 0, NULL, NULL, 0),
(393, 'Alan Marrero', NULL, 'Wallingford', 'CT', '6492', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(394, 'Adagio Drywall', NULL, 'Caledonia', 'WI', '53108', NULL, '0000-00-00', NULL, '(262) 822-6750', NULL, '', 0, NULL, NULL, 0),
(395, 'Air Climate Solutions', NULL, 'Duarte', 'CA', '91010', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(396, 'Air Trust HVAC', NULL, 'Nashville', 'TN', '37214', NULL, '0000-00-00', NULL, '(615) 582-6565', NULL, '', 0, NULL, NULL, 0),
(397, 'Amped Electrical Services, Inc.', NULL, 'Morgan Town', 'IN', '46160', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(398, 'APEX Thermal Services', NULL, 'Highland', 'NY', '12528', NULL, '0000-00-00', NULL, '(845) 430-5825', NULL, '', 0, NULL, NULL, 0),
(399, 'A Plus Pools Corp.', NULL, 'Pompano beach', 'FL', '33073', NULL, '0000-00-00', NULL, '(561) 362-8938', NULL, '', 0, NULL, NULL, 0),
(400, 'ASP Home Improvements, LLC', NULL, 'Old Bethpage', 'NY', '11804', NULL, '0000-00-00', NULL, '(516) 661-1509', NULL, '', 0, NULL, NULL, 0),
(401, 'Postworks Green', NULL, 'Sharon', 'MA', '2067', NULL, '0000-00-00', NULL, '(781) 713-4256', NULL, '', 0, NULL, NULL, 0),
(402, 'Tru Plumbing Company', NULL, 'Beaver Falls', 'PA', '15010', NULL, '0000-00-00', NULL, '(724) 891-7508', NULL, '', 0, NULL, NULL, 0),
(403, 'ASR Construction, LLC', NULL, 'Flower Mound', 'TX', '75028', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(404, 'The Master Craftsman Cabinet Company, LLC', NULL, 'West Columbia', 'SC', '29170', NULL, '0000-00-00', NULL, '(208) 354-4885', NULL, '', 0, NULL, NULL, 0),
(405, 'Alan Spragg and Associates Home Service', NULL, 'Stockton', 'CA', '95207', NULL, '0000-00-00', NULL, '(209) 518-1558', NULL, '', 0, NULL, NULL, 0),
(406, 'Stenger Service', NULL, 'Bethel Park', 'PA', '15102', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(407, 'Symonette Carpentry, LLC', NULL, 'Hollywood', 'FL', '33020', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(408, 'AJT Construction Company', NULL, 'Mission Hills', 'CA', '91345', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(409, 'VIP Services', NULL, 'Mundelein', 'IL', '60060', NULL, '0000-00-00', NULL, '(847) 736-9595', NULL, '', 0, NULL, NULL, 0),
(410, 'Alan Viveiros Painting Services', NULL, 'Somerset', 'MA', '2726', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(411, 'Paradise Pools Construction and Remodeling, Inc.', NULL, 'Davis', 'CA', '95618', NULL, '0000-00-00', NULL, '(916) 200-6843', NULL, '', 0, NULL, NULL, 0),
(412, 'Webster Stone Works, LLC', NULL, 'Petersburg', 'NY', '12138', NULL, '0000-00-00', NULL, '(518) 596-5556', NULL, '', 0, NULL, NULL, 0),
(413, 'Southwest Interiors', NULL, 'Plano', 'TX', '75075', NULL, '0000-00-00', NULL, '(972) 519-0800 (972)', NULL, '', 0, NULL, NULL, 0),
(414, 'Wicked Timber', NULL, 'Kingston', 'MA', '2364', NULL, '0000-00-00', NULL, '(781) 585-4333 (781)', NULL, '', 0, NULL, NULL, 0),
(415, 'Midwest Solar Power, LLC', NULL, 'Madison', 'WI', '53705', NULL, '0000-00-00', NULL, '(608) 354-2063', NULL, '', 0, NULL, NULL, 0),
(416, 'Combined Contracting', NULL, 'Sterling Heights', 'MI', '48313', NULL, '0000-00-00', NULL, '(917) 721-1846', NULL, '', 0, NULL, NULL, 0),
(417, 'AJ\'s Paving Company', NULL, 'Greenville', 'NC', '27858', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(418, 'Weberpal Roofing, Inc.', NULL, 'Union', 'IL', '60180', NULL, '0000-00-00', NULL, '(815) 260-5657', NULL, '', 0, NULL, NULL, 0),
(419, 'Adams Diverse Services', NULL, 'Maize', 'KS', '67101', NULL, '0000-00-00', NULL, '(316) 721-3400', NULL, '', 0, NULL, NULL, 0),
(420, 'Ace Wildlife Service, Inc.', NULL, 'Cleavland', 'OH', '44109', NULL, '0000-00-00', NULL, '(216) 459-0903 (216)', NULL, '', 0, NULL, NULL, 0),
(421, 'Restoration Specialist', NULL, 'Alpharetta', 'GA', '30022', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(422, 'Avila Structural Consultants, Inc.', NULL, 'Woodland Hills', 'CA', '91365', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(423, 'Becerra\'s Wall Covering', NULL, 'Irving', 'TX', '75060', NULL, '0000-00-00', NULL, '(214) 505-6719', NULL, '', 0, NULL, NULL, 0),
(424, 'Brown\'s Home Maintenance', NULL, 'Philipsburg', 'PA', '16866', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(425, 'Albert Cavins', NULL, 'Cinncinati', 'OH', '45241', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(426, 'Superior Interlocking Pavers, Inc.', NULL, 'Castaic', 'CA', '91384', NULL, '0000-00-00', NULL, '(818) 519-2903', NULL, '', 0, NULL, NULL, 0),
(427, 'Albert Cruz, Jr. Concrete', NULL, 'San Marcos', 'CA', '92078', NULL, '0000-00-00', NULL, '(760) 716-4142', NULL, '', 0, NULL, NULL, 0),
(428, 'Elliot Carpet Sales, Inc.', NULL, 'Metairie', 'LA', '70003', NULL, '0000-00-00', NULL, '(504) 737-1555 (504)', NULL, '', 0, NULL, NULL, 0),
(429, 'Araya Clean', NULL, 'Elk Grove', 'CA', '95758', NULL, '0000-00-00', NULL, '(916) 236-4095', NULL, '', 0, NULL, NULL, 0),
(430, 'Esser Builders, LLC', NULL, 'Mason', 'MI', '48854', NULL, '0000-00-00', NULL, '(517) 719-4964', NULL, '', 0, NULL, NULL, 0),
(431, 'Roof Medics, LLC', NULL, 'Chesterfield', 'MO', '63005', NULL, '0000-00-00', NULL, '(314) 791-3346', NULL, '', 0, NULL, NULL, 0),
(432, 'Albert Harshaw', NULL, 'Jackson', 'NJ', '8527', NULL, '0000-00-00', NULL, '(732) 513-2361', NULL, '', 0, NULL, NULL, 0),
(433, 'Caswell / Hertel Surveyors, Inc.', NULL, 'Beaverton', 'OR', '97008', NULL, '0000-00-00', NULL, '(503) 644-3179', NULL, '', 0, NULL, NULL, 0),
(434, 'Dynasty Lawn Care, LLC', NULL, 'Springfield', 'MO', '65802', NULL, '0000-00-00', NULL, '(417) 619-4882', NULL, '', 0, NULL, NULL, 0),
(435, 'Albert\'s Handyman Service', NULL, 'Skokie', 'IL', '60076', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(436, 'Albert Koenig', NULL, 'Pawtucket', 'RI', '2861', NULL, '0000-00-00', NULL, '(401) 487-7010', NULL, '', 0, NULL, NULL, 0),
(437, 'La Rue Construction', NULL, 'Beaumont', 'CA', '92223', NULL, '0000-00-00', NULL, '(909) 319-7341', NULL, '', 0, NULL, NULL, 0),
(438, 'Albert Luyando', NULL, 'North Miami', 'FL', '33161', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(439, 'Martinez Landscape, LLC', NULL, 'Marysville', 'WA', '98271', NULL, '0000-00-00', NULL, '(425) 268-0276', NULL, '', 0, NULL, NULL, 0),
(440, 'South Jersey Wallpaper', NULL, 'Turnersville', 'NJ', '8012', NULL, '0000-00-00', NULL, '(856) 232-6665', NULL, '', 0, NULL, NULL, 0),
(441, 'A & O Heating & Cooling', NULL, 'Fords', 'NJ', '8863', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(442, 'T.E.A. Restoration Co.', NULL, 'Rochester', 'MI', '48309', NULL, '0000-00-00', NULL, '(248) 828-2733', NULL, '', 0, NULL, NULL, 0),
(443, 'Atlantic Equipment Corporation', NULL, 'Hillsborough', 'NJ', '8844', NULL, '0000-00-00', NULL, '(908) 431-3000', NULL, '', 0, NULL, NULL, 0),
(444, 'Giant First Construction, Inc.', NULL, 'Oak Park', 'CA', '91377', NULL, '0000-00-00', NULL, '(818) 535-9907', NULL, '', 0, NULL, NULL, 0),
(445, 'The Empire Carpet Center', NULL, 'Fresh Meadows', 'NY', '11423', NULL, '0000-00-00', NULL, '(516) 300-1122 (347)', NULL, '', 0, NULL, NULL, 0),
(446, 'Empire Window Treatment Center', NULL, 'Fresh Meadows', 'NY', '11423', NULL, '0000-00-00', NULL, '(888) 522-7785 (347)', NULL, '', 0, NULL, NULL, 0),
(447, 'Albert Pollard Pick-Up Service', NULL, 'Kent', 'WA', '98031', NULL, '0000-00-00', NULL, '(206) 261-7684', NULL, '', 0, NULL, NULL, 0),
(448, 'AJR Painting', NULL, 'Schwenksville', 'PA', '19473', NULL, '0000-00-00', NULL, '(484) 614-1177', NULL, '', 0, NULL, NULL, 0),
(449, 'Harmony Ponds, Inc.', NULL, 'Fairfax', 'VA', '22032', NULL, '0000-00-00', NULL, '(703) 978-2800', NULL, '', 0, NULL, NULL, 0),
(450, 'Main Line Painters', NULL, 'Ardmore', 'PA', '19003', NULL, '0000-00-00', NULL, '(610) 212-1012', NULL, '', 0, NULL, NULL, 0),
(451, 'A Finished Touch', NULL, 'Horn Lake', 'MS', '38637', NULL, '0000-00-00', NULL, '(901) 219-8115', NULL, '', 0, NULL, NULL, 0),
(452, 'A.A Zagame, Inc.', NULL, 'Wayland', 'MA', '1778', NULL, '0000-00-00', NULL, '(781) 760-2258', NULL, '', 0, NULL, NULL, 0),
(453, 'Arteaga Fence', NULL, 'Ingleside', 'IL', '60041', NULL, '0000-00-00', NULL, '(224) 944-9390', NULL, '', 0, NULL, NULL, 0),
(454, 'Hightower Residential Services, LLC', NULL, 'Westport', 'CT', '6880', NULL, '0000-00-00', NULL, '(203) 255-0089', NULL, '', 0, NULL, NULL, 0),
(455, 'Saver and Solution, LLC', NULL, 'Denver', 'CO', '80223', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(456, 'Boldster, LLC', NULL, 'Tampa', 'FL', '33647', NULL, '0000-00-00', NULL, '(813) 333-6677', NULL, '', 0, NULL, NULL, 0),
(457, 'Alfandy Contractor Corp.', NULL, 'East Elmhurst', 'NY', '11370', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(458, 'Same Day Appliance Repair', NULL, 'Haverhill', 'MA', '1832', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(459, 'Chabod Construction', NULL, 'Caseyville', 'IL', '62232', NULL, '0000-00-00', NULL, '(618) 795-2026', NULL, '', 0, NULL, NULL, 0),
(460, 'Paul\'s Professional Painting, Inc.', NULL, 'Woburn', 'MA', '1801', NULL, '0000-00-00', NULL, '(781) 933-2885 (617)', NULL, '', 0, NULL, NULL, 0),
(461, 'Grey Stone Concrete', NULL, 'Gilroy', 'CA', '95020', NULL, '0000-00-00', NULL, '(408) 710-3538', NULL, '', 0, NULL, NULL, 0),
(462, 'Levario Contracting, LLC', NULL, 'Jeffersonville', 'IN', '47130', NULL, '0000-00-00', NULL, '(502) 548-5736', NULL, '', 0, NULL, NULL, 0),
(463, 'Always Best Care of the Woodlands', NULL, 'Spring', 'TX', '77380', NULL, '0000-00-00', NULL, '(832) 482-9686', NULL, '', 0, NULL, NULL, 0),
(464, 'Continental Drywall, Inc.', NULL, 'Aurora', 'CO', '80011', NULL, '0000-00-00', NULL, '(720) 331-8937', NULL, '', 0, NULL, NULL, 0),
(465, 'Alberto Cleaning Services, LLC', NULL, 'Palm Coast', 'FL', '32164', NULL, '0000-00-00', NULL, '(386) 264-1920', NULL, '', 0, NULL, NULL, 0),
(466, 'J A C Roofing Contractors, Inc.', NULL, 'Morrisville', 'PA', '19067', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(467, 'J 3 Services', NULL, 'Oceanside', 'CA', '92056', NULL, '0000-00-00', NULL, '(619) 243-4888 (760)', NULL, '', 0, NULL, NULL, 0),
(468, 'Mezini Roofing', NULL, 'Clifton', 'NJ', '7013', NULL, '0000-00-00', NULL, '(973) 767-3256', NULL, '', 0, NULL, NULL, 0),
(469, 'Tidy Up!, LLC', NULL, 'Richmond', 'VA', '23235', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(470, 'Cut-N-Edge', NULL, 'Chula Vista', 'CA', '91911', NULL, '0000-00-00', NULL, '(619) 241-1224', NULL, '', 0, NULL, NULL, 0),
(471, 'Aldos Contracting', NULL, 'Freeport', 'NY', '11520', NULL, '0000-00-00', NULL, '(516) 867-7219 (516)', NULL, '', 0, NULL, NULL, 0),
(472, 'Pextex Corporation', NULL, 'Coral Gables', 'FL', '33134', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(473, 'Order By Design', NULL, 'Allen', 'TX', '75013', NULL, '0000-00-00', NULL, '(214) 778-5628', NULL, '', 0, NULL, NULL, 0),
(474, 'Wired Electric, LLC', NULL, 'Maple Lake', 'MN', '55358', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(475, 'Ramsay Wallcovering', NULL, 'Littleton', 'CO', '80120', NULL, '0000-00-00', NULL, '(303) 907-0347', NULL, '', 0, NULL, NULL, 0),
(476, 'Your Clear Pool', NULL, 'Lewisville', 'TX', '75067', NULL, '0000-00-00', NULL, '(469) 237-5805', NULL, '', 0, NULL, NULL, 0),
(477, 'Aleida Leticia Rivas', NULL, 'Montgomery', 'MD', '20886', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(478, 'Sparkling Hoods Sandiego', NULL, 'Jamul', 'CA', '91935', NULL, '0000-00-00', NULL, '(619) 368-3682', NULL, '', 0, NULL, NULL, 0),
(479, 'A G Plumbing Co.', NULL, 'Anaheim', 'CA', '92801', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(480, 'Soluthermal Insulation Services', NULL, 'Houston', 'TX', '77092', NULL, '0000-00-00', NULL, '(832) 305-7675', NULL, '', 0, NULL, NULL, 0),
(481, 'Alex Carpet Service', NULL, 'Evergreen park', 'IL', '60805', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(482, 'Mijalisco Landscaping, LLC', NULL, 'Richmond', 'VA', '23255', NULL, '0000-00-00', NULL, '(804) 350-7466', NULL, '', 0, NULL, NULL, 0),
(483, 'Alejandro Escobar', NULL, 'Aurora', 'CO', '80010', NULL, '0000-00-00', NULL, '(720) 621-8866', NULL, '', 0, NULL, NULL, 0),
(484, '3 Garcias Construction, Inc.', NULL, 'Bennett', 'CO', '80102', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(485, 'AHF Roofing', NULL, 'Houston', 'TX', '77053', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(486, '24 Hour Appliance Emergency', NULL, 'Miami', 'FL', '33193', NULL, '0000-00-00', NULL, '(786) 530-2235', NULL, '', 0, NULL, NULL, 0),
(487, 'Fix It Now Corp.', NULL, 'Sunrise', 'FL', '33351', NULL, '0000-00-00', NULL, '(954) 588-7728', NULL, '', 0, NULL, NULL, 0),
(488, 'Robles Lawn Care', NULL, 'Birmingham', 'AL', '35228', NULL, '0000-00-00', NULL, '(205) 276-7037 (205)', NULL, '', 0, NULL, NULL, 0),
(489, 'ACE Plastering', NULL, 'Santa Fe', 'NM', '87592', NULL, '0000-00-00', NULL, '(505) 795-1102', NULL, '', 0, NULL, NULL, 0),
(490, 'Alex\'s Handyman Services', NULL, 'Magnolia', 'TX', '77354', NULL, '0000-00-00', NULL, '(832) 607-0235', NULL, '', 0, NULL, NULL, 0),
(491, 'A M Texas Cleaning Services', NULL, 'Austin', 'TX', '78744', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(492, 'Spring Irrigation', NULL, 'Mount Juliet', 'TN', '37122', NULL, '0000-00-00', NULL, '(615) 772-4876', NULL, '', 0, NULL, NULL, 0),
(493, 'M.A.C.E Painting, LLC', NULL, 'Pembroke Pines', 'FL', '33024', NULL, '0000-00-00', NULL, '(646) 678-0239', NULL, '', 0, NULL, NULL, 0),
(494, 'Artistic Design Systems, LLC', NULL, 'Paterson', 'NJ', '7502', NULL, '0000-00-00', NULL, '(973) 703-8585 (973)', NULL, '', 0, NULL, NULL, 0),
(495, 'Alejandro Torres', NULL, 'Renton', 'WA', '98059', NULL, '0000-00-00', NULL, '(425) 773-0718', NULL, '', 0, NULL, NULL, 0),
(496, 'DJ Tile Installation', NULL, 'Lowell', 'MA', '1851', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(497, 'Aleksandar Kastamanov', NULL, 'Walnut Creek', 'CA', '94595', NULL, '0000-00-00', NULL, '(925) 708-7940', NULL, '', 0, NULL, NULL, 0),
(498, 'Build, LLC', NULL, 'Lakewood', 'CO', '80232', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(499, 'West Coast Solar', NULL, 'El Cajon', 'CA', '92020', NULL, '0000-00-00', NULL, '(619) 557-0446', NULL, '', 0, NULL, NULL, 0),
(500, 'High Quality Hardwood Flooring, Inc.', NULL, 'Hoffman Estates', 'IL', '60169', NULL, '0000-00-00', NULL, '(224) 595-0808', NULL, '', 0, NULL, NULL, 0),
(501, 'Alexander Landscape Group', NULL, 'Lawrenceville', 'GA', '30046', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(502, 'A.D. Panaccio Building and Renovating Contractors, Inc.', NULL, 'Havertown', 'PA', '19083', NULL, '0000-00-00', NULL, '(610) 322-6688', NULL, '', 0, NULL, NULL, 0),
(503, 'GA Cleaning Services Company', NULL, 'Alpharetta', 'GA', '30004', NULL, '0000-00-00', NULL, '(678) 973-3632', NULL, '', 0, NULL, NULL, 0),
(504, 'Gecko Drywall, Inc.', NULL, 'Columbia', 'MO', '65202', NULL, '0000-00-00', NULL, '(573) 819-8109', NULL, '', 0, NULL, NULL, 0),
(505, 'North Tech Electric, Inc.', NULL, 'Warren', 'NJ', '7059', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(506, 'Unique Gardens and Landscapes', NULL, 'Maple Valley', 'WA', '98038', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(507, 'Pennywise Custom Painting', NULL, 'Lee', 'NH', '3861', NULL, '0000-00-00', NULL, '(603) 481-2595', NULL, '', 0, NULL, NULL, 0),
(508, 'Alex Brown Company', NULL, 'Wheat Ridge', 'CO', '80033', NULL, '0000-00-00', NULL, '(303) 884-7290', NULL, '', 0, NULL, NULL, 0),
(509, 'Castro Brother\'s, Inc.', NULL, 'Kent', 'WA', '98032', NULL, '0000-00-00', NULL, '(206) 478-3045', NULL, '', 0, NULL, NULL, 0),
(510, 'HandyPro of North Jersey', NULL, 'Woodland Park', 'NJ', '7424', NULL, '0000-00-00', NULL, '(973) 321-2777', NULL, '', 0, NULL, NULL, 0),
(511, 'AC Tree Service', NULL, 'Addison', 'TX', '75248', NULL, '0000-00-00', NULL, '(469) 879-9475', NULL, '', 0, NULL, NULL, 0),
(512, 'Water Heaters Masters, Inc.', NULL, 'Concord', 'CA', '94518', NULL, '0000-00-00', NULL, '(925) 363-4965', NULL, '', 0, NULL, NULL, 0),
(513, 'Alex Appliances', NULL, 'Carlsbad', 'CA', '92009', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(514, 'Alex Foster Construction, Inc.', NULL, 'Golden', 'CO', '80403', NULL, '0000-00-00', NULL, '(720) 201-9100', NULL, '', 0, NULL, NULL, 0),
(515, 'Rowe Door Sales Company', NULL, 'Duryea', 'PA', '18642', NULL, '0000-00-00', NULL, '(570) 655-7701', NULL, '', 0, NULL, NULL, 0),
(516, 'Ultimate Garage Floors of Southern Oregon', NULL, 'Central Point', 'OR', '97502', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(517, 'Stucco Done Right, LLC', NULL, 'Parker', 'CO', '80134', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(518, 'Gutter Guys, LLC', NULL, 'Stamford', 'CT', '6907', NULL, '0000-00-00', NULL, '(203) 327-1346 (203)', NULL, '', 0, NULL, NULL, 0),
(519, 'Jet Renovation', NULL, 'Rockville', 'MD', '20850', NULL, '0000-00-00', NULL, '(443) 373-9992', NULL, '', 0, NULL, NULL, 0),
(520, 'A.G. Hardwood Floors, Inc.', NULL, 'Baltimore', 'MD', '21209', NULL, '0000-00-00', NULL, '(410) 580-0384', NULL, '', 0, NULL, NULL, 0),
(521, 'A.A. Remodeling, LLC', NULL, 'Baltimore', 'MD', '21209', NULL, '0000-00-00', NULL, '(410) 340-3356', NULL, '', 0, NULL, NULL, 0),
(522, 'Patricia Cleaning Services, Inc.', NULL, 'Boca Raton', 'FL', '33433', NULL, '0000-00-00', NULL, '(561) 716-2460', NULL, '', 0, NULL, NULL, 0),
(523, 'KGS Construction, Inc.', NULL, 'Aurora', 'CO', '80042', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(524, 'Handy Al', NULL, 'Highland Park', 'IL', '60035', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(525, 'Harrill Construction Company', NULL, 'Hickory', 'NC', '28601', NULL, '0000-00-00', NULL, '(828) 228-1000', NULL, '', 0, NULL, NULL, 0),
(526, 'Jones Sprinklers', NULL, 'Mead', 'WA', '99021', NULL, '0000-00-00', NULL, '(509) 701-2598', NULL, '', 0, NULL, NULL, 0),
(527, 'Home Evolution', NULL, 'Mechanicville', 'NY', '12118', NULL, '0000-00-00', NULL, '(518) 505-3370', NULL, '', 0, NULL, NULL, 0),
(528, 'AL-CO Electric', NULL, 'Phoenix', 'AZ', '85027', NULL, '0000-00-00', NULL, '(623) 582-1115', NULL, '', 0, NULL, NULL, 0),
(529, 'Alex the Painter', NULL, 'Madison Heights', 'MI', '48071', NULL, '0000-00-00', NULL, '(248) 506-0286', NULL, '', 0, NULL, NULL, 0),
(530, 'Window and Door Repair Services', NULL, 'Staten Island', 'NY', '10314', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(531, 'AKL Lawn Service', NULL, 'Gulfport', 'MS', '39501', NULL, '0000-00-00', NULL, '(228) 731-2771', NULL, '', 0, NULL, NULL, 0),
(532, 'A.L. Residential And Commercial Roofing', NULL, 'San Jose', 'CA', '95127', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(533, 'Tile 4 You', NULL, 'Sacramento', 'CA', '95826', NULL, '0000-00-00', NULL, '(916) 267-3149', NULL, '', 0, NULL, NULL, 0),
(534, 'Washington Home Improvement', NULL, 'Auburn', 'WA', '98092', NULL, '0000-00-00', NULL, '(206) 355-6731', NULL, '', 0, NULL, NULL, 0),
(535, 'Alex Mockus Appraisals', NULL, 'San Diego', 'CA', '92109', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(536, 'Front Range Hardwood, LLC', NULL, 'Johnstown', 'CO', '80534', NULL, '0000-00-00', NULL, '(720) 877-1269', NULL, '', 0, NULL, NULL, 0),
(537, 'JF Landscape', NULL, 'Weymouth', 'MA', '2189', NULL, '0000-00-00', NULL, '(781) 964-6167', NULL, '', 0, NULL, NULL, 0),
(538, 'The Riverside Flooring Company', NULL, 'Riverside', 'CA', '92509', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(539, 'Ode\'s Services, Inc.', NULL, 'Hamberg', 'NY', '14075', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(540, 'MPO Enterprises, LLC', NULL, 'Farfield', 'CT', '6824', NULL, '0000-00-00', NULL, '(203) 521-3592', NULL, '', 0, NULL, NULL, 0),
(541, 'Clean All USA, Inc.', NULL, 'East Norriton', 'PA', '19401', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(542, 'Reliant Pest Management', NULL, 'Houston', 'TX', '77060', NULL, '0000-00-00', NULL, '(281) 741-8830 (509)', NULL, '', 0, NULL, NULL, 0),
(543, 'Best Senior Care', NULL, 'Ashton', 'MD', '20861', NULL, '0000-00-00', NULL, '(301) 717-2212', NULL, '', 0, NULL, NULL, 0),
(544, 'Pineda Contractors', NULL, 'Long Pond', 'PA', '18334', NULL, '0000-00-00', NULL, '(877) 230-2662 (570)', NULL, '', 0, NULL, NULL, 0),
(545, 'Poolfessionals, Inc.', NULL, 'Freeport', 'NY', '11520', NULL, '0000-00-00', NULL, '(516) 903-7322 (516)', NULL, '', 0, NULL, NULL, 0),
(546, 'Rathsack Remodeling, LLC', NULL, 'Valders', 'WI', '54245', NULL, '0000-00-00', NULL, '(920) 242-3790', NULL, '', 0, NULL, NULL, 0),
(547, 'Design Aray\'s', NULL, 'Islandia', 'NY', '11749', NULL, '0000-00-00', NULL, '(631) 627-9396', NULL, '', 0, NULL, NULL, 0),
(548, 'Continental Floors, LLC', NULL, 'Lynnwood', 'WA', '98037', NULL, '0000-00-00', NULL, '(425) 737-0499', NULL, '', 0, NULL, NULL, 0),
(549, 'Storage Valet, LLC', NULL, 'Corona', 'CA', '92879', NULL, '0000-00-00', NULL, '(714) 262-4178', NULL, '', 0, NULL, NULL, 0),
(550, 'Econo Electric Services', NULL, 'Simi Valley', 'CA', '93065', NULL, '0000-00-00', NULL, '(805) 416-4470', NULL, '', 0, NULL, NULL, 0),
(551, 'Alexander\'s Floors, Inc.', NULL, 'Norcross', 'GA', '30071', NULL, '0000-00-00', NULL, '(770) 729-9482', NULL, '', 0, NULL, NULL, 0),
(552, 'Salguero Masonry', NULL, 'Waltham', 'MA', '2451', NULL, '0000-00-00', NULL, '(617) 932-9096', NULL, '', 0, NULL, NULL, 0),
(553, 'Riviera Palm, Inc.', NULL, 'Reseda', 'CA', '91335', NULL, '0000-00-00', NULL, '(818) 344-7256 (310)', NULL, '', 0, NULL, NULL, 0),
(554, 'Bayou Pools', NULL, 'New Orleans', 'LA', '70121', NULL, '0000-00-00', NULL, '(504) 782-0683', NULL, '', 0, NULL, NULL, 0),
(555, 'ASE Illini-Scapes, Inc.', NULL, 'Romeoville', 'IL', '60446', NULL, '0000-00-00', NULL, '(815) 355-3422', NULL, '', 0, NULL, NULL, 0),
(556, 'Silva Homes, Inc.', NULL, 'Spring Hill', 'FL', '34609', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(557, 'Every Green Care, Inc.', NULL, 'Orlando', 'FL', '32862', NULL, '0000-00-00', NULL, '(407) 709-8336', NULL, '', 0, NULL, NULL, 0),
(558, 'Brumel EZ Granite', NULL, 'Lorton', 'VA', '22079', NULL, '0000-00-00', NULL, '(571) 642-0680', NULL, '', 0, NULL, NULL, 0),
(559, 'EZ Roof & Construction, LLC', NULL, 'Houston', 'TX', '77082', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(560, 'Alta Construction Company', NULL, 'Great Neck', 'NY', '11021', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(561, 'Tilden Construction', NULL, 'Boise', 'ID', '83709', NULL, '0000-00-00', NULL, '(208) 634-6625', NULL, '', 0, NULL, NULL, 0),
(562, 'Alex Williams Home Improvements', NULL, 'Columbia', 'MD', '21045', NULL, '0000-00-00', NULL, '(410) 787-7247', NULL, '', 0, NULL, NULL, 0),
(563, 'All American Services of Virginia, LLC', NULL, 'Fredericksburg', 'VA', '22408', NULL, '0000-00-00', NULL, '(540) 273-3351', NULL, '', 0, NULL, NULL, 0),
(564, 'Mega Construction Renovations, Inc.', NULL, 'Trenton', 'NJ', '8638', NULL, '0000-00-00', NULL, '(609) 947-4367 (267)', NULL, '', 0, NULL, NULL, 0),
(565, 'A 2 Z Lawn Services', NULL, 'Edgewood', 'KY', '41017', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(566, 'Restoreit Clean Care, LLC', NULL, 'Stanford', 'CT', '6907', NULL, '0000-00-00', NULL, '(203) 554-4993', NULL, '', 0, NULL, NULL, 0),
(567, 'Alexa Interiors, LLC', NULL, 'Evergreen', 'CO', '80437', NULL, '0000-00-00', NULL, '(720) 560-9534', NULL, '', 0, NULL, NULL, 0),
(568, 'Pronto Waste Service, Inc.', NULL, 'Miami', 'FL', '33147', NULL, '0000-00-00', NULL, '(305) 691-0020', NULL, '', 0, NULL, NULL, 0),
(569, 'Express Overhead', NULL, 'Tulsa', 'OK', '74145', NULL, '0000-00-00', NULL, '(918) 770-8665', NULL, '', 0, NULL, NULL, 0),
(570, 'Elite Garage Door Services, Inc.', NULL, 'Kissimmee', 'FL', '34758', NULL, '0000-00-00', NULL, '(407) 705-3636', NULL, '', 0, NULL, NULL, 0),
(571, 'Ace Appliance Service', NULL, 'Santa Barbara', 'CA', '93110', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(572, 'Pocono Homes R US, LLC', NULL, 'Dingmans Ferry', 'PA', '18328', NULL, '0000-00-00', NULL, '(646) 996-6496', NULL, '', 0, NULL, NULL, 0),
(573, 'Bay Area Restoration', NULL, 'Freemont', 'CA', '94538', NULL, '0000-00-00', NULL, '(877) 223-3272', NULL, '', 0, NULL, NULL, 0),
(574, 'Ares Pro Finishes, Inc.', NULL, 'Aberdean', 'MD', '21001', NULL, '0000-00-00', NULL, '(410) 652-3919', NULL, '', 0, NULL, NULL, 0),
(575, 'L\'s Pool and Spa Service', NULL, 'La Habra', 'CA', '90631', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(576, 'Al\'s Asphalt Paving', NULL, 'Fort Worth', 'TX', '76116', NULL, '0000-00-00', NULL, '(254) 383-1469', NULL, '', 0, NULL, NULL, 0),
(577, 'Dewey Construction & Development', NULL, 'Las Vegas', 'NV', '89102', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(578, 'AN Interior Restoration, Corp.', NULL, 'Hollywood', 'FL', '33021', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(579, 'O\'Harro Furniture Repair', NULL, 'Philadelphia', 'PA', '19142', NULL, '0000-00-00', NULL, '(609) 509-4999', NULL, '', 0, NULL, NULL, 0),
(580, 'A Parker Contracting', NULL, 'Bear', 'DE', '19701', NULL, '0000-00-00', NULL, '(302) 377-1193', NULL, '', 0, NULL, NULL, 0),
(581, 'Northwest Maintenance Solutions', NULL, 'Beaverton', 'OR', '97005', NULL, '0000-00-00', NULL, '(503) 956-1879', NULL, '', 0, NULL, NULL, 0),
(582, 'Athruz Kitchenclosetsdesign, Inc.', NULL, 'Homestead', 'FL', '33030', NULL, '0000-00-00', NULL, '(305) 305-1763', NULL, '', 0, NULL, NULL, 0),
(583, 'Alexander Shilof', NULL, 'Loveland', 'CO', '80537', NULL, '0000-00-00', NULL, '(970) 461-0916', NULL, '', 0, NULL, NULL, 0),
(584, 'Allstar Improvements, LLC', NULL, 'Mesa', 'AZ', '85201', NULL, '0000-00-00', NULL, '(443) 838-8541 (602)', NULL, '', 0, NULL, NULL, 0),
(585, 'Posh Painting, LLC', NULL, 'Ramsey', 'NJ', '7446', NULL, '0000-00-00', NULL, '(201) 962-2600', NULL, '', 0, NULL, NULL, 0),
(586, 'Aquathin North Jersey', NULL, 'Wyckoff', 'NJ', '7481', NULL, '0000-00-00', NULL, '(201) 208-7807', NULL, '', 0, NULL, NULL, 0),
(587, 'Alex Smith Hardwood Flooring', NULL, 'Downingtown', 'PA', '19335', NULL, '0000-00-00', NULL, '(484) 325-1053', NULL, '', 0, NULL, NULL, 0),
(588, 'Walker Drywall', NULL, 'Theodore', 'AL', '36582', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(589, 'Goodface Landscape', NULL, 'New Roschelle', 'NY', '10801', NULL, '0000-00-00', NULL, '(646) 872-0627', NULL, '', 0, NULL, NULL, 0),
(590, 'Premier Landscape Management Group, Inc.', NULL, 'Atlanta', 'GA', '30076', NULL, '0000-00-00', NULL, '(678) 490-5555', NULL, '', 0, NULL, NULL, 0),
(591, 'It\'s Just Dust, LLC', NULL, 'Bristol', 'PA', '19007', NULL, '0000-00-00', NULL, '(215) 776-2500', NULL, '', 0, NULL, NULL, 0),
(592, 'Greenway Floors and More, Inc.', NULL, 'Fremont', 'CA', '94538', NULL, '0000-00-00', NULL, '(510) 490-3500', NULL, '', 0, NULL, NULL, 0),
(593, 'RUS Construction, LLC', NULL, 'Fort Thomas', 'KY', '41075', NULL, '0000-00-00', NULL, '(513) 628-8234', NULL, '', 0, NULL, NULL, 0),
(594, 'Alexia Hemingway Design', NULL, 'Boynton Beach', 'FL', '33435', NULL, '0000-00-00', NULL, '(786) 295-1792', NULL, '', 0, NULL, NULL, 0),
(595, 'Domain Interior Studio', NULL, 'West Columbia', 'SC', '29170', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(596, 'Hands on Hand', NULL, 'Calhoun City', 'MS', '38916', NULL, '0000-00-00', NULL, '(662) 835-9626', NULL, '', 0, NULL, NULL, 0),
(597, 'Alex\'s Home Improvement', NULL, 'Leicester', 'NC', '28748', NULL, '0000-00-00', NULL, '(828) 712-5407', NULL, '', 0, NULL, NULL, 0),
(598, 'CleanGevity, LLC', NULL, 'Minneaplois', 'MN', '55447', NULL, '0000-00-00', NULL, '(763) 286-7222', NULL, '', 0, NULL, NULL, 0),
(599, 'AAA Contractor Services, Inc.', NULL, 'Miramar Beach', 'FL', '32550', NULL, '0000-00-00', NULL, '(850) 687-1814', NULL, '', 0, NULL, NULL, 0),
(600, 'Florida Safety Inspections, Inc.', NULL, 'Hialeah', 'FL', '33015', NULL, '0000-00-00', NULL, '(786) 566-1675', NULL, '', 0, NULL, NULL, 0),
(601, 'AC Lawn Services, Inc.', NULL, 'Ocoee', 'FL', '34761', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(602, 'Best Roof, Inc.', NULL, 'Seffner', 'FL', '33584', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(603, 'Sunshine Drain Cleaning', NULL, 'Tampa', 'FL', '33610', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(604, '4 Cleaner', NULL, 'Portland', 'OR', '97211', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(605, 'PA Contracting Unlimited, Inc', NULL, 'Port Chester', 'NY', '10573', NULL, '0000-00-00', NULL, '(914) 939-8917', NULL, '', 0, NULL, NULL, 0),
(606, 'Rodriguez Concrete Service', NULL, 'Conroe', 'TX', '77302', NULL, '0000-00-00', NULL, '(832) 712-4594', NULL, '', 0, NULL, NULL, 0),
(607, 'Essential Painting', NULL, 'South Grafton', 'MA', '1560', NULL, '0000-00-00', NULL, '(508) 839-7270', NULL, '', 0, NULL, NULL, 0),
(608, 'Clean One', NULL, 'Gilbert', 'AZ', '85233', NULL, '0000-00-00', NULL, '(480) 295-5054', NULL, '', 0, NULL, NULL, 0),
(609, 'Vena\'s Nursery', NULL, 'Belleville', 'MI', '48111', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(610, 'Arizona First Appraisals, LLC', NULL, 'Phoenix', 'AZ', '85048', NULL, '0000-00-00', NULL, '(480) 980-3103', NULL, '', 0, NULL, NULL, 0),
(611, 'Fred Pagano Carpets', NULL, 'Framingham', 'MA', '1701', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(612, 'ABC Concrete Work', NULL, 'Jefferson', 'LA', '70121', NULL, '0000-00-00', NULL, '(504) 831-9225 (504)', NULL, '', 0, NULL, NULL, 0),
(613, 'Hudson Valley Water Resources, Inc.', NULL, 'New Paltz', 'NY', '12561', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(614, 'Guntherberg Appraisal Service', NULL, 'Roanoke', 'AL', '36274', NULL, '0000-00-00', NULL, '(706) 643-6084', NULL, '', 0, NULL, NULL, 0),
(615, 'Ampco Industrial, LLC', NULL, 'Odessa', 'TX', '79763', NULL, '0000-00-00', NULL, '(214) 642-2401', NULL, '', 0, NULL, NULL, 0),
(616, 'Personal Preference Landscape Care, Inc.', NULL, 'Highland', 'IL', '62249', NULL, '0000-00-00', NULL, '(618) 654-6489', NULL, '', 0, NULL, NULL, 0),
(617, 'Q\'s Construction, Inc.', NULL, 'Miami', 'FL', '33155', NULL, '0000-00-00', NULL, '(786) 229-5666', NULL, '', 0, NULL, NULL, 0),
(618, 'Shandon Electric', NULL, 'Shandon', 'CA', '93461', NULL, '0000-00-00', NULL, '(805) 712-1507', NULL, '', 0, NULL, NULL, 0),
(619, 'Sementa Construction, LLC', NULL, 'Cape Coral', 'FL', '33993', NULL, '0000-00-00', NULL, '(239) 898-3801', NULL, '', 0, NULL, NULL, 0),
(620, 'Alfred R. Van Swearingen, Inc.', NULL, 'Oviedo', 'FL', '32765', NULL, '0000-00-00', NULL, '(407) 415-2018', NULL, '', 0, NULL, NULL, 0),
(621, 'Metro-Flow Steam Cleaning', NULL, 'Newark', 'NJ', '7104', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(622, 'A-Southwest Air Conditioning Team', NULL, 'Dallas', 'TX', '75211', NULL, '0000-00-00', NULL, '(972) 921-6767 (469)', NULL, '', 0, NULL, NULL, 0),
(623, 'Vale Home Improvement, LLC', NULL, 'Woodbridge', 'VA', '22192', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(624, 'Apex Tree Service, Inc.', NULL, 'Lawrenceville', 'GA', '30043', NULL, '0000-00-00', NULL, '(678) 754-8728', NULL, '', 0, NULL, NULL, 0),
(625, 'Kimberly\'s Cleaning Services', NULL, 'Everett', 'WA', '98204', NULL, '0000-00-00', NULL, '(425) 319-8498 (425)', NULL, '', 0, NULL, NULL, 0),
(626, 'Pestana Roofing Company, Inc.', NULL, 'Lake Worth', 'FL', '33405', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(627, 'National Pool Design, LLC', NULL, 'Miami', 'FL', '33194', NULL, '0000-00-00', NULL, '(305) 559-1020 (305)', NULL, '', 0, NULL, NULL, 0),
(628, 'Eben-Ezer Lawn Service', NULL, 'Houston', 'TX', '77071', NULL, '0000-00-00', NULL, '(832) 640-2671', NULL, '', 0, NULL, NULL, 0),
(629, 'Ventura\'s Tree Services', NULL, 'Conroad', 'TX', '77301', NULL, '0000-00-00', NULL, '(713) 922-1097', NULL, '', 0, NULL, NULL, 0),
(630, 'Amani Design, Inc.', NULL, 'Long Beach', 'CA', '90803', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(631, 'Fazle Powerwash', NULL, 'Indianaplois', 'IN', '46205', NULL, '0000-00-00', NULL, '(317) 444-1549', NULL, '', 0, NULL, NULL, 0),
(632, 'ARA Heating & Air Conditioning, Inc.', NULL, 'Irvine', 'CA', '92612', NULL, '0000-00-00', NULL, '(949) 861-8848', NULL, '', 0, NULL, NULL, 0),
(633, 'Sunlight Concepts, Inc.', NULL, 'Santa Clara', 'CA', '95050', NULL, '0000-00-00', NULL, '(408) 844-0081', NULL, '', 0, NULL, NULL, 0),
(634, 'Caspian Painting Co, Inc.', NULL, 'Suffolk', 'VA', '23434', NULL, '0000-00-00', NULL, '(757) 498-1585 (757)', NULL, '', 0, NULL, NULL, 0),
(635, 'Babaghanoush, Inc.', NULL, 'New York', 'NY', '10007', NULL, '0000-00-00', NULL, '(917) 415-6377', NULL, '', 0, NULL, NULL, 0),
(636, 'Bella Floors, LLC', NULL, 'Hyannis', 'MA', '2601', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(637, 'C&A Painting Services, LLC', NULL, 'Danbury', 'CT', '6810', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(638, 'Dirt Man X', NULL, 'Round Rock', 'TX', '78681', NULL, '0000-00-00', NULL, '(512) 461-2760', NULL, '', 0, NULL, NULL, 0),
(639, 'Greenspace Design', NULL, 'Haslett', 'MI', '48840', NULL, '0000-00-00', NULL, '(517) 575-0090 (517)', NULL, '', 0, NULL, NULL, 0),
(640, 'Canales Asphalt', NULL, 'Long Pond', 'PA', '18334', NULL, '0000-00-00', NULL, '(973) 349-8745', NULL, '', 0, NULL, NULL, 0),
(641, 'Thick Coates', NULL, 'Belmont', 'NC', '28012', NULL, '0000-00-00', NULL, '(704) 231-5378', NULL, '', 0, NULL, NULL, 0),
(642, 'Alicia Friedmann Interior Design, LLC', NULL, 'Long Beach', 'CA', '90815', NULL, '0000-00-00', NULL, '(562) 455-0049', NULL, '', 0, NULL, NULL, 0),
(643, 'Service Champions', NULL, 'Pleasanton', 'CA', '94588', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(644, 'Acsan, LLC', NULL, 'Germantown', 'MD', '20876', NULL, '0000-00-00', NULL, '(240) 361-0532', NULL, '', 0, NULL, NULL, 0),
(645, 'Ro Flooring', NULL, 'Las Vegas', 'NV', '89118', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(646, 'Fox Gutter Cleaning', NULL, 'Milford', 'MA', '1545', NULL, '0000-00-00', NULL, '(781) 995-0185 (978)', NULL, '', 0, NULL, NULL, 0),
(647, 'Clearview Tree and Land Corp.', NULL, 'Westbury', 'NY', '11590', NULL, '0000-00-00', NULL, '(516) 640-5586', NULL, '', 0, NULL, NULL, 0),
(648, 'Arya Construction Co', NULL, 'San Jose', 'CA', '95128', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(649, 'Appliance Repair of North Texas', NULL, 'Kemp', 'TX', '75143', NULL, '0000-00-00', NULL, '(214) 949-5191', NULL, '', 0, NULL, NULL, 0),
(650, 'Green Star Home Remodeling Group', NULL, 'Louisville', 'KY', '40291', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(651, 'Jay\'s Adept Builders, Inc.', NULL, 'Torrington', 'CT', '6790', NULL, '0000-00-00', NULL, '(860) 302-4182', NULL, '', 0, NULL, NULL, 0),
(652, 'Maillet\'s Design Group', NULL, 'Houston', 'TX', '77007', NULL, '0000-00-00', NULL, '(281) 989-3859', NULL, '', 0, NULL, NULL, 0),
(653, 'American Pool Service', NULL, 'San Antonio', 'TX', '78254', NULL, '0000-00-00', NULL, '(210) 314-2448 (210)', NULL, '', 0, NULL, NULL, 0),
(654, 'Accessible Home Health Care of NE Maryland', NULL, 'Bel Air', 'MD', '21014', NULL, '0000-00-00', NULL, '(410) 838-4304', NULL, '', 0, NULL, NULL, 0),
(655, 'Keefer\'s Properties, LLC', NULL, 'Reynoldsburg', 'OH', '43068', NULL, '0000-00-00', NULL, '(614) 264-9474 (614)', NULL, '', 0, NULL, NULL, 0),
(656, 'Aurora', NULL, 'Madison', 'AL', '35758', NULL, '0000-00-00', NULL, '(256) 426-3282 (256)', NULL, '', 0, NULL, NULL, 0),
(657, 'CHW Site Development', NULL, 'Leominster', 'MA', '1453', NULL, '0000-00-00', NULL, '(978) 660-6364', NULL, '', 0, NULL, NULL, 0),
(658, 'Kubachka Construction', NULL, 'Pinehurst', 'NC', '28374', NULL, '0000-00-00', NULL, '(910) 603-3215', NULL, '', 0, NULL, NULL, 0),
(659, 'RoadRunner Inspection Service', NULL, 'Denton', 'TX', '76208', NULL, '0000-00-00', NULL, '(214) 226-9492', NULL, '', 0, NULL, NULL, 0),
(660, 'Allan F. Dietel, AIA Architect', NULL, 'West Hills', 'CA', '91307', NULL, '0000-00-00', NULL, '(818) 416-4215', NULL, '', 0, NULL, NULL, 0),
(661, 'All Blinds Plus', NULL, 'Stamford', 'CT', '6905', NULL, '0000-00-00', NULL, '(203) 322-8821 (203)', NULL, '', 0, NULL, NULL, 0),
(662, 'Ask Me..!, Inc.', NULL, 'Whitehouse Station', 'NJ', '8889', NULL, '0000-00-00', NULL, '(908) 534-4123 (908)', NULL, '', 0, NULL, NULL, 0),
(663, 'Al\'s Neighborly Service', NULL, 'Dallas', 'TX', '75251', NULL, '0000-00-00', NULL, '(972) 239-3184', NULL, '', 0, NULL, NULL, 0),
(664, 'Allan Jones Construction', NULL, 'Ashland', 'KY', '41102', NULL, '0000-00-00', NULL, '(606) 928-6200 (606)', NULL, '', 0, NULL, NULL, 0),
(665, 'Nelson Masonry', NULL, 'Little Rock', 'AR', '72223', NULL, '0000-00-00', NULL, '(501) 993-1856', NULL, '', 0, NULL, NULL, 0),
(666, 'Beautiful Lawns, LLC', NULL, 'Albany', 'NY', '12205', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(667, 'Allan Seeley- Builder', NULL, 'Newhaven', 'MI', '48048', NULL, '0000-00-00', NULL, '(586) 214-9730', NULL, '', 0, NULL, NULL, 0),
(668, 'Cabinet by Owner, Inc.', NULL, 'Lecanto', 'FL', '34461', NULL, '0000-00-00', NULL, '(954) 683-1308', NULL, '', 0, NULL, NULL, 0),
(669, 'Phoenix Landscape Maintenance, Inc.', NULL, 'West Palm Beach', 'FL', '33404', NULL, '0000-00-00', NULL, '(561) 881-2152', NULL, '', 0, NULL, NULL, 0),
(670, 'Lehigh Valley Landscaping', NULL, 'Elliot', 'ME', '3903', NULL, '0000-00-00', NULL, '(207) 451-3750', NULL, '', 0, NULL, NULL, 0),
(671, 'Clearshine', NULL, 'Edinburgh', 'IN', '46124', NULL, '0000-00-00', NULL, '(812) 526-7266 (812)', NULL, '', 0, NULL, NULL, 0),
(672, 'The Roofer Plus', NULL, 'Buckholts', 'TX', '76518', NULL, '0000-00-00', NULL, '(254) 482-3324', NULL, '', 0, NULL, NULL, 0),
(673, 'Kwikdry Total Cleaning', NULL, 'Plateville', 'WI', '53818', NULL, '0000-00-00', NULL, '(563) 557-7897', NULL, '', 0, NULL, NULL, 0),
(674, 'Enviro-Tech Professional Tree Service And Landscaping', NULL, 'Astatula', 'FL', '34705', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(675, 'Allen Adams', NULL, 'Sturgis', 'SD', '57785', NULL, '0000-00-00', NULL, '(605) 490-1744', NULL, '', 0, NULL, NULL, 0),
(676, 'All Landscaping, LLC', NULL, 'Broad Brook', 'CT', '6016', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(677, 'ADA Electrical', NULL, 'Birmingham', 'AL', '35217', NULL, '0000-00-00', NULL, '(205) 966-6724', NULL, '', 0, NULL, NULL, 0),
(678, 'A.L.A.N. Mechanical, Inc.', NULL, 'Elburn', 'IL', '60119', NULL, '0000-00-00', NULL, '(708) 785-0648', NULL, '', 0, NULL, NULL, 0),
(679, 'Beckett\'s Handyman Service', NULL, 'Frankfort', 'IN', '46041', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(680, 'Imperial Cleaning, Inc.', NULL, 'Alcoa', 'TN', '37701', NULL, '0000-00-00', NULL, '(865) 984-7766 (865)', NULL, '', 0, NULL, NULL, 0),
(681, 'Phoenix One Janitorial', NULL, 'Dallas', 'TX', '75243', NULL, '0000-00-00', NULL, '(817) 313-8465', NULL, '', 0, NULL, NULL, 0),
(682, 'Perfect Lawns and Landworks of Austin', NULL, 'Austin', 'TX', '78716', NULL, '0000-00-00', NULL, '(512) 563-7856', NULL, '', 0, NULL, NULL, 0),
(683, 'Pride Mechanical, LLC', NULL, 'Tuscon', 'AZ', '85739', NULL, '0000-00-00', NULL, '(520) 297-3520', NULL, '', 0, NULL, NULL, 0),
(684, 'Alcom', NULL, 'Wildomar', 'CA', '92595', NULL, '0000-00-00', NULL, '(951) 551-5969', NULL, '', 0, NULL, NULL, 0),
(685, 'Happy Home Handyman & Remodeling, LLC', NULL, 'Marietta', 'GA', '30066', NULL, '0000-00-00', NULL, '(770) 294-1489', NULL, '', 0, NULL, NULL, 0),
(686, 'Remod By Ace, LLC', NULL, 'Bourbonnais', 'IL', '60914', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(687, 'Chris\' Power Washing', NULL, 'Los Angeles', 'CA', '90042', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(688, 'Oregon Hill Construction', NULL, 'Mohnton', 'PA', '19540', NULL, '0000-00-00', NULL, '(610) 775-3716', NULL, '', 0, NULL, NULL, 0),
(689, 'Goehrs Builders, Inc.', NULL, 'Coldspring', 'TX', '77331', NULL, '0000-00-00', NULL, '(936) 653-1300', NULL, '', 0, NULL, NULL, 0),
(690, 'Princeton Tree Service', NULL, 'Princeton', 'MA', '1541', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(691, 'Best Way Fence Company', NULL, 'Norfolk', 'VA', '23505', NULL, '0000-00-00', NULL, '(757) 589-6402', NULL, '', 0, NULL, NULL, 0),
(692, 'Householder and Dad Lawn Care, LLC', NULL, 'Fort Colllins', 'CO', '80524', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(693, 'A. B. H. Decors, Inc.', NULL, 'Winchester', 'KY', '40391', NULL, '0000-00-00', NULL, '(859) 745-1894 (859)', NULL, '', 0, NULL, NULL, 0),
(694, 'Clearlight Windows and Doors', NULL, 'Abilene', 'TX', '79602', NULL, '0000-00-00', NULL, '(325) 673-4921', NULL, '', 0, NULL, NULL, 0),
(695, 'Perfection Pest Management, LLC', NULL, 'Indianola', 'IA', '50125', NULL, '0000-00-00', NULL, '(515) 422-1559', NULL, '', 0, NULL, NULL, 0),
(696, 'Genesis Concrete Concepts', NULL, 'Henderson', 'NV', '89009', NULL, '0000-00-00', NULL, '(702) 580-4069', NULL, '', 0, NULL, NULL, 0),
(697, 'Green Life Irrigation', NULL, 'Abilene', 'TX', '79602', NULL, '0000-00-00', NULL, '(325) 829-8496', NULL, '', 0, NULL, NULL, 0),
(698, '911 Garage Door Service', NULL, 'Houston', 'TX', '77065', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(699, 'Peake Air', NULL, 'Gardnerville', 'NV', '89460', NULL, '0000-00-00', NULL, '(775) 392-0994', NULL, '', 0, NULL, NULL, 0),
(700, 'A Ministry of Handyman Services', NULL, 'Grand Rapids', 'MI', '49506', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(701, 'Allen Rawlings', NULL, 'Annapolis', 'MD', '21401', NULL, '0000-00-00', NULL, '(443) 370-7211', NULL, '', 0, NULL, NULL, 0),
(702, 'Al\'s Drywall & Repair', NULL, 'Garfield', 'AR', '72732', NULL, '0000-00-00', NULL, '(479) 381-5182', NULL, '', 0, NULL, NULL, 0),
(703, 'ASR Architecture, PA', NULL, 'Manasquan', 'NJ', '8736', NULL, '0000-00-00', NULL, '(732) 528-1597 (732)', NULL, '', 0, NULL, NULL, 0),
(704, 'SRL Acoustics', NULL, 'Brentwood', 'TN', '37027', NULL, '0000-00-00', NULL, '(615) 469-0279', NULL, '', 0, NULL, NULL, 0),
(705, 'Assistance Home Care', NULL, 'Saint Charles', 'MO', '63303', NULL, '0000-00-00', NULL, '(636) 724-4357 (314)', NULL, '', 0, NULL, NULL, 0),
(706, 'Allen Lock & Security Co.', NULL, 'Northlake', 'IL', '60164', NULL, '0000-00-00', NULL, '(708) 557-6933', NULL, '', 0, NULL, NULL, 0),
(707, 'Zachary Ryan Companies', NULL, 'Rock Hill', 'SC', '29732', NULL, '0000-00-00', NULL, '(803) 389-4280', NULL, '', 0, NULL, NULL, 0),
(708, 'NY Energy Auditors', NULL, 'Saratoga Springs', 'NY', '12866', NULL, '0000-00-00', NULL, '(518) 526-5167', NULL, '', 0, NULL, NULL, 0),
(709, 'Taylor Carpet and Upholstery Cleaning', NULL, 'Martin', 'OH', '43445', NULL, '0000-00-00', NULL, '(419) 350-4603', NULL, '', 0, NULL, NULL, 0),
(710, 'Thompson Copper Works, LLC', NULL, 'Jasper', 'AL', '35504', NULL, '0000-00-00', NULL, '(205) 369-6740', NULL, '', 0, NULL, NULL, 0),
(711, 'Alamo Water Softeners', NULL, 'San Antonio', 'TX', '78217', NULL, '0000-00-00', NULL, '(210) 884-8256', NULL, '', 0, NULL, NULL, 0),
(712, 'Irrigation Services, Inc.', NULL, 'Menasha', 'WI', '54952', NULL, '0000-00-00', NULL, '(920) 722-2010 (920)', NULL, '', 0, NULL, NULL, 0),
(713, 'Wesley Home Improvement Repair Specialist, LLC', NULL, 'Little Rock', 'AR', '72204', NULL, '0000-00-00', NULL, '(501) 744-6207', NULL, '', 0, NULL, NULL, 0),
(714, 'J. Hamner Services, Inc.', NULL, 'Jacksonville', 'FL', '32220', NULL, '0000-00-00', NULL, '(904) 838-5882', NULL, '', 0, NULL, NULL, 0),
(715, 'Allen Winters Concrete', NULL, 'Sebastopol', 'CA', '95472', NULL, '0000-00-00', NULL, '(707) 823-8085', NULL, '', 0, NULL, NULL, 0),
(716, 'Woodruff\'s Lawn and Landscaping', NULL, 'Denham Springs', 'LA', '70726', NULL, '0000-00-00', NULL, '(225) 341-9121', NULL, '', 0, NULL, NULL, 0),
(717, 'Colorado Mountain Spas, Inc.', NULL, 'Woodland Park', 'CO', '80863', NULL, '0000-00-00', NULL, '(719) 687-5522 (719)', NULL, '', 0, NULL, NULL, 0),
(718, 'Appliance Mecca', NULL, 'Clinton', 'MD', '20735', NULL, '0000-00-00', NULL, '(202) 359-3582', NULL, '', 0, NULL, NULL, 0),
(719, 'The Paint Company', NULL, 'Lewisville', 'TX', '75077', NULL, '0000-00-00', NULL, '(972) 317-8983 (469)', NULL, '', 0, NULL, NULL, 0),
(720, 'A K Janitorial', NULL, 'Little Elm', 'TX', '75068', NULL, '0000-00-00', NULL, '(870) 543-0884', NULL, '', 0, NULL, NULL, 0),
(721, 'Top To Bottom Enterprises', NULL, 'Belleville', 'IL', '62226', NULL, '0000-00-00', NULL, '(618) 632-5200', NULL, '', 0, NULL, NULL, 0),
(722, 'Elite Roofing of Georgia, LLC', NULL, 'Dallas', 'GA', '30157', NULL, '0000-00-00', NULL, '(770) 445-1290 (678)', NULL, '', 0, NULL, NULL, 0),
(723, 'Allison Interiors, LLC', NULL, 'Haddam', 'CT', '6438', NULL, '0000-00-00', NULL, '(860) 345-2959', NULL, '', 0, NULL, NULL, 0),
(724, 'Fertigation Systems, LLC', NULL, 'Goodyear', 'AZ', '85395', NULL, '0000-00-00', NULL, '(602) 312-0900', NULL, '', 0, NULL, NULL, 0),
(725, 'Torunski Construction', NULL, 'West Warick', 'RI', '2893', NULL, '0000-00-00', NULL, '(603) 819-3461', NULL, '', 0, NULL, NULL, 0),
(726, 'Allyson L. Beattie Cleaning Service', NULL, 'Schwenksville', 'PA', '19473', NULL, '0000-00-00', NULL, '(215) 264-0048', NULL, '', 0, NULL, NULL, 0),
(727, 'Eagle Curb', NULL, 'Rio Linda', 'CA', '95673', NULL, '0000-00-00', NULL, '(916) 826-7622', NULL, '', 0, NULL, NULL, 0),
(728, 'Lito Construction, Inc.', NULL, 'Howell', 'NJ', '7731', NULL, '0000-00-00', NULL, '(608) 335-3492 (908)', NULL, '', 0, NULL, NULL, 0),
(729, 'Hane Tile', NULL, 'Sugar Hill', 'GA', '30518', NULL, '0000-00-00', NULL, '(404) 886-3548', NULL, '', 0, NULL, NULL, 0),
(730, 'World Class Tile', NULL, 'East Brunswick', 'NJ', '8816', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(731, 'Alonso Morales Landscaping', NULL, 'Centralia', 'WA', '98531', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(732, 'Acoustic Ceiling Kings', NULL, 'Houston', 'TX', '77044', NULL, '0000-00-00', NULL, '(832) 647-2720', NULL, '', 0, NULL, NULL, 0),
(733, 'FASTSIGNS - 532', NULL, 'Jacksonville', 'FL', '32244', NULL, '0000-00-00', NULL, '(904) 771-7446', NULL, '', 0, NULL, NULL, 0),
(734, 'Absolute Services, LLC', NULL, 'Mobile', 'AL', '36605', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(735, 'M Designs Architects', NULL, 'Los Altos', 'CA', '94022', NULL, '0000-00-00', NULL, '(650) 565-9036 (408)', NULL, '', 0, NULL, NULL, 0),
(736, 'AAA Cleaning Genies, LLC', NULL, 'Luling', 'LA', '70070', NULL, '0000-00-00', NULL, '(504) 931-5005', NULL, '', 0, NULL, NULL, 0),
(737, 'Hodges Cleaning Company, Inc.', NULL, 'Saint Paul', 'MN', '55116', NULL, '0000-00-00', NULL, '(651) 587-9461', NULL, '', 0, NULL, NULL, 0);
INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `deleted`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(738, 'Outdoor Services Group', NULL, 'Millington', 'TN', '38053', NULL, '0000-00-00', NULL, '(901) 277-8680', NULL, '', 0, NULL, NULL, 0),
(739, 'Savvy Technical Support', NULL, 'Chestnut Ridge', 'NY', '10977', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(740, 'The Retla Group, Inc.', NULL, 'Far Rockaway', 'NY', '11691', NULL, '0000-00-00', NULL, '(718) 327-1181 (917)', NULL, '', 0, NULL, NULL, 0),
(741, 'Surface Renew', NULL, 'Belleville', 'WI', '53508', NULL, '0000-00-00', NULL, '(608) 212-0655', NULL, '', 0, NULL, NULL, 0),
(742, 'Ray\'s Solar Security, Inc.', NULL, 'Greencove Springs', 'FL', '32043', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(743, 'A.G. Concrete, LLC', NULL, 'Woodburn', 'IN', '46797', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(744, 'Top Building Maintenance', NULL, 'Chicago', 'IL', '60613', NULL, '0000-00-00', NULL, '(312) 217-0397', NULL, '', 0, NULL, NULL, 0),
(745, 'Carroll Highlands Masonry, Inc.', NULL, 'Manchester', 'MD', '21102', NULL, '0000-00-00', NULL, '(410) 239-7780 (443)', NULL, '', 0, NULL, NULL, 0),
(746, 'Data Star Engineering', NULL, 'Brooklyn', 'NY', '11236', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(747, 'Pure Cleaning Services', NULL, 'Perth Amboy', 'NJ', '8861', NULL, '0000-00-00', NULL, '(908) 930-4878', NULL, '', 0, NULL, NULL, 0),
(748, 'Green Tiger Softwash', NULL, 'Baton Rouge', 'LA', '70808', NULL, '0000-00-00', NULL, '(888) 434-4866', NULL, '', 0, NULL, NULL, 0),
(749, 'Simply Kleen, LLC', NULL, 'Girard', 'OH', '44420', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(750, 'Cascade Pools, Inc.', NULL, 'Orlando', 'FL', '32825', NULL, '0000-00-00', NULL, '(407) 341-8322', NULL, '', 0, NULL, NULL, 0),
(751, 'Alvin\'s Repairs', NULL, 'Kansas City', 'MO', '64152', NULL, '0000-00-00', NULL, '(816) 352-7650', NULL, '', 0, NULL, NULL, 0),
(752, 'Rightway Waterproofing Company, Inc.', NULL, 'Philadelphia', 'PA', '19134', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(753, 'Hewitt Pools', NULL, 'Effingham', 'SC', '29541', NULL, '0000-00-00', NULL, '(843) 665-8893 (843)', NULL, '', 0, NULL, NULL, 0),
(754, 'Alvin H. Holm, Jr. AIA Architect', NULL, 'Philadelphia', 'PA', '19103', NULL, '0000-00-00', NULL, '(215) 963-0747', NULL, '', 0, NULL, NULL, 0),
(755, 'Al\'s Landscaping & Excavating, LLC', NULL, 'Quarryville', 'PA', '17566', NULL, '0000-00-00', NULL, '(717) 940-9445', NULL, '', 0, NULL, NULL, 0),
(756, 'All About the Windows', NULL, 'Saraland', 'AL', '36571', NULL, '0000-00-00', NULL, '(251) 675-6921 (251)', NULL, '', 0, NULL, NULL, 0),
(757, 'New Sydken', NULL, 'Saint Charles', 'IL', '60175', NULL, '0000-00-00', NULL, '(866) 994-7688', NULL, '', 0, NULL, NULL, 0),
(758, 'Clean Plus Painting and Contracting', NULL, 'Dallas', 'TX', '75028', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(759, 'Alex Cleaning Service', NULL, 'Fredericksburg', 'VA', '22407', NULL, '0000-00-00', NULL, '(540) 786-7300 (540)', NULL, '', 0, NULL, NULL, 0),
(760, 'Integrity Real Estate Inspections, LLC', NULL, 'Juneau', 'AK', '99801', NULL, '0000-00-00', NULL, '(907) 321-5878', NULL, '', 0, NULL, NULL, 0),
(761, 'Amado Govea', NULL, 'Olathe', 'KS', '66062', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(762, 'Bellas Exterminator', NULL, 'Glendora', 'CA', '91741', NULL, '0000-00-00', NULL, '(626) 625-2869', NULL, '', 0, NULL, NULL, 0),
(763, 'Amalia\'s Cleaning Service', NULL, 'Kent', 'WA', '98023', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(764, 'Fusion Heating', NULL, 'Ontario', 'CA', '91762', NULL, '0000-00-00', NULL, '(760) 433-2511', NULL, '', 0, NULL, NULL, 0),
(765, 'Aloft Services', NULL, 'Chicago', 'IL', '60647', NULL, '0000-00-00', NULL, '(773) 598-9020', NULL, '', 0, NULL, NULL, 0),
(766, 'Dennisbilt, LLC', NULL, 'Kansas City', 'KS', '66112', NULL, '0000-00-00', NULL, '(913) 850-3956', NULL, '', 0, NULL, NULL, 0),
(767, 'Simple SOULutions Organizing, LLC', NULL, 'Golden', 'CO', '80401', NULL, '0000-00-00', NULL, '(720) 879-7790', NULL, '', 0, NULL, NULL, 0),
(768, 'A Woman\'s Agenda', NULL, 'Oklahoma City', 'OK', '73113', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(769, 'Marvin\'s Tree Service', NULL, 'Fort Wayne', 'IN', '46803', NULL, '0000-00-00', NULL, '(260) 449-1699 (260)', NULL, '', 0, NULL, NULL, 0),
(770, 'Black Thunder Roofing, LLC', NULL, 'Norman', 'OK', '73026', NULL, '0000-00-00', NULL, '(405) 833-6798 (405)', NULL, '', 0, NULL, NULL, 0),
(771, 'Design Studio 2010', NULL, 'Austin', 'TX', '78717', NULL, '0000-00-00', NULL, '(512) 299-1440', NULL, '', 0, NULL, NULL, 0),
(772, 'Custom Craftsman Construction', NULL, 'Pleasant Hill', 'IA', '50327', NULL, '0000-00-00', NULL, '(515) 210-0760', NULL, '', 0, NULL, NULL, 0),
(773, 'NJ Mobile Flooring Showroom, LLC', NULL, 'Kenilworth', 'NJ', '7033', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(774, 'Cornerstone Floor Covering, LLC', NULL, 'Beaufort', 'SC', '29907', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(775, 'Altered Construction, LLC', NULL, 'Vancouver', 'WA', '98682', NULL, '0000-00-00', NULL, '(360) 600-0768', NULL, '', 0, NULL, NULL, 0),
(776, 'Amanda Warren', NULL, 'Stokes', 'NC', '27884', NULL, '0000-00-00', NULL, '(252) 758-7149', NULL, '', 0, NULL, NULL, 0),
(777, 'Woods Landscape Design', NULL, 'Boiling Springs', 'SC', '29316', NULL, '0000-00-00', NULL, '(864) 202-5845', NULL, '', 0, NULL, NULL, 0),
(778, 'Gemoya Masonry', NULL, 'Redding', 'CA', '96003', NULL, '0000-00-00', NULL, '(530) 917-9493', NULL, '', 0, NULL, NULL, 0),
(779, 'AIS Appraising', NULL, 'Carlsbad', 'CA', '92009', NULL, '0000-00-00', NULL, '(760) 805-3607', NULL, '', 0, NULL, NULL, 0),
(780, 'Clear Blue Windows', NULL, 'McKinney', 'TX', '75071', NULL, '0000-00-00', NULL, '(972) 814-5724 (615)', NULL, '', 0, NULL, NULL, 0),
(781, 'Arthur Norman Co., Inc.', NULL, 'Dallas', 'TX', '75081', NULL, '0000-00-00', NULL, '(972) 437-6900', NULL, '', 0, NULL, NULL, 0),
(782, 'Interior Textiles and Goods, LLC', NULL, 'Tulsa', 'OK', '74105', NULL, '0000-00-00', NULL, '(918) 804-1717', NULL, '', 0, NULL, NULL, 0),
(783, 'A. Zarrelli Construction Company', NULL, 'Gloversville', 'NY', '12078', NULL, '0000-00-00', NULL, '(518) 725-5533', NULL, '', 0, NULL, NULL, 0),
(784, 'Delta P Incorporated, LLC', NULL, 'Buffalo', 'NY', '14211', NULL, '0000-00-00', NULL, '(716) 308-5043 (716)', NULL, '', 0, NULL, NULL, 0),
(785, 'My American Movers, Inc.', NULL, 'Van Nuys', 'CA', '91405', NULL, '0000-00-00', NULL, '(818) 781-9957 (818)', NULL, '', 0, NULL, NULL, 0),
(786, 'Cheap Bathtub Reglazing', NULL, 'Woodhaven', 'NY', '11421', NULL, '0000-00-00', NULL, '(347) 418-8591', NULL, '', 0, NULL, NULL, 0),
(787, 'A Vergara', NULL, 'Renton', 'WA', '98056', NULL, '0000-00-00', NULL, '(206) 883-4630', NULL, '', 0, NULL, NULL, 0),
(788, 'AMI Locksmith', NULL, 'Arlington', 'VA', '22206', NULL, '0000-00-00', NULL, '(888) 792-7467 (703)', NULL, '', 0, NULL, NULL, 0),
(789, 'Yahoo Construction Corporation', NULL, 'Elmont', 'NY', '11003', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(790, 'Amir Haghnegahdar', NULL, 'Chatsworth', 'CA', '91311', NULL, '0000-00-00', NULL, '(818) 495-5050', NULL, '', 0, NULL, NULL, 0),
(791, 'Quick Cooling, Inc.', NULL, 'Bergenfield', 'NJ', '7621', NULL, '0000-00-00', NULL, '(201) 206-8981', NULL, '', 0, NULL, NULL, 0),
(792, 'Sahuarita Plumbing, LLC', NULL, 'Tucson', 'AZ', '85750', NULL, '0000-00-00', NULL, '(520) 834-7834 (520)', NULL, '', 0, NULL, NULL, 0),
(793, 'Homework Remodeling, Inc.', NULL, 'Centerville', 'VA', '20120', NULL, '0000-00-00', NULL, '(703) 803-6500', NULL, '', 0, NULL, NULL, 0),
(794, 'CYA Electric, Inc', NULL, 'Tarzana', 'CA', '91356', NULL, '0000-00-00', NULL, '(818) 916-4864', NULL, '', 0, NULL, NULL, 0),
(795, 'Pacifika Appliance Repair', NULL, 'Sacramento', 'CA', '95835', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(796, 'Certified Mechanical Services, LLC', NULL, 'Rosedale', 'MD', '21237', NULL, '0000-00-00', NULL, '(443) 303-7991 (443)', NULL, '', 0, NULL, NULL, 0),
(797, 'Hostetler Roofing', NULL, 'Nashville', 'AR', '71852', NULL, '0000-00-00', NULL, '(870) 557-4797', NULL, '', 0, NULL, NULL, 0),
(798, 'All Renovation and Design, LLC', NULL, 'Lititz', 'PA', '17543', NULL, '0000-00-00', NULL, '(717) 575-1748', NULL, '', 0, NULL, NULL, 0),
(799, 'Banyan Enterprises, Inc.', NULL, 'Altoona', 'PA', '16601', NULL, '0000-00-00', NULL, '(814) 505-3164', NULL, '', 0, NULL, NULL, 0),
(800, 'Sunrise Service, LLC', NULL, 'Gordonville', 'PA', '17529', NULL, '0000-00-00', NULL, '(717) 768-8030', NULL, '', 0, NULL, NULL, 0),
(801, 'Cochranville Construction, LLC', NULL, 'Cochranville', 'PA', '19330', NULL, '0000-00-00', NULL, '(717) 917-8115', NULL, '', 0, NULL, NULL, 0),
(802, 'A.T.E. Painting, LLC', NULL, 'Saugus', 'MA', '1906', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(803, 'Atkins Upstate Homecare, LLC', NULL, 'Simpsonville', 'SC', '29680', NULL, '0000-00-00', NULL, '(864) 313-3481', NULL, '', 0, NULL, NULL, 0),
(804, 'Cyclean Services, LLC', NULL, 'Urbandale', 'IA', '50323', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(805, 'Insulating Pro\'s, LLC', NULL, 'Garland', 'TX', '75040', NULL, '0000-00-00', NULL, '(214) 550-0863 (214)', NULL, '', 0, NULL, NULL, 0),
(806, 'Mad Buddha, LLC', NULL, 'Baker City', 'OR', '97814', NULL, '0000-00-00', NULL, '(541) 519-3693', NULL, '', 0, NULL, NULL, 0),
(807, 'Timesavers at Your Service', NULL, 'Rochester', 'NY', '14625', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(808, 'Ridgeview Restoration, LLC', NULL, 'Lee\'s Summit', 'MO', '64064', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(809, 'Bath Center of Seattle Corporation', NULL, 'Redmond', 'WA', '98052', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(810, 'Heritage Home Services', NULL, 'Austin', 'TX', '78729', NULL, '0000-00-00', NULL, '(512) 436-2332 (512)', NULL, '', 0, NULL, NULL, 0),
(811, 'Dankyl Services', NULL, 'Greeley', 'CO', '80631', NULL, '0000-00-00', NULL, '(970) 373-5400', NULL, '', 0, NULL, NULL, 0),
(812, 'All Star Fence, LLC', NULL, 'Beavercreek', 'OH', '45431', NULL, '0000-00-00', NULL, '(937) 458-3558', NULL, '', 0, NULL, NULL, 0),
(813, 'Ground FX Flooring', NULL, 'Herrin', 'IL', '62948', NULL, '0000-00-00', NULL, '(618) 357-0807', NULL, '', 0, NULL, NULL, 0),
(814, 'Painted Perfect Faux You', NULL, 'Dacula', 'GA', '30019', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(815, 'Flawless Results Cleaning Services', NULL, 'Arlington', 'TX', '76002', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(816, 'Custom Leisure Pools', NULL, 'Lafayette', 'IN', '47905', NULL, '0000-00-00', NULL, '(317) 650-9971', NULL, '', 0, NULL, NULL, 0),
(817, 'Robertson Carpet, Inc.', NULL, 'Emory', 'TX', '75440', NULL, '0000-00-00', NULL, '(903) 473-8057 (903)', NULL, '', 0, NULL, NULL, 0),
(818, 'McFarlane Insulation Specialists', NULL, 'Mahwah', 'NJ', '7430', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(819, 'McFarlane Driveway Repair, Inc.', NULL, 'Mahwah', 'NJ', '7430', NULL, '0000-00-00', NULL, '(201) 560-0222', NULL, '', 0, NULL, NULL, 0),
(820, 'V.A.M.P. LLC', NULL, 'Parker', 'CO', '80134', NULL, '0000-00-00', NULL, '(720) 253-3791 (720)', NULL, '', 0, NULL, NULL, 0),
(821, 'Terra Bites Lawn Service, LLC', NULL, 'Braselton', 'GA', '30517', NULL, '0000-00-00', NULL, '(706) 389-5296', NULL, '', 0, NULL, NULL, 0),
(822, 'Simply Organize It', NULL, 'Westport', 'CT', '6880', NULL, '0000-00-00', NULL, '(917) 626-6919', NULL, '', 0, NULL, NULL, 0),
(823, 'Velasques Services', NULL, 'Grifton', 'NC', '28530', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(824, 'ZIII Service, Corp.', NULL, 'Jacksonville', 'FL', '32225', NULL, '0000-00-00', NULL, '(904) 262-7300 (904)', NULL, '', 0, NULL, NULL, 0),
(825, 'Talo\'s Masonry', NULL, 'Waterbury', 'CT', '6708', NULL, '0000-00-00', NULL, '(203) 597-8127 (203)', NULL, '', 0, NULL, NULL, 0),
(826, 'Power Cleaner Services', NULL, 'Newark', 'NJ', '7103', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(827, 'Brazilian Pavers, Inc.', NULL, 'Land O\' Lakes', 'FL', '34639', NULL, '0000-00-00', NULL, '(813) 299-9790', NULL, '', 0, NULL, NULL, 0),
(828, 'Reliable House Cleaning', NULL, 'Stafford', 'VA', '22554', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(829, 'Ana\'s House Cleaning Services, Inc.', NULL, 'Gaithersburg', 'MD', '20879', NULL, '0000-00-00', NULL, '(240) 486-1518', NULL, '', 0, NULL, NULL, 0),
(830, 'Speedy Flooring', NULL, 'Memphis', 'TN', '38115', NULL, '0000-00-00', NULL, '(901) 282-3897 (901)', NULL, '', 0, NULL, NULL, 0),
(831, 'Paula\'s Cleaning, LLC', NULL, 'Bridgeport', 'CT', '6604', NULL, '0000-00-00', NULL, '(203) 257-1197', NULL, '', 0, NULL, NULL, 0),
(832, 'CR Home Improvement, Inc.', NULL, 'Rockville', 'MD', '20851', NULL, '0000-00-00', NULL, '(301) 251-0274', NULL, '', 0, NULL, NULL, 0),
(833, 'Sky Restoration Services, LLC', NULL, 'Guilford', 'CT', '6437', NULL, '0000-00-00', NULL, '(203) 675-3760', NULL, '', 0, NULL, NULL, 0),
(834, 'Ana\'s Glass', NULL, 'Houston', 'TX', '77072', NULL, '0000-00-00', NULL, '(832) 606-2228 (713)', NULL, '', 0, NULL, NULL, 0),
(835, 'Falcon Tree Experts', NULL, 'Keizer', 'OR', '97303', NULL, '0000-00-00', NULL, '(877) 202-8337', NULL, '', 0, NULL, NULL, 0),
(836, 'Apex Garage Doors', NULL, 'Santa Rosa', 'CA', '95401', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(837, 'Toyo Maids', NULL, 'Gloucester', 'VA', '23601', NULL, '0000-00-00', NULL, '(804) 694-6804', NULL, '', 0, NULL, NULL, 0),
(838, 'ASR, LLC', NULL, 'Springfield', 'MO', '65807', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(839, 'Mr. Express Plumbing and Drain Cleaning, LLC', NULL, 'Lawrenceville', 'GA', '30046', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(840, 'AK Home Improvement, Inc.', NULL, 'San Francisco', 'CA', '94122', NULL, '0000-00-00', NULL, '(415) 279-1426', NULL, '', 0, NULL, NULL, 0),
(841, 'A Hernandez Landscaping', NULL, 'Houston', 'TX', '77060', NULL, '0000-00-00', NULL, '(281) 209-2788 (832)', NULL, '', 0, NULL, NULL, 0),
(842, 'Active Landscaping, LLC', NULL, 'Bowie', 'MD', '20715', NULL, '0000-00-00', NULL, '(855) 900-5296', NULL, '', 0, NULL, NULL, 0),
(843, 'General Masonry', NULL, 'Waterbury', 'CT', '6708', NULL, '0000-00-00', NULL, '(203) 757-5590 (203)', NULL, '', 0, NULL, NULL, 0),
(844, 'G E Cleaning Services', NULL, 'Manville', 'NJ', '8835', NULL, '0000-00-00', NULL, '(908) 202-3820', NULL, '', 0, NULL, NULL, 0),
(845, 'All Custom Aluminum', NULL, 'Tallahassee', 'FL', '32301', NULL, '0000-00-00', NULL, '(850) 524-0162', NULL, '', 0, NULL, NULL, 0),
(846, 'Bay Windows', NULL, 'Mobile', 'AL', '36604', NULL, '0000-00-00', NULL, '(251) 753-3480', NULL, '', 0, NULL, NULL, 0),
(847, 'AMD Wood Works', NULL, 'Walland', 'TN', '37886', NULL, '0000-00-00', NULL, '(865) 242-9209', NULL, '', 0, NULL, NULL, 0),
(848, 'Diaz Construction', NULL, 'Windsor Mill', 'MD', '21244', NULL, '0000-00-00', NULL, '(443) 629-0201', NULL, '', 0, NULL, NULL, 0),
(849, 'Special Services', NULL, 'Marlboro', 'MA', '1752', NULL, '0000-00-00', NULL, '(508) 481-6722 (774)', NULL, '', 0, NULL, NULL, 0),
(850, 'Super Screening, Inc.', NULL, 'Cape Coral', 'FL', '33993', NULL, '0000-00-00', NULL, '(239) 229-7411', NULL, '', 0, NULL, NULL, 0),
(851, 'Andre Gingras Electric', NULL, 'Broomfield', 'MA', '1010', NULL, '0000-00-00', NULL, '(508) 612-2456', NULL, '', 0, NULL, NULL, 0),
(852, 'Top Quality, LLC', NULL, 'Stone Mountain', 'GA', '30054', NULL, '0000-00-00', NULL, '(770) 597-8887', NULL, '', 0, NULL, NULL, 0),
(853, 'Limone Farm and Gardens, LLC', NULL, 'Teaneck', 'NJ', '7666', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(854, 'AOK Residential Services, LLC', NULL, 'Ambler', 'PA', '19002', NULL, '0000-00-00', NULL, '(610) 733-1581', NULL, '', 0, NULL, NULL, 0),
(855, 'Andre 4 Home Inspections', NULL, 'Pahrump', 'NV', '89060', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(856, 'Amazonia Landscaping', NULL, 'Hudson', 'MA', '1749', NULL, '0000-00-00', NULL, '(978) 808-2122', NULL, '', 0, NULL, NULL, 0),
(857, 'Appliance Repair R Us', NULL, 'Carlsbad', 'CA', '92009', NULL, '0000-00-00', NULL, '(858) 427-1500', NULL, '', 0, NULL, NULL, 0),
(858, 'The Hauling Men, LLC', NULL, 'Atlewood', 'GA', '30294', NULL, '0000-00-00', NULL, '(770) 778-1690', NULL, '', 0, NULL, NULL, 0),
(859, 'Poo Snatchers', NULL, 'Las Vegas', 'NV', '89162', NULL, '0000-00-00', NULL, '(702) 798-3660', NULL, '', 0, NULL, NULL, 0),
(860, 'Kitchen Solvers of the Valley', NULL, 'Danville', 'CA', '94506', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(861, 'RWA Restoration, LLC', NULL, 'Virginia Beach', 'VA', '23455', NULL, '0000-00-00', NULL, '(757) 630-5870 (757)', NULL, '', 0, NULL, NULL, 0),
(862, 'Organizing Wisdom', NULL, 'Croton Falls', 'NY', '10519', NULL, '0000-00-00', NULL, '(914) 276-2728', NULL, '', 0, NULL, NULL, 0),
(863, 'Inspiring Spaces, LLC', NULL, 'Rockaway', 'NJ', '7866', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(864, 'Final Touch Cleaning Services', NULL, 'Framingham', 'MA', '1702', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(865, 'AG Pool Service', NULL, 'La Quinta', 'CA', '92248', NULL, '0000-00-00', NULL, '(760) 578-8519', NULL, '', 0, NULL, NULL, 0),
(866, 'North Shore Paving, Inc.', NULL, 'Round Lake Heights', 'IL', '60073', NULL, '0000-00-00', NULL, '(847) 201-1710 (847)', NULL, '', 0, NULL, NULL, 0),
(867, 'Budget Blinds of West Palm Beach', NULL, 'Jupiter', 'FL', '33458', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(868, 'Grout Pro', NULL, 'Fort Mill', 'SC', '29707', NULL, '0000-00-00', NULL, '(704) 929-5739', NULL, '', 0, NULL, NULL, 0),
(869, 'Dorchester Awning Company', NULL, 'Pembroke', 'MA', '2359', NULL, '0000-00-00', NULL, '(781) 826-9001', NULL, '', 0, NULL, NULL, 0),
(870, 'Branch Water, Inc.', NULL, 'Lakeland', 'FL', '33811', NULL, '0000-00-00', NULL, '(863) 619-8214', NULL, '', 0, NULL, NULL, 0),
(871, 'Danny\'s Home Improvement, LLC', NULL, 'Silver Spring', 'MD', '20904', NULL, '0000-00-00', NULL, '(240) 286-7149', NULL, '', 0, NULL, NULL, 0),
(872, 'Pet Fence Systems, Inc.', NULL, 'Ortonville', 'MI', '48462', NULL, '0000-00-00', NULL, '(248) 627-1144', NULL, '', 0, NULL, NULL, 0),
(873, 'Andrea Troutman', NULL, 'Jacksonville', 'FL', '32218', NULL, '0000-00-00', NULL, '(904) 757-7290', NULL, '', 0, NULL, NULL, 0),
(874, 'A Fresh Solutions', NULL, 'Ojai', 'CA', '93023', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(875, 'Saunders General Contracting', NULL, 'Wake Forest', 'NC', '27587', NULL, '0000-00-00', NULL, '(919) 368-3114', NULL, '', 0, NULL, NULL, 0),
(876, 'Andreea Cleaning Services', NULL, 'Chicago', 'IL', '60641', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(877, 'Ovi\'s Flooring', NULL, 'Bessemer', 'AL', '35023', NULL, '0000-00-00', NULL, '(205) 902-3858', NULL, '', 0, NULL, NULL, 0),
(878, 'East Coast Construction Group, Inc.', NULL, 'Lynn', 'MA', '1902', NULL, '0000-00-00', NULL, '(781) 333-9889', NULL, '', 0, NULL, NULL, 0),
(879, 'Andrew\'s Home Remodeling', NULL, 'Lynn', 'MA', '1902', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(880, 'Stroika Construction Solutions, Inc.', NULL, 'Ocean City', 'MD', '21842', NULL, '0000-00-00', NULL, '(443) 373-3031 (443)', NULL, '', 0, NULL, NULL, 0),
(881, 'Andreia Abranches', NULL, 'Boca Raton', 'FL', '33433', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(882, 'First Class Building Maintenance, Inc.', NULL, 'Saginaw', 'MI', '48602', NULL, '0000-00-00', NULL, '(989) 752-7354', NULL, '', 0, NULL, NULL, 0),
(883, 'PR Painting Contractors', NULL, 'Falls Church', 'VA', '22044', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(884, 'DKL Services', NULL, 'Silver Springs', 'MD', '20906', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(885, 'Bryan Cleaning Service', NULL, 'Chelsea', 'MA', '2150', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(886, 'Imperial Home Services', NULL, 'Murdock', 'FL', '33938', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(887, 'Andrew\'s Carpet, Tile, and Upholstery Care', NULL, 'Tujunga', 'CA', '91042', NULL, '0000-00-00', NULL, '(661) 644-1724 (805)', NULL, '', 0, NULL, NULL, 0),
(888, 'Natures Nest Landscape', NULL, 'Boise', 'ID', '83709', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(889, 'Andrew Wingert', NULL, 'Center Burg', 'OH', '43011', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(890, 'Heartland Home Services, Ltd.', NULL, 'Uniontown', 'OH', '44685', NULL, '0000-00-00', NULL, '(330) 495-9997', NULL, '', 0, NULL, NULL, 0),
(891, 'Andrew Gregory', NULL, 'Kansas City', 'MO', '64110', NULL, '0000-00-00', NULL, '(816) 506-1639', NULL, '', 0, NULL, NULL, 0),
(892, 'Andrew P. Adams, PE', NULL, 'Palmer', 'AK', '99645', NULL, '0000-00-00', NULL, '(907) 947-9303', NULL, '', 0, NULL, NULL, 0),
(893, 'Pro Eco-Energy Audits', NULL, 'Scotland', 'PA', '17202', NULL, '0000-00-00', NULL, '(717) 446-0575', NULL, '', 0, NULL, NULL, 0),
(894, 'Censeo Valuation Consultants, LLC', NULL, 'Scottsdale', 'AZ', '85251', NULL, '0000-00-00', NULL, '(480) 718-5298', NULL, '', 0, NULL, NULL, 0),
(895, 'Pro Tech Power Corp.', NULL, 'Dallas', 'OR', '97338', NULL, '0000-00-00', NULL, '(503) 780-6207', NULL, '', 0, NULL, NULL, 0),
(896, 'Andriola\'s Cesspool Service, Inc.', NULL, 'Holbrook', 'NY', '11741', NULL, '0000-00-00', NULL, '(800) 924-4240', NULL, '', 0, NULL, NULL, 0),
(897, 'Mr. Rooter of Broward County', NULL, 'Pompano Beach', 'FL', '33064', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(898, 'Enchanted Granite', NULL, 'Pasadena', 'TX', '77059', NULL, '0000-00-00', NULL, '(281) 998-1700 (281)', NULL, '', 0, NULL, NULL, 0),
(899, 'Beckway Door', NULL, 'South Lyon', 'MI', '48178', NULL, '0000-00-00', NULL, '(800) 224-3667 (248)', NULL, '', 0, NULL, NULL, 0),
(900, 'Weed Man of Champaign', NULL, 'Champaign', 'IL', '61822', NULL, '0000-00-00', NULL, '(217) 355-2800 (217)', NULL, '', 0, NULL, NULL, 0),
(901, '459 Webster Ave., LLC', NULL, 'Larchmont', 'NY', '10538', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(902, 'Stellar Surfaces, Inc.', NULL, 'Huntington Beach', 'CA', '92648', NULL, '0000-00-00', NULL, '(949) 943-0581', NULL, '', 0, NULL, NULL, 0),
(903, 'Bongiorno Termite Control', NULL, 'Oakley', 'CA', '94561', NULL, '0000-00-00', NULL, '(925) 679-2847 (925)', NULL, '', 0, NULL, NULL, 0),
(904, 'A. Booher Handyman', NULL, 'Sonoma', 'CA', '95476', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(905, 'Andrew Ryan Carpentry, LLC', NULL, 'Stevensville', 'MD', '21666', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(906, 'Borcherding Contracting Group', NULL, 'Louisville', 'KY', '40253', NULL, '0000-00-00', NULL, '(502) 314-6939', NULL, '', 0, NULL, NULL, 0),
(907, 'Bruno Electric, Inc.', NULL, 'Saugus', 'MA', '1906', NULL, '0000-00-00', NULL, '(781) 589-6090', NULL, '', 0, NULL, NULL, 0),
(908, 'Andrew Buttermore Painting', NULL, 'Gretna', 'NE', '68028', NULL, '0000-00-00', NULL, '(402) 332-2540 (402)', NULL, '', 0, NULL, NULL, 0),
(909, 'York River Landscaping, LLC', NULL, 'York', 'ME', '3909', NULL, '0000-00-00', NULL, '(207) 351-5448', NULL, '', 0, NULL, NULL, 0),
(910, 'AC Campbell Customs', NULL, 'Mineral Springs', 'PA', '16855', NULL, '0000-00-00', NULL, '(814) 280-3398', NULL, '', 0, NULL, NULL, 0),
(911, 'Sugar Construction', NULL, 'Burlington', 'NC', '27215', NULL, '0000-00-00', NULL, '(336) 675-1240 (336)', NULL, '', 0, NULL, NULL, 0),
(912, 'Andrew Carter', NULL, 'Dedham', 'ME', '4429', NULL, '0000-00-00', NULL, '(207) 249-3885', NULL, '', 0, NULL, NULL, 0),
(913, 'Castle Pools, LLC', NULL, 'Jacksonville', 'FL', '32258', NULL, '0000-00-00', NULL, '(904) 962-3739', NULL, '', 0, NULL, NULL, 0),
(914, 'Vivax Pro Roofing, Inc.', NULL, 'Denver', 'CO', '80223', NULL, '0000-00-00', NULL, '(720) 290-9448', NULL, '', 0, NULL, NULL, 0),
(915, 'Chapman\'s Flooring, LLC', NULL, 'White House', 'TN', '37188', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(916, 'Jubilee Construction Company', NULL, 'Belleville', 'MI', '48111', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(917, 'A C Wiring Solutions', NULL, 'Alton', 'IL', '62002', NULL, '0000-00-00', NULL, '(618) 741-3860', NULL, '', 0, NULL, NULL, 0),
(918, 'Carpet Image, Inc.', NULL, 'New Rochelle', 'NY', '10801', NULL, '0000-00-00', NULL, '(914) 633-9314', NULL, '', 0, NULL, NULL, 0),
(919, 'A and J Environmental', NULL, 'Tiverton', 'RI', '2878', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(920, 'ServiceMaster PHS', NULL, 'Brunswick', 'ME', '4011', NULL, '0000-00-00', NULL, '(207) 729-6879 (207)', NULL, '', 0, NULL, NULL, 0),
(921, 'Complete Hardwood Floors', NULL, 'Tacoma', 'WA', '98404', NULL, '0000-00-00', NULL, '(253) 861-4142', NULL, '', 0, NULL, NULL, 0),
(922, 'Cross Home Builders, Inc.', NULL, 'Vestavia Hills', 'AL', '35243', NULL, '0000-00-00', NULL, '(205) 365-4088', NULL, '', 0, NULL, NULL, 0),
(923, 'AC\'s LawnCare', NULL, 'Anderson', 'IN', '46011', NULL, '0000-00-00', NULL, '(765) 621-7942', NULL, '', 0, NULL, NULL, 0),
(924, 'Deel\'s Remodeling', NULL, 'Elliston', 'VA', '24087', NULL, '0000-00-00', NULL, '(540) 580-0622', NULL, '', 0, NULL, NULL, 0),
(925, 'All Landscaping', NULL, 'Northborough', 'MA', '1532', NULL, '0000-00-00', NULL, '(508) 351-9883 (617)', NULL, '', 0, NULL, NULL, 0),
(926, 'Andrew Dennehy Architect P.C.', NULL, 'Tucson', 'AZ', '85716', NULL, '0000-00-00', NULL, '(520) 869-3065', NULL, '', 0, NULL, NULL, 0),
(927, 'Desormier Home Improvement', NULL, 'Chicopee', 'MA', '1020', NULL, '0000-00-00', NULL, '(413) 250-2853', NULL, '', 0, NULL, NULL, 0),
(928, 'Andrew DeVillers', NULL, 'Atascadera', 'CA', '93422', NULL, '0000-00-00', NULL, '(805) 550-2893', NULL, '', 0, NULL, NULL, 0),
(929, 'Hallahan Home Maintenance', NULL, 'Bridgeport', 'CT', '6604', NULL, '0000-00-00', NULL, '(203) 540-9260', NULL, '', 0, NULL, NULL, 0),
(930, 'Hope Building Services, Inc.', NULL, 'Warren', 'OH', '44483', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(931, 'Donohue Home Services', NULL, 'Clifton Heights', 'PA', '19018', NULL, '0000-00-00', NULL, '(484) 461-9201', NULL, '', 0, NULL, NULL, 0),
(932, 'Droege Plumbing', NULL, 'Marietta', 'PA', '17547', NULL, '0000-00-00', NULL, '(717) 880-6202', NULL, '', 0, NULL, NULL, 0),
(933, 'ARC Electric, LLC', NULL, 'Fanwood', 'NJ', '7023', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(934, 'Elite Environments, LLC', NULL, 'Buford', 'GA', '30519', NULL, '0000-00-00', NULL, '(404) 731-8750', NULL, '', 0, NULL, NULL, 0),
(935, 'Andrew Etchen Plumber\'s Service, Inc.', NULL, 'Livonia', 'MI', '48154', NULL, '0000-00-00', NULL, '(313) 794-2609', NULL, '', 0, NULL, NULL, 0),
(936, 'Water Pro, Inc.', NULL, 'Dacula', 'GA', '30019', NULL, '0000-00-00', NULL, '(404) 822-8632', NULL, '', 0, NULL, NULL, 0),
(937, 'Molalla Masonry, Inc.', NULL, 'Canby', 'OR', '97013', NULL, '0000-00-00', NULL, '(503) 709-8930', NULL, '', 0, NULL, NULL, 0),
(938, 'FDX Restoration, Inc.', NULL, 'Norwalk', 'CT', '6854', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(939, 'All American Comfort Consultants, LLC', NULL, 'Lacey\'s Spring', 'AL', '35754', NULL, '0000-00-00', NULL, '(256) 498-2630', NULL, '', 0, NULL, NULL, 0),
(940, 'Premier Scapes', NULL, 'Forrest', 'IL', '61741', NULL, '0000-00-00', NULL, '(815) 243-8629', NULL, '', 0, NULL, NULL, 0),
(941, 'ANDREW GERHARDT CONSTRUCTION', NULL, 'Sherburn', 'MN', '56171', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(942, 'KC Tree Service', NULL, 'Pocono Summit', 'PA', '18346', NULL, '0000-00-00', NULL, '(570) 656-0204', NULL, '', 0, NULL, NULL, 0),
(943, 'AWG Residential Painting', NULL, 'Bala Cynwyd', 'PA', '19004', NULL, '0000-00-00', NULL, '(610) 613-8542', NULL, '', 0, NULL, NULL, 0),
(944, 'Grand Enterprises, LLC', NULL, 'Manaapan', 'NJ', '7726', NULL, '0000-00-00', NULL, '(908) 338-2800', NULL, '', 0, NULL, NULL, 0),
(945, 'AG Construction, LLC', NULL, 'Pittsboro', 'NC', '27312', NULL, '0000-00-00', NULL, '(919) 200-1313', NULL, '', 0, NULL, NULL, 0),
(946, 'Alpine Insulation Solutions', NULL, 'Pittsburgh', 'PA', '15237', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(947, 'Alpine Heating & Air Conditioning', NULL, 'Creswell', 'OR', '97426', NULL, '0000-00-00', NULL, '(541) 688-0426 (541)', NULL, '', 0, NULL, NULL, 0),
(948, 'Alpine Heating & Air Conditioning', NULL, 'Creswell', 'OR', '97426', NULL, '0000-00-00', NULL, '(541) 688-0426 (541)', NULL, '', 0, NULL, NULL, 0),
(949, 'Haynes Cleaning Services', NULL, 'White Salmon', 'WA', '98672', NULL, '0000-00-00', NULL, '(509) 281-1177', NULL, '', 0, NULL, NULL, 0),
(950, 'Great Care, LLC', NULL, 'Worcester', 'MA', '1605', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(951, 'Sky High Architecture', NULL, 'Geneva', 'NY', '14456', NULL, '0000-00-00', NULL, '(585) 748-5522', NULL, '', 0, NULL, NULL, 0),
(952, 'Andrew\'s Lawn Service', NULL, 'East Flat Rock', 'NC', '28726', NULL, '0000-00-00', NULL, '(828) 702-4983', NULL, '', 0, NULL, NULL, 0),
(953, 'Andrew House Drywall', NULL, 'Plainfield', 'IN', '46168', NULL, '0000-00-00', NULL, '(317) 839-4052 (317)', NULL, '', 0, NULL, NULL, 0),
(954, 'Hudson Custom Fabrication', NULL, 'Smyrna', 'GA', '30082', NULL, '0000-00-00', NULL, '(770) 401-4412', NULL, '', 0, NULL, NULL, 0),
(955, 'Husbands Remodeling Company', NULL, 'Prattville', 'AL', '36067', NULL, '0000-00-00', NULL, '(334) 306-4482', NULL, '', 0, NULL, NULL, 0),
(956, 'Andrews Glass Company', NULL, 'Olathe', 'KS', '66062', NULL, '0000-00-00', NULL, '(816) 294-1259', NULL, '', 0, NULL, NULL, 0),
(957, 'Girons Tree Service, LLC', NULL, 'Elizabeth', 'NJ', '8822', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(958, 'Andy Jones Roofing, LLC', NULL, 'Sanford', 'FL', '32771', NULL, '0000-00-00', NULL, '(407) 314-0160 (407)', NULL, '', 0, NULL, NULL, 0),
(959, 'The Austin Home Inspector', NULL, 'Austin', 'TX', '78751', NULL, '0000-00-00', NULL, '(512) 788-1001', NULL, '', 0, NULL, NULL, 0),
(960, 'Kemm Builders And Contracting', NULL, 'Oreland', 'PA', '19075', NULL, '0000-00-00', NULL, '(215) 915-9824', NULL, '', 0, NULL, NULL, 0),
(961, 'Royal Lawn Service, LLC', NULL, 'Independence', 'MO', '64055', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(962, 'Lucky Duct', NULL, 'Lone Tree', 'CO', '80124', NULL, '0000-00-00', NULL, '(303) 246-5475', NULL, '', 0, NULL, NULL, 0),
(963, 'EA Precision Builders, Inc.', NULL, 'McHenry', 'IL', '60050', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(964, 'Knoll Construction', NULL, 'Lakeside', 'CA', '92040', NULL, '0000-00-00', NULL, '(619) 488-0351', NULL, '', 0, NULL, NULL, 0),
(965, 'Clean Cut Lawn and Tree Service, LLC', NULL, 'Bridgewater', 'NJ', '8807', NULL, '0000-00-00', NULL, '(609) 815-6828 (908)', NULL, '', 0, NULL, NULL, 0),
(966, 'Andrew Krehbiel Renew Carpentry', NULL, 'Springfield', 'PA', '19064', NULL, '0000-00-00', NULL, '(206) 715-6024', NULL, '', 0, NULL, NULL, 0),
(967, 'Andrew Kruser', NULL, 'Kieler', 'WI', '53812', NULL, '0000-00-00', NULL, '(563) 543-6276', NULL, '', 0, NULL, NULL, 0),
(968, 'Electrical Partners of Central Florida, LLC', NULL, 'Orlando', 'FL', '32825', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(969, 'Lee Classic Homes, Inc.', NULL, 'Advance', 'NC', '27006', NULL, '0000-00-00', NULL, '(336) 705-8485', NULL, '', 0, NULL, NULL, 0),
(970, 'Lindsey Landscaping', NULL, 'Loxley', 'AL', '36551', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(971, 'ALC Contractors, LLC', NULL, 'Owings Mills', 'MD', '21117', NULL, '0000-00-00', NULL, '(410) 356-7300 (443)', NULL, '', 0, NULL, NULL, 0),
(972, 'GreenPro, Inc.', NULL, 'Salem', 'MA', '1970', NULL, '0000-00-00', NULL, '(978) 609-4381', NULL, '', 0, NULL, NULL, 0),
(973, 'Fido\'s Fenceless Fences, LLC', NULL, 'Sartell', 'MN', '56377', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(974, 'Elite HomeCare, LLC', NULL, 'Boiling Springs', 'SC', '29316', NULL, '0000-00-00', NULL, '(864) 804-8585', NULL, '', 0, NULL, NULL, 0),
(975, 'Andrew Martin Builder, LLC', NULL, 'Jonestown', 'PA', '17038', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(976, 'AmeroVent', NULL, 'Cape Coral', 'FL', '33909', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(977, 'Mac\'s Plumbing', NULL, 'Pell City', 'AL', '35125', NULL, '0000-00-00', NULL, '(205) 965-0404', NULL, '', 0, NULL, NULL, 0),
(978, 'East Coat Driveway Sealing', NULL, 'Clinton', 'CT', '6413', NULL, '0000-00-00', NULL, '(860) 669-6500 (203)', NULL, '', 0, NULL, NULL, 0),
(979, 'Aquatech Raingutters', NULL, 'San Diego', 'CA', '92107', NULL, '0000-00-00', NULL, '(619) 248-9297', NULL, '', 0, NULL, NULL, 0),
(980, 'Arrow Exterminating', NULL, 'Conifer', 'CO', '80433', NULL, '0000-00-00', NULL, '(888) 737-8266', NULL, '', 0, NULL, NULL, 0),
(981, 'Miller Insulation, LLC', NULL, 'Munfordsville', 'KY', '42765', NULL, '0000-00-00', NULL, '(270) 537-4256 (270)', NULL, '', 0, NULL, NULL, 0),
(982, 'Botetourt Lawn Works', NULL, 'Troutville', 'VA', '24175', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(983, 'Dura Pro Painting, LLC', NULL, 'Minneapolis', 'MN', '55414', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(984, 'Complete Pressure Washing, LLC', NULL, 'Kansas City', 'MO', '64151', NULL, '0000-00-00', NULL, '(816) 665-6982', NULL, '', 0, NULL, NULL, 0),
(985, 'Five Star Doors, LLC', NULL, 'Farmington', 'MI', '48336', NULL, '0000-00-00', NULL, '(248) 476-7233', NULL, '', 0, NULL, NULL, 0),
(986, 'A. Murphy, LLC', NULL, 'Montclair', 'NJ', '7043', NULL, '0000-00-00', NULL, '(973) 900-0862', NULL, '', 0, NULL, NULL, 0),
(987, 'Emerald Isle Tile, LLC', NULL, 'Seattle', 'WA', '98103', NULL, '0000-00-00', NULL, '(206) 466-2995', NULL, '', 0, NULL, NULL, 0),
(988, 'Andi\'s Fenceall', NULL, 'Glenwood', 'MN', '56334', NULL, '0000-00-00', NULL, '(320) 634-0809 (320)', NULL, '', 0, NULL, NULL, 0),
(989, 'Great Home Restorations', NULL, 'Georgetown', 'MA', '1833', NULL, '0000-00-00', NULL, '(978) 265-7166', NULL, '', 0, NULL, NULL, 0),
(990, 'A.O.K. Lawn Care', NULL, 'Derry', 'NH', '3038', NULL, '0000-00-00', NULL, '(603) 289-8000', NULL, '', 0, NULL, NULL, 0),
(991, 'Air Temp Mechanical, Inc.', NULL, 'Galt', 'CA', '95632', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(992, 'AP Restoration, LLC', NULL, 'Greenwood', 'SC', '29648', NULL, '0000-00-00', NULL, '(864) 227-2777 (843)', NULL, '', 0, NULL, NULL, 0),
(993, 'Andy\'s Handyman Service', NULL, 'Clinton', 'CT', '6413', NULL, '0000-00-00', NULL, '(860) 227-2950', NULL, '', 0, NULL, NULL, 0),
(994, 'AJR Wallboard and Plastering', NULL, 'Westford', 'MA', '1886', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(995, 'A J Technologies', NULL, 'Sanger', 'CA', '93657', NULL, '0000-00-00', NULL, '(559) 473-4523', NULL, '', 0, NULL, NULL, 0),
(996, 'Eco Green, LLC', NULL, 'Bloomington', 'MN', '55431', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(997, 'Andrew D. Jacob\'s Home Improvement', NULL, 'Waterbury', 'CT', '6704', NULL, '0000-00-00', NULL, '(860) 689-6556', NULL, '', 0, NULL, NULL, 0),
(998, 'Andrew Sailor', NULL, 'Marysville', 'OH', '43040', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0),
(999, 'Atomic Air Mechanical, LLC', NULL, 'Littleton', 'CO', '80123', NULL, '0000-00-00', NULL, '(303) 935-1944', NULL, '', 0, NULL, NULL, 0),
(1000, 'Shelton Painting, LLC', NULL, 'Lacona', 'IA', '50139', NULL, '0000-00-00', NULL, ' ', NULL, '', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clientstemp`
--

CREATE TABLE `clientstemp` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT '0',
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `closingdate` varchar(50) DEFAULT '',
  `shakenumber` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `closingdate`, `shakenumber`) VALUES
(1, 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customerName`, `phno`, `city`, `address`) VALUES
(1, 'Rizwan Khan', '9673615896', 'Nagpur', 'Plot No 62 Teachers Colony'),
(1, 'Rizwan Khan', '9673615896', 'Nagpur', 'Plot No 62 Teachers Colony'),
(2, 'Khurram Khan', '1234567890', 'Nagpur', 'Plot No 63 Teachers Colony'),
(3, 'Sami Khan', '4598374650', 'Nagpur', 'Plot No 62 Teachers Colony'),
(4, 'Saima Khan', '099123456', 'Nagpur', 'Plot No 62 Teachers Colony');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`id`, `name`, `status`, `created`) VALUES
(1, 'Sam', 1, '2018-06-20 12:05:33'),
(2, 'Tom', 1, '2018-06-20 12:05:33'),
(3, 'Steward', 0, '2018-06-20 12:06:10'),
(4, 'Simpson', 1, '2018-06-20 12:06:10'),
(5, 'Stephen', 0, '2018-06-20 12:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(10) NOT NULL,
  `products` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `products`) VALUES
(1, 'I1,I2,I5'),
(2, 'I2,I4'),
(3, 'I2,I3'),
(4, 'I1,I2,I4'),
(5, 'I1,I3'),
(6, 'I2,I3'),
(7, 'I1,I3'),
(8, 'I1,I2,I3,I5'),
(9, 'I1,I2,I3');

-- --------------------------------------------------------

--
-- Table structure for table `datetime_table`
--

CREATE TABLE `datetime_table` (
  `id` int(11) NOT NULL,
  `datetime_col` datetime(6) DEFAULT NULL,
  `timestamp_col` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datetime_table`
--

INSERT INTO `datetime_table` (`id`, `datetime_col`, `timestamp_col`) VALUES
(1, '2018-04-10 00:00:00.000000', '2018-04-05 21:36:13.000000'),
(2, '2018-04-10 00:00:00.000000', '2018-04-05 21:36:13.000000'),
(3, NULL, NULL),
(4, '2018-04-06 03:06:00.000000', '2018-04-05 21:36:00.000000'),
(5, '2018-04-10 00:00:00.000000', '2018-04-05 21:36:00.000000'),
(6, '2018-04-10 00:00:00.000000', '2018-04-05 21:36:13.000000'),
(7, '2018-04-06 03:06:13.000000', '2018-04-05 21:36:13.000000'),
(8, NULL, NULL),
(9, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(10, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(11, NULL, NULL),
(12, NULL, NULL),
(13, NULL, NULL),
(14, '2018-10-08 00:00:00.000000', '2018-08-09 18:30:00.000000'),
(15, '2018-10-08 00:00:00.000000', NULL),
(16, NULL, NULL),
(17, NULL, '2018-10-08 07:43:03.000000'),
(18, NULL, '2018-10-08 07:57:46.000000'),
(19, '2018-10-08 00:00:00.000000', NULL),
(20, '2018-10-08 00:00:00.000000', '2018-10-08 07:20:45.000000'),
(21, NULL, '2018-10-07 19:20:45.000000'),
(22, NULL, '2018-10-08 07:20:45.000000'),
(23, NULL, NULL),
(24, NULL, NULL),
(25, NULL, NULL),
(26, NULL, NULL),
(27, '2018-10-31 11:36:28.000000', '2018-10-31 06:06:28.000000'),
(28, '1955-01-19 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `deviceID` int(11) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `deviceID`, `state`) VALUES
(1, 1, 'on'),
(2, 2, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `dt`
--

CREATE TABLE `dt` (
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt`
--

INSERT INTO `dt` (`datetime`) VALUES
('2017-04-23 11:22:58'),
('0028-10-07 11:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `encuser`
--

CREATE TABLE `encuser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `birthdate` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encuser`
--

INSERT INTO `encuser` (`id`, `firstname`, `lastname`, `email`, `birthdate`, `password`) VALUES
(9, 'Foo', 'Bar', 'foo@bar.com', NULL, '5f4dcc3b5aa765d61d8327deb882cf99'),
(11, 'Foo', 'Bar', 'foo@bar.com', NULL, '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `frequent`
--

CREATE TABLE `frequent` (
  `id` int(10) NOT NULL,
  `products` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `associateid` int(11) DEFAULT NULL COMMENT 'The Guest Only Invited By An Associates',
  `categoryid` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `day` int(50) DEFAULT '0',
  `dob` varchar(50) DEFAULT '',
  `date` varchar(50) DEFAULT '',
  `paid` decimal(10,1) DEFAULT '0.0',
  `comments` varchar(500) DEFAULT '',
  `isMember` int(11) DEFAULT '0' COMMENT 'This column contains 0 if the user still guest otherwise if 30 days over then we set it to 1. if the isMember is -1 Then the guest is become an associats',
  `paidbalance` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `associateid`, `categoryid`, `name`, `mobile`, `day`, `dob`, `date`, `paid`, `comments`, `isMember`, `paidbalance`) VALUES
(2, 2, 1, 'Guest B', '1111111111', 1, '06-08-1994', '05-09-2016', '1100.0', 'i paid 600', 0, 'Balance'),
(3, 2, 1, 'Guest Guest C', '1234567890', 1, '04-07-1994', '04-07-2016', '0.0', 'first day', 0, 'Balance'),
(4, 1, 1, 'Sajid Khan', '1234567890', 2, '05-08-1985', '05-07-2016', '500.0', 'First Day Of Sajid Khan Paid Nothing and still nothing paid', 0, 'Balance'),
(5, 1, 1, 'Arham Imran Khan', '1478523690', 1, '06-06-1985', '05-07-2016', '0.0', 'Nothing Paid first day', 0, 'Balance'),
(9, 1, 1, 'RR', '1111111111', 2, '04-07-1986', '21-6-2016', '1500.0', 'First Day', 0, ''),
(10, 4, 1, 'Faraz Khan', '1234567890', 0, '05-07-1985', '25-6-2016', '0.0', 'First Day', 0, ''),
(12, 1, 1, 'A', '1234567890', 0, '03-07-1987', '25-6-2016', '0.0', 'First Day', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `hom`
--

CREATE TABLE `hom` (
  `id` int(11) NOT NULL,
  `sr` varchar(50) DEFAULT '',
  `name` varchar(200) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `invitedby` varchar(50) DEFAULT '',
  `fees` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lifestylepenta`
--

CREATE TABLE `lifestylepenta` (
  `id` int(11) NOT NULL,
  `switches` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `types` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `description` varchar(200) CHARACTER SET utf8 DEFAULT '',
  `plates` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `module` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `dimension` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `code` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `hsncode` int(11) DEFAULT '0',
  `mrp1` decimal(11,0) DEFAULT '0',
  `pkg` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lifestylepenta`
--

INSERT INTO `lifestylepenta` (`id`, `switches`, `types`, `description`, `plates`, `module`, `dimension`, `code`, `hsncode`, `mrp1`, `pkg`) VALUES
(1, 'SWITCHES', ' ', '6AX ,2 Way Swtich, 1M', ' ', ' ', ' ', '65002', 8536, '62', 20),
(2, 'SWITCHES', ' ', '6A, Bell Push, 1M', ' ', ' ', ' ', '65003', 8536, '63', 20),
(3, 'SWITCHES', ' ', '6A, Bell Push with Neon, 2M', ' ', ' ', ' ', '65066', 8536, '90', 10),
(4, 'SWITCHES', ' ', '16AX ,1 Way Swtich, 1M', ' ', ' ', ' ', '65007', 8536, '76', 10),
(5, 'SWITCHES', ' ', '16AX ,2 Way Swtich, 1M', ' ', ' ', ' ', '65008', 8536, '99', 10),
(6, 'SWITCHES', ' ', '16A ,2 Way Swtich, 2M', ' ', ' ', ' ', '65010', 8536, '119', 10),
(7, 'SWITCHES', ' ', '16AX ,1 Way Swtich with Neon, 1M', ' ', ' ', ' ', '65077', 8536, '84', 10),
(8, 'SWITCHES', ' ', '25A, SP 1 Way Swtich with Neon, 1M', ' ', ' ', ' ', '65025', 8536, '108', 10),
(9, 'SWITCHES', ' ', '32A , DP 1 Way Swtich with Neon, 2M', ' ', ' ', ' ', '65032', 8536, '146', 10),
(10, 'SOCKETS', ' ', '6A, Uro 2 pin Socket, 1M', ' ', ' ', ' ', '65201', 8536, '63', 10),
(11, 'SOCKETS', ' ', '6A, 2 in 1 Socket (W/O Shutter), 2M', ' ', ' ', ' ', '65202', 8536, '80', 10),
(12, 'SOCKETS', ' ', '6A, 2 in 1 Socket (with Shutter), 2M', ' ', ' ', ' ', '65222', 8536, '84', 10),
(13, 'SOCKETS', ' ', '6A, 3 pin Socket, 2M', ' ', ' ', ' ', '65203', 8536, '76', 10),
(14, 'SOCKETS', ' ', '16A, 3 pin Socket, 2M', ' ', ' ', ' ', '65204', 8536, '131', 10),
(15, 'SOCKETS', ' ', '6/16A, Twin Socket , 2M', ' ', ' ', ' ', '65205', 8536, '130', 10),
(16, 'SOCKETS', ' ', '6/10/13A, Combi Socket For all Pins, 2M', ' ', ' ', ' ', '65206', 8536, '131', 10),
(17, 'SUPPORT FUNCTION', ' ', 'Cord outlet, 1M', ' ', ' ', ' ', '65501', 8536, '53', 20),
(18, 'SUPPORT FUNCTION', ' ', 'TV Socket Outlet Signal, 1M', ' ', ' ', ' ', '65502', 8536, '69', 20),
(19, 'SUPPORT FUNCTION', ' ', 'Blank Plate Signal, 1M', ' ', ' ', ' ', '65503', 8536, '17', 50),
(20, 'SUPPORT FUNCTION', ' ', 'Neon Indicator Red, 1M', ' ', ' ', ' ', '65504', 8536, '58', 20),
(21, 'SUPPORT FUNCTION', ' ', 'Resettable Fuse Unit 6A 240V~', ' ', ' ', ' ', '65508', 8536, '94', 20),
(22, 'SUPPORT FUNCTION', ' ', 'Resettable Fuse Unit 16A 240V~', ' ', ' ', ' ', '65509', 8536, '112', 20),
(23, 'SUPPORT FUNCTION', ' ', 'USB Charger, 1M 1000mA, 5V DC', ' ', ' ', ' ', '65505', 8536, '666', 20),
(24, 'SUPPORT FUNCTION', ' ', 'Buzzer, 2M', ' ', ' ', ' ', '65710', 8536, '116', 10),
(25, 'COMMUNICATION AND DATA SOCKET', ' ', 'RJ11, Tel Jack with shutter, 1M', ' ', ' ', ' ', '65610', 8536, '74', 20),
(26, 'COMMUNICATION AND DATA SOCKET', ' ', 'RJ45, Receptor, 1M', ' ', ' ', ' ', '65620', 8536, '122', 20),
(27, 'COMMUNICATION AND DATA SOCKET', ' ', 'Computer Jack RJ45(Cat5e), 1M', ' ', ' ', ' ', '65621', 8536, '360', 10),
(28, 'COMMUNICATION AND DATA SOCKET', ' ', 'Computer Jack RJ45(Cat6e), 1M', ' ', ' ', ' ', '65622', 8536, '436', 10),
(29, 'FOOT LIGHT', ' ', 'Foot Light LED Based with 3M Plate(Cool Day Light) 230V~ - 50Hz', ' ', ' ', ' ', '65075', 9405, '365', 6),
(30, 'FOOT LIGHT', ' ', 'Foot Light LED Based with 3M Plate(Warm White Light) 230V~ - 50Hz', ' ', ' ', ' ', '65076', 9405, '365', 6),
(31, 'FOOT LIGHT', ' ', 'Foot Light LED Based with 3M GINA  Plate(Cool Day Light) 230V~ - 50Hz', ' ', ' ', ' ', '65075-C', 9405, '389', 6),
(32, 'FOOT LIGHT', ' ', 'Foot Light LED Based with 3M GINA  Plate(Warm White Light) 230V~ - 50Hz', ' ', ' ', ' ', '65076-C', 9405, '389', 6),
(33, 'KEY CARD', ' ', 'Keycard Unit with 30 sec delay with 3M plate, 240V~20A(Without Card)', ' ', ' ', ' ', '65703', 8536, '1615', 6),
(34, 'KEY CARD', ' ', 'Keycard Unit with 30 sec delay with 3M GINA plate, 240V~20A(Without Card)', ' ', ' ', ' ', '65703-C', 8536, '1638', 6),
(35, 'Shaver Socket', ' ', 'Shaver Socket with Regular Plate 240V ~ 20A', ' ', ' ', ' ', '65707', 8538, '1703', 6),
(36, 'Shaver Socket', ' ', 'Shaver Socket with GINA Plate 240V ~ 20A', ' ', ' ', ' ', '65707-C', 8538, '1736', 6),
(37, 'DND MMR UNIT', ' ', 'DND MMR Internal unit 2M', ' ', ' ', ' ', '65708', 8536, '344', 6),
(38, 'DND MMR UNIT', ' ', 'DND MMR External unit 2M', ' ', ' ', ' ', '65709', 8536, '515', 6),
(39, 'MINI MODULAR MSB ', 'SINGLE PLOE', '6A  SP  \"C\" Mini MCB', ' ', ' ', ' ', '65980', 8536, '173', 12),
(40, 'MINI MODULAR MSB ', 'SINGLE PLOE', '10A  SP  \"C\" Mini MCB', ' ', ' ', ' ', '65981', 8536, '173', 12),
(41, 'MINI MODULAR MSB ', 'SINGLE PLOE', '16A  SP  \"C\" Mini MCB', ' ', ' ', ' ', '65982', 8536, '173', 12),
(42, 'MINI MODULAR MSB ', 'SINGLE PLOE', '20A  SP  \"C\" Mini MCB', ' ', ' ', ' ', '65983', 8536, '179', 12),
(43, 'MINI MODULAR MSB ', 'SINGLE PLOE', '25A  SP  \"C\" Mini MCB', ' ', ' ', ' ', '65984', 8536, '179', 12),
(44, 'MINI MODULAR MSB ', 'SINGLE PLOE', '32A  SP  \"C\" Mini MCB', ' ', ' ', ' ', '65985', 8536, '185', 12),
(45, 'MINI MODULAR MSB ', 'DOUBLE POLE', '6A  DP  \"C\" Mini MCB', ' ', ' ', ' ', '65989', 8536, '336', 6),
(46, 'MINI MODULAR MSB ', 'DOUBLE POLE', '10A  DP  \"C\" Mini MCB', ' ', ' ', ' ', '65990', 8536, '336', 6),
(47, 'MINI MODULAR MSB ', 'DOUBLE POLE', '16A  DP  \"C\" Mini MCB', ' ', ' ', ' ', '65991', 8536, '336', 6),
(48, 'MINI MODULAR MSB ', 'DOUBLE POLE', '20A  DP  \"C\" Mini MCB', ' ', ' ', ' ', '65992', 8536, '336', 6),
(49, 'MINI MODULAR MSB ', 'DOUBLE POLE', '25A  DP  \"C\" Mini MCB', ' ', ' ', ' ', '65993', 8536, '336', 6),
(50, 'MINI MODULAR MSB ', 'DOUBLE POLE', '32A  DP  \"C\" Mini MCB', ' ', ' ', ' ', '65994', 8536, '336', 6),
(51, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 1', ' ', '65901', 8538, '51', 20),
(52, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 2', ' ', '65902', 8538, '51', 20),
(53, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 3', ' ', '65903', 8538, '71', 20),
(54, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 4', ' ', '65904', 8538, '81', 20),
(55, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 6', ' ', '65906', 8538, '117', 10),
(56, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module HORIZONTAL 8', ' ', '65908', 8538, '153', 10),
(57, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module VERTICAL 8', ' ', '65988', 8538, '153', 5),
(58, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 12', ' ', '65912', 8538, '184', 5),
(59, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 16', ' ', '65916', 8538, '196', 5),
(60, 'Penta Modular', ' ', ' ', 'Regular Plates', 'module 18', ' ', '65918', 8538, '207', 5),
(61, 'GINA PLATES', ' ', ' ', ' ', 'module 1', ' ', '65801', 8538, '58', 5),
(62, 'GINA PLATES', ' ', ' ', ' ', 'module 2', ' ', '65802', 8538, '58', 5),
(63, 'GINA PLATES', ' ', ' ', ' ', 'module 3', ' ', '65803', 8538, '84', 5),
(64, 'GINA PLATES', ' ', ' ', ' ', 'module 4', ' ', '65804', 8538, '91', 5),
(65, 'GINA PLATES', ' ', ' ', ' ', 'module 6', ' ', '65806', 8538, '137', 5),
(66, 'GINA PLATES', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65808', 8538, '178', 5),
(67, 'GINA PLATES', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65888', 8538, '178', 5),
(68, 'GINA PLATES', ' ', ' ', ' ', 'module 12', ' ', '65812', 8538, '216', 5),
(69, 'GINA PLATES', ' ', ' ', ' ', 'module 16', ' ', '65816', 8538, '227', 5),
(70, 'GINA PLATES', ' ', ' ', ' ', 'module 18', ' ', '65818', 8538, '243', 5),
(71, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 1', ' ', '65901FF', 8538, '57', 5),
(72, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 2', ' ', '65902FF', 8538, '57', 5),
(73, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 3', ' ', '65903FF', 8538, '77', 5),
(74, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 4', ' ', '65904FF', 8538, '87', 5),
(75, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 6', ' ', '65906FF', 8538, '128', 5),
(76, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908FF', 8538, '164', 5),
(77, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988FF', 8538, '164', 5),
(78, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 12', ' ', '65912FF', 8538, '198', 5),
(79, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 16', ' ', '65916FF', 8538, '210', 5),
(80, 'FRENCH FUCHSIA', ' ', ' ', ' ', 'module 18', ' ', '65918FF', 8538, '223', 5),
(81, 'MISTY OCEAN', ' ', ' ', ' ', 'module 1', ' ', '65901MO', 8538, '57', 5),
(82, 'MISTY OCEAN', ' ', ' ', ' ', 'module 2', ' ', '65902MO', 8538, '57', 5),
(83, 'MISTY OCEAN', ' ', ' ', ' ', 'module 3', ' ', '65903MO', 8538, '77', 5),
(84, 'MISTY OCEAN', ' ', ' ', ' ', 'module 4', ' ', '65904MO', 8538, '87', 5),
(85, 'MISTY OCEAN', ' ', ' ', ' ', 'module 6', ' ', '65906MO', 8538, '128', 5),
(86, 'MISTY OCEAN', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908MO', 8538, '164', 5),
(87, 'MISTY OCEAN', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988MO', 8538, '164', 5),
(88, 'MISTY OCEAN', ' ', ' ', ' ', 'module 12', ' ', '65912MO', 8538, '198', 5),
(89, 'MISTY OCEAN', ' ', ' ', ' ', 'module 16', ' ', '65916MO', 8538, '210', 5),
(90, 'MISTY OCEAN', ' ', ' ', ' ', 'module 18', ' ', '65918MO', 8538, '223', 5),
(91, 'PASTEL GREEN', ' ', ' ', ' ', 'module 1', ' ', '65901PG', 8538, '57', 5),
(92, 'PASTEL GREEN', ' ', ' ', ' ', 'module 2', ' ', '65902PG', 8538, '57', 5),
(93, 'PASTEL GREEN', ' ', ' ', ' ', 'module 3', ' ', '65903PG', 8538, '77', 5),
(94, 'PASTEL GREEN', ' ', ' ', ' ', 'module 4', ' ', '65904PG', 8538, '87', 5),
(95, 'PASTEL GREEN', ' ', ' ', ' ', 'module 6', ' ', '65906PG', 8538, '128', 5),
(96, 'PASTEL GREEN', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908PG', 8538, '164', 5),
(97, 'PASTEL GREEN', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988PG', 8538, '164', 5),
(98, 'PASTEL GREEN', ' ', ' ', ' ', 'module 12', ' ', '65912PG', 8538, '198', 5),
(99, 'PASTEL GREEN', ' ', ' ', ' ', 'module 16', ' ', '65916PG', 8538, '210', 5),
(100, 'PASTEL GREEN', ' ', ' ', ' ', 'module 18', ' ', '65918PG', 8538, '223', 5),
(101, 'BASALT GREY', ' ', ' ', ' ', 'module 1', ' ', '65901BG', 8538, '57', 5),
(102, 'BASALT GREY', ' ', ' ', ' ', 'module 2', ' ', '65902BG', 8538, '57', 5),
(103, 'BASALT GREY', ' ', ' ', ' ', 'module 3', ' ', '65903BG', 8538, '77', 5),
(104, 'BASALT GREY', ' ', ' ', ' ', 'module 4', ' ', '65904BG', 8538, '87', 5),
(105, 'BASALT GREY', ' ', ' ', ' ', 'module 6', ' ', '65906BG', 8538, '128', 5),
(106, 'BASALT GREY', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908BG', 8538, '164', 5),
(107, 'BASALT GREY', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988BG', 8538, '164', 5),
(108, 'BASALT GREY', ' ', ' ', ' ', 'module 12', ' ', '65912BG', 8538, '198', 5),
(109, 'BASALT GREY', ' ', ' ', ' ', 'module 16', ' ', '65916BG', 8538, '210', 5),
(110, 'BASALT GREY', ' ', ' ', ' ', 'module 18', ' ', '65918BG', 8538, '223', 5),
(111, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 1', ' ', '65901WGP', 8538, '128', 5),
(112, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 2', ' ', '65902WGP', 8538, '128', 5),
(113, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 3', ' ', '65903WGP', 8538, '179', 5),
(114, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 4', ' ', '65904WGP', 8538, '200', 5),
(115, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 6', ' ', '65906WGP', 8538, '296', 5),
(116, 'GOLDEN PECAN', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908WGP', 8538, '386', 5),
(117, 'GOLDEN PECAN', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988WGP', 8538, '386', 5),
(118, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 12', ' ', '65912WGP', 8538, '470', 5),
(119, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 16', ' ', '65916WGP', 8538, '497', 5),
(120, 'GOLDEN PECAN', ' ', ' ', ' ', 'module 18', ' ', '65918WGP', 8538, '527', 5),
(121, 'BLACK EBONY', ' ', ' ', ' ', 'module 1', ' ', '65901WBE', 8538, '128', 5),
(122, 'BLACK EBONY', ' ', ' ', ' ', 'module 2', ' ', '65902WBE', 8538, '128', 5),
(123, 'BLACK EBONY', ' ', ' ', ' ', 'module 3', ' ', '65903WBE', 8538, '179', 5),
(124, 'BLACK EBONY', ' ', ' ', ' ', 'module 4', ' ', '65904WBE', 8538, '200', 5),
(125, 'BLACK EBONY', ' ', ' ', ' ', 'module 6', ' ', '65906WBE', 8538, '296', 5),
(126, 'BLACK EBONY', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908WBE', 8538, '386', 5),
(127, 'BLACK EBONY', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988WBE', 8538, '386', 5),
(128, 'BLACK EBONY', ' ', ' ', ' ', 'module 12', ' ', '65912WBE', 8538, '470', 5),
(129, 'BLACK EBONY', ' ', ' ', ' ', 'module 16', ' ', '65916WBE', 8538, '497', 5),
(130, 'BLACK EBONY', ' ', ' ', ' ', 'module 18', ' ', '65918WBE', 8538, '527', 5),
(131, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 1', ' ', '65901WCH', 8538, '128', 5),
(132, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 2', ' ', '65902WCH', 8538, '128', 5),
(133, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 3', ' ', '65903WCH', 8538, '179', 5),
(134, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 4', ' ', '65904WCH', 8538, '200', 5),
(135, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 6', ' ', '65906WCH', 8538, '296', 5),
(136, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module HORIZONTAL 8', ' ', '65908WCH', 8538, '386', 5),
(137, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module VERTICAL 8', ' ', '65988WCH', 8538, '386', 5),
(138, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 12', ' ', '65912WCH', 8538, '470', 5),
(139, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 16', ' ', '65916WCH', 8538, '497', 5),
(140, 'CHOCOLATE HARDWOOD', ' ', ' ', ' ', 'module 18', ' ', '65918WCH', 8538, '527', 5),
(141, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module 1', '4.5*4.5', '65551', 8538, '70', 20),
(142, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module 2', '4.5*4.5', '65552', 8538, '70', 20),
(143, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module 3', '5.0*4.5', '65553', 8538, '99', 20),
(144, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module 4', '6.5*4.5', '65554', 8538, '110', 20),
(145, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module 6', '8.5*4.5', '65556', 8538, '163', 10),
(146, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module SQUARE 8', '6.5*6.5', '65588', 8538, '211', 10),
(147, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module HORIZONTAL 8', '10.6*4.5', '65558', 8538, '211', 10),
(148, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module HORIZONTAL 10', '12.7*4.5', '65560', 8538, '214', 10),
(149, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module  12', '8.5*6.5', '65512', 8538, '257', 5),
(150, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module HORIZONTAL 12', '12.7*4.5', '65562', 8538, '234', 10),
(151, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', 'module  18', '10.5*8.5', '65518', 8538, '288', 5),
(152, 'PLATES SUITABLE FOR WOODEN BOXES', ' ', ' ', ' ', ' ', ' ', ' ', 0, '0', 0),
(153, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '1 OR 2 Module', '79 * 75  46', '21780', 8538, '45', 10),
(154, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '3 Module', '79 * 99  46', '21452', 8538, '61', 10),
(155, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '4 Module', '79 * 135  52', '21791', 8538, '75', 10),
(156, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '6 Module', '79 * 207  52', '21463', 8538, '101', 10),
(157, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '8 or 9  Module Horizontal', '79 * 230  52', '30453', 8538, '131', 5),
(158, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '8  Module Rectangular', '132 * 135  56', '21474', 8538, '131', 5),
(159, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '12 Module', '132 * 207  56', '21485', 8538, '161', 5),
(160, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '16  Module', '142 *  230  56', '21736', 8538, '173', 5),
(161, 'CONCEALED GI SHEET METAL BOXES(20 Gauge)', ' ', ' ', ' ', '18  Module', '207 *207  60', '21758', 8538, '190', 5);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `associateid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `memberid` varchar(50) DEFAULT '',
  `name` varchar(200) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `day` int(45) DEFAULT '0',
  `dob` varchar(50) DEFAULT '',
  `date` varchar(50) DEFAULT '',
  `paid` decimal(10,1) DEFAULT '0.0',
  `paidbalance` varchar(50) DEFAULT '',
  `comments` varchar(300) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `associateid`, `categoryid`, `memberid`, `name`, `mobile`, `day`, `dob`, `date`, `paid`, `paidbalance`, `comments`) VALUES
(1, 2, 2, 'GR100', 'Guest A', '1234567890', 2, '06-07-1980', '05-07-2016', '1500.0', 'Balance', ''),
(2, 3, 2, 'GG101', 'Guest BBBB', '2587413690', 1, '04-11-1985', '04-07-2016', '500.0', 'Balance', ''),
(3, 3, 2, 'GG102', 'Guest C', '2587413690', 1, '04-10-1985', '04-07-2016', '200.0', 'Balance', ''),
(4, 3, 2, 'GG103', 'Guest C', '2587413690', 1, '04-10-1985', '04-07-2016', '200.0', 'Balance', ''),
(5, 2, 2, 'GC104', 'Guest D', '2581479630', 1, '17-10-1984', '04-07-2016', '500.0', 'Balance', ''),
(6, 3, 2, 'MG105', 'Mermber A', '1234567890', 1, '04-07-2016', '01-07-1982', '300.0', 'Balance', ''),
(7, 1, 2, 'BR106', 'Bilal Ahmad Khan', '1234567890', 1, '07-07-1991', '05-07-2016', '500.0', 'Balance', ''),
(8, 1, 2, 'IR107', 'Imran Khan', '1478523690', 1, '05-07-2016', '05-07-1985', '500.0', 'Paid ', ''),
(9, 1, 2, 'SR109', 'SS', '1111111111', 1, '04-07-1986', '21-6-2016', '0.0', '', ''),
(10, 2, 2, 'SC110', 'SK', '1000000000', 3, '04-07-1986', '21-6-2016', '1500.0', '', ''),
(11, 1, 2, 'BR111', 'B', '1234567890', 1, '05-07-1985', '25-6-2016', '0.0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `monthlyshake`
--

CREATE TABLE `monthlyshake` (
  `id` int(11) NOT NULL,
  `associatedid` int(11) DEFAULT NULL,
  `shake` int(11) DEFAULT '0',
  `date` varchar(50) DEFAULT '',
  `total` varchar(50) DEFAULT '',
  `dino` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `painttable`
--

CREATE TABLE `painttable` (
  `id` int(11) NOT NULL COMMENT 'Auto ID',
  `paint_type` varchar(150) DEFAULT '',
  `paint_category` varchar(100) DEFAULT '' COMMENT 'Category Of Paint (e.g. ENAMLES, INTERIOR WALLS FINISHES etc)',
  `paint_category_code` varchar(50) DEFAULT '',
  `paint_name` varchar(100) DEFAULT '' COMMENT 'Name of the product',
  `paint_code` varchar(50) DEFAULT '0' COMMENT 'Code of paint',
  `paint_color` varchar(100) DEFAULT '' COMMENT 'Paint color name',
  `paint_quantity` int(10) DEFAULT '0' COMMENT 'Paint quantity',
  `paint_company_name` varchar(500) DEFAULT '' COMMENT 'Manufacture company name',
  `paint_purchase_date` timestamp NULL DEFAULT NULL COMMENT 'Paint purchase date',
  `paint_purchase_time` timestamp NULL DEFAULT NULL COMMENT 'Paint purchase time',
  `paint_size_1` varchar(50) DEFAULT '' COMMENT 'Paint size',
  `paint_size_2` varchar(50) DEFAULT '',
  `paint_size_3` varchar(50) DEFAULT '',
  `paint_size_4` varchar(50) DEFAULT '',
  `paint_size_5` varchar(45) DEFAULT '',
  `paint_size_6` varchar(50) DEFAULT '',
  `paint_size_7` varchar(50) DEFAULT '',
  `paint_size_8` varchar(50) DEFAULT '',
  `paint_size_9` varchar(50) DEFAULT '',
  `paint_mrp_1` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_2` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_3` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_4` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_5` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_6` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_7` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_8` decimal(10,2) DEFAULT '0.00',
  `paint_mrp_9` decimal(10,2) DEFAULT '0.00',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT 'For Logical Delete ''0'' means not deleted 1 means deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `painttable`
--

INSERT INTO `painttable` (`id`, `paint_type`, `paint_category`, `paint_category_code`, `paint_name`, `paint_code`, `paint_color`, `paint_quantity`, `paint_company_name`, `paint_purchase_date`, `paint_purchase_time`, `paint_size_1`, `paint_size_2`, `paint_size_3`, `paint_size_4`, `paint_size_5`, `paint_size_6`, `paint_size_7`, `paint_size_8`, `paint_size_9`, `paint_mrp_1`, `paint_mrp_2`, `paint_mrp_3`, `paint_mrp_4`, `paint_mrp_5`, `paint_mrp_6`, `paint_mrp_7`, `paint_mrp_8`, `paint_mrp_9`, `is_delete`) VALUES
(1, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - WHITES', '0026', 'Brilliant White', 'GR-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3875.00', '2000.00', '839.00', '220.00', '115.50', '55.50', '31.50', '18.00', '0.00', 0),
(2, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - WHITES', '0026', 'Blazing White', 'GR-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3875.00', '2000.00', '839.00', '220.00', '115.50', '55.50', '31.50', '18.00', '0.00', 0),
(3, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Ad Grey', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(4, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Bay Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(5, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Black Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(6, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Bus Green', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(7, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Golden Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(8, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Leaf Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(9, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Mercedes Red', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(10, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Oxford Blue', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(11, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Phirozi', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(12, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Sky Blue', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(13, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Smoke Grey (G)', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(14, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Teak Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(15, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Special TruckBrown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(16, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Aquamarine (G) ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(17, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Blue Bell White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(18, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Brandy (G)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(19, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Cascade Green ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(20, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Dark Green Dawn', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(21, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Deep Mahogany ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(22, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Deep Orange ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(23, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'French Blue', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(24, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Golden Yellow ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(25, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Imperial Crimson ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(26, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Lemon YellowMint Green ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(27, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Mid Buff (G)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(28, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Off White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(29, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Pale Cream ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(30, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Pale Rose ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(31, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Pista', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(32, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'P 0 Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(33, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Raw Silk ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(34, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Royal Ivory ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(35, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Sandstone (G)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(36, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Satin Blue ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(37, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Signal Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(38, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'T-Dawn Glow ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(39, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Wild Liliac', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(40, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Wild Purple', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(41, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Silver', 'Gr-19', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '0.00', '672.00', '0.00', '147.00', '0.00', '42.50', '0.00', 0),
(42, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Gold', 'Gr-19', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '0.00', '672.00', '0.00', '147.00', '0.00', '42.50', '0.00', 0),
(43, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4381.00', '2237.00', '911.00', '236.00', '122.50', '0.00', '0.00', '0.00', '0.00', 0),
(44, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Black-N ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(45, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Mahogany ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(46, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Satin Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(47, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Timber Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(48, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Walnut-Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(49, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Special Teak ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(50, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Teak wood ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(51, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Timber Golden Brown', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(52, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Rich Rosewoo', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(53, 'ENAMELS', 'ASIAN PAINTS GATTU SYNTHETIC ENAMEL', '004', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2918.00', '1532.00', '641.00', '168.00', '88.50', '0.00', '0.00', '0.00', '0.00', 0),
(54, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(55, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Super White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(56, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Ad. Grey ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(57, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Black ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(58, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Brown', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(59, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Bus Green ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(60, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Chassis Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(61, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Golden Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(62, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'New Ivory', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(63, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Pale Cream ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(64, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Pale Rose ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(65, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Phirozi ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(66, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Smoke Grey', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(67, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Sky Blue ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(68, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Wild Lilac', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(69, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Deep Orange', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(70, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Golden Yellow', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(71, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Mint Green', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(72, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Oxford Blue', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(73, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'P 0 Red', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(74, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Roof Red', 'Gr-7', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2444.00', '0.00', '554.00', '155.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(75, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Roof Green', 'Gr-7', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2444.00', '0.00', '554.00', '155.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(76, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Roof Blue', 'Gr-8', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2659.00', '0.00', '594.00', '160.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(77, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS ROYALE LUXURY EMULSION', '0030', 'Regal White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '7178.00', '3633.00', '1470.00', '375.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(78, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS ROYALE LUXURY EMULSION', '0030', 'Radiant White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '7178.00', '3633.00', '1470.00', '375.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(79, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS ROYALE LUXURY EMULSION', '0030', 'Gardenia White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '7178.00', '3633.00', '1470.00', '375.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(80, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS PREMIUM EMULSION', '0011', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '4075.00', '2105.00', '862.00', '223.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(81, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS INTERIOR WALL FINISH - LUSTRE', '0126', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '3706.00', '1915.00', '781.00', '202.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(82, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS TRACTOR EMULSION', '0057', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '1857.00', '979.00', '424.00', '114.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(83, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS TRACTOR EMULSION', '0057', 'Super White ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '1857.00', '979.00', '424.00', '114.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(84, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1090.00', '582.00', '315.00', '113.00', '69.00', '0.00', '0.00', '0.00', '0.00', 0),
(85, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Cool Cream', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1090.00', '582.00', '315.00', '113.00', '69.00', '0.00', '0.00', '0.00', '0.00', 0),
(86, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Aquamarine', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(87, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Asian Blue ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(88, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Asian Green ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(89, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'BarleyBathstone ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(90, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Daffodil ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(91, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Deep Aquamarine ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(92, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Electric Blue', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(93, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Fire Red ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(94, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Ivory ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(95, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Light Green ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(96, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Merrie Pink ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(97, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pale Cream', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(98, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pale Rose ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(99, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pastel Blue ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(100, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pastel Green ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(101, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Promise ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(102, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Rust', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(103, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Satin Blue', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(104, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Wild Lila', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(105, 'DISTEMPER', 'ASIAN PAINTS TRACTOR ACRYLIC DISTEMPER', '0015', 'Snow White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1090.00', '582.00', '315.00', '133.00', '69.00', '0.00', '0.00', '0.00', '0.00', 0),
(106, 'DISTEMPER', 'ASIAN PAINTS TRACTOR ACRYLIC DISTEMPER', '0015', 'Candy', 'Gr-11', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1157.00', '608.00', '332.00', '141.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(107, 'DISTEMPER', 'ASIAN PAINTS TRACTOR ACRYLIC DISTEMPER', '0015', 'Pista', 'Gr-11', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1157.00', '608.00', '332.00', '141.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(108, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Brilliant White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '754.00', '412.00', '226.00', '96.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(109, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Aquamarine - N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(110, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Pastel Green - N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(111, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Merrie Pink - N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(112, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Pale Rose ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(113, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Pale Cream - N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(114, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Daffodil-N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(115, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Ivory N Light Green N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(116, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Electric Blue N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(117, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Promise N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(118, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Deep Aquamarine N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(119, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Wild Lilac N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(120, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Aasmani ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(121, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Badami ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(122, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Bahaar ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(123, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Chandan ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(124, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Chandni', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(125, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Jaipuri ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(126, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Mayuri ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(127, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Neelam ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(128, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Roshni ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(129, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Toran ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(130, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Vasant', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(131, 'DISTEMPER', 'ASIAN PAINTS TRACTOR AQUALOCK', '0013', 'Xtra White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1027.00', '550.00', '299.00', '126.00', '66.00', '0.00', '0.00', '0.00', '0.00', 0),
(132, 'DISTEMPER', 'ASIAN PAINTS TRACTOR AQUALOCK', '0013', 'Candy', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1027.00', '550.00', '299.00', '126.00', '66.00', '0.00', '0.00', '0.00', '0.00', 0),
(133, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Classic White', 'Gr-13', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '3950.00', '2067.00', '866.00', '226.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(134, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Maroon', 'Gr-40', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '4 L', '1 L', '', '', '', '', '', '0.00', '0.00', '912.00', '235.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(135, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Ming Red', 'Gr-40', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '4 L', '1 L', '', '', '', '', '', '0.00', '0.00', '912.00', '235.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(136, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Speical Signal Red', 'Gr-40', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '4 L', '1 L', '', '', '', '', '', '0.00', '0.00', '912.00', '235.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(137, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS ACE', '0051', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '2289.00', '1221.00', '514.00', '136.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(138, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS ACE', '0051', 'Maroon', 'Gr-33', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '2289.00', '1221.00', '514.00', '136.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(139, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX SHYNE', '05673', 'Classic White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '4030.00', '2107.00', '882.00', '230.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(140, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Matt', '1790', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4221.00', '0.00', '911.00', '239.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(141, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Glossy', '1789', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4027.00', '0.00', '871.00', '229.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(142, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Sealer clear', '1788', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4242.00', '0.00', '981.00', '242.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(143, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Sealer Clear N', '1788', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4242.00', '0.00', '981.00', '242.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(144, 'WOOD FINISHES', 'AP WOODTECH TOUCHWOOD GLOSSY', '0562', 'Clear Glossy', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '0.00', '0.00', '774.00', '200.00', '104.00', '48.00', '0.00', '0.00', '0.00', 0),
(145, 'WOOD FINISHES', 'AP WOODTECH TOUCHWOOD GLOSSY', '0562', 'Oak Yellow', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '0.00', '0.00', '774.00', '200.00', '104.00', '0.00', '0.00', '0.00', '0.00', 0),
(146, 'WOOD FINISHES', 'AP WOODTECH GENIE POLISH', '5485', 'Clear Glossy', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '2826.00', '725.00', '0.00', '154.00', '84.00', '44.00', '0.00', '0.00', '0.00', 0),
(147, 'WATER PROOFING', 'AP SMARTCARE DAMP PROOF', '1048', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '', '4 L', '', '', '', '', '', '', '3470.00', '0.00', '746.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(148, 'WATER PROOFING', 'AP SMARTCARE DAMP PROOF', '1048', 'Grey', '0607', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '', '4 L', '', '', '', '', '', '', '3660.00', '0.00', '772.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(149, 'WATER PROOFING', 'AP SMARTCARE DAMP PROOF', '1048', 'Teracota', '0427', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '', '4 L', '', '', '', '', '', '', '3835.00', '0.00', '812.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(150, 'WATER PROOFING', 'AP SMARTCARE CRACKSEAL', '1050', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5 kg', '900 g', '360 g', '', '', '', '', '', '', '1176.00', '221.00', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(151, 'WATER PROOFING', 'AP SMARTCARE DAMP BLOCK', '1051', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '10 kg', '5 kg', '2 kg', '', '', '', '', '', '', '1498.00', '763.00', '313.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(152, 'WATER PROOFING', 'AP SMARTCARE BIO BLOCK', '1053', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1 L', '500 ml', '', '', '', '', '', '', '', '178.00', '98.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(153, 'WATER PROOFING', 'AP SMARTCARE VITALIA', '1093', 'Crimson Rd', '0050', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '26L', '20 L', '5L', '1 L', '500 ml', '100 ml', '', '', '', '2900.00', '2584.00', '591.00', '131.00', '85.00', '21.00', '0.00', '0.00', '0.00', 0),
(154, 'WATER PROOFING', 'AP SMARTCARE VITALIA', '1093', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '26L', '20 L', '5L', '1 L', '500 ml', '100 ml', '', '', '', '2900.00', '0.00', '591.00', '131.00', '85.00', '21.00', '0.00', '0.00', '0.00', 0),
(155, 'WATER PROOFING', 'MARVELLO PLAST', '1094', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '', '', '', '', '', '', '', '', '391.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(156, 'WATER PROOFING', 'MARVELLO PLAST', '1094', 'Classic White', '0959', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '', '', '', '', '', '', '', '', '391.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(157, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(158, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(159, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Black', '0801', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(160, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Grey', '0607', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(161, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Clear New 6P', '0661', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '0.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(162, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Classic White 6P', '0959', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '0.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(163, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Black New 6P', '2M59', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '0.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(164, 'WATER PROOFING', 'AP SMARTCARE AKRYLMAX', '1096', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '', '', '', '', '', '', '', '', '69.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(165, 'WATER PROOFING', 'AP SMARTCARE ROOF TAPE 10 m', '5402', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '428.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(166, 'WATER PROOFING', 'AP SMARTCARE ROOF TAPE INNER CORNER', '5403', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '429.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(167, 'WATER PROOFING', 'AP SMARTCARE ROOF TAPE OUTER CORNER', '5404', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '429.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(168, 'WATER PROOFING', 'AP SMARTCARE TERRACE TILE PRIMER', '5423', 'Yellow', '0339', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '', '', '', '', '', '', '', '1688.00', '360.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(169, 'WATER PROOFING', 'AP SMARTCARE HYBRID P U SEALANT', '5428', 'Grey', '0607', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '600 ml', '300 ml', '', '', '', '', '', '', '', '399.00', '222.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0);
INSERT INTO `painttable` (`id`, `paint_type`, `paint_category`, `paint_category_code`, `paint_name`, `paint_code`, `paint_color`, `paint_quantity`, `paint_company_name`, `paint_purchase_date`, `paint_purchase_time`, `paint_size_1`, `paint_size_2`, `paint_size_3`, `paint_size_4`, `paint_size_5`, `paint_size_6`, `paint_size_7`, `paint_size_8`, `paint_size_9`, `paint_mrp_1`, `paint_mrp_2`, `paint_mrp_3`, `paint_mrp_4`, `paint_mrp_5`, `paint_mrp_6`, `paint_mrp_7`, `paint_mrp_8`, `paint_mrp_9`, `is_delete`) VALUES
(170, 'THINNERS', 'AP Woodtech Melamyne Brushing Thinner', '0', 'AP Woodtech Melamyne Brushing Thinner', '2126', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '3L', '1 L', '', '', '', '', '', '', '0.00', '557.00', '190.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(171, 'THINNERS', 'AP Woodtech Melamyne Thiner 124', '0', 'AP Woodtech Melamyne Thiner 124', '0632', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '3L', '1 L', '', '', '', '', '', '', '2000.00', '330.00', '115.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(172, 'VARNISHES & BLACK BOARD PAINT', 'ASIAN PAINTS CLEAR SYNTHETIC VARNISH', '0703', 'Clear', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '3608.00', '1847.00', '748.00', '196.00', '101.50', '46.50', '0.00', '0.00', '0.00', 0),
(173, 'VARNISHES & BLACK BOARD PAINT', '3 MANGOES BLACKBOARD PAINT', '0222', 'Black', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '0.00', '0.00', '763.00', '198.00', '104.00', '47.50', '0.00', '0.00', '0.00', 0),
(174, 'METAL PRIMERS', 'AP TRUCARE METAL PRIMER', '0005', 'Redoxide', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '', '2399.00', '521.00', '138.00', '73.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(175, 'METAL PRIMERS', 'AP DECOPRIME PREMIUM METAL PRIMER', '0006', 'Deep Redoxide', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '', '3280.00', '705.00', '183.00', '95.00', '45.50', '0.00', '0.00', '0.00', '0.00', 0),
(176, 'WOOD PRIMERS', 'ASIAN PAINTS WOOD PRIMER', '0007', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2706.00', '1402.00', '579.00', '152.00', '80.50', '0.00', '0.00', '0.00', '0.00', 0),
(177, 'WOOD PRIMERS', 'ASIAN PAINTS WOOD PRIMER', '0007', 'Pink', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2533.00', '1311.00', '549.00', '144.00', '75.50', '0.00', '0.00', '0.00', '0.00', 0),
(178, 'ALUMINIUMPAINT', 'ASIAN PAINTS 3 MANGOES ALUMINIUM PAINT', '0009', 'Aluminium', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L ', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '', '', '', '4670.00', '984.00', '256.00', '134.00', '60.50', '33.50', '0.00', '0.00', '0.00', 0),
(179, 'PUTTIES & FILLERS', 'ASIAN PAINTS KNIFING PASTE FILLER', '0016', 'Grey', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '15 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '2644.00', '1391.00', '485.00', '202.00', '105.00', '0.00', '0.00', '0.00', '0.00', 0),
(180, 'PUTTIES & FILLERS', 'TRUCARE ACRYLIC WALL PUTTY', '1354', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '15 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1018.00', '897.00', '483.00', '259.00', '0.00', '56.00', '0.00', '0.00', '0.00', 0),
(181, 'WALL PRIMERS', 'TRUCARE INTERIOR WALL PRIMER - ST', '0359', 'White (Solvent Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2452.00', '1285.00', '541.00', '144.00', '78.00', '0.00', '0.00', '0.00', '0.00', 0),
(182, 'WALL PRIMERS', 'TRUCARE INTERIOR WALL PRIMER - WT', '0360', 'White(Water Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '1734.00', '926.00', '398.00', '109.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(183, 'WALL PRIMERS', 'ASIAN PAINTS UTSAV PRIMER', '0061', 'White (Solvent Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2218.00', '1150.00', '476.00', '125.00', '66.50', '0.00', '0.00', '0.00', '0.00', 0),
(184, 'WALL PRIMERS', 'ASIAN PAINTS UTSAV PRIMER', '0078', 'White(Water Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '1303.00', '687.00', '303.00', '85.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(185, 'WALL PRIMERS', 'TRUCARE EXTERIOR WALL PRIMER', '0065', 'White(Water Based)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2111.00', '1095.00', '462.00', '121.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(186, 'WALL PRIMERS', 'TRUCARE EXTERIOR WALL PRIMER', '0065', 'White C', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2111.00', '1095.00', '462.00', '121.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(187, 'PRIMER SURFACER', 'APCOLITE SYN PRI SURFACER & BRUSHING FILLER', '0353', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '3097.00', '1595.00', '656.00', '172.00', '90.00', '0.00', '0.00', '0.00', '0.00', 0),
(188, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(189, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Yellow Oxide ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(190, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Orange ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(191, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Burnt Sienna ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(192, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Red Oxide', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(193, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Blue ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(194, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Green ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(195, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Violet ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(196, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Yellow', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(197, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Yellow Green ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(198, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Turkey Umber ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(199, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Black', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(200, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Oak Yellow ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(201, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Red Brown ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(202, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Rose Wood ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(203, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Teak Walnut ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(204, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Dark Antique Pine ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(205, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Dark Indian Oak ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(206, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Dark Teak ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(207, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Mahogany ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(208, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Green Walnut J', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(209, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Charcoal', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(210, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Wenge', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(211, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Red', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(212, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Walnut-N', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(213, 'ADHESIVES', 'AP TRUGRIP ULTRA', '9442', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '50 kg', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '500 g', '250 g', '125 g', '5900.00', '2440.00', '1243.00', '652.00', '272.00', '141.00', '82.00', '47.00', '25.00', 0),
(214, 'ADHESIVES', 'AP TRUGRIP MAX', '9801', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '', '', '880.00', '229.00', '125.00', '58.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(215, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Locite Quick', 'A001', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 g', '5 g', '1 g', '0.5g', '', '', '', '', '', '43.00', '21.00', '7.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(216, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'AP Loc Quick', 'H601', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 g', '5 g', '1 g', '0.5g', '', '', '', '', '', '0.00', '0.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(217, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Locite Tough', 'A002', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '500 g', '90 g', '25 g', '', '', '', '', '', '', '341.00', '110.00', '48.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(218, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Locite Rapid', 'A003', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '500 g', '90 g', '25 g', '', '', '', '', '', '', '0.00', '122.00', '56.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(219, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Tough X Epoxy Resin', 'A006', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1 kg', '800 g', '', '', '', '', '', '', '', '458.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(220, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Tough X Epoxy Hardener', 'A006', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1 kg', '800 g', '', '', '', '', '', '', '', '0.00', '306.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(221, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Adhesive Combo Pack', 'A005', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '3891.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(222, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Epoxy Application TO - White', 'D666', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '40.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(223, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Epoxy Mixing TO - Red', 'D667', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '45.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(224, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Tool Kit for Professionals', 'D668', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(225, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Flex Easy', 'H602', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '30.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(226, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 20 M 1 PC', '9692', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '17.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(227, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 20 M 1 PC', '9693', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '12.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(228, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 30 M 1 PC', '9694', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(229, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 20 M 1 PC', '9695', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '34.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(230, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 25 M 1 PC', '9696', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '15.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(231, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 25 M 1 PC', '9897', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '21.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(232, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 40 M 1 PC', '9814', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '34.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(233, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 30 M 1 PC', '9805', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '18.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(234, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 40 M 1 PC', '9806', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '25.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(235, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 20 M 1 PC', '9807', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '25.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(236, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 25 M 1 PC', '9808', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '31.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(237, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 30 M 1 PC', '9809', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '37.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(238, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 40 M 1 PC', '9810', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '51.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(239, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 25 M 1 PC', '9811', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '42.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(240, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 30 M 1 PC', '9812', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(241, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 40 M 1 PC', '9813', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '68.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(242, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 15 M 1 PC', '9815', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '13.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(243, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 15 M 1 PC', '9816', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '9.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(244, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 15 M 1 PC', '9817', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '19.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(245, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 15 M 1 PC', '9818', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '26.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(246, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 30 M 1 PC', '9805', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(247, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 40 M 1 PC', '9806', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '27.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(248, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 20 M 1 PC', '9807', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '27.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(249, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 25 M 1 PC', '9808', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '33.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(250, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 30 M 1 PC', '9809', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '40.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(251, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 40 M 1 PC', '9810', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '54.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(252, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CMX 25 M 1 P', '9811', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '44.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(253, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 30 M 1 PC', '9812', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '53.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(254, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 40 M 1 PC', '9813', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '72.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(255, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CMX 40M 1 PC', '9814', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '36.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(256, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 15 M 1 PC', '9815', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '13.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(257, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X15 M 1 PC', '9816', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '10.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(258, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 15 M 1 PC', '9817', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '20.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(259, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 15 M 1 PC', '9818', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '27.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(260, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 20 M 1 PC', '9692', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(261, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 20 M 1 PC', '9693', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '13.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(262, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 30 M 1 PC', '9694', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '26.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(263, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 20 M 1 PC', '9695', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '36.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(264, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 25 M 1 PC', '9696', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '16.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(265, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 25 M 1 PC', '9697', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '22.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(266, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - WHITES', '0026', 'Brilliant White', 'GR-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3875.00', '2000.00', '839.00', '220.00', '115.50', '55.50', '31.50', '18.00', '0.00', 0),
(267, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - WHITES', '0026', 'Blazing White', 'GR-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3875.00', '2000.00', '839.00', '220.00', '115.50', '55.50', '31.50', '18.00', '0.00', 0),
(268, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Ad Grey', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(269, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Bay Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(270, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Black Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(271, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Bus Green', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(272, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Golden Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(273, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Leaf Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(274, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Mercedes Red', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(275, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Oxford Blue', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(276, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Phirozi', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(277, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Sky Blue', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(278, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Smoke Grey (G)', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(279, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Teak Brown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(280, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Special TruckBrown', 'GR-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '3671.00', '1888.00', '780.00', '202.00', '106.00', '52.00', '29.00', '17.50', '0.00', 0),
(281, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Aquamarine (G) ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(282, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Blue Bell White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(283, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Brandy (G)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(284, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Cascade Green ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(285, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Dark Green Dawn', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(286, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Deep Mahogany ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(287, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Deep Orange ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(288, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'French Blue', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(289, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Golden Yellow ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(290, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Imperial Crimson ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(291, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Lemon YellowMint Green ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(292, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Mid Buff (G)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(293, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Off White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(294, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Pale Cream ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(295, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Pale Rose ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(296, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Pista', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(297, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'P 0 Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(298, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Raw Silk ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(299, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Royal Ivory ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(300, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Sandstone (G)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(301, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Satin Blue ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(302, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Signal Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(303, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'T-Dawn Glow ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(304, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Wild Liliac', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(305, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Wild Purple', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4134.00', '0.00', '874.00', '226.00', '118.00', '54.00', '30.00', '17.50', '0.00', 0),
(306, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Silver', 'Gr-19', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '0.00', '672.00', '0.00', '147.00', '0.00', '42.50', '0.00', 0),
(307, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM GLOSS ENAMEL - SHADES', '0001', 'Gold', 'Gr-19', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '0.00', '672.00', '0.00', '147.00', '0.00', '42.50', '0.00', 0),
(308, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '4381.00', '2237.00', '911.00', '236.00', '122.50', '0.00', '0.00', '0.00', '0.00', 0),
(309, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Black-N ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(310, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Mahogany ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(311, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Satin Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(312, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Timber Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(313, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Walnut-Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(314, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Special Teak ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(315, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Teak wood ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(316, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Timber Golden Brown', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(317, 'ENAMELS', 'ASIAN PAINTS APCOLITE PREMIUM SATIN ENAMEL', '0064', 'Rich Rosewoo', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '0.00', '0.00', '882.00', '228.00', '117.50', '0.00', '0.00', '0.00', '0.00', 0),
(318, 'ENAMELS', 'ASIAN PAINTS GATTU SYNTHETIC ENAMEL', '004', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2918.00', '1532.00', '641.00', '168.00', '88.50', '0.00', '0.00', '0.00', '0.00', 0),
(319, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(320, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Super White ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(321, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Ad. Grey ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(322, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Black ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(323, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Brown', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(324, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Bus Green ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(325, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Chassis Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(326, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Golden Brown ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(327, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'New Ivory', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(328, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Pale Cream ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(329, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Pale Rose ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(330, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Phirozi ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(331, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Smoke Grey', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(332, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Sky Blue ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(333, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Wild Lilac', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2571.00', '1344.00', '558.00', '145.00', '75.50', '37.50', '22.00', '0.00', '0.00', 0),
(334, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Deep Orange', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(335, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Golden Yellow', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(336, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Mint Green', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(337, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Oxford Blue', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(338, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'P 0 Red', 'Gr-6', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2752.00', '0.00', '586.00', '152.00', '78.50', '41.50', '25.00', '0.00', '0.00', 0),
(339, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Roof Red', 'Gr-7', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2444.00', '0.00', '554.00', '155.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(340, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Roof Green', 'Gr-7', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2444.00', '0.00', '554.00', '155.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(341, 'ENAMELS', 'ASIAN PAINTS TRACTOR ENAMEL', '0053', 'Roof Blue', 'Gr-8', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '2659.00', '0.00', '594.00', '160.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0);
INSERT INTO `painttable` (`id`, `paint_type`, `paint_category`, `paint_category_code`, `paint_name`, `paint_code`, `paint_color`, `paint_quantity`, `paint_company_name`, `paint_purchase_date`, `paint_purchase_time`, `paint_size_1`, `paint_size_2`, `paint_size_3`, `paint_size_4`, `paint_size_5`, `paint_size_6`, `paint_size_7`, `paint_size_8`, `paint_size_9`, `paint_mrp_1`, `paint_mrp_2`, `paint_mrp_3`, `paint_mrp_4`, `paint_mrp_5`, `paint_mrp_6`, `paint_mrp_7`, `paint_mrp_8`, `paint_mrp_9`, `is_delete`) VALUES
(342, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS ROYALE LUXURY EMULSION', '0030', 'Regal White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '7178.00', '3633.00', '1470.00', '375.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(343, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS ROYALE LUXURY EMULSION', '0030', 'Radiant White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '7178.00', '3633.00', '1470.00', '375.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(344, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS ROYALE LUXURY EMULSION', '0030', 'Gardenia White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '7178.00', '3633.00', '1470.00', '375.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(345, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS PREMIUM EMULSION', '0011', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '4075.00', '2105.00', '862.00', '223.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(346, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS INTERIOR WALL FINISH - LUSTRE', '0126', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '3706.00', '1915.00', '781.00', '202.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(347, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS TRACTOR EMULSION', '0057', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '1857.00', '979.00', '424.00', '114.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(348, 'INTERIOR WALL FINISHES', 'ASIAN PAINTS TRACTOR EMULSION', '0057', 'Super White ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '1857.00', '979.00', '424.00', '114.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(349, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1090.00', '582.00', '315.00', '113.00', '69.00', '0.00', '0.00', '0.00', '0.00', 0),
(350, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Cool Cream', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1090.00', '582.00', '315.00', '113.00', '69.00', '0.00', '0.00', '0.00', '0.00', 0),
(351, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Aquamarine', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(352, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Asian Blue ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(353, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Asian Green ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(354, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'BarleyBathstone ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(355, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Daffodil ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(356, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Deep Aquamarine ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(357, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Electric Blue', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(358, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Fire Red ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(359, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Ivory ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(360, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Light Green ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(361, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Merrie Pink ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(362, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pale Cream', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(363, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pale Rose ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(364, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pastel Blue ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(365, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Pastel Green ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(366, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Promise ', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(367, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Rust', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(368, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Satin Blue', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(369, 'DISTEMPER', 'ASIAN PAINTS TRACTOR SYNTHETIC DISTEMPER', '0014', 'Wild Lila', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1141.00', '607.00', '329.00', '139.00', '72.00', '0.00', '0.00', '0.00', '0.00', 0),
(370, 'DISTEMPER', 'ASIAN PAINTS TRACTOR ACRYLIC DISTEMPER', '0015', 'Snow White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1090.00', '582.00', '315.00', '133.00', '69.00', '0.00', '0.00', '0.00', '0.00', 0),
(371, 'DISTEMPER', 'ASIAN PAINTS TRACTOR ACRYLIC DISTEMPER', '0015', 'Candy', 'Gr-11', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1157.00', '608.00', '332.00', '141.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(372, 'DISTEMPER', 'ASIAN PAINTS TRACTOR ACRYLIC DISTEMPER', '0015', 'Pista', 'Gr-11', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1157.00', '608.00', '332.00', '141.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(373, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Brilliant White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '754.00', '412.00', '226.00', '96.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(374, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Aquamarine - N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(375, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Pastel Green - N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(376, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Merrie Pink - N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(377, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Pale Rose ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(378, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Pale Cream - N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(379, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Daffodil-N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(380, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Ivory N Light Green N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(381, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Electric Blue N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(382, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Promise N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(383, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Deep Aquamarine N ', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(384, 'DISTEMPER', 'TRACTOR UNO ACRYLIC DISTEMPER', '0055', 'Wild Lilac N', 'Gr-9', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '845.00', '471.00', '252.00', '102.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(385, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Aasmani ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(386, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Badami ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(387, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Bahaar ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(388, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Chandan ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(389, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Chandni', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(390, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Jaipuri ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(391, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Mayuri ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(392, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Neelam ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(393, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Roshni ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(394, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Toran ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(395, 'DISTEMPER', 'ASIAN PAINTS UTSAV DISTEMPER', '0036', 'Vasant', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '33.50', '0.00', 0),
(396, 'DISTEMPER', 'ASIAN PAINTS TRACTOR AQUALOCK', '0013', 'Xtra White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1027.00', '550.00', '299.00', '126.00', '66.00', '0.00', '0.00', '0.00', '0.00', 0),
(397, 'DISTEMPER', 'ASIAN PAINTS TRACTOR AQUALOCK', '0013', 'Candy', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1027.00', '550.00', '299.00', '126.00', '66.00', '0.00', '0.00', '0.00', '0.00', 0),
(398, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Classic White', 'Gr-13', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '3950.00', '2067.00', '866.00', '226.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(399, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Maroon', 'Gr-40', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '4 L', '1 L', '', '', '', '', '', '0.00', '0.00', '912.00', '235.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(400, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Ming Red', 'Gr-40', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '4 L', '1 L', '', '', '', '', '', '0.00', '0.00', '912.00', '235.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(401, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX', '0012', 'Speical Signal Red', 'Gr-40', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '4 L', '1 L', '', '', '', '', '', '0.00', '0.00', '912.00', '235.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(402, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS ACE', '0051', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '2289.00', '1221.00', '514.00', '136.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(403, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS ACE', '0051', 'Maroon', 'Gr-33', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '2289.00', '1221.00', '514.00', '136.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(404, 'EXTERIOR EMULSIONS', 'ASIAN PAINTS APEX SHYNE', '05673', 'Classic White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '', '', '', '', '', '4030.00', '2107.00', '882.00', '230.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(405, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Matt', '1790', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4221.00', '0.00', '911.00', '239.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(406, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Glossy', '1789', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4027.00', '0.00', '871.00', '229.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(407, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Sealer clear', '1788', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4242.00', '0.00', '981.00', '242.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(408, 'WOOD FINISHES', 'AP WOODTECH MELAMYNE', '0', 'Asian Paints Woodtech Melamyne Sealer Clear N', '1788', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '4242.00', '0.00', '981.00', '242.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(409, 'WOOD FINISHES', 'AP WOODTECH TOUCHWOOD GLOSSY', '0562', 'Clear Glossy', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '0.00', '0.00', '774.00', '200.00', '104.00', '48.00', '0.00', '0.00', '0.00', 0),
(410, 'WOOD FINISHES', 'AP WOODTECH TOUCHWOOD GLOSSY', '0562', 'Oak Yellow', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '0.00', '0.00', '774.00', '200.00', '104.00', '0.00', '0.00', '0.00', '0.00', 0),
(411, 'WOOD FINISHES', 'AP WOODTECH GENIE POLISH', '5485', 'Clear Glossy', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '5L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '2826.00', '725.00', '0.00', '154.00', '84.00', '44.00', '0.00', '0.00', '0.00', 0),
(412, 'WATER PROOFING', 'AP SMARTCARE DAMP PROOF', '1048', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '', '4 L', '', '', '', '', '', '', '3470.00', '0.00', '746.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(413, 'WATER PROOFING', 'AP SMARTCARE DAMP PROOF', '1048', 'Grey', '0607', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '', '4 L', '', '', '', '', '', '', '3660.00', '0.00', '772.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(414, 'WATER PROOFING', 'AP SMARTCARE DAMP PROOF', '1048', 'Teracota', '0427', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '', '4 L', '', '', '', '', '', '', '3835.00', '0.00', '812.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(415, 'WATER PROOFING', 'AP SMARTCARE CRACKSEAL', '1050', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5 kg', '900 g', '360 g', '', '', '', '', '', '', '1176.00', '221.00', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(416, 'WATER PROOFING', 'AP SMARTCARE DAMP BLOCK', '1051', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '10 kg', '5 kg', '2 kg', '', '', '', '', '', '', '1498.00', '763.00', '313.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(417, 'WATER PROOFING', 'AP SMARTCARE BIO BLOCK', '1053', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1 L', '500 ml', '', '', '', '', '', '', '', '178.00', '98.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(418, 'WATER PROOFING', 'AP SMARTCARE VITALIA', '1093', 'Crimson Rd', '0050', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '26L', '20 L', '5L', '1 L', '500 ml', '100 ml', '', '', '', '2900.00', '2584.00', '591.00', '131.00', '85.00', '21.00', '0.00', '0.00', '0.00', 0),
(419, 'WATER PROOFING', 'AP SMARTCARE VITALIA', '1093', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '26L', '20 L', '5L', '1 L', '500 ml', '100 ml', '', '', '', '2900.00', '0.00', '591.00', '131.00', '85.00', '21.00', '0.00', '0.00', '0.00', 0),
(420, 'WATER PROOFING', 'MARVELLO PLAST', '1094', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '', '', '', '', '', '', '', '', '391.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(421, 'WATER PROOFING', 'MARVELLO PLAST', '1094', 'Classic White', '0959', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '', '', '', '', '', '', '', '', '391.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(422, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(423, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(424, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Black', '0801', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(425, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Grey', '0607', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '123.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(426, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Clear New 6P', '0661', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '0.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(427, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Classic White 6P', '0959', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '0.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(428, 'WATER PROOFING', 'AP SMARTCARE UNYVERSEAL', '1095', 'Black New 6P', '2M59', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '280ml', '', '', '', '', '', '', '', '0.00', '91.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(429, 'WATER PROOFING', 'AP SMARTCARE AKRYLMAX', '1096', 'White', '0908', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '310 ml', '', '', '', '', '', '', '', '', '69.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(430, 'WATER PROOFING', 'AP SMARTCARE ROOF TAPE 10 m', '5402', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '428.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(431, 'WATER PROOFING', 'AP SMARTCARE ROOF TAPE INNER CORNER', '5403', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '429.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(432, 'WATER PROOFING', 'AP SMARTCARE ROOF TAPE OUTER CORNER', '5404', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '429.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(433, 'WATER PROOFING', 'AP SMARTCARE TERRACE TILE PRIMER', '5423', 'Yellow', '0339', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '', '', '', '', '', '', '', '1688.00', '360.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(434, 'WATER PROOFING', 'AP SMARTCARE HYBRID P U SEALANT', '5428', 'Grey', '0607', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '600 ml', '300 ml', '', '', '', '', '', '', '', '399.00', '222.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(435, 'THINNERS', 'AP Woodtech Melamyne Brushing Thinner', '0', 'AP Woodtech Melamyne Brushing Thinner', '2126', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '3L', '1 L', '', '', '', '', '', '', '0.00', '557.00', '190.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(436, 'THINNERS', 'AP Woodtech Melamyne Thiner 124', '0', 'AP Woodtech Melamyne Thiner 124', '0632', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '3L', '1 L', '', '', '', '', '', '', '2000.00', '330.00', '115.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(437, 'VARNISHES & BLACK BOARD PAINT', 'ASIAN PAINTS CLEAR SYNTHETIC VARNISH', '0703', 'Clear', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '3608.00', '1847.00', '748.00', '196.00', '101.50', '46.50', '0.00', '0.00', '0.00', 0),
(438, 'VARNISHES & BLACK BOARD PAINT', '3 MANGOES BLACKBOARD PAINT', '0222', 'Black', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '0.00', '0.00', '763.00', '198.00', '104.00', '47.50', '0.00', '0.00', '0.00', 0),
(439, 'METAL PRIMERS', 'AP TRUCARE METAL PRIMER', '0005', 'Redoxide', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '', '2399.00', '521.00', '138.00', '73.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(440, 'METAL PRIMERS', 'AP DECOPRIME PREMIUM METAL PRIMER', '0006', 'Deep Redoxide', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '', '3280.00', '705.00', '183.00', '95.00', '45.50', '0.00', '0.00', '0.00', '0.00', 0),
(441, 'WOOD PRIMERS', 'ASIAN PAINTS WOOD PRIMER', '0007', 'White', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2706.00', '1402.00', '579.00', '152.00', '80.50', '0.00', '0.00', '0.00', '0.00', 0),
(442, 'WOOD PRIMERS', 'ASIAN PAINTS WOOD PRIMER', '0007', 'Pink', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2533.00', '1311.00', '549.00', '144.00', '75.50', '0.00', '0.00', '0.00', '0.00', 0),
(443, 'ALUMINIUMPAINT', 'ASIAN PAINTS 3 MANGOES ALUMINIUM PAINT', '0009', 'Aluminium', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L ', '4 L', '1 L', '500 ml', '200 ml', '100 ml', '', '', '', '4670.00', '984.00', '256.00', '134.00', '60.50', '33.50', '0.00', '0.00', '0.00', 0),
(444, 'PUTTIES & FILLERS', 'ASIAN PAINTS KNIFING PASTE FILLER', '0016', 'Grey', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '15 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '2644.00', '1391.00', '485.00', '202.00', '105.00', '0.00', '0.00', '0.00', '0.00', 0),
(445, 'PUTTIES & FILLERS', 'TRUCARE ACRYLIC WALL PUTTY', '1354', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '30 kg', '15 kg', '5 kg', '2 kg', '1 kg', '', '', '', '', '1018.00', '897.00', '483.00', '259.00', '0.00', '56.00', '0.00', '0.00', '0.00', 0),
(446, 'WALL PRIMERS', 'TRUCARE INTERIOR WALL PRIMER - ST', '0359', 'White (Solvent Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2452.00', '1285.00', '541.00', '144.00', '78.00', '0.00', '0.00', '0.00', '0.00', 0),
(447, 'WALL PRIMERS', 'TRUCARE INTERIOR WALL PRIMER - WT', '0360', 'White(Water Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '1734.00', '926.00', '398.00', '109.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(448, 'WALL PRIMERS', 'ASIAN PAINTS UTSAV PRIMER', '0061', 'White (Solvent Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2218.00', '1150.00', '476.00', '125.00', '66.50', '0.00', '0.00', '0.00', '0.00', 0),
(449, 'WALL PRIMERS', 'ASIAN PAINTS UTSAV PRIMER', '0078', 'White(Water Based)', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '1303.00', '687.00', '303.00', '85.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(450, 'WALL PRIMERS', 'TRUCARE EXTERIOR WALL PRIMER', '0065', 'White(Water Based)', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2111.00', '1095.00', '462.00', '121.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(451, 'WALL PRIMERS', 'TRUCARE EXTERIOR WALL PRIMER', '0065', 'White C', 'Gr-2', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '2111.00', '1095.00', '462.00', '121.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(452, 'PRIMER SURFACER', 'APCOLITE SYN PRI SURFACER & BRUSHING FILLER', '0353', 'White', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 L', '10 L', '4 L', '1 L', '500 ml', '', '', '', '', '3097.00', '1595.00', '656.00', '172.00', '90.00', '0.00', '0.00', '0.00', '0.00', 0),
(453, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Red ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(454, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Yellow Oxide ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(455, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Orange ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(456, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Burnt Sienna ', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(457, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Red Oxide', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '106.00', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(458, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Blue ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(459, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Green ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(460, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Violet ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(461, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Yellow', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(462, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Fast Yellow Green ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(463, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Turkey Umber ', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(464, 'STAINERS', 'APCOLITE UNIVERSAL STAINERS', '0017', 'Black', 'Gr-3', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '0.00', '0.00', '0.00', '83.60', '55.00', '28.50', '0.00', '0.00', '0.00', 0),
(465, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Oak Yellow ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(466, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Red Brown ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(467, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Rose Wood ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(468, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Teak Walnut ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(469, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Dark Antique Pine ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(470, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Dark Indian Oak ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(471, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Dark Teak ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(472, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Mahogany ', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(473, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Green Walnut J', 'Gr-0', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1124.00', '242.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(474, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Charcoal', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(475, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Wenge', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(476, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Red', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(477, 'STAINERS', 'AP WOODTECH WOOD STAINS', '0556', 'Walnut-N', 'Gr-1', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5L', '1 L', '500 ml', '200 ml', '100 ml', '50 ml', '', '', '', '1194.00', '257.00', '142.00', '0.00', '31.00', '0.00', '0.00', '0.00', '0.00', 0),
(478, 'ADHESIVES', 'AP TRUGRIP ULTRA', '9442', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '50 kg', '20 kg', '10 kg', '5 kg', '2 kg', '1 kg', '500 g', '250 g', '125 g', '5900.00', '2440.00', '1243.00', '652.00', '272.00', '141.00', '82.00', '47.00', '25.00', 0),
(479, 'ADHESIVES', 'AP TRUGRIP MAX', '9801', 'Clear', '0000', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '4 L', '1 L', '500 ml', '200 ml', '', '', '', '', '', '880.00', '229.00', '125.00', '58.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(480, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Locite Quick', 'A001', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 g', '5 g', '1 g', '0.5g', '', '', '', '', '', '43.00', '21.00', '7.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(481, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'AP Loc Quick', 'H601', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '20 g', '5 g', '1 g', '0.5g', '', '', '', '', '', '0.00', '0.00', '3.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(482, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Locite Tough', 'A002', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '500 g', '90 g', '25 g', '', '', '', '', '', '', '341.00', '110.00', '48.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(483, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Locite Rapid', 'A003', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '500 g', '90 g', '25 g', '', '', '', '', '', '', '0.00', '122.00', '56.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(484, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Tough X Epoxy Resin', 'A006', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1 kg', '800 g', '', '', '', '', '', '', '', '458.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(485, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Tough X Epoxy Hardener', 'A006', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1 kg', '800 g', '', '', '', '', '', '', '', '0.00', '306.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(486, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Adhesive Combo Pack', 'A005', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '3891.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(487, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Epoxy Application TO - White', 'D666', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '40.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(488, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Epoxy Mixing TO - Red', 'D667', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '45.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(489, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Tool Kit for Professionals', 'D668', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(490, 'ADHESIVES', 'AP LOCTITE', 'AD01', 'Loctite Flex Easy', 'H602', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '30.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(491, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 20 M 1 PC', '9692', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '17.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(492, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 20 M 1 PC', '9693', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '12.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(493, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 30 M 1 PC', '9694', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '25.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(494, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 20 M 1 PC', '9695', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '34.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(495, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 25 M 1 PC', '9696', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '15.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(496, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 25 M 1 PC', '9897', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '21.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(497, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 40 M 1 PC', '9814', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '34.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(498, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 30 M 1 PC', '9805', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '18.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(499, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 40 M 1 PC', '9806', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '25.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(500, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 20 M 1 PC', '9807', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '25.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(501, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 25 M 1 PC', '9808', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '31.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(502, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 30 M 1 PC', '9809', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '37.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(503, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 40 M 1 PC', '9810', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '51.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(504, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 25 M 1 PC', '9811', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '42.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(505, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 30 M 1 PC', '9812', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '50.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(506, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 40 M 1 PC', '9813', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '68.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(507, 'ADHESIVES', 'AP MASKING TAPES', '3058', '2.4 CM X 15 M 1 PC', '9815', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '13.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(508, 'ADHESIVES', 'AP MASKING TAPES', '3058', '1.8 CM X 15 M 1 PC', '9816', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '9.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(509, 'ADHESIVES', 'AP MASKING TAPES', '3058', '3.6 CM X 15 M 1 PC', '9817', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '19.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(510, 'ADHESIVES', 'AP MASKING TAPES', '3058', '4.8 CM X 15 M 1 PC', '9818', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '26.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(511, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 30 M 1 PC', '9805', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(512, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 40 M 1 PC', '9806', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '27.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(513, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 20 M 1 PC', '9807', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '27.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(514, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 25 M 1 PC', '9808', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '33.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(515, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 30 M 1 PC', '9809', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '40.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(516, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 40 M 1 PC', '9810', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '54.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(517, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CMX 25 M 1 P', '9811', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '44.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(518, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 30 M 1 PC', '9812', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '53.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(519, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 40 M 1 PC', '9813', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '72.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(520, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CMX 40M 1 PC', '9814', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '36.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(521, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 15 M 1 PC', '9815', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '13.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0);
INSERT INTO `painttable` (`id`, `paint_type`, `paint_category`, `paint_category_code`, `paint_name`, `paint_code`, `paint_color`, `paint_quantity`, `paint_company_name`, `paint_purchase_date`, `paint_purchase_time`, `paint_size_1`, `paint_size_2`, `paint_size_3`, `paint_size_4`, `paint_size_5`, `paint_size_6`, `paint_size_7`, `paint_size_8`, `paint_size_9`, `paint_mrp_1`, `paint_mrp_2`, `paint_mrp_3`, `paint_mrp_4`, `paint_mrp_5`, `paint_mrp_6`, `paint_mrp_7`, `paint_mrp_8`, `paint_mrp_9`, `is_delete`) VALUES
(522, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X15 M 1 PC', '9816', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '10.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(523, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '3.6 CM X 15 M 1 PC', '9817', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '20.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(524, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 15 M 1 PC', '9818', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '27.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(525, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 20 M 1 PC', '9692', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '18.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(526, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 20 M 1 PC', '9693', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '13.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(527, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 30 M 1 PC', '9694', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '26.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(528, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '4.8 CM X 20 M 1 PC', '9695', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '36.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(529, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '1.8 CM X 25 M 1 PC', '9696', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '16.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0),
(530, 'ADHESIVES', 'AP TRUGRIP SUPER MASKING TAPES', '5060', '2.4 CM X 25 M 1 PC', '9697', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Per Piece', '', '', '', '', '', '', '', '', '22.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `x` varchar(45) DEFAULT '',
  `y` varchar(45) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prdtable`
--

CREATE TABLE `prdtable` (
  `id` int(11) NOT NULL COMMENT 'Auto ID',
  `prd_name` varchar(500) DEFAULT '' COMMENT 'Name of the product',
  `prd_hsn_code` varchar(100) DEFAULT '' COMMENT 'HSN Code of Product (The full form of HSN code means Harmonized System Nomenclature.)',
  `prd_code` varchar(100) DEFAULT NULL,
  `prd_description` varchar(500) DEFAULT '' COMMENT 'Product description',
  `prd_quantity` int(10) DEFAULT '0' COMMENT 'Product quantity',
  `prd_company_name` varchar(500) DEFAULT '' COMMENT 'Manufacture company name',
  `prd_purchase_date` timestamp NULL DEFAULT NULL COMMENT 'Product purchase date',
  `prd_purchase_time` timestamp NULL DEFAULT NULL COMMENT 'Product purchase time',
  `prd_size_1` varchar(50) DEFAULT '' COMMENT 'Product size',
  `prd_size_2` varchar(50) DEFAULT '',
  `prd_size_unit` varchar(50) DEFAULT '' COMMENT 'Unit Of Size',
  `prd_turn` varchar(50) DEFAULT '' COMMENT 'Turn value of any valve product',
  `prd_knob` varchar(50) DEFAULT '' COMMENT 'Predefine value of valve knob product',
  `prd_part_no_1` varchar(50) DEFAULT '' COMMENT 'Part Number 1',
  `prd_part_no_2` varchar(100) DEFAULT '',
  `prd_pkg` int(10) DEFAULT '0' COMMENT 'Standard Package Of Product',
  `prd_box_qty` int(10) DEFAULT '0' COMMENT 'Quantity Of Product In A Box',
  `prd_color` varchar(50) DEFAULT '0' COMMENT 'Product color',
  `prd_material_type` varchar(500) DEFAULT '' COMMENT 'Type of material',
  `prd_model` varchar(100) DEFAULT '' COMMENT 'Model number of the product',
  `prd_power` varchar(50) DEFAULT '' COMMENT 'Power value of product (kw/hp)',
  `prd_size_type` varchar(50) DEFAULT '' COMMENT 'Type of Size (Outlet / Inlet)',
  `prd_stage` varchar(50) DEFAULT '' COMMENT 'Stage value of the product',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT 'For Logical Delete ''0'' means not deleted 1 means deleted',
  `prd_category` tinyint(1) DEFAULT '0' COMMENT 'Category of product -0 for plumbing -1 for Electronic',
  `prd_mrp_1` decimal(10,2) DEFAULT '0.00',
  `prd_mrp_2` decimal(10,2) DEFAULT '0.00',
  `prd_mrp_3` decimal(10,2) DEFAULT '0.00',
  `prd_mrp_4` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prdtable`
--

INSERT INTO `prdtable` (`id`, `prd_name`, `prd_hsn_code`, `prd_code`, `prd_description`, `prd_quantity`, `prd_company_name`, `prd_purchase_date`, `prd_purchase_time`, `prd_size_1`, `prd_size_2`, `prd_size_unit`, `prd_turn`, `prd_knob`, `prd_part_no_1`, `prd_part_no_2`, `prd_pkg`, `prd_box_qty`, `prd_color`, `prd_material_type`, `prd_model`, `prd_power`, `prd_size_type`, `prd_stage`, `is_delete`, `prd_category`, `prd_mrp_1`, `prd_mrp_2`, `prd_mrp_3`, `prd_mrp_4`) VALUES
(1, 'Pipe SDR 11', '3917', NULL, ' (Class 1) 3 & 5 mtr. Length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '3/4', '2.0', '', '', '', '2129102', '2129112', 50, 0, '0', '', '', '', '', '', 0, 0, '111.00', '333.00', '555.00', '0.00'),
(2, 'Pipe SDR 11', '3917', NULL, ' (Class 1) 3 & 5 mtr. Length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2129103', '2129113', 25, 0, '0', '', '', '', '', '', 0, 0, '173.00', '519.00', '865.00', '0.00'),
(3, 'Pipe SDR 11', '3917', NULL, ' (Class 1) 3 & 5 mtr. Length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2129104', '2129114', 15, 0, '0', '', '', '', '', '', 0, 0, '277.50', '832.50', '1387.50', '0.00'),
(4, 'Pipe SDR 11', '3917', NULL, ' (Class 1) 3 & 5 mtr. Length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1½', '4.0', '', '', '', '2129105', '2129115', 10, 0, '0', '', '', '', '', '', 0, 0, '381.00', '1143.00', '1905.00', '0.00'),
(5, 'Pipe SDR 11', '3917', NULL, ' (Class 1) 3 & 5 mtr. Length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '2', '5.0', '', '', '', '2129106', '2129116', 10, 0, '0', '', '', '', '', '', 0, 0, '634.00', '1902.00', '3170.00', '0.00'),
(6, 'Pipe SDR 13.5', '3917', NULL, '(Class 2) 3 & 5 mtr. length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1/2', '1.5', '', '', '', '2129001', '2129011', 50, 0, '0', '', '', '', '', '', 0, 0, '65.50', '196.50', '327.50', '0.00'),
(7, 'Pipe SDR 13.5', '3917', NULL, '(Class 2) 3 & 5 mtr. length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '3/4', '2.0', '', '', '', '2129002', '2129012', 50, 0, '0', '', '', '', '', '', 0, 0, '102.00', '306.00', '510.00', '0.00'),
(8, 'Pipe SDR 13.5', '3917', NULL, '(Class 2) 3 & 5 mtr. length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2129003', '2129013', 25, 0, '0', '', '', '', '', '', 0, 0, '148.00', '444.00', '740.00', '0.00'),
(9, 'Pipe SDR 13.5', '3917', NULL, '(Class 2) 3 & 5 mtr. length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2129004', '2129014', 15, 0, '0', '', '', '', '', '', 0, 0, '234.00', '702.00', '1170.00', '0.00'),
(10, 'Pipe SDR 13.5', '3917', NULL, '(Class 2) 3 & 5 mtr. length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '1½', '4.0', '', '', '', '2129005', '2129015', 10, 0, '0', '', '', '', '', '', 0, 0, '322.00', '966.00', '1610.00', '0.00'),
(11, 'Pipe SDR 13.5', '3917', NULL, '(Class 2) 3 & 5 mtr. length MRP Rs. Incl. of all Taxes/Mtr', 0, '', NULL, NULL, '2', '5.0', '', '', '', '2129006', '2129016', 10, 0, '0', '', '', '', '', '', 0, 0, '530.00', '1590.00', '2650.00', '0.00'),
(12, 'Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1/2', '1.5', '', '', '', '2224701', '', 100, 4000, '0', '', '', '', '', '', 0, 0, '11.50', '1150.00', '0.00', '0.00'),
(13, 'Coupler', '3917', NULL, '', 0, '', NULL, NULL, '3/4', '2.0', '', '', '', '2224702', '', 50, 2000, '0', '', '', '', '', '', 0, 0, '14.00', '700.00', '0.00', '0.00'),
(14, 'Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224703', '', 50, 900, '0', '', '', '', '', '', 0, 0, '23.50', '1175.00', '0.00', '0.00'),
(15, 'Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224704', '', 25, 500, '0', '', '', '', '', '', 0, 0, '47.50', '1187.50', '0.00', '0.00'),
(16, 'Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1½', '4.0', '', '', '', '2224705', '', 10, 300, '0', '', '', '', '', '', 0, 0, '86.00', '860.00', '0.00', '0.00'),
(17, 'Coupler', '3917', NULL, '', 0, '', NULL, NULL, '2', '5.0', '', '', '', '2224706', '', 5, 150, '0', '', '', '', '', '', 0, 0, '179.50', '897.50', '0.00', '0.00'),
(18, 'Adapter', '3917', NULL, 'Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225301', '', 50, 3500, '0', '', '', '', '', '', 0, 0, '14.50', '725.00', '0.00', '0.00'),
(19, 'Adapter', '3917', NULL, 'Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225302', '', 50, 1600, '0', '', '', '', '', '', 0, 0, '20.00', '1000.00', '0.00', '0.00'),
(20, 'Adapter', '3917', NULL, 'Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225303', '', 25, 1000, '0', '', '', '', '', '', 0, 0, '30.00', '750.00', '0.00', '0.00'),
(21, 'Adapter', '3917', NULL, 'Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225304', '', 10, 500, '0', '', '', '', '', '', 0, 0, '52.50', '525.00', '0.00', '0.00'),
(22, 'Adapter', '3917', NULL, 'Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225305', '', 10, 350, '0', '', '', '', '', '', 0, 0, '78.00', '780.00', '0.00', '0.00'),
(23, 'Adapter', '3917', NULL, 'Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '2', '5', '', '', '', '2225306', '', 5, 175, '0', '', '', '', '', '', 0, 0, '150.00', '750.00', '0.00', '0.00'),
(24, 'Adapter', '3917', NULL, 'Reducing Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2225307', '', 25, 2000, '0', '', '', '', '', '', 0, 0, '28.00', '700.00', '0.00', '0.00'),
(25, 'Adapter', '3917', NULL, 'Reducing Male Adapter Plastic Threaded - MAPT', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2225309', '', 25, 1200, '0', '', '', '', '', '', 0, 0, '37.00', '925.00', '0.00', '0.00'),
(26, 'Elbow', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225701', '', 100, 3000, '0', '', '', '', '', '', 0, 0, '15.00', '1500.00', '0.00', '0.00'),
(27, 'Elbow', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225702', '', 100, 1200, '0', '', '', '', '', '', 0, 0, '16.50', '1650.00', '0.00', '0.00'),
(28, 'Elbow', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225703', '', 50, 600, '0', '', '', '', '', '', 0, 0, '35.00', '1750.00', '0.00', '0.00'),
(29, 'Elbow', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225704', '', 25, 300, '0', '', '', '', '', '', 0, 0, '76.50', '1912.50', '0.00', '0.00'),
(30, 'Elbow', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225705', '', 10, 200, '0', '', '', '', '', '', 0, 0, '143.50', '1435.00', '0.00', '0.00'),
(31, 'Elbow', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '2', '5', '', '', '', '2225706', '', 5, 80, '0', '', '', '', '', '', 0, 0, '296.00', '1480.00', '0.00', '0.00'),
(32, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2225707', '', 100, 1600, '0', '', '', '', '', '', 0, 0, '28.50', '2850.00', '0.00', '0.00'),
(33, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2225708', '', 25, 1000, '0', '', '', '', '', '', 0, 0, '45.50', '1137.50', '0.00', '0.00'),
(34, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2225709', '', 25, 600, '0', '', '', '', '', '', 0, 0, '69.00', '1725.00', '0.00', '0.00'),
(35, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1¼x ¾', '3.2x 2.0', '', '', '', '2225711', '', 10, 400, '0', '', '', '', '', '', 0, 0, '82.50', '825.00', '0.00', '0.00'),
(36, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1¼x 1', '3.2x 2.5', '', '', '', '2225712', '', 10, 400, '0', '', '', '', '', '', 0, 0, '87.00', '870.00', '0.00', '0.00'),
(37, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1½x ¾', '4.0x 2.0', '', '', '', '2225723', '', 5, 0, '0', '', '', '', '', '', 0, 0, '110.50', '552.50', '0.00', '0.00'),
(38, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1½x 1', '4.0x 2.5', '', '', '', '2225725', '', 5, 0, '0', '', '', '', '', '', 0, 0, '134.50', '672.50', '0.00', '0.00'),
(39, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '1½x 1¼', '4.0x 3.2', '', '', '', '2225726', '', 5, 0, '0', '', '', '', '', '', 0, 0, '160.50', '802.50', '0.00', '0.00'),
(40, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '2x ¾', '5.0x 2.0', '', '', '', '2225727', '', 5, 0, '0', '', '', '', '', '', 0, 0, '305.00', '1525.00', '0.00', '0.00'),
(41, 'Reducer ', '3917', NULL, 'Elbow 90°', 0, '', NULL, NULL, '2x 1', '5.0x 2.5', '', '', '', '2225728', '', 5, 0, '0', '', '', '', '', '', 0, 0, '312.00', '1560.00', '0.00', '0.00'),
(42, 'Adapter', '3917', NULL, 'Female Adapter Plastic Threaded - FAPT', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225401', '', 50, 2500, '0', '', '', '', '', '', 0, 0, '18.50', '925.00', '0.00', '0.00'),
(43, 'Adapter', '3917', NULL, 'Female Adapter Plastic Threaded - FAPT', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225402', '', 50, 1300, '0', '', '', '', '', '', 0, 0, '27.00', '1350.00', '0.00', '0.00'),
(44, 'Adapter', '3917', NULL, 'Female Adapter Plastic Threaded - FAPT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225403', '', 25, 700, '0', '', '', '', '', '', 0, 0, '39.00', '975.00', '0.00', '0.00'),
(45, 'Adapter', '3917', NULL, 'Female Adapter Plastic Threaded - FAPT', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225404', '', 10, 350, '0', '', '', '', '', '', 0, 0, '104.00', '1040.00', '0.00', '0.00'),
(46, 'Adapter', '3917', NULL, 'Female Adapter Plastic Threaded - FAPT', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225405', '', 10, 250, '0', '', '', '', '', '', 0, 0, '136.00', '1360.00', '0.00', '0.00'),
(47, 'Adapter', '3917', NULL, 'Female Adapter Plastic Threaded - FAPT', 0, '', NULL, NULL, '2', '5', '', '', '', '2225406', '', 5, 130, '0', '', '', '', '', '', 0, 0, '213.50', '1067.50', '0.00', '0.00'),
(48, 'Union', '3917', NULL, '', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225901', '', 10, 1200, '0', '', '', '', '', '', 0, 0, '50.50', '505.00', '0.00', '0.00'),
(49, 'Union', '3917', NULL, '', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225902', '', 10, 500, '0', '', '', '', '', '', 0, 0, '78.00', '780.00', '0.00', '0.00'),
(50, 'Union', '3917', NULL, '', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225903', '', 10, 450, '0', '', '', '', '', '', 0, 0, '98.50', '985.00', '0.00', '0.00'),
(51, 'Union', '3917', NULL, '', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225904', '', 10, 250, '0', '', '', '', '', '', 0, 0, '158.50', '1585.00', '0.00', '0.00'),
(52, 'Union', '3917', NULL, '', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225905', '', 5, 150, '0', '', '', '', '', '', 0, 0, '263.00', '1315.00', '0.00', '0.00'),
(53, 'Union', '3917', NULL, '', 0, '', NULL, NULL, '2', '5', '', '', '', '2225906', '', 5, 70, '0', '', '', '', '', '', 0, 0, '472.50', '2362.50', '0.00', '0.00'),
(54, 'End Cap', '3917', NULL, '', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2224721', '', 100, 6000, '0', '', '', '', '', '', 0, 0, '9.50', '950.00', '0.00', '0.00'),
(55, 'End Cap', '3917', NULL, '', 0, '', NULL, NULL, '¾', '2', '', '', '', '2224722', '', 50, 3000, '0', '', '', '', '', '', 0, 0, '12.00', '600.00', '0.00', '0.00'),
(56, 'End Cap', '3917', NULL, '', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224723', '', 25, 1500, '0', '', '', '', '', '', 0, 0, '19.50', '487.50', '0.00', '0.00'),
(57, 'End Cap', '3917', NULL, '', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224724', '', 10, 800, '0', '', '', '', '', '', 0, 0, '41.00', '410.00', '0.00', '0.00'),
(58, 'End Cap', '3917', NULL, '', 0, '', NULL, NULL, '1½', '4', '', '', '', '2224725', '', 10, 600, '0', '', '', '', '', '', 0, 0, '60.00', '600.00', '0.00', '0.00'),
(59, 'End Cap', '3917', NULL, '', 0, '', NULL, NULL, '2', '5', '', '', '', '2224726', '', 10, 250, '0', '', '', '', '', '', 0, 0, '127.00', '1270.00', '0.00', '0.00'),
(60, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2223601', '', 25, 600, '0', '', '', '', '', '', 0, 0, '52.50', '1312.50', '0.00', '0.00'),
(61, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '¾', '2', '', '', '', '2223602', '', 10, 500, '0', '', '', '', '', '', 0, 0, '57.50', '575.00', '0.00', '0.00'),
(62, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2223603', '', 10, 250, '0', '', '', '', '', '', 0, 0, '87.00', '870.00', '0.00', '0.00'),
(63, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2223604', '', 10, 200, '0', '', '', '', '', '', 0, 0, '136.00', '1360.00', '0.00', '0.00'),
(64, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '1½', '4', '', '', '', '2223605', '', 10, 130, '0', '', '', '', '', '', 0, 0, '198.50', '1985.00', '0.00', '0.00'),
(65, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '2', '5', '', '', '', '2223606', '', 5, 100, '0', '', '', '', '', '', 0, 0, '312.50', '1562.50', '0.00', '0.00'),
(66, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2223609', '', 1, 20, '0', '', '', '', '', '', 0, 0, '1333.50', '1333.50', '0.00', '0.00'),
(67, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '3', '8', '', '', '', '2223610', '', 1, 15, '0', '', '', '', '', '', 0, 0, '1752.00', '1752.00', '0.00', '0.00'),
(68, 'Tank Nipple', '3917', NULL, '', 0, '', NULL, NULL, '4', '10', '', '', '', '2223621', '', 1, 8, '0', '', '', '', '', '', 0, 0, '3354.00', '3354.00', '0.00', '0.00'),
(69, 'Tank Nipple', '3917', NULL, 'with one side pipe fitment', 0, '', NULL, NULL, '¾', '2', '', '', '', '2223607', '', 10, 500, '0', '', '', '', '', '', 0, 0, '48.50', '485.00', '0.00', '0.00'),
(70, 'Tank Nipple', '3917', NULL, 'with one side pipe fitment', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2223608', '', 10, 300, '0', '', '', '', '', '', 0, 0, '76.50', '765.00', '0.00', '0.00'),
(71, 'Tank Nipple', '3917', NULL, 'with one side pipe fitment', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2223625', '', 10, 200, '0', '', '', '', '', '', 0, 0, '133.00', '1330.00', '0.00', '0.00'),
(72, 'Tank Nipple', '3917', NULL, 'with one side pipe fitment', 0, '', NULL, NULL, '1 ½', '4', '', '', '', '2223626', '', 10, 150, '0', '', '', '', '', '', 0, 0, '181.50', '1815.00', '0.00', '0.00'),
(73, 'Tank Nipple', '3917', NULL, 'with one side pipe fitment', 0, '', NULL, NULL, '2', '5', '', '', '', '2223627', '', 5, 100, '0', '', '', '', '', '', 0, 0, '317.50', '1587.50', '0.00', '0.00'),
(74, 'Hex Nipple', '3917', NULL, '', 0, '', NULL, NULL, '¾', '2', '', '', '', '2223707', '', 25, 1500, '0', '', '', '', '', '', 0, 0, '21.00', '525.00', '0.00', '0.00'),
(75, 'Hex Nipple', '3917', NULL, '', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2223708', '', 10, 800, '0', '', '', '', '', '', 0, 0, '35.00', '350.00', '0.00', '0.00'),
(76, 'Hex Nipple', '3917', NULL, '', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2223709', '', 10, 500, '0', '', '', '', '', '', 0, 0, '53.50', '535.00', '0.00', '0.00'),
(77, 'Hex Nipple', '3917', NULL, '', 0, '', NULL, NULL, '1 ½', '4', '', '', '', '2223710', '', 5, 400, '0', '', '', '', '', '', 0, 0, '80.00', '400.00', '0.00', '0.00'),
(78, 'Hex Nipple', '3917', NULL, '', 0, '', NULL, NULL, '2', '5', '', '', '', '2223711', '', 5, 200, '0', '', '', '', '', '', 0, 0, '119.00', '595.00', '0.00', '0.00'),
(79, 'Elbow', '3917', NULL, 'Elbow 45°', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225801', '', 25, 3000, '0', '', '', '', '', '', 0, 0, '17.00', '425.00', '0.00', '0.00'),
(80, 'Elbow', '3917', NULL, 'Elbow 45°', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225802', '', 25, 1500, '0', '', '', '', '', '', 0, 0, '25.00', '625.00', '0.00', '0.00'),
(81, 'Elbow', '3917', NULL, 'Elbow 45°', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225803', '', 10, 600, '0', '', '', '', '', '', 0, 0, '43.00', '430.00', '0.00', '0.00'),
(82, 'Elbow', '3917', NULL, 'Elbow 45°', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225804', '', 10, 400, '0', '', '', '', '', '', 0, 0, '97.50', '975.00', '0.00', '0.00'),
(83, 'Elbow', '3917', NULL, 'Elbow 45°', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225805', '', 10, 250, '0', '', '', '', '', '', 0, 0, '149.50', '1495.00', '0.00', '0.00'),
(84, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2224751', '', 50, 6000, '0', '', '', '', '', '', 0, 0, '11.50', '575.00', '0.00', '0.00'),
(85, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2224752', '', 50, 2000, '0', '', '', '', '', '', 0, 0, '25.00', '1250.00', '0.00', '0.00'),
(86, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2224753', '', 25, 2000, '0', '', '', '', '', '', 0, 0, '17.00', '425.00', '0.00', '0.00'),
(87, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1¼x ½', '3.2x 1.5', '', '', '', '2224754', '', 10, 1200, '0', '', '', '', '', '', 0, 0, '47.00', '470.00', '0.00', '0.00'),
(88, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1¼x ¾', '3.2x 2.0', '', '', '', '2224755', '', 10, 1200, '0', '', '', '', '', '', 0, 0, '34.00', '340.00', '0.00', '0.00'),
(89, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1¼x 1', '3.2x 2.5', '', '', '', '2224756', '', 10, 1200, '0', '', '', '', '', '', 0, 0, '29.50', '295.00', '0.00', '0.00'),
(90, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1½x ½', '4.0x 1.5', '', '', '', '2224757', '', 10, 700, '0', '', '', '', '', '', 0, 0, '71.50', '715.00', '0.00', '0.00'),
(91, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1½x ¾', '4.0x 2.0', '', '', '', '2224758', '', 10, 700, '0', '', '', '', '', '', 0, 0, '53.50', '535.00', '0.00', '0.00'),
(92, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1½x 1', '4.0x 2.5', '', '', '', '2224759', '', 10, 700, '0', '', '', '', '', '', 0, 0, '52.50', '525.00', '0.00', '0.00'),
(93, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '1½x 1¼', '4.0x 3.2', '', '', '', '2224760', '', 10, 700, '0', '', '', '', '', '', 0, 0, '38.50', '385.00', '0.00', '0.00'),
(94, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '2x ½', '5.0x 1.5', '', '', '', '2224761', '', 10, 350, '0', '', '', '', '', '', 0, 0, '113.00', '1130.00', '0.00', '0.00'),
(95, 'Bushing', '3917', NULL, '', 0, '', NULL, NULL, '2x ¾', '5.0x 2.0', '', '', '', '2224762', '', 10, 350, '0', '', '', '', '', '', 0, 0, '104.00', '1040.00', '0.00', '0.00'),
(96, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '½x ½x ¾', '1.5x 1.5x 2.0', '', '', '', '2224901', '', 50, 800, '0', '', '', '', '', '', 0, 0, '44.00', '2200.00', '0.00', '0.00'),
(97, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '¾x ½x ½', '2.0x 1.5x 1.5', '', '', '', '2224902', '', 50, 800, '0', '', '', '', '', '', 0, 0, '44.50', '2225.00', '0.00', '0.00'),
(98, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '¾x ½x ¾', '2.0x 1.5x 2.0', '', '', '', '2224903', '', 50, 800, '0', '', '', '', '', '', 0, 0, '40.50', '2025.00', '0.00', '0.00'),
(99, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '¾x ¾x ½', '2.0x 2.0x 1.5', '', '', '', '2224904', '', 50, 1000, '0', '', '', '', '', '', 0, 0, '45.00', '2250.00', '0.00', '0.00'),
(100, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1x 1x ½', '2.5x 2.5x 1.5', '', '', '', '2224905', '', 25, 600, '0', '', '', '', '', '', 0, 0, '71.50', '1787.50', '0.00', '0.00'),
(101, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1x 1x ¾', '2.5x 2.5x 2.0', '', '', '', '2224906', '', 25, 500, '0', '', '', '', '', '', 0, 0, '81.50', '2037.50', '0.00', '0.00'),
(102, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1¼x 1¼x ½', '3.2x 3.2x 1.5', '', '', '', '2224907', '', 10, 250, '0', '', '', '', '', '', 0, 0, '128.00', '1280.00', '0.00', '0.00'),
(103, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1¼x 1¼x ¾', '3.2x 3.2x 2.0', '', '', '', '2224908', '', 10, 250, '0', '', '', '', '', '', 0, 0, '150.50', '1505.00', '0.00', '0.00'),
(104, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1¼x 1¼x 1', '3.2x 3.2x 2.5', '', '', '', '2224909', '', 10, 250, '0', '', '', '', '', '', 0, 0, '125.00', '1250.00', '0.00', '0.00'),
(105, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1½x 1½x ½', '4.0x 4.0x 1.5', '', '', '', '2224910', '', 10, 150, '0', '', '', '', '', '', 0, 0, '206.50', '2065.00', '0.00', '0.00'),
(106, 'Reducer Tee', '3917', NULL, '', 0, '', NULL, NULL, '1½x 1½x ¾', '4.0x 4.0x 2.0', '', '', '', '2224911', '', 10, 150, '0', '', '', '', '', '', 0, 0, '205.50', '2055.00', '0.00', '0.00'),
(107, '3 Way Elbow', '3917', NULL, '', 0, '', NULL, NULL, '¾', '2.0', '', '', '', '2225722', '', 25, 800, '0', '', '', '', '', '', 0, 0, '47.50', '1187.50', '0.00', '0.00'),
(108, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2224601', '', 50, 2500, '0', '', '', '', '', '', 0, 0, '21.00', '1050.00', '0.00', '0.00'),
(109, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2224602', '', 25, 1500, '0', '', '', '', '', '', 0, 0, '30.00', '750.00', '0.00', '0.00'),
(110, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2224603', '', 25, 1200, '0', '', '', '', '', '', 0, 0, '33.00', '825.00', '0.00', '0.00'),
(111, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1¼x ½', '3.2x 1.5', '', '', '', '2224604', '', 10, 700, '0', '', '', '', '', '', 0, 0, '70.00', '700.00', '0.00', '0.00'),
(112, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1¼x ¾', '3.2x 2.0', '', '', '', '2224605', '', 10, 700, '0', '', '', '', '', '', 0, 0, '66.50', '665.00', '0.00', '0.00'),
(113, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1¼x 1', '3.2x 2.5', '', '', '', '2224606', '', 10, 700, '0', '', '', '', '', '', 0, 0, '71.50', '715.00', '0.00', '0.00'),
(114, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1½x ½', '4.0x 1.5', '', '', '', '2224607', '', 10, 500, '0', '', '', '', '', '', 0, 0, '102.50', '1025.00', '0.00', '0.00'),
(115, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1½x ¾', '4.0x 2.0', '', '', '', '2224608', '', 10, 400, '0', '', '', '', '', '', 0, 0, '113.00', '1130.00', '0.00', '0.00'),
(116, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1½x 1', '4.0x 2.5', '', '', '', '2224609', '', 10, 400, '0', '', '', '', '', '', 0, 0, '104.00', '1040.00', '0.00', '0.00'),
(117, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '1½x 1¼', '4.0x 3.2', '', '', '', '2224610', '', 10, 300, '0', '', '', '', '', '', 0, 0, '99.00', '990.00', '0.00', '0.00'),
(118, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '2x ½', '5.0x 1.5', '', '', '', '2224611', '', 5, 200, '0', '', '', '', '', '', 0, 0, '205.00', '1025.00', '0.00', '0.00'),
(119, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '2x ¾', '5.0x 2.0', '', '', '', '2224612', '', 5, 200, '0', '', '', '', '', '', 0, 0, '239.50', '1197.50', '0.00', '0.00'),
(120, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '2x 1', '5.0x 2.5', '', '', '', '2224613', '', 5, 200, '0', '', '', '', '', '', 0, 0, '175.00', '875.00', '0.00', '0.00'),
(121, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '2x 1¼', '5.0x 3.2', '', '', '', '2224614', '', 5, 200, '0', '', '', '', '', '', 0, 0, '191.50', '957.50', '0.00', '0.00'),
(122, 'Reducer Coupler', '3917', NULL, '', 0, '', NULL, NULL, '2x 1½', '5.0x 4.0', '', '', '', '2224615', '', 5, 200, '0', '', '', '', '', '', 0, 0, '238.50', '1192.50', '0.00', '0.00'),
(123, 'Bushing', '3917', NULL, 'Converter Bushing (CTS)', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2224781', '', 25, 3500, '0', '', '', '', '', '', 0, 0, '12.50', '312.50', '0.00', '0.00'),
(124, 'Bushing', '3917', NULL, 'Converter Bushing (CTS)', 0, '', NULL, NULL, '¾', '2', '', '', '', '2224782', '', 25, 2000, '0', '', '', '', '', '', 0, 0, '15.00', '375.00', '0.00', '0.00'),
(125, 'Bushing', '3917', NULL, 'Converter Bushing (CTS)', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224783', '', 25, 1250, '0', '', '', '', '', '', 0, 0, '22.50', '562.50', '0.00', '0.00'),
(126, 'Bushing', '3917', NULL, 'Converter Bushing (CTS)', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224784', '', 10, 800, '0', '', '', '', '', '', 0, 0, '40.00', '400.00', '0.00', '0.00'),
(127, 'Bushing', '3917', NULL, 'Converter Bushing (CTS)', 0, '', NULL, NULL, '1½', '4', '', '', '', '2224785', '', 10, 500, '0', '', '', '', '', '', 0, 0, '51.00', '510.00', '0.00', '0.00'),
(128, 'Bushing', '3917', NULL, 'Converter Bushing (CTS)', 0, '', NULL, NULL, '2', '5', '', '', '', '2224786', '', 5, 250, '0', '', '', '', '', '', 0, 0, '77.50', '387.50', '0.00', '0.00'),
(129, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '½x ½', '1.5x 1.5', '', '', '', '2226101', '', 25, 500, '0', '', '', '', '', '', 0, 0, '62.00', '1550.00', '0.00', '0.00'),
(130, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2226102', '', 25, 400, '0', '', '', '', '', '', 0, 0, '65.00', '1625.00', '0.00', '0.00'),
(131, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '¾x ¾', '2.0x 2.0', '', '', '', '2226103', '', 10, 300, '0', '', '', '', '', '', 0, 0, '91.50', '915.00', '0.00', '0.00'),
(132, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2226104', '', 10, 300, '0', '', '', '', '', '', 0, 0, '122.50', '1225.00', '0.00', '0.00'),
(133, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2226107', '', 10, 200, '0', '', '', '', '', '', 0, 0, '188.50', '1885.00', '0.00', '0.00'),
(134, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '1x 1', '2.5x 2.5', '', '', '', '2226105', '', 10, 200, '0', '', '', '', '', '', 0, 0, '366.00', '3660.00', '0.00', '0.00'),
(135, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '1¼x ½', '3.2x 1.5', '', '', '', '2226108', '', 5, 150, '0', '', '', '', '', '', 0, 0, '223.50', '1117.50', '0.00', '0.00'),
(136, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '1¼x ¾', '3.2x 2.0', '', '', '', '2226109', '', 5, 150, '0', '', '', '', '', '', 0, 0, '262.50', '1312.50', '0.00', '0.00'),
(137, 'Elbow', '3917', NULL, 'Elbow 90° (Brass)', 0, '', NULL, NULL, '1¼x 1¼', '3.2x 3.2', '', '', '', '2226106', '', 5, 100, '0', '', '', '', '', '', 0, 0, '474.50', '2372.50', '0.00', '0.00'),
(138, 'Elbow', '3917', NULL, 'Brass Elbow With Clamp', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2229302', '', 10, 300, '0', '', '', '', '', '', 0, 0, '88.50', '885.00', '0.00', '0.00'),
(139, 'Union', '3917', NULL, 'Union FABT', 0, '', NULL, NULL, '¾', '¾', '', '', '', '2226302', '', 5, 100, '0', '', '', '', '', '', 0, 0, '259.50', '1297.50', '0.00', '0.00'),
(140, 'Union', '3917', NULL, 'Union FABT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2226303', '', 5, 50, '0', '', '', '', '', '', 0, 0, '423.50', '2117.50', '0.00', '0.00'),
(141, 'Elbow', '3917', NULL, 'Brass Elbow MABT', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2229207', '', 10, 350, '0', '', '', '', '', '', 0, 0, '168.00', '1680.00', '0.00', '0.00'),
(142, 'Tee', '3917', NULL, 'Brass Tee - MABT', 0, '', NULL, NULL, '¾x ¾x ½', '2.0x 2.0x 1.5', '', '', '', '2221602', '', 10, 250, '0', '', '', '', '', '', 0, 0, '107.00', '1070.00', '0.00', '0.00'),
(143, 'Elbow', '3917', NULL, 'Brass Elbow Long', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2229102', '', 10, 250, '0', '', '', '', '', '', 0, 0, '176.00', '1760.00', '0.00', '0.00'),
(144, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '½x ½x ½', '1.5x 1.5x 1.5', '', '', '', '2225601', '', 25, 500, '0', '', '', '', '', '', 0, 0, '80.00', '2000.00', '0.00', '0.00'),
(145, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '¾x ¾x ½', '2.0x 2.0x 1.5', '', '', '', '2225602', '', 10, 300, '0', '', '', '', '', '', 0, 0, '81.00', '810.00', '0.00', '0.00'),
(146, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '¾x ¾x ¾', '2.0x 2.0x 2.0', '', '', '', '2225605', '', 10, 250, '0', '', '', '', '', '', 0, 0, '120.00', '1200.00', '0.00', '0.00'),
(147, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '1x 1x ½', '2.5x 2.5x 1.5', '', '', '', '2225603', '', 10, 200, '0', '', '', '', '', '', 0, 0, '139.00', '1390.00', '0.00', '0.00'),
(148, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '1x 1x ¾', '2.5x 2.5x 2.0', '', '', '', '2225604', '', 10, 150, '0', '', '', '', '', '', 0, 0, '205.00', '2050.00', '0.00', '0.00'),
(149, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '1x 1x 1', '2.5x 2.5x 2.5', '', '', '', '2225607', '', 10, 150, '0', '', '', '', '', '', 0, 0, '256.50', '2565.00', '0.00', '0.00'),
(150, 'Tee', '3917', NULL, 'Tee (Brass)', 0, '', NULL, NULL, '1¼x 1¼x ½', '3.2x 3.2x 1.5', '', '', '', '2225606', '', 5, 120, '0', '', '', '', '', '', 0, 0, '257.00', '1285.00', '0.00', '0.00'),
(151, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225201', '', 10, 350, '0', '', '', '', '', '', 0, 0, '350.00', '147.00', '0.00', '0.00'),
(152, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225202', '', 10, 250, '0', '', '', '', '', '', 0, 0, '250.00', '188.50', '0.00', '0.00'),
(153, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225203', '', 5, 100, '0', '', '', '', '', '', 0, 0, '100.00', '292.50', '0.00', '0.00'),
(154, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225204', '', 2, 60, '0', '', '', '', '', '', 0, 0, '60.00', '607.50', '0.00', '0.00'),
(155, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225205', '', 2, 50, '0', '', '', '', '', '', 0, 0, '50.00', '758.00', '0.00', '0.00'),
(156, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '2', '5', '', '', '', '2225206', '', 1, 25, '0', '', '', '', '', '', 0, 0, '25.00', '1452.50', '0.00', '0.00'),
(157, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2225210', '', 1, 15, '0', '', '', '', '', '', 0, 0, '15.00', '2225.50', '0.00', '0.00'),
(158, 'Adapter ', '3917', NULL, 'Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '3', '8', '', '', '', '2225211', '', 1, 250, '0', '', '', '', '', '', 0, 0, '6.00', '3085.00', '0.00', '0.00'),
(159, 'Adapter ', '3917', NULL, '3 in 1 Mixer Adaptor All Top (6”) -', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2221007', '', 1, 70, '0', '', '', '', '', '', 0, 0, '337.00', '337.00', '0.00', '0.00'),
(160, 'Adapter ', '3917', NULL, '3 in 1 Mixer Adaptor All Top (6”) -', 0, '', NULL, NULL, '1½', '2.5x 1.5', '', '', '', '2221005', '', 1, 50, '0', '', '', '', '', '', 0, 0, '411.00', '411.00', '0.00', '0.00'),
(161, 'Adapter ', '3917', NULL, 'Reducing Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2225207', '', 10, 300, '0', '', '', '', '', '', 0, 0, '114.00', '1140.00', '0.00', '0.00'),
(162, 'Adapter ', '3917', NULL, 'Reducing Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2225208', '', 10, 200, '0', '', '', '', '', '', 0, 0, '212.00', '2120.00', '0.00', '0.00'),
(163, 'Adapter ', '3917', NULL, 'Reducing Male Adapter Brass Threaded - MABT', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2225209', '', 10, 200, '0', '', '', '', '', '', 0, 0, '208.00', '2080.00', '0.00', '0.00'),
(164, 'Union ', '3917', NULL, 'Union - MABT', 0, '', NULL, NULL, '¾', '2', '', '', '', '2226202', '', 5, 100, '0', '', '', '', '', '', 0, 0, '271.00', '1355.00', '0.00', '0.00'),
(165, 'Union ', '3917', NULL, 'Union - MABT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2226203', '', 5, 50, '0', '', '', '', '', '', 0, 0, '444.00', '2220.00', '0.00', '0.00'),
(166, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2225101', '', 10, 350, '0', '', '', '', '', '', 0, 0, '141.50', '1415.00', '0.00', '0.00'),
(167, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225102', '', 10, 250, '0', '', '', '', '', '', 0, 0, '188.50', '1885.00', '0.00', '0.00'),
(168, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225103', '', 5, 100, '0', '', '', '', '', '', 0, 0, '292.50', '1462.50', '0.00', '0.00'),
(169, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225104', '', 2, 60, '0', '', '', '', '', '', 0, 0, '618.50', '1237.00', '0.00', '0.00'),
(170, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225105', '', 2, 50, '0', '', '', '', '', '', 0, 0, '692.00', '1384.00', '0.00', '0.00'),
(171, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '2', '5', '', '', '', '2225106', '', 1, 25, '0', '', '', '', '', '', 0, 0, '1328.50', '1328.50', '0.00', '0.00'),
(172, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2225110', '', 1, 15, '0', '', '', '', '', '', 0, 0, '2301.50', '2301.50', '0.00', '0.00'),
(173, 'Adapter ', '3917', NULL, 'Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '3', '8', '', '', '', '2225111', '', 1, 10, '0', '', '', '', '', '', 0, 0, '3046.00', '3046.00', '0.00', '0.00'),
(174, 'Top and Bottom', '3917', NULL, 'Top and Bottom (6”)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2221107', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(175, 'Top and Bottom', '3917', NULL, 'Top and Bottom (6”)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2221105', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(176, 'Top and Side ', '3917', NULL, 'Top and Side (6”)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2221207', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(177, 'Top and Side ', '3917', NULL, 'Top and Side (6”)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2221205', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(178, 'Hot Up and Cold Down', '3917', NULL, 'Hot Up and Cold Down (6”)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2221017', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(179, 'Hot Up and Cold Down', '3917', NULL, 'Hot Up and Cold Down (6”)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2221015', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(180, 'Hot Side and Cold Down', '3917', NULL, 'Hot Side and Cold Down (6”)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2221027', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(181, 'Hot Side and Cold Down', '3917', NULL, 'Hot Side and Cold Down(6”)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2221025', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(182, 'All Top', '3917', NULL, 'All Top (7\")', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2222007', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(183, 'All Top', '3917', NULL, 'All Top (7\")', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2222005', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(184, 'Top and Bottom ', '3917', NULL, 'Top and Bottom (7\")', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2222107', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(185, 'Top and Bottom ', '3917', NULL, 'Top and Bottom (7\")', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2222105', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(186, 'Adapter ', '3917', NULL, 'Reducing Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2225107', '', 10, 500, '0', '', '', '', '', '', 0, 0, '80.50', '805.00', '0.00', '0.00'),
(187, 'Adapter ', '3917', NULL, 'Reducing Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '1x ½', '2.5x 1.5', '', '', '', '2225108', '', 10, 400, '0', '', '', '', '', '', 0, 0, '103.50', '1035.00', '0.00', '0.00'),
(188, 'Adapter ', '3917', NULL, 'Reducing Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '1x ¾', '2.5x 2.0', '', '', '', '2225109', '', 10, 400, '0', '', '', '', '', '', 0, 0, '109.00', '1090.00', '0.00', '0.00'),
(189, 'Adapter ', '3917', NULL, 'Reducing Female Adapter Brass Threaded - FABT', 0, '', NULL, NULL, '1¼x ½', '3.2x 1.5', '', '', '', '', '', 0, 0, '0', '', '', '', '', '', 0, 0, '0.00', '0.00', '0.00', '0.00'),
(190, 'Top and Side', '3917', NULL, 'Top and Side (7\")', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2222207', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(191, 'Top and Side', '3917', NULL, 'Top and Side (7\")', 0, '', NULL, NULL, '1x ½', '2.5x 1.5 ', '', '', '', '2222305', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(192, 'Hot Up and Cold Down', '3917', NULL, 'Hot Up and Cold Down (7”)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2222017', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(193, 'Hot Up and Cold Down', '3917', NULL, 'Hot Up and Cold Down (7”)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5 ', '', '', '', '2222015', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(194, 'Hot Side and Cold Down', '3917', NULL, 'Hot Side and Cold Down (7”)', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2222027', '', 1, 70, '0', '', '', '', '', '', 0, 0, '357.00', '357.00', '0.00', '0.00'),
(195, 'Hot Side and Cold Down', '3917', NULL, 'Hot Side and Cold Down (7”)', 0, '', NULL, NULL, '1x ½', '2.5x 1.5 ', '', '', '', '2222025', '', 1, 50, '0', '', '', '', '', '', 0, 0, '435.50', '435.50', '0.00', '0.00'),
(196, 'Adapter ', '3917', NULL, '3 in 1 Mixer Adaptor With MABT', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2221407', '', 1, 70, '0', '', '', '', '', '', 0, 0, '565.00', '565.00', '0.00', '0.00'),
(197, 'Adapter ', '3917', NULL, '3 in 1 Mixer Adaptor With MABT Bottom', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2221507', '', 1, 70, '0', '', '', '', '', '', 0, 0, '565.00', '565.00', '0.00', '0.00'),
(198, 'Adapter ', '3917', NULL, '3 in 1 Mixer Adaptor With MABT Top and Side', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5', '', '', '', '2221607', '', 1, 70, '0', '', '', '', '', '', 0, 0, '565.00', '565.00', '0.00', '0.00'),
(199, 'Adapter ', '3917', NULL, 'Kitchen Mixer Adaptor Down -', 0, '', NULL, NULL, '¾x ½', ' 2.0x 1.5 ', '', '', '', '2224007', '', 1, 80, '0', '', '', '', '', '', 0, 0, '305.50', '305.50', '0.00', '0.00'),
(200, 'Adapter ', '3917', NULL, 'Kitchen Mixer Adaptor Straight', 0, '', NULL, NULL, '¾x ½', '2.0x 1.5 ', '', '', '', '2224107', '', 1, 120, '0', '', '', '', '', '', 0, 0, '270.00', '270.00', '0.00', '0.00'),
(201, 'Nipple', '3917', NULL, 'Extension Nipple', 0, '', NULL, NULL, '½x 1', '1.5x 2.5 ', '', '', '', '2229402', '', 10, 500, '0', '', '', '', '', '', 0, 0, '85.50', '855.00', '0.00', '0.00'),
(202, 'Nipple', '3917', NULL, 'Extension Nipple', 0, '', NULL, NULL, '½x 1½', ' 1.5x 4.0 ', '', '', '', '2229403', '', 10, 350, '0', '', '', '', '', '', 0, 0, '114.00', '1140.00', '0.00', '0.00'),
(203, 'Nipple', '3917', NULL, 'Extension Nipple', 0, '', NULL, NULL, '½x 2', '1.5x 5.0 ', '', '', '', '2229404', '', 10, 250, '0', '', '', '', '', '', 0, 0, '158.50', '1585.00', '0.00', '0.00'),
(204, 'Nipple', '3917', NULL, 'Extension Nipple', 0, '', NULL, NULL, '½x 2½', '1.5x 6.5 ', '', '', '', '2229406', '', 10, 250, '0', '', '', '', '', '', 0, 0, '198.50', '1985.00', '0.00', '0.00'),
(205, 'Nipple', '3917', NULL, 'Extension Nipple', 0, '', NULL, NULL, '½x 3', '1.5x 8.0 ', '', '', '', '2229407', '', 10, 150, '0', '', '', '', '', '', 0, 0, '245.50', '2455.00', '0.00', '0.00'),
(206, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2224771', '', 5, 500, '0', '', '', '', '', '', 0, 0, '87.50', '437.50', '0.00', '0.00'),
(207, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '¾', '2', '', '', '', '2224772', '', 5, 300, '0', '', '', '', '', '', 0, 0, '154.50', '772.50', '0.00', '0.00'),
(208, 'Step Over Bend', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224773', '', 5, 150, '0', '', '', '', '', '', 0, 0, '289.50', '1447.50', '0.00', '0.00'),
(209, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224774', '', 5, 100, '0', '', '', '', '', '', 0, 0, '508.50', '2542.50', '0.00', '0.00'),
(210, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '1½', '4', '', '', '', '2224775', '', 2, 60, '0', '', '', '', '', '', 0, 0, '799.50', '1599.00', '0.00', '0.00'),
(211, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '2', '5', '', '', '', '2224776', '', 2, 30, '0', '', '', '', '', '', 0, 0, '1402.50', '2805.00', '0.00', '0.00'),
(212, 'Valve', '3917', NULL, 'Ball Valve With Brass Threaded (One Side)', 0, '', NULL, NULL, '¾', '2', '', '', '', '2224871', '', 5, 100, '0', '', '', '', '', '', 0, 0, '215.50', '1077.50', '0.00', '0.00'),
(213, 'Valve', '3917', NULL, 'Ball Valve With Brass Threaded (One Side)', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224872', '', 5, 50, '0', '', '', '', '', '', 0, 0, '377.00', '1885.00', '0.00', '0.00'),
(214, 'Valve', '3917', NULL, 'Ball Valve With Brass Threaded (One Side)', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224874', '', 5, 0, '0', '', '', '', '', '', 0, 0, '676.50', '3382.50', '0.00', '0.00'),
(215, 'Valve', '3917', NULL, 'Ball Valve With Brass Threaded (Two Side)', 0, '', NULL, NULL, '¾', '2', '', '', '', '2224971', '', 5, 100, '0', '', '', '', '', '', 0, 0, '260.00', '1300.00', '0.00', '0.00'),
(216, 'Valve', '3917', NULL, 'Ball Valve With Brass Threaded (Two Side)', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224972', '', 5, 50, '0', '', '', '', '', '', 0, 0, '458.00', '2290.00', '0.00', '0.00'),
(217, 'Valve', '3917', NULL, 'Ball Valve With Brass Threaded (Two Side)', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224974', '', 5, 0, '0', '', '', '', '', '', 0, 0, '799.00', '3995.00', '0.00', '0.00'),
(218, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2271021', '', 5, 1500, '0', '', '', '', '', '', 0, 0, '15.00', '75.00', '0.00', '0.00'),
(219, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '¾', '2', '', '', '', '2271022', '', 5, 1000, '0', '', '', '', '', '', 0, 0, '22.50', '112.50', '0.00', '0.00'),
(220, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2271023', '', 5, 600, '0', '', '', '', '', '', 0, 0, '34.50', '172.50', '0.00', '0.00'),
(221, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2271024', '', 5, 500, '0', '', '', '', '', '', 0, 0, '53.50', '267.50', '0.00', '0.00'),
(222, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '1½', '4', '', '', '', '2271025', '', 5, 400, '0', '', '', '', '', '', 0, 0, '65.00', '325.00', '0.00', '0.00'),
(223, 'Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '2', '5', '', '', '', '2271026', '', 5, 250, '0', '', '', '', '', '', 0, 0, '100.50', '502.50', '0.00', '0.00'),
(224, 'Valve', '3917', NULL, 'Non Return Valve', 0, '', NULL, NULL, '¾', '2', '', '', '', '2229702', '', 1, 75, '0', '', '', '', '', '', 0, 0, '258.00', '258.00', '0.00', '0.00'),
(225, 'Valve', '3917', NULL, 'Non Return Valve', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2229703', '', 1, 50, '0', '', '', '', '', '', 0, 0, '494.50', '494.50', '0.00', '0.00'),
(226, 'Cross Tee', '3917', NULL, 'Cross Tee', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2226007', '', 50, 1500, '0', '', '', '', '', '', 0, 0, '29.50', '1475.00', '0.00', '0.00'),
(227, 'Cross Tee', '3917', NULL, 'Cross Tee', 0, '', NULL, NULL, '¾', '2', '', '', '', '2226008', '', 25, 600, '0', '', '', '', '', '', 0, 0, '62.00', '1550.00', '0.00', '0.00'),
(228, 'Cross Tee', '3917', NULL, 'Cross Tee', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2226009', '', 10, 300, '0', '', '', '', '', '', 0, 0, '103.50', '1035.00', '0.00', '0.00'),
(229, 'Tee Holder', '3917', NULL, 'Tee Holder', 0, '', NULL, NULL, '½x ½x ½', '1.5x 1.5x 1.5', '', '', '', '2224401', '', 25, 500, '0', '', '', '', '', '', 0, 0, '6.50', '162.50', '0.00', '0.00'),
(230, 'Tee Holder', '3917', NULL, 'Tee Holder', 0, '', NULL, NULL, '¾x ¾x ½', '2.0x 2.0x 1.5 ', '', '', '', '2224402', '', 25, 400, '0', '', '', '', '', '', 0, 0, '9.00', '225.00', '0.00', '0.00'),
(231, 'Tee Holder', '3917', NULL, 'Tee Holder', 0, '', NULL, NULL, '1x 1x ½', ' 2.5x 2.5x 1.5', '', '', '', '3824403', '', 25, 500, '0', '', '', '', '', '', 0, 0, '9.00', '225.00', '0.00', '0.00'),
(232, 'Elbow ', '3917', NULL, 'Elbow Holder', 0, '', NULL, NULL, '½x ½', '1.5x 1.5 ', '', '', '', '2223301', '', 25, 500, '0', '', '', '', '', '', 0, 0, '6.50', '162.50', '0.00', '0.00'),
(233, 'Elbow ', '3917', NULL, 'Elbow Holder', 0, '', NULL, NULL, '½x ¾', '1.5x 2.0 ', '', '', '', '2223302', '', 25, 500, '0', '', '', '', '', '', 0, 0, '7.00', '175.00', '0.00', '0.00'),
(234, 'Threaded End Plug', '3917', NULL, 'Threaded End Plug', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2223501', '', 25, 1200, '0', '', '', '', '', '', 0, 0, '8.00', '200.00', '0.00', '0.00'),
(235, 'Threaded End Plug', '3917', NULL, 'Threaded End Plug', 0, '', NULL, NULL, '¾', '2', '', '', '', '2223502', '', 25, 1000, '0', '', '', '', '', '', 0, 0, '10.00', '250.00', '0.00', '0.00'),
(236, 'Expansion Loop', '3917', NULL, 'Expansion Loop', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2224801', '', 5, 150, '0', '', '', '', '', '', 0, 0, '61.00', '305.00', '0.00', '0.00'),
(237, 'Expansion Loop', '3917', NULL, 'Expansion Loop', 0, '', NULL, NULL, '¾', '2', '', '', '', '2224802', '', 5, 100, '0', '', '', '', '', '', 0, 0, '109.50', '547.50', '0.00', '0.00'),
(238, 'Expansion Loop', '3917', NULL, 'Expansion Loop', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2224803', '', 2, 50, '0', '', '', '', '', '', 0, 0, '191.50', '383.00', '0.00', '0.00'),
(239, 'Expansion Loop', '3917', NULL, 'Expansion Loop', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2224804', '', 2, 32, '0', '', '', '', '', '', 0, 0, '359.00', '718.00', '0.00', '0.00'),
(240, 'Expansion Loop', '3917', NULL, 'Expansion Loop', 0, '', NULL, NULL, '1½', '4', '', '', '', '2224805', '', 2, 14, '0', '', '', '', '', '', 0, 0, '556.00', '1112.00', '0.00', '0.00'),
(241, 'Expansion Loop', '3917', NULL, 'Expansion Loop', 0, '', NULL, NULL, '2', '5', '', '', '', '2224806', '', 1, 8, '0', '', '', '', '', '', 0, 0, '1132.00', '1132.00', '0.00', '0.00'),
(242, 'Step Over Bend', '3917', NULL, 'Step Over Bend', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2227101', '', 25, 600, '0', '', '', '', '', '', 0, 0, '58.00', '1450.00', '0.00', '0.00'),
(243, 'Step Over Bend', '3917', NULL, 'Step Over Bend', 0, '', NULL, NULL, '¾', '2', '', '', '', '2227102', '', 10, 250, '0', '', '', '', '', '', 0, 0, '78.50', '785.00', '0.00', '0.00'),
(244, 'Step Over Bend', '3917', NULL, 'Step Over Bend', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2227103', '', 5, 100, '0', '', '', '', '', '', 0, 0, '151.50', '757.50', '0.00', '0.00'),
(245, 'Step Over Bend', '3917', NULL, 'Step Over Bend', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2227104', '', 5, 75, '0', '', '', '', '', '', 0, 0, '272.00', '1360.00', '0.00', '0.00'),
(246, 'Step Over Bend', '3917', NULL, 'Step Over Bend', 0, '', NULL, NULL, '1½ (F)', '4', '', '', '', '2227105', '', 5, 75, '0', '', '', '', '', '', 0, 0, '254.00', '1270.00', '0.00', '0.00'),
(247, 'Step Over Bend', '3917', NULL, 'Step Over Bend', 0, '', NULL, NULL, '2 (F)', '5', '', '', '', '2227106', '', 3, 18, '0', '', '', '', '', '', 0, 0, '604.50', '1813.50', '0.00', '0.00'),
(248, 'Short Bend', '3917', NULL, 'Short Bend', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2227001', '', 5, 500, '0', '', '', '', '', '', 0, 0, '23.00', '115.00', '0.00', '0.00'),
(249, 'Short Bend', '3917', NULL, 'Short Bend', 0, '', NULL, NULL, '¾', '2', '', '', '', '2227002', '', 5, 300, '0', '', '', '', '', '', 0, 0, '40.00', '200.00', '0.00', '0.00'),
(250, 'Short Bend', '3917', NULL, 'Short Bend', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2227003', '', 5, 200, '0', '', '', '', '', '', 0, 0, '67.00', '335.00', '0.00', '0.00'),
(251, 'Short Bend', '3917', NULL, 'Short Bend', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2227004', '', 5, 150, '0', '', '', '', '', '', 0, 0, '99.00', '495.00', '0.00', '0.00'),
(252, 'Short Bend', '3917', NULL, 'Short Bend', 0, '', NULL, NULL, '1½', '4', '', '', '', '2227005', '', 5, 100, '0', '', '', '', '', '', 0, 0, '131.50', '657.50', '0.00', '0.00'),
(253, 'Short Bend', '3917', NULL, 'Short Bend', 0, '', NULL, NULL, '2', '5', '', '', '', '2227006', '', 5, 50, '0', '', '', '', '', '', 0, 0, '274.00', '1370.00', '0.00', '0.00'),
(254, 'Sweep Bend ', '3917', NULL, 'Socket at Both Sides', 0, '', NULL, NULL, '¾', '2', '', '', '', '2227008', '', 10, 600, '0', '', '', '', '', '', 0, 0, '41.00', '410.00', '0.00', '0.00'),
(255, 'Sweep Bend ', '3917', NULL, 'Socket at Both Sides', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2227007', '', 10, 300, '0', '', '', '', '', '', 0, 0, '71.50', '715.00', '0.00', '0.00'),
(256, 'Sweep Bend ', '3917', NULL, 'Socket at Both Sides', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2227009', '', 10, 180, '0', '', '', '', '', '', 0, 0, '116.00', '1160.00', '0.00', '0.00'),
(257, 'Flange with Gasket', '3917', NULL, 'End Cap Open', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2228497', '', 5, 90, '0', '', '', '', '', '', 0, 0, '268.50', '1342.50', '0.00', '0.00'),
(258, 'Flange with Gasket', '3917', NULL, 'End Cap Open', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2228498', '', 2, 60, '0', '', '', '', '', '', 0, 0, '329.00', '658.00', '0.00', '0.00'),
(259, 'Flange with Gasket', '3917', NULL, 'End Cap Open', 0, '', NULL, NULL, '1½', '4', '', '', '', '2228499', '', 2, 40, '0', '', '', '', '', '', 0, 0, '431.00', '862.00', '0.00', '0.00');
INSERT INTO `prdtable` (`id`, `prd_name`, `prd_hsn_code`, `prd_code`, `prd_description`, `prd_quantity`, `prd_company_name`, `prd_purchase_date`, `prd_purchase_time`, `prd_size_1`, `prd_size_2`, `prd_size_unit`, `prd_turn`, `prd_knob`, `prd_part_no_1`, `prd_part_no_2`, `prd_pkg`, `prd_box_qty`, `prd_color`, `prd_material_type`, `prd_model`, `prd_power`, `prd_size_type`, `prd_stage`, `is_delete`, `prd_category`, `prd_mrp_1`, `prd_mrp_2`, `prd_mrp_3`, `prd_mrp_4`) VALUES
(260, 'Flange with Gasket', '3917', NULL, 'End Cap Open', 0, '', NULL, NULL, '2', '5', '', '', '', '2228500', '', 2, 30, '0', '', '', '', '', '', 0, 0, '626.00', '1252.00', '0.00', '0.00'),
(261, 'Flange with Gasket', '3917', NULL, 'End Cap Closed', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2228597', '', 5, 100, '0', '', '', '', '', '', 0, 0, '275.00', '1375.00', '0.00', '0.00'),
(262, 'Flange with Gasket', '3917', NULL, 'End Cap Closed', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2228598', '', 2, 80, '0', '', '', '', '', '', 0, 0, '336.00', '672.00', '0.00', '0.00'),
(263, 'Flange with Gasket', '3917', NULL, 'End Cap Closed', 0, '', NULL, NULL, '1½', '4', '', '', '', '2228599', '', 2, 70, '0', '', '', '', '', '', 0, 0, '445.00', '890.00', '0.00', '0.00'),
(264, 'Flange with Gasket', '3917', NULL, 'End Cap Closed', 0, '', NULL, NULL, '2', '5', '', '', '', '2228600', '', 2, 50, '0', '', '', '', '', '', 0, 0, '631.00', '1262.00', '0.00', '0.00'),
(265, 'Concealed Valve Quarter Turn', '3917', NULL, 'Mini Spindle With Plastic Knob', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2221701', '', 1, 30, '0', '', '', '', '', '', 0, 0, '580.50', '580.50', '0.00', '0.00'),
(266, 'Concealed Valve Quarter Turn', '3917', NULL, 'Mini Spindle With Plastic Knob', 0, '', NULL, NULL, '¾', '2', '', '', '', '2221702', '', 1, 30, '0', '', '', '', '', '', 0, 0, '561.00', '561.00', '0.00', '0.00'),
(267, 'Concealed Valve Quarter Turn', '3917', NULL, 'Mini Spindle With Plastic Knob', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2221703', '', 1, 30, '0', '', '', '', '', '', 0, 0, '858.00', '858.00', '0.00', '0.00'),
(268, 'Single Lever Concealed Diverter', '3917', NULL, 'Tap & Shower', 0, '', NULL, NULL, '¾', '2', '', '', '', '2221411', '', 1, 8, '0', '', '', '', '', '', 0, 0, '2764.50', '2764.50', '0.00', '0.00'),
(269, 'Single Lever Concealed Diverter', '3917', NULL, 'Tap & Shower', 0, '', NULL, NULL, '¾', '2', '', '', '', '2221412', '', 1, 8, '0', '', '', '', '', '', 0, 0, '4474.00', '4474.00', '0.00', '0.00'),
(270, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Triangle', '2221101', '', 1, 24, '0', '', '', '', '', '', 0, 0, '854.00', '0.00', '0.00', '0.00'),
(271, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Square', '2221102', '', 1, 24, '0', '', '', '', '', '', 0, 0, '854.00', '0.00', '0.00', '0.00'),
(272, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Round', '2221103', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1003.00', '0.00', '0.00', '0.00'),
(273, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Plastic (CP)', '2221106', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1003.00', '0.00', '0.00', '0.00'),
(274, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Triangle', '2221111', '', 1, 24, '0', '', '', '', '', '', 0, 0, '854.00', '0.00', '0.00', '0.00'),
(275, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Square', '2221112', '', 1, 24, '0', '', '', '', '', '', 0, 0, '854.00', '0.00', '0.00', '0.00'),
(276, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Round', '2221113', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1003.00', '0.00', '0.00', '0.00'),
(277, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Plastic (CP)', '2221116', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1003.00', '0.00', '0.00', '0.00'),
(278, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Triangle', '2221201', '', 1, 24, '0', '', '', '', '', '', 0, 0, '883.00', '0.00', '0.00', '0.00'),
(279, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Square', '2221202', '', 1, 24, '0', '', '', '', '', '', 0, 0, '883.00', '0.00', '0.00', '0.00'),
(280, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Round', '2221203', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1018.50', '0.00', '0.00', '0.00'),
(281, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Plastic (CP)', '2221206', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1018.50', '0.00', '0.00', '0.00'),
(282, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Triangle', '2221211', '', 1, 24, '0', '', '', '', '', '', 0, 0, '882.00', '0.00', '0.00', '0.00'),
(283, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Square', '2221212', '', 1, 24, '0', '', '', '', '', '', 0, 0, '882.00', '0.00', '0.00', '0.00'),
(284, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Round', '2221213', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1018.50', '0.00', '0.00', '0.00'),
(285, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Plastic (CP)', '2221216', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1018.50', '0.00', '0.00', '0.00'),
(286, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Triangle', '2221301', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1229.50', '0.00', '0.00', '0.00'),
(287, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Square', '2221302', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1229.50', '0.00', '0.00', '0.00'),
(288, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Round', '2221303', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1403.00', '0.00', '0.00', '0.00'),
(289, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Plastic (CP)', '2221306', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1461.00', '0.00', '0.00', '0.00'),
(290, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Triangle', '2221311', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1222.50', '0.00', '0.00', '0.00'),
(291, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Square', '2221312', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1222.50', '0.00', '0.00', '0.00'),
(292, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Round', '2221313', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1397.00', '0.00', '0.00', '0.00'),
(293, 'Valve', '3917', NULL, 'Long Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Plastic (CP)', '2221316', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1455.50', '0.00', '0.00', '0.00'),
(294, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Triangle', '2221121', '', 1, 24, '0', '', '', '', '', '', 0, 0, '762.50', '0.00', '0.00', '0.00'),
(295, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Square', '2221122', '', 1, 24, '0', '', '', '', '', '', 0, 0, '762.50', '0.00', '0.00', '0.00'),
(296, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Round', '2221123', '', 1, 24, '0', '', '', '', '', '', 0, 0, '911.00', '0.00', '0.00', '0.00'),
(297, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Quarter', 'Plastic (CP)', '2221126', '', 1, 24, '0', '', '', '', '', '', 0, 0, '911.00', '0.00', '0.00', '0.00'),
(298, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Triangle', '2221131', '', 1, 24, '0', '', '', '', '', '', 0, 0, '762.50', '0.00', '0.00', '0.00'),
(299, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Square', '2221132', '', 1, 24, '0', '', '', '', '', '', 0, 0, '762.50', '0.00', '0.00', '0.00'),
(300, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Round', '2221133', '', 1, 24, '0', '', '', '', '', '', 0, 0, '911.00', '0.00', '0.00', '0.00'),
(301, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '½', '', '', 'Full', 'Plastic (CP)', '2221136', '', 1, 24, '0', '', '', '', '', '', 0, 0, '911.00', '0.00', '0.00', '0.00'),
(302, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Triangle', '2221221', '', 1, 24, '0', '', '', '', '', '', 0, 0, '791.00', '0.00', '0.00', '0.00'),
(303, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Square', '2221222', '', 1, 24, '0', '', '', '', '', '', 0, 0, '791.00', '0.00', '0.00', '0.00'),
(304, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Round', '2221223', '', 1, 24, '0', '', '', '', '', '', 0, 0, '939.00', '0.00', '0.00', '0.00'),
(305, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Quarter', 'Plastic (CP)', '2221226', '', 1, 24, '0', '', '', '', '', '', 0, 0, '939.00', '0.00', '0.00', '0.00'),
(306, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Triangle', '2221231', '', 1, 24, '0', '', '', '', '', '', 0, 0, '791.00', '0.00', '0.00', '0.00'),
(307, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Square', '2221232', '', 1, 24, '0', '', '', '', '', '', 0, 0, '791.00', '0.00', '0.00', '0.00'),
(308, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Round', '2221233', '', 1, 24, '0', '', '', '', '', '', 0, 0, '939.00', '0.00', '0.00', '0.00'),
(309, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '¾', '', '', 'Full', 'Plastic (CP)', '2221236', '', 1, 24, '0', '', '', '', '', '', 0, 0, '939.00', '0.00', '0.00', '0.00'),
(310, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Triangle', '2221321', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1115.50', '0.00', '0.00', '0.00'),
(311, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Square', '2221322', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1115.50', '0.00', '0.00', '0.00'),
(312, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Round', '2221323', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1288.50', '0.00', '0.00', '0.00'),
(313, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Quarter', 'Plastic (CP)', '2221326', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1346.00', '0.00', '0.00', '0.00'),
(314, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Triangle', '2221331', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1090.50', '0.00', '0.00', '0.00'),
(315, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Square', '2221332', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1090.50', '0.00', '0.00', '0.00'),
(316, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Round', '2221333', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1263.00', '0.00', '0.00', '0.00'),
(317, 'Valve', '3917', NULL, 'Short Concealed Valve', 0, '', NULL, NULL, '1', '', '', 'Full', 'Plastic (CP)', '2221336', '', 1, 24, '0', '', '', '', '', '', 0, 0, '1321.50', '0.00', '0.00', '0.00'),
(318, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Tap and Shower - Medium Flow)', 0, '', NULL, NULL, 'Oval Design', '', '', '', '', '2224131', '', 1, 1, '0', '', '', '', '', '', 0, 0, '1121.50', '1121.50', '0.00', '0.00'),
(319, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Tap and Shower - Medium Flow)', 0, '', NULL, NULL, 'Arch Design', '', '', '', '', '2224132', '', 1, 10, '0', '', '', '', '', '', 0, 0, '1376.00', '1376.00', '0.00', '0.00'),
(320, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Tap and Shower - Medium Flow)', 0, '', NULL, NULL, 'Round Design', '', '', '', '', '2224132', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1158.00', '1158.00', '0.00', '0.00'),
(321, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Tap and Shower - High Flow', 0, '', NULL, NULL, 'Oval Design', '', '', '', '', '2226131', '', 1, 1, '0', '', '', '', '', '', 0, 0, '1512.00', '1512.00', '0.00', '0.00'),
(322, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Tap and Shower - High Flow', 0, '', NULL, NULL, 'Arch Design', '', '', '', '', '2226132', '', 1, 10, '0', '', '', '', '', '', 0, 0, '1638.00', '1638.00', '0.00', '0.00'),
(323, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Tap and Shower - High Flow', 0, '', NULL, NULL, 'Round Design', '', '', '', '', '2226133', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1664.00', '1664.00', '0.00', '0.00'),
(324, 'Single Lever Concealed Diverter', '3917', NULL, 'Shower', 0, '', NULL, NULL, '¾', '2.0', '', '', '', '2221421', '', 1, 8, '0', '', '', '', '', '', 0, 0, '1834.50', '1834.50', '0.00', '0.00'),
(325, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Shower', 0, '', NULL, NULL, 'Oval Design', '', '', '', '', '2225131', '', 1, 1, '0', '', '', '', '', '', 0, 0, '1070.50', '1070.50', '0.00', '0.00'),
(326, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Shower', 0, '', NULL, NULL, 'Arch Design', '', '', '', '', '2225132', '', 1, 1, '0', '', '', '', '', '', 0, 0, '1325.00', '1325.00', '0.00', '0.00'),
(327, 'Front Plates For Single Lever Concealed Diverter', '7307', NULL, 'Shower', 0, '', NULL, NULL, 'Round Design', '', '', '', '', '2221453', '', 1, 1, '0', '', '', '', '', '', 0, 0, '957.50', '957.50', '0.00', '0.00'),
(328, 'Concealed Flush Valve', '3917', NULL, 'Concealed Flush Valve', 0, '', NULL, NULL, '1¼x 1¼', '3.2x 3.2', '', '', '', '2221804', '', 1, 0, '0', '', '', '', '', '', 0, 0, '2815.00', '2815.00', '0.00', '0.00'),
(329, 'Concealed Flush Valve', '3917', NULL, 'Concealed Flush Valve', 0, '', NULL, NULL, '1½x 1¼', '4.0x 3.2', '', '', '', '2221810', '', 1, 0, '0', '', '', '', '', '', 0, 0, '2937.00', '2937.00', '0.00', '0.00'),
(330, 'Y - Strainer', '3917', NULL, 'Y - Strainer', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2226113', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1317.00', '1317.00', '0.00', '0.00'),
(331, 'Y - Strainer', '3917', NULL, 'Y - Strainer', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2226114', '', 1, 0, '0', '', '', '', '', '', 0, 0, '2345.00', '2345.00', '0.00', '0.00'),
(332, 'Water Hammer Arrestor', '8481', NULL, 'Type - A', 0, '', NULL, NULL, '1.5x 1.5x 1.5', '½x ½x ½', '', '', '', '2226531', '', 1, 40, '0', '', '', '', '', '', 0, 0, '2047.50', '2047.50', '0.00', '0.00'),
(333, 'Water Hammer Arrestor', '8481', NULL, 'Type - B', 0, '', NULL, NULL, '2.0x 2.0x 2.0', '¾x ¾x ¾', '', '', '', '2226532', '', 1, 40, '0', '', '', '', '', '', 0, 0, '2895.50', '2895.50', '0.00', '0.00'),
(334, 'Clamp', '3917', NULL, 'Plastic Clamp', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2222201', '', 100, 4000, '0', '', '', '', '', '', 0, 0, '3.50', '350.00', '0.00', '0.00'),
(335, 'Clamp', '3917', NULL, 'Plastic Clamp', 0, '', NULL, NULL, '¾', '2', '', '', '', '2222202', '', 100, 3000, '0', '', '', '', '', '', 0, 0, '4.00', '400.00', '0.00', '0.00'),
(336, 'Clamp', '3917', NULL, 'Plastic Clamp', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2222203', '', 50, 2000, '0', '', '', '', '', '', 0, 0, '5.00', '250.00', '0.00', '0.00'),
(337, 'Clamp', '3917', NULL, 'Plastic Clamp', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2222204', '', 25, 1500, '0', '', '', '', '', '', 0, 0, '8.00', '200.00', '0.00', '0.00'),
(338, 'Clamp', '3917', NULL, 'Plastic Clamp', 0, '', NULL, NULL, '1½', '4', '', '', '', '2222205', '', 25, 1000, '0', '', '', '', '', '', 0, 0, '9.50', '237.50', '0.00', '0.00'),
(339, 'Clamp', '3917', NULL, 'Plastic Clamp', 0, '', NULL, NULL, '2', '5', '', '', '', '2222206', '', 25, 750, '0', '', '', '', '', '', 0, 0, '13.00', '325.00', '0.00', '0.00'),
(340, 'Clamp', '8308', NULL, 'SS Clamp', 0, '', NULL, NULL, '½', '1.5', '', '', '', '3823007', '', 25, 2000, '0', '', '', '', '', '', 0, 0, '11.50', '287.50', '0.00', '0.00'),
(341, 'Clamp', '8308', NULL, 'SS Clamp', 0, '', NULL, NULL, '¾', '2', '', '', '', '3823008', '', 50, 1500, '0', '', '', '', '', '', 0, 0, '11.50', '575.00', '0.00', '0.00'),
(342, 'Clamp', '8308', NULL, 'SS Clamp', 0, '', NULL, NULL, '1', '2.5', '', '', '', '3823009', '', 50, 1000, '0', '', '', '', '', '', 0, 0, '12.50', '625.00', '0.00', '0.00'),
(343, 'Clamp', '8308', NULL, 'SS Clamp', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '3823010', '', 25, 1000, '0', '', '', '', '', '', 0, 0, '13.00', '325.00', '0.00', '0.00'),
(344, 'Clamp', '8308', NULL, 'SS Clamp', 0, '', NULL, NULL, '1½', '4', '', '', '', '3823011', '', 10, 500, '0', '', '', '', '', '', 0, 0, '16.00', '160.00', '0.00', '0.00'),
(345, 'Clamp', '8308', NULL, 'SS Clamp', 0, '', NULL, NULL, '2', '5', '', '', '', '3823012', '', 10, 500, '0', '', '', '', '', '', 0, 0, '19.50', '195.00', '0.00', '0.00'),
(346, 'Clamp', '8308', NULL, 'Powder Coated Metal Clamp', 0, '', NULL, NULL, '½', '1.5', '', '', '', '3822007', '', 100, 2000, '0', '', '', '', '', '', 0, 0, '8.00', '800.00', '0.00', '0.00'),
(347, 'Clamp', '8308', NULL, 'Powder Coated Metal Clamp', 0, '', NULL, NULL, '¾', '2', '', '', '', '3822008', '', 100, 1500, '0', '', '', '', '', '', 0, 0, '8.50', '850.00', '0.00', '0.00'),
(348, 'Clamp', '8308', NULL, 'Powder Coated Metal Clamp', 0, '', NULL, NULL, '1', '2.5', '', '', '', '3822009', '', 50, 1000, '0', '', '', '', '', '', 0, 0, '10.50', '525.00', '0.00', '0.00'),
(349, 'Clamp', '8308', NULL, 'Powder Coated Metal Clamp', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '3822010', '', 25, 1000, '0', '', '', '', '', '', 0, 0, '10.50', '262.50', '0.00', '0.00'),
(350, 'Clamp', '8308', NULL, 'Powder Coated Metal Clamp', 0, '', NULL, NULL, '1½', '4', '', '', '', '3822011', '', 25, 500, '0', '', '', '', '', '', 0, 0, '11.50', '287.50', '0.00', '0.00'),
(351, 'Clamp', '8308', NULL, 'Powder Coated Metal Clamp', 0, '', NULL, NULL, '2', '5', '', '', '', '3822012', '', 25, 500, '0', '', '', '', '', '', 0, 0, '13.00', '325.00', '0.00', '0.00'),
(352, 'Rubber Washer', '4016', NULL, 'Tank Nipple', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2223611', '', 10, 0, '0', '', '', '', '', '', 0, 0, '7.00', '70.00', '0.00', '0.00'),
(353, 'Rubber Washer', '4016', NULL, 'Tank Nipple', 0, '', NULL, NULL, '¾', '2', '', '', '', '2223612', '', 10, 0, '0', '', '', '', '', '', 0, 0, '8.00', '80.00', '0.00', '0.00'),
(354, 'Rubber Washer', '4016', NULL, 'Tank Nipple', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2223613', '', 10, 0, '0', '', '', '', '', '', 0, 0, '8.50', '85.00', '0.00', '0.00'),
(355, 'Rubber Washer', '4016', NULL, 'Tank Nipple', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2223614', '', 10, 0, '0', '', '', '', '', '', 0, 0, '8.50', '85.00', '0.00', '0.00'),
(356, 'Rubber Washer', '4016', NULL, 'Tank Nipple', 0, '', NULL, NULL, '1½', '4', '', '', '', '2223615', '', 10, 0, '0', '', '', '', '', '', 0, 0, '8.50', '85.00', '0.00', '0.00'),
(357, 'Rubber Washer', '4016', NULL, 'Tank Nipple', 0, '', NULL, NULL, '2', '5', '', '', '', '2223616', '', 10, 0, '0', '', '', '', '', '', 0, 0, '13.00', '130.00', '0.00', '0.00'),
(358, 'Rubber Washer', '4016', NULL, 'Union', 0, '', NULL, NULL, '½', '1.5', '', '', '', '3825901', '', 10, 0, '0', '', '', '', '', '', 0, 0, '1.50', '15.00', '0.00', '0.00'),
(359, 'Rubber Washer', '4016', NULL, 'Union', 0, '', NULL, NULL, '¾', '2', '', '', '', '3825902', '', 10, 0, '0', '', '', '', '', '', 0, 0, '2.50', '25.00', '0.00', '0.00'),
(360, 'Rubber Washer', '4016', NULL, 'Union', 0, '', NULL, NULL, '1', '2.5', '', '', '', '3825903', '', 10, 0, '0', '', '', '', '', '', 0, 0, '3.50', '35.00', '0.00', '0.00'),
(361, 'Rubber Washer', '4016', NULL, 'Union', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '3825904', '', 10, 0, '0', '', '', '', '', '', 0, 0, '3.50', '35.00', '0.00', '0.00'),
(362, 'Rubber Washer', '4016', NULL, 'Union', 0, '', NULL, NULL, '1½', '4', '', '', '', '3825905', '', 10, 0, '0', '', '', '', '', '', 0, 0, '4.00', '40.00', '0.00', '0.00'),
(363, 'Rubber Washer', '4016', NULL, 'Union', 0, '', NULL, NULL, '2', '5', '', '', '', '3825906', '', 10, 0, '0', '', '', '', '', '', 0, 0, '6.00', '60.00', '0.00', '0.00'),
(364, 'Rubber Washer', '4016', NULL, 'FAPT', 0, '', NULL, NULL, '½', '1.5', '', '', '', '3825401', '', 10, 0, '0', '', '', '', '', '', 0, 0, '1.50', '15.00', '0.00', '0.00'),
(365, 'Rubber Washer', '4016', NULL, 'FAPT', 0, '', NULL, NULL, '¾', '2', '', '', '', '2225412', '', 10, 0, '0', '', '', '', '', '', 0, 0, '1.50', '15.00', '0.00', '0.00'),
(366, 'Rubber Washer', '4016', NULL, 'FAPT', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2225413', '', 10, 0, '0', '', '', '', '', '', 0, 0, '1.50', '15.00', '0.00', '0.00'),
(367, 'Rubber Washer', '4016', NULL, 'FAPT', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2225414', '', 10, 0, '0', '', '', '', '', '', 0, 0, '7.00', '70.00', '0.00', '0.00'),
(368, 'Rubber Washer', '4016', NULL, 'FAPT', 0, '', NULL, NULL, '1½', '4', '', '', '', '2225415', '', 10, 0, '0', '', '', '', '', '', 0, 0, '7.00', '70.00', '0.00', '0.00'),
(369, 'Rubber Washer', '4016', NULL, 'FAPT', 0, '', NULL, NULL, '2', '5', '', '', '', '2225416', '', 10, 0, '0', '', '', '', '', '', 0, 0, '11.50', '115.00', '0.00', '0.00'),
(370, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '0.5 oz', '15 ml Tube', '', '', '', '4081099', '', 50, 500, '0', '', '', '', '', '', 0, 0, '64.50', '3225.00', '0.00', '0.00'),
(371, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '1 oz', '29.5 ml Tube', '', '', '', '4081100', '', 24, 240, '0', '', '', '', '', '', 0, 0, '91.00', '2184.00', '0.00', '0.00'),
(372, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '2 oz', '59 ml Tube', '', '', '', '4081101', '', 24, 144, '0', '', '', '', '', '', 0, 0, '129.00', '3096.00', '0.00', '0.00'),
(373, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '2 oz', '59 ml Tin', '', '', '', '4081106', '', 48, 384, '0', '', '', '', '', '', 0, 0, '133.00', '6384.00', '0.00', '0.00'),
(374, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '4 oz', '118 ml Tin', '', '', '', '4081102', '', 24, 192, '0', '', '', '', '', '', 0, 0, '208.50', '5004.00', '0.00', '0.00'),
(375, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '8 oz', '237 ml Tin', '', '', '', '4081103', '', 24, 96, '0', '', '', '', '', '', 0, 0, '354.00', '8496.00', '0.00', '0.00'),
(376, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '16 oz', '473 ml Tin', '', '', '', '4081104', '', 12, 24, '0', '', '', '', '', '', 0, 0, '641.50', '7698.00', '0.00', '0.00'),
(377, 'Solvent', '3506', NULL, '1 Step CPVC Yellow Medium Solvent Cement', 0, '', NULL, NULL, '32 oz', '946 ml Tin', '', '', '', '4081105', '', 12, 24, '0', '', '', '', '', '', 0, 0, '1238.50', '14862.00', '0.00', '0.00'),
(378, 'Solvent', '3506', NULL, '2 Step CPVC Heavy Duty Orange Solvent Cement', 0, '', NULL, NULL, '4 oz', '118 ml Tin', '', '', '', '4081201', '', 24, 192, '0', '', '', '', '', '', 0, 0, '229.00', '5496.00', '0.00', '0.00'),
(379, 'Solvent', '3506', NULL, '2 Step CPVC Heavy Duty Orange Solvent Cement', 0, '', NULL, NULL, '8 oz', '237 ml Tin', '', '', '', '4081202', '', 24, 96, '0', '', '', '', '', '', 0, 0, '389.50', '9348.00', '0.00', '0.00'),
(380, 'Solvent', '3506', NULL, '2 Step CPVC Heavy Duty Orange Solvent Cement', 0, '', NULL, NULL, '16 oz', '473 ml Tin', '', '', '', '4081203', '', 12, 24, '0', '', '', '', '', '', 0, 0, '705.50', '8466.00', '0.00', '0.00'),
(381, 'Solvent', '3506', NULL, '2 Step CPVC Heavy Duty Orange Solvent Cement', 0, '', NULL, NULL, '32 oz', '946 ml Tin', '', '', '', '4081204', '', 12, 24, '0', '', '', '', '', '', 0, 0, '1363.00', '16356.00', '0.00', '0.00'),
(382, 'Solvent', '3506', NULL, 'Purple Primer Solvent Cement', 0, '', NULL, NULL, '8 oz', '237 ml Tin', '', '', '', '4071503', '', 24, 96, '0', '', '', '', '', '', 0, 0, '306.00', '7344.00', '0.00', '0.00'),
(383, 'Brush', '3917', NULL, 'Solvent Cement ', 0, '', NULL, NULL, '', '', '', '', '', '1810052', '', 10, 0, '0', '', '', '', '', '', 0, 0, '4.50', '45.00', '0.00', '0.00'),
(384, 'Pipes', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2129201', '2129211', 5, 0, '0', '', '', '', '', '', 0, 0, '1089.50', '3268.50', '0.00', '0.00'),
(385, 'Pipes', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '3', '8', '', '', '', '2129202', '2129212', 5, 0, '0', '', '', '', '', '', 0, 0, '1450.50', '4351.50', '0.00', '0.00'),
(386, 'Pipes', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '4', '10', '', '', '', '2129203', '2129213', 3, 0, '0', '', '', '', '', '', 0, 0, '2150.00', '6450.00', '0.00', '0.00'),
(387, 'Pipes', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '6', '15', '', '', '', '2129204', '2129214', 1, 0, '0', '', '', '', '', '', 0, 0, '3944.50', '11833.50', '0.00', '0.00'),
(388, 'Pipes', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2129301', '2129311', 5, 0, '0', '', '', '', '', '', 0, 0, '1450.00', '4350.00', '0.00', '0.00'),
(389, 'Pipes', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2129302', '2129312', 5, 0, '0', '', '', '', '', '', 0, 0, '1984.00', '5952.00', '0.00', '0.00'),
(390, 'Pipes', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2129303', '2129313', 3, 0, '0', '', '', '', '', '', 0, 0, '2891.50', '8674.50', '0.00', '0.00'),
(391, 'Pipes', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '6', '15', '', '', '', '2129304', '2129314', 1, 0, '0', '', '', '', '', '', 0, 0, '6182.00', '18546.00', '0.00', '0.00'),
(392, 'Elbow 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2228211', '2228201', 2, 0, '0', '', '', '', '', '', 0, 0, '526.00', '908.50', '0.00', '1817.00'),
(393, 'Elbow 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2228212', '2228202', 2, 0, '0', '', '', '', '', '', 0, 0, '776.00', '1327.50', '0.00', '2655.00'),
(394, 'Elbow 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2228213', '2228203', 1, 0, '0', '', '', '', '', '', 0, 0, '1274.50', '2256.00', '0.00', '2256.00'),
(395, 'Elbow 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6', '15', '', '', '', '2228214', '', 1, 0, '0', '', '', '', '', '', 0, 0, '3894.50', '0.00', '0.00', '0.00'),
(396, 'Tee 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2228311', '2228301', 2, 0, '0', '', '', '', '', '', 0, 0, '744.50', '1223.00', '0.00', '2446.00'),
(397, 'Tee 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2228312', '2228302', 2, 0, '0', '', '', '', '', '', 0, 0, '1125.50', '1819.00', '0.00', '3638.00'),
(398, 'Tee 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2228313', '2228303', 1, 0, '0', '', '', '', '', '', 0, 0, '2066.00', '3043.50', '0.00', '3043.50'),
(399, 'Tee 90°', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6', '15', '', '', '', '2228314', '', 1, 0, '0', '', '', '', '', '', 0, 0, '5132.50', '0.00', '0.00', '0.00'),
(400, 'Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2228111', '2228101', 5, 0, '0', '', '', '', '', '', 0, 0, '338.50', '564.50', '0.00', '2822.50'),
(401, 'Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2228112', '2228102', 4, 0, '0', '', '', '', '', '', 0, 0, '468.00', '806.00', '0.00', '3224.00'),
(402, 'Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2228113', '2228103', 2, 0, '0', '', '', '', '', '', 0, 0, '735.00', '1234.50', '0.00', '2469.00'),
(403, 'Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6', '15', '', '', '', '2228114', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1957.00', '0.00', '0.00', '0.00'),
(404, 'End Cap', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '', '2228701', 5, 0, '0', '', '', '', '', '', 0, 0, '0.00', '351.50', '0.00', '1757.50'),
(405, 'End Cap', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3', '8', '', '', '', '', '2228702', 5, 0, '0', '', '', '', '', '', 0, 0, '0.00', '517.50', '0.00', '2587.50'),
(406, 'End Cap', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '4', '10', '', '', '', '', '2228703', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '899.00', '0.00', '1798.00'),
(407, 'End Cap', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6', '15', '', '', '', '2228714', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1617.50', '0.00', '0.00', '0.00'),
(408, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '2½', '', '', '', '', '2228501', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '1171.50', '0.00', '2343.00'),
(409, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, 'x', 'x', '', '', '', '', '2228502', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '1396.50', '0.00', '2793.00'),
(410, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '¾', '¾', '', '', '', '', '2228503', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '2276.50', '0.00', '4553.00'),
(411, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6.5', '6.5', '', '', '', '2228514', '', 1, 0, '0', '', '', '', '', '', 0, 0, '3260.50', '0.00', '0.00', '0.00'),
(412, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '', '2228601', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '1205.00', '0.00', '2410.00'),
(413, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3', '8', '', '', '', '', '2228602', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '1399.00', '0.00', '2798.00'),
(414, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '4', '10', '', '', '', '', '2228603', 2, 0, '0', '', '', '', '', '', 0, 0, '0.00', '2301.50', '0.00', '4603.00'),
(415, 'Flange with Gasket', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6', '15', '', '', '', '2228614', '', 1, 0, '0', '', '', '', '', '', 0, 0, '3584.00', '0.00', '0.00', '0.00'),
(416, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '1', '2.5', '', '', '', '1190080', '', 5, 0, '0', '', '', '', '', '', 0, 0, '12.50', '62.50', '0.00', '0.00'),
(417, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '1190081', '', 5, 0, '0', '', '', '', '', '', 0, 0, '15.00', '75.00', '0.00', '0.00'),
(418, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '1½', '4', '', '', '', '1190082', '', 5, 0, '0', '', '', '', '', '', 0, 0, '17.50', '87.50', '0.00', '0.00'),
(419, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '2', '5', '', '', '', '1190083', '', 5, 0, '0', '', '', '', '', '', 0, 0, '22.00', '110.00', '0.00', '0.00'),
(420, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '1190084', '', 5, 0, '0', '', '', '', '', '', 0, 0, '31.00', '155.00', '0.00', '0.00'),
(421, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '3', '8', '', '', '', '1190085', '', 5, 0, '0', '', '', '', '', '', 0, 0, '41.00', '205.00', '0.00', '0.00'),
(422, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '4', '10', '', '', '', '1190086', '', 5, 0, '0', '', '', '', '', '', 0, 0, '67.00', '335.00', '0.00', '0.00'),
(423, 'Rubber Gasket for Flange', '4016', NULL, 'Rubber Gasket for Flange', 0, '', NULL, NULL, '6', '15', '', '', '', '1190087', '', 5, 0, '0', '', '', '', '', '', 0, 0, '88.00', '440.00', '0.00', '0.00'),
(424, 'Short Bend', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2227201', '2227301', 1, 0, '0', '', '', '', '', '', 0, 0, '947.50', '1334.50', '947.50', '1334.50'),
(425, 'Short Bend', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2227202', '2227302', 1, 0, '0', '', '', '', '', '', 0, 0, '1466.50', '2035.00', '1466.50', '2035.00'),
(426, 'Short Bend', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2227203', '2227303', 1, 0, '0', '', '', '', '', '', 0, 0, '2705.50', '3725.00', '2705.50', '3725.00'),
(427, 'Short Bend', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '6', '15', '', '', '', '', '', 0, 0, '0', '', '', '', '', '', 0, 0, '0.00', '0.00', '0.00', '0.00'),
(428, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x¾', '6.5x2.0', '', '', '', '2224622', '2224626', 5, 0, '0', '', '', '', '', '', 0, 0, '445.50', '573.50', '2227.50', '2867.50'),
(429, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x1', '6.5x2.5', '', '', '', '2224623', '2224627', 5, 0, '0', '', '', '', '', '', 0, 0, '416.00', '541.00', '2080.00', '2705.00'),
(430, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x1¼', '6.5x3.2', '', '', '', '2224624', '2224628', 5, 0, '0', '', '', '', '', '', 0, 0, '521.50', '642.50', '2607.50', '3212.50'),
(431, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x1½', '6.5x4.0', '', '', '', '2224625', '2224629', 5, 0, '0', '', '', '', '', '', 0, 0, '485.50', '602.00', '2427.50', '3010.00'),
(432, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x2', '6.5x5.0', '', '', '', '2224616', '2224618', 5, 0, '0', '', '', '', '', '', 0, 0, '577.50', '695.50', '2887.50', '3477.50'),
(433, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3x2', '8.0x5.0', '', '', '', '2224620', '2224621', 4, 0, '0', '', '', '', '', '', 0, 0, '775.00', '985.50', '3100.00', '3942.00'),
(434, 'Reducer Coupler', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3x2½', '8.0x6.5', '', '', '', '2224617', '2224619', 4, 0, '0', '', '', '', '', '', 0, 0, '633.50', '871.50', '2534.00', '3486.00'),
(435, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x¾', '6.5x2.0', '', '', '', '2221922', '2224926', 2, 0, '0', '', '', '', '', '', 0, 0, '898.50', '1175.00', '1797.00', '2350.00'),
(436, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x1', '6.5x2.5', '', '', '', '2221923', '2224927', 2, 0, '0', '', '', '', '', '', 0, 0, '867.00', '1123.00', '1734.00', '2246.00'),
(437, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x1¼', '6.5x3.2', '', '', '', '2221924', '2224928', 2, 0, '0', '', '', '', '', '', 0, 0, '1008.00', '1253.50', '2016.00', '2507.00'),
(438, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x1½', '6.5x4.0', '', '', '', '2221925', '2224929', 2, 0, '0', '', '', '', '', '', 0, 0, '952.00', '1217.50', '1904.00', '2435.00'),
(439, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '2½x2', '6.5x5.0', '', '', '', '2224919', '2224921', 2, 0, '0', '', '', '', '', '', 0, 0, '948.50', '1332.50', '1897.00', '2665.00'),
(440, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3x2', '8.0x5.0', '', '', '', '2224923', '2224924', 2, 0, '0', '', '', '', '', '', 0, 0, '1649.00', '2061.50', '3298.00', '4123.00'),
(441, 'Reducer Tee', '3917', NULL, 'SCH 40 & 80', 0, '', NULL, NULL, '3x2½', '8.0x6.5', '', '', '', '2224920', '2224922', 2, 0, '0', '', '', '', '', '', 0, 0, '1380.50', '1866.50', '2761.00', '3733.00'),
(442, 'Female Adapter Plastic Threaded', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2228901', '', 2, 0, '0', '', '', '', '', '', 0, 0, '363.00', '726.00', '0.00', '0.00'),
(443, 'Female Adapter Plastic Threaded', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2228902', '', 2, 0, '0', '', '', '', '', '', 0, 0, '590.50', '1181.00', '0.00', '0.00'),
(444, 'Female Adapter Plastic Threaded', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2228903', '', 1, 0, '0', '', '', '', '', '', 0, 0, '992.50', '992.50', '0.00', '0.00'),
(445, 'Male Adapter Plastic Threaded', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2228801', '', 2, 0, '0', '', '', '', '', '', 0, 0, '374.00', '748.00', '0.00', '0.00'),
(446, 'Male Adapter Plastic Threaded', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2228802', '', 2, 0, '0', '', '', '', '', '', 0, 0, '513.50', '1027.00', '0.00', '0.00'),
(447, 'Male Adapter Plastic Threaded', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2228803', '', 1, 0, '0', '', '', '', '', '', 0, 0, '992.50', '992.50', '0.00', '0.00'),
(448, 'Bushings', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '2½x 2 (CTS)', '6.5x 5.0', '', '', '', '2228401', '', 5, 0, '0', '', '', '', '', '', 0, 0, '307.50', '1537.50', '0.00', '0.00'),
(449, 'Bushings', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3x 2 (CTS)', '8.0x 5.0', '', '', '', '2228402', '', 5, 0, '0', '', '', '', '', '', 0, 0, '625.00', '3125.00', '0.00', '0.00'),
(450, 'Bushings', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3x 2½', '8.0x 6.5', '', '', '', '2228413', '', 5, 0, '0', '', '', '', '', '', 0, 0, '398.50', '1992.50', '0.00', '0.00'),
(451, 'Bushings', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4x 2 (CTS)', '10.0x 5.0', '', '', '', '2228404', '', 4, 0, '0', '', '', '', '', '', 0, 0, '1067.50', '4270.00', '0.00', '0.00'),
(452, 'Bushings', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4x 2½', '10.0x 6.5', '', '', '', '2228415', '', 4, 0, '0', '', '', '', '', '', 0, 0, '930.50', '3722.00', '0.00', '0.00'),
(453, 'Bushings', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4x 3', '10.0x 8.0', '', '', '', '2228416', '', 4, 0, '0', '', '', '', '', '', 0, 0, '827.00', '3308.00', '0.00', '0.00'),
(454, 'Bushings', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '6x 2', '15.0x 5.0', '', '', '', '2228419', '', 1, 0, '0', '', '', '', '', '', 0, 0, '2014.50', '2014.50', '0.00', '0.00'),
(455, 'Bushings', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '6x 2½', '15.0x 6.5', '', '', '', '2228420', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1945.00', '1945.00', '0.00', '0.00'),
(456, 'Bushings', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '6x 3', '15.0x 8.0', '', '', '', '2228417', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1551.00', '1551.00', '0.00', '0.00'),
(457, 'Bushings', '3917', NULL, 'SCH 40', 0, '', NULL, NULL, '6x 4', '15.0x 10.0', '', '', '', '2228418', '', 1, 0, '0', '', '', '', '', '', 0, 0, '1568.50', '1568.50', '0.00', '0.00'),
(458, 'Elbow 45°', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2228001', '', 2, 0, '0', '', '', '', '', '', 0, 0, '795.00', '1590.00', '0.00', '0.00'),
(459, 'Elbow 45°', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2228002', '', 2, 0, '0', '', '', '', '', '', 0, 0, '1128.50', '2257.00', '0.00', '0.00'),
(460, 'Elbow 45°', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2228003', '', 1, 0, '0', '', '', '', '', '', 0, 0, '2034.50', '2034.50', '0.00', '0.00'),
(461, 'Union', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2229002', '', 2, 0, '0', '', '', '', '', '', 0, 0, '1209.00', '2418.00', '0.00', '0.00'),
(462, 'Union', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '3', '8', '', '', '', '2229003', '', 2, 0, '0', '', '', '', '', '', 0, 0, '1648.00', '3296.00', '0.00', '0.00'),
(463, 'Union', '3917', NULL, 'SCH 80', 0, '', NULL, NULL, '4', '10', '', '', '', '2229004', '', 1, 0, '0', '', '', '', '', '', 0, 0, '2569.50', '2569.50', '0.00', '0.00'),
(464, 'Valves', '7307', NULL, 'SS Bolts for Butterfly Valves', 0, '', NULL, NULL, 'M12x 125MM', '', '', '', '', '3822207', '', 2, 0, '0', '', '', '', '', '', 0, 0, '192.00', '384.00', '0.00', '0.00'),
(465, 'Valves', '7307', NULL, 'SS Bolts for Butterfly Valves', 0, '', NULL, NULL, 'M16x 125MM', '', '', '', '', '3822208', '', 2, 0, '0', '', '', '', '', '', 0, 0, '283.50', '567.00', '0.00', '0.00'),
(466, 'Valves', '7307', NULL, 'SS Bolts for Butterfly Valves', 0, '', NULL, NULL, 'M16x 150MM', '', '', '', '', '3822209', '', 2, 0, '0', '', '', '', '', '', 0, 0, '326.50', '653.00', '0.00', '0.00'),
(467, 'Valves', '7307', NULL, 'SS Bolts for Butterfly Valves', 0, '', NULL, NULL, 'M16x 160MM', '', '', '', '', '3822210', '', 2, 0, '0', '', '', '', '', '', 0, 0, '339.00', '678.00', '0.00', '0.00'),
(468, 'Butterfly Valve', '3917', NULL, 'Butterfly Valve', 0, '', NULL, NULL, '1½', '4', '', '', '', '2524106', '', 1, 6, '0', '', '', '', '', '', 0, 0, '7276.00', '7276.00', '0.00', '0.00'),
(469, 'Butterfly Valve', '3917', NULL, 'Butterfly Valve', 0, '', NULL, NULL, '2', '5', '', '', '', '2524107', '', 1, 6, '0', '', '', '', '', '', 0, 0, '7938.50', '7938.50', '0.00', '0.00'),
(470, 'Butterfly Valve', '3917', NULL, 'Butterfly Valve', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2524108', '', 1, 3, '0', '', '', '', '', '', 0, 0, '10746.50', '10746.50', '0.00', '0.00'),
(471, 'Butterfly Valve', '3917', NULL, 'Butterfly Valve', 0, '', NULL, NULL, '3', '8', '', '', '', '2524109', '', 1, 3, '0', '', '', '', '', '', 0, 0, '13000.50', '13000.50', '0.00', '0.00'),
(472, 'Butterfly Valve', '3917', NULL, 'Butterfly Valve', 0, '', NULL, NULL, '4', '10', '', '', '', '2524111', '', 1, 2, '0', '', '', '', '', '', 0, 0, '14066.00', '14066.00', '0.00', '0.00'),
(473, 'Butterfly Valve', '3917', NULL, 'Butterfly Valve', 0, '', NULL, NULL, '6', '15', '', '', '', '2524115', '', 1, 2, '0', '', '', '', '', '', 0, 0, '21762.50', '21762.50', '0.00', '0.00'),
(474, 'Ball Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '2½', '6.5', '', '', '', '2522108', '', 1, 4, '0', '', '', '', '', '', 0, 0, '11462.50', '11462.50', '0.00', '0.00'),
(475, 'Ball Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '3', '8', '', '', '', '2522109', '', 1, 4, '0', '', '', '', '', '', 0, 0, '14802.00', '14802.00', '0.00', '0.00'),
(476, 'Ball Valve', '3917', NULL, 'Ball Valve', 0, '', NULL, NULL, '4', '10', '', '', '', '2522111', '', 1, 2, '0', '', '', '', '', '', 0, 0, '20834.00', '20834.00', '0.00', '0.00'),
(477, 'CONCEALED VALVE', '3917', NULL, 'Body in CPVC', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2561001', '', 1, 0, '0', '', '', '', '', '', 0, 0, '135.00', '135.00', '0.00', '0.00'),
(478, 'CONCEALED VALVE', '3917', NULL, 'Body in CPVC', 0, '', NULL, NULL, '¾', '2', '', '', '', '2561002', '', 1, 0, '0', '', '', '', '', '', 0, 0, '160.50', '160.50', '0.00', '0.00'),
(479, 'CONCEALED VALVE', '3917', NULL, 'Body in CPVC', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2561003', '', 1, 0, '0', '', '', '', '', '', 0, 0, '272.00', '272.00', '0.00', '0.00'),
(480, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '½ and ¾', 'Long, QT', '', '', '', '2569003', '', 1, 0, '0', '', '', '', '', '', 0, 0, '289.50', '289.50', '0.00', '0.00'),
(481, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '½ and ¾', 'Long, FT', '', '', '', '2569004', '', 1, 0, '0', '', '', '', '', '', 0, 0, '295.50', '295.50', '0.00', '0.00'),
(482, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '½ and ¾', 'Short, QT', '', '', '', '2569001', '', 1, 0, '0', '', '', '', '', '', 0, 0, '257.50', '257.50', '0.00', '0.00'),
(483, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '½ and ¾', 'Short, FT', '', '', '', '2569002', '', 1, 0, '0', '', '', '', '', '', 0, 0, '264.00', '264.00', '0.00', '0.00'),
(484, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '1', 'Long, QT', '', '', '', '2569103', '', 1, 0, '0', '', '', '', '', '', 0, 0, '368.00', '368.00', '0.00', '0.00'),
(485, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '1', 'Long, FT', '', '', '', '2569104', '', 1, 0, '0', '', '', '', '', '', 0, 0, '409.00', '409.00', '0.00', '0.00'),
(486, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '1', 'Short, QT', '', '', '', '2569101', '', 1, 0, '0', '', '', '', '', '', 0, 0, '327.00', '327.00', '0.00', '0.00'),
(487, 'Brass Mechanism', '8481', NULL, '', 0, '', NULL, NULL, '1', 'Short, FT', '', '', '', '2569102', '', 1, 0, '0', '', '', '', '', '', 0, 0, '347.50', '347.50', '0.00', '0.00'),
(488, 'Knobs', '7307', NULL, '', 0, '', NULL, NULL, '', '', '', '', 'Plastic', '2569016', '', 1, 0, '0', '', '', '', '', '', 0, 0, '306.00', '306.00', '0.00', '0.00'),
(489, 'Knobs', '7307', NULL, '', 0, '', NULL, NULL, '', '', '', '', 'Round', '2569015', '', 1, 0, '0', '', '', '', '', '', 0, 0, '306.00', '306.00', '0.00', '0.00'),
(490, 'Knobs', '7307', NULL, '', 0, '', NULL, NULL, '', '', '', '', 'Square', '2569014', '', 1, 0, '0', '', '', '', '', '', 0, 0, '148.50', '148.50', '0.00', '0.00'),
(491, 'Knobs', '7307', NULL, '', 0, '', NULL, NULL, '', '', '', '', 'Triangle', '2569013', '', 1, 0, '0', '', '', '', '', '', 0, 0, '148.50', '148.50', '0.00', '0.00'),
(492, 'Extension Tube ', '7307', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569011', '', 1, 0, '0', '', '', '', '', '', 0, 0, '135.00', '135.00', '0.00', '0.00'),
(493, 'Extension Tube ', '7307', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569012', '', 1, 0, '0', '', '', '', '', '', 0, 0, '78.00', '78.00', '0.00', '0.00'),
(494, 'Flange', '8481', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2229009', '', 1, 0, '0', '', '', '', '', '', 0, 0, '98.00', '98.00', '0.00', '0.00'),
(495, 'Ceramic Disc', '8481', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569005', '', 1, 0, '0', '', '', '', '', '', 0, 0, '84.00', '84.00', '0.00', '0.00'),
(496, 'Allen Key', '8204', NULL, 'for round Knob', 0, '', NULL, NULL, '', '', '', '', '', '2569020', '', 1, 0, '0', '', '', '', '', '', 0, 0, '13.00', '13.00', '0.00', '0.00'),
(497, 'Grub Screw', '7318', NULL, 'for round Knob', 0, '', NULL, NULL, '', '', '', '', '', '2569021', '', 1, 0, '0', '', '', '', '', '', 0, 0, '4.00', '4.00', '0.00', '0.00'),
(498, 'Screw with Washer', '7318', NULL, 'for triangle and square knob', 0, '', NULL, NULL, '', '', '', '', '', '2569019', '', 1, 0, '0', '', '', '', '', '', 0, 0, '7.00', '7.00', '0.00', '0.00'),
(499, 'Red & Blue Buttons', '8481', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569022', '', 1, 0, '0', '', '', '', '', '', 0, 0, '13.50', '13.50', '0.00', '0.00'),
(500, 'Red & Blue Buttons', '8481', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569022', '', 1, 0, '0', '', '', '', '', '', 0, 0, '13.50', '13.50', '0.00', '0.00'),
(501, 'Rubber Washer', '4016', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569023', '', 1, 0, '0', '', '', '', '', '', 0, 0, '8.00', '8.00', '0.00', '0.00'),
(502, 'Threaded End Plug', '3917', NULL, '', 0, '', NULL, NULL, '', '', '', '', '', '2569501', '', 1, 0, '0', '', '', '', '', '', 0, 0, '4.50', '4.50', '0.00', '0.00'),
(503, 'Flush Valve', '3917', NULL, 'FV Operating Mechanism', 0, '', NULL, NULL, '', '', '', '', '', '2592101', '', 1, 0, '0', '', '', '', '', '', 0, 0, '697.00', '697.00', '0.00', '0.00'),
(504, 'Flush Valve', '7307', NULL, 'FV Wall Flange with Washer', 0, '', NULL, NULL, '', '', '', '', '', '2592102', '', 1, 0, '0', '', '', '', '', '', 0, 0, '301.00', '301.00', '0.00', '0.00'),
(505, 'YS Filter Mesh', '7307', NULL, 'Y STRAINER', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2593101', '', 1, 0, '0', '', '', '', '', '', 0, 0, '30.00', '30.00', '0.00', '0.00'),
(506, 'YS Filter Mesh', '7307', NULL, 'Y STRAINER', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2593102', '', 1, 0, '0', '', '', '', '', '', 0, 0, '41.00', '41.00', '0.00', '0.00'),
(507, 'YS Hex Nut', '8207', NULL, 'Y STRAINER', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2593103', '', 1, 0, '0', '', '', '', '', '', 0, 0, '211.00', '211.00', '0.00', '0.00'),
(508, 'YS Hex Nut', '8207', NULL, 'Y STRAINER', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2593104', '', 1, 0, '0', '', '', '', '', '', 0, 0, '299.00', '299.00', '0.00', '0.00'),
(509, 'Spindle', '8207', NULL, '', 0, '', NULL, NULL, 'Medium Flow', '', '', '', '', '2581001', '', 1, 0, '0', '', '', '', '', '', 0, 0, '343.00', '343.00', '0.00', '0.00'),
(510, 'Spindle', '8207', NULL, '', 0, '', NULL, NULL, 'High Flow', '', '', '', '', '2591001', '', 1, 0, '0', '', '', '', '', '', 0, 0, '555.00', '555.00', '0.00', '0.00'),
(511, 'Sleeve Flange', '7307', NULL, '', 0, '', NULL, NULL, 'Medium Flow', '', '', '', '', '2591006', '', 1, 0, '0', '', '', '', '', '', 0, 0, '59.00', '59.00', '0.00', '0.00'),
(512, 'Sleeve Flange', '7307', NULL, '', 0, '', NULL, NULL, 'High Flow', '', '', '', '', '2591007', '', 1, 0, '0', '', '', '', '', '', 0, 0, '203.00', '203.00', '0.00', '0.00'),
(513, 'Body Sleeve and O-ring', '8481', NULL, '', 0, '', NULL, NULL, 'Medium Flow', '', '', '', '', '2581003', '', 1, 0, '0', '', '', '', '', '', 0, 0, '234.00', '234.00', '0.00', '0.00'),
(514, 'Body Sleeve and O-ring', '8481', NULL, '', 0, '', NULL, NULL, 'High Flow', '', '', '', '', '2591003', '', 1, 0, '0', '', '', '', '', '', 0, 0, '855.00', '855.00', '0.00', '0.00'),
(515, 'Cartridge', '3917', NULL, '', 0, '', NULL, NULL, 'Medium Flow', '', '', '', '', '2581004', '', 1, 0, '0', '', '', '', '', '', 0, 0, '455.00', '455.00', '0.00', '0.00'),
(516, 'Cartridge', '3917', NULL, '', 0, '', NULL, NULL, 'High Flow', '', '', '', '', '2591004', '', 1, 0, '0', '', '', '', '', '', 0, 0, '812.00', '812.00', '0.00', '0.00'),
(517, 'Hex Nut', '8207', NULL, '', 0, '', NULL, NULL, 'Medium Flow', '', '', '', '', '2581005', '', 1, 0, '0', '', '', '', '', '', 0, 0, '73.00', '73.00', '0.00', '0.00'),
(518, 'Hex Nut', '8207', NULL, '', 0, '', NULL, NULL, 'High Flow', '', '', '', '', '2591005', '', 1, 0, '0', '', '', '', '', '', 0, 0, '457.00', '457.00', '0.00', '0.00'),
(519, 'Extension Tube', '8207', NULL, '', 0, '', NULL, NULL, 'High Flow', '', '', '', '', '2591002', '', 1, 0, '0', '', '', '', '', '', 0, 0, '130.00', '130.00', '0.00', '0.00'),
(520, 'Tee', '3917', NULL, '', 0, '', NULL, NULL, '½', '1.5', '', '', '', '2226001', '', 100, 2000, '0', '', '', '', '', '', 0, 0, '20.50', '2050.00', '0.00', '0.00');
INSERT INTO `prdtable` (`id`, `prd_name`, `prd_hsn_code`, `prd_code`, `prd_description`, `prd_quantity`, `prd_company_name`, `prd_purchase_date`, `prd_purchase_time`, `prd_size_1`, `prd_size_2`, `prd_size_unit`, `prd_turn`, `prd_knob`, `prd_part_no_1`, `prd_part_no_2`, `prd_pkg`, `prd_box_qty`, `prd_color`, `prd_material_type`, `prd_model`, `prd_power`, `prd_size_type`, `prd_stage`, `is_delete`, `prd_category`, `prd_mrp_1`, `prd_mrp_2`, `prd_mrp_3`, `prd_mrp_4`) VALUES
(521, 'Tee', '3917', NULL, '', 0, '', NULL, NULL, '¾', '2', '', '', '', '2226002', '', 50, 800, '0', '', '', '', '', '', 0, 0, '28.00', '1400.00', '0.00', '0.00'),
(522, 'Tee', '3917', NULL, '', 0, '', NULL, NULL, '1', '2.5', '', '', '', '2226003', '', 25, 400, '0', '', '', '', '', '', 0, 0, '43.50', '1087.50', '0.00', '0.00'),
(523, 'Tee', '3917', NULL, '', 0, '', NULL, NULL, '1¼', '3.2', '', '', '', '2226004', '', 10, 200, '0', '', '', '', '', '', 0, 0, '97.50', '975.00', '0.00', '0.00'),
(524, 'Tee', '3917', NULL, '', 0, '', NULL, NULL, '1½', '4', '', '', '', '2226005', '', 10, 120, '0', '', '', '', '', '', 0, 0, '175.00', '1750.00', '0.00', '0.00'),
(525, 'Tee', '3917', NULL, '', 0, '', NULL, NULL, '2', '5', '', '', '', '2226006', '', 5, 60, '0', '', '', '', '', '', 0, 0, '371.00', '1855.00', '0.00', '0.00'),
(526, 'Hi-Flow S-Seri', '8413', 'MHPASS1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow S1', '0.75  / 1.0', 'x', 'x', 0, 1, '7870.00', '0.00', '0.00', '0.00'),
(527, 'Hi-Flow SE-S', '8413', 'MHPASB0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow SE 2', '0.37 / 0.5', 'x', 'x', 0, 1, '4700.00', '0.00', '0.00', '0.00'),
(528, 'Hi-Flow SE-S', '8413', 'MHPASB1X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow SE 1.5', '1.1  / 1.5', 'x', 'x', 0, 1, '8900.00', '0.00', '0.00', '0.00'),
(529, 'Hi-Flow M-Series', '8413', 'MHPAMS0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow M2', '0.37 / 0.5', 'x', 'x', 0, 1, '4645.00', '0.00', '0.00', '0.00'),
(530, 'Hi-Flow M-Series', '8413', 'MHPAMS1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow M1', '0.75  / 1.0', 'x', 'x', 0, 1, '6685.00', '0.00', '0.00', '0.00'),
(531, 'Hi-Flow ML/MX/SL-Series', '8413', 'MHPAMA0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow MX2', '0.37 / 0.5', 'x', 'x', 0, 1, '3985.00', '0.00', '0.00', '0.00'),
(532, 'Hi-Flow ML/MX/SL-Series', '8413', 'MHPAME0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow ML2', '0.37 / 0.5', 'x', 'x', 0, 1, '3825.00', '0.00', '0.00', '0.00'),
(533, 'Hi-Flow ML/MX/SL-Series', '8413', 'MHPAMA1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow MX1', '0.75  / 1.0', 'x', 'x', 0, 1, '5615.00', '0.00', '0.00', '0.00'),
(534, 'Hi-Flow ML/MX/SL-Series', '8413', 'MHPAME1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow ML1', '0.75  / 1.0', 'x', 'x', 0, 1, '5400.00', '0.00', '0.00', '0.00'),
(535, 'Hi-Flow MP/MS-Series', '8413', 'MHPAMF0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow MS2', '0.37 / 0.5', 'x', 'x', 0, 1, '3350.00', '0.00', '0.00', '0.00'),
(536, 'Hi-Flow MP/MS-Series', '8413', 'MHPAMB0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow MP2', '0.37 / 0.5', 'x', 'x', 0, 1, '3505.00', '0.00', '0.00', '0.00'),
(537, 'Hi-Flow MP/MS-Series', '8413', 'MHPAMF1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow MS1', '0.75  / 1.0', 'x', 'x', 0, 1, '4635.00', '0.00', '0.00', '0.00'),
(538, 'Hi-Flow MP/MS-Series', '8413', 'MHPAMB1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow MP1', '0.75  / 1.0', 'x', 'x', 0, 1, '4635.00', '0.00', '0.00', '0.00'),
(539, 'Hi-Flow A-Series', '8413', 'MHPAAE0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow AL2', '0.37 / 0.5', 'x', 'x', 0, 1, '4800.00', '0.00', '0.00', '0.00'),
(540, 'Hi-Flow A-Series', '8413', 'MHPAAS0X75', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow A3', '0.55 / 0.75', 'x', 'x', 0, 1, '5595.00', '0.00', '0.00', '0.00'),
(541, 'Hi-Flow A-Series', '8413', 'MHPAAS1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow A1', '0.75  / 1.0', 'x', 'x', 0, 1, '6370.00', '0.00', '0.00', '0.00'),
(542, 'Hi-Flow HS Series', '8413', 'MHPAVE0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow HS2', '0.37 / 0.5', 'x', 'x', 0, 1, '5250.00', '0.00', '0.00', '0.00'),
(543, 'Hi-Flow HBEM Series', '8413', 'MHPEMS0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HBEM2', '0.37 / 0.5', 'x', 'x', 0, 1, '10500.00', '0.00', '0.00', '0.00'),
(544, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJA0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JS2', '0.37 / 0.5', 'x', 'x', 0, 1, '7255.00', '0.00', '0.00', '0.00'),
(545, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJB0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JM2', '0.37 / 0.5', 'x', 'x', 0, 1, '7705.00', '0.00', '0.00', '0.00'),
(546, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJF0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JSE2', '0.37 / 0.5', 'x', 'x', 0, 1, '6275.00', '0.00', '0.00', '0.00'),
(547, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJE1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JX2', '0.37 / 0.5', 'x', 'x', 0, 1, '6615.00', '0.00', '0.00', '0.00'),
(548, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJA1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JS1', '0.75  / 1.0', 'x', 'x', 0, 1, '9055.00', '0.00', '0.00', '0.00'),
(549, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJB1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JM1', '0.75  / 1.0', 'x', 'x', 0, 1, '9600.00', '0.00', '0.00', '0.00'),
(550, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJF1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JSE1', '0.75  / 1.0', 'x', 'x', 0, 1, '7750.00', '0.00', '0.00', '0.00'),
(551, 'Shallow Well Jet Pump JS / JM / J Series', '8413', 'MHPCJE0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Shallow Well Jet Pump JX1', '0.75  / 1.0', 'x', 'x', 0, 1, '8085.00', '0.00', '0.00', '0.00'),
(552, 'Hi-FlowJet Pump', '8413', 'MHPCJV1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Jet Pump BWJ11T - Twin Type', '0.75  / 1.0', 'x', 'x', 0, 1, '11725.00', '0.00', '0.00', '0.00'),
(553, 'Hi-FlowJet Pump', '8413', 'MHPCJU1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Jet Pump BWJ12T - Twin Type', '0.75  / 1.0', 'x', 'x', 0, 1, '13310.00', '0.00', '0.00', '0.00'),
(554, 'Hi-FlowJet Pump', '8413', 'MHPCJW1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Jet Pump BWJ11P - Packer Type', '0.75  / 1.0', 'x', 'x', 0, 1, '14670.00', '0.00', '0.00', '0.00'),
(555, 'Hi-Flow D-Series', '8413', 'MHPBDS0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi Flow D2', '0.37 / 0.5', 'x', 'x', 0, 1, '8700.00', '0.00', '0.00', '0.00'),
(556, 'Hi-Flow D-Series', '8413', 'MHPBDH0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi Flow D2H', '0.37 / 0.5', 'x', 'x', 0, 1, '8700.00', '0.00', '0.00', '0.00'),
(557, 'Hi-Flow D-Series', '8413', 'MHPBDS1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi Flow D1', '0.75  / 1.0', 'x', 'x', 0, 1, '11550.00', '0.00', '0.00', '0.00'),
(558, 'Hi-Flow D-Series', '8413', 'MHPBDB1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi Flow D10', '0.75  / 1.0', 'x', 'x', 0, 1, '11675.00', '0.00', '0.00', '0.00'),
(559, 'Open Well Pump W-Series', '8413', 'MHPHWE0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow WL2', '0.37 / 0.5', 'x', 'x', 0, 1, '7110.00', '0.00', '0.00', '0.00'),
(560, 'Open Well Pump W-Series', '8413', 'MHPHWS0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow W2', '0.37 / 0.5', 'x', 'x', 0, 1, '8685.00', '0.00', '0.00', '0.00'),
(561, 'Open Well Pump W-Series', '8413', 'MHPHWE1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow WL1', '0.75  / 1.0', 'x', 'x', 0, 1, '9095.00', '0.00', '0.00', '0.00'),
(562, 'Open Well Pump W-Series', '8413', 'MHPHWS1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'Hi-Flow W1', '0.75  / 1.0', 'x', 'x', 0, 1, '11980.00', '0.00', '0.00', '0.00'),
(563, 'Centrifugal Pumps', '8413', 'MHPOCE0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CM05', '0.37 kW / 0.5 HP (25×25mm)', 'x', 'x', 0, 1, '5470.00', '0.00', '0.00', '0.00'),
(564, 'Centrifugal Pumps', '8413', 'MHPOCB0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CM05H', '0.37 kW / 0.5 HP 25×25mm', 'x', 'x', 0, 1, '6070.00', '0.00', '0.00', '0.00'),
(565, 'Centrifugal Pumps', '8413', 'MHPQCE0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CP05', '0.37 kW / 0.5 HP 40×40mm', 'x', 'x', 0, 1, '6610.00', '0.00', '0.00', '0.00'),
(566, 'Centrifugal Pumps', '8413', 'MHPQCG0X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CP05E', '0.37 kW / 0.5 HP 40×40mm', 'x', 'x', 0, 1, '6750.00', '0.00', '0.00', '0.00'),
(567, 'Centrifugal Pumps', '8413', 'MHPOCE1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CM10', '0.75 kW / 1.0 HP 25×25mm', 'x', 'x', 0, 1, '8640.00', '0.00', '0.00', '0.00'),
(568, 'Centrifugal Pumps', '8413', 'MHPPCE1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CN10', '0.75 kW / 1.0 HP 32×25mm', 'x', 'x', 0, 1, '9260.00', '0.00', '0.00', '0.00'),
(569, 'Centrifugal Pumps', '8413', 'MHPSCE1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CQ10', '0.75 kW / 1.0 HP 50×50mm', 'x', 'x', 0, 1, '9220.00', '0.00', '0.00', '0.00'),
(570, 'Centrifugal Pumps', '8413', 'MHPSCG1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CQ10E', '0.75 kW / 1.0 HP 50×50mm', 'x', 'x', 0, 1, '9430.00', '0.00', '0.00', '0.00'),
(571, 'Centrifugal Pumps', '8413', 'MHPVCE1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CV10', '0.75 kW / 1.0 HP 80×80mm', 'x', 'x', 0, 1, '10430.00', '0.00', '0.00', '0.00'),
(572, 'Centrifugal Pumps', '8413', 'MHPVCG1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CV10E', '0.75 kW / 1.0 HP 80×80mm', 'x', 'x', 0, 1, '10640.00', '0.00', '0.00', '0.00'),
(573, 'Centrifugal Pumps', '8413', 'MHPSCS1X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CQ15', '1.1 kW / 1.5 HP 50×50mm', 'x', 'x', 0, 1, '11310.00', '0.00', '0.00', '0.00'),
(574, 'Centrifugal Pumps', '8413', 'MHPTCS1X50', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CR15', '1.1 kW / 1.5 HP 65×50mm', 'x', 'x', 0, 1, '11310.00', '0.00', '0.00', '0.00'),
(575, 'Centrifugal Pumps', '8413', 'MHPUCS2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CS20', '1.5 kW / 2.0 HP 80×65mm', 'x', 'x', 0, 1, '13990.00', '0.00', '0.00', '0.00'),
(576, 'Centrifugal Pumps', '8413', 'MHPUCU2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CS20D', '1.5 kW / 2.0 HP 80×65mm', 'x', 'x', 0, 1, '14450.00', '0.00', '0.00', '0.00'),
(577, 'Centrifugal Pumps', '8413', 'MHPVCS2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CV20', '1.5 kW / 2.0 HP 80×80mm', 'x', 'x', 0, 1, '13990.00', '0.00', '0.00', '0.00'),
(578, 'Centrifugal Pumps', '8413', 'MHPVCU2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CV20D', '1.5 kW / 2.0 HP 80×80mm', 'x', 'x', 0, 1, '14450.00', '0.00', '0.00', '0.00'),
(579, 'Centrifugal Pumps', '8413', 'MHPSCA2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMQ20', '1.5 kW / 2.0 HP 50×50mm', 'x', 'x', 0, 1, '12570.00', '0.00', '0.00', '0.00'),
(580, 'Centrifugal Pumps', '8413', 'MHPTCA2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMR20', '1.5 kW / 2.0 HP 65×50mm', 'x', 'x', 0, 1, '12570.00', '0.00', '0.00', '0.00'),
(581, 'Centrifugal Pumps', '8413', 'MHPUCA2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMS20', '1.5 kW / 2.0 HP 75×65mm', 'x', 'x', 0, 1, '12570.00', '0.00', '0.00', '0.00'),
(582, 'Centrifugal Pumps', '8413', 'MHPVCA2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMV20', '1.5 kW / 2.0 HP 75×75mm', 'x', 'x', 0, 1, '12570.00', '0.00', '0.00', '0.00'),
(583, 'Centrifugal Pumps', '8413', 'MHPTCV2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMR20D', '1.5 kW / 2.0 HP 65×50mm', 'x', 'x', 0, 1, '12740.00', '0.00', '0.00', '0.00'),
(584, 'Centrifugal Pumps', '8413', 'MHPUCV2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMS20D', '1.5 kW / 2.0 HP 75×65mm', 'x', 'x', 0, 1, '12740.00', '0.00', '0.00', '0.00'),
(585, 'Centrifugal Pumps', '8413', 'MHPVCV2X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'CMV20D', '1.5 kW / 2.0 HP 75×75mm', 'x', 'x', 0, 1, '12740.00', '0.00', '0.00', '0.00'),
(586, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPXBI1201', '(75/80mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HC3W12V10S', '0.75 / 1.0', '32', '12', 0, 1, '10720.00', '0.00', '0.00', '0.00'),
(587, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBE08X5', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4W8B05S', '0.37 / 0.5', '32', '8', 0, 1, '10930.00', '0.00', '0.00', '0.00'),
(588, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBE12X7', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4W12B08S', '0.55 / 0.75', '32', '12', 0, 1, '11560.00', '0.00', '0.00', '0.00'),
(589, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBE0701', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4W7B10S', '0.75 / 1.0', '32', '7', 0, 1, '11385.00', '0.00', '0.00', '0.00'),
(590, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBE1001', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4W10B10S', '0.75 / 1.0', '32', '10', 0, 1, '11860.00', '0.00', '0.00', '0.00'),
(591, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBE121X', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4W12C15S', '1.10 / 1.5', '40', '12', 0, 1, '13300.00', '0.00', '0.00', '0.00'),
(592, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBE151X', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4W15B15S', '1.10 / 1.5', '32', '15', 0, 1, '13500.00', '0.00', '0.00', '0.00'),
(593, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS06X5', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W6B05S', '0.37 / 0.5', '32', '6', 0, 1, '11130.00', '0.00', '0.00', '0.00'),
(594, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS0701', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W7B10S', '0.75 / 1.0', '32', '7', 0, 1, '12220.00', '0.00', '0.00', '0.00'),
(595, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGCS0801', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W8C10S', '0.75 / 1.0', '40', '8', 0, 1, '12885.00', '0.00', '0.00', '0.00'),
(596, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS1001', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W10B10S', '0.75  / 1.0', '32', '10', 0, 1, '13075.00', '0.00', '0.00', '0.00'),
(597, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS1301', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W13B10S', '0.75 / 1.0', '32', '13', 0, 1, '15230.00', '0.00', '0.00', '0.00'),
(598, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS1601', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W16B10S', '0.75 / 1.0', '32', '16', 0, 1, '16765.00', '0.00', '0.00', '0.00'),
(599, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGCS121X', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W12C15S', '1.10 / 1.5', '40', '12', 0, 1, '14920.00', '0.00', '0.00', '0.00'),
(600, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS151X', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W15B15S', '1.10  / 1.5', '32', '15', 0, 1, '15645.00', '0.00', '0.00', '0.00'),
(601, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS181X', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W18B15S', '1.1 / 1.5', '32', '18', 0, 1, '18705.00', '0.00', '0.00', '0.00'),
(602, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS201X', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W20B15S', '1.1 / 1.5', '32', '20', 0, 1, '19930.00', '0.00', '0.00', '0.00'),
(603, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGDS1002', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W10D20S', '1.5 / 2.0', '50', '10', 0, 1, '18605.00', '0.00', '0.00', '0.00'),
(604, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGCS1602', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W16C20S', '1.5 / 2.0', '40', '16', 0, 1, '20235.00', '0.00', '0.00', '0.00'),
(605, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS2002', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W20B20S', '1.5 / 2.0', '32', '20', 0, 1, '21775.00', '0.00', '0.00', '0.00'),
(606, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS2702', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W27B20S', '1.5 / 2.0', '32', '27', 0, 1, '23100.00', '0.00', '0.00', '0.00'),
(607, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGES0703', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W7E30S', '2.2 / 3.0', '65', '7', 0, 1, '23330.00', '0.00', '0.00', '0.00'),
(608, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGEA0703', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W7E30S-CI', '2.2 / 3.0', '65', '7', 0, 1, '27225.00', '0.00', '0.00', '0.00'),
(609, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGDS0903', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W9D30S', '2.2 / 3.0', '50', '9', 0, 1, '25690.00', '0.00', '0.00', '0.00'),
(610, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGDS1203', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W12D30S', '2.2 / 3.0', '50', '12', 0, 1, '23770.00', '0.00', '0.00', '0.00'),
(611, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGDS1503', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W15D30S', '2.2 / 3.0', '50', '15', 0, 1, '22880.00', '0.00', '0.00', '0.00'),
(612, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPGBS2203', '(100mm Water Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4W22B30S', '2.2 / 3.0', '32', '22', 0, 1, '23840.00', '0.00', '0.00', '0.00'),
(613, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBB0701', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF4O7B10S', '0.75  / 1.0', '32', '7', 0, 1, '9880.00', '0.00', '0.00', '0.00'),
(614, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBB1001', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'HF410B10S', '0.75 / 1.0', '32', '10', 0, 1, '10720.00', '0.00', '0.00', '0.00'),
(615, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS06X5', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O6B05S', '0.37 / 0.5', '32', '6', 0, 1, '10275.00', '0.00', '0.00', '0.00'),
(616, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS0701', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O7B10S', '0.75  / 1.0', '32', '7', 0, 1, '10635.00', '0.00', '0.00', '0.00'),
(617, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS1001', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O10B10S', '0.75 / 1.0', '32', '10', 0, 1, '12885.00', '0.00', '0.00', '0.00'),
(618, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS1301', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O13B10S', '0.75 / 1.0', '32', '13', 0, 1, '14105.00', '0.00', '0.00', '0.00'),
(619, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS1601', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O16B10S', '0.75 / 1.0', '32', '16', 0, 1, '15430.00', '0.00', '0.00', '0.00'),
(620, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLCS121X', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O12C15S', '1.10 / 1.5', '40', '12', 0, 1, '13890.00', '0.00', '0.00', '0.00'),
(621, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS151X', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O15B15S', '1.10 / 1.5', '32', '15', 0, 1, '14920.00', '0.00', '0.00', '0.00'),
(622, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS181X', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O18B15S', '1.1 / 1.5', '32', '18', 0, 1, '16665.00', '0.00', '0.00', '0.00'),
(623, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS201X', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O20B15S', '1.1 / 1.5', '32', '20', 0, 1, '17275.00', '0.00', '0.00', '0.00'),
(624, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLDS1002', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O10D20S', '1.5 / 2.0', '50', '10', 0, 1, '17985.00', '0.00', '0.00', '0.00'),
(625, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLCS1602', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O16C20S', '1.5 / 2.0', '40', '16', 0, 1, '18910.00', '0.00', '0.00', '0.00'),
(626, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS2002', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O20B20S', '1.5 / 2.0', '32', '20', 0, 1, '20035.00', '0.00', '0.00', '0.00'),
(627, 'Submersible Pumps (75/80/100 mm)', '8413', 'MHPLBS2702', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', 'H4O27B20S', '1.5 / 2.0', '32', '27', 0, 1, '21560.00', '0.00', '0.00', '0.00'),
(628, 'Power Guard Submersible Pump Controller', '8537', 'MHPZXV1X00', '(100mm Oil Filled Motor)', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', '1 PH O / F Controller', '0.75 / 1.0', 'x', 'x', 0, 1, '1530.00', '0.00', '0.00', '0.00'),
(629, 'Power Guard Submersible Pump Controller', '8537', 'MHPZYV1X00', '', 0, '', NULL, NULL, '', '', '', '', '', '', '', 0, 0, '0', '', '1 PH W / F Controller', '0.75 / 1.0', 'x', 'x', 0, 1, '2150.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `prdtable_royal`
--

CREATE TABLE `prdtable_royal` (
  `id` int(11) NOT NULL COMMENT 'Auto ID',
  `prd_name` varchar(500) DEFAULT '' COMMENT 'Name of the product',
  `prd_hsn_code` varchar(100) DEFAULT '' COMMENT 'HSN Code of Product (The full form of HSN code means Harmonized System Nomenclature.)',
  `prd_code` varchar(100) DEFAULT NULL,
  `prd_description` varchar(500) DEFAULT '' COMMENT 'Product description',
  `prd_quantity` int(10) DEFAULT '0' COMMENT 'Product quantity',
  `prd_company_name` varchar(500) DEFAULT '' COMMENT 'Manufacture company name',
  `prd_purchase_date` timestamp NULL DEFAULT NULL COMMENT 'Product purchase date',
  `prd_purchase_time` timestamp NULL DEFAULT NULL COMMENT 'Product purchase time',
  `prd_size_1` varchar(50) DEFAULT '' COMMENT 'Product size',
  `prd_size_2` varchar(50) DEFAULT '',
  `prd_size_unit` varchar(50) DEFAULT '' COMMENT 'Unit Of Size',
  `prd_turn` varchar(50) DEFAULT '' COMMENT 'Turn value of any valve product',
  `prd_knob` varchar(50) DEFAULT '' COMMENT 'Predefine value of valve knob product',
  `prd_part_no_1` varchar(50) DEFAULT '' COMMENT 'Part Number 1',
  `prd_part_no_2` varchar(100) DEFAULT '',
  `prd_pkg` int(10) DEFAULT '0' COMMENT 'Standard Package Of Product',
  `prd_box_qty` int(10) DEFAULT '0' COMMENT 'Quantity Of Product In A Box',
  `prd_color` varchar(50) DEFAULT '0' COMMENT 'Product color',
  `prd_material_type` varchar(500) DEFAULT '' COMMENT 'Type of material',
  `prd_model` varchar(100) DEFAULT '' COMMENT 'Model number of the product',
  `prd_power` varchar(50) DEFAULT '' COMMENT 'Power value of product (kw/hp)',
  `prd_size_type` varchar(50) DEFAULT '' COMMENT 'Type of Size (Outlet / Inlet)',
  `prd_stage` varchar(50) DEFAULT '' COMMENT 'Stage value of the product',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT 'For Logical Delete ''0'' means not deleted 1 means deleted',
  `prd_category` tinyint(1) DEFAULT '0' COMMENT 'Category of product -0 for plumbing -1 for Electronic',
  `prd_mrp_1` decimal(10,2) DEFAULT '0.00',
  `prd_mrp_2` decimal(10,2) DEFAULT '0.00',
  `prd_mrp_3` decimal(10,2) DEFAULT '0.00',
  `prd_mrp_4` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `associateid` int(11) DEFAULT NULL,
  `shake` int(11) DEFAULT '0' COMMENT 'Total Serving Offer Is 60 In 3 Boxes  For 20 Days',
  `pp` int(11) DEFAULT '0' COMMENT 'Total Serving Offer Is 60 In 3 Boxes  For 20 Days',
  `afresh` int(11) DEFAULT '0' COMMENT 'Total Serving Offer Is 50 In 2 Boxes  For 25 Days',
  `dino` int(11) DEFAULT '0',
  `date` varchar(50) DEFAULT '',
  `totalshake` int(11) DEFAULT '0' COMMENT 'The total of shake is number of boxes into 20.\nShake  3 Boxes For 20 Days = 60 Serving ',
  `totalpp` int(11) DEFAULT '0' COMMENT 'The total of pp is number of boxes into 30.\nProtine Powder 2 Boxes For 30 days  = 60 Serving\n',
  `totalaf` int(11) DEFAULT '0' COMMENT 'The total of af is number of boxes into 25.\nAFresh 2 Boxes  For 25 Days = 50 Serving ',
  `totaldino` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `location`, `date`, `size`, `tags`, `description`) VALUES
(2, 'test 2', 'test 2', '21-4-2019', '14 watts', 'test 2', 'test 2'),
(3, 'test 3', 'test 3', '22-4-2019', '13 watts', 'test 3', 'test 3');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `image_path` varchar(200) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `image_path`, `image_url`) VALUES
(1, 1, 'admin/projectsImages/1_TAcNUj8KovTM.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_TAcNUj8KovTM.jpeg'),
(2, 1, 'admin/projectsImages/1_odEnzgIy6e7R.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_odEnzgIy6e7R.jpeg'),
(3, 1, 'admin/projectsImages//1_8SesaIoJnhlz.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_8SesaIoJnhlz.jpeg'),
(4, 1, 'admin/projectsImages//1_KHPUsPrMeSY8.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_KHPUsPrMeSY8.jpeg'),
(5, 1, 'admin/projectsImages//1_pZ7oZIIlJRSt.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_pZ7oZIIlJRSt.jpeg'),
(6, 1, 'admin/projectsImages//1_Gxd4cl5s6rJ6.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_Gxd4cl5s6rJ6.jpeg'),
(7, 1, 'admin/projectsImages//1_O2cmSzNoYyaf.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_O2cmSzNoYyaf.jpeg'),
(8, 1, 'admin/projectsImages//1_R9gTZFnM6xfX.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_R9gTZFnM6xfX.jpeg'),
(9, 1, 'admin/projectsImages//1_r6vZnUJMA1I4.jpeg', 'http:localhost/solartronix/admin/projectsImages/1_r6vZnUJMA1I4.jpeg'),
(10, 2, 'admin/projectsImages//2_0XiIPx3SuA34.jpeg', 'http:localhost/solartronix/admin/projectsImages/2_0XiIPx3SuA34.jpeg'),
(11, 2, 'admin/projectsImages//2_3Dl1VXns0Av1.jpeg', 'http:localhost/solartronix/admin/projectsImages/2_3Dl1VXns0Av1.jpeg'),
(14, 4, 'admin/projectsImages/4_uj6H7mziP8By.jpeg', 'http:localhost/solartronix/admin/projectsImages/4_uj6H7mziP8By.jpeg'),
(15, 4, 'admin/projectsImages/4_v87inp7xSvlf.jpeg', 'http:localhost/solartronix/admin/projectsImages/4_v87inp7xSvlf.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `customerName` varchar(200) NOT NULL,
  `items` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RID` int(11) NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `Exam` varchar(50) DEFAULT NULL,
  `ExamDate` varchar(50) DEFAULT NULL,
  `Details` varchar(250) DEFAULT NULL,
  `graph` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`RID`, `userID`, `Exam`, `ExamDate`, `Details`, `graph`) VALUES
(1, '1', '11', '11', '11', '11111111111111111111111'),
(1, '1', '11', '11', '11', '11111111111111111111111'),
(2, '2', '22', '2', '22', '2222222222'),
(3, '3', '33', '3', '33', '33333');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `associateid` int(11) DEFAULT '0',
  `memberid` int(11) DEFAULT '0',
  `guestid` int(11) DEFAULT '0',
  `date` varchar(50) DEFAULT '""',
  `shakenumber` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `associateid`, `memberid`, `guestid`, `date`, `shakenumber`) VALUES
(1, 0, 0, 12, '25-07-2016', 1),
(2, 0, 11, 0, '25-07-2016', 2),
(3, 1, 0, 0, '25-07-2016', 3),
(4, 2, 0, 0, '04-07-2016', 1),
(5, 2, 0, 0, '04-07-2016', 2),
(6, 2, 0, 0, '04-07-2016', 1),
(7, 2, 0, 0, '04-07-2016', 2),
(8, 3, 0, 0, '04-07-2016', 3),
(9, 4, 0, 0, '04-07-2016', 4),
(10, 5, 0, 0, '04-07-2016', 5),
(11, 0, 0, 0, '\"\"', 0),
(12, 2, 0, 0, '05-07-2016', 1),
(13, 2, 0, 0, '05-07-2016', 2),
(14, 3, 0, 0, '05-07-2016', 3),
(15, 4, 0, 0, '05-07-2016', 4),
(16, 5, 0, 0, '05-07-2016', 5),
(17, 4, 0, 0, '05-07-2016', 6),
(18, 3, 0, 0, '05-07-2016', 7),
(19, 2, 0, 0, '05-07-2016', 8),
(20, 2, 0, 0, '05-07-2016', 9),
(21, 2, 0, 0, '05-07-2016', 10),
(22, 2, 0, 0, '06-07-2016', 1),
(23, 2, 0, 0, '06-07-2016', 2),
(24, 3, 0, 0, '06-07-2016', 3),
(25, 4, 0, 0, '06-07-2016', 4),
(26, 5, 0, 0, '06-07-2016', 5),
(27, 4, 0, 0, '06-07-2016', 6),
(28, 3, 0, 0, '06-07-2016', 7),
(29, 2, 0, 0, '06-07-2016', 8),
(30, 2, 0, 0, '06-07-2016', 9),
(31, 2, 0, 0, '06-07-2016', 10),
(32, 2, 0, 0, '07-07-2016', 1),
(33, 2, 0, 0, '07-07-2016', 2),
(34, 3, 0, 0, '07-07-2016', 3),
(35, 4, 0, 0, '07-07-2016', 4),
(36, 5, 0, 0, '07-07-2016', 5),
(37, 4, 0, 0, '07-07-2016', 6),
(38, 3, 0, 0, '07-07-2016', 7),
(39, 2, 0, 0, '07-07-2016', 8),
(40, 2, 0, 0, '07-07-2016', 9),
(41, 2, 0, 0, '07-07-2016', 10);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `customerID` int(10) NOT NULL,
  `products` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `customerID`, `products`) VALUES
(1, 1, '[computer, printer]'),
(2, 2, '[computer, printer, cd]'),
(3, 3, '[computer, ups, cd]'),
(4, 4, '[ups, scanner, cd]');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amount`
--
ALTER TABLE `amount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_AMOUNT_ASSOICATES_ID_idx` (`associateid`);

--
-- Indexes for table `applicationuser`
--
ALTER TABLE `applicationuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`articleId`);

--
-- Indexes for table `assoicates`
--
ALTER TABLE `assoicates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ASSOICATES_CATEGORY_ID_idx` (`categoryid`);

--
-- Indexes for table `atomicinteger`
--
ALTER TABLE `atomicinteger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientstemp`
--
ALTER TABLE `clientstemp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datetime_table`
--
ALTER TABLE `datetime_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encuser`
--
ALTER TABLE `encuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_GUEST_ASSOICATES_ID_idx` (`associateid`),
  ADD KEY `FK_GUEST_CATEGORY_ID_idx` (`categoryid`);

--
-- Indexes for table `hom`
--
ALTER TABLE `hom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lifestylepenta`
--
ALTER TABLE `lifestylepenta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_MEMBER_ASSOICATES_ID_idx` (`associateid`),
  ADD KEY `FK_MEMBER_CATEGORY_ID_idx` (`categoryid`);

--
-- Indexes for table `monthlyshake`
--
ALTER TABLE `monthlyshake`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_MONTHLYSHAKE_ASSOICATES_ID_idx` (`associatedid`);

--
-- Indexes for table `painttable`
--
ALTER TABLE `painttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prdtable`
--
ALTER TABLE `prdtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prdtable_royal`
--
ALTER TABLE `prdtable_royal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCT_ASSOICATES_ID_idx` (`associateid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amount`
--
ALTER TABLE `amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `applicationuser`
--
ALTER TABLE `applicationuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `articleId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assoicates`
--
ALTER TABLE `assoicates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `atomicinteger`
--
ALTER TABLE `atomicinteger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `clientstemp`
--
ALTER TABLE `clientstemp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datetime_table`
--
ALTER TABLE `datetime_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `encuser`
--
ALTER TABLE `encuser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hom`
--
ALTER TABLE `hom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lifestylepenta`
--
ALTER TABLE `lifestylepenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `monthlyshake`
--
ALTER TABLE `monthlyshake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `painttable`
--
ALTER TABLE `painttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto ID', AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prdtable`
--
ALTER TABLE `prdtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto ID', AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT for table `prdtable_royal`
--
ALTER TABLE `prdtable_royal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto ID';

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amount`
--
ALTER TABLE `amount`
  ADD CONSTRAINT `FK_AMOUNT_ASSOICATES_ID` FOREIGN KEY (`associateid`) REFERENCES `assoicates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `assoicates`
--
ALTER TABLE `assoicates`
  ADD CONSTRAINT `FK_ASSOICATES_CATEGORY_ID` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `FK_GUEST_ASSOICATES_ID` FOREIGN KEY (`associateid`) REFERENCES `assoicates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_GUEST_CATEGORY_ID` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `FK_MEMBER_ASSOICATES_ID` FOREIGN KEY (`associateid`) REFERENCES `assoicates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MEMBER_CATEGORY_ID` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `monthlyshake`
--
ALTER TABLE `monthlyshake`
  ADD CONSTRAINT `FK_MONTHLYSHAKE_ASSOICATES_ID` FOREIGN KEY (`associatedid`) REFERENCES `assoicates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_PRODUCT_ASSOICATES_ID` FOREIGN KEY (`associateid`) REFERENCES `assoicates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
