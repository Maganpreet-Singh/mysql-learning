-- Most Successful Bowlers by Wickets

SELECT bowler, COUNT(*) AS 'total_wickets'
FROM student_db.ipl_ball
WHERE isWicketDelivery = 1 AND kind NOT IN (
'run out', 'retired hurt', 'retired out', 'obstructing the field'
)
GROUP BY bowler
ORDER BY total_wickets DESC
LIMIT 10