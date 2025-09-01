--CREATE database Carros;

CREATE TABLE Modelo
(
    ID_Modelo int not null identity,
    Modelo varchar(50) not null,
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

    FK_Modelo int references Modelo(ID_Modelo),
    FK_Veiculo int references Veiculo(ID_Veiculo)
)

insert into Modelo (Modelo, Marca) values ('Polo', 'Volkswagen')
insert into Modelo (Modelo, Marca) values ('Celta', 'Chevrolet')
insert into Modelo (Modelo, Marca) values ('Cronos', 'Fiat')
insert into Modelo (Modelo, Marca) values ('Cavalo', 'Natureza')

insert into Veiculo (Placa, Cor, Ano, Preco) values ('FMV7E54', 'Cinza', 2024, 80000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Cinza', 2005, 15000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Preto', 2015, 20000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Verde', 2015, 20000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Branco', 2022, 60000.00)
insert into Veiculo (Placa, Cor, Ano, Preco) values ('ABC1D23', 'Marrom', 1995, 200.00)

insert into Donos (Nome, Idade, FK_Modelo, FK_Veiculo) values ('Breno', '19', 1, 1)
insert into Donos (Nome, Idade, FK_Modelo, FK_Veiculo) values ('Fabiano', '19', 2, 2)
insert into Donos (Nome, Idade, FK_Modelo, FK_Veiculo) values ('Melps', '19', 3, 5)
insert into Donos (Nome, Idade, FK_Modelo, FK_Veiculo) values ('Ana', '20', 2, 4)
insert into Donos (Nome, Idade, FK_Modelo, FK_Veiculo) values ('Amanda', '20', 2, 3)
insert into Donos (Nome, Idade, FK_Modelo, FK_Veiculo) values ('Capela', '19', 4, 6)

update Veiculo set Placa = 'IAH7782' where placa = 'ABC1D23'

select D.Nome, D.Idade, D.FK_Modelo, M.Modelo, M.Marca, V.Placa, V.Cor, V.Ano, V.Preco
from Modelo M
join Donos D on M.ID_Modelo = D.FK_Modelo
join Veiculo V on V.ID_Veiculo = D.FK_Veiculo