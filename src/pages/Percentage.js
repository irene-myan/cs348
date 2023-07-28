import React, { useState } from "react";
import TextField from "@mui/material/TextField";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetPercentage } from "../apiFunctions";
import Chessboard from "chessboardjsx";
import Chess from "chess.js";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const Percentage = () => {
  const [chess, setGame] = useState(
    new Chess("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")
  );
  const [fen, setFen] = useState(
    "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
  );
  const [winPercentage, setWWinPercentage] = useState(null);
  const [lossPercentage, setLossPercentage] = useState(null);
  const [drawPercentage, setDrawPercentage] = useState(null);

  const changeFen = async (FEN) => {
    await GetPercentage(
      FEN,
      setWWinPercentage,
      setLossPercentage,
      setDrawPercentage
    );
    console.log(winPercentage);
    setFen(FEN);
  };

  return (
    <div>
      <h1>Percentage won/draw/lost from given fen</h1>
      <ThemeProvider theme={darkTheme}>
        <TextField
          id="standard-basic"
          label="FEN"
          variant="standard"
          onKeyPress={(e) => {
            if (e.key === "Enter") {
              setFen(e.target.value);
              setGame(new Chess(fen));
              console.log(chess.fen());
              GetPercentage(
                e.target.value,
                setWWinPercentage,
                setLossPercentage,
                setDrawPercentage
              );
            }
          }}
        />
      </ThemeProvider>
      <h3>Win Percentage: {winPercentage}</h3>
      <h3>Loss Percentage: {lossPercentage}</h3>
      <h3>Draw Percentage: {drawPercentage}</h3>
      <Chessboard width={400} position={fen} allowDrag={() => false} />
    </div>
  );
};

export default Percentage;
