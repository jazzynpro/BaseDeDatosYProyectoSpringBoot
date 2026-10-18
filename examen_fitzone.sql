drop table socios;

create table socios( 
id_socio INT,
nombres varchar(50) NOT NULL, 
apellidos varchar(50) NOT NULL, 
edad INT NOT NULL, 
fecha_registro varchar(10) NOT NULL,
activo BOOLEAN NOT NULL,

constraint socios_pk primary key(id_socio) 

) 