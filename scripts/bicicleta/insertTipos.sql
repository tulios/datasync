--tblTipoAcidenteEscola
insert into tblTipoAcidenteEscola (IdTipoAcidenteEscola, Descricao) values (1, 'Atropelamento');
insert into tblTipoAcidenteEscola (IdTipoAcidenteEscola, Descricao) values (2, 'Contatocomabicicleta(corrente,freios,raios,etc)');
insert into tblTipoAcidenteEscola (IdTipoAcidenteEscola, Descricao) values (3, 'Queda');
insert into tblTipoAcidenteEscola (IdTipoAcidenteEscola, Descricao) values (4, 'Colisão(batida)');
insert into tblTipoAcidenteEscola (IdTipoAcidenteEscola, Descricao) values (5, 'Outros');
insert into tblTipoAcidenteEscola (IdTipoAcidenteEscola, Descricao) values (0, 'Nãoresposta');

--tblTipoAcompanhanteEscola
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (1, 'Colegasdaescola');
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (2, 'Pais/Responsáveis');
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (3, 'Outrosparentes');
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (4, 'Vizinhos');
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (5, 'Outros');
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (0, 'Nãoresposta');
insert into tblTipoAcompanhanteEscola (IdTipoAcompanhanteEscola, Descricao) values (6, 'Irmãos');

--tblTipoAtividade
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (0, 'NãoUsaria');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (1, 'Atividadeescolarextraclasse');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (2, 'Atividadefísica');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (3, 'Competiçõesesportivas');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (4, 'Iraotrabalho');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (5, 'Passeios');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (6, 'PrestarServiços(entregarjornal,pão,etc)');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (7, 'Outros');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (8, 'Brincar');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (9, 'Compras');
insert into tblTipoAtividade (IdTipoAtividade, Descricao) values (10, 'Iràescola');

--tblTipoBicicleta
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (1, 'Câmbio(marchas)');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (2, 'Catraca');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (3, 'Corrente');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (4, 'Coroa');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (5, 'Pedais');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (6, 'Freios');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (7, 'Garupa');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (8, 'Selim(assento,banco)');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (9, 'Rodas/Pneus');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (10, 'Guidão');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (11, 'Quadro');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (12, 'Outros');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (13, 'Pintura');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (14, 'Nada');
insert into tblTipoBicicleta (IdTipoDefeitoBicicleta, Descricao) values (15, 'Tudo');

--tblTipoCalcado
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (1, 'Nenhum');
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (2, 'Chinelo');
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (3, 'Sandália');
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (4, 'Sapato');
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (5, 'Tênis');
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (6, 'Bota');
insert into tblTipoCalcado (IdTipoCalcado, Descricao) values (7, 'Outros');

--tblTipoComoVaoEscola
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (1, 'Apé');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (2, 'BicicletaPrópria');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (3, 'Montariaemanimal,veiculodetraçãoanimal');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (4, 'TEparticular');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (5, 'Transportemotorizadopróprio(carro,moto)');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (6, 'Transportecoletivoregular(s/passeescolar)');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (7, 'Barco(commotor,semmotor,canoa');
insert into tblTipoComoVaoEscola (IdTipoComoVaoEscola, Descricao) values (8, 'Outros');

--tblTipoConsertaBicicleta
insert into tblTipoConsertaBicicleta (IdTipoConsertaBicicleta, Descricao) values (0, 'Nãoconserta');
insert into tblTipoConsertaBicicleta (IdTipoConsertaBicicleta, Descricao) values (1, 'Amigo');
insert into tblTipoConsertaBicicleta (IdTipoConsertaBicicleta, Descricao) values (2, 'Mecânico');
insert into tblTipoConsertaBicicleta (IdTipoConsertaBicicleta, Descricao) values (3, 'Pais/Parentes');
insert into tblTipoConsertaBicicleta (IdTipoConsertaBicicleta, Descricao) values (4, 'Vocêmesmo');
insert into tblTipoConsertaBicicleta (IdTipoConsertaBicicleta, Descricao) values (5, 'Outros');

--tblTipoCuidadoBicicleta
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (1, 'Calibraospneus');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (2, 'Evitaarranhões');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (3, 'Lava');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (4, 'Evitadesgaste');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (5, 'Lubrifica');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (6, 'Manutenção');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (7, 'Limpa');
insert into tblTipoCuidadoBicicleta (IdTipoCuidadoBicicleta, Descricao) values (8, 'Outros');

--tblTipoDeslocamento
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (0, 'Nãousaria');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (2, 'AtividadeFísica');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (3, 'CompetiçõesEsportivas');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (4, 'Iraotrabalho');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (5, 'Passeios');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (6, 'Prestarserviços(entregarjornal,pão,etc.');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (7, 'Outros');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (9, 'Compras');
insert into tblTipoDeslocamento (IdTipoAtividade, Descricao) values (10, 'Iràescola');

--tblTipoEmpurra
insert into tblTipoEmpurra (IdTipoEmpurra, Descricao) values (1, 'Aclives(rampas,morros,ladeiras)');
insert into tblTipoEmpurra (IdTipoEmpurra, Descricao) values (2, 'Lamaçal');
insert into tblTipoEmpurra (IdTipoEmpurra, Descricao) values (3, 'Empoçamentos');
insert into tblTipoEmpurra (IdTipoEmpurra, Descricao) values (4, 'Travessiaderuas');
insert into tblTipoEmpurra (IdTipoEmpurra, Descricao) values (5, 'Outros');

--tblTipoEquipamentoProtecao
insert into tblTipoEquipamentoProtecao (IdTipoEquipamentoProtecao, Descricao) values (1, 'Capacete');
insert into tblTipoEquipamentoProtecao (IdTipoEquipamentoProtecao, Descricao) values (2, 'Cotoveleira');
insert into tblTipoEquipamentoProtecao (IdTipoEquipamentoProtecao, Descricao) values (3, 'Joelheira');
insert into tblTipoEquipamentoProtecao (IdTipoEquipamentoProtecao, Descricao) values (4, 'Outros');
insert into tblTipoEquipamentoProtecao (IdTipoEquipamentoProtecao, Descricao) values (0, 'Nãoresposta');

--tblTipoEscolaridade
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (1, 'EnsinoFundamental1ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (2, 'EnsinoFundamental2ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (3, 'EnsinoFundamental3ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (4, 'EnsinoFundamental4ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (5, 'EnsinoFundamental5ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (6, 'EnsinoFundamental6ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (7, 'EnsinoFundamental7ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (8, 'EnsinoFundamental8ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (9, 'EnsinoFundamental9ªsérie');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (10, 'EnsinoMédio1ºano');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (11, 'EnsinoMédio2ºano');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (12, 'EnsinoMédio3ºano');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (13, 'EJAFundamental');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (14, 'EJAMédio');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (15, 'SuperiorIncompleto');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (16, 'SuperiorCompleto');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (17, 'SemEscolaridade');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (0, 'Educaçãoinfantil');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (18, 'EnsinoMédioCompleto');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (19, 'Técnico');
insert into tblTipoEscolaridade (IdTipoEscolaridade, Descricao) values (20, 'EnsinoFundamentalCompleto');

--tblTipoGuardaBicicleta
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (3, 'Narua');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (5, 'Bicicletáriodentrodaescola');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (6, 'Bicicletárioforadaescola');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (7, 'Para-ciclodentrodaescola');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (8, 'Pátiodaescola');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (9, 'Saladeaula');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (16, 'Outros');
insert into tblTipoGuardaBicicleta (IdTipoOndeGuardaBicicleta, Descricao) values (17, 'Para-cicloforadaescola');

--tblTipoLocalEstacionamento
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (1, 'Dentrodecasa');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (2, 'Garagem');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (3, 'Narua');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (4, 'Noquintal');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (5, 'Bicicletáriodentrodaescola');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (6, 'Bicicletárioforadaescola');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (7, 'Para-ciclodentrodaescola');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (8, 'Pátiodaescola');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (9, 'Saladeaula');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (10, 'NopróprioTE');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (11, 'Bicicletário');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (12, 'Árvores/Cercas/Postes/Grades');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (13, 'Cais');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (14, 'Pier');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (15, 'Porto');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (16, 'Outros');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (17, 'Para-cicloforadaescola');
insert into tblTipoLocalEstacionamento (IdTipoLocalEstacionamento, Descricao) values (18, 'Nãoutiliza');

--tblTipoMotivoUtilizacao
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (1, 'Éaúnicaopção,anãosercaminhar');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (2, 'Émaisconfortável');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (3, 'Émaisdivertido');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (4, 'Émaisrápido');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (5, 'Émaissaudável');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (6, 'Paraircomcolegas/amigos');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (7, 'Porordemdopai/responsável');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (8, 'Outros');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (0, 'Nãoresposta');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (9, 'Écansativo');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (10, 'Distância');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (11, 'Nãoéseguro(medodeacidente)');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (12, 'Outrapessoausanomesmohorário');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (13, 'Nãogostodeandardebicicleta');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (14, 'Nãoseiandardebicicleta');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (15, 'Nãoprecisoirdebicicleta');
insert into tblTipoMotivoUtilizacao (IdTipoMotivoUtilizacao, Descricao) values (16, 'Nãotenhoautorização');

--tblTipoObstaculoTransito
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (1, 'Nãoexistemproblemas');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (2, 'Chuva');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (3, 'Cansaço/suor');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (4, 'Iluminaçãoinadequada(noite)');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (5, 'Faltadelugarparaestacionar');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (6, 'Seca(poeira)');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (7, 'Distância');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (8, 'Faltadesinalizaçãoparaabicicleta');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (9, 'Aclives(rampas,morros,ladeiras)');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (10, 'Calor');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (11, 'Lamaçalnasvias');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (12, 'Faltadeciclovias/ciclofaixas');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (13, 'Empoçamentodeáguanasvias');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (14, 'Frio');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (15, 'Buracosnasvias');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (16, 'Revestimentodasvias');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (17, 'Faltadesegurançanavia(assaltos,sequestros,estupros,etc)');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (18, 'Outros');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (19, 'Animais');
insert into tblTipoObstaculoTransito (IdTipoObstaculoTransito, Descricao) values (20, 'Tráfegodeveículos');

--tblTipoOutroTransporte
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (1, 'Automóvel');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (2, 'Caminhão');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (3, 'Moto');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (4, 'Ônibus');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (5, 'Barco');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (6, 'Outros');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (7, 'Van/Kombi');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (8, 'Apé');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (9, 'Ônibusregularpública');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (10, 'Montariaanimal');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (0, 'NãoutilizaoTE(vertblVaiEscola)');
insert into tblTipoOutroTransporte (IdTipoOutroTransporte, Descricao) values (11, 'UtilizaoTE(vertblTransporteEscolar)');

--tblTipoProblemasTransito
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (1, 'Nãoexisteproblemas');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (2, 'Chuva');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (3, 'Cansaço/suor');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (4, 'Iluminaçãoinadequada(noite)');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (5, 'Faltadelugarparaestacionar');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (6, 'Seca(poeira)');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (7, 'Distância');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (8, 'Faltadesinalizaçãoparabicicleta');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (9, 'Aclives(rampas,morros,ladeiras)');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (10, 'Calor');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (11, 'Lamaçalnasvias');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (12, 'Faltadeciclovias/ciclofaixas');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (13, 'Empoçamentodeáganasvias');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (14, 'Frio');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (15, 'Buracosnasvias');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (16, 'Revistimentodasvias');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (17, 'Faltadesegurançanavia(assaltos,sequestros,estupros,etc.)');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (18, 'Outros');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (19, 'Animalnasvias');
insert into tblTipoProblemasTransito (IdTipoProblemasTransito, Descricao) values (20, 'Trafégodeveículo');

--tblTipoProtecao
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (1, 'Nãoutilizaabicicletanachuva');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (2, 'Nãoseprotege');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (3, 'Adaptaçãodabicicleta(toldos,tetos,lonas)');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (4, 'Capadechuva');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (5, 'Chapéu,boné,boina,lenço');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (6, 'Guarda-chuva/Sombrinha');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (7, 'Protetorsolar');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (8, 'Outros');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (9, 'Nãovaiparaaula/escola');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (10, 'Nãoprecisa(otransporteparanaportadecasa)');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (11, 'Óculos');
insert into tblTipoProtecao (IdTipoProtecao, Descricao) values (12, 'Camisademangacomprida');

--tblTipoProtecaoContraChuva
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (1, 'Nãosainachuva');
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (2, 'Nãoseprotegedachuva');
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (3, 'Adaptação/Improvisaçãodabicicleta(toldos,tetos,lonas,etc.');
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (4, 'Capadechuva');
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (5, 'Chapéu,boné,boina');
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (6, 'Guarda-Chuva/Sombrinha');
insert into tblTipoProtecaoContraChuva (IdTipoProtecaoChuva, Descricao) values (8, 'Outros');

--tblTipoSujou
insert into tblTipoSujou (IdTipoSujou, Descricao) values (1, 'Pes');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (2, 'Pernas');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (3, 'Bumbum');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (4, 'Costas');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (5, 'Barriga');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (6, 'Braços');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (7, 'Mãos');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (8, 'Cabeça');
insert into tblTipoSujou (IdTipoSujou, Descricao) values (9, 'Outros');
