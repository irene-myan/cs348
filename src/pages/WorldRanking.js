import React from 'react';
import { useState, useEffect } from 'react';
import { GetTopElo } from '../apiFunctions';
import { DataGrid } from "@mui/x-data-grid";
import { ThemeProvider, createTheme } from "@mui/material/styles";

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

const WorldRanking = () => {
  const [topElo, setTopElo] = useState(null);
  var row_id = 0;

  useEffect(() => {
    GetTopElo(setTopElo, null, null);
  }, []);

  console.log(topElo);

  if (topElo == null) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      <h1>World Ranking</h1>
      <div
        style={{
        height: 500,
        width: "100%",
        }}
      >
      <ThemeProvider theme={darkTheme}>
        <DataGrid
          disableColumnSelector
          rows={topElo}
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
  );
};

export default WorldRanking;