/*
Exercise 08
b
Municipalities in Norte de Santander that have farms but do not have collection points
*/

SELECT
    T4.municipality_code AS municipality_code,
    T5.municipality_name AS municipality
FROM farm.farms AS T4
INNER JOIN geo.municipalities AS T5
    ON T4.municipality_code = T5.municipality_code
INNER JOIN geo.departments AS T6
    ON T5.department_code = T6.department_code
WHERE UPPER(T6.department_name) = UPPER('Norte de Santander')

EXCEPT

SELECT
    T1.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM buy.collection_points AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN geo.departments AS T3
    ON T2.department_code = T3.department_code
WHERE UPPER(T3.department_name) = UPPER('Norte de Santander')

ORDER BY municipality ASC;

/*
 municipality_code |   municipality
-------------------+-------------------
 54003             | ├übrego
 54051             | Arboledas
 54109             | Bucarasica
 54128             | C├íchira
 54125             | C├ícota
 54174             | Chitag├í
 54001             | C├║cuta
 54223             | Cucutilla
 54239             | Durania
 54250             | El Tarra
 54313             | Gramalote
 54344             | Hacar├¡
 54385             | La Esperanza
 54398             | La Playa
 54377             | Labateca
 54405             | Los Patios
 54418             | Lourdes
 54480             | Mutiscua
 54518             | Pamplona
 54520             | Pamplonita
 54553             | Puerto Santander
 54599             | Ragonvalia
 54660             | Salazar
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
 54743             | Silos
 54800             | Teorama
 54810             | Tib├║
 54820             | Toledo
 54871             | Villa Caro
 54874             | Villa Del Rosario
(32 filas)


/*