-- Comando para usar la base de datos AdventureWorks2022
-- Ejecuta este codigo primero
-- Recibiras este mensaje Commands completed successfully.
USE AdventureWorks2022

-- SELECT para mostrar todos los campos de todos los registros de la tabla Person.Person
SELECT * FROM Person.Person

-- SELECT para mostrar los campos BusinessEntityID, FirstName, MiddleName y LastName
-- de la tabla Person.Person donde el BusinessEntityName es igual a 22
SELECT BusinessEntityID, FirstName, MiddleName, LastName 
	FROM Person.Person
		WHERE BusinessEntityID = 262


-- SELECT para mostrar los campos/columnas de la tabla Person.Person
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Person'

-- JOINS de las tablas Person.Person, Person.Address y 
-- Person.BussinessEntityAddress 
SELECT * 
	FROM Person.Person PP 
	INNER JOIN Person.BusinessEntityAddress PB ON PP.BusinessEntityID = PB.BusinessEntityID
	INNER JOIN Person.Address PA ON PB.AddressID = PA.AddressID
		WHERE PP.BusinessEntityID = 262


-- Mismo SELECT que el anterior pero solamente mostrando los datos 
-- BussinessEntityID, FirsName, LastName, AddressLine1, City
SELECT PP.BusinessEntityID, PP.FirstName, PP.LastName, PA.AddressLine1, PA.City
	FROM Person.Person PP 
	INNER JOIN Person.BusinessEntityAddress PB ON PP.BusinessEntityID = PB.BusinessEntityID
	INNER JOIN Person.Address PA ON PB.AddressID = PA.AddressID
		WHERE PP.BusinessEntityID = 262
