import React, { useState, useEffect, useMemo } from "react";
import Chess from "chess.js";
import "../css/chess-page.css";
import { Chessboard } from "react-chessboard";
import { ReactComponent as WPawn } from "../svg/WPawn.svg";
import { ReactComponent as WKnight } from "../svg/WKnight.svg";
import { ReactComponent as WBishop } from "../svg/WBishop.svg";
import { ReactComponent as WRook } from "../svg/WRook.svg";
import { ReactComponent as WQueen } from "../svg/WQueen.svg";
import { ReactComponent as WKing } from "../svg/WKing.svg";
import { ReactComponent as BPawn } from "../svg/BPawn.svg";
import { ReactComponent as BKnight } from "../svg/BKnight.svg";
import { ReactComponent as BBishop } from "../svg/BBishop.svg";
import { ReactComponent as BRook } from "../svg/BRook.svg";
import { ReactComponent as BQueen } from "../svg/BQueen.svg";
import { ReactComponent as BKing } from "../svg/BKing.svg";
import { GetStockFishEval } from "../apiFunctions.js";

const StockFish = () => {
  const [game, setGame] = useState(new Chess());
  const [squares, setSquares] = useState({});
  const [fen, setFen] = useState(game.fen());
  const [stockEval, setStockEval] = useState({
    best_move: null,
    score_type: "",
    score_value: 0,
  });

  if (fen !== game.fen()) {
    setFen(game.fen());
  }

  const pieces = [
    [
      { id: "wP", type: "p", color: "w" },
      { id: "wN", type: "n", color: "w" },
      { id: "wB", type: "b", color: "w" },
      { id: "wR", type: "r", color: "w" },
      { id: "wQ", type: "q", color: "w" },
      { id: "wK", type: "k", color: "w" },
    ],
    [
      { id: "bP", type: "p", color: "b" },
      { id: "bN", type: "n", color: "b" },
      { id: "bB", type: "b", color: "b" },
      { id: "bR", type: "r", color: "b" },
      { id: "bQ", type: "q", color: "b" },
      { id: "bK", type: "k", color: "b" },
    ],
  ];

  const getSVG = (id) => {
    switch (id) {
      case "wP":
        return <WPawn />;
      case "wN":
        return <WKnight />;
      case "wB":
        return <WBishop />;
      case "wR":
        return <WRook />;
      case "wQ":
        return <WQueen />;
      case "wK":
        return <WKing />;
      case "bP":
        return <BPawn />;
      case "bN":
        return <BKnight />;
      case "bB":
        return <BBishop />;
      case "bR":
        return <BRook />;
      case "bQ":
        return <BQueen />;
      case "bK":
        return <BKing />;
    }
  };

  const renderAddPieceButtons = (pieces) => {
    return (
      <div className="buttons-layout">
        {pieces.map((p) => {
          return (
            <button
              className="add-button"
              onClick={() => {
                console.log(game.board());
                game.put(
                  { type: p.type, color: p.color },
                  Object.keys(squares)[0]
                );
                setSquares({});
              }}
            >
              {getSVG(p.id)}
            </button>
          );
        })}
      </div>
    );
  };

  const onSquareClick = (square) => {
    const colour = "rgba(0, 0, 0, 0.4)";
    setSquares({
      [square]:
        squares[square] && squares[square].backgroundColor === colour
          ? undefined
          : { backgroundColor: colour },
    });
  };

  const onPieceDrop = (from, to, id) => {
    const gameCopy = { ...game };

    gameCopy.move({
      from: from,
      to: to,
    });

    const piece = [...id];

    gameCopy.remove(to);
    gameCopy.remove(from);
    gameCopy.put(
      {
        type: piece[1].toLowerCase(),
        color: piece[0],
      },
      to
    );
    console.log(to);

    setGame(gameCopy);

    return true;
  };

  return (
    <div className="container">
      <div className="eval-bar">
        <div> Best Move: {stockEval.best_move} </div>
        <div> Score Type: {stockEval.score_type} </div>
        <div> Score Value: {stockEval.score_value / 100} </div>
      </div>
      <div className="stockfish-board">
        {renderAddPieceButtons(pieces[0])}
        <Chessboard
          id="CustomSquare"
          animationDuration={200}
          position={game.fen()}
          boardWidth="400"
          customBoardStyle={{
            borderRadius: "4px",
            boxShadow: "0 2px 10px rgba(0, 0, 0, 0.5)",
          }}
          customDarkSquareStyle={{ backgroundColor: "#005b96" }}
          customLightSquareStyle={{ backgroundColor: "#6497b1" }}
          onSquareClick={onSquareClick}
          customSquareStyles={{ ...squares }}
          onPieceDrop={onPieceDrop}
        />
        {renderAddPieceButtons(pieces[1])}
      </div>
      <button
        onClick={() => {
          GetStockFishEval(fen, setStockEval);
        }}
      >
        Evaluate
      </button>
    </div>
  );
};

export default StockFish;
