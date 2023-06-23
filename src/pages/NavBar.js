import React from "react";
import { Link } from "react-router-dom";
import '../css/nav-bar.css';

const NavBar = () => {

    return (
        <div className="nav-bar">
            <ul>
                <li><Link to="/">Home</Link></li>
                <li><Link to="/percentage">Percentage</Link></li>
                <li><Link to="/book-openings">Book Openings</Link></li>
                <li><Link to="/top-elo-players">World Ranking</Link></li>
            </ul>
        </div>
    );
};

export default NavBar;