use BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FP5 Condutor.DM1
 * Author :       mazuki
 *
 * Date Created : Thursday, February 18, 2010 18:59:51
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblMunicipio 
 */

CREATE TABLE tblMunicipio(
    IdMunicipio      int             NOT NULL,
    NomeMunicipio    varchar(100)    NOT NULL,
    UF               char(2)         NOT NULL,
    CONSTRAINT PKMunicipio PRIMARY KEY CLUSTERED (IdMunicipio)
)
go



IF OBJECT_ID('tblMunicipio') IS NOT NULL
    PRINT '<<< CREATED TABLE tblMunicipio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblMunicipio >>>'
go


/* 
 * TABLE: tblTipoEscolaridade 
 */

CREATE TABLE tblTipoEscolaridade(
    IdTipoEscolaridade    int            NOT NULL,
    Descricao             varchar(50)    NOT NULL,
    CONSTRAINT PKTipoEscolaridade PRIMARY KEY NONCLUSTERED (IdTipoEscolaridade)
)
go



IF OBJECT_ID('tblTipoEscolaridade') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoEscolaridade >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoEscolaridade >>>'
go

/* 
 * TABLE: tblEscola 
 */

CREATE TABLE tblEscola(
    IdINEP         int             NOT NULL,
    NomeEscola     varchar(250)    NULL,
    IdMunicipio    int             NULL,
    CONSTRAINT PKEscola PRIMARY KEY CLUSTERED (IdINEP)
)
go



IF OBJECT_ID('tblEscola') IS NOT NULL
    PRINT '<<< CREATED TABLE tblEscola >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblEscola >>>'
go
/* 
 * TABLE: tblEscola 
 */

ALTER TABLE tblEscola ADD CONSTRAINT ReftblMunicipio22 
    FOREIGN KEY (IdMunicipio)
    REFERENCES tblMunicipio(IdMunicipio)
go
