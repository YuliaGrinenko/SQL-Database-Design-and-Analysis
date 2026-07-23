-- Corner Shop Database Project
-- Create the database

CREATE DATABASE cornershop_db;

-- Select the database for use
USE cornershop_db;

-- Create Products table

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- Create Customers table

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20),
    loyalty_points INT DEFAULT 0
);
-- Create Sales table

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATETIME NOT NULL,
    customer_id INT,
    
    CONSTRAINT fk_sales_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);

-- Create SaleItems table

CREATE TABLE SaleItems (
    sale_item_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_saleitems_sale
        FOREIGN KEY (sale_id)
        REFERENCES Sales(sale_id),

    CONSTRAINT fk_saleitems_product
        FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);