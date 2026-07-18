-- Create Customers and Orders Tables

CREATE TABLE student_db.customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(100) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE student_db.orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
order_amount DECIMAL(10, 2) CHECK (order_amount > 0),
order_date DATE DEFAULT (CURRENT_DATE),

CONSTRAINT orders_customer_fk
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);