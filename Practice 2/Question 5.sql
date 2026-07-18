-- Premium Feature-Packed Smartphones

SELECT
    brand_name AS Brand,
    model AS Phone,
    price AS Price,
    rating AS Rating,
    ram_capacity AS RAM,
    refresh_rate AS Refresh_Rate,
    has_5g AS `5G`,
    has_nfc AS NFC
FROM student_db.smartphones
WHERE price > 40000
  AND rating > 80
  AND has_5g = 'True'
  AND has_nfc = 'True'
  AND ram_capacity >= 8
  AND refresh_rate >= 120;