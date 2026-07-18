-- Batters With More Than 30 Sixes

SELECT 
batter, 
COUNT(*) AS 'total_sixes'
FROM student_db.ipl_ball
WHERE batsman_run = 6
GROUP BY batter
HAVING COUNT(*) > 30
ORDER BY total_sixes DESC;