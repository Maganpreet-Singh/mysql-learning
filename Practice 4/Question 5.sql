-- Show Users and Their Group Names

SELECT
    u.user_id,
    u.name,
    g.group_id,
    g.group_name
FROM users u
INNER JOIN membership m
    ON u.user_id = m.user_id
INNER JOIN groups g
    ON m.group_id = g.group_id;