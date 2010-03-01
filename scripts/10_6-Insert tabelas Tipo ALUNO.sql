USE BD_BARCO
GO
--TipoTrabalho
insert into tblTipoTrabalho values (1,'Plantação');
insert into tblTipoTrabalho values (2,'Colheita');
insert into tblTipoTrabalho values (3,'Criação');
insert into tblTipoTrabalho values (4,'Pecuária');
insert into tblTipoTrabalho values (5,'Pesca');
insert into tblTipoTrabalho values (6,'Artesanato');
insert into tblTipoTrabalho values (7,'Trabalho na cidade');
insert into tblTipoTrabalho values (8,'Tarefas de casa');
insert into tblTipoTrabalho values (9,'Barqueiro');
insert into tblTipoTrabalho values (10,'Prático');
insert into tblTipoTrabalho values (11,'Outros');

--TipoFazCaminhoEscola
insert into tblTipoFazCaminhoEscola values (1,'Não faz nada');
insert into tblTipoFazCaminhoEscola values (2,'Lê');
insert into tblTipoFazCaminhoEscola values (3,'Brinca');
insert into tblTipoFazCaminhoEscola values (4,'Dever de casa');
insert into tblTipoFazCaminhoEscola values (5,'Circula pelo barco');
insert into tblTipoFazCaminhoEscola values (6,'Desenha');
insert into tblTipoFazCaminhoEscola values (7,'Dorme');
insert into tblTipoFazCaminhoEscola values (8,'Escuta musica');
insert into tblTipoFazCaminhoEscola values (9,'Conversa com colegas');
insert into tblTipoFazCaminhoEscola values (10,'Outros');

--TipoFazOutraCoisa
insert into tblTipoFazOutraCoisa values (1,'Não faz nada');
insert into tblTipoFazOutraCoisa values (2,'Lugar para dormir');
insert into tblTipoFazOutraCoisa values (3,'TV/Video');
insert into tblTipoFazOutraCoisa values (4,'Jogos');
insert into tblTipoFazOutraCoisa values (5,'Música');
insert into tblTipoFazOutraCoisa values (6,'Local para dever de casa');
insert into tblTipoFazOutraCoisa values (7,'Livros');
insert into tblTipoFazOutraCoisa values (8,'Artesanato');
insert into tblTipoFazOutraCoisa values (9,'Outros');

--TipoMelhoria
insert into tblTipoMelhoria values (1,'Nada');
insert into tblTipoMelhoria values (2,'Construir um trapiche na escola');
insert into tblTipoMelhoria values (3,'Construir um trapiche no ponto de embarque');
insert into tblTipoMelhoria values (4,'Construir um porto');
insert into tblTipoMelhoria values (5,'Ter uma rampa móvel no barco');
insert into tblTipoMelhoria values (6,'Outros');

--TipoEpoca
insert into tblTipoEpoca values (1,'Inverno/Cheia');
insert into tblTipoEpoca values (2,'Inverno/Seca');
insert into tblTipoEpoca values (3,'Verâo/Cheia');
insert into tblTipoEpoca values (4,'Verâo/Seca');
insert into tblTipoEpoca values (5,'Outro');

--TipoAjuda
insert into tbltipoajuda values (1,'Não devo fazer nada');
insert into tbltipoajuda values (2,'Devo me comportar bem');
insert into tbltipoajuda values (3,'Devo ajudar com o motor');
insert into tbltipoajuda values (4,'Devo ajudar com o remo');
insert into tbltipoajuda values (5,'Devo ajudar os colegas a entrarem e sairem');
insert into tbltipoajuda values (6,'Outros');

--TipoAuxilio
insert into tblTipoAuxilio values (1,'Não sabe/não quis informar');
insert into tblTipoAuxilio values (2,'Não recebe');
insert into tblTipoAuxilio values (3,'Bolsa Família');
insert into tblTipoAuxilio values (4,'Bolsa Alimentação');
insert into tblTipoAuxilio values (5,'Bolsa Floresta');
insert into tblTipoAuxilio values (6,'Bolsa Escola');
insert into tblTipoAuxilio values (7,'Auxílio Gás');
insert into tblTipoAuxilio values (8,'Outros');

--TipoMolhaAluno
insert into tblTipoMolhaAluno values(1,'Correu');
insert into tblTipoMolhaAluno values(2,'Fez uma curva');
insert into tblTipoMolhaAluno values(3,'Atravessou uma onda');
insert into tblTipoMolhaAluno values(4,'Choveu');
insert into tblTipoMolhaAluno values(5,'Passou pelo banzeiro');
