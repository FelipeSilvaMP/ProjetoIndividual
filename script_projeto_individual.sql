create database projeto;

use projeto;

create table cadastro(
idCadastro int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
celular varchar(45),
senha varchar(45)
);

insert into cadastro values
(null, 'felipe', 'pereira', 'felipe.pereira@gmail.com', '119987320011', '123');

create table carro(
idcarro int primary key auto_increment,
marca varchar(45),
modelo varchar(45),
ano date
)auto_increment = 100;
	
insert into carro values
(null, 'fiat', 'palio', '2016-12-20');

create table login(
idLogin int primary key auto_increment,
email varchar(45),
senha varchar(45),
fkcarro int,
foreign key (fkcarro) references carro(idcarro),
fkcadastro int,
foreign key (fkcadastro) references cadastro(idcadastro)
)auto_increment = 1000;

insert into login values 
(null, 'felipe.pereira@gmail.com', '123', null, null);

create table forum(
idForum int primary key auto_increment,
titulo varchar(45),
relato varchar(45),
fklogin int,
foreign key (fklogin) references login(idlogin)
)auto_increment = 100000;

insert into forum values
(null, 'teste', 'teste2', null);