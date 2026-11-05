/*
Exercise 02
a
Top 10 oldest farmers of municipality 54518 as of 2026-09-30
*/

SELECT
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.birth_date AS birth_date,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)) AS age_years
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.birth_date ASC
LIMIT 10;

/*
  first_name   |     last_name      | birth_date | age_years
----------------+--------------------+------------+-----------
 Elsa           | Ramos C├írdenas     | 1950-01-11 |        76
 Felipe Camilo  | R├¡os Ospina        | 1950-03-09 |        76
 Adriana        | Mosquera Ospina    | 1950-08-13 |        76
 Arturo         | Contreras Pe├▒a     | 1950-08-18 |        76
 Antonio        | Bastidas Rodr├¡guez | 1950-10-02 |        75
 ├ëdgar          | Burbano Arango     | 1951-05-23 |        75
 Gustavo        | Mosquera L├│pez     | 1951-06-05 |        75
 Diana          | D├¡az Medina        | 1951-07-19 |        75
 Rosa           | R├¡os C├írdenas      | 1951-08-26 |        75
 M├│nica Claudia | Fl├│rez Gonz├ílez    | 1952-02-08 |        74
(10 filas)
/*