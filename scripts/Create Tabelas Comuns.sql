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
    CONSTRAINT PK45 PRIMARY KEY CLUSTERED (IdMunicipio)
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
    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (IdTipoEscolaridade)
)
go



IF OBJECT_ID('tblTipoEscolaridade') IS NOT NULL
    PRINT '<<< CREATED TABLE tblTipoEscolaridade >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE tblTipoEscolaridade >>>'
go