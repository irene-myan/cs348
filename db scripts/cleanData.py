import pgn
import os, sys

num_per_opening = 2000

def allow(game):
	# try:
	if game.date[0] == '1' or game.whiteelo == "" or game.blackelo == "" or "?" in game.date or "?" in game.round:
		return False
	if len(game.moves) > 30:
		return False
	# except:
		# return False

	return True

dr =  os.getcwd()
dw =  os.getcwd() + "/clean_pgns"

if not os.path.exists(dw):
    os.mkdir(dw)

for pgn_file in os.listdir(dr):
	if pgn_file[-4:] != ".pgn":
		continue

	print("doing " + pgn_file)
	f = open(dw + "/" + pgn_file, "w")
	done = 0
	for game in pgn.GameIterator(pgn_file):
		if not game or done > num_per_opening:
			break
		if allow(game):
			done += 1
			f.write(pgn.dumps(game))
			f.write("\n")
			f.write("\n")
		
	f.close()


