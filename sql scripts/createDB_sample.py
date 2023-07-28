import os, subprocess

# Set up the MySQL command
mysql_command = "mysql -u root -pPassword123 testDB"

# List of SQL files in order
sql_files = [
    "createTables_sample.sql",
    "populateOpenings.sql",
]

dg =  os.getcwd() + "/games"
df =  os.getcwd() + "/fens"

for pgn_file in os.listdir(dg):
    sql_files.append("games/" + pgn_file)

for pgn_file in os.listdir(df):
    if pgn_file[0] == ".": continue
    sql_files.append("fens/" + pgn_file)

sql_files.append("updateTables_sample.sql")

# Loop through the SQL files and execute them in order
for sql_file in sql_files:
    # Construct the full command
    full_command = f"{mysql_command} < {sql_file}"

    print(f'[RUNNING] {sql_file}')

    # Execute the command using subprocess
    subprocess.run(full_command, shell=True)

# i = 0
# for pgn_file in os.listdir(df):
#     # if i == 3:
#     #     break
#     if pgn_file[0] == ".": continue
#     i += 1
#     pgn_file = "fens/" + pgn_file
#     print(pgn_file)
#     lines = open(pgn_file, "rt").readlines()
#     with open(pgn_file, "wt") as fout:
#         for line in lines:
#             fout.write(line.replace("INSERT ", 'INSERT IGNORE '))