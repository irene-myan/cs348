from typing import Optional
from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy import text, create_engine
from sqlalchemy.orm import sessionmaker, scoped_session, Session
from sqlalchemy.ext.automap import automap_base
from datetime import date, datetime
SQLALCHEMY_DATABASE_URL = "mysql+mysqlconnector://root:Password123@localhost/testDB"
from fastapi.middleware.cors import CORSMiddleware

# Password123
engine = create_engine(
    SQLALCHEMY_DATABASE_URL
)

# generate a session factory
session_factory = sessionmaker(bind=engine)
SessionLocal = scoped_session(session_factory)

Base = automap_base()
Base.prepare(engine, reflect=True)

app = FastAPI()

origins = [
    "http://localhost:3000",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# RUN WITH
# uvicorn main:app --reload
# python3 -m uvicorn backend_main:app --host 0.0.0.0 --port 8000 --reload

# FastAPI
def generate_result_from_query(res):
    columns = res.keys()
    result = [{column: value for column, value in zip(columns, row)} for row in res.fetchall()]
    return result

# Return the frequencies of win, draw, loss for a given position
@app.get("/plist/")
def get_plist(fen: str, db: Session = Depends(get_db)):
    query = (
        "WITH games_including_fen AS( "
        "    SELECT gid "
        "    FROM Moves gm "
        "    WHERE gm.fen=:fen "
        ")"
        "SELECT result, COUNT(*) AS total_count "
        "FROM Games g "
        "JOIN games_including_fen ON g.gid=games_including_fen.gid "
        "GROUP BY result"
    )

    result = db.execute(
        text(query),
        { 'fen': fen }
    )

    return generate_result_from_query(result)


# Datetime input
# https://fastapi.tiangolo.com/tutorial/extra-data-types/
# datetime.date
# Return the games of the (best elo within a date range)
@app.get("/topelo/")
def get_items(date_start: Optional[date] = None, date_end: Optional[date] = None, db: Session = Depends(get_db)):
    if not date_start:
        date_start = date(1, 1, 1)
    if not date_end:
        date_end = date(9999,9,9)

    query = (
        "WITH playerelos AS ("
        "  SELECT player_id, MAX(elo) AS max_elo "
        "  FROM ( "
        "    SELECT wp_id AS player_id, wp_elo AS elo, date FROM Games WHERE date BETWEEN :start_date AND :end_date "
        "    UNION ALL "
        "    SELECT bp_id AS player_id, bp_elo AS elo, date FROM Games WHERE date BETWEEN :start_date AND :end_date "
        "  ) AS TotalPlayers "
        "  GROUP BY player_id "
        "), "
        "topids AS ("
        "  SELECT player_id "
        "  FROM playerelos p"
        "  WHERE p.max_elo = (SELECT MAX(max_elo) FROM playerelos) "
        ") "
        "SELECT *"
        "FROM Games g "
        "WHERE g.wp_id = (SELECT player_id FROM topids) or g.bp_id = (SELECT player_id FROM topids);"
    )

    result = db.execute(
        text(query),
        {"start_date": date_start, "end_date": date_end}
    )


    return generate_result_from_query(result)

# Sort all the games by date
@app.get("/sbd/")
def get_items(desc: bool, db: Session = Depends(get_db)):
    order = "DESC" if desc else "ASC"
    result = db.execute(text(f"SELECT * FROM Games ORDER BY date {order}"))
    return generate_result_from_query(result)

# Count the number of openings and its name
@app.get("/openings/")
def get_items(desc: bool, db: Session = Depends(get_db)):
    query = (
        "SELECT o.name, COUNT(*) as frequency_played"
        "From Games g, opened_with ow, Openings o"
        "WHERE g.gid = ow.gid AND ow.oid = o.oid"
        "GROUP BY o.name"
    )
    result = db.execute(text())

    return generate_result_from_query(result)

@app.get("/test/")
def get_items(db: Session = Depends(get_db)):
    result_proxy = db.execute(text("SELECT * FROM student"))
    return generate_result_from_query(result_proxy)
