 #RD0201
/*Insert a new Region named "Faraway" with id equal to 6.*/

INSERT INTO {Region} ({Region}.[RegionID],{Region}.[RegionDescription])
VALUES (6,'Faraway')


#RD0202
/*Insert a new Product named "Beach Ball" from Supplier with Id 1 and with Category 2. Leave
the rest of the attributes empty*./

INSERT INTO {Products} ({Products}.[ProductName], {Products}.[SupplierID], {Products}.[CategoryID])
VALUES ('Beach Ball', 1, 2)


#RD0203
/*Change the name of the Region "Faraway" to "Very Near". Note: The region inside of
Suppliers and Customers is a RegionId.*/

UPDATE {Region}
SET {Region}.[RegionDescription]='Very Near'
WHERE  {Region}.[RegionDescription]='Faraway'


#RD0204
/*Update the UnitsInStock of Products by adding it the value of the UnitsOnOrder. Then
update the UnitsInOrder to 0 (zero).*/

UPDATE {Products}
SET {Products}.[UnitsInStock]={Products}.[UnitsInStock] + {Products}.[UnitsOnOrder]
UPDATE {Products}
SET {Products}.[UnitsOnOrder]=0
WHERE UnitsOnOrder > 0


#RD0205
/*Delete Region "Eastern".*/
DELETE FROM {Region}
WHERE {Region}.[RegionDescription] LIKE 'Eastern'


#RD0206
/*Delete Category "Condiments".*/

DELETE FROM {Categories}
WHERE {Categories}.[CategoryName]='Condiments'
