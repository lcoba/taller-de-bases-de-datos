-- Comando para usar la base de datos AdventureWorks2022
-- Ejecuta este codigo primero
-- Recibiras este mensaje Commands completed successfully.
USE AdventureWorks2022

-- Una funcion es un "objeto" en la base de datos que nos retorna un valor despues de 
-- ejecutarla, este a su vez recibe parametros.
CREATE OR ALTER Function Person.ComoSeLLama (@idEmpleado int)
returns nvarchar(100) AS
BEGIN 
	DECLARE @nombre_ nvarchar(100);
	
	SELECT @nombre_ = CONCAT('Se llama: ', FirstName,'  ', LastName) FROM Person.Person WHERE BusinessEntityID = @IdEmpleado;
	return @nombre_;
END



-- Para usar la funcion debemos de usar de la siguiente forma 
SELECT Person.ComoSeLLama (234)