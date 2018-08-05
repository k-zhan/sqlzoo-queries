
-- Question 1
-- List the films where the yr is 1962 [Show id, title]

SELECT id, title
 FROM movie
 WHERE yr=1962;

 -- Question 2
 -- Give year of 'Citizen Kane'

 SELECT yr FROM movie
 WHERE title = 'Citizen Kane';

 -- Question 3
 -- List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year

SELECT id,title,yr FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr;

 -- Question 4
 -- What id number does the actor 'Glenn Close' have?

 SELECT id FROM actor
 WHERE name = 'Glenn Close';

 -- Question 5
 -- What is the id of the film 'Casablanca'

 SELECT id FROM movie
 WHERE title = 'Casablanca';
 
 -- Question 6
 -- Obtain the cast list for 'Casablanca'

 SELECT name FROM actor
 actor JOIN casting ON actor.id = casting.actorid AND casting.movieid = 11768;

-- Question 7
-- Obtain the cast list for the film 'Alien'

SELECT name FROM actor
actor JOIN casting ON actor.id = casting.actorid
JOIN movie ON casting.movieid = movie.id WHERE movie.title = 'Alien';

-- Question 8
-- List the films in which 'Harrison Ford' has appeared

SELECT title FROM movie
movie JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id WHERE name = 'Harrison Ford';

-- Question 9
/* List the films where 'Harrison Ford' has appeared - but not in the starring role. [Note: the ord field of casting gives the position of the actor. 
   If ord=1 then this actor is in the starring role] */

SELECT title FROM movie
movie JOIN casting ON movie.id = casting.movieid
JOIN actor ON casting.actorid = actor.id WHERE actor.name = 'Harrison Ford' AND casting.ord <> 1;

-- Question 10
-- List the films together with the leading star for all 1962 films.

SELECT title,name FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
WHERE casting.ord = 1 AND movie.yr =1;
