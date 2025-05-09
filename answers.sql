-- SQL query to transform this table into 1NF

-- Create Products table
CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50)
);

-- Use the product_id as foreign keys in product_details table

CREATE TABLE product_details(
order_id INT ,
customer_name VARCHAR(50),
product_id INT,
FOREIGN KEY(Order_id) REFERENCES orderDetails(order_id)
);


-- Achieving 2NF (Second Normal Form)
-- Creating a customer table
CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(50)
)
-- Create order_details table adding customer id in the column
CREATE TABLE order_details(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT, 
product_id INT, 
quantity INT,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(product_id) REFERENCES products(product_id)
);



