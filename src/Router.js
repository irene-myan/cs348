import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Percentage from "./pages/Percentage";
import BookOpenings from "./pages/BookOpenings";
import WorldRanking from "./pages/WorldRanking";
import "./css/main.css";
import NavBar from "./pages/NavBar";
import NextMove from "./pages/NextMove";

function Router() {
  return (
    <BrowserRouter>
      <div className="screen">
        <NavBar />
        <div className="page">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/percentage" element={<Percentage />} />
            <Route path="/book-openings" element={<BookOpenings />} />
            <Route path="/top-elo-players" element={<WorldRanking />} />
            <Route path="/next-move" element={<NextMove />} />
          </Routes>
        </div>
      </div>
    </BrowserRouter>
  );
}

export default Router;
