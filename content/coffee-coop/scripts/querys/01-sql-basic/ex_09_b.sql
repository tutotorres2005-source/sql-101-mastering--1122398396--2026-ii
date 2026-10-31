-- Exercise 09 - b
-- Quality analyses on September 30, 2026 with moisture outside 10%-12% range (NOT BETWEEN)

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analysis_id LIKE 'QAN-20260930-%'
  AND T1.moisture_pct NOT BETWEEN 10 AND 12
ORDER BY T1.moisture_pct ASC;

/*
 analysis | delivery | moisture_pct | analyst_name | observations
----------+----------+--------------+--------------+--------------
(0 filas)
/*