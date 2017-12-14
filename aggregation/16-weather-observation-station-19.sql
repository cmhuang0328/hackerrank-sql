/* 
Consider P_1(a,c) and P_2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of 
Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P_1 and P_2 and format your answer to display 4 decimal digits.
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
Euclidean Distance Formula:
For P_1(x,y), P_2(x,y), its Manhattan Distance is d(P_1, P_2) = [(P_1(x) - P_2(x))^2 + (P_1(y) -P_2(y))^2]^0.5

Use sqrt, and power for this problem
*/

SELECT round(sqrt(power(min(s.lat_n) - max(s.lat_n), 2) + power(min(s.long_w) - max(s.long_w), 2)), 4) as Euclidean_Distance 
FROM station s;
