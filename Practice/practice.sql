create database student;

use student;

create table student_details(
name varchar(50),
department varchar(25),
marks_scored int
);

alter table student_details add column city varchar(100);

alter table student_details change marks_scored marks int;

alter table student_details change marks age int;

create table std_record (
name varchar(50),
age INT,
department varchar (20)
);

INSERT INTO std_record VALUES ("John",23,"CSE"),("Praveen",45,"ECE"),("Suresh",34,"EEE");

SET sql_safe_updates = 0;
UPDATE std_record set age = 30 where age = 23;

create table fruits(
name VARCHAR (30),
price INT
);

INSERT INTO fruits VALUES ("Apple",100),("Grape",60),("Banana",20);

UPDATE fruits set price = 150 where name = "Apple";

UPDATE fruits set name = "Mango" where name = "Banana";

DELETE from fruits  where name = "apple"; 

DELETE from fruits;



