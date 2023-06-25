use testDB;

WITH games_including_fen AS (
    SELECT gid
    FROM Moves gm
    WHERE gm.fen = 'rnbqkbnr/pppppppp/8/8/3P4/8/PPP1PPPP/RNBQKBNR b KQkq - 0 1'
)
SELECT result, COUNT(*) AS total_count
FROM Games g
JOIN games_including_fen ON g.gid = games_including_fen.gid
GROUP BY result