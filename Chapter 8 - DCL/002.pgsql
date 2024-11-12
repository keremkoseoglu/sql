-- Insert mock data into sales_customer
INSERT INTO
    sales_customer (customer_name, contact_email)
VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Michael Johnson', 'michael.johnson@example.com'),
    ('Emily Davis', 'emily.davis@example.com'),
    ('Daniel Martinez', 'daniel.martinez@example.com');

-- Insert mock data into hr_employee
INSERT INTO
    hr_employee (employee_name, department, salary)
VALUES
    ('Sarah Connor', 'Human Resources', 75000),
    ('Rick Sanchez', 'Engineering', 95000),
    ('Morty Smith', 'Marketing', 50000),
    ('Walter White', 'Research', 120000),
    ('Leslie Knope', 'Operations', 85000);

-- Insert mock data into finance_transaction
INSERT INTO
    finance_transaction (transaction_date, amount, description)
VALUES
    ('2024-10-01', 250.00, 'Office supplies purchase'),
    ('2024-10-03', 5000.00, 'Client invoice payment'),
    (
        '2024-10-05',
        1500.00,
        'Employee travel reimbursement'
    ),
    ('2024-10-07', 320.00, 'Software license renewal'),
    ('2024-10-09', 2300.00, 'Office rent payment');