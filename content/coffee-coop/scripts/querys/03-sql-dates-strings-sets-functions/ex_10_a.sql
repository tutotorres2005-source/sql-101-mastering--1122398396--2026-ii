/*
Exercise 10
a
Function pay.fn_settlement_balance and test for settlement STL-20261001-000040
*/

CREATE OR REPLACE FUNCTION pay.fn_settlement_balance(p_settlement_id VARCHAR)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    v_net NUMERIC;
    v_paid NUMERIC;
BEGIN
    SELECT net_amount
    INTO v_net
    FROM pay.settlements
    WHERE settlement_id = p_settlement_id;

    SELECT SUM(amount)
    INTO v_paid
    FROM pay.payments
    WHERE settlement_id = p_settlement_id;

    RETURN v_net - COALESCE(v_paid, 0);
END;
$$;

SELECT
    pay.fn_settlement_balance('STL-20261001-000040') AS balance_cop;



/*
    balance_cop
-------------
  6094824.45
(1 fila)

 /*