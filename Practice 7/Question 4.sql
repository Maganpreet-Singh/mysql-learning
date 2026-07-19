-- 3-Order Moving Average for Each Customer
USE zomato;

SELECT
    user_id,
    order_id,
    date,
    amount,

    ROUND(
        AVG(amount) OVER (
            PARTITION BY user_id
            ORDER BY date, order_id
            ROWS BETWEEN 2 PRECEDING
            AND CURRENT ROW
        ),
        2
    ) AS moving_avg_3_orders

FROM orders

ORDER BY user_id, date, order_id;