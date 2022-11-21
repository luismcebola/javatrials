#RD0401
/*a Write a query to get the Product's name and quantity per unit.*/
SELECT ProductName, QuantityPerUnit
FROM Products;

#RD0402
/*b. Write a query to get the discontinued Product list (ProductID and Name).*/
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 1;

#RD0405
/*c. Write a query that returns the possible contact titles of the Customers in alphabetical order.*/
SELECT DISTINCT ContactTitle
FROM Customers
ORDER BY ContactTitle ASC

#RD0406
/*d. Write a query that returns the address from the Customers sorted by the City in reverse
alphabetical order.*/
SELECT Address
FROM Customers
ORDER BY City DESC

#RD0407
/*e. Write a query that returns the region's names in reverse alphabetical order.*/
SELECT Region
FROM Customers
ORDER BY Region DESC

SELECT RegionDescription
FROM Region
ORDER BY RegionDescription DESC


#RD0403
/*f. Describe the query and what would be the result of getting the name and plural of all
products.*/
SELECT Name, Plural
FROM Product

Apple Apples
Orange Oranges
... ...

#RD0404
/*g. Describe the query and what would be the result of getting the plural of the Orange.*/
SELECT Plural
FROM Product
WHERE Name='Orange'

Oranges