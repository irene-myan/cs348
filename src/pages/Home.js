import React, { useEffect, useState } from "react";
import "../css/home-page.css";
import { DataGrid } from "@mui/x-data-grid";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetGames, GetMovesFromGid } from "../apiFunctions";
import { Chessboard } from "react-chessboard";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const columns = [
  { field: "event", headerName: "Event", width: 130, filterable: false },
  {
    field: "wp_id",
    headerName: "White Player",
    width: 130,
    filterable: false,
  },
  { field: "bp_id", headerName: "Black Player", width: 130, filterable: false },
  { field: "result", headerName: "Result", width: 130, filterable: false },
];

const Home = () => {
  const [games, setGames] = useState(null);
  const [gid, setGid] = useState(null);
  const [moves, setMoves] = useState(null);
  const [moveNum, setMoveNum] = useState(0);
  const [maxMoves, setMaxMoves] = useState(0);
  const [result, setResult] = useState("");

  var row_id = 0;

  console.log(moves);

  function customSort(a, b) {
    if (a.movenum !== b.movenum) {
      return a.movenum - b.movenum; // Sort by movenum in increasing order
    } else {
      // If movenums are the same, sort by color ('w' comes first)
      if (a.color === "w") {
        return -1; // 'a' should come before 'b'
      } else if (b.color === "w") {
        return 1; // 'b' should come before 'a'
      } else {
        // If both are 'b', or both are 'w', maintain the current order
        return 0;
      }
    }
  }

  useEffect(() => {
    if (gid !== null) {
      GetMovesFromGid(gid, setMoves);
    }
  }, [gid]);

  useEffect(() => {
    if (moves !== null) {
      setMoveNum(0);
      setMaxMoves(moves.length);
      moves.sort(customSort);
    }
  }, [moves]);

  useEffect(() => {
    if (moveNum === maxMoves - 1) setResult(getResult(moves[moveNum].result));
    else setResult("");
  }, [moveNum]);

  useEffect(() => {
    GetGames(setGames);
  }, []);

  const getResult = (result) => {
    console.log(result.split("-"));
    let resultString = "";

    switch (result.split("-")[0]) {
      case "1/2":
        resultString = "It's a draw";
        break;

      case "1":
        resultString = "White Won";
        break;

      case "0":
        resultString = "Black Won";
        break;
    }

    return resultString;
  };

  const RenderChessBoard = () => {
    if (moves != null && moves[moveNum] != null) {
      return (
        <div className="chess-board">
          <div style={{ height: "25px" }}>{result}</div>

          <Chessboard id="StepperBoard" position={moves[moveNum].fen} />
          <div className="button-row">
            <button
              disabled={moveNum === 0}
              onClick={() => {
                setMoveNum(moveNum - 1);
              }}
            >
              {" "}
              Back{" "}
            </button>
            <button
              disabled={moveNum === maxMoves - 1}
              onClick={() => {
                setMoveNum(moveNum + 1);
              }}
            >
              {" "}
              Next{" "}
            </button>
          </div>
        </div>
      );
    }
  };

  if (games == null) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      <h1>Chess App</h1>
      <p>Welcome to the Chess App!</p>
      <div className="home-page-container">
        <div className="games">
          <div
            style={{
              height: 500,
              width: "100%",
            }}
          >
            <ThemeProvider theme={darkTheme}>
              <DataGrid
                onCellClick={(params) => {
                  setGid(params.row.gid);
                }}
                disableColumnSelector
                rows={games}
                getRowId={() => {
                  row_id++;
                  return row_id;
                }}
                columns={columns}
                initialState={{
                  pagination: {
                    paginationModel: { page: 0, pageSize: 5 },
                  },
                }}
                pageSizeOptions={[5, 10, 20, 50]}
              />
            </ThemeProvider>
          </div>
        </div>
        {RenderChessBoard()}
      </div>
    </div>
  );
};

export default Home;
