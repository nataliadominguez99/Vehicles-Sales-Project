-- Create new table
CREATE TABLE sales_subset AS
SELECT ORDERNUMBER, PRODUCTCODE, QUANTITYORDERED, SALES, CITY, COUNTRY, MONTH_ID, QTR_ID, PRODUCTLINE
FROM sales_data_sample;

-- Display the first 5 rows of the new table
SELECT *
FROM sales_subset
LIMIT 5;

-- 1. What is the total sales amount?
SELECT SUM(SALES) AS TotalSales FROM sales_subset;

-- 2. What are the top 3 product lines by total sales?
SELECT PRODUCTLINE, SUM(SALES) AS TotalSales FROM sales_subset GROUP BY PRODUCTLINE ORDER BY TotalSales DESC LIMIT 3;

-- 3. What are the total sales for each country?
SELECT COUNTRY, SUM(SALES) AS TotalSales FROM sales_subset GROUP BY COUNTRY ORDER BY TotalSales DESC;

-- 4. Which month had the highest sales?
SELECT MONTH_ID, SUM(SALES) AS TotalSales FROM sales_subset GROUP BY MONTH_ID ORDER BY TotalSales DESC LIMIT 1;

-- 5. Which quarter had the highest sales?
SELECT QTR_ID, SUM(SALES) AS TotalSales FROM sales_subset GROUP BY QTR_ID ORDER BY TotalSales DESC LIMIT 1;

-- 6. What is the average quantity of products ordered?
SELECT AVG(QUANTITYORDERED) AS AverageQuantityOrdered FROM sales_subset;

-- 7. What are the total sales for the city of Madrid?
SELECT SUM(SALES) AS TotalSalesMadrid FROM sales_subset WHERE CITY = 'Madrid';

-- 8. How many distinct orders were there for each product line?
SELECT PRODUCTLINE, COUNT(DISTINCT ORDERNUMBER) AS NumberOfOrders FROM sales_subset GROUP BY PRODUCTLINE ORDER BY NumberOfOrders DESC;

-- 9. What are the total sales for the product code 'S10_1678'?
SELECT SUM(SALES) AS TotalSalesForProduct FROM sales_subset WHERE PRODUCTCODE = 'S10_1678';

-- 10. Which country has the most orders?
SELECT COUNTRY, COUNT(DISTINCT ORDERNUMBER) AS TotalOrders FROM sales_subset GROUP BY COUNTRY ORDER BY TotalOrders DESC LIMIT 1;