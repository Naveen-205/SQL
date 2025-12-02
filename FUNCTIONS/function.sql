CREATE DATABASE function_db;
use function_db;

CREATE TABLE staff_record(
staff_id INT primary key auto_increment,
name VARCHAR(75),
department VARCHAR (25),
salary INT,
join_date DATE,
join_year YEAR
);


INSERT INTO staff_record (name, department, salary, join_date, join_year) VALUES
('Rasi',"CSE" ,35000, '2021-06-19', 2021),
('Harini',"ECE", 37000, '2023-05-10', 2023),

('Aishwarya', "EEE", 40000, '2023-11-25', 2023),
('Arun', "MECH", 45000, '2024-11-25', 2024),

('Karthik', "CIVIL", 50000, '2023-02-14', 2023),
('Kavin', "AUTO MOBILE", 55000, '2022-03-12', 2022),

('Sanjay', "PHARMACY", 38000, '2021-09-03', 2021),
('Saravanan', "CHEMISTRY", 28000, '2024-03-03', 2024),

('Meera Devi', "ENGLISH", 45000, '2020-01-19', 2020),
('Sneka', "IT", 45000, '2021-01-01', 2021);

UPDATE staff_record SET name = UPPER(name) WHERE staff_id =10;	

SELECT department, SUM(salary) as total_salary from staff_record group by department;

SELECT name from staff_record where LENGTH(name)>5;	

SELECT department,salary from staff_record GROUP BY department,salary HAVING AVG(salary) > 50000;

ALTER TABLE staff_record ADD COLUMN bonus INT;

UPDATE staff_record SET salary = ROUND(salary*1.10);
SET SQL_SAFE_UPDATES = 0;
UPDATE staff_record SET salary = ROUND(salary*1.10);

SELECT join_date,join_year from staff_record ORDER BY join_date,join_year asc ;
