-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2022 at 09:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `arabic_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso2` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso3` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital_english` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital_arabic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_in_kilometer_square` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tld` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subregion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezones` json DEFAULT NULL,
  `translations` json DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emoji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emojiU` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `english_name`, `arabic_name`, `iso2`, `iso3`, `phone_code`, `capital_english`, `capital_arabic`, `area_in_kilometer_square`, `currency`, `currency_name_en`, `currency_name_ar`, `currency_symbol`, `tld`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`) VALUES
(1, 'Yemen', 'اليَمَن', 'YEM', 'YE', '967', 'Sanaa', 'صنعاء', '555000', 'YER', 'Yemeni rial', 'ريال يمني', '﷼', '.ye', 'Asia', 'Western Asia', '[{\"tzName\": \"Arabia Standard Time\", \"zoneName\": \"Asia/Aden\", \"gmtOffset\": 10800, \"abbreviation\": \"AST\", \"gmtOffsetName\": \"UTC+03:00\"}]', '{\"br\": \"Iêmen\", \"cn\": \"也门\", \"de\": \"Jemen\", \"es\": \"Yemen\", \"fa\": \"یمن\", \"fr\": \"Yémen\", \"hr\": \"Jemen\", \"it\": \"Yemen\", \"ja\": \"イエメン\", \"kr\": \"예멘\", \"nl\": \"Jemen\", \"pt\": \"Iémen\", \"tr\": \"Yemen\"}', '15.00000000', '48.00000000', '🇾🇪', 'U+1F1FE U+1F1EA');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `governorates_id` bigint UNSIGNED NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar_tashkeel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar_normalized` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en_normalized` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `governorates_id`, `name_ar`, `name_en`, `name_ar_tashkeel`, `name_ar_normalized`, `name_en_normalized`) VALUES
(1, 1, 'صنعاء القديمة', 'Sana\'a Al-qdimah', 'صَنْعاء القَدِيمَة', 'صنعاء القديمه', 'Sanaa Al qdimah'),
(2, 1, 'آزَاْل', 'Azal', 'آزَاْل', 'ازال', 'Azal'),
(3, 1, 'الصافية', 'Al-Safiah', 'الصَّافِيَة', 'الصافيه', 'Al Safiah'),
(4, 1, 'السبعين', 'Al-Sabe\'en', 'السَّبْعِين', 'السبعين', 'Al Sabeen'),
(5, 1, 'شعوب', 'Sh\'oob', 'شُعُوْب', 'شعوب', 'Shoob'),
(6, 1, 'الوحدة', 'Al-Wehdah', 'الوِحْدَة', 'الوحده', 'Al Wehdah'),
(7, 1, 'التحرير', 'Al-Tahrir', 'التَّحْرِير', 'التحرير', 'Al Tahrir'),
(8, 1, 'الثورة', 'Al-Thowarah', 'الثَّوْرَة', 'الثوره', 'Al Thowarah'),
(9, 1, 'معين', 'Maeen', 'مَعَيْن', 'معين', 'Maeen'),
(10, 1, 'بني الحارث', 'Bni Al-Harith', 'بَنِيْ الحَارِث', 'بني الحارث', 'Bni Al Harith'),
(11, 2, 'همدان', 'Hamdan', 'هَمْدَان', 'همدان', 'Hamdan'),
(12, 2, 'أرحب', 'Arhab', 'أَرْحَب', 'ارحب', 'Arhab'),
(13, 2, 'جحانة', 'Jihanah', 'جِحانْة', 'جحانه', 'Jihanah'),
(14, 2, 'بلاد الروس', 'Bilad AL-Roos', 'بِلَاد الرُّوْس', 'بلاد الروس', 'Bilad AL Roos'),
(15, 2, 'سنحان', 'Sanhan', 'سَنْحَان', 'سنحان', 'Sanhan'),
(16, 2, 'الحصن', 'Al-Hisn', 'الحِصْن', 'الحصن', 'Al Hisn'),
(17, 2, 'صعفان', 'Sa\'fan', 'صَعْفان', 'صعفان', 'Safan'),
(18, 2, 'بني حشيش', 'Bni Hishaish', 'بَنِي حِشِيْش', 'بني حشيش', 'Bni Hishaish'),
(19, 2, 'الطيال', 'Al-Tial', 'الطِّيَال', 'الطيال', 'Al Tial'),
(20, 2, 'خولان', 'Khawlan', 'خَوْلَان', 'خولان', 'Khawlan'),
(21, 2, 'بني ضبيان', 'Bni Dhabian', 'بَنِيَ ضَبْيَان', 'بني ضبيان', 'Bni Dhabian'),
(22, 2, 'الحيمة الخارجية', 'AL-Haimah Al-Kharijiah', 'الحَيْمَة الخَارِجِيَّة', 'الحيمه الخارجيه', 'AL Haimah Al Kharijiah'),
(23, 2, 'الحيمة الداخلية', 'Al-Haimah Al-Dakhiliah', 'الحَيْمَة الدَّاخِلِيَّة', 'الحيمه الداخليه', 'Al Haimah Al Dakhiliah'),
(24, 2, 'مناخة', 'Manakhah', 'مَنَاخَة', 'مناخه', 'Manakhah'),
(25, 2, 'نهم', 'Nihm', 'نِهْم', 'نهم', 'Nihm'),
(26, 2, 'بني مطر', 'Bni Matar', 'بَنِي مَطَر', 'بني مطر', 'Bni Matar'),
(27, 3, 'دار سعد', 'Dar Saad', 'دَار سَعْد', 'دار سعد', 'Dar Saad'),
(28, 3, 'الشيخ عثمان', 'Al-Shaikh Othman', 'الشَّيْخ عُثْمَان', 'الشيخ عثمان', 'Al Shaikh Othman'),
(29, 3, 'المنصورة', 'Al-Mansorah', 'المَنْصُورَة', 'المنصوره', 'Al Mansorah'),
(30, 3, 'البريقة', 'Al-Boriqah', 'البُرَيْقَة', 'البريقه', 'Al Boriqah'),
(31, 3, 'التواهي', 'Al-Tawwahi', 'التَّوَّاهِي', 'التواهي', 'Al Tawwahi'),
(32, 3, 'خور مكسر', 'Khoor Maksar', 'خُوْر مَكَسَر', 'خور مكسر', 'Khoor Maksar'),
(33, 3, 'صيرة', 'Seerh', 'صِيْرَة', 'صيره', 'Seerh'),
(34, 3, 'المعلا', 'Al-Mo\'alla', 'المُعَلَّا', 'المعلا', 'Al Moalla'),
(35, 4, 'بيت الفقية', 'Bait Al-Fakih', 'بَيْت الفَقِيْة', 'بيت الفقيه', 'Bait Al Fakih'),
(36, 4, 'التحيتا', 'Al-Tohaita', 'التُّحَيْتَا', 'التحيتا', 'Al Tohaita'),
(37, 4, 'كمران', 'Kamaran', 'كَمَرَان', 'كمران', 'Kamaran'),
(38, 4, 'الخوخة', 'Al-Khookhah', 'الخُوْخُة', 'الخوخه', 'Al Khookhah'),
(39, 4, 'الدريهمي', 'Al-Doraihmi', 'الدُرَيْهِمِي', 'الدريهمي', 'Al Doraihmi'),
(40, 4, 'اللحية', 'Al-Luhayyah', 'اللُّحَيَّة', 'اللحيه', 'Al Luhayyah'),
(41, 4, 'زبيد', 'Zabeed', 'زَبِيْد', 'زبيد', 'Zabeed'),
(42, 4, 'جبل راس', 'Jabal Raas', 'جَبَل رَاس', 'جبل راس', 'Jabal Raas'),
(43, 4, 'المراوعة', 'Al-Marawiah', 'المَرَاوِعَة', 'المراوعه', 'Al Marawiah'),
(44, 4, 'الجراحي', 'Al-Jarrahi', 'الجَّرَّاحِي', 'الجراحي', 'Al Jarrahi'),
(45, 4, 'الزهرة', 'Al-Zuhrah', 'الزُّهْرَة', 'الزهره', 'Al Zuhrah'),
(46, 4, 'المغلاف', 'Al-Mighlaf', 'المِغْلَاف', 'المغلاف', 'Al Mighlaf'),
(47, 4, 'المنصورية', 'Al-Mansoriah', 'المَنْصُورِيَّة', 'المنصوريه', 'Al Mansoriah'),
(48, 4, 'الزيدية', 'Al-Zaydiyah', 'الزَّيْدِيَة', 'الزيديه', 'Al Zaydiyah'),
(49, 4, 'الحالي', 'Al-Hali', 'الحَالِي', 'الحالي', 'Al Hali'),
(50, 4, 'الحجيلة', 'Al-Hojailah', 'الحُجَّيْلَة', 'الحجيله', 'Al Hojailah'),
(51, 4, 'السخنة', 'Al-Sokhnah', 'السُّخْنَة', 'السخنه', 'Al Sokhnah'),
(52, 4, 'المنيرة', 'Al-Munirah', 'المُنِيْرَة', 'المنيره', 'Al Munirah'),
(53, 4, 'الحوك', 'Al-Hook', 'الحَوَك', 'الحوك', 'Al Hook'),
(54, 4, 'الصليف', 'Al-Saleef', 'الصَّلِيْف', 'الصليف', 'Al Saleef'),
(55, 4, 'الميناء', 'Al-Mena', 'المِيْنَاء', 'الميناء', 'Al Mena'),
(56, 4, 'باجل', 'Bajil', 'بَاجِل', 'باجل', 'Bajil'),
(57, 4, 'الضحي', 'Al-Dhahi', 'الضَّحِي', 'الضحي', 'Al Dhahi'),
(58, 4, 'حيس', 'Hais', 'حَيْس', 'حيس', 'Hais'),
(59, 4, 'القناوص', 'Al-Qnawis', 'القَنَاوِص', 'القناوص', 'Al Qnawis'),
(60, 4, 'برع', 'Bora', 'بُرَع', 'برع', 'Bora'),
(61, 5, 'جهران', 'Jhran', 'جَهْرَان', 'جهران', 'Jhran'),
(62, 5, 'عتمة', 'Otmah', 'عُتْمَة', 'عتمه', 'Otmah'),
(63, 5, 'ميفعة عنس', 'Mayfa’at Ans', 'مَيْفَعَة عَنْس', 'ميفعه عنس', 'Mayfa’at Ans'),
(64, 5, 'الحداء', 'Al-Hada', 'الحَدَاء', 'الحداء', 'Al Hada'),
(65, 5, 'عنس', 'Ans', 'عَنْس', 'عنس', 'Ans'),
(66, 5, 'وصاب السافل', 'Wosab Al-Safil', 'وِصَاب السَّافِل', 'وصاب السافل', 'Wosab Al Safil'),
(67, 5, 'وصاب العالي', 'Wosab Al-Aali', 'وِصَاب العَالِي', 'وصاب العالي', 'Wosab Al Aali'),
(68, 5, 'جبل الشرق', 'Jabal Al-Sharq', 'جَبَل الشَّرْق', 'جبل الشرق', 'Jabal Al Sharq'),
(69, 5, 'المنار', 'Al-Manar', 'المَنَار', 'المنار', 'Al Manar'),
(70, 5, 'مغرب عنس', 'Maghrib Ans', 'مَغْرِب عَنْس', 'مغرب عنس', 'Maghrib Ans'),
(71, 5, 'ضوران آنس', 'Dhoran Aanis', 'ضُوْرَان آنِس', 'ضوران انس', 'Dhoran Aanis'),
(72, 5, 'مدينة ذمار', 'Thamar City', 'مَدِيْنَة ذَمَار', 'مدينه ذمار', 'Thamar City'),
(73, 6, 'حرف سفيان', 'Harf Sofian', 'حَرْف سُفْيَان', 'حرف سفيان', 'Harf Sofian'),
(74, 6, 'حوث', 'Hooth', 'حُوْث', 'حوث', 'Hooth'),
(75, 6, 'العشة', 'Al-Ashah', 'العَشِّة', 'العشه', 'Al Ashah'),
(76, 6, 'قفلة عذر', 'Qiflt Ethar', 'قِفْلَة عِذَر', 'قفله عذر', 'Qiflt Ethar'),
(77, 6, 'شهارة', 'Shaharah', 'شَهَارَة', 'شهاره', 'Shaharah'),
(78, 6, 'المدان', 'Al-Madan', 'المَدَان', 'المدان', 'Al Madan'),
(79, 6, 'صوير', 'Sowair', 'صُوَيْر', 'صوير', 'Sowair'),
(80, 6, 'ظليمة حبور', 'Dholaimah Haboor', 'ظُلَيْمَة حَبُوْر', 'ظليمه حبور', 'Dholaimah Haboor'),
(81, 6, 'السودة', 'Al-Sawdah', 'السَّوْدَة', 'السوده', 'Al Sawdah'),
(82, 6, 'خمر', 'Khamer', 'خَمِر', 'خمر', 'Khamer'),
(83, 6, 'ذيبين', 'Thibain', 'ذِيْبَيْن', 'ذيبين', 'Thibain'),
(84, 6, 'خارف', 'Kharif', 'خَارِف', 'خارف', 'Kharif'),
(85, 6, 'ريدة', 'Raidah', 'رَيْدَة', 'ريده', 'Raidah'),
(86, 6, 'جبل عيال يزيد', 'Eyal Yazeed Mountain', 'جَبَل عِيَال يَزِيْد', 'جبل عيال يزيد', 'Eyal Yazeed Mountain'),
(87, 6, 'السود', 'Al-Sawd', 'السَّوْد', 'السود', 'Al Sawd'),
(88, 6, 'عمران', 'Amran', 'عَمْرَان', 'عمران', 'Amran'),
(89, 6, 'مسور', 'Maswar', 'مَسْوَر', 'مسور', 'Maswar'),
(90, 6, 'ثلا', 'Thula', 'ثُلَا', 'ثلا', 'Thula'),
(91, 6, 'عيال سريح', 'Eial Sraih', 'عِيْال سُرَيْح', 'عيال سريح', 'Eial Sraih'),
(92, 6, 'بني صريم', 'Bni Soraim', 'بَنِي صُرَيْم', 'بني صريم', 'Bni Soraim'),
(93, 7, 'بكيل المير', 'Bakel Al-Meer', 'بَكِيْل المِيْر', 'بكيل المير', 'Bakel Al Meer'),
(94, 7, 'بني العوام', 'Bni Al-Awam', 'بَنِي العَوّام', 'بني العوام', 'Bni Al Awam'),
(95, 7, 'أفلح الشام', 'Aflah Al-Sham', 'أَفْلَح الشَّام', 'افلح الشام', 'Aflah Al Sham'),
(96, 7, 'أفلح اليمن', 'Aflah Al-Yemen', 'أَفْلَح اليَمَن', 'افلح اليمن', 'Aflah Al Yemen'),
(97, 7, 'بني قيس الطور', 'Bni Qais Al-Tawr', 'بَنِي قَيْس الطَُوْر', 'بني قيس الطور', 'Bni Qais Al Tawr'),
(98, 7, 'كحلان الشرف', 'Kohlan Al-Sharaf', 'كُحْلَان الشَّرَف', 'كحلان الشرف', 'Kohlan Al Sharaf'),
(99, 7, 'كحلان عفار', 'Qohlan Affar', 'كُحْلَان عَفَّار', 'كحلان عفار', 'Qohlan Affar'),
(100, 7, 'خيران المحرق', 'Khiran Al-Mahrraq', 'خَيْرَان المُحَرَّق', 'خيران المحرق', 'Khiran Al Mahrraq'),
(101, 7, 'حجة', 'Hajjah', 'حَجَّة', 'حجه', 'Hajjah'),
(102, 7, 'مدينة حجة', 'Hajjah City', 'مَدِيْنَة حَجَّة', 'مدينه حجه', 'Hajjah City'),
(103, 7, 'قفل شمر', 'Qufl Shamar', 'قُفْل شَمَر', 'قفل شمر', 'Qufl Shamar'),
(104, 7, 'قارة', 'Qarah', 'قَارَة', 'قاره', 'Qarah'),
(105, 7, 'أسلم', 'Aslm', 'أَسْلَم', 'اسلم', 'Aslm'),
(106, 7, 'الجميمة', 'Al-Jamimah', 'الجَمِيْمَة', 'الجميمه', 'Al Jamimah'),
(107, 7, 'وشحة', 'Wishhah', 'وِشْحَة', 'وشحه', 'Wishhah'),
(108, 7, 'الشغادرة', 'Al-Shaghadrah', 'الشَّغَادِرَة', 'الشغادره', 'Al Shaghadrah'),
(109, 7, 'المحابشة', 'Al-Mahabishah', 'المَحَابِشَة', 'المحابشه', 'Al Mahabishah'),
(110, 7, 'المغربة', 'Al-Maghribah', 'المَغْرِبَة', 'المغربه', 'Al Maghribah'),
(111, 7, 'المفتاح', 'Al-Miftah', 'المِفْتَاح', 'المفتاح', 'Al Miftah'),
(112, 7, 'حرض', 'Haradh', 'حَرَض', 'حرض', 'Haradh'),
(113, 7, 'حيران', 'Hairan', 'حَيْرَان', 'حيران', 'Hairan'),
(114, 7, 'كشر', 'Koshar', 'كُشَر', 'كشر', 'Koshar'),
(115, 7, 'شرس', 'Sharis', 'شَرِس', 'شرس', 'Sharis'),
(116, 7, 'عبس', 'Abs', 'عَبْس', 'عبس', 'Abs'),
(117, 7, 'كعيدنة', 'Koa\'dnah', 'كُعَيْدِنَة', 'كعيدنه', 'Koadnah'),
(118, 7, 'مبين', 'Mabian', 'مَبْيَن', 'مبين', 'Mabian'),
(119, 7, 'الشاهل', 'Al-Shahil', 'الشَّاهِل', 'الشاهل', 'Al Shahil'),
(120, 7, 'وضرة', 'Wdhrah', 'وَضْرَة', 'وضره', 'Wdhrah'),
(121, 7, 'مستباء', 'Mostaba\'', 'مُسْتَبَاء', 'مستباء', 'Mostaba'),
(122, 7, 'ميدي', 'Meedi', 'مِيْدِي', 'ميدي', 'Meedi'),
(123, 7, 'نجرة', 'Najrah', 'نَجْرَة', 'نجره', 'Najrah'),
(124, 8, 'العدين', 'Al-Odain', 'العُدَيْن', 'العدين', 'Al Odain'),
(125, 8, 'إب', 'Ibb', 'إِب', 'اب', 'Ibb'),
(126, 8, 'بعدان', 'Ba\'dan', 'بَعْدَان', 'بعدان', 'Badan'),
(127, 8, 'جبلة', 'Jiblah', 'جِبْلَة', 'جبله', 'Jiblah'),
(128, 8, 'النادرة', 'Al-Nadrah', 'النَّادِرَة', 'النادره', 'Al Nadrah'),
(129, 8, 'حبيش', 'Hobaish', 'حُبَيْش', 'حبيش', 'Hobaish'),
(130, 8, 'حزم العدين', 'Hazm Al-Odain', 'حَزْم العُدَيْن', 'حزم العدين', 'Hazm Al Odain'),
(131, 8, 'ذي السفال', 'Thi Al-Sufal', 'ذِي السُّفَال', 'ذي السفال', 'Thi Al Sufal'),
(132, 8, 'الرضمة', 'Al-Radhmah', 'الرَّضْمَة', 'الرضمه', 'Al Radhmah'),
(133, 8, 'السبرة', 'Al-Sabrah', 'السَّبْرَة', 'السبره', 'Al Sabrah'),
(134, 8, 'السدة', 'Al-Saddah', 'السَّدَّة', 'السده', 'Al Saddah'),
(135, 8, 'السياني', 'Al-Syiani', 'السَّيَّانِي', 'السياني', 'Al Syiani'),
(136, 8, 'الشعر', 'Al-Sha\'ir', 'الشَّعِر', 'الشعر', 'Al Shair'),
(137, 8, 'الظهار', 'Al-Dhahar', 'الظَّهَار', 'الظهار', 'Al Dhahar'),
(138, 8, 'فرع العدين', 'Fara\' Al-Odain', 'فَرْع العُدَيْن', 'فرع العدين', 'Fara Al Odain'),
(139, 8, 'القفر', 'Al-Qafr', 'القَفْر', 'القفر', 'Al Qafr'),
(140, 8, 'المخادر', 'Al-Makhadrh', 'المَخَادِر', 'المخادر', 'Al Makhadrh'),
(141, 8, 'مذيخرة', 'Mothaikhrah', 'مُذَيْخِرَة', 'مذيخره', 'Mothaikhrah'),
(142, 8, 'المشنة', 'Al-Mashnnah', 'المَشَنَّة', 'المشنه', 'Al Mashnnah'),
(143, 8, 'يريم', 'Yareem', 'يَرِيْم', 'يريم', 'Yareem'),
(144, 9, 'الحشوة', 'Al-Hishwah', 'الحِشْوَة', 'الحشوه', 'Al Hishwah'),
(145, 9, 'الصفراء', 'Al-Safra\'a', 'الصَّفْرَاء', 'الصفراء', 'Al Safraa'),
(146, 9, 'الظاهر', 'Al-Dhahir', 'الظَّاهِر', 'الظاهر', 'Al Dhahir'),
(147, 9, 'باقم', 'Baqim', 'بَاقِم', 'باقم', 'Baqim'),
(148, 9, 'حيدان', 'Haidan', 'حَيْدَان', 'حيدان', 'Haidan'),
(149, 9, 'رازح', 'Razih', 'رَازِح', 'رازح', 'Razih'),
(150, 9, 'ساقين', 'Saqain', 'سَاقَيْن', 'ساقين', 'Saqain'),
(151, 9, 'سحار', 'Sahar', 'سَحَار', 'سحار', 'Sahar'),
(152, 9, 'شداء', 'Shida\'a', 'شِدَاء', 'شداء', 'Shidaa'),
(153, 9, 'صعدة', 'Sa\'dah', 'صَعْدَة', 'صعده', 'Sadah'),
(154, 9, 'غمر', 'Ghamer', 'غَمَر', 'غمر', 'Ghamer'),
(155, 9, 'قطابر', 'Qatabir', 'قَطَابِر', 'قطابر', 'Qatabir'),
(156, 9, 'كتاف والبقع', 'Kitaf and Bog\'', 'كِتَاف وَالبُقْع', 'كتاف والبقع', 'Kitaf and Bog'),
(157, 9, 'مجز', 'Majz', 'مَجْز', 'مجز', 'Majz'),
(158, 9, 'منبه', 'Munabbih', 'مُنَبِّه', 'منبه', 'Munabbih'),
(159, 10, 'مدينة البيضاء', 'Al-Baidha City', 'مَدِينَة البَيْضَاء', 'مدينه البيضاء', 'Al Baidha City'),
(160, 10, 'البيضاء', 'Al-Baidha', 'البَيْضَاء', 'البيضاء', 'Al Baidha'),
(161, 10, 'الزاهر', 'Al-Zaher', 'الزَّاهِر', 'الزاهر', 'Al Zaher'),
(162, 10, 'ردمان', 'Radman', 'رَدْمَان', 'ردمان', 'Radman'),
(163, 10, 'الرياشية', 'Al-Riashiah', 'الرِّيَاشِيَّة', 'الرياشيه', 'Al Riashiah'),
(164, 10, 'السوادية', 'Al-Swadiah', 'السُّوَادِيَّة', 'السواديه', 'Al Swadiah'),
(165, 10, 'الشرية', 'Al-Shariah', 'الشَرِيَّة', 'الشريه', 'Al Shariah'),
(166, 10, 'صباح', 'Sabah', 'صَبَاح', 'صباح', 'Sabah'),
(167, 10, 'الصومعة', 'Al-Sawma\'ah', 'الصَّوْمَعَة', 'الصومعه', 'Al Sawmaah'),
(168, 10, 'الطفة', 'Al-Tiffah', 'الطَّفَّة', 'الطفه', 'Al Tiffah'),
(169, 10, 'العرش', 'Al-Arsh', 'العَرْش', 'العرش', 'Al Arsh'),
(170, 10, 'القريشية', 'Al-Qurishiah', 'القُرَيْشِيَّة', 'القريشيه', 'Al Qurishiah'),
(171, 10, 'ذي ناعم', 'Thi Na\'em', 'ذِي نَاعِم', 'ذي ناعم', 'Thi Naem'),
(172, 10, 'مسورة', 'Maswarah', 'مَسْوَرَة', 'مسوره', 'Maswarah'),
(173, 10, 'مكيراس', 'Mukiras', 'مُكَيْرَاس', 'مكيراس', 'Mukiras'),
(174, 10, 'الملاجم', 'Al-Malajim', 'المَلَاجِم', 'الملاجم', 'Al Malajim'),
(175, 10, 'ناطع', 'Nati\'', 'نَاطِع', 'ناطع', 'Nati'),
(176, 10, 'نعمان', 'Na\'man', 'نَعْمَان', 'نعمان', 'Naman'),
(177, 10, 'ولد ربيع', 'Wild Rabee\'', 'وِلْد رَبِيْع', 'ولد ربيع', 'Wild Rabee'),
(178, 10, 'رداع', 'Rada\'', 'رَدَاع', 'رداع', 'Rada'),
(179, 11, 'الروضة', 'Al-Rawdhah', 'الرَّوْضَة', 'الروضه', 'Al Rawdhah'),
(180, 11, 'بيحان', 'Bayhan', 'بَيْحَان', 'بيحان', 'Bayhan'),
(181, 11, 'جردان', 'Jardan', 'جَرْدَان', 'جردان', 'Jardan'),
(182, 11, 'حبان', 'Habban', 'حَبَّان', 'حبان', 'Habban'),
(183, 11, 'عين', 'Ain', 'عَيْن', 'عين', 'Ain'),
(184, 11, 'حطيب', 'Hotaib', 'حُطَيْب', 'حطيب', 'Hotaib'),
(185, 11, 'دهر', 'Duhur', 'دُهُر', 'دهر', 'Duhur'),
(186, 11, 'رضوم', 'Rudhoom', 'رُضُوْم', 'رضوم', 'Rudhoom'),
(187, 11, 'الصعيد', 'Al-Sa\'eed', 'الصَّعِيْد', 'الصعيد', 'Al Saeed'),
(188, 11, 'الطلح', 'Al-Talh', 'الطَّلْح', 'الطلح', 'Al Talh'),
(189, 11, 'عتق', 'Ataq', 'عَتَق', 'عتق', 'Ataq'),
(190, 11, 'عرماء', 'Arma\'', 'عَرْمَاء', 'عرماء', 'Arma'),
(191, 11, 'عسيلان', 'Osailan', 'عُسَيْلَان', 'عسيلان', 'Osailan'),
(192, 11, 'مرخة السفلى', 'Markhah Al-Sofla', 'مَرْخَة السُّفْلَى', 'مرخه السفلا', 'Markhah Al Sofla'),
(193, 11, 'مرخة العليا', 'Markhah Al-Olia', 'مَرْخَة العُلْيَا', 'مرخه العليا', 'Markhah Al Olia'),
(194, 11, 'ميفعة', 'Maifa\'h', 'مَيْفَعَة', 'ميفعه', 'Maifah'),
(195, 11, 'نصاب', 'Nesab', 'نِصَاب', 'نصاب', 'Nesab'),
(196, 12, 'ماوية', 'Mawiah', 'مَاوِيَة', 'ماويه', 'Mawiah'),
(197, 12, 'شرعب السلام', 'Shara\'b Al-Salam', 'شَرْعَب السَّلَام', 'شرعب السلام', 'Sharab Al Salam'),
(198, 12, 'شرعب الرونة', 'Shara\'b Al-Rawnah', 'شَرْعَب الرَّوْنَة', 'شرعب الرونه', 'Sharab Al Rawnah'),
(199, 12, 'مقبنة', 'Maqbana', 'مَقْبَنَة', 'مقبنه', 'Maqbana'),
(200, 12, 'المخا', 'Al-Makha', 'المَخَا', 'المخا', 'Al Makha'),
(201, 12, 'ذباب', 'Thubab', 'ذُبَاب', 'ذباب', 'Thubab'),
(202, 12, 'موزع', 'Mawza\'', 'مَوْزَع', 'موزع', 'Mawza'),
(203, 12, 'جبل حبشي', 'Habashi Mountain', 'جَبَل حَبَشِي', 'جبل حبشي', 'Habashi Mountain'),
(204, 12, 'مشرعة وحدنان', 'Mashra\'a and Hadnan', 'مَشْرَعَة وَحَدْنَان', 'مشرعه وحدنان', 'Mashraa and Hadnan'),
(205, 12, 'صبر الموادم', 'Saber Al-Mawadim', 'صَبِر المَوَادِم', 'صبر الموادم', 'Saber Al Mawadim'),
(206, 12, 'المسراخ', 'Al-Misrakh', 'المِسْرَاخ', 'المسراخ', 'Al Misrakh'),
(207, 12, 'خدير', 'Khadeer', 'خَدِيْر', 'خدير', 'Khadeer'),
(208, 12, 'الصلو', 'Al-Selw', 'الصِّلْو', 'الصلو', 'Al Selw'),
(209, 12, 'الشمايتين', 'Al-Shamaiatain', 'الشَّمَايَتَيْن', 'الشمايتين', 'Al Shamaiatain'),
(210, 12, 'الوازعية', 'Al-Waz\'iah', 'الوَازِعِيَّة', 'الوازعيه', 'Al Waziah'),
(211, 12, 'حيفان', 'Haifan', 'حَيْفَان', 'حيفان', 'Haifan'),
(212, 12, 'المظفر', 'Al-Mathfar', 'المَظْفَر', 'المظفر', 'Al Mathfar'),
(213, 12, 'القاهرة', 'Al-Qahera', 'القَاهِرَة', 'القاهره', 'Al Qahera'),
(214, 12, 'صالة', 'Salah', 'صَالَة', 'صاله', 'Salah'),
(215, 12, 'التعزية', 'Al-Taiziah', 'التَّعِزِّيَة', 'التعزيه', 'Al Taiziah'),
(216, 12, 'المعافر', 'Al-Ma\'afer', 'المَعَافِر', 'المعافر', 'Al Maafer'),
(217, 12, 'المواسط', 'Al-Mawasit', 'المَوَاسِط', 'المواسط', 'Al Mawasit'),
(218, 12, 'سامع', 'Sama\'', 'سَامِع', 'سامع', 'Sama'),
(219, 13, 'برط العنان', 'Barat Al-enan', 'بَرَطَ العِنَان', 'برط العنان', 'Barat Al enan'),
(220, 13, 'الحزم', 'Al-Hazm', 'الحَزْم', 'الحزم', 'Al Hazm'),
(221, 13, 'الحميدات', 'Al-Humaidat', 'الحُمَيْدَات', 'الحميدات', 'Al Humaidat'),
(222, 13, 'خب والشعف', 'Khab and Al-Sha’af', 'خَب وَالشَعَف', 'خب والشعف', 'Khab and Al Sha’af'),
(223, 13, 'خراب المراشي', 'Kharab Al-Marashi', 'خَرَاب المَرَاشِي', 'خراب المراشي', 'Kharab Al Marashi'),
(224, 13, 'الخلق', 'Al-Khalq', 'الخَلَق', 'الخلق', 'Al Khalq'),
(225, 13, 'رجوزة', 'Rajozah', 'رَجُوْزَة', 'رجوزه', 'Rajozah'),
(226, 13, 'الزاهر', 'Al-Zaher', 'الزَّاهِر', 'الزاهر', 'Al Zaher'),
(227, 13, 'الغيل', 'Al-Ghail', 'الغَيْل', 'الغيل', 'Al Ghail'),
(228, 13, 'المتون', 'Al-Mutoon', 'المُتُوْن', 'المتون', 'Al Mutoon'),
(229, 13, 'المصلوب', 'Al-Masloob', 'المَصْلُوْب', 'المصلوب', 'Al Masloob'),
(230, 13, 'المطمة', 'Al-Matmmah', 'المَطَمّة', 'المطمه', 'Al Matmmah'),
(231, 14, 'بدبدة', 'Bedbedah', 'بِدْبِدَة', 'بدبده', 'Bedbedah'),
(232, 14, 'جبل مراد', 'Morad Mountain', 'جَبَل مُرَاد', 'جبل مراد', 'Morad Mountain'),
(233, 14, 'مدغل الجدعان', 'Madghal Al-Gida\'an', 'مَدْغَل الجِدْعَان', 'مدغل الجدعان', 'Madghal Al Gidaan'),
(234, 14, 'مدينة مأرب', 'Ma\'rib City', 'مَدِينَة مَأْرِب', 'مدينه مارب', 'Marib City'),
(235, 14, 'حريب', 'Hareeb', 'حَرِيْب', 'حريب', 'Hareeb'),
(236, 14, 'حريب القرامش', 'Hareeb Al-Qaramish', 'حَرِيْب القَرَامِش', 'حريب القرامش', 'Hareeb Al Qaramish'),
(237, 14, 'رحبة', 'Rahabah', 'رَحَبَة', 'رحبه', 'Rahabah'),
(238, 14, 'رغوان', 'Raghwan', 'رَغْوَان', 'رغوان', 'Raghwan'),
(239, 14, 'صرواح', 'Sirwah', 'صِرْوَاح', 'صرواح', 'Sirwah'),
(240, 14, 'العبدية', 'Al-Abdiah', 'العَبْدِيَّة', 'العبديه', 'Al Abdiah'),
(241, 14, 'ماهلية', 'Mahliah', 'ماهِلِيَّة', 'ماهليه', 'Mahliah'),
(242, 14, 'الجوبة', 'Al-Jobah', 'الجُوْبَة', 'الجوبه', 'Al Jobah'),
(243, 14, 'مجزر', 'Majzar', 'مَجْزَر', 'مجزر', 'Majzar'),
(244, 14, 'مأرب', 'Ma\'rib', 'مَأْرِب', 'مارب', 'Marib'),
(245, 15, 'المكلا', 'Al-Mokalla', 'المُكَلَّا', 'المكلا', 'Al Mokalla'),
(246, 15, 'ثمود', 'Thamood', 'ثَمُوْد', 'ثمود', 'Thamood'),
(247, 15, 'القف', 'Al-Qaf', 'القَف', 'القف', 'Al Qaf'),
(248, 15, 'زمخ ومنوخ', 'Zamakh and Manookh', 'زَمَخ وَمُنُوْخ', 'زمخ ومنوخ', 'Zamakh and Manookh'),
(249, 15, 'حجر', 'Hajr', 'حَجْر', 'حجر', 'Hajr'),
(250, 15, 'العبر', 'Al-Abr', 'العَبْر', 'العبر', 'Al Abr'),
(251, 15, 'القطن', 'Al-Qatn', 'القَطَن', 'القطن', 'Al Qatn'),
(252, 15, 'شبام', 'Shibam', 'شِبَام', 'شبام', 'Shibam'),
(253, 15, 'ساه', 'Sah', 'سَاه', 'ساه', 'Sah'),
(254, 15, 'سيئون', 'Say\'on', 'سَيْئُون', 'سيءون', 'Sayon'),
(255, 15, 'تريم', 'Tarim', 'تَرِيْم', 'تريم', 'Tarim'),
(256, 15, 'السوم', 'Al-Soom', 'السُّوْم', 'السوم', 'Al Soom'),
(257, 15, 'الريدة وقصيعر', 'Al-Raidah and Qusaier', 'الرَّيْدَة وَقُصَيْعَِر', 'الريده وقصيعر', 'Al Raidah and Qusaier'),
(258, 15, 'الديس', 'Al-Dais', 'الدِّيْس', 'الديس', 'Al Dais'),
(259, 15, 'الشحر', 'Al-Shihr', 'الشِّحْر', 'الشحر', 'Al Shihr'),
(260, 15, 'غيل بن يمين', 'Ghail Bin Yameen', 'غَيْل بِْن يَمِيْن', 'غيل بن يمين', 'Ghail Bin Yameen'),
(261, 15, 'غيل باوزير', 'Ghail Ba Wazeer', 'غَيْل بَاوَزِيْر', 'غيل باوزير', 'Ghail Ba Wazeer'),
(262, 15, 'دوعن', 'Dawa\'an', 'دَوْعَن', 'دوعن', 'Dawaan'),
(263, 15, 'عمد', 'Amd', 'عَمْد', 'عمد', 'Amd'),
(264, 15, 'حورة ووادي العين', 'Al-Ayn Valley', 'حُوْرَة وَوَادِي العَيْن', 'حوره ووادي العين', 'Al Ayn Valley'),
(265, 15, 'رخية', 'Raikhyah', 'رَخْيَة', 'رخيه', 'Raikhyah'),
(266, 15, 'يبعث', 'Yabo\'th', 'يَبْعُث', 'يبعث', 'Yaboth'),
(267, 15, 'حجر الصيعر', 'Hajar Al-Saia\'ar', 'حَجْر الصَّيْعَر', 'حجر الصيعر', 'Hajar Al Saiaar'),
(268, 15, 'بروم ميفع', 'Barom Maifa\'a', 'بُرُوم مَيْفَع', 'بروم ميفع', 'Barom Maifaa'),
(269, 15, 'الضليعة', 'Al-Dhlia\'ah', 'الضِّلِيْعَة', 'الضليعه', 'Al Dhliaah'),
(270, 15, 'رماه', 'Rumah', 'رُمَاه', 'رماه', 'Rumah'),
(271, 15, 'حريضة', 'Huridhah', 'حُرَيْضَة', 'حريضه', 'Huridhah'),
(272, 15, 'مدينة المكلا', 'Al-Mokalla City', 'مَدِيْنَة المُكَلَّا', 'مدينه المكلا', 'Al Mokalla City'),
(273, 16, 'حات', 'Haat', 'حَات', 'حات', 'Haat'),
(274, 16, 'حصوين', 'Hsween', 'حَصْوِيْن', 'حصوين', 'Hsween'),
(275, 16, 'حوف', 'Hawf', 'حَوْف', 'حوف', 'Hawf'),
(276, 16, 'سيحوت', 'Syhoot', 'سَيْحُوْت', 'سيحوت', 'Syhoot'),
(277, 16, 'شحن', 'Shihin', 'شِحِْن', 'شحن', 'Shihin'),
(278, 16, 'الغيضة', 'Al-Ghaidhah', 'الغَيْضَة', 'الغيضه', 'Al Ghaidhah'),
(279, 16, 'قشن', 'Qashn', 'قِشْن', 'قشن', 'Qashn'),
(280, 16, 'المسيلة', 'Al-Masilah', 'المَسِيْلَة', 'المسيله', 'Al Masilah'),
(281, 16, 'منعر', 'Man\'r', 'مَنْعَر', 'منعر', 'Manr'),
(282, 17, 'الأزارق', 'Al-Azariq', 'الأَزَارِق', 'الازارق', 'Al Azariq'),
(283, 17, 'الحشاء', 'Al-Hasha\'', 'الحَشَاء', 'الحشاء', 'Al Hasha'),
(284, 17, 'الحصين', 'Al-Hosain', 'الحُصَيْن', 'الحصين', 'Al Hosain'),
(285, 17, 'الشعيب', 'Al-Sho\'aib', 'الشُّعَيْب', 'الشعيب', 'Al Shoaib'),
(286, 17, 'الضالع', 'Al-Dhale\'', 'الضَّالِع', 'الضالع', 'Al Dhale'),
(287, 17, 'جبن', 'Joban', 'جُبَن', 'جبن', 'Joban'),
(288, 17, 'جحاف', 'Jehaf', 'جِحَاف', 'جحاف', 'Jehaf'),
(289, 17, 'دمت', 'Damt', 'دَمْت', 'دمت', 'Damt'),
(290, 17, 'قعطبة', 'Qa\'tabah', 'قَعْطَبَة', 'قعطبه', 'Qatabah'),
(291, 18, 'ملحان', 'Melhan', 'مَلْحَان', 'ملحان', 'Melhan'),
(292, 18, 'الخبت', 'Al-Khabt', 'الخَبْت', 'الخبت', 'Al Khabt'),
(293, 18, 'الطويلة', 'Al-Tawilah', 'الطَّوِيْلَة', 'الطويله', 'Al Tawilah'),
(294, 18, 'بني سعد', 'Bni Sa\'d', 'بَنِي سَعْد', 'بني سعد', 'Bni Sad'),
(295, 18, 'الرجم', 'Al-Rojom', 'الرُّجُم', 'الرجم', 'Al Rojom'),
(296, 18, 'المحويت', 'Al-Mahweet', 'المَحْوِيْت', 'المحويت', 'Al Mahweet'),
(297, 18, 'مدينة المحويت', 'Al-Mahweet City', 'مَدِيْنَة المَحْوِيْت', 'مدينه المحويت', 'Al Mahweet City'),
(298, 18, 'شبام كوكبان', 'Shibam Kawkaban', 'شِبَام كَوْكَبَان', 'شبام كوكبان', 'Shibam Kawkaban'),
(299, 18, 'حفاش', 'Hofash', 'حُفَاش', 'حفاش', 'Hofash'),
(300, 19, 'الحد', 'Al-Had', 'الحَد', 'الحد', 'Al Had'),
(301, 19, 'الحوطة', 'Al-Hotah', 'الحُوْطَة', 'الحوطه', 'Al Hotah'),
(302, 19, 'القبيطة', 'Al-Qabbaytah', 'القَبَّيْطَة', 'القبيطه', 'Al Qabbaytah'),
(303, 19, 'المسيمير', 'Al-Mosaimeer', 'المُسَيمِيْر', 'المسيمير', 'Al Mosaimeer'),
(304, 19, 'المضاربة والعارة', 'Al-Madharaba and Al-A\'ara', 'المَضَارِبَة وَالعَارَة', 'المضاربه والعاره', 'Al Madharaba and Al Aara'),
(305, 19, 'المفلحي', 'Al-Muflhi', 'المُفْلِحِي', 'المفلحي', 'Al Muflhi'),
(306, 19, 'المقاطرة', 'Al-Maqatirah', 'المَقَاطِرَة', 'المقاطره', 'Al Maqatirah'),
(307, 19, 'الملاح', 'Al-Milah', 'المَلَاح', 'الملاح', 'Al Milah'),
(308, 19, 'تبن', 'Tbn', 'تُبَن', 'تبن', 'Tbn'),
(309, 19, 'حالمين', 'Halimain', 'حَالِمَيْن', 'حالمين', 'Halimain'),
(310, 19, 'حبيل جبر', 'Hobail Jabr', 'حَبِيْل جَبْر', 'حبيل جبر', 'Hobail Jabr'),
(311, 19, 'ردفان', 'Radfan', 'رَدْفَان', 'ردفان', 'Radfan'),
(312, 19, 'طور الباحة', 'Toor Al-Baha', 'طُوْر البَاحَة', 'طور الباحه', 'Toor Al Baha'),
(313, 19, 'يافع', 'Yafe\'', 'يَافِع', 'يافع', 'Yafe'),
(314, 19, 'يهر', 'Yahar', 'يَهَر', 'يهر', 'Yahar'),
(315, 20, 'بلاد الطعام', 'Bilad Al-Ta\'am', 'بِلَاد الطَّعَام', 'بلاد الطعام', 'Bilad Al Taam'),
(316, 20, 'السلفية', 'Al-Salfiah', 'السَّلْفِيَة', 'السلفيه', 'Al Salfiah'),
(317, 20, 'الجبين', 'Al-Jabeen', 'الجَبِيْن', 'الجبين', 'Al Jabeen'),
(318, 20, 'مزهر', 'Mizhir', 'مِزْهِر', 'مزهر', 'Mizhir'),
(319, 20, 'كسمة', 'Kosmah', 'كُسْمَة', 'كسمه', 'Kosmah'),
(320, 20, 'الجعفرية', 'Al-ja\'faria', 'الجَعْفَرِيَّة', 'الجعفريه', 'Al jafaria'),
(321, 21, 'حديبو', 'Hadibu', 'حَدِيْبُو', 'حديبو', 'Hadibu'),
(322, 21, 'قلنسية وعبد الكوري', 'Qulansiyah and \'Abd-al-Kuri', 'قَلَنْسِيِّة وَعَبْد الكُوْرِي', 'قلنسيه وعبد الكوري', 'Qulansiyah and Abd al Kuri'),
(323, 22, 'مودية', 'Mudiyah', 'مُوْدِيَة', 'موديه', 'Mudiyah'),
(324, 22, 'المحفد', 'Al Mahfid', 'المَحْفَد', 'المحفد', 'Al Mahfid'),
(325, 22, 'جيشان', 'Jayshan', 'جَيْشَان', 'جيشان', 'Jayshan'),
(326, 22, 'لودر', 'Lawdar', 'لَوْدَر', 'لودر', 'Lawdar'),
(327, 22, 'سباح', 'Sabah', 'سَبَاح', 'سباح', 'Sabah'),
(328, 22, 'رصد', 'Rusud', 'رُصُد', 'رصد', 'Rusud'),
(329, 22, 'سرار', 'Sarar', 'سَرَار', 'سرار', 'Sarar'),
(330, 22, 'الوضيع', 'Al-Wadhi\'', 'الوَضِيْع', 'الوضيع', 'Al Wadhi'),
(331, 22, 'أحور', 'Ahwar', 'أَحْوَر', 'احور', 'Ahwar'),
(332, 22, 'زنجبار', 'Zunjubar', 'زُنْجُبَار', 'زنجبار', 'Zunjubar'),
(333, 22, 'خنفر', 'Khanfar', 'خَنْفَر', 'خنفر', 'Khanfar');

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE `governorates` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar_tashkeel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_numbering_plan` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital_name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar_normalized` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en_normalized` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `country_id`, `name_ar`, `name_en`, `name_ar_tashkeel`, `phone_numbering_plan`, `capital_name_ar`, `capital_name_en`, `name_ar_normalized`, `name_en_normalized`) VALUES
(1, 1, 'أمانة العاصمة', 'Amant Al-Asmah', 'أَمانَة العاصِمَةِ', '01', '', '', 'امانه العاصمه', 'Amant Al Asmah'),
(2, 1, 'صنعاء', 'Sanaa', 'صَنْعاء', '01', '', '', 'صنعاء', 'Sanaa'),
(3, 1, 'عدن', 'Aden', 'عَدَن', '02', '', '', 'عدن', 'Aden'),
(4, 1, 'الحديدة', 'Al-Hodeidah', 'الحُدَيْدَة', '03', 'مدينة الحديدة', 'Al-Hodeidah City', 'الحديده', 'Al Hodeidah'),
(5, 1, 'ذمار', 'Thamar', 'ذَمَار', '06', 'مدينة ذمار', 'Thamar City', 'ذمار', 'Thamar'),
(6, 1, 'عمران', 'Amran', 'عَمْران', '07', 'مدينة عمران', 'Amran City', 'عمران', 'Amran'),
(7, 1, 'حجة', 'Hajjah', 'حَجَّة', '07', 'مدينة حجة', 'Hajjah City', 'حجه', 'Hajjah'),
(8, 1, 'إب', 'Ibb', 'إِبْ', '04', 'مدينة إب', 'Ibb City', 'اب', 'Ibb'),
(9, 1, 'صعدة', 'Sa\'dah', 'صَعْدَة', '07', 'مدينة صعدة', 'Sa\'dah City', 'صعده', 'Sadah'),
(10, 1, 'البيضاء', 'Al-Baidha', 'البَيْضَاء', '06', 'مدينة البيضاء', 'Al-Baidha City', 'البيضاء', 'Al Baidha'),
(11, 1, 'شبوة', 'Shabwah', 'شَبْوَة', '05', 'عتق', 'Ataq', 'شبوه', 'Shabwah'),
(12, 1, 'تعز', 'Taiz', 'تَعِز', '04', 'مدينة تعز', 'Taiz City', 'تعز', 'Taiz'),
(13, 1, 'الجوف', 'Al-jawf', 'الجَوْف', '06', 'الحزم', 'Al-Hazm', 'الجوف', 'Al jawf'),
(14, 1, 'مأرب', 'Ma\'rib', 'مَأْرِب', '06', 'مدينة مأرب', 'Ma\'rib City', 'مارب', 'Marib'),
(15, 1, 'حضرموت', 'Hadramot', 'حَضْرَمَوْت', '05', 'المكلا', 'Al-Mokalla', 'حضرموت', 'Hadramot'),
(16, 1, 'المهرة', 'Al-Maharah', 'المَهَرَة', '05', 'الغيضة', 'Al-Ghaidhah', 'المهره', 'Al Maharah'),
(17, 1, 'الضالع', 'Al-Dhale\'', 'الضَّالِع', '02', 'مدينة الضالع', 'Al-Dhale\' City', 'الضالع', 'Al Dhale'),
(18, 1, 'المحويت', 'Al-Mahweet', 'المَحْوِيْت', '07', 'مدينة المحويت', 'Al-Mahweet City', 'المحويت', 'Al Mahweet'),
(19, 1, 'لحج', 'Lahj', 'لَحْج', '02', 'الحوطة', 'Al-Hotah', 'لحج', 'Lahj'),
(20, 1, 'ريمة', 'Raimah', 'رَيْمَة', '03', 'الجبين', 'Al-Jabeen', 'ريمه', 'Raimah'),
(21, 1, 'سقطرى', 'Socatra', 'سُقَطْرَى', '05', 'حديبو', 'Hadibu', 'سقطرا', 'Socatra'),
(22, 1, 'أبين', 'Abyan', 'أَبْيَن', '02', 'زنجبار', 'Zunjubar', 'ابين', 'Abyan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_governorates_id_foreign` (`governorates_id`);

--
-- Indexes for table `governorates`
--
ALTER TABLE `governorates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `governorates_country_id_foreign` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `governorates`
--
ALTER TABLE `governorates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_governorates_id_foreign` FOREIGN KEY (`governorates_id`) REFERENCES `governorates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `governorates`
--
ALTER TABLE `governorates`
  ADD CONSTRAINT `governorates_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
