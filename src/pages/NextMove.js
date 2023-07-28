import React, { useEffect, useState } from "react";
import TextField from "@mui/material/TextField";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetPercentage } from "../apiFunctions";
import Chessboard from "chessboardjsx";
import Chess from "chess.js";
import Button from "@mui/material/Button";
import { DataGrid } from "@mui/x-data-grid";
import { GetNextBestMove } from "../apiFunctions";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const columns = [
  {
    field: "play_count",
    headerName: "Play Count",
    width: 130,
    filterable: false,
  },
  {
    field: "move",
    headerName: "Move",
    width: 130,
    filterable: false,
  },
];

const NextMove = () => {
  var row_id = 0;
  const [chess, setGame] = useState(
    new Chess("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")
  );
  const [fen, setFen] = useState(
    "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
  );
  const [moves, setMoves] = useState([]);

  const handleClickWhite = () => {
    GetNextBestMove(fen);
  };

  const handleClickBlack = () => {
    let newFen = "";
    for (let i = 0; i < fen.length; i++) {
      if (fen[i] === "w") {
        newFen += "b";
        continue;
      }
      newFen += fen[i];
    }
    GetNextBestMove(newFen);
  };

  const handlePut = (piece, pos, delPos) => {
    try {
      if (chess.put(piece, pos)) {
        chess.remove(delPos);

        setFen(chess.fen());
      }
    } catch (e) {
      alert("invalid move");
    }
  };

  return (
    <div
      style={{
        display: "flex",
        alignItems: "center",
        flexDirection: "column",
        height: "100%",
      }}
    >
      <div
        style={{
          width: "100%",
          marginTop: 32,
          marginBottom: 32,
        }}
      >
        <ThemeProvider theme={darkTheme}>
          <TextField
            style={{
              marginBottom: 32,
            }}
            id="standard-basic"
            label="FEN"
            variant="standard"
            onKeyPress={(e) => {
              if (e.key === "Enter") {
                setFen(e.target.value);
                setGame(new Chess(fen));
                console.log(chess.fen());
                GetNextBestMove(e.target.value, setMoves);
              }
            }}
          />
        </ThemeProvider>
      </div>
      <div
        style={{
          width: "100%",
          display: "flex",
          flexDirection: "row",
          marginTop: 32,
          marginBottom: 32,
        }}
      >
        <ThemeProvider theme={darkTheme}>
          <DataGrid
            disableColumnSelector
            style={{ marginRight: 32 }}
            rows={moves}
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
        <Chessboard width={350} position={fen} allowDrag={() => false} />
      </div>
    </div>
  );
};

export default NextMove;
