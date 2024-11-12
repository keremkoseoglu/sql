SELECT
    *
FROM
    crosstab ( { inner_query } ) AS ct (
        id INTEGER,
        f_sum NUMERIC(15, 2),
        m_sum NUMERIC(15, 2),
        u_sum NUMERIC(15, 2)
    );
