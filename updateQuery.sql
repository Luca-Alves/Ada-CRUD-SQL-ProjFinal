select * from Jogador;
select * from Times;
select * from ElencoTime;
select * from Partida;

use Partidas;

update Jogador set nome = 'Luca' where JogadorID = 4;
update Jogador set nome = 'Novo Jogador', data_inicio = '1990-01-01' where JogadorID = 2;

alter table Jogador add info_adicional varchar(50) null;
update Jogador set info_adicional = 'joga muito bem' where JogadorID = 2;

update Times set vitorias = 10 where nome = 'Onça';