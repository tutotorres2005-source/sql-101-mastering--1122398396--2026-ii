
-- Exercise 03 -b
-- Collection points with no deliveries on September 30, 2026

SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%'
WHERE T1.delivery_id IS NULL
ORDER BY T2.point_name ASC;

/*

           collection_point           | delivery | gross_weight_kg
--------------------------------------+----------+-----------------
 Punto de Compra Aipe 1               |          |
 Punto de Compra Aipe 2               |          |
 Punto de Compra Andaluc├¡a 1          |          |
 Punto de Compra Ap├¡a 1               |          |
 Punto de Compra Armero Guayabal 1    |          |
 Punto de Compra Belmira 1            |          |
 Punto de Compra Caldono 1            |          |
 Punto de Compra Caloto 1             |          |
 Punto de Compra Carmen De Apical├í 2  |          |
 Punto de Compra Chin├ícota 1          |          |
 Punto de Compra Circasia 1           |          |
 Punto de Compra El Tambo 2           |          |
 Punto de Compra Guatap├® 1            |          |
 Punto de Compra Gu├ítica 2            |          |
 Punto de Compra Herr├ín 1             |          |
 Punto de Compra Hobo 1               |          |
 Punto de Compra Icononzo 1           |          |
 Punto de Compra La Argentina 1       |          |
 Punto de Compra La Gloria 1          |          |
 Punto de Compra Marulanda 1          |          |
 Punto de Compra Marulanda 2          |          |
 Punto de Compra Murillo 1            |          |
 Punto de Compra Pailitas 1           |          |
 Punto de Compra Pelaya 2             |          |
 Punto de Compra Policarpa 1          |          |
 Punto de Compra Quinch├¡a 1           |          |
 Punto de Compra Rioblanco 1          |          |
 Punto de Compra Roncesvalles 1       |          |
 Punto de Compra Salamina 1           |          |
 Punto de Compra San Vicente Ferrer 1 |          |
 Punto de Compra Tarqui 1             |          |
 Punto de Compra Tesalia 3            |          |
 Punto de Compra Toca 1               |          |
 Punto de Compra Urumita 1            |          |
 Punto de Compra Valpara├¡so 1         |          |
 Punto de Compra Villa Rica 1         |          |
 Punto de Compra Villahermosa 1       |          |
 Punto de Compra Yaguar├í 1            |          |
(38 filas)

*/