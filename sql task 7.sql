CREATE DATABASE Shopping;

CREATE TABLE Shopping (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

INSERT INTO Shopping VALUES
(1, 'Laptop', 'Electronics', 65000.00, 5),
(2, 'Smartphone', 'Electronics', 25000.00, 10),
(3, 'Jeans', 'Clothing', 1500.00, 20),
(4, 'Shoes', 'Footwear', 2000.00, 15),
(5, 'Watch', 'Accessories', 3000.00, 8);

CREATE VIEW ElectronicsInventory AS
SELECT 
    ItemID,
    ItemName,
    Price,
    Quantity,
    (Price * Quantity) AS TotalValue
FROM 
    Shopping
WHERE 
    Category = 'Electronics';
    
SELECT * FROM ElectronicsInventory;

CREATE VIEW CustomerView AS
SELECT 
    ItemName,
    Category
FROM 
    Shopping;

SELECT * FROM CustomerView;

