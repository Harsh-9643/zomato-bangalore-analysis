USE zomato_db;

SELECT location,
       COUNT(*) AS total_restaurants,
       ROUND(AVG(rate), 2) AS avg_rating
FROM restaurants
GROUP BY location
HAVING COUNT(*) >= 50
ORDER BY avg_rating DESC
LIMIT 10;