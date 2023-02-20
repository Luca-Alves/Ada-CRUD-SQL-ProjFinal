drop database Partidas;

create database Partidas;

use Partidas;

--CREATES

create table Jogador(
JogadorID int identity,
nome varchar(13) not null unique,
data_inicio date not null default getdate(),


constraint PK_jogador primary key (JogadorID)

);

create table Times(
timeID int identity,
nome varchar (13) unique not null,
vitorias int not null default (0),
derrotas int not null default (0),


constraint PK_time primary key (timeID)
);

create table ElencoTime(
elencoTimeID int identity,
timeID int not null,
jog1ID int not null,
jog2ID int not null,

constraint PK_relacaoTimeJogador primary key (elencoTimeID),
constraint FK_timeTJ foreign key (timeID) references Times(timeID),
constraint FK_jog1TJ foreign key (jog1ID) references Jogador(JogadorID),
constraint FK_jog2TJ foreign key (jog2ID) references Jogador(JogadorID),
);

create table Partida(
PartidaID int identity not null,
AteamID int not null,
BteamID int not null,
resultadoTime_A char(1) not null,
resultadoTime_B char(1) not null

constraint PK_partidaID primary key (PartidaID)
constraint FK_timeA foreign key (AteamID) references ElencoTime(elencoTimeID),
constraint FK_timeB foreign key (BteamID) references ElencoTime(elencoTimeID),
);

--INSERTS

insert into Jogador values ('cosmouz','13-02-2023');
insert into Jogador values ('luk','23-09-2002');
insert into Jogador values ('zoomplash','02-01-2021');
insert into Jogador values ('elis','20-02-2022');
insert into Jogador values ('die4u','25-07-2009');
insert into Jogador values ('pedrotheTREM','01-10-2010');
insert into Jogador values ('Alan Alves', '14-02-2023');
insert into Jogador (nome) values ('testDateDF');

select * from Jogador;

insert into Times (nome) values ('Onça');
insert into Times (nome) values('loud');
insert into Times values('furia','10','5');
insert into Times values('optic','101','67');

select * from Times;

insert into ElencoTime values (1,9,4);
insert into ElencoTime values
(2,2,3),
(3,5,6),
(4,7,8);

select * from ElencoTime;

insert into Partida values
(1,2,'d','v'),
(2,3,'v','d'),
(3,4,'v','d'),
(4,1,'d','v');

select * from Partida;



