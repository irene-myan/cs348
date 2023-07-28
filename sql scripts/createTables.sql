USE testDB;

DROP TABLE IF EXISTS GameOpenings;
DROP TABLE IF EXISTS PlayedGames;
DROP TABLE IF EXISTS Openings;
DROP TABLE IF EXISTS Moves;
DROP TABLE IF EXISTS Games;
DROP TABLE IF EXISTS Players;


CREATE TABLE Openings(
	eco VARCHAR(3) NOT NULL PRIMARY KEY, 
    name VARCHAR(66) NOT NULL, 
    -- type VARCHAR(32) NOT NULL, -- optional?
    startingMoves VARCHAR(123) NOT NULL
);

CREATE TABLE Players(
	pid INT NOT NULL PRIMARY KEY,
    name VARCHAR(32) NOT NULL UNIQUE
);
ALTER TABLE Players MODIFY pid INT NOT NULL AUTO_INCREMENT;

CREATE TABLE Games(
	gid INT NOT NULL PRIMARY KEY,
    event VARCHAR(100), 
    site VARCHAR(32),
    round INT,
    date VARCHAR(10) NOT NULL,
	white VARCHAR(32) NOT NULL, -- del
    wp_id INT, -- pop
    wp_elo INT,
	black VARCHAR(32) NOT NULL, -- del
    bp_id INT, -- pop
    bp_elo INT,
    eco VARCHAR(3) NOT NULL, -- del
    moves INT NOT NULL CHECK (moves > 0),
	result VARCHAR(10) NOT NULL,
    game VARCHAR(255) NOT NULL UNIQUE
);
ALTER TABLE Games MODIFY gid INT NOT NULL AUTO_INCREMENT;

CREATE TABLE GameOpenings(
	eco VARCHAR(3) NOT NULL, 
    gid INT NOT NULL,
    FOREIGN KEY (gid) REFERENCES Games(gid),
    FOREIGN KEY (eco) REFERENCES Openings(eco),
    PRIMARY KEY (eco, gid)
);

CREATE TABLE PlayedGames(
	pid INT NOT NULL, 
    gid INT NOT NULL,
    color VARCHAR(5) NOT NULL, -- either white or black
    elo INT NOT NULL,
    FOREIGN KEY (pid) REFERENCES Players(pid),
    FOREIGN KEY (gid) REFERENCES Games(gid),
    PRIMARY KEY (pid, gid, color)
);

CREATE TABLE Moves(
    gid INT NOT NULL,
    movenum INT NOT NULL CHECK (movenum > 0),
    color VARCHAR(1),
    fen VARCHAR(100),
    move VARCHAR(7),
    FOREIGN KEY(gid) REFERENCES Games(gid),
    PRIMARY KEY(gid, movenum, color)
);

select * from Games
