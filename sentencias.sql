-- tabla autores


-- select database(); -  ver todas las bd 
-- use libreria; - usas la bd libreria
-- show columns from autores = desc autores - mostrar las columnas de la tabla autores
-- show tables; muestra la tablas creadas en la bd
-- create table usuarios like autores; - creara una tabla usuarios con los mismos campos de autores


DROP DATABASE IF EXISTS libreria;
CREATE DATABASE libreria;

USE libreria;

CREATE TABLE  autores(
    autor_id int,
    nombre varchar(25),
    apellido varchar(25),
    genero char(1), -- m o f
    fecha_nacimiento date,
    pais_origen varchar(40)

);

insert into autores (autor_id,nombre,apellido,genero,fecha_nacimiento,pais_origen) 
values  (1,'bob','esponja','M','1998-01-25','Peru'),
        (2,'patricio','star','M','1998-01-30','Mexico'),
        (3,'Arenita','Sand','F','1998-03-15','Colombia'),
        (4,'Don','Cangrejo','M','1990-07-20','Usa');


select * from autores;