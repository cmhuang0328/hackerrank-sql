/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

/*
Input Format

The TRIANGLES table is described as follows:
TRIANGLE( COLUMN : TYPE)
A: Integer
B: Integer
C: Integer
Each row in the table denotes the lengths of each of a triangle's three sides.
*/

/* Use case, then, end to identify triangles. first need to identify "Not A Triangle", then can identify other triangles */
SELECT CASE WHEN A + B <= C or B + C <= A or C + A <= B THEN "Not A Triangle"
            WHEN A = B and B = C THEN "Equilateral"
            WHEN A = B or B = C or C = A THEN "Isosceles"
            ELSE "Scalene"
       END
FROM triangles;
