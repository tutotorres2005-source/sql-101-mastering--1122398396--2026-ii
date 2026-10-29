-- Exercise 02 - b
-- Coffee varieties of arabica species not resistant to rust, ordered by name descending

SELECT
    T1.variety_name AS variety,
    T1.species AS species,
    T1.is_rust_resistant AS rust_resistant
FROM farm.coffee_varieties AS T1
WHERE T1.species = 'arabica'
  AND T1.is_rust_resistant = FALSE
ORDER BY T1.variety_name DESC;

/*
  variety    | species | rust_resistant
---------------+---------+----------------
 TÝpica        | arabica | f
 Pacamara      | arabica | f
 Maragogipe    | arabica | f
 Geisha        | arabica | f
 Caturra       | arabica | f
 Borb¾n Rosado | arabica | f
 Borb¾n        | arabica | f
(7 filas)
/*