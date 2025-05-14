-- First, create the Faculty table
-- CREATE TABLE Faculty (
--     FacultyID INT PRIMARY KEY AUTO_INCREMENT,
--     FacultyName VARCHAR(100) NOT NULL
-- );

-- Then, insert some data into the Faculty table.  This is CRUCIAL.
-- INSERT INTO Faculty (FacultyName) VALUES
--     ('Faculty of Science'),
--     ('Faculty of Engineering'),
--     ('Faculty of Arts'),
--     ('Faculty of Business'),
--     ('Faculty of Medicine'),
--     ('Faculty of Law'),
--     ('Faculty of Education');

-- Now, create the Department table with the foreign key constraint
-- CREATE TABLE Department (
--     DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
--     FacultyID INT,
--     DepartmentName VARCHAR(100) NOT NULL,
--     HeadOfDepartment VARCHAR(100),
--     FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID) ON DELETE CASCADE
-- );

-- Finally, insert data into the Department table, using FacultyIDs that *exist* in the Faculty table
-- INSERT INTO Department (FacultyID, DepartmentName, HeadOfDepartment) VALUES
--     (1, 'Computer Science', 'Dr. Jane Smith'),
--     (1, 'Mathematics', 'Prof. John Doe'),
--     (2, 'Electrical Engineering', 'Dr. Alice Brown'),
--     (2, 'Mechanical Engineering', 'Prof. Bob Green'),
--     (3, 'English', 'Dr. Carol White'),
--     (3, 'History', 'Prof. David Black'),
--     (4, 'Finance', 'Dr. Eve Grey'),
--     (4, 'Management', 'Prof. Frank Blue'),
--     (5, 'Cardiology', 'Dr. Grace Yellow'),
--     (5, 'Pediatrics', 'Prof. Henry Red'),
--     (6, 'Criminal Law', 'Dr. Ivy Purple'),
--     (6, 'Civil Law', 'Prof. Jack Orange'),
--     (7, 'Primary Education', 'Dr. Kelly Silver'),
--     (7, 'Secondary Education', 'Prof. Liam Gold'),
--     (1, 'Software Engineering', 'Dr. Mia Bronze');

-- Assuming you have a database named 'unisaDB'
USE unisaDB;

-- Code to CREATE the 'assessment' table if it doesn't exist
CREATE TABLE IF NOT EXISTS assessment (
    assessment_id INT PRIMARY KEY AUTO_INCREMENT,
    module_code VARCHAR(10) NOT NULL,
    assessment_type VARCHAR(50) NOT NULL,
    due_date DATE NOT NULL,
    maximum_marks INT NOT NULL
);

-- Now, let's INSERT the 40 assessment records
-- INSERT INTO assessment (module_code, assessment_type, due_date, maximum_marks) VALUES
-- ('COS1511', 'Assignment 01', '2025-06-15', 50),
-- ('INF1501', 'Assignment 02', '2025-07-20', 60),
-- ('MAT1512', 'Test 1', '2025-08-10', 40),
-- ('STA1510', 'Assignment 03', '2025-09-05', 75),
-- ('PYC1501', 'Examination', '2025-10-25', 100),
-- ('ENG1503', 'Essay 1', '2025-06-25', 45),
-- ('FAC1502', 'Semester Test', '2025-07-30', 55),
-- ('MNB1501', 'Case Study', '2025-08-20', 80),
-- ('LAW1501', 'Assignment 01', '2025-09-15', 65),
-- ('COM1501', 'Presentation', '2025-10-30', 70),
-- ('COS2611', 'Practical Exam', '2025-06-30', 90),
-- ('INF2601', 'Project Proposal', '2025-07-25', 35),
-- ('MAT2611', 'Test 2', '2025-08-15', 50),
-- ('STA2610', 'Data Analysis', '2025-09-10', 85),
-- ('PYC2602', 'Research Report', '2025-11-05', 120),
-- ('ENG2601', 'Poetry Analysis', '2025-07-05', 40),
-- ('FAC2601', 'Year Mark Assignment', '2025-08-05', 60),
-- ('MNB2601', 'Business Plan', '2025-08-25', 95),
-- ('LAW2601', 'Case Law Analysis', '2025-09-20', 70),
-- ('COM2602', 'Group Project', '2025-11-10', 100),
-- ('COS3711', 'Final Project', '2025-07-15', 150),
-- ('INF3701', 'System Design', '2025-08-10', 80),
-- ('MAT3711', 'Advanced Calculus Exam', '2025-09-05', 110),
-- ('STA3701', 'Statistical Inference', '2025-10-01', 95),
-- ('PYC3701', 'Psychological Assessment', '2025-11-15', 130),
-- ('ENG3701', 'Novel Analysis', '2025-08-20', 55),
-- ('FAC3701', 'Financial Statement Analysis', '2025-09-15', 75),
-- ('MNB3701', 'Strategic Management Report', '2025-10-10', 105),
-- ('LAW3701', 'Legal Research Paper', '2025-10-25', 85),
-- ('COM3701', 'Communication Strategy', '2025-11-20', 115),
-- ('HED1001', 'Portfolio Task 1', '2025-06-20', 40),
-- ('EDS1002', 'Reflection Journal', '2025-07-25', 30),
-- ('ECS1003', 'Lesson Plan 1', '2025-08-15', 50),
-- ('BTE1501', 'Practical Assignment 1', '2025-09-10', 60),
-- ('CHE1501', 'Laboratory Report 1', '2025-10-05', 70),
-- ('PHY1501', 'Experiment Write-up 1', '2025-10-30', 55),
-- ('AGR1501', 'Field Report 1', '2025-11-15', 65),
-- ('SOC1501', 'Research Essay 1', '2025-12-05', 75),
-- ('POL1501', 'Political Analysis 1', '2025-12-15', 80),
-- ('HIS1501', 'Historical Review 1', '2026-01-10', 85);

-- CREATE TABLE Staff (
--     StaffID INT AUTO_INCREMENT PRIMARY KEY,
--     DepartmentID INT NOT NULL,
--     StaffName VARCHAR(255) NOT NULL,
--     StaffPosition VARCHAR(255) NOT NULL,
--     Email VARCHAR(255) NOT NULL,
--     CONSTRAINT fk_department FOREIGN KEY (DepartmentID) 
--         REFERENCES Department(DepartmentID)
-- );

-- Adding an index on Email for faster lookups
-- CREATE INDEX idx_staff_email ON Staff(Email);

-- Adding an index on DepartmentID for faster joins
-- CREATE INDEX idx_staff_department ON Staff(DepartmentID);

-- First, create department records for UNISA (if they don't exist)
-- INSERT INTO Department (DepartmentID, DepartmentName) VALUES
-- (1, 'College of Science, Engineering and Technology'),
-- (2, 'College of Human Sciences'),
-- (3, 'College of Economic and Management Sciences'),
-- (4, 'College of Education'),
-- (5, 'College of Law'),
-- (6, 'College of Agriculture and Environmental Sciences'),
-- (7, 'College of Accounting Sciences');

-- -- Now, insert 28 staff members for UNISA with valid DepartmentIDs
-- INSERT INTO Staff (StaffID, DepartmentID, StaffName, StaffPosition, Email) VALUES
-- (1, 1, 'Thabo Mkhize', 'Professor', 'mkhizt@unisa.ac.za'),
-- (2, 1, 'Sarah Ndlovu', 'Senior Lecturer', 'ndlovs@unisa.ac.za'),
-- (3, 1, 'Michael Botha', 'Lecturer', 'botham@unisa.ac.za'),
-- (4, 1, 'Emily van der Merwe', 'Research Assistant', 'vdmerwe@unisa.ac.za'),
-- (5, 2, 'David Nkosi', 'Head of Department', 'nkosid@unisa.ac.za'),
-- (6, 2, 'Jennifer Molefe', 'Associate Professor', 'molefj@unisa.ac.za'),
-- (7, 2, 'Robert Pillay', 'Researcher', 'pillayr@unisa.ac.za'),
-- (8, 2, 'Lisa Zuma', 'Administrative Assistant', 'zumal@unisa.ac.za'),
-- (9, 3, 'James Mokoena', 'Dean', 'mokoenj@unisa.ac.za'),
-- (10, 3, 'Patricia Dlamini', 'Professor', 'dlaminp@unisa.ac.za'),
-- (11, 3, 'Richard Tshabalala', 'Senior Lecturer', 'tshabar@unisa.ac.za'),
-- (12, 3, 'Susan Mabaso', 'Lecturer', 'mabass@unisa.ac.za'),
-- (13, 4, 'Joseph Mbeki', 'Professor', 'mbekij@unisa.ac.za'),
-- (14, 4, 'Nancy Sithole', 'Senior Lecturer', 'sitholn@unisa.ac.za'),
-- (15, 4, 'Steven Khumalo', 'Lecturer', 'khumais@unisa.ac.za'),
-- (16, 4, 'Karen Modise', 'Research Assistant', 'modisek@unisa.ac.za'),
-- (17, 5, 'Edward Zwane', 'Head of Department', 'zwanee@unisa.ac.za'),
-- (18, 5, 'Sandra Maluleke', 'Professor', 'malules@unisa.ac.za'),
-- (19, 5, 'George Radebe', 'Senior Lecturer', 'radebeg@unisa.ac.za'),
-- (20, 5, 'Donna Khoza', 'Lecturer', 'khozad@unisa.ac.za'),
-- (21, 6, 'Charles Pule', 'Professor', 'pulec@unisa.ac.za'),
-- (22, 6, 'Carol Mathebula', 'Associate Professor', 'mathebuc@unisa.ac.za'),
-- (23, 6, 'Daniel Mokgatle', 'Senior Lecturer', 'mokgatd@unisa.ac.za'),
-- (24, 6, 'Ruth Chauke', 'Lecturer', 'chauker@unisa.ac.za'),
-- (25, 7, 'Matthew Sebola', 'Head of Department', 'sebolam@unisa.ac.za'),
-- (26, 7, 'Deborah Mahlangu', 'Professor', 'mahland@unisa.ac.za'),
-- (27, 7, 'Kevin Mashaba', 'Senior Lecturer', 'mashabk@unisa.ac.za'),
-- (28, 7, 'Linda Ngcobo', 'Lecturer', 'ngcobol@unisa.ac.za');

-- First, let's check what modules already exist in the database
-- SELECT * FROM Module;

-- Create module records for UNISA with all required fields including ModuleCode
-- INSERT INTO Module (ModuleID, ModuleName, ModuleCode, Credits) VALUES
-- (101, 'Introduction to Programming I', 'COS1511', 12),
-- (102, 'Introduction to Programming II', 'COS1512', 12),
-- (103, 'Programming: Data Structures', 'COS2611', 12),
-- (104, 'Programming: Contemporary Concepts', 'COS2614', 12),
-- (105, 'Advanced Programming', 'COS3711', 12),
-- (201, 'African Languages', 'AFL1501', 12),
-- (202, 'Anthropology', 'APY1501', 12),
-- (203, 'Introduction to Psychology', 'PSY1501', 12),
-- (204, 'Introduction to Sociology', 'SOC1501', 12),
-- (301, 'Economics', 'ECS1501', 12),
-- (302, 'Business Management', 'MNG1501', 12),
-- (303, 'Marketing Management', 'MNM1501', 12),
-- (304, 'Introductory Financial Accounting', 'FAC1501', 12),
-- (401, 'Educational Leadership', 'ETH302S', 12),
-- (402, 'Curriculum Studies', 'CUR301Q', 12),
-- (403, 'Educational Psychology', 'EPY301W', 12),
-- (501, 'Constitutional Law', 'CLA1501', 12),
-- (502, 'Criminal Law', 'CRW1501', 12),
-- (503, 'Introduction to Law', 'ILW1501', 12),
-- (601, 'Environmental Science', 'ENV1501', 12),
-- (602, 'Agricultural Economics', 'AGE1501', 12),
-- (701, 'Financial Accounting', 'FAC1502', 12),
-- (702, 'Auditing', 'AUE1501', 12);

-- Now, insert StaffModule relationships with valid ModuleIDs
-- Let's make sure we're using module IDs that now exist
-- INSERT INTO StaffModule (StaffModuleID, StaffID, ModuleID) VALUES
-- (1, 1, 101),  -- Professor Thabo Mkhize teaches COS1511
-- (2, 1, 102),  -- Professor Thabo Mkhize also teaches COS1512
-- (3, 2, 103),  -- Sarah Ndlovu teaches COS2611
-- (4, 3, 104),  -- Michael Botha teaches COS2614
-- (5, 4, 105),  -- Emily van der Merwe teaches COS3711
-- (6, 5, 201),  -- David Nkosi teaches AFL1501
-- (7, 6, 202),  -- Jennifer Molefe teaches APY1501
-- (8, 7, 203),  -- Robert Pillay teaches PSY1501
-- (9, 8, 204),  -- Lisa Zuma teaches SOC1501
-- (10, 9, 301), -- James Mokoena teaches ECS1501
-- (11, 10, 302), -- Patricia Dlamini teaches MNG1501
-- (12, 11, 303), -- Richard Tshabalala teaches MNM1501
-- (13, 12, 304), -- Susan Mabaso teaches FAC1501
-- (14, 13, 401), -- Joseph Mbeki teaches ETH302S
-- (15, 14, 402), -- Nancy Sithole teaches CUR301Q
-- (16, 15, 403), -- Steven Khumalo teaches EPY301W
-- (17, 18, 501), -- Sandra Maluleke teaches CLA1501
-- (18, 19, 502), -- George Radebe teaches CRW1501
-- (19, 20, 503), -- Donna Khoza teaches ILW1501
-- (20, 21, 601), -- Charles Pule teaches ENV1501
-- (21, 22, 602), -- Carol Mathebula teaches AGE1501
-- (22, 25, 701), -- Matthew Sebola teaches FAC1502
-- (23, 26, 702); -- Deborah Mahlangu teaches AUE1501

USE unisaDB;

-- First, let's see what StudentIDs are available in the student table
SELECT StudentID FROM student LIMIT 30;

-- Then, insert into studentmodule using only existing StudentIDs
-- Note: Replace the StudentID values below with actual IDs from your student table
-- This is just a placeholder structure assuming StudentIDs 1-10 exist

-- INSERT INTO studentmodule (StudentModuleID, StudentID, ModuleID, Grade) VALUES 
-- (1001, 1, 101, 85),
-- (1002, 2, 101, 78),
-- (1003, 3, 101, 92),
-- (1004, 4, 101, 65),
-- (1005, 5, 101, 88),
-- (1006, 1, 201, 76),
-- (1007, 2, 201, 82),
-- (1008, 3, 201, 90),
-- (1009, 6, 201, 71),
-- (1010, 7, 201, 84),
-- (1011, 1, 301, 79),
-- (1012, 2, 301, 86),
-- (1013, 8, 301, 94),
-- (1014, 9, 301, 68),
-- (1015, 10, 301, 75),
-- (1016, 4, 401, 81),
-- (1017, 5, 401, 77),
-- (1018, 6, 401, 89),
-- (1019, 7, 401, 72),
-- (1020, 8, 501, 83),
-- (1021, 9, 501, 91),
-- (1022, 10, 501, 69),
-- (1023, 3, 501, 87);

-- USE unisaDB;

-- -- Drop the existing StudyMaterial table
-- DROP TABLE IF EXISTS StudyMaterial;

-- -- Create the StudyMaterial table with ModuleID as VARCHAR
-- CREATE TABLE StudyMaterial (
--     StudyMaterialID INT PRIMARY KEY AUTO_INCREMENT,
--     ModuleID VARCHAR(10) NOT NULL,
--     Title VARCHAR(255) NOT NULL,
--     MaterialType VARCHAR(50) NOT NULL,
--     FilePath VARCHAR(255)
-- );

-- -- Insert 15 rows of study material data
-- INSERT INTO StudyMaterial (ModuleID, Title, MaterialType, FilePath) VALUES
-- ('COS1501', 'Introduction to Programming', 'Textbook', '/path/to/cos1501.pdf'),
-- ('INF1501', 'Information Systems I', 'Lecture Notes', '/path/to/inf1501_notes.pdf'),
-- ('MAT1512', 'Linear Algebra', 'Tutorial', '/path/to/mat1512_tutorial.pdf'),
-- ('STA1510', 'Probability and Statistics I', 'Study Guide', '/path/to/sta1510_guide.pdf'),
-- ('PYC1501', 'General Psychology', 'Reader', '/path/to/pyc1501_reader.pdf'),
-- ('CMY1501', 'Introduction to Criminology', 'Textbook', '/path/to/cmy1501.pdf'),
-- ('ENG1501', 'Foundations in English Literary Studies', 'Lecture Notes', '/path/to/eng1501_notes.pdf'),
-- ('FAC1501', 'Financial Accounting Principles', 'Tutorial', '/path/to/fac1501_tutorial.pdf'),
-- ('MNB1501', 'Business Management IA', 'Study Guide', '/path/to/mnb1501_guide.pdf'),
-- ('LAW1501', 'Introduction to Law', 'Reader', '/path/to/law1501_reader.pdf'),
-- ('COS2611', 'Data Structures and Algorithms', 'Textbook', '/path/to/cos2611.pdf'),
-- ('INF2603', 'Database Design and Development', 'Lecture Notes', '/path/to/inf2603_notes.pdf'),
-- ('MAT2611', 'Calculus I', 'Tutorial', '/path/to/mat2611_tutorial.pdf'),
-- ('STA2610', 'Probability and Statistics II', 'Study Guide', '/path/to/sta2610_guide.pdf'),
-- ('PYC2602', 'Child and Adolescent Development', 'Reader', '/path/to/pyc2602_reader.pdf');

-- -- Select all data from the StudyMaterial table
-- SELECT * FROM StudyMaterial;

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS unisaDB;

-- Use the database
-- USE unisaDB;

-- Create table for graduated students
-- CREATE TABLE IF NOT EXISTS GraduatedStudents (
--     StudentID INT PRIMARY KEY,
--     FirstName VARCHAR(50),
--     LastName VARCHAR(50),
--     DateOfGraduation DATE,
--     Degree VARCHAR(100)
-- );

-- Create table for failed students
-- CREATE TABLE IF NOT EXISTS FailedStudents (
--     StudentID INT PRIMARY KEY,
--     FirstName VARCHAR(50),
--     LastName VARCHAR(50),
--     DateOfFailure DATE,
--     Course VARCHAR(100),
--     ReasonForFailure TEXT
-- );

-- Use the database
-- USE unisaDB;

-- -- Insert data into GraduatedStudents
-- INSERT INTO GraduatedStudents (StudentID, FirstName, LastName, DateOfGraduation, Degree) VALUES
-- ('1', 'Alice', 'Smith', '2024-05-20', 'Bachelor of Science'),
-- ('2', 'Bob', 'Johnson', '2023-12-15', 'Master of Arts'),
-- ('3', 'Charlie', 'Brown', '2024-05-20', 'Bachelor of Engineering'),
-- ('4', 'David', 'Wilson', '2023-12-15', 'Juris Doctor'),
-- ('5', 'Eve', 'Davis', '2024-05-20', 'Bachelor of Business Administration');

-- -- Insert data into FailedStudents
-- INSERT INTO FailedStudents (StudentID, FirstName, LastName, DateOfFailure, Course, ReasonForFailure) VALUES
-- ('6', 'Frank', 'Miller', '2024-03-10', 'Mathematics 101', 'Poor attendance'),
-- ('7', 'Grace', 'Taylor', '2024-03-10', 'Physics 202', 'Failed final exam'),
-- ('8', 'Henry', 'Anderson', '2024-03-10', 'Chemistry 301', 'Incomplete assignments'),
-- ('9', 'Ivy', 'Thomas', '2024-03-10', 'English Literature 101', 'Plagiarism'),
-- ('10', 'Jack', 'Jackson', '2024-03-10', 'Computer Science 201', 'Failed midterm exam');
