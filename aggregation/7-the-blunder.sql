/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's  key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed),
and the actual average salary.

Write a query calculating the amount of error (i.e.: actual-miscalculated average monthly salaries), and round it up to the next integer.
*/

/*
Input Format
The EMPLOYEES table is described as follows:
Employee (Field : Type)
ID: Integer
Name: String
Salary: Integer
*/

SELECT (round(avg(e.salary)) - round(avg(replace(e.salary, "0", "")))) as error
FROM employees e;
