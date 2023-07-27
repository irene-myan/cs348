
SET @game_id = (SELECT gid FROM Games WHERE game="Nf3 Nc6 e4 e5 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 Nxe5 Nxe5 Rxe5 c6 d4 Bd6 Re1 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/8/5N2/PPPPPPPP/RNBQKB1R b KQkq - 1 1", "Nf3"),
(@game_id, 2, "w", "r1bqkbnr/pppppppp/2n5/8/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 2 2", "Nc6"),
(@game_id, 2, "b", "r1bqkbnr/pppppppp/2n5/8/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 0 2", "e4"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 0 3", "e5"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1nN3/8/1BP5/PP1P1PPP/RNBQR1K1 b - - 0 10", "Nxe5"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p7/1p1nn3/8/1BP5/PP1P1PPP/RNBQR1K1 w - - 0 11", "Nxe5"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p7/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 b - - 0 11", "Rxe5"),
(@game_id, 12, "w", "r1bq1rk1/4bppp/p1p5/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 w - - 0 12", "c6"),
(@game_id, 12, "b", "r1bq1rk1/4bppp/p1p5/1p1nR3/3P4/1BP5/PP3PPP/RNBQ2K1 b - - 0 12", "d4"),
(@game_id, 13, "w", "r1bq1rk1/5ppp/p1pb4/1p1nR3/3P4/1BP5/PP3PPP/RNBQ2K1 w - - 1 13", "Bd6"),
(@game_id, 13, "b", "r1bq1rk1/5ppp/p1pb4/1p1n4/3P4/1BP5/PP3PPP/RNBQR1K1 b - - 2 13", "Re1");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 d4 exd4 e5 Ne4 cxd4 Bb4 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/3PP3/1BP2N2/PP3PPP/RNBQR1K1 b - - 0 9", "d4"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1p4/3pP3/1BP2N2/PP3PPP/RNBQR1K1 w - - 0 10", "exd4"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1pP3/3p4/1BP2N2/PP3PPP/RNBQR1K1 b - - 0 10", "e5"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p1n5/1p1pP3/3pn3/1BP2N2/PP3PPP/RNBQR1K1 w - - 1 11", "Ne4"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p1n5/1p1pP3/3Pn3/1B3N2/PP3PPP/RNBQR1K1 b - - 0 11", "cxd4"),
(@game_id, 12, "w", "r1bq1rk1/2p2ppp/p1n5/1p1pP3/1b1Pn3/1B3N2/PP3PPP/RNBQR1K1 w - - 1 12", "Bb4");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 d4 exd4 e5 Ne4 Nxd4 Nxe5 Bf4 Bf6 f3 c5 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/3PP3/1BP2N2/PP3PPP/RNBQR1K1 b - - 0 9", "d4"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1p4/3pP3/1BP2N2/PP3PPP/RNBQR1K1 w - - 0 10", "exd4"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1pP3/3p4/1BP2N2/PP3PPP/RNBQR1K1 b - - 0 10", "e5"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p1n5/1p1pP3/3pn3/1BP2N2/PP3PPP/RNBQR1K1 w - - 1 11", "Ne4"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p1n5/1p1pP3/3Nn3/1BP5/PP3PPP/RNBQR1K1 b - - 0 11", "Nxd4"),
(@game_id, 12, "w", "r1bq1rk1/2p1bppp/p7/1p1pn3/3Nn3/1BP5/PP3PPP/RNBQR1K1 w - - 0 12", "Nxe5"),
(@game_id, 12, "b", "r1bq1rk1/2p1bppp/p7/1p1pn3/3NnB2/1BP5/PP3PPP/RN1QR1K1 b - - 1 12", "Bf4"),
(@game_id, 13, "w", "r1bq1rk1/2p2ppp/p4b2/1p1pn3/3NnB2/1BP5/PP3PPP/RN1QR1K1 w - - 2 13", "Bf6"),
(@game_id, 13, "b", "r1bq1rk1/2p2ppp/p4b2/1p1pn3/3NnB2/1BP2P2/PP4PP/RN1QR1K1 b - - 0 13", "f3"),
(@game_id, 14, "w", "r1bq1rk1/5ppp/p4b2/1pppn3/3NnB2/1BP2P2/PP4PP/RN1QR1K1 w - - 0 14", "c5");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 Nxe5 Nxe5 Rxe5 Nf6 h3 Bd6 Re1 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1nN3/8/1BP5/PP1P1PPP/RNBQR1K1 b - - 0 10", "Nxe5"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p7/1p1nn3/8/1BP5/PP1P1PPP/RNBQR1K1 w - - 0 11", "Nxe5"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p7/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 b - - 0 11", "Rxe5"),
(@game_id, 12, "w", "r1bq1rk1/2p1bppp/p4n2/1p2R3/8/1BP5/PP1P1PPP/RNBQ2K1 w - - 1 12", "Nf6"),
(@game_id, 12, "b", "r1bq1rk1/2p1bppp/p4n2/1p2R3/8/1BP4P/PP1P1PP1/RNBQ2K1 b - - 0 12", "h3"),
(@game_id, 13, "w", "r1bq1rk1/2p2ppp/p2b1n2/1p2R3/8/1BP4P/PP1P1PP1/RNBQ2K1 w - - 1 13", "Bd6"),
(@game_id, 13, "b", "r1bq1rk1/2p2ppp/p2b1n2/1p6/8/1BP4P/PP1P1PP1/RNBQR1K1 b - - 2 13", "Re1");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 Nxe5 Nxe5 Rxe5 c6 Re1 Bd6 g3 Qd7 d4 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1nN3/8/1BP5/PP1P1PPP/RNBQR1K1 b - - 0 10", "Nxe5"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p7/1p1nn3/8/1BP5/PP1P1PPP/RNBQR1K1 w - - 0 11", "Nxe5"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p7/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 b - - 0 11", "Rxe5"),
(@game_id, 12, "w", "r1bq1rk1/4bppp/p1p5/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 w - - 0 12", "c6"),
(@game_id, 12, "b", "r1bq1rk1/4bppp/p1p5/1p1n4/8/1BP5/PP1P1PPP/RNBQR1K1 b - - 1 12", "Re1"),
(@game_id, 13, "w", "r1bq1rk1/5ppp/p1pb4/1p1n4/8/1BP5/PP1P1PPP/RNBQR1K1 w - - 2 13", "Bd6"),
(@game_id, 13, "b", "r1bq1rk1/5ppp/p1pb4/1p1n4/8/1BP3P1/PP1P1P1P/RNBQR1K1 b - - 0 13", "g3"),
(@game_id, 14, "w", "r1b2rk1/3q1ppp/p1pb4/1p1n4/8/1BP3P1/PP1P1P1P/RNBQR1K1 w - - 1 14", "Qd7"),
(@game_id, 14, "b", "r1b2rk1/3q1ppp/p1pb4/1p1n4/3P4/1BP3P1/PP3P1P/RNBQR1K1 b - - 0 14", "d4");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 Nxe5 Nxe5 Rxe5 Bd6 Rxd5 1-0");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1nN3/8/1BP5/PP1P1PPP/RNBQR1K1 b - - 0 10", "Nxe5"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p7/1p1nn3/8/1BP5/PP1P1PPP/RNBQR1K1 w - - 0 11", "Nxe5"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p7/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 b - - 0 11", "Rxe5"),
(@game_id, 12, "w", "r1bq1rk1/2p2ppp/p2b4/1p1nR3/8/1BP5/PP1P1PPP/RNBQ2K1 w - - 1 12", "Bd6"),
(@game_id, 12, "b", "r1bq1rk1/2p2ppp/p2b4/1p1R4/8/1BP5/PP1P1PPP/RNBQ2K1 b - - 0 12", "Rxd5");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 d3 Bf6 Nbd2 g6 Ne4 Bg7 0-1");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BPP1N2/PP3PPP/RNBQR1K1 b - - 0 10", "d3"),
(@game_id, 11, "w", "r1bq1rk1/2p2ppp/p1n2b2/1p1np3/8/1BPP1N2/PP3PPP/RNBQR1K1 w - - 1 11", "Bf6"),
(@game_id, 11, "b", "r1bq1rk1/2p2ppp/p1n2b2/1p1np3/8/1BPP1N2/PP1N1PPP/R1BQR1K1 b - - 2 11", "Nbd2"),
(@game_id, 12, "w", "r1bq1rk1/2p2p1p/p1n2bp1/1p1np3/8/1BPP1N2/PP1N1PPP/R1BQR1K1 w - - 0 12", "g6"),
(@game_id, 12, "b", "r1bq1rk1/2p2p1p/p1n2bp1/1p1np3/4N3/1BPP1N2/PP3PPP/R1BQR1K1 b - - 1 12", "Ne4"),
(@game_id, 13, "w", "r1bq1rk1/2p2pbp/p1n3p1/1p1np3/4N3/1BPP1N2/PP3PPP/R1BQR1K1 w - - 2 13", "Bg7");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 d4 exd4 cxd4 Be6 Nc3 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1np3/3P4/1BP2N2/PP3PPP/RNBQR1K1 b - - 0 10", "d4"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p1n5/1p1n4/3p4/1BP2N2/PP3PPP/RNBQR1K1 w - - 0 11", "exd4"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p1n5/1p1n4/3P4/1B3N2/PP3PPP/RNBQR1K1 b - - 0 11", "cxd4"),
(@game_id, 12, "w", "r2q1rk1/2p1bppp/p1n1b3/1p1n4/3P4/1B3N2/PP3PPP/RNBQR1K1 w - - 1 12", "Be6"),
(@game_id, 12, "b", "r2q1rk1/2p1bppp/p1n1b3/1p1n4/3P4/1BN2N2/PP3PPP/R1BQR1K1 b - - 2 12", "Nc3");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O Be7 Re1 b5 Bb3 O-O c3 d5 exd5 Nxd5 d4 exd4 cxd4 Bb4 Bd2 Bg4 1/2-1/2");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6", "Be7"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6", "Re1"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7", "b5"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7", "Bb3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8", "c3"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n5/1p1np3/8/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "Nxd5"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1n5/1p1np3/3P4/1BP2N2/PP3PPP/RNBQR1K1 b - - 0 10", "d4"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p1n5/1p1n4/3p4/1BP2N2/PP3PPP/RNBQR1K1 w - - 0 11", "exd4"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p1n5/1p1n4/3P4/1B3N2/PP3PPP/RNBQR1K1 b - - 0 11", "cxd4"),
(@game_id, 12, "w", "r1bq1rk1/2p2ppp/p1n5/1p1n4/1b1P4/1B3N2/PP3PPP/RNBQR1K1 w - - 1 12", "Bb4"),
(@game_id, 12, "b", "r1bq1rk1/2p2ppp/p1n5/1p1n4/1b1P4/1B3N2/PP1B1PPP/RN1QR1K1 b - - 2 12", "Bd2"),
(@game_id, 13, "w", "r2q1rk1/2p2ppp/p1n5/1p1n4/1b1P2b1/1B3N2/PP1B1PPP/RN1QR1K1 w - - 3 13", "Bg4");
SET @game_id = (SELECT gid FROM Games WHERE game="e4 e5 Nf3 Nc6 Bb5 a6 Ba4 Nf6 O-O b5 Bb3 Be7 c3 O-O Re1 d5 exd5 e4 dxc6 exf3 Qxf3 Bg4 Qe3 Re8 Qg3 Bc5 Re5 Nh5 0-1");
INSERT IGNORE INTO Moves(gid, movenum, color, fen, move) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1", "e4"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", "e5"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2", "Nf3"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3", "Nc6"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3", "Bb5"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4", "a6"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4", "Ba4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5", "Nf6"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5", "O-O"),
(@game_id, 6, "w", "r1bqkb1r/2pp1ppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 0 6", "b5"),
(@game_id, 6, "b", "r1bqkb1r/2pp1ppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQ1RK1 b kq - 1 6", "Bb3"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQ1RK1 w kq - 2 7", "Be7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQ1RK1 b kq - 0 7", "c3"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQ1RK1 w - - 1 8", "O-O"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 2 8", "Re1"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1pp3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9", "d5"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1n2n2/1p1Pp3/8/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 9", "exd5"),
(@game_id, 10, "w", "r1bq1rk1/2p1bppp/p1n2n2/1p1P4/4p3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 10", "e4"),
(@game_id, 10, "b", "r1bq1rk1/2p1bppp/p1P2n2/1p6/4p3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 10", "dxc6"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/p1P2n2/1p6/8/1BP2p2/PP1P1PPP/RNBQR1K1 w - - 0 11", "exf3"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/p1P2n2/1p6/8/1BP2Q2/PP1P1PPP/RNB1R1K1 b - - 0 11", "Qxf3"),
(@game_id, 12, "w", "r2q1rk1/2p1bppp/p1P2n2/1p6/6b1/1BP2Q2/PP1P1PPP/RNB1R1K1 w - - 1 12", "Bg4"),
(@game_id, 12, "b", "r2q1rk1/2p1bppp/p1P2n2/1p6/6b1/1BP1Q3/PP1P1PPP/RNB1R1K1 b - - 2 12", "Qe3"),
(@game_id, 13, "w", "r2qr1k1/2p1bppp/p1P2n2/1p6/6b1/1BP1Q3/PP1P1PPP/RNB1R1K1 w - - 3 13", "Re8"),
(@game_id, 13, "b", "r2qr1k1/2p1bppp/p1P2n2/1p6/6b1/1BP3Q1/PP1P1PPP/RNB1R1K1 b - - 4 13", "Qg3"),
(@game_id, 14, "w", "r2qr1k1/2p2ppp/p1P2n2/1pb5/6b1/1BP3Q1/PP1P1PPP/RNB1R1K1 w - - 5 14", "Bc5"),
(@game_id, 14, "b", "r2qr1k1/2p2ppp/p1P2n2/1pb1R3/6b1/1BP3Q1/PP1P1PPP/RNB3K1 b - - 6 14", "Re5"),
(@game_id, 15, "w", "r2qr1k1/2p2ppp/p1P5/1pb1R2n/6b1/1BP3Q1/PP1P1PPP/RNB3K1 w - - 7 15", "Nh5");