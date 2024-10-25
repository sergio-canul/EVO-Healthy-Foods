Create Database Healthy_Foods
Use Healthy_Foods
--- Usuario en general
Create Table Usuarios
(
	id_user int primary key Identity(1,1),
	email varchar(100) unique Not Null,
	password varchar(100) Not null,
	nombre varchar(100) not null,
	direccion Text not null
);
Create Table Empleados
(
	id_empleado int primary key identity(1,1),
	id_user int,
	cargo varchar(20),
	estado Varchar(10)
);
Create Table Vehiculos
(
	matricula varchar(20) primary key,
	modelo varchar(20) not null,
	marca varchar(20) not null
);
Create Table Zonas
(
	id_zona int primary key identity(1,1),
	nombre varchar(20),
	estado varchar(20),
	ciudad varchar(20),
	direccion_general varchar(20)
);
Create Table Sucursales
(
	id_sucursal int primary key identity(1,1),
	id_zona int,
	nombre varchar(40) not null,
	direccion text not null
);
Create Table Sucursales_Empleados
(
	id_sucursal int,
	id_empleado int
);
Create Table Vehiculos_Empleados
(
	matricula varchar(20),
	id_empleado int
);
Create Table Mensajes();
Create Table Notificaciones();
Create Table Comentarios();
Create Table Productos();
Create Table Pedidos();
Create Table Listas_compras();
Create Table Facturas();
Create Table aera();