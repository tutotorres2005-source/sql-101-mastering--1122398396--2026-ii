/*
Exercise 09
b
Function farm.fn_age_years and top 10 youngest affiliated farmers in municipality 54518
*/

CREATE OR REPLACE FUNCTION farm.fn_age_years(p_birth_date DATE, p_reference_date DATE)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_age INT;
BEGIN
    SELECT DATE_PART('year', AGE(p_reference_date, p_birth_date))::INT
    INTO v_age;

    RETURN v_age;
END;
$$;

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    farm.fn_age_years(T1.birth_date, DATE '2026-09-30') AS age_years,
    farm.fn_age_years(T1.birth_date, T1.membership_date) AS age_at_membership
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY age_at_membership ASC
LIMIT 10;


/*
 document |   first_name   |     last_name     | age_years | age_at_membership
----------+----------------+-------------------+-----------+-------------------
    62717 | Mario          | R├¡os Ibarra       |        27 |                18
    79848 | ├üngela Beatriz | Sandoval Berm├║dez |        29 |                18
    41872 | Marleny        | Pinz├│n Delgado    |        35 |                18
    18100 | Edilma         | Rivera Rivera     |        30 |                18
    66985 | Ruth           | Rodr├¡guez P├®rez   |        34 |                18
    68802 | Valentina      | Mora Rangel       |        26 |                18
    20959 | ├ülvaro         | Valencia Rivera   |        30 |                18
    15083 | Teresa         | Torres Giraldo    |        27 |                18
    10921 | Roc├¡o          | ├ülvarez C├írdenas  |        26 |                18
   123426 | Fernando       | Burbano Fl├│rez    |        27 |                18
(10 filas)
/*