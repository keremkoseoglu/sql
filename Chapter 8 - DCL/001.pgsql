CREATE TABLE
    sales_customer (
        customer_id SERIAL PRIMARY KEY,
        customer_name VARCHAR(50),
        contact_email VARCHAR(50)
    );

CREATE TABLE
    hr_employee (
        employee_id SERIAL PRIMARY KEY,
        employee_name VARCHAR(50),
        department VARCHAR(50),
        salary NUMERIC
    );

CREATE TABLE
    finance_transaction (
        transaction_id SERIAL PRIMARY KEY,
        transaction_date DATE,
        amount NUMERIC,
        description TEXT
    );