CREATE TABLE
    EVENT (
        id SERIAL PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        gig_ts TIMESTAMP NOT NULL,
        theater_id VARCHAR(10) NOT NULL,
        artist_id VARCHAR(10) NOT NULL,
        is_cancelled BOOLEAN NOT NULL DEFAULT FALSE,
        FOREIGN KEY (theater_id) REFERENCES theater (id),
        FOREIGN KEY (artist_id) REFERENCES artist (id)
    );

CREATE TABLE
    event_ticket (
        event_id INT NOT NULL,
        category VARCHAR(1) NOT NULL,
        price NUMERIC(10, 2) NOT NULL,
        currency VARCHAR(3) NOT NULL DEFAULT 'USD',
        capacity INT NOT NULL,
        PRIMARY KEY (event_id, category),
        FOREIGN KEY (event_id) REFERENCES EVENT (id)
    );