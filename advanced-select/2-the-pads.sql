/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession
as a parenthetical (i.e.: enclosed in parentheses). 
For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. 
Sort the occurrences in ascending order, and output them in the following format: 
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS 
and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], 
they should be ordered alphabetically.
Note: There will be at least two entries in the table for each type of occupation.
*/

/*
Input Format

The OCCUPATIONS table is described as follows: 
OCCUPATIONS( Column: Type)
Name: String
Occupation: String
Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/

/* 
use concat to contact each experssion like this concat(exp1, exp2, exp3)
use substring to choose substring from a strung  such as (string, start position, extract character numbers)
*/
SELECT concat(o.name, '(', substring(o.occupation, 1, 1), ')') as name FROM occupations o
order by name;
SELECT concat('There are a total of', ' ', count(a.occupation), ' ', lower(a.occupation),'s.') as total
FROM occupations a
group by a.occupation
order by total;
