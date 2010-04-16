/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FIE.dm1
 * Author :       CRISTIVON
 *
 * Date Created : Monday, March 29, 2010 14:58:41
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoMunicipio 
 */

CREATE TABLE tblCabecalhoMunicipio(
    IdFormulario    varchar(10)      NOT NULL,
    Pesquisador     varchar(50)      NULL,
    Data            smalldatetime    NOT NULL,
    IdMunicipio     int              NULL,
    HoraInicial     varchar(5)       NULL,
    HoraFinal       varchar(5)       NULL,
    Observacao      text             NULL,
    CONSTRAINT CabecalhoMunicipio PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoMunicipio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoMunicipio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoMunicipio >>>'
go

/* 
 * TABLE: tblItensMunicipio 
 */

CREATE TABLE tblItensMunicipio(
    IdFormulario                    varchar(10)    NOT NULL,
    PossuiBanco                     char(3)        NULL,
    QuantidadeBanco                 int            NULL,
    FotoBanco1                      varchar(20)    NULL,
    FotoBanco2                      varchar(20)    NULL,
    PossuiLoterica                  char(3)        NULL,
    QuantidadeLoterica              int            NULL,
    FotoLoterica1                   varchar(20)    NULL,
    FotoLoterica2                   varchar(20)    NULL,
    PossuiCorreio                   char(3)        NULL,
    QuantidadeCorreios              int            NULL,
    FotoCorreio1                    varchar(20)    NULL,
    FotoCorreio2                    varchar(20)    NULL,
    PossuiLojaBarco                 char(3)        NULL,
    QuantidadeLojaBarco             int            NULL,
    FotoLojaBarco1                  varchar(20)    NULL,
    FotoLojaBarco2                  varchar(20)    NULL,
    PossuiLojaMotor                 char(3)        NULL,
    QuantidadeLojaMotor             int            NULL,
    FotoLojaMotor1                  varchar(20)    NULL,
    FotoLojaMotor2                  varchar(20)    NULL,
    PossuiLojaManutencao            char(3)        NULL,
    QuantidadeLojaManutencao        int            NULL,
    FotoLojaManutencao1             varchar(20)    NULL,
    FotoLojaManutencao2             varchar(20)    NULL,
    PossuiLojaPeças                 char(3)        NULL,
    QuantidadeLojaPeças             int            NULL,
    FotoLojaPeças1                  varchar(20)    NULL,
    FotoLojaPeças2                  varchar(20)    NULL,
    PossuiRetifica                  char(3)        NULL,
    QuantidadeRetifica              int            NULL,
    FotoRetifica1                   varchar(20)    NULL,
    FotoRetifica2                   varchar(20)    NULL,
    PossuiOficina                   char(3)        NULL,
    QuantidadeOficina               int            NULL,
    FotoOficina1                    varchar(20)    NULL,
    FotoOficina2                    varchar(20)    NULL,
    PossuiEstaleiro                 char(3)        NULL,
    QuantidadeEstaleiro             int            NULL,
    FotoEstaleiro1                  varchar(20)    NULL,
    FotoEstaleiro2                  varchar(20)    NULL,
    PossuiOficinaEletronicos        char(3)        NULL,
    QuantidadeOficinaEletronicos    int            NULL,
    FotoOficinaEletronicos1         varchar(20)    NULL,
    FotoOficinaEletronicos2         varchar(20)    NULL,
    PossuiLojaFerramentas           char(3)        NULL,
    QuantidadeLojaFerramentas       int            NULL,
    ValorAluminio                   varchar(15)    NULL,
    UnidadeAluminio                 varchar(15)    NULL,
    ValorEletrodo                   varchar(15)    NULL,
    FotoLojaFerramentas1            varchar(20)    NULL,
    FotoLojaFerramentas2            varchar(20)    NULL,
    PossuiAssociacao                char(3)        NULL,
    QuantidadeAssociacao            int            NULL,
    FotoAssociacao1                 varchar(20)    NULL,
    FotoAssociacao2                 varchar(20)    NULL,
    PossuiVHF                       char(3)        NULL,
    QuantidadeVHF                   int            NULL,
    FotoVHF1                        varchar(20)    NULL,
    FotoVHF2                        varchar(20)    NULL,
    PossuiLanHouse                  char(3)        NULL,
    QuantidadeLanHouse              int            NULL,
    FotoLanHouse1                   varchar(20)    NULL,
    FotoLanHouse2                   varchar(20)    NULL,
    CONSTRAINT ItensMunicipio PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblItensMunicipio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblItensMunicipio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblItensMunicipio >>>'
go

/* 
 * TABLE: tblOutrosItensMunicipio 
 */

CREATE TABLE tblOutrosItensMunicipio(
    IdFormulario    varchar(10)     NOT NULL,
    Foto1           varchar(20)     NULL,
    Descricao1      varchar(100)    NULL,
    Foto2           varchar(20)     NULL,
    Descricao2      varchar(100)    NULL,
    Foto3           varchar(20)     NULL,
    Descricao3      varchar(100)    NULL,
    Foto4           varchar(20)     NULL,
    Descricao4      varchar(100)    NULL,
    Foto5           varchar(20)     NULL,
    Descricao5      varchar(100)    NULL,
    Foto6           varchar(20)     NULL,
    Descricao6      varchar(100)    NULL,
    Foto7           varchar(20)     NULL,
    Descricao7      varchar(100)    NULL,
    Foto8           varchar(20)     NULL,
    Descricao8      varchar(100)    NULL,
    CONSTRAINT OutrosItensMunicipio  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblOutrosItensMunicipio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblOutrosItensMunicipio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblOutrosItensMunicipio >>>'
go

/* 
 * TABLE: tblPostoAbastecimento1 
 */

CREATE TABLE tblPostoAbastecimento1(
    IdFormulario                varchar(10)     NOT NULL,
    Bandeira                    varchar(50)     NULL,
    Flutuante                   char(3)         NULL,
    Gasolina                    varchar(6)      NULL,
    Alcool                      varchar(6)      NULL,
    Diesel                      varchar(6)      NULL,
    Oleo2Tempos                 varchar(6)      NULL,
    Oleo4Tempos                 varchar(6)      NULL,
    FacilidadeGasolina          char(3)         NULL,
    PorqueFacilidadeGasolina    varchar(100)    NULL,
    DeOndeVemGasolina           varchar(100)    NULL,
    FacilidadeDiesel            char(3)         NULL,
    PorqueFacilidadeDiesel      varchar(100)    NULL,
    DeOndeVemDiesel             varchar(100)    NULL,
    FotoPosto1                  varchar(20)     NULL,
    FotoPosto2                  varchar(20)     NULL,
    CONSTRAINT PostoAbastecimento1  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblPostoAbastecimento1') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPostoAbastecimento1 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPostoAbastecimento1 >>>'
go

/* 
 * TABLE: tblPostoAbastecimento2 
 */

CREATE TABLE tblPostoAbastecimento2(
    IdFormulario                varchar(10)     NOT NULL,
    Bandeira                    varchar(50)     NULL,
    Flutuante                   char(3)         NULL,
    Gasolina                    varchar(6)      NULL,
    Alcool                      varchar(6)      NULL,
    Diesel                      varchar(6)      NULL,
    Oleo2Tempos                 varchar(6)      NULL,
    Oleo4Tempos                 varchar(6)      NULL,
    FacilidadeGasolina          char(3)         NULL,
    PorqueFacilidadeGasolina    varchar(100)    NULL,
    DeOndeVemGasolina           varchar(100)    NULL,
    FacilidadeDiesel            char(3)         NULL,
    PorqueFacilidadeDiesel      varchar(100)    NULL,
    DeOndeVemDiesel             varchar(100)    NULL,
    FotoPosto1                  varchar(20)     NULL,
    FotoPosto2                  varchar(20)     NULL,
    CONSTRAINT PostoAbastecimento2  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblPostoAbastecimento2') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPostoAbastecimento2 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPostoAbastecimento2 >>>'
go

/* 
 * TABLE: tblPostoAbastecimento3 
 */

CREATE TABLE tblPostoAbastecimento3(
    IdFormulario                varchar(10)     NOT NULL,
    Bandeira                    varchar(50)     NULL,
    Flutuante                   char(3)         NULL,
    Gasolina                    varchar(6)      NULL,
    Alcool                      varchar(6)      NULL,
    Diesel                      varchar(6)      NULL,
    Oleo2Tempos                 varchar(6)      NULL,
    Oleo4Tempos                 varchar(6)      NULL,
    FacilidadeGasolina          char(3)         NULL,
    PorqueFacilidadeGasolina    varchar(100)    NULL,
    DeOndeVemGasolina           varchar(100)    NULL,
    FacilidadeDiesel            char(3)         NULL,
    PorqueFacilidadeDiesel      varchar(100)    NULL,
    DeOndeVemDiesel             varchar(100)    NULL,
    FotoPosto1                  varchar(20)     NULL,
    FotoPosto2                  varchar(20)     NULL,
    CONSTRAINT PostoAbastecimento3  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblPostoAbastecimento3') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPostoAbastecimento3 >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPostoAbastecimento3 >>>'
go

/* 
 * TABLE: tblServiçosEmergenciaisMunicipio 
 */

CREATE TABLE tblServiçosEmergenciaisMunicipio(
    IdFormulario                varchar(10)     NOT NULL,
    PossuiBombeiro              char(3)         NULL,
    QuantidadeBombeiro          int             NULL,
    BombeiroPossuiBarco         char(3)         NULL,
    FotoBombeiro1               varchar(20)     NULL,
    FotoBombeiro2               varchar(20)     NULL,
    PossuiHospital              char(3)         NULL,
    QuantidadeHospital          int             NULL,
    HospitalPossuiBarco         char(3)         NULL,
    FotoHospital1               varchar(20)     NULL,
    FotoHospital2               varchar(20)     NULL,
    PossuiPostoSaude            char(3)         NULL,
    QuantidadePostoSaude        int             NULL,
    PostoSaudePossuiBarco       char(3)         NULL,
    FotoPostoSaude1             varchar(20)     NULL,
    FotoPostoSaude2             varchar(20)     NULL,
    PossuiPostoPolicial         char(3)         NULL,
    QuantidadePostoPolicial     int             NULL,
    PostoPolicialPossuiBarco    char(3)         NULL,
    FotoPostoPolicial1          varchar(20)     NULL,
    FotoPostoPolicial2          varchar(20)     NULL,
    PossuiTelefoniaCelular      char(3)         NULL,
    QuaisTelefoniasCelular      varchar(100)    NULL,
    PossuiTelefoniaFixa         char(3)         NULL,
    CONSTRAINT ServiçosEmergenciaisMunicipio  PRIMARY KEY CLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblServiçosEmergenciaisMunicipio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblServiçosEmergenciaisMunicipio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblServiçosEmergenciaisMunicipio >>>'
go

/* 
 * INDEX: Ref614545 
 */

CREATE INDEX Ref614545 ON tblCabecalhoMunicipio(IdMunicipio)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblCabecalhoMunicipio') AND name='Ref61452452')
    PRINT '<<< CREATED INDEX tblCabecalhoMunicipio.Ref61245245 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblCabecalhoMunicipio.Ref61425424 >>>'
go

/* 
 * INDEX: Ref122452452 
 */

CREATE INDEX Ref12452452 ON tblItensMunicipio(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblItensMunicipio') AND name='Ref12452452')
    PRINT '<<< CREATED INDEX tblItensMunicipio.Ref12452452 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblItensMunicipio.Ref12245245 >>>'
go

/* 
 * INDEX: Ref154252 
 */

CREATE INDEX Ref152452 ON tblOutrosItensMunicipio(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblOutrosItensMunicipio') AND name='Ref15452452')
    PRINT '<<< CREATED INDEX tblOutrosItensMunicipio.Ref15245245 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblOutrosItensMunicipio.Ref15452452 >>>'
go

/* 
 * INDEX: Ref144525 
 */

CREATE INDEX Ref14452452 ON tblPostoAbastecimento1(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblPostoAbastecimento1') AND name='Ref1445245')
    PRINT '<<< CREATED INDEX tblPostoAbastecimento1.Ref14452452 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblPostoAbastecimento1.Ref14452452 >>>'
go

/* 
 * INDEX: Ref16452 
 */

CREATE INDEX Ref1645245 ON tblPostoAbastecimento2(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblPostoAbastecimento2') AND name='Ref16452452')
    PRINT '<<< CREATED INDEX tblPostoAbastecimento2.Ref16452452 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblPostoAbastecimento2.Ref16452452 >>>'
go

/* 
 * INDEX: Ref1765656 
 */

CREATE INDEX Ref1765656 ON tblPostoAbastecimento3(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblPostoAbastecimento3') AND name='Ref175665')
    PRINT '<<< CREATED INDEX tblPostoAbastecimento3.Ref175656 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblPostoAbastecimento3.Ref175656 >>>'
go

/* 
 * INDEX: Ref1345423 
 */

CREATE INDEX Ref134534545 ON tblServiçosEmergenciaisMunicipio(IdFormulario)
go
IF EXISTS (SELECT * FROM sysindexes WHERE id=OBJECT_ID('tblServiçosEmergenciaisMunicipio') AND name='Ref1345345')
    PRINT '<<< CREATED INDEX tblServiçosEmergenciaisMunicipio.Ref13453453 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX tblServiçosEmergenciaisMunicipio.Ref13453453 >>>'
go

/* 
 * TABLE: tblCabecalhoMunicipio 
 */

ALTER TABLE tblCabecalhoMunicipio ADD CONSTRAINT ReftblMunicipio1 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblItensMunicipio 
 */

ALTER TABLE tblItensMunicipio ADD CONSTRAINT ReftblCabecalhoMunicipio2 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoMunicipio(IdFormulario)
go


/* 
 * TABLE: tblOutrosItensMunicipio 
 */

ALTER TABLE tblOutrosItensMunicipio ADD CONSTRAINT ReftblCabecalhoMunicipio5 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoMunicipio(IdFormulario)
go


/* 
 * TABLE: tblPostoAbastecimento1 
 */

ALTER TABLE tblPostoAbastecimento1 ADD CONSTRAINT ReftblCabecalhoMunicipio4 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoMunicipio(IdFormulario)
go


/* 
 * TABLE: tblPostoAbastecimento2 
 */

ALTER TABLE tblPostoAbastecimento2 ADD CONSTRAINT ReftblCabecalhoMunicipio6 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoMunicipio(IdFormulario)
go


/* 
 * TABLE: tblPostoAbastecimento3 
 */

ALTER TABLE tblPostoAbastecimento3 ADD CONSTRAINT ReftblCabecalhoMunicipio7 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoMunicipio(IdFormulario)
go


/* 
 * TABLE: tblServiçosEmergenciaisMunicipio 
 */

ALTER TABLE tblServiçosEmergenciaisMunicipio ADD CONSTRAINT ReftblCabecalhoMunicipio3 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoMunicipio(IdFormulario)
go


