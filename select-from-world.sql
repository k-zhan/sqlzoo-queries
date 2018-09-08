-- Question 2

SELECT name FROM world
WHERE population >= 200000000;


-- Question 3

SELECT name,gdp/population FROM world
WHERE population >= 200000000;


-- Question 4

SELECT name,population/1000000 FROM world
WHERE continent = 'South America';


-- Question 5

SELECT name,population FROM world
WHERE name IN ('France', 'Germany','Italy');


-- Question 6

SELECT name FROM world
WHERE name LIKE '%United%'


-- Question 7

SELECT name,population,area from world
WHERE area > 3000000 OR population > 250000000;


-- Question 8

SELECT name,population,area FROM world
WHERE (area > 3000000 AND population <= 250000000) OR (area <= 3000000 AND population > 250000000);
