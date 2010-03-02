USE BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FP1 Aluno.DM1
 * Author :       mazuki
 *
 * Date Created : Friday, February 26, 2010 15:18:54
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoAluno 
 */

CREATE TABLE tblCabecalhoAluno(
    IdFormulario    char(9)          NOT NULL,
    Pesquisador     varchar(50)      NULL,
    DataColeta      smalldatetime    NOT NULL,
    IdINEP          int              NULL,
    IdMunicipio     int              NULL,
    Rota            varchar(100)     NULL,
	IdRota			int				 NULL,
    TempoInicio     varchar(5)       NULL,
    TempoTermino    varchar(5)       NULL,
    CONSTRAINT PKCabecalhoAluno PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoAluno >>>'
go

/* 
 * TABLE: tblCaracterizacaoFamiliaAluno 
 */

CREATE TABLE tblCaracterizacaoFamiliaAluno(
    IdFormulario                    char(9)        NOT NULL,
    TemFilhos                       char(3)        NULL,
    QuantidadeFilhos                int            NULL,
    QuantidadeFilhosIdadeEscolar    int            NULL,
    QuantidadeCasaPais              int            NULL,
    QuantidadeCasaMae               int            NULL,
    QuantidadeCasaFilhos            int            NULL,
    QuantidadeCasaConjuge           int            NULL,
    QuantidadeCasaPrimos            int            NULL,
    QuantidadeCasaAvos              int            NULL,
    QuantidadeCasaIrmao             int            NULL,
    QuantidadeCasaTio               int            NULL,
    QuantidadeCasaOutrosQuais       varchar(80)    NULL,
    CasaOutrosQuem                  varchar(80)    NULL,
    CONSTRAINT PKCaracterizacaoFamiliaAluno PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoFamiliaAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoFamiliaAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoFamiliaAluno >>>'
go

/* 
 * TABLE: tblCaracterizacaoFamiliaAlunoAuxilio 
 */

CREATE TABLE tblCaracterizacaoFamiliaAlunoAuxilio(
    IdFormulario     char(9)         NOT NULL,
    IdTipoAuxilio    int             NOT NULL,
    QualOutro        varchar(100)    NULL,
    AlunoTrabalha    char(3)         NULL,
    CONSTRAINT PKCaracterizacaoFamiliaAlunoAuxilio PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoAuxilio)
)
go



IF OBJECT_ID('tblCaracterizacaoFamiliaAlunoAuxilio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoFamiliaAlunoAuxilio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoFamiliaAlunoAuxilio >>>'
go

/* 
 * TABLE: tblCaracterizacaoFamiliaAlunoTrabalho 
 */

CREATE TABLE tblCaracterizacaoFamiliaAlunoTrabalho(
    IdFormulario      char(9)         NOT NULL,
    IdTipoTrabalho    int             NOT NULL,
    DescricaoAjuda    varchar(100)    NULL,
    CONSTRAINT PKCaracterizacaoFamiliaAlunoTrabalho PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoTrabalho)
)
go



IF OBJECT_ID('tblCaracterizacaoFamiliaAlunoTrabalho') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoFamiliaAlunoTrabalho >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoFamiliaAlunoTrabalho >>>'
go

/* 
 * TABLE: tblIdentificacaoAluno 
 */

CREATE TABLE tblIdentificacaoAluno(
    IdFormulario          char(9)         NOT NULL,
    Sexo                  char(1)         NULL,
    Idade                 int             NULL,
    Comunidade            varchar(100)    NULL,
    Turno                 int             NULL,
    IdTipoEscolaridade    int             NULL,
    CONSTRAINT PKIdentificacaoAluno PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoAluno >>>'
go

/* 
 * TABLE: tblPercepcaoAlunoMelhoria 
 */

CREATE TABLE tblPercepcaoAlunoMelhoria(
    IdFormulario    char(9)         NOT NULL,
    IdMelhoria      int             NOT NULL,
    QualOutro       varchar(100)    NULL,
    CONSTRAINT PKPercepcaoAlunoMelhoria PRIMARY KEY NONCLUSTERED (IdFormulario, IdMelhoria)
)
go



IF OBJECT_ID('tblPercepcaoAlunoMelhoria') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoAlunoMelhoria >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoAlunoMelhoria >>>'
go

/* 
 * TABLE: tblPercepcaoAlunoRota 
 */

CREATE TABLE tblPercepcaoAlunoRota(
    IdFormulario             char(9)         NOT NULL,
    IdTipoOutroTransporte    int             NOT NULL,
    DescricaoTempo           varchar(100)    NULL,
	Tempo					 varchar(5)      NULL,
    CONSTRAINT PKPercepcaoAlunoRota PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoOutroTransporte)
)
go



IF OBJECT_ID('tblPercepcaoAlunoRota') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoAlunoRota >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoAlunoRota >>>'
go

/* 
 * TABLE: tblPercepcaoAlunoRotaAjudaBarqueiro 
 */

CREATE TABLE tblPercepcaoAlunoRotaAjudaBarqueiro(
    IdFormulario    char(9)         NOT NULL,
    IdTipoAjuda     int             NOT NULL,
    QualOutro       varchar(100)    NULL,
    CONSTRAINT PKPercepcaoAlunoRotaAjudaBarqueiro PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoAjuda)
)
go



IF OBJECT_ID('tblPercepcaoAlunoRotaAjudaBarqueiro') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoAlunoRotaAjudaBarqueiro >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoAlunoRotaAjudaBarqueiro >>>'
go

/* 
 * TABLE: tblPercepcaoAlunoRotaEpocaPior 
 */

CREATE TABLE tblPercepcaoAlunoRotaEpocaPior(
    IdFormulario    char(9)         NOT NULL,
    IdTipoEpoca     int             NOT NULL,
    QualOutro       varchar(100)    NULL,
    PorqueOutro     varchar(100)    NULL,
    CONSTRAINT PKPercepcaoAlunoRotaEpocaPior PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoEpoca)
)
go



IF OBJECT_ID('tblPercepcaoAlunoRotaEpocaPior') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoAlunoRotaEpocaPior >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoAlunoRotaEpocaPior >>>'
go

/* 
 * TABLE: tblPercepcaoAlunoRotaFazCaminhoEscola 
 */

CREATE TABLE tblPercepcaoAlunoRotaFazCaminhoEscola(
    IdFormulario              char(9)         NOT NULL,
    IdTipoFazCaminhoEscola    int             NOT NULL,
    OutroQual                 varchar(100)    NULL,
    CONSTRAINT PKPercepcaoAlunoRotaFazCaminhoEscola PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoFazCaminhoEscola)
)
go



IF OBJECT_ID('tblPercepcaoAlunoRotaFazCaminhoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoAlunoRotaFazCaminhoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoAlunoRotaFazCaminhoEscola >>>'
go

/* 
 * TABLE: tblPercepcaoAlunoRotaFazOutraCoisa 
 */

CREATE TABLE tblPercepcaoAlunoRotaFazOutraCoisa(
    IdFormulario           char(9)         NOT NULL,
    IdTipoFazOutraCoisa    int             NOT NULL,
    QualOutro              varchar(100)    NULL,
    CONSTRAINT PKPercepcaoAlunoRotaFazOutraCoisa PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoFazOutraCoisa)
)
go



IF OBJECT_ID('tblPercepcaoAlunoRotaFazOutraCoisa') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoAlunoRotaFazOutraCoisa >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoAlunoRotaFazOutraCoisa >>>'
go

/* 
 * TABLE: tblPosTesteAuno 
 */

CREATE TABLE tblPosTesteAuno(
    IdFormulario           char(9)         NOT NULL,
    MelhorBarco            int             NULL,
    GostouBarco            varchar(250)    NULL,
    NaoGostouBarco         varchar(250)    NULL,
    GostouViagem           varchar(250)    NULL,
    NaoGostouViagem        varchar(250)    NULL,
    ColeteSalvaVida        int             NULL,
    PorqueGostouColete     varchar(250)    NULL,
    UsarColeteSalvaVida    char(3)         NULL,
    PorqueUsar             varchar(250)    NULL,
    CONSTRAINT PKPosTesteAuno PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblPosTesteAuno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPosTesteAuno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPosTesteAuno >>>'
go

/* 
 * TABLE: tblPosTesteAvaliacaoLancha 
 */

CREATE TABLE tblPosTesteAvaliacaoLancha(
    IdFormulario        char(9)    NOT NULL,
    Seguranca           int        NULL,
    Tamanho             int        NULL,
    Aparencia           int        NULL,
    ProtecaoSolChuva    int        NULL,
    TempoViagem         int        NULL,
    CONSTRAINT PKPosTesteAvaliacaoLancha PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblPosTesteAvaliacaoLancha') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPosTesteAvaliacaoLancha >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPosTesteAvaliacaoLancha >>>'
go

/* 
 * TABLE: tblPosTesteMolhaAluno 
 */

CREATE TABLE tblPosTesteMolhaAluno(
    IdFormulario        char(9)    NOT NULL,
    IdTipoMolhaAluno    int        NOT NULL,
    MolhouAluno         char(3)    NULL,
    CONSTRAINT PKPosTesteMolhaAluno PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoMolhaAluno)
)
go



IF OBJECT_ID('tblPosTesteMolhaAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPosTesteMolhaAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPosTesteMolhaAluno >>>'
go

/* 
 * TABLE: tblTipoAjuda 
 */

CREATE TABLE tblTipoAjuda(
    IdTipoAjuda    int             NOT NULL,
    Descricao      varchar(100)    NULL,
    CONSTRAINT PKTipoAjuda PRIMARY KEY NONCLUSTERED (IdTipoAjuda)
)
go



IF OBJECT_ID('tblTipoAjuda') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoAjuda >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoAjuda >>>'
go

/* 
 * TABLE: tblTipoAuxilio 
 */

CREATE TABLE tblTipoAuxilio(
    IdTipoAuxilio    int            NOT NULL,
    Descricao        varchar(80)    NULL,
    CONSTRAINT PKTipoAuxilio PRIMARY KEY NONCLUSTERED (IdTipoAuxilio)
)
go



IF OBJECT_ID('tblTipoAuxilio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoAuxilio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoAuxilio >>>'
go

/* 
 * TABLE: tblTipoEpoca 
 */

CREATE TABLE tblTipoEpoca(
    IdTipoEpoca    int             NOT NULL,
    Descricao      varchar(100)    NULL,
    CONSTRAINT PKTipoEpoca PRIMARY KEY NONCLUSTERED (IdTipoEpoca)
)
go



IF OBJECT_ID('tblTipoEpoca') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoEpoca >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoEpoca >>>'
go

/* 
 * TABLE: tblTipoFazCaminhoEscola 
 */

CREATE TABLE tblTipoFazCaminhoEscola(
    IdTipoFazCaminhoEscola    int            NOT NULL,
    Descricao                 varchar(50)    NULL,
    CONSTRAINT PKTipoFazCaminhoEscola PRIMARY KEY NONCLUSTERED (IdTipoFazCaminhoEscola)
)
go



IF OBJECT_ID('tblTipoFazCaminhoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoFazCaminhoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoFazCaminhoEscola >>>'
go

/* 
 * TABLE: tblTipoFazOutraCoisa 
 */

CREATE TABLE tblTipoFazOutraCoisa(
    IdTipoFazOutraCoisa    int            NOT NULL,
    Descricao              varchar(50)    NOT NULL,
    CONSTRAINT PKTipoFazOutraCoisa PRIMARY KEY NONCLUSTERED (IdTipoFazOutraCoisa)
)
go



IF OBJECT_ID('tblTipoFazOutraCoisa') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoFazOutraCoisa >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoFazOutraCoisa >>>'
go

/* 
 * TABLE: tblTipoMelhoria 
 */

CREATE TABLE tblTipoMelhoria(
    IdMelhoria    int             NOT NULL,
    Descricao     varchar(100)    NULL,
    CONSTRAINT PKTipoMelhoria PRIMARY KEY NONCLUSTERED (IdMelhoria)
)
go



IF OBJECT_ID('tblTipoMelhoria') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoMelhoria >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoMelhoria >>>'
go

/* 
 * TABLE: tblTipoMolhaAluno 
 */

CREATE TABLE tblTipoMolhaAluno(
    IdTipoMolhaAluno    int             NOT NULL,
    Descricao           varchar(150)    NULL,
    CONSTRAINT PKTipoMolhaAluno PRIMARY KEY NONCLUSTERED (IdTipoMolhaAluno)
)
go



IF OBJECT_ID('tblTipoMolhaAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoMolhaAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoMolhaAluno >>>'
go

/* 
 * TABLE: tblTipoTrabalho 
 */

CREATE TABLE tblTipoTrabalho(
    IdTipoTrabalho    int            NOT NULL,
    Descricao         varchar(50)    NULL,
    CONSTRAINT PKTipoTrabalho PRIMARY KEY NONCLUSTERED (IdTipoTrabalho)
)
go



IF OBJECT_ID('tblTipoTrabalho') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoTrabalho >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoTrabalho >>>'
go

/* 
 * TABLE: tblCabecalhoAluno 
 */

ALTER TABLE tblCabecalhoAluno ADD CONSTRAINT ReftblMunicipio135 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go

ALTER TABLE tblCabecalhoAluno ADD CONSTRAINT ReftblEscola2935 
    FOREIGN KEY (IdINEP)
    REFERENCES tblEscola(IdINEP)
go


/* 
 * TABLE: tblCaracterizacaoFamiliaAluno 
 */

ALTER TABLE tblCaracterizacaoFamiliaAluno ADD CONSTRAINT ReftblCabecalhoAluno5 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go


/* 
 * TABLE: tblCaracterizacaoFamiliaAlunoAuxilio 
 */

ALTER TABLE tblCaracterizacaoFamiliaAlunoAuxilio ADD CONSTRAINT ReftblCaracterizacaoFamiliaAluno8 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCaracterizacaoFamiliaAluno(IdFormulario)
go

ALTER TABLE tblCaracterizacaoFamiliaAlunoAuxilio ADD CONSTRAINT ReftblTipoAuxilio935 
    FOREIGN KEY (IdTipoAuxilio)
    REFERENCES tblTipoAuxilio(IdTipoAuxilio)
go


/* 
 * TABLE: tblCaracterizacaoFamiliaAlunoTrabalho 
 */

ALTER TABLE tblCaracterizacaoFamiliaAlunoTrabalho ADD CONSTRAINT ReftblCaracterizacaoFamiliaAluno6 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCaracterizacaoFamiliaAluno(IdFormulario)
go

ALTER TABLE tblCaracterizacaoFamiliaAlunoTrabalho ADD CONSTRAINT ReftblTipoTrabalho735
    FOREIGN KEY (IdTipoTrabalho)
    REFERENCES tblTipoTrabalho(IdTipoTrabalho)
go


/* 
 * TABLE: tblIdentificacaoAluno 
 */

ALTER TABLE tblIdentificacaoAluno ADD CONSTRAINT ReftblTipoEscolaridade335 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go

ALTER TABLE tblIdentificacaoAluno ADD CONSTRAINT ReftblCabecalhoAluno4 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoAlunoMelhoria 
 */

ALTER TABLE tblPercepcaoAlunoMelhoria ADD CONSTRAINT ReftblCabecalhoAluno17 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPercepcaoAlunoMelhoria ADD CONSTRAINT ReftblTipoMelhoria1835 
    FOREIGN KEY (IdMelhoria)
    REFERENCES tblTipoMelhoria(IdMelhoria)
go


/* 
 * TABLE: tblPercepcaoAlunoRota 
 */

ALTER TABLE tblPercepcaoAlunoRota ADD CONSTRAINT ReftblCabecalhoAluno10 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPercepcaoAlunoRota ADD CONSTRAINT ReftblTipoOutroTransporte1135 
    FOREIGN KEY (IdTipoOutroTransporte)
    REFERENCES tblTipoOutroTransporte(IdTipoOutroTransporte)
go


/* 
 * TABLE: tblPercepcaoAlunoRotaAjudaBarqueiro 
 */

ALTER TABLE tblPercepcaoAlunoRotaAjudaBarqueiro ADD CONSTRAINT ReftblCabecalhoAluno21 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPercepcaoAlunoRotaAjudaBarqueiro ADD CONSTRAINT ReftblTipoAjuda2235 
    FOREIGN KEY (IdTipoAjuda)
    REFERENCES tblTipoAjuda(IdTipoAjuda)
go


/* 
 * TABLE: tblPercepcaoAlunoRotaEpocaPior 
 */

ALTER TABLE tblPercepcaoAlunoRotaEpocaPior ADD CONSTRAINT ReftblCabecalhoAluno19 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPercepcaoAlunoRotaEpocaPior ADD CONSTRAINT ReftblTipoEpoca2735 
    FOREIGN KEY (IdTipoEpoca)
    REFERENCES tblTipoEpoca(IdTipoEpoca)
go


/* 
 * TABLE: tblPercepcaoAlunoRotaFazCaminhoEscola 
 */

ALTER TABLE tblPercepcaoAlunoRotaFazCaminhoEscola ADD CONSTRAINT ReftblCabecalhoAluno13 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPercepcaoAlunoRotaFazCaminhoEscola ADD CONSTRAINT ReftblTipoFazCaminhoEscola1435 
    FOREIGN KEY (IdTipoFazCaminhoEscola)
    REFERENCES tblTipoFazCaminhoEscola(IdTipoFazCaminhoEscola)
go


/* 
 * TABLE: tblPercepcaoAlunoRotaFazOutraCoisa 
 */

ALTER TABLE tblPercepcaoAlunoRotaFazOutraCoisa ADD CONSTRAINT ReftblCabecalhoAluno15 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPercepcaoAlunoRotaFazOutraCoisa ADD CONSTRAINT ReftblTipoFazOutraCoisa1635 
    FOREIGN KEY (IdTipoFazOutraCoisa)
    REFERENCES tblTipoFazOutraCoisa(IdTipoFazOutraCoisa)
go


/* 
 * TABLE: tblPosTesteAuno 
 */

ALTER TABLE tblPosTesteAuno ADD CONSTRAINT ReftblCabecalhoAluno23 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go


/* 
 * TABLE: tblPosTesteAvaliacaoLancha 
 */

ALTER TABLE tblPosTesteAvaliacaoLancha ADD CONSTRAINT ReftblCabecalhoAluno24 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go


/* 
 * TABLE: tblPosTesteMolhaAluno 
 */

ALTER TABLE tblPosTesteMolhaAluno ADD CONSTRAINT ReftblCabecalhoAluno25 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoAluno(IdFormulario)
go

ALTER TABLE tblPosTesteMolhaAluno ADD CONSTRAINT ReftblTipoMolhaAluno2635 
    FOREIGN KEY (IdTipoMolhaAluno)
    REFERENCES tblTipoMolhaAluno(IdTipoMolhaAluno)
go


