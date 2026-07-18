-- Display Complete Order Details — Multiple Joins

SELECT
    o.order_id,
    u.user_id,
    u.name,
    o.order_date,
    od.*
FROM orders o
INNER JOIN users u
    ON o.user_id = u.user_id
INNER JOIN order_details od
    ON o.order_id = od.order_id;