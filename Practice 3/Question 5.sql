-- Most Expensive Bowlers

SELECT 
    bowler,
    SUM(
        CASE
            WHEN kind IN ('byes', 'legbyes') 
            THEN 0
            ELSE total_run
        END
    ) AS runs_conceded,
    COUNT(*) AS total_deliveries,
    ROUND(
        SUM(
            CASE
                WHEN kind IN ('byes', 'legbyes')
                THEN 0
                ELSE total_run
            END
        ) / COUNT(*),
        2
    ) AS runs_per_delivery
FROM student_db.ipl_ball
GROUP BY bowler
HAVING COUNT(*) >= 300
ORDER BY runs_per_delivery DESC
LIMIT 10;