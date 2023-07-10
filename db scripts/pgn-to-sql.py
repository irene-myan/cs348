# Copyright (c) 2017, balping
# https://github.com/balping 

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import pgn
import os, sys

fields = ['event', 'site', 'date', 'round', 'white', 'black', 'result', 'whiteelo', 'blackelo', 'eco']

fieldss = ['event', 'site', 'date', 'round', 'white', 'black', 'result', 'wp_elo', 'bp_elo', 'eco']

def values_row (game):
	ret = '('
	for field in fields:
		if hasattr(game, field) and getattr(game, field) is not None:
			ret += ' \'' + getattr(game, field).replace('\'', '\\\'') + '\', '
		else:
			ret += ' \'\', '

	ret += str(len(game.moves)) + ', '
	ret += ' \'' + ' '.join(game.moves) + '\''

	ret += ')\n'
	return ret

def one_pgn(file_name, sql_gen):
	i = 0
	f = open(sql_gen, "w")
	for game in pgn.GameIterator(file_name):
		if(game is None): break
		if (i % 500) == 0:
			f.write('INSERT IGNORE INTO Games(' + ', '.join(fieldss) + ', moves, game) VALUES ')

		if (i % 500) == 499:
			f.write(';\n')
			i += 1
			f.write('INSERT IGNORE INTO Games(' + ', '.join(fieldss) + ', moves, game) VALUES ')
			f.write(values_row(game))
			i += 1
			continue
		elif (i % 500) != 0:
			f.write(',\n')
		
		f.write(values_row(game))
		
		i += 1
	f.write(';\n')
	f.close()


dw =  os.getcwd() + "/games"
dr =  os.getcwd() + "/clean_pgns"

if not os.path.exists(dw):
    os.mkdir(dw)

for pgn_file in os.listdir(dr):
    sql_gen = pgn_file[:-4] + "_games.sql"
    if not os.path.exists(sql_gen):
        one_pgn(dr + "/" + pgn_file, dw + "/" + sql_gen)
