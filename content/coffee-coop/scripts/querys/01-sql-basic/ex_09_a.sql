-- Exercise 09 - a
-- Quality analyses on September 30, 2026 with cup score >= 85, ordered by cup score DESC

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score
FROM buy.quality_analyses AS T1
WHERE T1.analysis_id LIKE 'QAN-20260930-%'
  AND T1.cup_score >= 85
ORDER BY T1.cup_score DESC;

/*
 analysis | delivery | moisture_pct | yield_factor | cup_score
----------+----------+--------------+--------------+-----------
(0 filas)
/*