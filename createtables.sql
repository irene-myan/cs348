
DROP TABLE GameOpenings;
DROP TABLE PlayedGames;
DROP TABLE Openings;
DROP TABLE Moves;
DROP TABLE Games;
DROP TABLE Players;

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
    eco VARCHAR(3), -- pop, del
    moves INT NOT NULL,
	result VARCHAR(10) NOT NULL,
    game VARCHAR(1000) NOT NULL
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
    PRIMARY KEY (pid, gid)
);

select * from Games
