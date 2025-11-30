CREATE DATABASE movie;
USE movie;


CREATE TABLE technician (
  technician_id INT PRIMARY KEY auto_increment,
  full_name VARCHAR(50),
  specialization VARCHAR(50),
  experience INT,
  phone VARCHAR(15),
  email VARCHAR(50),
  shift VARCHAR(20)
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


CREATE TABLE casting (
  casting_id INT PRIMARY KEY auto_increment,
  casting_name VARCHAR(50),
  casting_type VARCHAR(50),
  cast_date DATE,
  technician_id INT,
  FOREIGN KEY (technician_id) REFERENCES technician(technician_id)
);


CREATE TABLE materials (
  material_id INT PRIMARY KEY auto_increment,
  material_name VARCHAR(50),
  material_type VARCHAR(50),
  supplier_name VARCHAR(50),
  quantity INT,
  unit_price DECIMAL(10,2),
  purchase_date DATE,
  casting_id INT,
  FOREIGN KEY (casting_id) REFERENCES casting(casting_id)
);


CREATE TABLE salary_maintanence (
  salary_id INT PRIMARY KEY auto_increment,
  staff_id INT,
  technician_id INT,
  basic_salary DECIMAL(10,2),
  payment_date DATE,
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (technician_id) REFERENCES technician(technician_id)
);

INSERT INTO technician (full_name, specialization, experience, phone, email, shift)
VALUES
('Arun Kumar', 'Camera Specialist', 5, '9876543210', 'arun@example.com', 'Morning'),
('Vishal Sharma', 'Lighting Expert', 3, '9123456780', 'vishal@example.com', 'Evening'),
('Ravi', 'Sound Technician', 7, '9988776655', 'ravi@example.com', 'Night');

INSERT INTO staff (staff_name, role, phone, email, join_date, shift)
VALUES
('Priya', 'Production Manager', '9090909090', 'priya@example.com', '2021-05-10', 'Morning'),
('Karan', 'Assistant Director', '8080808080', 'karan@example.com', '2022-02-12', 'Evening'),
('Simran', 'Editor', '7070707070', 'simran@example.com', '2023-09-01', 'Night');

INSERT INTO casting (casting_name, casting_type, cast_date, technician_id) 
VALUES
('Hero Role', 'Lead', '2025-02-10', 1),
('Villain Role', 'Supporting', '2025-02-12', 2),
('Child Actor', 'Extra', '2025-02-15', 3);

INSERT INTO materials (material_name, material_type, supplier_name, quantity, unit_price, purchase_date, casting_id)
VALUES
('Camera Lens', 'Equipment', 'Sony Supplies', 5, 45000.00, '2025-02-05', 1),
('Boom Mic', 'Sound Equipment', 'AudioTech', 3, 15000.00, '2025-02-06', 2),
('Lighting Kit', 'Electrical', 'ProLights', 4, 30000.00, '2025-02-08', 3);

INSERT INTO salary_maintanence (staff_id, technician_id, basic_salary, payment_date)
VALUES
(1, 1, 45000.00, '2025-02-28'),
(2, 2, 38000.00, '2025-02-28'),
(3, 3, 50000.00, '2025-02-28');
