-- Smartphones in the Top 10% by Price
USE student_db;

SELECT
    brand_name,
    model,
    price,
    ROUND(price_distribution, 4) AS price_distribution
FROM (
    SELECT
        brand_name,
        model,
        price,

        CUME_DIST() OVER (
            ORDER BY price DESC
        ) AS price_distribution

    FROM smartphones
) AS phone_data

WHERE price_distribution <= 0.10

ORDER BY price DESC;