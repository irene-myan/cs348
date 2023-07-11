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
  { field: "name", headerName: "Player Name", width: 260, filterable: false },
  { field: "max_elo", headerName: "Highest Rank", width: 260, filterable: false }
];

const WorldRanking = () => {
  const [topElo, setTopElo] = useState(null);
  const [beginDate, setBeginDate] = useState('');
  const [endDate, setEndDate] = useState('');
  const [isValidRange, setIsValidRange] = useState(true);
  var row_id = 0;

  const handleBeginDateChange = (event) => {
    setBeginDate(event.target.value);
    setIsValidRange(true);
  };

  const handleEndDateChange = (event) => {
    setEndDate(event.target.value);
    setIsValidRange(true);
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    const beginTimestamp = Date.parse(beginDate);
    const endTimestamp = Date.parse(endDate);
    
    if (isNaN(beginTimestamp) && isNaN(endTimestamp)) {
      GetTopElo(setTopElo)
    } else {
      const begin_date = formatDate(beginDate).replaceAll(",", "-");
      const end_date = formatDate(endDate).replaceAll(",", "-");
      GetTopElo(setTopElo, begin_date, end_date);
    }
  };

  const formatDate = (dateString) => {
    const dateObj = new Date(dateString);
    const year = dateObj.getFullYear();
    const month = dateObj.getMonth() + 1;
    const day = dateObj.getDate();

    return `${year},${month.toString().padStart(2, '0')},${day.toString().padStart(2, '0')}`;
  };

  useEffect(() => {
    GetTopElo(setTopElo);
  }, []);

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
        <form onSubmit={handleSubmit}>
          <span>
            <label>Begin Date: </label>
            <input
              type="date"
              value={beginDate}
              onChange={handleBeginDateChange}
            />
            {/* <br /> */}
            <label>End Date: </label>
            <input
              type="date"
              value={endDate}
              onChange={handleEndDateChange}
            />
            <br />
            {!isValidRange && <p>Invalid date range</p>}
          </span>
          <button type="submit">Search</button>
        </form>

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