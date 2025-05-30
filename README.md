Project Title: University Database Management System (UNISADB)

Description:
The UNISADB project is a relational database management system designed to organize and manage data for a university. It includes entities such as Faculty, Department, Staff, Module, Student, Assessment, StudyMaterial, GraduatedStudents, and FailedStudents.  The database captures the relationships between these entities, such as which faculty a department belongs to, which staff members teach which modules, which students are enrolled in which modules, and the details of student assessments.  It also tracks student outcomes, specifically graduation and failure.  This system could be used to manage academic programs, student records, staff assignments, and study materials.

How to run/setup the project (or import SQL):

Install a Database Management System: You'll need a relational database management system (RDBMS) like MySQL.  Download and install MySQL Server on your machine.

Create a Database:

Open a MySQL client (e.g., MySQL Workbench, or the MySQL command-line tool).

Execute the following SQL command to create the database:

CREATE DATABASE IF NOT EXISTS unisaDB;

Select the Database:

Execute the following SQL command to select the database:

USE unisaDB;

Import the SQL Script:

If using the MySQL command-line tool, navigate to the directory where you saved the UNISADB.sql file and execute:

mysql -u your_mysql_username -p unisaDB < UNISADB.sql

(Replace your_mysql_username with your actual MySQL username. You'll be prompted for your password.)

If using MySQL Workbench:

Open MySQL Workbench and connect to your server.

Select the unisaDB schema in the Navigator.

Go to File -> Open SQL Script... and select the UNISADB.sql file.

Click the "Execute" button to run the script.

Verify the Import:

To verify that the tables have been created successfully, execute the following SQL command:

SHOW TABLES;

This will display a list of the tables in the unisaDB database.  You can also use DESCRIBE table_name; (e.g., DESCRIBE Faculty;) to view the structure of a specific table.
