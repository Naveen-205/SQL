CREATE DATABASE construction;
USE construction;

CREATE TABLE materials (
  material_id INT PRIMARY KEY,
  material_name VARCHAR(50),
  category VARCHAR(50),
  supplier VARCHAR(50),
  quantity INT,
  unit_price DECIMAL(10,2),
  purchase_date DATE,
  stock_id INT,
  FOREIGN KEY (stock_id) REFERENCES stocks(stock_id)
);

CREATE TABLE staff (
  staff_id INT PRIMARY KEY,
  staff_name VARCHAR(50),
  role VARCHAR(50),
  phone VARCHAR(15),
  email VARCHAR(50),
  join_date DATE,
  shift VARCHAR(20)
);

CREATE TABLE attendance (
  attendance_id INT PRIMARY KEY,
  staff_id INT,
  date DATE,
  status VARCHAR(20),
  working_hours DECIMAL(5,2),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE stocks (
  stock_id INT PRIMARY KEY,
  stock_name VARCHAR(50),
  stock_type VARCHAR(50),
  total_items INT,
  available_items INT,
  location VARCHAR(50),
  last_updated DATE
);


CREATE TABLE salary (
  salary_id INT PRIMARY KEY,
  staff_id INT,
  base_salary DECIMAL(10,2),
  bonus DECIMAL(10,2),
  deductions DECIMAL(10,2),
  net_salary DECIMAL(10,2),
  payment_date DATE,
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

INSERT INTO stocks VALUES
(1, 'Cement Stock', 'Building Material', 500, 300, 'Warehouse A', '2025-01-10'),
(2, 'Steel Rods Stock', 'Structural Material', 200, 150, 'Warehouse B', '2025-01-12'),
(3, 'Paints Stock', 'Finishing Material', 100, 80, 'Warehouse C', '2025-01-15');


INSERT INTO staff VALUES
(101, 'Raj Kumar', 'Engineer', '9876543210', 'raj@gmail.com', '2024-12-01', 'Morning'),
(102, 'Karthik', 'Supervisor', '9876501234', 'karthik@gmail.com', '2025-01-05', 'Evening'),
(103, 'Suresh', 'Worker', '9876009876', 'suresh@gmail.com', '2025-02-01', 'Night');


INSERT INTO materials VALUES
(1001, 'Cement Bags', 'Building', 'UltraTech', 100, 420.50, '2025-01-20', 1),
(1002, 'Steel Rods', 'Structural', 'TATA Steel', 50, 550.00, '2025-01-22', 2),
(1003, 'Wall Paint', 'Finishing', 'Asian Paints', 20, 850.75, '2025-01-25', 3);


INSERT INTO attendance VALUES
(1, 101, '2025-01-26', 'Present', 8.00),
(2, 102, '2025-01-26', 'Present', 7.50),
(3, 103, '2025-01-26', 'Absent', 0.00);


INSERT INTO salary VALUES
(501, 101, 35000.00, 5000.00, 2000.00, 38000.00, '2025-01-31'),
(502, 102, 28000.00, 3000.00, 1000.00, 30000.00, '2025-01-31'),
(503, 103, 18000.00, 2000.00, 500.00, 19500.00, '2025-01-31');




