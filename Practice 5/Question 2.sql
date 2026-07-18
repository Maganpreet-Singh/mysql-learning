-- Users Who Never Placed an Order
USE zomato;

SELECT
    user_id,
    name
FROM users
WHERE user_id NOT IN (
    SELECT user_id
    FROM orders
);