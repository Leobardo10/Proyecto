create database TechKnow

Use TechKnow

Create table Empleado(
Id_Empleado int identity(1,1) primary key not null ,
Nombre_Empleado varchar(50),
Apellido_Empleado varchar(50),
Correo_Empleado varchar(70),
Contra varchar(10),
Direccion varchar(100),
telefono int,
Fecha_Ingreso Datetime,
Estado bit default 1)

Create table proveedor(
Id_Proveedor int identity(1,1) primary key not null,
Nombre_Proveedor varchar(50),
Correo_Proveedor varchar(50),
Direccion varchar(100),
Telefono int,
Estado bit default 1)

Create table producto(
Id_Producto int identity(1,1) primary key not null,
Detalle varchar(50),
Cantidad int,
Costo_Unitario money,
Id_Proveedor int foreign key references proveedor(Id_Proveedor),
Estado bit default 1
)
Create table cliente(
Id_Cliente int identity(1,1) primary key not null,
Nombre_Cliente varchar(50),
Apellidos_Cliente varchar(50),
Fecha_Registro datetime,
Correo_Cliente varchar(50),
Direcion varchar(100),
Telefono int,
Estado bit default 1
)

Create table ventas(
Id_Venta int identity(1,1) primary key not null,
Id_Empleado int foreign key references Empleado(Id_Empleado),
Id_Cliente int foreign key references Cliente(Id_Cliente),
Id_Producto int foreign key references Producto(Id_Producto),
Cantidad int,
Costo money,
Subtotal money,
Estado bit default 1
)

Create table Detalles(
Id_Detalle int identity(1,1) primary key not null,
Id_venta int foreign key references ventas(Id_venta),
Total Money,
Estado bit default 1)


alter table Empleado add constraint UQ_Empleado_Correo unique
(Correo_Empleado);

alter table Cliente add constraint UQ_Cliente_Correo unique
(Correo_Cliente);

alter table Proveedor add constraint UQ_Proveedor_Correo unique
(Correo_Proveedor);

