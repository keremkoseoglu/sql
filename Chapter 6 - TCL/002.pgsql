CREATE
OR REPLACE PROCEDURE reset_and_populate_bank_data () LANGUAGE plpgsql AS $$
BEGIN
    -- Truncate tables and reset serials
    TRUNCATE TABLE transaction, credit_card, customer_acc, bank_customer, bank_day_sum 
    RESTART IDENTITY CASCADE;

    -- Insert mock data into bank_customer
    INSERT INTO bank_customer (name, phone, email) VALUES
    ('John Doe', '123-456-7890', 'john.doe@example.com'),
    ('Jane Smith', '234-567-8901', 'jane.smith@example.com'),
    ('Alice Johnson', '345-678-9012', 'alice.johnson@example.com');

    -- Insert mock data into customer_acc
    INSERT INTO customer_acc (customer_id, is_active, under_review, balance, currency) 
    VALUES
    (1, TRUE, FALSE, 10000.00, 'USD'),
    (2, TRUE, TRUE, 5000.00, 'USD'),
    (3, FALSE, FALSE, 7500.00, 'EUR');

    -- Insert mock data into credit_card
    INSERT INTO credit_card (card_number, customer_id, card_network, expiration_day, 
                             cvv, card_limit, usable_limit, currency) 
    VALUES
    ('1234567812345678', 1, 'VISA', '2026-01-01', '123', 5000.00, 4500.00, 'USD'),
    ('2345678923456789', 2, 'MASTER', '2025-12-01', '456', 3000.00, 2800.00, 'USD'),
    ('3456789034567890', 3, 'AMEX', '2027-03-15', '789', 7000.00, 7000.00, 'EUR');

    -- Insert mock data into transaction
    INSERT INTO transaction (transaction_type, from_acc, to_acc, from_credit_card, 
                             to_credit_card, amount, currency, trans_ts) 
    VALUES
    ('TRA', 1, 2, NULL, NULL, 1500.00, 'USD', '2024-09-02 16:30:00'),
    ('CRD', 2, NULL, NULL, '2345678923456789', 5.00, 'USD', '2024-09-03 10:00:00'),
    ('TRA', 3, 1, NULL, NULL, 300.00, 'EUR', '2024-09-04 14:14:00');

    -- Insert mock data into bank_day_sum
    INSERT INTO bank_day_sum (day, currency, account_balance, usable_card_limit, 
                              total_transaction) 
    VALUES
    ('2024-01-01', 'USD', 15000.00, 7300.00, 2000.00),
    ('2024-01-01', 'EUR', 7500.00, 7000.00, 300.00);

END;
$$;