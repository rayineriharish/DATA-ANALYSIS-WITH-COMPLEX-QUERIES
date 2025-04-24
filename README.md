# DATA-ANALYSIS-WITH-COMPLEX-QUERIES

COMPANY: CODTECH IT SOLUTIONS

*NAME: RAYINERI HARISH

INTERN ID: COD73117

"DOMAIN: SQL

*DURATION: 4 WEEEKS

MENTOR: NEELA SANTOSH

In Task 2, the objective was to explore advanced SQL techniques such as Window Functions, Subqueries, and Common Table Expressions (CTEs) to analyze data trends and patterns. This task was performed using pgAdmin 4, the official graphical interface for PostgreSQL, which enabled easy query execution and result visualization.

🗃️ Dataset Overview
To simulate a realistic scenario, I created a table named Sales, which included fields like SaleID, Employee, Region, SaleAmount, and SaleDate. This table contained sample data for multiple employees across different regions and dates. The dataset was designed to allow for meaningful analysis, including sales performance over time, comparison across employees, and identification of top performers.

🔍 1. Window Functions: Running Total by Employee
The first part of the task involved using a window function to calculate a running total of sales for each employee. The SQL query utilized SUM(SaleAmount) OVER (PARTITION BY Employee ORDER BY SaleDate) to compute a cumulative sales figure per employee over time. This approach provided insight into each employee’s performance growth across different sale dates.

Using pgAdmin 4, the results were displayed in a tabular format, showing the cumulative effect of sales transactions. This analysis is particularly useful for tracking individual progress or generating monthly performance dashboards.

🔍 2. Subqueries: Identifying Above-Average Performers
The next part used a subquery within a HAVING clause to find employees whose average sales exceeded the overall average. This was achieved by:

sql
Copy
Edit
HAVING AVG(SaleAmount) > (SELECT AVG(SaleAmount) FROM Sales)
This query filtered out average-performing employees and highlighted those consistently exceeding expectations.

Running this in pgAdmin 4 offered an immediate visualization of top performers, which is essential in performance reviews or incentive planning.

🔍 3. CTE (Common Table Expression): Ranking Employees by Total Sales
The third query involved using a CTE to first calculate total sales per employee and then apply a ranking function. The CTE made the query modular and readable:

sql
Copy
Edit
WITH TotalSales AS (
    SELECT Employee, SUM(SaleAmount) AS Total
    FROM Sales
    GROUP BY Employee
)
A RANK() function was then applied to assign a rank based on the total sales. This helped to identify the highest and lowest performers in a clear and efficient way.

CTEs allowed for better query structure, and pgAdmin 4’s results pane made it easy to interpret the ranks.

🧠 Insights Gained
Through this task, I deepened my understanding of how advanced SQL constructs can be used for in-depth data analysis. Window functions provide dynamic analytical insights, subqueries allow for powerful filtering, and CTEs improve query clarity and reusability. These skills are particularly valuable in scenarios like business intelligence reporting, performance monitoring, and trend forecasting.

✅ Conclusion
Task 2 was a hands-on application of SQL analytics using PostgreSQL in pgAdmin 4. It demonstrated how complex queries could be built and visualized effectively, resulting in powerful insights from structured data. This experience reinforced how advanced SQL can support real-world data decision-making and reporting.


#OUTPUT
#EXAMPLES I DID ONE FOR EACH
#CTE
![image](https://github.com/user-attachments/assets/ef903d0f-dfe9-4391-9191-e1950e669715)

#SUBQUERY
![image](https://github.com/user-attachments/assets/af463941-0b24-4637-8d37-0131d867edcb)

#WINDOWFUNCTION
![image](https://github.com/user-attachments/assets/c0704709-c152-4962-a68c-ac16ec1f4b1c)
