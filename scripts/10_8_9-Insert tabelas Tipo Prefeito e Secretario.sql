Use BD_BARCO
GO
--TipoAcordo
insert into tblTipoAcordo values (1,'O FNDE/MEC repassa direto o dinheiro para o estado');
insert into tblTipoAcordo values (2,'A prefeitura é remunerada');
insert into tblTipoAcordo values (3,'Outros');

--TipoReage
insert into tblTipoReage values (1,'Continua transportando os alunos');
insert into tblTipoReage values (2,'Para de transportar os alunos');
insert into tblTipoReage values (3,'Outros');

--TipoResponsavel
insert into tblTipoResponsavel values(1,'Prefeitura');
insert into tblTIpoResponsavel values(2,'Secretaria de Educacao');
insert into tblTIpoResponsavel values(3,'Secretaria de Transporte');
insert into tblTIpoResponsavel values(4,'Secretaria de Planejamento');
insert into tblTIpoResponsavel values(5,'Outros');

--TipoPublicoAlvo
insert into tblTipoPublicoAlvo values (1,'Passageiros');
insert into tblTipoPublicoAlvo values (2,'Alunos');
insert into tblTipoPublicoAlvo values (3,'Condutor');
insert into tblTipoPublicoAlvo values (4,'Outros');

--TipoCriterio
insert into tblTipoCriterio values (1,'Menor tempo de viagem');
insert into tblTipoCriterio values (2,'Menor distância a ser percorrida');
insert into tblTipoCriterio values (3,'Números de barcos disponíveis');
insert into tblTipoCriterio values (4,'Vagas na escola mais próxima');
insert into tblTipoCriterio values (5,'Disponibilidade de professores');
insert into tblTipoCriterio values (6,'Outros');

--TipoMotivoBarqueiroMotorizado
insert into tblTipoMotivoBarqueiroTerceirizado values (1,'Segurança na navegação');
insert into tblTipoMotivoBarqueiroTerceirizado values (2,'Confiança na comunidade do barqueiro');
insert into tblTipoMotivoBarqueiroTerceirizado values (3,'Dificuldade de contratação de pessoal pela prefeitura');
insert into tblTipoMotivoBarqueiroTerceirizado values (4,'Menor custo de manutenção');
insert into tblTipoMotivoBarqueiroTerceirizado values (5,'Dificuldade de controlar, manteer e guardar um barco escolar da prefeitura');
insert into tblTipoMotivoBarqueiroTerceirizado values (6,'Outros');

--TipoDificuldade
insert into tblTipoDificuldade values (1,'Pontualidade');
insert into tblTipoDificuldade values (2,'Assiduidade');
insert into tblTipoDificuldade values (3,'Cansaço físico e mental');
insert into tblTipoDificuldade values (4,'Mal-estar');
insert into tblTipoDificuldade values (5,'Falta de atenção');
insert into tblTipoDificuldade values (6,'Adaptação no calendário escolar');
insert into tblTipoDificuldade values (7,'Outros');
