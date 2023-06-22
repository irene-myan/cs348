from typing import Optional
from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy import text, create_engine
from sqlalchemy.orm import sessionmaker, scoped_session, Session
from sqlalchemy.ext.automap import automap_base
from datetime import date, datetime
SQLALCHEMY_DATABASE_URL = "mysql+mysqlconnector://root:Password123@localhost/testDB"

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
# Datetime input
# https://fastapi.tiangolo.com/tutorial/extra-data-types/
# datetime.date
@app.get("/topelo/")
def get_items(date_start: Optional[date] = None, date_end: Optional[date] = None, db: Session = Depends(get_db)):
    if not date_start:
        date_start = date(1, 1, 1)
    if not date_end:
        date_end = date(9999,9,9)

    querya = (
        "SELECT CASE "
        "  WHEN elowhite >= eloblack THEN whiteplayerid "
        "  ELSE blackplayerid "
        "END AS top_player_id "
        "FROM Games "
        "WHERE date >= :start_date AND date <= :end_date "
        "ORDER BY top_player_id DESC "
        "LIMIT 1"
    )
    result = db.execute(
        text(querya),
        start_date=date_start,
        end_date=date_end
    ).fetchone()

    queryb = (
        "SELECT *"
        "FROM Games"
        "WHERE whiteplayerid = :id or blackplayerid = :id"
    )

    resultb = int(db.execute(
        text(querya),
        id=result
    ).fetchone()[0][0])

    rows = [
        {
            "gid": int(row[0]), 
            "event": str(row[1]),
            "site": str(row[2]),
            "date": date(row[3]),
            "round": int(row[4]),
            "whitepid": int(row[5]),
            "blackpid": int(row[6]),
            "result": str(row[6]),
            "whiteelo": int(row[6]),
            "blackelo": int(row[6]),
            "eco": str(row[6]),
            "event_date": date(row[6]),
        }
        for row in result
    ]
    return {'games': rows}


@app.get("/sbd/")
def get_items(desc: bool, db: Session = Depends(get_db)):
    order = "DESC" if desc else "ASC"
    result = db.execute(text(f"SELECT * FROM Games ORDER BY Date {order}"))
    return {'games': [dict(row) for row in result]}


@app.get("/test/")
def get_items(db: Session = Depends(get_db)):
    result = db.execute(text("SELECT * FROM student"))
    rows = [
        {"id": int(row[0]), "name": row[1], "score": float(row[2])}
        for row in result
    ]
    return {'students': rows}
