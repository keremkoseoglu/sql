CREATE TABLE
    ticket_sale_head (
        id SERIAL PRIMARY KEY,
        member_id INT NOT NULL,
        sale_ts TIMESTAMP NOT NULL,
        FOREIGN KEY (member_id) REFERENCES member (id)
    );

CREATE TABLE
    ticket_sale_item (
        sale_id INT NOT NULL,
        item_no INT NOT NULL,
        event_id INT NOT NULL,
        category VARCHAR(1) NOT NULL,
        quantity INT NOT NULL,
        is_returned BOOLEAN NOT NULL DEFAULT FALSE,
        PRIMARY KEY (sale_id, item_no),
        FOREIGN KEY (sale_id) REFERENCES ticket_sale_head (id),
        FOREIGN KEY (event_id) REFERENCES EVENT (id),
        FOREIGN KEY (event_id, category) REFERENCES event_ticket (event_id, category)
    );