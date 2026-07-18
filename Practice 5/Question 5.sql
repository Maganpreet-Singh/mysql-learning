-- Highest-Rated Movie in Each Genre
USE student_db;

SELECT
    name,
    genre,
    score,
    director
FROM movies
WHERE (genre, score) IN (
    SELECT
        genre,
        MAX(score)
    FROM movies
    GROUP BY genre
)
ORDER BY genre, score DESC;