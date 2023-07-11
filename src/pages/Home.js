import React, { useEffect, useState } from "react";
import "../css/home-page.css";
import axios from "axios";
import { DataGrid } from "@mui/x-data-grid";
import { ThemeProvider, createTheme } from "@mui/material/styles";
import { GetGames } from "../apiFunctions";

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

  var row_id = 0;

  useEffect(() => {
    GetGames(setGames);
  }, []);

  if (games == null) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      <h1>Chess App</h1>
      <p>Welcome to the Chess App!</p>
      <div className="games">
        <div
          style={{
            height: 500,
            width: "100%",
          }}
        >
          <ThemeProvider theme={darkTheme}>
            <DataGrid
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
    </div>
  );
};

export default Home;
