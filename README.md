# Starting the project
- - -
## Database
Runs on a local MySQL, password must be manually entered into the backend_main.py script
Load database data by running
python3 updateDB.py

## Frontend
Run ```npm start``` in repo dir

## Backend
Run ```python3 -m uvicorn backend_main:app --host 0.0.0.0 --port 8000 --reload```