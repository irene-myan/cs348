
import React, { useEffect, useState } from "react";
import Chess from "chess.js";
import "../css/chess-page.css";
import { Chessboard } from "react-chessboard";

const PlayChess = () => {
  const [game, setGame] = useState(new Chess());

  function makeAMove(move) {
    const gameCopy = { ...game };
    const result = gameCopy.move(move);
    setGame(gameCopy);
    return result; // null if the move was illegal, the move object if the move was legal
  }

  function makeRandomMove() {
    const possibleMoves = game.moves();
    if (game.game_over() || game.in_draw() || possibleMoves.length === 0)
      return; // exit if the game is over
    const randomIndex = Math.floor(Math.random() * possibleMoves.length);
    makeAMove(possibleMoves[randomIndex]);
  }

  function onDrop(sourceSquare, targetSquare) {
    const move = makeAMove({
      from: sourceSquare,
      to: targetSquare,
      promotion: "q", // always promote to a queen for example simplicity
    });

    // illegal move
    if (move === null) return false;
    setTimeout(makeRandomMove, 200);
    return true;
  }

  return (
    <div id="main-game">
      <h1>Player VS Random</h1>
      <Chessboard 
      boardWidth="400" 
      customBoardStyle={{
        borderRadius: "4px",
        boxShadow: "0 2px 10px rgba(0, 0, 0, 0.5)",
      }}
      customDarkSquareStyle={{ backgroundColor: "#005b96" }}
      customLightSquareStyle={{ backgroundColor: "#6497b1" }}
      position={game.fen()}  
      onPieceDrop={onDrop} />
    </div>
  );
}


export default PlayChess;