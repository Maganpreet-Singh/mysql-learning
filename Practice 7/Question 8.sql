-- Divide Smartphones Into Price Segments Using NTILE()
USE student_db;

SELECT
    brand_name,
    model,
    price,
    price_bucket,

    CASE
        WHEN price_bucket = 1 THEN 'Budget'
        WHEN price_bucket = 2 THEN 'Mid-Range'
        WHEN price_bucket = 3 THEN 'Premium'
    END AS price_segment

FROM (
    SELECT
        brand_name,
        model,
        price,

        NTILE(3) OVER (
            ORDER BY price
        ) AS price_bucket

    FROM smartphones
) AS phone_data

ORDER BY price;