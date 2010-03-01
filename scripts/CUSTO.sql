/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      Nemesis v1.6 Corporativo
 * Project :      CUSTO ALUNO.dm1
 * Author :       Nemesis v1.6 Corporativo
 *
 * Date Created : Thursday, February 18, 2010 10:01:00
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
    CONSTRAINT PK3_1 PRIMARY KEY CLUSTERED (IdFormulario)
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
    CONSTRAINT PK3_1_1_1_1_1 PRIMARY KEY CLUSTERED (IdFormulario)
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
    CONSTRAINT PK3_1_1 PRIMARY KEY CLUSTERED (IdFormulario)
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
    CONSTRAINT PK3 PRIMARY KEY CLUSTERED (IdFormulario)
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
    Categoria           varchar(30)     NULL,
    TempoExperiencia    varchar(22)     NULL,
    Salario             varchar(10)      NULL,
    CondutorReserva     char(3)         NULL,
    Observacao          varchar(500)    NULL,
    CONSTRAINT PK6 PRIMARY KEY CLUSTERED (IdFormulario)
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
    PosicaoMotor             varchar(12)      NULL,
    QuantMotor               varchar(2)      NULL,
    PotenciaMotor            varchar(8)      NULL,
    TipoCombustivel          varchar(15)     NULL,
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
    CONSTRAINT PK11 PRIMARY KEY CLUSTERED (IdFormulario, IdEmbarcacao)
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
    Salario             varchar(10)      NULL,
    Observacao          varchar(500)    NULL,
    CONSTRAINT PK9 PRIMARY KEY CLUSTERED (IdFormulario)
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
    Salario             varchar(10)      NULL,
    Observacao          varchar(500)    NULL,
    CONSTRAINT PK4 PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('TblIdMonitor') IS NOT NULL
    PRINT '<<< CREATED TABLE TblIdMonitor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TblIdMonitor >>>'
go

/* 
 * INDEX: Ref56 
 */

CREATE INDEX Ref56 ON TblIdCondutor(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('TblIdCondutor') AND name='Ref56')
    PRINT '<<< CREATED INDEX TblIdCondutor.Ref56 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX TblIdCondutor.Ref56 >>>'
go

/* 
 * INDEX: Ref1323 
 */

CREATE INDEX Ref1323 ON TblIdCondutor(IdFormulario, IdEmbarcacao)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('TblIdCondutor') AND name='Ref1323')
    PRINT '<<< CREATED INDEX TblIdCondutor.Ref1323 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX TblIdCondutor.Ref1323 >>>'
go

/* 
 * INDEX: Ref1510 
 */

CREATE INDEX Ref1510 ON TblIdEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('TblIdEmbarcacao') AND name='Ref1510')
    PRINT '<<< CREATED INDEX TblIdEmbarcacao.Ref1510 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX TblIdEmbarcacao.Ref1510 >>>'
go

/* 
 * INDEX: Ref87 
 */

CREATE INDEX Ref87 ON TblIdMecanico(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('TblIdMecanico') AND name='Ref87')
    PRINT '<<< CREATED INDEX TblIdMecanico.Ref87 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX TblIdMecanico.Ref87 >>>'
go

/* 
 * INDEX: Ref35 
 */

CREATE INDEX Ref35 ON TblIdMonitor(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('TblIdMonitor') AND name='Ref35')
    PRINT '<<< CREATED INDEX TblIdMonitor.Ref35 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX TblIdMonitor.Ref35 >>>'
go

/* 
 * INDEX: Ref1324 
 */

CREATE INDEX Ref1324 ON TblIdMonitor(IdFormulario, IdEmbarcacao)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('TblIdMonitor') AND name='Ref1324')
    PRINT '<<< CREATED INDEX TblIdMonitor.Ref1324 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX TblIdMonitor.Ref1324 >>>'
go

/* 
 * TABLE: TblIdCondutor 
 */

ALTER TABLE TblIdCondutor ADD CONSTRAINT RefTblCabecalhoCondutor6 
    FOREIGN KEY (IdFormulario)
    REFERENCES TblCabecalhoCondutor(IdFormulario)
go

ALTER TABLE TblIdCondutor ADD CONSTRAINT RefTblIdEmbarcacao23 
    FOREIGN KEY (IdEmbarcacao)
    REFERENCES TblIdEmbarcacao(IdEmbarcacao)
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

ALTER TABLE TblIdMonitor ADD CONSTRAINT RefTblCabecalhoMonitor5 
    FOREIGN KEY (IdFormulario)
    REFERENCES TblCabecalhoMonitor(IdFormulario)
go

ALTER TABLE TblIdMonitor ADD CONSTRAINT RefTblIdEmbarcacao24 
    FOREIGN KEY (IdEmbarcacao)
    REFERENCES TblIdEmbarcacao(IdEmbarcacao)
go


