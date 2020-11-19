USE sakila;
#Task 1
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name = "CAGE";
SELECT * FROM actor WHERE first_name <> "ZERO" AND  first_name <> "NICK";
SELECT * FROM actor WHERE first_name IN ("NICK", "JOHNNY","JAMES","MORGAN","WHOOPI");
SELECT * FROM actor WHERE actor_id BETWEEN 50 AND 150;
SELECT * FROM actor WHERE first_name LIKE "c%";
SELECT * FROM actor ORDER BY first_name asc;
SELECT * FROM actor ORDER BY last_name DESC;
SELECT COUNT(*) FROM actor;
SELECT COUNT(DISTINCT first_name) FROM actor;
SELECT category_id FROM category WHERE name = "horror";
SELECT film_id FROM film_category where category_id = (SELECT category_id FROM category WHERE name = "horror");
SELECT * FROM film where film_id in (SELECT film_id FROM film_category where category_id = (SELECT category_id FROM category WHERE name = "horror"));
SELECT title as name, description FROM film where film_id in (SELECT film_id FROM film_category where category_id = (SELECT category_id FROM category WHERE name = "horror"));

#Task 2
INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ('201','AUGUST','DUELUND','2020-11-19 14.01');
SELECT * FROM actor;
INSERT INTO film_actor (actor_id, film_id, last_update)
VALUES ('201', '33', '2020-11-19 14.09')
 ,('201', '89', '2020-11-19 14.09')
 ,('201', '217', '2020-11-19 14.09')
 ,('201', '285', '2020-11-19 14.09')
 ,('201', '371', '2020-11-19 14.09');
SELECT * FROM film_actor;
UPDATE actor
SET first_name = 'AGGER', last_name = 'JR'
WHERE actor_id = 201;
SELECT * FROM actor;
SELECT * FROM category;
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM actor WHERE actor_id = 201;
SET FOREIGN_KEY_CHECKS = 1;

#Task 3
SELECT * FROM category;
SELECT * FROM film JOIN film_category ON film.film_id = film_category.film_id WHERE category_id = 11;

#Task 4
