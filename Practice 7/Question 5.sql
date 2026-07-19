-- Food Item Percentage of Total Orders
USE zomato;

SELECT
    r_id,
    r_name,
    f_id,
    f_name,
    food_order_count,

    ROUND(
        food_order_count * 100.0 /
        SUM(food_order_count) OVER (
            PARTITION BY r_id
        ),
        2
    ) AS order_percentage

FROM (
    SELECT
        r.r_id,
        r.r_name,
        f.f_id,
        f.f_name,
        COUNT(*) AS food_order_count

    FROM orders o

    INNER JOIN restaurants r
        ON o.r_id = r.r_id

    INNER JOIN order_details od
        ON o.order_id = od.order_id

    INNER JOIN food f
        ON od.f_id = f.f_id

    GROUP BY
        r.r_id,
        r.r_name,
        f.f_id,
        f.f_name

) AS food_orders

ORDER BY
    r_id,
    order_percentage DESC;