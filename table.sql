-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Create SalesHistory Table
CREATE TABLE SalesHistory (
    sales_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    units_sold INT,
    FOREIGN KEY (product_id) REFERENCES Products (product_id)
);

-- Create Inventory Table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    date DATE,
    stock_level INT,
    FOREIGN KEY (product_id) REFERENCES Products (product_id)
);
