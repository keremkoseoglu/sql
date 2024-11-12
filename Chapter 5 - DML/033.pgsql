DELETE FROM member
WHERE
    phone = '';

DELETE FROM member
WHERE
    phone IS NULL;

DELETE FROM member
WHERE
    phone = ''
    OR phone IS NULL;