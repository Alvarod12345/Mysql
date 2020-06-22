-- se le añade una nueva columna ventas a la tabla libros
ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL;

-- se añade una nueva columna stock con el valor por default 10
ALTER TABLE  libros ADD stock INT UNSIGNED NOT NULL DEFAULT 10;

-- se elimina la columna de una tabla
ALTER TABLE libros DROP COLUMN ventas;

-- Renombrar la tabla usuarios por users.
ALTER TABLE usuarios RENAME users;

-- Agregar a la tabla usuarios, la columna email de tipo VARCHAR con máximo de 50 caracteres.
ALTER TABLE usuarios ADD email VARCHAR(50);

-- Agregar a la tabla usuarios, la columna email, validando su presencia.
ALTER TABLE usuarios ADD email VARCHAR(50) NOT NULL DEFAULT '';

-- Agregar a la tabla usuarios, la columna email, validando su valor único.
ALTER TABLE tabla ADD columna VARCHAR(50) UNIQUE;

-- Modificar el tipo de dato de la columna teléfono, (tabla usuarios) de INT a VARCHAR, máximo 50 caracteres.
ALTER TABLE usuarios MODIFY telefono VARCHAR(50);

-- Generar una llave primaria a la tabla usuarios.
ALTER TABLE usuarios ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (id);

-- Agregar una llave foranea a la tabla usuarios, con referencia a la tabla grupos.
ALTER TABLE usuarios ADD FOREIGN KEY(grupo_id) REFERENCES grupos(grupo_id);

-- Eliminar la llave foranea grupo_id de la tabla usuarios.
ALTER TABLE usuarios DROP FOREIGN KEY grupo_id;
SELECT * FROM libros;