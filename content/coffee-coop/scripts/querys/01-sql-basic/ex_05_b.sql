-- Exercise 05 - b
-- Collection points with no registered phone number, ordered by name

SELECT
    T1.point_name AS point,
    T1.address_line AS address,
    T1.phone_number AS phone_number
FROM buy.collection_points AS T1
WHERE T1.phone_number IS NULL
ORDER BY T1.point_name ASC;

/*
             point              |        address         | phone_number
--------------------------------+------------------------+--------------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     |
 Punto de Compra Anserma 1      | Calle 39 # 7-96        |
 Punto de Compra ApÝa 2         | Calle 9 # 14-56        |
 Punto de Compra Baraya 1       | Calle 1 # 19-77        |
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     |
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     |
 Punto de Compra CajibÝo 1      | Carrera 15 # 32-45     |
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        |
 Punto de Compra Coello 1       | Transversal 20 # 49-66 |
 Punto de Compra El Carmen 2    | Calle 3 # 34-88        |
 Punto de Compra El Tambo 2     | Calle 16 # 56-53       |
 Punto de Compra Flandes 1      | Carrera 38 # 40-79     |
 Punto de Compra Hatonuevo 1    | Calle 7 # 16-89        |
 Punto de Compra Icononzo 1     | Calle 19 # 35-13       |
 Punto de Compra Isnos 1        | Calle 12 # 33-28       |
 Punto de Compra La Argentina 1 | Calle 37 # 58-65       |
 Punto de Compra La Gloria 1    | Transversal 38 # 7-85  |
 Punto de Compra Marsella 1     | Transversal 19 # 42-92 |
 Punto de Compra Pelaya 1       | Avenida 19 # 26-92     |
 Punto de Compra PuracÚ 1       | Calle 16 # 50-5        |
 Punto de Compra San Lorenzo 1  | Calle 29 # 54-48       |
 Punto de Compra Tesalia 1      | Transversal 15 # 23-61 |
 Punto de Compra TimbiquÝ 1     | Transversal 34 # 19-91 |
 Punto de Compra Turbo 2        | Calle 36 # 12-19       |
 Punto de Compra Venecia 1      | Avenida 5 # 9-43       |
 Punto de Compra Villa Rica 1   | Diagonal 6 # 8-43      |
(26 filas)
/*