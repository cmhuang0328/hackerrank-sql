/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns. Do not include continents without cities in your output.
*/

/*
Input Format
The CITY and COUNTRY tables are described as follows:
CITY (Field : Type)
ID: NUMBER
NAME: VARCHAR2(17)
COUNTRYCODE: VARCHAR2(3)
DISTRICT: VARCHAR2(20)
POPULATION: NUMBER
COUNTRY (Field : Type)
CODE: VARCHAR2(3)
NAME: VARCHAR2(44)
CONTINENT: VARCHAR2(13)
REGION: VARCHAR2(25)
SURFACEAREA: NUMBER
INDEPYEAR: VARCHAR2(5)
POPULATION: NUMBER
LIFEEXPECTANCY: VARCHAR2(4)
GNP: NUMBER
GNPOLD: VARCHAR2(9)
LOCALNAME: VARCHAR2(44)
GOVERNMENTFORM: VARCHAR2(44)
HEADOFSTATE: VARCHAR2(32)
CAPITAL: VARCHAR2(4)
CODE: VARCHAR2(2)
*/

/* Round down to nearest integer means using FLOOR and use GROUP BY for the continent */
SELECT b.continent, FLOOR(AVG(a.population)) as 'average_population' FROM city a
INNER JOIN country b ON a.countrycode = b.code
GROUP BY b.continent;
