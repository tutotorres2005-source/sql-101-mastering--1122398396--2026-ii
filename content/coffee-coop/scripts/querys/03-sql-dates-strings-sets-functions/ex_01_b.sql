

/*
Exercise 01
b
Top 10 oldest members in municipality 54518 as of 2026-09-30
*/

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    AGE(DATE '2026-09-30', T1.membership_date) AS membership_age,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.membership_date)) AS membership_years
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date ASC
LIMIT 10;

/*
document |    first_name    |     last_name      |     membership_age      | membership_years
----------+------------------+--------------------+-------------------------+------------------
    60102 | Juli├ín Guillermo | Valencia Narv├íez   | 31 years 8 mons 3 days  |               31
   138643 | Roc├¡o Alba       | Ortega Serrano     | 31 years 2 mons 20 days |               31
    24490 | Wilson           | Parra Prada        | 31 years 2 mons 2 days  |               31
    46617 | Marleny          | ├ülvarez Correa     | 30 years 6 mons 10 days |               30
    23266 | Teresa Adriana   | Valencia Moreno    | 30 years 2 mons 7 days  |               30
   121239 | Martha Carolina  | P├®rez Jaimes       | 29 years 10 mons 8 days |               29
    99920 | Manuel           | Agudelo Jim├®nez    | 29 years 6 mons 1 day   |               29
    68544 | Ramiro           | Barrera Villamizar | 29 years 5 mons 22 days |               29
    56723 | Guillermo        | P├®rez P├®rez        | 29 years 4 mons 13 days |               29
    26035 | Juan             | Ortega Zapata      | 29 years 2 mons 17 days |               29
(10 filas)
/*