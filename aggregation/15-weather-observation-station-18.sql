/* 
Consider P_1(a,b) and P_2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P_1 and P_2 and round it to a scale of 4 decimal places.
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
Manhattan Distance Formula:
For P_1(x,y), P_2(x,y), its Manhattan Distance is d(P_1, P_2) = |P_1(x) - P_2(x)| + |P_1(y) -P_2(y)|
*/
SELECT round((abs(min(s.lat_n) - max(s.lat_n)) + abs(min(s.long_w) - max(s.long_w))), 4) as Manhattan_Distance 
FROM station s;

