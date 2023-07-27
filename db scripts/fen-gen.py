import chess
import chess.pgn
import io, os
import sys

fields = ["gid", "movenum", "color", "fen", "move"]

def values_row(fen, move):
    movenum = fen.split(" ")[-1]
    color = fen.split(" ")[-5]
    return f"(@game_id, {movenum}, \"{color}\", \"{fen}\", \"{move}\")"

# bc the moves format in game is different from the moves in the games database
def removeNums(moves):
  a = moves.split(" ")
  r = []
  k = -1
  for i in a:
    k += 1
    if k % 3 == 0:
      continue
    r.append(i)
  return r


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


        
        moves = pgn.split('\n')
        while moves[-1] == "" or moves[-1][0] != "1": 
            moves.pop()
        moves = removeNums(moves[-1])
        if moves == []: 
            print(pgn) 
            return
        # SET GAME ID
        f.write(f"\nSET @game_id = (SELECT gid FROM Games WHERE game=\"{' '.join(moves)}\");\n")
        f.write('INSERT IGNORE INTO Moves(' + ', '.join(fields) + ') VALUES ')
        s = ""
        for j in range(len(fens)):
            if j >= len(moves):
                print(pgn)
                print(pgn.split('\n'))
                break
            s += "\n" + values_row(fens[j], moves[j]) + ","
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

print("yay done")