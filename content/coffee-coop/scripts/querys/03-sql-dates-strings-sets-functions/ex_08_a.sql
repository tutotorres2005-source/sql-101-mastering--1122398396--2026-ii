/*
Exercise 08
a
Municipalities in Norte de Santander that have both farms and collection points
*/

SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
WHERE UPPER(T2.department_name) = UPPER('Norte de Santander')

INTERSECT

SELECT
    T3.municipality_code AS municipality_code,
    T4.municipality_name AS municipality
FROM farm.farms AS T3
INNER JOIN geo.municipalities AS T4
    ON T3.municipality_code = T4.municipality_code

INTERSECT

SELECT
    T5.municipality_code AS municipality_code,
    T6.municipality_name AS municipality
FROM buy.collection_points AS T5
INNER JOIN geo.municipalities AS T6
    ON T5.municipality_code = T6.municipality_code

ORDER BY municipality ASC;

/*
municipality_code | municipality
-------------------+--------------
 54099             | Bochalema
 54172             | Chin├ícota
 54206             | Convenci├│n
 54245             | El Carmen
 54261             | El Zulia
 54347             | Herr├ín
 54498             | Oca├▒a
 54720             | Sardinata
(8 filas)

/*