-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2020 at 02:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqr8`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `address_street_1`, `address_street_2`, `city`, `state`, `country_id`, `zip`, `phone`, `fax`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 230, NULL, NULL, NULL, NULL, 1, '2020-10-17 04:21:20', '2020-10-17 04:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `unique_hash`, `created_at`, `updated_at`) VALUES
(1, 'Fdesigns', NULL, 'EgaXS66yKeUGfRa7X4TZayNmzwDuR99JWsUM8vigXKu7rUz52cZde7Jsyiam', '2020-10-17 04:21:20', '2020-10-17 04:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `option`, `value`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'notification_email', 'jameelfullstackdev@gmail.com', 1, '2020-10-17 04:21:20', '2020-10-17 04:21:20'),
(2, 'currency', '2', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(3, 'time_zone', 'UTC', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(4, 'language', 'en', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(5, 'carbon_date_format', 'd M Y', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(6, 'moment_date_format', 'DD MMM YYYY', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(7, 'fiscal_year', '1-12', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(8, 'invoice_auto_generate', 'YES', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(9, 'invoice_prefix', 'INV', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(10, 'estimate_prefix', 'EST', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(11, 'estimate_auto_generate', 'YES', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(12, 'payment_prefix', 'PAY', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(13, 'payment_auto_generate', 'YES', 1, '2020-10-17 04:21:35', '2020-10-17 04:21:35'),
(14, 'primary_text_color', '#5851D8', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(15, 'heading_text_color', '#595959', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(16, 'section_heading_text_color', '#040405', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(17, 'border_color', '#EAF1FB', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(18, 'body_text_color', '#595959', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(19, 'footer_text_color', '#595959', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(20, 'footer_total_color', '#5851D8', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(21, 'footer_bg_color', '#F9FBFF', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(22, 'date_text_color', '#A5ACC1', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(23, 'invoice_primary_color', '#5851D8', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(24, 'invoice_column_heading', '#55547A', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(25, 'invoice_field_label', '#55547A', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(26, 'invoice_field_value', '#040405', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(27, 'invoice_body_text', '#040405', 1, '2020-10-17 04:21:36', '2020-10-17 04:21:36'),
(28, 'invoice_description_text', '#595959', 1, '2020-10-17 04:21:37', '2020-10-17 04:21:37'),
(29, 'invoice_border_color', '#EAF1FB', 1, '2020-10-17 04:21:37', '2020-10-17 04:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precision` int(11) NOT NULL,
  `thousand_separator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `swap_currency_symbol` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `swap_currency_symbol`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2020-10-17 04:14:29', '2020-10-17 04:14:29'),
(2, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2020-10-17 04:14:29', '2020-10-17 04:14:29'),
(3, 'Euro', 'EUR', '€', 2, '.', ',', 0, '2020-10-17 04:14:29', '2020-10-17 04:14:29'),
(4, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2020-10-17 04:14:29', '2020-10-17 04:14:29'),
(5, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2020-10-17 04:14:29', '2020-10-17 04:14:29'),
(6, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(7, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(8, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(9, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(10, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(11, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(12, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(13, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2020-10-17 04:14:30', '2020-10-17 04:14:30'),
(14, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2020-10-17 04:14:31', '2020-10-17 04:14:31'),
(15, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2020-10-17 04:14:31', '2020-10-17 04:14:31'),
(16, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2020-10-17 04:14:31', '2020-10-17 04:14:31'),
(17, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2020-10-17 04:14:31', '2020-10-17 04:14:31'),
(18, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2020-10-17 04:14:31', '2020-10-17 04:14:31'),
(19, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(20, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(21, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(22, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(23, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(24, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(25, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(26, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2020-10-17 04:14:32', '2020-10-17 04:14:32'),
(27, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(28, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(29, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(30, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(31, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(32, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(33, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(34, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(35, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(36, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(37, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(38, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(39, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2020-10-17 04:14:33', '2020-10-17 04:14:33'),
(40, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(41, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(42, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(43, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(44, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(45, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(46, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(47, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(48, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2020-10-17 04:14:34', '2020-10-17 04:14:34'),
(49, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(50, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(51, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(52, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(53, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(54, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(55, 'Tunisian Dinar', 'TND', '‎د.ت', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(56, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(57, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(58, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(59, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(60, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(61, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(62, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(63, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(64, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2020-10-17 04:14:35', '2020-10-17 04:14:35'),
(65, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2020-10-17 04:14:36', '2020-10-17 04:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int(10) UNSIGNED NOT NULL,
  `estimate_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `estimate_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_per_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_val` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `tax` bigint(20) UNSIGNED NOT NULL,
  `unique_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `estimate_template_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint(20) UNSIGNED DEFAULT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `tax` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `estimate_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_templates`
--

CREATE TABLE `estimate_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimate_templates`
--

INSERT INTO `estimate_templates` (`id`, `name`, `view`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Template 1', 'estimate1', '/assets/img/PDF/Template1.png', '2020-10-17 04:14:36', '2020-10-17 04:14:36'),
(2, 'Template 2', 'estimate2', '/assets/img/PDF/Template2.png', '2020-10-17 04:14:36', '2020-10-17 04:14:36'),
(3, 'Template 3', 'estimate3', '/assets/img/PDF/Template3.png', '2020-10-17 04:14:36', '2020-10-17 04:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `attachment_receipt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense_category_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_per_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `tax` bigint(20) UNSIGNED NOT NULL,
  `due_amount` bigint(20) UNSIGNED NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `unique_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_template_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint(20) UNSIGNED NOT NULL,
  `tax` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_templates`
--

CREATE TABLE `invoice_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_templates`
--

INSERT INTO `invoice_templates` (`id`, `name`, `view`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Template 1', 'invoice1', '/assets/img/PDF/Template1.png', '2020-10-17 04:14:36', '2020-10-17 04:14:36'),
(2, ' Template 2', 'invoice2', '/assets/img/PDF/Template2.png', '2020-10-17 04:14:36', '2020-10-17 04:14:36'),
(3, 'Template 3', 'invoice3', '/assets/img/PDF/Template3.png', '2020-10-17 04:14:37', '2020-10-17 04:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `unit_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_071840_create_companies_table', 1),
(2, '2014_10_11_125754_create_currencies_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_05_13_060834_create_settings_table', 1),
(6, '2017_04_11_064308_create_units_table', 1),
(7, '2017_04_11_081227_create_items_table', 1),
(8, '2017_04_11_140447_create_invoice_templates_table', 1),
(9, '2017_04_12_090759_create_invoices_table', 1),
(10, '2017_04_12_091015_create_invoice_items_table', 1),
(11, '2017_05_04_141701_create_estimate_templates_table', 1),
(12, '2017_05_05_055609_create_estimates_table', 1),
(13, '2017_05_05_073927_create_notifications_table', 1),
(14, '2017_05_06_173745_create_countries_table', 1),
(15, '2017_10_02_123501_create_estimate_items_table', 1),
(16, '2017_12_02_204902_create_permission_tables', 1),
(17, '2018_11_02_133825_create_ expense_categories_table', 1),
(18, '2018_11_02_133956_create_expenses_table', 1),
(19, '2019_08_30_072639_create_addresses_table', 1),
(20, '2019_09_02_053155_create_payment_methods_table', 1),
(21, '2019_09_03_135234_create_payments_table', 1),
(22, '2019_09_14_120124_create_media_table', 1),
(23, '2019_09_21_052540_create_tax_types_table', 1),
(24, '2019_09_21_052548_create_taxes_table', 1),
(25, '2019_09_26_145012_create_company_settings_table', 1),
(26, '2020_05_12_154129_add_user_id_to_expenses_table', 1),
(27, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(28, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(29, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(30, '2016_06_01_000004_create_oauth_clients_table', 2),
(31, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('04938be89f621d34dc95980a59cefaa299ba6f168ee526114a2fcaa476c97805742b661088af9d6d', 1, 2, NULL, '[]', 0, '2020-10-20 10:25:11', '2020-10-20 10:25:11', '2021-10-20 10:25:11'),
('14a040aaf5125b926c5d2d508dd96800ebbf154aeab90855c729fab171875af3385e18cea4da9ab9', 1, 2, NULL, '[]', 0, '2020-10-17 10:12:12', '2020-10-17 10:12:12', '2021-10-17 10:12:12'),
('4c59afb3cc1411e33ca7d16d93e1cb169805497b6b090d072863034c794f2b690892f380086c770c', 1, 2, NULL, '[]', 0, '2020-10-17 10:08:20', '2020-10-17 10:08:20', '2021-10-17 10:08:20'),
('4cc4b053f8f9b4d0b30ab2cf8d1870a9f52bb0b0474c4118f99d62d147f180609c4ba05386762bcd', 1, 2, NULL, '[]', 0, '2020-10-20 06:39:15', '2020-10-20 06:39:15', '2021-10-20 06:39:15'),
('c1207cdba5920afda27e1de5f616fe2e5ade37bb299c8b7c80ab19cbea79835aae6a905e27fe72f0', 1, 2, NULL, '[]', 0, '2020-10-17 04:22:00', '2020-10-17 04:22:00', '2021-10-17 09:22:00'),
('f1435b5191a15e3d69647a2e72bb3061ff4a150ccea0d7d665f9dac719b2b2e2d77c4ce2cb317315', 1, 1, 'password', '[]', 0, '2020-10-17 04:21:39', '2020-10-17 04:21:39', '2021-10-17 09:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Crater Personal Access Client', 'fBytmPKvcAFSn1OPwh1TChYQuis8OeMNiKpi9IRW', 'http://localhost', 1, 0, 0, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(2, NULL, 'Crater Password Grant Client', 't3a0YPzNk30DMTzM8FT0az3a9q12CLKmuC7qGujg', 'http://localhost', 0, 1, 0, '2020-10-17 04:21:38', '2020-10-17 04:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('3ea6061865340fcda77955e136812d3e78a92763956c06a653a46c0b35e2feaaf8feaf1d6f3f38b0', '4cc4b053f8f9b4d0b30ab2cf8d1870a9f52bb0b0474c4118f99d62d147f180609c4ba05386762bcd', 0, '2021-10-20 06:39:15'),
('4b60bcca34f91bff96e61a8a05df8224f60ccb3b4d5ba423d73846a07d174aa01dc76d19fb4aa75c', '04938be89f621d34dc95980a59cefaa299ba6f168ee526114a2fcaa476c97805742b661088af9d6d', 0, '2021-10-20 10:25:11'),
('717c8f915e954ac968454338c29b619c84054d7d8aa8ecb3159f7193d4f733b14745ad1466f4230c', 'c1207cdba5920afda27e1de5f616fe2e5ade37bb299c8b7c80ab19cbea79835aae6a905e27fe72f0', 0, '2021-10-17 09:22:00'),
('a6d8e7dedad2be70559bf66b1b278e6d5b9c59b2c62e9aaca375c1d7b30f627408cc2272ee472b6f', '4c59afb3cc1411e33ca7d16d93e1cb169805497b6b090d072863034c794f2b690892f380086c770c', 0, '2021-10-17 10:08:20'),
('b69275dda4fad195171341cd738ede3e2ffbdc0ad2e770d17a10e0ed8a8ac50fdd25fa2a99bb1c21', '14a040aaf5125b926c5d2d508dd96800ebbf154aeab90855c729fab171875af3385e18cea4da9ab9', 0, '2021-10-17 10:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `unique_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(2, 'Check', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(3, 'Credit Card', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(4, 'Bank Transfer', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'api', '2020-10-17 04:14:36', '2020-10-17 04:14:36'),
(2, 'contact', 'api', '2020-10-17 04:14:36', '2020-10-17 04:14:36'),
(3, 'staff', 'api', '2020-10-17 04:14:36', '2020-10-17 04:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1, 'profile_complete', 'COMPLETED', '2020-10-17 04:14:29', '2020-10-17 04:21:35'),
(2, 'version', '3.1.1', '2020-10-17 04:21:37', '2020-10-17 04:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_type_id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `estimate_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_item_id` int(10) UNSIGNED DEFAULT NULL,
  `estimate_item_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `percent` decimal(5,2) NOT NULL,
  `compound_tax` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` decimal(5,2) NOT NULL,
  `compound_tax` tinyint(4) NOT NULL DEFAULT 0,
  `collective_tax` tinyint(4) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'box', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(2, 'cm', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(3, 'dz', 1, '2020-10-17 04:21:38', '2020-10-17 04:21:38'),
(4, 'ft', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(5, 'g', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(6, 'in', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(7, 'kg', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(8, 'km', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(9, 'lb', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(10, 'mg', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39'),
(11, 'pc', 1, '2020-10-17 04:21:39', '2020-10-17 04:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_portal` tinyint(1) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `remember_token`, `facebook_id`, `google_id`, `github_id`, `contact_name`, `company_name`, `website`, `enable_portal`, `currency_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Jameel Ahmed', 'jameel@fdesigns.co.uk', NULL, '$2y$10$h/iBIADy8dZJNk75gbe2C.fNNVW3TS/UlFNOlJOrXo55CkUV5DsGK', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-17 04:14:29', '2020-10-17 10:11:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_settings_company_id_foreign` (`company_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_user_id_foreign` (`user_id`),
  ADD KEY `estimates_estimate_template_id_foreign` (`estimate_template_id`),
  ADD KEY `estimates_company_id_foreign` (`company_id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimate_items_item_id_foreign` (`item_id`),
  ADD KEY `estimate_items_estimate_id_foreign` (`estimate_id`),
  ADD KEY `estimate_items_company_id_foreign` (`company_id`);

--
-- Indexes for table `estimate_templates`
--
ALTER TABLE `estimate_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_company_id_foreign` (`company_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_invoice_template_id_foreign` (`invoice_template_id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_company_id_foreign` (`company_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_item_id_foreign` (`item_id`),
  ADD KEY `invoice_items_company_id_foreign` (`company_id`);

--
-- Indexes for table `invoice_templates`
--
ALTER TABLE `invoice_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_company_id_foreign` (`company_id`),
  ADD KEY `items_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_invoice_id_foreign` (`invoice_id`),
  ADD KEY `payments_company_id_foreign` (`company_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_company_id_foreign` (`company_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_tax_type_id_foreign` (`tax_type_id`),
  ADD KEY `taxes_invoice_id_foreign` (`invoice_id`),
  ADD KEY `taxes_estimate_id_foreign` (`estimate_id`),
  ADD KEY `taxes_invoice_item_id_foreign` (`invoice_item_id`),
  ADD KEY `taxes_estimate_item_id_foreign` (`estimate_item_id`),
  ADD KEY `taxes_item_id_foreign` (`item_id`),
  ADD KEY `taxes_company_id_foreign` (`company_id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_currency_id_foreign` (`currency_id`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_templates`
--
ALTER TABLE `estimate_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_templates`
--
ALTER TABLE `invoice_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD CONSTRAINT `company_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `estimates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_estimate_template_id_foreign` FOREIGN KEY (`estimate_template_id`) REFERENCES `estimate_templates` (`id`),
  ADD CONSTRAINT `estimates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD CONSTRAINT `estimate_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_items_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_invoice_template_id_foreign` FOREIGN KEY (`invoice_template_id`) REFERENCES `invoice_templates` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `taxes_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_estimate_item_id_foreign` FOREIGN KEY (`estimate_item_id`) REFERENCES `estimate_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_invoice_item_id_foreign` FOREIGN KEY (`invoice_item_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_tax_type_id_foreign` FOREIGN KEY (`tax_type_id`) REFERENCES `tax_types` (`id`);

--
-- Constraints for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD CONSTRAINT `tax_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
