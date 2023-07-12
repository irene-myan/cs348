-- Feature 1
WITH games_including_fen AS (
    SELECT gid
    FROM Moves gm
    WHERE gm.fen = 'rnbqkbnr/pppppppp/8/8/3P4/8/PPP1PPPP/RNBQKBNR b KQkq - 0 1'
)
SELECT result, COUNT(*) AS total_count
FROM Games g
JOIN games_including_fen ON g.gid = games_including_fen.gid
GROUP BY result;
SELECT '--- End of Feature 1 ---';

-- Feature 2
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
SELECT '--- End of Feature 2 ---';

-- Feature 3
SELECT o.name, COUNT(*) as frequency_played
FROM Games g
JOIN Openings o ON g.eco = o.eco
GROUP BY o.eco, o.name;
SELECT '--- End of Feature 3 ---';

-- Feature 4
SELECT * FROM Games ORDER BY date DESC;
SELECT '--- End of Feature 4 ---';
