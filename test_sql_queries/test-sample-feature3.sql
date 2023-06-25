SELECT o.name, COUNT(*) as frequency_played
FROM Games g
JOIN Openings o ON g.eco = o.eco
GROUP BY o.eco, o.name;