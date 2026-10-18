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