SELECT Employee, AVG(SaleAmount) AS AvgSale
FROM Sales
GROUP BY Employee
HAVING AVG(SaleAmount) > (
    SELECT AVG(SaleAmount) FROM Sales
);
