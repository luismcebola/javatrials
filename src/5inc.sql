#RD0701
/*a List the product name and supplier id for all products supplied by Exotic Liquids, Grandma

SELECT {Products}.[ProductName], {Suppliers}.[CompanyName]
FROM {Products}
INNER JOIN {Suppliers} ON {Products}.[SupplierID]={Suppliers}.[SupplierID]
WHERE {Suppliers}.[CompanyName]='Exotic Liquids' OR {Suppliers}.[CompanyName]='Tokyo Traders' OR {Suppliers}.[CompanyName]='Grandma Kelly''s Homestead'


#RD0702
/*b List all products by name that are in the Seafood category.*/

SELECT {Products}.[ProductName]
FROM {Products}
INNER JOIN {Categories} ON {Products}.[CategoryID]={Categories}.[CategoryID]
WHERE {Categories}.[CategoryName]='Seafood'


#RD0703
/*c List all company names from France with the Id of the Orders that they made (if it exists).*/

SELECT {Customers}.[CompanyName],{Orders}.[OrderID]
FROM {Customers}
INNER JOIN {Orders} ON {Orders}.[CustomerID]={Customers}.[CustomerID]
WHERE {Customers}.[Country]='France'


#RD0705
/*d List the last name of the employees that report to someone. For each of these employees
show also the last name of the person to whom the employee reports.*/

SELECT {Employees}.[LastName] AS emp, Rep.[LastName] AS boss
FROM {Employees}
INNER JOIN {Employees} AS Rep ON {Employees}.[ReportsTo]=Rep.[EmployeeID]


#RD0706
/*e List all companies by name that sell products in CategoryID 8.*/

SELECT DISTINCT {Suppliers}.[CompanyName]
FROM {Suppliers}
INNER JOIN {Products} ON {Products}.[SupplierID]={Suppliers}.[SupplierID]
WHERE {Products}.[CategoryID]=8


#RD0707
/*f List all companies by name that sell products in the Seafood category.*/

SELECT DISTINCT {Suppliers}.[CompanyName]
FROM {Suppliers}
INNER JOIN {Products} ON {Products}.[SupplierID]={Suppliers}.[SupplierID]
INNER JOIN {Categories} ON {Products}.[CategoryID]={Categories}.[CategoryID]
WHERE {Categories}.[CategoryName] LIKE 'Seafood'


#RD0708
/*g List the Order ID, the name of the company that placed the order, and the first and last
name of the associated employee. Only show orders placed after January 1, 1998 that
shipped after they were required. Sort by Company Name.*/

SELECT {Orders}.[OrderDate], {Customers}.[CompanyName], {Employees}.[FirstName], {Employees}.[LastName]
FROM {Orders}
INNER JOIN {Customers} ON {Customers}.[CustomerID] = {Orders}.[CustomerID]
INNER JOIN {Employees} ON {Employees}.[EmployeeID] = {Orders}.[EmployeeID]
WHERE {Orders}.[OrderDate] > '1998' AND {Orders}.[ShippedDate]>{Orders}.[RequiredDate]
ORDER BY {Customers}.[CompanyName]


#RD0709
/*h List which products are provided by which suppliers.*/

SELECT DISTINCT {Products}.[ProductName], {Suppliers}.[CompanyName]
FROM {Products}
INNER JOIN {Suppliers} ON {Suppliers}.[SupplierID] = {Products}.[SupplierID]


#RD0710
/*i List the order ids and the associated employee names for orders that shipped after the required date.*/

SELECT {Orders}.[OrderID], {Employees}.[FirstName], {Employees}.[LastName]
FROM {Orders}
INNER JOIN {Employees} ON {Employees}.[EmployeeID] = {Orders}.[EmployeeID]
WHERE {Orders}.[ShippedDate] > {Orders}.[RequiredDate]


/*Expressions and Conditional Expressions */
/* Write a query to get the Product name and whether to order the product or not for the
products that are almost out of stock: If the UnitsInStock is less than 20 then return
the text “Order Now” otherwise return an empty text “”.*/

SELECT *
FROM Products;

SELECT ProductName, CASE WHEN UnitsInStock < 20 THEN 'Order Now' ELSE '' END AS OrderNow
FROM Products;

/*b. Write a query to get the Product name and its value in stock (multiply the UnitPrice by
the UnitInStock) and give it the name ValueInStock.*/

SELECT ProductName, UnitPrice * UnitsInStock AS ValuesInStock
FROM Products;

/*AGGREGATE FUNCTIONS */
/*Write a query to get the maximum value of the UnitPrice.
Give it the name MaxUnitPrice.*/

SELECT max(UnitPrice) AS MaxUnitPrice
FROM Products;

/*b. Write a query to get the minimum value of the UnitPrice.
Give it the name MinUnitPrice.*/

SELECT min(UnitPrice) AS MinUnitPrice
FROM Products;

/*c. Write a query to get the average value of the UnitPrice.
Give it the name AvgUnitPrice.*/

SELECT avg(UnitPrice) AS AvgUnitPrice
FROM Products;

/*d. Write a query to get the sum of the number of units in stock.
Give it the name SumUnitsInStock.*/

SELECT sum(UnitsInStock) AS SumUnitsInStock
FROM Products;

/*e. Write a query to get the total number of Products.
Give it the name NumberOfProducts.*/
SELECT *
FROM Products;

SELECT count(*) AS NumberOfProducts
FROM Products;

/*f. Do items a. to e. in a single query with multiple columns, but only taking into account
Products for which there is stock.*/

Select max(UnitPrice) AS MaxUnitPrice, min(UnitPrice) AS MinUnitPrice, avg(UnitPrice) AS AvgUnitPrice, sum(UnitsInStock) AS SumUnitsInStock, count(*) AS NumberOfProducts
FROM Products;

/* GROUPING DATA */
/* a. Write a query that counts how many Customers there are for each ContactTitle.*/
SELECT *
FROM Customers;

SELECT count(CustomerID) AS CustomersByContactTitle
FROM Customers
GROUP BY ContactTitle;

/*b. Write a query that counts how many Customers from France there are for each
ContactTitle.*/

SELECT count(CustomerID) AS FrenchCustomersByContactTitle
FROM Customers
WHERE Country = 'France'
GROUP BY ContactTitle;

/*c. Write a query that counts how many Customers there are with a certain ContactTitle
in a certain Country. Show the ContactTitle, the Country and the number of
customers. Only return records where the number of customers is greater than 2*/

SELECT ContactTitle, Country, count(CustomerID) AS CustomerByContactTitle
FROM Customers
GROUP BY ContactTitle, Country
HAVING count(CustomerID) >= 2;

/* DISTINCT */

/*Write a query that returns the possible contact’s titles of the Customers, with no
repetitions.*/

SELECT DISTINCT ContactTitle
FROM Customers;


/*b. Write a query that returns the possible contact’s titles of the Customers, with no
repetitions in alphabetical order.*/

SELECT DISTINCT ContactTitle
FROM Customers
ORDER BY ContactTitle;

/*c. Write a query that returns the contact’s title and name from the Customers ordered by
the contact’s title and name.*/
SELECT *
FROM Customers;

SELECT ContactTitle, ContactName
FROM Customers
ORDER BY ContactTitle, ContactName

/*d. Write a query that returns the total number of different contact titles of Customers*/
SELECT count(DISTINCT ContactTitle) AS NumberContactTitle
FROM Customers;

