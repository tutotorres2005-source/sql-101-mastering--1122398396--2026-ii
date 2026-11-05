
-- Exercise 07 -b
-- Summary of quality analyses on September 30, 2026: min, max, avg cup score, min and max moisture


SELECT
    MIN(cup_score) AS min_cup_score,
    MAX(cup_score) AS max_cup_score,
    ROUND(AVG(cup_score), 2) AS avg_cup_score,
    MIN(moisture_pct) AS min_moisture_pct,
    MAX(moisture_pct) AS max_moisture_pct
FROM buy.quality_analyses
WHERE delivery_id LIKE 'DLV-20260930-%';

/*
  min_cup_score | max_cup_score | avg_cup_score | min_moisture_pct | max_moisture_pct
---------------+---------------+---------------+------------------+------------------
         77.17 |         87.28 |         82.91 |             8.39 |            17.68
(1 fila)
*/