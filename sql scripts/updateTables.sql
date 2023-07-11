-- Delete nulled rows
DELETE FROM testDB.Moves WHERE gid IN (SELECT gid FROM testDB.Games WHERE eco = "" ) AND gid != 0;
DELETE FROM testDB.Games WHERE eco = "" AND gid != 0;

-- Insert player names into Players table and assign ID
INSERT IGNORE INTO Players(name) SELECT white FROM Games;
INSERT IGNORE INTO Players(name) SELECT black FROM Games;

-- Update Games to match pid to player
UPDATE Games
SET Games.wp_id = (SELECT pid FROM Players WHERE name = white) WHERE Games.gid <> 0;
UPDATE Games
SET Games.bp_id = (SELECT pid FROM Players WHERE name = black) WHERE Games.gid <> 0;

-- Add PlayedGames
INSERT INTO PlayedGames(pid, gid, color, elo) (SELECT wp_id, gid, "white", wp_elo FROM Games);
INSERT INTO PlayedGames(pid, gid, color, elo) (SELECT bp_id, gid, "black", bp_elo FROM Games);

-- Delete name columns from Games
ALTER TABLE Games
DROP COLUMN white;
ALTER TABLE Games
DROP COLUMN black;

-- Add to GameOpenings Table
INSERT INTO GameOpenings
SELECT eco, gid
FROM Games;

