
-- Exercise 08 - b
-- Deliveries count and total gross weight per coffee type on September 30, 2026


SELECT
    coffee_type,
    COUNT(delivery_id) AS deliveries_count,
    SUM(gross_weight_kg) AS total_gross_kg
FROM buy.deliveries
WHERE delivery_id LIKE 'DLV-20260930-%'
GROUP BY coffee_type
ORDER BY total_gross_kg DESC;

/*
 coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)
*/