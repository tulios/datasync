USE BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      DATA MODEL
 * Author :       mazuki
 *
 * Date Created : Friday, February 26, 2010 18:22:42
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoSecretario 
 */

CREATE TABLE tblCabecalhoSecretario(
    IdFormulario    varchar(9)       NOT NULL,
    Pesquisador     varchar(100)     NOT NULL,
    IdMunicipio     int              NULL,
    DataColeta      smalldatetime    NOT NULL,
    Rota            varchar(100)     NULL,
    IdRota          int              NULL,
    TempoInicio     varchar(5)       NOT NULL,
    TempoTermino    varchar(5)       NOT NULL,
    CONSTRAINT PKCabecalhoSecretario PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoSecretario') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoSecretario >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoSecretario >>>'
go

/* 
 * TABLE: tblCaracterizacaoSecretario 
 */

CREATE TABLE tblCaracterizacaoSecretario(
    IdFormulario         varchar(9)    NOT NULL,
    TempoMandatoAno      int           NULL,
    TempoMandatoMeses    int           NULL,
    QuantidadeMandato    int           NULL,
    CONSTRAINT PKCaracterizacaoSecretario PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoSecretario') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoSecretario >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoSecretario >>>'
go

/* 
 * TABLE: tblIdentificacaoSecretario 
 */

CREATE TABLE tblIdentificacaoSecretario(
    IdFormulario          varchar(9)     NOT NULL,
    IdTipoEscolaridade    int            NULL,
    Telefone1             varchar(10)    NULL,
    Telefone2             varchar(10)    NULL,
    email1                varchar(20)    NULL,
    email2                varchar(20)    NULL,
    Sexo                  char(1)        NULL,
    Idade                 int            NULL,
    CONSTRAINT PKIdentificacaoSecretario PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoSecretario') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoSecretario >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoSecretario >>>'
go

/* 
 * TABLE: tblInformacaoSecretarioAcordo 
 */

CREATE TABLE tblInformacaoSecretarioAcordo(
    IdTipoAcordo                int             NOT NULL,
    IdFormulario                varchar(9)      NOT NULL,
    RealizaTransporteEscolar    char(3)         NULL,
    QuaisOutros                 varchar(100)    NULL,
    CONSTRAINT PKInformacaoSecretarioAcordo PRIMARY KEY NONCLUSTERED (IdTipoAcordo, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoSecretarioAcordo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoSecretarioAcordo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoSecretarioAcordo >>>'
go

/* 
 * TABLE: tblInformacaoSecretarioOutroTransporte 
 */

CREATE TABLE tblInformacaoSecretarioOutroTransporte(
    IdTipoOutroTransporte    int             NOT NULL,
    IdFormulario             varchar(9)      NOT NULL,
    OutrosQuais              varchar(100)    NULL,
    CONSTRAINT PKInformacaoSecretarioOutroTransporte PRIMARY KEY NONCLUSTERED (IdTipoOutroTransporte, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoSecretarioOutroTransporte') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoSecretarioOutroTransporte >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoSecretarioOutroTransporte >>>'
go

/* 
 * TABLE: tblInformacaoSecretarioReage 
 */

CREATE TABLE tblInformacaoSecretarioReage(
    IdTipoReage                     int             NOT NULL,
    IdFormulario                    varchar(9)      NOT NULL,
    FormalizacaoPrestacaoServico    char(3)         NULL,
    QuaisOutros                     varchar(100)    NULL,
    CONSTRAINT PKInformacaoSecretarioReage PRIMARY KEY NONCLUSTERED (IdTipoReage, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoSecretarioReage') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoSecretarioReage >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoSecretarioReage >>>'
go

/* 
 * TABLE: tblInformcaoSecretarioCriterio 
 */

CREATE TABLE tblInformacaoSecretarioCriterio(
    IdFormulario      varchar(9)      NOT NULL,
    IdTipoCriterio    int             NOT NULL,
    QuaisOutros       varchar(100)    NULL,
    CONSTRAINT PKInformacaoSecretarioCriterio PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoCriterio)
)
go



IF OBJECT_ID('tblInformcaoSecretarioCriterio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformcaoSecretarioCriterio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformcaoSecretarioCriterio >>>'
go

/* 
 * TABLE: tblPercepcaoSecretarioDificuldade 
 */

CREATE TABLE tblPercepcaoSecretarioDificuldade(
    IdFormulario         varchar(9)     NOT NULL,
    IdTipoDificuldade    int            NOT NULL,
    QuaisOutros          varchar(80)    NULL,
    CONSTRAINT PKPercepcaoSecretarioDificuldade PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoDificuldade)
)
go



IF OBJECT_ID('tblPercepcaoSecretarioDificuldade') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoSecretarioDificuldade >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoSecretarioDificuldade >>>'
go

/* 
 * TABLE: tblPercepcaoSecretarioMotivoBarqueiroTerceirizado 
 */

CREATE TABLE tblPercepcaoSecretarioMotivoBarqueiroTerceirizado(
    IdTipoMotivoBarqueiroTerceirizado    int             NOT NULL,
    IdFormulario                         varchar(9)      NOT NULL,
    QuaisOutros                          varchar(100)    NULL,
    CONSTRAINT PKPercepcaoSecretarioMotivoBarqueiroTerceirizado PRIMARY KEY NONCLUSTERED (IdTipoMotivoBarqueiroTerceirizado, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoSecretarioMotivoBarqueiroTerceirizado') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoSecretarioMotivoBarqueiroTerceirizado >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoSecretarioMotivoBarqueiroTerceirizado >>>'
go

/* 
 * TABLE: tblTipoCriterio 
 */

CREATE TABLE tblTipoCriterio(
    IdTipoCriterio    int            NOT NULL,
    Descricao         varchar(80)    NULL,
    CONSTRAINT PKTipoCriterio PRIMARY KEY NONCLUSTERED (IdTipoCriterio)
)
go



IF OBJECT_ID('tblTipoCriterio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoCriterio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoCriterio >>>'
go

/* 
 * TABLE: tblTipoDificuldade 
 */

CREATE TABLE tblTipoDificuldade(
    IdTipoDificuldade    int            NOT NULL,
    Descricao            varchar(50)    NULL,
    CONSTRAINT PKTipoDificuldade PRIMARY KEY NONCLUSTERED (IdTipoDificuldade)
)
go



IF OBJECT_ID('tblTipoDificuldade') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoDificuldade >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoDificuldade >>>'
go

/* 
 * TABLE: tblTipoMotivoBarqueiroTerceirizado 
 */

CREATE TABLE tblTipoMotivoBarqueiroTerceirizado(
    IdTipoMotivoBarqueiroTerceirizado    int             NOT NULL,
    Descricao                            varchar(100)    NULL,
    CONSTRAINT PKTipoMotivoBarqueiroTerceirizado PRIMARY KEY NONCLUSTERED (IdTipoMotivoBarqueiroTerceirizado)
)
go



IF OBJECT_ID('tblTipoMotivoBarqueiroTerceirizado') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoMotivoBarqueiroTerceirizado >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoMotivoBarqueiroTerceirizado >>>'
go

/* 
 * TABLE: tblCabecalhoSecretario 
 */

ALTER TABLE tblCabecalhoSecretario ADD CONSTRAINT ReftblMunicipio169 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoSecretario 
 */

ALTER TABLE tblCaracterizacaoSecretario ADD CONSTRAINT ReftblCabecalhoSecretario4 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoSecretario 
 */

ALTER TABLE tblIdentificacaoSecretario ADD CONSTRAINT ReftblCabecalhoSecretario2 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go

ALTER TABLE tblIdentificacaoSecretario ADD CONSTRAINT ReftblTipoEscolaridade369 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go


/* 
 * TABLE: tblInformacaoSecretarioAcordo 
 */

ALTER TABLE tblInformacaoSecretarioAcordo ADD CONSTRAINT ReftblTipoAcordo569 
    FOREIGN KEY (IdTipoAcordo)
    REFERENCES tblTipoAcordo(IdTipoAcordo)
go

ALTER TABLE tblInformacaoSecretarioAcordo ADD CONSTRAINT ReftblCabecalhoSecretario6 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go


/* 
 * TABLE: tblInformacaoSecretarioOutroTransporte 
 */

ALTER TABLE tblInformacaoSecretarioOutroTransporte ADD CONSTRAINT ReftblTipoOutroTransporte969 
    FOREIGN KEY (IdTipoOutroTransporte)
    REFERENCES tblTipoOutroTransporte(IdTipoOutroTransporte)
go

ALTER TABLE tblInformacaoSecretarioOutroTransporte ADD CONSTRAINT ReftblCabecalhoSecretario10 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go


/* 
 * TABLE: tblInformacaoSecretarioReage 
 */

ALTER TABLE tblInformacaoSecretarioReage ADD CONSTRAINT ReftblTipoReage769 
    FOREIGN KEY (IdTipoReage)
    REFERENCES tblTipoReage(IdTipoReage)
go

ALTER TABLE tblInformacaoSecretarioReage ADD CONSTRAINT ReftblCabecalhoSecretario8 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go


/* 
 * TABLE: tblInformacaoSecretarioCriterio 
 */

ALTER TABLE tblInformacaoSecretarioCriterio ADD CONSTRAINT ReftblCabecalhoSecretario11 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go

ALTER TABLE tblInformacaoSecretarioCriterio ADD CONSTRAINT ReftblTipoCriterio1269 
    FOREIGN KEY (IdTipoCriterio)
    REFERENCES tblTipoCriterio(IdTipoCriterio)
go


/* 
 * TABLE: tblPercepcaoSecretarioDificuldade 
 */

ALTER TABLE tblPercepcaoSecretarioDificuldade ADD CONSTRAINT ReftblCabecalhoSecretario13 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go

ALTER TABLE tblPercepcaoSecretarioDificuldade ADD CONSTRAINT ReftblTipoDificuldade1669 
    FOREIGN KEY (IdTipoDificuldade)
    REFERENCES tblTipoDificuldade(IdTipoDificuldade)
go


/* 
 * TABLE: tblPercepcaoSecretarioMotivoBarqueiroTerceirizado 
 */

ALTER TABLE tblPercepcaoSecretarioMotivoBarqueiroTerceirizado ADD CONSTRAINT ReftblTipoMotivoBarqueiroTerceirizado1769 
    FOREIGN KEY (IdTipoMotivoBarqueiroTerceirizado)
    REFERENCES tblTipoMotivoBarqueiroTerceirizado(IdTipoMotivoBarqueiroTerceirizado)
go

ALTER TABLE tblPercepcaoSecretarioMotivoBarqueiroTerceirizado ADD CONSTRAINT ReftblCabecalhoSecretario18 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoSecretario(IdFormulario)
go


