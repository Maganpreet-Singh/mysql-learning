-- Affordable High-Rated Smartphones

SELECT
    brand_name AS Brand,
    model AS Phone,
    price,
    rating,
    ram_capacity AS RAM
FROM student_db.smartphones
WHERE rating > 80
  AND price < 25000
  AND ram_capacity >= 8;