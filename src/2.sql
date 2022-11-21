#RD0101
/*a. Write a query to get all Products.*/
SELECT *
FROM Products;

#RD0102
/*b. Write a query to get current (not discontinued) Product list.*/
SELECT *
FROM Products
WHERE Discontinued = 1;

#RD0103
/*c. Write a query to get the Products whose unit price is greater than 20.*/
SELECT *
FROM Products
WHERE UnitPrice > 20;

#RD0104
/*d. Write a query to get the Products whose unit price is equal to 21.*/
SELECT *
FROM Products
WHERE UnitPrice = 21;

#RD0105
/*e. Write a query to get the Products whose unit price is greater or equal to 20 but less or
equal to 50.*/
SELECT * 
FROM Products
WHERE UnitPrice >= 20 AND UnitPrice <= 50;

#RD0106
/*f. Write a query to get the Products that have “Queso” in their names.*/
SELECT *
FROM Products
WHERE ProductName LIKE '%queso%';

#RD0107
/*g. Write a query to get the Customers that have “Sales” in their contact’s title.*/
SELECT * 
FROM Customers
WHERE ContactTitle LIKE '%sales%';

#RD0108
/*i. Write a query to get the Customers whose contact’s title starts with “Sales”.*/
SELECT * 
FROM Customers
WHERE ContactTitle LIKE 'sales%';

#RD0109
/*j. Write a query to get the Products that have “beer” or “bier” in their names.*/
SELECT *
FROM Products
WHERE ProductName LIKE 'beer' OR ProductName LIKE 'bier'

#RD0110
/*k. Write a query to get the Products whose ProductId is 1 or 2 or 5.*/
SELECT *
FROM Products
WHERE ProductID=1 OR ProductID=2 OR ProductID=5

#RD0111
/*l. Write a query to get the Products whose ProductId is 1 nor 2 nor 5.*/
SELECT *
FROM Products
WHERE ProductID <> 1 AND ProductID <> 2 AND ProductID <> 5

#RD0112
/*m. Write a query to get the Products whose unit price is greater than 21 and have some units in
stock.*/
SELECT *
FROM Products
WHERE UnitPrice > 21 and UnitsInStock > 0;

#RD0113
/*m. Write a query to get the Products whose quantity per unit is “24 - 12 oz bottles” and the unit
price is greater than 15 and also the Products whose units in stock are less than 10.*/
SELECT *
FROM Products
WHERE (QuantityPerUnit = '24 - 12 oz bottles' AND UnitPrice > 15) OR UnitsInStock < 10; 