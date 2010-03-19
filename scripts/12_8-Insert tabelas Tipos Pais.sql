--Pais
USE BD_BARCO
GO
--tipoSugestao
insert into tbltiposugestao values (1,'Ajuste de horário escolar');
insert into tbltiposugestao values (2,'Aumentar o número de escolas');
insert into tbltiposugestao values (3,'Melhorar a merenda escolar');
insert into tbltiposugestao values (4,'Ajuste no calendário escolar');
insert into tbltiposugestao values (5,'Melhorar o transporte');
insert into tbltiposugestao values (6,'Melhorar os programas do governo');
insert into tbltiposugestao values (7,'Outros');

--tipoProvidenciaPai
insert into tblTipoProvidenciaPai values (1,'Não faz nada');
insert into tblTipoProvidenciaPai values (2,'Reclama da escola');
insert into tblTipoProvidenciaPai values (3,'Reclama do barqueiro');
insert into tblTipoProvidenciaPai values (4,'Reclama da prefeitura');
insert into tblTipoProvidenciaPai values (5,'Reclamada da secretaria de educação');
insert into tblTipoProvidenciaPai values (6,'Reclama com o líder comunitário');
insert into tblTipoProvidenciaPai values (7,'Reclama com o coordenador de transporte');
insert into tblTipoProvidenciaPai values (8,'Outros');
