select * from Jogador;
select * from Times;
select * from ElencoTime;
select * from Partida;

select nome,timeID,vitorias from Times where vitorias >= 5;

select nome, timeID from Times where vitorias between 5 and 15;

select * from Times where nome like '%l%';
select nome, vitorias, derrotas from Times where nome like 'o%';

select e.timeID, t.nome,t.vitorias,t.derrotas,j.JogadorID, j.nome, p.JogadorID, p.nome
from ElencoTime as e inner join Times as t on e.timeID = t.timeID 
join Jogador as j on e.jog1ID = j.JogadorID
join Jogador as p on e.jog2ID = p.JogadorID;
								
create view time_vencedor as select * from Times where vitorias > derrotas;
create view time_perdedor as select * from Times where vitorias <= derrotas;


select * from time_vencedor;
select * from time_perdedor;