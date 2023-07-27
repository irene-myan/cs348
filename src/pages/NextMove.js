import React, { useEffect, useState } from "react";
import TextField from "@mui/material/TextField";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetPercentage } from "../apiFunctions";
import Chessboard from "chessboardjsx";
import { Chess } from "chess.js";
import Button from "@mui/material/Button";
import { DataGrid } from "@mui/x-data-grid";
import axios from "axios";

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

const NextMove = () => {
  // const [chess] =
  //   useState <
  //   ChessInstance >
  //   new Chess("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
  // useEffect(() => {
  //   setGame(new Chess());
  // });
  var row_id = 0;
  const [chess, setGame] = useState(
    new Chess("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")
  );
  const [fen, setFen] = useState(
    "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
  );
  const [moves, setMoves] = useState(null);
  //   const [winPercentage, setWWinPercentage] = useState(null);
  //   const [lossPercentage, setLossPercentage] = useState(null);
  //   const [drawPercentage, setDrawPercentage] = useState(null);

  //   const changeFen = async (FEN) => {
  //     await GetPercentage(
  //       FEN,
  //       setWWinPercentage,
  //       setLossPercentage,
  //       setDrawPercentage
  //     );
  //     console.log(winPercentage);
  //     setFen(FEN);
  //   };

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

  const handleClick = async () => {
    const response = await axios.get("http://localhost:8000/get_next_moves/", {
      params: {
        fen: chess.fen,
      },
    });
    console.log(response.data);
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
        <Chessboard
          width={350}
          position={fen}
          //   sparePieces={true}
          onDrop={(move) =>
            handlePut(
              {
                type: move.piece[1],
                color: move.piece[0],
              },
              move.targetSquare,
              move.sourceSquare
            )
          }
          //   dropOffBoard="trash"
        />
      </div>
      <Button onClick={handleClick} variant="contained">
        Next Moves
      </Button>
      {/* <ThemeProvider theme={darkTheme}>
        <DataGrid
          disableColumnSelector
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
      </ThemeProvider> */}
    </div>
  );
};

export default NextMove;
