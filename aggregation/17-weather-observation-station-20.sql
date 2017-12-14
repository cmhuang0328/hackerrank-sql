/* 
A median is defined as a number separating the higher half of a data set from the lower half. 
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

Note: Oracle solutions are not permitted for this challenge.
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

/* 
SQL don't have median function so will use count to make sure half below is equal to half above part data
*/
SELECT round(s.lat_n, 4) as median FROM station s
WHERE (SELECT count(a.lat_n) FROM station a WHERE a.lat_n < s.lat_n) = (SELECT count(a.lat_n) FROM station a WHERE a.lat_n > s.lat_n);
