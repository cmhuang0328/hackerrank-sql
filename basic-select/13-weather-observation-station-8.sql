/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
Your result cannot contain duplicates.
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

/* for this query, you need to use REGEXP to do that with ^ meaning starts with, .* meaning 0 or more characters and $ meaning ends with. */
SELECT distinct s.city FROM station s
WHERE s.city REGEXP "^[aeiou].*[aeiou]$";
