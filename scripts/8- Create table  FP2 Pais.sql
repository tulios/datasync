USE BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FP2 Pais.DM1
 * Author :       mazuki
 *
 * Date Created : Friday, February 26, 2010 19:03:33
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoPais 
 */

CREATE TABLE tblCabecalhoPais(
    IdFormulario         char(9)          NOT NULL,
    Pesquisador          varchar(50)      NULL,
    IdFormularioAluno    char(9)          NULL,
    Data                 smalldatetime    NOT NULL,
    IdMunicipio          int              NULL,
    Rota                 varchar(100)     NULL,
    IdRota               int              NULL,
    TempoInicio          varchar(5)       NULL,
    TempoTermino         varchar(5)       NULL,
    CONSTRAINT PKCabecalhoPais PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoPais') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoPais >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoPais >>>'
go

/* 
 * TABLE: tblCaracterizacaoFamiliaAlunoAuxilio 
 */

CREATE TABLE tblCaracterizacaoFamiliaPaisAuxilio(
    IdTipoAuxilio    int             NOT NULL,
    IdFormulario     char(9)         NOT NULL,
    QualOutro        varchar(100)    NULL,
    CONSTRAINT PKtblCaracterizacaoFamiliaPaisAuxilio PRIMARY KEY NONCLUSTERED (IdTipoAuxilio, IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoFamiliaPaisAuxilio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoFamiliaPaisAuxilio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoFamiliaPaisAuxilio >>>'
go

/* 
 * TABLE: tblCaracterizacaoFamiliaPais 
 */

CREATE TABLE tblCaracterizacaoFamiliaPais(
    IdFormulario                    char(9)         NOT NULL,
    OcupacaoPai                     varchar(100)    NULL,
    OcupacaoMae                     varchar(100)    NULL,
    QuantidadeFilhos                int             NULL,
    QuantidadeFilhosIdadeEscolar    int             NULL,
    QuantidadeCasaPais              int             NULL,
    QuantidadeCasaMãe               int             NULL,
    QuantidadeCasaFilhos            int             NULL,
    QuantidadeCasaNoraGenro         int             NULL,
    QuantidadeCasaIrmao             int             NULL,
    QuantidadeCasaAvos              int             NULL,
    QuantidadeCasaNetos             int             NULL,
    QuantidadeOutros                int             NULL,
    QuantidadeCasaOutrosQuais       varchar(80)     NULL,
    QuantidadeAjudamSustento        int             NULL,
    CONSTRAINT PKCaracterizacaoFamiliaPais PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoFamiliaPais') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoFamiliaPais >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoFamiliaPais >>>'
go

/* 
 * TABLE: tblCaracterizacaoFamiliaPaisTrabalho 
 */

CREATE TABLE tblCaracterizacaoFamiliaPaisTrabalho(
    IdTipoTrabalho    int             NOT NULL,
    IdFormulario      char(9)         NOT NULL,
    DescricaoAjuda    varchar(100)    NULL,
    CONSTRAINT PKCaracterizacaoFamiliaPaisTrabalho PRIMARY KEY NONCLUSTERED (IdTipoTrabalho, IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoFamiliaPaisTrabalho') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoFamiliaPaisTrabalho >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoFamiliaPaisTrabalho >>>'
go

/* 
 * TABLE: tblIdentificacaoPais 
 */

CREATE TABLE tblIdentificacaoPais(
    IdFormulario          char(9)         NOT NULL,
    TipoEntrevistado      char(3)         NOT NULL,
    Comunidade            varchar(100)    NULL,
    Idade                 int             NULL,
    IdTipoEscolaridade    int             NULL,
    CONSTRAINT PKIdentificacaoPais PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoPais') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoPais >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoPais >>>'
go

/* 
 * TABLE: tblInformacaoPais 
 */

CREATE TABLE tblInformacaoPais(
    IdFormulario                         char(9)         NOT NULL,
    TempoEscola                          varchar(5)      NULL,
    QualOutro                            varchar(100)    NULL,
    ProblemasOutrasPessoas               char(3)         NULL,
    ProblemasOutrasPessoasPorque         varchar(150)    NULL,
    ProblemaBarqueiroVizinhanca          char(3)         NULL,
    ProblemaBarqueiroVizinhancaPorque    varchar(150)    NULL,
    BarcoNaoBuscaFilho                   char(3)         NULL,
    BarcoNaoBuscaFilhoFrequencia         varchar(100)    NULL,
    PorqueBarcoNaoBuscaFilho             varchar(150)    NULL,
    CONSTRAINT PKInformacaoPais PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPais') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPais >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPais >>>'
go

/* 
 * TABLE: tblInformacaoPaisAlunoNaoEscola 
 */

CREATE TABLE tblInformacaoPaisAlunoNaoEscola(
    IdFormulario            char(9)         NOT NULL,
    IdTipoAlunoNaoEscola    int             NOT NULL,
    QualOutro               varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisAlunoNaoEscola PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoAlunoNaoEscola)
)
go



IF OBJECT_ID('tblInformacaoPaisAlunoNaoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisAlunoNaoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisAlunoNaoEscola >>>'
go

/* 
 * TABLE: tblInformacaoPaisBarcoAtrasa 
 */

CREATE TABLE tblInformacaoPaisBarcoAtrasa(
    IdFormulario            char(9)     NOT NULL,
    IdTipoProvidenciaPai    int         NOT NULL,
    QuemOutro               varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisBarcoAtrasa PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoProvidenciaPai)
)
go



IF OBJECT_ID('tblInformacaoPaisBarcoAtrasa') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisBarcoAtrasa >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisBarcoAtrasa >>>'
go


/* 
 * TABLE: tblInformacaoPaisTransportaOutro 
 */

CREATE TABLE tblInformacaoPaisTransportaOutro(
    IdFormulario            char(9)     NOT NULL,
    IdTipoOutroAcompanhante    int         NOT NULL,
    QuemOutro               varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisTransportaOutro PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoOutroAcompanhante)
)
go



IF OBJECT_ID('tblInformacaoPaisTransportaOutro') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisTransportaOutro >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisTransportaOutro >>>'
go




/* 
 * TABLE: tblInformacaoPaisDonoBarco 
 */

CREATE TABLE tblInformacaoPaisDonoBarco(
    IdTipoDonoBarco    int         NOT NULL,
    IdFormulario       char(9)     NOT NULL,
    Quem               varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisDonoBarco PRIMARY KEY NONCLUSTERED (IdTipoDonoBarco, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPaisDonoBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisDonoBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisDonoBarco >>>'
go

/* 
 * TABLE: tblInformacaoPaisEpocaPior 
 */

CREATE TABLE tblInformacaoPaisEpocaPior(
    IdTipoEpoca     int             NOT NULL,
    IdFormulario    char(9)         NOT NULL,
    QualOutro       varchar(100)    NULL,
    PorqueOutro     varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisEpocaPior PRIMARY KEY NONCLUSTERED (IdTipoEpoca, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPaisEpocaPior') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisEpocaPior >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisEpocaPior >>>'
go

/* 
 * TABLE: tblInformacaoPaisEscolheBarco 
 */

CREATE TABLE tblInformacaoPaisEscolheBarco(
    IdTipoEscolheBarco    int             NOT NULL,
    IdFormulario          char(9)         NOT NULL,
    QuemOutro             varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisEscolheBarco PRIMARY KEY NONCLUSTERED (IdTipoEscolheBarco, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPaisEscolheBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisEscolheBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisEscolheBarco >>>'
go

/* 
 * TABLE: tblInformacaoPaisOutroTransporte 
 */

CREATE TABLE tblInformacaoPaisOutroTransporte(
    IdTipoOutroTransporte    int             NOT NULL,
    IdFormulario             char(9)         NOT NULL,
    QuemOutro                varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisOutroTransporte PRIMARY KEY NONCLUSTERED (IdTipoOutroTransporte, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPaisOutroTransporte') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisOutroTransporte >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisOutroTransporte >>>'
go

/* 
 * TABLE: tblInformacaoPaisProvidencia 
 */

CREATE TABLE tblInformacaoPaisProvidencia(
    IdFormulario            char(9)     NOT NULL,
    IdTipoProvidenciaPai    int         NOT NULL,
    QuemOutro               varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisProvidencia PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoProvidenciaPai)
)
go



IF OBJECT_ID('tblInformacaoPaisProvidencia') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisProvidencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisProvidencia >>>'
go

/* 
 * TABLE: tblInformacaoPaisSugestao 
 */

CREATE TABLE tblInformacaoPaisSugestao(
    IdTipoSugestao    int             NOT NULL,
    IdFormulario      char(9)         NOT NULL,
    QualOutro         varchar(100)    NULL,
    CONSTRAINT PKInformacaoPaisSugestao PRIMARY KEY NONCLUSTERED (IdTipoSugestao, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPaisSugestao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPaisSugestao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPaisSugestao >>>'
go

/* 
 * TABLE: tblTipoProvidenciaPai 
 */

CREATE TABLE tblTipoProvidenciaPai(
    IdTipoProvidenciaPai    int             NOT NULL,
    Descricao               varchar(100)    NULL,
    CONSTRAINT PKTipoProvidenciaPai PRIMARY KEY NONCLUSTERED (IdTipoProvidenciaPai)
)
go



IF OBJECT_ID('tblTipoProvidenciaPai') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoProvidenciaPai >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoProvidenciaPai >>>'
go

/* 
 * TABLE: tblTipoSugestao 
 */

CREATE TABLE tblTipoSugestao(
    IdTipoSugestao    int             NOT NULL,
    Descricao         varchar(100)    NULL,
    CONSTRAINT PKTipoSugestao PRIMARY KEY NONCLUSTERED (IdTipoSugestao)
)
go



IF OBJECT_ID('tblTipoSugestao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoSugestao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoSugestao >>>'
go

/* 
 * TABLE: tblCabecalhoPais 
 */

ALTER TABLE tblCabecalhoPais ADD CONSTRAINT ReftblMunicipio437 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoFamiliaPaisAuxilio 
 */

ALTER TABLE tblCaracterizacaoFamiliaPaisAuxilio ADD CONSTRAINT ReftblTipoAuxilio11896 
    FOREIGN KEY (IdTipoAuxilio)
    REFERENCES tblTipoAuxilio(IdTipoAuxilio)
go

ALTER TABLE tblCaracterizacaoFamiliaPaisAuxilio ADD CONSTRAINT ReftblCaracterizacaoFamiliaPais14 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCaracterizacaoFamiliaPais(IdFormulario)
go


/* 
 * TABLE: tblCaracterizacaoFamiliaPais 
 */

ALTER TABLE tblCaracterizacaoFamiliaPais ADD CONSTRAINT ReftblCabecalhoPais8674
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPais(IdFormulario)
go


/* 
 * TABLE: tblCaracterizacaoFamiliaPaisTrabalho 
 */

ALTER TABLE tblCaracterizacaoFamiliaPaisTrabalho ADD CONSTRAINT ReftblTipoTrabalho937 
    FOREIGN KEY (IdTipoTrabalho)
    REFERENCES tblTipoTrabalho(IdTipoTrabalho)
go

ALTER TABLE tblCaracterizacaoFamiliaPaisTrabalho ADD CONSTRAINT ReftblCaracterizacaoFamiliaPais10 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCaracterizacaoFamiliaPais(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoPais 
 */

ALTER TABLE tblIdentificacaoPais ADD CONSTRAINT ReftblTipoEscolaridade637 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go

ALTER TABLE tblIdentificacaoPais ADD CONSTRAINT ReftblCabecalhoPais7454 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPais 
 */

ALTER TABLE tblInformacaoPais ADD CONSTRAINT ReftblCabecalhoPais15356 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPaisAlunoNaoEscola 
 */

ALTER TABLE tblInformacaoPaisAlunoNaoEscola ADD CONSTRAINT ReftblInformacaoPais28 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go

ALTER TABLE tblInformacaoPaisAlunoNaoEscola ADD CONSTRAINT ReftblTipoAlunoNaoEscola3037 
    FOREIGN KEY (IdTipoAlunoNaoEscola)
    REFERENCES tblTipoAlunoNaoEscola(IdTipoAlunoNaoEscola)
go


/* 
 * TABLE: tblInformacaoPaisBarcoAtrasa 
 */

ALTER TABLE tblInformacaoPaisBarcoAtrasa ADD CONSTRAINT ReftblTipoProvidenciaPai20 
    FOREIGN KEY (IdTipoProvidenciaPai)
    REFERENCES tblTipoProvidenciaPai(IdTipoProvidenciaPai)
go

ALTER TABLE tblInformacaoPaisBarcoAtrasa ADD CONSTRAINT ReftblInformacaoPais21 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPaisDonoBarco 
 */

ALTER TABLE tblInformacaoPaisDonoBarco ADD CONSTRAINT ReftblTipoDonoBarco2437 
    FOREIGN KEY (IdTipoDonoBarco)
    REFERENCES tblTipoDonoBarco(IdTipoDonoBarco)
go

ALTER TABLE tblInformacaoPaisDonoBarco ADD CONSTRAINT ReftblInformacaoPais25 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPaisEpocaPior 
 */

ALTER TABLE tblInformacaoPaisEpocaPior ADD CONSTRAINT ReftblTipoEpoca2637 
    FOREIGN KEY (IdTipoEpoca)
    REFERENCES tblTipoEpoca(IdTipoEpoca)
go

ALTER TABLE tblInformacaoPaisEpocaPior ADD CONSTRAINT ReftblInformacaoPais27 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPaisEscolheBarco 
 */

ALTER TABLE tblInformacaoPaisEscolheBarco ADD CONSTRAINT ReftblTipoEscolheBarco2237 
    FOREIGN KEY (IdTipoEscolheBarco)
    REFERENCES tblTipoEscolheBarco(IdTipoEscolheBarco)
go

ALTER TABLE tblInformacaoPaisEscolheBarco ADD CONSTRAINT ReftblInformacaoPais23 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPaisOutroTransporte 
 */

ALTER TABLE tblInformacaoPaisOutroTransporte ADD CONSTRAINT ReftblTipoOutroTransporte1637 
    FOREIGN KEY (IdTipoOutroTransporte)
    REFERENCES tblTipoOutroTransporte(IdTipoOutroTransporte)
go

ALTER TABLE tblInformacaoPaisOutroTransporte ADD CONSTRAINT ReftblInformacaoPais17 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPaisProvidencia 
 */

ALTER TABLE tblInformacaoPaisProvidencia ADD CONSTRAINT ReftblInformacaoPais18 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go

ALTER TABLE tblInformacaoPaisProvidencia ADD CONSTRAINT ReftblTipoProvidenciaPai19 
    FOREIGN KEY (IdTipoProvidenciaPai)
    REFERENCES tblTipoProvidenciaPai(IdTipoProvidenciaPai)
go


/* 
 * TABLE: tblInformacaoPaisSugestao 
 */

ALTER TABLE tblInformacaoPaisSugestao ADD CONSTRAINT ReftblTipoSugestao3137 
    FOREIGN KEY (IdTipoSugestao)
    REFERENCES tblTipoSugestao(IdTipoSugestao)
go

ALTER TABLE tblInformacaoPaisSugestao ADD CONSTRAINT ReftblInformacaoPais32 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoPais(IdFormulario)
go


/*
 * TABLE: tblInformacaoPaisTransportaOutro
 */

ALTER TABLE tblInformacaoPaisTransportaOutro ADD CONSTRAINT ReftblTipoOutroAcompanhante31632 
    FOREIGN KEY (IdTipoOutroAcompanhante)
    REFERENCES tblTipoOutroAcompanhante(IdTipoOutroAcompanhante)
go


