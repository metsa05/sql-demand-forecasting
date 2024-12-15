-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Insert sample products
INSERT INTO Products (product_id, product_name, category)
VALUES
(1, 'Widget A', 'Electronics'),
(2, 'Widget B', 'Home Goods'),
(3, 'Widget C', 'Sports'),
(4, 'Widget D', 'Outdoors');

-- Create Sales History Table
CREATE TABLE SalesHistory (
    sales_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    units_sold INT,
    FOREIGN KEY (product_id) REFERENCES Products (product_id)
);

-- Insert sample sales data
INSERT INTO SalesHistory (sales_id, product_id, sale_date, units_sold)
VALUES
(1, 1, '2024-11-01', 50),
(2, 1, '2024-11-02', 60),
(3, 2, '2024-11-01', 40),
(4, 3, '2024-11-02', 30),
(5, 1, '2024-11-03', 55),
(6, 2, '2024-11-03', 45),
(7, 3, '2024-11-04', 35);

-- Create Inventory Table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    date DATE,
    stock_level INT,
    FOREIGN KEY (product_id) REFERENCES Products (product_id)
);

-- Insert initial inventory data
INSERT INTO Inventory (inventory_id, product_id, date, stock_level)
VALUES
(1, 1, '2024-11-01', 200),
(2, 2, '2024-11-01', 150),
(3, 3, '2024-11-01', 100);
