CREATE DATABASE join_db;
use join_db;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  customer_phone VARCHAR(15)
);

INSERT INTO customers VALUES
(1, 'Rahul', '9876543210'),
(2, 'Priya', '9823456781'),
(3, 'Azmi', '9988776655'),
(4, 'Sneka', '9876123450'),
(5, 'Vijay', '9567843201');

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  product_price INT
);

INSERT INTO products VALUES
(1, 'Laptop', 55000),
(2, 'Mouse', 500),
(3, 'Keyboard', 1200),
(4, 'Monitor', 8000),
(5, 'Webcam', 2500);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(101, 1, 1, '2025-01-10'),
(102, 2, 3, '2025-01-12'),
(103, 1, 2, '2025-01-13'),
(104, 4, 5, '2025-01-15'),
(105, 3, 2, '2025-01-16');

CREATE TABLE students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Akash'),
(2, 'Meena'),
(3, 'Joseph'),
(4, 'Fatima'),
(5, 'Rohan');

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  teacher VARCHAR(50)
);

INSERT INTO courses VALUES
(101, 'Maths', 'Mr. Raj'),
(102, 'Science', 'Ms. Arthi'),
(103, 'English', 'Mr. Ravi'),
(104, 'History', 'Ms. Niranjana'),
(105, 'Computer', 'Mr. Arjun');

CREATE TABLE student_courses (
  id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO student_courses VALUES
(1, 1, 101),
(2, 1, 103),
(3, 2, 102),
(4, 3, 105),
(5, 4, 104);

SELECT c.customer_name, p.product_name, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;

SELECT p.product_name, p.product_price, COUNT(o.order_id) AS total_orders
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name, p.product_price;

SELECT c.customer_name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT p.product_name, o.order_id
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;

SELECT o.order_id, c.customer_name, o.order_date
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;

SELECT o.order_id, p.product_name, o.order_date
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id;






