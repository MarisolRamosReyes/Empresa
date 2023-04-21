create database EmpresaWebSite

use EmpresaWebSite

create Table Usuario
(
IdUsuario int identity(1,1),
Nombre varchar (15),
Edad int,
Correo varchar(max),
FechaNacimiento date
)
create procedure cargar
as begin
select * from Usuario
End

--CRUD: Create, Read, Update, Delete
create procedure sp_Create
@Nombre varchar (15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin 
insert into Usuario values (@Nombre, @Edad, @Correo, @Fecha)
end

create procedure sp_Read
@Id int 
as begin
select * from Usuario where IdUsuario=@Id
end

create procedure sp_Update
@Id int,
@Nombre varchar (15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin 
update Usuario set Nombre=@Nombre, Edad=@Edad, Correo=@Correo,FechaNacimiento=@Fecha
where IdUsuario=@Id
end

create procedure sp_Delete
@Id int 
as begin 
delete from Usuario where IdUsuario=@Id
end 

select * from Usuario

