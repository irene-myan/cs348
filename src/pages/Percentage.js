import React, { useState } from "react";
import TextField from "@mui/material/TextField";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetPercentage } from "../apiFunctions";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const Percentage = () => {
  const [winPercentage, setWWinPercentage] = useState(null);
  const [lossPercentage, setLossPercentage] = useState(null);
  const [drawPercentage, setDrawPercentage] = useState(null);

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
    </div>
  );
};

export default Percentage;
