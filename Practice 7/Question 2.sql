-- Cumulative Spending for Each Customer
USE zomato;

SELECT
    user_id,
    order_id,
    date,
    amount,
    
    SUM(amount) OVER (
        PARTITION BY user_id
        ORDER BY date, order_id
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS cumulative_spending

FROM orders

ORDER BY user_id, date, order_id;