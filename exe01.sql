select @@version;

create database rh;

use rh;

create table rh (

id bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
idade int not null,
salario decimal (10, 2) not null,
primary key (id)
);

insert into rh (nome,cargo,idade,salario) values ("Pedro", "analista", 35, 4000.00);
insert into rh (nome,cargo,idade,salario) values ("Gabriel", "Marketing", 25, 2000.00);
insert into rh (nome,cargo,idade,salario) values ("Paloma", "Gerente Geral", 28, 35000.00);
insert into rh (nome,cargo,idade,salario) values ("Esther", "Vendas", 32, 3500.00);
insert into rh (nome,cargo,idade,salario) values ("Augusto", "Auxiliar de Expedição", 20, 1500.00);

select * from rh where salario > 2000;

select * from rh where salario < 2000;

update rh set salario = 2000.00 where id = 2;

select * from rh;



