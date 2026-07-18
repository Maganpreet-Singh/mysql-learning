-- Team-Wise Batting Performance

SELECT 
BattingTeam, 
SUM(total_run) AS 'total_runs',
ROUND(AVG(total_run), 2) AS 'avg_runs_per_delivery',
COUNT(*) AS 'total_deliveries'
FROM student_db.ipl_ball
GROUP BY BattingTeam
ORDER BY total_runs DESC;