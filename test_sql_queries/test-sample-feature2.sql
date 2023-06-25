WITH playerelos AS (
  SELECT player_id, MAX(elo) AS max_elo
  FROM (
    SELECT wp_id AS player_id, wp_elo AS elo, date FROM Games WHERE date BETWEEN 1990-01-01 AND 9999-99-99
    UNION ALL
    SELECT bp_id AS player_id, bp_elo AS elo, date FROM Games WHERE date BETWEEN 1990-01-01 AND 9999-99-99
  ) AS TotalPlayers
  GROUP BY player_id
),
topids AS (
  SELECT player_id
  FROM playerelos p
  WHERE p.max_elo = (SELECT MAX(max_elo) FROM playerelos)
)
SELECT *
FROM Games g
WHERE g.wp_id = (SELECT player_id FROM topids) or g.bp_id = (SELECT player_id FROM topids);