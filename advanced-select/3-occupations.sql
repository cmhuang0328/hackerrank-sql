/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath 
its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.
*/

/*
Input Format
The OCCUPATIONS table is described as follows: 
OCCUPATIONS( Column: Type)
Name: String
Occupation: String
Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.
*/

SET @d = 0, @p = 0, @s = 0, @a = 0;
SELECT min(doctor), min(professor), min(singer), min(actor)
FROM (
    SELECT case when o.occupation = 'Doctor' then (@d := @d + 1)
                when o.occupation = 'Professor' then (@p := @p + 1)
                when o.occupation = 'Singer' then (@s := @s + 1)
                when o.occupation = 'Actor' then (@a := @a + 1) end as rownumber,
           case when o.occupation = 'Doctor' then o.name end as doctor,
           case when o.occupation = 'Professor' then o.name end as professor,
           case when o.occupation = 'Singer' then o.name end as singer,
           case when o.occupation = 'Actor' then o.name end as actor
    FROM occupations o
    order by o.name
    ) temp
    group by rownumber;
