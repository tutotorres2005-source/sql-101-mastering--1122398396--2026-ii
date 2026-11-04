
-- Exercise 04 -a
-- Departments and municipalities for Norte de Santander (54) using NATURAL JOIN


SELECT
    department_code,
    department_name,
    municipality_code,
    municipality_name
FROM geo.departments
NATURAL JOIN geo.municipalities
WHERE department_code = '54'
ORDER BY municipality_name ASC;

/*

offee_coop_db-# ORDER BY municipality_name ASC;
 department_code |  department_name   | municipality_code | municipality_name
-----------------+--------------------+-------------------+-------------------
 54              | Norte De Santander | 54003             | ├übrego
 54              | Norte De Santander | 54051             | Arboledas
 54              | Norte De Santander | 54099             | Bochalema
 54              | Norte De Santander | 54109             | Bucarasica
 54              | Norte De Santander | 54128             | C├íchira
 54              | Norte De Santander | 54125             | C├ícota
 54              | Norte De Santander | 54172             | Chin├ícota
 54              | Norte De Santander | 54174             | Chitag├í
 54              | Norte De Santander | 54206             | Convenci├│n
 54              | Norte De Santander | 54001             | C├║cuta
 54              | Norte De Santander | 54223             | Cucutilla
 54              | Norte De Santander | 54239             | Durania
 54              | Norte De Santander | 54245             | El Carmen
 54              | Norte De Santander | 54250             | El Tarra
 54              | Norte De Santander | 54261             | El Zulia
 54              | Norte De Santander | 54313             | Gramalote
 54              | Norte De Santander | 54344             | Hacar├¡
 54              | Norte De Santander | 54347             | Herr├ín
 54              | Norte De Santander | 54385             | La Esperanza
 54              | Norte De Santander | 54398             | La Playa
 54              | Norte De Santander | 54377             | Labateca
 54              | Norte De Santander | 54405             | Los Patios
 54              | Norte De Santander | 54418             | Lourdes
 54              | Norte De Santander | 54480             | Mutiscua
 54              | Norte De Santander | 54498             | Oca├▒a
 54              | Norte De Santander | 54518             | Pamplona
 54              | Norte De Santander | 54520             | Pamplonita
 54              | Norte De Santander | 54553             | Puerto Santander
 54              | Norte De Santander | 54599             | Ragonvalia
 54              | Norte De Santander | 54660             | Salazar
 54              | Norte De Santander | 54670             | San Calixto
 54              | Norte De Santander | 54673             | San Cayetano
 54              | Norte De Santander | 54680             | Santiago
 54              | Norte De Santander | 54720             | Sardinata
 54              | Norte De Santander | 54743             | Silos
 54              | Norte De Santander | 54800             | Teorama
 54              | Norte De Santander | 54810             | Tib├║
 54              | Norte De Santander | 54820             | Toledo
 54              | Norte De Santander | 54871             | Villa Caro
 54              | Norte De Santander | 54874             | Villa Del Rosario
(40 filas)

*/