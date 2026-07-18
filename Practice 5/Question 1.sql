-- Movies Rated Above Average
USE student_db;

SELECT
    name,
    genre,
    score,
    director
FROM movies
WHERE score > (
    SELECT AVG(score)
    FROM movies
)
ORDER BY score DESC;