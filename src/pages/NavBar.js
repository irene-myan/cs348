import React, { useState } from "react";
import { Link } from "react-router-dom";
import "../css/nav-bar.css";

const NavBar = () => {
  const [curPath, setCurPath] = useState(window.location.pathname);

  const handleLink = (path) => {
    setCurPath(path);
  };

  return (
    <div className="nav-bar">
      <ul>
        <li>
          <Link
            onClick={() => handleLink("/")}
            to="/"
            className={curPath === "/" ? "active" : ""}
          >
            Home
          </Link>
        </li>
        <li>
          <Link
            onClick={() => handleLink("/percentage")}
            to="/percentage"
            className={curPath === "/percentage" ? "active" : ""}
          >
            Percentage
          </Link>
        </li>
        <li>
          <Link
            onClick={() => handleLink("/book-openings")}
            to="/book-openings"
            className={curPath === "/book-openings" ? "active" : ""}
          >
            Book Openings
          </Link>
        </li>
        <li>
          <Link
            onClick={() => handleLink("/top-elo-players")}
            to="/top-elo-players"
            className={curPath === "/top-elo-players" ? "active" : ""}
          >
            World Ranking
          </Link>
        </li>
        <li>
          <Link
            onClick={() => handleLink("/play-chess")}
            to="/play-chess"
            className={curPath === "/play-chess" ? "active" : ""}
          >
            Random
          </Link>
        </li>
        <li>
          <Link
            onClick={() => handleLink("/two-player")}
            to="/two-player"
            className={curPath === "/two-player" ? "active" : ""}
          >
            Two Player
          </Link>
        </li>
        <li>
          <Link
            onClick={() => handleLink("/stock-fish")}
            to="/stock-fish"
            className={curPath === "/stock-fish" ? "active" : ""}
          >
            Stock Fish
          </Link>
        </li>
      </ul>
    </div>
  );
};

export default NavBar;
