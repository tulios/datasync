
USE BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FP5 Condutor.DM1
 * Author :       mazuki
 *
 * Date Created : Monday, February 22, 2010 17:02:31
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoCondutor 
 */

CREATE TABLE tblCabecalhoCondutor(
    IdFormulario      varchar(9)       NOT NULL,
    IdPesquisador     int              NOT NULL,
    IdMunicipio       int              NULL,
    Rota              varchar(100)     NOT NULL,
    Data              smalldatetime    NULL,
    HorarioInicio     varchar(5)       NOT NULL,
    HorarioTermino    varchar(5)       NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoCondutor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoCondutor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoCondutor >>>'
go

/* 
 * TABLE: tblCaracterizacaoCondutor 
 */

CREATE TABLE tblCaracterizacaoCondutor(
    IdFormulario                     varchar(9)     NOT NULL,
    TempoExperienciaCondutorAnos     int            NULL,
    TempoExperienciaCondutorMeses    int            NULL,
    TempoAtuacaoAnos                 int            NULL,
    TempoAtuacaoMeses                int            NULL,
    PossuiHabilitacao                char(3)        NOT NULL,
    TipoCategoria                    varchar(10)    NULL,
    AnoRegistro                      int            NULL,
    ParticipacaoCurso                char(3)        NOT NULL,
    PilotaBarcoMotorPopa             char(3)        NOT NULL,
    QuantoHP                         int            NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoCondutor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoCondutor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoCondutor >>>'
go

/* 
 * TABLE: tblIdentificacaoCondutor 
 */

CREATE TABLE tblIdentificacaoCondutor(
    IdFormulario          varchar(9)      NOT NULL,
    Comunidade            varchar(100)    NULL,
    Sexo                  char(1)         NOT NULL,
    Idade                 int             NULL,
    IdTipoEscolaridade    int             NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoCondutor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoCondutor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoCondutor >>>'
go

/* 
 * TABLE: tblInformacaoCondutor 
 */

CREATE TABLE tblInformacaoCondutor(
    IdFormulario              varchar(9)      NOT NULL,
    QuantidadeRota            int             NULL,
    TempoRotaLonga            varchar(5)      NULL,
    TempoRotaCurta            varchar(5)      NULL,
    NaoSabeTempo              bit             NULL,
    QuantidadeRotaAtendida    int             NULL,
    QuaisRotasAtendidas       varchar(100)    NULL,
    QuaisOutrosContratos      varchar(100)    NULL,
    FrequenciaFiscalizacao    int             NULL,
    QualOutroFiscalizacao     char(10)        NULL,
    PercursoMaisTempo         int             NULL,
    QuantoTempo               varchar(5)      NULL,
    PorqueMaisTempo           varchar(100)       NULL,
    DiferencaTempo            char(3)         NULL,
    QualDiferencaTempo        varchar(100)    NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutor >>>'
go

/* 
 * TABLE: tblInformacaoCondutorAvisoAluno 
 */

CREATE TABLE tblInformacaoCondutorAvisoAluno(
    IdFormulario        varchar(9)      NOT NULL,
    IdTipoAvisoAluno    int             NOT NULL,
    AlunoAssisteAula    char(3)         NOT NULL,
    QualOutro           varchar(100)    NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoAvisoAluno)
)
go



IF OBJECT_ID('tblInformacaoCondutorAvisoAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorAvisoAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorAvisoAluno >>>'
go

/* 
 * TABLE: tblInformacaoCondutorContrato 
 */

CREATE TABLE tblInformacaoCondutorContrato(
    IdFormulario      varchar(9)    NOT NULL,
    IdTipoContrato    int           NOT NULL,
    QuaisOutros       char(10)      NULL,
    Valor             money         NULL,
    CONSTRAINT PK49 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoContrato)
)
go



IF OBJECT_ID('tblInformacaoCondutorContrato') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorContrato >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorContrato >>>'
go

/* 
 * TABLE: tblInformacaoCondutorDonoBarco 
 */

CREATE TABLE tblInformacaoCondutorDonoBarco(
    IdFormulario       varchar(9)    NOT NULL,
    IdTipoDonoBarco    int           NOT NULL,
    Quem               char(10)      NULL,
    CONSTRAINT PK47 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoDonoBarco)
)
go



IF OBJECT_ID('tblInformacaoCondutorDonoBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorDonoBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorDonoBarco >>>'
go

/* 
 * TABLE: tblInformacaoCondutorEscolheBarco 
 */

CREATE TABLE tblInformacaoCondutorEscolheBarco(
    IdFormulario          varchar(9)      NOT NULL,
    IdTipoEscolheBarco    int             NOT NULL,
    QuemOutro             varchar(100)    NULL,
    CONSTRAINT PK51 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoEscolheBarco)
)
go



IF OBJECT_ID('tblInformacaoCondutorEscolheBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorEscolheBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorEscolheBarco >>>'
go

/* 
 * TABLE: tblInformacaoCondutorEstrago 
 */

CREATE TABLE tblInformacaoCondutorEstrago(
    IdTipoEstrago    int             NOT NULL,
    IdFormulario     varchar(9)      NOT NULL,
    QuaisOutros      varchar(100)    NULL,
    CONSTRAINT PK32 PRIMARY KEY NONCLUSTERED (IdTipoEstrago, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorEstrago') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorEstrago >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorEstrago >>>'
go

/* 
 * TABLE: tblInformacaoCondutorGuardaBarco 
 */

CREATE TABLE tblInformacaoCondutorGuardaBarco(
    IdTipoGuardaBarco    int             NOT NULL,
    IdFormulario         varchar(9)      NOT NULL,
    OndeOutro            varchar(100)    NULL,
    CONSTRAINT PK42 PRIMARY KEY NONCLUSTERED (IdTipoGuardaBarco, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorGuardaBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorGuardaBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorGuardaBarco >>>'
go

/* 
 * TABLE: tblInformacaoCondutorMotivoQuebra 
 */

CREATE TABLE tblInformacaoCondutorMotivoQuebra(
    IdTipoMotivo    int             NOT NULL,
    IdFormulario    varchar(9)      NOT NULL,
    QuaisOutros     varchar(100)    NULL,
    CONSTRAINT PK34 PRIMARY KEY NONCLUSTERED (IdTipoMotivo, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorMotivoQuebra') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorMotivoQuebra >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorMotivoQuebra >>>'
go

/* 
 * TABLE: tblInformacaoCondutorOutroAcompanhante 
 */

CREATE TABLE tblInformacaoCondutorOutroAcompanhante(
    IdFormulario               varchar(9)      NOT NULL,
    IdTipoOutroAcompanhante    int             NOT NULL,
    OutroAcompanhante          char(3)         NOT NULL,
    QuemOutro                  varchar(100)    NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoOutroAcompanhante)
)
go



IF OBJECT_ID('tblInformacaoCondutorOutroAcompanhante') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorOutroAcompanhante >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorOutroAcompanhante >>>'
go

/* 
 * TABLE: tblInformacaoCondutorPagaManutencao 
 */

CREATE TABLE tblInformacaoCondutorPagaManutencao(
    IdTipoPagaManutencao    int             NOT NULL,
    IdFormulario            varchar(9)      NOT NULL,
    QualOutro               varchar(100)    NULL,
    CONSTRAINT PK26 PRIMARY KEY NONCLUSTERED (IdTipoPagaManutencao, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorPagaManutencao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorPagaManutencao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorPagaManutencao >>>'
go

/* 
 * TABLE: tblInformacaoCondutorQuandoManutencao 
 */

CREATE TABLE tblInformacaoCondutorQuandoManutencao(
    IdTipoQuandoManutencao    int             NOT NULL,
    IdFormulario              varchar(9)      NOT NULL,
    QuandoOutro               varchar(100)    NULL,
    CONSTRAINT PK22 PRIMARY KEY NONCLUSTERED (IdTipoQuandoManutencao, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorQuandoManutencao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorQuandoManutencao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorQuandoManutencao >>>'
go

/* 
 * TABLE: tblInformacaoCondutorRealizaManutencao 
 */

CREATE TABLE tblInformacaoCondutorRealizaManutencao(
    IdTipoRealizaManutencao    int             NOT NULL,
    IdFormulario               varchar(9)      NOT NULL,
    QuemOutro                  varchar(100)    NULL,
    CONSTRAINT PK24 PRIMARY KEY NONCLUSTERED (IdTipoRealizaManutencao, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorRealizaManutencao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorRealizaManutencao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorRealizaManutencao >>>'
go

/* 
 * TABLE: tblInformacaoCondutorRealizaReparo 
 */

CREATE TABLE tblInformacaoCondutorRealizaReparo(
    IdFormulario               varchar(9)      NOT NULL,
    IdTipoRealizaManutencao    int             NOT NULL,
    QuemOutro                  varchar(100)    NULL,
    CONSTRAINT PK24_1 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoRealizaManutencao)
)
go



IF OBJECT_ID('tblInformacaoCondutorRealizaReparo') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorRealizaReparo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorRealizaReparo >>>'
go

/* 
 * TABLE: tblInformacaoCondutorServico 
 */

CREATE TABLE tblInformacaoCondutorServico(
    IdTipoServico    int             NOT NULL,
    IdFormulario     varchar(9)      NOT NULL,
    QualOutro        varchar(100)    NULL,
    Frequencia       varchar(100)    NULL,
    CONSTRAINT PK28 PRIMARY KEY NONCLUSTERED (IdTipoServico, IdFormulario)
)
go



IF OBJECT_ID('tblInformacaoCondutorServico') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorServico >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorServico >>>'
go

/* 
 * TABLE: tblInformacaoCondutorTrabalhaRota 
 */

CREATE TABLE tblInformacaoCondutorTrabalhaRota(
    IdFormulario             varchar(9)      NOT NULL,
    IdTipoNaoTrabalhaRota    int             NOT NULL,
    SempreTrabalhou          char(3)         NULL,
    QualOutro                varchar(100)    NULL,
    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoNaoTrabalhaRota)
)
go



IF OBJECT_ID('tblInformacaoCondutorTrabalhaRota') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorTrabalhaRota >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorTrabalhaRota >>>'
go

/* 
 * TABLE: tblInformacaoCondutorTransportaOutro 
 */

CREATE TABLE tblInformacaoCondutorTransportaOutro(
    IdFormulario             varchar(9)      NOT NULL,
    IdTipoTransportaOutro    int             NOT NULL,
    QualOutro                varchar(100)    NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoTransportaOutro)
)
go



IF OBJECT_ID('tblInformacaoCondutorTransportaOutro') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorTransportaOutro >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorTransportaOutro >>>'
go

/* 
 * TABLE: tblInformacaoCondutorTrocaBarco 
 */

CREATE TABLE tblInformacaoCondutorTrocaBarco(
    IdFormulario        varchar(9)      NOT NULL,
    IdTipoTrocaBarco    int             NOT NULL,
    RealizaTroca        char(3)         NOT NULL,
    QualOutro           varchar(100)    NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoTrocaBarco)
)
go



IF OBJECT_ID('tblInformacaoCondutorTrocaBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoCondutorTrocaBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoCondutorTrocaBarco >>>'
go



/* 
 * TABLE: tblTipoAvisoAluno 
 */

CREATE TABLE tblTipoAvisoAluno(
    IdTipoAvisoAluno    int            NOT NULL,
    Descricao           varchar(50)    NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (IdTipoAvisoAluno)
)
go



IF OBJECT_ID('tblTipoAvisoAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoAvisoAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoAvisoAluno >>>'
go

/* 
 * TABLE: tblTipoContrato 
 */

CREATE TABLE tblTipoContrato(
    IdTipoContrato    int            NOT NULL,
    Descricao         varchar(50)    NULL,
    CONSTRAINT PK50 PRIMARY KEY NONCLUSTERED (IdTipoContrato)
)
go



IF OBJECT_ID('tblTipoContrato') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoContrato >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoContrato >>>'
go

/* 
 * TABLE: tblTipoDonoBarco 
 */

CREATE TABLE tblTipoDonoBarco(
    IdTipoDonoBarco    int            NOT NULL,
    Descricao          varchar(50)    NULL,
    CONSTRAINT PK48 PRIMARY KEY NONCLUSTERED (IdTipoDonoBarco)
)
go



IF OBJECT_ID('tblTipoDonoBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoDonoBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoDonoBarco >>>'
go



/* 
 * TABLE: tblTipoEscolheBarco 
 */

CREATE TABLE tblTipoEscolheBarco(
    IdTipoEscolheBarco    int            NOT NULL,
    Descricao             varchar(50)    NULL,
    CONSTRAINT PK52 PRIMARY KEY NONCLUSTERED (IdTipoEscolheBarco)
)
go



IF OBJECT_ID('tblTipoEscolheBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoEscolheBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoEscolheBarco >>>'
go

/* 
 * TABLE: tblTipoEstrago 
 */

CREATE TABLE tblTipoEstrago(
    IdTipoEstrago    int            NOT NULL,
    Descricao        varchar(50)    NULL,
    CONSTRAINT PK33 PRIMARY KEY NONCLUSTERED (IdTipoEstrago)
)
go



IF OBJECT_ID('tblTipoEstrago') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoEstrago >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoEstrago >>>'
go

/* 
 * TABLE: tblTipoGuardaBarco 
 */

CREATE TABLE tblTipoGuardaBarco(
    IdTipoGuardaBarco    int            NOT NULL,
    Descricao            varchar(50)    NOT NULL,
    CONSTRAINT PK43 PRIMARY KEY NONCLUSTERED (IdTipoGuardaBarco)
)
go



IF OBJECT_ID('tblTipoGuardaBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoGuardaBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoGuardaBarco >>>'
go

/* 
 * TABLE: tblTipoMotivoQuebra 
 */

CREATE TABLE tblTipoMotivoQuebra(
    IdTipoMotivo    int            NOT NULL,
    Descricao       varchar(50)    NULL,
    CONSTRAINT PK36 PRIMARY KEY NONCLUSTERED (IdTipoMotivo)
)
go



IF OBJECT_ID('tblTipoMotivoQuebra') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoMotivoQuebra >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoMotivoQuebra >>>'
go

/* 
 * TABLE: tblTipoNaoTrabalhaRota 
 */

CREATE TABLE tblTipoNaoTrabalhaRota(
    IdTipoNaoTrabalhaRota    int            NOT NULL,
    Descricao                varchar(50)    NULL,
    CONSTRAINT PK21 PRIMARY KEY NONCLUSTERED (IdTipoNaoTrabalhaRota)
)
go



IF OBJECT_ID('tblTipoNaoTrabalhaRota') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoNaoTrabalhaRota >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoNaoTrabalhaRota >>>'
go

/* 
 * TABLE: tblTipoOutroAcompanhante 
 */

CREATE TABLE tblTipoOutroAcompanhante(
    IdTipoOutroAcompanhante    int         NOT NULL,
    Descricao                  char(50)    NOT NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (IdTipoOutroAcompanhante)
)
go



IF OBJECT_ID('tblTipoOutroAcompanhante') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoOutroAcompanhante >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoOutroAcompanhante >>>'
go

/* 
 * TABLE: tblTipoPagaManutencao 
 */

CREATE TABLE tblTipoPagaManutencao(
    IdTipoPagaManutencao    int            NOT NULL,
    Descricao               varchar(50)    NULL,
    CONSTRAINT PK27 PRIMARY KEY NONCLUSTERED (IdTipoPagaManutencao)
)
go



IF OBJECT_ID('tblTipoPagaManutencao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoPagaManutencao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoPagaManutencao >>>'
go

/* 
 * TABLE: tblTipoQuandoManutencao 
 */

CREATE TABLE tblTipoQuandoManutencao(
    IdTipoQuandoManutencao    int            NOT NULL,
    Descricao                 varchar(50)    NOT NULL,
    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED (IdTipoQuandoManutencao)
)
go



IF OBJECT_ID('tblTipoQuandoManutencao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoQuandoManutencao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoQuandoManutencao >>>'
go

/* 
 * TABLE: tblTipoRealizaManutencao 
 */

CREATE TABLE tblTipoRealizaManutencao(
    IdTipoRealizaManutencao    int            NOT NULL,
    Descricao                  varchar(50)    NOT NULL,
    CONSTRAINT PK25 PRIMARY KEY NONCLUSTERED (IdTipoRealizaManutencao)
)
go



IF OBJECT_ID('tblTipoRealizaManutencao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoRealizaManutencao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoRealizaManutencao >>>'
go

/* 
 * TABLE: tblTipoServico 
 */

CREATE TABLE tblTipoServico(
    IdTipoServico    int            NOT NULL,
    Descricao        varchar(50)    NULL,
    CONSTRAINT PK29 PRIMARY KEY NONCLUSTERED (IdTipoServico)
)
go



IF OBJECT_ID('tblTipoServico') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoServico >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoServico >>>'
go

/* 
 * TABLE: tblTipoTransportaOutro 
 */

CREATE TABLE tblTipoTransportaOutro(
    IdTipoTransportaOutro    int            NOT NULL,
    Descricao                varchar(50)    NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (IdTipoTransportaOutro)
)
go



IF OBJECT_ID('tblTipoTransportaOutro') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoTransportaOutro >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoTransportaOutro >>>'
go

/* 
 * TABLE: tblTipoTrocaBarco 
 */

CREATE TABLE tblTipoTrocaBarco(
    IdTipoTrocaBarco    int            NOT NULL,
    Descricao           varchar(80)    NOT NULL,
    CONSTRAINT PK18 PRIMARY KEY NONCLUSTERED (IdTipoTrocaBarco)
)
go



IF OBJECT_ID('tblTipoTrocaBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoTrocaBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoTrocaBarco >>>'
go

/* 
 * TABLE: tblCabecalhoCondutor 
 */

ALTER TABLE tblCabecalhoCondutor ADD CONSTRAINT ReftblMunicipio45 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoCondutor 
 */

ALTER TABLE tblCaracterizacaoCondutor ADD CONSTRAINT ReftblCabecalhoCondutor2 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoCondutor(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoCondutor 
 */

ALTER TABLE tblIdentificacaoCondutor ADD CONSTRAINT ReftblCabecalhoCondutor1 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoCondutor(IdFormulario)
go

ALTER TABLE tblIdentificacaoCondutor ADD CONSTRAINT ReftblTipoEscolaridade18 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go


/* 
 * TABLE: tblInformacaoCondutor 
 */

ALTER TABLE tblInformacaoCondutor ADD CONSTRAINT ReftblCabecalhoCondutor3 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoCondutor(IdFormulario)
go


/* 
 * TABLE: tblInformacaoCondutorAvisoAluno 
 */

ALTER TABLE tblInformacaoCondutorAvisoAluno ADD CONSTRAINT ReftblInformacaoCondutor8 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorAvisoAluno ADD CONSTRAINT ReftblTipoAvisoAluno9 
    FOREIGN KEY (IdTipoAvisoAluno)
    REFERENCES tblTipoAvisoAluno(IdTipoAvisoAluno)
go


/* 
 * TABLE: tblInformacaoCondutorContrato 
 */

ALTER TABLE tblInformacaoCondutorContrato ADD CONSTRAINT ReftblInformacaoCondutor49 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorContrato ADD CONSTRAINT ReftblTipoContrato50 
    FOREIGN KEY (IdTipoContrato)
    REFERENCES tblTipoContrato(IdTipoContrato)
go


/* 
 * TABLE: tblInformacaoCondutorDonoBarco 
 */

ALTER TABLE tblInformacaoCondutorDonoBarco ADD CONSTRAINT ReftblInformacaoCondutor47 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorDonoBarco ADD CONSTRAINT ReftblTipoDonoBarco48 
    FOREIGN KEY (IdTipoDonoBarco)
    REFERENCES tblTipoDonoBarco(IdTipoDonoBarco)
go


/* 
 * TABLE: tblInformacaoCondutorEscolheBarco 
 */

ALTER TABLE tblInformacaoCondutorEscolheBarco ADD CONSTRAINT ReftblInformacaoCondutor51 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorEscolheBarco ADD CONSTRAINT ReftblTipoEscolheBarco52 
    FOREIGN KEY (IdTipoEscolheBarco)
    REFERENCES tblTipoEscolheBarco(IdTipoEscolheBarco)
go


/* 
 * TABLE: tblInformacaoCondutorEstrago 
 */

ALTER TABLE tblInformacaoCondutorEstrago ADD CONSTRAINT ReftblInformacaoCondutor32 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorEstrago ADD CONSTRAINT ReftblTipoEstrago33 
    FOREIGN KEY (IdTipoEstrago)
    REFERENCES tblTipoEstrago(IdTipoEstrago)
go


/* 
 * TABLE: tblInformacaoCondutorGuardaBarco 
 */

ALTER TABLE tblInformacaoCondutorGuardaBarco ADD CONSTRAINT ReftblInformacaoCondutor40 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorGuardaBarco ADD CONSTRAINT ReftblTipoGuardaBarco41 
    FOREIGN KEY (IdTipoGuardaBarco)
    REFERENCES tblTipoGuardaBarco(IdTipoGuardaBarco)
go


/* 
 * TABLE: tblInformacaoCondutorMotivoQuebra 
 */

ALTER TABLE tblInformacaoCondutorMotivoQuebra ADD CONSTRAINT ReftblInformacaoCondutor34 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorMotivoQuebra ADD CONSTRAINT ReftblTipoMotivoQuebra36 
    FOREIGN KEY (IdTipoMotivo)
    REFERENCES tblTipoMotivoQuebra(IdTipoMotivo)
go


/* 
 * TABLE: tblInformacaoCondutorOutroAcompanhante 
 */

ALTER TABLE tblInformacaoCondutorOutroAcompanhante ADD CONSTRAINT ReftblTipoOutroAcompanhante12 
    FOREIGN KEY (IdTipoOutroAcompanhante)
    REFERENCES tblTipoOutroAcompanhante(IdTipoOutroAcompanhante)
go

ALTER TABLE tblInformacaoCondutorOutroAcompanhante ADD CONSTRAINT ReftblInformacaoCondutor13 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go


/* 
 * TABLE: tblInformacaoCondutorPagaManutencao 
 */

ALTER TABLE tblInformacaoCondutorPagaManutencao ADD CONSTRAINT ReftblInformacaoCondutor25 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorPagaManutencao ADD CONSTRAINT ReftblTipoPagaManutencao27 
    FOREIGN KEY (IdTipoPagaManutencao)
    REFERENCES tblTipoPagaManutencao(IdTipoPagaManutencao)
go


/* 
 * TABLE: tblInformacaoCondutorQuandoManutencao 
 */

ALTER TABLE tblInformacaoCondutorQuandoManutencao ADD CONSTRAINT ReftblInformacaoCondutor21 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorQuandoManutencao ADD CONSTRAINT ReftblTipoQuandoManutencao22 
    FOREIGN KEY (IdTipoQuandoManutencao)
    REFERENCES tblTipoQuandoManutencao(IdTipoQuandoManutencao)
go


/* 
 * TABLE: tblInformacaoCondutorRealizaManutencao 
 */

ALTER TABLE tblInformacaoCondutorRealizaManutencao ADD CONSTRAINT ReftblTipoRealizaManutencao23 
    FOREIGN KEY (IdTipoRealizaManutencao)
    REFERENCES tblTipoRealizaManutencao(IdTipoRealizaManutencao)
go

ALTER TABLE tblInformacaoCondutorRealizaManutencao ADD CONSTRAINT ReftblInformacaoCondutor24 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go


/* 
 * TABLE: tblInformacaoCondutorRealizaReparo 
 */

ALTER TABLE tblInformacaoCondutorRealizaReparo ADD CONSTRAINT ReftblInformacaoCondutor37 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorRealizaReparo ADD CONSTRAINT ReftblTipoRealizaManutencao44 
    FOREIGN KEY (IdTipoRealizaManutencao)
    REFERENCES tblTipoRealizaManutencao(IdTipoRealizaManutencao)
go


/* 
 * TABLE: tblInformacaoCondutorServico 
 */

ALTER TABLE tblInformacaoCondutorServico ADD CONSTRAINT ReftblInformacaoCondutor28 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorServico ADD CONSTRAINT ReftblTipoServico29 
    FOREIGN KEY (IdTipoServico)
    REFERENCES tblTipoServico(IdTipoServico)
go


/* 
 * TABLE: tblInformacaoCondutorTrabalhaRota 
 */

ALTER TABLE tblInformacaoCondutorTrabalhaRota ADD CONSTRAINT ReftblInformacaoCondutor19 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go

ALTER TABLE tblInformacaoCondutorTrabalhaRota ADD CONSTRAINT ReftblTipoNaoTrabalhaRota20 
    FOREIGN KEY (IdTipoNaoTrabalhaRota)
    REFERENCES tblTipoNaoTrabalhaRota(IdTipoNaoTrabalhaRota)
go


/* 
 * TABLE: tblInformacaoCondutorTransportaOutro 
 */

ALTER TABLE tblInformacaoCondutorTransportaOutro ADD CONSTRAINT ReftblTipoTransportaOutro10 
    FOREIGN KEY (IdTipoTransportaOutro)
    REFERENCES tblTipoTransportaOutro(IdTipoTransportaOutro)
go

ALTER TABLE tblInformacaoCondutorTransportaOutro ADD CONSTRAINT ReftblInformacaoCondutor11 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go


/* 
 * TABLE: tblInformacaoCondutorTrocaBarco 
 */

ALTER TABLE tblInformacaoCondutorTrocaBarco ADD CONSTRAINT ReftblTipoTrocaBarco16 
    FOREIGN KEY (IdTipoTrocaBarco)
    REFERENCES tblTipoTrocaBarco(IdTipoTrocaBarco)
go

ALTER TABLE tblInformacaoCondutorTrocaBarco ADD CONSTRAINT ReftblInformacaoCondutor17 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblInformacaoCondutor(IdFormulario)
go


