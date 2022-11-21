#RD0801
/* Using subqueries and/or set operators, list the product name and supplier id for all products
supplied by Exotic Liquids, Grandma Kelly's Homestead, and Tokyo Traders.*/

SELECT {Products}.[ProductName], {Products}.[SupplierID]
FROM {Products}
WHERE {Products}.[SupplierID] IN (SELECT {Suppliers}.[SupplierID]
                     FROM {Suppliers}
                     WHERE {Suppliers}.[CompanyName] = 'Exotic Liquids' OR 
                            {Suppliers}.[CompanyName] = 'Grandma Kelly''s Homestead' OR
                            {Suppliers}.[CompanyName] = 'Tokyo Traders')


#RD0802                                
/* Using subqueries and/or set operators, list all company names from France that do not have
any orders.*/

SELECT {Customers}.[CompanyName]
FROM {Customers}
WHERE {Customers}.[Country] LIKE 'France' 
    AND {Customers}.[CustomerID] NOT IN 
        (SELECT {Orders}.[CustomerID] 
         FROM {Orders})


#RD0803            
/* Insert a new Territory named "Farwest" which is of region "Faraway"*/
/* este primeiro query é para ver as alterações */
INSERT INTO {Region} ({Region}.[RegionID], {Region}.[RegionDescription])
VALUES (10,'Faraway')

INSERT INTO {Territories} (TerritoryID, TerritoryDescription, RegionID)
Values (98105, 'Farwest', (SELECT {Region}.[RegionID]
                           FROM {Region}
                           WHERE {Region}.[RegionDescription] = 'Faraway'))


#RD0804
/* Change all Territories to be from Region "Faraway"*/
/* este primeiro query é para ver as alterações */
INSERT INTO {Region} ({Region}.[RegionID], {Region}.[RegionDescription])
VALUES (10,'Faraway')

UPDATE {Territories}
SET {Territories}.[RegionID] =
    (SELECT {Region}.[RegionID]
    FROM {Region}
    WHERE {Region}.[RegionDescription] LIKE 'Faraway')
        

#RD0805        
/* Update the UnitPrice of all products of the category "Condiments" to be the current price
multiplied by 0.1*/

UPDATE {Products}
SET {Products}.[UnitPrice]={Products}.[UnitPrice]*0.1
WHERE {Products}.[CategoryID]=
    (SELECT {Categories}.[CategoryID]
    FROM {Categories}
    WHERE {Categories}.[CategoryName]='Condiments')


#RD0806
/* List the Name of the Countries that do not have Warehouses.*/

SELECT c.Name AS Country
FROM Country c
WHERE NOT EXISTS (SELECT w.ID
                  FROM Warehouse w
                  WHERE c.Id = w.CountryId);
        
          
#RD0807

SELECT t.Name AS TeacherName
FROM Teacher t
WHERE t.ID NOT IN (SELECT TeacherId
                   FROM Class);
                  
 RD0733 
SELECT Count({Products}.[ProductID]) , {Suppliers}.[Country]
FROM {Products}
LEFT JOIN {Order_Details} 
            ON {Order_Details}.[ProductID] = {Products}.[ProductID]
LEFT JOIN {Orders} 
             ON {Orders}.[OrderID] = {Order_Details}.[OrderID]
LEFT JOIN {Suppliers} 
            ON {Products}.[SupplierID] = {Suppliers}.[SupplierID]
LEFT JOIN {Customers} 
             ON {Customers}.[CustomerID] = {Orders}.[CustomerID]
WHERE {Suppliers}.[Country] = {Customers}.[Country]
GROUP BY {Suppliers}.[Country], {Customers}.[Country] 
              

                 
                 