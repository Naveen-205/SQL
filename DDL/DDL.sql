CREATE DATABASE school;
USE school;

CREATE TABLE studentdetails(
Student_id INT UNIQUE PRIMARY KEY auto_increment,
Name	 VARCHAR(100),
Age INT,
Email VARCHAR(50) UNIQUE,
Course VARCHAR (25),
City VARCHAR (50)
);

ALTER TABLE studentdetails ADD Phone_Number INT;
ALTER TABLE studentdetails MODIFY COLUMN Phone_Number VARCHAR(20);
ALTER TABLE studentdetails MODIFY COLUMN Phone_Number INT;

ALTER TABLE studentdetails RENAME COLUMN Course TO Department;

ALTER TABLE studentdetails DROP COLUMN City;

CREATE TABLE teacher_details(
Teacher_ID INT PRIMARY KEY UNIQUE auto_increment,
Name VARCHAR(50),
Subject VARCHAR(50),
Experience VARCHAR(25)
);

RENAME TABLE teacher_details TO faculty;

TRUNCATE TABLE studentdetails;










