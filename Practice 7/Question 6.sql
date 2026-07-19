-- Month-over-Month Percentage Change in Sales
USE zomato;

SELECT
    year,
    month,
    monthly_sales,
    previous_month_sales,
    ROUND(
        (monthly_sales - previous_month_sales) 
        / previous_month_sales * 100,
        2
    ) AS percent_change
FROM (
    SELECT
        year,
        month,
        monthly_sales,
        LAG(monthly_sales) OVER (
            ORDER BY year, month
        ) AS previous_month_sales
    FROM (
        SELECT
            YEAR(date) AS year,
            MONTH(date) AS month,
            SUM(amount) AS monthly_sales
        FROM orders
        GROUP BY YEAR(date), MONTH(date)
    ) AS monthly_data
) AS sales_data
ORDER BY year, month;