user-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: 10.128.49.40
-- Czas wygenerowania: 13 Maj 2019, 21:21
-- Wersja serwera: 5.6.42-84.2
-- Wersja PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `db6001776_pamar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache`
--

CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dictionaries`
--

CREATE TABLE IF NOT EXISTS `dictionaries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `translate_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dictionaries_translate_id_foreign` (`translate_id`),
  KEY `dictionaries_page_id_foreign` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=123 ;

--
-- Zrzut danych tabeli `dictionaries`
--

INSERT INTO `dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `translate_id`, `page_id`, `key`, `value`, `description`) VALUES
(1, NULL, '2019-04-23 20:18:54', NULL, 2, 0, 'nav.home', 'Home', ''),
(2, NULL, NULL, NULL, 2, 0, 'nav.experience', 'Experience', ''),
(3, NULL, NULL, NULL, 2, 0, 'nav.references', 'References', ''),
(4, NULL, NULL, NULL, 2, 0, 'nav.about', 'About', ''),
(5, NULL, NULL, NULL, 2, 0, 'nav.contact', 'Contact', ''),
(6, NULL, NULL, NULL, 2, 0, 'nav.news', 'News', ''),
(7, NULL, NULL, NULL, 2, 0, 'nav.contact_us', 'Contact us', ''),
(8, NULL, NULL, NULL, 2, 0, 'nav.explore', 'Explore', ''),
(9, NULL, NULL, NULL, 2, 0, 'nav.certyficates', 'Certyficates', ''),
(10, NULL, NULL, NULL, 2, 0, 'nav.legal', 'Legal', ''),
(11, NULL, NULL, NULL, 2, 1, 'our_experiance', 'Our experiance', ''),
(12, NULL, '2019-04-28 11:33:14', NULL, 2, 1, 'years_of_experiance', 'Years of experiance', ''),
(13, NULL, '2019-05-13 17:01:59', NULL, 2, 1, 'years_of_experiance_value', '14', ''),
(14, NULL, NULL, NULL, 2, 1, 'qualified_workers', 'Qualified Workers', ''),
(15, NULL, '2019-05-13 17:02:10', NULL, 2, 1, 'qualified_workers_value', '75', ''),
(16, NULL, NULL, NULL, 2, 1, 'completed_contracts', 'Completed contracts ', ''),
(17, NULL, NULL, NULL, 2, 1, 'completed_contracts_value', '147', ''),
(18, NULL, NULL, NULL, 2, 1, 'whats_new', 'WHAT''S NEW', ''),
(19, NULL, NULL, NULL, 2, 0, 'header.contact_us', 'CONTACT US', ''),
(20, NULL, NULL, NULL, 2, 0, 'label.name', 'Name', ''),
(21, NULL, NULL, NULL, 2, 0, 'label.email', 'E-mail', ''),
(22, NULL, NULL, NULL, 2, 0, 'label.message', 'Message', ''),
(23, NULL, '2019-05-13 16:35:12', NULL, 2, 0, 'button.read_more', 'Read more', ''),
(24, NULL, NULL, NULL, 2, 1, 'slider.news', 'News', ''),
(25, NULL, NULL, NULL, 2, 1, 'slider.projects', 'Projects', ''),
(26, NULL, NULL, NULL, 2, 0, 'button.more_about_us', 'More about us', ''),
(27, NULL, NULL, NULL, 2, 1, 'what_we_do', 'What we do', ''),
(28, NULL, NULL, NULL, 2, 1, 'tile.slogan', 'Our company is one of the biggest in Poland providing fire protection services such as:', ''),
(29, NULL, NULL, NULL, 2, 1, 'experience.category_1', 'SMOKE EXHAUTS DUCTS ', ''),
(30, NULL, NULL, NULL, 2, 4, 'experience.category_1', 'SMOKE EXHAUTS DUCTS ', ''),
(31, NULL, NULL, NULL, 2, 1, 'experience.category_2', 'FIRE PROTECTION SYSTEMS', ''),
(32, NULL, NULL, NULL, 2, 4, 'experience.category_2', 'FIRE PROTECTION SYSTEMS', ''),
(33, NULL, NULL, NULL, 2, 1, 'experience.category_3', 'FIRE PROTECTION WALLS AND CEILINGS', ''),
(34, NULL, NULL, NULL, 2, 4, 'experience.category_3', 'FIRE PROTECTION WALLS AND CEILINGS', ''),
(35, NULL, NULL, NULL, 2, 1, 'experience.category_4', 'SECURING FIRE EXPANSION JOINTS ', ''),
(36, NULL, NULL, NULL, 2, 4, 'experience.category_4', 'SECURING FIRE EXPANSION JOINTS ', ''),
(37, NULL, NULL, NULL, 2, 1, 'experience.category_5', 'FIRE PROTECTION OF INSTALLATION', ''),
(38, NULL, NULL, NULL, 2, 4, 'experience.category_5', 'FIRE PROTECTION OF INSTALLATION', ''),
(39, NULL, NULL, NULL, 2, 1, 'our_clients', 'Our clients', ''),
(40, NULL, NULL, NULL, 2, 1, 'experience', 'Experience', ''),
(41, NULL, NULL, NULL, 2, 1, 'about_us_content', 'PAMAR SP. Z O.O. WAS ESTABLISHED IN 2007 DUE TO THE GROWING NEEDS ON THE FIRE PROTECTION MARKET IN POLAND.', ''),
(42, NULL, NULL, NULL, 2, 8, 'project_description', 'Project DESCRIPTION', ''),
(43, NULL, NULL, NULL, 2, 8, 'contract_details', 'CONTRACT DETAILS', ''),
(44, NULL, NULL, NULL, 2, 8, 'back', 'back', ''),
(45, NULL, NULL, NULL, 2, 2, 'our_team', 'Our Team', ''),
(46, NULL, NULL, NULL, 2, 0, 'label.send', 'Send', ''),
(47, NULL, NULL, NULL, 2, 2, 'left', 'Pamar Sp. z o.o. was established in 2007 due to the growing needs on the fire protection market in Poland. The company comprises of highly qualified personnel among whom are fire protection specialists, fire experts and other employees with certifications such as working at heights, operating cranes, building scaffoldings and many other. ', ''),
(48, NULL, NULL, NULL, 2, 2, 'right', 'We are an authorized installer of the biggest world trademarks and technologies such as Promat and Hilti and many other fire protection systems producers in the world.\r\n', ''),
(49, NULL, NULL, NULL, 2, 4, 'details_and_benefits', 'DETAILS AND BENEFITS', ''),
(50, NULL, '2019-04-23 20:18:54', NULL, 1, 0, 'nav.home', 'Strona główna', '-'),
(51, NULL, NULL, NULL, 1, 0, 'nav.experience', 'Doświadczenie', '-'),
(52, NULL, NULL, NULL, 1, 0, 'nav.references', 'Referencje', '-'),
(53, NULL, NULL, NULL, 1, 0, 'nav.about', 'O nas', '-'),
(54, NULL, NULL, NULL, 1, 0, 'nav.contact', 'Kontakt', '-'),
(55, NULL, NULL, NULL, 1, 0, 'nav.news', 'News', '-'),
(56, NULL, NULL, NULL, 1, 0, 'nav.contact_us', 'Kontakt', '-'),
(57, NULL, NULL, NULL, 1, 0, 'nav.explore', 'Mapa strony', '-'),
(58, NULL, NULL, NULL, 1, 0, 'nav.certyficates', 'Certyfikaty', '-'),
(59, NULL, NULL, NULL, 1, 0, 'nav.legal', 'Noty prawne', '-'),
(60, NULL, NULL, NULL, 1, 1, 'our_experiance', 'Projekty', '-'),
(61, NULL, '2019-04-28 11:33:14', NULL, 1, 1, 'years_of_experiance', 'Lata doświadczenia', '-'),
(62, NULL, '2019-05-13 17:01:59', NULL, 1, 1, 'years_of_experiance_value', '42', '-'),
(65, NULL, NULL, NULL, 1, 1, 'qualified_workers', 'Wykwalifikowanych pracowników', ''),
(66, NULL, '2019-05-13 17:02:10', NULL, 1, 1, 'qualified_workers_value', '20', ''),
(67, NULL, NULL, NULL, 1, 1, 'completed_contracts', 'Zrealizowanych kontraktów', ''),
(68, NULL, NULL, NULL, 1, 1, 'completed_contracts_value', '147', ''),
(69, NULL, NULL, NULL, 1, 1, 'whats_new', 'Co nowego?', ''),
(70, NULL, NULL, NULL, 1, 0, 'header.contact_us', 'Kontakt', ''),
(71, NULL, NULL, NULL, 1, 0, 'label.name', 'Imię', ''),
(72, NULL, NULL, NULL, 1, 0, 'label.email', 'E-mail', ''),
(73, NULL, NULL, NULL, 1, 0, 'label.message', 'Wiadomość', ''),
(74, NULL, '2019-05-13 16:35:12', NULL, 1, 0, 'button.read_more', 'Więcej...', ''),
(75, NULL, NULL, NULL, 1, 1, 'slider.news', 'News', ''),
(76, NULL, NULL, NULL, 1, 1, 'slider.projects', 'Projekty', ''),
(77, NULL, NULL, NULL, 1, 0, 'button.more_about_us', 'Więcej o nas', ''),
(78, NULL, NULL, NULL, 1, 1, 'what_we_do', 'Co robimy?', ''),
(79, NULL, NULL, NULL, 1, 1, 'tile.slogan', 'Jesteśmy jedną z największych firm w Polsce świadczących usługi z zakresu biernej ochrony przeciwpożarowej. Wykonujemy m.in.:', ''),
(80, NULL, NULL, NULL, 1, 1, 'experience.category_1', 'Wentylacja i oddymianie', ''),
(81, NULL, NULL, NULL, 1, 4, 'experience.category_1', 'Wentylacja i oddymianie', ''),
(82, NULL, NULL, NULL, 1, 1, 'experience.category_2', 'Konstrukcje stalowe', ''),
(83, NULL, NULL, NULL, 1, 4, 'experience.category_2', 'Konstrukcje stalowe', ''),
(84, NULL, NULL, NULL, 1, 1, 'experience.category_3', 'Zabezpieczenia przeciwpożarowe ścian i sufitów', ''),
(85, NULL, NULL, NULL, 1, 4, 'experience.category_3', 'Zabezpieczenia przeciwpożarowe ścian i sufitów', ''),
(86, NULL, NULL, NULL, 1, 1, 'experience.category_4', 'Zabezpieczenia dylatacji przeciwpożarowych', ''),
(87, NULL, NULL, NULL, 1, 4, 'experience.category_4', 'Zabezpieczenia dylatacji przeciwpożarowych', ''),
(88, NULL, NULL, NULL, 1, 1, 'experience.category_5', 'Zabezpieczenia przejść instalacyjnych', ''),
(89, NULL, NULL, NULL, 1, 4, 'experience.category_5', 'Zabezpieczenia przejść instalacyjnych', ''),
(90, NULL, NULL, NULL, 1, 1, 'our_clients', 'Pracowaliśmy dla', ''),
(91, NULL, NULL, NULL, 1, 1, 'experience', 'Doświadczenie', ''),
(92, NULL, NULL, NULL, 1, 1, 'about_us_content', 'Firma PAMAR powstała w 2007 roku w odpowiedzi na rosnące potrzeby rynku ochrony przeciwpożarowej w Polsce.', ''),
(93, NULL, NULL, NULL, 1, 8, 'project_description', 'Opis projektu', ''),
(94, NULL, NULL, NULL, 1, 8, 'contract_details', 'Szczegóły kontraktu', ''),
(95, NULL, NULL, NULL, 1, 8, 'back', 'powrót', ''),
(96, NULL, NULL, NULL, 1, 2, 'our_team', 'Nasz Zespół', ''),
(97, NULL, NULL, NULL, 1, 0, 'label.send', 'Wyślij', ''),
(98, NULL, NULL, NULL, 1, 4, 'details_and_benefits', 'Szczegóły i korzyści', ''),
(99, NULL, NULL, NULL, 1, 2, 'left', 'Firma PAMAR powstała w 2007 roku w odpowiedzi na rosnące potrzeby rynku ochrony przeciwpożarowej. W skład firmy wchodzi wysoce wykwalifikowany personel posiadający uprawnienia specjalisty ochrony przeciwpożarowej, rzeczoznawcy do spraw zabezpieczeń przeciwpożarowych oraz szereg osób z uprawnieniami wysokościowymi, UDT, SEP oraz wydanymi przez producentów materiałów zabezpieczeń przeciwpożarowych.', ''),
(100, NULL, NULL, NULL, 1, 2, 'right', 'Ponadto, posiadamy uprawnienia wiodących firmy takich jak: PROMAT TOP, HILTI, ROCKWOOL FIRE PRO,NICZUK, VALRAWEN i wiele innych.\r\n', ''),
(101, NULL, NULL, NULL, 2, 0, 'nav.private_policy', 'Private policy', ''),
(102, NULL, NULL, NULL, 1, 0, 'nav.private_policy', 'Polityka prywatności', ''),
(103, NULL, NULL, NULL, 2, 0, 'misc.cookies', 'We use cookies to enhance your experience. By continuing to visit this site you agree to our use of cookies', ''),
(104, NULL, NULL, NULL, 1, 0, 'misc.cookies', 'Nasza strona używa ciasteczek aby świadczyć najwyższą jakoś usług. Korzystając ze strony zgadzasz się na ich wykorzystanie.', ''),
(105, NULL, NULL, NULL, 1, 0, 'misc.cookies-okay', 'Rozumiem!', ''),
(106, NULL, NULL, NULL, 2, 0, 'misc.cookies-okay', 'Got it!', ''),
(107, NULL, NULL, NULL, 1, 0, 'misc.mail_send', 'Twoja wiadomość została wysłana. Postaramy się odpowiedzieć jak najszybciej!', ''),
(108, NULL, NULL, NULL, 2, 0, 'misc.mail_send', 'Your message was sent successfully. We will contact You soon!', ''),
(109, NULL, NULL, NULL, 1, 0, 'contact.support', 'Dział Techniczny i Wsparcie Projektu', ''),
(110, NULL, NULL, NULL, 2, 0, 'contact.support', 'Technical Department and Project Support', ''),
(111, NULL, NULL, NULL, 1, 0, 'contact.technical', 'Dyrektor Techniczny', ''),
(112, NULL, NULL, NULL, 2, 1, 'contact.technical', 'Technical Director', ''),
(113, NULL, NULL, NULL, 1, 0, 'contact.desk', 'Dyrektor Administracyjno Biurowy', ''),
(114, NULL, NULL, NULL, 2, 0, 'contact.desk', 'Office Director', ''),
(115, NULL, NULL, NULL, 1, 0, 'contact.accountant', 'Księgowość', ''),
(116, NULL, NULL, NULL, 2, 0, 'contact.accountant', 'Accountancy', ''),
(117, NULL, NULL, NULL, 1, 0, 'seo.title', 'Pamar Pszczyna', ''),
(118, NULL, NULL, NULL, 2, 0, 'seo.title', 'Pamar Pszczyna', ''),
(119, NULL, NULL, NULL, 1, 0, 'seo.description', 'Pamar Pszczyna', ''),
(120, NULL, NULL, NULL, 2, 0, 'seo.description', 'Pamar Pszczyna', ''),
(121, NULL, NULL, NULL, 1, 0, 'seo.keywords', 'Pamar', ''),
(122, NULL, NULL, NULL, 2, 0, 'seo.keywords', 'Pamar', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experiances`
--

CREATE TABLE IF NOT EXISTS `experiances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_uniq` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `has_gallery` tinyint(4) NOT NULL DEFAULT '0',
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `translate_id` int(11) unsigned NOT NULL,
  `experiance_group_id` int(11) unsigned NOT NULL,
  `category` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL,
  `n_order` smallint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `experiances_file_id_foreign` (`file_id`),
  KEY `experiances_gallery_id_foreign` (`gallery_id`),
  KEY `experiance_translate_id_fk` (`translate_id`),
  KEY `experiances__groups_id_fk` (`experiance_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- Zrzut danych tabeli `experiances`
--

INSERT INTO `experiances` (`id`, `parent_uniq`, `created_at`, `updated_at`, `file_id`, `name`, `description`, `has_gallery`, `gallery_id`, `translate_id`, `experiance_group_id`, `category`, `n_order`) VALUES
(1, '1', NULL, '2019-04-26 18:28:35', 118, '', '<p>We make self-supporting smoke exhaust ducts and ventilation in <strong>Promat technology</strong> (Promaduct L-500 EIS 60, EIS 120) in metro stations, stadiums, shopping malls and other large surface buildings.</p>\r\n', 0, NULL, 2, 2, '1', 1),
(2, '2', NULL, '2019-04-26 18:26:56', 117, '', '<p>Fire protection of steel ventilation and air conditioning ducts - Conlit PLUS EIS 60, EIS 120 system.</p>\r\n', 0, NULL, 2, 2, '1', 2),
(3, '3', NULL, '2019-04-26 18:32:54', 119, '', '<p>Fire protection of steel structures up to R 30, R 60 and R 120.</p>\r\n\r\n<p>The protection of steel structures can be divided into three types:</p>\r\n', 0, NULL, 2, 2, '2', 3),
(4, '4', NULL, '2019-04-26 18:42:48', 120, '', '<p>Fire protection of wooden structures up to REI 30, REI 60, REI 120.</p>\r\n\r\n<p>Wooden constructions can be protected by painting for flammability in some cases to NRO (fire-retardant). Securing wooden supporting structure for R 15, R 30, R 60, R 120 and ceilings on wooden beams up to REI 30, REI 60 and REI 120 is possible with Promat Top, Promaxon Type A or Promatect</p>\r\n', 0, NULL, 2, 2, '2', 4),
(5, '5', NULL, '2019-04-26 17:24:53', 116, '', '<p>Execution of holes and inspection hatches and their protection for fire resistance EI 60, EI 120.</p>\r\n', 0, NULL, 2, 2, '2', 5),
(6, '6', NULL, '2019-04-26 17:27:34', 116, '', '<p>Fire protection of reinforced concrete elements for fire resistance REI 30, REI 60, REI 120, REI 240.</p>\r\n\r\n<p>We provide fire protection of elements and reinforced concrete structure in the technology of Fire Pro Conlit 150 and Promatect-H. The thickness of the cladding from fire protection panels depends on the existing thickness of the concrete cover (or lack thereof).</p>\r\n', 0, NULL, 2, 2, '2', 6),
(7, '7', NULL, '2019-04-26 17:16:23', 115, '', '<p>Execution of light partition walls and casing of installation shafts for EI 30, EI 60, EI 120 can also be obtained with class R.</p>\r\n', 0, NULL, 2, 2, '3', 7),
(8, '8', NULL, '2019-04-26 17:13:15', 114, '', '<p>Fire-resistant glass EI 15, EI 30, EI 60, EI 120</p>\r\n\r\n<p>We also make fireproof glazing from Promaglas systems which is a complex, multi-layer special fireproof glass. Layers of gel between the glass panes producing at high temperature.</p>\r\n', 0, NULL, 2, 2, '3', 8),
(9, '9', NULL, '2019-04-26 16:59:44', 113, '', '<p>Protection of roofs and ceilings made of trapezoidal sheet to EI 30, EI 60, EI 120 can also be obtained in class R.</p>\r\n\r\n<p>The protection technology is based on <strong>Promatect-H boards, Promaxon type A from Promat Top.</strong></p>\r\n', 0, NULL, 2, 2, '3', 9),
(10, '10', NULL, '2019-04-26 16:49:58', 112, '', '<p>Fire protection of joints and dilatation for fire resistance EI 60, EI 120, EI 240.</p>\r\n\r\n<p>We are able to protect each dilatation in accordance with the fire protection conditions of the facility. We use many leading manufacturers such as Hilti, Promat Top, Rockwool. We have a wide offer for dilation protection.</p>\r\n', 0, NULL, 2, 2, '4', 10),
(11, '11', NULL, '2019-04-27 08:27:07', 121, '', '<p>Fire protection for the passage of installation pipes, cable penetrations and combined passes to EI 60, EI 120, EI 240</p>\r\n\r\n<p>Our company, when securing all kinds of installation passes, uses many leading companies producing fire protection protections such as: PROMAT TOP, ROCKWOOL, HILTI, NICZUK, WALRAVEN. These protections are made in various fire resistance classes depending on the fire resistance class of the building. We have a wide offer for protection of installation transitions. The implementation of fire transitions is characterized by several fundamental issues:</p>\r\n', 0, NULL, 2, 2, '5', 11),
(12, '12', NULL, '2019-04-27 08:35:03', 122, '', '<p>Fire protection of electric cables and wires;</p>\r\n', 0, NULL, 2, 2, '5', 12),
(13, '13', NULL, '2019-04-27 08:47:37', 123, '', '<p>Fire spraying systems from REI 30 to REI 240</p>\r\n', 0, NULL, 2, 2, '5', 13),
(14, '1', NULL, '2019-04-26 18:28:35', 118, 'Obudowa stalowego kanału wentylacyjnego', '<p>Przy zabezpieczaniu zamontowanych już kanał&oacute;w z blachy stalowej należy sprawdzić nośność istniejących zawieszeń, w razie potrzeby należy je zdemontować i zastosować odpowiednie konstrukcje nośne 4 i&nbsp; 5 . Aprobata obejmuje zabezpieczenie ogniochronne poziomych przewod&oacute;w stalowych o wymiarach nie większych niż 1200 mm x 950 mm. Obudowa nie może przekraczać wymiar&oacute;w 1250mm x 1000 mm w układzie czterościennym.</p>\r\n\r\n<p><img alt="" src="http://pamarpszczyna.pl/workspace/backend/public/userFiles/promaduct_500_table.png" style="height:100px; width:513px" /></p>\r\n\r\n<p>Przewody wentylacyjne i klimatyzacyjne są przeznaczone do stosowania w instalacjach nawiewnych/wywiewnych o ciśnieniu roboczym od -500 Pa do +500 Pa.</p>\r\n', 0, NULL, 1, 19, '1', 14),
(15, '2', NULL, '2019-04-26 18:26:56', 117, 'Przewody samonośne', '<p><strong>Odporność ogniowa EIS60, EIS120</strong></p>\r\n\r\n<p>Ponieważ długość przewod&oacute;w PROMADUCT&reg;-500 w&nbsp;przypadku pożaru ulega tylko nieznacznym zmianom, nie jest konieczne stosowanie kompensator&oacute;w. Aprobata techniczna obejmuje przewody samonośne o wymiarach wewn. nie większych niż szer. 2300&nbsp;mm, wysokość 1000 mm i przekr&oacute;j nie większy niż 1,955m2 .</p>\r\n\r\n<p>Przewody wentylacyjne i&nbsp;klimatyzacyjne są przeznaczone do stosowania w&nbsp;instalacjach nawiewnych/wywiewnych o&nbsp;ciśnieniu roboczym od -500 Pa do +500 Pa. Wielostrefowe przewody oddymiające PROMADUCT&reg;-500 są przeznaczone do zastosowania w&nbsp;instalacjach o&nbsp;ciśnieniu roboczym od -1500 Pa do +500 Pa.</p>\r\n', 0, NULL, 1, 19, '1', 15),
(16, '3', NULL, '2019-04-26 18:32:54', 119, 'Zabezpieczenie szachtów', '<p><strong>Odporność ogniowa&nbsp; EIS120</strong></p>\r\n\r\n<p>Z&nbsp;zestawu wyrob&oacute;w systemu PROMADUCT&reg; wykonywane są zabezpieczenia istniejących szacht&oacute;w posiadających klasę odporności ogniowej EI120 do parametru S - dymoszczelności: szacht&oacute;w murowanych, szacht&oacute;w murowanych izolowanych termicznie wełną mineralną, szacht&oacute;w żelbetowych, szacht&oacute;w żelbetowych izolowanych termicznie wełną mineralną, szacht&oacute;w &bdquo;mieszanych&rdquo;: murowane/żelbetowe oraz z&nbsp;izolacją/ bez izolacji.</p>\r\n', 0, NULL, 1, 19, '1', 16),
(17, '4', NULL, '2019-04-26 18:42:48', 120, 'Jednostrefowe przewody oddymiające w układzie czterościennym', '<p><strong>Odporność ogniowa&nbsp;EIS120</strong></p>\r\n\r\n<p>Przewody wentylacji oddymiającej obsługujące wyłącznie jedną strefę pożarową powinny mieć klasę odporności ogniowej z uwagi na szczelność ogniową i dymoszczelność E600S, co najmniej taką jak klasa odporności stropu. Wartość 600 oznacza temperaturę dymu powstałego podczas pożaru. Jednostrefowe przewody oddymiające PROMADUCT&reg;-E600S zostały sklasyfikowane w klasie odporności ogniowej: E600120(h0 )S1500 single, gdzie: h0 &ndash; położenie horyzontalne, 1500 &ndash; podciśnienie robocze 1500 Pa, single &ndash; przeznaczone do obsługi pojedynczej strefy pożarowej.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, NULL, 1, 21, '1', 17),
(18, '5', NULL, '2019-04-26 17:24:53', 116, 'Zabezpieczenie konstrukcji stalowej natryskiem ogniochronnym PROMASPRAY® P300', '<p><strong>Odporność ogniowa&nbsp; R 15 &divide; R240</strong></p>\r\n\r\n<p>PROMASPRAY&reg; P300 jest lekkim natryskiem, kt&oacute;ry przy niewielkich grubościach pozwala na ogniochronne zabezpieczenia konstrukcji stalowych do klasy odporności ogniowej R240. Zaprawa PROMASPRAY&reg; P300 może być nakładana za pomocą agregat&oacute;w tynkarskich. W&nbsp;zależności od potrzeb estetycznych powierzchnia zaprawy może być wygładzona lub pozostawiona w&nbsp;postaci chropowatej, tzw. baranka.</p>\r\n\r\n<p>W celu poprawy przyczepności natrysku do podłoża należy je zagruntować środkiem zwiększającym przyczepność Cafco&reg; STRONGBOND /BONDSEAL.</p>\r\n', 0, NULL, 1, 7, '2', 18),
(19, '6', NULL, '2019-04-26 17:27:34', 116, 'Zabezpieczenie konstr. stalowej natryskiem ogniochronnym PROMASPRAY® C450', '<p><strong>Odporność ogniowa R 15 &divide; R240</strong></p>\r\n\r\n<p>Zaprawa PROMASPRAY&reg; C450 może być nakładana za pomocą agregat&oacute;w tynkarskich. W&nbsp;zależności od potrzeb estetycznych powierzchnia zaprawy może być wygładzona lub pozostawiona w&nbsp;postaci chropowatej, tzw. baranka.</p>\r\n\r\n<p>W celu poprawy przyczepności natrysku do konstrukcji stalowej należy przygotować specjalną emulsję, wykorzystującą środek Cafco&reg; SBR Bonding Latex&reg;.</p>\r\n', 0, NULL, 1, 7, '2', 19),
(20, '7', NULL, '2019-04-26 17:16:23', 115, 'Zabezpieczenie słupów stalowych obudowa skrzynkowa', '<p><strong>Odporność ogniowa R 15 &divide; R240</strong></p>\r\n\r\n<p>Okładzina ogniochronna słupa stalowego wynika z&nbsp;wymaganej klasy odporności ogniowej elementu oraz wielkości wskaźnika masywności U/A.</p>\r\n\r\n<p>Minimalne grubości płyt <strong>PROMATECT&reg;-H</strong>, <strong>PROMATECT&reg;-L</strong> lub <strong>PROMATECT&reg;-XS</strong> przedstawiają tabele na następnych stronach. Ze względ&oacute;w technicznej ochrony przeciwpożarowej szpachlowanie złączy i&nbsp;krawędzi płyt nie jest wymagane.</p>\r\n\r\n<p>Wysoka stabilność płyt PROMATECT&reg; umożliwia krawędziowe łączenie przy pomocy zszywek. Konstrukcja pomocnicza i&nbsp;mocowanie do profilu nie jest wymagane.</p>\r\n', 0, NULL, 1, 9, '2', 20),
(21, '8', NULL, '2019-04-26 17:13:15', 114, 'Zabezpieczenie belek stalowych ', '<p><strong>Odporność ogniowa R 15 &divide; R240</strong></p>\r\n\r\n<p>Przed przycięciem płyt na wymiar należy ustalić tolerancję wynikającą z&nbsp;wykonania profilu 1 i&nbsp;tolerancję wykonawczą. Pasma <strong>PROMATECT&reg;-H</strong>, <strong>PROMATECT&reg;-L</strong> lub <strong>PROMATECT&reg;-XS</strong> &nbsp;tak dopasować, by krawędź zewnętrzna wystawała ok. 5 mm przed stopkę profilu. Płyt PROMATECT&reg;&nbsp;nie należy ciąć z&nbsp;długości, gdyż rozstaw styk&oacute;w &nbsp;nie może przekroczyć szerokości płyt 1250&nbsp;(1200)&nbsp;mm.</p>\r\n\r\n<p>Przy wykonywaniu zabezpieczeń belek, pierwsza warstwa obudowy mocowana jest do konstrukcji pomocniczej, kt&oacute;rą stanowią pasma z płyt PROMATECT&reg; o grubości min. 20 mm i szerokości min. 120 mm. Pasma pionowe montowane są na mocowanie klinowe między p&oacute;łką g&oacute;rną i dolną profilu, w rozstawie nie większym niż 1200 mm lub na każdym połączeniu płyt.</p>\r\n\r\n<p>Przy dźwigarach o&nbsp;wysokości większej niż 600 mm zalecamy usztywnić podkładkę pionową 3 poprzez przymocowanie do niej wkładki stabilizującej 7 o&nbsp;szerokości nie mniejszej niż 100&nbsp;mm. Całość należy ciasno dopasować do profilu.&nbsp;</p>\r\n\r\n<p>Belki mogą być obudowane w&nbsp;zależności od warunk&oacute;w czterostronnie lub tr&oacute;jstronnie.&nbsp; Czasami belki stalowe są częściowo zabetonowane i&nbsp;wtedy zabezpiecza się tylko część profilu narażoną na działanie ognia.&nbsp;</p>\r\n', 0, NULL, 1, 9, '2', 21),
(22, '9', NULL, '2019-04-26 16:59:44', 113, 'Farba PROMAPAINT® SC3', '<p><strong>Odporność ogniowa&nbsp;R 15 &divide; R180</strong></p>\r\n\r\n<p>Farba PROMAPAINT&reg; SC3 jest wodorozcieńczalną farbą przeznaczoną do wykonywania zabezpieczeń ogniochronnych konstrukcji stalowych o profilach otwartych w klasach odporności ogniowych R120 i R180.</p>\r\n', 0, NULL, 1, 11, '2', 22),
(23, '10', NULL, '2019-04-26 16:49:58', 112, 'Farba PROMAPAINT® SC4', '<p><strong>Odporność ogniowa&nbsp; R 15 &divide; R120</strong></p>\r\n\r\n<p>Zabezpieczenie konstrukcji stalowej powinno składać się z: warstwy podkładowej &ndash; dowolne farby dwuskładnikowe epoksydowe,&nbsp; powłoki pęczniejącej &ndash; farba PROMAPAINT&reg; SC4, warstwy nawierzchniowej &ndash; farby CARBOTHANE 134 PU, PURMAL S30 MIX, CHEMUKRYL, BARPIDOL S/AIRE.</p>\r\n', 0, NULL, 1, 11, '2', 23),
(24, '11', NULL, '2019-04-27 08:27:07', 121, 'Ściana działowa z PROMATECT®-L500', '<p><strong>Odporność ogniowa&nbsp; (R)EI60 &divide; (R)EI240</strong></p>\r\n\r\n<p>Ściany z płyt PROMATECT&reg;-L500 mogą pełnić funkcję oddzielenia przeciwpożarowego o klasie odporności odpowiednio REI60, REI120 i REI240 przy spełnieniu następujących warunk&oacute;w: są mocowane lub spoczywają na konstrukcji o klasie odporności ogniowej nie niższej niż klasa odporności ogniowej ściany z płyt PROMATECT&reg;-L500 (z uwagi na kryteria EI).</p>\r\n\r\n<p>Przedstawione rozwiązanie jest przeznaczone do wykonywania ogniochronnych przegr&oacute;d. Graniczące elementy budowlane muszą posiadać nie mniejszą klasę odporności ogniowej niż zastosowane zabezpieczenie.</p>\r\n\r\n<p>Ściany z płyt PROMATECT&reg;-L500 mogą pełnić funkcję oddzielenia przeciwpożarowego o klasie odporności odpowiednio REI60, REI120 i REI240 przy spełnieniu następujących warunk&oacute;w:&nbsp; są mocowane lub spoczywają na konstrukcji o klasie odporności ogniowej nie niższej niż klasa odporności ogniowej ściany z płyt PROMATECT&reg;-L500 (z uwagi na kryteria EI),&nbsp; nie mogą być poddane obciążeniom mechanicznym pochodzącym od konstrukcji budynku,&nbsp; są zamocowane do element&oacute;w budynku zgodnie z wymogami zawartymi w Aprobacie Technicznej. Przegroda powinna być wykonana zgodnie z dokumentacją techniczną opracowaną dla danego zastosowania, uwzględniającą wymagania przepis&oacute;w techniczno-budowlanych.</p>\r\n', 0, NULL, 1, 15, '3', 24),
(25, '12', NULL, '2019-04-27 08:35:03', 122, 'Ściana z PROMAXON® Typ A na C-profilach', '<p><strong>Odporność ogniowa&nbsp;(R)EI90, (R)EI120</strong></p>\r\n\r\n<p>Ściana z płyt PROMAXON Typ A na ruszcie z kształtownik&oacute;w stalowych zimnogiętych z wypełnieniem ze skalnej wełny mineralnej może być wykonana w dw&oacute;ch wariantach:</p>\r\n\r\n<p>&bull; o odporności ogniowej EI90,</p>\r\n\r\n<p>&bull; o odporności ogniowej EI120.</p>\r\n\r\n<p>Ściany z płyt PROMAXON&reg; Typ A mogą pełnić funkcję oddzielenia przeciwpożarowego o klasie odporności odpowiednio REI90 i REI120 przy spełnieniu następujących warunk&oacute;w:</p>\r\n\r\n<p>&bull; są mocowane lub spoczywają na konstrukcji o klasie odporności ogniowej nie niższej niż klasa odporności ogniowej ściany z płyt- PROMAXON&reg; Typ A (z uwagi na kryteria EI);</p>\r\n\r\n<p>&bull; nie mogą być poddane obciążeniom mechanicznym pochodzącym od konstrukcji budynku;</p>\r\n\r\n<p>&bull; są zamocowane do element&oacute;w budynku zgodnie z wymogami producenta i rozwiązaniami zawartymi w projekcie budowlanym.</p>\r\n', 0, NULL, 1, 1, '3', 25),
(26, '13', NULL, '2019-04-27 08:47:37', 123, 'Dylatacje w elementach budowlanych masa PROMASEAL®-A ', '<p><strong>Odporność ogniowa EI60 &divide; EI120</strong></p>\r\n\r\n<p>W budownictwie monolitycznym, ze względ&oacute;w konstrukcyjnych muszą być stosowane szczeliny dylatacyjne. Aby uniemożliwić rozprzestrzenienie się pożaru na inne strefy pożarowe, szczeliny te należy odpowiednio zabezpieczyć. Masy ogniochronne PROMASEAL&reg;-A 1 &nbsp;należy aplikować w temperaturze co najmniej +5&deg;C. Zabezpieczenie szczelin i dylatacji masami ogniochronnymi PROMASEAL&reg;-A 1 , wykonane zgodnie z rysunkami, uzyskują klasę odporności ogniowej EI120. Masa ogniochronna PROMASEAL&reg;-A 1 jest wyrobem uszczelniającym wykonanym na bazie akryli, o wszechstronnym zastosowaniu w techniczno-budowlanej ochronie przeciwpożarowej. Minimalne grubości przegr&oacute;d, w kt&oacute;rych można zabezpieczać dylatacje to:</p>\r\n\r\n<p>&bull; 100 mm &ndash; ściany masywne lub lekkie;</p>\r\n\r\n<p>&bull; 150 mm &ndash; stropy.</p>\r\n', 0, NULL, 1, 23, '4', 26),
(27, '5cbf44c2ef711', NULL, '2019-04-27 08:51:04', 124, 'Dylatacje w elementach budowlanych masa PROMASEAL®-A spray ', '<p><strong>Odporność ogniowa EI120</strong></p>\r\n\r\n<p>Dylatacje stosuje się do oddzielenia poszczeg&oacute;lnych element&oacute;w budowli. Aby uniemożliwić rozprzestrzenianie się ognia i dymu na inne strefy pożarowe, należy szczeliny te odpowiednio zabezpieczać. Do zabezpieczenia tego typu można zastosować masę PROMASEAL&reg;-A spray 1 , dzięki kt&oacute;rej można uzyskać klasę odporności ogniowej EI120. Minimalne grubości przegr&oacute;d, w kt&oacute;rych można zabezpieczać dylatacje to:</p>\r\n\r\n<p>&bull; 100 mm &ndash; ściany murowane, żelbetowe, betonowe;</p>\r\n\r\n<p>&bull; 150 mm &ndash; stropy.</p>\r\n', 0, NULL, 1, 1, '4', 100),
(28, '5cbf44c2ef711', NULL, '2019-04-27 08:51:04', 124, '', '', 0, NULL, 2, 2, '1', 100),
(29, '5cbf44f9642e7', NULL, '2019-04-27 09:08:58', 125, 'Dylatacje w elementach budowlanych masa PROMASTOP®-E (Coating)', '<p><strong>Odporność ogniowa EI120</strong></p>\r\n\r\n<p>W niekt&oacute;rych obiektach ze względ&oacute;w technologicznych pozostawiane są szczeliny dylatacyjne pomiędzy ścianami a stropami lub stropodachami. Szczeg&oacute;lnie często się to zdarza w przypadku dużych hal stalowych, w kt&oacute;rych po wzniesieniu ścian pozostaje przestrzeń pomiędzy murowanymi ścianami a stropodachami z blachy trapezowej. Aby uniemożliwić rozprzestrzenianie się pożaru na inne strefy pożarowe, szczeliny te należy odpowiednio zabezpieczyć. Do zabezpieczenia tego typu dylatacji firma Promat TOP proponuje użycie masy ogniochronnej PROMASTOP&reg;-E (Coating). Masa ogniochronna PROMASTOP&reg;-E (Coating)&nbsp;jest substancją nieorganiczną, kt&oacute;ra w przypadku pożaru reaguje endotermicznie. Minimalne grubości przegr&oacute;d, w kt&oacute;rych można zabezpieczać dylatacje to:</p>\r\n\r\n<p>&bull; 150 mm &ndash; ściany wykonane z&nbsp;cegły, betonu lub betonu kom&oacute;rkowego,</p>\r\n\r\n<p>&bull; 180 mm - stropy.</p>\r\n', 0, NULL, 1, 1, '4', 100),
(30, '5cbf44f9642e7', NULL, '2019-04-27 09:08:59', 125, '', '', 0, NULL, 2, 2, '1', 100),
(31, '5cbf4515c757c', NULL, '2019-04-27 09:12:28', 126, 'Dylatacje w elementach budowlanych pianka PROMAFOAM®-C oraz masa PROMASTOP®-CC', '<p>Alternatywnym rozwiązaniem do zabezpieczenia szczelin dylatacyjnych jest pianka PROMAFOAM&reg;-C. Dla złączy liniowych o niewielkiej szerokości wystarczy wypełnienie dylatacji samą pianka, w przypadku szerszych szczelin, konieczne jest zastosowanie dodatkowo masy ogniochronnej PROMASTOP&reg;-CC.</p>\r\n\r\n<p>Minimalne grubości przegr&oacute;d, w&nbsp;kt&oacute;rych można zabezpieczyć dylatacje zostały przedstawione w&nbsp;tabeli poniżej:</p>\r\n\r\n<p><img alt="" src="http://pamarpszczyna.pl/workspace/backend/public/userFiles/promafoam_c_table.png" style="height:132px; width:500px" /></p>\r\n', 0, NULL, 1, 1, '4', 100),
(32, '5cbf4515c757c', NULL, '2019-04-27 09:12:28', 126, '', '', 0, NULL, 2, 2, '1', 100),
(33, '5cbf4667a584e', NULL, '2019-04-28 12:04:39', 127, 'Przejścia rur instalacyjnych', '<p>Dzięki zastosowaniu kołnierzy ogniochronnych PROMASTOP&reg;-UniCollar oraz PROMASTOP&reg;-FC, a także opaski ogniochronnej PROMASTOP&reg;-W, uszczelnia się przejścia rur z&nbsp;tworzyw sztucznych przez stropy i&nbsp;ściany, uniemożliwiając rozprzestrzenianie się ognia i&nbsp;dymu na inne strefy pożarowe. Dodatkowo kołnierze PROMASTOP&reg;-UniCollar stosuje się do uszczelniania przejść rur stalowych w&nbsp;dodatkowej izolacji z&nbsp;syntetycznego kauczuku. Kołnierze i&nbsp;opaski PROMASTOP&reg; zapewniają uszczelnionym przepustom rurowym klasę odporności ogniowej EI120. Do zabezpieczenia ogniochronnego rur metalowych Promat proponuje zastosowanie masy ogniochronnej PROMASTOP&reg;-E (Coating) zar&oacute;wno w&nbsp;uszczelnianiu przejść pojedynczych rur jak i&nbsp;w&nbsp;przejściach kombinowanych.</p>\r\n', 1, 13, 1, 25, '5', 100),
(34, '5cbf4667a584e', NULL, '2019-04-28 12:04:39', 127, '', '', 0, NULL, 2, 2, '1', 100),
(35, '5cbf46a1ad8ea', NULL, '2019-04-28 12:02:23', 139, ' Ochrona przeciwpożarowa kabli i przewodów elektrycznych ', '<p>Uszczelnienie przepust&oacute;w kablowych wykonuje się przy zastosowaniu zapraw ogniochronnych PROMASTOP&reg; lub masy ogniochronnej PROMASTOP&reg;-E (Coating) oraz wełny mineralnej. Przepusty kablowe PROMASTOP&reg; uszczelniają przejścia kabli elektrycznych przez przegrody, zachowując ich klasę odporności ogniowej. Rozr&oacute;żniamy następujące rodzaje przepust&oacute;w kablowych PROMASTOP&reg;:</p>\r\n\r\n<p>&bull; przepusty kablowe z&nbsp;wełny mineralnej, w&nbsp;połączeniu z&nbsp;bezrozpuszczalnikową, endotermiczną powłoką PROMASTOP&reg;-E (Coating) lub PROMASTOP&reg;-CC,</p>\r\n\r\n<p>&bull; przepusty kablowe z&nbsp;zaprawy ogniochronnej PROMASTOP&reg;-M. Przejścia pojedynczych przewod&oacute;w mogą być r&oacute;wnież w&nbsp;prosty i&nbsp;skuteczny spos&oacute;b zabezpieczone przez uszczelnienie&nbsp;masą ogniochronną PROMASEAL&reg;-A lub -AG.</p>\r\n', 0, NULL, 1, 1, '5', 100),
(36, '5cbf46a1ad8ea', NULL, '2019-04-28 12:02:23', 139, '', '', 0, NULL, 2, 2, '1', 100),
(37, '5cbf46cc7b165', NULL, '2019-04-28 12:52:43', 140, 'Przejścia kombinowane', '<p>Uszczelnienia przejść, przez kt&oacute;re przeprowadzane są jednocześnie rury instalacyjne wszelkiego rodzaju oraz kable elektryczne.</p>\r\n\r\n<p>Przejścia kombinowane, przez kt&oacute;re przechodzą wiązki kabli, kable w&nbsp;peszlach oraz rury z&nbsp;tworzywa sztucznego można zabezpieczyć masą PROMASEAL&reg;-AG &nbsp;w&nbsp;uszczelnieniu przejścia instalacyjnego PROMASTOP&reg;-I &nbsp;. Minimalne grubości przegr&oacute;d, w&nbsp;kt&oacute;rych można zabezpieczać przejścia masą PROMASEAL&reg;-AG w&nbsp;połączeniu z&nbsp;PROMASTOP&reg;-I&nbsp;&nbsp;to:</p>\r\n\r\n<p>&bull; 100 mm &ndash; ściany lekkie lub masywne;</p>\r\n\r\n<p>&bull; 150 mm &ndash; stropy masywne.</p>\r\n', 0, NULL, 1, 1, '5', 100),
(38, '5cbf46cc7b165', NULL, '2019-04-28 12:52:43', 140, '', '', 0, NULL, 2, 2, '1', 100),
(39, '5cc5c34271eb1', NULL, '2019-04-28 13:15:01', 144, 'Stropy drewniane', '<p>Stropy drewniane zabezpieczone okładziną z&nbsp;płyt ogniochronnych PROMATECT&reg;-H lub PROMAXON&reg;-Typ A oraz natrysk&oacute;w ogniochronnych PROMASPRAY&reg;, przy niewielkiej grubości płyt osiągają wysokie klasy odporności ogniowej. W&nbsp;wielu przypadkach zastosowania można zrezygnować z&nbsp;dodatkowych podkonstrukcji. Istniejący tynk sufitu w&nbsp;zasadzie nie musi być usuwany, co oszczędza czas i&nbsp;koszty montażu. Niewielki ciężar i&nbsp;wysoka stabilność płyt PROMATECT&reg;-H i&nbsp;PROMAXON&reg;-Typ A&nbsp;oraz natrysk&oacute;w ogniochronnych PROMASPRAY&reg; dodatkowo zwiększają konkurencyjność zamieszczonych rozwiązań.</p>\r\n', 0, NULL, 1, 13, '3', 100),
(40, '5cc5c34271eb1', NULL, '2019-04-28 13:15:01', 144, '', '', 0, NULL, 2, 2, '1', 100),
(41, '5cc5f1b46ff13', NULL, NULL, 145, 'Dachy i stropy z blachy trapezowej', '<p>W budownictwie przemysłowym, jak r&oacute;wnież w budynkach wykonywanych z element&oacute;w prefabrykowanych, często stosowane są stropy i dachy z profilowanych blach trapezowych. Z powodu niewielkiej grubości i szybkiego wzrostu temperatury w czasie pożaru, elementy te przestają spełniać zakładane funkcje już po kilku minutach.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, NULL, 1, 17, '3', 100),
(42, '5cc5f1b46ff13', NULL, NULL, 145, '', '', 0, NULL, 2, 2, '1', 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experiances__groups`
--

CREATE TABLE IF NOT EXISTS `experiances__groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `translate_id` int(11) unsigned NOT NULL,
  `parent_uniq` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translate_id` (`translate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Zrzut danych tabeli `experiances__groups`
--

INSERT INTO `experiances__groups` (`id`, `translate_id`, `parent_uniq`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '', 'Brak grupy', '', NULL, NULL),
(2, 2, '', 'Brak grupy', '', NULL, NULL),
(5, 1, '5cbf2eecae589', 'Kanały oddymiające', '<p>Rozr&oacute;żniamy dwa rodzaje ochrony przewod&oacute;w wentylacyjnych za pomocą systemu PROMADUCT&reg;-500: ogniochronna obudowa istniejących kanał&oacute;w z blachy stalowej przy użyciu płyt PROMATECT&reg;-L500 lub wykonanie samodzielnych przewod&oacute;w, r&oacute;wnież z PROMATECT&reg;-L500. Istniejące kanały stalowe należy chronić w przypadku, gdy zmiana sposobu użytkowania obiektu lub jego części powoduje dodatkowe wymagania przeciwpożarowe. Bardziej ekonomicznym rozwiązaniem jest zastosowanie samodzielnych przewod&oacute;w wentylacyjnych PROMADUCT&reg;-500.</p>\n', NULL, '2019-04-23 14:02:15'),
(6, 2, '5cbf2eecae589', 'Kanały oddymiające', '', NULL, '2019-04-23 14:02:15'),
(7, 1, '5cbf3ad1483e4', 'Natryski ognioochronne PROMASPRAY® P300, PROMAPAINT® C450', '', NULL, '2019-04-23 14:46:51'),
(8, 2, '5cbf3ad1483e4', 'Natryski ognioochronne PROMASPRAY® P300, PROMAPAINT® C450', '', NULL, '2019-04-23 14:46:51'),
(9, 1, '5cbf3aff7ec9b', 'Okładziny ognioochronne z płyt PROMATECT®', '<p>Wysoka stabilność płyt PROMATECT&reg; pozwala na wykonanie samonośnej okładziny skrzynkowej bez dodatkowych podkonstrukcji wsporczych.</p>\r\n', NULL, NULL),
(10, 2, '5cbf3aff7ec9b', 'Okładziny ognioochronne z płyt PROMATECT®', '', NULL, NULL),
(11, 1, '5cbf3b1fb6ee5', 'Ognioochronne farby PROMAPAINT® SC3 i PROMAPAINT® SC4', '<p>Innym rozwiązaniem zabezpieczenia ogniochronnego konstrukcji stalowych jest wykorzystanie natrysk&oacute;w ogniochronnych. Zapewniają one zabezpieczenie do klasy odporności ogniowej R240.</p>\r\n', NULL, NULL),
(12, 2, '5cbf3b1fb6ee5', 'Ognioochronne farby PROMAPAINT® SC3 i PROMAPAINT® SC4', '', NULL, NULL),
(13, 1, '5cbf3bca9febb', 'Stropy', '<p>Oparte na dźwigarach stalowych masywne płyty stropowe przy działaniu ognia od dołu przestają spełniać kryteria odporności ogniowej. Można temu zapobiec przez wykonanie okładziny belek stalowych lub podwieszenie lekkiego sufitu z&nbsp;płyt PROMATECT&reg;.</p>\r\n', NULL, '2019-04-28 13:08:17'),
(14, 2, '5cbf3bca9febb', 'Stropy', '', NULL, '2019-04-28 13:08:17'),
(15, 1, '5cbf3bd203154', 'Ściany', '<p>Ściany działowe z płyt PROMATECT&reg; mogą być wykonane zar&oacute;wno w wersji nośnej, jak i nienośnej. W zależności od wymog&oacute;w, ściany te mogą mieć konstrukcję jedno- lub dwuwarstwową, np. bezszkieletowe ściany szyb&oacute;w instalacyjnych, nienośne ściany działowe na lekkich słupkach stalowych, nośne ściany na konstrukcji stalowej lub z podkonstrukcją drewnianą.</p>\r\n', NULL, '2019-04-23 14:24:03'),
(16, 2, '5cbf3bd203154', 'Ściany', '', NULL, '2019-04-23 14:24:03'),
(17, 1, '5cbf3be59e55e', 'Dachy', '', NULL, NULL),
(18, 2, '5cbf3be59e55e', 'Dachy', '', NULL, NULL),
(19, 1, '5cbf3dfe886fb', 'System PROMADUCT®-500', '<p>Rozr&oacute;żniamy dwa rodzaje ochrony przewod&oacute;w wentylacyjnych za pomocą systemu PROMADUCT&reg;-500: ogniochronna obudowa istniejących kanał&oacute;w z&nbsp;blachy stalowej przy użyciu płyt PROMATECT&reg;-L500 lub wykonanie samodzielnych przewod&oacute;w, r&oacute;wnież z&nbsp;PROMATECT&reg;-L500. Istniejące kanały stalowe należy chronić w&nbsp;przypadku, gdy zmiana sposobu użytkowania obiektu lub jego części powoduje dodatkowe wymagania przeciwpożarowe. Bardziej ekonomicznym rozwiązaniem jest zastosowanie samodzielnych przewod&oacute;w wentylacyjnych PROMADUCT&reg;-500.</p>\r\n', NULL, '2019-04-26 18:22:09'),
(20, 2, '5cbf3dfe886fb', 'System PROMADUCT®-500', '', NULL, '2019-04-26 18:22:09'),
(21, 1, '5cbf3fdd88300', 'System PROMADUCT®-E600s', '<p>Przewody oddymiające, kt&oacute;re obsługują wyłącznie jedną strefę pożarową muszą mieć klasę odporności ogniowej E600S jak stropy budynku. Jednostrefowe przewody oddymiające mogą być wykonywane w&nbsp;wersji tr&oacute;jstronnej jak i&nbsp;czterostronnej.</p>\r\n', NULL, '2019-04-26 18:39:08'),
(22, 2, '5cbf3fdd88300', 'System PROMADUCT®-E600s', '', NULL, '2019-04-26 18:39:08'),
(23, 1, '5cc4332bc604d', 'Dylatacje', '<p>Do zamknięcia szczelin dylatacyjnych, w&nbsp;celu zapobiegania rozprzestrzenianiu się ognia i&nbsp;dymu doskonale nadają się następujące produkty Promat: masy ogniochronne PROMASEAL&reg;-A i&nbsp;PROMASEAL&reg;-A spray. Materiały te stosowane są r&oacute;wnież w&nbsp;lekkich konstrukcjach ściennych i&nbsp;sufitowych oraz do uszczelnień przepust&oacute;w rurowych w&nbsp;technice grzewczej i&nbsp;sanitarnej. Alternatywnym sposobem uszczelnienia dylatacji jest wykorzystanie masy ogniochronnej PROMASTOP&reg;-E (Coating). To rozwiązanie jest szczeg&oacute;lnie przydatne przy zabezpieczaniu dylatacji pomiędzy ścianą a&nbsp;dachem z&nbsp;blachy trapezowej.</p>\r\n', NULL, NULL),
(24, 2, '5cc4332bc604d', 'Expansion joints', '', NULL, NULL),
(25, 1, '5cc5aeb4f0482', 'Przejścia instalacyjne', '<p>Przy zabezpieczaniu wszelkiego rodzaju przejść instalacji korzystamy z wielu wiodących firm produkujących zabezpieczenia ogniochronne takich jak: PROMAT TOP, ROCKWOOL , HILTI, NICZUK, WALRAVEN. Zabezpieczenia te wykonywane są w r&oacute;żnych klasach odporności ogniowej w zależności od klasy odporności pożarowej budynku. Posiadamy szeroką ofertę dla zabezpieczeń przejść instalacyjnych.&nbsp;</p>\r\n', NULL, NULL),
(26, 2, '5cc5aeb4f0482', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experiances__list_items`
--

CREATE TABLE IF NOT EXISTS `experiances__list_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `experiance_id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `experiances__list_items_experiance_id_foreign` (`experiance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=431 ;

--
-- Zrzut danych tabeli `experiances__list_items`
--

INSERT INTO `experiances__list_items` (`id`, `created_at`, `updated_at`, `experiance_id`, `text`) VALUES
(278, NULL, NULL, 23, 'możliwość zabezpieczenia konstrukcji stalowych o profilach otwartych do klasy R120, w zakresie temperatur krytycznych od 350°C do 750°C;'),
(279, NULL, NULL, 23, 'farba oznakowana CE, posiada Europejską Ocenę Techniczną ETA-13/0198;'),
(280, NULL, NULL, 23, 'nieuciążliwa w trakcie nakładania, szczególnie w porównaniu z farbami rozpuszczalnikowymi;'),
(281, NULL, NULL, 23, 'może być nakładana na podłoża zabezpieczone podkładami epoksydowymi;'),
(282, NULL, NULL, 23, 'w zależności od zastosowanej warstwy nawierzchniowej farba może być stosowana: w warunkach wewnętrznych Z1, o podwyższonej wilgotności Z2, częściowo narażonych na oddziaływanie czynników zewnętrznych – Y.'),
(283, NULL, NULL, 10, 'the possibility of sealing expansion joints in massive and light barriers fire protection of expansion joints;'),
(284, NULL, NULL, 10, 'the possibility of using slot elements;'),
(285, NULL, NULL, 10, 'the possibility of securing dilatation on one side only;'),
(286, NULL, NULL, 10, 'fire protection of expansion joints;'),
(287, NULL, NULL, 10, 'the possibility of securing dilatation between the wall and the roof made of trapezoidal sheet.'),
(297, NULL, NULL, 22, 'możliwość zabezpieczenia konstrukcji stalowych o profilach otwartych do klasy R180, w zakresie temperatur krytycznych od 350°C do 750°C,'),
(298, NULL, NULL, 22, 'farba oznakowana CE, posiada Europejską Ocenę Techniczną ETA-13/0356,'),
(299, NULL, NULL, 22, 'nieuciążliwa w trakcie nakładania, szczególnie w porównaniu z farbami rozpuszczalnikowymi,'),
(300, NULL, NULL, 22, 'może być nakładana na podłoża zabezpieczone podkładami epoksydowymi, alkidowymi, epoksydowymi wzbogacanymi cynkiem, cynkowo-silikatowe,'),
(301, NULL, NULL, 22, 'w zależności od zastosowanej warstwy nawierzchniowej farba może być stosowana: w warunkach wewnętrznych – Z1, o podwyższonej wilgotności – Z2, częściowo narażonych na oddziaływanie czynników zewnętrznych – Y oraz na zewnątrz – X.'),
(302, NULL, NULL, 9, 'direct or suspended claddings;'),
(303, NULL, NULL, 9, 'small thickness and weight of fire protection boards;'),
(304, NULL, NULL, 9, 'any roof covering construction;'),
(305, NULL, NULL, 9, 'freedom of surface finishing;'),
(314, NULL, NULL, 8, 'walls all glass with vertical or horizontal silicone joints;'),
(315, NULL, NULL, 8, 'construction in steel or wooden frames;'),
(316, NULL, NULL, 8, 'Maximum transparency due to thin profiles and large glass dimensions;'),
(317, NULL, NULL, 8, 'fireproof doors with very narrow steel profiles.'),
(318, NULL, NULL, 7, 'small wall thicknesses;'),
(319, NULL, NULL, 7, 'good sound insulation;'),
(320, NULL, NULL, 7, 'possibility of mounting inspection hatches;'),
(321, NULL, NULL, 7, 'high aesthetics of finishing.'),
(322, NULL, NULL, 5, 'possibility of making access hatches in massive, light walls, ceilings and suspended ceilings;'),
(323, NULL, NULL, 5, 'complete assembly equipment;'),
(354, NULL, NULL, 2, 'ventilation and air-conditioning ducts secured with a 60mm thick Conlit Plus system achieve the fire resistance class EIS 60, EIS 120;'),
(355, NULL, NULL, 2, 'high tightness - low pressure losses;'),
(356, NULL, NULL, 2, 'the possibility of four-and two-sided housing;'),
(357, NULL, NULL, 2, 'low weight of the housing.'),
(358, NULL, NULL, 1, 'self-supporting wires made of fireproof boards with a thickness of 30-50mm achieve the fire resistance class EIS 60, EIS 120;'),
(359, NULL, NULL, 1, 'it can be used at high working pressures;'),
(360, NULL, NULL, 1, 'the possibility of securing steel sheet canals;'),
(361, NULL, NULL, 1, 'high tightness - low pressure losses;'),
(362, NULL, NULL, 1, 'maintaining constant cross-section dimensions in fire conditions;'),
(363, NULL, NULL, 1, 'the largest permissible cable cross-sections on the Polish market.'),
(364, NULL, NULL, 3, 'protection of steel structure by painting with water-based paint, for example: Promapaint S. We can protect fire-proof elements of steel structures and steel zinc structures with open and closed profiles, used inside and outside objects, in environments with corrosive aggressiveness from C1 to C5- M. Fire resistance class of protection R 15, R 30, R 60;'),
(365, NULL, NULL, 3, 'protection of the steel structure through a plate casing of posts and steel beams. In principle, for this purpose we use cladding from Promatect-L, Promatect-H and the Conlit 150 system. The advantage of using a panel housing is to achieve the highest fire resistance class R 240, there is also the possibility of using lower fire resistance classes such as R 15, R 30, R 60 , R 120;'),
(366, NULL, NULL, 3, 'protection of steel structure through the use of spray masses, such as: Dossolan 2000s. Fire resistance class of protection R 15, R 30, R 60, R 120, R 240.'),
(371, NULL, NULL, 17, 'montaż na placu budowy,'),
(372, NULL, NULL, 17, 'dowolne kształtowanie przewodu na miejscu wbudowania, co pozwala na unikanie kolizji z innymi instalacjami lub elementami konstrukcyjnymi,'),
(373, NULL, NULL, 17, 'krótki czas montażu,'),
(374, NULL, NULL, 17, 'duże wymiary przewodu – do 2460 x 1000 mm,'),
(375, NULL, NULL, 17, 'brak konieczności stosowania kompensatorów,'),
(376, NULL, NULL, 17, 'pełna kompatybilność z systemem wielostrefowym PROMADUCT®-500.'),
(377, NULL, NULL, 4, 'high aesthetics of finishing;'),
(378, NULL, NULL, 4, 'quick and easy assembly.'),
(379, NULL, NULL, 24, 'jednostronny montaż od strony pomieszczenia,'),
(380, NULL, NULL, 24, ' niewielka grubość obudowy szachtu od 40 do 60 mm ,'),
(381, NULL, NULL, 24, 'klasa odporności od (R)EI60 do (R)EI240, '),
(382, NULL, NULL, 24, 'możliwość stosowania do obudowy szybów instalacyjnych'),
(383, NULL, NULL, 11, 'a wide possibility of making protection using masses, fireproof mortars and mineral wool'),
(384, NULL, NULL, 11, 'the possibility of securing all types of installations in one pass (combined transitions);'),
(385, NULL, NULL, 11, 'small thickness of the installation transition.'),
(386, NULL, NULL, 12, 'design of cable ducts to protect electrical installations; '),
(387, NULL, NULL, 12, 'possibility of ensuring continuous supply of energy and signal for 120 minutes;'),
(388, NULL, NULL, 12, 'quick montage;'),
(389, NULL, NULL, 12, 'light construction, low weight;'),
(393, NULL, NULL, 13, 'steel, reinforced concrete and prestressed structures;'),
(394, NULL, NULL, 13, 'constructions made of trapezoidal sheet metal;'),
(395, NULL, NULL, 13, 'thermal and acoustic;'),
(408, NULL, NULL, 33, 'szeroka możliwość wykonania zabezpieczeń za pomocą mas, zapraw ogniochronnych i wełny mineralnej'),
(409, NULL, NULL, 33, 'możliwość zabezpieczenia w jednym przejściu wszelkiego rodzaju instalacji -tzn. przejścia kombinowane '),
(410, NULL, NULL, 33, 'niewielka grubość przejścia instalacyjnego'),
(414, NULL, NULL, 37, 'możliwość zabezpieczenia w jednym przepuście instalacji wszystkich rodzajów,'),
(415, NULL, NULL, 37, 'klasa odporności ogniowej EI120,'),
(416, NULL, NULL, 37, 'możliwość wykonania przepustów o dużych wymiarach.'),
(422, NULL, NULL, 39, 'niewielki ciężar zabezpieczenia (ok. 7,3 kg/m2  przy d = 8 mm),'),
(423, NULL, NULL, 39, 'kilka wariantów montażu okładziny: bezpośredni lub przez zastosowanie podkonstrukcji,'),
(424, NULL, NULL, 39, 'z izolacją akustyczną: polepa lub wełna mineralna,'),
(425, NULL, NULL, 39, 'możliwość zabezpieczenia dachu drewnianego ,'),
(426, NULL, NULL, 39, 'działanie ognia od góry i od dołu.'),
(427, NULL, NULL, 41, 'niewielka grubość okładziny,'),
(428, NULL, NULL, 41, 'okładzina bezpośrednia bez podkonstrukcji,'),
(429, NULL, NULL, 41, 'niewielki ciężar,'),
(430, NULL, NULL, 41, 'klasyfikacja dla działania ognia od góry i od dołu.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=146 ;

--
-- Zrzut danych tabeli `files`
--

INSERT INTO `files` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `extension`, `path`) VALUES
(1, NULL, NULL, NULL, 'test.jpg', 'jpg', '/assets/images/test.jpg'),
(2, NULL, NULL, NULL, 'mosaic_1.png', 'png', './backend/public/userFiles/references/mosaic_1.png'),
(3, NULL, NULL, NULL, 'mosaic_2.png', 'png', './backend/public/userFiles/references/mosaic_2.png'),
(4, NULL, NULL, NULL, 'mosaic_3.png', 'png', './backend/public/userFiles/references/mosaic_3.png'),
(5, NULL, NULL, NULL, 'mosaic_4.png', 'png', './backend/public/userFiles/references/mosaic_4.png'),
(6, NULL, NULL, NULL, 'mosaic_5.png', 'png', './backend/public/userFiles/references/mosaic_5.png'),
(7, NULL, NULL, NULL, 'mosaic_6.png', 'png', './backend/public/userFiles/references/mosaic_6.png'),
(8, NULL, NULL, NULL, 'mosaic_7.png', 'png', './backend/public/userFiles/references/mosaic_7.png'),
(9, NULL, NULL, NULL, 'tab_1-1.png', 'png', './backend/public/userFiles/experiance/tab_1-1.png'),
(10, NULL, NULL, NULL, 'tab_1-2.png', 'png', './backend/public/userFiles/experiance/tab_1-2.png'),
(11, NULL, NULL, NULL, 'tab_2-1.png', 'png', './backend/public/userFiles/experiance/tab_2-1.png'),
(12, NULL, NULL, NULL, 'tab_2-2.png', 'png', './backend/public/userFiles/experiance/tab_2-2.png'),
(13, NULL, NULL, NULL, 'tab_2-3.png', 'png', './backend/public/userFiles/experiance/tab_2-3.png'),
(14, NULL, NULL, NULL, 'tab_2-4.png', 'png', './backend/public/userFiles/experiance/tab_2-4.png'),
(15, NULL, NULL, NULL, 'tab_3-1.png', 'png', './backend/public/userFiles/experiance/tab_3-1.png'),
(16, NULL, NULL, NULL, 'tab_3-2.png', 'png', './backend/public/userFiles/experiance/tab_3-2.png'),
(17, NULL, NULL, NULL, 'tab_3-3.png', 'png', './backend/public/userFiles/experiance/tab_3-3.png'),
(18, NULL, NULL, NULL, 'tab_4-1.png', 'png', './backend/public/userFiles/experiance/tab_4-1.png'),
(19, NULL, NULL, NULL, 'tab_5-1.png', 'png', './backend/public/userFiles/experiance/tab_5-1.png'),
(20, NULL, NULL, NULL, 'tab_5-2.png', 'png', './backend/public/userFiles/experiance/tab_5-2.png'),
(21, NULL, NULL, NULL, 'tab_5-3.png', 'png', './backend/public/userFiles/experiance/tab_5-3.png'),
(22, NULL, NULL, NULL, 'mosaic_8.png', 'png', './backend/public/userFiles/references/mosaic_8.png'),
(23, NULL, NULL, NULL, 'ace_install', 'png', './backend/public/userFiles/logo_index/ace_install.png'),
(24, NULL, NULL, NULL, 'buma', 'png', './backend/public/userFiles/logo_index/buma.png'),
(25, NULL, NULL, NULL, 'control_process', 'png', './backend/public/userFiles/logo_index/control_process.png'),
(26, NULL, NULL, NULL, 'eqos', 'png', './backend/public/userFiles/logo_index/eqos.png'),
(27, NULL, NULL, NULL, 'mckb', 'png', './backend/public/userFiles/logo_index/mckb.png'),
(29, NULL, NULL, NULL, 'salini_impregilo', 'png', './backend/public/userFiles/logo_index/salini_impregilo.png'),
(30, NULL, NULL, NULL, 'sbb_energy', 'png', './backend/public/userFiles/logo_index/sbb_energy.png'),
(31, NULL, NULL, NULL, 'skanska', 'png', './backend/public/userFiles/logo_index/skanska.png'),
(32, NULL, NULL, NULL, 'strabag', 'png', './backend/public/userFiles/logo_index/strabag.png'),
(33, NULL, NULL, NULL, 'tks', 'png', './backend/public/userFiles/logo_index/tks.png'),
(34, NULL, NULL, NULL, 'tkt', 'png', './backend/public/userFiles/logo_index/tkt.png'),
(35, NULL, NULL, NULL, 'trw', 'png', './backend/public/userFiles/logo_index/trw.png'),
(36, NULL, NULL, NULL, 'womar', 'png', './backend/public/userFiles/logo_index/womar.png'),
(37, NULL, NULL, NULL, 'zio_max', 'png', './backend/public/userFiles/logo_index/zio_max.png'),
(38, NULL, NULL, NULL, 'arena_gliwice', 'png', './backend/public/userFiles/logo_references/arena_gliwice.png'),
(39, NULL, NULL, NULL, 'doha_metro', 'png', './backend/public/userFiles/logo_references/doha_metro.png'),
(40, NULL, NULL, NULL, 'gemini_park', 'png', './backend/public/userFiles/logo_references/gemini_park.png'),
(41, NULL, NULL, NULL, 'katowice_airport', 'png', './backend/public/userFiles/logo_references/katowice_airport.png'),
(42, NULL, NULL, NULL, 'krakow_airport', 'png', './backend/public/userFiles/logo_references/krakow_airport.png'),
(43, NULL, NULL, NULL, 'philip_morris', 'png', './backend/public/userFiles/logo_references/philip_morris.png'),
(45, NULL, NULL, NULL, 'saint_gobain', 'png', './backend/public/userFiles/logo_references/saint_gobain.png'),
(46, NULL, NULL, NULL, 'supersam', 'png', './backend/public/userFiles/logo_references/supersam.png'),
(47, NULL, NULL, NULL, 'trw', 'png', './backend/public/userFiles/logo_references/trw.png'),
(48, NULL, NULL, NULL, 'unity_centre', 'png', './backend/public/userFiles/logo_references/unity_centre.png'),
(49, NULL, NULL, NULL, 'tab_1-slide-1.png', 'png', './backend/public/userFiles/experiance/tab_1-slide-1.png'),
(50, NULL, NULL, NULL, 'tab_1-slide-2.png', 'png', './backend/public/userFiles/experiance/tab_1-slide-2.png'),
(51, NULL, NULL, NULL, 'tab_1-slide-3.png', 'png', './backend/public/userFiles/experiance/tab_1-slide-3.png'),
(52, NULL, NULL, NULL, 'tab_1-slide-4.png', 'png', './backend/public/userFiles/experiance/tab_1-slide-4.png'),
(53, NULL, NULL, NULL, 'mosaic_1.png', 'png', './backend/public/userFiles/references/galleries/mosaic_1.png'),
(54, NULL, NULL, NULL, 'mosaic_2.png', 'png', './backend/public/userFiles/references/galleries/mosaic_2.png'),
(55, NULL, NULL, NULL, 'mosaic_3.png', 'png', './backend/public/userFiles/references/galleries/mosaic_3.png'),
(56, NULL, NULL, NULL, 'references_0', 'png', './backend/public/userFiles/references/references_0.png'),
(57, NULL, NULL, NULL, 'Gallery-1', 'png', './backend/public/userFiles/gallery/1.png'),
(58, NULL, NULL, NULL, 'Gallery-2', 'png', './backend/public/userFiles/gallery/2.png'),
(59, NULL, NULL, NULL, 'Gallery-3', 'png', './backend/public/userFiles/gallery/3.png'),
(60, '2019-04-15 19:31:10', '2019-04-15 19:31:10', NULL, 'Dane.txt', 'txt', './backend/public/public/galleries/1555363870_Dane.txt'),
(61, '2019-04-15 19:31:11', '2019-04-15 19:31:11', NULL, 'ASHE.txt', 'txt', './backend/public/public/galleries/1555363871_ASHE.txt'),
(62, '2019-04-15 19:31:27', '2019-04-15 19:31:27', NULL, 'ASHE.txt', 'txt', './backend/public/galleries/1555363887_ASHE.txt'),
(63, '2019-04-15 19:31:28', '2019-04-15 19:31:28', NULL, 'Dane.txt', 'txt', './backend/public/galleries/1555363888_Dane.txt'),
(64, '2019-04-15 19:32:59', '2019-04-15 19:32:59', NULL, 'Dane.txt', 'txt', './backend/public/galleries/1555363979_Dane.txt'),
(65, '2019-04-15 19:32:59', '2019-04-15 19:32:59', NULL, 'ASHE.txt', 'txt', './backend/public/galleries/1555363979_ASHE.txt'),
(66, '2019-04-15 19:43:19', '2019-04-15 19:43:19', NULL, 'Rune.png', 'png', 'galleries/1555364599_Rune.png'),
(67, '2019-04-15 19:43:19', '2019-04-15 19:43:19', NULL, 'Paper.png', 'png', 'galleries/1555364599_Paper.png'),
(68, '2019-04-15 19:47:09', '2019-04-15 19:47:09', NULL, 'Blank.png', 'png', 'galleries/1555364829_Blank.png'),
(69, '2019-04-15 19:47:09', '2019-04-15 19:47:09', NULL, 'bodybg.JPG', 'JPG', 'galleries/1555364829_bodybg.JPG'),
(70, '2019-04-15 19:47:10', '2019-04-15 19:47:10', NULL, 'Bomb.png', 'png', 'galleries/1555364830_Bomb.png'),
(71, '2019-04-15 19:47:10', '2019-04-15 19:47:10', NULL, 'brick.jpg', 'jpg', 'galleries/1555364830_brick.jpg'),
(72, '2019-04-15 19:47:10', '2019-04-15 19:47:10', NULL, 'CokeBoard.png', 'png', 'galleries/1555364830_CokeBoard.png'),
(73, '2019-04-15 19:47:11', '2019-04-15 19:47:11', NULL, 'explosion.gif', 'gif', 'galleries/1555364831_explosion.gif'),
(74, '2019-04-15 19:47:11', '2019-04-15 19:47:11', NULL, 'Explosion.png', 'png', 'galleries/1555364831_Explosion.png'),
(75, '2019-04-15 19:47:11', '2019-04-15 19:47:11', NULL, 'grass.png', 'png', 'galleries/1555364831_grass.png'),
(76, '2019-04-15 19:47:11', '2019-04-15 19:47:11', NULL, 'Heart.png', 'png', 'galleries/1555364831_Heart.png'),
(77, '2019-04-15 19:47:12', '2019-04-15 19:47:12', NULL, 'Heartlight.png', 'png', 'galleries/1555364832_Heartlight.png'),
(78, '2019-04-15 19:47:12', '2019-04-15 19:47:12', NULL, 'Hero.png', 'png', 'galleries/1555364832_Hero.png'),
(79, '2019-04-15 19:47:12', '2019-04-15 19:47:12', NULL, 'Lose.png', 'png', 'galleries/1555364832_Lose.png'),
(80, '2019-04-15 19:47:13', '2019-04-15 19:47:13', NULL, 'Rune.png', 'png', 'galleries/1555364833_Rune.png'),
(81, '2019-04-15 19:47:13', '2019-04-15 19:47:13', NULL, 'Paper.png', 'png', 'galleries/1555364833_Paper.png'),
(82, '2019-04-15 19:47:13', '2019-04-15 19:47:13', NULL, 'Torch.png', 'png', 'galleries/1555364833_Torch.png'),
(83, '2019-04-15 19:47:14', '2019-04-15 19:47:14', NULL, 'Win.png', 'png', 'galleries/1555364834_Win.png'),
(84, '2019-04-15 19:49:46', '2019-04-15 19:49:46', NULL, 'Blank.png', 'png', 'galleries/1555364986_Blank.png'),
(85, '2019-04-15 19:49:46', '2019-04-15 19:49:46', NULL, 'bodybg.JPG', 'JPG', 'galleries/1555364986_bodybg.JPG'),
(86, '2019-04-15 19:49:47', '2019-04-15 19:49:47', NULL, 'Bomb.png', 'png', 'galleries/1555364987_Bomb.png'),
(87, '2019-04-15 19:49:47', '2019-04-15 19:49:47', NULL, 'brick.jpg', 'jpg', 'galleries/1555364987_brick.jpg'),
(88, '2019-04-15 19:49:47', '2019-04-15 19:49:47', NULL, 'CokeBoard.png', 'png', 'galleries/1555364987_CokeBoard.png'),
(89, '2019-04-15 19:49:47', '2019-04-15 19:49:47', NULL, 'explosion.gif', 'gif', 'galleries/1555364987_explosion.gif'),
(90, '2019-04-15 19:49:48', '2019-04-15 19:49:48', NULL, 'Explosion.png', 'png', 'galleries/1555364988_Explosion.png'),
(91, '2019-04-15 19:49:48', '2019-04-15 19:49:48', NULL, 'grass.png', 'png', 'galleries/1555364988_grass.png'),
(92, '2019-04-15 19:49:48', '2019-04-15 19:49:48', NULL, 'Heart.png', 'png', 'galleries/1555364988_Heart.png'),
(93, '2019-04-15 19:49:48', '2019-04-15 19:49:48', NULL, 'Heartlight.png', 'png', 'galleries/1555364988_Heartlight.png'),
(94, '2019-04-15 19:49:48', '2019-04-15 19:49:48', NULL, 'Hero.png', 'png', 'galleries/1555364988_Hero.png'),
(95, '2019-04-15 19:49:49', '2019-04-15 19:49:49', NULL, 'Lose.png', 'png', 'galleries/1555364989_Lose.png'),
(96, '2019-04-15 19:49:49', '2019-04-15 19:49:49', NULL, 'Rune.png', 'png', 'galleries/1555364989_Rune.png'),
(97, '2019-04-15 19:49:49', '2019-04-15 19:49:49', NULL, 'Torch.png', 'png', 'galleries/1555364989_Torch.png'),
(98, '2019-04-15 19:49:50', '2019-04-15 19:49:50', NULL, 'Paper.png', 'png', 'galleries/1555364990_Paper.png'),
(99, '2019-04-15 19:49:50', '2019-04-15 19:49:50', NULL, 'Win.png', 'png', 'galleries/1555364990_Win.png'),
(100, '2019-04-15 19:57:40', '2019-04-15 19:57:40', NULL, '1.png', 'png', 'galleries/1555365460_1.png'),
(101, '2019-04-15 19:57:40', '2019-04-15 19:57:40', NULL, '2.png', 'png', 'galleries/1555365460_2.png'),
(102, '2019-04-15 19:57:40', '2019-04-15 19:57:40', NULL, '3.png', 'png', 'galleries/1555365460_3.png'),
(103, '2019-04-16 13:36:01', '2019-04-16 13:36:01', NULL, '1.png', 'png', './backend/public/userFiles/galleries/1555428961_1.png'),
(104, '2019-04-16 13:36:01', '2019-04-16 13:36:01', NULL, '2.png', 'png', './backend/public/userFiles/galleries/1555428961_2.png'),
(105, '2019-04-16 13:36:01', '2019-04-16 13:36:01', NULL, '3.png', 'png', './backend/public/userFiles/galleries/1555428961_3.png'),
(106, '2019-04-16 13:36:38', '2019-04-16 13:36:38', NULL, '3.png', 'png', './backend/public/userFiles/galleries/1555428998_3.png'),
(107, '2019-04-16 13:37:07', '2019-04-16 13:37:07', NULL, '1.png', 'png', './backend/public/userFiles/galleries/1555429027_1.png'),
(108, '2019-04-16 13:56:31', '2019-04-16 13:56:31', NULL, '2.png', 'png', './backend/public/userFiles/galleries/1555430191_2.png'),
(109, NULL, NULL, NULL, '1-m-kopia.png', 'png', './backend/public/userFiles/1-m-kopia.png'),
(110, NULL, NULL, NULL, 'ccc.png', 'png', './backend/public/userFiles/ccc.png'),
(111, '2019-04-23 20:23:38', '2019-04-23 20:23:38', NULL, '1.jpg', 'jpg', './backend/public/userFiles/galleries/1556058218_1.jpg'),
(112, NULL, NULL, NULL, 'promapaint sc4.png', 'png', './backend/public/userFiles/promapaint sc4.png'),
(113, NULL, NULL, NULL, 'promapaint_sc3.png', 'png', './backend/public/userFiles/promapaint_sc3.png'),
(114, NULL, NULL, NULL, 'belkistalowe.png', 'png', './backend/public/userFiles/belkistalowe.png'),
(115, NULL, NULL, NULL, 'slupy_stalowe.png', 'png', './backend/public/userFiles/slupy_stalowe.png'),
(116, NULL, NULL, NULL, 'promaspray_p300.png', 'png', './backend/public/userFiles/promaspray_p300.png'),
(117, NULL, NULL, NULL, 'promaduct500.png', 'png', './backend/public/userFiles/promaduct500.png'),
(118, NULL, NULL, NULL, 'promaduct_obudowa_stalowego_kanalu_went.png', 'png', './backend/public/userFiles/promaduct_obudowa_stalowego_kanalu_went.png'),
(119, NULL, NULL, NULL, 'szachty.png', 'png', './backend/public/userFiles/szachty.png'),
(120, NULL, NULL, NULL, 'promaduct_e600s.png', 'png', './backend/public/userFiles/promaduct_e600s.png'),
(121, NULL, NULL, NULL, 'promatectL500.png', 'png', './backend/public/userFiles/promatectL500.png'),
(122, NULL, NULL, NULL, 'promaxon_typ_a_na_cprofilach.png', 'png', './backend/public/userFiles/promaxon_typ_a_na_cprofilach.png'),
(123, NULL, NULL, NULL, 'promaseal_a.png', 'png', './backend/public/userFiles/promaseal_a.png'),
(124, NULL, NULL, NULL, 'promaseal_a_spray.png', 'png', './backend/public/userFiles/promaseal_a_spray.png'),
(125, NULL, NULL, NULL, 'promastop_e_coating.png', 'png', './backend/public/userFiles/promastop_e_coating.png'),
(126, NULL, NULL, NULL, 'promafoam_c.png', 'png', './backend/public/userFiles/promafoam_c.png'),
(127, NULL, NULL, NULL, 'promastop_w.png', 'png', './backend/public/userFiles/promastop_w.png'),
(128, '2019-04-27 09:29:00', '2019-04-27 09:29:00', NULL, 'masa_promaseal_a.png', 'png', './backend/public/userFiles/galleries/1556364540_masa_promaseal_a.png'),
(129, '2019-04-27 09:29:00', '2019-04-27 09:29:00', NULL, 'masa_promastop_e_coating.png', 'png', './backend/public/userFiles/galleries/1556364540_masa_promastop_e_coating.png'),
(130, '2019-04-27 09:30:12', '2019-04-27 09:30:12', NULL, 'promastop_unicollar.png', 'png', './backend/public/userFiles/galleries/1556364612_promastop_unicollar.png'),
(131, '2019-04-27 09:30:12', '2019-04-27 09:30:12', NULL, 'promaseal_ag.png', 'png', './backend/public/userFiles/galleries/1556364612_promaseal_ag.png'),
(132, '2019-04-27 09:30:14', '2019-04-27 09:30:14', NULL, 'promastop_w.png', 'png', './backend/public/userFiles/galleries/1556364614_promastop_w.png'),
(133, '2019-04-27 09:31:08', '2019-04-27 09:31:08', NULL, 'masa_promastop_e_coating.png', 'png', './backend/public/userFiles/galleries/1556364668_masa_promastop_e_coating.png'),
(134, '2019-04-27 09:31:08', '2019-04-27 09:31:08', NULL, 'masa_promaseal_a.png', 'png', './backend/public/userFiles/galleries/1556364668_masa_promaseal_a.png'),
(135, '2019-04-28 07:30:56', '2019-04-28 07:30:56', NULL, 'border.jpg', 'jpg', './backend/public/userFiles/galleries/1556443856_border.jpg'),
(136, '2019-04-28 07:36:17', '2019-04-28 07:36:17', NULL, 'border.jpg', 'jpg', './backend/public/userFiles/galleries/1556444177_border.jpg'),
(137, '2019-04-28 07:36:23', '2019-04-28 07:36:23', NULL, 'border-2.png', 'png', './backend/public/userFiles/galleries/1556444183_border-2.png'),
(138, '2019-04-28 07:36:31', '2019-04-28 07:36:31', NULL, 'border.png', 'png', './backend/public/userFiles/galleries/1556444191_border.png'),
(139, NULL, NULL, NULL, 'promastop.png', 'png', './backend/public/userFiles/promastop.png'),
(140, NULL, NULL, NULL, 'przejscia_kombinowane_promastop.png', 'png', './backend/public/userFiles/przejscia_kombinowane_promastop.png'),
(141, '2019-04-28 12:23:59', '2019-04-28 12:23:59', NULL, 'masa_promaseal_ag.png', 'png', './backend/public/userFiles/galleries/1556461439_masa_promaseal_ag.png'),
(142, '2019-04-28 12:26:50', '2019-04-28 12:26:50', NULL, 'promastop_m.png', 'png', './backend/public/userFiles/galleries/1556461610_promastop_m.png'),
(143, '2019-04-28 12:33:07', '2019-04-28 12:33:07', NULL, 'kombischott_typ_a.png', 'png', './backend/public/userFiles/galleries/1556461987_kombischott_typ_a.png'),
(144, NULL, NULL, NULL, 'stropy_drewniane.png', 'png', './backend/public/userFiles/stropy_drewniane.png'),
(145, NULL, NULL, NULL, 'dachy_blacha_trapesowa.png', 'png', './backend/public/userFiles/dachy_blacha_trapesowa.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `files__translates`
--

CREATE TABLE IF NOT EXISTS `files__translates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `translate_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files__translates_file_id_foreign` (`file_id`),
  KEY `files__translates_translate_id_foreign` (`translate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `category` set('others','experiance','references','news','none') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Zrzut danych tabeli `galleries`
--

INSERT INTO `galleries` (`id`, `created_at`, `updated_at`, `special_id`, `comment`, `category`) VALUES
(1, NULL, NULL, 'index', 'Logo - Index Page', 'others'),
(2, NULL, NULL, 'references', 'Logo - Reference Page', 'others'),
(3, NULL, '2019-04-15 16:46:02', '', 'Gallery - Experiance Page Cat 1.1 1', 'none'),
(8, NULL, NULL, '', 'Gallery - Reference Page Ref-1', 'none'),
(9, NULL, NULL, '', 'Gallery - News Example', 'none'),
(12, '2019-04-15 19:34:17', '2019-04-15 19:34:17', NULL, 'Test', 'none'),
(13, '2019-04-27 09:28:38', '2019-04-27 09:28:38', NULL, 'Przejścia instalacyjne - rury', 'none'),
(14, '2019-04-28 12:23:22', '2019-04-28 12:23:22', NULL, 'Przejścia instalacyjne - kable', 'none');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `galleries__descriptions`
--

CREATE TABLE IF NOT EXISTS `galleries__descriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `translate_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `gallery_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries__descriptions_translate_id_foreign` (`translate_id`),
  KEY `galleries__descriptions_gallery_id_foreign` (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `galleries__descriptions`
--

INSERT INTO `galleries__descriptions` (`id`, `created_at`, `updated_at`, `translate_id`, `title`, `description`, `gallery_id`) VALUES
(1, NULL, NULL, 2, 'Experiance Category 1 Gallery', '', 3),
(6, NULL, NULL, 1, 'Doświadczenie - Galeria Kategoria 1', '', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `galleries__images`
--

CREATE TABLE IF NOT EXISTS `galleries__images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries__images_gallery_id_foreign` (`gallery_id`),
  KEY `galleries__images_file_id_foreign` (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=100 ;

--
-- Zrzut danych tabeli `galleries__images`
--

INSERT INTO `galleries__images` (`id`, `created_at`, `updated_at`, `gallery_id`, `file_id`) VALUES
(2, NULL, NULL, 1, 23),
(3, NULL, NULL, 1, 24),
(4, NULL, NULL, 1, 25),
(5, NULL, NULL, 1, 26),
(6, NULL, NULL, 1, 27),
(8, NULL, NULL, 1, 29),
(9, NULL, NULL, 1, 30),
(10, NULL, NULL, 1, 31),
(11, NULL, NULL, 1, 32),
(13, NULL, NULL, 1, 34),
(14, NULL, NULL, 1, 35),
(15, NULL, NULL, 1, 36),
(16, NULL, NULL, 1, 37),
(17, NULL, NULL, 2, 38),
(18, NULL, NULL, 2, 39),
(19, NULL, NULL, 2, 40),
(20, NULL, NULL, 2, 41),
(21, NULL, NULL, 2, 42),
(22, NULL, NULL, 2, 43),
(24, NULL, NULL, 2, 45),
(25, NULL, NULL, 2, 46),
(26, NULL, NULL, 2, 47),
(27, NULL, NULL, 2, 48),
(28, NULL, NULL, 3, 49),
(29, NULL, NULL, 3, 50),
(30, NULL, NULL, 3, 51),
(31, NULL, NULL, 3, 52),
(32, NULL, NULL, 8, 53),
(33, NULL, NULL, 8, 54),
(34, NULL, NULL, 8, 55),
(35, NULL, NULL, 9, 57),
(36, NULL, NULL, 9, 58),
(37, NULL, NULL, 9, 59),
(83, '2019-04-16 13:37:07', '2019-04-16 13:37:07', 12, 107),
(84, '2019-04-16 13:56:31', '2019-04-16 13:56:31', 12, 108),
(88, '2019-04-27 09:30:12', '2019-04-27 09:30:12', 13, 130),
(90, '2019-04-27 09:30:14', '2019-04-27 09:30:14', 13, 132),
(91, '2019-04-27 09:31:08', '2019-04-27 09:31:08', 13, 133),
(92, '2019-04-27 09:31:08', '2019-04-27 09:31:08', 13, 134),
(97, '2019-04-28 12:23:59', '2019-04-28 12:23:59', 14, 141),
(98, '2019-04-28 12:26:50', '2019-04-28 12:26:50', 14, 142),
(99, '2019-04-28 12:33:07', '2019-04-28 12:33:07', 14, 143);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(35, '2014_10_12_000000_create_users_table', 1),
(36, '2014_10_12_100000_create_password_resets_table', 1),
(37, '2019_04_08_200519_create_Dictionaries_table', 1),
(38, '2019_04_08_200519_create_Experiances_table', 1),
(39, '2019_04_08_200519_create_Files__Translates_table', 1),
(40, '2019_04_08_200519_create_Files_table', 1),
(41, '2019_04_08_200519_create_Pages_table', 1),
(42, '2019_04_08_200519_create_Translates_table', 1),
(43, '2019_04_08_200520_create_Experiances__List_Items_table', 1),
(44, '2019_04_08_200520_create_Galleries__Descriptions_table', 1),
(45, '2019_04_08_200520_create_Galleries__Images_table', 1),
(46, '2019_04_08_200520_create_Galleries_table', 1),
(47, '2019_04_08_200520_create_News_table', 1),
(48, '2019_04_08_200520_create_References_table', 1),
(49, '2019_04_08_200530_create_foreign_keys', 1),
(50, '2019_04_10_160627_create_cache_table', 1),
(51, '2019_04_13_081701_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`) VALUES
(1, '2019-03-31 22:00:00', NULL),
(2, '2019-03-31 22:00:00', NULL),
(3, '2019-03-31 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news_description`
--

CREATE TABLE IF NOT EXISTS `news_description` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_on_slider` tinyint(4) NOT NULL DEFAULT '0',
  `translate_id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `has_gallery` tinyint(4) NOT NULL DEFAULT '0',
  `file_id` int(10) unsigned NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `full_content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `news_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_translate_id_foreign` (`translate_id`),
  KEY `news_gallery_id_foreign` (`gallery_id`),
  KEY `news_file_id_foreign` (`file_id`),
  KEY `news_desc_news_fk` (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `news_description`
--

INSERT INTO `news_description` (`id`, `show_on_slider`, `translate_id`, `gallery_id`, `has_gallery`, `file_id`, `seo_title`, `seo_description`, `seo_keywords`, `title`, `description`, `full_content`, `slug`, `visible`, `news_id`) VALUES
(1, 1, 2, 9, 1, 58, '', '', '', 'Tytuł News 1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestias, magnam quae alias odit deserunt obcaecati esse dolores, excepturi sapiente eveniet eius soluta, magni tempore ad quam quibusdam sed temporibus voluptatem possimus corrupti. Pariatur aspernatur vero harum natus assumenda molestiae eos voluptas? Laudantium maxime, modi corrupti libero eum velit recusandae architecto nostrum molestiae minus quam labore deserunt, illum distinctio alias eligendi? Aperiam temporibus mollitia ducimus repellat numquam hic quisquam consequatur sapiente asperiores assumenda ipsa, quod voluptatem veritatis explicabo delectus soluta deserunt, porro fugit. Animi corrupti architecto ratione sit nisi et ea explicabo, placeat eaque dolores voluptas, voluptatibus dolorem quod nobis? Repellendus.', '', 'news-3', 1, 1),
(2, 1, 2, NULL, 0, 10, '', '', '', 'Tytuł News 2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestias, magnam quae alias odit deserunt obcaecati esse dolores, excepturi sapiente eveniet eius soluta, magni tempore ad quam quibusdam sed temporibus voluptatem possimus corrupti. Pariatur aspernatur vero harum natus assumenda molestiae eos voluptas? Laudantium maxime, modi corrupti libero eum velit recusandae architecto nostrum molestiae minus quam labore deserunt, illum distinctio alias eligendi? Aperiam temporibus mollitia ducimus repellat numquam hic quisquam consequatur sapiente asperiores assumenda ipsa, quod voluptatem veritatis explicabo delectus soluta deserunt, porro fugit. Animi corrupti architecto ratione sit nisi et ea explicabo, placeat eaque dolores voluptas, voluptatibus dolorem quod nobis? Repellendus.', '', 'news-1', 1, 2),
(3, 1, 2, 9, 1, 57, '', '', '', 'Tytuł News 3', 'We are happy to inform that in March we completed one of the biggest contract of Our abroad client. This time we had chance to work at construction site of the Al Bayt stadium in Al Khor. Our tasks included: Smoke removal with PROMAT self-supporting channels technology, fire sprinkler installation, and fire protection walls montage. ', '<p>We are happy to inform that in March we completed one of the biggest contract of Our abroad client. This time we had chance to work at construction site of the Al Bayt stadium in Al Khor. Our tasks included: Smoke removal with PROMAT self-supporting channels technology, fire sprinkler installation, and fire protection walls montage. </p><p>For several months we worked hard to prepare the fire protection of the stadium for the FIFA World Cup 2022. We put a lot of effort, to finish work at Al Bayt stadium on time. We hope that our national football team also show what are they capable of, and will score many points.</p>', 'news-2', 1, 3),
(4, 1, 1, 9, 1, 57, '', '', '', 'Al Bayt', 'W marcu zakończyliśmy jeden z największych kontraktów zagranicznych. Zakres prac wykonanych podczas budowy imponującego stadionu Al Bayt w mieście Al Khor obejmował oddymianie w technologii kanałów samonośnych PROMAT, wykonanie natryskówprzeciwpożarowych, dylatacji przeciwpożarowych, ścian ppoż. ', '<p>W marcu zakończyliśmy jeden z największych kontraktów zagranicznych. Zakres prac wykonanych podczas budowy imponującego stadionu Al Bayt w mieście Al Khor obejmował oddymianie w technologii kanałów samonośnych PROMAT, wykonanie natryskówprzeciwpożarowych, dylatacji przeciwpożarowych, ścian ppoż.</p><p>Przez kilkanaście miesięcy pracowaliśmy na najwyższych obrotach po to, aby na Mistrzostwa Świata FIFA 2022 Stadion był w pełni gotowy i zabezpieczony pod kątem ochrony przeciwpożarowej. Nasz Zespół dał z siebie wszystko na tym stadionie. Teraz kolej na naszą reprezentację w piłce nożnej. Trzymamy za Was kciuki!</p>', 'news-2', 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Zrzut danych tabeli `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `seo_title`, `seo_description`, `seo_keywords`) VALUES
(0, NULL, NULL, NULL, 'global', '', '', ''),
(1, NULL, NULL, NULL, 'index', '', '', ''),
(2, NULL, NULL, NULL, 'about', '', '', ''),
(3, NULL, NULL, NULL, 'references', '', '', ''),
(4, NULL, NULL, NULL, 'experiance', '', '', ''),
(5, NULL, NULL, NULL, 'news', '', '', ''),
(8, NULL, NULL, NULL, 'references_details', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_references`
--

CREATE TABLE IF NOT EXISTS `project_references` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Zrzut danych tabeli `project_references`
--

INSERT INTO `project_references` (`id`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL),
(10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project_references_description`
--

CREATE TABLE IF NOT EXISTS `project_references_description` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_id` int(10) unsigned NOT NULL,
  `short_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `project_details` text COLLATE utf8_unicode_ci NOT NULL,
  `has_gallery` tinyint(4) NOT NULL DEFAULT '0',
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `show_on_slider` tinyint(4) NOT NULL DEFAULT '0',
  `translate_id` int(11) unsigned NOT NULL,
  `show_on_main` tinyint(1) NOT NULL DEFAULT '0',
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `references_file_id_foreign` (`file_id`),
  KEY `references_gallery_id_foreign` (`gallery_id`),
  KEY `references_translate_id_fk` (`translate_id`),
  KEY `reference_reference_description_fk` (`reference_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Zrzut danych tabeli `project_references_description`
--

INSERT INTO `project_references_description` (`id`, `created_at`, `updated_at`, `file_id`, `short_title`, `city`, `full_name`, `description`, `project_details`, `has_gallery`, `gallery_id`, `show_on_slider`, `translate_id`, `show_on_main`, `slug`, `reference_id`) VALUES
(3, NULL, '2019-05-13 17:14:42', 56, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contract Value - 12 000 000,00 PLN<br />\r\nContact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 1, 8, 1, 2, 1, 'ref-1', 3),
(4, NULL, '2019-05-13 17:14:54', 3, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contract Value - 12 000 000,00 PLN<br />\r\nContact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 0, NULL, 1, 2, 1, 'ref-2', 4),
(5, NULL, '2019-05-13 17:15:03', 4, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contract Value - 12 000 000,00 PLN<br />\r\nContact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 0, NULL, 1, 2, 1, 'ref-3', 5),
(6, NULL, '2019-05-13 17:15:14', 5, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contract Value - 12 000 000,00 PLN<br />\r\nContact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 0, NULL, 0, 2, 1, 'ref-4', 6),
(7, NULL, NULL, 6, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 2, 1, 'ref-5', 7),
(8, NULL, NULL, 7, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 2, 1, 'ref-6', 8),
(9, NULL, NULL, 8, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 2, 1, 'ref-7', 9),
(10, NULL, NULL, 22, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 2, 1, 'ref-8', 10),
(11, NULL, '2019-05-13 17:14:42', 56, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 1, 8, 1, 1, 1, 'ref-1', 3),
(12, NULL, '2019-05-13 17:14:54', 3, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 0, NULL, 1, 1, 1, 'ref-2', 4),
(13, NULL, '2019-05-13 17:15:03', 4, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 0, NULL, 1, 1, 1, 'ref-3', 5),
(14, NULL, '2019-05-13 17:15:14', 5, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '<p>Contact - ISG SALINI IMPREGILO RED LINE NORD<br />\r\nExecution/ Completion - 06.2017<br />\r\nScope of works - Ower Track Exost</p>\r\n', 0, NULL, 0, 1, 1, 'ref-4', 6),
(15, NULL, NULL, 6, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 1, 1, 'ref-5', 7),
(16, NULL, NULL, 7, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 1, 1, 'ref-6', 8),
(17, NULL, NULL, 8, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 1, 1, 'ref-7', 9),
(18, NULL, NULL, 22, 'Shopping mail', 'Katowice, Poland', 'Shopping mail in Katowice, Poland', '        The Doha Metro serve both the capital and the suburbs with all major locations within easy and convenient reach. Most of the Doha Metro lines will be underground, so tunnelling plays a major role in construction.<br>\r\n        <br>\r\n        The Red Line, also known as the Coast Line, runs for about 40 kilometres from Al Wakra in the south to Lusail in the north. The line also connects Hamad International Airport at Terminal 1 to the centre of the city. It has 18 stations with the Legtaifiya Station allowing passengers to transfer over to the Lusail Tram.', '      Contract Value - 12 000 000,00 PLN <br>\r\n        Contact - ISG SALINI IMPREGILO RED LINE NORD <br>\r\n        Execution/ Completion - 06.2017 <br>\r\n        Scope of works - Ower Track Exost', 0, NULL, 0, 1, 1, 'ref-8', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0Ea1P7plq5JUF2aWtJnRuz6YMZqQ1CFnMP2eiC0Z', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjEzaXZwRlFLcmFXRzBlWDNaVDlZQXZVVjI2cU9SekFPM3RkT3RIWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774886),
('0iCsgpfdhoIRk7mChDdlSnAyIjKeWabRHBu7D7Oj', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0psUDNvbmJESGZQM2RmazZmN01nN2NiY0dJWFAwZlgycmJjR3Z3diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774463),
('0zXwWobFCxtCzSEfS67eZd4ztSsDgMWwXEUQfcZ4', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0lJczBQMEJzclUwRHhsc3FDNXZxUVRZd0VRT3AxWDBWejhiTldUWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774426),
('1DMTlY705zKlzA5mw3Iw2dxBHvKsJMztTTep1b9y', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG1nV3lOVDQ3U09kNzhuVUhLbml2a2pFcmpkaG84Vno5ZFl0VmFaQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L25ld3MvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774260),
('1fGJ4C7M5g0xeT5jNlf861jB6p0PwJA3WeSS2aNg', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmRrVFpiM2NPMlpMeUFBdzY4U2gyZ3cwNEhySG9hY2pDOXdvRHUxdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772673),
('1MPmFryAr3IT602XiqgZoXdQ6e6yJ0QlZdbsnC0t', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnVmeVE1bHFFUU9kT3ZJVGJGcDNRUmRJVDlNOGQwSnZMNnI2cHpZNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774543),
('2UrqMnxcMeVf0f2ZKxHm94Ct4lQJraoUsI2QXl2K', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakcxYW83TVA5QU9BT3JRM205OGM0MFczdXdmMjRqMmhvMDZOYXR0eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774995),
('3OuBcOBoIdrOgEslOJUo9UgQSqmTKsysSW7t52cm', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2NpWktkYU5lbmdHR25kSTR1M1RzYVIxS3NmTTk3cWlCaFBSbUZaUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xL3JlZi0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557774448),
('3PyqeUy0qQyuFpCU2couzMvmRb6gHgaVAgIS1gyh', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjBSN1NTMWx6OVdSTUlFdENQRTJNYTNQMXlNU01ZRDFzaFE1WkFXRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774357),
('3X4dwZjDZ98yESNSUvC546RqAcOCGVXZNdpSXoI4', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGgxT3pyT3F6Y21VOXlCcjdta0hLY1hGS0NXVTl5TU1sYkRCY3dKNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557771742),
('4nK9CZZFOxbZvFCGBLrOJVFW7QEUW83kd5B2TEqh', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEVBS25rdnF4VXpmdW52Y0tGdzZBMWM1eUtjUm5MS0JScGhZYklmTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772728),
('5LJEY2FIP0Y3upgmTX1spOVQXEhv52FJj9JYRlKd', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2ZKeG5taHBWNHpEY294ckdzdk1vdjkxcE5WYkp3N2ZIYzZZWlRFdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557775118),
('6BvOmL6FVr32fBMD0ZSNMRBWkcKmI5eAuc1ddTC1', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1dLcGdNNUE0UU9FcDZvaXFPek1nSHNjREhQU1ZJelFHTGpKNmI4ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774255),
('7GebPSVGMJORf4YKQ14zBlIq5EqIO84fqe0aV78E', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVpWUmxIajR1VzR6bk42WGFEZmtWZXBIZXhhRXYwMWd6VktWaTZ4QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774524),
('7nnj4BPuyJig86TNwIorIDlJpwVj5uCdyjxbhZNl', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWd2MWlITTFDV0tYbjQ3eEJXZ2xIMzk5YnYyd0xIelBzQ0ZHTkpYdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL3dvcmtzcGFjZS9iYWNrZW5kL3B1YmxpYy9hcGkvZ2V0X3BhZ2VfY29udGVudC9pbmRleC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557771351),
('7qMTT9dXImPRRdtLT6XGO0Q9uBeAWT59iCYR1On5', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFhJSkNUeTZEM1RtYUVLcmZ1aGZDZWo0bGV2QzBZZ3k4SU1Mc3pRNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773755),
('8Ml6hIMFDNCi7e2rVLK4K5LPbCMogPFVFvmQTUhV', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkNKR01IbmNUZjc4UU5mQXJZVUVUS3BxOEJObk95Y2FNbTNMb2dDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772949),
('8rDlIqfcecJLZjEqkeZ9sqevUSMDUaPtiJUPPjbu', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaThyVlZCUzFra1p6a3RqbWc0MmZSMjBwQWFETTFTZlRSQ1NMOUkwVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772918),
('8rtRYIsxWQJwcAMw0E8SoW5u6gQTmY9NSFEPzr80', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2VKWUFTenRpc0FTa05RTmVXTkg2eFp5R3cxZ0dRZGtSQ0QzUUR4MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772770),
('8zvU4aQb7BszqHgzD7JCFbEsZyo2sXG0MdacA9ar', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmpWTUUwc25UUXhuTGM2VUJuOVd3cnVDVmdxMGRWTk9zWEREOFhpTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774264),
('9cjxSBAj7OcGoKZWxic9jS52ncdyIpwpBJwS8s4z', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGNrRTNWdFZEaTRDR1NyNG94ekRaWjcxdHJ3bENQS3NXWHpwM1N6dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774542),
('9L4lSq8CirikEtlBV67DzGotU8psiZZJwogiN0r6', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnJMaHBiY3ozaEsxWEFjdXZ2YjBYU0hpQjdYZGw2cDFWWjlYQnV4RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774349),
('9zVQGWD9iDBpzC229LYU9p7An1xCHr7Z2GjAyvvb', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmlGYTlCWEk0SVlLMVhWd3JDQjRrSkVRN0JMSXhBdUxOQjNWTDRkMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557771970),
('A5eNDDRcStkwWbfZV9U5STBwOI8moqPrZLbHXqxi', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUo3YmswbzI3YzVOaXdrYjlOVGhWRFB2Z29iNXk0RnRhUGlZY05UQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772515),
('abzTawo41QoOJ8OgEzrkvB6a3lZHdoYw148w6zxg', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVg1akJLc2QyNWdIcG9Cd3R4QnRMdXZ6NlpRNUZjeXpTa1lTa3pLaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xL3JlZi0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557772933),
('aHCHEYgpcRvMPAB2S6DXcQ3H61NYZPR13xgQHugw', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE1PUDh3STF4OGZva1lPSlJNeUpwanVPSHRaSmNtc1p3elRERXdUeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL3dvcmtzcGFjZS9iYWNrZW5kL3B1YmxpYy9hcGkvZ2V0X3BhZ2VfY29udGVudC9pbmRleC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557771376),
('ALOu46ZjBUoyRcItHgO4M3V2e49UE9Bn2WzaPCJz', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTQ5OXhSV3FTbDlyTlVCY1JWbmc2Nk5CM2F1OWZleUd0Z1lIMUJ0VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774143),
('amcfUeJXsC397apBDizRWu6LCp6kZ1mcAPeN9s9m', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0ZKcHN4dHJIc2JRdXc4WEhoM09aN0VNVDRqREdYTFR6UE1hYjlTSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773111),
('AYTMFcX0pvmOvJc2mu27gt9rj9d4eUJ9rQnrvs4O', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTgwREllNHA0TmMyOE1hSXBJWE5pNjNRTG8xTGd4eTJjOHljdVh5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773257),
('AzuPiN5kVTOm0zG8JChAAvDTYwfdAOfMeDJOleD2', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTJNNGlXdmpGSU1ubzRzdkdGUkdIT3dSeFVBMmY1ZWFuQnZZOVlLSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xL3JlZi0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557774745),
('bhcm7S508C2Zt46RIu65Qv5CAvn52wNbdsVbdPWh', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkh5Qm1nOWVUZzhJcXprNEZhYzdNRjhGM1RMem05a01wamczWkxjTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774665),
('BWEIBb7kWsmgYPeMTWIxYjIUU4S1PcOKoIzgsHb2', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGRrM1FQZmVGZ2NrNXJYRDBjam9yOW8xZE5vSE9mVjFtU29FOW1oNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773376),
('C2ldR90sgUxEEs3yTE0OQAuPJcDcShRkdkvL3KxH', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGVVYjI4N1pka3Y4VXZETWhRVWFwcnFjR3ByUVhGOWtHVGJLQUI1eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xL3JlZi0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557772922),
('c8fVJMViJR4rzBeBCU3b0uEJJhnWl7jtXhZ9BiSq', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibG9mMElrSHpQV1JMelZEMk5FS1ZSTXB2YzYyVnl4SmppajIzSVBIYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774016),
('cfNpwDPxxrsDm5UFDmVC7jHpvy7FXMCZsMjuei2o', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2s4Z2lKeEdHOXZIcWlJUWRyaXlpOHJxZHZheVRRODVTa0J5aXpWUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773289),
('D2H2i4DJZ1ALEIXoV5y1e0K8HGZ1KvzD7LKhCnxr', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0JIeWZFMWZsUkxkUUtjTFpWN3RRODFKZGdUT0tKenpHRGFkWXoxViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774566),
('D3p0KrPaWnSozrzrfYuKYgJOzu46LyEdT27hhT88', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXBVWkw5TFdDMGFLdXV6aEhvMW9QVUFBUDFPQmtJc0tqZXdlczhXUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773647),
('DbGEClYIkjlCoDQwVPZBvbBKL8hEr7KoCSdujkU4', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXJJNnBTeXoxdXpkeVZBSHZkTnh6bkUxbjc3c1NTZUdWRE9ZQTZzWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772577),
('dDSAZjYfG7nQBogc3PEq7rzH6LqMswVLILg9cJir', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1Z4VGdYaTROOXptc1k4MDBGS1ZCZ2g3dGduTGRpNzdQcDRiQVlsdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773073),
('ds9fBW2UF8hzmiay1NITuypi6BduTgX0zKMoJah8', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVE1Q1hJclk0MGRiTUNpdTZiNE9JQWdZU1dOdVI1aXVONzJkYW5LaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774876),
('ELIhLeUVEAnBMBwppwLhzX5hjVQlZuk6Q2duOWPM', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2dRM2JZQjkwYklhWkd5QndyTEsycXJ0RE5tcklCZ0hxTGxldFFmMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772963),
('etyGpW5VKrj9k5EsdcZpIfZEjgsczPnvwRjsW93J', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHl3bkhRRUJ1VnluTGY1WGY2QlBwSDFvM0dDUVZsM3BxZVpHM1V2SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773121),
('ewavHuCyTlxz6R24DMIPAe3wcuvPt4TZANkbb752', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHFqOVNQelZkTkRRQXRrb1Q0Z212NGhsenFiaGJTM0ZVaWQ2NkxjMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774543),
('FrTsFttJ0Csh34m2RGwpdcPO3PDsGMGImSPz1gqf', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0NkR2NxZ2RyazhQWUs3RWk2S3puQTlja3RtQkJjd3JnM0hIYVJZZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773152),
('FXt8XczrfmNO215PpsmtLtE0iH9dI4EEdbchnBrf', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWEwMDZrS1Y5dlRnc3B5cDdxNTNZNWNrT3JpMFJQNjNHbExNcElyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772797),
('g0jNZVSQPtgKFMVOkrmU1oFMrVtPlNVAlU6fTckQ', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkU5ZmxXY254OXRsYWFwTWNYTXdMR2hqaktxbzdRTVN5Z09DSGpCbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774244),
('G23IKKUhSSXSWHpEzcYJ9eCoDYRDLzxK4Q3MHpJc', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2FKVlpZQWpCT1c4djRLVWhHMFdLRTBZZXB5SWFGYzMxRGlpeVZuaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773582),
('gEK5i11wMWSk1GcOUT6xH4IuL081sz96Y6d9r0pa', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1JvQTF6YTJRMGRjUnozdTNYY0tBOUdGQVJJRmliYURUNW5IZlZ2MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773074),
('gLODCQct2T9wa9wVlQCLd2PCjpStCGK2mIAxF3Qk', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGREQUN5UnRMVUZOWUFOT2R3aHFXWlVRQTZhMFdNcWY3eVZxSEhybCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772858),
('GtkTjhmP1HsXFuSfaGPhUuJLUAM4sQGNo16Kwa5H', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUJoSm5hWm5obk10REpRYmZMS0pNQTB0bk9WRW1rS2tjNE93YUFMWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774569),
('gUgNIDF3VZUmQH2n4jHwnMHmq9CtfjDeSHDBFSn6', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmZsUmc3RWRiOHJ1dWp0d05nZXJOZU1qOURrTE50Vlp3dUJrRTlaZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773223),
('GxUoRrqMcWW1E0VVN9JFvJ79k5FMQ8oIHBgG51M0', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWlYNUVTT0tqZmt1Y1FlbHB2SHowYWdkZW5Hd1JYZ0gxRWZGV3huYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774160),
('hKLFJdB3m12GkB1J0i1xlPEybSK8BuHbkgx6H9n7', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMk9iWFZUakQ4TG1XcEQ1VFJ0Q0V5MXRod21xbDRwWXdxWkEwMnRNUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772696),
('HXaz4ydDrhLLxGtjwlWyFkRcEgqnOviqXLoE8AnI', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVVhMnJsRzVneUpGY2c0NjJvZ0lwUWxHRmFBbHV2bTZnb0RHQWpXQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774559),
('hY7o8v5gFuqOPc8HzgHjuarjxB7ooEzDrxSuPbr9', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmNZYlBZc3pod3BxZjZabGREc1JJTEo1OUtBbGt4R1V4VElGbHdMaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773924),
('I8spR7lOINy3MkKyKjGTwZiIQx4TqCI2Ei3bbuns', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzJrYU5Fa053VFFLdUs3M1FtYW1QVGlXa2FGV04xcVdvUnBEWU5RTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772749),
('icKdcvZekby288V8R5Yv42xKLjcxqQElogWIBPsb', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUs2aEx4RndBWVI4MU9iaHpvcEFJb2VWMjZJZDcyZUtZalRQdnVqNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774123),
('IctYkTPEFhkPXDbqCn92e9HXMQ4wxjJGgpuA8Rl1', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2VZRjlwN0ZzNmxBWG94cXBlZWFsRm14VDhzTE05S2RKNVREUmNpUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772270),
('idtrMmXGD9Xc8y9Vb6ebl9tneUVWJfpJgRWvBOXZ', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHgwTXVhYWYyRDJ1aFNYM3ZNa3c3bmRzNERXT2Y4WldKRUY1QnZISiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772945),
('iK6es5kM6le6K8v22fW753jUS80Sc8KCECiS79q7', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzRtbmtweVdiS214RUVwZHhjVFRsMzB2ZWlVUTNZWWtCVjZrejVBbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773068),
('IvlLeYox0is8EtlXvN0CDoOlXFu5qTRA960PqDIq', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianNRQ1ZiU3ZhdktFcGtXa1FGWEtpT1lUZU5qVjRmTllia2ZUQkxKeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8yLzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557775117),
('JsqlvjOTIpA8NawgJ0w6Qa1F5QtevID6fnXD24Lx', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFpuS204bjRWdUFMSHE3VlB2UktkRkRCbW1XNmxKRTNqT2ZlQm5mVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773000),
('jTSy8IPrgZ2JiFxOF7rJjtafDz1RYHHUAbl50AXw', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0RZUzQ1RzY0SUZYNkhyWDFsVnVuMVBIbGlCZmhOZGk5UXlBTW83TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774532),
('juVRaJthhlr1zm7kSN6KL391TE1X4aYlskM8zaIc', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnVCRFREa2ZkMm9hOTJQNlkzM1dsV29FTVdQMmYwbGlXcnIzZ0ZaVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773136),
('kdKREB3iyEELcAhc7p2AbzzE0dl17YVVvePywdAP', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkU1VGVSamRLbklYd1hHdjRDYnJDZGJPdkx1M3NjRlVsZXdIVEgzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774191),
('KdTkAzw7Pj5dxBXAAcANX6IPjGq5NMyDdYrZM6Es', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG1pWjhEN1BmWEpTSGxhTGdVRmd2SjkySlE2cUpUUDZMNXJwZVdDZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557771751),
('kp2oPqW1Hoyuc8GNbn4ibw1Rs0K3t7eEAhdd0Vgr', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGc1TnJ0Rlk1NWlsclVCb0lObThIZ3NIQ01RNFhWOFFaWUc1eklDSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773289),
('KwwJrmlsVIM3wJmA7cckoBDzevA5m2EneT07SCk7', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUcycURIMjZ5bkVwMVpMV0paSVBocUNOUEZkSkQwcWFlZlptZnZuaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772589),
('lApBaNYwPgLV8b9KyJpCbASogSNpGbGnLx1Bs5KX', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHJxaThQUzRtN0JteEJ1Mk0yTnZ2cGQzbHNSRnFlendNV1BTdDZFdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773252),
('LHJfp3JznFcrtKIJ3zluosOB0JWi99I2KCiNM4ee', NULL, '178.37.195.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnJQMktvZFVKWWx5VmZRUkc5bU1veVZ2TDAxczZlU0pMT3NYQW9HdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2luZGV4LnBocC9yZWZlcmVuY2UvMy9lZGl0Ijt9czoxMjoiY3VycmVudF91c2VyIjtPOjg6IkFwcFxVc2VyIjoyNzp7czo4OiIAKgB0YWJsZSI7czo1OiJ1c2VycyI7czoxMToiACoAZmlsbGFibGUiO2E6Mzp7aTowO3M6NDoibmFtZSI7aToxO3M6NToiZW1haWwiO2k6MjtzOjg6InBhc3N3b3JkIjt9czo5OiIAKgBoaWRkZW4iO2E6Mjp7aTowO3M6ODoicGFzc3dvcmQiO2k6MTtzOjE0OiJyZW1lbWJlcl90b2tlbiI7fXM6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxMDoiACoAcGVyUGFnZSI7aToxNTtzOjY6ImV4aXN0cyI7YjoxO3M6MTg6Indhc1JlY2VudGx5Q3JlYXRlZCI7YjowO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6Nzp7czoyOiJpZCI7aToxO3M6NDoibmFtZSI7czo2OiJEYW5pZWwiO3M6NToiZW1haWwiO3M6MjE6ImRhbmllbC5wYXNvbkBwYW1hci5wbCI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJDNZRVdCdjhUR1RnTG9SWWNXbmJyQXVMbFM2NThwOGtPekg0M0c2alEuVGw5U1hxWmxhM0JXIjtzOjE0OiJyZW1lbWJlcl90b2tlbiI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDE5LTA0LTEwIDE2OjU4OjI1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDE5LTA0LTEwIDE2OjU4OjI1Ijt9czoxMToiACoAb3JpZ2luYWwiO2E6Nzp7czoyOiJpZCI7aToxO3M6NDoibmFtZSI7czo2OiJEYW5pZWwiO3M6NToiZW1haWwiO3M6MjE6ImRhbmllbC5wYXNvbkBwYW1hci5wbCI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJDNZRVdCdjhUR1RnTG9SWWNXbmJyQXVMbFM2NThwOGtPekg0M0c2alEuVGw5U1hxWmxhM0JXIjtzOjE0OiJyZW1lbWJlcl90b2tlbiI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDE5LTA0LTEwIDE2OjU4OjI1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDE5LTA0LTEwIDE2OjU4OjI1Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTowOnt9czo4OiIAKgBkYXRlcyI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjEwOiJ0aW1lc3RhbXBzIjtiOjE7czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9czoyMDoiACoAcmVtZW1iZXJUb2tlbk5hbWUiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjt9fQ==', 1557775196),
('LOelXoLdqv0joRujgLVUjrUqgfN5oKysJqeib6h7', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDhlOGxrVWdsMVRRQzllS0loZ016bXI3RVIyMFlzQVgxSTVKYXZqeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773642),
('lsUGb2F0ECi9IjeGKJeHQY0Z9GMdq5NrfxelHnz1', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmsyd1I5dHBsdFlOTnpXT283WWp4QWZyUTBDOEplZVFuQ3N6cVV5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773199),
('lUWO2MH5P65ytizBTvUn3DrVq9BYvOqXnipq4IZK', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE5aYjNUSWkwY2pVQU5uOFZtMGNsdGZjWGRoTkRUSTQxUGVMc2c4dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774917),
('lww8FboCbSZVImzXuinGeKSCnHhteWQBqekXM75Y', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1VBOVRBR1gzU1ZGS1J4UENDaExZQnJEOU1qemZ5VnAwbGxGUng0YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773889),
('mjVIgrOUnyFxZ0bI7yPeWv4wk2yHRlfWtJ6gUBX0', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEdzQkpZaHUwNXRUT0EzZ3BheVc1ZWdwMUdUS0tXd2UzZHdhWnc5dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774379),
('mRwz7EklnxH8g2pFAaWygDLIqqkDUKK1qtFajV04', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialNYdng0QVZIR1V2dk5BR05PNU9xOTdiTUV1aXZmZ0d5V0VJREtZTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774918),
('MvURjRKmeCxjbdbx717O7SSXj7B5unkzWPU1dG3y', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0tlcXUyNUNLYVlRRVZyeFF0V3V6ZUNiT01nTFNaN0xwSHRJMGlYMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774732),
('mZ0gAVinFwVtu8thPe9TgafYZ9S3xgIgc9nzBTq7', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXRWVk82bmNXTFpYSFF6OGhmcjRIM01nVENWWVNKVnNOWnFLd2JiUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773286),
('mzs7RYjML8d1KZd9FwhSEDgjvuip5PYer9KQM25Z', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVdEbDFCVjZTS3kyTzl6a1FGMmJUSEkwRGlCTGJ1VTRwbVBYS2dibSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773084),
('n7IADIhtzFQGdb5K1gWTBiSnHHUt1BSMSNGmGN6u', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFdkempJMTRyeVRzaWphYzRHZFR6RjR1Yk9vaTRIZ2piZXJ4NkN5TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773046),
('nA12MwvhMgW52AFUlff5es3WkoRUYd9qC8EcK7MB', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmo5dkptT2lpRlptMWtKTU1Dc252aDU3dkVjTnNvQzJkWjFkUGE0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772731),
('NAuBrawz0uwG3gNDthlJFWLRmxskdh0Kh89RVBVN', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW1mcEdtdkJMcG5xQnVlZHoyZVdmUkJmUzlLQTdSRGhVSWcxRnRpMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772881),
('nDEhpG0FjSUkdF7I5kAWSvW1OYq4RxEJ9mXvWNB5', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUJqNW5aQVZmUnd4Z2o1TG9jTVF1T1lYbUV0SHkzWHFOM1k0UllUaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773011),
('nnlxC8AjkmqY0xtKoAuK4v4fDdBOyraxx0V9ZTG6', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVg0TFVmNzNpM1lCcHZyMlFGMEFBbDRzVm40THJsOXR0OXFwdzZJTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774506),
('Nyp8kv0qHf06iHu0rOxcsBqC3G3jiHUARfJkNsc8', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2FlTnViVGtHU01HdTgwNjhSMUp6ajZMbWwzcHpnRFFPbDV1WVJ0MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774416),
('O0kXr7yIenc9ysVq7XeAxDUqTRbeqEairO1hBoWF', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDIwYlRXZzVHcmIwcnA1cjJuWWNVVGdwOWttSGE4d2tCTzN3OEtZVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772742),
('O9kIK6rDRaOtCicxULUJx4JRKLtYVxoxlgqczgWZ', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2tDbUtzS0x2SVMwZDkzN3lVMnVrY3hMMHNEU1pYbjlzZnFyeW5XbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772680),
('OdgM0qn15XZd1CJSCSWXKUwuN3CTqyxjKphZgsRM', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjdxSW1aZkU1dDRmS0VjWXBNTHRGNjlMNnRhdnRkamlzWThyV1BZWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773285),
('OGBt5zzTNNanhpL0fQuD2rf1d8NxuRPSBi4KxRff', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGo1NnliaDJOOHJ1Z3MzWklWbThjTEdOVzRKVHh3d0RwNHBPT2M1MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772284),
('OiUfBFKUfsHRNVp31eFqgIFOzYcFesqkyYbpuAKf', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2pDYTVyWUZ4djR1ajIzUDdkeXJVdkxBRmdQZ2doOGxRTFJFSnNKViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774337),
('p9KGlfZl4iPEpR4uG3lq63vb3wUMANG9VTLxKpnS', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDRUZ0hTTGpDWVQ3ck1NclZzODRMYUw1U2l6WnQxV0JxY01idWtnNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774245),
('pQrtqeuPI2RNZnKC3GO0HoWLp5WkAOHxdIjlLh8L', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkNuc2hRVXc1SmFWZzNqMEVoZ2Y2YjhlaWlSVUhvTlFWaWxmN2Q4WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772613),
('pRpAZoAoqV7tg1eb2lD5vPuEC5zagvdwN5rD6f6a', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazM0TjRzZmUzVTNvbmFHRnNrRnhHYzBsb3JvUWMxaFZ6VkpKYWVNbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772998),
('PtFuIqDECYCCAX4JqBYzcFSxaRG7v1V7WSP5J05J', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlJDRE9qYThXMEZvZ05Oc3RFMU9tZXpjMlJrMWI2OWQ0emg2SGZSZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772016),
('PvLkh42lLX0Bz9KEka09Pc3O0zq6YkHeFITECEY1', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlJLZVpDZEczeUU5ZENnbkwzcHdPYVBESkRvUVlWb3lJS3Y3T3JOTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xL3JlZi03Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557774526),
('PzRanHQEODDGEfe2Vxf559rKZ4WAuxHWhcBWezth', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW5EeEtBRUQxdnU1ekNmR2pRUndveTdYOFRWWkxYbExITzM2MmJKRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772181),
('qGF3rAPogkBPDy5xUZOqYD4qShXimdGEo6bsH0sz', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVAxVEJGSG9xdVExNGNOa0xHQ1dmTkdIek1lQ1M0eGhnSzNBNzBYcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774523),
('QglYkajAlZlQgCP07GNmIPlZgtIjsTXvGpWR2a8k', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3V3bFMyZkQ2Y0VFOTVlbDdTU2ExN2lGZHBqcFhqbFp5elhrYWZ1aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557775143),
('qlRRwiDPIyw0HKLDeFSJ3hOMebU0O1XPyRQpszkH', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG5QZ0N6Y2RpemFzVXc5YXVxNzRGN09pZ3RRaE5CM2hQQ1NrbnlWdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772986),
('qP79PN1hZwo6IM3kJzRrA1ZTZxd0Afh6lCBbnmIA', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME1OaWE4UzFPY1FtZHBvckZkUE1jU2V6bTBGT0NkQnZYY0RnbFZVZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774522),
('qRhbQjnWsYvgkuZwzSu48e9eebVo6cKib3exMJ4k', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlROelFHY01zcU15RDhYa3hTU1c0UEZkazFJSklPMmRySjNDWGVuZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773055),
('quDxuRjefwSQ1DU5RzJafwNVTc1uNKfbsuPulCAB', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzAwS1ZoS3l2Y1ZEUnh2a3ZKQzZWVTdkNDVBQm45MUFnNTRqSlJvVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772004),
('r493QYwhUEdrk3oWQrohYv2HJnfmdcIaQwhRj5tL', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWZYbkxweklYMnlkeThmQjBSdDJLb3JrV05qd2c1NFJoTTJUUzQ2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774338),
('R981COH6wmXS0CGSCIqfi48hKLMxZbZqwtHdHUjG', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXZpZ3FNWGpXTmtVRHR4UUtDSk9IZGV4Q1BwY2l0SWlZa2dPZEtpNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772082),
('RRzVTH3nudd1856tLDaR3q4lb0CoZbkGPe95Vn6V', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFVVU3hSQ0M4N09mU3NtQ1B0dUlEdjVRRXhEd1VmdlAzMWxrWmVZOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774458),
('RXk7lsaTo8RFWQaiZEa5UYUXPrcqRl4VdAKsPhVW', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWRMMFpSVGFMM2c4ZndNbHZXWDNiYnNZa2owMWVnNWNtUEhGZGJqRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773791),
('S2IaVyF7j1jjOAD4cX330TuSpykHtZolDjdxYQey', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2MyNjNPV0hiOUYyR0FFRUZrMG0zbUxWUnFXdXRVR2FpQ25mNUg3QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773062),
('sEn6c6WWqbtQ4OCsLqStHXVgcvqQUzfjIR0UzVog', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTZ1eGIxUnlsVWJDYUhUb0NSWFE5Y1BaY0s3eXNCS2x1OEg4VmJVcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773864),
('SgTFrVVIvuYadM1FWwiGqhwT4z00hNAHJ5nFxCya', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnhsS2FnUkZ3Z1laZjJOemg0WjZLYXd0YjFJQWdZcWZVTExFaUozRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772230),
('SKlhh1sSV3Q3Fuywgzj4lIlJObjJzvQVRCP4M23Z', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmhZQjdsZWpYNzZDSGlpR3NxS0NseUE0WjNadHhWS01aNEMwVjYweCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xL3JlZi0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557774563),
('sUIApnfPNElzGfIJoMc4MOv2yrGFJfSeb9ij0v5k', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFpEOTVLcFJoQlFQRHJmTkRMWlE1TVdDMlFGdW9HMHlOUzJrdVc2NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772210),
('t0qlsv8h4CDQ34YKtO2olRTEdc5GSJ0WaU5Xp2LY', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmRJbDJCZkpsTmpITGdBZHFZMEhLcG9VWEl2YktwSEpvWjIwcHh0bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774457),
('TOd9I2DVcWnbIAort1nVGFjecdhjR2DV0Kr8n0k0', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHVNbGRMdUVJdEIxWGZkdFB6eGl4VVFWcUtLR1hrM1NxWk40a1dmYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L25ld3MvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774186),
('u9Qn4VsyCy4CvvDTx2xRi3Wzc9z17EMppwKWUyYc', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjZiaW44OEozZWh3V2Uzb0VneVptbGhoaUswVTI0YzRYMlozaG0xVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773145),
('ud1eOaupi9lK1SotWzyskIWwNBUcOv3jrqIGjGg0', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0k3czBOT2JtbG9TNWs4TWplVWRudnJMelc3WEwzWHhUb3pDYk1lNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774632),
('UjrzmVry06baz0oLmQeksXtbuBbVJyZLiTAAAyCB', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEZnbnFDa2hBU3RMUHM4R0tOaGlHTW1PZ1NKSzNGTnBEekhaV0dMdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL3dvcmtzcGFjZS9iYWNrZW5kL3B1YmxpYy9hcGkvZ2V0X3BhZ2VfY29udGVudC9pbmRleC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1557771352),
('UmFmyZsEJ9XHFuLR8aS7Zrtnd6sS9SzBHNUU5bVr', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXB4OVk3MDFpeXJRWXRKQndOdkp4Ym0xVVdkVnVzWmc1ZWlCblR2ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773624),
('uq3SBc0K7W4x5OBfvmDTsmhcSTIQfeshQJ4Sxwmg', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWklLSkxFUzY2SDdTTzM0dEV4QzBUNnVqYmNmRjBCc2ZDaDZtV0VpaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773649),
('v6R6CsyvCp9gDOZU3r4ruKMXVfQKLiRlMemU5b4n', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3pUT0Z1ZmtsbVF2ZUdibjZOMUpVYlRnMmtZQUhJZVFBOWJDN1NBViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774141),
('VBoahRJpDPMEzJ3jOs0wwbflrLHKtCS2bAAJ0d0O', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG1JdVZSaUtCMkdxUzZRU1lLbEJPVkZrWE9Ka1BvTlVVSzgzaXVYNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L25ld3NfZGV0YWlscy8xL25ld3MtMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774149),
('VqxDGCYVq6bUIU6ojnDpJCQSy6sMEHLin64JpkhQ', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0g0TVhQWHRDblVySkhKenlFR3htWlJUY3NTc2ZDVlprWnFQY2swciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2Fib3V0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773127),
('vwlDlBBsghcrghjmijpBcv1C29QkJka8bHTENsZA', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnpVaUE4MXNjeFpQUEtGYVYzTUExRDhHNEpmdUNZNHR2Z0N6QTUyZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557772588);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VY0ma2VKDrammqm3l3hY1PMxz7Gtiwg8S5rzyOVU', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUlZRXRWOHVuRFROYTZMOTVQNkMxWFVSZk5VWFpXYmZURExVTWdCZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772930),
('w2uAkdwNrpaIB5bTsIZYYFidGmpEsOmm3mbe56Lq', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3dYOHpoR1pmUW5WWnNvNGM5QThvMHNLMXJuN0FuWVBuTDZrMHRHeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774757),
('W5Eg6M2qY8OTIey8uaQNIaBvzmzyrv8PquEonysY', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUpGUjF0QXk1VTBCU29mTmR2U2VhSE9NNHFSV1kwYUhXWHhKTHdnNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774835),
('WC0L1AadIDDeTGvSmv8Um5GLMdxheKsOhkOs0F2r', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidU9TTmpWb2s0c1dxWEhDMnltcGlOcXl1UmQ4OHJmcmFpR1QyS1VyRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773367),
('WEFykvCVLtSP7YgRBLr9zuxqtS95qCqsOXFQ2dIk', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkZhVjNod3JGa3NUeVhpamYzZ3Z5SVFzeVdvUlM5WTljVlN4Y0dsMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772718),
('Wnaq10OMxYdFxV2eNW09h3bxFlwcVm5h7SpwNmwV', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1p6cW1SY1FwVXluU2U0T3FyZ2V1RE5JREpXN0haY2dRMFBsRVV0WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773124),
('wOJbIhVEwb8i8sSms50PN8mpXNgBAS3HWrfKy3z0', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkxSRzY4Q3RmcHRyOVJxUDZOY1dtaHlESVN3WXBZd2dYMjVZRjRDaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772983),
('WQSDHA3oGNWoplLSzPy5oq4nj6d6zbzLy3W3OiEt', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2hMQzJLdEF2Ymk2S2RMSHJhSVlrclF0SklRVGZrSlE1T1E2R2hFZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772937),
('wz0XatlNBMauIaBmtFICEi1utprhxLQWF5xouSnm', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0x5aFFlUHhwb2VTd1NpVjBpRWM2TGEzcmNad2NNV1kyYXJzVjF0aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557774742),
('XPf7kPrxh6qibkthWuJgE0fl0Mw0NfgvExlQG2w4', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUFxRVZlVVFweGRwUUxtazhtYW90VlB4NHNtblVndUJPMEZ5TkZqaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774647),
('xq2KPXSAXmCe8AXNkjg3kuFK0V23dSdEFdauXSoI', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ292OTlXMEdWUTR2VFlRRUtiN2JtWEYxOHJxRXN3dXlCMk9DRzVONyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774198),
('xQUjOhg1k0LK15beXJ9fHkwm8VTwEEjQGkC7kGKC', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaERsN3lVa0JoYXVUSldXdmxydjFGWk1BWkZHUklEZWJUTjRSOG5tZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L25ld3MvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772940),
('YWWlDUe770cw3SHZJbVirrUCnqz7DEW6ceJW5Bzy', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajBpYnQ5UU5JeXNISDlJaGdlbXBzUXNFY2VOdllqTjVzTm5ZcExrcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557775221),
('Z59EMJCfs4YYDGilM6wMHe0SQoMLuTiedbg23vlt', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblZUeml1ZHFKZVZDVFE4WXpCTmc5ejJuUnc1SjQ1T0dPMW85Uk56NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njc6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2luZGV4LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557773240),
('z88QxDVAY5hBkXQIoZrefo92MGvViYr48o9Ynqnp', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVdtVkZ2OFNzeEQ0SVVacjI0OWZPOHBuZWZ3SmxWUWh1NTZjTzI3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L2V4cGVyaWFuY2UvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557772766),
('zjnosfkhcrVBWKVPiWTx4ky81EBf7DaqSkqYeaSl', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU1Hdm90RWgzZldtbVRWMmlUcTg1M3ZuRnVlZGZlRTZVbkZvbTFwZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L25ld3NfZGV0YWlscy8xL25ld3MtMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1557773884),
('zNuS047fFZZQ2ow9VV8dsKPLqOIQmriap5NzFijw', NULL, '46.41.144.57', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME5wY3MxWmxJbk1TVnJ3N1NOSUNvR0tmMU1CS3d6NHRtUWQySkI1ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODI6Imh0dHA6Ly9wYW1hcnBzemN6eW5hLnBsL2JhY2tlbmQvcHVibGljL2FwaS9nZXRfcGFnZV9jb250ZW50L3JlZmVyZW5jZXNfZGV0YWlscy8xLzQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1557774558);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `translates`
--

CREATE TABLE IF NOT EXISTS `translates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pl',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `translates`
--

INSERT INTO `translates` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, NULL, 'Pl'),
(2, NULL, NULL, 'En');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;


--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dictionaries`
--
ALTER TABLE `dictionaries`
  ADD CONSTRAINT `dictionaries_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `dictionaries_translate_id_foreign` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `experiances`
--
ALTER TABLE `experiances`
  ADD CONSTRAINT `experiance_translate_id_fk` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `experiances__groups_id_fk` FOREIGN KEY (`experiance_group_id`) REFERENCES `experiances__groups` (`id`),
  ADD CONSTRAINT `experiances_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `experiances_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `experiances__groups`
--
ALTER TABLE `experiances__groups`
  ADD CONSTRAINT `translate_id` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`);

--
-- Ograniczenia dla tabeli `experiances__list_items`
--
ALTER TABLE `experiances__list_items`
  ADD CONSTRAINT `experiances__list_items_experiance_id_foreign` FOREIGN KEY (`experiance_id`) REFERENCES `experiances` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `files__translates`
--
ALTER TABLE `files__translates`
  ADD CONSTRAINT `files__translates_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `files__translates_translate_id_foreign` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `galleries__descriptions`
--
ALTER TABLE `galleries__descriptions`
  ADD CONSTRAINT `galleries__descriptions_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `galleries__descriptions_translate_id_foreign` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `galleries__images`
--
ALTER TABLE `galleries__images`
  ADD CONSTRAINT `galleries__images_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `galleries__images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `news_description`
--
ALTER TABLE `news_description`
  ADD CONSTRAINT `news_desc_news_fk` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `news_file_fb` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `news_gallery_fk` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `news_translate_fk` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `project_references_description`
--
ALTER TABLE `project_references_description`
  ADD CONSTRAINT `reference_reference_description_fk` FOREIGN KEY (`reference_id`) REFERENCES `project_references` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `references_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `references_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `references_translate_id_fk` FOREIGN KEY (`translate_id`) REFERENCES `translates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
