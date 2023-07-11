import React, { useEffect, useState } from "react";
import axios from "axios";
import TextField from "@mui/material/TextField";
import { ThemeProvider, createTheme } from "@mui/material/styles";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const Percentage = () => {
  const [percentage, setPercentage] = useState(null);
  async function fetchPercentage(fen) {
    try {
      const response = await axios.get("http://localhost:8000/plist/", {
        params: {
          fen,
        },
      });
      setPercentage(response.data);
    } catch (error) {
      console.error("Error fetching percentage:", error);
    }
  }
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
              alert(e.target.value);
            }
          }}
        />
      </ThemeProvider>
      <h3>Percentage: {percentage}</h3>
    </div>
  );
};

export default Percentage;
