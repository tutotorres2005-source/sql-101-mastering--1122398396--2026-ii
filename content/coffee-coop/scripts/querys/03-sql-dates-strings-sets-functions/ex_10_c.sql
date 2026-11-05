/*
Exercise 10
c
Collection points statistics on active settlements and total pending balance for September 30, 2026
*/

SELECT
    T4.point_name AS collection_point,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(pay.fn_settlement_balance(T1.settlement_id)) AS total_balance_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN buy.collection_points AS T4
    ON T2.collection_point_id = T4.collection_point_id
WHERE T1.settled_at >= '2026-09-30 00:00:00'
  AND T1.settled_at <= '2026-09-30 23:59:59'
  AND T1.status <> 'cancelled'
GROUP BY T4.point_name
HAVING SUM(pay.fn_settlement_balance(T1.settlement_id)) > 0
ORDER BY total_balance_cop DESC;

/*
           collection_point            | settlements_count | total_balance_cop
---------------------------------------+-------------------+-------------------
 Punto de Compra Herr├ín 1              |                 3 |        6171557.18
 Punto de Compra Valpara├¡so 1          |                 1 |        5087855.55
 Punto de Compra El Bagre 1            |                 1 |        5013706.66
 Punto de Compra Aranzazu 1            |                 1 |        4912541.01
 Punto de Compra Restrepo 1            |                 1 |        4834069.24
 Punto de Compra Garz├│n 1              |                 1 |        4682246.40
 Punto de Compra El Rosario 1          |                 1 |        4569033.82
 Punto de Compra Su├írez 1              |                 2 |        4341052.80
 Punto de Compra Confines 1            |                 3 |        4073521.56
 Punto de Compra Morales 1             |                 1 |        3923051.27
 Punto de Compra Murillo 1             |                 1 |        3888038.55
 Punto de Compra Lenguazaque 1         |                 2 |        3879048.49
 Punto de Compra Popay├ín 1             |                 1 |        3875347.89
 Punto de Compra Fresno 1              |                 1 |        3453760.66
 Punto de Compra Aldana 1              |                 1 |        3313043.47
 Punto de Compra Santa Mar├¡a 1         |                 3 |        3299701.95
 Punto de Compra El Carmen 1           |                 1 |        3079359.36
 Punto de Compra Rioblanco 2           |                 1 |        3062643.10
 Punto de Compra Cajib├¡o 2             |                 1 |        3059693.20
 Punto de Compra Palestina 1           |                 1 |        3014608.64
 Punto de Compra Ap├¡a 2                |                 1 |        2672681.22
 Punto de Compra Purac├® 1              |                 1 |        2649584.44
 Punto de Compra Algeciras 1           |                 1 |        2408173.74
 Punto de Compra Pital 1               |                 1 |        1965647.65
 Punto de Compra El Doncello 1         |                 1 |        1856407.26
 Punto de Compra El Play├│n 1           |                 1 |        1398228.24
 Punto de Compra Mistrat├│ 1            |                 2 |        1273288.61
 Punto de Compra Jambal├│ 1             |                 1 |        1200195.81
 Punto de Compra Tiban├í 1              |                 1 |        1175793.32
 Punto de Compra Sardinata 1           |                 1 |        1152999.94
 Punto de Compra Aipe 2                |                 1 |        1107200.92
 Punto de Compra El Banco 1            |                 2 |         986937.60
 Punto de Compra Guadalajara De Buga 1 |                 2 |         917654.39
 Punto de Compra Taraz├í 1              |                 1 |         540323.13
(34 filas)
/*