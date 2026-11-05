
-- Exercise 08 - a
-- Number of municipalities per department, ordered descending by municipality count

SELECT
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments AS T1
LEFT JOIN geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY T1.department_name
ORDER BY municipalities_count DESC;

/*
                           department                        | municipalities_count
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 Boyac├í                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 Nari├▒o                                                   |                   64
 Tolima                                                   |                   47
 Bol├¡var                                                  |                   46
 Valle Del Cauca                                          |                   42
 Cauca                                                    |                   42
 Norte De Santander                                       |                   40
 Huila                                                    |                   37
 C├│rdoba                                                  |                   30
 Choc├│                                                    |                   30
 Magdalena                                                |                   30
 Meta                                                     |                   29
 Caldas                                                   |                   27
 Sucre                                                    |                   26
 Cesar                                                    |                   25
 Atl├íntico                                                |                   23
 Casanare                                                 |                   19
 Caquet├í                                                  |                   16
 La Guajira                                               |                   15
 Risaralda                                                |                   14
 Putumayo                                                 |                   13
 Quindio                                                  |                   12
 Arauca                                                   |                    7
 Guaviare                                                 |                    4
 Vichada                                                  |                    4
 Vaup├®s                                                   |                    3
 Archipi├®lago De San Andr├®s, Providencia Y Santa Catalina |                    2
 Amazonas                                                 |                    2
 Guain├¡a                                                  |                    1
 Bogot├í, D.C.                                             |                    1
(33 filas)
*/