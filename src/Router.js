
import React from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import PercentagePage from './pages/PercentagePage';
import BookOpeningsPage from './pages/BookOpenings';
import TopEloPlayersPage from './pages/WorldRanking';
import ChessApp from './pages/ChessApp';

function Router() {
  return (
    <BrowserRouter>
        <ChessApp />
        <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/percentage" element={<PercentagePage />} />
            <Route path="/book-openings" element={<BookOpeningsPage />} />
            <Route path="/top-elo-players" element={<TopEloPlayersPage />} />
        </Routes>
    </BrowserRouter>
  );
};

export default Router;