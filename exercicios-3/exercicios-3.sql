USE world;

#1
SELECT COUNT(Name) FROM country;

#2
SELECT Continent, COUNT(Name)
FROM country
GROUP BY Continent;

#3
SELECT Continent, COUNT(Name)
FROM country
GROUP BY Continent
ORDER BY CONCAT(Continent);

#4
SELECT Continent, COUNT(Name)
FROM country
GROUP BY Continent
HAVING COUNT(Name) > 50;

#5
SELECT MAX(SurfaceArea)
FROM country;

#6
SELECT MIN(SurfaceArea)
FROM country;

#7
SELECT AVG(SurfaceArea)
FROM country;

#8
SELECT AVG(SurfaceArea)
FROM country
WHERE Continent = "Europe";

#9
SELECT Continent, AVG(SurfaceArea)
FROM country
GROUP BY Continent;

#10
SELECT Continent, AVG(SurfaceArea)
FROM country
GROUP BY Continent
ORDER BY AVG(SurfaceArea) DESC;

#11
SELECT Continent, MAX(SurfaceArea)
FROM country
GROUP BY Continent;

#12
SELECT Continent, MAX(SurfaceArea)
FROM country
GROUP BY Continent
ORDER BY MAX(SurfaceArea) DESC;

#13
SELECT country.Name, COUNT(countrylanguage.Language)
FROM country JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode
GROUP BY country.Name;

#14
SELECT country.Name, COUNT(countrylanguage.Language)
FROM country JOIN countrylanguage
ON country.Code = countrylanguage.CountryCode
GROUP BY country.Name
HAVING COUNT(countrylanguage.Language) > 10;

#15
SELECT country.Name, COUNT(city.Name)
FROM country JOIN city
ON country.Code = city.CountryCode
GROUP BY country.Name;

#16
SELECT country.Name, AVG(city.Population)
FROM country JOIN city
ON country.Code = city.CountryCode
GROUP BY country.Name;

#17
SELECT country.Name, AVG(city.Population)
FROM country JOIN city
ON country.Code = city.CountryCode
GROUP BY country.Name
ORDER BY AVG(city.Population);

#18
SELECT country.Name, AVG(city.Population)
FROM country JOIN city
ON country.Code = city.CountryCode
GROUP BY country.Name
HAVING AVG(city.Population) > 70000
ORDER BY AVG(city.Population);

USE sakila;

#19
SELECT SUM(amount)
FROM payment;

#20
SELECT AVG(amount)
FROM payment;

#21
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount)
FROM customer JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id;

#22
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount)
FROM customer JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY customer.first_name, customer.last_name;

#23
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount)
FROM customer JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING SUM(payment.amount) > 100
ORDER BY SUM(payment.amount);

#24
SELECT staff.staff_id, staff.first_name, staff.last_name, SUM(payment.amount)
FROM staff JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id;

#25
SELECT staff.staff_id, staff.first_name, staff.last_name, SUM(payment.amount)
FROM staff JOIN payment
ON staff.staff_id = payment.staff_id
WHERE payment.payment_date BETWEEN '2005-05-25' AND '2005-08-23'
GROUP BY staff.staff_id;

#26
SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(film_actor.actor_id)
FROM actor JOIN film_actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id;

#27
SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(film_actor.actor_id)
FROM actor JOIN film_actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
ORDER BY COUNT(film_actor.actor_id);

#28
SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(film_actor.actor_id)
FROM actor JOIN film_actor
ON actor.actor_id = film_actor.actor_id
WHERE actor.actor_id = 100
GROUP BY actor.actor_id;

#29
SELECT category.name, COUNT(film_category.film_id)
FROM category JOIN film_category
ON category.category_id = film_category.category_id
GROUP BY category.name;