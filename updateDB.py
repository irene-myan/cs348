import subprocess

# Set up the MySQL command
mysql_command = "mysql -u root -pPassword123 testDB"

# List of SQL files in order
sql_files = [
    "createTables.sql",
    "populateOpenings.sql",
    "populateBenkoGambit.sql",
    "populateFens.sql",
    "updateTables.sql"
]

# Loop through the SQL files and execute them in order
for sql_file in sql_files:
    # Construct the full command
    full_command = f"{mysql_command} < {sql_file}"

    print(f'[RUNNING] {sql_file}')

    # Execute the command using subprocess
    subprocess.run(full_command, shell=True)
