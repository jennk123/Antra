USE AdventureWorks2019;

-- 1
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product;

-- 2
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice = 0;

-- 3
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color is NULL;

-- 4
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color is NOT NULL;

-- 5
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color is NOT NULL AND ListPrice > 0;

-- 6
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE color is NOT NULL;

-- 7
SELECT 'NAME: '+ Name + ' -- COLOR: '+ Color AS 'Name And Color'
FROM Production.Product
WHERE color is NOT NULL;

-- 8
SELECT ProductID, Name
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500;

-- 9
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color IN ('blue', 'black');

-- 10
SELECT *
--ProductID, Name, Color
FROM Production.Product
WHERE Name LIKE 'S%';

-- 11
SELECT Name, ListPrice
FROM Production.Product
ORDER BY Name;

-- 12
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%' OR Name LIKE 'S%'
ORDER BY Name;

-- 13
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'SPO%[^K]' 
ORDER BY Name;

-- 14
SELECT DISTINCT Color
FROM Production.Product 
WHERE Color is NOT NULL
ORDER BY 1 DESC;

-- 15
SELECT DISTINCT ProductSubcategoryID, Color
FROM Production.Product
WHERE ProductSubcategoryID is NOT NULL AND Color is NOT NULL;

-- 16
SELECT ProductSubCategoryID
      , LEFT([Name],35) AS [Name]
      , Color, ListPrice 
FROM Production.Product
WHERE  
	  ListPrice BETWEEN 1000 AND 2000
	  OR (ProductSubcategoryID = 1
	  AND Color IN ('Red', 'Black'))
ORDER BY ProductID
