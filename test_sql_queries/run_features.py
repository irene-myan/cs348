import glob
import os

sql_files = glob.glob("*.sql")

for file in sql_files:
    file_name = os.path.splitext(file)[0]
    for type in ['testDB', 'sampleDB']:
        command = f"mysql -u root -pPassword123 {type} < {file_name}.sql > {type}-{file_name}.txt"
        print(f'[RUNNING] {command}')
        os.system(command)
