-- Comando para usar la base de datos AdventureWorks2022
-- Ejecuta este codigo primero
-- Recibiras este mensaje Commands completed successfully.
USE AdventureWorks2022

-- Crea o modifica la vista Person.vwNombresDirecciones 
-- Basado en el query join que esta despues del AS 
CREATE OR ALTER VIEW Person.vwNombresDirecciones AS
SELECT PP.BusinessEntityID, PP.FirstName, PP.LastName, PA.AddressLine1, PA.City
	FROM Person.Person PP 
	INNER JOIN Person.BusinessEntityAddress PB ON PP.BusinessEntityID = PB.BusinessEntityID
	INNER JOIN Person.Address PA ON PB.AddressID = PA.AddressID
		
-- Una vez ejecutado el codigo anterio que crea la vista Person.vwNombresDirecciones
-- Podemos hacer select a la vista como si fuera una tabla
SELECT * FROM Person.vwNombresDirecciones







