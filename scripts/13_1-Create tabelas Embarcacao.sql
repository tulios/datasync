/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FCE.dm1
 * Author :       CRISTIVON
 *
 * Date Created : Friday, March 26, 2010 10:35:10
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoEmbarcacao 
 */

CREATE TABLE tblCabecalhoEmbarcacao(
    IdFormulario    varchar(10)      NOT NULL,
    Pesquisador     varchar(50)      NULL,
    Data            smalldatetime    NOT NULL,
    IdMunicipio     int              NULL,
    IdRota          int              NULL,
    Rota            varchar(100)     NULL,
    HoraInicial     varchar(5)       NULL,
    HoraFinal       varchar(5)       NULL,
    CONSTRAINT CabecalhoEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoEmbarcacao >>>'
go

/* 
 * TABLE: tblCaracterizacaoEmbarcacao 
 */

CREATE TABLE tblCaracterizacaoEmbarcacao(
    IdFormulario            varchar(10)     NOT NULL,
    TipoPropulsao           int             NULL,
    QuaisOutrasPropulsao    varchar(100)    NULL,
    QuantidadeMotores       int             NULL,
    SabePotenciaMotor1      varchar(15)     NULL,
    SabePotenciaMotor2      varchar(15)     NULL,
    SabePotenciaMotor3      varchar(15)     NULL,
    PotenciaMotor1          varchar(20)     NULL,
    MarcaMotor1             varchar(50)     NULL,
    ModeloMotor1            varchar(50)     NULL,
    PotenciaMotor2          varchar(20)     NULL,
    MarcaMotor2             varchar(50)     NULL,
    ModeloMotor2            varchar(50)     NULL,
    PotenciaMotor3          varchar(20)     NULL,
    MarcaMotor3             varchar(50)     NULL,
    ModeloMotor3            varchar(50)     NULL,
    PossuiReverso           char(3)         NULL,
    MarcaReverso            varchar(50)     NULL,
    RelacaoReverso          varchar(50)     NULL,
    ComandoMotor            int             NULL,
    QuaisOutrosComandos     varchar(100)    NULL,
    SabeLitros1             varchar(20)     NULL,
    QuantidadeLitros1       varchar(50)     NULL,
    SabeLitros2             varchar(20)     NULL,
    QuantidadeLitros2       varchar(50)     NULL,
    SabeLitros3             varchar(20)     NULL,
    QuantidadeLitros3       varchar(50)     NULL,
    PosicaoComando          int             NULL,
    CONSTRAINT CaracterizacaoEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoEmbarcacao >>>'
go

/* 
 * TABLE: tblCombustivelEmbarcacao 
 */

CREATE TABLE tblCombustivelEmbarcacao(
    IdFormulario         varchar(10)     NOT NULL,
    IdTipoCombustivel    int             NOT NULL,
    QuaisOutros          varchar(100)    NULL,
    CONSTRAINT CombustivelEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario, IdTipoCombustivel)
)
go



IF OBJECT_ID('tblCombustivelEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCombustivelEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCombustivelEmbarcacao >>>'
go

/* 
 * TABLE: tblConservacaoEmbarcacao 
 */

CREATE TABLE tblConservacaoEmbarcacao(
    IdFormulario     varchar(10)    NOT NULL,
    EstadoCasco      int            NULL,
    EstadoPiso       int            NULL,
    EstadoTeto       int            NULL,
    EstadoAssento    int            NULL,
    EstadoColete     int            NULL,
    EstadoBoias      int            NULL,
    EstadoBalsa      int            NULL,
    CONSTRAINT ConservacaoEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblConservacaoEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblConservacaoEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblConservacaoEmbarcacao >>>'
go

/* 
 * TABLE: tblDimensaoEmbarcacao 
 */

CREATE TABLE tblDimensaoEmbarcacao(
    IdFormulario          varchar(10)    NOT NULL,
    ComprimentoTotal      varchar(20)    NULL,
    Boca                  varchar(20)    NULL,
    Pontal                varchar(20)    NULL,
    BordaLivreBB          varchar(20)    NULL,
    BordaLivreBE          varchar(20)    NULL,
    ComprimentoAssento    varchar(20)    NULL,
    CONSTRAINT DimensaoEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblDimensaoEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblDimensaoEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblDimensaoEmbarcacao >>>'
go

/* 
 * TABLE: tblIdentificacaoEmbarcacao 
 */

CREATE TABLE tblIdentificacaoEmbarcacao(
    IdFormulario             varchar(10)     NOT NULL,
    PossuiIdentificacao      char(3)         NULL,
    NomeEmbarcacao           varchar(100)    NOT NULL,
    AnoEmbarcacao            int             NULL,
    TipoEmbarcacao           int             NULL,
    QuaisOutrosTipos         varchar(100)    NULL,
    NomePopular              varchar(100)    NULL,
    PossuiInscricao          char(3)         NULL,
    PossuiRegistro           char(3)         NULL,
    NumeroRegistro           varchar(50)     NULL,
    LocalRegistro            varchar(100)    NULL,
    AtividadeEmbarcacao      varchar(100)    NULL,
    CapacidadePassageiros    int             NULL,
    CaladoLeve               varchar(20)     NULL,
    CaladoCarregado          varchar(20)     NULL,
    ArqueacaoLiquida         varchar(20)     NULL,
    ArqueacaoBruta           varchar(20)     NULL,
    PorteBruto               varchar(20)     NULL,
    CONSTRAINT IdentificacaoEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoEmbarcacao >>>'
go

/* 
 * TABLE: tblImagensEmbarcacao 
 */

CREATE TABLE tblImagensEmbarcacao(
    IdFormulario       varchar(10)    NOT NULL,
    VistaFrontal       varchar(20)    NULL,
    VistaLateralEsq    varchar(20)    NULL,
    VistaLateralDir    varchar(20)    NULL,
    VistaTraseira      varchar(20)    NULL,
    CabineGeral        varchar(20)    NULL,
    CabineLeme         varchar(20)    NULL,
    CabineAssento      varchar(20)    NULL,
    CabineFiacao       varchar(20)    NULL,
    MotorFoto1         varchar(20)    NULL,
    MotorFoto2         varchar(20)    NULL,
    MotorFoto3         varchar(20)    NULL,
    MotorFoto4         varchar(20)    NULL,
    EntradaFoto1       varchar(20)    NULL,
    EntradaFoto2       varchar(20)    NULL,
    CoberturaFoto1     varchar(20)    NULL,
    CoberturaFoto2     varchar(20)    NULL,
    PisoFoto1          varchar(20)    NULL,
    PisoFoto2          varchar(20)    NULL,
    AssentoFoto1       varchar(20)    NULL,
    AssentoFoto2       varchar(20)    NULL,
    FiacaoFoto1        varchar(20)    NULL,
    FiacaoFoto2        varchar(20)    NULL,
    ItensFoto1         varchar(20)    NULL,
    ItensFoto2         varchar(20)    NULL,
    Observacao         text           NULL,
    CONSTRAINT ImagensEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblImagensEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblImagensEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblImagensEmbarcacao >>>'
go

/* 
 * TABLE: tblMaterialAssento 
 */

CREATE TABLE tblMaterialAssento(
    IdTipoAssento    int             NOT NULL,
    IdFormulario     varchar(10)     NOT NULL,
    QuaisOutros      varchar(100)    NULL,
    CONSTRAINT MaterialAssento  PRIMARY KEY CLUSTERED (IdTipoAssento, IdFormulario)
)
go



IF OBJECT_ID('tblMaterialAssento') IS NOT NULL
    PRINT '<<< CREATED TABLE tblMaterialAssento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblMaterialAssento >>>'
go

/* 
 * TABLE: tblMaterialCasco 
 */

CREATE TABLE tblMaterialCasco(
    IdTipoCasco     int             NOT NULL,
    IdFormulario    varchar(10)     NOT NULL,
    QuaisOutros     varchar(100)    NULL,
    CONSTRAINT MaterialCasco  PRIMARY KEY CLUSTERED (IdTipoCasco, IdFormulario)
)
go



IF OBJECT_ID('tblMaterialCasco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblMaterialCasco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblMaterialCasco >>>'
go

/* 
 * TABLE: tblMaterialTeto 
 */

CREATE TABLE tblMaterialTeto(
    IdTipoTeto      int             NOT NULL,
    IdFormulario    varchar(10)     NOT NULL,
    QuaisOutros     varchar(100)    NULL,
    CONSTRAINT MaterialTeto  PRIMARY KEY CLUSTERED (IdTipoTeto, IdFormulario)
)
go



IF OBJECT_ID('tblMaterialTeto') IS NOT NULL
    PRINT '<<< CREATED TABLE tblMaterialTeto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblMaterialTeto >>>'
go

/* 
 * TABLE: tblPropriedadeEmbarcacao 
 */

CREATE TABLE tblPropriedadeEmbarcacao(
    IdFormulario         varchar(10)     NOT NULL,
    IdTipoPropriedade    int             NOT NULL,
    QuaisOutros          varchar(100)    NULL,
    CONSTRAINT PropriedadeEmbarcacao  PRIMARY KEY CLUSTERED (IdFormulario, IdTipoPropriedade)
)
go



IF OBJECT_ID('tblPropriedadeEmbarcacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPropriedadeEmbarcacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPropriedadeEmbarcacao >>>'
go

/* 
 * TABLE: tblSinalizacaoNoturna 
 */

CREATE TABLE tblSinalizacaoNoturna(
    IdTipoSinalizacao    int            NOT NULL,
    IdFormulario         varchar(10)    NOT NULL,
    QuaisOutras          char(10)       NULL,
    CONSTRAINT SinalizacaoNoturna  PRIMARY KEY CLUSTERED (IdTipoSinalizacao, IdFormulario)
)
go



IF OBJECT_ID('tblSinalizacaoNoturna') IS NOT NULL
    PRINT '<<< CREATED TABLE tblSinalizacaoNoturna >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblSinalizacaoNoturna >>>'
go

/* 
 * TABLE: tblTipoAssento 
 */

CREATE TABLE tblTipoAssento(
    IdTipoAssento    int            NOT NULL,
    Descricao        varchar(50)    NULL,
    CONSTRAINT TipoAssento  PRIMARY KEY CLUSTERED (IdTipoAssento)
)
go



IF OBJECT_ID('tblTipoAssento') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoAssento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoAssento >>>'
go

/* 
 * TABLE: tblTipoCasco 
 */

CREATE TABLE tblTipoCasco(
    IdTipoCasco    int            NOT NULL,
    Descricao      varchar(50)    NULL,
    CONSTRAINT TipoCasco PRIMARY KEY CLUSTERED (IdTipoCasco)
)
go



IF OBJECT_ID('tblTipoCasco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoCasco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoCasco >>>'
go

/* 
 * TABLE: tblTipoCombustivel 
 */

CREATE TABLE tblTipoCombustivel(
    IdTipoCombustivel    int            NOT NULL,
    Descricao            varchar(15)    NULL,
    CONSTRAINT TipoCombustivel  PRIMARY KEY CLUSTERED (IdTipoCombustivel)
)
go



IF OBJECT_ID('tblTipoCombustivel') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoCombustivel >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoCombustivel >>>'
go

/* 
 * TABLE: tblTipoPropriedade 
 */

CREATE TABLE tblTipoPropriedade(
    IdTipoPropriedade    int            NOT NULL,
    Descricao            varchar(20)    NULL,
    CONSTRAINT TipoPropriedade  PRIMARY KEY CLUSTERED (IdTipoPropriedade)
)
go



IF OBJECT_ID('tblTipoPropriedade') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoPropriedade >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoPropriedade >>>'
go

/* 
 * TABLE: tblTipoSinalizacaoNoturna 
 */

CREATE TABLE tblTipoSinalizacaoNoturna(
    IdTipoSinalizacao    int            NOT NULL,
    Descricao            varchar(30)    NULL,
    CONSTRAINT TipoSinalizacaoNoturna  PRIMARY KEY CLUSTERED (IdTipoSinalizacao)
)
go



IF OBJECT_ID('tblTipoSinalizacaoNoturna') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoSinalizacaoNoturna >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoSinalizacaoNoturna >>>'
go

/* 
 * TABLE: tblTipoTeto 
 */

CREATE TABLE tblTipoTeto(
    IdTipoTeto    int            NOT NULL,
    Descricao     varchar(50)    NULL,
    CONSTRAINT TipoTeto  PRIMARY KEY CLUSTERED (IdTipoTeto)
)
go



IF OBJECT_ID('tblTipoTeto') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoTeto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoTeto >>>'
go

/* 
 * TABLE: tblTripulacao 
 */

CREATE TABLE tblTripulacao(
    IdFormulario               varchar(10)    NOT NULL,
    PossuiBoias                char(3)        NULL,
    QuantasBoias               int            NULL,
    PossuiColetes              char(3)        NULL,
    QuantosColetes             int            NULL,
    PossuiJanelas              char(3)        NULL,
    QuantasJanelas             int            NULL,
    PossuiSafenas              char(3)        NULL,
    ProtecaoMotor              char(3)        NULL,
    PossuiGuardaCorpo          varchar(15)    NULL,
    PossuiBaterias             char(3)        NULL,
    PossuiCarregadorBateria    char(3)        NULL,
    PossuiPartidaEletrica      char(3)        NULL,
    CONSTRAINT Tripulacao PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblTripulacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTripulacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTripulacao >>>'
go

/* 
 * INDEX: Ref21282424 
 */

CREATE INDEX Ref2128424242 ON tblCabecalhoEmbarcacao(IdMunicipio)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblCabecalhoEmbarcacao') AND name='Ref21284242')
    PRINT '<<< CREATED INDEX tblCabecalhoEmbarcacao.Ref212842424 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblCabecalhoEmbarcacao.Ref21284242 >>>'
go

/* 
 * INDEX: Ref144242 
 */

CREATE INDEX Ref144242 ON tblCaracterizacaoEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblCaracterizacaoEmbarcacao') AND name='Ref1424242')
    PRINT '<<< CREATED INDEX tblCaracterizacaoEmbarcacao.Ref144242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblCaracterizacaoEmbarcacao.Ref144242>>>'
go

/* 
 * INDEX: Ref552424 
 */

CREATE INDEX Ref55 ON tblCombustivelEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblCombustivelEmbarcacao') AND name='Ref5542424')
    PRINT '<<< CREATED INDEX tblCombustivelEmbarcacao.Ref554242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblCombustivelEmbarcacao.Ref554242 >>>'
go

/* 
 * INDEX: Ref764242 
 */

CREATE INDEX Ref764242 ON tblCombustivelEmbarcacao(IdTipoCombustivel)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblCombustivelEmbarcacao') AND name='Ref764242')
    PRINT '<<< CREATED INDEX tblCombustivelEmbarcacao.Ref764242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblCombustivelEmbarcacao.Ref764242 >>>'
go

/* 
 * INDEX: Ref184242 
 */

CREATE INDEX Ref184242 ON tblConservacaoEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblConservacaoEmbarcacao') AND name='Ref184242')
    PRINT '<<< CREATED INDEX tblConservacaoEmbarcacao.Ref184242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblConservacaoEmbarcacao.Ref184242 >>>'
go

/* 
 * INDEX: Ref194242 
 */

CREATE INDEX Ref192424 ON tblDimensaoEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblDimensaoEmbarcacao') AND name='Ref194242')
    PRINT '<<< CREATED INDEX tblDimensaoEmbarcacao.Ref194242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblDimensaoEmbarcacao.Ref194242 >>>'
go

/* 
 * INDEX: Ref134242 
 */

CREATE INDEX Ref134242 ON tblIdentificacaoEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblIdentificacaoEmbarcacao') AND name='Ref134242')
    PRINT '<<< CREATED INDEX tblIdentificacaoEmbarcacao.Ref134242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblIdentificacaoEmbarcacao.Ref134242 >>>'
go

/* 
 * INDEX: Ref174242 
 */

CREATE INDEX Ref174242 ON tblImagensEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblImagensEmbarcacao') AND name='Ref174242')
    PRINT '<<< CREATED INDEX tblImagensEmbarcacao.Ref174242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblImagensEmbarcacao.Ref174242 >>>'
go

/* 
 * INDEX: Ref8164242 
 */

CREATE INDEX Ref816 ON tblMaterialAssento(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblMaterialAssento') AND name='Ref8164242')
    PRINT '<<< CREATED INDEX tblMaterialAssento.Ref8164242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblMaterialAssento.Ref8164242 >>>'
go

/* 
 * INDEX: Ref15204242 
 */

CREATE INDEX Ref1520 ON tblMaterialAssento(IdTipoAssento)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblMaterialAssento') AND name='Ref15204242')
    PRINT '<<< CREATED INDEX tblMaterialAssento.Ref15204242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblMaterialAssento.Ref15204242 >>>'
go

/* 
 * INDEX: Ref8184242 
 */

CREATE INDEX Ref8184242 ON tblMaterialCasco(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblMaterialCasco') AND name='Ref818424')
    PRINT '<<< CREATED INDEX tblMaterialCasco.Ref8184242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblMaterialCasco.Ref8184242 >>>'
go

/* 
 * INDEX: Ref14214242 
 */

CREATE INDEX Ref14214242 ON tblMaterialCasco(IdTipoCasco)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblMaterialCasco') AND name='Ref14214242')
    PRINT '<<< CREATED INDEX tblMaterialCasco.Ref14214242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblMaterialCasco.Ref14214242 >>>'
go

/* 
 * INDEX: Ref8154242 
 */

CREATE INDEX Ref8154242 ON tblMaterialTeto(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblMaterialTeto') AND name='Ref8154242')
    PRINT '<<< CREATED INDEX tblMaterialTeto.Ref8154242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblMaterialTeto.Ref8154242 >>>'
go

/* 
 * INDEX: Ref16194242 
 */

CREATE INDEX Ref16194242 ON tblMaterialTeto(IdTipoTeto)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblMaterialTeto') AND name='Ref16194242')
    PRINT '<<< CREATED INDEX tblMaterialTeto.Ref16194242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblMaterialTeto.Ref16194242 >>>'
go

/* 
 * INDEX: Ref2114242 
 */

CREATE INDEX Ref2114242 ON tblPropriedadeEmbarcacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblPropriedadeEmbarcacao') AND name='Ref2114242')
    PRINT '<<< CREATED INDEX tblPropriedadeEmbarcacao.Ref2114242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblPropriedadeEmbarcacao.Ref2114242 >>>'
go

/* 
 * INDEX: Ref4124242 
 */

CREATE INDEX Ref4124242 ON tblPropriedadeEmbarcacao(IdTipoPropriedade)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblPropriedadeEmbarcacao') AND name='Ref4124242')
    PRINT '<<< CREATED INDEX tblPropriedadeEmbarcacao.Ref4124242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblPropriedadeEmbarcacao.Ref4124242 >>>'
go

/* 
 * INDEX: Ref8134242 
 */

CREATE INDEX Ref8134242 ON tblSinalizacaoNoturna(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblSinalizacaoNoturna') AND name='Ref8134242')
    PRINT '<<< CREATED INDEX tblSinalizacaoNoturna.Ref8134242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblSinalizacaoNoturna.Ref8134242 >>>'
go

/* 
 * INDEX: Ref1014424 
 */

CREATE INDEX Ref10142424 ON tblSinalizacaoNoturna(IdTipoSinalizacao)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblSinalizacaoNoturna') AND name='Ref10144242')
    PRINT '<<< CREATED INDEX tblSinalizacaoNoturna.Ref10144242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblSinalizacaoNoturna.Ref10144242 >>>'
go

/* 
 * INDEX: Ref1104242 
 */

CREATE INDEX Ref1104242 ON tblTripulacao(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblTripulacao') AND name='Ref1104242')
    PRINT '<<< CREATED INDEX tblTripulacao.Ref1104242 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblTripulacao.Ref1104242 >>>'
go

/* 
 * TABLE: tblCabecalhoEmbarcacao 
 */

ALTER TABLE tblCabecalhoEmbarcacao ADD CONSTRAINT ReftblMunicipio284242 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoEmbarcacao 
 */

ALTER TABLE tblCaracterizacaoEmbarcacao ADD CONSTRAINT ReftblCabecalhoEmbarcacao44242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcacao(IdFormulario)
go


/* 
 * TABLE: tblCombustivelEmbarcacao 
 */

ALTER TABLE tblCombustivelEmbarcacao ADD CONSTRAINT ReftblCaracterizacaoEmbarcacao54242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCaracterizacaoEmbarcacao(IdFormulario)
go

ALTER TABLE tblCombustivelEmbarcacao ADD CONSTRAINT ReftblTipoCombustivel6242
    FOREIGN KEY (IdTipoCombustivel)
    REFERENCES tblTipoCombustivel(IdTipoCombustivel)
go


/* 
 * TABLE: tblConservacaoEmbarcacao 
 */

ALTER TABLE tblConservacaoEmbarcacao ADD CONSTRAINT ReftblCabecalhoEmbarcacao8424 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcacao(IdFormulario)
go


/* 
 * TABLE: tblDimensaoEmbarcacao 
 */

ALTER TABLE tblDimensaoEmbarcacao ADD CONSTRAINT ReftblCabecalhoEmbarcacao94242
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcacao(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoEmbarcacao 
 */

ALTER TABLE tblIdentificacaoEmbarcacao ADD CONSTRAINT ReftblCabecalhoEmbarcacao34242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcacao(IdFormulario)
go


/* 
 * TABLE: tblImagensEmbarcacao 
 */

ALTER TABLE tblImagensEmbarcacao ADD CONSTRAINT ReftblCabecalhoEmbarcacao74242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcacao(IdFormulario)
go


/* 
 * TABLE: tblMaterialAssento 
 */

ALTER TABLE tblMaterialAssento ADD CONSTRAINT ReftblTripulacao164242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblTripulacao(IdFormulario)
go

ALTER TABLE tblMaterialAssento ADD CONSTRAINT ReftblTipoAssento204242 
    FOREIGN KEY (IdTipoAssento)
    REFERENCES tblTipoAssento(IdTipoAssento)
go


/* 
 * TABLE: tblMaterialCasco 
 */

ALTER TABLE tblMaterialCasco ADD CONSTRAINT ReftblTripulacao184242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblTripulacao(IdFormulario)
go

ALTER TABLE tblMaterialCasco ADD CONSTRAINT ReftblTipoCasco214242 
    FOREIGN KEY (IdTipoCasco)
    REFERENCES tblTipoCasco(IdTipoCasco)
go


/* 
 * TABLE: tblMaterialTeto 
 */

ALTER TABLE tblMaterialTeto ADD CONSTRAINT ReftblTripulacao154242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblTripulacao(IdFormulario)
go

ALTER TABLE tblMaterialTeto ADD CONSTRAINT ReftblTipoTeto194242 
    FOREIGN KEY (IdTipoTeto)
    REFERENCES tblTipoTeto(IdTipoTeto)
go


/* 
 * TABLE: tblPropriedadeEmbarcacao 
 */

ALTER TABLE tblPropriedadeEmbarcacao ADD CONSTRAINT ReftblIdentificacaoEmbarcacao114242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblIdentificacaoEmbarcacao(IdFormulario)
go

ALTER TABLE tblPropriedadeEmbarcacao ADD CONSTRAINT ReftblTipoPropriedade124242
    FOREIGN KEY (IdTipoPropriedade)
    REFERENCES tblTipoPropriedade(IdTipoPropriedade)
go


/* 
 * TABLE: tblSinalizacaoNoturna 
 */

ALTER TABLE tblSinalizacaoNoturna ADD CONSTRAINT ReftblTripulacao134242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblTripulacao(IdFormulario)
go

ALTER TABLE tblSinalizacaoNoturna ADD CONSTRAINT ReftblTipoSinalizacaoNoturna144242 
    FOREIGN KEY (IdTipoSinalizacao)
    REFERENCES tblTipoSinalizacaoNoturna(IdTipoSinalizacao)
go


/* 
 * TABLE: tblTripulacao 
 */

ALTER TABLE tblTripulacao ADD CONSTRAINT ReftblCabecalhoEmbarcacao104242 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoEmbarcacao(IdFormulario)
go


