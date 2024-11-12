CREATE
OR REPLACE PROCEDURE generate_retro_loom_data () LANGUAGE plpgsql AS $$ BEGIN

-- Disable foreign key checks
SET session_replication_role = 'replica';

-- Truncate all tables to delete data and reset serial sequences
TRUNCATE TABLE complaint, invoice_item, invoice, delivery_item, delivery, order_item, customer_order, product, product_cat, customer RESTART IDENTITY CASCADE;

-- Re-enable foreign key checks
SET session_replication_role = 'origin';

-- Set up sequences for readability
ALTER SEQUENCE customer_id_seq RESTART WITH 71;
ALTER SEQUENCE customer_order_id_seq RESTART WITH 101;
ALTER SEQUENCE delivery_id_seq RESTART WITH 301;
ALTER SEQUENCE invoice_id_seq RESTART WITH 501;
ALTER SEQUENCE complaint_id_seq RESTART WITH 901;

-- Insert product categories
INSERT INTO product_cat (id, name) VALUES
('TOP', 'Tops'),
('BOT', 'Bottoms'),
('ACC', 'Accessories');

-- Insert apparel products
INSERT INTO product (id, name, category_id, gender, price, stock) VALUES
('TEE', 'T-Shirt', 'TOP', 'U', 19.99, 100),  -- Same price for rank demonstration
('SHIR', 'Shirt', 'TOP', 'M', 35.00, 50),
('BLZ', 'Blazer', 'TOP', 'M', 100.00, 25),
('JKT', 'Jacket', 'TOP', 'U', 100.00, 30),   -- Same price for rank demonstration
('PNT', 'Pants', 'BOT', 'M', 50.00, 60),
('SKT', 'Skirt', 'BOT', 'F', 45.00, 40),
('BAG', 'Bag', 'ACC', 'U', 60.00, 70),
('BELT', 'Belt', 'ACC', 'U', 25.00, 120);

-- Insert customers
INSERT INTO customer (name, email, phone, mobile, address, is_active, referrer_id) VALUES
('Alice Smith', 'alice@example.com', NULL, '555-1234', '123 Main St', TRUE, NULL),
('Bob Johnson', 'bob@example.com', '555-5678', NULL, '456 Elm St', TRUE, NULL),
('Charlie Brown', 'charlie@example.com', NULL, '555-4321', '789 Oak St', TRUE, 71),
('Diana Prince', 'diana@example.com', '555-8765', NULL, '246 Pine St', TRUE, 71),
('Eve Adams', 'eve@example.com', '555-9876', NULL, '135 Maple St', TRUE, NULL);

-- Insert customer orders
INSERT INTO customer_order (customer_id, order_ts, is_gift, custom_note, req_dlv_date) VALUES
(71, NOW(), FALSE, ' Special gift for friend', NULL),
(72, NOW(), TRUE, 'Urgent order', '2024-10-01'),
(73, NOW(), FALSE, '  Thanks for your business', '2024-10-05'),
(74, NOW(), FALSE, 'Order for special event', NULL),  -- NULL req_dlv_date
(75, NOW(), TRUE, ' Gift for a birthday', '2024-09-20');  -- Another order

-- Insert order items 
INSERT INTO order_item (order_id, order_item_no, product_id, quantity, price, amount) VALUES
(101, 1, 'TEE', 2, 18.99, 37.98),  -- Price less than product price
(101, 2, 'PNT', 1, 50.00, 50.00),  -- Price equal to product price
(102, 1, 'BLZ', 1, 105.00, 105.00),  -- Price greater than product price
(102, 2, 'BELT', 2, 25.00, 50.00),  -- Price equal to product price
(103, 1, 'SHIR', 3, 35.00, 105.00),  -- Price equal to product price
(103, 2, 'SKT', 1, 40.00, 40.00),  -- Price less than product price
(104, 1, 'BAG', 1, 60.00, 60.00),  -- Price equal to product price
(105, 1, 'JKT', 1, 100.00, 100.00); -- Price equal to product price

-- Insert deliveries 
INSERT INTO delivery (delivery_ts, is_shipped, track_url, customer_id) VALUES
(NOW(), FALSE, 'http://trackurl.com/1', 71),  -- Pending delivery
(NOW(), TRUE, 'http://trackurl.com/2', 72),  -- Completed delivery
(NOW(), FALSE, 'http://trackurl.com/3', 73),  -- Pending delivery
(NOW(), TRUE, 'http://trackurl.com/4', 74),  -- Completed delivery
(NOW(), TRUE, 'http://trackurl.com/5', 72);  -- Another delivery for order 2

-- Insert delivery items 
INSERT INTO delivery_item (delivery_id, delivery_item_no, order_id, order_item_no, dlv_quantity) VALUES
(301, 1, 101, 1, 1),  -- Partial delivery for order 101, item 1
(302, 1, 102, 1, 1),  -- Full delivery for order 102, item 1
(302, 2, 102, 2, 2),  -- Full delivery for order 102, item 2
(303, 1, 103, 1, 3),  -- Full delivery for order 103, item 1
(304, 1, 103, 2, 1),  -- Full delivery for order 103, item 2
(305, 1, 102, 1, 1),  -- Additional delivery for order 102, item 1
(305, 2, 104, 1, 1);  -- Delivery including item from order 104

-- Insert invoices 
INSERT INTO invoice (invoice_ts, is_sent, customer_id) VALUES
(NOW(), FALSE, 71),  -- Pending invoice for customer 1
(NOW(), TRUE, 72),   -- Completed invoice for customer 2
(NOW(), FALSE, 73),  -- Pending invoice for customer 3
(NOW(), TRUE, 74);   -- Completed invoice for customer 4

-- Insert invoice items 
INSERT INTO invoice_item (invoice_id, invoice_item_no, delivery_id, delivery_item_no, amount, vat_rate, vat_amount, total_amount) VALUES
(501, 1, 301, 1, 18.99, 20.00, 3.80, 22.79),  -- Partial invoice for dlv 301, item 1
(502, 1, 302, 1, 105.00, 20.00, 21.00, 126.00),  -- Full invoice for dlv 302, item 1
(502, 2, 302, 2, 50.00, 20.00, 10.00, 60.00),  -- Full invoice for dlv 302, item 2
(503, 1, 303, 1, 105.00, 20.00, 21.00, 126.00),  -- Full invoice for dlv 303, item 1
(504, 1, 304, 1, 40.00, 20.00, 8.00, 48.00);    -- Full invoice for dlv 304, item 2

-- Insert complaints
INSERT INTO complaint(customer_id, order_id, complaint_ts, subject, description, is_resolved) VALUES
(71, 101, NOW(), 'Website slow', 'I had to wait at submit', false), -- Order complaint
(75, null, now(), 'No gift card', 'We want gift card option', false); -- Generic complaint

END; $$