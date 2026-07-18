-- Find All Users and Their Orders — LEFT JOIN

SELECT
    u.user_id,
    u.name,
    o.order_id,
    o.order_date
FROM users u
LEFT JOIN orders o
    ON u.user_id = o.user_id;