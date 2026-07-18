-- Highest-Rated Movie of 2000
USE student_db;

SELECT
    name,
    year,
    genre,
    score,
    director
FROM movies
WHERE year = 2000
  AND score = (
      SELECT MAX(score)
      FROM movies
      WHERE year = 2000
  );