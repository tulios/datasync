USE BD_BARCO
go

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAvisoAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAvisoAluno](
	[IdTipoAvisoAluno] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK10] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAvisoAluno] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoContrato]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoContrato](
	[IdTipoContrato] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK50] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoContrato] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoDonoBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoDonoBarco](
	[IdTipoDonoBarco] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK48] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoDonoBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEscolheBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEscolheBarco](
	[IdTipoEscolheBarco] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK52] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEscolheBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEstrago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEstrago](
	[IdTipoEstrago] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK33] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEstrago] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoGuardaBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoGuardaBarco](
	[IdTipoGuardaBarco] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK43] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoGuardaBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoOutroAcompanhante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoOutroAcompanhante](
	[IdTipoOutroAcompanhante] [int] NOT NULL,
	[Descricao] [char](50) NOT NULL,
 CONSTRAINT [PK14] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoOutroAcompanhante] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoPagaManutencao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoPagaManutencao](
	[IdTipoPagaManutencao] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK27] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoPagaManutencao] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoFrequencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoFrequencia](
	[IdTipoFrequencia] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK_tblTipoFrequencia] PRIMARY KEY CLUSTERED 
(
	[IdTipoFrequencia] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoQuandoManutencao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoQuandoManutencao](
	[IdTipoQuandoManutencao] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK23] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoQuandoManutencao] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorFrequencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorFrequencia](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoFrequencia] [int] NOT NULL,
	[QuandoOutro] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblInformacaoCondutorFrequencia] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoRealizaManutencao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoRealizaManutencao](
	[IdTipoRealizaManutencao] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK25] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoRealizaManutencao] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPercursoTempo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorPercursoTempo](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdPercursoTempo] [int] NOT NULL,
	[QuantoTempo] [varchar](100) NOT NULL,
	[PorqueTempo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblInformacaoCondutorPercursoTempo] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoServico]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoServico](
	[IdTipoServico] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK29] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoServico] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoPercursoTempo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoPercursoTempo](
	[IdTipoPercursoTempo] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK_tblTipoPercursoTempo] PRIMARY KEY CLUSTERED 
(
	[IdTipoPercursoTempo] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoTransportaOutro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoTransportaOutro](
	[IdTipoTransportaOutro] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK12] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoTransportaOutro] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoTrocaBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoTrocaBarco](
	[IdTipoTrocaBarco] [int] NOT NULL,
	[Descricao] [varchar](80) NOT NULL,
 CONSTRAINT [PK18] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoTrocaBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoMotivoQuebra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoMotivoQuebra](
	[IdTipoMotivo] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK36] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoMotivo] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoNaoTrabalhaRota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoNaoTrabalhaRota](
	[IdTipoNaoTrabalhaRota] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK21] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoNaoTrabalhaRota] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMunicipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMunicipio](
	[IdMunicipio] [int] NOT NULL,
	[NomeMunicipio] [varchar](100) NOT NULL,
	[UF] [char](2) NOT NULL,
 CONSTRAINT [PKMunicipio] PRIMARY KEY CLUSTERED 
(
	[IdMunicipio] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEscolaridade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEscolaridade](
	[IdTipoEscolaridade] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PKTipoEscolaridade] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEscolaridade] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorGuardaBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorGuardaBarco](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoGuardaBarco] [int] NOT NULL,
	[OndeOutro] [varchar](100) NULL,
 CONSTRAINT [PK42] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoGuardaBarco] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorContrato]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorContrato](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoContrato] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
	[Valor] [money] NULL,
 CONSTRAINT [PK49] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoContrato] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTransportaOutro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorTransportaOutro](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoTransportaOutro] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PK11] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoTransportaOutro] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrocaBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorTrocaBarco](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoTrocaBarco] [int] NOT NULL,
	[RealizaTroca] [char](3) NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PK17] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoTrocaBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaManutencao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorRealizaManutencao](
	[IdTipoRealizaManutencao] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PK24] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoRealizaManutencao] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaReparo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorRealizaReparo](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoRealizaManutencao] [int] NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PK24_1] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoRealizaManutencao] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorServico]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorServico](
	[IdTipoServico] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QualOutro] [varchar](100) NULL,
	[Frequencia] [varchar](100) NULL,
 CONSTRAINT [PK28] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoServico] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrabalhaRota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorTrabalhaRota](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoNaoTrabalhaRota] [int] NOT NULL,
	[SempreTrabalhou] [char](3) NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PK20] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoNaoTrabalhaRota] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorAvisoAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorAvisoAluno](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoAvisoAluno] [int] NOT NULL,
	[AlunoAssisteAula] [char](3) NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PK9] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoAvisoAluno] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorDonoBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorDonoBarco](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoDonoBarco] [int] NOT NULL,
	[Quem] [char](10) NULL,
 CONSTRAINT [PK47] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoDonoBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEscolheBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorEscolheBarco](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEscolheBarco] [int] NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PK51] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoEscolheBarco] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEstrago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorEstrago](
	[IdTipoEstrago] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PK32] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEstrago] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorMotivoQuebra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorMotivoQuebra](
	[IdTipoMotivo] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PK34] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoMotivo] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorOutroAcompanhante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoOutroAcompanhante] [int] NOT NULL,
	[OutroAcompanhante] [char](3) NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PK13] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoOutroAcompanhante] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPagaManutencao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorPagaManutencao](
	[IdTipoPagaManutencao] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PK26] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoPagaManutencao] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorQuandoManutencao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorQuandoManutencao](
	[IdTipoQuandoManutencao] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuandoOutro] [varchar](100) NULL,
 CONSTRAINT [PK22] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoQuandoManutencao] ASC,
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEscola](
	[IdINEP] [int] NOT NULL,
	[NomeEscola] [varchar](250) NULL,
	[IdMunicipio] [int] NULL,
 CONSTRAINT [PKEscola] PRIMARY KEY CLUSTERED 
(
	[IdINEP] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdPesquisador] [int] NOT NULL,
	[IdMunicipio] [int] NULL,
	[Rota] [varchar](100) NOT NULL,
	[Data] [smalldatetime] NULL,
	[HorarioInicio] [varchar](5) NOT NULL,
	[HorarioTermino] [varchar](5) NOT NULL,
 CONSTRAINT [PK1] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[Comunidade] [varchar](100) NULL,
	[Sexo] [char](1) NOT NULL,
	[Idade] [int] NULL,
	[IdTipoEscolaridade] [int] NULL,
 CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[QuantidadeRota] [int] NULL,
	[TempoRotaLonga] [varchar](5) NULL,
	[TempoRotaCurta] [varchar](5) NULL,
	[NaoSabeTempo] [bit] NULL,
	[QuantidadeRotaAtendida] [int] NULL,
	[QuaisRotasAtendidas] [varchar](100) NULL,
	[DiferencaTempo] [char](3) NULL,
	[QualDiferencaTempo] [varchar](100) NULL,
 CONSTRAINT [PK4] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoExperienciaCondutorAnos] [int] NULL,
	[TempoExperienciaCondutorMeses] [int] NULL,
	[TempoAtuacaoAnos] [int] NULL,
	[TempoAtuacaoMeses] [int] NULL,
	[PossuiHabilitacao] [char](3) NOT NULL,
	[TipoCategoria] [varchar](10) NULL,
	[AnoRegistro] [int] NULL,
	[ParticipacaoCurso] [char](3) NOT NULL,
	[PilotaBarcoMotorPopa] [char](3) NOT NULL,
	[QuantoHP] [int] NULL,
 CONSTRAINT [PK3] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNovaLanchaCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblNovaLanchaCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[BarcoMelhorDesempenho] [int] NULL,
	[PorqueBarcoMelhorDesempenho] [varchar](250) NULL,
	[UsariaLancha] [char](3) NULL,
	[PorqueUsariaLancha] [varchar](250) NULL,
	[Seguranca] [int] NULL,
	[Tamanho] [int] NULL,
	[CapacidadePassageiro] [int] NULL,
	[PotenciaMotor] [int] NULL,
	[Estabilidade] [int] NULL,
	[Aparencia] [int] NULL,
	[Protecao] [int] NULL,
	[TempoDeslocamento] [int] NULL,
	[Frenagem] [int] NULL,
	[PorqueFrenagem] [varchar](100) NULL,
	[Reverso] [int] NULL,
	[PorqueReverso] [varchar](100) NULL,
	[ComandoFrente] [int] NULL,
	[PorqueComandoFrente] [varchar](100) NULL,
	[MotorPopa] [int] NULL,
	[PorqueMotorPopa] [varchar](100) NULL,
	[Vibracao] [int] NULL,
	[TempoAtracagem] [int] NULL,
	[UtilizariaLanchaMEC] [char](3) NULL,
	[PorqueUtilizariaLanchaMEC] [varchar](100) NULL,
	[TrechoMaiorDificuldade] [char](3) NULL,
	[PorqueTrechoMaiorDificuldade] [varchar](100) NULL,
	[ContratadoBarco] [char](3) NULL,
	[PorqueContratadoBarco] [varchar](100) NULL,
	[ManutencaoNecessaria] [char](3) NULL,
	[PorqueManutencaoNecessaria] [varchar](100) NULL,
	[LanchaSegura] [char](3) NULL,
	[PorqueLanchaSegura] [varchar](100) NULL,
	[QualSolucao] [varchar](100) NULL,
 CONSTRAINT [PKLanchaNovaCondutor] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor40]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorGuardaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorGuardaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor40] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoGuardaBarco41]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorGuardaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorGuardaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoGuardaBarco41] FOREIGN KEY([IdTipoGuardaBarco])
REFERENCES [dbo].[tblTipoGuardaBarco] ([IdTipoGuardaBarco])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor49]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorContrato]'))
ALTER TABLE [dbo].[tblInformacaoCondutorContrato]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor49] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoContrato50]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorContrato]'))
ALTER TABLE [dbo].[tblInformacaoCondutorContrato]  WITH CHECK ADD  CONSTRAINT [ReftblTipoContrato50] FOREIGN KEY([IdTipoContrato])
REFERENCES [dbo].[tblTipoContrato] ([IdTipoContrato])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor11]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTransportaOutro]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTransportaOutro]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor11] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTransportaOutro10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTransportaOutro]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTransportaOutro]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTransportaOutro10] FOREIGN KEY([IdTipoTransportaOutro])
REFERENCES [dbo].[tblTipoTransportaOutro] ([IdTipoTransportaOutro])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrocaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrocaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTrocaBarco16]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrocaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrocaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTrocaBarco16] FOREIGN KEY([IdTipoTrocaBarco])
REFERENCES [dbo].[tblTipoTrocaBarco] ([IdTipoTrocaBarco])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor24]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor24] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoRealizaManutencao23]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoRealizaManutencao23] FOREIGN KEY([IdTipoRealizaManutencao])
REFERENCES [dbo].[tblTipoRealizaManutencao] ([IdTipoRealizaManutencao])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor37]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaReparo]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaReparo]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor37] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoRealizaManutencao44]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaReparo]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaReparo]  WITH CHECK ADD  CONSTRAINT [ReftblTipoRealizaManutencao44] FOREIGN KEY([IdTipoRealizaManutencao])
REFERENCES [dbo].[tblTipoRealizaManutencao] ([IdTipoRealizaManutencao])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor28]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorServico]'))
ALTER TABLE [dbo].[tblInformacaoCondutorServico]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor28] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoServico29]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorServico]'))
ALTER TABLE [dbo].[tblInformacaoCondutorServico]  WITH CHECK ADD  CONSTRAINT [ReftblTipoServico29] FOREIGN KEY([IdTipoServico])
REFERENCES [dbo].[tblTipoServico] ([IdTipoServico])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrabalhaRota]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrabalhaRota]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor19] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoNaoTrabalhaRota20]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrabalhaRota]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrabalhaRota]  WITH CHECK ADD  CONSTRAINT [ReftblTipoNaoTrabalhaRota20] FOREIGN KEY([IdTipoNaoTrabalhaRota])
REFERENCES [dbo].[tblTipoNaoTrabalhaRota] ([IdTipoNaoTrabalhaRota])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorAvisoAluno]'))
ALTER TABLE [dbo].[tblInformacaoCondutorAvisoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor8] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAvisoAluno9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorAvisoAluno]'))
ALTER TABLE [dbo].[tblInformacaoCondutorAvisoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAvisoAluno9] FOREIGN KEY([IdTipoAvisoAluno])
REFERENCES [dbo].[tblTipoAvisoAluno] ([IdTipoAvisoAluno])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor47]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorDonoBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorDonoBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor47] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoDonoBarco48]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorDonoBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorDonoBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoDonoBarco48] FOREIGN KEY([IdTipoDonoBarco])
REFERENCES [dbo].[tblTipoDonoBarco] ([IdTipoDonoBarco])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor51]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEscolheBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEscolheBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor51] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolheBarco52]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEscolheBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEscolheBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolheBarco52] FOREIGN KEY([IdTipoEscolheBarco])
REFERENCES [dbo].[tblTipoEscolheBarco] ([IdTipoEscolheBarco])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor32]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEstrago]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEstrago]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor32] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEstrago33]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEstrago]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEstrago]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEstrago33] FOREIGN KEY([IdTipoEstrago])
REFERENCES [dbo].[tblTipoEstrago] ([IdTipoEstrago])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor34]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorMotivoQuebra]'))
ALTER TABLE [dbo].[tblInformacaoCondutorMotivoQuebra]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor34] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMotivoQuebra36]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorMotivoQuebra]'))
ALTER TABLE [dbo].[tblInformacaoCondutorMotivoQuebra]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMotivoQuebra36] FOREIGN KEY([IdTipoMotivo])
REFERENCES [dbo].[tblTipoMotivoQuebra] ([IdTipoMotivo])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorOutroAcompanhante]'))
ALTER TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor13] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroAcompanhante12]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorOutroAcompanhante]'))
ALTER TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroAcompanhante12] FOREIGN KEY([IdTipoOutroAcompanhante])
REFERENCES [dbo].[tblTipoOutroAcompanhante] ([IdTipoOutroAcompanhante])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor25]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPagaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorPagaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor25] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoPagaManutencao27]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPagaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorPagaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoPagaManutencao27] FOREIGN KEY([IdTipoPagaManutencao])
REFERENCES [dbo].[tblTipoPagaManutencao] ([IdTipoPagaManutencao])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor21]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorQuandoManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorQuandoManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor21] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoQuandoManutencao22]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorQuandoManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorQuandoManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoQuandoManutencao22] FOREIGN KEY([IdTipoQuandoManutencao])
REFERENCES [dbo].[tblTipoQuandoManutencao] ([IdTipoQuandoManutencao])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio22]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEscola]'))
ALTER TABLE [dbo].[tblEscola]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio22] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio45]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoCondutor]'))
ALTER TABLE [dbo].[tblCabecalhoCondutor]  WITH NOCHECK ADD  CONSTRAINT [ReftblMunicipio45] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoCondutor] CHECK CONSTRAINT [ReftblMunicipio45]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutor1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoCondutor]'))
ALTER TABLE [dbo].[tblIdentificacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutor1] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade18]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoCondutor]'))
ALTER TABLE [dbo].[tblIdentificacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade18] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutor3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutor]'))
ALTER TABLE [dbo].[tblInformacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutor3] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutor2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoCondutor]'))
ALTER TABLE [dbo].[tblCaracterizacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutor2] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutorLanchaNova]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblNovaLanchaCondutor]'))
ALTER TABLE [dbo].[tblNovaLanchaCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutorLanchaNova] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])

alter table tblCabecalhoCondutor add IdRota int null;
alter table tblCaracterizacaoCondutor alter column QuantoHP decimal(10,2);