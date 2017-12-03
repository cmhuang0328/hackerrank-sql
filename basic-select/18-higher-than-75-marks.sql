/*
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
secondary sort them by ascending ID.
*/

/*
Input Format

The STUDENTS table is described as follows:
STUDENTS(CILUMN : TYPE)
ID : Integer
NAME : String
Marks : Integer
The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.
*/

SELECT s.name FROM students s
WHERE s.marks > 75
/* use right (string , digits) to check the string with digits */
ORDER BY right(s.name, 3), s.id ASC
