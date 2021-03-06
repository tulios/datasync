USE BD_CUSTO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      Nemesis v1.6 Corporativo
 * Project :      CUSTO ALUNO.dm1
 * Author :       Nemesis v1.6 Corporativo
 *
 * Date Created : Thursday, March 04, 2010 15:44:06
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: TblCabecalhoCondutor 
 */

CREATE TABLE TblCabecalhoCondutor(
    IdFormulario    varchar(9)     NOT NULL,
    Municipio       varchar(40)    NULL,
    UF              char(2)        NULL,
    Pesquisador     varchar(20)    NULL,
    DataColeta      varchar(10)    NULL,
    Responsavel     varchar(50)    NULL,
    CONSTRAINT PKCabecalhoCondutor PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblCabecalhoCondutor') IS NOT NULL
    PRINT '<<< CREATED TABLE TblCabecalhoCondutor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblCabecalhoCondutor >>>'
go

/* 
 * TABLE: TblCabecalhoEmbarcacao 
 */

CREATE TABLE TblCabecalhoEmbarcacao(
    IdFormulario    varchar(9)     NOT NULL,
    Municipio       varchar(40)    NULL,
    UF              char(2)        NULL,
    Pesquisador     varchar(20)    NULL,
    DataColeta      varchar(10)    NULL,
    Responsavel     varchar(50)    NULL,
    CONSTRAINT PKCabecalhoEmbarcacao PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblCabecalhoEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE TblCabecalhoEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblCabecalhoEmbarcacao >>>'
go

/* 
 * TABLE: TblCabecalhoMecanico 
 */

CREATE TABLE TblCabecalhoMecanico(
    IdFormulario    varchar(9)     NOT NULL,
    Municipio       varchar(40)    NULL,
    UF              char(2)        NULL,
    Pesquisador     varchar(20)    NULL,
    DataColeta      varchar(10)    NULL,
    Responsavel     varchar(50)    NULL,
    CONSTRAINT PKCabecalhoMecanico PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblCabecalhoMecanico') IS NOT NULL
    PRINT '<<< CREATED TABLE TblCabecalhoMecanico >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblCabecalhoMecanico >>>'
go

/* 
 * TABLE: TblCabecalhoMonitor 
 */

CREATE TABLE TblCabecalhoMonitor(
    IdFormulario    varchar(9)     NOT NULL,
    Municipio       varchar(40)    NULL,
    UF              char(2)        NULL,
    Pesquisador     varchar(20)    NULL,
    DataColeta      varchar(10)    NULL,
    Responsavel     varchar(50)    NULL,
    CONSTRAINT PKCabecalhoMonitor PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblCabecalhoMonitor') IS NOT NULL
    PRINT '<<< CREATED TABLE TblCabecalhoMonitor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblCabecalhoMonitor >>>'
go

/* 
 * TABLE: TblIdCondutor 
 */

CREATE TABLE TblIdCondutor(
    IdFormulario        varchar(9)      NOT NULL,
    Nome                varchar(50)     NULL,
    Identidade          varchar(15)     NULL,
    IdentidadeUF        char(2)         NULL,
    DataNasc            varchar(10)     NULL,
    Escolaridade        varchar(14)     NULL,
    EstadoCivil         varchar(10)     NULL,
    IdEmbarcacao        varchar(15)     NULL,
    Habilitacao         varchar(30)     NULL,
    Categoria           varchar(50)     NULL,
    Grupo               varchar(30)     NULL,
    OutrasCategorias    varchar(100)    NULL,
    TempoExperiencia    varchar(22)     NULL,
    Salario             varchar(10)     NULL,
    CondutorReserva     char(3)         NULL,
    Observacao          varchar(500)    NULL,
    CONSTRAINT PKIdCondutor PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblIdCondutor') IS NOT NULL
    PRINT '<<< CREATED TABLE TblIdCondutor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblIdCondutor >>>'
go

/* 
 * TABLE: TblIdEmbarcacao 
 */

CREATE TABLE TblIdEmbarcacao(
    IdFormulario             varchar(9)      NOT NULL,
    IdEmbarcacao             varchar(15)     NOT NULL,
    NomeEmbarcacao           varchar(40)     NULL,
    UfEmbarcacao             char(2)         NULL,
    AnoFabricacao            varchar(4)      NULL,
    TipoMaterial             varchar(10)     NULL,
    TipoEmbarcacao           char(1)         NULL,
    PosicaoMotor             varchar(12)     NULL,
    QuantMotor               varchar(2)      NULL,
    PotenciaMotor            varchar(8)      NULL,
    TipoCombustivel          varchar(50)     NULL,
    CapacidadeIndicada       varchar(3)      NULL,
    CapacidadeInformada      varchar(3)      NULL,
    SituacaoEmbarcacao       varchar(3)      NULL,
    EmbarcacaoReserva        char(3)         NULL,
    PropriedadeEmbarcacao    varchar(25)     NULL,
    PropriedadeOutros        varchar(20)     NULL,
    ValorEmbarcacao          varchar(10)     NULL,
    DataAquisicao            varchar(10)     NULL,
    TempoChuva               varchar(10)     NULL,
    TempoSeca                varchar(10)     NULL,
    MesLetivoChuva           varchar(2)      NULL,
    MesLetivoSeca            varchar(2)      NULL,
    QuantidadeRota           varchar(2)      NULL,
    RotaOD                   varchar(100)    NULL,
    RotaOD1                  varchar(100)    NULL,
    RotaOD2                  varchar(100)    NULL,
    AlunosMatutino           varchar(3)      NULL,
    AlunosVespertino         varchar(3)      NULL,
    AlunosNoturno            varchar(3)      NULL,
    ValorCusto               varchar(15)     NULL,
    ValorUnidade             varchar(20)     NULL,
    Observacao               varchar(500)    NULL,
    CONSTRAINT PKIdEmbarcacao PRIMARY KEY CLUSTERED (IdFormulario, IdEmbarcacao)
)
go



IF OBJECT_ID('TblIdEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE TblIdEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblIdEmbarcacao >>>'
go

/* 
 * TABLE: TblIdMecanico 
 */

CREATE TABLE TblIdMecanico(
    IdFormulario        varchar(9)      NOT NULL,
    Nome                varchar(50)     NULL,
    Identidade          varchar(15)     NULL,
    IdentidadeUF        char(2)         NULL,
    DataNasc            varchar(10)     NULL,
    Escolaridade        varchar(14)     NULL,
    TempoExperiencia    varchar(10)     NULL,
    Salario             varchar(10)     NULL,
    Observacao          varchar(500)    NULL,
    CONSTRAINT PKIdMecanico PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblIdMecanico') IS NOT NULL
    PRINT '<<< CREATED TABLE TblIdMecanico >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblIdMecanico >>>'
go

/* 
 * TABLE: TblIdMonitor 
 */

CREATE TABLE TblIdMonitor(
    IdFormulario        varchar(9)      NOT NULL,
    Nome                varchar(50)     NULL,
    Identidade          varchar(15)     NULL,
    IdentidadeUF        char(2)         NULL,
    DataNasc            varchar(10)     NULL,
    Escolaridade        varchar(14)     NULL,
    EstadoCivil         varchar(10)     NULL,
    IdEmbarcacao        varchar(15)     NULL,
    TempoExperiencia    varchar(22)     NULL,
    Salario             varchar(10)     NULL,
    Observacao          varchar(500)    NULL,
    CONSTRAINT PKIdMonitor PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblIdMonitor') IS NOT NULL
    PRINT '<<< CREATED TABLE TblIdMonitor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblIdMonitor >>>'
go

/* 
 * TABLE: TblIdCondutor 
 */

ALTER TABLE TblIdCondutor ADD CONSTRAINT RefTblCabecalhoCondutor6 
    FOREIGN KEY (IdFormulario)
    REFERENCES TblCabecalhoCondutor(IdFormulario)
go


/* 
 * TABLE: TblIdEmbarcacao 
 */

ALTER TABLE TblIdEmbarcacao ADD CONSTRAINT RefTblCabecalhoEmbarcacao10 
    FOREIGN KEY (IdFormulario)
    REFERENCES TblCabecalhoEmbarcacao(IdFormulario)
go


/* 
 * TABLE: TblIdMecanico 
 */

ALTER TABLE TblIdMecanico ADD CONSTRAINT RefTblCabecalhoMecanico7 
    FOREIGN KEY (IdFormulario)
    REFERENCES TblCabecalhoMecanico(IdFormulario)
go


/* 
 * TABLE: TblIdMonitor 
 */

ALTER TABLE TblIdMonitor ADD CONSTRAINT RefTblCabecalhoMonitor535 
    FOREIGN KEY (IdFormulario)
    REFERENCES TblCabecalhoMonitor(IdFormulario)
go

