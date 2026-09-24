#Level 1 — Food Detective
#Task 1 — Rating greater than 4.5
SELECT *
FROM restaurants
WHERE rating > 4.5;

#Task 2 — Average order value less than ₹300
SELECT *
FROM restaurants
WHERE avg_order_value < 300;
#Task 3 — All restaurants in Pune
SELECT *
FROM restaurants
WHERE city = 'Pune';
#Task 4 — More than 20,000 orders
SELECT *
FROM restaurants
WHERE orders_count > 20000;
#Task 5 — Delivery time greater than 40 minutes
SELECT *
FROM restaurants
WHERE est_delivery_time > 40;
#Task 6 — Rating between 4.2 and 4.7
SELECT *
FROM restaurants
WHERE rating BETWEEN 4.2 AND 4.7;
#Task 7 — South Indian, Italian or Biryani
SELECT *
FROM restaurants
WHERE cuisine IN ('South Indian', 'Italian', 'Biryani');
#Task 8 — Owner name contains Patil
SELECT *
FROM restaurants
WHERE owner_name LIKE '%Patil%';
#Task 9 — Brand matches restaurant name
SELECT *
FROM restaurants
WHERE brand = restaurant_name;
#Task 10 — Delivery fee less than ₹30
SELECT *
FROM restaurants
WHERE delivery_fee < 30;

#Level 2 — Recommendation Team
#Task 11 — 5 restaurants with highest number of orders
SELECT *
FROM restaurants
ORDER BY orders_count DESC
LIMIT 5;
#Task 12 — 5 restaurants with lowest average order value
SELECT *
FROM restaurants
ORDER BY avg_order_value ASC
LIMIT 5;
#Task 13 — Highest rating to lowest rating
SELECT *
FROM restaurants
ORDER BY rating DESC;
#Task 14 — Display unique cuisines
SELECT DISTINCT cuisine
FROM restaurants;
#Task 15 — Restaurant and Rating using aliases
SELECT
    restaurant_name AS Restaurant_Name,
    rating AS Customer_Rating
FROM restaurants;
#Task 16 — Restaurant, owner and brand only
SELECT
    restaurant_name,
    owner_name,
    brand
FROM restaurants;
#Task 17 — Sort by city, then rating descending
SELECT *
FROM restaurants
ORDER BY city ASC, rating DESC;
#Task 18 — 5 highest-rated restaurants with more than 10,000 orders
SELECT *
FROM restaurants
WHERE orders_count > 10000
ORDER BY rating DESC
LIMIT 5;
#Task 19 — 3 most ordered restaurants in Pune
SELECT *
FROM restaurants
WHERE city = 'Pune'
ORDER BY orders_count DESC
LIMIT 3;
#Task 20 — 5 restaurants with highest delivery fee
SELECT *
FROM restaurants
ORDER BY delivery_fee DESC
LIMIT 5;
#Level 3 — Find the Hidden Restaurants
#Task 21 — Restaurant names starting with S
SELECT *
FROM restaurants
WHERE restaurant_name LIKE 'S%';
#Task 22 — Restaurant names ending with House
SELECT *
FROM restaurants
WHERE restaurant_name LIKE '%House';
#Task 23 — Restaurant names containing Cafe
SELECT *
FROM restaurants
WHERE restaurant_name LIKE '%Cafe%';
#Task 24 — Cuisines containing Indian
SELECT *
FROM restaurants
WHERE cuisine LIKE '%Indian%';
#Task 25 — Restaurant names having exactly 5 characters
SELECT *
FROM restaurants
WHERE restaurant_name LIKE '_____';

#_ represents one character, so five _ characters mean exactly 5 characters.

#Task 26 — Owners whose name contains Raj
SELECT *
FROM restaurants
WHERE owner_name LIKE '%Raj%';
#Task 27 — Brands whose name contains Foods
SELECT *
FROM restaurants
WHERE brand LIKE '%Foods%';
#Task 28 — Cities starting with P
SELECT *
FROM restaurants
WHERE city LIKE 'P%';
#Level 4 — Business Team
#Task 29 — Avg order > ₹400 AND rating > 4.5
SELECT *
FROM restaurants
WHERE avg_order_value > 400
  AND rating > 4.5;
#Task 30 — Orders > 20,000 OR rating > 4.7
SELECT *
FROM restaurants
WHERE orders_count > 20000
   OR rating > 4.7;
#Task 31 — Restaurants NOT in Pune
SELECT *
FROM restaurants
WHERE city <> 'Pune';
#Task 32 — Delivery time between 25 and 40 minutes
SELECT *
FROM restaurants
WHERE est_delivery_time BETWEEN 25 AND 40;
#Task 33 — Avg order value between ₹300 and ₹600
SELECT *
FROM restaurants
WHERE avg_order_value BETWEEN 300 AND 600;
#Task 34 — Restaurants from Pune OR Mumbai
SELECT *
FROM restaurants
WHERE city IN ('Pune', 'Mumbai');
#Task 35 — Fast Food restaurants with >20,000 orders
SELECT *
FROM restaurants
WHERE cuisine = 'Fast Food'
  AND orders_count > 20000;
#Task 36 — Rating >4.5 AND delivery fee <₹40
SELECT *
FROM restaurants
WHERE rating > 4.5
  AND delivery_fee < 40;
#Task 37 — Bengaluru restaurants with >10,000 orders
SELECT *
FROM restaurants
WHERE city = 'Bengaluru'
  AND orders_count > 10000;
#Task 38 — Owner is NOT Rahul Jain
SELECT *
FROM restaurants
WHERE owner_name <> 'Rahul Jain';