/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
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

/* use % for the string and just change vowel */
SELECT distinct s.city FROM station s
WHERE s.city like '%a' or s.city like '%e' or s.city like '%i' or s.city like '%o' or s.city like '%u';
