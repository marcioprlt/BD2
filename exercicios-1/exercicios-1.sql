USE psdb;

#1
SELECT * FROM employees;

#2
SELECT emp_no, first_name FROM employees;

#3
SELECT DISTINCT first_name FROM employees;

#4
SELECT DISTINCT first_name FROM employees
ORDER BY first_name;

#5
SELECT DISTINCT first_name FROM employees
ORDER BY first_name DESC;

#6
SELECT DISTINCT first_name FROM employees
ORDER BY first_name ASC;

#7
SELECT DISTINCT first_name, last_name FROM employees;

#8
SELECT DISTINCT first_name, last_name FROM employees
ORDER BY first_name, last_name;

#9
SELECT DISTINCT first_name, last_name FROM employees
ORDER BY first_name DESC, last_name DESC;

#10
SELECT DISTINCT first_name, last_name FROM employees
ORDER BY first_name ASC, last_name ASC;

#11
SELECT * FROM employees
LIMIT 100;

#12
SELECT * FROM employees
ORDER BY emp_no LIMIT 100;

#13
SELECT * FROM employees
ORDER BY emp_no ASC LIMIT 100;

#14
SELECT * FROM employees
ORDER BY emp_no DESC LIMIT 100;

#15
SELECT * FROM employees
WHERE first_name = "Basil";

#16
SELECT * FROM employees
WHERE first_name = "Basil" AND gender = "M";

#17
SELECT * FROM employees
WHERE first_name = "Basil" AND gender <> "M";

#18
SELECT * FROM employees
WHERE first_name = "Basil" AND last_name = "Strooper" AND gender = "M";

#19
SELECT * FROM employees
WHERE first_name LIKE "Crist%";

#20
SELECT * FROM employees
WHERE first_name LIKE "%zette";

#21
SELECT * FROM employees
WHERE first_name LIKE "%zette" AND gender = "M";

#22
SELECT * FROM employees
WHERE first_name LIKE "%arvi%";

#23
SELECT * FROM employees
WHERE first_name LIKE "%arvi%" AND gender = "M";

#24
SELECT * FROM employees
WHERE first_name IN ("Yinghua", "Elvis");

#25
SELECT * FROM employees
WHERE first_name IN ("Yinghua", "Elvis") AND gender = "M";

#26
SELECT * FROM employees
WHERE emp_no = 14037;

#27
SELECT first_name, last_name FROM employees
WHERE emp_no = 14037;

#28
SELECT * FROM employees
WHERE emp_no IN (15037, 14039, 16039);

#29
SELECT * FROM employees
WHERE emp_no BETWEEN 14037 AND 14047;

#30
SELECT * FROM employees
WHERE emp_no >= 14037 AND emp_no <= 14047;

#31
SELECT * FROM employees
WHERE first_name LIKE "Crist%" AND emp_no > 485733;

#32
SELECT * FROM employees
WHERE first_name LIKE "Crist%" AND emp_no >= 485733;

#33
SELECT * FROM employees
WHERE first_name LIKE "%Crist%" AND emp_no < 37126;

#34
SELECT * FROM employees
WHERE first_name LIKE "%Crist%" AND emp_no <= 37126;

#35
SELECT * FROM employees
WHERE emp_no IN (494831, 479832, 599833, 499832) AND gender IN ("M", "F");

#36
SELECT * FROM employees
WHERE emp_no IN (494831, 479832, 599833, 499832) AND gender IN ("M", "F") LIMIT 10;

#37
SELECT * FROM employees AS emp
WHERE emp.emp_no IN (494831, 479832, 599833, 499832) AND emp.gender IN ("M", "F");

#38
SELECT emp_no AS Numero, first_name AS Nome FROM employees AS emp
WHERE emp.emp_no IN (494831, 479832, 599833, 499832) AND emp.gender IN ("M", "F");

USE WORLD;

#39
SELECT country.* FROM country JOIN countrylanguage
ON country.code = countrylanguage.CountryCode
WHERE countrylanguage.language = "Dutch";

#40
SELECT city.* FROM city JOIN countrylanguage
ON city.countrycode = countrylanguage.CountryCode
WHERE countrylanguage.language = "Dutch";

#41
SELECT country.* FROM country JOIN countrylanguage
ON country.code = countrylanguage.CountryCode
WHERE countrylanguage.language = "Spanish" AND countrylanguage.isofficial = "T";

#42
SELECT country.* FROM country JOIN countrylanguage
ON country.code = countrylanguage.CountryCode
WHERE countrylanguage.language = "Spanish" AND countrylanguage.isofficial = "T"
AND countrylanguage.percentage > 96.00;

#43
SELECT * FROM city
WHERE countrycode = "BRA" AND population > 1000000;

#44
SELECT country.name, country.continent, country.region, country.population,
city.name, city.district, city.population, countrylanguage.language
FROM country JOIN city
ON city.countrycode = country.code
JOIN countrylanguage
ON country.code = countrylanguage.countrycode
WHERE country.continent = "Europe";

#45
SELECT country.name, country.continent, country.region, country.population,
city.name, city.district, city.population, countrylanguage.language
FROM country JOIN city
ON city.countrycode = country.code
JOIN countrylanguage
ON country.code = countrylanguage.countrycode
WHERE countrylanguage.isofficial = "T" AND country.continent = "Europe";