
-- Exercise 09 - c
-- Farms with at least 3 analyses and an average cup score >= 84


SELECT
    T1.farm_name AS farm,
    COUNT(T3.analysis_id) AS analyses_count,
    ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.quality_analyses AS T3
    ON T2.delivery_id = T3.delivery_id
GROUP BY T1.farm_name
HAVING COUNT(T3.analysis_id) >= 3
   AND AVG(T3.cup_score) >= 84
ORDER BY avg_cup_score DESC;

/*
   farm | analyses_count | avg_cup_score
------+----------------+---------------
(0 filas)
 
*/