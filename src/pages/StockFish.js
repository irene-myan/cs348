import React, { useState, useEffect } from "react";
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
  const [stockEval, setStockEval] = useState(null);

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
                game.put(
                  { type: p.type, color: p.color },
                  Object.keys(squares)[0]
                );
                console.log("Clicked on:", p.id);
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

  function onSquareClick(square) {
    const colour = "rgba(0, 0, 0, 0.4)";
    setSquares({
      [square]:
        squares[square] && squares[square].backgroundColor === colour
          ? undefined
          : { backgroundColor: colour },
    });
  }

  useEffect(() => {
    GetStockFishEval(fen, setStockEval);
  }, [fen]);

  return (
    <div id="main-game" style={{ display: "flex", flexDirection: "row" }}>
      {renderAddPieceButtons(pieces[0])}
      <Chessboard
        id="CustomSquare"
        animationDuration={200}
        position={game.fen()}
        boardWidth="400"
        onSquareClick={onSquareClick}
        customSquareStyles={{ ...squares }}
      />
      {renderAddPieceButtons(pieces[1])}
    </div>
  );
};

export default StockFish;
