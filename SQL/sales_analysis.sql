USE ai_sales_dashboard;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales_data;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

-- Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 Products
SELECT Product_Name,
       SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;