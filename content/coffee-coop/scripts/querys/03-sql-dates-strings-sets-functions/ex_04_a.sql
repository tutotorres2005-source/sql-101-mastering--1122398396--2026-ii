/*
Exercise 04
a
Top 10 closed certification periods with the longest duration for farms in municipality 54518
*/

SELECT
    T1.farm_name AS farm,
    T2.certification_name AS certification,
    T3.start_date AS start_date,
    T3.end_date AS end_date,
    (T3.end_date - T3.start_date) AS duration_days,
    AGE(T3.end_date, T3.start_date) AS duration
FROM farm.farms AS T1
INNER JOIN farm.farm_certifications AS T3
    ON T1.farm_id = T3.farm_id
INNER JOIN farm.certifications AS T2
    ON T3.certification_id = T2.certification_id
WHERE T1.municipality_code = '54518'
  AND T3.end_date IS NOT NULL
ORDER BY duration_days DESC
LIMIT 10;

/*
coffee_coop_db-# LIMIT 10;
     farm     | certification | start_date |  end_date  | duration_days | duration
--------------+---------------+------------+------------+---------------+----------
 El Recuerdo  | 4C            | 2022-10-08 | 2025-10-08 |          1096 | 3 years
 El Vergel    | Org├ínico      | 2019-08-31 | 2022-08-31 |          1096 | 3 years
 La Esperanza | 4C            | 2017-12-25 | 2020-12-25 |          1096 | 3 years
 La Esperanza | Fairtrade     | 2017-03-17 | 2020-03-17 |          1096 | 3 years
 La Esperanza | Fairtrade     | 2023-04-23 | 2026-04-23 |          1096 | 3 years
 Bellavista   | 4C            | 2015-08-16 | 2018-08-16 |          1096 | 3 years
 Bellavista   | 4C            | 2018-09-21 | 2021-09-21 |          1096 | 3 years
 Bellavista   | 4C            | 2021-11-12 | 2024-11-12 |          1096 | 3 years
 El Horizonte | 4C            | 2022-02-20 | 2025-02-20 |          1096 | 3 years
 El Vergel    | Org├ínico      | 2022-09-23 | 2025-09-23 |          1096 | 3 years
(10 filas)

/*