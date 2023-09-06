
--#6

SELECT name
FROM world
WHERE gdp > 4308854000000 /* This is the gdp of Germany, which has the highest GDP in europe */

--OR

SELECT name
FROM world
  WHERE gdp> 
(SELECT gdp
FROM world
WHERE name = 'Germany')
