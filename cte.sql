WITH TotalSales AS (
    SELECT Employee, SUM(SaleAmount) AS Total
    FROM Sales
    GROUP BY Employee
)
SELECT *,
       RANK() OVER (ORDER BY Total DESC) AS SalesRank
FROM TotalSales;
