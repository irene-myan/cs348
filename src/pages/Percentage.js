import React, { useEffect, useState } from "react";
import axios from "axios";
import TextField from "@mui/material/TextField";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetPercentage } from "../apiFunctions";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const Percentage = () => {
  const [percentage, setPercentage] = useState(null);

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
              GetPercentage(e.target.value, setPercentage)
            }
          }}
        />
      </ThemeProvider>
      <h3>Percentage: {percentage}</h3>
    </div>
  );
};

export default Percentage;
