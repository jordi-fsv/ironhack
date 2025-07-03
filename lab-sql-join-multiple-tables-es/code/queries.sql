USE sakila;

SELECT s.store_id, c.city, co.country FROM store s
LEFT JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country co ON c.country_id = co.country_id;

SELECT s.store_id, SUM(p.amount) AS 'ingresos ($)'
FROM store s
INNER JOIN staff st ON s.store_id = st.store_id
INNER JOIN payment p ON st.staff_id = p.staff_id
GROUP BY s.store_id;

DESCRIBE film;

SELECT c.name, AVG(f.length) AS 'ejecucion promedio (min)'
FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY c.category_id;

SELECT c.name, AVG(f.length) AS 'duracion promedio (min)'
FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY c.category_id
ORDER BY AVG(f.length) DESC LIMIT 1;

DESCRIBE film;

SELECT f.film_id, f.title, COUNT(f.film_id)
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id
ORDER BY COUNT(f.film_id) DESC;

SELECT c.name, SUM(p.amount)
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
LEFT JOIN inventory i ON fc.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN payment p ON r.rental_id = p.rental_id
GROUP BY c.category_id
ORDER BY SUM(p.amount) DESC LIMIT 5;

SELECT DISTINCT f.title, s.store_id
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN store s ON i.store_id = s.store_id
WHERE f.title = 'Academy Dinosaur' AND s.store_id = 1;

