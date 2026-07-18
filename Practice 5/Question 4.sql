-- Restaurants With Above-Average Order Value
USE zomato;

SELECT
    r_id,
    ROUND(AVG(amount), 2) AS avg_order_amount
FROM orders
GROUP BY r_id
HAVING AVG(amount) > (
    SELECT AVG(amount)
    FROM orders
)
ORDER BY avg_order_amount DESC;