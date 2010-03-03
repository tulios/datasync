use BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FP3 Professor.DM1
 * Author :       mazuki
 *
 * Date Created : Thursday, February 25, 2010 17:56:22
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblCabecalhoProfessor 
 */

CREATE TABLE tblCabecalhoProfessor(
    IdFormulario         varchar(9)       NOT NULL,
    Pesquisador          varchar(50)      NULL,
    IdFormularioAluno    char(9)          NULL,
    DataColeta           smalldatetime    NOT NULL,
    IdMunicipio          int              NULL,
    IdINEP               int              NULL,
    FotoEscola           varchar(10)      NULL,
    Rota                 varchar(100)     NULL,
    TempoInicio          varchar(5)       NULL,
    TempoTermino         varchar(5)       NULL,
    CONSTRAINT PKCabecalhoProfessor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCabecalhoProfessor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCabecalhoProfessor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCabecalhoProfessor >>>'
go

/* 
 * TABLE: tblCaracterizacaoProfessor 
 */

CREATE TABLE tblCaracterizacaoProfessor(
    IdFormulario            varchar(9)      NOT NULL,
    TempoExperienciaAno     int             NULL,
    TempoExperienciaMes     int             NULL,
    TempoAtuacaoAno         int             NULL,
    TempoAtuacaoMes         int             NULL,
    CursoExtra              char(3)         NOT NULL,
    QualCursoExtra          varchar(100)    NULL,
    OutraFuncao             varchar(200)    NULL,
    ProfessorOutraEscola    char(3)         NULL,
    QuantasOutraEscola      int             NULL,
    QualOutrasEscolas       varchar(200)    NULL,
    CONSTRAINT PKCaracterizacaoProfessor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblCaracterizacaoProfessor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblCaracterizacaoProfessor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblCaracterizacaoProfessor >>>'
go

/* 
 * TABLE: tblIdentificacaoProfessor 
 */

CREATE TABLE tblIdentificacaoProfessor(
    IdFormulario          varchar(9)      NOT NULL,
    IdTipoEscolaridade    int             NULL,
    Sexo                  char(1)         NULL,
    Idade                 int             NULL,
    Comunidade            varchar(100)    NULL,
    CONSTRAINT PKIdentificacaoProfessor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go



IF OBJECT_ID('tblIdentificacaoProfessor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblIdentificacaoProfessor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblIdentificacaoProfessor >>>'
go

/* 
 * TABLE: tblPercepcaoProfessorAlunoEscola 
 */

CREATE TABLE tblPercepcaoProfessorAlunoEscola(
    IdTipoOutroTransporte    int             NOT NULL,
    IdFormulario             varchar(9)      NOT NULL,
    OutrosQuais              varchar(100)    NULL,
    CONSTRAINT PKPercepcaoProfessorAlunoEscola PRIMARY KEY NONCLUSTERED (IdTipoOutroTransporte, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoProfessorAlunoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoProfessorAlunoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoProfessorAlunoEscola >>>'
go

/* 
 * TABLE: tblPercepcaoProfessorAlunoNaoEscola 
 */

CREATE TABLE tblPercepcaoProfessorAlunoNaoEscola(
    IdTipoAlunoNaoEscola    int             NOT NULL,
    IdFormulario            varchar(9)      NOT NULL,
    CriancaNaoEscola        char(3)         NULL,
    OutrosQuais             varchar(100)    NULL,
    CONSTRAINT PKPercepcaoProfessorAlunoNaoEscola PRIMARY KEY NONCLUSTERED (IdTipoAlunoNaoEscola, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoProfessorAlunoNaoEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoProfessorAlunoNaoEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoProfessorAlunoNaoEscola >>>'
go

/* 
 * TABLE: tblPercepcaoProfessorAlunoReclama 
 */

CREATE TABLE tblPercepcaoProfessorAlunoReclama(
    IdTipoReclamacao    int             NOT NULL,
    IdFormulario        varchar(9)      NOT NULL,
    AlunoReclama        char(3)         NULL,
    QuaisOutros         varchar(100)    NULL,
    CONSTRAINT PKPercepcaoProfessorAlunoReclama PRIMARY KEY NONCLUSTERED (IdTipoReclamacao, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoProfessorAlunoReclama') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoProfessorAlunoReclama >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoProfessorAlunoReclama >>>'
go

/* 
 * TABLE: tblPercepcaoProfessorAvisoAluno 
 */

CREATE TABLE tblPercepcaoProfessorAvisoAluno(
    IdTipoAvisoAluno    int             NOT NULL,
    IdFormulario        varchar(9)      NOT NULL,
    AlunoAssisteAula    char(3)         NOT NULL,
    QualOutro           varchar(100)    NULL,
    CONSTRAINT PKPercepcaoProfessorAvisoAluno PRIMARY KEY NONCLUSTERED (IdTipoAvisoAluno, IdFormulario)
)
go



IF OBJECT_ID('tblPercepcaoProfessorAvisoAluno') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoProfessorAvisoAluno >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoProfessorAvisoAluno >>>'
go

/* 
 * TABLE: tblPercepcaoProfessorProvidencia 
 */

CREATE TABLE tblPercepcaoProfessorProvidencia(
    IdFormulario                  varchar(9)      NOT NULL,
    IdTipoProvidenciaProfessor    int             NOT NULL,
    QualOutro                     varchar(100)    NULL,
    CONSTRAINT PKPercepcaoProfessorProvidencia PRIMARY KEY NONCLUSTERED (IdFormulario, IdTipoProvidenciaProfessor)
)
go



IF OBJECT_ID('tblPercepcaoProfessorProvidencia') IS NOT NULL
    PRINT '<<< CREATED TABLE tblPercepcaoProfessorProvidencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblPercepcaoProfessorProvidencia >>>'
go

/* 
 * TABLE: tblTipoProvidenciaProfessor 
 */

CREATE TABLE tblTipoProvidenciaProfessor(
    IdTipoProvidenciaProfessor    int            NOT NULL,
    Descricao                     varchar(50)    NULL,
    CONSTRAINT PKTipoProvidenciaProfessor PRIMARY KEY NONCLUSTERED (IdTipoProvidenciaProfessor)
)
go



IF OBJECT_ID('tblTipoProvidenciaProfessor') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoProvidenciaProfessor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoProvidenciaProfessor >>>'
go

/* 
 * TABLE: tblCabecalhoProfessor 
 */

ALTER TABLE tblCabecalhoProfessor ADD CONSTRAINT ReftblEscola2456 
    FOREIGN KEY (IdINEP)
    REFERENCES tblEscola(IdINEP)
go

ALTER TABLE tblCabecalhoProfessor ADD CONSTRAINT ReftblMunicipio32342 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go


/* 
 * TABLE: tblCaracterizacaoProfessor 
 */

ALTER TABLE tblCaracterizacaoProfessor ADD CONSTRAINT ReftblCabecalhoProfessor6 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go


/* 
 * TABLE: tblIdentificacaoProfessor 
 */

ALTER TABLE tblIdentificacaoProfessor ADD CONSTRAINT ReftblTipoEscolaridade4234 
    FOREIGN KEY (IdTipoEscolaridade)
    REFERENCES tblTipoEscolaridade(IdTipoEscolaridade)
go

ALTER TABLE tblIdentificacaoProfessor ADD CONSTRAINT ReftblCabecalhoProfessor5 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoProfessorAlunoEscola 
 */

ALTER TABLE tblPercepcaoProfessorAlunoEscola ADD CONSTRAINT ReftblTipoOutroTransporte105634 
    FOREIGN KEY (IdTipoOutroTransporte)
    REFERENCES tblTipoOutroTransporte(IdTipoOutroTransporte)
go

ALTER TABLE tblPercepcaoProfessorAlunoEscola ADD CONSTRAINT ReftblCabecalhoProfessor11 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoProfessorAlunoNaoEscola 
 */

ALTER TABLE tblPercepcaoProfessorAlunoNaoEscola ADD CONSTRAINT ReftblTipoAlunoNaoEscola122323 
    FOREIGN KEY (IdTipoAlunoNaoEscola)
    REFERENCES tblTipoAlunoNaoEscola(IdTipoAlunoNaoEscola)
go

ALTER TABLE tblPercepcaoProfessorAlunoNaoEscola ADD CONSTRAINT ReftblCabecalhoProfessor13 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoProfessorAlunoReclama 
 */

ALTER TABLE tblPercepcaoProfessorAlunoReclama ADD CONSTRAINT ReftblTipoReclamacao82342 
    FOREIGN KEY (IdTipoReclamacao)
    REFERENCES tblTipoReclamacao(IdTipoReclamacao)
go

ALTER TABLE tblPercepcaoProfessorAlunoReclama ADD CONSTRAINT ReftblCabecalhoProfessor9 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoProfessorAvisoAluno 
 */

ALTER TABLE tblPercepcaoProfessorAvisoAluno ADD CONSTRAINT ReftblTipoAvisoAluno1635643 
    FOREIGN KEY (IdTipoAvisoAluno)
    REFERENCES tblTipoAvisoAluno(IdTipoAvisoAluno)
go

ALTER TABLE tblPercepcaoProfessorAvisoAluno ADD CONSTRAINT ReftblCabecalhoProfessor17 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go


/* 
 * TABLE: tblPercepcaoProfessorProvidencia 
 */

ALTER TABLE tblPercepcaoProfessorProvidencia ADD CONSTRAINT ReftblCabecalhoProfessor14 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoProfessor(IdFormulario)
go

ALTER TABLE tblPercepcaoProfessorProvidencia ADD CONSTRAINT ReftblTipoProvidenciaProfessor15234 
    FOREIGN KEY (IdTipoProvidenciaProfessor)
    REFERENCES tblTipoProvidenciaProfessor(IdTipoProvidenciaProfessor)
go

alter table tblCabecalhoProfessor add IdRota int null;
