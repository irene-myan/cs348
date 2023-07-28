import axios from "axios";

export async function GetGames(setGames) {
  try {
    const response = await axios.get("http://localhost:8000/sbd/", {
      params: {
        desc: false,
      },
    });

    setGames(response.data);
  } catch (error) {
    console.error("Error fetching games:", error);
  }
}

export async function GetOpenings(setOpenings) {
  try {
    const response = await axios.get("http://localhost:8000/openings/");
    setOpenings(response.data);
    console.log(response.data);
  } catch (error) {
    console.error("Error while fetching openings");
  }
}

export async function GetPercentage(
  fen,
  setWinPercentage,
  setLossPercentage,
  setDrawPercentage
) {
  try {
    const response = await axios.get("http://localhost:8000/plist/", {
      params: {
        fen,
      },
    });
    const total =
      response.data[0].total_count +
      response.data[1].total_count +
      response.data[2].total_count;
    setWinPercentage(((response.data[2].total_count / total) * 100).toFixed(2));
    setDrawPercentage(
      ((response.data[0].total_count / total) * 100).toFixed(2)
    );
    setLossPercentage(
      ((response.data[1].total_count / total) * 100).toFixed(2)
    );
  } catch (error) {
    console.error("Error fetching percentage:", error);
  }
}

export async function GetTopElo(setTopElo, dateStart, dateEnd) {
  try {
    const response = await axios.get("http://localhost:8000/players_ranking/", {
      params: {
        date_start: dateStart,
        date_end: dateEnd,
      },
    });
    setTopElo(response.data);
  } catch (error) {
    console.error("Error fetching top-elo players:", error);
  }
}

export async function GetStockFishEval(fen, setStockEval, timeToThink = 10000) {
  try {
    const response = await axios.get(
      "http://localhost:8000/get_stockfish_eval/",
      {
        params: {
          fen: fen,
          time_to_think_ms: timeToThink,
        },
      }
    );
    setStockEval(response.data);
  } catch (error) {
    console.error("Error fetching stockfish:", error);
  }
}

export async function GetMovesFromGid(gid, setMoves) {
  try {
    const response = await axios.get(
      "http://localhost:8000/get_fens_from_gid/",
      {
        params: {
          gid: gid,
        },
      }
    );
    setMoves(response.data);
  } catch (error) {
    console.error("Error fetching moves from gid", error);
  }
}

export async function GetNextBestMove(fen, setMoves) {
  try {
    const response = await axios.get("http://localhost:8000/get_next_moves/", {
      params: {
        fen: fen,
      },
    });
    setMoves(response.data);
  } catch (error) {
    console.error("Error fetching next best move from fen", error);
  }
}
