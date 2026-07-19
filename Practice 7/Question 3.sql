-- Cumulative Average Order Value for Each Customer
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
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
        ),
        2
    ) AS cumulative_avg

FROM orders

ORDER BY user_id, date, order_id;