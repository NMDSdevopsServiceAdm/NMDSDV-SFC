-- DDL for Workers

-- DROP/CLEAN SCHEMA
DROP TABLE IF EXISTS cqc."WorkerAudit";
DROP TABLE IF EXISTS cqc."Worker";
DROP TABLE IF EXISTS cqc."Ethnicity";
DROP TABLE IF EXISTS cqc."Nationality";
DROP TABLE IF EXISTS cqc."Country";
DROP TABLE IF EXISTS cqc."RecruitedFrom";
DROP TABLE IF EXISTS cqc."Qualification";
DROP TYPE IF EXISTS cqc."AuditChangeType";
DROP TYPE IF EXISTS cqc."WorkerContract";
DROP TYPE IF EXISTS cqc."WorkerApprovedMentalHealthWorker";
DROP TYPE IF EXISTS cqc."WorkerGender";
DROP TYPE IF EXISTS cqc."WorkerDisability";
DROP TYPE IF EXISTS cqc."WorkerDisability";
DROP TYPE IF EXISTS cqc."WorkerNationality";
DROP TYPE IF EXISTS cqc."WorkerCountryOfBirth";
DROP TYPE IF EXISTS cqc."WorkerRecruitedFrom";
DROP TYPE IF EXISTS cqc."WorkerBritishCitizenship";
DROP TYPE IF EXISTS cqc."WorkerYearArrived";
DROP TYPE IF EXISTS cqc."WorkerSocialCareStartDate";
DROP TYPE IF EXISTS cqc."WorkerOtherJobs";
DROP TYPE IF EXISTS cqc."WorkerDaysSick";
DROP TYPE IF EXISTS cqc."WorkerZeroHoursContract";
DROP TYPE IF EXISTS cqc."WorkerWeeklyHoursAverage";
DROP TYPE IF EXISTS cqc."WorkerWeeklyHoursContracted";
DROP TYPE IF EXISTS cqc."WorkerAnnualWeeklyPay";


-- CREATE/RE-CREATE SCHEMA
CREATE TYPE cqc."WorkerContract" AS ENUM (
    'Permanent',
    'Temporary',
    'Pool/Bank',
	'Agency',
	'Other'
);

CREATE TYPE cqc."WorkerApprovedMentalHealthWorker" AS ENUM (
	'Yes',
	'No',
	'Don''t know'
);

CREATE TYPE cqc."WorkerGender" AS ENUM (
	'Female',
	'Male',
	'Other',
	'Don''t know'
);

CREATE TYPE cqc."WorkerDisability" AS ENUM (
	'Yes',
	'No',
	'Undisclosed',
	'Don''t know'
);

CREATE TYPE cqc."WorkerNationality" AS ENUM (
	'British',
	'Other',
	'Don''t know'
);

CREATE TYPE cqc."WorkerCountryOfBirth" AS ENUM (
	'United Kingdom',
	'Other',
	'Don''t know'
);

CREATE TYPE cqc."WorkerRecruitedFrom" AS ENUM (
	'Yes',
	'No'
);

CREATE TYPE cqc."WorkerBritishCitizenship" AS ENUM (
	'Yes',
	'No',
	'Don''t know'
);
CREATE TYPE cqc."WorkerYearArrived" AS ENUM (
	'Yes',
	'No'
);
CREATE TYPE cqc."WorkerSocialCareStartDate" AS ENUM (
	'Yes',
	'No'
);
CREATE TYPE cqc."WorkerOtherJobs" AS ENUM (
	'Yes',
	'No'
);

CREATE TYPE cqc."WorkerDaysSick" AS ENUM (
	'Yes',
	'No'
);
CREATE TYPE cqc."WorkerZeroHoursContract" AS ENUM (
	'Yes',
	'No',
	'Don''t know'
);
CREATE TYPE cqc."WorkerWeeklyHoursAverage" AS ENUM (
	'Yes',
	'No'
);
CREATE TYPE cqc."WorkerWeeklyHoursContracted" AS ENUM (
	'Yes',
	'No'
);
CREATE TYPE cqc."WorkerAnnualWeeklyPay" AS ENUM (
	'Hourly',
	'Annually',
	'Don''t know'
);


-- Ethnicity Reference Data
CREATE TABLE IF NOT EXISTS cqc."Ethnicity" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Ethinicity will appear without impacting on primary key (existing foreign keys)
	"EthnicityGroup" TEXT NOT NULL,
	"Ethnicity" TEXT NOT NULL
);
INSERT INTO cqc."Ethnicity" ("ID", "Seq", "EthnicityGroup", "Ethnicity") VALUES 
	(1, 1, '', 'English / Welsh / Scottish / Northern Irish / British'),
	(2, 2, '', 'Don''t know'),
	(3, 200, 'White', 'Irish'),
	(4, 201, 'White', 'Gypsy or Irish Traveller'),
	(5, 202, 'White', 'Any other White background'),
	(6, 300, 'Mixed / multiple ethnic groups', 'White and Black Caribbean'),
	(7, 301, 'Mixed / multiple ethnic groups', 'White and Black African'),
	(8, 302, 'Mixed / multiple ethnic groups', 'White and Asian'),
	(9, 303, 'Mixed / multiple ethnic groups', 'Any other Mixed/ multiple ethnic background'),
	(10, 400, 'Asian / Asian British', 'Indian'),
	(11, 401, 'Asian / Asian British', 'Pakistani'),
	(12, 402, 'Asian / Asian British', 'Bangladeshi'),
	(13, 403, 'Asian / Asian British', 'Chinese'),
	(14, 404, 'Asian / Asian British', 'Any other Asian background'),
	(15, 500, 'Black / African / Caribbean / Black British', 'African'),
	(16, 501, 'Black / African / Caribbean / Black British', 'Caribbean'),
	(17, 502, 'Black / African / Caribbean / Black British', 'Any other Black / African / Caribbean background'),
	(18, 600, 'Other ethnic group', 'Arab'),
	(19, 601, 'Other ethnic group', 'Any other ethnic group');

-- Nationality Reference Data
CREATE TABLE IF NOT EXISTS cqc."Nationality" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Ethinicity will appear without impacting on primary key (existing foreign keys)
	"Nationality" TEXT NOT NULL
);
INSERT INTO cqc."Nationality" ("ID", "Seq", "Nationality") VALUES
(1,1, 'Afghan'),
(2,2, 'Albanian'),
(3,3, 'Algerian'),
(4,4, 'American'),
(5,5, 'Andorran'),
(6,6, 'Angolan'),
(7,7, 'Anguillan'),
(8,8, 'Citizen of Antigua and Barbuda'),
(9,9, 'Argentine'),
(10,10, 'Armenian'),
(11,11, 'Australian'),
(12,12, 'Austrian'),
(13,13, 'Azerbaijani'),
(14,14, 'Bahamian'),
(15,15, 'Bahraini'),
(16,16, 'Bangladeshi'),
(17,17, 'Barbadian'),
(18,18, 'Belarusian'),
(19,19, 'Belgian'),
(20,20, 'Belizean'),
(21,21, 'Beninese'),
(22,22, 'Bermudian'),
(23,23, 'Bhutanese'),
(24,24, 'Bolivian'),
(25,25, 'Citizen of Bosnia and Herzegovina'),
(26,26, 'Botswanan'),
(27,27, 'Brazilian'),
(28,28, 'British'),
(29,29, 'British Virgin Islander'),
(30,30, 'Bruneian'),
(31,31, 'Bulgarian'),
(32,32, 'Burkinan'),
(33,33, 'Burmese'),
(34,34, 'Burundian'),
(35,35, 'Cambodian'),
(36,36, 'Cameroonian'),
(37,37, 'Canadian'),
(38,38, 'Cape Verdean'),
(39,39, 'Cayman Islander'),
(40,40, 'Central African'),
(41,41, 'Chadian'),
(42,42, 'Chilean'),
(43,43, 'Chinese'),
(44,44, 'Colombian'),
(45,45, 'Comoran'),
(46,46, 'Congolese (Congo)'),
(47,47, 'Congolese (DRC)'),
(48,48, 'Cook Islander'),
(49,49, 'Costa Rican'),
(50,50, 'Croatian'),
(51,51, 'Cuban'),
(52,52, 'Cymraes'),
(53,53, 'Cymro'),
(54,54, 'Cypriot'),
(55,55, 'Czech'),
(56,56, 'Danish'),
(57,57, 'Djiboutian'),
(58,58, 'Dominican'),
(59,59, 'Citizen of the Dominican Republic'),
(60,60, 'Dutch'),
(61,61, 'East Timorese'),
(62,62, 'Ecuadorean'),
(63,63, 'Egyptian'),
(64,64, 'Emirati'),
(65,65, 'English'),
(66,66, 'Equatorial Guinean'),
(67,67, 'Eritrean'),
(68,68, 'Estonian'),
(69,69, 'Ethiopian'),
(70,70, 'Faroese'),
(71,71, 'Fijian'),
(72,72, 'Filipino'),
(73,73, 'Finnish'),
(74,74, 'French'),
(75,75, 'Gabonese'),
(76,76, 'Gambian'),
(77,77, 'Georgian'),
(78,78, 'German'),
(79,79, 'Ghanaian'),
(80,80, 'Gibraltarian'),
(81,81, 'Greek'),
(82,82, 'Greenlandic'),
(83,83, 'Grenadian'),
(84,84, 'Guamanian'),
(85,85, 'Guatemalan'),
(86,86, 'Citizen of Guinea-Bissau'),
(87,87, 'Guinean'),
(88,88, 'Guyanese'),
(89,89, 'Haitian'),
(90,90, 'Honduran'),
(91,91, 'Hong Konger'),
(92,92, 'Hungarian'),
(93,93, 'Icelandic'),
(94,94, 'Indian'),
(95,95, 'Indonesian'),
(96,96, 'Iranian'),
(97,97, 'Iraqi'),
(98,98, 'Irish'),
(99,99, 'Israeli'),
(100,100, 'Italian'),
(101,101, 'Ivorian'),
(102,102, 'Jamaican'),
(103,103, 'Japanese'),
(104,104, 'Jordanian'),
(105,105, 'Kazakh'),
(106,106, 'Kenyan'),
(107,107, 'Kittitian'),
(108,108, 'Citizen of Kiribati'),
(109,109, 'Kosovan'),
(110,110, 'Kuwaiti'),
(111,111, 'Kyrgyz'),
(112,112, 'Lao'),
(113,113, 'Latvian'),
(114,114, 'Lebanese'),
(115,115, 'Liberian'),
(116,116, 'Libyan'),
(117,117, 'Liechtenstein citizen'),
(118,118, 'Lithuanian'),
(119,119, 'Luxembourger'),
(120,120, 'Macanese'),
(121,121, 'Macedonian'),
(122,122, 'Malagasy'),
(123,123, 'Malawian'),
(124,124, 'Malaysian'),
(125,125, 'Maldivian'),
(126,126, 'Malian'),
(127,127, 'Maltese'),
(128,128, 'Marshallese'),
(129,129, 'Martiniquais'),
(130,130, 'Mauritanian'),
(131,131, 'Mauritian'),
(132,132, 'Mexican'),
(133,133, 'Micronesian'),
(134,134, 'Moldovan'),
(135,135, 'Monegasque'),
(136,136, 'Mongolian'),
(137,137, 'Montenegrin'),
(138,138, 'Montserratian'),
(139,139, 'Moroccan'),
(140,140, 'Mosotho'),
(141,141, 'Mozambican'),
(142,142, 'Namibian'),
(143,143, 'Nauruan'),
(144,144, 'Nepalese'),
(145,145, 'New Zealander'),
(146,146, 'Nicaraguan'),
(147,147, 'Nigerian'),
(148,148, 'Nigerien'),
(149,149, 'Niuean'),
(150,150, 'North Korean'),
(151,151, 'Northern Irish'),
(152,152, 'Norwegian'),
(153,153, 'Omani'),
(154,154, 'Pakistani'),
(155,155, 'Palauan'),
(156,156, 'Palestinian'),
(157,157, 'Panamanian'),
(158,158, 'Papua New Guinean'),
(159,159, 'Paraguayan'),
(160,160, 'Peruvian'),
(161,161, 'Pitcairn Islander'),
(162,162, 'Polish'),
(163,163, 'Portuguese'),
(164,164, 'Prydeinig'),
(165,165, 'Puerto Rican'),
(166,166, 'Qatari'),
(167,167, 'Romanian'),
(168,168, 'Russian'),
(169,169, 'Rwandan'),
(170,170, 'Salvadorean'),
(171,171, 'Sammarinese'),
(172,172, 'Samoan'),
(173,173, 'Sao Tomean'),
(174,174, 'Saudi Arabian'),
(175,175, 'Scottish'),
(176,176, 'Senegalese'),
(177,177, 'Serbian'),
(178,178, 'Citizen of Seychelles'),
(179,179, 'Sierra Leonean'),
(180,180, 'Singaporean'),
(181,181, 'Slovak'),
(182,182, 'Slovenian'),
(183,183, 'Solomon Islander'),
(184,184, 'Somali'),
(185,185, 'South African'),
(186,186, 'South Korean'),
(187,187, 'South Sudanese'),
(188,188, 'Spanish'),
(189,189, 'Sri Lankan'),
(190,190, 'St Helenian'),
(191,191, 'St Lucian'),
(192,192, 'Stateless'),
(193,193, 'Sudanese'),
(194,194, 'Surinamese'),
(195,195, 'Swazi'),
(196,196, 'Swedish'),
(197,197, 'Swiss'),
(198,198, 'Syrian'),
(199,199, 'Taiwanese'),
(200,200, 'Tajik'),
(201,201, 'Tanzanian'),
(202,202, 'Thai'),
(203,203, 'Togolese'),
(204,204, 'Tongan'),
(205,205, 'Trinidadian'),
(206,206, 'Tristanian'),
(207,207, 'Tunisian'),
(208,208, 'Turkish'),
(209,209, 'Turkmen'),
(210,210, 'Turks and Caicos Islander'),
(211,211, 'Tuvaluan'),
(212,212, 'Ugandan'),
(213,213, 'Ukrainian'),
(214,214, 'Uruguayan'),
(215,215, 'Uzbek'),
(216,216, 'Vatican citizen'),
(217,217, 'Citizen of Vanuatu'),
(218,218, 'Venezuelan'),
(219,219, 'Vietnamese'),
(220,220, 'Vincentian'),
(221,221, 'Wallisian'),
(222,222, 'Welsh'),
(223,223, 'Yemeni'),
(224,224, 'Zambian'),
(225,225, 'Zimbabwean');


-- Country Reference Data
CREATE TABLE IF NOT EXISTS cqc."Country" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Ethinicity will appear without impacting on primary key (existing foreign keys)
	"Country" TEXT NOT NULL
);
INSERT INTO cqc."Country" ("ID", "Seq", "Country") VALUES
	(1,1, 'Afghanistan'),
	(2,2, 'Aland Islands'),
	(3,3, 'Albania'),
	(4,4, 'Algeria'),
	(5,5, 'American Samoa'),
	(6,6, 'Andorra'),
	(7,7, 'Angola'),
	(8,8, 'Anguilla'),
	(9,9, 'Antarctica'),
	(10,10, 'Antigua and Barbuda'),
	(11,11, 'Argentina'),
	(12,12, 'Armenia'),
	(13,13, 'Aruba'),
	(14,14, 'Australia'),
	(15,15, 'Austria'),
	(16,16, 'Azerbaijan'),
	(17,17, 'Bahamas'),
	(18,18, 'Bahrain'),
	(19,19, 'Bangladesh'),
	(20,20, 'Barbados'),
	(21,21, 'Belarus'),
	(22,22, 'Belgium'),
	(23,23, 'Belize'),
	(24,24, 'Benin'),
	(25,25, 'Bermuda'),
	(26,26, 'Bhutan'),
	(27,27, 'Bolivia'),
	(28,28, 'Bosnia and Herzegovina'),
	(29,29, 'Botswana'),
	(30,30, 'Bouvet Island'),
	(31,31, 'Brazil'),
	(32,32, 'British Indian Ocean Territory'),
	(33,33, 'Brunei Darussalam'),
	(34,34, 'Bulgaria'),
	(35,35, 'Burkina Faso'),
	(36,36, 'Burundi'),
	(37,37, 'Cambodia'),
	(38,38, 'Cameroon'),
	(39,39, 'Canada'),
	(40,40, 'Cape Verde'),
	(41,41, 'Cayman Islands'),
	(42,42, 'Central African Republic'),
	(43,43, 'Chad'),
	(44,44, 'Chile'),
	(45,45, 'China'),
	(46,46, 'Christmas Island'),
	(47,47, 'Cocos (Keeling) Islands'),
	(48,48, 'Colombia'),
	(49,49, 'Comoros'),
	(50,50, 'Congo'),
	(51,51, 'Congo Democratic Republic of the'),
	(52,52, 'Cook Islands'),
	(53,53, 'Costa Rica'),
	(54,54, 'Cote d''Ivoire'),
	(55,55, 'Croatia'),
	(56,56, 'Cuba'),
	(57,57, 'Cyprus'),
	(58,58, 'Czech Republic'),
	(59,59, 'Denmark'),
	(60,60, 'Djibouti'),
	(61,61, 'Dominica'),
	(62,62, 'Dominican Republic'),
	(63,63, 'Ecuador'),
	(64,64, 'Egypt'),
	(65,65, 'El Salvador'),
	(66,66, 'Equatorial Guinea'),
	(67,67, 'Eritrea'),
	(68,68, 'Estonia'),
	(69,69, 'Ethiopia'),
	(70,70, 'Falkland Islands (Malvinas)'),
	(71,71, 'Faroe Islands'),
	(72,72, 'Fiji'),
	(73,73, 'Finland'),
	(74,74, 'France'),
	(75,75, 'French Guiana'),
	(76,76, 'French Polynesia'),
	(77,77, 'French Southern Territories'),
	(78,78, 'Gabon'),
	(79,79, 'Gambia'),
	(80,80, 'Georgia'),
	(81,81, 'Germany'),
	(82,82, 'Ghana'),
	(83,83, 'Gibraltar'),
	(84,84, 'Greece'),
	(85,85, 'Greenland'),
	(86,86, 'Grenada'),
	(87,87, 'Guadeloupe'),
	(88,88, 'Guam'),
	(89,89, 'Guatemala'),
	(90,90, 'Guernsey'),
	(91,91, 'Guinea'),
	(92,92, 'Guinea-Bissau'),
	(93,93, 'Guyana'),
	(94,94, 'Haiti'),
	(95,95, 'Gibraltar'),
	(96,96, 'Greece'),
	(97,97, 'Greenland'),
	(98,98, 'Grenada'),
	(99,99, 'Guadeloupe'),
	(100,100, 'Guam'),
	(101,101, 'Guatemala'),
	(102,102, 'Guernsey'),
	(103,103, 'Guinea'),
	(104,104, 'Guinea-Bissau'),
	(105,105, 'Guyana'),
	(106,106, 'Haiti'),
	(107,107, 'Heard Island and McDonald Islands'),
	(108,108, 'Holy See (Vatican City State)'),
	(109,109, 'Honduras'),
	(110,110, 'Hong Kong'),
	(111,111, 'Hungary'),
	(112,112, 'Iceland'),
	(113,113, 'India'),
	(114,114, 'Indonesia'),
	(115,115, 'Iran Islamic Republic of'),
	(116,116, 'Iraq'),
	(117,117, 'Ireland'),
	(118,118, 'Israel'),
	(119,119, 'Italy'),
	(120,120, 'Jamaica'),
	(121,121, 'Japan'),
	(122,122, 'Jersey'),
	(123,123, 'Jordan'),
	(124,124, 'Kazakhstan'),
	(125,125, 'Kenya'),
	(126,126, 'Kiribati'),
	(127,127, 'Korea Democratic People''s Republic of'),
	(128,128, 'Korea Republic of'),
	(129,129, 'Kuwait'),
	(130,130, 'Kyrgyzstan'),
	(131,131, 'Latvia'),
	(132,132, 'Lebanon'),
	(133,133, 'Lesotho'),
	(134,134, 'Liberia'),
	(135,135, 'Libyan Arab Jamahiriya'),
	(136,136, 'Liechtenstein'),
	(137,137, 'Lithuania'),
	(138,138, 'Luxembourg'),
	(139,139, 'Macao'),
	(140,140, 'Macedonia the former Yugoslav Republic of'),
	(141,141, 'Madagascar'),
	(142,142, 'Malawi'),
	(143,143, 'Malaysia'),
	(144,144, 'Maldives'),
	(145,145, 'Mali'),
	(146,146, 'Malta'),
	(147,147, 'Marshall Islands'),
	(148,148, 'Martinique'),
	(149,149, 'Mauritania'),
	(150,150, 'Mauritius'),
	(151,151, 'Mayotte'),
	(152,152, 'Mexico'),
	(153,153, 'Micronesia Federated States of'),
	(154,154, 'Moldova'),
	(155,155, 'Monaco'),
	(156,156, 'Mongolia'),
	(157,157, 'Montenegro'),
	(158,158, 'Montserrat'),
	(159,159, 'Morocco'),
	(160,160, 'Mozambique'),
	(161,161, 'Myanmar'),
	(162,162, 'Namibia'),
	(163,163, 'Nauru'),
	(164,164, 'Nepal'),
	(165,165, 'Netherlands'),
	(166,166, 'Netherlands Antilles'),
	(167,167, 'New Caledonia'),
	(168,168, 'New Zealand'),
	(169,169, 'Nicaragua'),
	(170,170, 'Niger'),
	(171,171, 'Nigeria'),
	(172,172, 'Niue'),
	(173,173, 'Norfolk Island'),
	(174,174, 'Northern Mariana Islands'),
	(175,175, 'Norway'),
	(176,176, 'Oman'),
	(177,177, 'Pakistan'),
	(178,178, 'Palau'),
	(179,179, 'Palestinian Territory Occupied'),
	(180,180, 'Panama'),
	(181,181, 'Papua New Guinea'),
	(182,182, 'Paraguay'),
	(183,183, 'Peru'),
	(184,184, 'Philippines'),
	(185,185, 'Pitcairn'),
	(186,186, 'Poland'),
	(187,187, 'Portugal'),
	(188,188, 'Puerto Rico'),
	(189,189, 'Qatar'),
	(190,190, 'Reunion'),
	(191,191, 'Romania'),
	(192,192, 'Russian Federation'),
	(193,193, 'Rwanda'),
	(194,194, 'Saint Barthelemy'),
	(195,195, 'Saint Helena'),
	(196,196, 'Saint Kitts and Nevis'),
	(197,197, 'Saint Lucia'),
	(198,198, 'Saint Martin (French part)'),
	(199,199, 'Saint Pierre and Miquelon'),
	(200,200, 'Saint Vincent and the Grenadines'),
	(201,201, 'Samoa'),
	(202,202, 'San Marino'),
	(203,203, 'Sao Tome and Principe'),
	(204,204, 'Saudi Arabia'),
	(205,205, 'Senegal'),
	(206,206, 'Serbia'),
	(207,207, 'Seychelles'),
	(208,208, 'Sierra Leone'),
	(209,209, 'Singapore'),
	(210,210, 'Slovakia'),
	(211,211, 'Slovenia'),
	(212,212, 'Solomon Islands'),
	(213,213, 'Somalia'),
	(214,214, 'South Africa'),
	(215,215, 'South Georgia and the South Sandwich Islands'),
	(216,216, 'South Sudan'),
	(217,217, 'Spain'),
	(218,218, 'Sri Lanka'),
	(219,219, 'Sudan'),
	(220,220, 'Suriname'),
	(221,221, 'Svalbard and Jan Mayen'),
	(222,222, 'Swaziland'),
	(223,223, 'Sweden'),
	(224,224, 'Switzerland'),
	(225,225, 'Syrian Arab Republic'),
	(226,226, 'Taiwan Province of China'),
	(227,227, 'Tajikistan'),
	(228,228, 'Tanzania United Republic of'),
	(229,229, 'Thailand'),
	(230,230, 'Timor-Leste'),
	(231,231, 'Togo'),
	(232,232, 'Tokelau'),
	(233,233, 'Tonga'),
	(234,234, 'Trinidad and Tobago'),
	(235,235, 'Tunisia'),
	(236,236, 'Turkey'),
	(237,237, 'Turkmenistan'),
	(238,238, 'Turks and Caicos Islands'),
	(239,239, 'Tuvalu'),
	(240,240, 'Uganda'),
	(241,241, 'Ukraine'),
	(242,242, 'United Arab Emirates'),
	(244,244, 'United States'),
	(245,245, 'United States Minor Outlying Islands'),
	(246,246, 'Uruguay'),
	(247,247, 'Uzbekistan'),
	(248,248, 'Vanuatu'),
	(249,249, 'Venezuela'),
	(250,250, 'Viet Nam'),
	(251,251, 'Virgin Islands British'),
	(252,252, 'Virgin Islands U.S.'),
	(253,253, 'Wallis and Futuna'),
	(254,254, 'Western Sahara'),
	(255,255, 'Yemen'),
	(256,256, 'Zambia'),
	(257,257, 'Zimbabwe ');

-- "Recruited From" Reference Data
CREATE TABLE IF NOT EXISTS cqc."RecruitedFrom" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Ethinicity will appear without impacting on primary key (existing foreign keys)
	"From" TEXT NOT NULL
);
INSERT INTO cqc."RecruitedFrom" ("ID", "Seq", "From") VALUES
	(1,1, 'Adult care sector: Local Authority'),
	(2,2, 'Adult care sector: private or voluntary sector'),
	(3,3, 'Health sector'),
	(4,4, 'Childrens/young people''s social care'),
	(5,5, 'Other sector'),
	(6,6, 'Internal promotion or transfer or career development'),
	(7,7, 'Not previously employed'),
	(8,8, 'Agency'),
	(9,9, 'First role after education'),
	(10,10, 'Other sources');


-- Qualifications Reference Data
CREATE TABLE IF NOT EXISTS cqc."Qualification" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Ethinicity will appear without impacting on primary key (existing foreign keys)
	"Level" TEXT NOT NULL
);
INSERT INTO cqc."Qualification" ("ID", "Seq", "Level") VALUES
	(1,1, 'Entry level'),
	(2,2, 'Level 1'),
	(3,3, 'Level 2'),
	(4,4, 'Level 3'),
	(5,5, 'Level 4'),
	(6,6, 'Level 5'),
	(7,7, 'Level 6'),
	(8,8, 'Level 7'),
	(9,9, 'Level 8 or above'),
	(10,10, 'Don''t know');

CREATE TABLE IF NOT EXISTS cqc."Worker" (
	"ID" SERIAL NOT NULL PRIMARY KEY,
	"WorkerUID" UUID NOT NULL,
	"EstablishmentFK" INTEGER NOT NULL,
	"NameOrIdValue" VARCHAR(50) NOT NULL,
	"NameOrIdSavedAt" TIMESTAMP NULL,
	"NameOrIdChangedAt" TIMESTAMP NULL,
	"NameOrIdSavedBy" VARCHAR(120) NULL,
	"NameOrIdChangedBy" VARCHAR(120) NULL,
	"ContractValue" cqc."WorkerContract" NOT NULL,
	"ContractSavedAt" TIMESTAMP NULL,
	"ContractChangedAt" TIMESTAMP NULL,
	"ContractSavedBy" VARCHAR(120) NULL,
	"ContractChangedBy" VARCHAR(120) NULL,
	"MainJobFKValue" INTEGER NOT NULL,
	"MainJobFKSavedAt" TIMESTAMP NULL,
	"MainJobFKChangedAt" TIMESTAMP NULL,
	"MainJobFKSavedBy" VARCHAR(120) NULL,
	"MainJobFKChangedBy" VARCHAR(120) NULL,
	"ApprovedMentalHealthWorkerValue" cqc."WorkerApprovedMentalHealthWorker" NULL,
	"ApprovedMentalHealthWorkerSavedAt" TIMESTAMP NULL,
	"ApprovedMentalHealthWorkerChangedAt" TIMESTAMP NULL,
	"ApprovedMentalHealthWorkerSavedBy" VARCHAR(120) NULL,
	"ApprovedMentalHealthWorkerChangedBy" VARCHAR(120) NULL,
	"MainJobStartDateValue" DATE NULL,		-- Just date component, no time.
	"MainJobStartDateSavedAt" TIMESTAMP NULL,
	"MainJobStartDateChangedAt" TIMESTAMP NULL,
	"MainJobStartDateSavedBy" VARCHAR(120) NULL,
	"MainJobStartDateChangedBy" VARCHAR(120) NULL,
	"NationalInsuranceNumberValue" VARCHAR(13) NULL,
	"NationalInsuranceNumberSavedAt" TIMESTAMP NULL,
	"NationalInsuranceNumberChangedAt" TIMESTAMP NULL,
	"NationalInsuranceNumberSavedBy" VARCHAR(120) NULL,
	"NationalInsuranceNumberChangedBy" VARCHAR(120) NULL,
	"DateOfBirthValue" DATE NULL,
	"DateOfBirthSavedAt" TIMESTAMP NULL,
	"DateOfBirthChangedAt" TIMESTAMP NULL,
	"DateOfBirthSavedBy" VARCHAR(120) NULL,
	"DateOfBirthChangedBy" VARCHAR(120) NULL,
	"PostcodeValue" VARCHAR(8) NULL,
	"PostcodeSavedAt" TIMESTAMP NULL,
	"PostcodeChangedAt" TIMESTAMP NULL,
	"PostcodeSavedBy" VARCHAR(120) NULL,
	"PostcodeChangedBy" VARCHAR(120) NULL,
	"DisabilityValue" cqc."WorkerDisability" NULL,
	"DisabilitySavedAt" TIMESTAMP NULL,
	"DisabilityChangedAt" TIMESTAMP NULL,
	"DisabilitySavedBy" VARCHAR(120) NULL,
	"DisabilityChangedBy" VARCHAR(120) NULL,
	"GenderValue" cqc."WorkerGender" NULL,
	"GenderSavedAt" TIMESTAMP NULL,
	"GenderChangedAt" TIMESTAMP NULL,
	"GenderSavedBy" VARCHAR(120) NULL,
	"GenderChangedBy" VARCHAR(120) NULL,
	"EthnicityFKValue" INTEGER NULL,
	"EthnicityFKSavedAt" TIMESTAMP NULL,
	"EthnicityFKChangedAt" TIMESTAMP NULL,
	"EthnicityFKSavedBy" VARCHAR(120) NULL,
	"EthnicityFKChangedBy" VARCHAR(120) NULL,
	"NationalityValue" cqc."WorkerNationality" NULL,
	"NationalityOtherFK" INTEGER NULL,
	"NationalitySavedAt" TIMESTAMP NULL,
	"NationalityChangedAt" TIMESTAMP NULL,
	"NationalitySavedBy" VARCHAR(120) NULL,
	"NationalityChangedBy" VARCHAR(120) NULL,
	"CountryOfBirthValue" cqc."WorkerCountryOfBirth" NULL,
	"CountryOfBirthOtherFK" INTEGER NULL,
	"CountryOfBirthSavedAt" TIMESTAMP NULL,
	"CountryOfBirthChangedAt" TIMESTAMP NULL,
	"CountryOfBirthSavedBy" VARCHAR(120) NULL,
	"CountryOfBirthChangedBy" VARCHAR(120) NULL,
	"QualificationFKValue" INTEGER NULL,
	"QualificationFKSavedAt" TIMESTAMP NULL,
	"QualificationFKChangedAt" TIMESTAMP NULL,
	"QualificationFKSavedBy" VARCHAR(120) NULL,
	"QualificationFKChangedBy" VARCHAR(120) NULL,
	"RecruitedFromValue" cqc."WorkerRecruitedFrom" NULL,
	"RecruitedFromOtherFK" INTEGER NULL,
	"RecruitedFromSavedAt" TIMESTAMP NULL,
	"RecruitedFromChangedAt" TIMESTAMP NULL,
	"RecruitedFromSavedBy" VARCHAR(120) NULL,
	"RecruitedFromChangedBy" VARCHAR(120) NULL,
	"BritishCitizenshipValue" cqc."WorkerBritishCitizenship" NULL,
	"BritishCitizenshipSavedAt" TIMESTAMP NULL,
	"BritishCitizenshipChangedAt" TIMESTAMP NULL,
	"BritishCitizenshipSavedBy" VARCHAR(120) NULL,
	"BritishCitizenshipChangedBy" VARCHAR(120) NULL,
	"YearArrivedValue" cqc."WorkerYearArrived" NULL,
	"YearArrivedYear" INTEGER NULL,		-- is an integer because only referencing the year part of date
	"YearArrivedSavedAt" TIMESTAMP NULL,
	"YearArrivedChangedAt" TIMESTAMP NULL,
	"YearArrivedSavedBy" VARCHAR(120) NULL,
	"YearArrivedChangedBy" VARCHAR(120) NULL,
	"SocialCareStartDateValue" cqc."WorkerSocialCareStartDate" NULL,
	"SocialCareStartDateYear" INTEGER NULL,		-- is an integer because only referencing the year part of date
	"SocialCareStartDateSavedAt" TIMESTAMP NULL,
	"SocialCareStartDateChangedAt" TIMESTAMP NULL,
	"SocialCareStartDateSavedBy" VARCHAR(120) NULL,
	"SocialCareStartDateChangedBy" VARCHAR(120) NULL,
	"OtherJobsValue" cqc."WorkerOtherJobs" NULL,
	"OtherJobsSavedAt" TIMESTAMP NULL,
	"OtherJobsChangedAt" TIMESTAMP NULL,
	"OtherJobsSavedBy" VARCHAR(120) NULL,
	"OtherJobsChangedBy" VARCHAR(120) NULL,
	"DaysSickValue" cqc."WorkerDaySick" NULL,
	"DaysSickDays" NUMERIC(4,1) NULL,
	"DaysSickSavedAt" TIMESTAMP NULL,
	"DaysSickChangedAt" TIMESTAMP NULL,
	"DaysSickSavedBy" VARCHAR(120) NULL,
	"DaysSickChangedBy" VARCHAR(120) NULL,
	"ZeroHoursContractValue" cqc."WorkerZeroHoursContract" NULL,
	"ZeroHoursContractSavedAt" TIMESTAMP NULL,
	"ZeroHoursContractChangedAt" TIMESTAMP NULL,
	"ZeroHoursContractSavedBy" VARCHAR(120) NULL,
	"ZeroHoursContractChangedBy" VARCHAR(120) NULL,
	"WeeklyHoursAverageValue" cqc."WorkerWeeklyHoursAverage" NULL,
	"WeeklyHoursAverageHours" INTEGER NULL,
	"WeeklyHoursAverageSavedAt" TIMESTAMP NULL,
	"WeeklyHoursAverageChangedAt" TIMESTAMP NULL,
	"WeeklyHoursAverageSavedBy" VARCHAR(120) NULL,
	"WeeklyHoursAverageChangedBy" VARCHAR(120) NULL,
	"WeeklyHoursContractedValue" cqc."WorkerWeeklyHoursContracted" NULL,
	"WeeklyHoursContractedHours" INTEGER NULL,
	"WeeklyHoursContractedSavedAt" TIMESTAMP NULL,
	"WeeklyHoursContractedChangedAt" TIMESTAMP NULL,
	"WeeklyHoursContractedSavedBy" VARCHAR(120) NULL,
	"WeeklyHoursContractedChangedBy" VARCHAR(120) NULL,
	"AnnualWeeklyPayValue" cqc."WorkerAnnualWeeklyPay" NULL,
	"AnnualWeeklyPayRate" INTEGER NULL,
	"AnnualWeeklyPaySavedAt" TIMESTAMP NULL,
	"AnnualWeeklyPayChangedAt" TIMESTAMP NULL,
	"AnnualWeeklyPaySavedBy" VARCHAR(120) NULL,
	"AnnualWeeklyPayChangedBy" VARCHAR(120) NULL,
	created TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
	updated TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),	-- note, on creation of record, updated and created are equal
	updatedby VARCHAR(120) NOT NULL,
  CONSTRAINT "Worker_Establishment_fk" FOREIGN KEY ("EstablishmentFK") REFERENCES cqc."Establishment" ("EstablishmentID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_Job_mainjob_fk" FOREIGN KEY ("MainJobFKValue") REFERENCES cqc."Job" ("JobID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_Job_ethnicity_fk" FOREIGN KEY ("EthnicityFKValue") REFERENCES cqc."Ethnicity" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_Job_nationality_fk" FOREIGN KEY ("NationalityOtherFK") REFERENCES cqc."Nationality" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_Job_country_of_birth_fk" FOREIGN KEY ("CountryOfBirthOtherFK") REFERENCES cqc."Country" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_Job_qualification_fk" FOREIGN KEY ("QualificationFKValue") REFERENCES cqc."Qualification" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_Job_recruited_from_fk" FOREIGN KEY ("RecruitedFromOtherFK") REFERENCES cqc."RecruitedFrom" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "Worker_WorkerUID_unq" UNIQUE ("WorkerUID")
);

CREATE UNIQUE INDEX "Worker_WorkerUID" on cqc."Worker" ("WorkerUID");
CREATE INDEX "Worker_EstablishmentFK" on cqc."Worker" ("EstablishmentFK");

-- change auditting
CREATE TYPE cqc."AuditChangeType" AS ENUM (
	'created',
	'updated',
	'saved',
	'changed'
);
CREATE TABLE IF NOT EXISTS cqc."WorkerAudit" (
	"ID" SERIAL NOT NULL PRIMARY KEY,
	"WorkerFK" INTEGER NOT NULL,
	"Username" VARCHAR(120) NOT NULL,
	"When" TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
	"EventType" cqc."AuditChangeType" NOT NULL,
	"PropertyName" VARCHAR(100) NULL,
	"ChangeEvents" JSONB NULL,
	CONSTRAINT "WorkerAudit_Worker_fk" FOREIGN KEY ("WorkerFK") REFERENCES cqc."Worker" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);
CREATE INDEX "WorkerAudit_WorkerFK" on cqc."WorkerAudit" ("WorkerFK");

-- other jobs reflextion table
CREATE TABLE IF NOT EXISTS cqc."WorkerJobs" (
	"ID" SERIAL NOT NULL PRIMARY KEY,
	"WorkerFK" INTEGER NOT NULL,
	"JobFK" INTEGER NOT NULL,
	CONSTRAINT "WorkerJobs_Worker_fk" FOREIGN KEY ("WorkerFK") REFERENCES cqc."Worker" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT "WorkerJobs_Job_fk" FOREIGN KEY ("JobFK") REFERENCES cqc."Job" ("JobID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
);
CREATE INDEX "WorkerJobs_WorkerFK" on cqc."WorkerJobs" ("WorkerFK");
CREATE INDEX "WorkerJobs_JobFK" on cqc."WorkerJobs" ("JobFK");



-- required to update (rather than rebuild) sfcdevdb
ALTER TABLE cqc."Worker" ADD COLUMN "DaysSickValue" cqc."WorkerDaysSick" NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "DaysSickDays" NUMERIC(4,1) NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "DaysSickSavedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "DaysSickChangedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "DaysSickSavedBy" VARCHAR(120) NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "DaysSickChangedBy" VARCHAR(120) NULL;

ALTER TABLE cqc."Worker" ADD COLUMN "ZeroHoursContractValue" cqc."WorkerZeroHoursContract" NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "ZeroHoursContractSavedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "ZeroHoursContractChangedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "ZeroHoursContractSavedBy" VARCHAR(120) NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "ZeroHoursContractChangedBy" VARCHAR(120) NULL;

ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursAverageValue" cqc."WorkerWeeklyHoursAverage" NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursAverageHours" INTEGER NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursAverageSavedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursAverageChangedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursAverageSavedBy" VARCHAR(120) NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursAverageChangedBy" VARCHAR(120) NULL;

ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursContractedValue" cqc."WorkerWeeklyHoursContracted" NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursContractedHours" INTEGER NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursContractedSavedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursContractedChangedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursContractedSavedBy" VARCHAR(120) NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "WeeklyHoursContractedChangedBy" VARCHAR(120) NULL;

ALTER TABLE cqc."Worker" ADD COLUMN "AnnualWeeklyPayValue" cqc."WorkerAnnualWeeklyPay" NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "AnnualWeeklyPayRate" INTEGER NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "AnnualWeeklyPaySavedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "AnnualWeeklyPayChangedAt" TIMESTAMP NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "AnnualWeeklyPaySavedBy" VARCHAR(120) NULL;
ALTER TABLE cqc."Worker" ADD COLUMN "AnnualWeeklyPayChangedBy" VARCHAR(120) NULL;