/* 
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
Round your answer to 4 decimal places.
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

SELECT round(s.long_w, 4) FROM station s
WHERE s.lat_n = (SELECT min(a.lat_n) FROM station a WHERE a.lat_n > 38.7780);
