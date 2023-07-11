import React, { useEffect, useState } from "react";
import { GetOpenings } from "../apiFunctions";
import { DataGrid } from "@mui/x-data-grid";
import { ThemeProvider, createTheme } from "@mui/material/styles";

const darkTheme = createTheme({
  palette: {
    mode: "dark",
  },
});

const columns = [
  { field: "name", headerName: "Opening Name", width: 350, filterable: false },
  {
    field: "frequency_played",
    headerName: "Frequency Played",
    width: 200,
    filterable: false,
  },
];

const BookOpenings = () => {
  const [openings, setOpenings] = useState(null);

  var row_id = 0;

  useEffect(() => {
    GetOpenings(setOpenings);
  }, []);

  if (openings == null) {
    return <div>Loading...</div>;
  }
  return (
    <div>
      <h1>Viewing book openings by set of moves</h1>
      <div
        style={{
          height: 500,
          width: "100%",
        }}
      >
        <ThemeProvider theme={darkTheme}>
          <DataGrid
            disableColumnSelector
            rows={openings}
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

export default BookOpenings;
