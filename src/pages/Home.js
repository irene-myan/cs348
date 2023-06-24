import React, { useEffect, useState } from "react";
import "../css/home-page.css";
import axios from "axios";

const Home = () => {
  const [games, setGames] = useState(null);
  const [currentPage, setCurrentPage] = useState(1);
  const [itemsPerPage] = useState(10);

  async function fetchGames() {
    try {
      const response = await axios.get("http://localhost:8000/sbd/", {
        params: {
          desc: false,
        },
      });
      setGames(response.data);
    } catch (error) {
      console.error("Error fetching games:", error);
    }
  }

  useEffect(() => {
    fetchGames();
  }, []);

  if (games == null) {
    return <div>Loading...</div>;
  }

  // Pagination calculations
  const indexOfLastItem = currentPage * itemsPerPage;
  const indexOfFirstItem = indexOfLastItem - itemsPerPage;
  const currentItems = games.slice(indexOfFirstItem, indexOfLastItem);
  const maxPages = Math.ceil(games.length / 10);

  // Change page
  const paginate = (pageNumber) => {
    setCurrentPage(pageNumber);
  };

  return (
    <div>
      <h1>Chess App</h1>
      <p>Welcome to the Chess App!</p>
      <div className="games">
        <table>
          <thead>
            <tr>
              <th>Event</th>
              <th>White Player</th>
              <th>Black Player</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody>
            {currentItems.map((item, index) => (
              <tr key={index}>
                <td>{item.event}</td>
                <td>{item.wp_id}</td>
                <td>{item.bp_id}</td>
                <td>{item.result}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <div className="pagination">
        <button
          disabled={currentPage === 1}
          onClick={() => paginate(currentPage - 1)}
        >
          Back
        </button>
        {/* {games.map((_, index) => (
          <button key={index} onClick={() => paginate(index + 1)}>
            {index + 1}
          </button>
        ))} */}
        <button
          disabled={currentPage >= maxPages}
          onClick={() => paginate(currentPage + 1)}
        >
          Next
        </button>
      </div>
    </div>
  );
};

export default Home;
