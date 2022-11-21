#RD0301
/*a. Write a query that returns the Customers with the contact titles in alphabetical order.*/
SELECT *
FROM Customers
ORDER BY ContactTitle;

#RD0302
/*b. Write a query that returns Customers sorted by the City in reverse alphabetical order*/
SELECT *
FROM Customers
ORDER BY City DESC;

#RD0303
/*c. Write a query that returns the Regions in reverse alphabetical order.*/
SELECT Region
FROM Customers
ORDER BY Region DESC;

SELECT *
FROM Region
ORDER BY RegionDescription DESC

