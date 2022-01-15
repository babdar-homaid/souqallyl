-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 14 يناير 2022 الساعة 19:07
-- إصدار الخادم: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `souqyyjb_mohammed`
--

-- --------------------------------------------------------

--
-- بنية الجدول `assignee`
--

CREATE TABLE `assignee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `assignee`
--

INSERT INTO `assignee` (`id`, `name`) VALUES
(1, 'مستشفى النور التخصصي'),
(2, 'مستشفى الملك عبدالعزيز بالزاهر'),
(3, 'مستشفى الولادة و الأطفال'),
(4, 'مستشفى حراء العام'),
(5, 'مستشفى الملك فيصل بالششة'),
(6, 'مستشفى شرق عرفات');

-- --------------------------------------------------------

--
-- بنية الجدول `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_number` int(11) NOT NULL,
  `id_img` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `section` int(11) NOT NULL,
  `assignee` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_img` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `del` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `data`
--

INSERT INTO `data` (`id`, `name`, `id_number`, `id_img`, `date`, `section`, `assignee`, `type`, `type_img`, `note`, `year`, `month`, `del`) VALUES
(12, 'وفاء عبدالعزيز العبيسي', 1076944154, '7A024C8B-1164-4667-8307-90012E9C509F.jpeg', '2021-10-14', 1, 1, '1', 'EA3F6408-2ACE-467D-83B4-B26F08CA5E15.jpeg', 'تم', 2021, 10, 0),
(13, 'بشاير حسن على شولان', 1102349816, '17199E5D-0563-4500-9852-D5372CD1DE18.jpeg', '0000-00-00', 1, 1, '1', '6474604A-5141-438D-B7A3-F082ADD46BE9.jpeg', 'تحويل', 2021, 10, 0),
(14, 'رند موسى الفيفي', 1186653596, '687DD16B-D331-4598-AEE5-D45815FE3676.jpeg', '2021-10-31', 1, 1, '1', '8FD31EAB-668E-4D67-823B-602B9A3DB58D.jpeg', 'تم ', 2021, 11, 0),
(15, 'اسماء محمدعبدالرحمن الشهري', 1091116515, '4A7CB4D4-AEC7-41C2-9D7F-2349D955692B.jpeg', '2021-11-01', 1, 1, '1', '3C69E5C6-7BF3-43BC-BC8E-325AAB02C63B.jpeg', 'تم', 2021, 11, 0),
(16, 'صالحه احمد عيسى الزهراني', 1046143903, '61D73478-E01C-409B-BB30-A59A61C8A0EA.jpeg', '2021-11-01', 1, 1, '1', '5D80BAF1-B759-4D62-AEDD-1303323DBF9C.jpeg', 'تم', 2021, 11, 0),
(17, 'نوال جابر يحي الفيفي', 1066803428, 'C23B88AD-008C-49EB-97C7-AF4315994B5D.jpeg', '2021-10-31', 1, 1, '1', '2394317E-F1EA-4AEF-8962-90FECD19DCAC.jpeg', 'تم', 2021, 11, 0),
(18, 'محمدسعيد ناصر القرني', 1026951077, 'A5EE3521-F3F6-4201-B3B4-CF357DA7854D.jpeg', '2021-11-01', 1, 1, '1', '5D951959-885E-4BF4-9BFD-796D0C0090F9.jpeg', 'تم', 2021, 11, 0),
(19, 'عبدالله سعد الموسى', 1107341990, '79C46E50-4698-4846-ABB9-C2344229BD85.jpeg', '2021-11-02', 1, 1, '1', 'EF190EA8-0604-445C-91B3-8839C73BAF1B.jpeg', 'تم', 2021, 11, 0),
(20, 'روان حامد الحارثي', 1090523174, '80541909-70C8-4AB2-84F0-57B88DEA3374.jpeg', '2021-11-07', 7, 1, '1', 'AF5D4868-4C13-4B9D-8F32-F49848A52335.jpeg', 'تم', 2021, 11, 0),
(21, 'هدى مسعود العبدلي', 1018452332, '44B3AEF5-9AB2-457A-85DF-695389B96CBB.jpeg', '2021-11-07', 7, 1, '1', '6F2DDCC6-E417-4494-8AB2-A72BF6C8A954.jpeg', 'تم', 2021, 11, 0),
(22, 'سلطان ياسين عسيري', 1095862221, '0F90AE99-63AF-4225-859A-6DDF166D2DBB.jpeg', '2021-11-07', 8, 1, '2', '85CAB81F-B20F-43E6-95D4-D982194CF268.jpeg', 'طارئ ', 2021, 11, 0),
(23, 'نورةعبدالوهاب الغامدي', 1067770212, 'A2D45ADE-7D28-47FF-A183-00AD3F26061C.jpeg', '2021-11-07', 7, 1, '1', 'C6B5DF13-9004-4F6D-8DE3-6D519FC15997.jpeg', 'تم', 2021, 11, 0),
(24, 'بسام ابراهيم العمري الحربي', 1079814560, '269A55D5-945D-4F63-9F4E-96041A1111CF.jpeg', '2021-11-07', 7, 1, '1', '5B62A362-9986-400A-BBF2-3B9D4446C30A.jpeg', 'تم', 2021, 11, 0),
(25, 'سيف عبدالله العبيسي', 1028653010, 'C79931C6-B212-4106-BB8F-4123E58B9785.jpeg', '2021-11-07', 7, 1, '1', 'CBA77B5F-D8BD-4CE6-81B9-E3957FC50B64.jpeg', 'تم', 2021, 11, 0),
(26, 'معتز عبدالرحمن العلياني', 1092288768, 'D474F2F7-B68F-44FC-9C7C-E12D4C8C5304.jpeg', '2021-11-07', 9, 1, '1', '0742F38B-9048-4720-A88C-837486E85BF2.jpeg', 'تم', 2021, 11, 0),
(27, 'هيثم صالح الحربي', 2147483647, '8C66AA97-7C21-4EAE-83CC-C27846270CB6.jpeg', '2021-11-07', 3, 1, '1', 'CCD80AC4-C4A5-4655-A54D-1C92DADF53FC.jpeg', 'تم', 2021, 11, 0),
(28, 'مازن زكي عبدالستار', 1039964638, '60DB3DA0-8A34-4A1E-92E7-1E5C976E5811.jpeg', '2021-11-08', 7, 1, '', 'E9AADA05-7322-43C2-9983-0F9CC86F253E.jpeg', 'تم', 2021, 11, 0),
(29, 'عبدالله صالح التويم', 1020810618, '2FF02A1D-9DDC-4C18-AF4F-1C8A5B3F455E.jpeg', '2021-11-08', 15, 1, '1', 'FC417CB3-1735-4C23-B751-173F60614397.jpeg', 'لاتوجد اي مواعيد حاليا', 2021, 11, 0),
(30, 'حيالله سعيد الحارثي', 1174777472, 'A1CE96C7-8655-46B4-A2F4-A8AAD0D7E001.jpeg', '2021-11-08', 5, 3, '1', '33195552-22B3-41C3-A1ED-903656A1A86C.jpeg', 'لاتوجد مواعيد في النظام ', 2021, 11, 0),
(31, 'سالم محمد الشهري', 1022130288, '58E709ED-4834-43ED-BF67-0DF6BF4D47E6.jpeg', '2021-11-08', 14, 1, '1', '5F603A30-4A12-4FC8-801E-26636087466A.jpeg', 'لاتوجد مواعيد حاليا', 2021, 11, 0),
(32, 'وفاء عبدالعزيز التركي', 1179829716, '4E63FD49-A6E4-4F86-B7BD-26B274B489F7.jpeg', '2021-11-04', 7, 1, '1', 'DE2A19E7-882B-4627-AD60-5F1A56DABFFB.jpeg', 'تم', 2021, 11, 0),
(33, 'فرح عبدالعزيز التركي', 1163944067, 'CF1BDE17-7636-441D-A8AA-C94DA308C24F.jpeg', '2021-11-04', 7, 1, '1', '420B3698-6452-43DB-B33F-32D1BE1685FE.jpeg', 'تم', 2021, 11, 0),
(34, 'سميرة صالح الشهري', 1005632706, '34713ECB-C8F6-4AD1-859D-F63C2CCFA176.jpeg', '2021-11-08', 11, 3, '1', 'E53D6BA0-39FF-43F8-A2CA-71BA4FC770BA.jpeg', 'لاتوجد مواعيد في النظام', 2021, 11, 0),
(35, 'اسيل خالد الروقي', 1116613561, 'AC976D32-461D-4830-B29B-616EFC33A89C.jpeg', '2021-11-09', 3, 1, '1', '86A6B009-84DB-4896-A746-6FE7302CDDA4.jpeg', 'باطنه غدد صماء', 2021, 11, 0),
(36, 'امينه احمد عبدالقادر الشريف', 1045723788, '4427D0FC-016D-46D1-9D9A-9F7FF7B87343.jpeg', '2021-11-09', 14, 1, '1', 'C9DC9435-B1F9-42D0-8FE5-F8BEE9A3A910.jpeg', 'على كرسي متحرك', 2021, 11, 0),
(37, 'وليد سعد الغامدي', 1079932248, 'DB1A9204-5455-4CB1-92DD-5BCE3B41DE24.jpeg', '2021-11-09', 7, 1, '2', '35D55220-C444-497E-8BA1-B9C522C5235F.jpeg', 'طارئ ', 2021, 11, 0),
(38, 'خالد محمد سعيد زيدان', 1000743953, 'AE15D0B9-A79C-452C-996E-2929ED512369.jpeg', '2021-11-09', 3, 1, '', '975168D4-8E06-4D12-9BB9-F1D9F5C8EB1F.jpeg', 'باطنه اعصاب', 2021, 11, 0),
(39, 'بدر زايد عوض العصيمي', 1054335581, '1BEF7F88-5E7D-4C51-997B-BF6790D34D51.jpeg', '2021-11-10', 15, 1, '1', '7975EF78-30FB-417C-AD90-E2F8D361C623.jpeg', 'لاتوجد مواعيد', 2021, 11, 0),
(40, 'محمد شعيب عبدالكريم', 2147483647, '8C6D1230-E668-4948-B10B-5179E17DB049.jpeg', '2021-11-10', 4, 1, '3', 'EABB4492-0956-4C93-823D-289B1A252558.jpeg', 'فوري', 2021, 11, 0),
(41, 'اسماء على مرتضى محمود', 1004752653, '940D6BE8-FC9C-45C7-8BE5-DC3C00D2356B.jpeg', '2021-11-10', 14, 1, '1', 'D1E0A303-1916-4C2D-813A-434893CD4468.jpeg', 'لاتوجد احاله', 2021, 11, 0),
(42, 'مسعده مسعد الدعدي', 1075208817, 'BBAC9CCB-9D3E-483A-A214-C464CE53402D.jpeg', '2021-11-10', 2, 1, '1', 'F85B925B-1BFE-4805-B914-E16FBD46BA90.jpeg', 'لاتوجد مواعيد للإحاله', 2021, 11, 0),
(43, 'شيخه غازي غالب الشريف', 1013016660, 'A272F4FA-8C53-443A-AC7D-FA0BC335000D.jpeg', '2021-11-10', 16, 1, '1', '5BC03419-E457-481E-8D71-A118C4A6E771.jpeg', 'لاتوجد احالة من النظام', 2021, 11, 0),
(44, 'بركه عياف عبدالله الياسي', 1033948975, '53FE8077-16AA-47F5-9D73-6BA426E5F292.jpeg', '2021-11-10', 16, 1, '1', '6EE0EBB4-737B-4866-810D-010F238C4536.jpeg', 'لاتوجد احالة من النظام', 2021, 11, 0),
(45, 'ريان ابراهيم حسان الغريبي', 1073014357, 'FC40B271-E325-45AF-88F7-357FC8895348.jpeg', '2021-11-10', 7, 1, '1', '7B6CF7FA-5F53-44FA-83B0-E21260F2F768.jpeg', 'يوجد خطاء في تطبيق الموعد', 2021, 11, 0),
(46, 'يوسف هليل دخيل الله المطيري', 1030325599, 'A6902F1A-8CC7-489F-ADC8-138F0FB4B929.jpeg', '2021-11-11', 10, 1, '1', 'D11E3D5D-220F-4643-8BAB-4E56CE604615.jpeg', 'لاتوجد مواعيد ع النظام', 2021, 11, 0),
(47, 'دانة عبدالله النفيعي', 1172623132, '265FC90B-AAD4-4B02-B54A-A0B1A2934815.jpeg', '2021-11-11', 5, 3, '1', '61E4EA37-4939-4575-BE9F-DCF8B523E798.jpeg', 'لاتوجد مواعيد للتحويل', 2021, 11, 0),
(48, 'وفاء سالم المحمادي', 1017779214, '6405EB9F-7438-4D42-B53B-42E46EC54359.jpeg', '2021-11-11', 11, 3, '1', '7E45D2C7-507F-4776-A205-0F0A34A9314C.jpeg', 'لاتوجد مواعيد للاحاله', 2021, 11, 0),
(49, 'محمد ابويكر عبدالله ادم', 2015270149, 'CD70AEA8-1C12-4EA6-A196-520782167C0A.jpeg', '2021-11-11', 3, 1, '1', '240CCB80-4D1C-4C95-A168-66EC4C8F7161.jpeg', 'لاتوجد مواعيدللإحاله', 2021, 11, 0),
(50, 'عبدالمجيد سعود الشامي', 1121569386, 'DBE081A2-C74D-4BEA-8549-B76811543258.jpeg', '2021-11-11', 16, 1, '1', '8615EA47-B72E-4076-8F94-EDC1E130CFBC.jpeg', 'لاتوجد مواعيد للإحاله', 2021, 11, 0),
(51, 'عاطف رايل محمد شافي خان', 2147483647, 'B3C5A83E-F1AB-4B51-90E9-7690475A55E8.jpeg', '2021-11-14', 2, 1, '1', '1C56C5C3-9C86-4CF0-B4FB-F4D071699044.jpeg', 'لاتوجد مواعيد مفتوحه', 2021, 11, 0),
(52, 'زهير عبدالله مكي', 1027768785, '85341A4C-8160-485C-B2FB-DDF7FC0C1A91.jpeg', '0000-00-00', 15, 1, '1', '612C2BBF-37DE-456E-912B-192225DFB075.jpeg', 'لاتوجد مواعيد للإحاله ', 2021, 11, 0),
(53, 'رحمة الله يعقوب محمد صالح', 2134180690, 'AB0D9296-C242-4435-ADDC-ABB0579C8391.jpeg', '2021-11-14', 15, 1, '1', 'E4C76322-4B47-493B-9A54-BED55B1C2339.jpeg', 'لاتوجد مواعيد للإحاله ', 2021, 11, 0),
(54, 'محمود عبدالله عبده الشمراني', 1014727984, '917B5E71-0635-448F-BC84-FB1102641287.jpeg', '2021-11-14', 7, 1, '1', 'BA814935-C170-4D34-A442-81CA95BEF741.jpeg', 'يعمل اخوه في م النور واخذها مناولة', 2021, 11, 0),
(55, 'امل صالح الغامدي', 1039355605, 'ADC9E0B5-ABC0-4FBB-B85F-BAF390DDE674.jpeg', '2021-11-14', 11, 3, '1', '79C48183-7DEC-457E-A310-D900335294A3.jpeg', 'لاتوجد مواعيد للإحاله ', 2021, 11, 0),
(56, 'بشائر مساعد السرواني', 1163281437, 'C949609F-49DE-4972-806A-A876E1DDB8CF.jpeg', '2021-11-14', 7, 1, '1', '62E5C438-5983-4775-9E91-FBA49B574E41.jpeg', 'النظام لايعمل', 2021, 11, 0),
(57, 'هاشم بن نمي ال زيد', 1087266936, '8214ED6F-56DE-43C6-88F7-70DB65CC9504.jpeg', '2021-11-14', 17, 1, '1', '470BCC3D-9129-4911-88DD-2A60114FAE8B.jpeg', 'لاتوجد مواعيد تحويل ', 2021, 11, 0),
(58, 'فيصل فهد الغريبي', 1087983357, '236AEB31-A547-4E47-BDB1-8FEA5EEA949B.jpeg', '2021-11-14', 9, 1, '1', 'B63A8245-C93D-4912-BE36-FA3E4A6E76DE.jpeg', 'لاتوجد مواعيد احالة ', 2021, 11, 0),
(59, 'ربيع احمد محمد سعيد عالم', 1043542339, 'A3CDD452-9C15-4427-800B-208EC16E785F.jpeg', '2021-11-14', 10, 1, '1', 'AE6B0265-095D-4E76-A86F-199C1F0DC436.jpeg', 'لاتوجد مواعيد احالة ', 2021, 11, 0),
(60, 'هنادي محمد عبدالله باحرثي', 1029857222, '001ACEE7-0469-4472-A7DC-350D2B303BF0.jpeg', '2021-11-14', 0, 1, '1', 'A6E6A81C-FE8A-466D-917F-22B36E2C1EDB.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(61, 'حنان عبدالمعين ابو النصر فياضة', 1039780570, '02B3EF20-17D9-4FEB-A2FC-27C77D2CAF48.jpeg', '2021-11-14', 14, 1, '1', '5F758613-F384-4E5C-892C-074A1F6B05ED.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(62, 'حنان عبدالمعين فياضه', 1039780570, '1FF8335E-A465-46AA-A0F4-6469519F4EBA.jpeg', '2021-11-16', 16, 1, '1', 'D549F6B8-7D42-455D-9C5A-BD8E82EBDDCB.jpeg', 'لها تحويل قبلها بيوم للعظام', 2021, 11, 0),
(63, 'اسماء عوض العمري', 1105414310, '169436CF-3723-4909-BB0C-E67B3D5CBF42.jpeg', '2021-11-16', 7, 1, '1', 'BE5655CC-EDF3-4537-B612-9BF071E6F5E8.jpeg', 'النظام لايعمل', 2021, 11, 0),
(64, 'ربيع بسام بخش', 1007240375, '5E2429D4-F93C-43D7-A26E-F76E002BB6EE.jpeg', '2021-11-16', 7, 1, '1', '0930D815-F6D4-4971-8909-4019655739CE.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(65, 'فاطمة احمد الزهراني', 1007019746, 'F948A4E4-2A28-4AD1-8FAC-CC68D7820D4E.jpeg', '2021-11-16', 3, 1, '1', '699984A6-CEC6-4F08-AF79-554D90F9F6A1.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(66, 'محمد احمد الربعي', 1004371744, 'E1C5D3C3-BF48-45A2-9D6D-1D19BB3B9BF4.jpeg', '2021-11-16', 7, 1, '1', '6F009DC5-8422-465B-81DB-7028A8B13CD1.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(67, 'ملك سعد عويض الزهراني', 1195623515, '1B7FEA61-BFAA-4F2E-B5E5-AAD5A78110ED.jpeg', '2021-11-16', 5, 3, '1', '7B58DA40-52E9-46E6-884D-EB470F555DAF.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(68, 'عبدالله محمد الزهراني ', 1093128617, '2CCFBA31-11CD-495C-991C-2E9B9B876D82.jpeg', '2021-11-16', 7, 1, '1', 'E0F28DA7-92D1-4C58-A64C-5055D610521C.jpeg', 'النظام لا يعمل ', 2021, 11, 0),
(69, 'حسن عبدالوهاب شافعي', 1168378709, '573D92C8-2EDC-4613-BA51-34A7B6A4132B.jpeg', '2021-11-16', 18, 1, '1', '47790F9C-FFA0-45B6-BF2C-ED9FBD213805.jpeg', 'لا توجد احالة ', 2021, 11, 0),
(70, 'هدى مسلم المطرفي', 1054048267, '4FE703D9-5465-4789-A534-AB0C31F7A34C.jpeg', '2021-11-16', 7, 1, '1', 'A799DE97-28F9-46E9-A19C-2B55064127FB.jpeg', 'النظام لا يعمل ', 2021, 11, 0),
(71, 'مقبول احمد القرني ', 1099859009, '0F4705A9-132D-4E73-853F-48279C67F6D0.jpeg', '2021-11-16', 7, 1, '1', '8BF5CA1E-68B1-4C00-AABB-BEC73103B354.jpeg', 'لا يوجد احالة ', 2021, 11, 0),
(73, 'امجاد حسن الجبيري', 1094159355, '3C1A7AAE-DB1F-4B45-8B0C-809FA73E21F6.jpeg', '2021-11-16', 11, 3, '1', '626EE685-86AA-4B13-A818-B112FAB30354.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(74, 'احمد صالح الزهراني', 1023506064, '98E52796-84B8-4A1F-8ADB-6A1223CA4469.jpeg', '2021-11-17', 3, 1, '1', '1B483D2C-6776-4B1B-BB9A-CF9CA8ADB73E.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(75, 'موده فهد العتيبي', 1108736230, '65F043AC-E2B2-4B20-A4FD-70CD0414FD62.jpeg', '2021-11-17', 7, 1, '1', '7D274FE5-A307-4415-8A2C-95FECB9249FF.jpeg', 'النظام لا يعمل ', 2021, 11, 0),
(76, 'خالد سراج الحارثي', 1047336324, '3B630404-C122-43AC-9C4A-85132EAEDF01.jpeg', '2021-11-18', 14, 1, '1', '45E1BD78-C7BB-40C9-B491-38F93D01E883.jpeg', 'لا توجد احالة ', 2021, 11, 0),
(77, 'فيصل محمد اللعبون', 1099623066, '58084B7C-B7CA-49EE-A06B-AC56403C9E0C.jpeg', '2021-11-18', 7, 1, '1', '5C32A156-516D-4859-8CD9-7DA8BF4B2694.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(78, 'امجاد سعد الحارثي', 1116989680, 'B5D2A20B-0E0A-4730-B48A-B3D450791231.jpeg', '2021-11-16', 7, 1, '1', '9D0BFB87-E1F9-436D-B47C-E85DABD77FEC.jpeg', 'تم حجز موعد', 2021, 11, 0),
(79, 'منى سفران الحارثي', 1041716414, 'F56827E1-CFBF-40BB-B1A9-A69D9BC01D6E.jpeg', '2021-11-16', 7, 1, '1', 'B35F5E4E-CB17-40D6-AF93-0B647749C671.jpeg', 'تم حجز موعد ', 2021, 11, 0),
(80, 'عائشه حسن باتي', 1002481354, '714EE9E9-B7A2-48C9-A0DF-C4A776AA65C5.jpeg', '2021-11-18', 7, 1, '1', 'F71C6E2B-564B-4A8B-B798-05D8FF88DAE7.jpeg', 'لا توجد احالة ', 2021, 11, 0),
(81, 'غيثه ابراهيم الزاهري الشريف', 1054110745, 'D81F8A23-59B2-4565-9042-DA4F0B9481BB.jpeg', '2021-11-21', 11, 3, '1', 'B88524AC-75FF-48B7-814D-DA70E0FFB48D.jpeg', 'لا توجد احالة ', 2021, 11, 0),
(82, 'نجاح عبدالله موصلي', 1048884652, '7D289304-0620-4F48-8525-423F02088DE9.jpeg', '2021-11-21', 8, 1, '2', 'D2298AA1-3049-4C97-A584-451891B0A190.jpeg', 'طوارئ', 2021, 11, 0),
(83, 'احمد صالح الغامدي', 1007218173, 'D0FA06CC-8213-4E96-8640-8DFA0FB614D0.jpeg', '2021-11-21', 14, 1, '1', '408B5455-EF9F-46F5-87A7-2C91D69171A4.jpeg', 'لا توجد احالة ', 2021, 11, 0),
(84, 'نوير علي البقمي', 1049675463, '5E80E783-D79F-433C-863F-EF5DF8B98468.jpeg', '2021-11-21', 2, 1, '1', '4DE700E7-BAEF-41F2-A0DA-638C736FF267.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(85, 'زكيه يوسف فطاني', 1062642564, '96857522-20D6-4815-AC0B-FDBD9477121F.jpeg', '2021-11-21', 2, 1, '1', '4298FC1C-55EC-46B2-B7E0-025CE44BEB1A.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(86, 'صالح عثمان الزهراني ', 1027660214, '4B4ECB63-08A8-4E1D-97E2-0E692511799B.jpeg', '2021-11-21', 2, 1, '1', '88BC3211-4DAE-4CDD-B353-761A8B44E33C.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(87, 'فاخر عطالله الدعدي', 1020107981, '109604C9-84A9-4F25-8ED9-B5CE8860D813.jpeg', '2021-11-21', 14, 1, '1', '1226F966-4C01-4585-8786-9BB97C8B2B1B.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(88, 'محمد عبدالرحمن الزهراني', 1136578935, '3E3666EE-8061-4C02-93E4-5495C320AD76.jpeg', '2021-11-21', 9, 1, '1', 'A928A864-7A65-484D-BED2-A788CA56C840.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(89, 'عبدالعزيز رياض الغامدي', 1101428298, '05903493-D5BF-4EF6-8EA6-7C34862AD25E.jpeg', '2021-11-21', 7, 1, '1', '4E191E0B-C43A-4A21-91C3-967631E2E0FB.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(90, 'عبدالوهاب يوسف سمكري ', 1095710651, 'BEBC19E4-E6DA-4F6B-9D68-F6A9783D4435.jpeg', '2021-11-21', 19, 1, '1', 'AA4B95C0-8F94-42BF-A9C8-9925852D2D2A.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(91, 'ريان صالح خياط', 1009610088, 'E16AA781-D693-45D4-BD50-AB24D9FCBC94.jpeg', '2021-11-21', 3, 1, '1', '7D2BD62C-57E4-4F41-8FEE-0A34981CD515.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(92, 'سيف عويض الروقي ', 1054698004, 'D2B66CC1-447F-4702-BAE7-51C3B02CE2D0.jpeg', '2021-11-21', 7, 1, '1', '96651289-D67B-4119-BF24-6FE9D2A9C411.jpeg', 'النظام لايعمل ', 2021, 11, 0),
(93, 'بلقيس عثمان فلاته', 1057545855, '121E4711-8830-4E15-A75D-DDA4D975F656.jpeg', '2021-11-20', 7, 1, '1', 'C8A50CE8-2FDE-414C-A8C8-5FFC16281B62.jpeg', 'تحويل', 2021, 11, 0),
(94, 'ارجوان احمد باحطاب ', 1126795010, '7780D6E6-0B48-47EE-B813-FC7EED831045.jpeg', '2021-11-22', 3, 1, '1', 'E7FDF510-28D7-47E4-91D4-C416DF6431AA.jpeg', 'غدد صماء', 2021, 11, 0),
(95, 'ساره هشام السرحاني', 1094487202, 'E77E8C51-FE23-4424-B9E2-24DF75E2AD31.jpeg', '2021-11-22', 11, 3, '1', '08D08EEF-1ED0-43F7-B325-251EBCC5AB40.jpeg', 'النظام لايعمل', 2021, 11, 0),
(96, 'جميل نافع اللهيبي', 1001063815, '1362D787-9AC6-46B0-9CA3-AB03B0020980.jpeg', '2021-11-22', 14, 1, '1', 'C7DFFD04-48D8-4DA5-9B55-57B144B611B3.jpeg', 'لاتوجد احالة ', 2021, 11, 0),
(97, 'بندر بخيت الزهراني', 1036951372, '16B8CBD0-2216-4C2F-B092-BF43CC814903.jpeg', '2021-11-27', 3, 1, '1', 'DD667890-291D-453C-BCA2-A1FF49C26CF0.jpeg', 'تحويل ', 2021, 11, 0),
(98, 'عتيقه خلف الزهراني', 1036670501, 'E0DD0BEA-2883-43CD-9531-4AFF138780C6.jpeg', '2021-11-20', 7, 1, '1', '3D7B91D8-6282-47F8-ADED-08916FA0131C.jpeg', 'تحويل ', 2021, 11, 0),
(99, 'ميرفت عبدالعالي العبدلي', 1046704944, '07406260-9306-449E-A976-3E567F8B04BA.jpeg', '2021-11-22', 2, 1, '1', '8C4A886A-D0B1-4FAB-9858-13FDCEDCDEBF.jpeg', 'تحويل ', 2021, 11, 0),
(100, 'ميرفت عبدالعالي العبدلي', 1046704944, 'D5A6CEDB-39C2-4B6F-A5CC-93D88C1EB85E.jpeg', '2021-11-22', 11, 3, '1', 'A79DC9EC-88D6-43A8-883A-4E80939DD9A1.jpeg', 'تحويل ', 2021, 11, 0),
(101, 'عتاب شاكر علوي', 1040384719, 'D0EAB70A-45E0-44FA-86A2-8F030995E208.jpeg', '2021-11-21', 7, 1, '1', '18540168-9DFE-47BA-9193-F873AE81E1CE.jpeg', 'تحويل ', 2021, 11, 0),
(102, 'معاذ سيف العميري', 1173073014, '4E2F9068-FD5E-4BDB-897F-1341F9D27CC5.jpeg', '2021-11-21', 7, 1, '1', '3391C9EE-4DF9-4993-8FCE-1C33EBABC543.jpeg', 'تم حجز موعد ', 2021, 11, 0),
(103, 'احمد عبدالله حرويل', 1105518292, '8CCD116E-480C-448E-8819-997A3C6D5C2F.jpeg', '2021-11-21', 7, 1, '1', 'ED25FE5A-9C4C-4C29-B002-09825E2463D3.jpeg', 'تم حجز موعد ', 2021, 11, 0),
(104, 'ناديه حامد السفياني', 1037797113, 'D4F5B40E-AA6B-498B-A6EA-B6087731C261.jpeg', '2021-11-23', 11, 3, '1', '29833329-8DC5-4FAA-B4EA-8AEF71AD8876.jpeg', 'تحويل', 2021, 11, 0),
(105, 'تركي سفر العصيمي', 1058144468, '9848E26E-1630-4836-B509-C584248EA582.jpeg', '2021-11-23', 14, 1, '1', 'E3F98092-7015-41FC-A27E-FD3BC032C1BF.jpeg', 'تحويل ', 2021, 11, 0),
(106, 'عبدالرحمن حسين العبدلي الشريف', 1152229777, 'D9EFB02C-F6D6-4519-AC8A-430275F69603.jpeg', '2021-11-23', 5, 3, '1', '52169DC8-2C4D-4297-B34D-052ECC23816C.jpeg', 'ت', 2021, 11, 0),
(107, 'فرح سلطان الجهني', 1186740450, '0222A44E-A119-4076-803C-AC446E6D3A0F.jpeg', '2021-11-20', 7, 1, '1', '58095007-30A6-4BDE-A74E-481AE56A7424.jpeg', 'ت', 2021, 11, 0),
(108, 'زكيه يوسف فطاني', 1062642564, '28AD37A4-A3DF-410E-B947-53E0D1F270B5.jpeg', '2021-11-23', 14, 1, '1', '81E3CAE0-9EA6-41C2-A863-40B4FDDDF224.jpeg', 'ت', 2021, 11, 0),
(109, 'ياسمين طريخم السرواني', 1083238616, 'FEA343B0-957D-4395-84D7-29AFBE1C0B35.jpeg', '2021-11-19', 7, 1, '1', '81814FBB-DBD9-47D4-B91D-E6D8B95AE40E.jpeg', 'ت', 2021, 11, 0),
(110, 'سرحية معيوف القثامي', 1012316814, 'D701507E-20F1-48A1-BA61-B0DF7C7EB537.jpeg', '2021-11-23', 11, 3, '1', '5331942A-71A4-400B-9E01-8C220D67D6B1.jpeg', 'ت', 2021, 11, 0),
(111, 'بندر اسماعيل منشي', 1001148335, '780D5C22-1870-4EAD-9E19-3F384EB1B5E2.jpeg', '2021-11-23', 7, 1, '', 'AC651682-5EE1-4B8B-B27F-326E21723077.jpeg', 'ت', 2021, 11, 0),
(112, 'لجين امين قاضي', 1078997556, '099A7D47-6377-404E-89E7-A81B824AAA96.jpeg', '2021-11-24', 7, 1, '', '66226B2C-78F2-4640-BB8D-008FD500B677.jpeg', 'ت', 2021, 11, 0),
(113, 'خالد حميدان الحميدان', 1009206911, '41FC7328-6192-4EE3-9E9E-11FCE770BAFF.jpeg', '2021-11-20', 7, 1, '1', 'EAE8E95A-338A-496A-A4F2-E771C9AD2492.jpeg', 'ت', 2021, 11, 0),
(114, 'عمر عبدالعزيز جساس', 1006763625, '85CBD152-362C-4B4C-8008-C5AFC2636AF6.jpeg', '2021-11-24', 16, 1, '1', '2F02BEA0-8428-48B2-B3A9-CF8E082CB95A.jpeg', 'ت', 2021, 11, 0),
(116, 'بركه بخيت العلوي', 1058373992, '96F8D24E-58A4-4DB9-AD31-9DC5FBFCE33A.jpeg', '2021-11-24', 7, 1, '1', '85FEA097-509E-4A8D-B62A-6325951F7ADF.jpeg', 'ت', 2021, 12, 0),
(117, 'احمد صالح الغامدي', 1007218173, '743D3C9F-7804-4101-A660-5F3F8A5D3C26.jpeg', '2021-11-24', 10, 1, '1', '8007FFB2-74E1-4A16-BD29-46A28F6BFC0F.jpeg', 'تكميم', 2021, 12, 0),
(118, 'عبدالصمد ابراهيم القوزي', 1112639438, 'E3E2A4B3-A661-4FCF-9711-141B8762C799.jpeg', '2021-11-24', 7, 1, '1', '5A9F402A-1425-4ACC-BF8B-4133EE6F8E9F.jpeg', 'ت', 2021, 12, 0),
(119, 'اصيل عايض القثامي', 1104995731, '54215073-481B-41EE-93E4-F2FE50FDB75D.jpeg', '2021-11-24', 19, 1, '1', '439618B5-7163-4046-8597-EEDE7B7E099E.jpeg', 'ت', 2021, 12, 0),
(120, 'هنوف حمود الصاعدي', 1085837001, '4A4D7314-61BF-43E6-B7D9-DA37627E7AB9.jpeg', '2021-11-24', 7, 1, '1', 'F5BA80AB-7855-4816-ACA4-6D2BE9DE880E.jpeg', 'ت', 2021, 12, 0),
(121, 'فاطمه عبدالله اليوسف', 1002540027, '2F385256-6D6B-411D-88B6-FA4092BD4321.jpeg', '2021-11-24', 7, 1, '1', '3F576215-3A91-4635-9849-06BAE7E98F00.jpeg', 'ت', 2021, 12, 0),
(122, 'وداد عبدالله الشريف', 1051746764, 'A8A60B26-3CD3-4B92-82DE-84D5687101B8.jpeg', '2021-11-24', 11, 3, '1', '4392664A-E534-4830-B452-4919F7F5D32C.jpeg', 'ت', 2021, 12, 0),
(123, 'على محمد الشمراني', 1095748727, 'BCA9D015-B56C-4924-A7F6-890BFCDF45A8.jpeg', '2021-11-25', 14, 1, '1', 'A478567F-715F-473A-99AA-2CB7BB4023AB.jpeg', 'ت', 2021, 12, 0),
(124, 'انوار ياسر صائغ', 1156881391, '07E9A054-35D1-4F3F-8D06-646A823448A7.jpeg', '2021-11-21', 7, 1, '1', '4A8D8CC0-3395-4B00-B1FA-B42C78B99804.jpeg', 'ت', 2021, 12, 0),
(125, 'احمد محمد الصاعدي', 1002583332, '57463AE9-7394-49C0-BF6B-A59B2D85C1C6.jpeg', '2021-11-25', 14, 1, '1', '32E90E5B-4E9C-4117-8B4A-A6C6634DD94D.jpeg', 'ت', 2021, 12, 0),
(126, 'محمد محمد الهتاري', 2052749880, '53884101-0C1F-4347-906F-D961D7ED6592.jpeg', '2021-11-25', 8, 1, '2', 'AEA9AE18-DE84-4DFF-8408-4F5160E5ECE6.jpeg', 'طواري ', 2021, 12, 0),
(127, 'نهى حسين العبدلي ', 1008965335, 'FE1E833D-08C4-416F-817D-E51D576CED26.jpeg', '2021-11-24', 11, 3, '1', '3BE51C1F-558E-42CF-BF28-F23942E7AB7F.jpeg', 'تم', 2021, 12, 0),
(128, 'عبدالاحد محمدي', 2135632798, 'DF4E77C9-EF75-47F8-9920-8250A2DB9606.jpeg', '2021-11-25', 9, 1, '1', 'AB3045BD-59CA-4120-BD4C-35F1A34C8654.jpeg', 'تم', 2021, 12, 0),
(129, 'فاطمه عباس فلمبان ', 1063093403, '968184E5-326B-4BEF-8748-CA91A97DC2B3.jpeg', '2021-11-25', 7, 1, '1', '5C9E1011-F8A2-45DF-92E8-1AA270FEFBB1.jpeg', 'تم', 2021, 12, 0),
(130, 'يوسف احمد اللهيبي', 1035916616, 'F8148F88-11F7-4A82-9140-AA2924BBA2B1.jpeg', '2021-11-25', 8, 1, '1', '710CA364-F386-4DB1-A102-6CFAA532E481.jpeg', 'تم', 2021, 12, 0),
(131, 'عبدالرحمن سعيد العلياني ', 1103883110, '26F8256E-97CD-45C3-9930-A2002AC35855.jpeg', '2021-11-25', 14, 1, '1', '805C5C91-15C4-470E-98AF-69E93BF8ACA8.jpeg', 'تم', 2021, 12, 0),
(132, 'نوران عبدالرحمن الغامدي', 1198713883, 'CEEB0FD1-ED3C-4521-9750-A2E9DEA191A5.jpeg', '2021-11-25', 5, 3, '1', 'DC0296D6-0B84-4FFB-B9E0-A216CA308F72.jpeg', 'تم', 2021, 12, 0),
(133, 'سمير مكي فراش', 1023310483, 'A1E66204-645D-4C64-9F29-3E43932022D4.jpeg', '2021-11-25', 14, 1, '1', '3C18D08F-D60A-4F45-9481-8D0E7DE4CDDC.jpeg', 'تم', 2021, 12, 0),
(134, 'عابديه يحي عطوه', 1073052175, '03CC09D9-B1F3-4D82-8757-5B355AE143AB.jpeg', '2021-11-24', 2, 1, '1', '31EC7234-0289-4766-BD2A-99B22BCE0C93.jpeg', 'تم', 2021, 12, 0),
(135, 'علي محسن الحارثي', 1101072732, '2F278126-B97C-4F05-88E9-7486FE374EFF.jpeg', '2021-11-28', 10, 1, '1', '6CD813EE-BF35-4311-A72C-F37D805A0C44.jpeg', 'تم', 2021, 12, 0),
(136, 'عائشة عوظه الزهراني', 1033946094, 'CFD06553-89C9-472D-93CA-7147E2DF482D.jpeg', '2021-11-30', 7, 1, '1', 'AF8A9736-F0E2-46D5-8BA3-C4E237F734F8.jpeg', 'تم', 2021, 12, 0),
(137, 'احمد عابد العرابي', 1026078715, 'D418CF1A-8BF9-47F1-B263-5155AA9D0525.png', '2021-11-29', 2, 1, '1', '7AA212CF-5AB5-47E6-B8C4-C0CA9127DC93.jpeg', 'تم', 2021, 12, 0),
(138, 'احمد عايد العرابي', 1026078715, '3889D8FA-845D-48C9-B62A-40BB72170184.png', '2021-11-29', 14, 1, '1', 'DA2C70B0-B010-4123-8A16-0C74BB11E5E5.jpeg', 'تم', 2021, 12, 0),
(139, 'احمد محمد القرني', 1033997592, '4D2FAF5F-6CF5-4AE8-983A-2F30FC617825.jpeg', '2021-11-25', 7, 1, '1', '609A7A10-2CC7-49B8-98A9-61E43A7E64AF.jpeg', 'تم', 2021, 12, 0),
(141, 'عيضه حامد النباتي', 1054793219, '8E86F83F-FAD0-4CE9-9D25-EAAB95AFB76D.jpeg', '2021-11-28', 15, 1, '1', '27E14B20-043E-440D-8930-BEF3E0CFB3DF.jpeg', 'تم', 2021, 12, 0),
(142, 'اماني عبدالله العامدي', 1049029463, '134F95EB-868C-4BEC-A102-9A2FCD7E30DD.jpeg', '2021-11-28', 11, 3, '1', 'FA1D6A6F-A2CB-4C30-A60E-5D1B46C84839.jpeg', 'تم', 2021, 12, 0),
(143, 'عبدالرحمن محمد الجابري', 1054296114, 'D5183ABA-382E-44F7-8289-5CC11408AAC6.jpeg', '2021-11-28', 18, 1, '1', '7212FAC6-AD69-451F-A3B0-05A41F9347E7.jpeg', 'تم', 2021, 12, 0),
(144, 'ياسر محمد حجي', 1030320905, '27F1BA01-D280-4604-8061-E25AA193BE5C.jpeg', '2021-11-28', 10, 1, '1', 'C878E0D2-FB06-4D37-89ED-3FD103BC971E.jpeg', 'ام', 2021, 12, 0),
(145, 'عبدالعزيز خميس الجحدلي', 1109931053, 'E4106C2F-B7F1-46A8-8C24-1237F5050DF3.jpeg', '2021-11-28', 15, 1, '1', '1FA801F0-101D-4754-88CC-7BDB78809D76.jpeg', 'تم', 2021, 12, 0),
(146, 'سفيان نايف القناوي', 1104022700, '854D758A-90FE-4F27-B768-17798ABBC345.jpeg', '2021-11-28', 10, 1, '1', '72C36F09-ADE2-4FD8-8008-3C1B344DE1DF.jpeg', 'تم', 2021, 12, 0),
(147, 'سفيان نايف القناوي', 1104022700, '62C65B12-A148-46C4-A223-17C0F37F2C86.jpeg', '2021-11-28', 2, 1, '1', 'F39FF89A-1334-45E6-8AB4-40DA13E9A441.jpeg', 'تم', 2021, 12, 0),
(148, 'محمد عبدالله الازوري', 1110443296, 'F30EDCD4-F7C7-435C-B868-4CE8BE9F0757.jpeg', '2021-11-28', 3, 1, '1', '4062F988-1CEE-427E-A3AB-523DF481E7A6.jpeg', 'تم', 2021, 12, 0),
(149, 'اعجاز احمد مولا بخش', 2147483647, '4F361D83-58AA-44CA-812D-71538522B851.jpeg', '2021-11-28', 10, 0, '1', 'CF770A2A-22F4-4ACF-B0F7-DC6909C8DE32.jpeg', 'تم', 2021, 12, 0),
(150, 'طلال فهد العيسى', 1186947022, 'A91B91F8-3BBC-4A1B-A9B3-7470D49181FC.jpeg', '2021-11-28', 7, 1, '1', 'D83464BE-2FDF-47BB-86B4-012EA34A0055.jpeg', 'تم', 2021, 12, 0),
(151, 'ايناس احمد محمود ابا', 1098236431, 'DCF79292-5FA7-4673-BEAD-C0F1D9984C4A.jpeg', '2021-11-28', 7, 1, '1', 'F06E788D-8201-4DFA-BA57-F0BB4CAF9AC9.jpeg', 'تم', 2021, 12, 0),
(152, 'شيماء حمزه عريف', 1068812625, 'AEDE215D-8676-41EC-BA05-DE733CA21B33.jpeg', '2021-11-29', 7, 1, '1', '10147423-0EF4-4398-AD25-A3FF98388565.jpeg', 'تم', 2021, 12, 0),
(153, 'خالد حسين السرواني', 1108572486, 'C2B9786E-5886-496C-8E3D-4EFFB9BF1631.jpeg', '2021-11-29', 14, 1, '1', 'F11967F3-CFA8-4B88-A571-936CA9638CAC.jpeg', 'تم', 2021, 12, 0),
(154, 'سلمى فرج الدعدي', 1099349423, 'E639DF23-21DF-4CF8-808C-5B57BE058501.jpeg', '2021-11-29', 7, 1, '1', '9308ABBA-9A6E-4129-9F4A-7F14E5A34D90.jpeg', 'تم', 2021, 12, 0),
(155, 'عامر اقبال محمد اقبال', 2147483647, 'BA7B4240-03DE-46D2-8D3C-DFE65F0D5D1A.jpeg', '2021-11-29', 9, 1, '1', 'BFD374DF-19B1-4AB7-A368-A5F593B84EB1.jpeg', 'تم', 2021, 12, 0),
(156, 'سدرة فادي سبحي', 1156491829, '82719468-8E4F-4315-B4F4-219AF1C98DEF.jpeg', '2021-11-29', 14, 1, '1', '84C4EE74-A1F2-4497-AEB4-06BBADB94C82.jpeg', 'تم', 2021, 12, 0),
(157, 'على عيسى الراجحي', 1089978108, 'EC3554A7-FBDC-4E81-9180-9172B1D62464.jpeg', '2021-11-29', 2, 1, '1', 'BE0216B5-E868-4E36-B387-53A95E4E74FA.jpeg', 'تم', 2021, 12, 0),
(158, 'شهد عساف الحارثي', 1118753274, 'E477BFED-C078-49D5-A021-5277A59B2835.jpeg', '2021-11-29', 7, 1, '1', '1BB67CF6-EB4C-4426-A3DA-9071C7A36156.jpeg', 'تم', 2021, 12, 0),
(159, 'هنوف صالح العبيدي', 1099604298, '17F5BF81-226F-4C09-99A2-53BFA5EF5699.jpeg', '2021-11-29', 11, 3, '1', '8E6DAF1D-2D21-4C04-8A67-24B18B74BD90.jpeg', 'تم', 2021, 12, 0),
(160, 'سالم عيضه الزهراني', 1023137613, 'BE875E05-27DB-4F0E-B31F-772E1EDA9366.jpeg', '2021-11-29', 10, 1, '1', '1718A573-DFB8-476D-8768-56920F02492E.jpeg', 'تم', 2021, 12, 0),
(161, 'اسماء فرحة الشمراني', 1090131903, 'D7D6221A-C838-41E0-9EA7-8D79042FEE99.jpeg', '2021-11-29', 7, 1, '1', '751C073F-E5AC-4FAA-8F3F-27CB174EA0D4.jpeg', 'تم', 2021, 12, 0),
(162, 'لمار علي الشريف', 1169152475, '6DFB4EEE-CE1D-44DE-B4D3-44682F61EC4B.jpeg', '2021-11-29', 9, 1, '1', 'EA888701-0F17-4CFE-AF39-756C6C0C29DE.jpeg', 'تم', 2021, 12, 0),
(163, 'نهاء بركات العبدلي الشريف', 1009063429, '671DA0EE-46D4-4C92-A2E9-5EE54D4F017A.jpeg', '2021-11-30', 11, 3, '1', '7742F20E-ACE8-4730-823D-372FB846A10D.jpeg', 'تم', 2021, 12, 0),
(164, 'اسامة على الزهراني', 1117813871, '7E81028F-1DE5-4A91-B163-44FDBDE3B9E8.jpeg', '2021-11-29', 7, 1, '1', 'A2AC1CE3-3071-4369-8F8C-C15D2A24B29F.jpeg', 'تم', 2021, 12, 0),
(165, 'فاطمة ناصر القرني', 1013923402, '086FA784-445C-4EB8-9F40-EA89AFF12092.jpeg', '2021-11-30', 21, 1, '1', '60218FA7-FF1C-4656-80CE-C9D2C3B17374.jpeg', 'تم', 2021, 12, 0),
(166, 'دعاء مفرج الثقفي', 1085934618, '1663E564-D8CE-4ECF-8851-3F66A09E8272.jpeg', '2021-12-05', 7, 1, '1', 'D8DED9B0-BF9C-46DF-8867-801E7D0E9CDE.jpeg', 'تم', 2021, 12, 0),
(167, 'مطير غرم الله الزهراني', 1087663298, 'B2165D00-DDA9-4AA9-A811-F79F2632E9C2.jpeg', '2021-12-05', 10, 1, '1', '344DC30E-765A-4863-92EE-62B5428CC639.jpeg', 'تم', 2021, 12, 0),
(169, 'ايمان عيضه السيالي', 1024310649, 'F3F56190-7EC2-4F8D-867D-1B4E877D0F70.jpeg', '2021-12-05', 11, 1, '1', '2D4C2559-7264-440F-831E-0BBE4E258EEB.jpeg', 'تحويل ', 2021, 12, 0),
(170, 'خالد عبدالرحمن القرعاوي', 1062822638, 'F9558908-2F5A-4556-8416-81E7FB7846C8.jpeg', '2021-12-05', 16, 1, '1', '9CB29E52-7C54-4983-A410-59E51EFFACCD.jpeg', 'تحويل ', 2021, 12, 0),
(171, 'خديجه محمد لغبي', 1116911874, '67DE8D71-D33E-4B11-91BB-CF46929496BD.jpeg', '2021-12-06', 11, 3, '1', '679AD574-EFF9-4F54-83E2-7CC8D4B06A10.jpeg', 'تم', 2021, 12, 0),
(172, 'محمد عبدالرحمن الزهراني', 1077412987, '16AB1370-A26C-4278-8C35-1B802D72B316.jpeg', '2021-12-06', 3, 1, '1', '5FC8A16D-51E8-436A-AE2F-014A5C9259BF.jpeg', 'تم', 2021, 12, 0),
(173, 'انس عبدالفتاح سندي', 1098345562, 'B23AFC22-4018-45EB-BCCE-A2867280B853.jpeg', '2021-12-06', 14, 1, '1', '15339B0C-D208-4DF1-BA7B-2EB81150B5FD.jpeg', 'تم', 2021, 12, 0),
(174, 'عبدالمحسن محمد السلمي', 1008361824, '76C32407-DAF8-4BEB-8262-2D0CAFC43913.jpeg', '2021-12-06', 3, 1, '1', '9415858A-576C-4BBC-A278-7FEA9A3FA66E.jpeg', 'روماتيزم باطنه', 2021, 12, 0),
(175, 'محمد عاضه البقمي', 1011618301, 'E9F0C2B2-0447-4BF6-B4EC-375DFDC734B9.jpeg', '2021-12-06', 14, 1, '1', '9E1776E6-25E0-4F33-B624-F2C0072E0400.jpeg', 'تم', 2021, 12, 0),
(176, 'حامد عبدالباقي محمد علي', 2136118870, '6D11F338-957A-4A2C-A07C-1D3BF4DBD35C.jpeg', '2022-01-06', 2, 1, '1', '0D30344E-3DD0-4B16-81FB-060C36243A4C.jpeg', 'تم', 2022, 1, 0),
(177, 'فيصل محمد المطرفي', 1170529703, 'EB05EE48-0086-40F2-B451-5B95EECF338D.jpeg', '2022-01-06', 8, 1, '2', 'DD1F5B0F-15BC-46BA-80DD-40C5B4EA0537.jpeg', 'ء', 2022, 1, 0),
(178, 'دانيه حامد بن علي', 1109155224, 'F8402AA7-925C-45A0-91B5-287A049E1BDB.jpeg', '2022-01-06', 11, 3, '1', 'CA6A4869-AEAC-42B5-B01C-A65ACF42E78F.jpeg', 'ء', 2022, 1, 0),
(179, 'بدر محمد الكريديس', 1138818446, 'FD76D00E-9D49-4B53-B05C-AEFEDFA12FFD.jpeg', '2022-01-06', 16, 1, '1', '73A5FD30-424D-4718-BA3E-B4573F98DF49.jpeg', 'ء', 2022, 1, 0),
(181, 'عز بندر النفيعي', 1183526894, '2E1BF11F-69CF-486A-92BA-35A11A75CA13.jpeg', '2021-12-06', 7, 1, '1', 'E996E16C-59DB-445D-A521-77A45ABC5D34.jpeg', 'تم', 2022, 1, 0),
(182, 'حسن على بامانع', 1137601934, 'B28EFAC2-1C47-4D59-BE7D-F3CB6CA62863.jpeg', '2021-12-06', 8, 1, '2', 'CABC9602-C423-4028-809A-AF8B373879C5.jpeg', 'تم', 2022, 1, 0),
(183, 'Trudy Shimp', 916, '', '0000-00-00', 4, 4, '3', '', 'Fully Cloud-Based WhatsApp Messaging System (98% Open Rates Guaranteed!)\r\n\r\n=>> https://glrdff.bizoppsguide.com?traffic_source=cf&cost=0.0\r\n\r\nBrand New WhatsApp Traffic Machine Lets You Send Unlimited Messages To Unlimited Contacts With Just 1 Click!\r\n\r\n\r', 2022, 1, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `section`
--

INSERT INTO `section` (`id`, `name`) VALUES
(2, 'العيون'),
(3, 'الباطنية'),
(4, 'القلب'),
(5, 'الاطفال'),
(7, 'الاسنان'),
(8, 'طوارئ'),
(9, 'الجلدية'),
(10, 'الجراحة العامة'),
(11, 'النساء والولادة'),
(12, 'سكر القدم'),
(13, 'السكر'),
(14, 'العظام'),
(15, 'المسالك البولية'),
(16, 'المخ والأعصاب '),
(17, 'الانف والأذن والحنجرة'),
(18, 'عيادة الكسور'),
(19, 'النفسية'),
(20, 'عيادة الغدد الصماء سكر '),
(21, 'عيادة الغدد الصماء باطنه');

-- --------------------------------------------------------

--
-- بنية الجدول `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'عادي'),
(2, 'طارئة'),
(3, 'فوري');

-- --------------------------------------------------------

--
-- بنية الجدول `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validity` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `name`, `password`, `validity`) VALUES
(3, 'admin', 'admin', 1),
(4, 'الشكري', 'admin', 1),
(5, 'makkah', 'admin', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `yaers`
--

CREATE TABLE `yaers` (
  `id` int(11) NOT NULL,
  `yaer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `yaers`
--

INSERT INTO `yaers` (`id`, `yaer`) VALUES
(1, 2020),
(2, 2021),
(3, 2023),
(4, 2024),
(5, 2025),
(6, 2026),
(7, 2027),
(8, 2028),
(9, 2029),
(10, 2030);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignee`
--
ALTER TABLE `assignee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yaers`
--
ALTER TABLE `yaers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignee`
--
ALTER TABLE `assignee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yaers`
--
ALTER TABLE `yaers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
