import React, { useEffect, useState } from 'react';
import '../css/home-page.css';
import axios from 'axios';

const Home = () => {
  const [games, setGames] = useState(null);

  async function fetchGames() {
    try {
      const response = await axios.get("http://localhost:8000/sbd/", {
        params: {
          desc: false
        }
      });
      setGames(response.data);
    } catch (error) {
      console.error('Error fetching games:', error);
    }
  }

  useEffect(() => {
    fetchGames();
    console.log(1);
  }, []);

  if (games == null) {
    return <div>Loading...</div>;
  }
  console.log(games[0]);

  return (
    <div>
      <h1>Chess App</h1>
      <p>Welcome to the Chess App!</p>
      <div className='games'>
      {/* <table>
        <thead>
          <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Password</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          {arrayWithData.map(item => {
            return (
              <tr key={item.password}>
                <td>{ item.firstname }</td>
                <td>{ item.lastname }</td>
                <td>{ item.password }</td>
                <td>{ item.email }</td>
              </tr>
            );
          })}
        </tbody>
      </table> */}
        {games.map((item, index) => (
          <div key={index}>{index}</div>
        ))}
      </div>
    </div>
  );
};

export default Home;
