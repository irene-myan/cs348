SET @game_id = (SELECT gid FROM Games WHERE event="Open" AND site="Lido Estensi ITA" AND date="2002.06.16" AND wp_elo=2446 AND bp_elo=2523);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP1BN1P/PP3PP1/RN1QR1K1 b - - 2 11"),
(@game_id, 12, "w", "r1bq1rk1/2pn1ppp/p2p1b2/np2p3/3PP3/1BP1BN1P/PP3PP1/RN1QR1K1 w - - 3 12");SET @game_id = (SELECT gid FROM Games WHERE event="Polish Extraleague" AND site="Lubniewice POL" AND date="2003.09.02" AND wp_elo=2311 AND bp_elo=2408);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/P2PP3/1BP2N1P/1P3PP1/RNBQR1K1 b - - 0 11"),
(@game_id, 12, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/P2PP3/1BP2N1P/1P3PP1/RNBQR1K1 w - - 1 12"),
(@game_id, 12, "b", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/P2PP3/NBP2N1P/1P3PP1/R1BQR1K1 b - - 2 12"),
(@game_id, 13, "w", "r2q1rk1/1bpn1ppp/p1np1b2/4p3/Pp1PP3/NBP2N1P/1P3PP1/R1BQR1K1 w - - 0 13");SET @game_id = (SELECT gid FROM Games WHERE event="12th Donau Open" AND site="Aschach GER" AND date="2003.12.27" AND wp_elo=2233 AND bp_elo=2418);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BPP1N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "1rbq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BPP1N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "1rbq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BPP1N1P/PP1N1PP1/R1BQR1K1 b - - 2 11"),
(@game_id, 12, "w", "1rbq1rk1/2p1bppp/p1np4/1pn1p3/4P3/1BPP1N1P/PP1N1PP1/R1BQR1K1 w - - 3 12"),
(@game_id, 12, "b", "1rbq1rk1/2p1bppp/p1np4/1pn1p3/4P3/2PP1N1P/PPBN1PP1/R1BQR1K1 b - - 4 12");SET @game_id = (SELECT gid FROM Games WHERE event="ch-NOR" AND site="Moss NOR" AND date="2006.07.15" AND wp_elo=2303 AND bp_elo=2357);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/P2PP3/1BP2N1P/1P3PP1/RNBQR1K1 b - - 0 11"),
(@game_id, 12, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/P2PP3/1BP2N1P/1P3PP1/RNBQR1K1 w - - 1 12"),
(@game_id, 12, "b", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/P2PP3/NBP2N1P/1P3PP1/R1BQR1K1 b - - 2 12"),
(@game_id, 13, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p6/P2pP3/NBP2N1P/1P3PP1/R1BQR1K1 w - - 0 13"),
(@game_id, 13, "b", "r2q1rk1/1bpn1ppp/p1np1b2/1p6/P2PP3/NB3N1P/1P3PP1/R1BQR1K1 b - - 0 13"),
(@game_id, 14, "w", "r2q1rk1/1bpn1ppp/p2p1b2/np6/P2PP3/NB3N1P/1P3PP1/R1BQR1K1 w - - 1 14"),
(@game_id, 14, "b", "r2q1rk1/1bpn1ppp/p2p1b2/np6/P2PP3/N4N1P/BP3PP1/R1BQR1K1 b - - 2 14"),
(@game_id, 15, "w", "r2q1rk1/1bpn1ppp/p2p1b2/n7/Pp1PP3/N4N1P/BP3PP1/R1BQR1K1 w - - 0 15"),
(@game_id, 15, "b", "r2q1rk1/1bpn1ppp/p2p1b2/n7/PpNPP3/5N1P/BP3PP1/R1BQR1K1 b - - 1 15");SET @game_id = (SELECT gid FROM Games WHERE event="XIII Open" AND site="Cutro ITA" AND date="2007.04.26" AND wp_elo=2460 AND bp_elo=2529);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP1BN1P/PP3PP1/RN1QR1K1 b - - 2 11"),
(@game_id, 12, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/3PP3/1BP1BN1P/PP3PP1/RN1QR1K1 w - - 3 12"),
(@game_id, 12, "b", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/3PP3/1BP1BN1P/PP1N1PP1/R2QR1K1 b - - 4 12"),
(@game_id, 13, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p6/3pP3/1BP1BN1P/PP1N1PP1/R2QR1K1 w - - 0 13"),
(@game_id, 13, "b", "r2q1rk1/1bpn1ppp/p1np1b2/1p6/3PP3/1B2BN1P/PP1N1PP1/R2QR1K1 b - - 0 13"),
(@game_id, 14, "w", "r2q1rk1/1bpn1ppp/p2p1b2/1p6/1n1PP3/1B2BN1P/PP1N1PP1/R2QR1K1 w - - 1 14");SET @game_id = (SELECT gid FROM Games WHERE event="Open" AND site="Prague CZE" AND date="2010.01.11" AND wp_elo=2571 AND bp_elo=2465);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/P2PP3/1BP2N1P/1P3PP1/RNBQR1K1 b - - 0 11"),
(@game_id, 12, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p2p3/P2PP3/1BP2N1P/1P3PP1/RNBQR1K1 w - - 1 12"),
(@game_id, 12, "b", "r2q1rk1/1bpn1ppp/p1np1b2/Pp2p3/3PP3/1BP2N1P/1P3PP1/RNBQR1K1 b - - 0 12"),
(@game_id, 13, "w", "2rq1rk1/1bpn1ppp/p1np1b2/Pp2p3/3PP3/1BP2N1P/1P3PP1/RNBQR1K1 w - - 1 13"),
(@game_id, 13, "b", "2rq1rk1/1bpn1ppp/p1np1b2/Pp2p3/3PP3/1BP1BN1P/1P3PP1/RN1QR1K1 b - - 2 13"),
(@game_id, 14, "w", "2rq1rk1/1bpnnppp/p2p1b2/Pp2p3/3PP3/1BP1BN1P/1P3PP1/RN1QR1K1 w - - 3 14");SET @game_id = (SELECT gid FROM Games WHERE event="TCh-Eur Seniors" AND site="Dresden GER" AND date="2010.02.17" AND wp_elo=2404 AND bp_elo=2554);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w - - 2 8"),
(@game_id, 8, "b", "r1bq1rk1/2ppbppp/p1n2n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b - - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 0 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p1Bp3/3PP3/2P2N1P/PP3PP1/RNBQR1K1 b - - 2 11"),
(@game_id, 12, "w", "r2q1rk1/1bpn1ppp/p1np1b2/1p1Bp3/3PP3/2P2N1P/PP3PP1/RNBQR1K1 w - - 3 12"),
(@game_id, 12, "b", "r2q1rk1/1bpn1ppp/p1np1b2/1p1BP3/4P3/2P2N1P/PP3PP1/RNBQR1K1 b - - 0 12");SET @game_id = (SELECT gid FROM Games WHERE event="Caissa GM Sept 2011" AND site="Kecskemet HUN" AND date="2011.09.23" AND wp_elo=2492 AND bp_elo=2476);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqkb1r/1ppp1ppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2p1bppp/pnnp4/1p2p3/3PP3/1BP2N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2p1bppp/pnnp4/1p2p3/3PP3/1BP1BN1P/PP3PP1/RN1QR1K1 b - - 2 11"),
(@game_id, 12, "w", "r1bq1rk1/2p1bppp/pnnp4/1p6/3pP3/1BP1BN1P/PP3PP1/RN1QR1K1 w - - 0 12"),
(@game_id, 12, "b", "r1bq1rk1/2p1bppp/pnnp4/1p6/3PP3/1B2BN1P/PP3PP1/RN1QR1K1 b - - 0 12"),
(@game_id, 13, "w", "r1bq1rk1/2p1bppp/pn1p4/np6/3PP3/1B2BN1P/PP3PP1/RN1QR1K1 w - - 1 13"),
(@game_id, 13, "b", "r1bq1rk1/2p1bppp/pn1p4/np6/3PP3/4BN1P/PPB2PP1/RN1QR1K1 b - - 2 13"),
(@game_id, 14, "w", "r1bq1rk1/4bppp/pn1p4/npp5/3PP3/4BN1P/PPB2PP1/RN1QR1K1 w - - 0 14"),
(@game_id, 14, "b", "r1bq1rk1/4bppp/pn1p4/npp5/3PP3/4BN1P/PPBN1PP1/R2QR1K1 b - - 1 14"),
(@game_id, 15, "w", "r1bq1rk1/4bppp/pnnp4/1pp5/3PP3/4BN1P/PPBN1PP1/R2QR1K1 w - - 2 15"),
(@game_id, 15, "b", "r1bq1rk1/4bppp/pnnp4/1pp5/3PP3/4BN1P/PPBN1PP1/2RQR1K1 b - - 3 15");SET @game_id = (SELECT gid FROM Games WHERE event="Third Sat Mix 201 2021" AND site="Novi Sad SRB" AND date="2021.04.19" AND wp_elo=2477 AND bp_elo=2359);INSERT INTO Moves(gid, movenum, color, fen) VALUES 
(@game_id, 1, "b", "rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR b KQkq - 0 1"),
(@game_id, 2, "w", "rnbqkbnr/pppp1ppp/8/4p3/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2"),
(@game_id, 2, "b", "rnbqkbnr/pppp1ppp/8/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R b KQkq - 1 2"),
(@game_id, 3, "w", "r1bqkbnr/pppp1ppp/2n5/4p3/4P3/5N2/PPPP1PPP/RNBQKB1R w KQkq - 2 3"),
(@game_id, 3, "b", "r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 3 3"),
(@game_id, 4, "w", "r1bqkbnr/1ppp1ppp/p1n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 0 4"),
(@game_id, 4, "b", "r1bqkbnr/1ppp1ppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R b KQkq - 1 4"),
(@game_id, 5, "w", "r1bqk1nr/1pppbppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQK2R w KQkq - 2 5"),
(@game_id, 5, "b", "r1bqk1nr/1pppbppp/p1n5/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 b kq - 3 5"),
(@game_id, 6, "w", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQ1RK1 w kq - 4 6"),
(@game_id, 6, "b", "r1bqk2r/1pppbppp/p1n2n2/4p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 b kq - 5 6"),
(@game_id, 7, "w", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/B3P3/5N2/PPPP1PPP/RNBQR1K1 w kq - 0 7"),
(@game_id, 7, "b", "r1bqk2r/2ppbppp/p1n2n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 b kq - 1 7"),
(@game_id, 8, "w", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1B3N2/PPPP1PPP/RNBQR1K1 w kq - 0 8"),
(@game_id, 8, "b", "r1bqk2r/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 b kq - 0 8"),
(@game_id, 9, "w", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N2/PP1P1PPP/RNBQR1K1 w - - 1 9"),
(@game_id, 9, "b", "r1bq1rk1/2p1bppp/p1np1n2/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 b - - 0 9"),
(@game_id, 10, "w", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BP2N1P/PP1P1PP1/RNBQR1K1 w - - 1 10"),
(@game_id, 10, "b", "r1bq1rk1/2pnbppp/p1np4/1p2p3/4P3/1BPP1N1P/PP3PP1/RNBQR1K1 b - - 0 10"),
(@game_id, 11, "w", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/4P3/1BPP1N1P/PP3PP1/RNBQR1K1 w - - 1 11"),
(@game_id, 11, "b", "r1bq1rk1/2pn1ppp/p1np1b2/1p2p3/4P3/1BPP1N1P/PP1N1PP1/R1BQR1K1 b - - 2 11"),
(@game_id, 12, "w", "r1bq1rk1/2p2ppp/p1np1b2/1pn1p3/4P3/1BPP1N1P/PP1N1PP1/R1BQR1K1 w - - 3 12"),
(@game_id, 12, "b", "r1bq1rk1/2p2ppp/p1np1b2/1pn1p3/4P3/2PP1N1P/PPBN1PP1/R1BQR1K1 b - - 4 12"),
(@game_id, 13, "w", "r1bq1rk1/2p2ppp/p1npnb2/1p2p3/4P3/2PP1N1P/PPBN1PP1/R1BQR1K1 w - - 5 13"),
(@game_id, 13, "b", "r1bq1rk1/2p2ppp/p1npnb2/1p2p3/4P3/2PP1N1P/PPB2PP1/R1BQRNK1 b - - 6 13"),
(@game_id, 14, "w", "r1bq1rk1/2p1nppp/p2pnb2/1p2p3/4P3/2PP1N1P/PPB2PP1/R1BQRNK1 w - - 7 14"),
(@game_id, 14, "b", "r1bq1rk1/2p1nppp/p2pnb2/1p2p3/3PP3/2P2N1P/PPB2PP1/R1BQRNK1 b - - 0 14"),
(@game_id, 15, "w", "r1bq1rk1/2p2ppp/p2pnbn1/1p2p3/3PP3/2P2N1P/PPB2PP1/R1BQRNK1 w - - 1 15");