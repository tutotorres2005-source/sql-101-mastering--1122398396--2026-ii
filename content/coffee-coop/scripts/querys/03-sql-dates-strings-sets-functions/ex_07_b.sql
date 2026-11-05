/*
Exercise 07
b
Municipality codes with farmers vs municipalities with farms using UNION and UNION ALL
*/

-- Query 1: UNION (removes duplicates)
/*
Exercise 07
b
Municipality codes with farmers vs municipalities with farms using UNION and UNION ALL (with LIMIT for readability)
*/

-- Query 1: UNION (removes duplicates) with LIMIT
SELECT
    T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN geo.departments AS T3
    ON T2.department_code = T3.department_code
WHERE UPPER(T3.department_name) = UPPER('Norte de Santander')

UNION

SELECT
    T4.municipality_code AS municipality_code
FROM farm.farms AS T4
INNER JOIN geo.municipalities AS T5
    ON T4.municipality_code = T5.municipality_code
INNER JOIN geo.departments AS T6
    ON T5.department_code = T6.department_code
WHERE UPPER(T6.department_name) = UPPER('Norte de Santander')

ORDER BY municipality_code ASC
LIMIT 100;

-- Query 2: UNION ALL (preserves duplicates) with LIMIT
SELECT
    T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN geo.departments AS T3
    ON T2.department_code = T3.department_code
WHERE UPPER(T3.department_name) = UPPER('Norte de Santander')

UNION ALL

SELECT
    T4.municipality_code AS municipality_code
FROM farm.farms AS T4
INNER JOIN geo.municipalities AS T5
    ON T4.municipality_code = T5.municipality_code
INNER JOIN geo.departments AS T6
    ON T5.department_code = T6.department_code
WHERE UPPER(T6.department_name) = UPPER('Norte de Santander')

ORDER BY municipality_code ASC
LIMIT 100;
/*
 municipality_code
-------------------
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
 54001
(100 filas)

/*