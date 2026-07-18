-- Calculate Pixel Density (PPI)

SELECT
    brand_name,
    model,
    screen_size,
    ROUND(
        SQRT(
            resolution_width * resolution_width +
            resolution_height * resolution_height
        ) / screen_size,
        2
    ) AS ppi
FROM student_db.smartphones;