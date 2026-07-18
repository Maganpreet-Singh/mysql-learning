-- Find Users and Their Orders — INNER JOIN

SELECT
    u.user_id,
    u.name,
    o.order_id,
    o.order_date
FROM users u
INNER JOIN orders o
    ON u.user_id = o.user_id;