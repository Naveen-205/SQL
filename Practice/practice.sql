create database student;
use student;

create table student_details(
name varchar(50),
department varchar(25),
marks_scored int
);

alter table student_details add column city varchar(100);

alter table student_details change marks_scored marks int;