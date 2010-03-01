USE BD_BARCO
GO
--tblTipoOutraExperiencia 
insert into tblTipoOutraExperiencia values (1,'Professor');
insert into tblTipoOutraExperiencia values (2,'Vice-Diretor');
insert into tblTipoOutraExperiencia values (3,'Bibliotec�rio');
insert into tblTipoOutraExperiencia values (4,'Supervisor (a) de Ensino');
insert into tblTipoOutraExperiencia values (5,'Outras');

--tblTipoTurno
insert into tblTipoTurno values (1,'Matutino');
insert into tblTipoTurno values (2,'Vespertino');
insert into tblTipoTurno values (3,'Terceiro Turno');
insert into tblTipoTurno values (4,'Noturno');
insert into tblTipoTurno values (5,'Integral');

--tblTipoResposta
insert into tblTipoResposta values (1,'N�o sabe/N�o quis informar');
insert into tblTipoResposta values (2,'A escola');
insert into tblTipoResposta values (3,'A prefeitura');
insert into tblTipoResposta values (4,'A Comunidade');
insert into tblTipoResposta values (5,'Outros');

--tblTipoReclamacao
insert into tblTipoReclamacao values (0,'N�o resposta');
insert into tblTipoReclamacao values (1,'Dura��o da viagem');
insert into tblTipoReclamacao values (2,'Lota��o');
insert into tblTipoReclamacao values (3,'Cansa�o');
insert into tblTipoReclamacao values (4,'Mal-estar');
insert into tblTipoReclamacao values (5,'Atraso do barco');
insert into tblTipoReclamacao values (6,'Presen�a de caronas');
insert into tblTipoReclamacao values (7,'Seguran�a');
insert into tblTipoReclamacao values (8,'Comportamento do pr�tico');
insert into tblTipoReclamacao values (9,'Comportamento do condutor');
insert into tblTipoReclamacao values (10,'Comportamento dos alunos');
insert into tblTipoReclamacao values (11,'Outros');

--tblTipoOutroTransporte
insert into tblTipoOutroTransporte values (1,'N�o vem');
insert into tblTipoOutroTransporte values (2,'A p�');
insert into tblTipoOutroTransporte values (3,'Casquinho/Canoa Fam�lia');
insert into tblTipoOutroTransporte values (4,'Canoa do Vizinho');
insert into tblTipoOutroTransporte values (5,'Bicicleta');
insert into tblTipoOutroTransporte values (6,'Animal');
insert into tblTipoOutroTransporte values (7,'Trator');
insert into tblTipoOutroTransporte values (8,'�nibus escolar');
insert into tblTipoOutroTransporte values (9,'Carro/Moto');
insert into tblTipoOutroTransporte values (10,'Outros');

--tblTipoAlunoNaoEscola
insert into tblTipoAlunoNaoEscola values (0,'N�o resposta');
insert into tblTipoAlunoNaoEscola values (1,'Falta de transporte');
insert into tblTipoAlunoNaoEscola values (2,'Necessidade de trabalho');
insert into tblTipoAlunoNaoEscola values (3,'Moram muito longe');
insert into tblTipoAlunoNaoEscola values (4,'Os pais n�o deixam');
insert into tblTipoAlunoNaoEscola values (5,'Diverg�ncia entre comunidades');
insert into tblTipoAlunoNaoEscola values (6,'Outros');
insert into tblTipoAlunoNaoEscola values (7,'N�o ocorre');
