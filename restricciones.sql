
-- no permitiran nulos en las columnas de la tabla

--valor positivo(unsigned) no nulo

--nos da la full fecha al registrarse (current_timestamp)

--modifica la columna de la tabla libros
--alter table libros add FOREIGN KEY (autor_id) REFERENCES autores(autor_id) ON DELETE CASCADE
--TRUNCATE table libros; resetea y elmina todos los registros, los autoincrement empieza del comienzo


        DROP DATABASE IF EXISTS libreria;
        CREATE DATABASE libreria;
        USE libreria;

        CREATE TABLE autores(
            autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
            nombre varchar(25) NOT NULL,
            apellido varchar(25) NOT NULL,
            seudonimo varchar(50) UNIQUE,
            genero ENUM('M','F'), -- m o f
            fecha_nacimiento date NOT NULL,
            pais_origen varchar(40) NOT NULL,
            fecha_creacion datetime DEFAULT CURRENT_TIMESTAMP

        );

        CREATE TABLE libros(
            libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
            autor_id INT UNSIGNED NOT NULL,
            titulo VARCHAR(50) NOT NULL,
            descripcion VARCHAR(250),
            paginar INTEGER UNSIGNED,
            fecha_publicacion DATE NOT NULL,
            fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (autor_id) REFERENCES autores(autor_id) ON DELETE CASCADE
        );

        insert into autores (nombre,apellido,seudonimo,genero,fecha_nacimiento,pais_origen) 
        values  ('lola','lila','loli','f','1998-01-25','Peru'),
                ('lola','lila','lola','f','1998-01-25','Peru');
        
        insert into libros (autor_id,titulo,fecha_publicacion)
        values  (1, 'educacion','2018-04-24'),
                (1, 'm learning','2017-06-12'),
                (2, 'Deep learning','2016-12-17');

        SELECT * FROM autores;
        SELECT * FROM libros;
