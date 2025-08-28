--CREATE database Carros;

CREATE TABLE Modelo
(
    ID_Modelo int not null identity,
    Nome varchar(50) not null,
    Marca varchar(100) not null,
    constraint PK_Modelo primary key (ID_Modelo)
)

create table Veiculo
(
    ID_Veiculo int not null identity,
    CONSTRAINT PK_Veiculo primary key (ID_Veiculo),
    Placa varchar(7) not null,
    Cor varchar(10) not null,
    Ano int not null,
    Preco numeric(18,2) not null
)

create table Donos
(
    ID_Dono int not null identity,
    CONSTRAINT PK_Dono PRIMARY KEY (ID_Dono),
    Nome varchar(200) not null,
    Idade int not null,
    Placa varchar(7),
    Modelo varchar(50),
    Marca varchar(200),

    FK_Modelo int references Modelo(ID_Modelo),
    FK_Veiculo int references Veiculo(ID_Veiculo)
)

insert into Modelo (Nome, Marca) values ('Polo', 'Volkswagen')
insert into Modelo (Nome, Marca) values ('Celta', 'Chevrolet')
insert into Modelo (Nome, Marca) values ('Cronos', 'Fiat')
insert into Modelo (Nome, Marca) values ('Cavalo', 'Natureza')

insert into Veiculo (Placa, Cor, Ano, Preco) values ('FMV7E54', 'Cinza', 2024, 80000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Cinza', 2005, 15000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Preto', 2015, 20000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Verde', 2015, 20000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Branco', 2022, 60000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Marrom', 1995, 200.00)

insert into Donos (Nome, Idade) values ('Breno', '19')
insert into Donos (Nome, Idade) values ('Fabiano', '19')
insert into Donos (Nome, Idade) values ('Melps', '19')
insert into Donos (Nome, Idade) values ('Ana', '20')
insert into Donos (Nome, Idade) values ('Amanda', '20')
insert into Donos (Nome, Idade) values ('Capela', '19')

drop table donos
drop table veiculo
drop table modelo

select * from veiculo