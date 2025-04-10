CREATE TABLE ecommerce_events (
    event_time TIMESTAMP,
    user_id VARCHAR(100),
    user_session VARCHAR(100),
    event_type VARCHAR(50),
    product_id VARCHAR(100),
    category_id VARCHAR(100),
    category_code VARCHAR(255),
    brand VARCHAR(100),
    price NUMERIC,
    user_city VARCHAR(100),
    user_country VARCHAR(100),
    traffic_source VARCHAR(100),
    device VARCHAR(100),
    os VARCHAR(100),
    browser VARCHAR(100)
);

SELECT * FROM ecommerce_events LIMIT 10;

-- nombre d'evenements par jour

SELECT DATE(event_time) AS date, COUNT(*) AS total_events
FROM ecommerce_events
GROUP BY DATE(event_time)
ORDER BY date;


-- le preoduit le plus achete

SELECT product_id, COUNT(*) AS total_purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY product_id
ORDER BY total_purchases DESC
LIMIT 1;

-- Calculer le revenu total généré par catégorie

SELECT category_id, SUM(price) AS total_revenue
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY category_id
ORDER BY total_revenue DESC;

-- utilisateurs ayant effectué le plus grand nombre d'achats

SELECT user_id, COUNT(*) AS total_purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY user_id
ORDER BY total_purchases DESC
LIMIT 10;

-- revenu moyen par utilisateur sur la base des achats effectués

SELECT user_id, AVG(price) AS avg_revenue
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY user_id;

-- le produit ayant été acheté au prix le plus élevé

SELECT product_id, MAX(price) AS max_price
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY product_id
ORDER BY max_price DESC
LIMIT 1;

-- le taux de conversion en divisant le nombre d'achats par le nombre de visites

SELECT 
  (COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_session END) * 1.0) / 
  COUNT(DISTINCT user_session) AS conversion_rate
FROM ecommerce_events;

-- revenu total généré par pays

SELECT user_country, SUM(price) AS total_revenue
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY user_country

--quels produits sont populaires en fonction de la source de trafic

SELECT traffic_source, product_id, COUNT(*) AS total_events
FROM ecommerce_events
WHERE event_type = 'view'
GROUP BY traffic_source, product_id
ORDER BY total_events DESC;


--l e navigateur le plus utilisé pour les achats 

SELECT browser, COUNT(*) AS total_purchases
FROM ecommerce_events
WHERE event_type = 'purchase'
GROUP BY browser
ORDER BY total_purchases DESC;

-- nombre d'utilisateurs uniques par ville

SELECT user_city, COUNT(DISTINCT user_id) AS unique_users
FROM ecommerce_events
GROUP BY user_city
ORDER BY unique_users DESC;



