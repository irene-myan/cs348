CREATE TABLE Openings(
	oid INT NOT NULL PRIMARY KEY, 
    name VARCHAR(32) NOT NULL, 
    type VARCHAR(32) NOT NULL, 
    startingMoves VARCHAR(100) NOT NULL
);
ALTER TABLE Openings MODIFY oid INT NOT NULL AUTO_INCREMENT;

CREATE TABLE Games(
	gid INT NOT NULL PRIMARY KEY,
    site VARCHAR(32),
    date VARCHAR(10) NOT NULL,
	wp_id VARCHAR(32) NOT NULL, -- Temporarily just a string for the name
    wp_elo INT,
	bp_id VARCHAR(32) NOT NULL,
    bp_elo INT,
    moves INT NOT NULL,
	result VARCHAR(10) NOT NULL,
    game VARCHAR(1000) NOT NULL
);
ALTER TABLE Games MODIFY gid INT NOT NULL AUTO_INCREMENT;
-- Make reference to other tables (pid)

CREATE TABLE Players(
	pid INT NOT NULL PRIMARY KEY,
    name VARCHAR(32) NOT NULL
);
ALTER TABLE Players MODIFY pid INT NOT NULL AUTO_INCREMENT;

CREATE TABLE PlayedGames(
	pid INT NOT NULL PRIMARY KEY,
	gid INT NOT NULL PRIMARY KEY
);
-- Make reference to other tables