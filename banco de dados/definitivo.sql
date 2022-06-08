create database projetoindividual;

use projetoindividual;




CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);



select * from usuario;

create table carro (
idCarro int primary key auto_increment,
modeloCarro varchar(45)
);
select * from carro;
insert into carro values
(null,'lancer'),
(null,'rx7'),
(null,'r34');

select * from carro;

create table likes (
fkcarro int,
foreign key (fkcarro) references carro(idCarro),
primary key (fkcarro),
likes int
);

insert into likes(fkcarro,likes) values
(1,0),
(2,0),
(3,0);


select * from usuario;
insert into usuario values
(1, 'felipe', 'felipe@gmail.com', '123');

select * from likes;

select modelocarro, count(likes) from likes join carro on idcarro = fkcarro group by modelocarro;


select * from likes join carro on idcarro = fkcarro join usuario on id = fkusuario;

update likes set likes = likes + 1 where fkcarro = 1 and fkusuario = 2;


desc likes;

Select modelocarro as carro, sum(likes) from carro join likes on fkcarro = idcarro group by modelocarro;
Select sum(likes) as Votos from carro join likes on fkcarro = idCarro group by modelocarro;

select * from usuario;