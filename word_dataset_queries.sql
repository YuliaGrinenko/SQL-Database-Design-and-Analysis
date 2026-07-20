SELECT Count(*) AS 'USA_CITIES' FROM city WHERE CountryCode='USA';
SELECT * FROM country;
SELECT  MAX(LifeExpectancy) AS 'Highest_Life_Expectancy' FROM country;

SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
SELECT * FROM city WHERE name LIKE '%New%';


SELECT *
FROM city
WHERE Name LIKE '% New %'
   OR Name LIKE 'New %'
   OR Name LIKE '% New'
   OR Name = 'New';
SELECT name, population FROM city ORDER BY Population DESC LIMIT 10;
SELECT name, population FROM city WHERE population>=2000000 ORDER BY Population DESC;


SELECT * FROM city WHERE name LIKE 'Be%' ORDER BY Name;
SELECT name, population FROM city WHERE population BETWEEN 500000 AND 1000000 ORDER BY Population DESC;
SELECT name FROM city ORDER BY Name;
SELECT Name AS City FROM city  WHERE Name >= 'A' ORDER BY City ASC;
SELECT name FROM city;
SELECT Name, Population FROM city 
WHERE Population = (SELECT MAX(Population) FROM city);
SELECT NAME, COUNT(*) AS Count FROM city GROUP BY Name ORDER BY Name;
SELECT Name, Population FROM city 
WHERE Population = (SELECT MIN(Population) FROM city);
SELECT Name, Population FROM country
WHERE Population = (SELECT MAX(Population) FROM country);

SELECT city.name FROM city JOIN country ON city.id = country.capital WHERE country.name = 'Spain';

SELECT city.Name FROM city INNER JOIN country ON city.CountryCode = country.Code WHERE country.Continent = 'Europe';

SELECT country.Name, AVG(city.Population) AS AvgPopulation
FROM city
INNER JOIN country
ON city.CountryCode = country.Code
GROUP BY country.Name
ORDER BY country.Name;

SELECT country.Name AS Country,
       city.Name AS CapitalCity,
       city.Population AS CapitalPopulation
FROM country
INNER JOIN city
ON country.Capital = city;

SELECT country.Name AS Country,
       city.Name AS CapitalCity,
       city.Population AS CapitalPopulation
FROM country
INNER JOIN city
ON country.Capital = city.ID
ORDER BY city.Population DESC;
SELECT country.Name AS Country,
       city.Name AS CapitalCity,
       city.Population AS CapitalPopulation
FROM country
INNER JOIN city
ON country.Capital = city.ID
ORDER BY city.Population DESC;

SELECT Name,
       Population / SurfaceArea AS Density
FROM country
WHERE Population / SurfaceArea < 50
ORDER BY Density ASC;

       country.Name AS Country,
       (country.GNP / country.Population) AS GDP_per_capita
FROM city
INNER JOIN country
ON city.CountryCode = country.Code
WHERE (country.GNP / country.Population) > (
    SELECT AVG(GNP / Population)
    FROM country
)
ORDER BY GDP_per_capita DESC;
SELECT city.Name AS City,
       country.Name AS Country,
       (country.GNP / country.Population) AS GDP_per_capita
FROM city
INNER JOIN country
ON city.CountryCode = country.Code
WHERE (country.GNP / country.Population) > (
    SELECT AVG(GNP / Population)
    FROM country
)
ORDER BY GDP_per_capita DESC;
SELECT Name, Population FROM city ORDER BY Population DESC LIMIT 10 OFFSET 30;

select name, population from country where population=(select max(Population) from country);
select city.name as 'Capital', country.name as 'Country' from city inner join country on city.id=country.capital where country.name='Spain';
select city.name, country.continent from city left join country on city.CountryCode=country.code where country.Continent='Europe';
select * from country;
select (SELECT AVG(population) from country), name from country;
select avg(city.Population), country.Name from country inner join city on country.code=city.CountryCode group by country.name;

select city.name, city.population, country.name from city inner join country on city.id=country.Capital;
select name, population/SurfaceArea as 'Density'  from country order by Density;
select city.name, country.name, (country.GNP/country.population) as 'GDP' from city inner join country on city.countrycode=country.code where (country.GNP/country.population)>(SELECT AVG(GNP/population) from country) order by GDP desc;