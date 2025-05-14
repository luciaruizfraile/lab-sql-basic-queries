-- Challenge. Use the sakila database to do the following tasks: Ç
-- Mostrar todas las tablas disponibles en la base de datos de Sakila.
USE sakila; 
SHOW TABLES

-- Retrieve all the data from the tables actor, film and customer.

SELECT*
FROM actor; 

SELECT*
FROM film; 

SELECT*
FROM customer; 

SELECT*
FROM language; 

-- Recupere las siguientes columnas de sus respectivas tablas:
-- 3.1 Títulos de todas las películas de la film tabla
SELECT
title 
FROM film;

-- 3.2 Lista de idiomas utilizados en películas, con la columna con el alias languagede la language tabla
SELECT
name AS language 
FROM language;

-- 3.3 Lista de nombres de todos los empleados de la staff tabla
SELECT
first_name ,
last_name
FROM staff;

-- 4. Recuperar años de lanzamiento únicos.
SELECT
DISTINCT (release_year)  
FROM film; 

-- 5 
-- 5.1 Determine the number of stores that the company has.
SELECT
COUNT(store_id)
FROM store; 

-- 5.2 Determine the number of employees that the company has.
SELECT
COUNT(staff_id)
FROM staff; 

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT 
COUNT(DISTINCT (inventory_id))
FROM inventory;

SELECT 
COUNT(DISTINCT (rental_id))
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT
COUNT(last_name)
FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT 
title 
FROM film
ORDER BY length 
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT
first_name,
last_name
FROM actor
WHERE first_name="SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT
title
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT 
COUNT(title)
FROM film 
WHERE special_features LIKE "Behind the Scenes";
