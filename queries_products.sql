INSERT INTO
    products (name, price, can_be_returned)
VALUES
    ('chair', 44.00, 'false'),
    ('stool', 25.99, 'true'),
    ('table', 124.00, 'false');

SELECT
    name
FROM
    products;

SELECT
    name
FROM
    products;

SELECT
    name,
    price
FROM
    products;

INSERT INTO
    products (name, price, can_be_returned)
VALUES
    ('leg lamp', 199.99, 'false');

SELECT
    name,
    price,
    can_be_returned
FROM
    products
WHERE
    can_be_returned = 'true';

SELECT
    name,
    price,
    can_be_returned
FROM
    products
WHERE
    price < 44.00;

SELECT
    name,
    price,
    can_be_returned
FROM
    products
WHERE
    price BETWEEN 22.50
    AND 99.99;

UPDATE
    products
SET
    price = price - 20.00;

DELETE FROM
    products
WHERE
    price < 25.00;

UPDATE
    products
SET
    price = price + 20.00;

UPDATE
    products
SET
    can_be_returned = 'true';