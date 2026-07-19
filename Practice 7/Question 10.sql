-- Find the Top-Spending Customer for Each Restaurant
USE zomato;

SELECT
    r_id,
    user_id,
    total_spent,
    spending_rank
FROM (
    SELECT
        r_id,
        user_id,
        total_spent,

        DENSE_RANK() OVER (
            PARTITION BY r_id
            ORDER BY total_spent DESC
        ) AS spending_rank

    FROM (
        SELECT
            r_id,
            user_id,
            SUM(amount) AS total_spent
        FROM orders
        GROUP BY r_id, user_id
    ) AS customer_spending

) AS ranked_customers

WHERE spending_rank = 1

ORDER BY r_id;