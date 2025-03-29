﻿CREATE TABLE TIPOS_DATOS_ENTEROS(

ENTERO_1 INT,
ENTERO_2 BIGINT
)

CREATE TABLE TIPOS_DATOS_NUMERICOS(
NUMERICO_1 DECIMAL(10,6),
NUMERICO_2 FLOAT
)

CREATE TABLE TIPOS_DATOS_CARACTER(
CARACTER VARCHAR(20),
CARACTER_2 CHAR(7)
)

CREATE TABLE TIPOS_DATOS_nCHAR(
Charr nVARCHAR(20),
Charr2 nCHAR(7)
)

CREATE TABLE TIPOS_DATOS_FECHA2 (
    DATO DATE,         
    DATO_2 DATETIME,        
    DATO_3 TIME           
);

INSERT INTO TIPOS_DATOS_ENTEROS (ENTERO_1, ENTERO_2) VALUES (123, 9876543210);
INSERT INTO TIPOS_DATOS_ENTEROS (ENTERO_1, ENTERO_2) VALUES (456, 1234567890);

INSERT INTO TIPOS_DATOS_NUMERICOS (NUMERICO_1, NUMERICO_2) VALUES (9999.999999, 9876.5432);
INSERT INTO TIPOS_DATOS_NUMERICOS (NUMERICO_1, NUMERICO_2) VALUES (1234.567800, 1234.5678);


INSERT INTO TIPOS_DATOS_CARACTER (CARACTER, CARACTER_2) VALUES ('HOLA', 'Y');
INSERT INTO TIPOS_DATOS_CARACTER (CARACTER, CARACTER_2) VALUES ('FDGD', 't');

INSERT INTO TIPOS_DATOS_nCHAR (Charr, Charr2) VALUES (N'Hola 🌍', N'Char1');
INSERT INTO TIPOS_DATOS_nCHAR (Charr, Charr2) VALUES (N'S 😊', N'Char2');


INSERT INTO TIPOS_DATOS_FECHA2 (DATO, DATO_2, DATO_3) VALUES ('2025-03-28', '2025-03-28 20:52:00', '20:52:00');
INSERT INTO TIPOS_DATOS_FECHA2 (DATO, DATO_2, DATO_3) VALUES ('2024-12-25', '2024-12-25 18:30:00', '18:30:00');

DECLARE @H VARCHAR = 'HOL'
DECLARE @P DATE = '2005-04-24'
DECLARE @Q DECIMAL(10,4) = 11.5214

DECLARE @K INT = 5
DECLARE @Y INT = 6

SELECT @K + @Y AS SUMA
SELECT @K * @Y AS MULTI
SELECT @K / @Y AS DIVI
DECLARE @K INT = 5
DECLARE @Y INT = 6
SELECT 
    @K + @Y AS SUMA,           
    @K * @Y AS MULTIPLICACION,
    @K / @Y AS DIVISION   

--Hacer un procedimiento que este en la misma base de datos,  
--con referencia a Northwind, que reciba 1 parámetro, 
--y que devuelva los productos de la base de datos Northwind
--que el precio mayor al parámetro ingresado
 
USE Northwind;
GO

CREATE PROCEDURE [dbo].FNC_OBTNER_PRODUCTOS
@Precio DECIMAL(10, 5)
AS
BEGIN
    SELECT [ProductID],
           [ProductName],
           [UnitPrice]
    FROM [Northwind].[dbo].[Products]
    WHERE [UnitPrice] > @Precio;
END;
GO

EXECUTE FNC_OBTNER_PRODUCTOS @Precio= 200;