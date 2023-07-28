from typing import Optional
from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy import text, create_engine
from sqlalchemy.orm import sessionmaker, scoped_session, Session
from sqlalchemy.ext.automap import automap_base
from datetime import date, datetime
SQLALCHEMY_DATABASE_URL = "mysql+mysqlconnector://root:Password123@localhost/testDB"
from fastapi.middleware.cors import CORSMiddleware
import subprocess
import regex as re
import time
import platform

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
        "WITH topids AS ( "
        "  SELECT pid "
        "  FROM playedgames p "
        "  JOIN Games g on g.gid = p.gid "
        "  WHERE p.elo = (SELECT MAX(elo) FROM playedgames pa JOIN Games ga on ga.gid = pa.gid WHERE ga.date BETWEEN :start_date AND :end_date)"
        ") "
        "SELECT * "
        "FROM Games g "
        "WHERE g.wp_id = (SELECT pid FROM topids) or g.bp_id = (SELECT pid FROM topids);"
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

    query = (
        "SELECT gid, w.name AS wp_name, b.name AS bp_name, result, event "
        "FROM Games g JOIN players w ON g.wp_id = w.pID "
        "JOIN players b ON g.bp_id = b.pid "
        f"ORDER BY date {order}"
    )

    result = db.execute(text(query))
    
    return generate_result_from_query(result)

# Count the number of openings and its name
@app.get("/openings/")
def get_items(db: Session = Depends(get_db)):
    query = (
        "SELECT o.eco, o.name, COUNT(*) as frequency_played "
        "FROM Games g, Openings o "
        "WHERE g.eco = o.eco "
        "GROUP BY o.eco, o.name; "
    )

    result = db.execute(text(query))

    return generate_result_from_query(result)

# Sorts the players by their highest achieved ranking within two dates
@app.get('/players_ranking/')
def get_items(date_start: Optional[date] = None, date_end: Optional[date] = None, db: Session = Depends(get_db)):
    if not date_start:
        date_start = date(1, 1, 1)
    if not date_end:
        date_end = date(9999,9,9)
    query = (
        "SELECT DISTINCT p.pid as pid, p.name as name, MAX(pg.elo) as max_elo "
        "FROM players p "
        "JOIN playedgames pg ON p.pid = pg.pid "
        "JOIN games g ON pg.gid = g.gid "
        "WHERE g.date BETWEEN :start_date AND :end_date "
        "GROUP BY p.pid, p.name "
        "ORDER BY max_elo DESC"
    )

    result = db.execute(
        text(query),
        {"start_date": date_start, "end_date": date_end}
    )

    return generate_result_from_query(result)

# given an opening ECO return the amount of times each player played it and sort by highest played
@app.get('/players_opening_count/')
def get_items(eco: str, db: Session = Depends(get_db)):
    query = (
        "SELECT COUNT(*) as play_count, p.pid as pid, p.name as name, o.name as opening_name, o.startingMoves as starting_moves "
        "FROM players p, playedgames pg, games g, openings o "
        "WHERE p.pid = pg.pid "
        "and pg.gid = g.gid "
        "and o.eco = g.eco "
        "and o.eco = :eco "
        "GROUP BY p.pid, p.name, o.name, o.startingMoves "
        "ORDER BY play_count DESC"
    )

    result = db.execute(
        text(query),
        {"eco": eco}
        )

    return generate_result_from_query(result)

# Given a fen return the count of next moves played from that spot
@app.get('/get_next_moves/')
def get_items(fen: str, db: Session = Depends(get_db)):
    move_inc = 0 if 'w' in fen else 1
    find = 'b' if 'w' in fen else 'w'
    query = (
        "WITH next_games as ( "
        "  SELECT m.gid, m.movenum + :move_inc as movenum"
        "  FROM moves m "
        "  WHERE m.fen = :fen "
        ") "
        "SELECT COUNT(*) as play_count, m.move, m.fen "
        "FROM next_games ng, moves m "
        "WHERE ng.gid = m.gid and ng.movenum = m.movenum and m.color = :find "
        "GROUP BY m.move, m.fen "
        "ORDER BY play_count DESC"
    )

    result = db.execute(
        text(query),
        {"fen": fen, "move_inc": move_inc, "find": find}
        )

    return generate_result_from_query(result)

# given a game return all of the fens (moves) associated with that games. (The sequence of fens)
@app.get('/get_fens_from_gid/')
def get_items(gid: str, db: Session = Depends(get_db)):
    query = (
        "SELECT m.fen, m.movenum, m.color, result "
        "FROM moves m, games g "
        "WHERE m.gid = g.gid AND g.gid = :gid "
    )
    # query = (
    #     "WITH next_games as ( "
    #     "  SELECT m.gid, g.movenum + 1 as movenum"
    #     "  FROM moves m "
    #     "  WHERE m.fen = :fen "
    #     ") "
    #     "SELECT COUNT(*) as play_count, m.move"
    #     "FROM next_games ng, moves m "
    #     "WHERE ng.gid = m.gid and ng.movenum = m.movenum "
    #     "GROUP BY m.move "
    # )

    result = db.execute(
        text(query),
        {"gid": gid}
        )

    return generate_result_from_query(result)

# Given a gen return all of the games that have reached that position
@app.get('/get_games_from_fen/')
def get_items(fen: str, db: Session = Depends(get_db)):
    '''
    Returns all the moves, fen, move num associated with a fen
    '''
    query = (
        "WITH games_fen as ( "
        "  SELECT m.gid"
        "  FROM moves m "
        "  WHERE m.fen = :fen "
        ") "
        "SELECT *"
        "FROM games_fen gf, games g "
        "WHERE gf.gid = g.gid "
    )

    result = db.execute(
        text(query),
        {"fen": fen}
        )

    return generate_result_from_query(result)

def run_uci_command(app_path, commands, timeout, debug=False):
    process = subprocess.Popen(app_path, stdin=subprocess.PIPE, stdout=subprocess.PIPE, bufsize=1, universal_newlines=True)

    for cmd in commands:
        process.stdin.write(cmd + "\n")
    process.stdin.flush()

    output_lines = []
    start_time = time.time()
    for line in process.stdout:
        if time.time() - start_time > timeout:
            break
        line = line.strip()
        output_lines.append(line)
        if debug:
            print(line)
        if "bestmove" in line:
            break

    process.stdin.close()
    process.terminate()

    return output_lines



def extract_score(input_string):
    pattern = r'(cp|mate) (-?\d+)'
    match = re.search(pattern, input_string)

    if match:
        return int(match.group(2)), match.group(1)
    else:
        return None, None

# Given a fen return stockfish analysis of the position
@app.get('/get_stockfish_eval/')
def get_items(fen: str, time_to_think_ms: int, timeout_ms: int=-1, db: Session = Depends(get_db)):
    if timeout_ms == -1:
        timeout_ms = time_to_think_ms * 2 + 250

    os = platform.system();
    output = run_uci_command("stockfish-windows-x86-64-avx2.exe" if os == 'Windows' else "stockfish", [f"position fen {fen}", f"go movetime {time_to_think_ms}"], timeout=timeout_ms/1000.0, debug=True)
    score_value, score_type = extract_score(output[-2])
    result = output[-1].split()[1]

    return {'best_move': result, 'score_value': score_value, 'score_type': score_type}

@app.get("/test/")
def get_items(db: Session = Depends(get_db)):
    result_proxy = db.execute(
        text("SELECT * FROM Games g WHERE g.eco NOT IN(SELECT eco FROM Openings)"))
    return generate_result_from_query(result_proxy)
