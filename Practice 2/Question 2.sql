-- Mid-Range 5G Smartphones

SELECT
    model,
    price,
    battery_capacity,
    has_5g
FROM student_db.smartphones
WHERE price BETWEEN 15000 AND 30000
AND has_5g = 'True'
AND battery_capacity >= 5000;