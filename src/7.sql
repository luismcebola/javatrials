#RD0501
/* Write a query to get the Product name and whether to order the product or not for the
products that are almost out of stock: If the UnitsInStock is less than 20 then return the text
“Order Now” otherwise return an empty text “”.*/

SELECT {Products}.[ProductName], CASE
                                     WHEN {Products}.[UnitsInStock]<20 THEN 'Order Now'
                                     ELSE ''
                                END
FROM {Products}


#RD0502
/* Write a query to get the Product name and its value in stock (multiply the UnitPrice by
the UnitInStock) and give it the name ValueInStock.*/

SELECT {Products}.[ProductName], {Products}.[UnitsInStock]*{Products}.[UnitPrice] AS ValueinStock
FROM {Products}


#RD0503
/* Write a query to get the maximum value of the UnitPrice.
Give it the name MaxUnitPrice.*/

SELECT MAX({Products}.[UnitPrice]) AS MaxUnitPrice
FROM  {Products}


#RD0504
/* Write a query to get the minimum value of the UnitPrice.
Give it the name MinUnitPrice.*/

SELECT MIN({Products}.[UnitPrice]) AS MinUnitPrice
FROM  {Products}


#RD0505
/* Write a query to get the average value of the UnitPrice.
Give it the name AvgUnitPrice.*/

SELECT AVG({Products}.[UnitPrice]) AS AvgUnitPrice
FROM  {Products}


#RD0506
/* Write a query to get the sum of the number of units in stock.
Give it the name SumUnitsInStock.*/

SELECT SUM({Products}.[UnitsInStock]) AS SumUnitsInStock
FROM  {Products}


#RD0507
/* Write a query to get the total number of Products.
Give it the name NumberOfProducts.*/

SELECT COUNT(1) AS NumberOfProducts
FROM {Products};


#RD0508
/*Write a query to get the maximum value of the UnitPrice, the minimum value of the
UnitPrice, the average value of the UnitPrice, the sum of the number of units in stock, and
the total number of Products. Only take into account Products for which there is stock.*/

SELECT MAX({Products}.[UnitPrice]), MIN({Products}.[UnitPrice]), AVG({Products}.[UnitPrice]), Sum({Products}.[UnitsInStock]), COUNT(1)
FROM {Products}
WHERE {Products}.[UnitsInStock]>0


#RD0509
/* Write a query that counts how many Customers there are for each ContactTitle.*/

SELECT COUNT(1), {Customers}.[ContactTitle]
FROM {Customers}
GROUP BY {Customers}.[ContactTitle]


#RD0510
/* Write a query that counts how many Customers from France there are for each
ContactTitle.*/

SELECT COUNT(1), {Customers}.[ContactTitle]
FROM {Customers}
WHERE {Customers}.[Country] LIKE 'France'
GROUP BY {Customers}.[ContactTitle]


#RD0511
/* Write a query that counts how many Customers there are with a certain ContactTitle
in a certain Country. Show the ContactTitle, the Country and the number of
customers. Only return records where the number of customers is greater than 2*/

SELECT COUNT(1), {Customers}.[ContactTitle], {Customers}.[Country]
FROM {Customers}
GROUP BY {Customers}.[ContactTitle], {Customers}.[Country]
HAVING COUNT(1)>2


#RD0512
/*Write a query that returns the existing contact titles of the Customers, with no repetitions.*/

SELECT DISTINCT {Customers}.[ContactTitle]
FROM {Customers}


#RD0513
/* Write a query that returns the existing contact's titles of the Customers, with no repetitions
in alphabetical order.*/

SELECT DISTINCT {Customers}.[ContactTitle]
FROM {Customers}
ORDER BY {Customers}.[ContactTitle] ASC


#RD0514
/* Write a query that returns the contact's title and name from the Customers, with no repetitions and ordered by the contact's title and name.*/

SELECT DISTINCT {Customers}.[ContactTitle], {Customers}.[ContactName]
FROM {Customers}
ORDER BY {Customers}.[ContactTitle], {Customers}.[ContactName] ASC

#RD0515
/* Write a query that returns the total number of different contact titles of Customers*/

SELECT COUNT(DISTINCT {Customers}.[ContactTitle])
FROM {Customers}