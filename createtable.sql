CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    Employee VARCHAR(50),
    Region VARCHAR(50),
    SaleAmount INT,
    SaleDate DATE
);

INSERT INTO Sales (SaleID, Employee, Region, SaleAmount, SaleDate) VALUES
(1, 'Alice', 'East', 500, '2024-12-01'),
(2, 'Bob', 'West', 700, '2024-12-03'),
(3, 'Alice', 'East', 600, '2024-12-05'),
(4, 'Charlie', 'North', 400, '2024-12-07'),
(5, 'Bob', 'West', 1000, '2024-12-09'),
(6, 'Alice', 'East', 300, '2024-12-12'),
(7, 'Charlie', 'North', 800, '2024-12-15');
