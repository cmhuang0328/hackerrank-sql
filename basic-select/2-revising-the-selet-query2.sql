# Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA

# Input Format
# The CITY table is described as follows:
# CITY (Field : Type)
# ID : NUMBER
# NAME : VARCHAR2(17)
# COUNTRYCODE : VARCHAR2(3)
# DISTRICT : VARCHAR2(20)
# POPULATION : NUMBER

SELECT c.name FROM city c
WHERE c.population >120000 AND c.countrycode = 'USA';
