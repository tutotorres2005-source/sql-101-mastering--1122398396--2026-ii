-- Exercise 06 - c
-- Inactive farmers in municipality 54518 (Pamplona), ordered by membership date from oldest to newest

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.is_active AS is_active,
    T1.membership_date AS membership_date
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.is_active = FALSE
ORDER BY T1.membership_date ASC;

/*
 document  |    first_name    |     last_name      | is_active | membership_date
------------+------------------+--------------------+-----------+-----------------
 230971064  | Manuel           | Agudelo JimÚnez    | f         | 1997-03-29
 534023693  | Myriam           | Valencia Moreno    | f         | 1998-11-03
 33787285   | RubÚn            | Ramos Chamorro     | f         | 1999-03-02
 1135293825 | Abelardo         | PÚrez Castro       | f         | 2003-06-19
 478755763  | Nicolßs          | Rivera Duque       | f         | 2003-08-11
 160538872  | Liliana          | Mosquera Uribe     | f         | 2007-09-27
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | f         | 2009-05-02
 10424994   | Cristian         | Herrera Zuluaga    | f         | 2010-04-28
 1015411133 | Santiago         | Berm·dez Ruiz      | f         | 2010-11-30
 1090968710 | Ruth             | RodrÝguez PÚrez    | f         | 2010-12-11
 974842644  | Arturo           | Hernßndez Uribe    | f         | 2012-06-16
 1001030458 | Liliana Luisa    | Chamorro VÚlez     | f         | 2013-01-09
 870240973  | Jairo            | Molina Pab¾n       | f         | 2014-03-13
 89157555   | Heriberto        | JimÚnez Cßceres    | f         | 2014-07-17
 333176982  | Edilma           | Rivera Rivera      | f         | 2014-12-20
 587550249  | Gustavo          | Mosquera L¾pez     | f         | 2016-05-14
 718906996  | Nelson           | Bedoya VÚlez       | f         | 2016-12-09
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        | f         | 2017-01-11
 599185252  | EfraÝn           | Pinz¾n Cabrera     | f         | 2017-07-23
 135734682  | Diego            | Rivera JimÚnez     | f         | 2018-03-26
 914044314  | AncÝzar Cristian | PolanÝa Delgado    | f         | 2021-02-24
(21 filas)
/*