-- Exercise 09 - c
-- Non-accepted analyses on September 30, 2026 with registered observations, ordered by defects percentage DESC

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.is_accepted AS is_accepted,
    T1.defects_pct AS defects_pct,
    T1.observations AS observations
FROM buy.quality_analyses AS T1
WHERE T1.analysis_id LIKE 'QAN-20260930-%'
  AND T1.is_accepted = FALSE
  AND T1.observations IS NOT NULL
ORDER BY T1.defects_pct DESC;

/*
analysis | delivery | is_accepted | defects_pct | observations
----------+----------+-------------+-------------+--------------
(0 filas)
/*