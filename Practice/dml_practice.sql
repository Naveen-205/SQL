CREATE DATABASE product_store;
USE product_store;

CREATE TABLE product_details(
product_id INT PRIMARY KEY auto_increment,
product_name VARCHAR(200),
price INT,
quantity INT,
category VARCHAR (50)
);

INSERT INTO product_details (product_id,product_name,price,quantity,category) VALUES (101,"Laptop",55000,10,"Electronics");
INSERT INTO product_details VALUES (102,"Mouse",500,50,"Electronics");
INSERT INTO product_details VALUES (103,"Keyboard",800,40,"Electronics"),(104,"Coffee Mug",350,25,"Kitchen"),(105,"Water Bottle",450,30,"Kitchen");

ALTER TABLE product_details ADD COLUMN madein VARCHAR(50);
ALTER TABLE product_details DROP COLUMN madein;

INSERT INTO product_details (product_id,product_name,price,quantity) VALUES (106,"T-shirt",250,45);

UPDATE product_details SET price = 70000 WHERE product_id = 101;

UPDATE product_details SET product_name = "Wireless Keyboard", price = 300, quantity = 560 WHERE product_id = 103;

DELETE FROM product_details WHERE product_id = 104;

DELETE FROM product_details WHERE product_id = 102;






