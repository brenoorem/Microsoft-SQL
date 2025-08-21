CREATE database Carros

CREATE TABLE Modelo
(
    idModelo int not null identity,
    Nome varchar(200) not null,
    Marca varchar(200) not null,
    Constraint PKidModelo primary key (idModelo)
)

create table Veiculo
(
    idVeiculo int not null identity,
    Placa varchar(10) not null,
    Cor varchar(10) not null,
    Ano int not null,
    Preco numeric(18,2) not null,
    CONSTRAINT PKidVeiculo primary key (idVeiculo),
    idModelo int not null references Modelo(idModelo)
)

create table Donos
(
    idDono int not null identity,
    Nome varchar(200) not null,
    Idade int not null,
    CONSTRAINT PKidDono PRIMARY KEY (idDono),
    FKidModelo int not null references Modelo(idModelo),
    FKidVeiculo int not null references Veiculo(idVeiculo)
)

insert into Modelo (Nome, Marca) values ('Polo', 'Volkswagen')
insert into Modelo (Nome, Marca) values ('Celta', 'Chevrolet')
insert into Modelo (Nome, Marca) values ('Cronos', 'Fiat')
insert into Modelo (Nome, Marca) values ('Cavalo', 'Natureza')

insert into Veiculo (Placa, Cor, Ano, Preco, idModelo) values ('FMV7E54', 'Cinza', 2024, 80000.00, 1)
insert into Veiculo (Placa, Cor, Ano, Preco, idModelo) values ('ABC1D23', 'Cinza', 2005, 15000.00, 2)
insert into Veiculo (Placa, Cor, Ano, Preco, idModelo) values ('ABC1D23', 'Preto', 2015, 20000.00, 2)
insert into Veiculo (Placa, Cor, Ano, Preco, idModelo) values ('ABC1D23', 'Verde', 2015, 20000.00, 2)
insert into Veiculo (Placa, Cor, Ano, Preco, idModelo) values ('ABC1D23', 'Branco', 2022, 60000.00, 3)
insert into Veiculo (Placa, Cor, Ano, Preco, idModelo) values ('ABC1D23', 'Marrom', 1995, 200.00, 4)

insert into Donos (Nome, Idade, FKidModelo, FKidVeiculo) values ('Breno', '19', 1, 1)
insert into Donos (Nome, Idade, FKidModelo, FKidVeiculo) values ('Fabiano', '19', 2, 2)
insert into Donos (Nome, Idade, FKidModelo, FKidVeiculo) values ('Melps', '19', 3, 5)
insert into Donos (Nome, Idade, FKidModelo, FKidVeiculo) values ('Ana', '20', 2, 4)
insert into Donos (Nome, Idade, FKidModelo, FKidVeiculo) values ('Amanda', '19', 2, 3)
insert into Donos (Nome, Idade, FKidModelo, FKidVeiculo) values ('Capela', '19', 4, 6)

drop table donos
drop table veiculo
drop table modelo