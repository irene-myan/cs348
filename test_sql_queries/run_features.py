import glob
import os

sql_files = glob.glob("*.sql")

for file in sql_files:
    file_name = os.path.splitext(file)[0]
    command = f"mysql -u root -pPassword123 testDB < {file_name}.sql > {file_name}.txt"
    print(f'[RUNNING] {command}')
    os.system(command)
