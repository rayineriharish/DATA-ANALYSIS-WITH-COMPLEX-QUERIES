SELECT
    Employee,
    SaleDate,
    SaleAmount,
    SUM(SaleAmount) OVER (PARTITION BY Employee ORDER BY SaleDate) AS RunningTotal
FROM Sales;
