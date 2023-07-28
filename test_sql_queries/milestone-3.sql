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

-- Feature 5
SELECT DISTINCT p.pid as pid, p.name as name, MAX(pg.elo) as max_elo 
FROM players p 
JOIN playedgames pg ON p.pid = pg.pid 
JOIN games g ON pg.gid = g.gid 
WHERE g.date BETWEEN 1990-01-01 AND 9999-99-99 
GROUP BY p.pid, p.name 
ORDER BY max_elo DESC;
SELECT '--- End of Feature 5 ---';

-- Feature 6
SELECT COUNT(*) as play_count, p.pid as pid, p.name as name, o.name as opening_name, o.startingMoves as starting_moves 
FROM players p, playedgames pg, games g, openings o 
WHERE p.pid = pg.pid 
and pg.gid = g.gid 
and o.eco = g.eco 
and o.eco = 'D11'
GROUP BY p.pid, p.name, o.name, o.startingMoves 
ORDER BY play_count DESC;
SELECT '--- End of Feature 6 ---';

WITH next_games as ( 
  SELECT m.gid, m.movenum + 1 as movenum
  FROM moves m 
  WHERE m.fen = 'rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R b KQkq - 1 1' 
) 
SELECT COUNT(*) as play_count, m.move, m.fen
FROM next_games ng, moves m 
WHERE ng.gid = m.gid and ng.movenum = m.movenum and m.color = 'w'
GROUP BY m.move, m.fen 
ORDER BY play_count DESC;
SELECT '--- End of Feature 7 ---';

SELECT m.fen, m.movenum, m.color, result 
FROM moves m, games g 
WHERE m.gid = g.gid AND g.gid = 1;
SELECT '--- End of Feature 8 ---';

WITH games_fen as ( 
  SELECT m.gid
  FROM moves m 
  WHERE m.fen = 'rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R b KQkq - 1 1'  
) 
SELECT *
FROM games_fen gf, games g 
WHERE gf.gid = g.gid;
SELECT '--- End of Feature 9 ---';
