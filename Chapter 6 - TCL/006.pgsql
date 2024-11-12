CREATE
OR REPLACE PROCEDURE do_money_transfer (
    source_acc INT,
    target_acc INT,
    trn_amount NUMERIC(15, 2),
    trn_currency VARCHAR(3),
    time_stamp TIMESTAMP
) LANGUAGE plpgsql AS $$
DECLARE updated_row_count INTEGER;
BEGIN
    -- Update source account
    UPDATE customer_acc SET balance = balance - trn_amount 
    WHERE id = source_acc AND currency = trn_currency;

    GET DIAGNOSTICS updated_row_count = ROW_COUNT;

    IF updated_row_count < 1 THEN
        ROLLBACK;
        RAISE EXCEPTION 'Invalid source account';
    END IF;

    -- Update target account
    UPDATE customer_acc SET balance = balance + trn_amount 
    WHERE id = target_acc AND currency = trn_currency;

    GET DIAGNOSTICS updated_row_count = ROW_COUNT;

    IF updated_row_count < 1 THEN
        ROLLBACK;
        RAISE EXCEPTION 'Invalid target account';
    END IF;

    -- Record transaction
    INSERT INTO transaction(transaction_type, from_acc, to_acc, 
                            amount, currency, trans_ts)
    VALUES ('TRA', source_acc, target_acc, trn_amount, trn_currency, time_stamp);

    -- Finish transaction
    COMMIT;
END; $$