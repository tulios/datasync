USE BD_BARCO
GO
--AvisaAluno
insert into tbltipoavisoaluno values (1,'Faz nada');
insert into tbltipoavisoaluno values (2,'Avisa aos pais');
insert into tbltipoavisoaluno values (3,'Avisa à secretária de educação');
insert into tbltipoavisoaluno values (4,'Avisa ao professor');
insert into tbltipoavisoaluno values (5,'Outros');

--TransportaOutro
insert into tbltipotransportaoutro values (1,'Nada');
insert into tbltipotransportaoutro values (2,'Passageiros');
insert into tbltipotransportaoutro values (3,'Cargas');
insert into tbltipotransportaoutro values (4,'Animais');
insert into tbltipotransportaoutro values (5,'Outros');

--OutroAcompanhante
insert into tbltipooutroacompanhante values (1,'Familiares');
insert into tbltipooutroacompanhante values (2,'Professores/funcionários da escola');
insert into tbltipooutroacompanhante values (3,'Pessoas da comunidade');
insert into tbltipooutroacompanhante values (4,'Outros');

--TrocaBarco
insert into tbltipotrocabarco values (1,'Quando aumenta/diminui o número de alunos');
insert into tbltipotrocabarco values (2,'Quando aceita o contrato');
insert into tbltipotrocabarco values (3,'Quando é realizada em uma nova licitação');
insert into tbltipotrocabarco values (4,'Quando aumenta/diminui o número das escolas');
insert into tbltipotrocabarco values (5,'Quando muda governo');
insert into tbltipotrocabarco values (6,'Quando a comunidade exige');
insert into tbltipotrocabarco values (7,'Quando está em manutenção');
insert into tbltipotrocabarco values (8,'Outros');

--NaoTrabalhaRota
insert into tblTipoNaoTrabalhaRota values (1,'Não quis informar/Não sabe');
insert into tblTipoNaoTrabalhaRota values (2,'Interesse do barqueiro');
insert into tblTipoNaoTrabalhaRota values (3,'Interesses políticos da prefeitura');
insert into tblTipoNaoTrabalhaRota values (4,'Interesse da escola');
insert into tblTipoNaoTrabalhaRota values (5,'Outros');

--QuandoManutencao
insert into tblTipoquandomanutencao values (1,'Nos finais de semana');
insert into tblTipoquandomanutencao values (2,'Nas férias escolares');
insert into tblTipoquandomanutencao values (3,'Quando a prefeitura solicita');
insert into tblTipoquandomanutencao values (4,'Outros');

--RealizaManutencao
insert into tblTipoRealizaManutencao values (1,'Condutor');
insert into tblTipoRealizaManutencao values (2,'Estaleiro');
insert into tblTipoRealizaManutencao values (3,'Mecânico da cidade');
insert into tblTipoRealizaManutencao values (4,'Mecânico da prefeitura');
insert into tblTipoRealizaManutencao values (5,'Outros');

--Paga Manutencao
insert into tblTipoPagaManutencao values (1,'Condutor');
insert into tblTipoPagaManutencao values (2,'Comunidade');
insert into tblTipoPagaManutencao values (3,'Prefeitura');
insert into tblTipoPagaManutencao values (4,'Empresa Particular');
insert into tblTipoPagaManutencao values (5,'Cooperativa');
insert into tblTipoPagaManutencao values (6,'Outros');

--Servico
insert into tblTipoServico values (1,'Calafeto');
insert into tblTipoServico values (2,'Motorização');
insert into tblTipoServico values (3,'Troca de tábuas');
insert into tblTipoServico values (4,'Pintura');
insert into tblTipoServico values (5,'Outros');

--Estragos
insert into tblTipoEstrago values (1,'No casco');
insert into tblTipoEstrago values (2,'No piso');
insert into tblTipoEstrago values (3,'No motor');
insert into tblTipoEstrago values (4,'Na hélice');
insert into tblTipoEstrago values (5,'Outros');

--MotivoQuebra
insert into tblTipoMotivoQuebra values (1,'Motor Banco de areia');
insert into tblTipoMotivoQuebra values (2,'Motor Tronco');
insert into tblTipoMotivoQuebra values (3,'Motor Entulho');
insert into tblTipoMotivoQuebra values (4,'Motor Outros');
insert into tblTipoMotivoQuebra values (5,'Casco Banco de areia');
insert into tblTipoMotivoQuebra values (6,'Casco Tronco');
insert into tblTipoMotivoQuebra values (7,'Casco Entulho');
insert into tblTipoMotivoQuebra values (8,'Casco Outros');
insert into tblTipoMotivoQuebra values (9,'Hélice Banco de areia');
insert into tblTipoMotivoQuebra values (10,'Hélice Tronco');
insert into tblTipoMotivoQuebra values (11,'Hélice Entulho');
insert into tblTipoMotivoQuebra values (12,'Hélice Outros');

--Guarda Barco
insert into tblTipoGuardaBarco values (1,'Na frente de casa');
insert into tblTipoGuardaBarco values (2,'Trapiche da comunidade');
insert into tblTipoGuardaBarco values (3,'Trapiche público');
insert into tblTipoGuardaBarco values (4,'Trapiche da prefeitura(porto)');
insert into tblTipoGuardaBarco values (5,'Outros');

--DonoBarco
insert into tblTipoDonoBarco values (1,'Da Prefeitura');
insert into tblTipoDonoBarco values (2,'Cooperativa');
insert into tblTipoDonoBarco values (3,'Comunidade');
insert into tblTipoDonoBarco values (4,'Condutor');
insert into tblTipoDonoBarco values (5,'Comodato');
insert into tblTipoDonoBarco values (6,'Terceirizado');
insert into tblTipoDonoBarco values (7,'Outros Donos');

--Contrato
insert into tblTipoContrato values (1,'Não quis informar');
insert into tblTipoContrato values (2,'Fixo por mês');
insert into tblTipoContrato values (3,'Litros de Conbustível');
insert into tblTipoContrato values (4,'Por Aluno');
insert into tblTipoContrato values (5,'Litros');
insert into tblTipoContrato values (6,'Por Km/milhas');
insert into tblTipoContrato values (7,'Lubrificante');
insert into tblTipoContrato values (8,'Outros');

--EscolheBarco
insert into tblTipoEscolheBarco values (1,'A escola');
insert into tblTipoEscolheBarco values (2,'A prefeitura');
insert into tblTipoEscolheBarco values (3,'O barqueiro');
insert into tblTipoEscolheBarco values (4,'A comunidade');
insert into tblTipoEscolheBarco values (5,'A secretaria de educação');
insert into tblTipoEscolheBarco values (6,'Outros');


