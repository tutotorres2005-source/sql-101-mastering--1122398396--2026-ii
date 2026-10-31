-- Exercise 10 - b
-- Pending settlements on September 30, 2026 ordered by net amount DESC

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop,
    T1.status AS status
FROM pay.settlements AS T1
WHERE T1.settlement_id LIKE 'SET-20260930-%'
  AND T1.status = 'pending'
ORDER BY T1.net_amount DESC;

-- Exercise 10
-- b
-- Pending settlements on September 30, 2026 ordered by net amount DESC

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop,
    T1.status AS status
FROM pay.settlements AS T1
WHERE T1.settlement_id LIKE 'SET-20260930-%'
  AND T1.status = 'pending'
ORDER BY T1.net_amount DESC;

/*
settlement | delivery | net_weight_kg | price_per_kg | gross_cop | deductions_cop | net_cop | status
------------+----------+---------------+--------------+-----------+----------------+---------+--------
(0 filas)
/*