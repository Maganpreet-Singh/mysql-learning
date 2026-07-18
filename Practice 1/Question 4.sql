-- Create a Product Inventory Table

CREATE TABLE student_db.products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
product_code VARCHAR(50) NOT NULL,
price DECIMAL(10, 2),
stock_quantity INT,
category VARCHAR(100) DEFAULT 'General',

CONSTRAINT products_code_unique
UNIQUE (product_code),

CONSTRAINT products_price_check
CHECK (price > 0),

CONSTRAINT products_stock_check
CHECK (stock_quantity >= 0)
);