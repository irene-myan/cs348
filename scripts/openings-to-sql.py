fields = ["eco", "name", "startingMoves"]

print('INSERT INTO Openings(' + ', '.join(fields) + ') VALUES ')

lines = open("openings.txt", 'r').readlines()

i = 0
ml = 0
while i < len(lines):
  eco, name = lines[i].split('\t')
  i += 1
  moves = lines[i]
  i += 1
  name = name[:-1]
  ml = max(ml, len(moves) - 1)
  moves = moves[:-1]
#   print("(\"" + eco + "\", \"" + name + "\", \"" + moves + "\"),")

# print(";")
print(ml)