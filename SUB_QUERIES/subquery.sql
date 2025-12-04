use employee;

SELECT department, COUNT(*) 
FROM employee_details
GROUP BY department 
HAVING COUNT(*) > 10;

SELECT department, AVG(salary) 
FROM employee_details 
GROUP BY department 
HAVING AVG(salary) > 60000;

SELECT name, MAX(salary) 
FROM employee_details
GROUP BY name 
HAVING MAX(salary) > 80000;

SELECT department, SUM(salary) 
FROM employee_details
GROUP BY department 
HAVING SUM(salary) > 500000;

SELECT * FROM employee_details;

SELECT name, department, salary FROM employee_details;

SELECT name AS employee_name, salary AS monthly_salary FROM employee_details;

SELECT * FROM employee_details WHERE salary > 55000;

SELECT * FROM employee_details WHERE department = 'IT';

SELECT * FROM employee_details WHERE department='Technical' AND salary > 50000;

SELECT * FROM employee_details WHERE name LIKE 'A%';

SELECT * FROM employee_details ORDER BY salary DESC;

SELECT * FROM employee_details ORDER BY department ASC, salary DESC;

SELECT * FROM employee_details LIMIT 10;

SELECT * FROM employee_details LIMIT 10 OFFSET 10;

SELECT DISTINCT department FROM employee_details;

SELECT COUNT(DISTINCT department) AS Total_Department FROM employee_details;

SELECT COUNT(*),department FROM employee_details GROUP BY department;

SELECT department, AVG(salary) FROM employee_details GROUP BY department;

SELECT department, SUM(salary) FROM employee_details GROUP BY department;

SELECT department, MAX(salary) FROM employee_details GROUP BY department;

SELECT name, department,  COUNT(*) 
FROM employee_details 
GROUP BY name, department;

SELECT department, COUNT(*) 
FROM employee_details
GROUP BY department 
HAVING COUNT(*) > 5;

SELECT department, AVG(salary) 
FROM employee_details 
GROUP BY department 
HAVING AVG(salary) > 50000;

SELECT department, SUM(salary) 
FROM employee_details 
GROUP BY department 
HAVING SUM(salary) > 500000;

SELECT department, COUNT(*) AS total, AVG(salary) AS avg_salary 
FROM employee_details 
GROUP BY department 
HAVING COUNT(*) > 5 AND AVG(salary) > 60000;

SELECT department, MAX(salary) AS salary
FROM employee_details
GROUP BY department 
HAVING MAX(salary) > 80000;

SELECT name, department, salary 
FROM employee_details 
WHERE salary > 50000 
GROUP BY name, department, salary 
ORDER BY salary DESC 
LIMIT 10;

SELECT department, COUNT(*) AS total 
FROM employee_details
GROUP BY department 
ORDER BY total DESC;

























