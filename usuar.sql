create database ProyectoBecas;
use ProyectoBecas;
create table Becas(
	TipodeBeca int(11) auto_increment,
	Beca varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
	primary key (TipodeBeca)
);
create table InformacionUsuario(
	id_user int(11) auto_increment,
    correo varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
   	documento varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
    nombre varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
    apellido varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
    Direccion	varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
    TipodeBeca int(11),

	primary key (id_user),
	foreign key (TipodeBeca) references Becas(TipodeBeca)
);
