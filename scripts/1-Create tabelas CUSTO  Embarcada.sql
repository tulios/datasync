/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FPE Embarcada.DM1
 * Author :       mazuki
 *
 * Date Created : Thursday, March 04, 2010 15:38:54
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoEmbarcada 
 */

CREATE TABLE tblCabecalhoEmbarcada(
    IdFormulario       varchar(9)      NOT NULL,
    Pesquisador        varchar(30)     NULL,
    IdMunicipio        int             NULL,
    TrechoRota         varchar(100)    NULL,
    NomeCondutor       varchar(50)     NULL,
    RG                 varchar(15)     NULL,
    CondutorReserva    char(3)         NULL,
    CONSTRAINT PKCabecalhoEmbarcada PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoEmbarcada') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoEmbarcada >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoEmbarcada >>>'
go

/* 
 * TABLE: tblIdentificacaoMonitor 
 */

CREATE TABLE tblIdentificacaoMonitor(
    IdFormulario         varchar(9)        NOT NULL,
    PossuiMonitor        char(3)           NULL,
    Nome                 varchar(30)       NULL,
    RG                   varchar(15)       NULL,
    ConsumoQuantidade    decimal(10, 2)    NULL,
    ConsumoUnidade       decimal(10, 2)    NULL,
    Observacao           text              NULL,
    CONSTRAINT PKIdentificacaoMonitor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoMonitor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoMonitor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoMonitor >>>'
go

/* 
 * TABLE: tblIdentificacaoRota 
 */

CREATE TABLE tblIdentificacaoRota(
    IdFormulario     varchar(9)        NOT NULL,
    DataColeta       smalldatetime     NOT NULL,
    TipoTrecho       int               NULL,
    InicioGPS        varchar(15)       NULL,
    TerminoGPS       varchar(15)       NULL,
    HoraInicio       varchar(5)        NULL,
    HoraTermino      varchar(5)        NULL,
    MedidorLitros    decimal(10, 2)    NULL,
    Inicio           varchar(5)        NULL,
    Termino          varchar(5)        NULL,
    Turno            int               NULL,
    CONSTRAINT PKIdentificacaoRota PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoRota') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoRota >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoRota >>>'
go

/* 
 * TABLE: tblIdentificacaoVeiculo 
 */

CREATE TABLE tblIdentificacaoVeiculo(
    IdFormulario        varchar(9)     NOT NULL,
    NumeroEmbarcacao    int            NULL,
    Nome                varchar(50)    NULL,
    NomePopular         varchar(50)    NULL,
    Foto1               varchar(10)    NULL,
    UltimaFoto          varchar(10)    NULL,
    IdEmbarcacao        varchar(15)    NOT NULL,
    CONSTRAINT PKIdentificacaoVeiculo PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoVeiculo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoVeiculo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoVeiculo >>>'
go

/* 
 * TABLE: tblSobeDesce 
 */

CREATE TABLE tblSobeDesce(
    CodigoPonto               int           NOT NULL,
    IdFormulario              varchar(9)    NOT NULL,
    QuantidadeAlunoSobe       int           NULL,
    QuantidadeCaronaSobe      int           NULL,
    QuantidadeAlunoDesce      int           NULL,
    QuantidadeCaronasDesce    int           NULL,
    CONSTRAINT PKSobeDesce PRIMARY KEY NONCLUSTERED (CodigoPonto, IdFormulario)
)
go



IF OBJECT_ID('tblSobeDesce') IS NOT NULL
    PRINT '<<< CREATED TABLE tblSobeDesce >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblSobeDesce >>>'
go

/* 
 * TABLE: tblCabecalhoEmbarcada 
 */

ALTER TABLE tblCabecalhoEmbarcada ADD CONSTRAINT ReftblMunicipio55675134 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblIdentificacaoMonitor 
 */

ALTER TABLE tblIdentificacaoMonitor ADD CONSTRAINT ReftblCabecalhoEmbarcada345113123 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcada(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoRota 
 */

ALTER TABLE tblIdentificacaoRota ADD CONSTRAINT ReftblCabecalhoEmbarcada2233 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcada(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoVeiculo 
 */

ALTER TABLE tblIdentificacaoVeiculo ADD CONSTRAINT ReftblCabecalhoEmbarcada1213123 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcada(IdFormulario)
go

/* 
 * TABLE: tblSobeDesce 
 */

ALTER TABLE tblSobeDesce ADD CONSTRAINT ReftblCabecalhoEmbarcada4674 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcada(IdFormulario)
go

