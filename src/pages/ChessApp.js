// import logo from './logo.svg';
// import './App.css';

// function App() {
//   return (
//     <div className="App">
//       <header className="App-header">
//         <img src={logo} className="App-logo" alt="logo" />
//         <p>
//           Edit <code>src/App.js</code> and save to reload.
//         </p>
//         <a
//           className="App-link"
//           href="https://reactjs.org"
//           target="_blank"
//           rel="noopener noreferrer"
//         >
//           Learn React
//         </a>
//       </header>
//     </div>
//   );
// }

// export default App;
import React from 'react';
import { Link } from 'react-router-dom';

const ChessApp = () => {
  return (
    <div>
      <nav>
        <ul>
          <li>
            <Link to="/">Home</Link>
          </li>
          <li>
            <Link to="/percentage">Percentage</Link>
          </li>
          <li>
            <Link to="/book-openings">Book Openings</Link>
          </li>
          <li>
            <Link to="/top-elo-players">Top Elo Players</Link>
          </li>
        </ul>
      </nav>
    </div>
  );
};

export default ChessApp;