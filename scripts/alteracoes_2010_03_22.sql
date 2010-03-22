alter table tblCabecalhoPrefeito drop column Rota;
alter table tblCabecalhoPrefeito drop column IdRota;
alter table tblCabecalhoPrefeito add Observacao text;
alter table tblCaracterizacaoPrefeito add QuaisMandatos varchar (100);
                                                    
alter table tblCabecalhoSecretario drop column Rota;
alter table tblCabecalhoSecretario drop column IdRota;  
alter table tblCabecalhoSecretario add Observacao text;
                                                       
alter table tblIdentificacaoProfessor add Grupo varchar (50);
alter table tblIdentificacaoProfessor add QuaisGrupos varchar (100);
alter table tblCabecalhoProfessor add Observacao text;
                               
alter table tblCabecalhoDiretor drop column Rota;
alter table tblCabecalhoDiretor drop column IdRota;                       
alter table tblCabecalhoDiretor add Observacao text;                
alter table tblIdentificacaoDiretor add Grupo varchar (50);
alter table tblIdentificacaoDiretor add QuaisGrupos varchar (100);
                                                 
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

alter table tblIdentificacaoPais add Grupo varchar (50);
alter table tblIdentificacaoPais add QuaisGrupos varchar (100);
   
alter table tblCabecalhoAluno add Observacao text;             
alter table tblIdentificacaoAluno add Grupo varchar (50);
alter table tblIdentificacaoAluno add QuaisGrupos varchar (100);
alter table tblCaracterizacaoFamiliaAluno add QuantidadeFamilia int;
alter table tblCaracterizacaoFamiliaAluno add IdParentes int;
alter table tblCaracterizacaoFamiliaAluno add QuaisParentes varchar (100);
alter table tblPercepcaoAlunoRota add Caminho char(5);
alter table tblPercepcaoAlunoRota add Cheia text;
alter table tblPercepcaoAlunoRota add Epoca char(3);
alter table tblPercepcaoAlunoRota drop column IdTipoOutroTransporte;
alter table tblPercepcaoAlunoRota drop column DescricaoTempo;

alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaPais; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaMae;  
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaFilhos; 
--alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaNoraGenro; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaIrmao; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaAvos; 
--alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaNetos; 
--alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeOutros; 
alter table tblCaracterizacaoFamiliaAluno drop column QuantidadeCasaOutrosQuais;
 
alter table tblPosTesteAvaliacaoLancha add Observacao text;
















