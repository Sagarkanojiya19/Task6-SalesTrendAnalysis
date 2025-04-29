Create DataBase Task_6;

use Task_6;

Select * from Sales;

select Transaction_Id, Date_, EXTRACT(MONTH FROM Date_) AS order_month
FROM Sales;

SELECT 
    YEAR(Date_) AS order_year,
    MONTH(Date_) AS order_month,
    COUNT(*) AS total_orders
FROM 
    Sales
GROUP BY 
    YEAR(Date_),
    MONTH(Date_)
ORDER BY 
    order_year, order_month;

SELECT 
    YEAR(Date_) AS order_year,
    MONTH(Date_) AS order_month,
    SUM(Revenue) AS total_Revenue
FROM 
    Sales
GROUP BY 
    YEAR(Date_),
    MONTH(Date_)
ORDER BY 
    order_year, order_month;

SELECT 
    YEAR(Date_) AS order_year,
    MONTH(Date_) AS order_month,
    COUNT(DISTINCT Transaction_id) AS order_volume
FROM 
    Sales
GROUP BY 
    YEAR(Date_),
    MONTH(Date_)
ORDER BY 
    order_year, order_month;

SELECT 
    Product_Category,
    COUNT(DISTINCT Transaction_ID) AS order_volume,  -- Number of unique orders per category
    SUM(Revenue) AS total_revenue  -- Total revenue per category
FROM 
    Sales
GROUP BY 
    Product_Category
ORDER BY 
    total_revenue DESC; -- sort in desc by total_revenue

SELECT 
    Transaction_Id,Product_Category,Product_Name,Revenue
    
FROM 
    Sales
WHERE 
    Date_ BETWEEN '2024-01-01' AND '2024-01-26' ; -- Filter by date range
