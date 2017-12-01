/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: 
number of characters in the name). If there is more than one smallest or largest city, choose the one that comes 
first when ordered alphabetically
*/

/*
Input Format
The STATION table is described as follows:
STATION (Field : Type)
ID : NUMBER
CITY : VARCHAR2(21)
STATE : VARCHAR2(2)
LAT_N : NUMBER
LONG_W : NUMBER
where LAT_N is the northern latitude and LONG_W is the western longitude
*/

SELECT s.city, length(s.city) FROM station s order by length(s.city) limit 1;
/* pick the largest one use order by desc */
SELECT s.city, length(s.city) FROM station s order by length(s.city) desc limit 1;
