/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FPD Diretor.DM1
 * Author :       mazuki
 *
 * Date Created : Thursday, February 25, 2010 17:23:26
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoDiretor 
 */

CREATE TABLE tblCabecalhoDiretor(
    IdFormulario    varchar(9)       NOT NULL,
    Pesquisador     varchar(100)     NOT NULL,
    IdMunicipio     int              NULL,
    IdINEP          int              NULL,
    DataColeta      smalldatetime    NOT NULL,
    Foto            varchar(20)      NULL,
    Rota            varchar(100)     NULL,
    TempoInicio     varchar(5)       NOT NULL,
    TempoTermino    varchar(5)       NOT NULL,
    CONSTRAINT PKCabecalhoDiretor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoDiretor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoDiretor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoDiretor >>>'
go

/* 
 * TABLE: tblCaracterizacaoDiretor 
 */

CREATE TABLE tblCaracterizacaoDiretor(
    IdFormulario           varchar(9)    NOT NULL,
    TempoExperienciaAno    int           NULL,
    TempoExperienciaMes    int           NULL,
    TempoAtuacaoAno        int           NULL,
    TempoAtuacaoMes        int           NULL,
    QuantidadeEscola       int           NULL,
    CONSTRAINT PKCaracterizacaoDiretor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoDiretor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoDiretor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoDiretor >>>'
go

/* 
 * TABLE: tblCaracterizacaoDiretorOutraExperiencia 
 */

CREATE TABLE tblCaracterizacaoDiretorOutraExperiencia(
    IdTipoOutraExperiencia    int             NOT NULL,
    IdFormulario              varchar(9)      NOT NULL,
    QuaisOutras               varchar(100)    NULL,
    CONSTRAINT PKCaracterizacaoDiretorOutraExperiencia PRIMARY KEY NONCLUSTERED (IdTipoOutraExperiencia, IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoDiretorOutraExperiencia') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoDiretorOutraExperiencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoDiretorOutraExperiencia >>>'
go


/* 
 * TABLE: tblIdentificacaoDiretor 
 */

CREATE TABLE tblIdentificacaoDiretor(
    IdFormulario          varchar(9)      NOT NULL,
    IdTipoEscolaridade    int             NULL,
    Comunidade            varchar(100)    NULL,
    Sexo                  char(1)         NULL,
    Idade                 int             NULL,
    CONSTRAINT PKIdentificacaoDiretor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoDiretor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoDiretor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoDiretor >>>'
go

/* 
 * TABLE: tblIdentificacaoEscola 
 */

CREATE TABLE tblIdentificacaoEscola(
    IdFormulario            varchar(9)      NOT NULL,
    QuantidadeComunidade    int             NULL,
    QuaisComunidades        varchar(100)    NULL,
    QuantidadeAluno         int             NULL,
    QuantidadeAlunoBarco    int             NULL,
    QuantidadeRota          int             NULL,
    CONSTRAINT PKIdentificacaoEscola PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoEscola >>>'
go

/* 
 * TABLE: tblIdentificacaoEscolaAtendeTurno 
 */

CREATE TABLE tblIdentificacaoEscolaAtendeTurno(
    IdFormulario    varchar(9)    NOT NULL,
    IdTipoTurno     int           NOT NULL,
    CONSTRAINT PKIdentificacaoEscolaAtendeTurno PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoTurno)
)
go



IF OBJECT_ID('tblIdentificacaoEscolaAtendeTurno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoEscolaAtendeTurno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoEscolaAtendeTurno >>>'
go

/* 
 * TABLE: tblIdentificacaoEscolaPlanejamentoRota 
 */

CREATE TABLE tblIdentificacaoEscolaPlanejamentoRota(
    IdTipoResposta    int             NOT NULL,
    IdFormulario      varchar(9)      NOT NULL,
    QuaisOutros       varchar(100)    NULL,
    CONSTRAINT PKIdentificacaoEscolaPlanejamentoRota PRIMARY KEY NONCLUSTERED (IdTipoResposta, IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoEscolaPlanejamentoRota') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoEscolaPlanejamentoRota >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoEscolaPlanejamentoRota >>>'
go

/* 
 * TABLE: tblInformacaoEscolaResponsavelBarco 
 */

CREATE TABLE tblInformacaoEscolaResponsavelBarco(
    IdFormulario      varchar(9)      NOT NULL,
    IdTipoResposta    int             NOT NULL,
    QuaisOutros       varchar(100)    NULL,
    CONSTRAINT PKInformacaoEscolaResponsavelBarco PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoResposta)
)
go



IF OBJECT_ID('tblInformacaoEscolaResponsavelBarco') IS NOT NULL
    PRINT '<<< CREATED TABLE tblInformacaoEscolaResponsavelBarco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblInformacaoEscolaResponsavelBarco >>>'
go

/* 
 * TABLE: tblPercepcaoDiretorAlunoEscola 
 */

CREATE TABLE tblPercepcaoDiretorAlunoEscola(
    IdFormulario             varchar(9)      NOT NULL,
    IdTipoOutroTransporte    int             NOT NULL,
    OutrosQuais              varchar(100)    NULL,
    CONSTRAINT PKPercepcaoDiretorAlunoEscola PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoOutroTransporte)
)
go



IF OBJECT_ID('tblPercepcaoDiretorAlunoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoDiretorAlunoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoDiretorAlunoEscola >>>'
go

/* 
 * TABLE: tblPercepcaoDiretorAlunoNaoEscola 
 */

CREATE TABLE tblPercepcaoDiretorAlunoNaoEscola(
    IdTipoAlunoNaoEscola    int             NOT NULL,
    IdFormulario            varchar(9)      NOT NULL,
    CriancaNaoEscola        char(3)         NULL,
    OutrosQuais             varchar(100)    NULL,
    CONSTRAINT PKPercepcaoDiretorAlunoNaoEscola PRIMARY KEY NONCLUSTERED (IdTipoAlunoNaoEscola, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoDiretorAlunoNaoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoDiretorAlunoNaoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoDiretorAlunoNaoEscola >>>'
go

/* 
 * TABLE: tblPercepcaoDiretorAlunoReclama 
 */

CREATE TABLE tblPercepcaoDiretorAlunoReclama(
    IdTipoReclamacao    int             NOT NULL,
    IdFormulario        varchar(9)      NOT NULL,
    AlunoReclama        char(3)         NULL,
    QuaisOutros         varchar(100)    NULL,
    CONSTRAINT PKPercepcaoDiretorAlunoReclama PRIMARY KEY NONCLUSTERED (IdTipoReclamacao, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoDiretorAlunoReclama') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoDiretorAlunoReclama >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoDiretorAlunoReclama >>>'
go

/* 
 * TABLE: tblPercepcaoDiretorRendimentoAcademico 
 */

CREATE TABLE tblPercepcaoDiretorRendimentoAcademico(
    IdFormulario           varchar(9)      NOT NULL,
    DiferencaRendimento    char(3)         NULL,
    QuaisOutros            varchar(100)    NULL,
    CONSTRAINT PKPercepcaoDiretorRendimentoAcademico PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoDiretorRendimentoAcademico') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoDiretorRendimentoAcademico >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoDiretorRendimentoAcademico >>>'
go

/* 
 * TABLE: tblTipoAlunoNaoEscola 
 */

CREATE TABLE tblTipoAlunoNaoEscola(
    IdTipoAlunoNaoEscola    int            NOT NULL,
    Descricao               varchar(50)    NOT NULL,
    CONSTRAINT PKTipoAlunoNaoEscola PRIMARY KEY NONCLUSTERED (IdTipoAlunoNaoEscola)
)
go



IF OBJECT_ID('tblTipoAlunoNaoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoAlunoNaoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoAlunoNaoEscola >>>'
go

/* 
 * TABLE: tblTipoOutraExperiencia 
 */

CREATE TABLE tblTipoOutraExperiencia(
    IdTipoOutraExperiencia    int            NOT NULL,
    Descricao                 varchar(50)    NOT NULL,
    CONSTRAINT PKTipoOutraExperiencia PRIMARY KEY NONCLUSTERED (IdTipoOutraExperiencia)
)
go



IF OBJECT_ID('tblTipoOutraExperiencia') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoOutraExperiencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoOutraExperiencia >>>'
go

/* 
 * TABLE: tblTipoOutroTransporte 
 */

CREATE TABLE tblTipoOutroTransporte(
    IdTipoOutroTransporte    int            NOT NULL,
    Descricao                varchar(50)    NULL,
    CONSTRAINT PKTipoOutroTransporte PRIMARY KEY NONCLUSTERED (IdTipoOutroTransporte)
)
go



IF OBJECT_ID('tblTipoOutroTransporte') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoOutroTransporte >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoOutroTransporte >>>'
go

/* 
 * TABLE: tblTipoReclamacao 
 */

CREATE TABLE tblTipoReclamacao(
    IdTipoReclamacao    int            NOT NULL,
    Descricao           varchar(50)    NULL,
    CONSTRAINT PKTipoReclamacao PRIMARY KEY NONCLUSTERED (IdTipoReclamacao)
)
go



IF OBJECT_ID('tblTipoReclamacao') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoReclamacao >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoReclamacao >>>'
go

/* 
 * TABLE: tblTipoResposta 
 */

CREATE TABLE tblTipoResposta(
    IdTipoResposta    int            NOT NULL,
    Descricao         varchar(50)    NULL,
    CONSTRAINT PKTipoResposta PRIMARY KEY NONCLUSTERED (IdTipoResposta)
)
go



IF OBJECT_ID('tblTipoResposta') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoResposta >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoResposta >>>'
go

/* 
 * TABLE: tblTipoTurno 
 */

CREATE TABLE tblTipoTurno(
    IdTipoTurno    int            NOT NULL,
    Descricao      varchar(50)    NULL,
    CONSTRAINT PKTipoTurno PRIMARY KEY NONCLUSTERED (IdTipoTurno)
)
go



IF OBJECT_ID('tblTipoTurno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoTurno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoTurno >>>'
go

/* 
 * TABLE: tblCabecalhoDiretor 
 */

ALTER TABLE tblCabecalhoDiretor ADD CONSTRAINT ReftblEscola2324 
    FOREIGN KEY (IdINEP)
    REFERENCES tblEscola(IdINEP)
go

ALTER TABLE tblCabecalhoDiretor ADD CONSTRAINT ReftblMunicipio146 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoDiretor 
 */

ALTER TABLE tblCaracterizacaoDiretor ADD CONSTRAINT ReftblCabecalhoDiretor4 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go


/* 
 * TABLE: tblCaracterizacaoDiretorOutraExperiencia 
 */

ALTER TABLE tblCaracterizacaoDiretorOutraExperiencia ADD CONSTRAINT ReftblCaracterizacaoDiretor5 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCaracterizacaoDiretor(IdFormulario)
go

ALTER TABLE tblCaracterizacaoDiretorOutraExperiencia ADD CONSTRAINT ReftblTipoOutraExperiencia6345 
    FOREIGN KEY (IdTipoOutraExperiencia)
    REFERENCES tblTipoOutraExperiencia(IdTipoOutraExperiencia)
go


/* 
 * TABLE: tblEscola 
 */

ALTER TABLE tblEscola ADD CONSTRAINT ReftblMunicipio22657 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblIdentificacaoDiretor 
 */

ALTER TABLE tblIdentificacaoDiretor ADD CONSTRAINT ReftblCabecalhoDiretor2 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go

ALTER TABLE tblIdentificacaoDiretor ADD CONSTRAINT ReftblTipoEscolaridade3345 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go


/* 
 * TABLE: tblIdentificacaoEscola 
 */

ALTER TABLE tblIdentificacaoEscola ADD CONSTRAINT ReftblCabecalhoDiretor7 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoEscolaAtendeTurno 
 */

ALTER TABLE tblIdentificacaoEscolaAtendeTurno ADD CONSTRAINT ReftblIdentificacaoEscola1065 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblIdentificacaoEscola(IdFormulario)
go

ALTER TABLE tblIdentificacaoEscolaAtendeTurno ADD CONSTRAINT ReftblTipoTurno11565 
    FOREIGN KEY (IdTipoTurno)
    REFERENCES tblTipoTurno(IdTipoTurno)
go


/* 
 * TABLE: tblIdentificacaoEscolaPlanejamentoRota 
 */

ALTER TABLE tblIdentificacaoEscolaPlanejamentoRota ADD CONSTRAINT ReftblTipoResposta8756 
    FOREIGN KEY (IdTipoResposta)
    REFERENCES tblTipoResposta(IdTipoResposta)
go

ALTER TABLE tblIdentificacaoEscolaPlanejamentoRota ADD CONSTRAINT ReftblIdentificacaoEscola9 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblIdentificacaoEscola(IdFormulario)
go


/* 
 * TABLE: tblInformacaoEscolaResponsavelBarco 
 */

ALTER TABLE tblInformacaoEscolaResponsavelBarco ADD CONSTRAINT ReftblIdentificacaoEscola12657 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblIdentificacaoEscola(IdFormulario)
go

ALTER TABLE tblInformacaoEscolaResponsavelBarco ADD CONSTRAINT ReftblTipoResposta13756 
    FOREIGN KEY (IdTipoResposta)
    REFERENCES tblTipoResposta(IdTipoResposta)
go


/* 
 * TABLE: tblPercepcaoDiretorAlunoEscola 
 */

ALTER TABLE tblPercepcaoDiretorAlunoEscola ADD CONSTRAINT ReftblCabecalhoDiretor17 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go

ALTER TABLE tblPercepcaoDiretorAlunoEscola ADD CONSTRAINT ReftblTipoOutroTransporte19867 
    FOREIGN KEY (IdTipoOutroTransporte)
    REFERENCES tblTipoOutroTransporte(IdTipoOutroTransporte)
go


/* 
 * TABLE: tblPercepcaoDiretorAlunoNaoEscola 
 */

ALTER TABLE tblPercepcaoDiretorAlunoNaoEscola ADD CONSTRAINT ReftblTipoAlunoNaoEscola2045643 
    FOREIGN KEY (IdTipoAlunoNaoEscola)
    REFERENCES tblTipoAlunoNaoEscola(IdTipoAlunoNaoEscola)
go

ALTER TABLE tblPercepcaoDiretorAlunoNaoEscola ADD CONSTRAINT ReftblCabecalhoDiretor21435 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoDiretorAlunoReclama 
 */

ALTER TABLE tblPercepcaoDiretorAlunoReclama ADD CONSTRAINT ReftblCabecalhoDiretor14657 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go

ALTER TABLE tblPercepcaoDiretorAlunoReclama ADD CONSTRAINT ReftblTipoReclamacao152345 
    FOREIGN KEY (IdTipoReclamacao)
    REFERENCES tblTipoReclamacao(IdTipoReclamacao)
go


/* 
 * TABLE: tblPercepcaoDiretorRendimentoAcademico 
 */

ALTER TABLE tblPercepcaoDiretorRendimentoAcademico ADD CONSTRAINT ReftblCabecalhoDiretor164564 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoDiretor(IdFormulario)
go


