import chess
import chess.pgn
import io, os
import sys

fields = ["gid", "movenum", "color", "fen"]

def values_row(fen):
    movenum = fen.split(" ")[-1]
    color = fen.split(" ")[-5]
    return f"(@game_id, {movenum}, \"{color}\", \"{fen}\")"


def one_pgn(file_name, fen_gened):
    with open(file_name, encoding='latin-1') as f:
        games = f.read()

    f = open(fen_gened, "w")

    games = games.replace("\n\n[", "||||[")
    pgns = games.split("||||")
    for i, pgn in enumerate(pgns):
        fens = []
        mygame=chess.pgn.read_game(io.StringIO(pgn))

        mygame2 = mygame
        while mygame.next():
            mygame=mygame.next()
            try:
                fens.append(mygame.board().fen())
            except Exception as e:
                print(e)
                continue


        # SET GAME ID
        f.write(f"SET @game_id = (SELECT gid FROM Games WHERE event=\"{(mygame2.headers['Event'])}\" AND site=\"{mygame2.headers['Site']}\" AND date=\"{mygame2.headers['Date']}\" AND wp_elo={mygame2.headers['WhiteElo']} AND bp_elo={mygame2.headers['BlackElo']});")
        # print fens
        f.write('INSERT INTO Moves(' + ', '.join(fields) + ') VALUES ')
        s = ""
        for fen in fens:
            s += "\n" + values_row(fen) + ","
        s = s[:-1]
        f.write(s + ";")
    f.close()

dw =  os.getcwd() + "/fens"
dr =  os.getcwd() + "/clean_pgns"

if not os.path.exists(dw):
    os.mkdir(dw)

for pgn_file in os.listdir(dr):
    fen_gened = pgn_file[:-4] + "_fen.sql"
    if not os.path.exists(dw + "/" + fen_gened):
        print(dw + "/" + fen_gened)
        one_pgn(dr + "/" + pgn_file, dw + "/" + fen_gened)