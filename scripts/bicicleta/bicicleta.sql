SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAtividade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAtividade](
	[IdTipoAtividade] [int] NOT NULL,
	[Descricao] [varchar](70) NULL,
 CONSTRAINT [TipoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdTipoAtividade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEmpurra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEmpurra](
	[IdTipoEmpurra] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [TipoEmpurra] PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpurra] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAcidenteEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAcidenteEscola](
	[IdTipoAcidenteEscola] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoAcidenteEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAcidenteEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoSujou]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoSujou](
	[IdTipoSujou] [int] NOT NULL,
	[Descricao] [varchar](10) NULL,
 CONSTRAINT [TipoSujou] PRIMARY KEY CLUSTERED 
(
	[IdTipoSujou] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAcompanhanteEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAcompanhanteEscola](
	[IdTipoAcompanhanteEscola] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoAcompanhanteEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAcompanhanteEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoBicicleta](
	[IdTipoDefeitoBicicleta] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoDefeitoBicicleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoCalcado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoCalcado](
	[IdTipoCalcado] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoCalcado] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoCalcado] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoConsertaBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoConsertaBicicleta](
	[IdTipoConsertaBicicleta] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoConsertaBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoConsertaBicicleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoCuidadoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoCuidadoBicicleta](
	[IdTipoCuidadoBicicleta] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoCuidadoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoCuidadoBicicleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEquipamentoProtecao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEquipamentoProtecao](
	[IdTipoEquipamentoProtecao] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoEquipamentoProtecao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEquipamentoProtecao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoLocalEstacionamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoLocalEstacionamento](
	[IdTipoLocalEstacionamento] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoLocalEstacionamento] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoLocalEstacionamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoProtecao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoProtecao](
	[IdTipoProtecao] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PKTipoProtecao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoProtecao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoComoVaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoComoVaoEscola](
	[IdTipoComoVaoEscola] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [TipoComoVaoEscola] PRIMARY KEY CLUSTERED 
(
	[IdTipoComoVaoEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoGuardaBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoGuardaBicicleta](
	[IdTipoOndeGuardaBicicleta] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [TipoGuardaBicicleta] PRIMARY KEY CLUSTERED 
(
	[IdTipoOndeGuardaBicicleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoProblemasTransito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoProblemasTransito](
	[IdTipoProblemasTransito] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [TipoProblemasTransito] PRIMARY KEY CLUSTERED 
(
	[IdTipoProblemasTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoMotivoUtilizacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoMotivoUtilizacao](
	[IdTipoMotivoUtilizacao] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoMotivoUtilizacao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoMotivoUtilizacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoObstaculoTransito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoObstaculoTransito](
	[IdTipoObstaculoTransito] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoObstaculoTransito] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoObstaculoTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoOutroTransporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoOutroTransporte](
	[IdTipoOutroTransporte] [int] NOT NULL,
	[Descricao] [char](50) NULL,
 CONSTRAINT [PKTipoOutroTransporte] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoOutroTransporte] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoDeslocamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoDeslocamento](
	[IdTipoAtividade] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [TipoDeslocamento] PRIMARY KEY CLUSTERED 
(
	[IdTipoAtividade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoProtecaoContraChuva]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoProtecaoContraChuva](
	[IdTipoProtecaoChuva] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [TipoProtecaoContraChuva] PRIMARY KEY CLUSTERED 
(
	[IdTipoProtecaoChuva] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
 CONSTRAINT [Municipio] PRIMARY KEY CLUSTERED 
(
	[IdMunicipio] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoEmpura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoPosAlunoEmpura](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoEmpurra] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PercepcaoPosAlunoEmpura] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoEmpurra] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoSujou]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoPosAlunoSujou](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoSujou] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PercepcaoPosAlunoSujou] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoSujou] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoAtividade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoPosAlunoAtividade](
	[IdTipoAtividade] [int] NOT NULL,
	[IdFormulario] [varchar](10) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PercepcaoPosAlunoAtividade] PRIMARY KEY CLUSTERED 
(
	[IdTipoAtividade] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAtividade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAtividade](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoAtividade] [int] NOT NULL,
	[QualOutroAtividade] [varchar](100) NULL,
 CONSTRAINT [PKAtividade] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAtividade] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAcidenteEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAcidenteEscola](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoAcidenteEscola] [int] NOT NULL,
	[SofreuAcidenteEscola] [char](3) NULL,
	[QualOutroAcidenteEscola] [varchar](100) NULL,
 CONSTRAINT [PKAcidenteEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoAcidenteEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAcompanhanteEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAcompanhanteEscola](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoAcompanhanteEscola] [int] NOT NULL,
	[AcompanhanteEscola] [int] NULL,
	[QualOutroAcompanhanteEscola] [varchar](100) NULL,
 CONSTRAINT [PKAcompanhanteEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAcompanhanteEscola] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDefeitoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDefeitoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoDefeitoBicicleta] [int] NOT NULL,
	[QualOutroDefeitoBicicleta] [varchar](100) NULL,
 CONSTRAINT [PKDefeitoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoDefeitoBicicleta] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMelhoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMelhoria](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoDefeitoBicicleta] [int] NOT NULL,
	[QualOutroMelhoria] [varchar](100) NULL,
 CONSTRAINT [PKMelhoria] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoDefeitoBicicleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCalcado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCalcado](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoCalcado] [int] NOT NULL,
 CONSTRAINT [PKCalcado] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoCalcado] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoTransporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoTransporte](
	[IdFormulario] [varchar](10) NOT NULL,
	[QuantidadeAlunoEscola] [int] NULL,
	[UtilizamTransporteEscolarPublico] [char](3) NULL,
	[QuantosUsamTransporte] [int] NULL,
	[QuantosUsamBicicleta] [int] NULL,
	[ComoUtilizamBicicleta] [int] NULL,
	[QuemUtilizaBicicleta] [int] NULL,
	[QualVisaoAmigos] [int] NULL,
	[IdadeMinimaBicicleta] [int] NULL,
	[ResponsavelControlarUso] [char](3) NULL,
	[QuemResponsavelControlarUso] [varchar](100) NULL,
	[ExisteAtividadeBicicleta] [char](3) NULL,
	[QualAtividadeBicicleta] [varchar](100) NULL,
	[QuantidadeFuncionariosUtilizamBicicleta] [int] NULL,
	[DonoBicicleta] [int] NULL,
	[QuemDonoBicicleta] [varchar](100) NULL,
	[ResponsavelManutencao] [int] NULL,
	[QuemResponsavelManutencao] [varchar](100) NULL,
 CONSTRAINT [IdentificacaoTransporte] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoDiretor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoDiretor](
	[IdFormulario] [varchar](10) NOT NULL,
	[Sexo] [char](1) NULL,
	[AnoExperiencia] [int] NULL,
	[MesExperiencia] [int] NULL,
	[Escolaridade] [int] NULL,
	[Especialidade] [varchar](50) NULL,
 CONSTRAINT [IdentificacaoDiretor] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblConsertaBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblConsertaBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoConsertaBicicleta] [int] NOT NULL,
	[QualOutroConsertaBicicleta] [varchar](100) NULL,
 CONSTRAINT [PKConsertaBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoConsertaBicicleta] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCuidadoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCuidadoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoCuidadoBicicleta] [int] NOT NULL,
	[QualOutroCuidadoBicicleta] [varchar](100) NULL,
 CONSTRAINT [PKCuidadoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoCuidadoBicicleta] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEquipamentoProtecao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEquipamentoProtecao](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoEquipamentoProtecao] [int] NOT NULL,
	[QualOutroEquipamentoProtecao] [varchar](100) NULL,
 CONSTRAINT [PKEquipamentoProtecao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEquipamentoProtecao] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoProfessor](
	[IdFormulario] [varchar](10) NOT NULL,
	[Sexo] [char](1) NULL,
	[AnoExperiencia] [int] NULL,
	[MesExperiencia] [int] NULL,
	[Escolaridade] [int] NULL,
	[Especialidade] [varchar](50) NULL,
 CONSTRAINT [IdentificacaoProfessor] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessorTransporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoProfessorTransporte](
	[IdFormulario] [varchar](10) NOT NULL,
	[UtilizamTransporteEscolarPublico] [char](3) NULL,
	[QuantosUsamTransporte] [int] NULL,
	[QuantosUsamBicicleta] [int] NULL,
	[ComoUtilizamBicicleta] [int] NULL,
	[QuemUtilizaBicicleta] [int] NULL,
	[QualVisaoAmigos] [int] NULL,
	[IdadeMinimaBicicleta] [int] NULL,
	[ResponsavelControlarUso] [char](3) NULL,
	[QuemResponsavelControlarUso] [varchar](100) NULL,
	[ExisteAtividadeBicicleta] [char](3) NULL,
	[QualAtividadeBicicleta] [varchar](100) NULL,
	[QuantidadeFuncionariosUtilizamBicicleta] [int] NULL,
	[DonoBicicleta] [int] NULL,
	[QuemDonoBicicleta] [varchar](100) NULL,
	[ResponsavelManutencao] [int] NULL,
	[QuemResponsavelManutencao] [varchar](100) NULL,
 CONSTRAINT [IdentificacaoProfessorTransporte] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAlunoNaoUtilizaBike]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoAlunoNaoUtilizaBike](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
	[Turno] [int] NULL,
 CONSTRAINT [PKIdentificacaoAlunoNaoUtilizaBike] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoAluno](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
	[UtilizacaoBicicleta] [int] NULL,
	[Turno] [int] NULL,
 CONSTRAINT [PKIdentificacaoAluno] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoCasa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblLocalEstacionamentoCasa](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoLocalEstacionamento] [int] NOT NULL,
	[QualOutroLocalEstacionamentoCasa] [varchar](100) NULL,
 CONSTRAINT [PKLocalEstacionamentoCasa] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoLocalEstacionamento] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblLocalEstacionamentoEmbarcacao](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoLocalEstacionamento] [int] NOT NULL,
	[QualOutroLocalEstacionamentoEmbarcacao] [varchar](100) NULL,
 CONSTRAINT [PKLocalEstacionamentoEmbarcacao] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoLocalEstacionamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblLocalEstacionamentoEscola](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoLocalEstacionamento] [int] NOT NULL,
	[QualOutroLocalEstacionamentoEscola] [varchar](100) NULL,
 CONSTRAINT [PKLocalEstacionamentoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoLocalEstacionamento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMotivoNaoUtilizacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMotivoNaoUtilizacao](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoMotivoUtilizacao] [int] NOT NULL,
	[OutroMotivoNaoUtilizacao] [varchar](100) NULL,
 CONSTRAINT [PKMotivoNaoUtilizacao] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoMotivoUtilizacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMotivoUtilizacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMotivoUtilizacao](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoMotivoUtilizacao] [int] NOT NULL,
	[OutroMotivoUtilizacao] [varchar](100) NULL,
 CONSTRAINT [PKMotivoUtilizacao] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoMotivoUtilizacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblObstaculoTransito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblObstaculoTransito](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoObstaculoTransito] [int] NOT NULL,
	[QualOutroObstaculoTransito] [varchar](100) NULL,
 CONSTRAINT [PKObstaculoTransito] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoObstaculoTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblObstaculoTransitoNaoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblObstaculoTransitoNaoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoObstaculoTransito] [int] NOT NULL,
	[QualOutroObstaculoTransito] [varchar](100) NULL,
 CONSTRAINT [PKObstaculoTransitoNaoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoObstaculoTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProblemasTransito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProblemasTransito](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoProblemasTransito] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ProblemasTransito] PRIMARY KEY CLUSTERED 
(
	[IdTipoProblemasTransito] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuardaBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGuardaBicicleta](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoOndeGuardaBicicleta] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [GuardaBicicleta] PRIMARY KEY CLUSTERED 
(
	[IdTipoOndeGuardaBicicleta] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblComoAlunosVaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblComoAlunosVaoEscola](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoComoVaoEscola] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ComoAlunosVaoEscola] PRIMARY KEY CLUSTERED 
(
	[IdTipoComoVaoEscola] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblOutroTransporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblOutroTransporte](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoOutroTransporte] [int] NOT NULL,
	[QualOutroTransporteBicicleta] [varchar](100) NULL,
 CONSTRAINT [PKOutroTransporte] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoOutroTransporte] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransporteEscolar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTransporteEscolar](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoOutroTransporte] [int] NOT NULL,
 CONSTRAINT [PKTransporteEscolar] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoOutroTransporte] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVaiEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVaiEscola](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoOutroTransporte] [int] NOT NULL,
	[QualOutroVaiEscola] [varchar](100) NULL,
 CONSTRAINT [PKVaiEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoOutroTransporte] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProtecaoSolNaoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProtecaoSolNaoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoProtecao] [int] NOT NULL,
	[QualOutroProtecaoSol] [varchar](100) NULL,
 CONSTRAINT [PKProtecaoSolNaoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProtecao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProtecaoChuvaNaoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProtecaoChuvaNaoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoProtecao] [int] NOT NULL,
	[QualOutroProtecaoChuva] [varchar](100) NULL,
 CONSTRAINT [PKProtecaoChuvaNaoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProtecao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProtecaoChuva]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProtecaoChuva](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoProtecao] [int] NOT NULL,
	[QualOutroTipoProtecaoChuva] [varchar](100) NULL,
 CONSTRAINT [PKProtecaoChuva] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProtecao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProtecaoSol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProtecaoSol](
	[IdFormulario] [char](9) NOT NULL,
	[IdTipoProtecao] [int] NOT NULL,
	[QualOutroTipoProtecaoSol] [varchar](100) NULL,
 CONSTRAINT [PKProtecaoSol] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProtecao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProfessorComoAlunosVaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProfessorComoAlunosVaoEscola](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoComoVaoEscola] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ProfessorComoAlunosVaoEscola] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoComoVaoEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProfessorGuardaBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProfessorGuardaBicicleta](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoOndeGuardaBicicleta] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ProfessorGuardaBicicleta] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoOndeGuardaBicicleta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblResponsavelProblemasTransitoPerspectiva]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblResponsavelProblemasTransitoPerspectiva](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoProblemasTransito] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ResponsavelProblemasTransitoPerspectiva] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProblemasTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblResponsavelProblemasTransito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblResponsavelProblemasTransito](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoProblemasTransito] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ResponsavelProblemasTransito] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProblemasTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProfessorProblemasTransito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProfessorProblemasTransito](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoProblemasTransito] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [ProfessorProblemasTransito] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProblemasTransito] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacoesBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacoesBicicleta](
	[IdFormulario] [varchar](10) NOT NULL,
	[ExisteBicicletaNaResidencia] [char](3) NULL,
	[QuantasBicicletas] [int] NULL,
	[QuantasPessoasUtilizamBicicletaNaCasa] [int] NULL,
	[QuantasPessoasUtilizamBicicletaIrEscola] [int] NULL,
	[QuemForneceuBicicleta] [int] NULL,
	[LevaCarona] [char](3) NULL,
	[TransportaCarga] [char](3) NULL,
	[PodeSerRoubada] [varchar](20) NULL,
	[IdadeMinima] [int] NULL,
	[PodePagarManutencao] [char](3) NULL,
 CONSTRAINT [InformacoesBicicleta] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoResponsavel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoResponsavel](
	[IdFormulario] [varchar](10) NOT NULL,
	[Parentesco] [int] NULL,
	[QualParentesco] [varchar](100) NULL,
	[Idade] [int] NULL,
	[Escolaridade] [int] NULL,
	[Especialidade] [varchar](100) NULL,
 CONSTRAINT [IdentificacaoResponsavel] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProtecaoContraChuva]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProtecaoContraChuva](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoProtecaoChuva] [int] NOT NULL,
	[QuaisOutras] [varchar](100) NULL,
 CONSTRAINT [ProtecaoContraChuva] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProtecaoChuva] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDeslocamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDeslocamento](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoAtividade] [int] NOT NULL,
	[QuaisOutras] [varchar](100) NULL,
 CONSTRAINT [Deslocamento] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoAtividade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoNaoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoNaoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[BicicletaMudaria] [int] NULL,
	[PorqueMudaria] [varchar](100) NULL,
	[NivelSatisfacaoBicicleta] [int] NULL,
	[QualOutroNivelSatisfacaoBicicleta] [varchar](100) NULL,
	[Responsavel] [char](3) NULL,
	[Observacoes] [text] NULL,
 CONSTRAINT [PKInformacaoNaoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[TempoDeslocamento] [int] NULL,
	[DarCarona] [char](3) NULL,
	[PegarCarona] [char](3) NULL,
	[UtilizaTranca] [int] NULL,
	[FrequenciaManutencaoBicicleta] [int] NULL,
	[ReparoBicicleta] [int] NULL,
 CONSTRAINT [PKInformacaoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoBicicleta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoBicicleta](
	[IdFormulario] [char](9) NOT NULL,
	[NivelSatisfacaoBicicleta] [int] NULL,
	[QualOutroNivelSatisfacaoBicicleta] [varchar](100) NULL,
	[NivelSatisfacaoEquipamento] [int] NULL,
	[QualOutroNivelSatisfacaoEquipamento] [varchar](100) NULL,
	[ObservacaoFormularioAluno] [varchar](250) NULL,
 CONSTRAINT [PKPercepcaoAlunoBicicleta] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoProfessor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoProfessor](
	[IdFormulario] [varchar](10) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[LocalEscola] [int] NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [CabecalhoProfessor] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDiretor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoDiretor](
	[IdFormulario] [varchar](10) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[LocalEscola] [int] NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [CabecalhoDiretor] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoAluno](
	[IdFormulario] [char](9) NOT NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[IdMunicipio] [int] NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PKCabecalhoAluno] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPosAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoPosAluno](
	[IdFormulario] [varchar](10) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[IdAluno] [varchar](10) NULL,
 CONSTRAINT [IdentificacaoPosAluno] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAlunoNaoUtilizaBike]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoAlunoNaoUtilizaBike](
	[IdFormulario] [char](9) NOT NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[IdMunicipio] [int] NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PKCabecalhoAlunoNaoUtilizaBike] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoPosAluno](
	[IdFormulario] [varchar](10) NOT NULL,
	[BicicletaMelhor] [int] NULL,
	[Aparencia] [int] NULL,
	[PorqueAparencia] [varchar](100) NULL,
	[Frequencia] [int] NULL,
	[Selim] [char](10) NULL,
	[Guiar] [char](3) NULL,
	[PorqueGuiar] [varchar](100) NULL,
	[Pesada] [char](3) NULL,
	[ForcaPedalar] [char](3) NULL,
	[Freio] [char](3) NULL,
	[Sujou] [char](3) NULL,
	[Empurrar] [char](3) NULL,
	[DuracaoTeste] [int] NULL,
	[ImportanteMarchas] [char](3) NULL,
	[PorqueImportanteMarchas] [varchar](100) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PercepcaoPosAluno] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoResponsavel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoResponsavel](
	[IdFormulario] [varchar](10) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[CodigoAluno] [varchar](10) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [CabecalhoResponsavel] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
 CONSTRAINT [Escola] PRIMARY KEY CLUSTERED 
(
	[IdINEP] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblPercepcaoPosAluno2123]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoEmpura]'))
ALTER TABLE [dbo].[tblPercepcaoPosAlunoEmpura]  WITH CHECK ADD  CONSTRAINT [ReftblPercepcaoPosAluno2123] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblPercepcaoPosAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAlunoEmpura] CHECK CONSTRAINT [ReftblPercepcaoPosAluno2123]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEmpurra3123]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoEmpura]'))
ALTER TABLE [dbo].[tblPercepcaoPosAlunoEmpura]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEmpurra3123] FOREIGN KEY([IdTipoEmpurra])
REFERENCES [dbo].[tblTipoEmpurra] ([IdTipoEmpurra])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAlunoEmpura] CHECK CONSTRAINT [ReftblTipoEmpurra3123]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblPercepcaoPosAluno4123123]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoSujou]'))
ALTER TABLE [dbo].[tblPercepcaoPosAlunoSujou]  WITH CHECK ADD  CONSTRAINT [ReftblPercepcaoPosAluno4123123] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblPercepcaoPosAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAlunoSujou] CHECK CONSTRAINT [ReftblPercepcaoPosAluno4123123]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoSujou5123123]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoSujou]'))
ALTER TABLE [dbo].[tblPercepcaoPosAlunoSujou]  WITH CHECK ADD  CONSTRAINT [ReftblTipoSujou5123123] FOREIGN KEY([IdTipoSujou])
REFERENCES [dbo].[tblTipoSujou] ([IdTipoSujou])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAlunoSujou] CHECK CONSTRAINT [ReftblTipoSujou5123123]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblPercepcaoPosAluno11123]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoAtividade]'))
ALTER TABLE [dbo].[tblPercepcaoPosAlunoAtividade]  WITH CHECK ADD  CONSTRAINT [ReftblPercepcaoPosAluno11123] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblPercepcaoPosAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAlunoAtividade] CHECK CONSTRAINT [ReftblPercepcaoPosAluno11123]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAtividade10332]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAlunoAtividade]'))
ALTER TABLE [dbo].[tblPercepcaoPosAlunoAtividade]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAtividade10332] FOREIGN KEY([IdTipoAtividade])
REFERENCES [dbo].[tblTipoAtividade] ([IdTipoAtividade])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAlunoAtividade] CHECK CONSTRAINT [ReftblTipoAtividade10332]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno4288789]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAtividade]'))
ALTER TABLE [dbo].[tblAtividade]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno4288789] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblAtividade] CHECK CONSTRAINT [ReftblCabecalhoAluno4288789]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAtividade417778]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAtividade]'))
ALTER TABLE [dbo].[tblAtividade]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAtividade417778] FOREIGN KEY([IdTipoAtividade])
REFERENCES [dbo].[tblTipoAtividade] ([IdTipoAtividade])
GO
ALTER TABLE [dbo].[tblAtividade] CHECK CONSTRAINT [ReftblTipoAtividade417778]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno199789]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAcidenteEscola]'))
ALTER TABLE [dbo].[tblAcidenteEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno199789] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblAcidenteEscola] CHECK CONSTRAINT [ReftblCabecalhoAluno199789]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAcidenteEscola2700980]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAcidenteEscola]'))
ALTER TABLE [dbo].[tblAcidenteEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAcidenteEscola2700980] FOREIGN KEY([IdTipoAcidenteEscola])
REFERENCES [dbo].[tblTipoAcidenteEscola] ([IdTipoAcidenteEscola])
GO
ALTER TABLE [dbo].[tblAcidenteEscola] CHECK CONSTRAINT [ReftblTipoAcidenteEscola2700980]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno518908908]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAcompanhanteEscola]'))
ALTER TABLE [dbo].[tblAcompanhanteEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno518908908] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblAcompanhanteEscola] CHECK CONSTRAINT [ReftblCabecalhoAluno518908908]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAcompanhanteEscola43890890]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAcompanhanteEscola]'))
ALTER TABLE [dbo].[tblAcompanhanteEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAcompanhanteEscola43890890] FOREIGN KEY([IdTipoAcompanhanteEscola])
REFERENCES [dbo].[tblTipoAcompanhanteEscola] ([IdTipoAcompanhanteEscola])
GO
ALTER TABLE [dbo].[tblAcompanhanteEscola] CHECK CONSTRAINT [ReftblTipoAcompanhanteEscola43890890]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno60436]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDefeitoBicicleta]'))
ALTER TABLE [dbo].[tblDefeitoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno60436] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDefeitoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAluno60436]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoBicicleta48373456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDefeitoBicicleta]'))
ALTER TABLE [dbo].[tblDefeitoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoBicicleta48373456] FOREIGN KEY([IdTipoDefeitoBicicleta])
REFERENCES [dbo].[tblTipoBicicleta] ([IdTipoDefeitoBicicleta])
GO
ALTER TABLE [dbo].[tblDefeitoBicicleta] CHECK CONSTRAINT [ReftblTipoBicicleta48373456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno682456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMelhoria]'))
ALTER TABLE [dbo].[tblMelhoria]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno682456] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblMelhoria] CHECK CONSTRAINT [ReftblCabecalhoAluno682456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoBicicleta7156]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMelhoria]'))
ALTER TABLE [dbo].[tblMelhoria]  WITH CHECK ADD  CONSTRAINT [ReftblTipoBicicleta7156] FOREIGN KEY([IdTipoDefeitoBicicleta])
REFERENCES [dbo].[tblTipoBicicleta] ([IdTipoDefeitoBicicleta])
GO
ALTER TABLE [dbo].[tblMelhoria] CHECK CONSTRAINT [ReftblTipoBicicleta7156]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno1337]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCalcado]'))
ALTER TABLE [dbo].[tblCalcado]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno1337] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCalcado] CHECK CONSTRAINT [ReftblCabecalhoAluno1337]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoCalcado1476537]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCalcado]'))
ALTER TABLE [dbo].[tblCalcado]  WITH CHECK ADD  CONSTRAINT [ReftblTipoCalcado1476537] FOREIGN KEY([IdTipoCalcado])
REFERENCES [dbo].[tblTipoCalcado] ([IdTipoCalcado])
GO
ALTER TABLE [dbo].[tblCalcado] CHECK CONSTRAINT [ReftblTipoCalcado1476537]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoTransporte]'))
ALTER TABLE [dbo].[tblIdentificacaoTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor13] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoTransporte] CHECK CONSTRAINT [ReftblCabecalhoDiretor13]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoDiretor]'))
ALTER TABLE [dbo].[tblIdentificacaoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor1] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoDiretor] CHECK CONSTRAINT [ReftblCabecalhoDiretor1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno59367]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblConsertaBicicleta]'))
ALTER TABLE [dbo].[tblConsertaBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno59367] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblConsertaBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAluno59367]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoConsertaBicicleta47367]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblConsertaBicicleta]'))
ALTER TABLE [dbo].[tblConsertaBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoConsertaBicicleta47367] FOREIGN KEY([IdTipoConsertaBicicleta])
REFERENCES [dbo].[tblTipoConsertaBicicleta] ([IdTipoConsertaBicicleta])
GO
ALTER TABLE [dbo].[tblConsertaBicicleta] CHECK CONSTRAINT [ReftblTipoConsertaBicicleta47367]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno69376]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCuidadoBicicleta]'))
ALTER TABLE [dbo].[tblCuidadoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno69376] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCuidadoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAluno69376]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoCuidadoBicicleta65367]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCuidadoBicicleta]'))
ALTER TABLE [dbo].[tblCuidadoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoCuidadoBicicleta65367] FOREIGN KEY([IdTipoCuidadoBicicleta])
REFERENCES [dbo].[tblTipoCuidadoBicicleta] ([IdTipoCuidadoBicicleta])
GO
ALTER TABLE [dbo].[tblCuidadoBicicleta] CHECK CONSTRAINT [ReftblTipoCuidadoBicicleta65367]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno39256]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEquipamentoProtecao]'))
ALTER TABLE [dbo].[tblEquipamentoProtecao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno39256] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblEquipamentoProtecao] CHECK CONSTRAINT [ReftblCabecalhoAluno39256]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEquipamentoProtecao38245]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEquipamentoProtecao]'))
ALTER TABLE [dbo].[tblEquipamentoProtecao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEquipamentoProtecao38245] FOREIGN KEY([IdTipoEquipamentoProtecao])
REFERENCES [dbo].[tblTipoEquipamentoProtecao] ([IdTipoEquipamentoProtecao])
GO
ALTER TABLE [dbo].[tblEquipamentoProtecao] CHECK CONSTRAINT [ReftblTipoEquipamentoProtecao38245]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor1222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessor]'))
ALTER TABLE [dbo].[tblIdentificacaoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor1222] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoProfessor] CHECK CONSTRAINT [ReftblCabecalhoProfessor1222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor13222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessorTransporte]'))
ALTER TABLE [dbo].[tblIdentificacaoProfessorTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor13222] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoProfessorTransporte] CHECK CONSTRAINT [ReftblCabecalhoProfessor13222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike434536]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAlunoNaoUtilizaBike]'))
ALTER TABLE [dbo].[tblIdentificacaoAlunoNaoUtilizaBike]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike434536] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoAlunoNaoUtilizaBike] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike434536]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade342523]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAlunoNaoUtilizaBike]'))
ALTER TABLE [dbo].[tblIdentificacaoAlunoNaoUtilizaBike]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade342523] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoAlunoNaoUtilizaBike] CHECK CONSTRAINT [ReftblTipoEscolaridade342523]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno4222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAluno]'))
ALTER TABLE [dbo].[tblIdentificacaoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno4222] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoAluno] CHECK CONSTRAINT [ReftblCabecalhoAluno4222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade326456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAluno]'))
ALTER TABLE [dbo].[tblIdentificacaoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade326456] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoAluno] CHECK CONSTRAINT [ReftblTipoEscolaridade326456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno56256]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoCasa]'))
ALTER TABLE [dbo].[tblLocalEstacionamentoCasa]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno56256] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblLocalEstacionamentoCasa] CHECK CONSTRAINT [ReftblCabecalhoAluno56256]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoLocalEstacionamento44264]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoCasa]'))
ALTER TABLE [dbo].[tblLocalEstacionamentoCasa]  WITH CHECK ADD  CONSTRAINT [ReftblTipoLocalEstacionamento44264] FOREIGN KEY([IdTipoLocalEstacionamento])
REFERENCES [dbo].[tblTipoLocalEstacionamento] ([IdTipoLocalEstacionamento])
GO
ALTER TABLE [dbo].[tblLocalEstacionamentoCasa] CHECK CONSTRAINT [ReftblTipoLocalEstacionamento44264]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno58265]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoEmbarcacao]'))
ALTER TABLE [dbo].[tblLocalEstacionamentoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno58265] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblLocalEstacionamentoEmbarcacao] CHECK CONSTRAINT [ReftblCabecalhoAluno58265]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoLocalEstacionamento5522]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoEmbarcacao]'))
ALTER TABLE [dbo].[tblLocalEstacionamentoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoLocalEstacionamento5522] FOREIGN KEY([IdTipoLocalEstacionamento])
REFERENCES [dbo].[tblTipoLocalEstacionamento] ([IdTipoLocalEstacionamento])
GO
ALTER TABLE [dbo].[tblLocalEstacionamentoEmbarcacao] CHECK CONSTRAINT [ReftblTipoLocalEstacionamento5522]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno572456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoEscola]'))
ALTER TABLE [dbo].[tblLocalEstacionamentoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno572456] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblLocalEstacionamentoEscola] CHECK CONSTRAINT [ReftblCabecalhoAluno572456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoLocalEstacionamento54246]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblLocalEstacionamentoEscola]'))
ALTER TABLE [dbo].[tblLocalEstacionamentoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoLocalEstacionamento54246] FOREIGN KEY([IdTipoLocalEstacionamento])
REFERENCES [dbo].[tblTipoLocalEstacionamento] ([IdTipoLocalEstacionamento])
GO
ALTER TABLE [dbo].[tblLocalEstacionamentoEscola] CHECK CONSTRAINT [ReftblTipoLocalEstacionamento54246]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike1035435]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMotivoNaoUtilizacao]'))
ALTER TABLE [dbo].[tblMotivoNaoUtilizacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike1035435] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblMotivoNaoUtilizacao] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike1035435]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMotivoUtilizacao11345362]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMotivoNaoUtilizacao]'))
ALTER TABLE [dbo].[tblMotivoNaoUtilizacao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMotivoUtilizacao11345362] FOREIGN KEY([IdTipoMotivoUtilizacao])
REFERENCES [dbo].[tblTipoMotivoUtilizacao] ([IdTipoMotivoUtilizacao])
GO
ALTER TABLE [dbo].[tblMotivoNaoUtilizacao] CHECK CONSTRAINT [ReftblTipoMotivoUtilizacao11345362]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno10246]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMotivoUtilizacao]'))
ALTER TABLE [dbo].[tblMotivoUtilizacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno10246] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblMotivoUtilizacao] CHECK CONSTRAINT [ReftblCabecalhoAluno10246]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMotivoUtilizacao11246]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMotivoUtilizacao]'))
ALTER TABLE [dbo].[tblMotivoUtilizacao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMotivoUtilizacao11246] FOREIGN KEY([IdTipoMotivoUtilizacao])
REFERENCES [dbo].[tblTipoMotivoUtilizacao] ([IdTipoMotivoUtilizacao])
GO
ALTER TABLE [dbo].[tblMotivoUtilizacao] CHECK CONSTRAINT [ReftblTipoMotivoUtilizacao11246]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno21246]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblObstaculoTransito]'))
ALTER TABLE [dbo].[tblObstaculoTransito]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno21246] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblObstaculoTransito] CHECK CONSTRAINT [ReftblCabecalhoAluno21246]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoObstaculoTransito222456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblObstaculoTransito]'))
ALTER TABLE [dbo].[tblObstaculoTransito]  WITH CHECK ADD  CONSTRAINT [ReftblTipoObstaculoTransito222456] FOREIGN KEY([IdTipoObstaculoTransito])
REFERENCES [dbo].[tblTipoObstaculoTransito] ([IdTipoObstaculoTransito])
GO
ALTER TABLE [dbo].[tblObstaculoTransito] CHECK CONSTRAINT [ReftblTipoObstaculoTransito222456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike2124525]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblObstaculoTransitoNaoBicicleta]'))
ALTER TABLE [dbo].[tblObstaculoTransitoNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike2124525] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblObstaculoTransitoNaoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike2124525]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoObstaculoTransito226633]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblObstaculoTransitoNaoBicicleta]'))
ALTER TABLE [dbo].[tblObstaculoTransitoNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoObstaculoTransito226633] FOREIGN KEY([IdTipoObstaculoTransito])
REFERENCES [dbo].[tblTipoObstaculoTransito] ([IdTipoObstaculoTransito])
GO
ALTER TABLE [dbo].[tblObstaculoTransitoNaoBicicleta] CHECK CONSTRAINT [ReftblTipoObstaculoTransito226633]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoTransporte21]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProblemasTransito]'))
ALTER TABLE [dbo].[tblProblemasTransito]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoTransporte21] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoTransporte] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProblemasTransito] CHECK CONSTRAINT [ReftblIdentificacaoTransporte21]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProblemasTransito19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProblemasTransito]'))
ALTER TABLE [dbo].[tblProblemasTransito]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProblemasTransito19] FOREIGN KEY([IdTipoProblemasTransito])
REFERENCES [dbo].[tblTipoProblemasTransito] ([IdTipoProblemasTransito])
GO
ALTER TABLE [dbo].[tblProblemasTransito] CHECK CONSTRAINT [ReftblTipoProblemasTransito19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoTransporte22]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuardaBicicleta]'))
ALTER TABLE [dbo].[tblGuardaBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoTransporte22] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoTransporte] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblGuardaBicicleta] CHECK CONSTRAINT [ReftblIdentificacaoTransporte22]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoGuardaBicicleta18]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuardaBicicleta]'))
ALTER TABLE [dbo].[tblGuardaBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoGuardaBicicleta18] FOREIGN KEY([IdTipoOndeGuardaBicicleta])
REFERENCES [dbo].[tblTipoGuardaBicicleta] ([IdTipoOndeGuardaBicicleta])
GO
ALTER TABLE [dbo].[tblGuardaBicicleta] CHECK CONSTRAINT [ReftblTipoGuardaBicicleta18]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoTransporte20]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblComoAlunosVaoEscola]'))
ALTER TABLE [dbo].[tblComoAlunosVaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoTransporte20] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoTransporte] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblComoAlunosVaoEscola] CHECK CONSTRAINT [ReftblIdentificacaoTransporte20]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoComoVaoEscola17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblComoAlunosVaoEscola]'))
ALTER TABLE [dbo].[tblComoAlunosVaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoComoVaoEscola17] FOREIGN KEY([IdTipoComoVaoEscola])
REFERENCES [dbo].[tblTipoComoVaoEscola] ([IdTipoComoVaoEscola])
GO
ALTER TABLE [dbo].[tblComoAlunosVaoEscola] CHECK CONSTRAINT [ReftblTipoComoVaoEscola17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno6724646]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOutroTransporte]'))
ALTER TABLE [dbo].[tblOutroTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno6724646] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblOutroTransporte] CHECK CONSTRAINT [ReftblCabecalhoAluno6724646]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte6324]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOutroTransporte]'))
ALTER TABLE [dbo].[tblOutroTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte6324] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblOutroTransporte] CHECK CONSTRAINT [ReftblTipoOutroTransporte6324]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike673536]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransporteEscolar]'))
ALTER TABLE [dbo].[tblTransporteEscolar]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike673536] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblTransporteEscolar] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike673536]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte63363524]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransporteEscolar]'))
ALTER TABLE [dbo].[tblTransporteEscolar]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte63363524] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblTransporteEscolar] CHECK CONSTRAINT [ReftblTipoOutroTransporte63363524]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike692574]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVaiEscola]'))
ALTER TABLE [dbo].[tblVaiEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike692574] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblVaiEscola] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike692574]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte7324324563]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVaiEscola]'))
ALTER TABLE [dbo].[tblVaiEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte7324324563] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblVaiEscola] CHECK CONSTRAINT [ReftblTipoOutroTransporte7324324563]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike17634524]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoSolNaoBicicleta]'))
ALTER TABLE [dbo].[tblProtecaoSolNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike17634524] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProtecaoSolNaoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike17634524]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProtecao3723425]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoSolNaoBicicleta]'))
ALTER TABLE [dbo].[tblProtecaoSolNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProtecao3723425] FOREIGN KEY([IdTipoProtecao])
REFERENCES [dbo].[tblTipoProtecao] ([IdTipoProtecao])
GO
ALTER TABLE [dbo].[tblProtecaoSolNaoBicicleta] CHECK CONSTRAINT [ReftblTipoProtecao3723425]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike153563]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoChuvaNaoBicicleta]'))
ALTER TABLE [dbo].[tblProtecaoChuvaNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike153563] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProtecaoChuvaNaoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike153563]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProtecao16354356]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoChuvaNaoBicicleta]'))
ALTER TABLE [dbo].[tblProtecaoChuvaNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProtecao16354356] FOREIGN KEY([IdTipoProtecao])
REFERENCES [dbo].[tblTipoProtecao] ([IdTipoProtecao])
GO
ALTER TABLE [dbo].[tblProtecaoChuvaNaoBicicleta] CHECK CONSTRAINT [ReftblTipoProtecao16354356]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno152464]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoChuva]'))
ALTER TABLE [dbo].[tblProtecaoChuva]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno152464] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProtecaoChuva] CHECK CONSTRAINT [ReftblCabecalhoAluno152464]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProtecao16256]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoChuva]'))
ALTER TABLE [dbo].[tblProtecaoChuva]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProtecao16256] FOREIGN KEY([IdTipoProtecao])
REFERENCES [dbo].[tblTipoProtecao] ([IdTipoProtecao])
GO
ALTER TABLE [dbo].[tblProtecaoChuva] CHECK CONSTRAINT [ReftblTipoProtecao16256]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno172456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoSol]'))
ALTER TABLE [dbo].[tblProtecaoSol]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno172456] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProtecaoSol] CHECK CONSTRAINT [ReftblCabecalhoAluno172456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProtecao372465]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoSol]'))
ALTER TABLE [dbo].[tblProtecaoSol]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProtecao372465] FOREIGN KEY([IdTipoProtecao])
REFERENCES [dbo].[tblTipoProtecao] ([IdTipoProtecao])
GO
ALTER TABLE [dbo].[tblProtecaoSol] CHECK CONSTRAINT [ReftblTipoProtecao372465]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoProfessorTransporte23222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProfessorComoAlunosVaoEscola]'))
ALTER TABLE [dbo].[tblProfessorComoAlunosVaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoProfessorTransporte23222] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoProfessorTransporte] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProfessorComoAlunosVaoEscola] CHECK CONSTRAINT [ReftblIdentificacaoProfessorTransporte23222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoComoVaoEscola17222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProfessorComoAlunosVaoEscola]'))
ALTER TABLE [dbo].[tblProfessorComoAlunosVaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoComoVaoEscola17222] FOREIGN KEY([IdTipoComoVaoEscola])
REFERENCES [dbo].[tblTipoComoVaoEscola] ([IdTipoComoVaoEscola])
GO
ALTER TABLE [dbo].[tblProfessorComoAlunosVaoEscola] CHECK CONSTRAINT [ReftblTipoComoVaoEscola17222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoProfessorTransporte25222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProfessorGuardaBicicleta]'))
ALTER TABLE [dbo].[tblProfessorGuardaBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoProfessorTransporte25222] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoProfessorTransporte] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProfessorGuardaBicicleta] CHECK CONSTRAINT [ReftblIdentificacaoProfessorTransporte25222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoGuardaBicicleta18222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProfessorGuardaBicicleta]'))
ALTER TABLE [dbo].[tblProfessorGuardaBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblTipoGuardaBicicleta18222] FOREIGN KEY([IdTipoOndeGuardaBicicleta])
REFERENCES [dbo].[tblTipoGuardaBicicleta] ([IdTipoOndeGuardaBicicleta])
GO
ALTER TABLE [dbo].[tblProfessorGuardaBicicleta] CHECK CONSTRAINT [ReftblTipoGuardaBicicleta18222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacoesBicicleta133311]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResponsavelProblemasTransitoPerspectiva]'))
ALTER TABLE [dbo].[tblResponsavelProblemasTransitoPerspectiva]  WITH CHECK ADD  CONSTRAINT [ReftblInformacoesBicicleta133311] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacoesBicicleta] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblResponsavelProblemasTransitoPerspectiva] CHECK CONSTRAINT [ReftblInformacoesBicicleta133311]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProblemasTransito17544]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResponsavelProblemasTransitoPerspectiva]'))
ALTER TABLE [dbo].[tblResponsavelProblemasTransitoPerspectiva]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProblemasTransito17544] FOREIGN KEY([IdTipoProblemasTransito])
REFERENCES [dbo].[tblTipoProblemasTransito] ([IdTipoProblemasTransito])
GO
ALTER TABLE [dbo].[tblResponsavelProblemasTransitoPerspectiva] CHECK CONSTRAINT [ReftblTipoProblemasTransito17544]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacoesBicicleta655]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResponsavelProblemasTransito]'))
ALTER TABLE [dbo].[tblResponsavelProblemasTransito]  WITH CHECK ADD  CONSTRAINT [ReftblInformacoesBicicleta655] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacoesBicicleta] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblResponsavelProblemasTransito] CHECK CONSTRAINT [ReftblInformacoesBicicleta655]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProblemasTransito16252]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblResponsavelProblemasTransito]'))
ALTER TABLE [dbo].[tblResponsavelProblemasTransito]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProblemasTransito16252] FOREIGN KEY([IdTipoProblemasTransito])
REFERENCES [dbo].[tblTipoProblemasTransito] ([IdTipoProblemasTransito])
GO
ALTER TABLE [dbo].[tblResponsavelProblemasTransito] CHECK CONSTRAINT [ReftblTipoProblemasTransito16252]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoProfessorTransporte24222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProfessorProblemasTransito]'))
ALTER TABLE [dbo].[tblProfessorProblemasTransito]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoProfessorTransporte24222] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoProfessorTransporte] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProfessorProblemasTransito] CHECK CONSTRAINT [ReftblIdentificacaoProfessorTransporte24222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProblemasTransito19222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProfessorProblemasTransito]'))
ALTER TABLE [dbo].[tblProfessorProblemasTransito]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProblemasTransito19222] FOREIGN KEY([IdTipoProblemasTransito])
REFERENCES [dbo].[tblTipoProblemasTransito] ([IdTipoProblemasTransito])
GO
ALTER TABLE [dbo].[tblProfessorProblemasTransito] CHECK CONSTRAINT [ReftblTipoProblemasTransito19222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoResponsavel10777]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacoesBicicleta]'))
ALTER TABLE [dbo].[tblInformacoesBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoResponsavel10777] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoResponsavel] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacoesBicicleta] CHECK CONSTRAINT [ReftblCabecalhoResponsavel10777]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoResponsavel1244]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoResponsavel]'))
ALTER TABLE [dbo].[tblIdentificacaoResponsavel]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoResponsavel1244] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoResponsavel] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoResponsavel] CHECK CONSTRAINT [ReftblCabecalhoResponsavel1244]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacoesBicicleta4888]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoContraChuva]'))
ALTER TABLE [dbo].[tblProtecaoContraChuva]  WITH CHECK ADD  CONSTRAINT [ReftblInformacoesBicicleta4888] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacoesBicicleta] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblProtecaoContraChuva] CHECK CONSTRAINT [ReftblInformacoesBicicleta4888]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProtecaoContraChuva18999]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProtecaoContraChuva]'))
ALTER TABLE [dbo].[tblProtecaoContraChuva]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProtecaoContraChuva18999] FOREIGN KEY([IdTipoProtecaoChuva])
REFERENCES [dbo].[tblTipoProtecaoContraChuva] ([IdTipoProtecaoChuva])
GO
ALTER TABLE [dbo].[tblProtecaoContraChuva] CHECK CONSTRAINT [ReftblTipoProtecaoContraChuva18999]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacoesBicicleta555]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeslocamento]'))
ALTER TABLE [dbo].[tblDeslocamento]  WITH CHECK ADD  CONSTRAINT [ReftblInformacoesBicicleta555] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacoesBicicleta] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDeslocamento] CHECK CONSTRAINT [ReftblInformacoesBicicleta555]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoDeslocamento2066]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDeslocamento]'))
ALTER TABLE [dbo].[tblDeslocamento]  WITH CHECK ADD  CONSTRAINT [ReftblTipoDeslocamento2066] FOREIGN KEY([IdTipoAtividade])
REFERENCES [dbo].[tblTipoDeslocamento] ([IdTipoAtividade])
GO
ALTER TABLE [dbo].[tblDeslocamento] CHECK CONSTRAINT [ReftblTipoDeslocamento2066]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAlunoNaoUtilizaBike62356345]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoNaoBicicleta]'))
ALTER TABLE [dbo].[tblInformacaoNaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike62356345] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAlunoNaoUtilizaBike] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoNaoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAlunoNaoUtilizaBike62356345]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno622246]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoBicicleta]'))
ALTER TABLE [dbo].[tblInformacaoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno622246] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAluno622246]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno70256]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoBicicleta]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoBicicleta]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno70256] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoBicicleta] CHECK CONSTRAINT [ReftblCabecalhoAluno70256]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola11222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoProfessor]'))
ALTER TABLE [dbo].[tblCabecalhoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblEscola11222] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoProfessor] CHECK CONSTRAINT [ReftblEscola11222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio10222]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoProfessor]'))
ALTER TABLE [dbo].[tblCabecalhoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio10222] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoProfessor] CHECK CONSTRAINT [ReftblMunicipio10222]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola11]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDiretor]'))
ALTER TABLE [dbo].[tblCabecalhoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblEscola11] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoDiretor] CHECK CONSTRAINT [ReftblEscola11]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDiretor]'))
ALTER TABLE [dbo].[tblCabecalhoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio10] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoDiretor] CHECK CONSTRAINT [ReftblMunicipio10]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola295367]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAluno]'))
ALTER TABLE [dbo].[tblCabecalhoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblEscola295367] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoAluno] CHECK CONSTRAINT [ReftblEscola295367]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio1797897]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAluno]'))
ALTER TABLE [dbo].[tblCabecalhoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio1797897] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoAluno] CHECK CONSTRAINT [ReftblMunicipio1797897]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola9122]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPosAluno]'))
ALTER TABLE [dbo].[tblIdentificacaoPosAluno]  WITH CHECK ADD  CONSTRAINT [ReftblEscola9122] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblIdentificacaoPosAluno] CHECK CONSTRAINT [ReftblEscola9122]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio81212]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPosAluno]'))
ALTER TABLE [dbo].[tblIdentificacaoPosAluno]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio81212] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblIdentificacaoPosAluno] CHECK CONSTRAINT [ReftblMunicipio81212]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola29345436]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAlunoNaoUtilizaBike]'))
ALTER TABLE [dbo].[tblCabecalhoAlunoNaoUtilizaBike]  WITH CHECK ADD  CONSTRAINT [ReftblEscola29345436] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoAlunoNaoUtilizaBike] CHECK CONSTRAINT [ReftblEscola29345436]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio16345]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAlunoNaoUtilizaBike]'))
ALTER TABLE [dbo].[tblCabecalhoAlunoNaoUtilizaBike]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio16345] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoAlunoNaoUtilizaBike] CHECK CONSTRAINT [ReftblMunicipio16345]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoPosAluno112312]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoPosAluno]'))
ALTER TABLE [dbo].[tblPercepcaoPosAluno]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoPosAluno112312] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoPosAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoPosAluno] CHECK CONSTRAINT [ReftblIdentificacaoPosAluno112312]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoResponsavel]'))
ALTER TABLE [dbo].[tblCabecalhoResponsavel]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio9] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoResponsavel] CHECK CONSTRAINT [ReftblMunicipio9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio2825622]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEscola]'))
ALTER TABLE [dbo].[tblEscola]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio2825622] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblEscola] CHECK CONSTRAINT [ReftblMunicipio2825622]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio6121]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEscola]'))
ALTER TABLE [dbo].[tblEscola]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio6121] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblEscola] CHECK CONSTRAINT [ReftblMunicipio6121]
