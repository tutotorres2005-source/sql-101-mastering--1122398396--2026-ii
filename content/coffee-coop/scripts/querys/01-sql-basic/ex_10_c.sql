-- Exercise 10
-- c
-- Settlements without deductions on September 30, 2026, checking calculated gross amount

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    (T1.net_weight_kg * T1.price_per_kg_applied) AS check_gross_cop,
    T1.deductions_amount AS deductions_cop
FROM pay.settlements AS T1
WHERE T1.settlement_id LIKE 'SET-20260930-%'
  AND T1.deductions_amount = 0;
  
/*
settlement | delivery | net_weight_kg | price_per_kg | gross_cop | check_gross_cop | deductions_cop
------------+----------+---------------+--------------+-----------+-----------------+----------------
(0 filas)

/*