USE BD_BARCO
GO
/*
 * ER/Studio 7.5 SQL Code Generation
 * Company :      mazuki
 * Project :      FP5 CondutorNovaLancha.DM1
 * Author :       mazuki
 *
 * Date Created : Friday, February 19, 2010 20:03:57
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: tblNovaLanchaCondutor 
 */

CREATE TABLE tblNovaLanchaCondutor(
    IdFormulario                    varchar(9)      NOT NULL,
    BarcoMelhorDesempenho           int             NULL,
    PorqueBarcoMelhorDesempenho     varchar(250)    NULL,
    UsariaLancha                    char(3)         NULL,
    PorqueUsariaLancha              varchar(250)    NULL,
    Seguranca                       int             NULL,
    Tamanho                         int             NULL,
    CapacidadePassageiro            int             NULL,
    PotenciaMotor                   int             NULL,
    Estabilidade                    int             NULL,
    Aparencia                       int             NULL,
    Protecao                        int             NULL,
    TempoDeslocamento               int             NULL,
    Frenagem                        int             NULL,
    PorqueFrenagem                  varchar(100)    NULL,
    Reverso                         int             NULL,
    PorqueReverso                   varchar(100)    NULL,
    ComandoFrente                   int             NULL,
    PorqueComandoFrente             varchar(100)    NULL,
    MotorPopa                       int             NULL,
    PorqueMotorPopa                 varchar(100)    NULL,
    Vibracao                        int             NULL,
    TempoAtracagem                  int             NULL,
    UtilizariaLanchaMEC             char(3)         NULL,
    PorqueUtilizariaLanchaMEC       varchar(100)    NULL,
    TrechoMaiorDificuldade          char(3)         NULL,
    PorqueTrechoMaiorDificuldade    varchar(100)    NULL,
    ContratadoBarco                 char(3)         NULL,
    PorqueContratadoBarco           varchar(100)    NULL,
    ManutencaoNecessaria            char(3)             NULL,
    PorqueManutencaoNecessaria      varchar(100)    NULL,
    LanchaSegura                    char(3)             NULL,
    PorqueLanchaSegura              varchar(100)    NULL,
    QualSolucao                     varchar(100)    NULL,
    CONSTRAINT PKLanchaNovaCondutor PRIMARY KEY NONCLUSTERED (IdFormulario)
)
go

/* 
 * TABLE: tblNovaLancha 
 */

ALTER TABLE tblNovaLanchaCondutor ADD CONSTRAINT ReftblCabecalhoCondutorLanchaNova 
    FOREIGN KEY (IdFormulario)
    REFERENCES tblCabecalhoCondutor(IdFormulario)
go


