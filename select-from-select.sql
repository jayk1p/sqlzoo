
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



--#7

SELECT continent, name, area 
FROM world x
  WHERE area >= ALL
    (SELECT area 
      FROM world y
        WHERE y.continent=x.continent
          AND area>0)


