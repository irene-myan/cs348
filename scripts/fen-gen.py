import chess
import chess.pgn
import io
import sys

fields = ["gid", "movenum", "color", "fen"]

def allow(game, move_num):
    return True
    if game.headers['Date'][0] == '1': 
        return False
    if game.headers["WhiteElo"] == "" or game.headers["BlackElo"] == "" or "?" in game.headers['Date'] or "?" in game.headers['Round']:
	    return False
    if int(move_num) > 40:
        return False
    return True

def values_row(fen):
    movenum = fen.split(" ")[-1]
    color = fen.split(" ")[-5]
    return f"(@game_id, {movenum}, \"{color}\", \"{fen}\")"

if len(sys.argv) != 2:
	print('Usage: python fen-gen.py input.pgn > out.sql')

with open(sys.argv[1]) as f:
   games = f.read()

games = games.replace("\n\n[", "||||[")
pgns = games.split("||||")
i = 0
done = 0
for i, pgn in enumerate(pgns):
    
    if done == 100:
        break

    fens = []
    mygame=chess.pgn.read_game(io.StringIO(pgn))
    if not allow(mygame, pgn.split(".")[-2][-2:]):
        continue
        
    done += 1
    mygame2 = mygame
    while mygame.next():
        mygame=mygame.next()
        fens.append(mygame.board().fen())

    # SET GAME ID
    print(f"SET @game_id = (SELECT gid FROM Games WHERE event=\"{(mygame2.headers['Event'])}\" AND site=\"{mygame2.headers['Site']}\" AND date=\"{mygame2.headers['Date']}\" AND wp_elo={mygame2.headers['WhiteElo']} AND bp_elo={mygame2.headers['BlackElo']});")
    # print fens
    print('INSERT INTO Moves(' + ', '.join(fields) + ') VALUES ')
    s = ""
    for fen in fens:
        s += "\n" + values_row(fen) + ","
    s = s[:-1]
    print(s + ";")
    i = 0