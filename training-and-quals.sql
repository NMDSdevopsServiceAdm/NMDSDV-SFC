-- Qualifications Reference Data
CREATE TABLE IF NOT EXISTS cqc."Qualifications" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Qualification will appear without impacting on primary key (existing foreign keys)
	"Group" TEXT NOT NULL,
	"Title" TEXT NOT NULL,
  "Code" SMALLINT NOT NULL,
  "From" DATE NULL,         -- Just date component, no time.
  "Until" DATE NULL,        -- Just date component, no time.
  "Level" VARCHAR(2) NULL,
  "MultipleLevel" BOOLEAN NOT NULL,
  "RelevantToSocialCare" BOOLEAN NOT NULL,
  "AnalysisFileCode" VARCHAR(20) NOT NULL
);

INSERT INTO cqc."Qualifications" ("ID", "Seq", "Group", "Title", "Code", "From", "Until", "Level", "MultipleLevel", "RelevantToSocialCare", "AnalysisFileCode") VALUES 
  (1, 10, 'Award','Advanced Award in Social Work (AASW)', 20, NULL, NULL,'7', 'No', 'Yes', 'QL20ACHQ4'),
  (2, 20, 'Award','Award in Stroke Awareness', 86, '2011-01-01', NULL,'2', 'No', 'Yes', 'QL86ACHQ2'),
  (3, 30, 'Award','Award in Supporting Individuals on the Autistic Spectrum', 107, NULL, NULL,'3', 'No', 'Yes', 'QL107ACHQ3'),
  (4, 40, 'Award','Awareness of Dementia', 48, '2010-09-01', NULL,'2', 'Yes', 'Yes', 'QL48ACHQ2'),
  (5, 50, 'Award','Awareness of Dementia', 49, '2010-09-01', NULL,'3', 'Yes', 'Yes', 'QL49ACHQ3'),
  (6, 60, 'Award','Awareness of End of Life Care', 99, NULL, NULL,'2', 'Yes', 'Yes', 'QL99ACHQ2'),
  (7, 70, 'Award','Awareness of End of Life Care', 100, NULL, NULL,'3', 'Yes', 'Yes', 'QL100ACHQ3'),
  (8, 80, 'Award','Awareness of the Mental Capacity Act 2005', 103, '2013-01-01', NULL,'3', 'No', 'Yes', 'QL103ACHQ3'),
  (9, 90, 'Award','Basic awareness of Diabetes', 88, '2011-01-01', NULL,'2', 'No', 'Yes', 'QL88ACHQ2'),
  (10, 100, 'Award','Emergency First Aid at Work', 52, '2008-09-01', NULL,'2', 'No', 'No', 'QL52ACHQ2'),
  (11, 110, 'Award','Employment Responsibilities and Rights in Health, Social Care, Children and Young People''s Settings', 96, '2010-01-01', NULL,'2', 'No', 'Yes', 'QL96ACHQ2'),
  (12, 120, 'Award','Food safety in health and social care and early years and childcare settings', 90, '2011-01-01', NULL,'2', 'No', 'Yes', 'QL90ACHQ2'),
  (13, 130, 'Award','Introduction to Health, Social Care and Children''s and Young People''s Settings', 92, '2011-01-01', NULL,'1', 'No', 'Yes', 'QL92ACHQ1'),
  (14, 140, 'Award','Mental Health Social Work Award (MHSWA)', 22, NULL, NULL,'4', 'No', 'Yes', 'QL22ACHQ4'),
  (15, 150, 'Award','Mentor Award', 25, NULL, NULL,'4', 'No', 'No', 'QL25ACHQ4'),
  (16, 160, 'Award','Post-Qualifying Award in Social Work (PQSW) Part 1', 19, NULL, NULL,'4', 'No', 'Yes', 'QL19ACHQ4'),
  (17, 170, 'Award','Preparing to Work in Adult Social Care', 85, '2011-01-01', NULL,'1', 'No', 'Yes', 'QL85ACHQ1'),
  (18, 180, 'Award','Promoting food safety and nutrition in health and social care or early years and childcare settings', 91, '2011-01-01', NULL,'2', 'No', 'Yes', 'QL91ACHQ2'),
  (19, 190, 'Award','Providing an Induction in to Assisting & Moving Individuals in Adult Social Care', 74, '2011-01-01', NULL,'3', 'No', 'Yes', 'QL74ACHQ3'),
  (20, 200, 'Award','Supporting Activity Provision in Social Care', 41, NULL, NULL,'2', 'No', 'Yes', 'QL41ACHQ2'),
  (21, 210, 'Award','Supporting Individuals with Learning Disabilities', 95, '2011-10-01', NULL,'2', 'Yes', 'Yes', 'QL94ACHQ2'),
  (22, 220, 'Award','Supporting Individuals with Learning Disabilities', 94, '2011-10-01', NULL,'3', 'Yes', 'Yes', 'QL95ACHQ3'),
  (23, 230, 'Award','Understanding Working with People with Mental Health Issues', 72, '2011-01-01', NULL,'2', 'No', 'Yes', 'QL72ACHQ2'),
  (24, 240, 'Award','Any Learning Disabled Awards Framework (LDAF) award', 8, NULL, '2010-07-31',NULL, 'No', 'Yes', 'QL08ACHQ'),
  (25, 250, 'Award','Other management awards', 12, NULL, NULL,'3', 'No', 'No', 'QL12ACHQ3'),
  (26, 260, 'Award','Other Post-Qualifying Social Work Award', 26, NULL, NULL,'4', 'No', 'Yes', 'QL26ACHQ4'),
  (27, 270, 'Award','Any other social care relevant award', 111, NULL, NULL,NULL, 'No', 'No', 'QL111ACHQ'),
  (28, 280, 'Award','Any other non-social care relevant award', 112, NULL, NULL,NULL, 'No', 'Yes', 'QL112ACHQ'),
  (30, 290, 'Certificate','Activity Provision in Social Care', 42, NULL, NULL,'3', 'No', 'Yes', 'QL42ACHQ3'),
  (31, 300, 'Certificate','Adult Care', 110, NULL, NULL,'4', 'No', 'Yes', 'QL110ACHQ4'),
  (32, 310, 'Certificate','Assisting and Moving Individuals in Social Care', 73, '2011-01-01', NULL,'2', 'No', 'Yes', 'QL73ACHQ2'),
  (33, 320, 'Certificate','Certificate in Assisting and Moving Individuals for a Social care Setting', 119, NULL, NULL,'2', 'No', 'Yes', 'QL119ACHQ2'),
  (34, 330, 'Certificate','Certificate in Autism Support', 121, NULL, NULL,'3', 'No', 'Yes', 'QL121ACHQ3'),
  (35, 340, 'Certificate','Certificate in Awareness of Mental Health Problems', 136, NULL, NULL,'2', 'No', 'Yes', 'QL136ACHQ2'),
  (36, 350, 'Certificate','Certificate in Clinical Skills', 123, NULL, NULL,'2', 'Yes', 'Yes', 'QL123ACHQ2'),
  (37, 360, 'Certificate','Certificate in Clinical Skills', 124, NULL, NULL,'3', 'Yes', 'Yes', 'QL124ACHQ3'),
  (38, 370, 'Certificate','Certificate in Fundamental Knowledge in Commissioning for Wellbeing', 125, NULL, NULL,'5', 'No', 'Yes', 'QL125ACHQ5'),
  (39, 380, 'Certificate','Certificate in Independent Advocacy', 118, NULL, NULL,'3', 'No', 'Yes', 'QL118ACHQ3'),
  (40, 390, 'Certificate','Certificate in Mental Health Awareness', 137, NULL, NULL,'2', 'No', 'Yes', 'QL137ACHQ2'),
  (41, 400, 'Certificate','Certificate in Principles of Leadership and Management in Adult Care', 131, NULL, NULL,'4', 'No', 'Yes', 'QL131ACHQ4'),
  (42, 410, 'Certificate','Certificate in Principles of Safe Handling of Medication in Health and Social Care (RQF)', 134, NULL, NULL,'2', 'No', 'Yes', 'QL134ACHQ2'),
  (43, 420, 'Certificate','Certificate in Principles of Working with People with Mental Health Needs', 138, NULL, NULL,'2', 'No', 'Yes', 'QL138ACHQ2'),
  (44, 430, 'Certificate','Certificate in Social Prescribing', 143, NULL, NULL,'3', 'No', 'Yes', 'QL143ACHQ3'),
  (45, 440, 'Certificate','Certificate in Stroke Care Management', 87, '2011-01-01', NULL,'3', 'No', 'Yes', 'QL87ACHQ3'),
  (47, 450, 'Certificate','Certificate in Supporting Individuals on the Autistic Spectrum', 108, NULL, NULL,'3', 'No', 'Yes', 'QL108ACHQ3'),
  (48, 460, 'Certificate','Certificate in Understand Mental Health', 141, NULL, NULL,'3', 'No', 'Yes', 'QL141ACHQ3'),
  (49, 470, 'Certificate','Certificate in Understanding Autism', 120, NULL, NULL,'2', 'Yes', 'Yes', 'QL120ACHQ2'),
  (50, 480, 'Certificate','Certificate in Understanding Autism', 122, NULL, NULL,'3', 'Yes', 'Yes', 'QL122ACHQ3'),
  (51, 490, 'Certificate','Certificate in Understanding Care and Management of Diabetes', 126, NULL, NULL,'2', 'Yes', 'Yes', 'QL126ACHQ2'),
  (52, 500, 'Certificate','Certificate in Understanding Care and Management of Diabetes', 128, NULL, NULL,'3', 'Yes', 'Yes', 'QL128ACHQ3'),
  (53, 510, 'Certificate','Certificate in Understanding Diabetes', 127, NULL, NULL,'2', 'No', 'Yes', 'QL127ACHQ2'),
  (54, 520, 'Certificate','Certificate in Understanding Mental Health Care', 142, NULL, NULL,'3', 'No', 'Yes', 'QL142ACHQ3'),
  (55, 530, 'Certificate','Certificate in Understanding the Safe Handling of Medication', 133, NULL, NULL,'2', 'No', 'Yes', 'QL133ACHQ2'),
  (56, 540, 'Certificate','Certificate in Understanding the Safe Handling of Medication in Health and Social Care', 135, NULL, NULL,'2', 'No', 'Yes', 'QL135ACHQ2'),
  (57, 550, 'Certificate','Certificate in Understanding Working in Mental Health', 139, NULL, NULL,'2', 'No', 'Yes', 'QL139ACHQ2'),
  (58, 560, 'Certificate','Certificate in Understanding Working with People with Mental Health Needs', 140, NULL, NULL,'2', 'No', 'Yes', 'QL140ACHQ2'),
  (59, 570, 'Certificate','Delivering Chair-Based Exercise with Frailer Older Adults and Adults with Disabilities in Care and Community Settings', 98, '2012-01-01', NULL,'2', 'No', 'Yes', 'QL98ACHQ2'),
  (60, 580, 'Certificate','Dementia Care', 50, '2010-09-01', NULL,'2', 'Yes', 'Yes', 'QL50ACHQ2'),
  (61, 590, 'Certificate','Dementia Care', 51, '2010-09-01', NULL,'3', 'Yes', 'Yes', 'QL51ACHQ3'),
  (62, 600, 'Certificate','Introduction to Health, Social Care and Children''s and Young People''s Settings', 93, '2011-01-01', NULL,'1', 'No', 'Yes', 'QL93ACHQ1'),
  (63, 610, 'Certificate','Leading and Managing Services to Support End of Life and Significant Life Events', 102, NULL, NULL,'5', 'No', 'Yes', 'QL102ACHQ5'),
  (64, 620, 'Certificate','Preparing to work in Adult Social Care', 76, '2011-01-01', NULL,'2', 'Yes', 'Yes', 'QL76ACHQ2'),
  (65, 630, 'Certificate','Preparing to work in Adult Social Care', 77, '2011-01-01', NULL,'3', 'Yes', 'Yes', 'QL77ACHQ3'),
  (66, 640, 'Certificate','Supporting Individuals with Learning Disabilities', 67, '2011-01-01', NULL,'2', 'Yes', 'Yes', 'QL67ACHQ2'),
  (67, 650, 'Certificate','Supporting Individuals with Learning Disabilities', 68, '2011-01-01', NULL,'3', 'Yes', 'Yes', 'QL68ACHQ3'),
  (68, 660, 'Certificate','Working in End of Life care', 101, NULL, NULL,'3', 'No', 'Yes', 'QL101ACHQ3'),
  (69, 670, 'Certificate','Working with individuals with Diabetes', 89, '2011-01-01', NULL,'3', 'No', 'Yes', 'QL89ACHQ3'),
  (71, 680, 'Degree','Combined Nursing & Social Work degree', 18, NULL, NULL,'6', 'No', 'Yes', 'QL18ACHQ4'),
  (72, 690, 'Degree','Social Work degree (UK)', 16, NULL, NULL,'6', 'No', 'Yes', 'QL16ACHQ4'),
  (74, 700, 'Diploma','Adult Care', 109, NULL, NULL,'4', 'No', 'Yes', 'QL109ACHQ4'),
  (75, 710, 'Diploma','Approved Mental Health Practitioner', 104, '2000-01-01', NULL,'4', 'No', 'Yes', 'QL104ACHQ4'),
  (76, 720, 'Diploma','Approved Social Worker', 105, '2000-01-01', NULL,'4', 'No', 'Yes', 'QL105ACHQ4'),
  (77, 730, 'Diploma','Diploma in Care (RQF)', 129, NULL, NULL,'2', 'Yes', 'Yes', 'QL129ACHQ2'),
  (78, 740, 'Diploma','Diploma in Care (RQF)', 130, NULL, NULL,'3', 'Yes', 'Yes', 'QL130ACHQ3'),
  (79, 750, 'Diploma','Diploma in Leadership and Management for Adult Care (RQF)', 132, NULL, NULL,'5', 'No', 'Yes', 'QL132ACHQ5'),
  (80, 760, 'Diploma','Health and Social Care - Generic Pathway', 53, '2011-01-01', NULL,'2', 'Yes', 'Yes', 'QL53ACHQ2'),
  (81, 770, 'Diploma','Health and Social Care - Generic Pathway', 54, '2011-01-01', NULL,'3', 'Yes', 'Yes', 'QL54ACHQ3'),
  (82, 780, 'Diploma','Health and Social Care - Dementia', 55, '2011-01-01', NULL,'2', 'Yes', 'Yes', 'QL55ACHQ2'),
  (83, 790, 'Diploma','Health and Social Care - Dementia', 56, '2011-01-01', NULL,'3', 'Yes', 'Yes', 'QL56ACHQ3'),
  (84, 800, 'Diploma','Health and Social Care - Learning Disabilities', 57, '2011-01-01', NULL,'2', 'Yes', 'Yes', 'QL57ACHQ2'),
  (85, 810, 'Diploma','Health and Social Care - Learning Disabilities', 58, '2011-01-01', NULL,'3', 'Yes', 'Yes', 'QL58ACHQ3'),
  (86, 820, 'Diploma','Leadership in Health and Social Care and Children and Young People''s Services - Adults'' Residential Management', 62, '2011-01-01', NULL,'5', 'No', 'Yes', 'QL62ACHQ5'),
  (87, 830, 'Diploma','Leadership in Health and Social Care and Children and Young People''s Services - Adults'' Management', 63, '2011-01-01', NULL,'5', 'No', 'Yes', 'QL63ACHQ5'),
  (88, 840, 'Diploma','Leadership in Health and Social Care and Children and Young People''s Services - Adults'' Advanced Practice', 64, '2011-01-01', NULL,'5', 'No', 'Yes', 'QL64ACHQ5'),
  (89, 850, 'Diploma','Social Work diploma or other approved UK or non-UK social work qualification', 17, NULL, NULL,'4', 'Yes', 'Yes', 'QL17ACHQ4'),
  (90, 860, 'Diploma','Any other social care relevant diploma', 115, NULL, NULL,NULL, 'No', 'Yes', 'QL115ACHQ'),
  (91, 870, 'Diploma','Any other non-social care relevant diploma', 116, NULL, NULL,NULL, 'No', 'No', 'QL116ACHQ'),
  (93, 880, 'NVQ','Care NVQ', 4, NULL, '2007-01-31','2', 'Yes', 'Yes', 'QL04ACHQ2'),
  (94, 890, 'NVQ','Care NVQ', 5, NULL, '2007-01-31','3', 'Yes', 'Yes', 'QL05ACHQ3'),
  (95, 900, 'NVQ','Care NVQ', 6, NULL, '2007-01-31','4', 'Yes', 'Yes', 'QL06ACHQ4'),
  (96, 910, 'NVQ','Health and Social Care NVQ', 3, NULL, '2012-12-31','4', 'Yes', 'Yes', 'QL03ACHQ4'),
  (97, 920, 'NVQ','Health and Social Care NVQ', 1, NULL, '2012-12-31','2', 'Yes', 'Yes', 'QL01ACHQ2'),
  (98, 930, 'NVQ','Health and Social Care NVQ', 2, NULL, '2012-12-31','3', 'Yes', 'Yes', 'QL02ACHQ3'),
  (99, 940, 'NVQ','Other health and care-related NVQ(s)', 9, NULL, '2012-12-31',NULL, 'No', 'Yes', 'QL09ACHQ'),
  (100, 950, 'NVQ','Registered Manager''s (Adults) NVQ', 10, NULL, '2011-07-31','4', 'No', 'Yes', 'QL10ACHQ4'),
  (102, 960, 'Assessor and mentoring','A1, A2 or other Assessor NVQ', 13, NULL, '2013-12-31','3', 'No', 'No', 'QL13ACHQ3'),
  (103, 970, 'Assessor and mentoring','Any Assessor qualification', 82, '2011-01-01', NULL,NULL, 'No', 'No', 'QL82ACHQ'),
  (104, 980, 'Assessor and mentoring','Any Internal Verifier qualification', 83, '2011-01-01', NULL,NULL, 'No', 'No', 'QL83ACHQ'),
  (105, 990, 'Assessor and mentoring','Any Mentoring qualification', 84, '2011-01-01', NULL,NULL, 'No', 'No', 'QL84ACHQ'),
  (106, 1000, 'Assessor and mentoring','L20 or other Mentoring NVQ', 15, NULL, '2013-12-31','3', 'No', 'No', 'QL15ACHQ3'),
  (107, 1010, 'Assessor and mentoring','V1 or other Internal Verifier NVQ', 14, NULL, '2013-12-31','3', 'No', 'No', 'QL14ACHQ3'),
  (109, 1020, 'Any other qualification','A Basic Skills qualification', 35, NULL, '2014-08-31','1', 'Yes', 'No', 'QL35ACHQ1'),
  (110, 1030, 'Any other qualification','A Basic Skills qualification', 36, NULL, '2014-08-31','2', 'Yes', 'No', 'QL36ACHQ2'),
  (111, 1040, 'Any other qualification','A Basic Skills qualification', 34, NULL, NULL,'E', 'Yes', 'No', 'QL34ACHQE'),
  (112, 1050, 'Any other qualification','Any childrens/young people''s qualification', 117, NULL, NULL,NULL, 'No', 'No', 'QL117ACHQ'),
  (113, 1060, 'Any other qualification','Any other relevant professional qualification', 33, NULL, NULL,'4', 'No', 'No', 'QL33ACHQ4'),
  (114, 1070, 'Any other qualification','Any professional Occupational Therapy qualification', 27, NULL, NULL,'4', 'No', 'Yes', 'QL27ACHQ4'),
  (115, 1080, 'Any other qualification','Any qualification in assessment of work-based learning other than social work', 32, NULL, NULL,'3', 'No', 'No', 'QL32ACHQ3'),
  (116, 1090, 'Any other qualification','Any Registered Nursing qualification', 28, NULL, NULL,'4', 'No', 'Yes', 'QL28ACHQ4'),
  (117, 1100, 'Any other qualification','Any other qualification relevant to social care', 37, NULL, NULL,NULL, 'No', 'Yes', 'QL37ACHQ'),
  (118, 1110, 'Any other qualification','Any other qualification relevant to the job role', 38, NULL, NULL,NULL, 'No', 'No', 'QL38ACHQ'),
  (119, 1120, 'Any other qualification','Any other qualifications held', 39, NULL, NULL,NULL, 'No', 'No', 'QL39ACHQ'),
  (121, 1130, 'Apprenticeship','Adult Care Worker (standard)', 302, NULL, NULL,'2', 'Yes', 'No', 'QL302ACHQ2'),
  (122, 1140, 'Apprenticeship','Adult Care Worker (standard)', 304, NULL, NULL,'3', 'Yes', 'No', 'QL304ACHQ3'),
  (123, 1150, 'Apprenticeship','Advance Apprenticeships in Health and Social Care (framework)', 303, NULL, NULL,'3', 'No', 'No', 'QL303ACHQ3'),
  (124, 1160, 'Apprenticeship','Degree Registered Nurse (standard)', 310, NULL, NULL,'6', 'No', 'No', 'QL310ACHQ6'),
  (125, 1170, 'Apprenticeship','Degree Social Worker (standard)', 308, NULL, NULL,'6', 'No', 'No', 'QL308ACHQ6'),
  (126, 1180, 'Apprenticeship','Higher Apprenticeship in Care Leadership and Management (framework)', 306, NULL, NULL,'5', 'No', 'No', 'QL306ACHQ5'),
  (127, 1190, 'Apprenticeship','Intermediate Apprenticeship in Health and Social Care (framework)', 301, NULL, NULL,'2', 'No', 'No', 'QL301ACHQ2'),
  (128, 1200, 'Apprenticeship','Lead Practitioner in Adult Care (standard)', 305, NULL, NULL,'4', 'No', 'No', 'QL305ACHQ4'),
  (129, 1210, 'Apprenticeship','Leader in Adult Care (standard)', 307, NULL, NULL,'5', 'No', 'No', 'QL307ACHQ5'),
  (130, 1220, 'Apprenticeship','Nursing Associate (standard)', 309, NULL, NULL,'5', 'No', 'No', 'QL309ACHQ5'),
  (131, 1230, 'Apprenticeship','Occupational Therapist', 312, NULL, NULL,'6', 'No', 'No', 'QL312ACHQ6'),
  (132, 1240, 'Apprenticeship','Physiotherapist', 313, NULL, NULL,'6', 'No', 'No', 'QL313ACHQ6'),
  (133, 1250, 'Apprenticeship','Any other apprenticeship framework or standard', 311, NULL, NULL,NULL, 'No', 'No', 'QL311ACHQ');

CREATE TABLE IF NOT EXISTS cqc."WorkerQualifications" (
	"ID" SERIAL NOT NULL PRIMARY KEY,
  "UID" UUID NOT NULL,
  "WorkerFK" INTEGER NOT NULL,
  "QualificationsFK" INTEGER NOT NULL,
  "Year" SMALLINT NULL,
  "Notes" TEXT NULL,
  created timestamp without time zone NOT NULL DEFAULT now(),
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(120) COLLATE pg_catalog."default" NOT NULL,
  CONSTRAINT "WorkerQualifications_Worker_fk" FOREIGN KEY ("WorkerFK") REFERENCES cqc."Worker" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "WorkerQualifications_Qualifications_fk" FOREIGN KEY ("QualificationsFK") REFERENCES cqc."Qualifications" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "WorkerQualifications_UID_unq" UNIQUE ("UID"),
  CONSTRAINT "Workers_WorkerQualifications_unq" UNIQUE ("WorkerFK", "QualificationsFK")
);
CREATE INDEX "WorkerQualifications_WorkerFK" on cqc."WorkerQualifications" ("WorkerFK");
CREATE INDEX "WorkerQualifications_QualificationsFK" on cqc."WorkerQualifications" ("QualificationsFK");


-- Training Categories Reference Data
CREATE TABLE IF NOT EXISTS cqc."TrainingCategories" (
	"ID" INTEGER NOT NULL PRIMARY KEY,
	"Seq" INTEGER NOT NULL, 	-- this is the order in which the Training Category will appear without impacting on primary key (existing foreign keys)
	"Category" TEXT NOT NULL
);

INSERT INTO cqc."TrainingCategories" ("ID", "Seq", "Category") VALUES 
  (1, 10,  'Activity provision/Well-being'),
  (2, 20,  'Autism'),
  (3, 30,  'Childrens / young people''s related training'),
  (4, 40,  'Communication skills'),
  (5, 50,  'Complaints handling/conflict resolution'),
  (6, 60,  'Confidentiality/GDPR'),
  (7, 70,  'Continence Care'),
  (8, 80,  'Control and restraint'),
  (9, 90,  'Coshh'),
  (10, 100,  'Dementia care'),
  (11, 110,  'Diabetes'),
  (12, 120,  'Dignity, Respect, Person Centred care'),
  (13, 130,  'Duty of care'),
  (14, 140,  'Emergency Aid awareness'),
  (15, 150,  'Epilepsy'),
  (16, 160,  'Equality, diversity and human rights training'),
  (17, 170,  'Fire safety'),
  (18, 180,  'First Aid'),
  (19, 190,  'Food safety and catering'),
  (20, 200,  'Health and Safety'),
  (21, 210,  'Infection Control'),
  (22, 220,  'Leadership & Management'),
  (23, 230,  'Learning disability'),
  (24, 240,  'Medication safe handling and awareness'),
  (25, 250,  'Mental capacity and Deprivation of liberty'),
  (26, 260,  'Mental health'),
  (27, 270,  'Moving and Handling'),
  (28, 280,  'Nutrition and hydration'),
  (29, 290,  'Palliative or end of life care'),
  (30, 300,  'Personal Care'),
  (31, 310,  'Physical Disability'),
  (32, 320,  'Positive behaviour and support'),
  (33, 330,  'Safeguarding Adults'),
  (34, 340,  'Sensory disability'),
  (35, 350,  'Stroke'),
  (36, 360,  'Supervision / Performance management'),
  (37, 370,  'Any other not in the above categories');

CREATE TYPE cqc."WorkerTrainingAccreditation" AS ENUM (
    'Yes',
    'No',
    'Don''t know'
);
CREATE TABLE IF NOT EXISTS cqc."WorkerTraining" (
	"ID"  SERIAL NOT NULL PRIMARY KEY,
  "UID" UUID NOT NULL,
  "WorkerFK" INTEGER NOT NULL,
  "CategoryFK" INTEGER NOT NULL,
  "Title" VARCHAR(120) NULL,
  "Accredited" cqc."WorkerTrainingAccreditation" NULL,
  "Completed" DATE NULL,
  "Expires" DATE NULL,
  "Notes" TEXT NULL,
  created timestamp without time zone NOT NULL DEFAULT now(),
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(120) COLLATE pg_catalog."default" NOT NULL,
  CONSTRAINT "WorkerTraining_Worker_fk" FOREIGN KEY ("WorkerFK") REFERENCES cqc."Worker" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "WorkerTraining_Training_Category_fk" FOREIGN KEY ("CategoryFK") REFERENCES cqc."TrainingCategories" ("ID") MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "WorkerTraining_UID_unq" UNIQUE ("UID")
);
CREATE INDEX "WorkerTraining_WorkerFK" on cqc."WorkerTraining" ("WorkerFK");
CREATE INDEX "WorkerTraining_QualificationsFK" on cqc."WorkerTraining" ("CategoryFK");
