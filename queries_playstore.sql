SELECT
    id,
    app_name
FROM
    analytics
WHERE
    id = 1880;

SELECT
    id,
    app_name
FROM
    analytics
WHERE
    last_updated = '2018-08-01';

SELECT
    genres,
    COUNT(app_name) AS count
FROM
    analytics
GROUP BY
    genres
ORDER BY
    genres ASC;

SELECT
    app_name,
    reviews
FROM
    analytics
ORDER BY
    reviews DESC
LIMIT
    5;

SELECT
    app_name,
    reviews,
    rating
FROM
    analytics
WHERE
    rating >= 4.8
ORDER BY
    reviews DESC
LIMIT
    1;

SELECT
    genres,
    CAST(AVG(rating) AS DECIMAL(10, 2)) AS avg_rating
FROM
    analytics
GROUP BY
    genres
ORDER BY
    avg_rating ASC;

SELECT
    app_name,
    price,
    rating
FROM
    analytics
WHERE
    rating < 3
ORDER BY
    price DESC
LIMIT
    1;

SELECT
    app_name,
    rating,
    min_installs
FROM
    analytics
WHERE
    min_installs < 50
    AND rating IS NOT NULL
ORDER BY
    rating DESC;

SELECT
    app_name,
    rating,
    reviews
FROM
    analytics
WHERE
    rating < 3
    AND reviews >= 10000
ORDER BY
    rating ASC;

SELECT
    app_name,
    reviews,
    price
FROM
    analytics
WHERE
    price BETWEEN.10
    AND 1
ORDER BY
    reviews DESC
LIMIT
    10;

SELECT
    app_name,
    last_updated
FROM
    analytics
ORDER BY
    last_updated ASC
LIMIT
    1;

SELECT
    app_name,
    price
FROM
    analytics
ORDER BY
    price DESC
LIMIT
    1;

SELECT
    SUM(reviews) AS total_playstore_reviews
FROM
    analytics;

SELECT
    genres
FROM
    analytics
GROUP BY
    genres
HAVING
    COUNT(*) > 300;

SELECT
    app_name,
    reviews,
    min_installs,
    min_installs / reviews AS proportion
FROM
    analytics
WHERE
    min_installs >= 100000
ORDER BY
    min_installs / reviews DESC
LIMIT
    1;