create database motadrop2;
use motadrop2;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);



select * from usuario;

create table tenis (
idTenis int primary key auto_increment,
modeloTenis varchar(45),
corTenis varchar(45)
);
select * from tenis;
insert into tenis values
(2, 'Airmax 95 ', 'Cinza e Azul'),
(3, 'Air Jordan 1 Low', 'Amarelo'),
(4, 'Yeezy 700 Wave Runner', 'Cinza'),
(5, 'Yeezy 350 Beluga', 'Cinza e Laranja'),
(6, 'Air Force 1 Low CactusJack', 'Marrom, Azul e Roxo');

insert into tenis values 
(1, 'Vapormax Evo', 'Cinza');

select * from tenis;

create table likes (
fkTenis int,
foreign key (fkTenis) references Tenis(idTenis),
fkUser int,
foreign key (fkUser) references usuario(id),
primary key (fkTenis, fkUser),
likes int
);


alter table likes drop constraint likes_ibfk_1;

select * from usuario;
insert into usuario values
(1, 'larissa', 'larissa@gmail.com', 'senha123');
select*from likes;

select count(likes) from likes join tenis on idTenis = fkTenis group by modeloTenis;


select * from likes join tenis on idTenis = fkTenis join usuario on id = fkUser;

update likes set likes = likes + 1 where fkTenis = 1 and fkUser = 2;


desc likes;

Select modeloTenis as Tenis, sum(likes) from tenis join likes on fkTenis = idTenis group by modeloTenis;
Select sum(likes) as Votos from tenis join likes on fkTenis = idTenis group by modeloTenis;