-- Arquivo itens-a-serem-alterados...doc
alter table tblCabecalhoPrefeito drop column Rota;
alter table tblCabecalhoPrefeito drop column IdRota;
alter table tblCabecalhoPrefeito add Observacao text;
alter table tblCaracterizacaoPrefeito add QuaisMandatos varchar (100);
-- (ja existe) alter table tblIdentificacaoPrefeito add Telefone1 varchar (20);
-- (ja existe) alter table tblIdentificacaoPrefeito add Telefone2 varchar (20);

alter table tblCabecalhoSecretario drop column Rota;
alter table tblCabecalhoSecretario drop column IdRota;  
alter table tblCabecalhoSecretario add Observacao text;
-- (ja existe) alter table Tblidentificacaosecretario add Telefone1 varchar (20);
-- (ja existe) alter table Tblidentificacaosecretario add Telefone2 varchar (20);

alter table tblIdentificacaoProfessor add Grupo varchar (50);
alter table tblIdentificacaoProfessor add QuaisGrupos varchar (100);
alter table tblCabecalhoProfessor add Observacao text;
alter table tblCabecalhoProfessor add NomeEscola varchar (100);

alter table tblCabecalhoDiretor drop column Rota;
alter table tblCabecalhoDiretor drop column IdRota;                       
alter table tblCabecalhoDiretor add Observacao text;                
alter table tblIdentificacaoDiretor add Grupo varchar (50);
alter table tblIdentificacaoDiretor add QuaisGrupos varchar (100);
alter table tblCabecalhoDiretor add NomeEscola varchar (100);

alter table tblCabecalhoPais add Observacao text;

alter table tblIdentificacaoPais add Grupo varchar (50);
alter table tblIdentificacaoPais add QuaisGrupos varchar (100);

alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaPais;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaMae;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaFilhos;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaNoraGenro;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaIrmao;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaAvos;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaNetos;
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeOutros; 
alter table tblCaracterizacaoFamiliaPais drop column QuantidadeCasaOutrosQuais;

alter table tblCaracterizacaoFamiliaPais add Observacao text;   
alter table tblCaracterizacaoFamiliaPais add QuantidadeFamilia int;   
alter table tblCaracterizacaoFamiliaPais add Parentes int;   
alter table tblCaracterizacaoFamiliaPais add QuaisParentes varchar(50);   

alter table tblCabecalhoAluno add Observacao text;
alter table tblCabecalhoAluno add NomeEscola varchar (100);

alter table tblIdentificacaoAluno add Grupo varchar (50);
alter table tblIdentificacaoAluno add QuaisGrupos varchar (100);

alter table tblCaracterizacaoFamiliaAluno add QuantidadeFamilia int;
alter table tblCaracterizacaoFamiliaAluno add IdParentes int;
alter table tblCaracterizacaoFamiliaAluno add QuaisParentes varchar (100);

alter table tblPercepcaoAlunoRota add CaminhoSeca char(5);
alter table tblPercepcaoAlunoRota add CaminhoCheia char(5);
alter table tblPercepcaoAlunoRota add Cheia text;
alter table tblPercepcaoAlunoRota add Seca text;
alter table tblPercepcaoAlunoRota add Epoca char(3);
alter table tblPercepcaoAlunoRota drop column IdTipoOutroTransporte;
alter table tblPercepcaoAlunoRota drop column DescricaoTempo;

alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaPais; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaMae;  
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaFilhos;
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaConjuge;
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaPrimos;
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaTio;
alter table tblCaracterizacaoFamiliaAluno drop column CasaOutrosQuem;
--alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaNoraGenro; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaIrmao; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaAvos; 
--alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaNetos; 
--alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeOutros; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaOutrosQuais;
 
alter table tblPosTesteAvaliacaoLancha add Observacao text;

alter table tblCabecalhoCondutor drop column IdPesquisador;
alter table tblCabecalhoCondutor add IdPesquisador varchar(50);
alter table tblCabecalhoCondutor add Observacao text;

alter table tblIdentificacaoCondutor add Grupo varchar(50);
alter table tblIdentificacaoCondutor add QuaisGrupos varchar(100);

alter table tblInformacaoCondutor add Observacao text;
alter table tblInformacaoCondutorContrato add FormaContrato int;
alter table tblInformacaoCondutorContrato add TipoPagamento varchar(100);
alter table tblInformacaoCondutorContrato add Pagamento int;
alter table tblInformacaoCondutorContrato drop column valor;
alter table tblInformacaoCondutorContrato add valor varchar(15);

alter table tblInformacaoCondutor add CompraOLeo char(3);
alter table tblInformacaoCondutor add Onde varchar(100);
alter table tblInformacaoCondutor add Frequencia varchar(100);

alter table tblNovaLanchaCondutor add Observacao text;
alter table tblNovaLanchaCondutor drop column UtilizariaLanchaMEC;
alter table tblNovaLanchaCondutor drop column PorqueUtilizariaLanchaMEC;

-- aguardar tblTipoParente
create table tblCaracterizacaoFamiliaParentes
	IdFormulario varchar (9) not null,
	IdTipoParente int  not null ,
	QuaisParentes varchar(100),
	CONSTRAINT PKCaracterizacaoFamiliaParentes PRIMARY KEY NONCLUSTERED (IdFormulario,IdTipoParente)
)











