use bd_barco
go
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FPPT Prefeito.DM1
 * Author :       mazuki
 *
 * Date Created : Friday, February 26, 2010 16:53:44
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoPrefeito 
 */

CREATE TABLE tblCabecalhoPrefeito(
    IdFormulario    varchar(9)       NOT NULL,
    Pesquisador     varchar(100)     NOT NULL,
    IdMunicipio     int              NULL,
    DataColeta      smalldatetime    NOT NULL,
    Rota            varchar(100)     NULL,
	IdRota			int				 NULL,
    TempoInicio     varchar(5)       NOT NULL,
    TempoTermino    varchar(5)       NOT NULL,
    CONSTRAINT PKCabecalhoPrefeito PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoPrefeito') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoPrefeito >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoPrefeito >>>'
go

/* 
 * TABLE: tblCaracterizacaoPrefeito 
 */

CREATE TABLE tblCaracterizacaoPrefeito(
    IdFormulario         varchar(9)    NOT NULL,
    TempoMandatoAno      int           NULL,
    TempoMandatoMeses    int           NULL,
    QuantidadeMandato    int           NULL,
    CONSTRAINT PKCaracterizacaoPrefeito PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoPrefeito') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoPrefeito >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoPrefeito >>>'
go

/* 
 * TABLE: tblIdentificacaoPrefeito 
 */

CREATE TABLE tblIdentificacaoPrefeito(
    IdFormulario          varchar(9)     NOT NULL,
    IdTipoEscolaridade    int            NULL,
    Telefone1             varchar(10)    NULL,
    Telefone2             varchar(10)    NULL,
    email1                varchar(20)    NULL,
    email2                varchar(20)    NULL,
    Sexo                  char(1)        NULL,
    Idade                 int            NULL,
    CONSTRAINT PKIdentificacaoPrefeito PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoPrefeito') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoPrefeito >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoPrefeito >>>'
go

/* 
 * TABLE: tblInformacaoPrefeito 
 */

CREATE TABLE tblInformacaoPrefeito(
    IdFormulario                    varchar(9)    NOT NULL,
    QuantidadeSecretarioEducacao    int           NULL,
    QuantidadeAcoes                 int           NULL,
    QuantidadeBarco                 int           NULL,
    CONSTRAINT PKInformacaoPrefeito PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPrefeito') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPrefeito >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPrefeito >>>'
go

/* 
 * TABLE: tblInformacaoPrefeitoAcordo 
 */

CREATE TABLE tblInformacaoPrefeitoAcordo(
    IdTipoAcordo                int             NOT NULL,
    QuaisOutros                 varchar(100)    NULL,
    RealizaTransporteEscolar    char(3)         NULL,
    IdFormulario                varchar(9)      NOT NULL,
    CONSTRAINT PKInformacaoPrefeitoAcordo PRIMARY KEY CLUSTERED (IdTipoAcordo, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPrefeitoAcordo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPrefeitoAcordo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPrefeitoAcordo >>>'
go

/* 
 * TABLE: tblInformacaoPrefeitoPublicoAlvo 
 */

CREATE TABLE tblInformacaoPrefeitoPublicoAlvo(
    IdTipoPublicoAlvo    int             NOT NULL,
    QuaisOutros          varchar(100)    NULL,
    IdFormulario         varchar(9)      NOT NULL,
    CONSTRAINT PKInformacaoPrefeitoPublicoAlvo PRIMARY KEY NONCLUSTERED (IdTipoPublicoAlvo, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPrefeitoPublicoAlvo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPrefeitoPublicoAlvo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPrefeitoPublicoAlvo >>>'
go

/* 
 * TABLE: tblInformacaoPrefeitoReage 
 */

CREATE TABLE tblInformacaoPrefeitoReage(
    IdTipoReage                     int             NOT NULL,
    FormalizacaoPrestacaoServico    char(3)         NULL,
    QuaisOutros                     varchar(100)    NULL,
    IdFormulario                    varchar(9)      NOT NULL,
    CONSTRAINT PKInformacaoPrefeitoReage PRIMARY KEY CLUSTERED (IdTipoReage, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPrefeitoReage') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPrefeitoReage >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPrefeitoReage >>>'
go

/* 
 * TABLE: tblInformacaoPrefeitoResponsavelTransporEscolar 
 */

CREATE TABLE tblInformacaoPrefeitoResponsavelTransporEscolar(
    IdTipoResponsavel    int            NOT NULL,
    QuaisOutros          varchar(50)    NULL,
    IdFormulario         varchar(9)     NOT NULL,
    CONSTRAINT PKInformacaoPrefeitoResponsavelTransporEscolar PRIMARY KEY NONCLUSTERED (IdTipoResponsavel, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoPrefeitoResponsavelTransporEscolar') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoPrefeitoResponsavelTransporEscolar >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoPrefeitoResponsavelTransporEscolar >>>'
go

/* 
 * TABLE: tblITipoResponsavel 
 */

CREATE TABLE tblTipoResponsavel(
    IdTipoResponsavel    int            NOT NULL,
    Descricao            varchar(50)    NULL,
    CONSTRAINT PKTipoResponsavel PRIMARY KEY NONCLUSTERED (IdTipoResponsavel)
)
go



IF OBJECT_ID('tblITipoResponsavel') IS NOT NULL
    PRINT '<<< CREATED TABLE tblITipoResponsavel >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblITipoResponsavel >>>'
go

/* 
 * TABLE: tblTipoAcordo 
 */

CREATE TABLE tblTipoAcordo(
    IdTipoAcordo    int            NOT NULL,
    Descricao       varchar(80)    NULL,
    CONSTRAINT PKTipoAcordo PRIMARY KEY CLUSTERED (IdTipoAcordo)
)
go



IF OBJECT_ID('tblTipoAcordo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoAcordo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoAcordo >>>'
go

/* 
 * TABLE: tblTipoPublicoAlvo 
 */

CREATE TABLE tblTipoPublicoAlvo(
    IdTipoPublicoAlvo    int            NOT NULL,
    Descricao            varchar(50)    NOT NULL,
    CONSTRAINT PKTipoPublicoAlvo PRIMARY KEY NONCLUSTERED (IdTipoPublicoAlvo)
)
go



IF OBJECT_ID('tblTipoPublicoAlvo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoPublicoAlvo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoPublicoAlvo >>>'
go

/* 
 * TABLE: tblTipoReage 
 */

CREATE TABLE tblTipoReage(
    IdTipoReage    int            NOT NULL,
    Descricao      varchar(50)    NULL,
    CONSTRAINT PKTipoReage PRIMARY KEY CLUSTERED (IdTipoReage)
)
go



IF OBJECT_ID('tblTipoReage') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoReage >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoReage >>>'
go

/* 
 * TABLE: tblCabecalhoPrefeito 
 */

ALTER TABLE tblCabecalhoPrefeito ADD CONSTRAINT ReftblMunicipio3656 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoPrefeito 
 */

ALTER TABLE tblCaracterizacaoPrefeito ADD CONSTRAINT ReftblCabecalhoPrefeito6 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoPrefeito 
 */

ALTER TABLE tblIdentificacaoPrefeito ADD CONSTRAINT ReftblCabecalhoPrefeito4 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go

ALTER TABLE tblIdentificacaoPrefeito ADD CONSTRAINT ReftblTipoEscolaridade55665 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go


/* 
 * TABLE: tblInformacaoPrefeito 
 */

ALTER TABLE tblInformacaoPrefeito ADD CONSTRAINT ReftblCabecalhoPrefeito7 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPrefeitoAcordo 
 */

ALTER TABLE tblInformacaoPrefeitoAcordo ADD CONSTRAINT ReftblTipoAcordo1356 
    FOREIGN KEY (IdTipoAcordo)
    REFERENCES tblTipoAcordo(IdTipoAcordo)
go

ALTER TABLE tblInformacaoPrefeitoAcordo ADD CONSTRAINT ReftblCabecalhoPrefeito16 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPrefeitoPublicoAlvo 
 */

ALTER TABLE tblInformacaoPrefeitoPublicoAlvo ADD CONSTRAINT ReftblTipoPublicoAlvo1065 
    FOREIGN KEY (IdTipoPublicoAlvo)
    REFERENCES tblTipoPublicoAlvo(IdTipoPublicoAlvo)
go

ALTER TABLE tblInformacaoPrefeitoPublicoAlvo ADD CONSTRAINT ReftblCabecalhoPrefeito18 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPrefeitoReage 
 */

ALTER TABLE tblInformacaoPrefeitoReage ADD CONSTRAINT ReftblTipoReage1565 
    FOREIGN KEY (IdTipoReage)
    REFERENCES tblTipoReage(IdTipoReage)
go

ALTER TABLE tblInformacaoPrefeitoReage ADD CONSTRAINT ReftblCabecalhoPrefeito17 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go


/* 
 * TABLE: tblInformacaoPrefeitoResponsavelTransporEscolar 
 */

ALTER TABLE tblInformacaoPrefeitoResponsavelTransporEscolar ADD CONSTRAINT ReftblITipoResponsavel956 
    FOREIGN KEY (IdTipoResponsavel)
    REFERENCES tblITipoResponsavel(IdTipoResponsavel)
go

ALTER TABLE tblInformacaoPrefeitoResponsavelTransporEscolar ADD CONSTRAINT ReftblCabecalhoPrefeito19 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoPrefeito(IdFormulario)
go


