-- Insert sample products

INSERT INTO Products
(product_name, category, price, stock_quantity)
VALUES
('Milk 2L', 'Grocery', 1.80, 40),
('Bread', 'Bakery', 1.20, 30),
('Washing-up Liquid', 'Household', 2.50, 20),
('Eggs (12 pack)', 'Grocery', 2.80, 25);

-- Insert sample customers

INSERT INTO Customers
(first_name, last_name, phone, loyalty_points)
VALUES
('Sarah', 'Jones', '07123456789', 25),
('John', 'Smith', '07987654321', 10);

-- Record a sale

INSERT INTO Sales
(sale_date, customer_id)
VALUES
(NOW(), 1);

-- Add products to the sale

INSERT INTO SaleItems
(sale_id, product_id, quantity, unit_price)
VALUES
(1, 1, 2, 1.80),
(1, 2, 1, 1.20);

