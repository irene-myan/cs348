import pgn
import sys

def allow(game):
	if game.date[0] == '1': return False
	if game.whiteelo == "" or game.blackelo == "" or "?" in game.date or "?" in game.round:
		return False
	if len(game.moves) > 40:
		return False
	return True


for game in pgn.GameIterator(sys.argv[1]):
	if not(hasattr(game, 'result')):
		break;
	if not allow(game):
		continue