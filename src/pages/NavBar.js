import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import '../css/nav-bar.css';

const NavBar = () => {
    const [curPath, setCurPath] = useState("");

    useEffect(() => {
      setCurPath(window.location.pathname);
    });
    
    const handleLink = (path) => {
      setCurPath(path);
    };

    return (
      <div className="nav-bar">
        <ul>
          <li>
            <Link
              onClick={() => handleLink('/')}
              to="/"
              className={curPath === '/' ? 'active' : ''}
            >
              Home
            </Link>
          </li>
          <li>
            <Link
              onClick={() => handleLink('/percentage')}
              to="/percentage"
              className={curPath === '/percentage' ? 'active' : ''}
            >
              Percentage
            </Link>
          </li>
          <li>
            <Link
              onClick={() => handleLink('/book-openings')}
              to="/book-openings"
              className={curPath === '/book-openings' ? 'active' : ''}
            >
              Book Openings
            </Link>
          </li>
          <li>
            <Link
              onClick={() => handleLink('/top-elo-players')}
              to="/top-elo-players"
              className={curPath === '/top-elo-players' ? 'active' : ''}
            >
              World Ranking
            </Link>
          </li>
        </ul>
      </div>
    );
};

export default NavBar;