-- Compare Each Order With the Customer's Previous Order
USE zomato;

SELECT
    user_id,
    order_id,
    date,
    amount,
    previous_amount,
    amount - previous_amount AS amount_difference,
    
    ROUND(
        (amount - previous_amount) 
        / previous_amount * 100,
        2
    ) AS percent_change

FROM (
    SELECT
        user_id,
        order_id,
        date,
        amount,

        LAG(amount) OVER (
            PARTITION BY user_id
            ORDER BY date, order_id
        ) AS previous_amount

    FROM orders
) AS order_data

ORDER BY user_id, date, order_id;