-- Top 10 Highest Run-Scoring Batters

SELECT batter, SUM(batsman_run) AS 'total_runs'
FROM student_db.ipl_ball
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;