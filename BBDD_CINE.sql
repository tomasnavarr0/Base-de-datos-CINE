
/*EJERCICIO 2*/
CREATE TABLE sede(
Ciudad VARCHAR(20) PRIMARY KEY, 
CantSalas VARCHAR(50));

CREATE TABLE pelicula(
Nombre VARCHAR(50) PRIMARY KEY,
Genero VARCHAR(30),
ATP VARCHAR(10),
Subtitulado VARCHAR(30))

CREATE TABLE sala(
CantButacas INT,
Ciudad VARCHAR(20),
NroSala INT PRIMARY KEY,
FOREIGN KEY (Ciudad) REFERENCES sede(ciudad))

CREATE TABLE funcion(
IDFuncion INT IDENTITY(1,1) PRIMARY KEY,
NroSala INT ,
Dia VARCHAR(20),
Horario VARCHAR(10),
NombrePelicula VARCHAR(50),
FOREIGN KEY (NombrePelicula) REFERENCES pelicula(Nombre),
FOREIGN KEY (NroSala) REFERENCES sala(NroSala))

CREATE TABLE butacas(
IDButacas INT IDENTITY(1,1) PRIMARY KEY,
NroButaca INT,
Sala INT,
FOREIGN KEY (Sala) REFERENCES sala(NroSala)) 

CREATE TABLE entradas(
IDentradas INT IDENTITY(1,1) PRIMARY KEY,
NroButaca INT,
IDFuncion INT,
FOREIGN KEY(IDFuncion) REFERENCES funcion(IDFuncion))

/* EJERCICIO 3*/
/*A*/
INSERT INTO sede
VALUES ('Rosario','3'),
('Cordoba','5'),
('La Plata','4')

/*B*/
SELECT * FROM sala
INSERT INTO Sala
VALUES (20,'Rosario',1),
(20,'Rosario',2),
(20,'Rosario',3),
(25,'Cordoba',4),
(25,'Cordoba',5),
(25,'Cordoba',6),
(25,'Cordoba',7),
(25,'Cordoba',8),
(30,'La Plata',9),
(30,'La Plata',10),
(30,'La Plata',11),
(30,'La Plata',12)

/*C*/
SELECT * FROM butacas
INSERT INTO butacas
VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),
(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),
(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),
(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),
(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5),(21,5),(22,5),(23,5),(24,5),(25,5),
(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),(21,6),(22,6),(23,6),(24,6),(25,6),
(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),(21,7),(22,7),(23,7),(24,7),(25,7),
(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(11,8),(12,8),(13,8),(14,8),(15,8),(16,8),(17,8),(18,8),(19,8),(20,8),(21,8),(22,8),(23,8),(24,8),(25,8),
(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(11,9),(12,9),(13,9),(14,9),(15,9),(16,9),(17,9),(18,9),(19,9),(20,9),(21,9),(22,9),(23,9),(24,9),(25,9),(26,9),(27,9),(28,9),(29,9),(30,9),
(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,10),(12,10),(13,10),(14,10),(15,10),(16,10),(17,10),(18,10),(19,10),(20,10),(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),
(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),(11,11),(12,11),(13,11),(14,11),(15,11),(16,11),(17,11),(18,11),(19,11),(20,11),(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(27,11),(28,11),(29,11),(30,11),
(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(9,12),(10,12),(11,12),(12,12),(13,12),(14,12),(15,12),(16,12),(17,12),(18,12),(19,12),(20,12),(21,12),(22,12),(23,12),(24,12),(25,12),(26,12),(27,12),(28,12),(29,12),(30,12)


/*SEGUIR COMPLETANDO CON TODAS LAS SALAS Y TODAS LAS BUTACAS*/

/*D*/
INSERT INTO pelicula
VALUES ('Argentina, 1985','Thriller/Drama','+16','Subtitulada'),
('Star Wars IV','Ciencia Ficcion','+13','Subtitulada'),
('IT','Terror','+16','Doblada'),
('Harry Styles','Documental','+3','Subtitulada'),
('Harry Potter y el Caliz de Fuego','Fantasia','+7','Subtitulada')

/*E*/
INSERT INTO funcion
VALUES (1,'26-10','21:30','Star Wars IV'),
(2,'29-10','8:30','Star Wars IV'),
(3,'25-10','16:30','Star Wars IV'),
(1,'11-11','16:30','Argentina, 1985'),
(4,'11-11','19:30','Argentina, 1985'),
(3,'24-10','16:30','IT'),
(2,'1-11','20:30','IT'),
(4,'11-11','15:30','Argentina, 1985'),
(1,'27-10','16:30','Harry Potter y el Caliz de Fuego'),
(3,'25-10','16:30','IT'),
(10,'25-10','11:30','Star Wars IV'),
(9,'26-10','15:30','Harry Potter y el Caliz de Fuego'),
(12,'28-10','1:30','Argentina, 1985'),
(10,'26-10','11:30','Harry Styles'),
(11,'27-10','12:30','Argentina, 1985'),
(5,'28-10','19:30','Star Wars IV'),
(7,'29-10','20:30','Star Wars IV'),
(8,'27-10','22:30','Harry Styles'),
(6,'29-10','18:30','Harry Potter y el Caliz de Fuego'),
(5,'26-10','23:30','Argentina, 1985')

SELECT * FROM pelicula
SELECT * FROM funcion

/*EJERCICIO 4*/
/*a. ¿Cuantas funciones hay en la sucursal La Plata (no importa si la funcion ya ocurrio o no)?*/
SELECT sala.Ciudad, COUNT(IDFuncion) AS CantidadFunciones
FROM funcion INNER JOIN sala ON funcion.NroSala=sala.NroSala
WHERE sala.Ciudad='La Plata'
GROUP BY Ciudad

/*b. ¿Cuales son las pelıculas en cartelera en una fecha determinada (fije la fecha que prefiera)
en la sucursal Cordoba?*/
SELECT pelicula.Nombre,funcion.Dia
FROM pelicula INNER JOIN funcion ON pelicula.Nombre=funcion.NombrePelicula
WHERE funcion.Dia='29-10' AND (funcion.NroSala>3 AND funcion.NroSala<9) 

/*c. ¿Cuales son los horarios disponibles para ver la pelıcula Argentina, 1985 en una fecha
determinada (fije la fecha) en la sucursal Rosario?*/
SELECT pelicula.Nombre,funcion.Dia,funcion.Horario,funcion.NroSala
FROM pelicula INNER JOIN funcion ON pelicula.Nombre='Argentina, 1985'
WHERE funcion.NroSala<4 AND funcion.Dia='27-10'

/*d. ¿Cuales son los horarios disponibles para ver la pelıcula Argentina, 1985 en una fecha
determinada (fije la fecha) para cada sucursal? Muestre estos resultados ordenados cronologicamente de forma creciente.*/
SELECT pelicula.Nombre,funcion.Dia,funcion.Horario,funcion.NroSala
FROM pelicula INNER JOIN funcion ON pelicula.Nombre='Argentina, 1985'
WHERE funcion.Dia='27-10'

/*e. ¿Cuales pelıculas de ciencia ficcion hay en cartelera la semana del 24 de octubre de 2022
en la sucursal Rosario?*/
SELECT pelicula.Nombre,funcion.Dia,funcion.Horario,pelicula.Genero,funcion.NroSala
FROM pelicula INNER JOIN funcion ON pelicula.Genero='Ciencia Ficcion' AND funcion.NombrePelicula=pelicula.Nombre
WHERE (funcion.NroSala<4) AND (funcion.Dia>='24-10' AND funcion.Dia<='31-10')


/*f. ¿Cuales son las butacas vendidas para ver Argentina, 1985 en Cordoba en una funcion
determinada (fije la funcion)?*/
SELECT * FROM entradas

INSERT INTO entradas
VALUES (5,1),(6,1),(8,1),(9,1),(10,1),(11,2),(13,2),(14,2),(15,2),(2,3),(3,3),(5,3),(4,4),(6,3),(7,3),
(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(6,4),(7,4),(5,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),
(6,5),(7,5),(5,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,6),(17,6),(18,6),(1,7),(6,7),(7,7),(5,7),(8,7),(9,7),(10,7),(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),
(17,7),(18,7),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(10,8),(11,8),(12,8),(13,8),(14,8),(15,9),(20,9),(17,9),(14,9),(13,9),(12,9)
,(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(10,10),(11,10),(12,10),(2,10),(3,12),(8,11),(12,15),(13,14),(11,13),(10,11),(12,15),(3,20),(5,13),(9,12),(8,10),(6,15),(15,14),
(16,14),(10,18),(12,16),(13,17),(1,19),(2,12),(6,19),(4,14),(3,17),(8,18),(10,13),(12,20),(5,15),(9,12),(11,10),(3,16),(5,17),(5,15),(12,17),(10,11),(1,13),(2,12),
(6,15),(5,10),(9,20),(7,18),(2,13),(6,19),(12,16),(16,15),(11,16),(12,12),(10,11),(1,13),(6,14),(8,11),(9,13),(10,12),(12,10),(3,22),(9,20),(1,13),(5,23),(2,24),(10,20),(16,17),(13,10),(12,11),
(11,13),(1,15),(2,17),(12,23),(6,24),(8,20),(3,22),(12,14),(12,16),(12,21),(12,13),(12,11),(1,10),(7,20),(8,24),(6,23),(2,20),(6,14),(12,15),(13,13),(12,10),(10,22),(1,20),
(3,22),(5,14),(6,20),(1,10),(11,12),(5,16),(6,15),(3,13),(8,14)

SELECT entradas.NroButaca AS ButVendida,funcion.NroSala,funcion.Horario,funcion.NombrePelicula
FROM entradas INNER JOIN funcion ON funcion.IDFuncion=entradas.IDFuncion
WHERE (funcion.NroSala>3 AND funcion.NroSala<9) AND funcion.Horario='23:30'

/*g. ¿Cuales son las butacas libres para ver Argentina, 1985 en Cordoba en una funcion determinada (fije la funcion)?*/

SELECT IDButacas, NroButaca
FROM butacas
WHERE Sala = (
    SELECT NroSala
    FROM funcion
    WHERE IDFuncion = 20
)
AND NroButaca NOT IN (
    SELECT NroButaca
    FROM entradas
    WHERE IDFuncion = 20
)


/*h. ¿Cuantas peliculas por genero estan o estuvieron en cartelera en el Cine Paraıso?*/
SELECT Genero, COUNT(Genero) AS CantGenero
FROM pelicula
GROUP BY Genero
ORDER BY CantGenero DESC

/*5  hacer una pequeña modificacion para
poder guardar informacion respecto al precio de las entradas. Determine que alteraciones serıa
conveniente realizar en las tablas en los siguientes casos*/

/*a. El precio de la entrada depende unicamente de la sucursal*/
ALTER TABLE sede
ADD PrecioEntrada INT

UPDATE sede
SET PrecioEntrada = 900
WHERE Ciudad='Cordoba'
UPDATE sede
SET PrecioEntrada = 950
WHERE Ciudad='Rosario'
UPDATE sede
SET PrecioEntrada = 850
WHERE Ciudad='La Plata'

SELECT * FROM sede

/*b. El precio de la entrada depende unicamente de la pelicula.*/

ALTER TABLE pelicula
ADD PrecioEntrada INT

SELECT * FROM pelicula

UPDATE pelicula
SET PrecioEntrada=900
WHERE Nombre='Star Wars IV'

UPDATE pelicula
SET PrecioEntrada=950
WHERE Nombre='Argentina, 1985'

UPDATE pelicula
SET PrecioEntrada=550
WHERE Nombre='Harry Potter y el Caliz de Fuego'

UPDATE pelicula
SET PrecioEntrada=875
WHERE Nombre='Harry Styles'

UPDATE pelicula
SET PrecioEntrada=750
WHERE Nombre='IT' 

/*c. El precio de la entrada depende unicamente de la ubicacion de la butaca*/

ALTER TABLE butacas
ADD PrecioEntrada INT

SELECT * FROM butacas

UPDATE butacas
SET PrecioEntrada=400
WHERE (NroButaca>0 AND NroButaca<10)

UPDATE butacas
SET PrecioEntrada=750
WHERE (NroButaca>=10 AND NroButaca<20)

UPDATE butacas
SET PrecioEntrada=900
WHERE (NroButaca>=20 AND NroButaca<31)

/*6*/
/* a. Determine el total recaudado por funcion*/
SELECT * FROM funcion
SELECT * FROM pelicula
SELECT * FROM entradas


SELECT SUM(pelicula.PrecioEntrada) AS TotalRecaudado, funcion.IDFuncion, funcion.NombrePelicula
FROM funcion
INNER JOIN pelicula ON funcion.NombrePelicula=pelicula.Nombre
INNER JOIN entradas ON funcion.IDFuncion=entradas.IDFuncion
GROUP BY funcion.IDFuncion, funcion.NombrePelicula


/*b. Determine el promedio recaudado por funcion para cada pelıcula. Es decir, si la pelıcula
Argentina, 1985 tuvo dos funciones, y en una recaudo 1000 pesos, y en la otra recaudo
3000 pesos, el promedio recaudado por funcion para esta pelıcula es 2000 pesos*/

SELECT COUNT(*) FROM funcion WHERE funcion.NombrePelicula = 'Harry Potter y el Caliz de Fuego' /* GENERALIZARLO */

/* Generalizar la anterior y desp pasar a esta */

SELECT ((SUM(pelicula.PrecioEntrada))/(SELECT COUNT(funcion.NombrePelicula) FROM funcion WHERE funcion.NombrePelicula=pelicula.Nombre)) AS RecaudacionPromedio, funcion.NombrePelicula, pelicula.PrecioEntrada
FROM funcion
INNER JOIN pelicula ON funcion.NombrePelicula=pelicula.Nombre
INNER JOIN entradas ON funcion.IDFuncion=entradas.IDFuncion
GROUP BY funcion.NombrePelicula, pelicula.Nombre,pelicula.PrecioEntrada


/*

ARGENTINA 6 FUNCIONES RECAUDACION = 7600 , output = 1266

IT 3 FUNCIONES, RECAUDACION 6000, output = 2000

Star Wars IV 6 funciones, recaudacion 11700, output = 1950

Harry Styles 2 funcoines, recaudacion 6125, output = 3062

Harry Potter y el Caliz de Fuego 3 funciones, recaudacion 4400, output = 1466

*/

SELECT SUM(pelicula.PrecioEntrada) AS RecaudacionPromedio, NombrePelicula FROM pelicula  
INNER JOIN funcion ON funcion.NombrePelicula = pelicula.Nombre
INNER JOIN entradas ON funcion.IDFuncion = entradas.IDFuncion
GROUP BY funcion.NombrePelicula

SELECT count(*) AS Division FROM funcion  GROUP BY NombrePelicula HAVING COUNT(*)>1 

/*
DECLARE @Recaudacion as INT
DECLARE @Division as INT
SELECT @Recaudacion =  ( SELECT SUM(pelicula.PrecioEntrada) FROM pelicula  ) 
SELECT @Division = (SELECT count(*) FROM funcion  GROUP BY NombrePelicula HAVING COUNT(*)>1 )
SELECT (@Recaudacion / @Division) as Recaudacion, funcion.NombrePelicula FROM funcion 


SELECT (SUM(pelicula.PrecioEntrada) / COUNT(funcion.NombrePelicula)) AS RecaudacionPromedio, funcion.NombrePelicula
FROM pelicula
INNER JOIN funcion ON funcion.NombrePelicula=pelicula.Nombre
INNER JOIN entradas ON funcion.IDFuncion=entradas.IDFuncion
GROUP BY funcion.NombrePelicula

*/

SELECT * FROM entradas
SELECT * FROM funcion
SELECT * FROM sala

/*c. Determine el porcentaje de entradas vendidas por funcion, y muestre pelıcula, sucursal,
hora y dıa, solo para aquellas en las que se vendio menos del 50 %*/

SELECT (COUNT(funcion.NroSala)) AS EntradasVendidas, funcion.NroSala,funcion.Dia,funcion.Horario,funcion.NombrePelicula, ((COUNT(funcion.NroSala)*100)/sala.CantButacas) AS Porcentaje
FROM funcion
INNER JOIN entradas ON entradas.IDFuncion=funcion.IDFuncion
INNER JOIN sala ON sala.NroSala=funcion.NroSala
GROUP BY funcion.NroSala,funcion.Dia,funcion.Horario,funcion.NombrePelicula,sala.CantButacas
HAVING ((COUNT(funcion.NroSala)*100)/sala.CantButacas)<50

SELECT * FROM entradas 
SELECT * FROM funcion
SELECT * FROM sala

/* d. Determine, para cada pelıcula, cual fue la funcion que mas recaudo.*/
SELECT SUM(pelicula.PrecioEntrada) AS Recaudado, funcion.NombrePelicula, funcion.IDFuncion
FROM funcion
INNER JOIN pelicula ON funcion.NombrePelicula=pelicula.Nombre
INNER JOIN entradas ON funcion.IDFuncion=entradas.IDFuncion
WHERE funcion.NombrePelicula=pelicula.Nombre
GROUP BY funcion.NombrePelicula, funcion.IDFuncion
ORDER BY 1 DESC
LIMIT 1

SELECT SUM(p.PrecioEntrada) AS Recaudado, f.NombrePelicula, f.IDFuncion
FROM funcion f
INNER JOIN pelicula p ON f.NombrePelicula = p.Nombre
INNER JOIN entradas e ON f.IDFuncion = e.IDFuncion
GROUP BY 2, 3
ORDER BY 1 DESC
LIMIT 1;

SELECT TOP 10 WITH TIES SUM(p.PrecioEntrada) AS Recaudado, f.NombrePelicula, f.IDFuncion
FROM funcion f
INNER JOIN pelicula p ON f.NombrePelicula = p.Nombre
INNER JOIN entradas e ON f.IDFuncion = e.IDFuncion
GROUP BY f.NombrePelicula, f.IDFuncion
ORDER BY Recaudado DESC;


SELECT * FROM funcion
SELECT * FROM pelicula
