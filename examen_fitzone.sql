drop table socios;

create table socios( 
id_socio int,
nombres varchar(50) NOT NULL, 
apellidos varchar(50) NOT NULL, 
edad int NOT NULL, 
fecha_registro varchar(10) NOT NULL,
activo BOOLEAN NOT NULL,

constraint socios_pk primary key(id_socio) 
) 

SELECT * FROM socios;

--insertar 5 registros variados con diferentes edades con fechas de registro a lo largo del 2026 un socio ocn activo false 
insert into socios( 
id_socio, 
nombres, 
apellidos, 
edad, 
fecha_registro,
activo
)values
(1, 'Cynthia', 'Cacuango', 29, '2026-05-20', true),
(2, 'Tommy', 'Flores', 26, '2026-03-26', false),
(3, 'Damaris', 'Pullas', 9, '2026-02-14', true),
(4, 'Johann', 'Pujota', 19, '2026-08-12', false),
(5, 'Alfredo', 'Valencia', 50, '2026-05-20', true);

SELECT * FROM socios;

SELECT nombres, apellidos, edad FROM socios WHERE activo = true AND edad > 18;
SELECT * FROM socios WHERE fecha_registro > '2026-02-01'; 
SELECT * FROM socios ORDER BY edad DESC;

ALTER TABLE socios ADD COLUMN email varchar(100);

SELECT * FROM socios;

UPDATE socios SET email = 'correocynthia@gmail.com' WHERE id_socio = 1;
UPDATE socios SET email = 'tommycorreo@gmail.com' WHERE id_socio = 2;
UPDATE socios SET email = 'emaildamaris@gmail.com' WHERE id_socio = 3;
UPDATE socios SET email = 'johannp@gmail.com' WHERE id_socio = 4;
UPDATE socios SET email = 'alfrecorreo@gmail.com' WHERE id_socio = 5;



