-- Find Users Without Any Group Membership

SELECT
    u.user_id,
    u.name
FROM users u
LEFT JOIN membership m
    ON u.user_id = m.user_id
WHERE m.user_id IS NULL;