/*
Exercise 06
b
Descriptive sentence for each collection point in Norte de Santander
*/

SELECT
    CONCAT(T1.point_name, ' recibe cafe en ', T2.municipality_name) AS description
FROM buy.collection_points AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN geo.departments AS T3
    ON T2.department_code = T3.department_code
WHERE UPPER(T3.department_name) = UPPER('Norte de Santander')
ORDER BY T1.point_name ASC;

/*
                      description
--------------------------------------------------------
 Punto de Compra Bochalema 1 recibe cafe en Bochalema
 Punto de Compra Chin├ícota 1 recibe cafe en Chin├ícota
 Punto de Compra Convenci├│n 1 recibe cafe en Convenci├│n
 Punto de Compra El Carmen 1 recibe cafe en El Carmen
 Punto de Compra El Carmen 2 recibe cafe en El Carmen
 Punto de Compra El Zulia 1 recibe cafe en El Zulia
 Punto de Compra Herr├ín 1 recibe cafe en Herr├ín
 Punto de Compra Herr├ín 2 recibe cafe en Herr├ín
 Punto de Compra Oca├▒a 1 recibe cafe en Oca├▒a
 Punto de Compra Sardinata 1 recibe cafe en Sardinata
(10 filas)
/*