-- Breno Rosa Orem | 248079
-- Fabiano Dantas de Souza | 248153
-- Mateus Campos Smanioto | 248056

-- create database AC1
-- use AC1

-- Questão 1

create table Raca
(
    ID_Raca int not null identity, 
    constraint PK_Raca primary key (ID_Raca),
    Nome varchar(100) not null,
    Descricao varchar(500),
    Origem varchar(150) not null,
    Perdido datetime
)

create table Habilidade
(
    ID_Habilidade int not null identity, 
    constraint PK_Habilidade primary key (ID_Habilidade),
    Nome varchar(200) not null,
    MultiplicadorPoder int
)

create table Classe
(
    ID_Classe int not null identity,
    constraint PK_Classe primary key (ID_Classe),
    Nome varchar(100) not null,
    Caracteristicas varchar(1000),
    FK_Habilidade int references Habilidade(ID_Habilidade)
)

create table Personagem
(
    ID_Personagem int not null identity,
    constraint PK_Personagem primary key (ID_Personagem),
    Nome varchar(100) not null,
    Descricao varchar(500),
    DataNascimento datetime not null,
    FK_Raca int not null references Raca(ID_Raca),
    FK_Classe int not null references Classe(ID_Classe)
)

-- Questão 2

alter table Personagem
add Poder int not null

-- Questão 3

alter table Classe
alter column Caracteristicas varchar(500)

-- Questão 4

alter table Raca
drop column Perdido

-- Questão 5

insert into Raca (Nome, Descricao, Origem) values ('Humano', 'Um humano comum, como você já conhece', 'Terra')
insert into Raca (Nome, Descricao, Origem) values ('Elfo', 'Um elfo ágil e astuto, com uma conexão profunda com a natureza', 'Floresta')
insert into Raca (Nome, Descricao, Origem) values ('Orc', 'Um orc forte e feroz, conhecido por sua habilidade em combate', 'Terras Selvagens')

insert into Habilidade (Nome, MultiplicadorPoder) values ('Força', 2)
insert into Habilidade (Nome, MultiplicadorPoder) values ('Agilidade', 3)
insert into Habilidade (Nome, MultiplicadorPoder) values ('Inteligência', 4)

insert into Classe (Nome, Caracteristicas, FK_Habilidade) values ('Guerreiro', NULL, 1)
insert into Classe (Nome, Caracteristicas, FK_Habilidade) values ('Arqueiro', 'Um mestre em combate à distância', 2)
insert into Classe (Nome, Caracteristicas, FK_Habilidade) values ('Mago', 'Um conjurador de poderosos feitiços', 3)

insert into Personagem (Nome, Descricao, DataNascimento, FK_Raca, FK_Classe, Poder) values ('Manoel', 'Um mago sábio e poderoso', '1980-10-08', 3, 3, 60)
insert into Personagem (Nome, Descricao, DataNascimento, FK_Raca, FK_Classe, Poder) values ('Legolas', 'Um elfo ágil e preciso com o arco', '1812-03-15', 2, 2, 75)
insert into Personagem (Nome, Descricao, DataNascimento, FK_Raca, FK_Classe, Poder) values ('Aragorn', 'Um ranger habilidoso e líder nato', '1878-07-26', 1, 1, 100)

-- Questão 6

update Classe
set Caracteristicas = 'Características Gerais'
where Caracteristicas is NULL

-- Questão 7

delete from Personagem 
where DataNascimento between '1970-01-01' and '1990-12-31'

-- Questão 8

select * from Classe

-- Questão 9

select Nome, DataNascimento, Poder
from Personagem
where Poder between 0 and 75

-- Questão 10

select Nome, Descricao, Origem
from Raca
where Nome like 'Orc%'